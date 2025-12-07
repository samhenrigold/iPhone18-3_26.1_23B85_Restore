uint64_t MemoryKeyValueStore.set<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  v9 = (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  OUTLINED_FUNCTION_0_47(v9);
  sub_1C96A53C4();
  sub_1C953B254(v11, a2, a3);
  return swift_endAccess();
}

Swift::Void __swiftcall MemoryKeyValueStore.remove(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  memset(v3, 0, sizeof(v3));
  OUTLINED_FUNCTION_0_47(a1._countAndFlagsBits);
  sub_1C96A53C4();
  sub_1C953B254(v3, countAndFlagsBits, object);
  swift_endAccess();
}

uint64_t MemoryKeyValueStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C956DA10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C60, &unk_1C96B2AD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96B2AB0;
  OUTLINED_FUNCTION_8_3();
  *(v2 + 32) = 0xD00000000000001BLL;
  *(v2 + 40) = v3;
  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDB7AB08);
  }

  v4 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48(0xD000000000000012, 0x80000001C96D1070);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 48) = "title-light-precip-starting";
  *(v1 + 56) = v0;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 64) = 0xD00000000000001CLL;
  *(v1 + 72) = v5;
  v6 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48(0xD000000000000012, 0x80000001C96D1070);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 80) = "title-light-precip-starting";
  *(v1 + 88) = v0;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 96) = 0xD00000000000001BLL;
  *(v1 + 104) = v7;
  v8 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48(0xD000000000000012, 0x80000001C96D1070);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 112) = "title-light-precip-starting";
  *(v1 + 120) = v0;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 128) = 0xD000000000000019;
  *(v1 + 136) = v9;
  v10 = qword_1EDB94A58;
  v11 = OUTLINED_FUNCTION_22_11();
  v12 = OUTLINED_FUNCTION_5_22(v11, 0xEF6E6F6F53206E69);
  v14 = v13;

  *(v1 + 144) = v12;
  *(v1 + 152) = v14;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 160) = 0xD00000000000001ALL;
  *(v1 + 168) = v15;
  v16 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v21 = OUTLINED_FUNCTION_10_15(v17, v18, v19, v20);
  v23 = v22;

  *(v1 + 176) = v21;
  *(v1 + 184) = v23;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 192) = 0xD000000000000019;
  *(v1 + 200) = v24;
  v25 = qword_1EDB94A58;
  v26 = OUTLINED_FUNCTION_17_18();
  v27 = OUTLINED_FUNCTION_5_22(v26 & 0xFFFFFFFFFFFFLL | 0x6152000000000000, 0xEF6E6F6F53206E69);
  v29 = v28;

  *(v1 + 208) = v27;
  *(v1 + 216) = v29;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 224) = 0xD000000000000019;
  *(v1 + 232) = v30;
  v31 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v36 = OUTLINED_FUNCTION_11_16(v32, v33, v34, v35, v31);
  v38 = v37;

  *(v1 + 240) = v36;
  *(v1 + 248) = v38;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 256) = 0xD00000000000001ALL;
  *(v1 + 264) = v39;
  v40 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v45 = OUTLINED_FUNCTION_11_16(v41, v42, v43, v44, v40);
  v47 = v46;

  *(v1 + 272) = v45;
  *(v1 + 280) = v47;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 288) = 0xD000000000000019;
  *(v1 + 296) = v48;
  v49 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v54 = OUTLINED_FUNCTION_11_16(v50, v51, v52, v53, v49);
  v56 = v55;

  *(v1 + 304) = v54;
  *(v1 + 312) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 320) = 0xD00000000000001ALL;
  *(v1 + 328) = v57;
  v58 = qword_1EDB94A58;
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_11_16(v59, v60, v61, v62, v54);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 336) = v56;
  *(v1 + 344) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 352) = 0xD00000000000001BLL;
  *(v1 + 360) = v63;
  v64 = qword_1EDB94A58;
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_11_16(v65, v66, v67, v68, v54);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 368) = v56;
  *(v1 + 376) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 384) = 0xD00000000000001ALL;
  *(v1 + 392) = v69;
  v70 = qword_1EDB94A58;
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_6_26();
  OUTLINED_FUNCTION_11_16(v71, v72, v73, v74, v54);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 400) = v56;
  *(v1 + 408) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 416) = 0xD000000000000019;
  *(v1 + 424) = v75;
  v76 = qword_1EDB94A58;
  OUTLINED_FUNCTION_23_10();
  v77 = OUTLINED_FUNCTION_11_16(0x7365697272756C46, 0xED00006E6F6F5320, 0, 0, v54);
  v79 = v78;

  *(v1 + 432) = v77;
  *(v1 + 440) = v79;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 448) = 0xD00000000000001ALL;
  *(v1 + 456) = v80;
  v81 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_11_16(v82, v83, v84, v85, v81);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 464) = v79;
  *(v1 + 472) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 480) = 0xD000000000000019;
  *(v1 + 488) = v86;
  v87 = qword_1EDB94A58;
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_4_25(v88, v89);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 496) = v56;
  *(v1 + 504) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 512) = 0xD00000000000001BLL;
  *(v1 + 520) = v90;
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_4_25(0xD00000000000001BLL, v91);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 528) = v56;
  *(v1 + 536) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 544) = 0xD00000000000001CLL;
  *(v1 + 552) = v92;
  v93 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_4_25(0xD00000000000001BLL, v94);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 560) = v56;
  *(v1 + 568) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 576) = 0xD00000000000001BLL;
  *(v1 + 584) = v95;
  v96 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_4_25(0xD00000000000001BLL, v97);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 592) = v56;
  *(v1 + 600) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 608) = 0xD000000000000019;
  *(v1 + 616) = v98;
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_8_19();
  v99 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19(v99, v100, v101, v102);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 624) = v56;
  *(v1 + 632) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 640) = 0xD00000000000001ALL;
  *(v1 + 648) = v103;
  v104 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  v105 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19(v105, v106, v107, v108);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 656) = v56;
  *(v1 + 664) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 672) = 0xD000000000000019;
  *(v1 + 680) = v109;
  v110 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  v111 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19(v111, v112, v113, v114);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 688) = v56;
  *(v1 + 696) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 704) = 0xD000000000000019;
  *(v1 + 712) = v115;
  OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_8_19();
  v116 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19(v116, v117, v118, v119);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 720) = v56;
  *(v1 + 728) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 736) = 0xD00000000000001ALL;
  *(v1 + 744) = v120;
  v121 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  v122 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19(v122, v123, v124, v125);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 752) = v56;
  *(v1 + 760) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 768) = 0xD000000000000019;
  *(v1 + 776) = v126;
  v127 = qword_1EDB94A58;
  OUTLINED_FUNCTION_8_19();
  v128 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_9_19(v128, v129, v130, v131);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 784) = v56;
  *(v1 + 792) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 800) = 0xD00000000000001ALL;
  *(v1 + 808) = v132;
  v133 = OUTLINED_FUNCTION_25_11();
  OUTLINED_FUNCTION_4_25(0xD000000000000013, v81 | 0x8000000000000000);
  OUTLINED_FUNCTION_14_17();

  *(v1 + 816) = v56;
  *(v1 + 824) = 0xD000000000000019;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 832) = 0xD00000000000001BLL;
  *(v1 + 840) = v134;
  v135 = qword_1EDB94A58;
  OUTLINED_FUNCTION_2_35(0xD000000000000013, v81 | 0x8000000000000000);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 848) = v133;
  *(v1 + 856) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 864) = 0xD00000000000001ALL;
  *(v1 + 872) = v136;
  v137 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_2_35(0xD000000000000013, v81 | 0x8000000000000000);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 880) = v133;
  *(v1 + 888) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 896) = 0xD000000000000019;
  *(v1 + 904) = v138;
  v139 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  v140 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20(v140, v141, v142, v143);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 912) = v133;
  *(v1 + 920) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 928) = 0xD00000000000001ALL;
  *(v1 + 936) = v144;
  v145 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  v146 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20(v146, v147, v148, v149);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 944) = v133;
  *(v1 + 952) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 960) = 0xD000000000000019;
  *(v1 + 968) = v150;
  v151 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  v152 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20(v152, v153, v154, v155);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 976) = v133;
  *(v1 + 984) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 992) = 0xD000000000000024;
  *(v1 + 1000) = v156;
  v157 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  v158 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20(v158, v159, v160, v161);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1008) = v133;
  *(v1 + 1016) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1024) = 0xD000000000000025;
  *(v1 + 1032) = v162;
  v163 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  v164 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20(v164, v165, v166, v167);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1040) = v133;
  *(v1 + 1048) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1056) = 0xD000000000000024;
  *(v1 + 1064) = v168;
  v169 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  v170 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_7_20(v170, v171, v172, v173);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1072) = v133;
  *(v1 + 1080) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1088) = 0xD000000000000022;
  *(v1 + 1096) = v174;
  v175 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  v176 = OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_2_35(v176, 0xEF6E6F6F53206E69);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1104) = v133;
  *(v1 + 1112) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1120) = 0xD000000000000023;
  *(v1 + 1128) = v177;
  v178 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_2_35(0x6F6F53206E696152, 0xE90000000000006ELL);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1136) = v133;
  *(v1 + 1144) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1152) = 0xD000000000000022;
  *(v1 + 1160) = v179;
  v180 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  v181 = OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_2_35(v181 & 0xFFFFFFFFFFFFLL | 0x6152000000000000, 0xEF6E6F6F53206E69);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1168) = v133;
  *(v1 + 1176) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1184) = 0xD000000000000022;
  *(v1 + 1192) = v182;
  v183 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_2_35(0x6F6F53206C696148, 0xE90000000000006ELL);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1200) = v133;
  *(v1 + 1208) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1216) = 0xD000000000000023;
  *(v1 + 1224) = v184;
  v185 = qword_1EDB94A58;
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_2_35(0x6F6F53206C696148, 0xE90000000000006ELL);
  OUTLINED_FUNCTION_15_14();

  *(v1 + 1232) = v133;
  *(v1 + 1240) = v56;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1248) = 0xD000000000000022;
  *(v1 + 1256) = v186;
  v187 = qword_1EDB94A58;
  v188 = OUTLINED_FUNCTION_2_35(0x6F6F53206C696148, 0xE90000000000006ELL);
  v190 = v189;

  *(v1 + 1264) = v188;
  *(v1 + 1272) = v190;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1280) = 0xD000000000000023;
  *(v1 + 1288) = v191;
  v192 = qword_1EDB94A58;
  v193 = OUTLINED_FUNCTION_5_22(0x6F53207465656C53, 0xEA00000000006E6FLL);
  v195 = v194;

  *(v1 + 1296) = v193;
  *(v1 + 1304) = v195;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1312) = 0xD000000000000024;
  *(v1 + 1320) = v196;
  v197 = qword_1EDB94A58;
  v198 = OUTLINED_FUNCTION_5_22(0x6F53207465656C53, 0xEA00000000006E6FLL);
  v200 = v199;

  *(v1 + 1328) = v198;
  *(v1 + 1336) = v200;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1344) = 0xD000000000000023;
  *(v1 + 1352) = v201;
  v202 = qword_1EDB94A58;
  v203 = OUTLINED_FUNCTION_5_22(0x6F53207465656C53, 0xEA00000000006E6FLL);
  v205 = v204;

  *(v1 + 1360) = v203;
  *(v1 + 1368) = v205;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1376) = 0xD000000000000022;
  *(v1 + 1384) = v206;
  v207 = qword_1EDB94A58;
  v208 = OUTLINED_FUNCTION_5_22(0x7365697272756C46, 0xED00006E6F6F5320);
  v210 = v209;

  *(v1 + 1392) = v208;
  *(v1 + 1400) = v210;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1408) = 0xD000000000000023;
  *(v1 + 1416) = v211;
  v212 = qword_1EDB94A58;
  OUTLINED_FUNCTION_3_25();
  v217 = OUTLINED_FUNCTION_10_15(v213, v214, v215, v216);
  v219 = v218;

  *(v1 + 1424) = v217;
  *(v1 + 1432) = v219;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1440) = 0xD000000000000022;
  *(v1 + 1448) = v220;
  v221 = qword_1EDB94A58;
  OUTLINED_FUNCTION_20_12();
  v222 = OUTLINED_FUNCTION_17_18();
  v224 = OUTLINED_FUNCTION_5_22(v222 & 0xFFFFFFFFFFFFLL | 0x6E53000000000000, v223);
  v226 = v225;

  *(v1 + 1456) = v224;
  *(v1 + 1464) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1472) = 0xD000000000000024;
  *(v1 + 1480) = v227;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD00000000000001ELL, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1488) = v221;
  *(v1 + 1496) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1504) = 0xD000000000000025;
  *(v1 + 1512) = v228;
  v229 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48(0xD00000000000001ELL, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1520) = v221;
  *(v1 + 1528) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1536) = 0xD000000000000024;
  *(v1 + 1544) = v230;
  v231 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48(0xD00000000000001ELL, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1552) = v221;
  *(v1 + 1560) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1568) = 0xD000000000000022;
  *(v1 + 1576) = v232;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1584) = v221;
  *(v1 + 1592) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1600) = 0xD000000000000023;
  *(v1 + 1608) = v233;
  v234 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1616) = v221;
  *(v1 + 1624) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1632) = 0xD000000000000022;
  *(v1 + 1640) = v235;
  v236 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1648) = v221;
  *(v1 + 1656) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1664) = 0xD000000000000022;
  *(v1 + 1672) = v237;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1680) = v221;
  *(v1 + 1688) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1696) = 0xD000000000000023;
  *(v1 + 1704) = v238;
  v239 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1712) = v221;
  *(v1 + 1720) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1728) = 0xD000000000000022;
  *(v1 + 1736) = v240;
  v241 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1744) = v221;
  *(v1 + 1752) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1760) = 0xD000000000000023;
  *(v1 + 1768) = v242;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000016, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1776) = v221;
  *(v1 + 1784) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1792) = 0xD000000000000024;
  *(v1 + 1800) = v243;
  v244 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000016, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1808) = v221;
  *(v1 + 1816) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1824) = 0xD000000000000023;
  *(v1 + 1832) = v245;
  v246 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000016, v219 | 0x8000000000000000);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1840) = v221;
  *(v1 + 1848) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1856) = 0xD000000000000022;
  *(v1 + 1864) = v247;
  v248 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, 0x80000001C96D1A90);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1872) = v221;
  *(v1 + 1880) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1888) = 0xD000000000000023;
  *(v1 + 1896) = v249;
  v250 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, 0x80000001C96D1A90);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1904) = v221;
  *(v1 + 1912) = v226;
  OUTLINED_FUNCTION_8_3();
  *(v1 + 1920) = 0xD000000000000022;
  *(v1 + 1928) = v251;
  v252 = qword_1EDB94A58;
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000015, 0x80000001C96D1A90);
  OUTLINED_FUNCTION_10_14();
  *(v1 + 1936) = v221;
  *(v1 + 1944) = v226;
  result = sub_1C96A6F04();
  qword_1EC3C3D30 = result;
  return result;
}

uint64_t sub_1C956EB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C60, &unk_1C96B2AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96B2AC0;
  *(inited + 32) = 0x676E697472617473;
  *(inited + 40) = 0xE800000000000000;
  if (qword_1EDB7AB08 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EDB7AB08);
  }

  v2 = qword_1EDB94A58;
  OUTLINED_FUNCTION_0_48(0xD000000000000018, 0x80000001C96D0E10);
  OUTLINED_FUNCTION_10_14();
  *(inited + 48) = "e19MemoryKeyValueStore";
  *(inited + 56) = v0;
  *(inited + 64) = 0x676E6970706F7473;
  *(inited + 72) = 0xE800000000000000;
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000017, 0x80000001C96D0E10);
  OUTLINED_FUNCTION_10_14();
  *(inited + 80) = "e19MemoryKeyValueStore";
  *(inited + 88) = v0;
  OUTLINED_FUNCTION_8_3();
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = v3;
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000028, 0x80000001C96D0E10);
  OUTLINED_FUNCTION_10_14();
  *(inited + 112) = "e19MemoryKeyValueStore";
  *(inited + 120) = v0;
  OUTLINED_FUNCTION_8_3();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = v4;
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000030, 0x80000001C96D0E10);
  OUTLINED_FUNCTION_10_14();
  *(inited + 144) = "e19MemoryKeyValueStore";
  *(inited + 152) = v0;
  OUTLINED_FUNCTION_8_3();
  *(inited + 160) = 0xD000000000000019;
  *(inited + 168) = v5;
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000029, 0x80000001C96D0E10);
  OUTLINED_FUNCTION_10_14();
  *(inited + 176) = "e19MemoryKeyValueStore";
  *(inited + 184) = v0;
  OUTLINED_FUNCTION_8_3();
  *(inited + 192) = 0xD000000000000019;
  *(inited + 200) = v6;
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000028, 0x80000001C96D0E10);
  OUTLINED_FUNCTION_10_14();
  *(inited + 208) = "e19MemoryKeyValueStore";
  *(inited + 216) = v0;
  OUTLINED_FUNCTION_8_3();
  *(inited + 224) = 0xD000000000000022;
  *(inited + 232) = v7;
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_0_48(0xD000000000000039, 0x80000001C96D0E10);
  OUTLINED_FUNCTION_10_14();
  *(inited + 240) = "e19MemoryKeyValueStore";
  *(inited + 248) = v0;
  OUTLINED_FUNCTION_8_3();
  *(inited + 256) = 0xD000000000000022;
  *(inited + 264) = v8;
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_0_48(0xD000000000000041, 0x80000001C96D0E10);
  OUTLINED_FUNCTION_10_14();
  *(inited + 272) = "e19MemoryKeyValueStore";
  *(inited + 280) = v0;
  result = sub_1C96A6F04();
  qword_1EC3C3D38 = result;
  return result;
}

uint64_t AutomationDataService.__allocating_init()()
{
  v0 = swift_allocObject();
  AutomationDataService.init()();
  return v0;
}

uint64_t AutomationDataService.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C68, &qword_1C96B2AE0);
  swift_allocObject();
  *(v0 + 16) = sub_1C96A5384();
  swift_allocObject();
  *(v0 + 24) = sub_1C96A5384();
  return v0;
}

uint64_t AutomationDataService.deinit()
{

  return v0;
}

uint64_t AutomationDataService.__deallocating_deinit()
{
  AutomationDataService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void AutomationDataService.savedLocationsData.getter(void *a1@<X8>)
{
  if (*(v1 + 16))
  {
    sub_1C956EF64();
    sub_1C96A5364();
    v3 = v4;
    if (!v4)
    {
      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
}

unint64_t sub_1C956EF64()
{
  result = qword_1EDB790A0;
  if (!qword_1EDB790A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB790A0);
  }

  return result;
}

void AutomationDataService.weatherDataConfiguration.getter(void *a1@<X8>)
{
  if (*(v1 + 24))
  {
    sub_1C956F028();
    sub_1C96A5364();
    v3 = v4;
    if (!v4)
    {
      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
}

unint64_t sub_1C956F028()
{
  result = qword_1EDB7A888;
  if (!qword_1EDB7A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A888);
  }

  return result;
}

uint64_t AutomationDataService.weatherDataDirectory.getter()
{
  if (*(v0 + 24))
  {
    return sub_1C96A5374();
  }

  else
  {
    return 0;
  }
}

uint64_t DarwinNotifications.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C70, &qword_1C96B2B30);

  return sub_1C96A7464();
}

uint64_t sub_1C956F124()
{
  DarwinNotifications.makeAsyncIterator()();

  return sub_1C956FE7C(v0);
}

Swift::Void __swiftcall DarwinNotificationCenter.post(_:)(WeatherCore::DarwinNotificationName a1)
{
  v2 = *a1.name._countAndFlagsBits;
  v1 = *(a1.name._countAndFlagsBits + 8);
  if (qword_1EC3A47A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EC3A7460);
  sub_1C96A53C4();
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1C9484164(v2, v1, &v10);
    _os_log_impl(&dword_1C945E000, v4, v5, "Post notification %{public}s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
  }

  center = CFNotificationCenterGetDarwinNotifyCenter();
  v8 = sub_1C96A7004();
  CFNotificationCenterPostNotification(center, v8, 0, 0, 1u);
}

uint64_t sub_1C956F2FC()
{
  v1 = OBJC_IVAR____TtCC11WeatherCore24DarwinNotificationCenterP33_7CC787F1DE34289502DABCDA2E91954414ObserverHandle_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5CC8, &qword_1C96B2C20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t DarwinNotificationCenter.notifications(named:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C78, &qword_1C96B2B38);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = a1[1];
  v9 = *a1;
  v10 = v5;
  (*(v6 + 104))(&v8[-v4], *MEMORY[0x1E69E8650], v3);
  return sub_1C96A7494();
}

uint64_t sub_1C956F4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5CC8, &qword_1C96B2C20);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  (*(v7 + 16))(&v20 - v9, a1, v6, v8);
  type metadata accessor for DarwinNotificationCenter.ObserverHandle(0);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + OBJC_IVAR____TtCC11WeatherCore24DarwinNotificationCenterP33_7CC787F1DE34289502DABCDA2E91954414ObserverHandle_continuation, v10, v6);
  sub_1C96A3D04();
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_1EC3A47A0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C96A6154();
  __swift_project_value_buffer(v13, qword_1EC3A7460);
  v14 = sub_1C96A6134();
  v15 = sub_1C96A76A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C945E000, v14, v15, "Initializing darwin notification stream", v16, 2u);
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
  }

  v17 = sub_1C96A7004();
  CFNotificationCenterAddObserver(v12, v11, sub_1C956F978, v17, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v18 = swift_allocObject();
  v18[2] = v12;
  v18[3] = v11;
  v18[4] = a2;
  v18[5] = a3;
  sub_1C96A53C4();
  sub_1C96A7434();
}

void sub_1C956F734(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5CD0, qword_1C96B2C28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  if (a2 && a3)
  {
    v9 = qword_1EC3A47A0;
    v10 = a3;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_1C96A6154();
    __swift_project_value_buffer(v11, qword_1EC3A7460);
    v12 = v10;
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = a3;
      v17 = v12;
      _os_log_impl(&dword_1C945E000, v13, v14, "Received darwin notification %@", v15, 0xCu);
      sub_1C956FEE4(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    sub_1C96A3D04();
    v19[0] = sub_1C96A7024();
    v19[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5CC8, &qword_1C96B2C20);
    sub_1C96A7444();

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1C956F978(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  sub_1C956F734(a1, a2, a3);
}

void sub_1C956FA14(uint64_t a1, __CFNotificationCenter *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EC3A47A0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EC3A7460);
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C945E000, v8, v9, "Terminating darwin notification stream", v10, 2u);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
  }

  v11 = sub_1C96A7004();
  CFNotificationCenterRemoveObserver(a2, a3, v11, 0);
}

unint64_t sub_1C956FBA8()
{
  result = qword_1EC3A5C80;
  if (!qword_1EC3A5C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A5C88, &qword_1C96B2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5C80);
  }

  return result;
}

void sub_1C956FC7C(uint64_t a1)
{
  sub_1C956FE28(319, &qword_1EC3A5CA0, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C956FD7C(uint64_t a1)
{
  sub_1C956FE28(319, &qword_1EC3A5CC0, MEMORY[0x1E69E8660]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C956FE28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for DarwinNotificationName);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C956FE7C(uint64_t a1)
{
  v2 = type metadata accessor for DarwinNotifications(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C956FEE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5410, &qword_1C96ADAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C956FF60()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

BOOL sub_1C956FFBC()
{
  v1 = objc_autoreleasePoolPush();
  v2 = [*(v0 + 16) notificationSettings];
  v3 = [v2 authorizationStatus];

  objc_autoreleasePoolPop(v1);
  return v3 == 2;
}

uint64_t sub_1C9570054()
{
  qword_1EDB94A60 = 0x5555656369766564;
  *algn_1EDB94A68 = 0xEA00000000004449;
  qword_1EDB94A70 = swift_getKeyPath();
  unk_1EDB94A78 = 0x746C615368736168;
  qword_1EDB94A80 = 0xE800000000000000;
  qword_1EDB94A88 = swift_getKeyPath();
  strcpy(&qword_1EDB94A90, "lastAccessDate");
  HIBYTE(qword_1EDB94A98) = -18;
  result = swift_getKeyPath();
  qword_1EDB94AA0 = result;
  return result;
}

uint64_t sub_1C9570100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a3;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_3_13();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + *(type metadata accessor for DataProtectionValue(0) + 28)) = MEMORY[0x1E69E7CC8];
  v20 = a1;
  v21 = a2;
  sub_1C96A53C4();
  sub_1C96A66C4();
  v20 = v19;
  v21 = a4;
  sub_1C96A53C4();
  sub_1C96A66C4();

  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A49E4();
  v16 = v15;
  (*(v11 + 8))(v14, v5);
  v20 = v16;
  return sub_1C96A66C4();
}

uint64_t sub_1C957029C@<X0>(uint64_t a1@<X8>)
{
  sub_1C96A4A54();
  OUTLINED_FUNCTION_3_13();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + *(type metadata accessor for DataProtectionValue(0) + 28)) = MEMORY[0x1E69E7CC8];
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1C96A66C4();
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1C96A66C4();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A49E4();
  v9 = v8;
  (*(v4 + 8))(v7, v1);
  v11 = v9;
  return sub_1C96A66C4();
}

double sub_1C95703FC@<D0>(void *a1@<X8>)
{
  if (qword_1EDB7C188 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EDB94A68;
  v4 = qword_1EDB94A70;
  v3 = unk_1EDB94A78;
  v5 = qword_1EDB94A80;
  v6 = qword_1EDB94A88;
  v7 = qword_1EDB94A90;
  v8 = qword_1EDB94A98;
  v9 = qword_1EDB94AA0;
  *a1 = qword_1EDB94A60;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v9;
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A53C4();

  sub_1C96A3D04();
  return result;
}

uint64_t sub_1C95704C4(uint64_t a1)
{
  v2 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF4748](a1, v2);
}

uint64_t sub_1C9570528(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1C9570590(uint64_t a1)
{
  v2 = sub_1C94ABBC4(&qword_1EDB7C158, &unk_1C96B2DDC);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1C95705E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF4730](a1, a2, v4);
}

uint64_t sub_1C9570650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF46D8](a1, a2, v4);
}

uint64_t sub_1C95706C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF4700](a1, a2, v4);
}

uint64_t sub_1C9570728(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF4740](a1, a2, v4);
}

uint64_t sub_1C9570790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF4708](a1, a2, a3, v6);
}

uint64_t sub_1C9570810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF4738](a1, a2, v4);
}

uint64_t sub_1C9570878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF4710](a1, a2, v4);
}

uint64_t sub_1C95708E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF46F0](a1, a2, v4);
}

uint64_t sub_1C9570950(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF46E8](a1, a2, v4);
}

uint64_t sub_1C95709C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF46D0](a1, a2, a3, v6);
}

uint64_t sub_1C9570A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF46B8](a1, a2, v4);
}

uint64_t sub_1C9570AA8(uint64_t a1)
{
  v2 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF46E0](a1, v2);
}

uint64_t sub_1C9570B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF46C0](a1, a2, v4);
}

uint64_t sub_1C9570B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF4718](a1, a2, v4);
}

void sub_1C9570BE0()
{
  sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  JUMPOUT(0x1CCA8C3F0);
}

uint64_t sub_1C9570E00(uint64_t a1)
{
  v2 = sub_1C94ABBC4(&qword_1EDB7C180, &unk_1C96B2EAC);

  return MEMORY[0x1EEDF46C8](a1, v2);
}

uint64_t sub_1C9570E74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  sub_1C96A66E4();
  sub_1C96A66E4();

  type metadata accessor for DataProtectionValue(0);
  sub_1C96A66E4();
  sub_1C96A66E4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160, &unk_1C96B2D20);
  sub_1C96A66E4();
  sub_1C96A66E4();
  sub_1C94ABBC4(&qword_1EDB7C170, &unk_1C96B2ED4);
  if (sub_1C96A6B14())
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1C96A6B14() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1C957108C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
  sub_1C96A66E4();
  sub_1C96A7144();

  type metadata accessor for DataProtectionValue(0);
  sub_1C96A66E4();
  sub_1C96A7144();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160, &unk_1C96B2D20);
  sub_1C96A66E4();
  v1 = v3;
  if (v3 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1CCA8D8A0](*&v1);
}

uint64_t sub_1C9571178()
{
  sub_1C96A7EE4();
  sub_1C957108C(v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C95711C0(uint64_t a1)
{
  sub_1C96A7EE4();
  sub_1C957108C(v2);
  return sub_1C96A7F24();
}

uint64_t sub_1C957134C()
{
  sub_1C96A5534();
  if (v2)
  {
    sub_1C96A4EE4();
    sub_1C96A4EC4();
    if (qword_1EDB7CA88 != -1)
    {
      swift_once();
    }

    sub_1C96A4EB4();

    if (v1 == 1)
    {
      sub_1C9571488();
      sub_1C94B75C0(&qword_1EC3A5CF8, type metadata accessor for CurrentLocationCacheManager, &protocol conformance descriptor for CurrentLocationCacheManager);
      sub_1C96A4FE4();
    }
  }

  return v2;
}

void sub_1C9571488()
{
  if (qword_1EDB7CFC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7CFD0);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "About to clear the current location cache", v3, 2u);
    MEMORY[0x1CCA8E3D0](v3, -1, -1);
  }

  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();

  CurrentLocationStore.clearCache()();
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C945E000, v4, v5, "Just cleared the current location cache", v6, 2u);
    MEMORY[0x1CCA8E3D0](v6, -1, -1);
  }
}

uint64_t CurrentLocationCacheManager.__allocating_init(store:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CurrentLocationCacheManager.init(store:)(a1, a2);
  return v4;
}

uint64_t CurrentLocationCacheManager.readCachedLocation()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for CachedCurrentLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458, &qword_1C96B3040);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  if (qword_1EDB7CFC8 != -1)
  {
    OUTLINED_FUNCTION_0_49(&qword_1EDB7CFC8);
  }

  v18 = sub_1C96A6154();
  __swift_project_value_buffer(v18, qword_1EDB7CFD0);
  v19 = sub_1C96A6134();
  v20 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_41(v20))
  {
    v21 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_6_27(v21);
    OUTLINED_FUNCTION_1_35(&dword_1C945E000, v22, v23, "Attempting to retrieve a cached current location");
    OUTLINED_FUNCTION_40();
  }

  sub_1C96A50E4();
  v24 = OBJC_IVAR____TtC11WeatherCore27CurrentLocationCacheManager_currentLocation;
  swift_beginAccess();
  sub_1C9572588(v2 + v24, v17);
  sub_1C96A50F4();
  sub_1C9572588(v17, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1C95725F8(v14);
    v25 = sub_1C96A6134();
    v26 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_41(v26))
    {
      v27 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_6_27(v27);
      OUTLINED_FUNCTION_1_35(&dword_1C945E000, v28, v29, "No cached current location found in memory ... attempting from disk");
      OUTLINED_FUNCTION_40();
    }

    if (!sub_1C957134C())
    {
      v42 = sub_1C96A6134();
      v43 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_41(v43))
      {
        v44 = OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_6_27(v44);
        OUTLINED_FUNCTION_1_35(&dword_1C945E000, v45, v46, "Aborting: no cached current location found from disk ... we don't have a store");
        OUTLINED_FUNCTION_40();
      }

      goto LABEL_19;
    }

    CurrentLocationStore.readCachedLocation()(v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
    {
      sub_1C95725F8(v11);
      v30 = sub_1C96A6134();
      v31 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_41(v31))
      {
        v32 = OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_6_27(v32);
        OUTLINED_FUNCTION_1_35(&dword_1C945E000, v33, v34, "No cached current location found in disk");
        OUTLINED_FUNCTION_40();
      }

LABEL_19:
      sub_1C95725F8(v17);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_2_6();
    v8 = v57;
    sub_1C9572824(v11, v57, v47);
    v48 = sub_1C96A6134();
    v49 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_41(v49))
    {
      v50 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_6_27(v50);
      OUTLINED_FUNCTION_1_35(&dword_1C945E000, v51, v52, "Got a cached current location from disk");
      OUTLINED_FUNCTION_40();
    }

    v41 = sub_1C95F6920();
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    sub_1C9572824(v14, v8, v35);
    v36 = sub_1C96A6134();
    v37 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_41(v37))
    {
      v38 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_6_27(v38);
      OUTLINED_FUNCTION_1_35(&dword_1C945E000, v39, v40, "Got a cached current location from memory");
      OUTLINED_FUNCTION_40();
    }

    v41 = sub_1C95F6920();
  }

  sub_1C95725F8(v17);
  if (!v41)
  {
    v54 = v58;
    sub_1C9572824(v8, v58, type metadata accessor for CachedCurrentLocation);
    v53 = 0;
    return __swift_storeEnumTagSinglePayload(v54, v53, 1, v3);
  }

  sub_1C9572660(v8);
LABEL_25:
  v53 = 1;
  v54 = v58;
  return __swift_storeEnumTagSinglePayload(v54, v53, 1, v3);
}

Swift::Void __swiftcall CurrentLocationCacheManager.cacheLocation(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  if (qword_1EDB7CFC8 != -1)
  {
    OUTLINED_FUNCTION_0_49(&qword_1EDB7CFC8);
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CFD0);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v4))
  {
    v5 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_15_15(v5);
    OUTLINED_FUNCTION_4_26(&dword_1C945E000, v6, v7, "Attempting to cache a raw current location");
    OUTLINED_FUNCTION_26();
  }

  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_16();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_12_20();

  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v10))
  {
    v11 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_15_15(v11);
    OUTLINED_FUNCTION_4_26(&dword_1C945E000, v12, v13, "Just cached the raw current location in memory");
    OUTLINED_FUNCTION_26();
  }

  if (sub_1C957134C())
  {
    v15 = isa;
    CurrentLocationStore.cacheLocation(_:)(*(&v14 - 1));
    v16 = sub_1C96A6134();
    v17 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v17))
    {
      v18 = OUTLINED_FUNCTION_29();
      *v18 = 0;
      OUTLINED_FUNCTION_14_18();
      _os_log_impl(v19, v20, v21, v22, v18, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v23 = sub_1C96A6134();
    v24 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v24))
    {
      v25 = OUTLINED_FUNCTION_29();
      *v25 = 0;
      OUTLINED_FUNCTION_14_18();
      _os_log_impl(v26, v27, v28, v29, v25, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_1C9571D1C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458, &qword_1C96B3040);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v11 - v5);
  sub_1C96A5954();
  v7 = type metadata accessor for CachedCurrentLocation(0);
  sub_1C96A5944();
  *v6 = a2;
  type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC11WeatherCore27CurrentLocationCacheManager_currentLocation;
  swift_beginAccess();
  v9 = a2;
  sub_1C95727B4(v6, a1 + v8);
  return swift_endAccess();
}

void CurrentLocationCacheManager.cacheLocation(_:)(uint64_t a1)
{
  if (qword_1EDB7CFC8 != -1)
  {
    OUTLINED_FUNCTION_0_49(&qword_1EDB7CFC8);
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB7CFD0);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v3))
  {
    v4 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_15_15(v4);
    OUTLINED_FUNCTION_4_26(&dword_1C945E000, v5, v6, "Attempting to cache a geocoded current location");
    OUTLINED_FUNCTION_26();
  }

  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_16();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_12_20();

  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v9))
  {
    v10 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_15_15(v10);
    OUTLINED_FUNCTION_4_26(&dword_1C945E000, v11, v12, "Just cached the geocoded current location in memory");
    OUTLINED_FUNCTION_26();
  }

  if (sub_1C957134C())
  {
    CurrentLocationStore.cacheLocation(_:)();
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v14))
    {
      v15 = OUTLINED_FUNCTION_29();
      *v15 = 0;
      OUTLINED_FUNCTION_14_18();
      _os_log_impl(v16, v17, v18, v19, v15, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v20 = sub_1C96A6134();
    v21 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v21))
    {
      v22 = OUTLINED_FUNCTION_29();
      *v22 = 0;
      OUTLINED_FUNCTION_14_18();
      _os_log_impl(v23, v24, v25, v26, v22, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_1C9572060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458, &qword_1C96B3040);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1C9489760(a2, v6);
  sub_1C96A5954();
  v10 = type metadata accessor for CachedCurrentLocation(0);
  sub_1C96A5944();
  sub_1C9572824(v6, v9, type metadata accessor for Location);
  type metadata accessor for CachedCurrentLocation.EmbeddedLocation(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v11 = OBJC_IVAR____TtC11WeatherCore27CurrentLocationCacheManager_currentLocation;
  swift_beginAccess();
  sub_1C95727B4(v9, a1 + v11);
  return swift_endAccess();
}

Swift::Void __swiftcall CurrentLocationCacheManager.clearCache()()
{
  if (qword_1EDB7CFC8 != -1)
  {
    OUTLINED_FUNCTION_0_49(&qword_1EDB7CFC8);
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB7CFD0);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v3))
  {
    v4 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_6_27(v4);
    _os_log_impl(&dword_1C945E000, v2, v3, "Attempting to clear the current location cache", v0, 2u);
    OUTLINED_FUNCTION_40();
  }

  if (sub_1C957134C())
  {
    sub_1C9571488();
  }

  else
  {
    v5 = sub_1C96A6134();
    v6 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v6))
    {
      v7 = OUTLINED_FUNCTION_29();
      *v7 = 0;
      _os_log_impl(&dword_1C945E000, v5, v6, "Cannot clear the current location cache from disk ... we don't have a store", v7, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_1C96A5134();
    sub_1C96A3D04();
    sub_1C96A5554();
  }
}

uint64_t sub_1C9572398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458, &qword_1C96B3040);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for CachedCurrentLocation(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC11WeatherCore27CurrentLocationCacheManager_currentLocation;
  swift_beginAccess();
  sub_1C95727B4(v4, a1 + v6);
  return swift_endAccess();
}

uint64_t CurrentLocationCacheManager.deinit()
{

  sub_1C95725F8(v0 + OBJC_IVAR____TtC11WeatherCore27CurrentLocationCacheManager_currentLocation);

  return v0;
}

uint64_t CurrentLocationCacheManager.__deallocating_deinit()
{
  CurrentLocationCacheManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C9572588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458, &qword_1C96B3040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95725F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458, &qword_1C96B3040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9572660(uint64_t a1)
{
  v2 = type metadata accessor for CachedCurrentLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of CurrentLocationCacheManagerType.cacheLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 24))(a1, a2);
}

uint64_t sub_1C95727B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5458, &qword_1C96B3040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9572824(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

Swift::Bool __swiftcall CLLocation.isAccurateEnough(lastKnownLocation:)(CLLocation_optional lastKnownLocation)
{
  isa = lastKnownLocation.value.super.isa;
  [v1 horizontalAccuracy];
  if (v3 < 0.0)
  {
    if (qword_1EDB7FDC8 != -1)
    {
      OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
    }

    v4 = sub_1C96A6154();
    __swift_project_value_buffer(v4, qword_1EDB7FDD0);
    v5 = v1;
    v6 = sub_1C96A6134();
    v7 = sub_1C96A7684();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_1_36(v8, 7.2225e-34);
      [v5 horizontalAccuracy];
      *(v8 + 14) = v9;
      OUTLINED_FUNCTION_2_36(&dword_1C945E000, v10, v11, "Received a location with a negative level of accuracy. Discarding as this location is invalid. horizontalAccuracy=%{private,mask.hash}f");
      OUTLINED_FUNCTION_26();
    }

    v12 = 0;
LABEL_20:

    return v12;
  }

  [v1 horizontalAccuracy];
  if (v13 > 1500.0)
  {
    if (isa)
    {
      v6 = isa;
      [v1 distanceFromLocation_];
      v15 = v14;
      [v1 horizontalAccuracy];
      v17 = v16 + 3000.0;
      v12 = v16 + 3000.0 < v15;
      if (qword_1EDB7FDC8 != -1)
      {
        OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
      }

      v18 = sub_1C96A6154();
      __swift_project_value_buffer(v18, qword_1EDB7FDD0);
      v19 = sub_1C96A6134();
      v20 = sub_1C96A76A4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67241219;
        *(v21 + 4) = v17 < v15;
        *(v21 + 8) = 2160;
        *(v21 + 10) = 1752392040;
        *(v21 + 18) = 2049;
        *(v21 + 20) = v15;
        *(v21 + 28) = 2160;
        *(v21 + 30) = 1752392040;
        *(v21 + 38) = 2049;
        *(v21 + 40) = v17;
        _os_log_impl(&dword_1C945E000, v19, v20, "Received a location with a lower than desired level of accuracy. Evaluated whether to replace the previous location and determined isAccurateEnough=%{BOOL,public}d. distanceFromCurrentLocation=%{private,mask.hash}f, distanceThreshold=%{private,mask.hash}f", v21, 0x30u);
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      if (qword_1EDB7FDC8 != -1)
      {
        OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
      }

      v22 = sub_1C96A6154();
      __swift_project_value_buffer(v22, qword_1EDB7FDD0);
      v23 = v1;
      v6 = sub_1C96A6134();
      v24 = sub_1C96A76A4();

      if (os_log_type_enabled(v6, v24))
      {
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_1_36(v25, 7.2225e-34);
        [v23 horizontalAccuracy];
        *(v25 + 14) = v26;
        OUTLINED_FUNCTION_2_36(&dword_1C945E000, v27, v28, "Received a location with a lower than desired level of accuracy. Will accept this location as this is the first location update. horizontalAccuracy=%{private,mask.hash}f");
        OUTLINED_FUNCTION_26();
      }

      v12 = 1;
    }

    goto LABEL_20;
  }

  return 1;
}

id CLLocation.init(_:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v5, __src, sizeof(v5));
  sub_1C95087DC(__dst, v4);
  v2 = CLLocation.init(_:)(v5);
  sub_1C94DBDDC(__src);
  return v2;
}

Swift::Bool __swiftcall CLLocation.isValid(limitsPrecision:lastKnownLocation:)(Swift::Bool limitsPrecision, CLLocation_optional lastKnownLocation)
{
  isa = lastKnownLocation.value.super.isa;
  [v2 coordinate];
  if (v5 == 0.0 || ([v2 coordinate], v7 == 0.0))
  {
    if (qword_1EDB7FDC8 != -1)
    {
      OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7FDD0);
    v9 = sub_1C96A6134();
    v10 = sub_1C96A7684();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_8;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Received a location with bad coordinates. Discarding as this location is invalid.";
    v13 = v10;
    v14 = v9;
    v15 = v11;
    v16 = 2;
LABEL_7:
    _os_log_impl(&dword_1C945E000, v14, v13, v12, v15, v16);
    OUTLINED_FUNCTION_26();
LABEL_8:

    return 0;
  }

  if (!limitsPrecision)
  {
    v6.value.super.isa = isa;
    if (!CLLocation.isAccurateEnough(lastKnownLocation:)(v6))
    {
      if (qword_1EDB7FDC8 != -1)
      {
        OUTLINED_FUNCTION_7_0(&qword_1EDB7FDC8);
      }

      v18 = sub_1C96A6154();
      __swift_project_value_buffer(v18, qword_1EDB7FDD0);
      v19 = v2;
      v9 = sub_1C96A6134();
      v20 = sub_1C96A76A4();

      if (!os_log_type_enabled(v9, v20))
      {
        goto LABEL_8;
      }

      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_1_36(v21, 7.2225e-34);
      [v19 horizontalAccuracy];
      *(v21 + 14) = v22;
      v12 = "Received a location that does not meet our accuracy requirements. Discarding location. horizontalAccuracy=%{private,mask.hash}f";
      v13 = v20;
      v14 = v9;
      v15 = v21;
      v16 = 22;
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t sub_1C9572DD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_4_27();
  OUTLINED_FUNCTION_8_20();
  type metadata accessor for SyncedData(0);
  OUTLINED_FUNCTION_1_37();
  if (!v3)
  {
    return OUTLINED_FUNCTION_10_16();
  }

  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_9_20(v5, v4);
  result = OUTLINED_FUNCTION_1_37();
  if (!v3)
  {
    return sub_1C9573994(v0);
  }

  return result;
}

uint64_t sub_1C9572E90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for SyncedData(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_syncedData;
  swift_beginAccess();
  sub_1C9573924(v1 + v13, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9573A60(v1 + v14, v12, v15);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_1C9573994(v6);
    }
  }

  else
  {
    sub_1C95739FC(v6, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CE8, &qword_1C96C02F0);
  v16 = *(type metadata accessor for Location(0) - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C96AA1C0;
  sub_1C9573A60(a1, v18 + v17, type metadata accessor for Location);
  SyncedData.init(locations:)();
  sub_1C949506C(&qword_1EDB7A5B0, type metadata accessor for SyncedData, &protocol conformance descriptor for SyncedData);
  sub_1C96A6D34();
  sub_1C9573AC8(v9);
  return sub_1C9573AC8(v12);
}

uint64_t sub_1C9573120@<X0>(uint64_t a1@<X8>)
{
  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  sub_1C96A6CC4();
  v2 = type metadata accessor for SyncedData(0);
  type metadata accessor for SyncedLocationDisplayContext(0);
  OUTLINED_FUNCTION_3_26();
  sub_1C949506C(v3, v4, &protocol conformance descriptor for SyncedLocationDisplayContext);
  result = sub_1C96A6BE4();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1C957320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_syncedData;
  OUTLINED_FUNCTION_7_21(a1);
  return sub_1C9573924(v2 + v4, a2);
}

uint64_t sub_1C9573254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeSyncedData);
  if (v5)
  {
    v8 = *(v3 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeSyncedData + 8);
    sub_1C96A3D04();
    v5(a1, a2);

    return sub_1C94E1D90(v5, v8);
  }

  else
  {
    v10 = type metadata accessor for SyncedData(0);

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v10);
  }
}

uint64_t sub_1C9573314(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeData);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeData + 8);
  sub_1C96A3D04();
  v5 = v2(a1);
  sub_1C94E1D90(v2, v4);
  return v5;
}

uint64_t sub_1C9573394(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_0_50();
  sub_1C9573A60(a1, v2, v6);
  v7 = type metadata accessor for SyncedData(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  v8 = OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_syncedData;
  swift_beginAccess();
  sub_1C95738B4(v2, v1 + v8);
  swift_endAccess();
  return 0;
}

uint64_t sub_1C9573464()
{
  sub_1C9573994(v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_syncedData);
  sub_1C9573AC8(v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_defaultSyncedData);
  sub_1C94E1D90(*(v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeSyncedData), *(v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeSyncedData + 8));
  sub_1C94E1D90(*(v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeData), *(v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeData + 8));
  return v0;
}

uint64_t sub_1C95734C4()
{
  sub_1C9573464();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for StubSyncedDataManager(uint64_t a1)
{
  result = qword_1EC3A5D00;
  if (!qword_1EC3A5D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9573570(uint64_t a1)
{
  sub_1C94940C4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SyncedData(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C9573648()
{
  v1 = OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_syncedData;
  v2 = type metadata accessor for SyncedData(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_defaultSyncedData;
  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  sub_1C96A6CC4();
  type metadata accessor for SyncedLocationDisplayContext(0);
  OUTLINED_FUNCTION_3_26();
  sub_1C949506C(v4, v5, &protocol conformance descriptor for SyncedLocationDisplayContext);
  sub_1C96A6BE4();
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  v6 = (v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeSyncedData);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC11WeatherCore21StubSyncedDataManager_makeData);
  *v7 = 0;
  v7[1] = 0;
  return v0;
}

uint64_t sub_1C95738B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9573924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9573994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C95739FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9573A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C9573AC8(uint64_t a1)
{
  v2 = type metadata accessor for SyncedData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C9573B24()
{
  result = [objc_opt_self() isIPad];
  byte_1EDB7A138 = result ^ 1;
  return result;
}

uint64_t static WatchUtilities.isNanoPairable.getter()
{
  if (qword_1EDB7A130 != -1)
  {
    swift_once();
  }

  return byte_1EDB7A138;
}

_BYTE *storeEnumTagSinglePayload for WatchUtilities(_BYTE *result, int a2, int a3)
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

uint64_t DeliveryScheduleEntity.init(id:date:subscription:notification:notificationContent:state:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10, char *a11)
{
  v114 = a6;
  v115 = a7;
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v108 = a1;
  v109 = a2;
  v116 = a10;
  v117 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v13);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  v110 = v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58, &unk_1C96AB080);
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v105[4] = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v105[3] = v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v23 = OUTLINED_FUNCTION_7(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_96();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v29 = OUTLINED_FUNCTION_7(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v105 - v34;
  v107 = *a11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  v119 = v36;
  v105[1] = v35;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  v118 = v32;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v106 = sub_1C96A6344();
  *a9 = v106;
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v43 = *MEMORY[0x1E69D61F8];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_6();
  v46 = *(v45 + 104);
  v46(v11, v43, v44);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v44);
  v50 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a9[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v46(v11, v43, v44);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v44);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v46(v26, v43, v44);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v44);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a9[2] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v44);
  v62 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v44);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v65 = sub_1C96A6344();
  a9[3] = v65;
  v105[2] = v65;
  OUTLINED_FUNCTION_3();
  v66 = v119;
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v119);
  v70 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v66);
  OUTLINED_FUNCTION_21_14();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a9[4] = sub_1C96A6344();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78, &unk_1C96AC570);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  v77 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80, &unk_1C96AB0C0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a9[5] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v73);
  v83 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v73);
  OUTLINED_FUNCTION_13_18();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a9[6] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  v86 = v119;
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v119);
  v90 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v86);
  OUTLINED_FUNCTION_21_14();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a9[7] = sub_1C96A6344();
  v120 = v108;
  v121 = v109;
  sub_1C96A3D04();
  sub_1C96A6364();

  v93 = sub_1C96A4A54();
  v94 = *(v93 - 8);
  v95 = v111;
  (*(v94 + 16))(v110, v111, v93);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v93);
  sub_1C96A6364();

  v120 = v112;
  v121 = v113;
  sub_1C96A6364();

  v100 = v114;
  v99 = v115;
  v120 = v114;
  v121 = v115;
  sub_1C94874C0(v114, v115);
  sub_1C96A6364();

  v102 = v116;
  v101 = v117;
  v120 = v117;
  v121 = v116;
  sub_1C94874C0(v117, v116);
  sub_1C96A6364();

  v103 = *&aReplaced_1[8 * v107 + 8];
  v120 = *&aPending_2[8 * v107];
  v121 = v103;
  sub_1C96A6364();

  sub_1C9482F3C(v101, v102);
  sub_1C9482F3C(v100, v99);
  return (*(v94 + 8))(v95, v93);
}

uint64_t DeliveryScheduleEntity.withState(_:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = *a1;
  result = sub_1C96A6354();
  v10 = v27;
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v26;
  sub_1C96A6354();
  v12 = sub_1C96A4A54();
  result = __swift_getEnumTagSinglePayload(v7, 1, v12);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v10;
  result = sub_1C96A6354();
  v13 = v25;
  if (!v25)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = a2;
  v15 = v24;
  result = sub_1C96A6354();
  v16 = v23;
  if (v23 >> 60 == 15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v22;
  result = sub_1C96A6354();
  if (v21 >> 60 != 15)
  {
    v19 = v8;
    return DeliveryScheduleEntity.init(id:date:subscription:notification:notificationContent:state:)(v11, v18, v7, v15, v13, v17, v16, v20, v14, v21, &v19);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static DeliveryScheduleEntity.version.getter()
{
  swift_beginAccess();
  v0 = *a002_0;
  sub_1C96A53C4();
  return v0;
}

uint64_t static DeliveryScheduleEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a002_0 = a1;
  qword_1EC3A5D18 = a2;
}

double sub_1C95745B8@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A5D18;
  *a1 = *a002_0;
  a1[1] = v2;
  sub_1C96A53C4();
  return result;
}

uint64_t sub_1C9574608(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a002_0 = v2;
  qword_1EC3A5D18 = v1;
  sub_1C96A53C4();
}

uint64_t DeliveryScheduleEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58, &unk_1C96AB080);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v84 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_96();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  v82 = v23;
  v80 = v1;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v81 = v21;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  *a1 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v30 = *MEMORY[0x1E69D61F8];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_6();
  v33 = *(v32 + 104);
  v33(v16, v30, v31);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v31);
  v37 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[1] = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v33(v16, v30, v31);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v31);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v33(v13, v30, v31);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v31);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[2] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v31);
  v49 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v31);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[3] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  v52 = v82;
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v82);
  v56 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v52);
  OUTLINED_FUNCTION_13_18();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[4] = sub_1C96A6344();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78, &unk_1C96AC570);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80, &unk_1C96AB0C0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[5] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v59);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v59);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[6] = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v52);
  v75 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v52);
  OUTLINED_FUNCTION_13_18();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  result = sub_1C96A6344();
  a1[7] = result;
  return result;
}

uint64_t DeliveryScheduleEntity.State.rawValue.getter()
{
  result = 0x676E69646E6570;
  switch(*v0)
  {
    case 1:
      result = 0x65726576696C6564;
      break;
    case 2:
      result = 0x64656E65706FLL;
      break;
    case 3:
      result = 0x6465766F6D6572;
      break;
    case 4:
      result = 0x646563616C706572;
      break;
    default:
      return result;
  }

  return result;
}

WeatherCore::DeliveryScheduleEntity::State_optional __swiftcall DeliveryScheduleEntity.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C9574C2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001C96D1DA0 == a2;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C96A7DE4();

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

unint64_t sub_1C9574EB4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x64657461657263;
      break;
    case 2:
      result = 0x6465696669646F6DLL;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x7069726373627573;
      break;
    case 5:
      result = 0x6163696669746F6ELL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9574FB8@<X0>(uint64_t *a1@<X8>)
{
  result = DeliveryScheduleEntity.State.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9575098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9574C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95750C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9574EAC();
  *a1 = result;
  return result;
}

uint64_t sub_1C95750E8(uint64_t a1)
{
  v2 = sub_1C9575468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9575124(uint64_t a1)
{
  v2 = sub_1C9575468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeliveryScheduleEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5D20, &qword_1C96B31C0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v54 = v1[2];
  v55 = v9;
  v12 = v1[5];
  v52 = v1[4];
  v53 = v11;
  v13 = v1[7];
  v50 = v1[6];
  v51 = v12;
  v49 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1C9575468();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v57 = v10;
  v56 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v16, v17, &unk_1C96AB0A0, v18);
  v19 = OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_9(v19, v20, v3, v15);
  if (v14)
  {
  }

  else
  {
    v48 = v15;

    v57 = v55;
    v56 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v22, v23, &unk_1C96AB0B0, v24);
    v25 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_11_17(v25, v26);
    v57 = v54;
    v56 = 2;
    v27 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_17_0(v27, v28, v3);
    v57 = v53;
    v29 = OUTLINED_FUNCTION_10_17(3);
    OUTLINED_FUNCTION_17_0(v29, v30, v31);
    v57 = v52;
    v32 = OUTLINED_FUNCTION_10_17(4);
    OUTLINED_FUNCTION_24_9(v32, v33, v34, v48);
    v57 = v51;
    v56 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80, &unk_1C96AB0C0);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v35, v36, &unk_1C96AB0C0, v37);
    v38 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_11_17(v38, v39);
    v57 = v50;
    v40 = OUTLINED_FUNCTION_10_17(6);
    OUTLINED_FUNCTION_17_0(v40, v41, v42);
    v57 = v49;
    v43 = OUTLINED_FUNCTION_10_17(7);
    OUTLINED_FUNCTION_24_9(v43, v44, v45, v46);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C9575468()
{
  result = qword_1EC3A5D28;
  if (!qword_1EC3A5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5D28);
  }

  return result;
}

uint64_t DeliveryScheduleEntity.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v111 = a1;
  v104 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5D30, &qword_1C96B31C8);
  OUTLINED_FUNCTION_1();
  v105 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D58, &unk_1C96AB080);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v114 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60, &unk_1C96AC540);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v103 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8, &unk_1C96AB090);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_96();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0, &unk_1C96AA6F0);
  v108 = v26;
  v120 = v2;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v107 = v24;
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8, &unk_1C96AB0A0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v119 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v33 = *MEMORY[0x1E69D61F8];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68, &unk_1C96AC550);
  OUTLINED_FUNCTION_6();
  v36 = *(v35 + 104);
  v36(v19, v33, v34);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70, &unk_1C96AB0B0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v118 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v36(v19, v33, v34);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v34);
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v36(v16, v33, v34);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v34);
  OUTLINED_FUNCTION_13_18();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v117 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v34);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v34);
  OUTLINED_FUNCTION_13_18();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v110 = sub_1C96A6344();
  v55 = OUTLINED_FUNCTION_5_4();
  v56 = v108;
  __swift_storeEnumTagSinglePayload(v55, v57, v58, v108);
  v59 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v56);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v115 = sub_1C96A6344();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D78, &unk_1C96AC570);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
  v66 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D80, &unk_1C96AB0C0);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v116 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v62);
  v72 = OUTLINED_FUNCTION_5_4();
  v73 = v62;
  v74 = v111;
  __swift_storeEnumTagSinglePayload(v72, v75, v76, v73);
  OUTLINED_FUNCTION_21_14();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v114 = sub_1C96A6344();
  v77 = OUTLINED_FUNCTION_5_4();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v56);
  v80 = OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v56);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v120 = sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  sub_1C9575468();
  v83 = v113;
  sub_1C96A7F44();
  if (v83)
  {
    v85 = v110;
    v86 = v115;
    v87 = v114;
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v126 = v119;
    v127 = v118;
    v128 = v117;
    v129 = v85;
    v130 = v86;
    v131 = v116;
    v132 = v87;
  }

  else
  {
    LOBYTE(v121) = 0;
    v84 = OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8, &unk_1C96AB0A0);
    OUTLINED_FUNCTION_18_14();
    sub_1C96A7CB4();

    v119 = v126;
    LOBYTE(v121) = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70, &unk_1C96AB0B0);
    OUTLINED_FUNCTION_8_21();

    v118 = v126;
    LOBYTE(v121) = 2;
    OUTLINED_FUNCTION_8_21();

    v117 = v126;
    LOBYTE(v121) = 3;
    OUTLINED_FUNCTION_8_21();

    v89 = v126;
    LOBYTE(v121) = 4;
    OUTLINED_FUNCTION_18_14();
    sub_1C96A7CB4();
    v113 = v84;

    v90 = v126;
    LOBYTE(v121) = 5;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E08, &qword_1EC3A4D80, &unk_1C96AB0C0);
    OUTLINED_FUNCTION_20_13();

    v116 = v126;
    LOBYTE(v121) = 6;
    OUTLINED_FUNCTION_20_13();

    v91 = v126;
    v125 = 7;
    OUTLINED_FUNCTION_18_14();
    sub_1C96A7CB4();
    OUTLINED_FUNCTION_27_8();
    v92 = OUTLINED_FUNCTION_6_28();
    v93(v92);

    v95 = v118;
    v94 = v119;
    v120 = v134;
    *&v121 = v119;
    v96 = v91;
    v97 = v90;
    v98 = v117;
    *(&v121 + 1) = v118;
    *&v122 = v117;
    *(&v122 + 1) = v89;
    *&v123 = v97;
    v99 = v116;
    *(&v123 + 1) = v116;
    *&v124 = v96;
    *(&v124 + 1) = v134;
    v100 = v122;
    v101 = v104;
    *v104 = v121;
    v101[1] = v100;
    v102 = v124;
    v101[2] = v123;
    v101[3] = v102;
    sub_1C94F7620(&v121, &v126);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v126 = v94;
    v127 = v95;
    v128 = v98;
    v129 = v89;
    v130 = v97;
    v131 = v99;
    v132 = v96;
  }

  v133 = v120;
  return sub_1C94F77AC(&v126);
}

unint64_t sub_1C9575D68()
{
  result = qword_1EC3A5D38;
  if (!qword_1EC3A5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5D38);
  }

  return result;
}

unint64_t sub_1C9575DC0()
{
  result = qword_1EDB7BDF8;
  if (!qword_1EDB7BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDF8);
  }

  return result;
}

unint64_t sub_1C9575E18()
{
  result = qword_1EDB7BE10;
  if (!qword_1EDB7BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BE10);
  }

  return result;
}

unint64_t sub_1C9575E70()
{
  result = qword_1EDB7BDE8;
  if (!qword_1EDB7BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDE8);
  }

  return result;
}

unint64_t sub_1C9575EC4()
{
  result = qword_1EDB7BDF0;
  if (!qword_1EDB7BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BDF0);
  }

  return result;
}

unint64_t sub_1C9575F1C()
{
  result = qword_1EDB7BE08;
  if (!qword_1EDB7BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BE08);
  }

  return result;
}

unint64_t sub_1C9575F98()
{
  result = qword_1EDB7BE00;
  if (!qword_1EDB7BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BE00);
  }

  return result;
}

uint64_t sub_1C9575FEC(uint64_t a1)
{
  v2 = sub_1C9576580();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C9576038(uint64_t a1)
{
  v2 = sub_1C9576580();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C9576084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9576580();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C957611C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9576580();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C9576168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9576580();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95761BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C9576580();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1C9576220(uint64_t *a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9576260(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for DeliveryScheduleEntity.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DeliveryScheduleEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C957647C()
{
  result = qword_1EC3A5D40;
  if (!qword_1EC3A5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5D40);
  }

  return result;
}

unint64_t sub_1C95764D4()
{
  result = qword_1EC3A5D48;
  if (!qword_1EC3A5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5D48);
  }

  return result;
}

unint64_t sub_1C957652C()
{
  result = qword_1EC3A5D50;
  if (!qword_1EC3A5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5D50);
  }

  return result;
}

unint64_t sub_1C9576580()
{
  result = qword_1EDB7BE18;
  if (!qword_1EDB7BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BE18);
  }

  return result;
}

unint64_t sub_1C95765D4()
{
  result = qword_1EC3A5D58;
  if (!qword_1EC3A5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5D58);
  }

  return result;
}

uint64_t dispatch thunk of LocationEntityManagerType.savedLocations.getter()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_12_3();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_37(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_23_11(v6);

  return v9(v3, v1);
}

uint64_t dispatch thunk of LocationEntityManagerType.addLocation(_:displayName:)()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_22_0();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_37(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_23_11(v12);

  return v15(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of LocationEntityManagerType.addLocation(_:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_1(v0, v1, v2);
  OUTLINED_FUNCTION_22_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_37(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_23_11(v4);
  v6 = OUTLINED_FUNCTION_37_6();

  return v7(v6);
}

uint64_t dispatch thunk of LocationEntityManagerType.deleteLocation(_:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_1(v0, v1, v2);
  OUTLINED_FUNCTION_22_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_37(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_23_11(v4);
  v6 = OUTLINED_FUNCTION_37_6();

  return v7(v6);
}

uint64_t sub_1C9576A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1C955FEC0();
  v10 = sub_1C96A7414();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C9470AFC(v9, &qword_1EC3A5090, &qword_1C96AD060);
  }

  else
  {
    sub_1C96A7404();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_1C96A7374();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = (v13 | v11);
  if (v13 | v11)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v11;
    v19[3] = v13;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v14;
  swift_task_create();
}

uint64_t sub_1C9576C78(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  sub_1C9469B6C(a1, v5 + 16);
  sub_1C9469B6C(a2, v5 + 56);
  sub_1C94670AC(a1, v5 + 96);
  sub_1C94670AC(a2, v5 + 136);
  sub_1C94670AC(a3, v5 + 176);
  sub_1C94670AC(a4, v5 + 216);
  sub_1C94670AC(a5, v5 + 256);
  return v5;
}

uint64_t sub_1C9576D0C()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_37(v0);
  *v1 = v2;
  v1[1] = sub_1C94C0604;

  return sub_1C9576D94();
}

uint64_t sub_1C9576D94()
{
  v1[4] = v0;
  v2 = sub_1C96A60E4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1C96A60A4();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_1C96A6154();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_1C96A60D4();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9576F80, 0, 0);
}

uint64_t sub_1C9576F80()
{
  OUTLINED_FUNCTION_49();
  if (qword_1EC3A47D0 != -1)
  {
    OUTLINED_FUNCTION_2_38(&qword_1EC3A47D0);
  }

  v1 = __swift_project_value_buffer(v0[13], qword_1EC3A74C0);
  v0[19] = v1;
  v2 = sub_1C96A6134();
  v3 = sub_1C96A7664();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Attempting to fetch LocationEntities.", v4, 2u);
    OUTLINED_FUNCTION_40();
  }

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  (*(v6 + 16))(v5, v1, v7);
  sub_1C96A60B4();
  sub_1C96A60C4();
  sub_1C96A6084();
  v8 = sub_1C96A60C4();
  v9 = sub_1C96A77F4();
  if (sub_1C96A78F4())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_1C96A6094();
    _os_signpost_emit_with_name_impl(&dword_1C945E000, v8, v9, v11, "Fetching LocationEntities", "", v10, 2u);
    OUTLINED_FUNCTION_40();
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[8];
  v15 = v0[9];
  v16 = v0[4];

  (*(v15 + 16))(v13, v12, v14);
  sub_1C96A6114();
  swift_allocObject();
  OUTLINED_FUNCTION_25_2();
  v0[20] = sub_1C96A6104();
  v17 = swift_task_alloc();
  v0[21] = v17;
  *(v17 + 16) = v16;
  v18 = swift_task_alloc();
  v0[22] = v18;
  *v18 = v0;
  v18[1] = sub_1C9577214;

  return MEMORY[0x1EEE6DBF8](v0 + 2);
}

uint64_t sub_1C9577214()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9577314()
{
  v45 = v0;
  v1 = sub_1C957AB74((v0[4] + 120), (v0[4] + 160), v0[2], v0[3]);

  sub_1C96A53C4();
  v2 = sub_1C96A60C4();
  sub_1C96A60F4();
  v3 = sub_1C96A77E4();

  if (sub_1C96A78F4())
  {
    v43 = v3;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];
    sub_1C96A3D04();
    sub_1C96A6124();

    if ((*(v4 + 88))(v5, v6) == *MEMORY[0x1E69E93E8])
    {
      v7 = 0;
      v8 = 0;
      v9 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
      v9 = "%{private,mask.hash}s";
      v8 = 3;
      v7 = 2;
    }

    v15 = v0[9];
    v14 = v0[10];
    v42 = v0[8];
    v16 = OUTLINED_FUNCTION_102();
    v17 = OUTLINED_FUNCTION_8_4();
    v44 = v17;
    *v16 = v8;
    *(v16 + 1) = v7;
    *(v16 + 2) = 2160;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v18 = MEMORY[0x1CCA8CC40](v1, &type metadata for LocationEntity);
    v20 = sub_1C9484164(v18, v19, &v44);

    *(v16 + 14) = v20;
    v21 = sub_1C96A6094();
    _os_signpost_emit_with_name_impl(&dword_1C945E000, v2, v43, v21, "Fetched LocationEntities", v9, v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v13 = *(v15 + 8);
    v13(v14, v42);
  }

  else
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[8];

    v13 = *(v11 + 8);
    v13(v10, v12);
  }

  swift_bridgeObjectRetain_n();
  v22 = sub_1C96A6134();
  v23 = sub_1C96A7664();
  v24 = os_log_type_enabled(v22, v23);
  v26 = v0[17];
  v25 = v0[18];
  v27 = v0[16];
  v28 = v0[12];
  v29 = v0[8];
  if (v24)
  {
    v40 = v0[8];
    v30 = OUTLINED_FUNCTION_8_4();
    v41 = v25;
    v31 = OUTLINED_FUNCTION_8_4();
    v44 = v31;
    *v30 = 141558531;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    v32 = sub_1C9579C04(v1);
    v39 = v27;
    v38 = v28;
    v34 = sub_1C9484164(v32, v33, &v44);

    *(v30 + 14) = v34;
    *(v30 + 22) = 2048;
    v35 = *(v1 + 16);

    *(v30 + 24) = v35;

    _os_log_impl(&dword_1C945E000, v22, v23, "Finished fetching LocationEntities. Result=%{private,mask.hash}s, count=%ld", v30, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v13(v38, v40);
    (*(v26 + 8))(v41, v39);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v13(v28, v29);
    (*(v26 + 8))(v25, v27);
  }

  OUTLINED_FUNCTION_74();

  return v36(v1);
}

uint64_t sub_1C9577760()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  OUTLINED_FUNCTION_7(v5);
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for Location(0);
  v1[7] = v6;
  OUTLINED_FUNCTION_7(v6);
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  OUTLINED_FUNCTION_7(v7);
  v1[9] = swift_task_alloc();
  v8 = type metadata accessor for LocationDataModel(0);
  v1[10] = v8;
  OUTLINED_FUNCTION_7(v8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9577894()
{
  v74 = v0;
  v1 = [*(v0 + 16) location];
  if (!v1)
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_1EDB7D010);
    }

    v14 = *(v0 + 16);
    v15 = sub_1C96A6154();
    __swift_project_value_buffer(v15, qword_1EDB7D018);
    v16 = v14;
    v17 = sub_1C96A6134();
    sub_1C96A7684();

    if (OUTLINED_FUNCTION_43_5())
    {
      v18 = *(v0 + 16);
      v19 = OUTLINED_FUNCTION_102();
      v20 = swift_slowAlloc();
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2113;
      *(v19 + 14) = v18;
      *v20 = v18;
      v21 = v18;
      OUTLINED_FUNCTION_15_16(&dword_1C945E000, v22, v23, "addLocation: Placemark does not have a location or coordinates: %{private,mask.hash}@");
      sub_1C9470AFC(v20, &qword_1EC3A5410, &qword_1C96ADAF0);
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_26();
    }

    sub_1C956AC08();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_42_4(v24, v25);
    goto LABEL_26;
  }

  v2 = v1;
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  [v1 coordinate];
  v6 = v5;
  v8 = v7;

  v9 = sub_1C96A7844();
  v11 = v10;
  v72 = v9;
  v73 = v10;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  MEMORY[0x1CCA8CB00](v4, v3);
  v69 = v73;
  v70 = v9;
  if (v9 == 0x746E6572727563 && v11 == 0xE700000000000000)
  {

    v13 = 1;
  }

  else
  {
    v13 = sub_1C96A7DE4();
  }

  v67 = v13 & 1;
  v26 = [*(v0 + 16) timeZone];
  v71 = v9;
  if (v26)
  {
    v27 = v26;
    sub_1C96A4DD4();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = *(v0 + 104);
  v66 = *(v0 + 96);
  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  v32 = *(v0 + 48);
  v68 = *(v0 + 56);
  v33 = *(v0 + 24);
  v34 = *(v0 + 32);
  v35 = sub_1C96A4DF4();
  __swift_storeEnumTagSinglePayload(v31, v28, 1, v35);
  v36 = sub_1C96A4A54();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v36);
  *v29 = v71;
  *(v29 + 8) = v11;
  *(v29 + 16) = v33;
  *(v29 + 24) = v34;
  *(v29 + 32) = v6;
  *(v29 + 40) = v8;
  *(v29 + 48) = v67;
  *(v29 + 56) = v70;
  *(v29 + 64) = v69;
  sub_1C949E15C();
  OUTLINED_FUNCTION_34_1(v30[6]);
  OUTLINED_FUNCTION_34_1(v30[8]);
  OUTLINED_FUNCTION_34_1(v30[9]);
  OUTLINED_FUNCTION_34_1(v30[10]);
  OUTLINED_FUNCTION_34_1(v30[11]);
  OUTLINED_FUNCTION_1_38();
  sub_1C957B8C8();
  Location.init(locationDataModel:)(v66, v32);
  if (__swift_getEnumTagSinglePayload(v32, 1, v68) == 1)
  {
    sub_1C9470AFC(*(v0 + 48), &qword_1EC3A5450, &qword_1C96AD580);
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_1EDB7D010);
    }

    v43 = sub_1C96A6154();
    __swift_project_value_buffer(v43, qword_1EDB7D018);
    OUTLINED_FUNCTION_1_38();
    sub_1C957B8C8();
    v44 = sub_1C96A6134();
    v45 = sub_1C96A7684();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 88);
      v47 = OUTLINED_FUNCTION_102();
      v48 = OUTLINED_FUNCTION_8_4();
      v72 = v48;
      OUTLINED_FUNCTION_31(7.2225e-34);
      OUTLINED_FUNCTION_1_38();
      sub_1C957B8C8();
      v49 = sub_1C96A70A4();
      v51 = v50;
      OUTLINED_FUNCTION_0_51();
      sub_1C94897C4(v46, v52);
      v53 = sub_1C9484164(v49, v51, &v72);

      *(v47 + 14) = v53;
      OUTLINED_FUNCTION_15_16(&dword_1C945E000, v54, v55, "addLocation: Could not make Location from locationDataModel: %{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_26();
    }

    else
    {
      v59 = *(v0 + 88);

      OUTLINED_FUNCTION_0_51();
      sub_1C94897C4(v59, v60);
    }

    v61 = *(v0 + 104);
    sub_1C956AC08();
    v62 = swift_allocError();
    OUTLINED_FUNCTION_42_4(v62, v63);
    OUTLINED_FUNCTION_0_51();
    sub_1C94897C4(v61, v64);
LABEL_26:
    OUTLINED_FUNCTION_30_4();

    OUTLINED_FUNCTION_17();

    return v65();
  }

  v56 = *(v0 + 40);
  OUTLINED_FUNCTION_4_28();
  sub_1C949A730();
  __swift_project_boxed_opaque_existential_1((v56 + 56), *(v56 + 80));
  v57 = swift_task_alloc();
  *(v0 + 112) = v57;
  *v57 = v0;
  v57[1] = sub_1C9577E94;
  OUTLINED_FUNCTION_32_2(*(v0 + 64));

  return sub_1C957FF34();
}

uint64_t sub_1C9577E94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C9578048;
  }

  else
  {
    v7 = sub_1C9577F94;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C9577F94()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_13_19();
  sub_1C94897C4(v1, v3);
  OUTLINED_FUNCTION_0_51();
  sub_1C94897C4(v2, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_1C9578048()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_13_19();
  sub_1C94897C4(v2, v3);
  OUTLINED_FUNCTION_0_51();
  sub_1C94897C4(v1, v4);
  OUTLINED_FUNCTION_30_4();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_1C95780FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_42();
}

uint64_t sub_1C9578110()
{
  OUTLINED_FUNCTION_30();
  __swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C95781BC;
  OUTLINED_FUNCTION_32_2(v0[2]);

  return sub_1C957FF34();
}

uint64_t sub_1C95781BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C957829C(uint64_t a1)
{
  *(v2 + 24) = v1;
  *(v2 + 32) = *a1;
  *(v2 + 48) = *(a1 + 32);
  return OUTLINED_FUNCTION_0_42();
}

uint64_t sub_1C95782C0()
{
  v1 = v0[4] == 0x746E6572727563 && v0[5] == 0xE700000000000000;
  if (v1 || (sub_1C96A7DE4() & 1) != 0)
  {
    v2 = 1;
LABEL_7:
    sub_1C956AC08();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    OUTLINED_FUNCTION_17();

    return v4();
  }

  sub_1C96A3BF4();
  v6 = v0[2];
  v7 = [v6 location];

  if (!v7)
  {
    v2 = 2;
    goto LABEL_7;
  }

  v8 = v0[3];
  [v7 coordinate];

  v9 = sub_1C96A7844();
  v11 = v10;
  v0[7] = v10;
  v12 = v8[10];
  v13 = v8[11];
  __swift_project_boxed_opaque_existential_1(v8 + 7, v12);
  OUTLINED_FUNCTION_22_0();
  v16 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_23_11(v15);

  return v16(v9, v11, v12, v13);
}

uint64_t sub_1C9578504()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C9578604()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_1C957BD40(v0 + 96);
  return v0;
}

uint64_t sub_1C9578634()
{
  sub_1C9578604();

  return MEMORY[0x1EEE6BDC0](v0, 296, 7);
}

uint64_t sub_1C9578694(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1C95786D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C9578774()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C957BEF0;

  return sub_1C9576D0C();
}

uint64_t sub_1C9578804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0C0C;

  return sub_1C9577760();
}

uint64_t sub_1C95788B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B0CEC;

  return sub_1C95780FC(a1);
}

uint64_t sub_1C957894C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B0CEC;

  return sub_1C957829C(a1);
}

uint64_t sub_1C95789E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[55] = a2;
  v3[56] = a3;
  v3[54] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5D98, &unk_1C96B37D0);
  v3[57] = v4;
  v3[58] = *(v4 - 8);
  v3[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  v3[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9578AEC, 0, 0);
}

uint64_t sub_1C9578AEC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[60];
  v2 = v0[56];
  v3 = sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  sub_1C957B920(v2, (v0 + 2));
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  memcpy(v7 + 4, v0 + 2, 0xC8uLL);
  sub_1C9576A6C(v1, &unk_1C96B37E8, v7);
  sub_1C9470AFC(v1, &qword_1EC3A5090, &qword_1C96AD060);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  sub_1C957B920(v2, (v0 + 27));
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  memcpy(v11 + 4, v0 + 27, 0xC8uLL);
  sub_1C9576A6C(v1, &unk_1C96B37F8, v11);
  sub_1C9470AFC(v1, &qword_1EC3A5090, &qword_1C96AD060);
  sub_1C96A73B4();
  v12 = MEMORY[0x1E69E7CC0];
  v0[61] = MEMORY[0x1E69E7CC0];
  v0[62] = v12;
  v13 = swift_task_alloc();
  v0[63] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_7_22(v13);

  return MEMORY[0x1EEE6D8A8](v14);
}

uint64_t sub_1C9578CAC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9578D90()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 424);
  if (v1 == 255)
  {
    v4 = *(v0 + 488);
    v3 = *(v0 + 496);
    v5 = *(v0 + 432);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    *v5 = v3;
    v5[1] = v4;

    OUTLINED_FUNCTION_17();

    return v6();
  }

  else
  {
    v2 = *(v0 + 416);
    if (v1)
    {

      *(v0 + 488) = v2;
      v2 = *(v0 + 496);
    }

    else
    {
    }

    *(v0 + 496) = v2;
    v8 = swift_task_alloc();
    *(v0 + 504) = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_7_22(v8);

    return MEMORY[0x1EEE6D8A8](v9);
  }
}

uint64_t sub_1C9578EB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C9578F48;

  return sub_1C9579184();
}

uint64_t sub_1C9578F48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9579034()
{
  OUTLINED_FUNCTION_49();
  v15 = v0;
  if (qword_1EC3A47D0 != -1)
  {
    OUTLINED_FUNCTION_2_38(&qword_1EC3A47D0);
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EC3A74C0);
  OUTLINED_FUNCTION_25_2();
  sub_1C96A53C4();
  v2 = sub_1C96A6134();
  sub_1C96A7664();

  if (OUTLINED_FUNCTION_43_5())
  {
    v3 = *(v0 + 32);
    v4 = OUTLINED_FUNCTION_102();
    v5 = OUTLINED_FUNCTION_8_4();
    v14 = v5;
    OUTLINED_FUNCTION_31(7.2225e-34);
    v6 = sub_1C9579F80(v3);
    v8 = sub_1C9484164(v6, v7, &v14);

    *(v4 + 14) = v8;
    OUTLINED_FUNCTION_15_16(&dword_1C945E000, v9, v10, "Fetched minimal location attributes. Attributes=%{private,mask.hash}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 16);
  *v11 = *(v0 + 32);
  *(v11 + 8) = 0;
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_1C9579184()
{
  v1[20] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  v1[22] = swift_task_alloc();
  v2 = sub_1C96A4DF4();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  v1[27] = swift_task_alloc();
  v3 = type metadata accessor for Location(0);
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v4 = type metadata accessor for LocationDataModel(0);
  v1[31] = v4;
  v1[32] = *(v4 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95793BC, 0, 0);
}

uint64_t sub_1C95793BC()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 160) + 40), *(*(v0 + 160) + 64));
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C95794C4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C95795A8()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 160) + 40), *(*(v0 + 160) + 64));
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C95796B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = v3;

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C957979C()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[32];
    v55 = v0[31];
    v47 = v0[28];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v56 = MEMORY[0x1E69E7CC0];
    v5 = &unk_1EC3A5F60;
    v46 = (v0[24] + 32);
    v54 = *(v3 + 72);
    do
    {
      v7 = v0[22];
      v6 = v0[23];
      OUTLINED_FUNCTION_1_38();
      OUTLINED_FUNCTION_11();
      sub_1C957B8C8();
      sub_1C949A730();
      sub_1C955FEC0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v6);
      v9 = v5;
      v10 = v0[33];
      v11 = v0[27];
      v57 = v0[28];
      if (EnumTagSinglePayload == 1)
      {
        v12 = v0[22];
        OUTLINED_FUNCTION_0_51();
        sub_1C94897C4(v10, v13);
        sub_1C9470AFC(v12, v9, &qword_1C96AD6B0);
        OUTLINED_FUNCTION_3();
        __swift_storeEnumTagSinglePayload(v14, v15, v16, v57);
        v5 = v9;
      }

      else
      {
        v18 = v0[25];
        v17 = v0[26];
        v19 = v0[23];
        v53 = v18;
        v20 = *v46;
        v48 = v19;
        (*v46)(v17, v0[22], v19);
        memcpy(v0 + 2, v10, 0x48uLL);
        v20(v18, v17, v19);
        sub_1C96A4A54();
        OUTLINED_FUNCTION_3();
        __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
        v25 = &v10[v55[8]];
        v26 = *v25;
        v27 = *(v25 + 1);
        v28 = &v10[v55[9]];
        v29 = *(v28 + 1);
        v51 = v26;
        v52 = *v28;
        v30 = &v10[v55[10]];
        v31 = *v30;
        v32 = *(v30 + 1);
        v33 = &v10[v55[11]];
        v34 = *(v33 + 1);
        v49 = v31;
        v50 = *v33;
        sub_1C95087DC((v0 + 2), (v0 + 11));
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_0_51();
        sub_1C94897C4(v10, v35);
        *&v11[v47[11]] = 0;
        memcpy(v11, v0 + 2, 0x48uLL);
        v20(&v11[v47[5]], v53, v48);
        sub_1C949E15C();
        v36 = &v11[v47[7]];
        *v36 = v51;
        *(v36 + 1) = v27;
        v37 = &v11[v47[8]];
        *v37 = v52;
        *(v37 + 1) = v29;
        v38 = &v11[v47[9]];
        *v38 = v49;
        *(v38 + 1) = v32;
        v39 = &v11[v47[10]];
        *v39 = v50;
        *(v39 + 1) = v34;
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v57);
        v5 = &unk_1EC3A5F60;
      }

      v40 = v0[27];
      if (__swift_getEnumTagSinglePayload(v40, 1, v0[28]) == 1)
      {
        sub_1C9470AFC(v40, &qword_1EC3A5450, &qword_1C96AD580);
      }

      else
      {
        OUTLINED_FUNCTION_4_28();
        sub_1C949A730();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C94FB4A8();
          v56 = v42;
        }

        v41 = *(v56 + 16);
        if (v41 >= *(v56 + 24) >> 1)
        {
          sub_1C94FB4A8();
          v56 = v43;
        }

        *(v56 + 16) = v41 + 1;
        OUTLINED_FUNCTION_4_28();
        sub_1C949A730();
      }

      v4 += v54;
      --v2;
    }

    while (v2);
  }

  else
  {

    v56 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_74();

  return v44(v56);
}

uint64_t sub_1C9579C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5D60, &qword_1C96B37A8);
  v18 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5D68, &qword_1C96B37B0);
  v19 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5D70, &qword_1C96B37B8);
  v11 = *(v10 - 8);
  v20 = v10;
  v21 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v23 = a1;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968638], v6, v12);
  (*(v3 + 104))(v5, *MEMORY[0x1E6968648], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5D78, &unk_1C96B37C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A59D0, qword_1C96B1760);
  sub_1C9469CB4(&qword_1EC3A5D80, &qword_1EC3A5D78, &unk_1C96B37C0, &unk_1C96B3A20);
  sub_1C9469CB4(&qword_1EC3A5D88, &qword_1EC3A59D0, qword_1C96B1760, MEMORY[0x1E69E6328]);
  sub_1C96A4134();
  (*(v3 + 8))(v5, v18);
  (*(v7 + 8))(v9, v19);
  sub_1C9469CB4(&qword_1EC3A5D90, &qword_1EC3A5D70, &qword_1C96B37B8, MEMORY[0x1E6968670]);
  v15 = v20;
  sub_1C96A71E4();
  (*(v21 + 8))(v14, v15);
  return v22;
}

uint64_t sub_1C9579F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5DD8, &qword_1C96B3840);
  v18 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5DE0, &qword_1C96B3848);
  v19 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5DE8, &qword_1C96B3850);
  v11 = *(v10 - 8);
  v20 = v10;
  v21 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v23 = a1;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968638], v6, v12);
  (*(v3 + 104))(v5, *MEMORY[0x1E6968648], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5DF0, &qword_1C96B3858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5210, &qword_1C96AD570);
  sub_1C9469CB4(&qword_1EC3A5DF8, &qword_1EC3A5DF0, &qword_1C96B3858, &unk_1C96B3A20);
  sub_1C9469CB4(&qword_1EC3A5E00, &qword_1EC3A5210, &qword_1C96AD570, MEMORY[0x1E69E6328]);
  sub_1C96A4134();
  (*(v3 + 8))(v5, v18);
  (*(v7 + 8))(v9, v19);
  sub_1C9469CB4(qword_1EC3A5E08, &qword_1EC3A5DE8, &qword_1C96B3850, MEMORY[0x1E6968670]);
  v15 = v20;
  sub_1C96A71E4();
  (*(v21 + 8))(v14, v15);
  return v22;
}

uint64_t sub_1C957A2FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5DA0, &qword_1C96B3800);
  v18 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5DA8, &qword_1C96B3808);
  v19 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5DB0, &qword_1C96B3810);
  v11 = *(v10 - 8);
  v20 = v10;
  v21 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v23 = a1;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968638], v6, v12);
  (*(v3 + 104))(v5, *MEMORY[0x1E6968648], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5DB8, &unk_1C96B3818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5248, &qword_1C96AD480);
  sub_1C9469CB4(&qword_1EC3A5DC0, &qword_1EC3A5DB8, &unk_1C96B3818, &unk_1C96B3A20);
  sub_1C9469CB4(&qword_1EC3A5DC8, &qword_1EC3A5248, &qword_1C96AD480, MEMORY[0x1E69E6328]);
  sub_1C96A4134();
  (*(v3 + 8))(v5, v18);
  (*(v7 + 8))(v9, v19);
  sub_1C9469CB4(&qword_1EC3A5DD0, &qword_1EC3A5DB0, &qword_1C96B3810, MEMORY[0x1E6968670]);
  v15 = v20;
  sub_1C96A71E4();
  (*(v21 + 8))(v14, v15);
  return v22;
}

uint64_t sub_1C957A678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C957A698, 0, 0);
}

uint64_t sub_1C957A698()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 80), *(*(v0 + 24) + 104));
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_0(v1);

  return v3(v2);
}

uint64_t sub_1C957A7A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  if (v0)
  {
    v5 = sub_1C957A9FC;
  }

  else
  {
    v5 = sub_1C957A8A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C957A8A8()
{
  OUTLINED_FUNCTION_49();
  v15 = v0;
  if (qword_1EC3A47D0 != -1)
  {
    OUTLINED_FUNCTION_2_38(&qword_1EC3A47D0);
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EC3A74C0);
  OUTLINED_FUNCTION_25_2();
  sub_1C96A53C4();
  v2 = sub_1C96A6134();
  sub_1C96A7664();

  if (OUTLINED_FUNCTION_43_5())
  {
    v3 = *(v0 + 40);
    v4 = OUTLINED_FUNCTION_102();
    v5 = OUTLINED_FUNCTION_8_4();
    v14 = v5;
    OUTLINED_FUNCTION_31(7.2225e-34);
    v6 = sub_1C957A2FC(v3);
    v8 = sub_1C9484164(v6, v7, &v14);

    *(v4 + 14) = v8;
    OUTLINED_FUNCTION_15_16(&dword_1C945E000, v9, v10, "Fetched locations of interest. LoI=%{private,mask.hash}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 16);
  *v11 = *(v0 + 40);
  *(v11 + 8) = 1;
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_1C957A9FC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EC3A47D0 != -1)
  {
    OUTLINED_FUNCTION_2_38(&qword_1EC3A47D0);
  }

  v1 = *(v0 + 48);
  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EC3A74C0);
  v3 = OUTLINED_FUNCTION_25_2();
  v4 = sub_1C96A6134();
  v5 = sub_1C96A7684();

  if (OUTLINED_FUNCTION_43_5())
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C945E000, v4, v5, "Failed fetching locations of interest; will use an empty set. Error=%@", v7, 0xCu);
    sub_1C9470AFC(v8, &qword_1EC3A5410, &qword_1C96ADAF0);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_40();
  }

  v11 = *(v0 + 48);

  v12 = *(v0 + 16);
  *v12 = MEMORY[0x1E69E7CC0];
  *(v12 + 8) = 1;
  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_1C957AB74(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LocationModel(0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SavedLocation(0);
  MEMORY[0x1EEE9AC00](v43);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58E0, &qword_1C96B1480);
  MEMORY[0x1EEE9AC00](v11 - 8);
  *&v45 = &v40 - v12;
  *&v44 = type metadata accessor for WeatherCoalescedLocationResult(0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  *&v46 = a4;
  if (v14)
  {
    v41 = a1;
    v42 = a2;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C9522D68();
    v15 = v49;
    v16 = *(type metadata accessor for Location(0) - 8);
    v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v18 = *(v16 + 72);
    do
    {
      sub_1C957B8C8();
      swift_storeEnumTagMultiPayload();
      v49 = v15;
      v19 = *(v15 + 16);
      if (v19 >= *(v15 + 24) >> 1)
      {
        sub_1C9522D68();
        v15 = v49;
      }

      *(v15 + 16) = v19 + 1;
      sub_1C949A730();
      v17 += v18;
      --v14;
    }

    while (v14);
    a1 = v41;
    a2 = v42;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = type metadata accessor for CurrentLocation(0);
  v23 = v45;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v22);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v26 = (*(v25 + 8))(v24, v25);
  v27 = v47;
  (*(v21 + 16))(v23, v15, v46, v26, v20, v21);

  sub_1C9470AFC(v23, &qword_1EC3A58E0, &qword_1C96B1480);
  v28 = *(v27 + *(v44 + 24));
  v29 = *(v28 + 16);
  if (v29)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1C9522D48(0, v29, 0);
    v30 = 0;
    v31 = v53;
    while (v30 < *(v28 + 16))
    {
      sub_1C957B8C8();
      sub_1C957B100(&v49);
      sub_1C94897C4(v10, type metadata accessor for LocationModel);
      v32 = v49;
      v33 = v50;
      v34 = v51;
      v35 = v52;
      v53 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        v45 = v51;
        v46 = v50;
        v44 = v52;
        sub_1C9522D48((v36 > 1), v37 + 1, 1);
        v35 = v44;
        v34 = v45;
        v33 = v46;
        v31 = v53;
      }

      *(v31 + 16) = v37 + 1;
      v38 = v31 + 56 * v37;
      *(v38 + 32) = v32;
      ++v30;
      *(v38 + 40) = v33;
      *(v38 + 56) = v34;
      *(v38 + 72) = v35;
      if (v29 == v30)
      {
        sub_1C94897C4(v47, type metadata accessor for WeatherCoalescedLocationResult);
        return v31;
      }
    }

    __break(1u);
    sub_1C94897C4(v10, type metadata accessor for LocationModel);

    __break(1u);
  }

  else
  {
    sub_1C94897C4(v27, type metadata accessor for WeatherCoalescedLocationResult);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C957B100@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930, &unk_1C96B1930);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  sub_1C956AE80();
  LocationModel.identifier.getter();
  sub_1C953AEDC(v30);
  v10 = v31;
  LocationModel.identifier.getter();
  sub_1C953AEDC(v32);
  v11 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v10 longitude:v33];
  v12 = LocationModel.name.getter();
  v27 = sub_1C9550094(v11, v12, v13, 0);
  LocationModel.identifier.getter();
  v14 = v34[1];
  v26 = v34[0];
  sub_1C96A53C4();
  sub_1C953AEDC(v34);
  v25 = LocationModel.name.getter();
  v16 = v15;
  LocationModel.location.getter();
  v17 = type metadata accessor for Location(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
  {
    sub_1C9470AFC(v9, &qword_1EC3A5450, &qword_1C96AD580);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = Location.sanitizedSecondaryName.getter();
    v19 = v20;
    sub_1C94897C4(v9, type metadata accessor for Location);
  }

  LocationModel.timeZone.getter();
  LocationModel.locationOfInterest.getter();
  v21 = type metadata accessor for LocationOfInterest(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v21) == 1)
  {
    sub_1C9470AFC(v3, &qword_1EC3A5930, &unk_1C96B1930);
    v22 = 2;
  }

  else
  {
    v22 = *v3;
    sub_1C94897C4(v3, type metadata accessor for LocationOfInterest);
  }

  v29 = v22;
  return LocationEntity.init(id:name:secondaryName:placemark:timeZone:locationOfInterestType:)(v26, v14, v25, v16, v18, v19, v27, v6, v28, &v29);
}

uint64_t sub_1C957B470(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CustomStringConvertibleFormatStyle.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v5 = sub_1C96A7D84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C96A7F54();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C957B618@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C94EA52C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C957B670@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_25_4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C957B6A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C957B6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C957B74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C957B444(a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C957B7D8(uint64_t a1)
{
  sub_1C96A7EE4();
  GEOLocationCoordinate2DMake();
  return sub_1C96A7F24();
}

uint64_t sub_1C957B824()
{
  OUTLINED_FUNCTION_30();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17_1(v6);
  *v7 = v8;
  v7[1] = sub_1C94B0CEC;

  return sub_1C95789E4(v4, v2, v5);
}

uint64_t sub_1C957B8C8()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C957B958()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_4(v1);

  return sub_1C9578EB4(v3);
}

uint64_t sub_1C957B9E8()
{
  OUTLINED_FUNCTION_30();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_4(v1);

  return sub_1C957A678(v3, v4, v5, v6);
}

uint64_t sub_1C957BA78(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1C957BB6C;

  return v5(v2 + 16);
}

uint64_t sub_1C957BB6C()
{
  OUTLINED_FUNCTION_30();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v4 = *(v1 + 32);
  v5 = *v0;
  *v3 = *v0;

  v6 = *(v2 + 24);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v6;
  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1C957BC94()
{
  OUTLINED_FUNCTION_30();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_1(v4);
  *v5 = v6;
  v5[1] = sub_1C94B0CEC;

  return sub_1C957BA78(v2, v3);
}

uint64_t sub_1C957BD88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C957BDC8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C957BEF8()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F28, &qword_1C96B3D18);
  v20[1] = 0;
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_5();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F30, &qword_1C96B3D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F38, &qword_1C96B3D28);
  *(swift_allocObject() + 16) = xmmword_1C96B3B40;
  v20[0] = 0;
  OUTLINED_FUNCTION_4(1701736270, 0xE400000000000000, v20);
  v19 = 1;
  OUTLINED_FUNCTION_4(0x6E69747265707543, 0xE90000000000006FLL, &v19);
  v18 = 4;
  OUTLINED_FUNCTION_4(0x6E617246206E6153, 0xED00006F63736963, &v18);
  v17 = 2;
  OUTLINED_FUNCTION_4(0x65736F4A206E6153, 0xE800000000000000, &v17);
  v16 = 3;
  OUTLINED_FUNCTION_4(0x6C6176796E6E7553, 0xE900000000000065, &v16);
  v15 = 5;
  OUTLINED_FUNCTION_4(0x67656944206E6153, 0xE90000000000006FLL, &v15);
  v14 = 6;
  OUTLINED_FUNCTION_4(0x61676F7461726153, 0xE800000000000000, &v14);
  v13 = 7;
  OUTLINED_FUNCTION_4(0x6E6F646E6F4CLL, 0xE600000000000000, &v13);
  v12 = 8;
  OUTLINED_FUNCTION_4(0x6961626D754DLL, 0xE600000000000000, &v12);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  sub_1C957D0A8();
  result = sub_1C96A4F54();
  qword_1EDB7FCF0 = result;
  return result;
}

uint64_t sub_1C957C330()
{
  v1 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  type metadata accessor for Settings.Location.ForceDefaultLocations(0);
  (*(v10 + 104))(v0, *MEMORY[0x1E69D6E90], v8);
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  v12 = __swift_project_value_buffer(v1, qword_1EDB80028);
  (*(v3 + 16))(v7, v12, v1);
  result = sub_1C96A4E74();
  qword_1EDB7CB20 = result;
  return result;
}

uint64_t sub_1C957C4FC()
{
  v1 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v5, qword_1EDB80028);
  v7 = OUTLINED_FUNCTION_5_5();
  v8(v7);
  (*(v3 + 104))(v0, *MEMORY[0x1E69D6E90], v1);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F20, &qword_1C96B3D10);
  swift_allocObject();
  result = OUTLINED_FUNCTION_4_19(48, 0x80000001C96D1F40, v10);
  qword_1EC3A5F10 = result;
  return result;
}

uint64_t sub_1C957C6C8()
{
  v1 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v5, qword_1EDB80028);
  v7 = OUTLINED_FUNCTION_5_5();
  v8(v7);
  (*(v3 + 104))(v0, *MEMORY[0x1E69D6E90], v1);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F20, &qword_1C96B3D10);
  swift_allocObject();
  result = OUTLINED_FUNCTION_4_19(49, 0x80000001C96D1F00, v10);
  qword_1EC3A5F18 = result;
  return result;
}

uint64_t Settings.Location.ForceDefaultLocations.__allocating_init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_11_18();
  v4 = OUTLINED_FUNCTION_10_18();
  v5(v4);
  return v1;
}

uint64_t Settings.Location.ForceDefaultLocations.init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_11_18();
  v4 = OUTLINED_FUNCTION_10_18();
  v5(v4);
  return v0;
}

uint64_t Settings.Location.ForceDefaultLocations.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C11WeatherCoreE8LocationV21ForceDefaultLocationsCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

WeatherCore::MockLocation_optional __swiftcall MockLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MockLocation.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0x6E69747265707563;
      break;
    case 2:
      result = 0x65736F4A6E6173;
      break;
    case 3:
      result = 0x6C6176796E6E7573;
      break;
    case 4:
      result = 0x636E6172466E6173;
      break;
    case 5:
      result = 0x6F676569446E6173;
      break;
    case 6:
      result = 0x61676F7461726173;
      break;
    case 7:
      result = 0x6E6F646E6F6CLL;
      break;
    case 8:
      result = 0x6961626D756DLL;
      break;
    case 9:
      result = 0x664F6961626D756DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C957CBE4()
{
  result = qword_1EDB7F9F8;
  if (!qword_1EDB7F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F9F8);
  }

  return result;
}

uint64_t sub_1C957CC5C@<X0>(uint64_t *a1@<X8>)
{
  result = MockLocation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C957CD34(uint64_t a1)
{
  v2 = sub_1C957D054();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C957CD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C957D054();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C957CDE4(uint64_t a1)
{
  v2 = sub_1C957D054();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

_BYTE *_s8LocationVwst(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for Settings.Location.ForceDefaultLocations(uint64_t a1)
{
  result = qword_1EDB7CB50;
  if (!qword_1EDB7CB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MockLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C957D054()
{
  result = qword_1EDB7F9F0;
  if (!qword_1EDB7F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7F9F0);
  }

  return result;
}

unint64_t sub_1C957D0A8()
{
  result = qword_1EDB7FA00;
  if (!qword_1EDB7FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FA00);
  }

  return result;
}

void (*sub_1C957D100(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = v3;
  v5 = result;
  v6 = (a3 + 56);
  v7 = *(a3 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = v6 + 4;
    v9 = *(v6 - 1);
    v10 = *v6;
    v11 = *(v6 - 2);
    v12[0] = *(v6 - 3);
    v12[1] = v11;
    v12[2] = v9;
    v12[3] = v10;
    sub_1C96A53C4();
    sub_1C96A53C4();
    v5(v12);

    v6 = v8;
  }

  while (!v4);
  return result;
}

uint64_t sub_1C957D1A8@<X0>(uint64_t a1@<X8>)
{
  AutomationDataService.weatherDataDirectory.getter();
  if (v2)
  {
    sub_1C96A46D4();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1C96A4764();

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v4);
}

uint64_t sub_1C957D21C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1C96A4EE4();
  sub_1C96A3D04();
  sub_1C96A4EC4();
  if (qword_1EDB7FD10 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  return v1;
}

Swift::Void __swiftcall AutomationWeatherDataManager.setupStubData()()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  sub_1C96A4764();
  OUTLINED_FUNCTION_1_39();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C957D1A8(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v0) == 1)
  {
    sub_1C947F1BC(v5);
LABEL_6:
    if (qword_1EDB7ACB0 != -1)
    {
      OUTLINED_FUNCTION_0_52(&qword_1EDB7ACB0);
    }

    v12 = sub_1C96A6154();
    __swift_project_value_buffer(v12, qword_1EDB7ACB8);
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_29();
      *v15 = 0;
      _os_log_impl(&dword_1C945E000, v13, v14, "Stub list is empty. skip setting up local server.", v15, 2u);
      OUTLINED_FUNCTION_26();
    }

    return;
  }

  (*(v7 + 32))(v10, v5);
  AutomationDataService.weatherDataConfiguration.getter(&v26);
  v11 = *(v26 + 16);

  if (!v11)
  {
    (*(v7 + 8))(v10);
    goto LABEL_6;
  }

  sub_1C957D788(*(v2 + 24));
  if (qword_1EDB7ACB0 != -1)
  {
    OUTLINED_FUNCTION_0_52(&qword_1EDB7ACB0);
  }

  v16 = sub_1C96A6154();
  __swift_project_value_buffer(v16, qword_1EDB7ACB8);
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    sub_1C96A50D4();
    sub_1C96A50C4();
    v25 = sub_1C96A5074();
    v21 = v20;

    v22 = v25;
    if (v21)
    {
      v22 = 0;
    }

    *(v19 + 4) = v22;
    _os_log_impl(&dword_1C945E000, v17, v18, "Starting local server..done.with port: %{public}ld", v19, 0xCu);
    OUTLINED_FUNCTION_26();
  }

  AutomationDataService.weatherDataConfiguration.getter(&v26);
  v23 = v26;
  MEMORY[0x1EEE9AC00](v24);
  *(&v25 - 2) = v10;
  sub_1C957D100(sub_1C957E38C, (&v25 - 4), v23);

  (*(v7 + 8))(v10);
}

uint64_t sub_1C957D788(uint64_t a1)
{
  *(v1 + 32) = 1;
  if (a1)
  {
    v2 = v1;
    if (qword_1EDB7ACB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB7ACB8);
    sub_1C96A3D04();
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = *(v2 + 24);

      _os_log_impl(&dword_1C945E000, v4, v5, "Starting local server..with port: %{public}ld", v6, 0xCu);
      MEMORY[0x1CCA8E3D0](v6, -1, -1);
    }

    else
    {
    }

    sub_1C96A50D4();
    sub_1C96A50C4();
    v11 = *(v2 + 24);
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v11 >> 16))
    {
      sub_1C96A5094();
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1EDB7ACB0 != -1)
  {
LABEL_17:
    swift_once();
  }

  v7 = sub_1C96A6154();
  __swift_project_value_buffer(v7, qword_1EDB7ACB8);
  v8 = sub_1C96A6134();
  v9 = sub_1C96A76A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C945E000, v8, v9, "Starting local server..with dynamic port", v10, 2u);
    MEMORY[0x1CCA8E3D0](v10, -1, -1);
  }

  sub_1C96A50D4();
  sub_1C96A50C4();
  sub_1C96A50A4();
}

uint64_t sub_1C957D9BC(uint64_t *a1)
{
  v28 = sub_1C96A4764();
  v2 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v30 = &v24 - v9;
  sub_1C96A4704();
  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C96A6154();
  __swift_project_value_buffer(v10, qword_1EDB7ACB8);
  sub_1C96A53C4();
  sub_1C96A53C4();
  v11 = sub_1C96A6134();
  v12 = sub_1C96A76A4();

  v13 = os_log_type_enabled(v11, v12);
  v29 = v6;
  v25 = v7;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_1C9484164(v7, v8, &v31);
    *(v14 + 12) = 2082;
    v16 = v5;
    *(v14 + 14) = sub_1C9484164(v5, v29, &v31);
    _os_log_impl(&dword_1C945E000, v11, v12, "Map %{public}s -> %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
    MEMORY[0x1CCA8E3D0](v14, -1, -1);
  }

  else
  {

    v16 = v5;
  }

  v17 = v8;
  sub_1C96A50D4();
  sub_1C96A50C4();
  v18 = v26;
  v19 = v28;
  (*(v2 + 16))(v26, v30, v28);
  v20 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 2) = v16;
  *(v21 + 3) = v22;
  *(v21 + 4) = v25;
  *(v21 + 5) = v17;
  (*(v2 + 32))(&v21[v20], v18, v19);
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A5084();

  return (*(v2 + 8))(v30, v19);
}

uint64_t sub_1C957DD18@<X0>(uint64_t a1@<X3>, unint64_t a2@<X4>, uint64_t *a5@<X8>)
{
  if (qword_1EDB7ACB0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C96A6154();
  __swift_project_value_buffer(v8, qword_1EDB7ACB8);
  sub_1C96A53C4();
  sub_1C96A53C4();
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1C9484164(a1, a2, &v20);
    _os_log_impl(&dword_1C945E000, v9, v10, "Serve data for: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1CCA8E3D0](v12, -1, -1);
    MEMORY[0x1CCA8E3D0](v11, -1, -1);
  }

  *a5 = sub_1C96A47B4();
  a5[1] = v13;
  v14 = *MEMORY[0x1E69D6478];
  v15 = sub_1C96A5234();
  (*(*(v15 - 8) + 104))(a5, v14, v15);
  v16 = *MEMORY[0x1E69D6468];
  v17 = sub_1C96A5244();
  v18 = *(*(v17 - 8) + 104);

  return v18(a5, v16, v17);
}

uint64_t sub_1C957E0B0()
{
  sub_1C96A50D4();
  sub_1C96A50C4();
  sub_1C96A50B4();

  *(v0 + 32) = 0;
  return result;
}

uint64_t AutomationWeatherDataManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

Swift::Void __swiftcall AutomationWeatherDataManager.applicationDidEnterBackground()()
{
  if (qword_1EDB7ACB0 != -1)
  {
    OUTLINED_FUNCTION_0_52(&qword_1EDB7ACB0);
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7ACB8);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_29();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "AutomationWeatherDataManager:applicationDidEnterBackground: stop mock server", v3, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_1C957E0B0();
}

Swift::Void __swiftcall AutomationWeatherDataManager.applicationWillEnterForeground()()
{
  if (qword_1EDB7ACB0 != -1)
  {
    OUTLINED_FUNCTION_0_52(&qword_1EDB7ACB0);
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB7ACB8);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_29();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "AutomationWeatherDataManager:applicationWillEnterForeground", v4, 2u);
    OUTLINED_FUNCTION_26();
  }

  if (*(v0 + 32))
  {
    oslog = sub_1C96A6134();
    v5 = sub_1C96A76A4();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = OUTLINED_FUNCTION_29();
      *v6 = 0;
      _os_log_impl(&dword_1C945E000, oslog, v5, "Server already start - skip it", v6, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {

    AutomationWeatherDataManager.setupStubData()();
  }
}

unint64_t sub_1C957E3A8(uint64_t a1, uint64_t a2)
{
  result = sub_1C957E3D0(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C957E3D0(uint64_t a1, uint64_t a2)
{
  result = qword_1EDB7A960;
  if (!qword_1EDB7A960)
  {
    type metadata accessor for AutomationWeatherDataManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A960);
  }

  return result;
}

uint64_t sub_1C957E460@<X0>(uint64_t *a1@<X8>)
{
  sub_1C96A4764();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_1C957DD18(v3, v4, a1);
}

uint64_t dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_1(v1, v2, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_39(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PredictedLocationsFeatureStateManagerType.intentDonationFeatureState()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_1(v1, v2, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_39(v4);

  return v7(v6);
}

uint64_t sub_1C957E744(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  sub_1C94670AC(a1, v4 + 16);
  sub_1C94670AC(a2, v4 + 56);
  sub_1C94670AC(a3, v4 + 96);
  sub_1C94670AC(a4, v4 + 136);
  return v4;
}

uint64_t sub_1C957E7A4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v4 = *result;
  if (v4 < 2)
  {
    v5 = 0;
  }

  else if (v4 - 3 >= 2 && (v6 = v2, v7 = v2[10], v8 = v2[11], __swift_project_boxed_opaque_existential_1(v2 + 7, v7), result = (*(v8 + 8))(v7, v8), (result & 1) != 0) && (v9 = v2[15], v10 = v2[16], __swift_project_boxed_opaque_existential_1(v2 + 12, v9), result = (*(v10 + 24))(v9, v10), result == 3) && (v12 = v2[20], v11 = v2[21], __swift_project_boxed_opaque_existential_1(v6 + 17, v6[20]), result = (*(*(v11 + 8) + 8))(&v13, v12), v13 != 2) && (v13 & 1) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

unsigned __int8 *sub_1C957E8C0@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v4 = *result;
  if (v4 < 2)
  {
    v5 = 0;
  }

  else if (v4 - 3 >= 2)
  {
    v6 = v2[15];
    v7 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v6);
    result = (*(v7 + 24))(v6, v7);
    if (result == 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C957E950(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_42();
}

uint64_t sub_1C957E964()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  OUTLINED_FUNCTION_4_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_27(v1);

  return v4(v3);
}

uint64_t sub_1C957EA64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C957EB50, 0, 0);
}

uint64_t sub_1C957EB50()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_22();
  sub_1C957E7A4(v0, v1);
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1C957EBA8@<X0>(char *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = OUTLINED_FUNCTION_6_30();
  v4(v3);
  return sub_1C957E7A4(&v6, a1);
}

uint64_t sub_1C957EC14(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_42();
}

uint64_t sub_1C957EC28()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  OUTLINED_FUNCTION_4_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_27(v1);

  return v4(v3);
}

uint64_t sub_1C957ED28()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C957EE14, 0, 0);
}

uint64_t sub_1C957EE14()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_22();
  sub_1C957E8C0(v0, v1);
  OUTLINED_FUNCTION_17();

  return v2();
}

unsigned __int8 *sub_1C957EE6C@<X0>(char *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = OUTLINED_FUNCTION_6_30();
  v4(v3);
  return sub_1C957E8C0(&v6, a1);
}

uint64_t sub_1C957EED8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 32))(v1, v2) & 1;
}

void *sub_1C957EF30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  return v0;
}

uint64_t sub_1C957EF68()
{
  sub_1C957EF30();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t sub_1C957EFC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B0CEC;

  return sub_1C957E950(a1);
}

uint64_t sub_1C957F080(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B0C0C;

  return sub_1C957EC14(a1);
}

void sub_1C957F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v27 = a7;
  v29 = a6;
  OUTLINED_FUNCTION_129();
  v31 = v9;
  v32 = v10;
  v12 = v11(0);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = 0;
  v33 = *(v8 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v33 == v18)
    {

      return;
    }

    if (v18 >= *(v8 + 16))
    {
      break;
    }

    sub_1C95935CC();
    v19 = v31(v17);
    if (v7)
    {
      sub_1C948981C();

      return;
    }

    if (v19)
    {
      sub_1C95933D4();
      v20 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_126();
        v27(v22);
        v20 = v34;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v30 = v24 + 1;
        v26 = v24;
        (v27)(v23 > 1, v24 + 1, 1);
        v25 = v30;
        v20 = v34;
      }

      ++v18;
      *(v20 + 16) = v25;
      v30 = v20;
      sub_1C95933D4();
    }

    else
    {
      sub_1C948981C();
      ++v18;
    }
  }

  __break(1u);
}

void *sub_1C957F41C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationDataModel(0);
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v61 = (&v55 - v9);
  if (qword_1EDB7D010 != -1)
  {
LABEL_30:
    swift_once();
  }

  v10 = sub_1C96A6154();
  v11 = __swift_project_value_buffer(v10, qword_1EDB7D018);
  sub_1C96A53C4();
  sub_1C96A53C4();
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();

  v14 = os_log_type_enabled(v12, v13);
  v56 = v4;
  v58 = a2;
  v59 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v63 = v16;
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = MEMORY[0x1CCA8CC40](a2, v4);
    v19 = v18;

    v20 = sub_1C9484164(v17, v19, &v63);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v21 = MEMORY[0x1CCA8CC40](a1, v4);
    v23 = sub_1C9484164(v21, v22, &v63);

    *(v15 + 34) = v23;
    _os_log_impl(&dword_1C945E000, v12, v13, "Starting a reconcile function - localLocations: %{private,mask.hash}s, existingLocalLocations: %{private,mask.hash}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v16, -1, -1);
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
  }

  else
  {
  }

  v4 = a1[2];
  v24 = v61;
  if (v4)
  {
    v25 = a1 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    a1 = MEMORY[0x1E69E7CC8];
    v26 = *(v60 + 72);
    while (1)
    {
      sub_1C95935CC();
      v27 = *v24;
      a2 = v24[1];
      sub_1C95935CC();
      swift_isUniquelyReferenced_nonNull_native();
      v63 = a1;
      v28 = sub_1C9476F90(v27, a2);
      v30 = a1[2];
      v31 = (v29 & 1) == 0;
      a1 = (v30 + v31);
      if (__OFADD__(v30, v31))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v32 = v28;
      v33 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5498, &qword_1C96ADC80);
      if (sub_1C96A7B84())
      {
        v34 = sub_1C9476F90(v27, a2);
        if ((v33 & 1) != (v35 & 1))
        {
          result = sub_1C96A7E44();
          __break(1u);
          return result;
        }

        v32 = v34;
      }

      a1 = v63;
      if (v33)
      {
        sub_1C953DCD0(v62, v63[7] + v32 * v26);
      }

      else
      {
        v63[(v32 >> 6) + 8] |= 1 << v32;
        v36 = (a1[6] + 16 * v32);
        *v36 = v27;
        v36[1] = a2;
        sub_1C95933D4();
        v37 = a1[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_29;
        }

        a1[2] = v39;
        sub_1C96A53C4();
      }

      v24 = v61;
      sub_1C948981C();
      v25 += v26;
      if (!--v4)
      {
        goto LABEL_18;
      }
    }
  }

  a1 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v40 = v58;
  v41 = *(v58 + 16);
  if (v41)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C9522CB0();
    v42 = v63;
    v43 = (v40 + ((*(v60 + 80) + 32) & ~*(v60 + 80)));
    v44 = *(v60 + 72);
    v45 = v57;
    do
    {
      sub_1C95077F4(v43, a1, v45);
      v63 = v42;
      v46 = v42[2];
      if (v46 >= v42[3] >> 1)
      {
        sub_1C9522CB0();
        v45 = v57;
        v42 = v63;
      }

      v42[2] = v46 + 1;
      sub_1C95933D4();
      v43 = (v43 + v44);
      --v41;
    }

    while (v41);
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
  }

  sub_1C96A53C4();
  v47 = sub_1C96A6134();
  v48 = sub_1C96A76A4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v63 = v50;
    *v49 = 141558275;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    v51 = MEMORY[0x1CCA8CC40](v42, v56);
    v53 = sub_1C9484164(v51, v52, &v63);

    *(v49 + 14) = v53;
    _os_log_impl(&dword_1C945E000, v47, v48, "Merged new local locations with old: %{private,mask.hash}s", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1CCA8E3D0](v50, -1, -1);
    MEMORY[0x1CCA8E3D0](v49, -1, -1);
  }

  return v42;
}

uint64_t sub_1C957FA7C(uint64_t a1)
{
  v17[2] = a1;
  sub_1C96A53C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A60E0, &qword_1C96ADC88);
  sub_1C9469CB4(&qword_1EDB77D48, &unk_1EC3A60E0, &qword_1C96ADC88, MEMORY[0x1E69E6328]);
  sub_1C9508658();
  v2 = sub_1C96A7204();
  if (sub_1C9554388(v2, a1))
  {
  }

  else
  {
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB7D018);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17[0] = v7;
      *v6 = 141558787;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2081;
      v8 = type metadata accessor for LocationDataModel(0);
      v9 = MEMORY[0x1CCA8CC40](a1, v8);
      v11 = v10;

      v12 = sub_1C9484164(v9, v11, v17);

      *(v6 + 14) = v12;
      *(v6 + 22) = 2160;
      *(v6 + 24) = 1752392040;
      *(v6 + 32) = 2081;
      v13 = MEMORY[0x1CCA8CC40](v2, v8);
      v15 = sub_1C9484164(v13, v14, v17);

      *(v6 + 34) = v15;
      _os_log_impl(&dword_1C945E000, v4, v5, "Unique locations changed. Original locations=%{private,mask.hash}s. Unique locations=%{private,mask.hash}s", v6, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v7, -1, -1);
      MEMORY[0x1CCA8E3D0](v6, -1, -1);
    }

    else
    {
    }
  }

  return v2;
}

BOOL sub_1C957FD34(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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
    sub_1C96A53C4();
    v8 = (a1)(v11);
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

void sub_1C957FDE4(uint64_t (*a1)(void *, __n128))
{
  v18 = a1;
  OUTLINED_FUNCTION_129();
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  sub_1C96A53C4();
  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1C9484328(*(v2 + 56) + 32 * v11, &v17);
    v16[0] = v13;
    v16[1] = v14;
    sub_1C96A53C4();
    v15 = v18(v16);
    sub_1C9557AB8(v16, &qword_1EC3A6148, &qword_1C96B4480);
    if (!v1)
    {
      v7 &= v7 - 1;
      if ((v15 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_11;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C957FF34()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_102_1();
  *(v0 + 32) = 2;
  OUTLINED_FUNCTION_12_3();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_23_11(v3);
  v5 = OUTLINED_FUNCTION_46();

  return v7(v5);
}

uint64_t sub_1C958004C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t SavedLocationsManagerDataStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C9580308()
{
  type metadata accessor for SavedLocationsActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EC3A5F40 = v0;
  return result;
}

uint64_t sub_1C9580348()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

double sub_1C9580388()
{
  if (qword_1EC3A46B0 != -1)
  {
    swift_once();
  }

  sub_1C96A3D04();
  return result;
}

uint64_t sub_1C95803E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SavedLocationsActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1C9580420()
{
  v3[3] = &type metadata for FeatureFlags;
  v3[4] = sub_1C95938F8();
  v0 = sub_1C96A5024();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v2 = 20;
  if (v0)
  {
    v2 = 50;
  }

  qword_1EC3A5F48 = v2;
  return result;
}

double SavedLocationsManager.savedLocations.getter()
{
  OUTLINED_FUNCTION_108();
  swift_beginAccess();
  sub_1C96A53C4();
  return result;
}

uint64_t sub_1C95804C8()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager____lazy_storage___forceMigrateToCoherence;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager____lazy_storage___forceMigrateToCoherence);
  if (v2 == 2)
  {
    if (qword_1EDB7AA50 != -1)
    {
      OUTLINED_FUNCTION_65_0();
      swift_once();
    }

    OUTLINED_FUNCTION_69_1();
    sub_1C9593824(v3, v4, v5, &protocol conformance descriptor for SavedLocationsManager);
    OUTLINED_FUNCTION_38();
    sub_1C96A4E44();
    LOBYTE(v2) = v7;
    *(v0 + v1) = v7;
  }

  return v2 & 1;
}

uint64_t SavedLocationsManager.dataStatus.getter@<X0>(BOOL *a1@<X8>)
{
  result = sub_1C95804C8();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_1C9580630(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v18 = a2[3];
  v17 = a2[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a2, v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20);
  v24 = a12(a1, v22, a3, a4, a5, a6, a7, a8, a9, a10, a11, v12, v18, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v24;
}

void sub_1C9580770()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = type metadata accessor for SyncedData(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB7CB18 != -1)
  {
    OUTLINED_FUNCTION_7_23(&qword_1EDB7CB18);
  }

  if ((sub_1C96A4E94() & 1) == 0)
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7D018);
    v9 = sub_1C96A6134();
    v10 = sub_1C96A76A4();
    v11 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_36_3();
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C945E000, v9, v10, "Attempting to fetch locations last saved in the Coherence local cache", v13, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager), *(v1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 24));
    v14 = OUTLINED_FUNCTION_89();
    v15(v14);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1C9557AB8(v5, &unk_1EC3A5F90, &qword_1C96B31A0);
      v16 = sub_1C96A6134();
      v17 = sub_1C96A7684();
      if (OUTLINED_FUNCTION_30_0(v17))
      {
        OUTLINED_FUNCTION_36_3();
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1C945E000, v16, v17, "Could not access local Coherence synced data - falling back to legacy data", v18, 2u);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1CCA8E3D0]();
      }

      sub_1C958D4D0();
    }

    else
    {
      OUTLINED_FUNCTION_5_23();
      sub_1C95933D4();
      OUTLINED_FUNCTION_143((v1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModelFactory));
      v19 = OUTLINED_FUNCTION_12_7();
      v21 = v20(v19);
      sub_1C96A53C4();
      v22 = sub_1C96A6134();
      v23 = sub_1C96A76A4();
      v24 = OUTLINED_FUNCTION_27_1();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_8_4();
        v27 = OUTLINED_FUNCTION_8_4();
        v35 = v27;
        *v26 = 134218499;
        *(v26 + 4) = *(v21 + 16);

        *(v26 + 12) = 2160;
        OUTLINED_FUNCTION_25();
        *(v26 + 14) = v28;
        *(v26 + 22) = 2081;
        v29 = type metadata accessor for LocationDataModel(0);
        v30 = MEMORY[0x1CCA8CC40](v21, v29);
        v32 = sub_1C9484164(v30, v31, &v35);

        *(v26 + 24) = v32;
        _os_log_impl(&dword_1C945E000, v22, v23, "Successfully fetched locations from the local Coherence container. Location count = %ld. Locations=%{private,mask.hash}s", v26, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        v33 = OUTLINED_FUNCTION_15_17();
        MEMORY[0x1CCA8E3D0](v33);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1CCA8E3D0]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_2_40();
      sub_1C948981C();
    }
  }

  OUTLINED_FUNCTION_20_4();
}

uint64_t sub_1C9580B1C(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78, &qword_1C96AA350);
  OUTLINED_FUNCTION_54();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1C959227C(a1);
  v5 = a2;
  return sub_1C96A5624();
}

uint64_t sub_1C9580BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a2;
  v3[42] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  v3[44] = swift_task_alloc();
  v4 = sub_1C96A4DF4();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  v3[49] = swift_task_alloc();
  v3[50] = type metadata accessor for Location(0);
  v3[51] = swift_task_alloc();
  v5 = type metadata accessor for LocationDataModel(0);
  v3[52] = v5;
  v3[53] = *(v5 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v6 = type metadata accessor for SavedLocation(0);
  v3[57] = v6;
  v3[58] = *(v6 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  if (qword_1EC3A46B0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC3A5F40;
  v3[61] = qword_1EC3A5F40;
  sub_1C96A3D04();

  return MEMORY[0x1EEE6DFA0](sub_1C9580E7C, v7, 0);
}

uint64_t sub_1C9580E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_133();
  if (v14[41] > 1uLL)
  {

    OUTLINED_FUNCTION_88_0();
    v30 = v19;
    v31 = v20;
    v32 = v21;
    OUTLINED_FUNCTION_145(v14[41], v14[42]);

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_85_0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, a12, a13, a14);
  }

  else
  {
    v15 = swift_task_alloc();
    v14[62] = v15;
    *v15 = v14;
    v15[1] = sub_1C9580FC4;
    OUTLINED_FUNCTION_77_0(v14[41]);
    OUTLINED_FUNCTION_85_0();

    return sub_1C95815CC(v16);
  }
}

uint64_t sub_1C9580FC4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  *(v6 + 504) = v5;

  v7 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C95810BC()
{
  v1 = v0[63];

  v2 = v0[63];
  v71 = *(v1 + 16);
  if (v71)
  {
    v59 = v0[59];
    v3 = v0[53];
    v69 = v0[52];
    v58 = v0[50];
    v4 = v0[46];
    OUTLINED_FUNCTION_78_0(MEMORY[0x1E69E7CC0]);
    sub_1C9522D68();
    v5 = v72;
    OUTLINED_FUNCTION_12_6();
    v7 = v2 + v6;
    v57 = (v4 + 32);
    v68 = *(v3 + 72);
    do
    {
      v70 = v5;
      v8 = v0[44];
      OUTLINED_FUNCTION_67_1();
      sub_1C95935CC();
      OUTLINED_FUNCTION_3_28();
      OUTLINED_FUNCTION_105_1();
      sub_1C95933D4();
      OUTLINED_FUNCTION_46();
      sub_1C95935CC();
      OUTLINED_FUNCTION_119_1();
      sub_1C955FEC0();
      v9 = OUTLINED_FUNCTION_144(v8);
      v10 = v0[54];
      v11 = v0[49];
      v12 = v0[50];
      if (v9 == 1)
      {
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        v13 = OUTLINED_FUNCTION_105_1();
        sub_1C9557AB8(v13, v14, &qword_1C96AD6B0);
        OUTLINED_FUNCTION_3();
        v18 = v12;
      }

      else
      {
        v20 = v0[47];
        v19 = v0[48];
        v65 = v20;
        v66 = v7;
        v67 = v0[50];
        v21 = v3;
        v22 = v0[45];
        v23 = *v57;
        v63 = v22;
        (*v57)(v19, v0[44], v22);
        OUTLINED_FUNCTION_140(v0 + 20);
        v23(v20, v19, v22);
        sub_1C96A4A54();
        OUTLINED_FUNCTION_3();
        __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
        v28 = (v10 + v21[8]);
        v29 = *v28;
        v30 = v28[1];
        v31 = (v10 + v21[9]);
        v32 = v31[1];
        v64 = *v31;
        v33 = (v10 + v21[10]);
        v34 = v33[1];
        v60 = *v33;
        v35 = (v10 + v21[11]);
        v12 = v35[1];
        v61 = *v35;
        v62 = v29;
        sub_1C95087DC((v0 + 20), (v0 + 29));
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        *(v11 + v58[11]) = 0;
        v36 = OUTLINED_FUNCTION_128();
        memcpy(v36, v37, v38);
        v23(v11 + v58[5], v65, v63);
        sub_1C949E15C();
        v39 = (v11 + v58[7]);
        *v39 = v62;
        v39[1] = v30;
        v40 = (v11 + v58[8]);
        *v40 = v64;
        v40[1] = v32;
        v41 = (v11 + v58[9]);
        *v41 = v60;
        v41[1] = v34;
        v42 = (v11 + v58[10]);
        *v42 = v61;
        v42[1] = v12;
        OUTLINED_FUNCTION_48();
        v18 = v67;
      }

      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      v43 = v0[49];
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v0[50]);
      v45 = v0[55];
      if (EnumTagSinglePayload == 1)
      {
        sub_1C9557AB8(v43, &qword_1EC3A5450, &qword_1C96AD580);
        memcpy(v0 + 2, v45, 0x48uLL);
        v46 = *&v45[*(v69 + 32) + 8];
        OUTLINED_FUNCTION_95_1();
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        OUTLINED_FUNCTION_111_1();
        v48.n128_u64[0] = v66;
        v47.n128_u64[0] = v67;
        v48.n128_u64[1] = v46;
        v47.n128_u64[1] = v12;
        OUTLINED_FUNCTION_103_1(v59, v47, v48);
      }

      else
      {
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        OUTLINED_FUNCTION_73_1();
        sub_1C95933D4();
        sub_1C95933D4();
        OUTLINED_FUNCTION_105_1();
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_31(v0[59], v0[60]);
      v5 = v70;
      v3 = *(v70 + 16);
      v49 = *(v70 + 24);
      if (v3 >= v49 >> 1)
      {
        OUTLINED_FUNCTION_90_1(v49);
        sub_1C9522D68();
        v5 = v70;
      }

      *(v5 + 16) = v3 + 1;
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_6_31(v52, v5 + v50 + *(v51 + 72) * v3);
      v7 += v68;
      --v71;
    }

    while (v71);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v53 = v0[42];
  v54 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations;
  OUTLINED_FUNCTION_113(v53 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations, (v0 + 38));
  *(v53 + v54) = v5;

  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_145(v0[41], v0[42]);

  OUTLINED_FUNCTION_3_10();

  return v55();
}

uint64_t sub_1C95815CC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for Location(0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for LocationDataModel(0);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C95816F4, 0, 0);
}

uint64_t sub_1C95816F4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[20];
  if (v1)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_28_8((v0[21] + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_defaultLocationManager));
      OUTLINED_FUNCTION_12_3();
      v7 = (v2 + *v2);
      v3 = swift_task_alloc();
      v0[29] = v3;
      *v3 = v0;
      OUTLINED_FUNCTION_23_11(v3);
      v4 = OUTLINED_FUNCTION_12_7();
      v5 = v7;

      return v5(v4);
    }

    sub_1C96A53C4();
  }

  v4 = OUTLINED_FUNCTION_6_13();

  return v5(v4);
}

uint64_t sub_1C9581870()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = v3;

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9581958(uint64_t a1)
{
  v2 = v1[30];
  v3 = *(v2 + 16);
  if (v3)
  {
    v47 = v1[26];
    v4 = v1[23];
    v48 = v1[22];
    OUTLINED_FUNCTION_78_0(MEMORY[0x1E69E7CC0]);
    sub_1C9522CB0();
    OUTLINED_FUNCTION_12_6();
    v6 = v2 + v5;
    v46 = *(v4 + 72);
    v55 = v3 - 1;
    v56 = v7;
    while (1)
    {
      v8 = v1[28];
      v9 = v1[24];
      v49 = v6;
      sub_1C95935CC();
      sub_1C95935CC();
      memcpy(v1 + 2, v9, 0x48uLL);
      v10 = v47[5];
      v11 = v48[5];
      v12 = sub_1C96A4DF4();
      OUTLINED_FUNCTION_6();
      (*(v13 + 16))(v8 + v10, &v9[v11], v12);
      OUTLINED_FUNCTION_48();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
      sub_1C95087DC((v1 + 2), (v1 + 11));
      v17 = sub_1C96A4D74();
      v53 = v18;
      v54 = v17;
      sub_1C948981C();
      sub_1C955FEC0();
      v19 = &v9[v48[7]];
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = &v9[v48[8]];
      v23 = *(v22 + 1);
      v51 = v20;
      v52 = *v22;
      v24 = v48[10];
      v25 = &v9[v48[9]];
      v27 = *v25;
      v26 = *(v25 + 1);
      v28 = *&v9[v24 + 8];
      v50 = *&v9[v24];
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      sub_1C96A53C4();
      OUTLINED_FUNCTION_6_11();
      sub_1C948981C();
      sub_1C96A4A54();
      OUTLINED_FUNCTION_3();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      v33 = OUTLINED_FUNCTION_128();
      memcpy(v33, v34, v35);
      v36 = (v8 + v47[6]);
      *v36 = v54;
      v36[1] = v53;
      v37 = (v8 + v47[8]);
      *v37 = v51;
      v37[1] = v21;
      v38 = (v8 + v47[9]);
      *v38 = v52;
      v38[1] = v23;
      v39 = (v8 + v47[10]);
      *v39 = v27;
      v39[1] = v26;
      v40 = (v8 + v47[11]);
      *v40 = v50;
      v40[1] = v28;
      v41 = v56;
      OUTLINED_FUNCTION_122_1();
      if (v43)
      {
        OUTLINED_FUNCTION_55_1(v42);
        sub_1C9522CB0();
        v41 = v56;
      }

      *(v41 + 16) = v26;
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_3_28();
      sub_1C95933D4();
      if (!v55)
      {
        break;
      }

      --v55;
      v56 = v41;
      v6 = v49 + v46;
    }
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
  }

  v44 = v1[1];

  return v44(v41);
}

uint64_t sub_1C9581C78(uint64_t a1)
{
  if (qword_1EDB7D010 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v2 = sub_1C96A6154();
  OUTLINED_FUNCTION_54_0(v2, qword_1EDB7D018);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  v5 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_36_3();
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "About to migrate the locations stores if we need to...", v7, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider), *(a1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider + 24));
  v8 = OUTLINED_FUNCTION_12_7();
  return v9(v8);
}

uint64_t sub_1C9581D6C(void **a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *a1;
  v8 = *(a2 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider + 24);
  v7 = *(a2 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider), v8);
  OUTLINED_FUNCTION_23_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C949D8BC(a4, v14);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v9;
  *(v10 + 32) = a3;
  sub_1C94670AC(v14, v10 + 40);
  v11 = v6;
  v12 = sub_1C95B87EC(sub_1C9593330, v10, v8, MEMORY[0x1E69E6370], v7);

  return v12;
}

uint64_t sub_1C9581E84(void *a1, id a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = &qword_1EDB7CFF8[1];
  if (a2)
  {
    v10 = a2;
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v11 = sub_1C96A6154();
    __swift_project_value_buffer(v11, qword_1EDB7D018);
    v12 = a2;
    v13 = sub_1C96A6134();
    v14 = sub_1C96A7684();

    if (os_log_type_enabled(v13, v14))
    {
      v37 = a5;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38[0] = v16;
      *v15 = 136446210;
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
      v18 = sub_1C96A70A4();
      v20 = sub_1C9484164(v18, v19, v38);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C945E000, v13, v14, "Error synchronizing with the remote store. Error=%{public}s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v21 = v16;
      v9 = qword_1EDB7CFF8 + 8;
      MEMORY[0x1CCA8E3D0](v21, -1, -1);
      v22 = v15;
      a5 = v37;
      MEMORY[0x1CCA8E3D0](v22, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a4)
    {
      v25 = a1[3];
      v26 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v25);
      (*(v26 + 24))(0x61446465636E7973, 0xEA00000000006174, v25, v26);
      v27 = a1[3];
      v28 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v27);
      (*(v28 + 32))(v27, v28);
      if (v9[2] != -1)
      {
        swift_once();
      }

      v29 = sub_1C96A6154();
      __swift_project_value_buffer(v29, qword_1EDB7D018);
      v30 = sub_1C96A6134();
      v31 = sub_1C96A76A4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C945E000, v30, v31, "Just force removed the remote Coherence data (account now considered not migrated at this point).", v32, 2u);
        MEMORY[0x1CCA8E3D0](v32, -1, -1);
      }
    }

    v33 = *&v24[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceMigrator + 24];
    v34 = *&v24[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceMigrator + 32];
    __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceMigrator], v33);
    v35 = (*(v34 + 8))(a5, a1, a2, v33, v34);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6128, &unk_1C96B6CD0);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  return v35;
}

uint64_t sub_1C9582220(char *a1, uint64_t a2)
{
  v2 = *a1;
  OUTLINED_FUNCTION_108();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      if (qword_1EDB7D010 != -1)
      {
        OUTLINED_FUNCTION_0_53();
        swift_once();
      }

      v5 = sub_1C96A6154();
      __swift_project_value_buffer(v5, qword_1EDB7D018);
      v6 = sub_1C96A6134();
      v7 = sub_1C96A76A4();
      v8 = OUTLINED_FUNCTION_27_1();
      if (os_log_type_enabled(v8, v9))
      {
        OUTLINED_FUNCTION_36_3();
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C945E000, v6, v7, "Clearing Coherence migration flag after successful migration.", v10, 2u);
        v11 = OUTLINED_FUNCTION_15_17();
        MEMORY[0x1CCA8E3D0](v11);
      }

      if (qword_1EDB7AA50 != -1)
      {
        OUTLINED_FUNCTION_65_0();
        swift_once();
      }

      type metadata accessor for SavedLocationsManager();
      OUTLINED_FUNCTION_69_1();
      sub_1C9593824(v12, v13, v14, &protocol conformance descriptor for SavedLocationsManager);
      sub_1C96A4FE4();
    }

    v15 = sub_1C95823DC(0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A78, &qword_1C96AA350);
    swift_allocObject();
    return sub_1C96A56A4();
  }

  return v15;
}

uint64_t sub_1C95823DC(char a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  sub_1C96A5784();
  v1 = sub_1C96A55A4();
  v2 = sub_1C96A5654();

  return v2;
}

void sub_1C95824A8()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_23_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C96A3D04();
  v11 = OUTLINED_FUNCTION_117();
  sub_1C9592FD8(v11, v12);
  if (qword_1EC3A46B0 != -1)
  {
    OUTLINED_FUNCTION_13_20(&qword_1EC3A46B0);
  }

  v13 = qword_1EC3A5F40;
  OUTLINED_FUNCTION_63_0();
  v16 = sub_1C9593824(v14, 255, v15, &unk_1C96B432C);
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v16;
  v17[4] = v10;
  v17[5] = v3;
  v17[6] = v1;
  sub_1C96A3D04();

  OUTLINED_FUNCTION_104();
  sub_1C951C258();

  OUTLINED_FUNCTION_20_4();
}

uint64_t sub_1C958261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[45] = a5;
  v6[46] = a6;
  v6[44] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v6[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  v6[48] = swift_task_alloc();
  v7 = sub_1C96A4DF4();
  v6[49] = v7;
  v6[50] = *(v7 - 8);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  v6[53] = swift_task_alloc();
  v6[54] = type metadata accessor for Location(0);
  v6[55] = swift_task_alloc();
  v8 = type metadata accessor for LocationDataModel(0);
  v6[56] = v8;
  v6[57] = *(v8 - 8);
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v9 = type metadata accessor for SavedLocation(0);
  v6[61] = v9;
  v6[62] = *(v9 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  if (qword_1EC3A46B0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC3A5F40;
  v6[65] = qword_1EC3A5F40;
  sub_1C96A3D04();

  return MEMORY[0x1EEE6DFA0](sub_1C95828E8, v10, 0);
}

uint64_t sub_1C95828E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_108();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12[66] = Strong;
  if (Strong)
  {
    v14 = Strong;
    v15 = (Strong + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_keyValueStoreProvider);
    v16 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v17 = *(v16 + 24);
    v18 = v14;
    v17();

    v19 = [objc_opt_self() defaultCenter];
    [v19 addObserver_];

    sub_1C9580770();
    v12[67] = v20;
    v21 = swift_task_alloc();
    v12[68] = v21;
    *v21 = v12;
    OUTLINED_FUNCTION_23_11(v21);
    OUTLINED_FUNCTION_49_1();

    return sub_1C95815CC(v22);
  }

  else
  {

    OUTLINED_FUNCTION_91_1();
    v34 = v25;

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_49_1();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v34, a10, a11, a12);
  }
}

uint64_t sub_1C9582AD0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  *(v6 + 552) = v5;

  v7 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9582BC8()
{
  v1 = v0[69];

  v2 = *(v1 + 16);
  v3 = v0[69];
  if (v2)
  {
    v64 = v0[63];
    v4 = v0[57];
    v73 = v0[56];
    v63 = v0[54];
    v5 = v0[50];
    OUTLINED_FUNCTION_78_0(MEMORY[0x1E69E7CC0]);
    sub_1C9522D68();
    v75 = v76;
    OUTLINED_FUNCTION_12_6();
    v7 = v3 + v6;
    v62 = (v5 + 32);
    v72 = *(v4 + 72);
    do
    {
      v74 = v2;
      v8 = v0[59];
      v9 = v0[48];
      OUTLINED_FUNCTION_67_1();
      sub_1C95935CC();
      OUTLINED_FUNCTION_3_28();
      OUTLINED_FUNCTION_117();
      sub_1C95933D4();
      sub_1C95935CC();
      OUTLINED_FUNCTION_119_1();
      sub_1C955FEC0();
      v10 = OUTLINED_FUNCTION_144(v9);
      v11 = v0[58];
      v13 = v0[53];
      v12 = v0[54];
      if (v10 == 1)
      {
        v14 = v0[48];
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        sub_1C9557AB8(v14, &unk_1EC3A5F60, &qword_1C96AD6B0);
        OUTLINED_FUNCTION_3();
        v18 = v12;
      }

      else
      {
        v20 = v0[51];
        v19 = v0[52];
        v69 = v20;
        v70 = v0[54];
        v21 = v0[49];
        v71 = v7;
        v22 = *v62;
        (*v62)(v19, v0[48], v21);
        memcpy(v0 + 20, v11, 0x48uLL);
        v22(v20, v19, v21);
        sub_1C96A4A54();
        OUTLINED_FUNCTION_3();
        __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
        v27 = (v11 + *(v8 + 32));
        v28 = *v27;
        v29 = v27[1];
        v30 = (v11 + *(v8 + 36));
        v67 = v28;
        v68 = *v30;
        v31 = v8;
        v32 = v30[1];
        v33 = (v11 + *(v31 + 40));
        v34 = *v33;
        v35 = v33[1];
        v36 = (v11 + *(v31 + 44));
        v37 = v36[1];
        v65 = v34;
        v66 = *v36;
        sub_1C95087DC((v0 + 20), (v0 + 29));
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        v11 = v63;
        *&v13[v63[11]] = 0;
        memcpy(v13, v0 + 20, 0x48uLL);
        v22(&v13[v63[5]], v69, v21);
        sub_1C949E15C();
        v38 = &v13[v63[7]];
        *v38 = v67;
        *(v38 + 1) = v29;
        v39 = &v13[v63[8]];
        *v39 = v68;
        *(v39 + 1) = v32;
        v40 = &v13[v63[9]];
        *v40 = v65;
        *(v40 + 1) = v35;
        v41 = &v13[v63[10]];
        *v41 = v66;
        *(v41 + 1) = v37;
        OUTLINED_FUNCTION_48();
        v18 = v70;
      }

      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      v42 = v0[53];
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v0[54]);
      v44 = v0[59];
      if (EnumTagSinglePayload == 1)
      {
        sub_1C9557AB8(v42, &qword_1EC3A5450, &qword_1C96AD580);
        memcpy(v0 + 2, v44, 0x48uLL);
        v45 = *(v44 + *(v73 + 32) + 8);
        OUTLINED_FUNCTION_95_1();
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        OUTLINED_FUNCTION_111_1();
        v47.n128_u64[0] = v70;
        v46.n128_u64[0] = v71;
        v47.n128_u64[1] = v45;
        v46.n128_u64[1] = v11;
        OUTLINED_FUNCTION_103_1(v64, v46, v47);
      }

      else
      {
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        v44 = type metadata accessor for Location;
        sub_1C95933D4();
        sub_1C95933D4();
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_31(v0[63], v0[64]);
      v48 = *(v76 + 16);
      OUTLINED_FUNCTION_122_1();
      if (v50)
      {
        OUTLINED_FUNCTION_55_1(v49);
        sub_1C9522D68();
      }

      *(v76 + 16) = v44;
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_6_31(v54, v52 + v51 + *(v53 + 72) * v48);
      v7 += v72;
      v2 = v74 - 1;
    }

    while (v74 != 1);
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
  }

  v55 = v0[66];
  v56 = *&v55[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModels];
  *&v55[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModels] = v0[67];
  sub_1C959228C(v56);
  v57 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations;
  OUTLINED_FUNCTION_113(&v55[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_savedLocations], (v0 + 41));
  *&v55[v57] = v75;
  sub_1C96A53C4();

  sub_1C9583124(v75);

  v58 = OUTLINED_FUNCTION_38();
  sub_1C9583448(v58, v59);

  OUTLINED_FUNCTION_91_1();

  OUTLINED_FUNCTION_17();

  return v60();
}

uint64_t sub_1C9583124(uint64_t a1)
{
  v3 = sub_1C96A6564();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C96A65E4();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A50E4();
  v10 = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_observers;
  swift_beginAccess();
  v11 = *&v1[v10];
  sub_1C96A53C4();
  sub_1C96A50F4();
  v16 = *&v1[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_notifyQueue];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v1;
  v12[4] = a1;
  aBlock[4] = sub_1C9593324;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C946FCF8;
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  sub_1C96A53C4();
  sub_1C96A6594();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1C9593824(&qword_1EDB7CF40, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370, &qword_1C96AD9F0);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370, &qword_1C96AD9F0, MEMORY[0x1E69E6328]);
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v9, v6, v13);
  _Block_release(v13);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v17);
}

uint64_t sub_1C9583448(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for SyncedData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - v14;
  result = v3 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncManager;
  if (*(v3 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncManager + 24))
  {
    result = sub_1C949D8BC(result, &v36);
  }

  else
  {
    v17 = *(result + 16);
    v36 = *result;
    v37 = v17;
    v38 = *(result + 32);
  }

  if (*(&v37 + 1))
  {
    sub_1C94670AC(&v36, v39);
    if (qword_1EDB7A130 != -1)
    {
      swift_once();
    }

    if (byte_1EDB7A138 == 1)
    {
      v33 = v10;
      v34 = a2;
      v35 = a1;
      v19 = v40;
      v18 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      (*(v18 + 32))(v19, v18);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = sub_1C96A7414();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v32);
      sub_1C949D8BC(v39, &v36);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      sub_1C94670AC(&v36, (v21 + 4));
      v21[9] = sub_1C9593094;
      v21[10] = v20;
      sub_1C96A3D04();
      sub_1C951C258();
      *(v3 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncTask) = v22;

      v23 = (v3 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager);
      v24 = *(v3 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 24);
      v25 = *(v3 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 32);
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v25 + 40))(v24, v25);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        v26 = sub_1C9557AB8(v8, &unk_1EC3A5F90, &qword_1C96B31A0);
        if (v35)
        {
          v35(v26);
        }
      }

      else
      {
        sub_1C95933D4();
        __swift_storeEnumTagSinglePayload(v15, 1, 1, v32);
        sub_1C949D8BC(v39, &v36);
        sub_1C95935CC();
        v27 = (v11 + ((*(v33 + 80) + 72) & ~*(v33 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        sub_1C94670AC(&v36, v28 + 32);
        sub_1C95933D4();
        v29 = (v28 + v27);
        v31 = v34;
        v30 = v35;
        *v29 = v35;
        v29[1] = v31;
        sub_1C9592FD8(v30, v31);
        sub_1C951C258();

        sub_1C948981C();
      }

      return __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  if (a1)
  {
    return (a1)(result);
  }

  return result;
}

void sub_1C9583918(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C9583974(a1);
  }
}

uint64_t sub_1C9583974(uint64_t a1)
{
  v1 = type metadata accessor for SyncedData(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C95935CC();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_1C95933D4();
  sub_1C951C258();
}

uint64_t sub_1C9583B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for SyncedData(0);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B8, &qword_1C96B43E0);
  v6[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60C0, &qword_1C96B43E8);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9583CB8, 0, 0);
}

uint64_t sub_1C9583CB8()
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60C8, &qword_1C96B43F0);
  sub_1C96A7464();
  sub_1C9557AB8(v1, &qword_1EC3A60B8, &qword_1C96B43E0);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = sub_1C9583DCC;
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_146();

  return MEMORY[0x1EEE6D9C8](v6);
}

uint64_t sub_1C9583DCC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9583EB0()
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_39();
  if (__swift_getEnumTagSinglePayload(v0[7], 1, v0[5]) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_146();

    return v2(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  else
  {
    v10 = v0[6];
    v11 = v0[3];
    OUTLINED_FUNCTION_5_23();
    sub_1C95933D4();
    v11(v10);
    OUTLINED_FUNCTION_2_40();
    sub_1C948981C();
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[12] = v12;
    *v12 = v13;
    v12[1] = sub_1C9583DCC;
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_146();

    return MEMORY[0x1EEE6D9C8](v14);
  }
}

uint64_t sub_1C9584010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C9584034, 0, 0);
}

uint64_t sub_1C9584034()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_8(*(v2 + 16));
  OUTLINED_FUNCTION_12_3();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_131(v4);
  *v5 = v6;
  v5[1] = sub_1C958413C;
  v7 = OUTLINED_FUNCTION_77_0(*(v2 + 24));

  return v9(v7, v0, v1);
}

uint64_t sub_1C958413C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9584220()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1C9584284(uint64_t a1)
{
  result = v1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncManager;
  if (*(v1 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncManager + 24))
  {
    result = sub_1C949D8BC(result, &v8);
  }

  else
  {
    v3 = *(result + 16);
    v8 = *result;
    v9 = v3;
    v10 = *(result + 32);
  }

  if (*(&v9 + 1))
  {
    sub_1C94670AC(&v8, v11);
    if (qword_1EDB7A130 != -1)
    {
      swift_once();
    }

    if (byte_1EDB7A138 == 1)
    {
      if (qword_1EDB7D010 != -1)
      {
        swift_once();
      }

      v4 = sub_1C96A6154();
      __swift_project_value_buffer(v4, qword_1EDB7D018);
      v5 = sub_1C96A6134();
      v6 = sub_1C96A76A4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C945E000, v5, v6, "Updating nano sync data", v7, 2u);
        MEMORY[0x1CCA8E3D0](v7, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      NanoSyncManagerType.setData(_:)();
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return result;
}

id SavedLocationsManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_nanoSyncTask])
  {
    sub_1C96A3D04();
    sub_1C96A74A4();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id SavedLocationsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C9584678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();

  return sub_1C96A4FE4();
}

uint64_t sub_1C95846D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE45768](a1, ObjectType, a5);
}

uint64_t sub_1C9584720(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE45760](a1, ObjectType);
}

uint64_t sub_1C9584770(uint64_t a1)
{
  v1 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_1C95935CC();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1C95933D4();
  sub_1C9584F28(0, 0, v4, &unk_1C96B44D0, v6);
}

uint64_t sub_1C9584910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C96A3A84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1C96A3AA4();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for Location(0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[11] = v7;
  v4[12] = sub_1C9551824();
  *v7 = v4;
  v7[1] = sub_1C9584AB0;

  return MEMORY[0x1EEDB2C30]();
}

uint64_t sub_1C9584AB0()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  v5 = v4;
  OUTLINED_FUNCTION_7_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_15();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v9();
  }

  else
  {
    *(v5 + 104) = v3 & 1;
    v11 = OUTLINED_FUNCTION_98();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C9584C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_49();
  if (*(v10 + 104) == 1)
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v11 = sub_1C96A6154();
    __swift_project_value_buffer(v11, qword_1EDB7D018);
    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_11();
    sub_1C95935CC();
    v12 = sub_1C96A6134();
    sub_1C96A76A4();
    v13 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_102();
      a9 = OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_31(7.2225e-34);
      sub_1C96A53C4();
      OUTLINED_FUNCTION_4_30();
      sub_1C948981C();
      v16 = OUTLINED_FUNCTION_89();
      v19 = sub_1C9484164(v16, v17, v18);

      *(v15 + 14) = v19;
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(a9);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    else
    {

      OUTLINED_FUNCTION_4_30();
      sub_1C948981C();
    }

    v39 = OUTLINED_FUNCTION_114_1();
    v40(v39);
    OUTLINED_FUNCTION_135();
    v41 = OUTLINED_FUNCTION_46();
    v42(v41);
    sub_1C96A3A94();
    v43 = OUTLINED_FUNCTION_12_7();
    v44(v43);
  }

  else
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v25 = sub_1C96A6154();
    __swift_project_value_buffer(v25, qword_1EDB7D018);
    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_11();
    sub_1C95935CC();
    v26 = sub_1C96A6134();
    sub_1C96A76A4();
    v27 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_102();
      a9 = OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_31(7.2225e-34);
      sub_1C96A53C4();
      OUTLINED_FUNCTION_4_30();
      sub_1C948981C();
      v30 = OUTLINED_FUNCTION_89();
      v33 = sub_1C9484164(v30, v31, v32);

      *(v29 + 14) = v33;
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(a9);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    else
    {

      OUTLINED_FUNCTION_4_30();
      sub_1C948981C();
    }
  }

  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_43_1();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_1C9584F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_89();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  sub_1C955FEC0();
  v14 = sub_1C96A7414();
  v15 = OUTLINED_FUNCTION_144(v13);
  sub_1C96A3D04();
  if (v15 == 1)
  {
    sub_1C9557AB8(v13, &qword_1EC3A5090, &qword_1C96AD060);
  }

  else
  {
    sub_1C96A7404();
    OUTLINED_FUNCTION_8_1();
    (*(v16 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C96A7374();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C96A70D4() + 32;
      sub_1C96A3D04();
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = OUTLINED_FUNCTION_136();

      sub_1C9557AB8(a3, &qword_1EC3A5090, &qword_1C96AD060);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C9557AB8(a3, &qword_1EC3A5090, &qword_1C96AD060);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return OUTLINED_FUNCTION_136();
}

uint64_t sub_1C9585180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  sub_1C96A53C4();
  sub_1C9584F28(0, 0, v6, &unk_1C96B44C0, v8);
}

uint64_t sub_1C958526C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1C96A3A84();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_1C96A3AA4();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[10] = v8;
  v5[11] = sub_1C9551824();
  *v8 = v5;
  v8[1] = sub_1C95853D4;

  return MEMORY[0x1EEDB2C30]();
}

uint64_t sub_1C95853D4()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  v5 = v4;
  OUTLINED_FUNCTION_7_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_15();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 96) = v3 & 1;
    OUTLINED_FUNCTION_8_2();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C9585520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_49();
  if (*(v10 + 96) == 1)
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v11 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v11, qword_1EDB7D018);
    sub_1C96A53C4();
    v12 = sub_1C96A6134();
    v13 = sub_1C96A76A4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_102();
      a9 = OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_23_12(7.2225e-34);
      v15 = OUTLINED_FUNCTION_117_0();
      *(v14 + 14) = sub_1C9484164(v15, v16, v17);
      OUTLINED_FUNCTION_134(&dword_1C945E000, v18, v19, "Submitting deleted event for location. ID=%{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(a9);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      v20 = OUTLINED_FUNCTION_15_17();
      MEMORY[0x1CCA8E3D0](v20);
    }

    v21 = OUTLINED_FUNCTION_114_1();
    v22(v21);
    OUTLINED_FUNCTION_135();
    v23 = OUTLINED_FUNCTION_46();
    v24(v23);
    sub_1C96A3A94();
    v25 = OUTLINED_FUNCTION_12_7();
    v26(v25);
  }

  else
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v27 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v27, qword_1EDB7D018);
    sub_1C96A53C4();
    v28 = sub_1C96A6134();
    v29 = sub_1C96A76A4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_102();
      a9 = OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_23_12(7.2225e-34);
      v31 = OUTLINED_FUNCTION_117_0();
      *(v30 + 14) = sub_1C9484164(v31, v32, v33);
      OUTLINED_FUNCTION_134(&dword_1C945E000, v34, v35, "No observers for location deleted event - skipping. ID=%{private,mask.hash}s");
      __swift_destroy_boxed_opaque_existential_1Tm(a9);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      v36 = OUTLINED_FUNCTION_15_17();
      MEMORY[0x1CCA8E3D0](v36);
    }
  }

  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_43_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1C95857A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1C9584F28(0, 0, v2, &unk_1C96B44B0, v4);
}

uint64_t sub_1C9585870()
{
  v1 = sub_1C96A3A84();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1C96A3AA4();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[8] = v3;
  v0[9] = sub_1C9551824();
  *v3 = v0;
  v3[1] = sub_1C95859D4;

  return MEMORY[0x1EEDB2C30]();
}

uint64_t sub_1C95859D4()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  OUTLINED_FUNCTION_27();
  v5 = v4;
  OUTLINED_FUNCTION_7_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_15();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 80) = v3 & 1;
    OUTLINED_FUNCTION_8_2();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1C9585B20()
{
  OUTLINED_FUNCTION_49();
  if (*(v0 + 80) == 1)
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v1 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v1, qword_1EDB7D018);
    v2 = sub_1C96A6134();
    sub_1C96A76A4();
    v3 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v3, v4))
    {
      OUTLINED_FUNCTION_36_3();
      v5 = swift_slowAlloc();
      OUTLINED_FUNCTION_47(v5);
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);

    (*(v16 + 104))(v14, *MEMORY[0x1E6959DC8], v15);
    sub_1C96A3AD4();
    (*(v16 + 8))(v14, v15);
    sub_1C96A3A94();
    (*(v12 + 8))(v11, v13);
  }

  else
  {
    if (qword_1EDB7D010 != -1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_once();
    }

    v17 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v17, qword_1EDB7D018);
    v18 = sub_1C96A6134();
    sub_1C96A76A4();
    v19 = OUTLINED_FUNCTION_27_1();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_36_3();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_47(v21);
      OUTLINED_FUNCTION_16_4();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }
  }

  OUTLINED_FUNCTION_3_10();

  return v27();
}

uint64_t SavedLocationsManager.addLocationWithChecks(_:locationDisplayContext:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  *(v1 + 304) = v4;
  *(v1 + 312) = v0;
  v5 = type metadata accessor for SyncedData(0);
  OUTLINED_FUNCTION_7(v5);
  *(v1 + 320) = OUTLINED_FUNCTION_12_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60, &qword_1C96AD6B0);
  OUTLINED_FUNCTION_7(v6);
  *(v1 + 328) = OUTLINED_FUNCTION_12_4();
  v7 = sub_1C96A4DF4();
  *(v1 + 336) = v7;
  OUTLINED_FUNCTION_9(v7);
  *(v1 + 344) = v8;
  *(v1 + 352) = OUTLINED_FUNCTION_12_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  OUTLINED_FUNCTION_7(v9);
  *(v1 + 360) = OUTLINED_FUNCTION_12_4();
  v10 = type metadata accessor for Location(0);
  *(v1 + 368) = v10;
  OUTLINED_FUNCTION_7(v10);
  *(v1 + 376) = swift_task_alloc();
  *(v1 + 384) = swift_task_alloc();
  *(v1 + 392) = swift_task_alloc();
  v11 = type metadata accessor for LocationDataModel(0);
  *(v1 + 400) = v11;
  OUTLINED_FUNCTION_9(v11);
  *(v1 + 408) = v12;
  *(v1 + 416) = swift_task_alloc();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  v13 = type metadata accessor for SavedLocation(0);
  *(v1 + 440) = v13;
  OUTLINED_FUNCTION_9(v13);
  *(v1 + 448) = v14;
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  *(v1 + 529) = *v3;
  v15 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C9585F80()
{
  if (qword_1EDB7CB18 != -1)
  {
    OUTLINED_FUNCTION_7_23(&qword_1EDB7CB18);
  }

  if (sub_1C96A4E94())
  {
    v1 = 6;
    goto LABEL_11;
  }

  v2 = *(v0 + 304);
  v3 = *v2 == 0x746E6572727563 && v2[1] == 0xE700000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {
    v1 = 0;
LABEL_11:
    sub_1C956AC08();
    swift_allocError();
    OUTLINED_FUNCTION_89_1();
    *v4 = v1;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_132();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 472) = OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_locationDataModels;
  if (qword_1EC3A46B0 != -1)
  {
    OUTLINED_FUNCTION_13_20(&qword_1EC3A46B0);
  }

  OUTLINED_FUNCTION_132();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9586164()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0[39] + v0[59]);
  v0[60] = v1;
  sub_1C959227C(v1);
  v2 = swift_task_alloc();
  v0[61] = v2;
  *v2 = v0;
  v2[1] = sub_1C958620C;

  return sub_1C95815CC(v1);
}

uint64_t sub_1C958620C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_25_0();
  *v2 = v1;
  v4 = *(v3 + 480);
  v5 = *v0;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  *(v8 + 496) = v7;

  sub_1C959228C(v4);
  v9 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C958630C()
{
  v1 = *(v0 + 496);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    v101 = *(v0 + 368);
    v102 = *(v0 + 456);
    v5 = *(v0 + 344);
    v114 = MEMORY[0x1E69E7CC0];
    sub_1C9522D68();
    v112 = v114;
    OUTLINED_FUNCTION_12_6();
    v7 = v1 + v6;
    v100 = (v5 + 32);
    v109 = *(v3 + 72);
    v110 = v4;
    do
    {
      v111 = v2;
      v8 = v4;
      v9 = *(v0 + 328);
      v10 = *(v0 + 336);
      OUTLINED_FUNCTION_66_0();
      sub_1C95935CC();
      OUTLINED_FUNCTION_3_28();
      OUTLINED_FUNCTION_89();
      sub_1C95933D4();
      OUTLINED_FUNCTION_6_11();
      sub_1C95935CC();
      sub_1C955FEC0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
      v12 = *(v0 + 416);
      if (EnumTagSinglePayload == 1)
      {
        v13 = *(v0 + 368);
        v14 = *(v0 + 328);
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        sub_1C9557AB8(v14, &unk_1EC3A5F60, &qword_1C96AD6B0);
        OUTLINED_FUNCTION_3();
        v18 = v13;
      }

      else
      {
        v19 = *(v0 + 384);
        v107 = *(v0 + 368);
        v20 = *(v0 + 352);
        v21 = *(v0 + 336);
        v22 = *v100;
        (*v100)(v20, *(v0 + 328), v21);
        memcpy((v0 + 160), v12, 0x48uLL);
        v22(v19 + v101[5], v20, v21);
        sub_1C96A4A54();
        OUTLINED_FUNCTION_3();
        __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
        v27 = &v12[v8[8]];
        v28 = *v27;
        v29 = *(v27 + 1);
        v30 = &v12[v8[9]];
        v31 = *(v30 + 1);
        v104 = v28;
        v105 = *v30;
        v32 = v8[11];
        v33 = &v12[v8[10]];
        v34 = *v33;
        v35 = *(v33 + 1);
        v36 = *&v12[v32 + 8];
        v103 = *&v12[v32];
        sub_1C95087DC(v0 + 160, v0 + 232);
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        *(v19 + v101[11]) = 0;
        v37 = OUTLINED_FUNCTION_128();
        memcpy(v37, v38, v39);
        v40 = (v19 + v101[7]);
        *v40 = v104;
        v40[1] = v29;
        v41 = (v19 + v101[8]);
        *v41 = v105;
        v41[1] = v31;
        v42 = (v19 + v101[9]);
        *v42 = v34;
        v42[1] = v35;
        v43 = (v19 + v101[10]);
        *v43 = v103;
        v43[1] = v36;
        OUTLINED_FUNCTION_22_12();
        sub_1C95933D4();
        OUTLINED_FUNCTION_48();
        v18 = v107;
      }

      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      v44 = *(v0 + 360);
      v45 = __swift_getEnumTagSinglePayload(v44, 1, *(v0 + 368));
      v46 = *(v0 + 424);
      if (v45 == 1)
      {
        sub_1C9557AB8(v44, &qword_1EC3A5450, &qword_1C96AD580);
        OUTLINED_FUNCTION_140((v0 + 16));
        v4 = v110;
        v47 = (v46 + v110[8]);
        v48 = v47[1];
        v49 = (v46 + v110[9]);
        v50 = v49[1];
        v108 = *v49;
        v106 = *v47;
        sub_1C95087DC(v0 + 16, v0 + 88);
        sub_1C96A53C4();
        sub_1C96A53C4();
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        v51 = OUTLINED_FUNCTION_128();
        memmove(v51, v52, v53);
        *&v55 = v106;
        *&v54 = v108;
        *(&v55 + 1) = v48;
        *(&v54 + 1) = v50;
        *(v102 + 88) = v54;
        *(v102 + 72) = v55;
        OUTLINED_FUNCTION_89();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        OUTLINED_FUNCTION_1_40();
        sub_1C948981C();
        OUTLINED_FUNCTION_73_1();
        sub_1C95933D4();
        sub_1C95933D4();
        OUTLINED_FUNCTION_89();
        swift_storeEnumTagMultiPayload();
        v4 = v110;
      }

      OUTLINED_FUNCTION_6_31(*(v0 + 456), *(v0 + 464));
      v57 = *(v114 + 16);
      v56 = *(v114 + 24);
      if (v57 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_90_1(v56);
        sub_1C9522D68();
      }

      *(v114 + 16) = v57 + 1;
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_6_31(v61, v59 + v58 + *(v60 + 72) * v57);
      v7 += v109;
      v2 = v111 - 1;
    }

    while (v111 != 1);
  }

  else
  {

    v112 = MEMORY[0x1E69E7CC0];
  }

  v62 = *(v112 + 16);
  if (qword_1EC3A46B8 != -1)
  {
    OUTLINED_FUNCTION_79_1(&qword_1EC3A46B8);
  }

  if (v62 >= qword_1EC3A5F48)
  {

    v68 = 5;
    goto LABEL_20;
  }

  v63 = *(v0 + 304);
  v64 = swift_task_alloc();
  *(v64 + 16) = v63;
  sub_1C957F1D0(sub_1C959229C, v64, v112, type metadata accessor for SavedLocation, type metadata accessor for SavedLocation, type metadata accessor for SavedLocation, sub_1C9522D68);
  v66 = v65;

  v67 = *(v66 + 16);

  if (v67)
  {
    v68 = 3;
LABEL_20:
    sub_1C956AC08();
    swift_allocError();
    OUTLINED_FUNCTION_89_1();
    *v69 = v68;
    swift_willThrow();

    OUTLINED_FUNCTION_17();

    return v70();
  }

  if (qword_1EDB7D010 != -1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_once();
  }

  v72 = sub_1C96A6154();
  *(v0 + 504) = __swift_project_value_buffer(v72, qword_1EDB7D018);
  OUTLINED_FUNCTION_17_19();
  sub_1C95935CC();
  v73 = sub_1C96A6134();
  v74 = sub_1C96A76A4();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_102();
    v115 = OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_23_12(7.2225e-34);
    sub_1C9593824(&qword_1EDB7ADD0, 255, type metadata accessor for Location, &protocol conformance descriptor for Location);
    sub_1C96A7DB4();
    OUTLINED_FUNCTION_4_30();
    sub_1C948981C();
    v76 = OUTLINED_FUNCTION_6_11();
    v79 = sub_1C9484164(v76, v77, v78);

    *(v75 + 14) = v79;
    _os_log_impl(&dword_1C945E000, v73, v74, "Starting an operation to add a new location to the list. location=%{private,mask.hash}s", v75, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
    v80 = OUTLINED_FUNCTION_15_17();
    MEMORY[0x1CCA8E3D0](v80);
  }

  else
  {

    OUTLINED_FUNCTION_4_30();
    sub_1C948981C();
  }

  v81 = sub_1C96A6134();
  sub_1C96A76A4();
  v82 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v82, v83))
  {
    OUTLINED_FUNCTION_36_3();
    v84 = swift_slowAlloc();
    OUTLINED_FUNCTION_47(v84);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v85, v86, v87, v88, v89, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v90 = *(v0 + 529);
  v91 = *(v0 + 312);

  v92 = (v91 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager);
  v93 = *(v91 + OBJC_IVAR____TtC11WeatherCore21SavedLocationsManager_coherenceDataManager + 24);
  v94 = v92[4];
  OUTLINED_FUNCTION_19_7(v92);
  *(v0 + 528) = v90;
  OUTLINED_FUNCTION_42();
  v113 = (v95 + *v95);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 512) = v96;
  *v96 = v97;
  v96[1] = sub_1C9586C10;
  v98 = *(v0 + 320);
  v99 = *(v0 + 304);

  return v113(v98, v99, v0 + 528, v93, v94);
}

uint64_t sub_1C9586C10()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9586CF4()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1C96A6134();
  sub_1C96A76A4();
  v2 = OUTLINED_FUNCTION_27_1();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_36_3();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_47(v4);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v10 = swift_task_alloc();
  *(v0 + 520) = v10;
  *v10 = v0;
  v10[1] = sub_1C9586DE0;
  v11 = OUTLINED_FUNCTION_77_0(*(v0 + 320));

  return sub_1C958721C(v11);
}

uint64_t sub_1C9586DE0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C9586EC4(uint64_t a1)
{
  v2 = sub_1C96A6134();
  sub_1C96A76A4();
  OUTLINED_FUNCTION_43_6();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_36_3();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_47(v4);
    OUTLINED_FUNCTION_76_1(&dword_1C945E000, v5, v6, "Successfully saved to the remote KVS. Finished operation to add a local location to the list.");
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }

  v7 = *(v1 + 304);

  sub_1C9584770(v7);
  OUTLINED_FUNCTION_2_40();
  sub_1C948981C();

  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_132();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C958701C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&__dst[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SavedLocation(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &__dst[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[1];
  sub_1C95935CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v8, sizeof(__dst));
    v12 = __dst[0];
    v11 = __dst[1];
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C955FE40(__dst);
  }

  else
  {
    sub_1C95933D4();
    v12 = *v5;
    v11 = v5[1];
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C948981C();
  }

  if (v9 == v12 && v10 == v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C96A7DE4();
  }

  return v14 & 1;
}