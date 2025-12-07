uint64_t sub_237EC605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v97 = a5;
  v98 = a6;
  v95 = a3;
  v96 = a4;
  OUTLINED_FUNCTION_102_2();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v87 = v13;
  v88 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  v86 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20, &unk_237F09D50);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  v91 = &v82 - v17;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v84 = v19;
  v85 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v83 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_1();
  v94 = v22;
  OUTLINED_FUNCTION_12_1();
  v23 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v82 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v90 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  v32 = &v82 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36_24();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_35_24();
  OUTLINED_FUNCTION_49_16(v108);
  v92 = v9;
  v93 = a2;
  OUTLINED_FUNCTION_81_1();
  sub_237CF1674();
  v101 = *(v25 + 16);
  v102 = v25 + 16;
  v101(v8, v95, v23);
  v35 = OUTLINED_FUNCTION_88_5();
  v100 = v36;
  v37 = (v36)(v35);
  v38 = *MEMORY[0x277D252B0];
  v99 = v7;
  if (v37 == v38)
  {
    v39 = OUTLINED_FUNCTION_88_5();
    v40(v39);
    memcpy(v107, v7, sizeof(v107));
    v89 = v107[1];
    OUTLINED_FUNCTION_42_20();
    sub_237CF1674();
  }

  else
  {
    v89 = v109;
    v41 = OUTLINED_FUNCTION_88_5();
    v42(v41);
  }

  v101(v10, v96, v23);
  if (v100(v10, v23) == v38)
  {
    (*(v25 + 96))(v10, v23);
    OUTLINED_FUNCTION_73_5(v106);
    v89 = v106[1];
    OUTLINED_FUNCTION_65_7();
    sub_237CF1674();
  }

  else
  {
    (*(v25 + 8))(v10, v23);
  }

  v101(v32, v97, v23);
  v43 = OUTLINED_FUNCTION_69_8();
  if ((v100)(v43) == v38)
  {
    v44 = OUTLINED_FUNCTION_69_8();
    v45(v44);
    OUTLINED_FUNCTION_73_5(v105);
    v46 = v105[1];
    OUTLINED_FUNCTION_5_12();
    sub_237CF1674();
  }

  else
  {
    v48 = OUTLINED_FUNCTION_69_8();
    v49(v48);
    v46 = v89;
  }

  v47 = v90;
  v101(v90, v98, v23);
  if (v100(v47, v23) == v38)
  {
    (*(v25 + 96))(v47, v23);
    OUTLINED_FUNCTION_73_5(v104);
    v46 = v104[1];
    OUTLINED_FUNCTION_5_12();
    sub_237CF1674();
  }

  else
  {
    (*(v25 + 8))(v47, v23);
  }

  v50 = v91;
  v51 = OUTLINED_FUNCTION_17_51();
  sub_237DD7298(v46, v52, v51);
  type metadata accessor for TensorDescription(0);
  v53 = OUTLINED_FUNCTION_23_0();
  result = OUTLINED_FUNCTION_28_1(v53, v54, v55);
  if (v57)
  {
    __break(1u);
  }

  else
  {
    sub_237CF13C0();
    sub_237CF42E8(v50);
    OUTLINED_FUNCTION_73_5(&v103);
    v58 = OUTLINED_FUNCTION_93_4();
    v100 = sub_237CF196C(v58, 0xEA00000000006D72);
    v93 = v59;
    sub_237CF0C9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
    OUTLINED_FUNCTION_32_33();
    v61 = *(v60 + 72);
    OUTLINED_FUNCTION_17_59();
    v64 = v63 & ~v62;
    v65 = OUTLINED_FUNCTION_107_3();
    v91 = v65;
    *(v65 + 16) = xmmword_237F105E0;
    v66 = (v65 + v64);
    OUTLINED_FUNCTION_23_40();
    *v66 = v67;
    v66[1] = v68;
    sub_237EF8260();
    OUTLINED_FUNCTION_17_51();
    sub_237EF7A20();
    v69 = (v66 + v61);
    *v69 = 1635018082;
    v69[1] = 0xE400000000000000;
    v70 = v82;
    v71 = v101;
    v101(v82, v95, v23);
    sub_237EF7AC0();
    v72 = (v66 + 2 * v61);
    *v72 = 0x616D6D6167;
    v72[1] = 0xE500000000000000;
    v71(v70, v96, v23);
    sub_237EF7AC0();
    v73 = (v66 + 3 * v61);
    *v73 = 1851876717;
    v73[1] = 0xE400000000000000;
    v71(v70, v97, v23);
    sub_237EF7AC0();
    v74 = (v66 + 4 * v61);
    *v74 = 0x65636E6169726176;
    v74[1] = 0xE800000000000000;
    v71(v70, v98, v23);
    sub_237EF7AC0();
    OUTLINED_FUNCTION_53_14((v66 + 5 * v61));
    sub_237EF7A80();
    sub_237EF7B00();
    sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
    OUTLINED_FUNCTION_40_18();
    v75 = sub_237EF78C0();
    OUTLINED_FUNCTION_6_1(v75);
    *(OUTLINED_FUNCTION_8_88() + 16) = xmmword_237F03530;
    v76 = v84;
    v77 = v94;
    v78 = v85;
    (*(v84 + 16))(v83, v94, v85);
    sub_237EF8260();
    OUTLINED_FUNCTION_41_10();
    sub_237EF7880();
    v79 = OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_74_4(v79, 0xEA00000000006D72);
    sub_237CF33F8();
    v80 = OUTLINED_FUNCTION_37_26();
    v81(v80);
    (*(v76 + 8))(v77, v78);
    return OUTLINED_FUNCTION_41_10();
  }

  return result;
}

void sub_237EC68DC()
{
  OUTLINED_FUNCTION_37_0();
  v201 = v3;
  v193 = v4;
  v194 = v5;
  v190 = v6;
  v196 = v7;
  v9 = v8;
  v10 = sub_237EF7CD0();
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v182 = v12;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v183 = v14;
  v184 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v181 = v15;
  OUTLINED_FUNCTION_12_1();
  v186 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v177 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v178 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v176 = v20;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v179 = v22;
  v180 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_3();
  v200 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  v175 = v26;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_16();
  v174 = v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v198 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_35_24();
  v32 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_2();
  v172 = v36;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8_16();
  v171 = v38;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  v192 = v40;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_16();
  v173 = v42;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_16();
  v202.n128_u64[0] = v44;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_61_9();
  MEMORY[0x28223BE20](v46);
  v48 = &v170 - v47;
  MEMORY[0x28223BE20](v49);
  v50 = OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_49_16(v50);
  v189 = v9;
  sub_237CF1674();
  v51 = *(v34 + 16);
  v197 = v34 + 16;
  v199 = v51;
  (v51)(v2, v190, v32);
  v52 = OUTLINED_FUNCTION_26_33();
  v191 = v53;
  v54 = v53(v52);
  LODWORD(v188) = *MEMORY[0x277D252B0];
  v185 = v34;
  v195 = v0;
  if (v54 == v188)
  {
    v55 = OUTLINED_FUNCTION_26_33();
    v56(v55);
    memcpy(v209, v0, sizeof(v209));
    v34 = v185;
    sub_237CF1674();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_26_33();
    v58(v57);
  }

  sub_237EC52C8(v193, v1);
  v59 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v59, v60, v32);
  if (v61)
  {
    sub_237C65484(v1, &qword_27DEB4610, &qword_237F18070);
  }

  else
  {
    v62 = OUTLINED_FUNCTION_42_20();
    v63(v62);
    v64 = OUTLINED_FUNCTION_41_10();
    v199(v64);
    v65 = OUTLINED_FUNCTION_30_43();
    v66 = v191(v65);
    if (v66 == v188)
    {
      v67 = OUTLINED_FUNCTION_30_43();
      v68(v67);
      OUTLINED_FUNCTION_109_0(&v208);
      OUTLINED_FUNCTION_9_9();
      sub_237CF1674();

      (*(v34 + 8))(v48, v32);
    }

    else
    {
      v69 = *(v34 + 8);
      v69(v48, v32);
      v70 = OUTLINED_FUNCTION_30_43();
      (v69)(v70);
    }
  }

  v71 = v198;
  sub_237EC52C8(v194, v198);
  v72 = OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_1(v72, v73, v32);
  v74 = v202.n128_u64[0];
  v187 = v32;
  if (v61)
  {
    sub_237C65484(v71, &qword_27DEB4610, &qword_237F18070);
  }

  else
  {
    v75 = OUTLINED_FUNCTION_18_47();
    v76(v75);
    (v199)(v173, v74, v32);
    v77 = OUTLINED_FUNCTION_99_3();
    v78 = v191(v77);
    if (v78 == v188)
    {
      v79 = OUTLINED_FUNCTION_99_3();
      v80(v79);
      OUTLINED_FUNCTION_109_0(&v207);
      OUTLINED_FUNCTION_5_12();
      sub_237CF1674();

      v81 = OUTLINED_FUNCTION_26_33();
      v82(v81);
    }

    else
    {
      v83 = *(v34 + 8);
      v84 = OUTLINED_FUNCTION_26_33();
      v83(v84);
      v85 = OUTLINED_FUNCTION_99_3();
      v83(v85);
    }
  }

  OUTLINED_FUNCTION_109_0(&v206);
  sub_237CF12A0(v189, v200);
  OUTLINED_FUNCTION_109_0(&v205);
  v86 = sub_237CF196C(1836348268, 0xE400000000000000);
  v88 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD498, &qword_237F03190);
  v89 = swift_allocObject();
  v188 = xmmword_237F08A50;
  *(v89 + 16) = xmmword_237F08A50;
  *(v89 + 32) = 0;
  *(v89 + 40) = 1;
  *(v89 + 48) = 1;
  *(v89 + 56) = 0;
  v90 = v201;
  *(v89 + 64) = v201;
  *(v89 + 72) = 0;
  OUTLINED_FUNCTION_30_43();
  OUTLINED_FUNCTION_110_2();

  v203 = v86;
  v204 = v88;
  sub_237EF8260();
  MEMORY[0x2383E0710](0x74735F6C6C65635FLL, 0xEB00000000657461);
  v91 = OUTLINED_FUNCTION_105_3();
  v202 = xmmword_237F04760;
  OUTLINED_FUNCTION_41_16(v91, xmmword_237F04760);
  OUTLINED_FUNCTION_110_2();

  v198 = v86;
  v203 = v86;
  v204 = v88;
  v191 = v88;
  sub_237EF8260();
  OUTLINED_FUNCTION_43_23();
  v92 = OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_41_16(v92, v202);
  OUTLINED_FUNCTION_110_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_32_33();
  v94 = *(v93 + 72);
  OUTLINED_FUNCTION_17_59();
  v97 = v96 & ~v95;
  v98 = OUTLINED_FUNCTION_107_3();
  v173 = v98;
  *(v98 + 16) = xmmword_237F15930;
  v99 = (v98 + v97);
  OUTLINED_FUNCTION_23_40();
  *v99 = v100;
  v99[1] = v101;
  sub_237EF8260();
  sub_237EF7A20();
  v102 = (v99 + v94);
  OUTLINED_FUNCTION_60_11();
  *v102 = v103 & 0xFFFFFFFFFFFFLL | 0x685F000000000000;
  v102[1] = 0xE900000000000068;
  (v199)(v192, v190, v187);
  sub_237EF7AC0();
  v104 = (v99 + 2 * v94);
  *v104 = 0x5F6C616974696E69;
  v104[1] = 0xE900000000000063;
  sub_237CDC1E8(v90, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v105 = swift_allocObject();
  OUTLINED_FUNCTION_72_6(v105);
  *(v106 + 32) = 1;
  *(v106 + 40) = v90;
  sub_237EF7A40();
  v107 = (v99 + 3 * v94);
  *v107 = 0x5F6C616974696E69;
  v107[1] = 0xE900000000000068;
  sub_237CDC1E8(v90, 0.0);
  v108 = swift_allocObject();
  OUTLINED_FUNCTION_72_6(v108);
  *(v109 + 32) = 1;
  *(v109 + 40) = v90;
  sub_237EF7A40();
  OUTLINED_FUNCTION_53_14((v99 + 4 * v94));
  sub_237EF7A60();
  OUTLINED_FUNCTION_53_14((v99 + 5 * v94));
  sub_237EF7A60();
  v110 = (v99 + 6 * v94);
  *v110 = 0xD000000000000014;
  v110[1] = 0x8000000237F01BD0;
  sub_237EF7A60();
  v111 = (v99 + 7 * v94);
  *v111 = 0x6F69746365726964;
  v111[1] = 0xE90000000000006ELL;
  sub_237EF7A60();
  OUTLINED_FUNCTION_53_14(&v99[v94]);
  sub_237EF7A70();
  v112 = v186;
  v113 = sub_237EF8230();
  v114 = v174;
  sub_237EC52C8(v193, v174);
  v115 = OUTLINED_FUNCTION_23_0();
  v116 = v187;
  OUTLINED_FUNCTION_28_1(v115, v117, v187);
  if (v61)
  {
    sub_237C65484(v114, &qword_27DEB4610, &qword_237F18070);
  }

  else
  {
    v118 = v185;
    v119 = v171;
    v120 = OUTLINED_FUNCTION_26_4();
    v121(v120);
    (v199)(v192, v119, v116);
    v122 = v176;
    sub_237EF7AC0();
    v123 = v178;
    (*(v177 + 32))(v178, v122, v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v203 = v113;
    sub_237C913E0(v123, 0x695F746867696577, 0xE900000000000068, isUniquelyReferenced_nonNull_native);
    v113 = v203;
    (*(v118 + 8))(v119, v116);
  }

  v125 = v175;
  v126 = v199;
  sub_237EC52C8(v194, v175);
  v127 = OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_1(v127, v128, v116);
  if (v61)
  {
    sub_237C65484(v125, &qword_27DEB4610, &qword_237F18070);
    v194 = v113;
  }

  else
  {
    v129 = OUTLINED_FUNCTION_26_4();
    v130(v129);
    v131 = OUTLINED_FUNCTION_65_7();
    v126(v131);
    v132 = v176;
    sub_237EF7AC0();
    (*(v177 + 32))(v178, v132, v186);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v203 = v113;
    OUTLINED_FUNCTION_47_17(v133, v134, v135, v133);
    v194 = v203;
    v136 = OUTLINED_FUNCTION_57_10();
    v137(v136);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_25_6();
  v138 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v138);
  v192 = *(v139 + 72);
  OUTLINED_FUNCTION_17_59();
  v142 = v141 & ~v140;
  v143 = OUTLINED_FUNCTION_55_11();
  v193 = v143;
  *(v143 + 16) = v188;
  v190 = v143 + v142;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD370, &qword_237F030D8);
  v144 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v146 = v145;
  v148 = *(v147 + 72);
  v197 = *(v145 + 80);
  v149 = (v197 + 32) & ~v197;
  v151 = OUTLINED_FUNCTION_75_5(v150, v149 + 3 * v148);
  *(v151 + 16) = v188;
  v152 = v151 + v149;
  *(v151 + v149) = 0;
  v153 = *(v146 + 104);
  (v153)(v151 + v149, *MEMORY[0x277D25270], v144);
  *(v152 + v148) = 1;
  LODWORD(v196) = *MEMORY[0x277D25278];
  (v153)(v152 + v148, v196, v144);
  *(v152 + 2 * v148) = v201;
  v153();
  v154 = v191;
  sub_237EF8260();
  sub_237EF7CC0();

  v155 = v198;
  sub_237EF7880();
  v203 = v155;
  v204 = v154;
  sub_237EF8260();
  MEMORY[0x2383E0710](0x74735F6C6C65635FLL, 0xEB00000000657461);
  v186 = v204;
  v187 = v203;
  v189 = v149;
  *&v188 = v149 + 2 * v148;
  v156 = swift_allocObject();
  v157 = OUTLINED_FUNCTION_72_6(v156);
  *(v158 + v149) = 1;
  v159 = v158 + v149;
  v160 = v196;
  (v153)(v159, v196, v144, v157);
  *(v159 + v148) = v201;
  (v153)(v159 + v148, v160, v144);
  sub_237EF7CC0();

  v161 = v192;
  v162 = v190;
  sub_237EF7880();
  v192 = v162 + 2 * v161;
  v203 = v198;
  v204 = v154;
  sub_237EF8260();
  OUTLINED_FUNCTION_43_23();
  v190 = v203;
  v163 = swift_allocObject();
  v164 = OUTLINED_FUNCTION_72_6(v163);
  v166 = (v165 + v189);
  *v166 = 1;
  v167 = v196;
  (v153)(v166, v196, v144, v164);
  *(v166 + v148) = v201;
  (v153)(v166 + v148, v167, v144);
  v168 = v200;
  OUTLINED_FUNCTION_6_68();
  sub_237EF7CC0();

  sub_237EF7880();
  v169 = v181;
  sub_237EF7BF0();
  sub_237CF33F8();
  (*(v183 + 8))(v169, v184);
  (*(v179 + 8))(v168, v180);
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC79A4()
{
  OUTLINED_FUNCTION_37_0();
  v237 = v2;
  v238 = v0;
  v4 = v3;
  v223 = v5;
  v224 = v6;
  v7 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v225 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v222 = v10;
  OUTLINED_FUNCTION_12_1();
  v11 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v254 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v208 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  v211 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_61_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v250 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v208 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_1();
  v252 = v25;
  OUTLINED_FUNCTION_12_1();
  v226 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v231 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_2();
  v221 = v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v230 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  v33 = &v208 - v32;
  sub_237EF7CB0();
  OUTLINED_FUNCTION_1();
  v235 = v35;
  v236 = v34;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_2();
  v219 = v36;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22_1();
  v228 = v38;
  OUTLINED_FUNCTION_12_1();
  sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v233 = v40;
  v234 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  v217 = v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_1();
  v227 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  v45 = OUTLINED_FUNCTION_18(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_2();
  v229 = v46;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v47);
  v49 = &v208 - v48;
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v239 = v51;
  v240 = v50;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_2();
  v232 = v52;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8_16();
  v218 = v54;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_22_1();
  v242 = v56;
  v220 = v4;
  v57 = sub_237EF7AE0();
  sub_237CA3424(v57);

  v58 = sub_237EF7AB0();
  OUTLINED_FUNCTION_28_1(v49, 1, v58);
  if (v59)
  {
    __break(1u);
    goto LABEL_47;
  }

  v60 = *(v58 - 8);
  v61 = *(v60 + 88);
  v214 = v60 + 88;
  v215 = v61;
  v62 = (v61)(v49, v58);
  v212 = *MEMORY[0x277D252B0];
  v253 = v11;
  v249 = v1;
  v216 = v7;
  v251 = v15;
  if (v62 == v212)
  {
    v213 = *(v60 + 96);
    v213(v49, v58);
    v63 = v238;
    OUTLINED_FUNCTION_59_11(v263);
    v64 = v58;
    OUTLINED_FUNCTION_5_12();
    sub_237CF1674();
    OUTLINED_FUNCTION_59_11(&v262);
    v65 = OUTLINED_FUNCTION_5_12();
    sub_237CF11B8(v65, v66);
    v255 = v67;
    OUTLINED_FUNCTION_59_11(&v261);
    v68 = OUTLINED_FUNCTION_5_12();
    sub_237CF12A0(v68, v69);

    v71 = v230;
    v70 = v231;
    v72 = v229;
  }

  else
  {
    v210 = v60;
    v248 = v23;
    if (v62 != *MEMORY[0x277D252B8])
    {
LABEL_48:
      OUTLINED_FUNCTION_17_15();
      v194 = 105;
      goto LABEL_53;
    }

    v73 = *(v210 + 96);
    v209 = v58;
    v73(v49, v58);
    (*(v233 + 32))(v227, v49, v234);
    sub_237EF79E0();
    if ((*(v231 + 88))(v33, v226) != *MEMORY[0x277D25310])
    {
      v195 = OUTLINED_FUNCTION_26_4();
      v196(v195);
      OUTLINED_FUNCTION_9_68();
      v197 = 100;
      goto LABEL_55;
    }

    v213 = v73;
    v74 = OUTLINED_FUNCTION_26_4();
    v75(v74);
    v76 = swift_projectBox();
    (*(v235 + 16))(v228, v76, v236);

    v77 = sub_237EF7CA0();
    v78 = *(v77 + 16);
    if (v78)
    {
      v263[0] = MEMORY[0x277D84F90];
      v79 = OUTLINED_FUNCTION_34_20();
      sub_237C632DC(v79);
      v80 = v254 + 16;
      v255 = v263[0];
      OUTLINED_FUNCTION_28();
      v208 = v77;
      v82 = v77 + v81;
      v246 = *(v80 + 56);
      v247 = v83;
      v245 = v80 + 72;
      v84 = *MEMORY[0x277D25278];
      v241 = v80 + 80;
      v244 = v80 - 8;
      v243 = (v80 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      do
      {
        v85 = v247;
        (v247)(v252, v82, v11);
        v86 = v248;
        v87 = OUTLINED_FUNCTION_18_47();
        v85(v87);
        v88 = OUTLINED_FUNCTION_26_33();
        v90 = v89(v88);
        if (v90 == v84)
        {
          v94 = OUTLINED_FUNCTION_26_33();
          v95(v94);
          v93 = *v86;
          v91 = *v244;
        }

        else
        {
          v91 = *v244;
          v92 = OUTLINED_FUNCTION_26_33();
          v91(v92);
          v93 = 0;
        }

        (v91)(v252, v11);
        v96 = v255;
        v263[0] = v255;
        v98 = *(v255 + 16);
        v97 = *(v255 + 24);
        if (v98 >= v97 >> 1)
        {
          OUTLINED_FUNCTION_17_0(v97);
          OUTLINED_FUNCTION_95_2();
          sub_237C632DC(v100);
          v96 = v263[0];
        }

        *(v96 + 16) = v98 + 1;
        v255 = v96;
        v99 = v96 + 16 * v98;
        *(v99 + 32) = v93;
        *(v99 + 40) = v90 != v84;
        v82 += v246;
        --v78;
        v11 = v253;
      }

      while (v78);

      v63 = v238;
      v1 = v249;
    }

    else
    {

      v255 = MEMORY[0x277D84F90];
      v63 = v238;
    }

    v101 = v228;
    sub_237EF7C90();
    (*(v235 + 8))(v101, v236);
    (*(v233 + 8))(v227, v234);
    v71 = v230;
    v70 = v231;
    v72 = v229;
    v64 = v209;
  }

  v102 = sub_237EF7AE0();
  sub_237CA3424(v102);

  OUTLINED_FUNCTION_28_1(v72, 1, v64);
  if (v59)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v103 = OUTLINED_FUNCTION_81_1();
  v104 = v215(v103);
  if (v104 != v212)
  {
    if (v104 == *MEMORY[0x277D252B8])
    {
      v114 = OUTLINED_FUNCTION_81_1();
      (v213)(v114);
      (*(v233 + 32))(v217, v72, v234);
      sub_237EF79E0();
      if ((*(v70 + 88))(v71, v226) == *MEMORY[0x277D25310])
      {
        v115 = OUTLINED_FUNCTION_68_7();
        v116(v115);
        v117 = swift_projectBox();
        (*(v235 + 16))(v219, v117, v236);

        v118 = sub_237EF7CA0();
        v119 = *(v118 + 16);
        if (v119)
        {
          v260[0] = MEMORY[0x277D84F90];
          v120 = OUTLINED_FUNCTION_34_20();
          sub_237C632DC(v120);
          v121 = v254 + 16;
          v122 = v260[0];
          OUTLINED_FUNCTION_28();
          v243 = v118;
          v124 = v118 + v123;
          v247 = *(v121 + 56);
          v248 = v125;
          v246 = v121 + 72;
          v126 = *MEMORY[0x277D25278];
          v252 = (v121 - 8);
          v244 = v121 + 80;
          v245 = (v121 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          do
          {
            v127 = OUTLINED_FUNCTION_5_12();
            v128 = v248;
            (v248)(v127);
            v129 = OUTLINED_FUNCTION_67_4();
            (v128)(v129);
            v130 = OUTLINED_FUNCTION_30_43();
            v132 = v131(v130);
            if (v132 == v126)
            {
              v137 = OUTLINED_FUNCTION_30_43();
              v138(v137);
              v135 = v11;
              v136 = *v1;
              v133 = *v252;
            }

            else
            {
              v133 = *v252;
              v134 = OUTLINED_FUNCTION_30_43();
              v133(v134);
              v135 = v11;
              v136 = 0;
            }

            (v133)(v250, v135);
            v260[0] = v122;
            v140 = *(v122 + 16);
            v139 = *(v122 + 24);
            if (v140 >= v139 >> 1)
            {
              v142 = OUTLINED_FUNCTION_17_0(v139);
              sub_237C632DC(v142);
              v122 = v260[0];
            }

            *(v122 + 16) = v140 + 1;
            v141 = v122 + 16 * v140;
            *(v141 + 32) = v136;
            *(v141 + 40) = v132 != v126;
            v124 += v247;
            --v119;
            v11 = v253;
            v1 = v249;
          }

          while (v119);

          v63 = v238;
        }

        else
        {

          v122 = MEMORY[0x277D84F90];
        }

        v143 = sub_237C61164(v255, v122);

        v144 = v219;
        if (v143)
        {
          v145 = v218;
          sub_237EF7C90();
          sub_237EC8CEC();
          v146 = v240;
          OUTLINED_FUNCTION_20_10();
          sub_237EF8870();
          OUTLINED_FUNCTION_20_10();
          sub_237EF8870();
          v147 = *(v239 + 8);
          v147(v145, v146);
          if (v260[0] == v259[0])
          {
            v247 = v147;
            (*(v235 + 8))(v144, v236);
            (*(v233 + 8))(v217, v234);
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_9_68();
          v199 = 125;
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_17_15();
        v198 = 122;
        goto LABEL_57;
      }

      v206 = OUTLINED_FUNCTION_68_7();
      v207(v206);
      OUTLINED_FUNCTION_9_68();
      v197 = 119;
LABEL_55:
      v208 = v197;
LABEL_60:
      OUTLINED_FUNCTION_19_51();
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_17_15();
    v194 = 128;
LABEL_53:
    v208 = v194;
    OUTLINED_FUNCTION_85_4();
LABEL_61:
    sub_237EF9740(v200, v201, v202, v203, v204, v205, 45, 2, v208);
    __break(1u);
    return;
  }

  v105 = OUTLINED_FUNCTION_81_1();
  (v213)(v105);
  OUTLINED_FUNCTION_59_11(v260);
  OUTLINED_FUNCTION_20_10();
  sub_237CF1674();
  OUTLINED_FUNCTION_59_11(v259);
  v106 = OUTLINED_FUNCTION_20_10();
  sub_237CF11B8(v106, v107);
  v109 = sub_237C61164(v255, v108);

  if ((v109 & 1) == 0)
  {
    OUTLINED_FUNCTION_17_15();
    v198 = 112;
LABEL_57:
    v208 = v198;
    OUTLINED_FUNCTION_19_51();
    v203 = 0xD000000000000013;
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_59_11(&v258);
  v110 = OUTLINED_FUNCTION_20_10();
  sub_237CF12A0(v110, v111);
  sub_237EC8CEC();
  OUTLINED_FUNCTION_12_11();
  sub_237EF8870();
  OUTLINED_FUNCTION_12_11();
  sub_237EF8870();
  v112 = *(v239 + 8);
  v113 = OUTLINED_FUNCTION_18_14();
  v112(v113);
  if (v257[0] != v256)
  {
    OUTLINED_FUNCTION_9_68();
    v199 = 115;
LABEL_59:
    v208 = v199;
    goto LABEL_60;
  }

  v247 = v112;

LABEL_37:
  OUTLINED_FUNCTION_59_11(v257);
  v148 = sub_237CF196C(0x5F746E656D656C65, 0xEC00000065736977);
  v245 = v149;
  v246 = v148;
  v150 = v63;
  sub_237CF1A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_32_33();
  v152 = *(v151 + 72);
  OUTLINED_FUNCTION_17_59();
  v155 = v154 & ~v153;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_237F04760;
  v157 = (v156 + v155);
  v158 = *(v63 + 56);
  *v157 = 120;
  *(v157 + 1) = 0xE100000000000000;
  v159 = sub_237EF7B00();
  OUTLINED_FUNCTION_4();
  v161 = *(v160 + 16);
  v161(&v157[v158], v220, v159);
  v162 = &v157[v152];
  v163 = *(v150 + 56);
  *v162 = 121;
  v162[1] = 0xE100000000000000;
  v161(&v157[v152 + v163], v237, v159);
  v164 = sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_25_6();
  v165 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v165);
  OUTLINED_FUNCTION_18_49();
  v168 = v167 & ~v166;
  v244 = OUTLINED_FUNCTION_75_5(v170, v168 + v169);
  *(v244 + 16) = xmmword_237F03530;
  (*(v239 + 16))(v232, v242, v240);
  v171 = *(v255 + 16);
  if (v171)
  {
    v241 = v168;
    v243 = v164;
    v256 = MEMORY[0x277D84F90];
    v172 = v255;
    sub_237C63364(0, v171, 0);
    v173 = v256;
    v174 = v253;
    v250 = *(v254 + 104);
    LODWORD(v249) = *MEMORY[0x277D25278];
    LODWORD(v248) = *MEMORY[0x277D25270];
    v252 = (v254 + 104);
    v175 = (v254 + 32);
    v176 = (v172 + 40);
    v177 = v211;
    do
    {
      v178 = v251;
      if (*v176)
      {
        *v251 = 0;
        v179 = v248;
      }

      else
      {
        *v251 = *(v176 - 1);
        v179 = v249;
      }

      v250(v178, v179, v174);
      v180 = *v175;
      (*v175)(v177, v178, v174);
      v256 = v173;
      v182 = *(v173 + 16);
      v181 = *(v173 + 24);
      if (v182 >= v181 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v181);
        OUTLINED_FUNCTION_95_2();
        sub_237C63364(v185, v186, v187);
        v173 = v256;
      }

      *(v173 + 16) = v182 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_92_4();
      v180(v183 + v184 * v182, v177, v174);
      v176 += 16;
      --v171;
    }

    while (v171);
  }

  v188 = v232;
  OUTLINED_FUNCTION_18_47();
  sub_237EF7CC0();

  v189 = v188;
  v190 = v240;
  v191 = v247;
  (v247)(v189, v240);
  sub_237EF8260();
  OUTLINED_FUNCTION_39_9();
  sub_237EF7880();
  sub_237EF8260();
  sub_237EF7BF0();
  sub_237CF33F8();
  v192 = OUTLINED_FUNCTION_37_26();
  v193(v192, v216);
  v191(v242, v190);
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_38_0();
}

BOOL sub_237EC8BE0()
{
  sub_237EF7B10();
  sub_237EC8CEC();
  sub_237EF8870();
  sub_237EF8870();
  return v2 == v1;
}

unint64_t sub_237EC8C68()
{
  result = qword_27DEB6A18;
  if (!qword_27DEB6A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB6A10, &qword_237F1E9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB6A18);
  }

  return result;
}

unint64_t sub_237EC8CEC()
{
  result = qword_27DEB6A28[0];
  if (!qword_27DEB6A28[0])
  {
    sub_237EF7B10();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB6A28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_88()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_22_44()
{

  return memcpy((v1 - 200), v0, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_41_16(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 1;
  a1[2].n128_u8[8] = 0;
  a1[3].n128_u64[0] = v3;
  a1[3].n128_u8[8] = 0;
  return v2;
}

void OUTLINED_FUNCTION_43_23()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_47_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237C913E0(v4, 1935763810, 0xE400000000000000, a4);
}

void *OUTLINED_FUNCTION_48_16(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *OUTLINED_FUNCTION_49_16(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *OUTLINED_FUNCTION_50_17@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 - 256);
  *result = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_11()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_59_11(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *OUTLINED_FUNCTION_63_8(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

__n128 OUTLINED_FUNCTION_72_6(__n128 *a1)
{
  result = v1[17];
  a1[1] = result;
  return result;
}

void *OUTLINED_FUNCTION_73_5(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_74_4(uint64_t a1, uint64_t a2)
{

  return sub_237EF7BF0();
}

uint64_t OUTLINED_FUNCTION_75_5(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_76_7()
{

  sub_237C63364(0, v0, 0);
}

void *OUTLINED_FUNCTION_77_4(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_105_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_107_3()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_108_2(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void *OUTLINED_FUNCTION_109_0(void *a1)
{

  return memcpy(a1, v1, 0x70uLL);
}

void OUTLINED_FUNCTION_110_2()
{

  sub_237CF1A18();
}

void *sub_237EC9280(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_237E982B0(a2 - result, 0);
      if (sub_237ECA8D8(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_237EC9330(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_237C9FE9C();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

void *sub_237EC93D0(void *result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        v6 = sub_237E982B0(v2 + 1, 0);
        if (sub_237ECAABC(&v7, (v6 + 4), v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x277D84F90];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237EC9460@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v93 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v92 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v6);
  v90 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v89 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v9);
  v96 = sub_237EF7350();
  OUTLINED_FUNCTION_1();
  v95 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v12);
  v98 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v97 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v99 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_22_2(&v87 - v17);
  v117 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v103 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v20);
  sub_237EF73D0();
  OUTLINED_FUNCTION_1();
  v113 = v22;
  v114 = v21;
  MEMORY[0x28223BE20](v21);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v111 = v25;
  MEMORY[0x28223BE20](v26);
  v100 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = *v2;
  v29 = v2[1];
  v110 = v2[2];
  v116 = &v87 - v31;
  sub_237EF7720();
  __dst[0] = v30;
  v32 = a1[2];
  v108 = a1[3];

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8, &qword_237F0F350);
  v33 = a1;
  v34 = a1[4];
  v106 = a1[5];
  v36 = a1[6];
  v35 = a1[7];
  v37 = a1[8];
  v109 = v33[9];
  v38 = v109;
  v39 = sub_237ECA4A8();
  v86 = v38;
  v85 = v35;
  v40 = v108;
  v41 = v110;
  *&v104 = v32;
  sub_237ECA104(__dst, v29, v110, v32, v108, v107, v34, v106, v36, v85, v37, v86, v39);

  sub_237EF73C0();
  sub_237EF73B0();
  v115 = v24;
  sub_237EF7390();
  v42 = *(v30 + 16);
  v107 = v29;
  v106 = v36;
  result = sub_237E5E170(v29, v41, v40, v36, v109);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v44 = result;
  v45 = sub_237EF7EF0();
  v46 = v105;
  sub_237E5E9F0(v45, v105);
  v47 = v117;
  if (__swift_getEnumTagSinglePayload(v46, 1, v117) == 1)
  {
    sub_237C863A0(v46, &qword_27DEB0E78, &qword_237F0CCF8);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v49 = v48;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    v118 = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v50 = __dst[1];
    *v49 = __dst[0];
    v49[1] = v50;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v113 + 8))(v115, v114);
    return (*(v111 + 8))(v116, v112);
  }

  (*(v103 + 32))(v102, v46, v47);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  sub_237EF70E0();
  v105 = v51;
  v52 = swift_allocObject();
  v104 = xmmword_237F03530;
  *(v52 + 16) = xmmword_237F03530;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v53 = swift_allocObject();
  *(v53 + 16) = v104;
  *(v53 + 32) = v42 / v44;
  sub_237EF6CF0();

  OUTLINED_FUNCTION_4_96(0x7365727574616566, 0xE800000000000000);
  sub_237EF76B0();
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {
      v59 = sub_237EF9660();
LABEL_10:
      *v94 = v59;
      v60 = OUTLINED_FUNCTION_5_95();
      v61(v60);
      v56 = v115;
      sub_237EF7360();
      *(swift_allocObject() + 16) = xmmword_237F04760;
      OUTLINED_FUNCTION_6_81();
      sub_237EF6D00();
      v62 = OUTLINED_FUNCTION_3_104();
      v63(v62);
      OUTLINED_FUNCTION_4_96(0x746567726174, 0xE600000000000000);
      OUTLINED_FUNCTION_6_81();
      sub_237EF6E40();
      goto LABEL_11;
    }

    result = sub_237E5E170(v107, v110, v40, v106, v109);
    if ((result & 0x8000000000000000) == 0)
    {
      v59 = sub_237EC9280(0, result);
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  *v94 = sub_237EF9660();
  v54 = OUTLINED_FUNCTION_5_95();
  v55(v54);
  v56 = v115;
  sub_237EF7360();
  *(swift_allocObject() + 16) = xmmword_237F04760;
  OUTLINED_FUNCTION_6_81();
  sub_237EF6DB0();
  v57 = OUTLINED_FUNCTION_3_104();
  v58(v57);
  OUTLINED_FUNCTION_4_96(0x746567726174, 0xE600000000000000);
  OUTLINED_FUNCTION_6_81();
  sub_237EF6E50();
LABEL_11:
  OUTLINED_FUNCTION_4_96(0xD000000000000011, 0x8000000237EFFFD0);
  v64 = v116;
  sub_237EF7700();
  sub_237EF7620();
  sub_237EF75E0();
  sub_237EF76A0();
  sub_237EF76B0();
  sub_237EF76F0();
  sub_237EF7700();
  sub_237EF7600();
  sub_237EF7640();
  v65 = v88;
  (*(v113 + 16))(v88, v56, v114);
  (*(v89 + 104))(v65, *MEMORY[0x277D25338], v90);
  sub_237EF7660();
  v66 = *(v111 + 16);
  v67 = v100;
  v68 = v112;
  v66(v100, v64, v112);
  v69 = v101;
  sub_237EF7810();
  v70 = type metadata accessor for CoreMLPackage(0);
  v71 = v91;
  v72 = &v91[*(v70 + 24)];
  *(v72 + 10) = 0;
  *(v72 + 3) = 0u;
  *(v72 + 4) = 0u;
  *(v72 + 1) = 0u;
  *(v72 + 2) = 0u;
  *v72 = 0u;
  v66(v71, v67, v68);
  memcpy(__dst, v72, sizeof(__dst));
  sub_237C863A0(__dst, &unk_27DEAD7B0, &unk_237F03CA0);
  *v72 = 0u;
  *(v72 + 1) = 0u;
  *(v72 + 2) = 0u;
  *(v72 + 3) = 0u;
  *(v72 + 4) = 0u;
  *(v72 + 10) = 0;
  v73 = v92;
  v74 = v69;
  v75 = v93;
  (*(v92 + 16))(&v71[*(v70 + 20)], v74, v93);
  v76 = sub_237E34060();
  v78 = v77;
  v79 = sub_237EF7780();
  v81 = v80;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v81;
  sub_237C91098(v76, v78, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v81 = v120;
  v79(&v118, 0);
  (*(v73 + 8))(v101, v75);
  v83 = *(v111 + 8);
  v84 = v112;
  v83(v100, v112);
  (*(v103 + 8))(v102, v117);
  (*(v113 + 8))(v115, v114);
  return (v83)(v64, v84);
}

void sub_237ECA104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = sub_237EF8DA0();
  v17 = sub_237E5E170(a2, a3, a5, a9, a12);
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v17 == 1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v16 == 0x8000000000000000 && v17 == 0)
  {
    goto LABEL_46;
  }

  v20 = sub_237E5E170(a2, a3, a5, a9, a12);
  if (__OFSUB__(v20, 1))
  {
    goto LABEL_44;
  }

  if (v20 - 1 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

  if (v20 != 1)
  {
    v21 = 0;
    v22 = v16 / v18;
    v46 = v16 / v18 - 1;
    v23 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    v47 = v16 / v18;
    v48 = v20 - 1;
    while (!__OFADD__(v21, 1))
    {
      sub_237EF8D90();
      v52[4] = v53;
      if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
      {
        goto LABEL_37;
      }

      sub_237EF8DB0();
      v24 = v52[0];
      v25 = v52[0] + v22;
      if (__OFADD__(v52[0], v22))
      {
        goto LABEL_38;
      }

      v49 = v21 + 1;
      v50 = v23;
      v26 = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        goto LABEL_39;
      }

      if (v26 < v52[0])
      {
        goto LABEL_40;
      }

      v27 = MEMORY[0x277D84F90];
      if (v52[0] != v26)
      {
        if (v52[0] >= v26)
        {
          goto LABEL_41;
        }

        v35 = v46;
        do
        {
          v53 = v24;
          v36 = sub_237EF8F00();
          v38 = *v37;
          v36(v52, 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237D0BEC0();
            v27 = v40;
          }

          v39 = *(v27 + 16);
          if (v39 >= *(v27 + 24) >> 1)
          {
            sub_237D0BEC0();
            v27 = v41;
          }

          *(v27 + 16) = v39 + 1;
          *(v27 + 8 * v39 + 32) = v38;
          ++v24;
          --v35;
        }

        while (v35);
      }

      v28 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0BE9C(0, v51[2] + 1, 1, v51);
        v28 = v42;
      }

      v30 = v28[2];
      v29 = v28[3];
      if (v30 >= v29 >> 1)
      {
        sub_237D0BE9C(v29 > 1, v30 + 1, 1, v28);
        v28 = v43;
      }

      v28[2] = v30 + 1;
      v28[v30 + 4] = v27;
      v53 = v26;
      v31 = sub_237EF8F00();
      v33 = *v32;
      v31(v52, 0);
      v23 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0BEC0();
        v23 = v44;
      }

      v22 = v47;
      v34 = *(v23 + 16);
      v51 = v28;
      if (v34 >= *(v23 + 24) >> 1)
      {
        sub_237D0BEC0();
        v23 = v45;
      }

      *(v23 + 16) = v34 + 1;
      *(v23 + 8 * v34 + 32) = v33;
      v21 = v49;
      if (v49 == v48)
      {
        return;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }
}

unint64_t sub_237ECA4A8()
{
  result = qword_280C8CCD8;
  if (!qword_280C8CCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB02F8, &qword_237F0F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8CCD8);
  }

  return result;
}

void sub_237ECA50C(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if (!a2 || !a3)
  {
LABEL_22:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a6;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v11 = 0;
    while (2)
    {
      if (v11 >= a3)
      {
LABEL_26:
        __break(1u);
      }

      else
      {
        v12 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
          if (a6)
          {
            *result = a4;
            *(result + 8) = a5;
            *(result + 16) = 1;
            return;
          }

          v13 = *(a5 + 16);
          sub_237EF8260();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = a5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_237E641B8(a5, v14, v15, v16);
          }

          while (1)
          {
            a6 = v13 < 1;
            if (v13 < 1)
            {
              break;
            }

            if (v13 > *(v18 + 16))
            {
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            if (v13 > *(a4 + 16))
            {
              goto LABEL_24;
            }

            v19 = *(a4 + 24 + 8 * v13);
            v20 = v19 - 1;
            if (__OFSUB__(v19, 1))
            {
              goto LABEL_25;
            }

            v21 = v18 + 8 * v13;
            v22 = *(v21 + 24);
            if (v22 < v20)
            {
              *(v21 + 24) = v22 + 1;
              break;
            }

            *(v21 + 24) = 0;
            --v13;
          }

          *v10 = a5;
          if (v12 != a3)
          {
            ++v10;
            v11 = v12;
            a5 = v18;
            continue;
          }

          a5 = v18;
          goto LABEL_22;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_237ECA65C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 0;
    v9 = *(a4 + 16);
    v10 = a3 - 1;
    while (1)
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_11;
      }

      if (v8 >= *(a4 + 16))
      {
        break;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD440, &qword_237F0B0A0) - 8);
      v12 = *(v11 + 72);
      result = sub_237D33B50(a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * v8, v7);
      if (v10 == v8)
      {
        goto LABEL_11;
      }

      v7 += v12;
      ++v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_237ECA77C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        sub_237EF8260();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = sub_237EF8260();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_237ECA8D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_237ECA960(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v15 << 10) | (16 * v16)));
      if (v14 == v10)
      {
        sub_237EF8260();
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = sub_237EF8260();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237ECAABC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_96(uint64_t a1, uint64_t a2)
{

  return sub_237EF7090();
}

void MLModelRegressorAdaptor.init(contentsOf:configuration:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_237C75918(0, &qword_27DEAF200, 0x277CBFF20);
  (*(v9 + 16))(v13, a1, v7);
  v14 = a2;
  v15 = sub_237CCB8EC(v13, v14);
  if (v3)
  {
    (*(v9 + 8))(a1, v7);
  }

  else
  {
    MLModelRegressorAdaptor.init(model:)(v15, &v17);
    (*(v9 + 8))(a1, v7);

    v16 = v18;
    *a3 = v17;
    *(a3 + 16) = v16;
  }
}

void MLModelRegressorAdaptor.init(model:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5 = [v4 modelDescription];
  v6 = [v5 inputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298, 0x277CBFEE0);
  v7 = sub_237EF8210();

  if (*(v7 + 16) != 1)
  {

    goto LABEL_12;
  }

  sub_237CA35B4(v7);
  v9 = v8;
  v11 = v10;

  if (!v9)
  {
LABEL_12:
    v19 = [v4 modelDescription];

    v20 = [v19 inputDescriptionsByName];
    v21 = sub_237EF8210();

    v22 = *(v21 + 16);

    v23 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v23);
    *v24 = 1;
    *(v24 + 8) = v22;
    *(v24 + 16) = 3;
    swift_willThrow();
    goto LABEL_13;
  }

  v12 = [v11 type];
  if (v12 != 5 && v12 != 2)
  {

    v28 = [v11 type];
    v29 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v29);
    *v30 = 5;
    *(v30 + 8) = v28;
    *(v30 + 16) = 0;
    swift_willThrow();

    return;
  }

  v14 = v11;
  v15 = [v4 modelDescription];
  v16 = [v15 outputDescriptionsByName];

  v17 = sub_237EF8210();
  if (*(v17 + 16) == 1)
  {

    v18 = sub_237E1B75C();

    if (!v2)
    {
      *a2 = v4;
      a2[1] = v14;
      a2[2] = v18;
      return;
    }
  }

  else
  {

    v25 = *(v17 + 16);

    v26 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v26);
    *v27 = 1;
    *(v27 + 8) = v25;
    *(v27 + 16) = 4;
    swift_willThrow();
  }

LABEL_13:
}

uint64_t MLModelRegressorAdaptor.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a1;
  *(v5 + 104) = a4;
  v6 = sub_237EF7E90();
  *(v5 + 112) = v6;
  *(v5 + 120) = *(v6 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = *v4;
  *(v5 + 152) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_237ECB108, 0, 0);
}

uint64_t sub_237ECB108()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150, &unk_237F07D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v7 = [v1 name];
  v8 = sub_237EF8590();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_237C75918(0, &qword_27DEAF160, 0x277CBFF48);
  (*(v3 + 16))(v2, v5, v4);
  swift_getWitnessTable();
  v11 = sub_237EF8F40();
  v12 = [objc_opt_self() featureValueWithMultiArray_];

  *(inited + 72) = sub_237C75918(0, &qword_27DEAF158, 0x277CBFEF8);
  *(inited + 48) = v12;
  sub_237EF8230();
  v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v14 = sub_237CCD044();
  v0[20] = v14;
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v17 = v15;
  v18 = [v16 init];
  v0[21] = v18;
  v19 = swift_task_alloc();
  v0[22] = v19;
  *v19 = v0;
  v19[1] = sub_237ECB3B8;

  return MEMORY[0x282111978](v17, v18);
}

uint64_t sub_237ECB3B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_237ECB5B4;
  }

  else
  {
    v5 = *(v3 + 160);

    v4 = sub_237ECB4D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237ECB4D8()
{
  v1 = *(v0 + 192);
  sub_237ECB628(*(v0 + 184));
  v3 = *(v0 + 160);
  if (v1)
  {

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);
  }

  else
  {
    v6 = v2;

    swift_unknownObjectRelease();

    v5 = *(v0 + 8);
    v4.n128_u64[0] = v6;
  }

  return v5(v4);
}

uint64_t sub_237ECB5B4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_237ECB628(void *a1)
{
  v3 = [*(v1 + 16) name];
  if (!v3)
  {
    sub_237EF8590();
    v3 = sub_237EF8560();
  }

  v4 = [a1 featureValueForName_];

  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    v5 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v5);
    *v6 = xmmword_237F17CD0;
    *(v6 + 16) = 8;
    swift_willThrow();
  }
}

uint64_t sub_237ECB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_237ECB7BC;

  return MLModelRegressorAdaptor.applied(to:eventHandler:)(a2, v9, v10, a5);
}

uint64_t sub_237ECB7BC(double a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237ECB8CC@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v115 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v114 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v113 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF290, &qword_237F1A2D0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_22_2(&v106 - v7);
  *&v108 = sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v107 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v11 - v10);
  v128 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v117 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  v111 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v124 = &v106 - v17;
  v121 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v120 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v21 - v20);
  v22 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v106 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v106 - v33;
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v126 = v36;
  v127 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26();
  v116 = v37 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v106 - v40;
  v42 = *v1;
  v129 = *(v1 + 8);
  v110 = *(v1 + 16);
  sub_237EF7720();
  sub_237EF7620();
  v43 = [v42 modelDescription];
  v44 = [v43 modelURL];

  sub_237EF5EB0();
  v118 = sub_237EF5E40();
  v46 = v45;
  v122 = v34;
  sub_237EF5DE0();
  v47 = v31;
  sub_237EF5E90();
  v49 = v24 + 8;
  v48 = *(v24 + 8);
  v48(v28, v22);
  sub_237EF5EC0();
  v123 = v49;
  v48(v47, v22);
  v50 = v48;
  v51 = v41;
  v52 = v119;
  sub_237EF7270();
  (*(v120 + 104))(v52, *MEMORY[0x277D253B0], v121);
  v125 = v51;
  sub_237EF7660();
  v53 = [v129 type];
  if (v53 == 5)
  {
    v57 = v106;
    v58 = v107;
    v59 = v108;
    v60 = v109;
    v61 = [v129 multiArrayConstraint];
    if (v61)
    {
      v62 = v61;
      sub_237E5E63C(v62, v60);
      if (__swift_getEnumTagSinglePayload(v60, 1, v59) != 1)
      {
        OUTLINED_FUNCTION_7_81();

        v77 = *(v58 + 32);
        v77(v57, v60, v59);
        v78 = v124;
        v77(v124, v57, v59);
        OUTLINED_FUNCTION_3_105();
        v119 = v79;
        v79(v78);
        LODWORD(v109) = *MEMORY[0x277D25128];
        goto LABEL_12;
      }

      sub_237C863A0(v60, &qword_27DEAF290, &qword_237F1A2D0);
      v63 = type metadata accessor for SerializationError(0);
      v64 = sub_237CA2D6C();
      OUTLINED_FUNCTION_45_0(v63, v64);
      OUTLINED_FUNCTION_1_19();
      *v66 = v65 + 11;
      v66[1] = v67;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_10:
      v50(v122, v22);
      return (*(v126 + 8))(v125, v127);
    }

    v73 = type metadata accessor for SerializationError(0);
    v74 = sub_237CA2D6C();
    OUTLINED_FUNCTION_45_0(v73, v74);
    OUTLINED_FUNCTION_1_19();
    v72 = v75 + 2;
LABEL_9:
    *v70 = v72;
    v70[1] = v71;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  if (v53 != 2)
  {
    v68 = type metadata accessor for SerializationError(0);
    v69 = sub_237CA2D6C();
    OUTLINED_FUNCTION_45_0(v68, v69);
    OUTLINED_FUNCTION_1_19();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_81();
  v54 = v124;
  sub_237EF6DA0();
  OUTLINED_FUNCTION_3_105();
  LODWORD(v109) = v55;
  v119 = v56;
  v56(v54);
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  sub_237EF70E0();
  v80 = swift_allocObject();
  v108 = xmmword_237F03530;
  *(v80 + 16) = xmmword_237F03530;
  v81 = [v129 name];
  sub_237EF8590();

  v82 = *(v46 + 16);
  v83 = v111;
  v82(v111, v124, v128);
  sub_237EF7090();
  v84 = v125;
  sub_237EF76B0();
  *(swift_allocObject() + 16) = v108;
  v85 = v110;
  v86 = [v110 name];
  sub_237EF8590();

  sub_237EF6DA0();
  v119(v83, v109, v128);
  sub_237EF7090();
  sub_237EF7700();
  v87 = [v85 name];
  sub_237EF8590();

  sub_237EF7600();
  v88 = v127;
  v89 = *(v126 + 16);
  v90 = v116;
  v89(v116, v84, v127);
  v91 = v113;
  sub_237EF7810();
  v92 = type metadata accessor for CoreMLPackage(0);
  v93 = v112;
  v94 = v112 + *(v92 + 24);
  *(v94 + 80) = 0;
  *(v94 + 48) = 0u;
  *(v94 + 64) = 0u;
  *(v94 + 16) = 0u;
  *(v94 + 32) = 0u;
  *v94 = 0u;
  v89(v93, v90, v88);
  memcpy(__dst, v94, sizeof(__dst));
  sub_237C863A0(__dst, &unk_27DEAD7B0, &unk_237F03CA0);
  *v94 = 0u;
  *(v94 + 16) = 0u;
  *(v94 + 32) = 0u;
  *(v94 + 48) = 0u;
  *(v94 + 64) = 0u;
  *(v94 + 80) = 0;
  v95 = v114;
  v96 = v115;
  (*(v114 + 16))(v93 + *(v92 + 20), v91, v115);
  v97 = sub_237E34060();
  v99 = v98;
  v100 = sub_237EF7780();
  v102 = v101;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v102;
  sub_237C91098(v97, v99, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v102 = v132;
  v100(v130, 0);
  (*(v95 + 8))(v91, v96);
  v104 = v127;
  v105 = *(v126 + 8);
  v105(v116, v127);
  (*(v117 + 8))(v124, v128);
  (v120)(v122, v121);
  return (v105)(v125, v104);
}

uint64_t sub_237ECC468(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237ECC4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t VideoReaderError.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = type metadata accessor for VideoReaderError(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_237ECC870(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000034, 0x8000000237F01C30);
      sub_237EF8C10();
      MEMORY[0x2383E0710](0x2E73706620, 0xE500000000000000);
      v14 = 0;
      break;
    case 2u:
      OUTLINED_FUNCTION_0_101();
      v14 = v15 + 82;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_101();
      v14 = v16 + 78;
      break;
    case 4u:
      v14 = 0xD000000000000019;
      break;
    case 5u:
      OUTLINED_FUNCTION_0_101();
      v14 = v17 + 3;
      break;
    default:
      (*(v4 + 32))(v8, v12, v2);
      sub_237EF9330();

      strcpy(v19, "Video file at ");
      HIBYTE(v19[1]) = -18;
      sub_237ECCCB0(&qword_280C8E568, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v13 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v13);

      MEMORY[0x2383E0710](0xD000000000000020, 0x8000000237F01D70);
      v14 = v19[0];
      (*(v4 + 8))(v8, v2);
      break;
  }

  return v14;
}

uint64_t type metadata accessor for VideoReaderError(uint64_t a1)
{
  result = qword_27DEB6AB8;
  if (!qword_27DEB6AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237ECC870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoReaderError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static VideoReaderError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for VideoReaderError(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6AB0, &qword_237F1EAF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  v21 = *(v20 + 56);
  sub_237ECC870(a1, &v25 - v18);
  sub_237ECC870(a2, &v19[v21]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237ECC870(v19, v13);
      if (OUTLINED_FUNCTION_2_121() != 1)
      {
        goto LABEL_14;
      }

      v22 = *v13 == *&v19[v21];
      goto LABEL_16;
    case 2u:
      if (OUTLINED_FUNCTION_2_121() != 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 3u:
      if (OUTLINED_FUNCTION_2_121() != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 4u:
      if (OUTLINED_FUNCTION_2_121() != 4)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 5u:
      if (OUTLINED_FUNCTION_2_121() != 5)
      {
        goto LABEL_14;
      }

LABEL_13:
      sub_237ECCC0C(v19);
      v22 = 1;
      break;
    default:
      sub_237ECC870(v19, v16);
      if (OUTLINED_FUNCTION_2_121())
      {
        (*(v6 + 8))(v16, v4);
LABEL_14:
        sub_237ECCBA4(v19);
        v22 = 0;
      }

      else
      {
        (*(v6 + 32))(v10, &v19[v21], v4);
        v22 = sub_237EF5EA0();
        v23 = *(v6 + 8);
        v23(v10, v4);
        v23(v16, v4);
LABEL_16:
        sub_237ECCC0C(v19);
      }

      break;
  }

  return v22 & 1;
}

uint64_t sub_237ECCBA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6AB0, &qword_237F1EAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237ECCC0C(uint64_t a1)
{
  v2 = type metadata accessor for VideoReaderError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237ECCCB0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237ECCD04(uint64_t a1)
{
  result = sub_237EF5EF0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_121()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t Reshaper.shape.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Reshaper.init(shape:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 32);
    v4 = 1;
    while (1)
    {
      v5 = *v3++;
      v6 = v4 * v5;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 = v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 1;
LABEL_7:
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t Reshaper.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  sub_237EF7E90();
  result = sub_237EF7E20();
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 1;
    v10 = 32;
    do
    {
      v11 = *(result + v10);
      v12 = (v9 * v11) >> 64;
      v9 *= v11;
      if (v12 != v9 >> 63)
      {
        __break(1u);
        return result;
      }

      v10 += 8;
      --v8;
    }

    while (v8);

    if (v6 == v9)
    {
      return sub_237EF7E60();
    }
  }

  else
  {

    if (v6 == 1)
    {
      return sub_237EF7E60();
    }
  }

  v13 = sub_237EF7E20();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237F01DA0);
  v14 = MEMORY[0x2383E0A10](v5, MEMORY[0x277D83B88]);
  MEMORY[0x2383E0710](v14);

  MEMORY[0x2383E0710](0xD00000000000002ELL, 0x8000000237F01DC0);
  v15 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v15);

  MEMORY[0x2383E0710](0x202E737620, 0xE500000000000000);
  v16 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v16);

  MEMORY[0x2383E0710](11817, 0xE200000000000000);
  sub_237C84150();
  swift_allocError();
  *v17 = v13;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0xE000000000000000;
  *(v17 + 24) = 0;
  *(v17 + 32) = 6;
  return swift_willThrow();
}

uint64_t Reshaper.applied<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = v6[1];
  v14[2] = *(a4 + 16);
  v14[3] = a5;
  v15 = *(a4 + 24);
  v16 = *(a4 + 40);
  v17 = a6;
  v18 = v9;
  v19 = v10;
  v20 = a2;
  v21 = a3;
  v11 = sub_237EF7E90();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237C8FFEC(sub_237ECD1AC, v14, a5, v11, v12, a6, MEMORY[0x277D84950], &v22);
}

uint64_t sub_237ECD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v18[4] = a2;
  v18[5] = a3;
  v18[0] = a6;
  v18[1] = a8;
  v18[2] = a9;
  v18[3] = a10;
  v14 = type metadata accessor for Reshaper(0, v18);
  result = Reshaper.applied(to:eventHandler:)(a1, v15, v16, v14);
  if (v12)
  {
    *a12 = v12;
  }

  return result;
}

uint64_t static Reshaper.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_237C60C7C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_237ECD22C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
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

uint64_t sub_237ECD2F0(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x6570616873;
  }
}

uint64_t sub_237ECD330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237ECD22C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237ECD364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237ECD3B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Reshaper.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v17[0] = *(a2 + 16);
  v17[1] = v4;
  type metadata accessor for Reshaper.CodingKeys(255, v17);
  OUTLINED_FUNCTION_0_102();
  swift_getWitnessTable();
  v5 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v15 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = *v2;
  v14[1] = v2[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EF8260();
  sub_237EFA1B0();
  *&v17[0] = v10;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
  sub_237DA21D0(&qword_280C8CD30, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
  v11 = v16;
  sub_237EF9A70();
  if (v11)
  {

    return (*(v15 + 8))(v9, v5);
  }

  else
  {
    v13 = v15;

    LOBYTE(v17[0]) = 1;
    sub_237EF9A50();
    return (*(v13 + 8))(v9, v5);
  }
}

uint64_t Reshaper.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  type metadata accessor for Reshaper.CodingKeys(255, v15);
  OUTLINED_FUNCTION_0_102();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
  v16 = 0;
  sub_237DA21D0(&qword_280C8CD28, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
  sub_237EF9970();
  v9 = v15[0];
  LOBYTE(v15[0]) = 1;
  v10 = sub_237EF9950();
  v11 = OUTLINED_FUNCTION_1_120();
  v12(v11);
  *a6 = v9;
  a6[1] = v10;
  sub_237EF8260();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237ECD854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Reshaper.applied(to:eventHandler:)(a2, a2, a3, a5);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t Reshaper.debugDescription.getter()
{
  v1 = *v0;
  sub_237EF9330();

  v2 = MEMORY[0x2383E0A10](v1, MEMORY[0x277D83B88]);
  MEMORY[0x2383E0710](v2);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0x3C65706168736552;
}

uint64_t sub_237ECD9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237ECDA10(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t BaseLinearRegressorModel.init<A>(coefficients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  *(a4 + 65) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = sub_237EF8A90();
  result = (*(v7 + 8))(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t BaseLinearRegressorModel.coefficients.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BaseLinearRegressorModel.applied(features:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  memcpy(__dst, v3, 0x51uLL);
  sub_237D915CC(__dst, v11);
  sub_237C70604(a2, a3);
  return sub_237CC8380(v6, v7, v8, v9, __dst, a2, a3);
}

uint64_t sub_237ECDDA4@<X0>(uint64_t result@<X0>, uint64_t *a3@<X8>)
{
  v3 = *(result + 8);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v5 = sub_237EF89B0();
      *(v5 + 16) = v3;
      bzero((v5 + 32), 8 * v3);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    result = UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    *(v5 + 16) = v3;
    *a3 = v5;
  }

  return result;
}

uint64_t BaseTreeClassifierModel.encode(to:)(void *a1)
{
  v3 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  result = sub_237E88538();
  if (!v1)
  {
    v12 = result;
    v13 = v11;
    v19 = a1;
    sub_237EF5C30();
    swift_allocObject();
    sub_237EF5C20();
    (*(v5 + 104))(v9, *MEMORY[0x277CC86A8], v3);
    sub_237EF5C00();
    sub_237E4C030();
    sub_237EF5C10();
    memcpy(v15, v16, sizeof(v15));
    memcpy(v18, v16, sizeof(v18));
    sub_237D73A1C(v17);
    sub_237D6E9A0(v15);

    sub_237CBA6B8(v12, v13);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_237EFA1A0();
    __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
    sub_237E5226C(&qword_27DEB4D90, &unk_237F19B20);
    sub_237EF9DA0();
    sub_237C863A0(v17, &qword_27DEB2210, &unk_237F10700);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return result;
}

uint64_t BaseTreeClassifierModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_237EF85C0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA180();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a2;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210, &unk_237F10700);
  sub_237E5226C(&qword_27DEB4D70, &unk_237F19AE0);
  sub_237EF9D60();
  v34 = v28[0];
  v35 = v28[1];
  v36 = v28[2];
  v37 = v29;
  sub_237D74FBC(&v34, v28);
  sub_237D7360C(&v34, v31);
  memcpy(v32, v31, sizeof(v32));
  if (sub_237E52394(v32) == 1)
  {
    v12 = sub_237EF93E0();
    swift_allocError();
    v14 = v13;
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237F00970);
    v38 = v37;
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);
    sub_237C863A0(&v34, &qword_27DEB2210, &unk_237F10700);

    MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237F00A80);
    v38 = 1;
    v16 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v16);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v30);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  memcpy(v33, v32, sizeof(v33));
  sub_237D6E010();
  sub_237EF85B0();
  v17 = sub_237EF85A0();
  v19 = v18;

  result = (*(v7 + 8))(v11, v5);
  if (v19 >> 60 != 15)
  {
    sub_237C863A0(v31, &qword_27DEB4DA8, &unk_237F19E28);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v21 = sub_237E88668(0, 0);

    sub_237E88474(v17, v19);

    sub_237E523AC(v17, v19);
    v22 = v36;
    v23 = v35;
    v24 = *(v34 + 16);
    result = sub_237C863A0(&v34, &qword_27DEB2210, &unk_237F10700);
    if (*(&v36 + 1))
    {
      v25 = v24 / *(&v36 + 1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      *v26 = v22;
      v26[1] = v23;
      v26[2] = v21;
      v26[3] = v25;

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void BaseTreeClassifierModel.export(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v26 = a1;
  v5 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v20 = *a2;
  v21 = a2[2];
  v22 = a2[4];
  v23 = a2[6];
  v9 = a2[8];
  sub_237E4BC04(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, *v2, v2[1], v2[2], v2[3], v25, v26, v27, v28);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v18 = sub_237EF7780();
    sub_237C9FB0C(v9, sub_237C9FE58, 0, v19);
    v18(&v24, 0);
    sub_237E33BC0(v26);
    sub_237D0F8BC(v8);
  }
}

uint64_t sub_237ECE880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_237ECE8C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_237ECE91C(uint64_t result, int64_t a2, uint64_t a3, double a4)
{
  if (a3)
  {
    v4 = 0;
    while (1)
    {
      v5 = v4 <= a2;
      if (a3 > 0)
      {
        v5 = v4 >= a2;
      }

      if (v5)
      {
        break;
      }

      *(result + 8 * v4) = a4;
      if (__OFADD__(v4, a3))
      {
        v4 = ((v4 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v4 += a3;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237ECE960(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *result;
  v7 = *(result + 8);
  v8 = *(result + 16);
  v9 = *(result + 24);
  if ((a3 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v19[0] = *result;
  v19[1] = v7;
  v20 = v8;
  v21 = v9;
  sub_237E6F56C(v19);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = v10;
    v18 = a2;
    if (v7)
    {
      v12 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC(v9, v13, v14, v15);
          v9 = v16;
        }

        v17 = v7;
        if (v8)
        {
          if ((v12 * v6) >> 64 != (v12 * v6) >> 63)
          {
            goto LABEL_22;
          }

          v17 = 1;
        }

        if (v12 >= *(v11 + 16))
        {
          break;
        }

        if (v6 > 0x7FFFFFFF)
        {
          goto LABEL_19;
        }

        if (v6 < 0xFFFFFFFF80000000)
        {
          goto LABEL_20;
        }

        if (v17 > 0x7FFFFFFF)
        {
          goto LABEL_21;
        }

        cblas_dscal_NEWLAPACK();
        if (v7 == ++v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_15:
    a2 = v18;
LABEL_17:
    *a4 = v6;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = a2;
    *(a4 + 40) = v11;
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_237ECEAA4(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, int a7, double *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = *(a9 + 8);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v12 >> 60)
  {
    goto LABEL_12;
  }

  v16 = isStackAllocationSafe;
  v24 = a12;
  v25 = a3;
  v27 = a11;
  v28 = a8;
  v26 = a10;
  if (8 * v12) < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    v22 = &v22;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v19 = &v22 - v18;
    if (v12)
    {
      bzero(&v22 - v18, 8 * v12);
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v26, v27, v24, v19, v12, 1);
    sub_237ECE91C(a4, a5, a6, 0.0);
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    dot(_:_:)(v19, v12, 1, v19, v12, 1);
    *v28 = v20;
  }

  else
  {
    v21 = swift_slowAlloc();
    sub_237ECED08(v21, v12, a9, v16, a2, v25, v26, v27, v24, a4, a5, a6, v28);
    if (v23)
    {

      MEMORY[0x2383E2DF0](v21, -1, -1);
      __break(1u);
    }

    else
    {
      MEMORY[0x2383E2DF0](v21, -1, -1);
    }
  }
}

void sub_237ECED08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, double *a13)
{
  if (a1)
  {
    v15 = a11;
    v16 = a9;
    if (a2 >= 1)
    {
      bzero(a1, 8 * a2);
      v16 = a9;
      v15 = a11;
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a7, a8, v16, a1, a2, 1);
    sub_237ECE91C(a10, v15, a12, 0.0);
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    dot(_:_:)(a1, a2, 1, a1, a2, 1);
    *a13 = v17;
  }

  else
  {
    __break(1u);
  }
}

void *sub_237ECEE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  v8 = v3[4];
  if (v7)
  {
    v9 = *v3;
  }

  else
  {
    v9 = v3[1];
  }

  v19[0] = v3[3] + 32;
  v19[1] = v5;
  v19[2] = v6;
  v19[3] = v9;
  v20 = v7;
  v10 = *(v8 + 16);
  v15 = v19;
  v16 = v8 + 32;
  v17 = v10;
  v18 = 1;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = &v14;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(a3, v13, v11, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_237ECEF18(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, double *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = *MEMORY[0x277D85DE8];
  v13 = *(a9 + 8);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (v13 >> 60)
  {
    goto LABEL_15;
  }

  v17 = isStackAllocationSafe;
  v35 = a8;
  v36 = a7;
  v31 = a12;
  v32 = a3;
  v33 = a10;
  v34 = a11;
  if (8 * v13) < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    v30[0] = v30;
    v30[1] = v12;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v20 = v30 - v19;
    if (v13)
    {
      bzero(v30 - v19, 8 * v13);
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v33, v34, v31, v20, v13, 1);
    sub_237ECE91C(a4, a5, a6, 0.0);
    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    dot(_:_:)(v20, v13, 1, v20, v13, 1);
    *v35 = v21;
  }

  else
  {
    v29 = swift_slowAlloc();
    sub_237ECED08(v29, v13, a9, v17, a2, v32, v33, v34, v31, a4, a5, a6, v35);
    if (v12)
    {

      result = MEMORY[0x2383E2DF0](v29, -1, -1);
      __break(1u);
      return result;
    }

    MEMORY[0x2383E2DF0](v29, -1, -1);
  }

  sub_237ECF1C4(0.0);
  if (*(a9 + 32) == 1)
  {
    v22 = a9;
    v23 = 1;
    v24 = a9;
    v25 = 0;
  }

  else
  {
    v26 = *(a9 + 16);
    v27 = *(a9 + 24);
    v37[0] = *a9;
    v37[1] = v26;
    v37[2] = v13;
    v37[3] = v27;
    v38 = 1;
    v22 = v37;
    v24 = v37;
    v23 = 0;
    v25 = 1;
  }

  return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v22, v23, v24, v25);
}

void sub_237ECF1C4(double a1)
{
  if (*(v1 + 32))
  {
    v2 = *(v1 + 16);
    if (v2 < 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v2)
    {
      v3 = 0;
      v4 = *(v1 + 24);
      v5 = *(v1 + 8);
      v6 = vdupq_n_s64(v5 - 1);
      v7 = *v1 + 8;
      v8 = vdupq_n_s64(2uLL);
      while ((v3 * v4) >> 64 == (v3 * v4) >> 63)
      {
        if (v5)
        {
          if (v5 < 1)
          {
            goto LABEL_32;
          }

          v9 = (v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v10 = v7;
          v11 = xmmword_237F07A60;
          do
          {
            v12 = vmovn_s64(vcgeq_u64(v6, v11));
            if (v12.i8[0])
            {
              *(v10 - 1) = a1;
            }

            if (v12.i8[4])
            {
              *v10 = a1;
            }

            v11 = vaddq_s64(v11, v8);
            v10 += 2;
            v9 -= 2;
          }

          while (v9);
        }

        ++v3;
        v7 += 8 * v4;
        if (v3 == v2)
        {
          return;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    v13 = *(v1 + 8);
    if (v13 < 0)
    {
LABEL_35:
      __break(1u);
      return;
    }

    if (v13)
    {
      v14 = 0;
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      v17 = vdupq_n_s64(v16 - 1);
      v18 = *v1 + 8;
      v19 = vdupq_n_s64(2uLL);
      while ((v14 * v15) >> 64 == (v14 * v15) >> 63)
      {
        if (v16)
        {
          if (v16 < 1)
          {
            goto LABEL_33;
          }

          v20 = (v16 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v21 = v18;
          v22 = xmmword_237F07A60;
          do
          {
            v23 = vmovn_s64(vcgeq_u64(v17, v22));
            if (v23.i8[0])
            {
              *(v21 - 1) = a1;
            }

            if (v23.i8[4])
            {
              *v21 = a1;
            }

            v22 = vaddq_s64(v22, v19);
            v21 += 2;
            v20 -= 2;
          }

          while (v20);
        }

        ++v14;
        v18 += 8 * v15;
        if (v14 == v13)
        {
          return;
        }
      }

      goto LABEL_31;
    }
  }
}

double sub_237ECF33C()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = v0[2];
  v2 = v7[0];
  v3 = v1;
  v4 = *(&v1 + 1);
  sub_237E64494(v7, v6);
  return sub_237CC819C(v2, *(&v2 + 1), v3, v4, v7, sub_237ECF7D8);
}

double sub_237ECF40C(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(isStackAllocationSafe + 8);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v7 >> 60)
  {
    goto LABEL_11;
  }

  if ((8 * v7) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    v15[0] = v15;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v12 = v15 - v11;
    if (v7)
    {
      bzero(v15 - v11, 8 * v7);
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a2, a3, a4, v12, v7, 1);
    dot(_:_:)(v12, v7, 1, v12, v7, 1);
  }

  else
  {
    v14 = swift_slowAlloc();
    sub_237ECF5F4(v16, v14, v7, a2, a3, a4);
    MEMORY[0x2383E2DF0](v14, -1, -1);
    return v16[0];
  }

  return result;
}

void sub_237ECF5F4(double *__return_ptr a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10)
{
  if (a2)
  {
    if (a3 >= 1)
    {
      bzero(a2, 8 * a3);
    }

    UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
    UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a8, a9, a10, a2, a3, 1);
    dot(_:_:)(a2, a3, 1, a2, a3, 1);
    *a1 = v14;
  }

  else
  {
    __break(1u);
  }
}

void sub_237ECF820()
{
  OUTLINED_FUNCTION_37_0();
  v152 = v1;
  v146 = v2;
  v145 = sub_237EF7520();
  OUTLINED_FUNCTION_1();
  v143 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_237EF74A0();
  OUTLINED_FUNCTION_1();
  v141 = v9;
  v142 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v140 = v10;
  OUTLINED_FUNCTION_12_1();
  v11 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v136 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  v18 = v130 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  v139 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_16();
  v151 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_1();
  v135 = v26;
  OUTLINED_FUNCTION_12_1();
  sub_237EF71C0();
  OUTLINED_FUNCTION_1();
  v133 = v28;
  v134 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v29);
  sub_237EF7D00();
  OUTLINED_FUNCTION_1();
  v149 = v31;
  v150 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5();
  v32 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_26();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = v130 - v40;
  sub_237EF7650();
  v42 = (*(v34 + 88))(v41, v32);
  v43 = *MEMORY[0x277D25368];
  v144 = v42;
  if (v42 == v43)
  {
    v138 = v38;
    v44 = OUTLINED_FUNCTION_24_40();
    v45(v44);
    v46 = v143;
    (*(v143 + 32))(v7, v41, v145);
    v47 = *(v13 + 16);
    v141 = v18;
    v149 = v47;
    v150 = v13 + 16;
    (v47)(v18, v0, v11);
    v142 = v7;
    v48 = sub_237EF7500();
    v49 = *(v48 + 16);
    v41 = v11;
    if (v49)
    {
      v137 = v34;
      OUTLINED_FUNCTION_56_18();
      v50 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
      sub_237C63580(v50, v49, 0);
      v51 = v153;
      OUTLINED_FUNCTION_28();
      v140 = v48;
      v148 = v52;
      v53 = v48 + v52;
      v147 = *(v13 + 72);
      v131 = v13;
      v54 = (v13 + 32);
      v55 = v136;
      do
      {
        v56 = OUTLINED_FUNCTION_48_17();
        v149(v56);
        sub_237ECF820();
        v57 = OUTLINED_FUNCTION_41_17();
        v58(v57);
        v153 = v51;
        v60 = *(v51 + 16);
        v59 = *(v51 + 24);
        if (v60 >= v59 >> 1)
        {
          v62 = OUTLINED_FUNCTION_20_50(v59);
          sub_237C63580(v62, v60 + 1, 1);
          v51 = v153;
        }

        *(v51 + 16) = v60 + 1;
        v61 = v147;
        (*v54)(v51 + v148 + v60 * v147, v55, v11);
        v53 += v61;
        --v49;
      }

      while (v49);

      v83 = v146;
      v13 = v131;
      v32 = v130[2];
      v34 = v137;
      v46 = v143;
    }

    else
    {

      v83 = v146;
    }

    v101 = v142;
    sub_237EF7510();
    v102 = *(v46 + 16);
    v103 = v46;
    v104 = v138;
    v105 = v145;
    v102(v138, v101, v145);
    (*(v34 + 104))(v104, v144, v32);
    v106 = v141;
    sub_237EF7660();
    (*(v103 + 8))(v101, v105);
LABEL_24:
    (*(v13 + 32))(v83, v106, v41);
    goto LABEL_29;
  }

  if (v42 == *MEMORY[0x277D25350])
  {
    v137 = v34;
    v63 = OUTLINED_FUNCTION_24_40();
    v64(v63);
    v65 = OUTLINED_FUNCTION_64_8();
    v66(v65);
    OUTLINED_FUNCTION_59_12(v13 + 16);
    v67();
    v68 = sub_237EF7480();
    v69 = *(v68 + 16);
    v70 = v146;
    if (v69)
    {
      v138 = v38;
      OUTLINED_FUNCTION_56_18();
      v71 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
      sub_237C63580(v71, v69, 0);
      OUTLINED_FUNCTION_28();
      v145 = v68;
      v148 = v72;
      v73 = v68 + v72;
      v147 = *(v13 + 72);
      v131 = v13;
      do
      {
        v74 = v151;
        v75 = OUTLINED_FUNCTION_69_9();
        v76(v75);
        sub_237ECF820();
        v77 = OUTLINED_FUNCTION_41_17();
        v78(v77);
        OUTLINED_FUNCTION_61_10();
        if (v80)
        {
          v82 = OUTLINED_FUNCTION_20_50(v79);
          sub_237C63580(v82, v13, 1);
        }

        OUTLINED_FUNCTION_47_18();
        OUTLINED_FUNCTION_65_8();
        v81();
        v73 += v74;
        --v69;
      }

      while (v69);

      v13 = v131;
      v70 = v146;
      v38 = v138;
    }

    else
    {
    }

    v117 = v140;
    sub_237EF7490();
    v119 = v141;
    v118 = v142;
    (*(v141 + 2))(v38, v117, v142);
    v120 = OUTLINED_FUNCTION_45_22();
    v121(v120);
    v122 = v139;
    sub_237EF7660();
    v119[1](v117, v118);
    (*(v13 + 32))(v70, v122, v41);
  }

  else
  {
    v83 = v146;
    if (v42 == *MEMORY[0x277D253D0])
    {
      v137 = v34;
      v84 = OUTLINED_FUNCTION_24_40();
      v85(v84);
      v86 = OUTLINED_FUNCTION_64_8();
      v87(v86);
      OUTLINED_FUNCTION_59_12(v13 + 16);
      v88();
      v89 = sub_237EF71A0();
      v90 = *(v89 + 16);
      if (v90)
      {
        v138 = v38;
        OUTLINED_FUNCTION_56_18();
        v91 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
        sub_237C63580(v91, v90, 0);
        OUTLINED_FUNCTION_28();
        v145 = v89;
        v148 = v92;
        v93 = v89 + v92;
        v147 = *(v13 + 72);
        v131 = v13;
        do
        {
          v94 = v151;
          v95 = OUTLINED_FUNCTION_48_17();
          v149(v95);
          sub_237ECF820();
          v96 = OUTLINED_FUNCTION_41_17();
          v97(v96);
          OUTLINED_FUNCTION_61_10();
          if (v80)
          {
            v100 = OUTLINED_FUNCTION_20_50(v98);
            sub_237C63580(v100, v13, 1);
          }

          OUTLINED_FUNCTION_47_18();
          OUTLINED_FUNCTION_65_8();
          v99();
          v93 += v94;
          --v90;
        }

        while (v90);

        v13 = v131;
        v83 = v146;
        v38 = v138;
      }

      else
      {
      }

      v125 = v132;
      sub_237EF71B0();
      v127 = v133;
      v126 = v134;
      (*(v133 + 16))(v38, v125, v134);
      v128 = OUTLINED_FUNCTION_45_22();
      v129(v128);
      v106 = v135;
      sub_237EF7660();
      (*(v127 + 8))(v125, v126);
      goto LABEL_24;
    }

    if (v42 == *MEMORY[0x277D253D8])
    {
      v107 = OUTLINED_FUNCTION_24_40();
      v108(v107);
      v109 = OUTLINED_FUNCTION_64_8();
      v110(v109);
      v111 = OUTLINED_FUNCTION_57_11();
      v112(v111);
      sub_237ED02B4();
      v113 = OUTLINED_FUNCTION_45_22();
      v114(v113);
      sub_237EF7660();
      v115 = OUTLINED_FUNCTION_64_8();
      v116(v115);
    }

    else
    {
      v123 = OUTLINED_FUNCTION_57_11();
      v124(v123);
      (*(v34 + 8))(v41, v32);
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_38_0();
}

void sub_237ED02B4()
{
  OUTLINED_FUNCTION_37_0();
  v470 = v1;
  OUTLINED_FUNCTION_68_8();
  v462 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v6);
  v444 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v12);
  v431[0] = sub_237EF7980();
  v13 = OUTLINED_FUNCTION_6_1(v431[0]);
  v15 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v16);
  v480 = sub_237EF79A0();
  v17 = OUTLINED_FUNCTION_6_1(v480);
  v19 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_1();
  v425 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8, &qword_237F1EF98);
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_16();
  v469 = v30;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_16();
  v472 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v35);
  v479 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v475 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_16();
  v474 = v48;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v52);
  v53 = sub_237EF7940();
  OUTLINED_FUNCTION_1();
  v55 = v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_2();
  v481 = v57;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v62);
  v414 = sub_237EF7BC0();
  OUTLINED_FUNCTION_1();
  v64 = v63;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v67);
  sub_237EF7D00();
  OUTLINED_FUNCTION_5_58();
  v68 = OUTLINED_FUNCTION_46_21();
  v69(v68);
  v391 = v0;
  v70 = sub_237EF7CE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BD0, &qword_237F1EFA0);
  v71 = OUTLINED_FUNCTION_52_15();
  v72 = 0;
  v73 = v70 + 64;
  v74 = 1 << *(v70 + 32);
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  else
  {
    v75 = -1;
  }

  v76 = v75 & *(v70 + 64);
  v77 = (v74 + 63) >> 6;
  v486 = v55 + 16;
  v440 = v8 + 16;
  v458 = v3 + 16;
  v457 = v3 + 8;
  v461 = v3;
  v456 = v3 + 32;
  v485 = (v55 + 8);
  v432 = v55;
  v484 = (v55 + 32);
  v465 = v37 + 16;
  v453 = (v19 + 16);
  v450 = v19 + 88;
  v449[1] = *MEMORY[0x277D25298];
  v445 = *MEMORY[0x277D25290];
  v78 = v19 + 8;
  v430 = v19 + 96;
  v429[3] = v15 + 32;
  v429[2] = v15 + 8;
  v429[1] = v19 + 104;
  v464 = (v37 + 32);
  v466 = v37;
  v463 = v37 + 8;
  v434 = (v8 + 32);
  v409 = v8;
  v433 = v8 + 8;
  v397 = v64 + 8;
  v396 = v71 + 64;
  v408 = v64;
  v395 = (v64 + 32);
  v452 = v19 + 8;
  v478 = v53;
  v394 = v70;
  v398 = v71;
  v393 = v70 + 64;
  v392 = v77;
LABEL_5:
  v451 = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v76)
  {
    v79 = __clz(__rbit64(v76));
    v400 = (v76 - 1) & v76;
  }

  else
  {
    v80 = v72;
    do
    {
      v81 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_142;
      }

      if (v81 >= v77)
      {
        goto LABEL_111;
      }

      ++v80;
    }

    while (!*(v73 + 8 * v81));
    OUTLINED_FUNCTION_11_66();
    v400 = v82;
  }

  v401 = v72;
  v83 = v79 | (v72 << 6);
  v84 = (*(v70 + 48) + 16 * v83);
  v85 = v84[1];
  v403 = *v84;
  v86 = *(v408 + 16);
  v404 = *(v408 + 72) * v83;
  v87 = OUTLINED_FUNCTION_35_25(&v435);
  v86(v87);
  (v86)(v416, v37, v414);
  v402 = v85;
  sub_237EF8260();
  v88 = sub_237EF7B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BD8, &qword_237F1EFA8);
  OUTLINED_FUNCTION_52_15();
  v407 = v88 + 64;
  OUTLINED_FUNCTION_3_106();
  OUTLINED_FUNCTION_55_12();
  v406 = v90 >> 6;
  v413 = v91;
  v412 = v88;
  if (v92)
  {
LABEL_13:
    OUTLINED_FUNCTION_25_41();
    v417 = v93;
    v418 = v94;
    v96 = v95 | (v94 << 6);
    goto LABEL_19;
  }

  while (1)
  {
    v97 = v89;
    do
    {
      v98 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_139;
      }

      if (v98 >= v406)
      {

        sub_237EF7B60();
        v37 = sub_237EF7B20();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8, &qword_237F1EFB8);
        sub_237EF9800();
        v290 = 0;
        v291 = v37 + 64;
        v476 = v37;
        OUTLINED_FUNCTION_3_106();
        v294 = v293 & v292;
        v296 = (v295 + 63) >> 6;
        v471 = v297 + 64;
        v473 = v297;
        if ((v293 & v292) == 0)
        {
LABEL_87:
          v299 = v290;
          while (1)
          {
            v290 = v299 + 1;
            if (__OFADD__(v299, 1))
            {
              goto LABEL_140;
            }

            if (v290 >= v296)
            {

              sub_237EF7B30();
              OUTLINED_FUNCTION_19_1();
              v337(v415, v414);
              OUTLINED_FUNCTION_30_44();
              OUTLINED_FUNCTION_12_60(v338);
              v340 = (v398[6] + 16 * v339);
              *v340 = v403;
              v340[1] = v402;
              (*v395)(v398[7] + v404, v416, v414);
              OUTLINED_FUNCTION_39_21();
              if (v147)
              {
                goto LABEL_149;
              }

              v398[2] = v341;
              v78 = v452;
              v70 = v394;
              v73 = v393;
              v72 = v401;
              v77 = v392;
              v76 = v400;
              goto LABEL_5;
            }

            ++v299;
            if (*(v291 + 8 * v290))
            {
              OUTLINED_FUNCTION_14_68();
              v294 = v301 & v300;
              goto LABEL_92;
            }
          }
        }

        while (1)
        {
          v298 = __clz(__rbit64(v294));
          v294 &= v294 - 1;
LABEL_92:
          v302 = v298 | (v290 << 6);
          OUTLINED_FUNCTION_60_12();
          v304 = v303[1];
          v477 = *v303;
          OUTLINED_FUNCTION_32_34();
          v306 = *(v305 + 16);
          v483 = v307 * v302;
          v308 = OUTLINED_FUNCTION_42_21(&v447);
          v306(v308);
          v309 = OUTLINED_FUNCTION_44_22(&v448);
          v306(v309);
          v482 = v304;
          sub_237EF8260();
          sub_237EF79B0();
          OUTLINED_FUNCTION_49_17(v423);
          if (!v201)
          {
            break;
          }

          sub_237ED3E20(v423);
LABEL_104:
          v326 = OUTLINED_FUNCTION_38_20();
          OUTLINED_FUNCTION_70_8(v326, v327, v328, v55);
          sub_237EF79C0();
          v37 = v464;
          v329 = *v464;
          v330 = OUTLINED_FUNCTION_50_18(&v434);
          (v329)(v330);
          OUTLINED_FUNCTION_19_1();
          v331(v424, v55);
          OUTLINED_FUNCTION_22_45();
          OUTLINED_FUNCTION_12_60(v332);
          v333 = v473;
          v334 = OUTLINED_FUNCTION_37_27((*(v473 + 48) + 16 * v302));
          (v329)(v334);
          v335 = *(v333 + 16);
          v147 = __OFADD__(v335, 1);
          v336 = v335 + 1;
          if (v147)
          {
            goto LABEL_145;
          }

          *(v333 + 16) = v336;
          v53 = v478;
          if (!v294)
          {
            goto LABEL_87;
          }
        }

        v310 = *v453;
        OUTLINED_FUNCTION_35_25(v431);
        OUTLINED_FUNCTION_40_19();
        v310();
        v311 = OUTLINED_FUNCTION_13_56();
        v312(v311, v55);
        OUTLINED_FUNCTION_29_34();
        if (v313)
        {
          OUTLINED_FUNCTION_40_19();
          v310();
          OUTLINED_FUNCTION_7_82();
          v314 = v37;
        }

        else
        {
          OUTLINED_FUNCTION_29_34();
          if (v315)
          {
            OUTLINED_FUNCTION_19_1();
            v316 = OUTLINED_FUNCTION_31_29();
            v317(v316);
            v318 = OUTLINED_FUNCTION_5_96();
            v320 = *(v319 - 256);
            v321(v318);
            sub_237EF7970();
            sub_237EF7950();
            OUTLINED_FUNCTION_58_11();
            if (v147)
            {
              goto LABEL_150;
            }

            sub_237EF7960();
            v322 = OUTLINED_FUNCTION_16_58();
            v323(v322, v320);
            v324 = OUTLINED_FUNCTION_10_69();
            v325(v324);
            OUTLINED_FUNCTION_7_82();
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_21_53();
          v310();
          OUTLINED_FUNCTION_7_82();
          v314 = v411;
        }

        (v310)(v314, v55);
LABEL_103:
        OUTLINED_FUNCTION_43_24();
        v310();
        goto LABEL_104;
      }

      ++v97;
    }

    while (!*(v407 + 8 * v98));
    OUTLINED_FUNCTION_11_66();
    v417 = v99;
    v418 = v100;
    v96 = v101 | (v100 << 6);
LABEL_19:
    v102 = *(v88 + 56);
    v103 = (*(v88 + 48) + 16 * v96);
    v104 = v103[1];
    v419 = *v103;
    v483 = *(v432 + 72);
    v105 = *(v432 + 16);
    v105(v426, v102 + v483 * v96, v53);
    v482 = v105;
    v105(v427, v426, v53);
    v420 = v104;
    sub_237EF8260();
    v106 = sub_237EF7910();
    v107 = *(v106 + 16);
    if (!v107)
    {
      goto LABEL_60;
    }

    v108 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
    sub_237C63864(v108, v107, 0);
    v109 = v488;
    OUTLINED_FUNCTION_28();
    v437 = v110;
    v443 = v106 + v110;
    v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BE0, &qword_237F1EFB0);
    v439 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8, &qword_237F1EFB8);
    v111 = 0;
    v112 = *(v409 + 72);
    v441 = *(v409 + 16);
    v113 = v444;
    v438 = v107;
    v436 = v112;
    while (2)
    {
      v447 = v109;
      v446 = v111;
      v114 = v454;
      v115 = v441;
      v441(v454, v443 + v112 * v111, v113);
      v115(v455, v114, v113);
      v116 = sub_237EF7C30();
      sub_237EF9800();
      v117 = 0;
      v118 = v116 + 64;
      v473 = v116;
      OUTLINED_FUNCTION_3_106();
      OUTLINED_FUNCTION_55_12();
      v120 = v119 >> 6;
      v468 = v121 + 64;
      v471 = v121;
      if (v122)
      {
LABEL_22:
        OUTLINED_FUNCTION_25_41();
        v476 = v124;
        goto LABEL_28;
      }

      while (2)
      {
        v125 = v117;
LABEL_24:
        v117 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:

          sub_237EF7CF0();
          v342 = v391;
          v343 = sub_237EF7860();
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8, &qword_237F1EFB8);
          v344 = OUTLINED_FUNCTION_52_15();
          v345 = 0;
          v482 = v344;
          v483 = v343;
          v346 = 1 << *(v343 + 32);
          v347 = -1;
          if (v346 < 64)
          {
            v347 = ~(-1 << v346);
          }

          v348 = v343 + 64;
          v349 = v347 & *(v343 + 64);
          v350 = (v346 + 63) >> 6;
          v481 = v344 + 64;
          if (!v349)
          {
            goto LABEL_115;
          }

LABEL_114:
          v351 = __clz(__rbit64(v349));
          for (v349 &= v349 - 1; ; v349 = v354 & v353)
          {
            v355 = v351 | (v345 << 6);
            v356 = *(v483 + 48) + 16 * v355;
            v357 = *(v356 + 8);
            v484 = *v356;
            OUTLINED_FUNCTION_32_34();
            OUTLINED_FUNCTION_62_6(v358);
            v359 = v479;
            v342();
            (v342)(v422, v421, v359);
            v485 = v357;
            sub_237EF8260();
            v360 = v410;
            sub_237EF79B0();
            OUTLINED_FUNCTION_49_17(v410);
            if (v201)
            {
              sub_237ED3E20(v410);
              goto LABEL_132;
            }

            v361 = *v453;
            v362 = OUTLINED_FUNCTION_35_25(&v427);
            (v361)(v362);
            v363 = OUTLINED_FUNCTION_13_56();
            v364(v363);
            OUTLINED_FUNCTION_29_34();
            if (v365)
            {
              v366 = OUTLINED_FUNCTION_44_22(&v433);
              (v361)(v366);
              OUTLINED_FUNCTION_7_82();
              v367 = v359;
            }

            else
            {
              OUTLINED_FUNCTION_29_34();
              if (v368)
              {
                OUTLINED_FUNCTION_19_1();
                v369 = OUTLINED_FUNCTION_31_29();
                v370(v369);
                v371 = OUTLINED_FUNCTION_5_96();
                v373 = *(v372 - 256);
                v374(v371);
                sub_237EF7970();
                v478 = v375;
                sub_237EF7950();
                OUTLINED_FUNCTION_58_11();
                if (v147)
                {
                  goto LABEL_151;
                }

                sub_237EF7960();
                v376 = OUTLINED_FUNCTION_16_58();
                v377(v376, v373);
                v378 = OUTLINED_FUNCTION_10_69();
                v379(v378);
                OUTLINED_FUNCTION_7_82();
                v360 = v410;
                goto LABEL_131;
              }

              v360 = v410;
              OUTLINED_FUNCTION_21_53();
              v361();
              OUTLINED_FUNCTION_7_82();
              v367 = v405;
            }

            (v361)(v367);
LABEL_131:
            OUTLINED_FUNCTION_43_24();
            v361();
LABEL_132:
            v380 = OUTLINED_FUNCTION_38_20();
            OUTLINED_FUNCTION_70_8(v380, v381, v382, v421);
            sub_237EF79C0();
            v342 = *v464;
            v383 = OUTLINED_FUNCTION_51_17(v429);
            (v342)(v383);
            OUTLINED_FUNCTION_19_1();
            v384();
            OUTLINED_FUNCTION_30_44();
            v385 = v482;
            OUTLINED_FUNCTION_12_60(v386);
            v387 = (v385[6] + 16 * v355);
            v388 = v485;
            *v387 = v484;
            v387[1] = v388;
            (v342)(v385[7] + v486, v360);
            v389 = v385[2];
            v147 = __OFADD__(v389, 1);
            v390 = v389 + 1;
            if (v147)
            {
              goto LABEL_147;
            }

            v385[2] = v390;
            if (v349)
            {
              goto LABEL_114;
            }

LABEL_115:
            v352 = v345;
            do
            {
              v345 = v352 + 1;
              if (__OFADD__(v352, 1))
              {
                goto LABEL_143;
              }

              if (v345 >= v350)
              {

                sub_237EF7870();
                OUTLINED_FUNCTION_38_0();
                return;
              }

              ++v352;
            }

            while (!*(v348 + 8 * v345));
            OUTLINED_FUNCTION_14_68();
          }
        }

        if (v117 < v120)
        {
          ++v125;
          if (*(v118 + 8 * v117))
          {
            OUTLINED_FUNCTION_11_66();
            v476 = v126;
LABEL_28:
            v127 = v123 | (v117 << 6);
            OUTLINED_FUNCTION_60_12();
            v129 = v128[1];
            v477 = *v128;
            v130 = v461;
            v131 = *(v461 + 72) * v127;
            v133 = v459;
            v134 = v462;
            (*(v461 + 16))(v459, v132 + v131, v462);
            sub_237EF8260();
            v135 = v460;
            sub_237ED3580(v470, v136, v137, v138, v139, v140, v141, v142, v391, v392, SHIDWORD(v392), v393, v394, SHIDWORD(v394), v395, v396, v397, v398, v399, v400, v401, v402);
            (*(v130 + 8))(v133, v134);
            OUTLINED_FUNCTION_22_45();
            OUTLINED_FUNCTION_12_60(v143);
            v144 = v471;
            v145 = (*(v471 + 48) + 16 * v127);
            *v145 = v477;
            v145[1] = v129;
            (*(v130 + 32))(*(v144 + 56) + v131, v135, v134);
            OUTLINED_FUNCTION_39_21();
            if (v147)
            {
              __break(1u);
              goto LABEL_137;
            }

            *(v144 + 16) = v146;
            v53 = v478;
            if (v476)
            {
              goto LABEL_22;
            }

            continue;
          }

          goto LABEL_24;
        }

        break;
      }

      sub_237EF7C40();
      v148 = sub_237EF7C00();
      v149 = *(v148 + 16);
      if (v149)
      {
        v487 = MEMORY[0x277D84F90];
        sub_237C638BC(0, v149, 0);
        v150 = v487;
        v151 = (*(v432 + 80) + 32) & ~*(v432 + 80);
        v477 = v148;
        v152 = v148 + v151;
        v153 = v470;
        v154 = v431[3];
        do
        {
          v155 = OUTLINED_FUNCTION_48_17();
          v156(v155);
          sub_237ED225C(v153, v157, v158, v159, v160, v161, v162, v163, v391, v392, v393, v394, SHIDWORD(v394), v395, v396, v397, v398, v399, v400, SHIDWORD(v400), v401, v402);
          v164 = OUTLINED_FUNCTION_41_17();
          v165(v164);
          v487 = v150;
          v167 = *(v150 + 16);
          v166 = *(v150 + 24);
          if (v167 >= v166 >> 1)
          {
            sub_237C638BC(v166 > 1, v167 + 1, 1);
            v150 = v487;
          }

          *(v150 + 16) = v167 + 1;
          v168 = v483;
          (*v484)(v150 + v151 + v167 * v483, v154, v53);
          v152 += v168;
          --v149;
        }

        while (v149);
      }

      sub_237EF7C10();
      v169 = sub_237EF7BD0();
      sub_237EF9800();
      v170 = 0;
      v171 = v169 + 64;
      v471 = v169;
      OUTLINED_FUNCTION_3_106();
      v174 = v173 & v172;
      v176 = (v175 + 63) >> 6;
      v467 = v177 + 64;
      v468 = v177;
      if ((v173 & v172) != 0)
      {
        goto LABEL_37;
      }

LABEL_38:
      v179 = v170;
      while (1)
      {
        v170 = v179 + 1;
        if (__OFADD__(v179, 1))
        {
          goto LABEL_110;
        }

        if (v170 >= v176)
        {
          break;
        }

        ++v179;
        if (*(v171 + 8 * v170))
        {
          OUTLINED_FUNCTION_14_68();
          v174 = v181 & v180;
          while (2)
          {
            v182 = v178 | (v170 << 6);
            OUTLINED_FUNCTION_60_12();
            v184 = v183[1];
            v473 = *v183;
            OUTLINED_FUNCTION_32_34();
            v186 = *(v185 + 16);
            v477 = v187 * v182;
            v189 = v474;
            v190 = v479;
            v186(v474, v188 + v187 * v182, v479);
            v186(v475, v189, v190);
            v476 = v184;
            sub_237EF8260();
            v191 = v469;
            sub_237EF79B0();
            if (__swift_getEnumTagSinglePayload(v191, 1, v480) == 1)
            {
              sub_237ED3E20(v191);
              goto LABEL_54;
            }

            v192 = v453;
            v193 = *v453;
            v194 = OUTLINED_FUNCTION_35_25(&v479);
            v195 = v480;
            (v193)(v194, v191, v480);
            v196 = OUTLINED_FUNCTION_13_56();
            v197(v196, v195);
            OUTLINED_FUNCTION_29_34();
            if (v201)
            {
              v198 = v480;
              (v193)(v472, v191, v480);
              OUTLINED_FUNCTION_7_82();
              v199 = v190;
              v200 = v198;
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_29_34();
            if (v201)
            {
              v202 = OUTLINED_FUNCTION_13_56();
              v203(v202, v480);
              v204 = OUTLINED_FUNCTION_5_96();
              v206 = *(v205 - 256);
              v207(v204);
              sub_237EF7970();
              sub_237EF7950();
              OUTLINED_FUNCTION_58_11();
              if (!v147)
              {
                sub_237EF7960();
                v208 = OUTLINED_FUNCTION_16_58();
                v209(v208, v206);
                v210 = OUTLINED_FUNCTION_10_69();
                v211(v210);
                OUTLINED_FUNCTION_7_82();
                v191 = v469;
                goto LABEL_53;
              }
            }

            else
            {
              v191 = v469;
              OUTLINED_FUNCTION_21_53();
              v193();
              OUTLINED_FUNCTION_7_82();
              v199 = v190;
              v200 = v192;
LABEL_52:
              (v193)(v199, v200);
LABEL_53:
              (v193)(v191, v480);
LABEL_54:
              v212 = OUTLINED_FUNCTION_38_20();
              OUTLINED_FUNCTION_70_8(v212, v213, v214, v480);
              v215 = v475;
              sub_237EF79C0();
              v216 = *v464;
              v217 = OUTLINED_FUNCTION_51_17(&v487);
              (v216)(v217);
              OUTLINED_FUNCTION_19_1();
              v218(v474, v215);
              OUTLINED_FUNCTION_22_45();
              OUTLINED_FUNCTION_12_60(v219);
              v220 = v468;
              v221 = (*(v468 + 48) + 16 * v182);
              v223 = v476;
              v222 = v477;
              *v221 = v473;
              v221[1] = v223;
              (v216)(*(v220 + 56) + v222, v191, v215);
              OUTLINED_FUNCTION_39_21();
              if (!v147)
              {
                *(v220 + 16) = v224;
                v53 = v478;
                if (!v174)
                {
                  goto LABEL_38;
                }

LABEL_37:
                v178 = __clz(__rbit64(v174));
                v174 &= v174 - 1;
                continue;
              }

LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
            }

            break;
          }

          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }
      }

      v225 = v455;
      sub_237EF7BE0();
      v55 = v434;
      v226 = *v434;
      v227 = v435;
      v228 = v225;
      v113 = v444;
      (*v434)(v435, v228, v444);
      OUTLINED_FUNCTION_19_1();
      v229(v454, v113);
      v109 = v447;
      v488 = v447;
      v231 = *(v447 + 16);
      v230 = *(v447 + 24);
      if (v231 >= v230 >> 1)
      {
        v235 = OUTLINED_FUNCTION_20_50(v230);
        sub_237C63864(v235, v231 + 1, 1);
        v113 = v444;
        v109 = v488;
      }

      v232 = v446 + 1;
      *(v109 + 16) = v231 + 1;
      v233 = v436;
      v234 = v109 + v437 + v231 * v436;
      v111 = v232;
      v226(v234, v227, v113);
      v112 = v233;
      if (v111 != v438)
      {
        continue;
      }

      break;
    }

LABEL_60:

    sub_237EF7920();
    v236 = sub_237EF78F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8, &qword_237F1EFB8);
    sub_237EF9800();
    v237 = 0;
    v238 = v236 + 64;
    v476 = v236;
    OUTLINED_FUNCTION_3_106();
    v241 = v240 & v239;
    v243 = (v242 + 63) >> 6;
    v471 = v244 + 64;
    v473 = v244;
    if ((v240 & v239) != 0)
    {
LABEL_61:
      v245 = __clz(__rbit64(v241));
      v241 &= v241 - 1;
      goto LABEL_67;
    }

LABEL_62:
    v246 = v237;
    v53 = v478;
LABEL_63:
    v237 = v246 + 1;
    if (__OFADD__(v246, 1))
    {
      goto LABEL_138;
    }

    if (v237 < v243)
    {
      break;
    }

    sub_237EF7900();
    v284 = *v484;
    v285 = OUTLINED_FUNCTION_35_25(&v430);
    (v284)(v285, v427, v53);
    (*v485)(v426, v53);
    OUTLINED_FUNCTION_30_44();
    OUTLINED_FUNCTION_12_60(v286);
    v288 = (*(v413 + 48) + 16 * v287);
    *v288 = v419;
    v288[1] = v420;
    OUTLINED_FUNCTION_65_8();
    v284();
    OUTLINED_FUNCTION_39_21();
    if (v147)
    {
      goto LABEL_146;
    }

    *(v413 + 16) = v289;
    v88 = v412;
    v89 = v418;
    if (v417)
    {
      goto LABEL_13;
    }
  }

  ++v246;
  if (!*(v238 + 8 * v237))
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_14_68();
  v241 = v248 & v247;
LABEL_67:
  v249 = v245 | (v237 << 6);
  v250 = (*(v476 + 48) + 16 * v249);
  v251 = v250[1];
  v477 = *v250;
  OUTLINED_FUNCTION_32_34();
  v253 = *(v252 + 16);
  v483 = v254 * v249;
  v255 = OUTLINED_FUNCTION_42_21(&v460);
  v253(v255);
  v256 = OUTLINED_FUNCTION_44_22(&v461);
  v253(v256);
  v482 = v251;
  sub_237EF8260();
  sub_237EF79B0();
  OUTLINED_FUNCTION_49_17(v428);
  if (v201)
  {
    sub_237ED3E20(v428);
    goto LABEL_79;
  }

  v257 = *v453;
  OUTLINED_FUNCTION_35_25(v449);
  OUTLINED_FUNCTION_40_19();
  v257();
  v258 = OUTLINED_FUNCTION_13_56();
  v259(v258, v55);
  OUTLINED_FUNCTION_29_34();
  if (v260)
  {
    OUTLINED_FUNCTION_40_19();
    v257();
    OUTLINED_FUNCTION_7_82();
    v261 = v236;
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_29_34();
  if (v262)
  {
    OUTLINED_FUNCTION_19_1();
    v263 = OUTLINED_FUNCTION_31_29();
    v264(v263);
    v265 = OUTLINED_FUNCTION_5_96();
    v267 = *(v266 - 256);
    v268(v265);
    sub_237EF7970();
    sub_237EF7950();
    OUTLINED_FUNCTION_58_11();
    if (!v147)
    {
      sub_237EF7960();
      v269 = OUTLINED_FUNCTION_16_58();
      v270(v269, v267);
      v271 = OUTLINED_FUNCTION_10_69();
      v272(v271);
      OUTLINED_FUNCTION_7_82();
      goto LABEL_78;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_53();
    v257();
    OUTLINED_FUNCTION_7_82();
    v261 = v425;
LABEL_77:
    (v257)(v261, v55);
LABEL_78:
    OUTLINED_FUNCTION_43_24();
    v257();
LABEL_79:
    v273 = OUTLINED_FUNCTION_38_20();
    OUTLINED_FUNCTION_70_8(v273, v274, v275, v55);
    sub_237EF79C0();
    v236 = v464;
    v276 = *v464;
    v277 = OUTLINED_FUNCTION_50_18(&v452);
    (v276)(v277);
    OUTLINED_FUNCTION_19_1();
    v278(v431[1], v55);
    OUTLINED_FUNCTION_30_44();
    OUTLINED_FUNCTION_12_60(v279);
    v280 = v473;
    v281 = OUTLINED_FUNCTION_37_27((*(v473 + 48) + 16 * v249));
    (v276)(v281);
    v282 = *(v280 + 16);
    v147 = __OFADD__(v282, 1);
    v283 = v282 + 1;
    if (!v147)
    {
      *(v280 + 16) = v283;
      if (v241)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void sub_237ED225C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37_0();
  v141 = v22;
  OUTLINED_FUNCTION_68_8();
  v23 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v140 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_1();
  v128 = v29;
  OUTLINED_FUNCTION_12_1();
  v112 = sub_237EF7980();
  v30 = OUTLINED_FUNCTION_6_1(v112);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v31);
  v32 = sub_237EF79A0();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_3();
  v125 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8, &qword_237F1EF98);
  v38 = OUTLINED_FUNCTION_18(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_1();
  v132 = v43;
  OUTLINED_FUNCTION_12_1();
  v123 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v131 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_2();
  v134 = v46;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_16();
  v130 = v48;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_22_1();
  v133 = v50;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7940();
  OUTLINED_FUNCTION_5_58();
  v51 = OUTLINED_FUNCTION_46_21();
  v52(v51);
  v53 = sub_237EF7910();
  v54 = *(v53 + 16);
  v116 = v32;
  v115 = v41;
  if (v54)
  {
    v126 = v34;
    v142 = MEMORY[0x277D84F90];
    v55 = v53;
    sub_237C63864(0, v54, 0);
    v56 = v25 + 16;
    OUTLINED_FUNCTION_28();
    v136 = v57;
    v137 = v58;
    v59 = v55 + v57;
    v135 = *(v56 + 56);
    v60 = (v56 - 8);
    v61 = (v56 + 16);
    do
    {
      OUTLINED_FUNCTION_45_9();
      v137();
      sub_237ED2AE4(v141, v62, v63, v64, v65, v66, v67, v68, v106, v107, v108, v109, v110, v111, v112, v113, v115, v116, v117, v119);
      (*v60)(v140, v23);
      v70 = *(v142 + 16);
      v69 = *(v142 + 24);
      if (v70 >= v69 >> 1)
      {
        v71 = OUTLINED_FUNCTION_20_50(v69);
        sub_237C63864(v71, v70 + 1, 1);
      }

      *(v142 + 16) = v70 + 1;
      (*v61)(v142 + v136 + v70 * v135, v128, v23);
      v59 += v135;
      --v54;
    }

    while (v54);

    v32 = v116;
    v41 = v115;
    v34 = v126;
  }

  else
  {
  }

  sub_237EF7920();
  v72 = sub_237EF78F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8, &qword_237F1EFB8);
  OUTLINED_FUNCTION_52_15();
  v73 = 0;
  v120 = v72 + 64;
  OUTLINED_FUNCTION_15_53();
  OUTLINED_FUNCTION_55_12();
  v118 = v74 >> 6;
  v121 = (v34 + 88);
  v122 = (v34 + 16);
  v114 = *MEMORY[0x277D25290];
  v124 = (v34 + 8);
  v127 = (v131 + 32);
  v75 = v123;
  v129 = v76;
  if (v77)
  {
    while (1)
    {
      OUTLINED_FUNCTION_25_41();
      v138 = v79;
LABEL_15:
      v82 = v78 | (v73 << 6);
      OUTLINED_FUNCTION_60_12();
      v84 = v83[1];
      v139 = *v83;
      v85 = *(v131 + 16);
      v85(v133, v86 + *(v131 + 72) * v82, v75);
      v85(v134, v133, v75);
      sub_237EF8260();
      sub_237EF79B0();
      if (__swift_getEnumTagSinglePayload(v41, 1, v32) == 1)
      {
        v87 = v41;
        sub_237ED3E20(v41);
      }

      else
      {
        v88 = *v122;
        (*v122)(v125, v41, v32);
        (*v121)(v125, v32);
        OUTLINED_FUNCTION_29_34();
        if (v92)
        {
          v90 = v89;
          v88(v132, v41, v32);
          v91 = *v90;
          (*v90)(v125, v32);
        }

        else
        {
          OUTLINED_FUNCTION_29_34();
          if (v92)
          {
            OUTLINED_FUNCTION_19_1();
            v32 = v116;
            v93(v125, v116);
            OUTLINED_FUNCTION_19_1();
            v94(v111, v125, v112);
            sub_237EF7970();
            if (__OFADD__(sub_237EF7950(), v141))
            {
              goto LABEL_31;
            }

            sub_237EF7960();
            v95 = OUTLINED_FUNCTION_16_58();
            v96(v95, v112);
            OUTLINED_FUNCTION_19_1();
            v97(v132, v114, v116);
            v91 = *v124;
            v41 = v115;
          }

          else
          {
            v41 = v115;
            v32 = v116;
            v88(v132, v115, v116);
            v91 = *v124;
            (*v124)(v125, v116);
          }
        }

        v91(v41, v32);
        v87 = v41;
        v75 = v123;
      }

      v98 = OUTLINED_FUNCTION_38_20();
      OUTLINED_FUNCTION_70_8(v98, v99, v100, v32);
      sub_237EF79C0();
      v101 = *v127;
      (*v127)(v130, v134, v75);
      (*(v131 + 8))(v133, v75);
      OUTLINED_FUNCTION_22_45();
      OUTLINED_FUNCTION_12_60(v102);
      v103 = (*(v129 + 48) + 16 * v82);
      *v103 = v139;
      v103[1] = v84;
      OUTLINED_FUNCTION_45_9();
      v101();
      OUTLINED_FUNCTION_39_21();
      if (v105)
      {
        break;
      }

      *(v129 + 16) = v104;
      v41 = v87;
      if (!v138)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v80 = v73;
    while (1)
    {
      v73 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v73 >= v118)
      {

        sub_237EF7900();
        OUTLINED_FUNCTION_38_0();
        return;
      }

      ++v80;
      if (*(v120 + 8 * v73))
      {
        OUTLINED_FUNCTION_11_66();
        v138 = v81;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_237ED2AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  v173 = v23;
  OUTLINED_FUNCTION_68_8();
  v145 = sub_237EF7940();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  v171 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v27);
  v141 = sub_237EF7980();
  v28 = OUTLINED_FUNCTION_6_1(v141);
  v144 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v30);
  v149 = sub_237EF79A0();
  OUTLINED_FUNCTION_1();
  v143 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_3();
  v151 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8, &qword_237F1EF98);
  v35 = OUTLINED_FUNCTION_18(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22_1();
  v161 = v37;
  OUTLINED_FUNCTION_12_1();
  v164 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v160 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  v163 = v40;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_1();
  v162 = v43;
  OUTLINED_FUNCTION_12_1();
  v159 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_2();
  v157 = v47;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22_1();
  v156 = v49;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_5_58();
  v50 = OUTLINED_FUNCTION_46_21();
  v51(v50);
  v147 = v20;
  v52 = sub_237EF7C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BE0, &qword_237F1EFB0);
  OUTLINED_FUNCTION_52_15();
  v53 = 0;
  v54 = v52 + 64;
  v165 = v52;
  OUTLINED_FUNCTION_15_53();
  OUTLINED_FUNCTION_55_12();
  v56 = v55 >> 6;
  v155 = v57;
  if (v58)
  {
    do
    {
      OUTLINED_FUNCTION_25_41();
      v167 = v60;
LABEL_8:
      v64 = v59 | (v53 << 6);
      v65 = (*(v165 + 48) + 16 * v64);
      v66 = v65[1];
      v169 = *v65;
      v67 = *(v45 + 72) * v64;
      (*(v45 + 16))(v156, *(v165 + 56) + v67, v159);
      sub_237EF8260();
      sub_237ED3580(v173, v68, v69, v70, v71, v72, v73, v74, v138, v139, SHIDWORD(v139), v140, v141, SHIDWORD(v141), v142, v143, v144, v145, v147, v149, v150, v151);
      v75 = OUTLINED_FUNCTION_41_17();
      v76(v75);
      OUTLINED_FUNCTION_30_44();
      OUTLINED_FUNCTION_12_60(v77);
      v78 = (v155[6] + 16 * v64);
      *v78 = v169;
      v78[1] = v66;
      (*(v45 + 32))(v155[7] + v67, v157, v159);
      OUTLINED_FUNCTION_39_21();
      if (v80)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v155[2] = v79;
    }

    while (v167);
  }

  v61 = v53;
  v62 = v152;
  while (1)
  {
    v53 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v53 >= v56)
    {
      break;
    }

    ++v61;
    if (*(v54 + 8 * v53))
    {
      OUTLINED_FUNCTION_11_66();
      v167 = v63;
      goto LABEL_8;
    }
  }

  sub_237EF7C40();
  v81 = sub_237EF7C00();
  v82 = *(v81 + 16);
  if (v82)
  {
    v83 = OUTLINED_FUNCTION_28_34(MEMORY[0x277D84F90]);
    sub_237C638BC(v83, v82, 0);
    OUTLINED_FUNCTION_28();
    v85 = v81 + v84;
    do
    {
      v86 = OUTLINED_FUNCTION_69_9();
      v87(v86);
      sub_237ED225C(v173, v88, v89, v90, v91, v92, v93, v94, v138, v139, v140, v141, SHIDWORD(v141), v142, v143, v144, v145, v147, v149, SHIDWORD(v149), v150, v151);
      v95 = OUTLINED_FUNCTION_41_17();
      v96(v95);
      v98 = *(v174 + 16);
      v97 = *(v174 + 24);
      if (v98 >= v97 >> 1)
      {
        v100 = OUTLINED_FUNCTION_20_50(v97);
        sub_237C638BC(v100, v98 + 1, 1);
      }

      OUTLINED_FUNCTION_47_18();
      OUTLINED_FUNCTION_65_8();
      v99();
      v85 += v171;
      --v82;
    }

    while (v82);

    v62 = v152;
  }

  else
  {
  }

  sub_237EF7C10();
  v101 = sub_237EF7BD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6BE8, &qword_237F1EFB8);
  v102 = OUTLINED_FUNCTION_52_15();
  v103 = 0;
  v148 = v101 + 64;
  v166 = v101;
  OUTLINED_FUNCTION_15_53();
  v106 = v105 & v104;
  v108 = (v107 + 63) >> 6;
  v154 = *MEMORY[0x277D25298];
  v146 = *MEMORY[0x277D25290];
  v153 = (v143 + 8);
  v109 = v149;
  v158 = v110;
  if ((v105 & v104) == 0)
  {
LABEL_20:
    v112 = v103;
    while (1)
    {
      v103 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_39;
      }

      if (v103 >= v108)
      {

        sub_237EF7BE0();
        OUTLINED_FUNCTION_38_0();
        return;
      }

      ++v112;
      if (*(v148 + 8 * v103))
      {
        OUTLINED_FUNCTION_11_66();
        v168 = v113;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v111 = __clz(__rbit64(v106));
    v168 = (v106 - 1) & v106;
LABEL_25:
    v114 = v111 | (v103 << 6);
    v115 = (*(v166 + 48) + 16 * v114);
    v116 = v115[1];
    v170 = *v115;
    OUTLINED_FUNCTION_62_6(*(v160 + 72));
    (v102)(v162);
    OUTLINED_FUNCTION_45_9();
    v102();
    v172 = v116;
    sub_237EF8260();
    v117 = v62;
    sub_237EF79B0();
    v118 = v109;
    if (__swift_getEnumTagSinglePayload(v62, 1, v109) == 1)
    {
      sub_237ED3E20(v62);
    }

    else
    {
      v119 = *(v143 + 16);
      v120 = OUTLINED_FUNCTION_35_25(&a16);
      v119(v120, v62, v109);
      if ((*(v143 + 88))(v162, v109) == v154)
      {
        v119(v161, v62, v109);
        v121 = *v153;
        (*v153)(v162, v109);
        v121(v62, v109);
      }

      else
      {
        OUTLINED_FUNCTION_29_34();
        if (v122)
        {
          OUTLINED_FUNCTION_19_1();
          v118 = v149;
          v123(v151, v149);
          OUTLINED_FUNCTION_19_1();
          v124(v140, v151, v141);
          sub_237EF7970();
          if (__OFADD__(sub_237EF7950(), v173))
          {
            goto LABEL_42;
          }

          sub_237EF7960();
          v125 = OUTLINED_FUNCTION_16_58();
          v126(v125, v141);
          v127 = OUTLINED_FUNCTION_13_56();
          v128(v127, v146, v149);
          v117 = v152;
          (*v153)(v152, v149);
        }

        else
        {
          v117 = v152;
          v118 = v149;
          v119(v161, v152, v149);
          v129 = *v153;
          (*v153)(v151, v149);
          v129(v152, v149);
        }
      }

      v62 = v117;
    }

    v130 = OUTLINED_FUNCTION_38_20();
    v109 = v118;
    OUTLINED_FUNCTION_70_8(v130, v131, v132, v118);
    sub_237EF79C0();
    v133 = *(v160 + 32);
    v134 = OUTLINED_FUNCTION_35_25(&a18);
    (v133)(v134, v163, v164);
    (*(v160 + 8))(v162, v164);
    OUTLINED_FUNCTION_30_44();
    OUTLINED_FUNCTION_12_60(v135);
    v102 = v158;
    v136 = (*(v158 + 48) + 16 * v114);
    *v136 = v170;
    v136[1] = v172;
    OUTLINED_FUNCTION_45_9();
    v133();
    OUTLINED_FUNCTION_39_21();
    if (v80)
    {
      break;
    }

    *(v158 + 16) = v137;
    v106 = v168;
    if (!v168)
    {
      goto LABEL_20;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_237ED3580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37_0();
  v113 = v24;
  OUTLINED_FUNCTION_68_8();
  v25 = sub_237EF7980();
  OUTLINED_FUNCTION_1();
  v130 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v127 = sub_237EF79A0();
  OUTLINED_FUNCTION_1();
  v122 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8, &qword_237F1EF98);
  v34 = OUTLINED_FUNCTION_18(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_2();
  v129 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22_1();
  v128 = v37;
  OUTLINED_FUNCTION_12_1();
  v134 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v121 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  v133 = v40;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_1();
  v132 = v42;
  OUTLINED_FUNCTION_12_1();
  v43 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_26();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = v110 - v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_22_1();
  v142 = v54;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B00();
  OUTLINED_FUNCTION_5_58();
  (*(v55 + 16))(v22, v23);
  v56 = *(sub_237EF7AE0() + 16);
  if (!v56)
  {
LABEL_22:

    sub_237EF7AF0();
    OUTLINED_FUNCTION_38_0();
    return;
  }

  OUTLINED_FUNCTION_56_18();
  v111 = v30;
  v112 = v25;
  v110[5] = v22;
  v143 = MEMORY[0x277D84F90];
  v58 = v57;
  sub_237C634D0(0, v56, 0);
  v59 = v143;
  v61 = *(v45 + 16);
  v60 = v45 + 16;
  v141 = v61;
  OUTLINED_FUNCTION_28();
  v110[4] = v58;
  v138 = v62;
  v63 = (v58 + v62);
  v137 = *(v60 + 56);
  v140 = v60 + 72;
  v139 = *MEMORY[0x277D252B0];
  v135 = *MEMORY[0x277D252B8];
  v64 = (v60 + 16);
  v136 = (v60 - 8);
  v126 = v60 + 80;
  v131 = (v121 + 32);
  v125 = (v121 + 16);
  v118 = (v122 + 16);
  v117 = v122 + 88;
  v116 = *MEMORY[0x277D25298];
  v124 = v122 + 8;
  v110[7] = v122 + 96;
  v110[6] = v130 + 32;
  v114 = *MEMORY[0x277D25290];
  v110[3] = v130 + 8;
  v110[2] = v122 + 104;
  v122 = v121 + 8;
  v121 = v60 + 88;
  v123 = v60;
  v115 = v52;
  while (1)
  {
    v65 = v141;
    v141(v52, v63, v43);
    v65(v49, v52, v43);
    v66 = OUTLINED_FUNCTION_34_21();
    v68 = v67(v66);
    if (v68 != v139)
    {
      break;
    }

    v69 = OUTLINED_FUNCTION_34_21();
    v70(v69);
    v71 = OUTLINED_FUNCTION_67_5();
    v72(v71);
LABEL_19:
    v143 = v59;
    v108 = *(v59 + 16);
    v107 = *(v59 + 24);
    if (v108 >= v107 >> 1)
    {
      sub_237C634D0(v107 > 1, v108 + 1, 1);
      v59 = v143;
    }

    *(v59 + 16) = v108 + 1;
    v109 = v137;
    (*v64)(v59 + v138 + v108 * v137, v142, v43);
    v63 += v109;
    if (!--v56)
    {
      goto LABEL_22;
    }
  }

  if (v68 != v135)
  {
    v79 = OUTLINED_FUNCTION_67_5();
    v80(v79);
    v81 = OUTLINED_FUNCTION_34_21();
    v82(v81);
    goto LABEL_19;
  }

  v73 = OUTLINED_FUNCTION_34_21();
  v74(v73);
  v75 = v132;
  v76 = v134;
  v130 = *v131;
  (v130)(v132, v49, v134);
  (*v125)(v133, v75, v76);
  v77 = v129;
  sub_237EF79B0();
  v78 = v127;
  if (__swift_getEnumTagSinglePayload(v77, 1, v127) == 1)
  {
    sub_237ED3E20(v77);
LABEL_18:
    v99 = OUTLINED_FUNCTION_38_20();
    OUTLINED_FUNCTION_70_8(v99, v100, v101, v78);
    v102 = v133;
    sub_237EF79C0();
    OUTLINED_FUNCTION_19_1();
    v103 = v134;
    v104(v132, v134);
    (*v136)(v52, v43);
    v105 = v142;
    (v130)(v142, v102, v103);
    OUTLINED_FUNCTION_19_1();
    v106(v105, v135, v43);
    goto LABEL_19;
  }

  v83 = *v118;
  v84 = v77;
  v85 = v119;
  (*v118)(v119, v84, v78);
  OUTLINED_FUNCTION_19_1();
  v86(v85, v78);
  v120 = v124 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  OUTLINED_FUNCTION_29_34();
  if (v88)
  {
    v83(v128, v129, v78);
    v87 = *v124;
    (*v124)(v85, v78);
LABEL_16:
    v98 = v129;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_29_34();
  if (!v88)
  {
    v98 = v129;
    v78 = v127;
    v83(v128, v129, v127);
    v87 = *v124;
    (*v124)(v119, v78);
LABEL_17:
    v87(v98, v78);
    v52 = v115;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_19_1();
  v89 = v119;
  v78 = v127;
  v90(v119, v127);
  OUTLINED_FUNCTION_19_1();
  v91 = v112;
  v92(v111, v89, v112);
  sub_237EF7970();
  v110[1] = v93;
  if (!__OFADD__(sub_237EF7950(), v113))
  {
    v94 = v128;
    sub_237EF7960();
    v95 = OUTLINED_FUNCTION_16_58();
    v96(v95, v91);
    OUTLINED_FUNCTION_19_1();
    v97(v94, v114, v78);
    v87 = *v124;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_237ED3E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6BC8, &qword_237F1EF98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_37_27@<X0>(void *a1@<X8>)
{
  v4 = *(v2 - 144);
  v3 = *(v2 - 136);
  *a1 = *(v2 - 184);
  a1[1] = v4;
  return *(v1 + 56) + v3;
}

uint64_t OUTLINED_FUNCTION_52_15()
{

  return sub_237EF9800();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237ED4268(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_237ED42A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_237ED4304(uint64_t result, uint64_t a2, int16x4_t a3)
{
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (a2)
    {
      v3 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v4 = vdupq_n_s64(a2 - 1);
      v5 = xmmword_237F07A50;
      v6 = xmmword_237F07A60;
      v7 = (result + 8);
      v8 = vdupq_n_s64(4uLL);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v4, v6));
        if (vuzp1_s16(v9, a3).u8[0])
        {
          *(v7 - 2) = a3.i32[0];
        }

        if (vuzp1_s16(v9, a3).i8[2])
        {
          *(v7 - 1) = a3.i32[0];
        }

        if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
        {
          *v7 = a3.i32[0];
          v7[1] = a3.i32[0];
        }

        v5 = vaddq_s64(v5, v8);
        v6 = vaddq_s64(v6, v8);
        v7 += 4;
        v3 -= 4;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_237ED43A8(uint64_t result, uint64_t a2, double a3)
{
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (a2)
    {
      v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v4 = vdupq_n_s64(a2 - 1);
      v5 = xmmword_237F07A60;
      v6 = (result + 8);
      v7 = vdupq_n_s64(2uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v4, v5));
        if (v8.i8[0])
        {
          *(v6 - 1) = a3;
        }

        if (v8.i8[4])
        {
          *v6 = a3;
        }

        v5 = vaddq_s64(v5, v7);
        v6 += 2;
        v3 -= 2;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_237ED4410()
{
  v1 = *(v0 + 40);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = *(v0 + 8);
  result = v4 * v3;
  if ((v4 * v3) >> 64 != (v4 * v3) >> 63)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

double sub_237ED443C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v2;
  v5[2] = *(v1 + 32);
  v6 = *(v1 + 48);
  sub_237ED4498(a1 + 32, v5, &v4);
  return v4;
}

void sub_237ED4498(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  v6 = isStackAllocationSafe;
  v8 = *a2;
  v7 = *(a2 + 8);
  v46 = *(a2 + 16);
  v9 = *(a2 + 24);
  v49[0] = isStackAllocationSafe;
  v49[1] = v4 - 1;
  v49[2] = v7;
  v49[3] = v7;
  v44 = v7;
  v50 = 0;
  v48 = 0.0;
  if (v8 < 0)
  {
    goto LABEL_53;
  }

  if (v8)
  {
    v34 = a3;
    v35 = a2;
    v36 = v3;
    v10 = 0;
    v11 = 8 * v5;
    v12 = *(a2 + 32);
    v41 = v12 + 32;
    v43 = *(v12 + 16);
    if ((8 * v5) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 8 * v5;
    }

    v40 = v13;
    v37 = v9 + 32;
    v38 = 8 * v5;
    v15 = v5 < 0xFFFFFFFF80000000 || v44 < 0xFFFFFFFF80000000;
    v39 = v15;
    v42 = (v4 + 0xFFFFFFFFFFFFFFFLL) >> 61;
    while (v10 != v43)
    {
      if (v5 < 0)
      {
        goto LABEL_49;
      }

      if (v42)
      {
        goto LABEL_50;
      }

      v45 = *(v41 + 8 * v10);
      if (v11 <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
        v18 = v8;
        if ((v46 & 1) == 0)
        {
          if ((v10 * v44) >> 64 != (v10 * v44) >> 63)
          {
            goto LABEL_51;
          }

          v18 = 1;
        }

        for (i = 0; (v5 & ~(v5 >> 63)) != i; ++i)
        {
          v17[i] = 0.0;
        }

        if (v5 > 0x7FFFFFFF)
        {
          goto LABEL_45;
        }

        if (v39)
        {
          goto LABEL_46;
        }

        if (v44 > 0x7FFFFFFF)
        {
          goto LABEL_47;
        }

        if (v18 > 0x7FFFFFFF)
        {
          goto LABEL_48;
        }

        v20 = v8;
        v32 = 1;
        v21 = v6;
        cblas_dgemv_NEWLAPACK();
        if (v5 < 1)
        {
          v22 = MEMORY[0x277D84F90];
        }

        else
        {
          v22 = sub_237EF89B0();
          *(v22 + 16) = v5;
        }

        v23 = (v22 + 32);
        v47 = v5;
        vvexp((v22 + 32), v17, &v47);
        *(v22 + 16) = v5;
        v24 = 0.0;
        v25 = 0.0;
        if (v5 >= 1)
        {
          v26 = v5;
          do
          {
            v27 = *v23++;
            v25 = v25 + v27;
            --v26;
          }

          while (v26);
        }

        if (v45 >= 1)
        {
          v24 = v17[v45 - 1];
        }

        v28 = log1p(v25);
        v48 = v48 + v28 - v24;
        v6 = v21;
        v8 = v20;
        v11 = v38;
      }

      else
      {
        v29 = swift_slowAlloc();
        v30 = v36;
        sub_237ED4838(v29, v5, v35, v49, v10, v45, &v48);
        v36 = v30;
        if (v30)
        {

          MEMORY[0x2383E2DF0](v29, -1, -1);
          __break(1u);
          return;
        }

        isStackAllocationSafe = MEMORY[0x2383E2DF0](v29, -1, -1);
      }

      if (++v10 == v8)
      {
        v31 = v48;
        a3 = v34;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v31 = 0.0;
LABEL_43:
  *a3 = v31;
}

void sub_237ED4838(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, long double *a7)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_24:
    __break(1u);
  }

  v10 = a2;
  v12 = *(a3 + 8);
  if ((*(a3 + 16) & 1) == 0 && (a5 * v12) >> 64 != (a5 * v12) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  for (i = 0; (a2 & ~(a2 >> 63)) != i; ++i)
  {
    a1[i] = 0.0;
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10)
  {
    v14 = sub_237EF89B0();
    *(v14 + 16) = v10;
    if (!(v10 >> 31))
    {
      v15 = v14;
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_12:
  v16 = (v15 + 32);
  v20 = v10;
  vvexp((v15 + 32), a1, &v20);
  *(v15 + 16) = v10;
  if (v10)
  {
    v17 = 0.0;
    do
    {
      v18 = *v16++;
      v17 = v17 + v18;
      --v10;
    }

    while (v10);
  }

  else
  {

    v17 = 0.0;
  }

  if (a6 < 1)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = a1[a6 - 1];
  }

  *a7 = *a7 + log1p(v17) - v19;
}

void sub_237ED49FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, void *a8, __int128 *a9)
{
  *a8 = 0;
  sub_237ECE91C(a4, a5, a6, 0.0);
  v11 = *(a9 + 5);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = *a9;
  v14 = *(a9 + 1);
  v30 = a1;
  v31 = v13;
  v32 = v14;
  v33 = v14;
  v34 = 0;
  v16 = v14 * v13;
  if ((v14 * v13) >> 64 != (v14 * v13) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = 0x100000 / v16;
  if (0x100000 / v16 <= 0)
  {
    if (v15 <= 1)
    {
      goto LABEL_12;
    }

    v17 = 1;
    goto LABEL_9;
  }

  if (v17 < v15)
  {
LABEL_9:
    v35 = v9;
    v18 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v19 = v15 + v17;
    if (!__OFADD__(v15, v17))
    {
      v20 = v19 - 1;
      if (!__OFSUB__(v19, 1))
      {
        v21 = v18;
        sub_237D81EA8();
        v25[1] = v25;
        MEMORY[0x28223BE20](v20 / v17);
        sub_237EF8FB0();

        return;
      }

      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_12:
  if (v15 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  if (v15)
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      v24 = a9[1];
      v26 = *a9;
      v27 = v24;
      v28 = a9[2];
      v29 = *(a9 + 6);
      sub_237ED4BE0();
      v22 = v23;
    }

    while (v15 != v23);
  }
}

void sub_237ED4BE0()
{
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_6_82(*MEMORY[0x277D85DE8]);
  if (v8 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v36 = swift_slowAlloc();
      sub_237ED5264(v36, v5, &v42, v6, v0, v3, v4, v7, v1, v2);
      OUTLINED_FUNCTION_0_43();
      OUTLINED_FUNCTION_18_6();

      JUMPOUT(0x2383E2DF0);
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_89();
  if (!(!v16 & v15))
  {
    goto LABEL_27;
  }

  v6 = v9;
  v5 = *(v9 + 8);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 >> 60)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = v13;
  v2 = v12;
  v1 = v11;
  v7 = v10;
  v3 = *(v14 + 8 * v0 + 32);
  if ((8 * v5) > 1024)
  {
    goto LABEL_28;
  }

LABEL_7:
  v40 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = (&v39 - v18);
  if ((v44 & 1) == 0 && (v0 * v43) >> 64 != (v0 * v43) >> 63)
  {
LABEL_36:
    __break(1u);
  }

  for (i = 0; v5 != i; ++i)
  {
    v19[i] = 0.0;
  }

  OUTLINED_FUNCTION_9_69();
  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if (v5)
  {
    v21 = sub_237EF89B0();
    *(v21 + 16) = v5;
    if (v5 >> 31)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = v21;
    v23 = v7;
  }

  else
  {
    v23 = v7;
    v22 = MEMORY[0x277D84F90];
  }

  v24 = (v22 + 32);
  v41 = v5;
  vvexp((v22 + 32), v19, &v41);
  *(v22 + 16) = v5;
  v25 = 0.0;
  for (j = 0.0; v5; --v5)
  {
    v27 = *v24++;
    j = j + v27;
  }

  if (v3 >= 1)
  {
    v25 = v19[v3 - 1];
  }

  *v4 = *v4 + log1p(j) - v25;
  v28 = static DenseVector<>./ infix(_:_:)(v22, j + 1.0);

  if (v3 >= 1)
  {
    sub_237E61C54(v3 - 1, v28);
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237E643FC(v28, v32, v33, v34);
      v28 = isUniquelyReferenced_nonNull_native;
    }

    if (v3 <= *(v28 + 16))
    {
      *(v28 + 8 * (v3 - 1) + 32) = v31 + -1.0;
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_25:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  *(&v39 - 6) = &v42;
  *(&v39 - 5) = v0;
  *(&v39 - 4) = v23;
  *(&v39 - 3) = v1;
  v38 = v40;
  v35 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80C0, (&v39 - 8), v28, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v35);

  OUTLINED_FUNCTION_18_6();
}

void sub_237ED4F64(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, double *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = *MEMORY[0x277D85DE8];
  v17 = a2[5];
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = a2;
  v12 = a2[1];
  v13 = v12 * v18;
  if ((v12 * v18) >> 64 != (v12 * v18) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v13 >> 60)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = a5;
  v14 = a4;
  v10 = a3;
  v16 = a1;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v32 = a9;
  v15 = *a2;
  a2 = v37;
  a1 = v11;
  if ((8 * v13) < 1025)
  {
    sub_237E64904(v11, v37);
    isStackAllocationSafe = v9;
    goto LABEL_7;
  }

LABEL_23:
  sub_237E64904(a1, a2);
  v31 = v9;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v29 = swift_slowAlloc();
    sub_237E64904(v11, v37);
    sub_237ED5520(v29, v13, v16, v10, v11, v14, v31, v33, v34, v35, v32);
    MEMORY[0x2383E2DF0](v29, -1, -1);
    goto LABEL_20;
  }

LABEL_7:
  v31 = &v30;
  v20 = MEMORY[0x28223BE20](isStackAllocationSafe);
  v22 = &v30 - v21;
  if (v13)
  {
    bzero(v22, 8 * v12 * v18);
  }

  v36 = 0.0;
  v23 = v16 * v10;
  if ((v16 * v10) >> 64 != (v16 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  v24 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v24 * v10) >> 64 != (v24 * v10) >> 63)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v24 * v10 >= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = v24 * v10;
  }

  if (v25 < v23)
  {
    goto LABEL_28;
  }

  if (v23 != v25)
  {
    if (v23 < v25)
    {
      do
      {
        v26 = v23 + 1;
        v27 = *(v11 + 1);
        v37[0] = *v11;
        v37[1] = v27;
        v37[2] = *(v11 + 2);
        v38 = v11[6];
        sub_237ED4BE0();
        v23 = v26;
      }

      while (v25 != v26);
      goto LABEL_19;
    }

LABEL_31:
    __break(1u);
  }

LABEL_19:
  [v9 lock];
  v28 = v34;
  *v33 = v36 + *v33;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v22, v13, 1, v28, v35, v32);
  [v9 unlock];
LABEL_20:
  sub_237E63DF8(v11);
}

uint64_t sub_237ED5264(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, long double *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_27:
    __break(1u);
  }

  v15 = a2;
  v17 = *(a3 + 8);
  if ((*(a3 + 16) & 1) == 0 && (a5 * v17) >> 64 != (a5 * v17) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = 0;
  v38 = a9;
  while ((a2 & ~(a2 >> 63)) != v18)
  {
    a1[v18++] = 0.0;
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = a8;
  v37 = a5;
  if (v15)
  {
    v19 = sub_237EF89B0();
    *(v19 + 16) = v15;
    if (!(v15 >> 31))
    {
      v20 = v19;
      goto LABEL_12;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_12:
  v21 = (v20 + 32);
  v39 = v15;
  vvexp((v20 + 32), a1, &v39);
  *(v20 + 16) = v15;
  v22 = 0.0;
  for (i = 0.0; v15; --v15)
  {
    v24 = *v21++;
    i = i + v24;
  }

  if (a6 >= 1)
  {
    v22 = a1[a6 - 1];
  }

  *a7 = *a7 + log1p(i) - v22;
  v25 = static DenseVector<>./ infix(_:_:)(v20, i + 1.0);

  if (a6 < 1)
  {
    v32 = v37;
    goto LABEL_22;
  }

  sub_237E61C54(a6 - 1, v25);
  v28 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E643FC(v25, v29, v30, v31);
    v25 = isUniquelyReferenced_nonNull_native;
  }

  if (*(v25 + 16) < a6)
  {
    goto LABEL_25;
  }

  *(v25 + 8 * (a6 - 1) + 32) = v28 + -1.0;
LABEL_22:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v35[2] = a3;
  v35[3] = v32;
  v35[4] = v36;
  v35[5] = v38;
  v35[6] = a10;
  v33 = sub_237C65348();
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80F0, v35, v25, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v33);
}

void sub_237ED5520(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, id a7, double *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a1)
  {
LABEL_22:
    __break(1u);
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v19 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    goto LABEL_17;
  }

  v20 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v20 * a4) >> 64 != (v20 * a4) >> 63)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v20 * a4 >= *a5)
  {
    v21 = *a5;
  }

  else
  {
    v21 = v20 * a4;
  }

  if (v21 < v19)
  {
    goto LABEL_20;
  }

  if (v19 == v21)
  {
    goto LABEL_15;
  }

  if (v19 >= v21)
  {
    goto LABEL_21;
  }

  do
  {
    v22 = v19 + 1;
    sub_237ED4BE0();
    v19 = v22;
  }

  while (v21 != v22);
LABEL_15:
  [a7 lock];
  *a8 = *a8 + 0.0;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, 1, a9, a10, a11);
  [a7 unlock];
  sub_237E63DF8(a5);
}

void *sub_237ED56E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v5;
  v11[2] = *(v3 + 32);
  v12 = *(v3 + 48);
  v10 = v11;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = &v9;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8, &qword_237F1ABB0);
  return DenseVector.withUnsafeMutableVectorPointer<A>(_:)(a3, v8, v6, MEMORY[0x277D84F78] + 8);
}

void sub_237ED577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, void *a8, __int128 *a9)
{
  *a8 = 0;
  sub_237ECE91C(a4, a5, a6, 0.0);
  sub_237ECF1C4(0.0);
  v11 = *(a9 + 5);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  v15 = *a9;
  v14 = *(a9 + 1);
  v32 = a1;
  v33 = v13;
  v34 = v14;
  v35 = v14;
  v36 = 0;
  v16 = v14 * v13;
  if ((v14 * v13) >> 64 != (v14 * v13) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16 * v16;
  if ((v16 * v16) >> 64 != (v16 * v16) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = 0x100000 / v17;
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v19 < v15)
  {
    if (*(a7 + 32))
    {
      if ((*(a7 + 24) * *(a7 + 16)) >> 64 != (*(a7 + 24) * *(a7 + 16)) >> 63)
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    else if ((*(a7 + 8) * *(a7 + 24)) >> 64 != (*(a7 + 8) * *(a7 + 24)) >> 63)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v27[1] = *a7;
    v23 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v24 = v15 + v19;
    if (!__OFADD__(v15, v19))
    {
      v25 = v24 - 1;
      if (!__OFSUB__(v24, 1))
      {
        v26 = v23;
        sub_237D81EA8();
        v27[0] = v27;
        MEMORY[0x28223BE20](v25 / v19);
        sub_237EF8FB0();

        return;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_12:
  if (v15 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15)
  {
    v20 = 0;
    do
    {
      v21 = v20 + 1;
      v22 = a9[1];
      v28 = *a9;
      v29 = v22;
      v30 = a9[2];
      v31 = *(a9 + 6);
      sub_237ED59CC();
      v20 = v21;
    }

    while (v15 != v21);
  }
}

void sub_237ED59CC()
{
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_6_82(*MEMORY[0x277D85DE8]);
  if (v9 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      sub_237ED6ACC(v40, v6, &v50, v7, v0, v4, v5, v1, v2, v3, v8);
      OUTLINED_FUNCTION_1_121();
      OUTLINED_FUNCTION_18_6();

      JUMPOUT(0x2383E2DF0);
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_89();
  if (!(!v18 & v17))
  {
    goto LABEL_27;
  }

  v7 = v10;
  v6 = *(v10 + 8);
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v6 >> 60)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v5 = v15;
  v1 = v14;
  v8 = v13;
  v3 = v12;
  v2 = v11;
  v4 = *(v16 + 8 * v0 + 32);
  if ((8 * v6) > 1024)
  {
    goto LABEL_28;
  }

LABEL_7:
  v48 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = (&v45 - v20);
  v47 = v22;
  if ((v52 & 1) == 0 && (v0 * v51) >> 64 != (v0 * v51) >> 63)
  {
LABEL_36:
    __break(1u);
  }

  for (i = 0; v6 != i; ++i)
  {
    v21[i] = 0.0;
  }

  OUTLINED_FUNCTION_9_69();
  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if (v6)
  {
    v24 = sub_237EF89B0();
    *(v24 + 16) = v6;
    if (v6 >> 31)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v25 = v24;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v26 = (v25 + 32);
  v46 = v2;
  v49 = v6;
  vvexp((v25 + 32), v21, &v49);
  *(v25 + 16) = v6;
  v27 = 0.0;
  for (j = 0.0; v6; --v6)
  {
    v29 = *v26++;
    j = j + v29;
  }

  if (v4 >= 1)
  {
    v27 = v21[v4 - 1];
  }

  *v5 = *v5 + log1p(j) - v27;
  v30 = static DenseVector<>./ infix(_:_:)(v25, j + 1.0);

  MEMORY[0x28223BE20](v31);
  v42 = &v50;
  v43 = v0;
  v44 = v1;
  v32 = sub_237C65348();

  v33 = MEMORY[0x277D84F78];
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED8000, (&v45 - 6), v30, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v32);

  if (v4 >= 1)
  {
    sub_237E61C54(v4 - 1, v30);
    v36 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237E643FC(v30, v37, v38, v39);
      v30 = isUniquelyReferenced_nonNull_native;
    }

    if (v4 <= *(v30 + 16))
    {
      *(v30 + 8 * (v4 - 1) + 32) = v36 + -1.0;
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_25:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  *(&v45 - 6) = &v50;
  *(&v45 - 5) = v0;
  v42 = v46;
  v43 = v3;
  v44 = v48;
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80F0, (&v45 - 8), v30, MEMORY[0x277D839F8], v33 + 8, v32);

  OUTLINED_FUNCTION_18_6();
}

__n128 sub_237ED5DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_237E64904(a2, v23);
  v20 = a5;
  sub_237ED5E84(a2, a1, a3, a2, a4, v20, a6, a7, v21, a8, a9, a10, a11, a12);
  return result;
}

void sub_237ED5E84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, double *a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v67 = *MEMORY[0x277D85DE8];
  v23 = *(a1 + 40);
  v24 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v21 = a1;
  v61 = a6;
  v16 = *(a1 + 8);
  v18 = v16 * v24;
  if ((v16 * v24) >> 64 != (v16 * v24) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v18 * v18;
  if ((v18 * v18) >> 64 != (v18 * v18) >> 63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v14 >> 60)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v20 = v15;
  v19 = a5;
  v17 = a4;
  v59 = a2;
  v60 = a3;
  v57 = a7;
  v58 = a8;
  v54 = a14;
  v56 = a13;
  v55 = a12;
  v53 = a11;
  v52 = a10;
  if ((8 * v14) < 1025)
  {
    sub_237E64904(a4, v65);
    v25 = v61;
    sub_237E64904(v17, v65);
    isStackAllocationSafe = v25;
    goto LABEL_8;
  }

LABEL_32:
  v49 = a9;
  sub_237E64904(v17, v65);
  v51 = v61;
  sub_237E64904(v17, v65);
  v51 = v51;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v41 = swift_slowAlloc();
    sub_237E64904(v17, v65);
    v42 = v51;
    sub_237ED64A0(v41, v14, v21, v59, v60, v17, v19, v42, v49, v57, v58, v52, v53, v55, v56, v54);
    MEMORY[0x2383E2DF0](v41, -1, -1);
    sub_237E63DF8(v17);

    goto LABEL_37;
  }

LABEL_8:
  v51 = &v48;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v28 = &v48 - v27;
  if (v14)
  {
    bzero(v28, 8 * v16 * v16 * v24 * v24);
  }

  v63[0] = v28;
  v63[1] = v18;
  v63[2] = v18;
  v63[3] = v18;
  v64 = 0;
  if (v18 < 0)
  {
    goto LABEL_44;
  }

  if (v18 >> 60)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v50 = v20;
  if (8 * v18 < 1025)
  {
    sub_237E64904(v17, v65);
    v29 = v61;
    sub_237E64904(v17, v65);
    v30 = v29;
    goto LABEL_14;
  }

  sub_237E64904(v17, v65);
  v43 = v61;
  sub_237E64904(v17, v65);
  v44 = v43;
  v30 = swift_stdlib_isStackAllocationSafe();
  if ((v30 & 1) == 0)
  {
    v45 = swift_slowAlloc();
    sub_237E64904(v17, v65);
    v46 = v44;
    v47 = v50;
    sub_237ED68A8(v45, v18, v63, v59, v60, v17, v19, v46, v57, v58, v52, v53, v55, v56, v54);
    MEMORY[0x2383E2DF0](v45, -1, -1);
    sub_237E63DF8(v17);

    sub_237E63DF8(v17);
    if (!v47)
    {
LABEL_47:
      v39 = v61;
      goto LABEL_27;
    }

    swift_willThrow();
    sub_237E63DF8(v17);

LABEL_37:
    v39 = v61;
    goto LABEL_28;
  }

LABEL_14:
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v48 - v32;
  if (v18)
  {
    bzero(v33, 8 * v16 * v24);
  }

  v62 = 0.0;
  v34 = v59 * v60;
  if ((v59 * v60) >> 64 != (v59 * v60) >> 63)
  {
    __break(1u);
    goto LABEL_39;
  }

  v35 = v59 + 1;
  if (__OFADD__(v59, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v35 * v60) >> 64 != (v35 * v60) >> 63)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v35 * v60 >= *v17)
  {
    v36 = *v17;
  }

  else
  {
    v36 = v35 * v60;
  }

  if (v36 < v34)
  {
    goto LABEL_41;
  }

  v60 = &v48;
  if (v34 != v36)
  {
    if (v34 < v36)
    {
      do
      {
        v37 = v34 + 1;
        v38 = *(v17 + 16);
        v65[0] = *v17;
        v65[1] = v38;
        v65[2] = *(v17 + 32);
        v66 = *(v17 + 48);
        sub_237ED59CC();
        v34 = v37;
      }

      while (v36 != v37);
      goto LABEL_26;
    }

    goto LABEL_46;
  }

LABEL_26:
  v39 = v61;
  [v61 lock];
  v40 = v58;
  *v57 = v62 + *v57;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v33, v18, 1, v40, v52, v53);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v28, v14, 1, v55, v56, v54);
  [v39 unlock];
  sub_237E63DF8(v17);

  sub_237E63DF8(v17);
LABEL_27:
  sub_237E63DF8(v17);

LABEL_28:
  sub_237E63DF8(v17);

  sub_237E63DF8(v17);
}

void sub_237ED64A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, unint64_t a9@<X8>, double *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v51 = a8;
  v57 = *MEMORY[0x277D85DE8];
  v24 = sub_237ED43A8(a1, a2, 0.0);
  if (!a1)
  {
    __break(1u);
  }

  v26 = *(a3 + 40);
  v27 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v42 = a9;
  a3 = *(a3 + 8);
  a9 = a3 * v27;
  if ((a3 * v27) >> 64 != (a3 * v27) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v53[0] = a1;
  v53[1] = a3 * v27;
  v53[2] = a3 * v27;
  v53[3] = a3 * v27;
  v54 = 0;
  if ((a9 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a9 >> 60)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v49 = a15;
  v50 = v16;
  v47 = a16;
  v48 = a14;
  v46 = a13;
  v45 = a12;
  v44 = a11;
  v43 = a10;
  v25 = v55;
  v24 = a6;
  if ((8 * a9) < 1025)
  {
    sub_237E64904(a6, v55);
    isStackAllocationSafe = v51;
    goto LABEL_8;
  }

LABEL_25:
  sub_237E64904(v24, v25);
  v41 = v51;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_8:
    v42 = &v40;
    v29 = MEMORY[0x28223BE20](isStackAllocationSafe);
    v31 = &v40 - v30;
    if (a9)
    {
      bzero(v31, 8 * a3 * v27);
    }

    v52 = 0.0;
    v32 = a4 * a5;
    if ((a4 * a5) >> 64 == (a4 * a5) >> 63)
    {
      v33 = a4 + 1;
      if (!__OFADD__(a4, 1))
      {
        if ((v33 * a5) >> 64 == (v33 * a5) >> 63)
        {
          if (v33 * a5 >= *a6)
          {
            v34 = *a6;
          }

          else
          {
            v34 = v33 * a5;
          }

          if (v34 >= v32)
          {
            if (v32 != v34)
            {
              if (v32 >= v34)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

              do
              {
                v35 = v32 + 1;
                v36 = *(a6 + 16);
                v55[0] = *a6;
                v55[1] = v36;
                v55[2] = *(a6 + 32);
                v56 = *(a6 + 48);
                sub_237ED59CC();
                v32 = v35;
              }

              while (v34 != v35);
            }

            v37 = v51;
            [v51 lock];
            if ((a9 * a9) >> 64 == (a9 * a9) >> 63)
            {
              *v43 = v52 + *v43;
              UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v31, a9, 1, v44, v45, v46);
              UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a9 * a9, 1, v48, v49, v47);
              [v37 unlock];
              sub_237E63DF8(a6);

              sub_237E63DF8(a6);
LABEL_22:

              return;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v38 = swift_slowAlloc();
  sub_237E64904(a6, v55);
  v39 = v41;
  sub_237ED68A8(v38, a9, v53, a4, a5, a6, a7, v39, v43, v44, v45, v46, v48, v49, v47);
  MEMORY[0x2383E2DF0](v38, -1, -1);
  sub_237E63DF8(a6);

  sub_237E63DF8(a6);
  if (!v50)
  {
LABEL_36:
    v37 = v51;
    goto LABEL_22;
  }
}

void sub_237ED68A8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, id a8, double *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!a1)
  {
LABEL_27:
    __break(1u);
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v23 = a4 * a5;
  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
    goto LABEL_21;
  }

  v24 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v24 * a5) >> 64 != (v24 * a5) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v24 * a5 >= *a6)
  {
    v25 = *a6;
  }

  else
  {
    v25 = v24 * a5;
  }

  if (v25 < v23)
  {
    goto LABEL_24;
  }

  if (v23 == v25)
  {
    goto LABEL_15;
  }

  if (v23 >= v25)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  do
  {
    v26 = v23 + 1;
    sub_237ED59CC();
    v23 = v26;
  }

  while (v25 != v26);
LABEL_15:
  [a8 lock];
  if ((a3[4] & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = a3[2];
  v27 = a3[3];
  v29 = v27 * v28;
  if ((v27 * v28) >> 64 != (v27 * v28) >> 63)
  {
    __break(1u);
LABEL_18:
    v30 = a3[1];
    v31 = a3[3];
    v29 = v30 * v31;
    if ((v30 * v31) >> 64 == (v30 * v31) >> 63)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_19:
  v32 = *a3;
  *a9 = *a9 + 0.0;
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(a1, a2, 1, a10, a11, a12);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v32, v29, 1, a13, a14, a15);
  [a8 unlock];
  sub_237E63DF8(a6);
}

uint64_t sub_237ED6ACC(const double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, long double *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_27:
    __break(1u);
  }

  v16 = a2;
  v18 = *(a3 + 8);
  if ((*(a3 + 16) & 1) == 0 && (a5 * v18) >> 64 != (a5 * v18) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = 0;
  v45 = a9;
  while ((a2 & ~(a2 >> 63)) != v19)
  {
    a1[v19++] = 0.0;
  }

  UnsafeMutableVectorPointer<A>.addProductDouble(_:_:transposed:scaledBy:)();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v43 = a11;
  v44 = a10;
  if (v16)
  {
    v20 = sub_237EF89B0();
    *(v20 + 16) = v16;
    if (!(v16 >> 31))
    {
      v21 = v20;
      goto LABEL_12;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_12:
  v22 = (v21 + 32);
  v46 = v16;
  vvexp((v21 + 32), a1, &v46);
  *(v21 + 16) = v16;
  v23 = 0.0;
  for (i = 0.0; v16; --v16)
  {
    v25 = *v22++;
    i = i + v25;
  }

  if (a6 >= 1)
  {
    v23 = a1[a6 - 1];
  }

  *a7 = *a7 + log1p(i) - v23;
  v26 = static DenseVector<>./ infix(_:_:)(v21, i + 1.0);

  MEMORY[0x28223BE20](v27);
  v40 = a3;
  v41 = a5;
  v42 = a8;
  v28 = sub_237C65348();

  v29 = MEMORY[0x277D84F78];
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80D8, v39, v26, MEMORY[0x277D839F8], MEMORY[0x277D84F78] + 8, v28);

  if (a6 < 1)
  {
    v36 = v44;
    goto LABEL_22;
  }

  sub_237E61C54(a6 - 1, v26);
  v32 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E643FC(v26, v33, v34, v35);
    v26 = isUniquelyReferenced_nonNull_native;
  }

  if (*(v26 + 16) < a6)
  {
    goto LABEL_25;
  }

  *(v26 + 8 * (a6 - 1) + 32) = v32 + -1.0;
LABEL_22:
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v39[0] = a3;
  v39[1] = a5;
  v40 = v45;
  v41 = v36;
  v42 = v43;
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237ED80F0, &v38, v26, MEMORY[0x277D839F8], v29 + 8, v28);
}

void sub_237ED6E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = *(v5 + 16);
  v37[0] = *v5;
  v37[1] = v9;
  v37[2] = *(v5 + 32);
  v38 = *(v5 + 48);
  v10 = a3 * a3;
  if ((a3 * a3) >> 64 == (a3 * a3) >> 63)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v10 >> 60))
    {
      v6 = a5;
      v8 = a3;
      v7 = a1;
      if ((8 * v10) <= 1024)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_21;
  }

  __break(1u);
LABEL_12:
  if (!swift_stdlib_isStackAllocationSafe())
  {
    v24 = swift_slowAlloc();
    sub_237ED7170(v24, v10, v37, a2, v8, a4, v7, v25, v6);
    OUTLINED_FUNCTION_1_121();

    JUMPOUT(0x2383E2DF0);
  }

LABEL_5:
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = *(&v37[0] + 1);
  v17 = v16 * v16;
  if ((v16 * v16) >> 64 == (v16 * v16) >> 63)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (!(v17 >> 60))
      {
        if ((8 * v17) < 1025)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }

LABEL_22:
      __break(1u);
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __break(1u);
LABEL_17:
  v31 = v12;
  v32 = v13;
  if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
  {
    v26 = v31;
    v27 = v32;
    v28 = swift_slowAlloc();
    sub_237ED736C(v28, v17, v15, v10, v26, v8, v27, v37, v7, v6);
    v29 = OUTLINED_FUNCTION_1_121();
    MEMORY[0x2383E2DF0](v29);
    return;
  }

LABEL_9:
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_122();
  v33[0] = v15;
  v33[1] = v8;
  v33[2] = v8;
  v33[3] = v8;
  v34 = 1;
  v35[0] = v19;
  v35[1] = v16;
  v35[2] = v16;
  v35[3] = v16;
  v36 = 1;
  sub_237ED73F4(v7, v20, v8, v21, v33, v35, v6);
}

void sub_237ED70CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(*(a4 + 40), 1))
  {
    __break(1u);
  }

  else if ((*(a4 + 16) & 1) != 0 || (a5 * *(a4 + 8)) >> 64 == (a5 * *(a4 + 8)) >> 63)
  {
    sub_237ED76A8();
    return;
  }

  __break(1u);
}

void sub_237ED7170(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, void *a9@<X7>)
{
  v33 = *MEMORY[0x277D85DE8];
  v17 = *(a3 + 8);
  v18 = v17 * v17;
  if ((v17 * v17) >> 64 == (v17 * v17) >> 63)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v18 >> 60))
    {
      v14 = a9;
      v15 = a7;
      v9 = a6;
      v12 = a5;
      v10 = a3;
      v16 = isStackAllocationSafe;
      v13 = v11;
      if ((8 * v18) <= 1024)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
LABEL_9:
  v25 = a2;
  v26 = a8;
  v27 = a4;
  v28 = v9;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v17 = swift_slowAlloc();
    sub_237ED736C(v17, v18, v16, v25, v27, v12, v28, v10, v15, v14);
    v19 = v13;
    if (!v13)
    {
      MEMORY[0x2383E2DF0](v17, -1, -1);
      return;
    }

    goto LABEL_15;
  }

LABEL_5:
  v19 = &v24;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v23 = &v24 - v22;
  if (!v16)
  {
    __break(1u);
LABEL_15:

    MEMORY[0x2383E2DF0](v17, -1, -1);
    __break(1u);
    return;
  }

  v29[0] = v16;
  v29[1] = v12;
  v29[2] = v12;
  v29[3] = v12;
  v30 = 1;
  v31[0] = v23;
  v31[1] = v17;
  v31[2] = v17;
  v31[3] = v17;
  v32 = 1;
  sub_237ED73F4(v15, v20, v12, v21, v29, v31, v14);
}

void sub_237ED736C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a3)
  {
    v11[0] = a3;
    v11[1] = a6;
    v11[2] = a6;
    v11[3] = a6;
    v12 = 1;
    if (result)
    {
      v10 = *(a8 + 8);
      v13[0] = result;
      v13[1] = v10;
      v13[2] = v10;
      v13[3] = v10;
      v14 = 1;
      sub_237ED73F4(a9, a5, a6, a7, v11, v13, a10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_237ED73F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v15 = *(v7 + 8);
  v43 = *(v7 + 16);
  v16 = *(v7 + 40);
  sub_237ECF1C4(0.0);
  sub_237ED76A8();
  if (a3 < 0)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v42 = a7;
  if (a3)
  {
    v17 = 0;
    while ((v17 * a4) >> 64 == (v17 * a4) >> 63)
    {
      v18 = v17 + 1;
      v19 = *(a2 + 8 * v17 * a4);
      v20 = sub_237ED7B70(v44, v17, v17);
      *v21 = v19 + *v21;
      (v20)(v44, 0);
      v17 = v18;
      if (a3 == v18)
      {
        goto LABEL_6;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_6:
  sub_237ECF1C4(0.0);
  if (v43)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16;
    if ((a1 * v15) >> 64 != (a1 * v15) >> 63)
    {
LABEL_42:
      __break(1u);
      return;
    }
  }

  sub_237ED76A8();
  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
    goto LABEL_39;
  }

  if (v23 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v22 != 1)
  {
    if (v15 < 0)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = *a5;
    v27 = a5[1];
    v29 = 8 * v15;
    while (1)
    {
      v30 = __OFADD__(v26++, 1);
      if (v30)
      {
        goto LABEL_36;
      }

      if (v15)
      {
        v31 = 0;
        v32 = v42[1];
        v34 = *a6;
        v33 = a6[1];
        v35 = *v42 + v32 * v24;
        while (2)
        {
          if (__OFADD__(v25, v31))
          {
            goto LABEL_33;
          }

          if (((v25 + v31) * v32) >> 64 != ((v25 + v31) * v32) >> 63)
          {
            goto LABEL_34;
          }

          if ((v31 * v33) >> 64 != (v31 * v33) >> 63)
          {
            goto LABEL_35;
          }

          v36 = 0;
          v37 = 0;
          ++v31;
          v38 = v35;
          do
          {
            v39 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v40 = 0;
            v41 = *(v28 + 8 * v37);
            do
            {
              *(v38 + 8 * v40) = *(v38 + 8 * v40) + v41 * *(v34 + 8 * v40);
              ++v40;
            }

            while (v15 != v40);
            v30 = __OFADD__(v36, v15);
            v36 += v15;
            if (v30)
            {
              goto LABEL_31;
            }

            v38 += v29;
            ++v37;
          }

          while (v39 != v23);
          v35 += 8 * v32;
          v34 += 8 * v33;
          if (v31 != v15)
          {
            continue;
          }

          break;
        }
      }

      v30 = __OFADD__(v25, v15);
      v25 += v15;
      if (v30)
      {
        goto LABEL_37;
      }

      v28 += 8 * v27;
      v24 += v29;
      if (v26 == v23)
      {
        return;
      }
    }
  }
}

void sub_237ED76A8()
{
  OUTLINED_FUNCTION_19_5();
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v2;
  v13 = v1;
  v55 = *MEMORY[0x277D85DE8];
  if (v3 != 1)
  {
    v14 = v3;
    if (v6 == 1)
    {
      LODWORD(v9) = *(v0 + 32);
      if (*(v0 + 32))
      {
        v17 = 1;
      }

      else
      {
        v17 = v5;
      }

      v50 = v4;
      v51 = 1;
      v52 = v5;
      v53 = v17;
      v54 = v9;
      if ((v2 & 0x8000000000000000) == 0)
      {
        if (!(v2 >> 60))
        {
          if ((8 * v2) <= 1024)
          {
            goto LABEL_17;
          }

          goto LABEL_68;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v29 = v2 + v5;
      if (__OFADD__(v2, v5))
      {
        goto LABEL_67;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v29 >> 60)
      {
        goto LABEL_84;
      }

      if ((8 * v29) > 1024 && !swift_stdlib_isStackAllocationSafe())
      {
        v42 = swift_slowAlloc();
        sub_237ED7F00(v42, v8, v12 + v10, v13, v12, v14, v0, v11, v10, v9);
        goto LABEL_74;
      }

      OUTLINED_FUNCTION_9();
      MEMORY[0x28223BE20](v30);
      OUTLINED_FUNCTION_2_122();
      v32 = *(v0 + 32);
      if (v32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v10;
      }

      if (*(v0 + 32))
      {
        v34 = v12;
      }

      else
      {
        v34 = 1;
      }

      v45 = v31;
      v46 = v12;
      v47 = 1;
      v48 = v34;
      v49 = v32;
      v50 = v31 + 8 * v12;
      v51 = 1;
      v52 = v10;
      v53 = v33;
      v54 = v32;
      if (v12 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v12)
        {
          v35 = 0;
          do
          {
            if ((v35 * v14) >> 64 != (v35 * v14) >> 63)
            {
              goto LABEL_64;
            }

            OUTLINED_FUNCTION_7_83(v31, *&v13[v35 * v14]);
          }

          while (v12 != v36);
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          if (v10)
          {
            for (i = 0; i != v10; ++i)
            {
              v38 = v12 + i;
              if (__OFADD__(v12, i))
              {
                goto LABEL_65;
              }

              v39 = i * v9;
              if ((i * v9) >> 64 != (i * v9) >> 63)
              {
                goto LABEL_66;
              }

              *(v31 + 8 * v38) = *(v11 + 8 * v39);
            }
          }

          goto LABEL_60;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v14 = *(v0 + 32);
  if (v6 != 1)
  {
    if (*(v0 + 32))
    {
      v23 = v2;
    }

    else
    {
      v23 = 1;
    }

    v45 = v1;
    v46 = v2;
    v47 = 1;
    v48 = v23;
    v49 = v14;
    if ((v5 & 0x8000000000000000) == 0)
    {
      if (!(v5 >> 60))
      {
        v12 = 8 * v5;
        if ((8 * v5) > 1024 && !swift_stdlib_isStackAllocationSafe())
        {
          v41 = swift_slowAlloc();
          sub_237ED7E5C(v41, v10, v0, v11, v10, v9, &v45, v8);
          goto LABEL_74;
        }

        v13 = &v44;
        OUTLINED_FUNCTION_9();
        MEMORY[0x28223BE20](v24);
        OUTLINED_FUNCTION_2_122();
        if (v14)
        {
          v26 = 1;
        }

        else
        {
          v26 = v10;
        }

        v50 = v25;
        v51 = 1;
        v52 = v10;
        v53 = v26;
        v54 = v14;
        if (v10)
        {
          v27 = 0;
          while ((v27 * v9) >> 64 == (v27 * v9) >> 63)
          {
            OUTLINED_FUNCTION_7_83(v25, *(v11 + 8 * v27 * v9));
            if (v10 == v28)
            {
              goto LABEL_60;
            }
          }

          while (1)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            if (!swift_stdlib_isStackAllocationSafe())
            {
              break;
            }

LABEL_17:
            OUTLINED_FUNCTION_9();
            MEMORY[0x28223BE20](v18);
            OUTLINED_FUNCTION_2_122();
            if (v9)
            {
              v20 = v12;
            }

            else
            {
              v20 = 1;
            }

            v45 = v19;
            v46 = v12;
            v47 = 1;
            v48 = v20;
            v49 = v9;
            if (!v12)
            {
              goto LABEL_60;
            }

            v21 = 0;
            while ((v21 * v14) >> 64 == (v21 * v14) >> 63)
            {
              OUTLINED_FUNCTION_7_83(v19, *&v13[v21 * v14]);
              if (v12 == v22)
              {
                goto LABEL_60;
              }
            }

            __break(1u);
          }

          v40 = swift_slowAlloc();
          sub_237ED7DB8(v40, v12, v0, v13, v12, v14, &v50, v8);
LABEL_74:
          OUTLINED_FUNCTION_0_43();
          OUTLINED_FUNCTION_18_6();

          JUMPOUT(0x2383E2DF0);
        }

LABEL_60:
        OUTLINED_FUNCTION_0_104();
        goto LABEL_61;
      }

      goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (*(v0 + 32))
  {
    v15 = 1;
  }

  else
  {
    v15 = v5;
  }

  if (*(v0 + 32))
  {
    v16 = v2;
  }

  else
  {
    v16 = 1;
  }

  v45 = v1;
  v46 = v2;
  v47 = 1;
  v48 = v16;
  v49 = v14;
  v50 = v4;
  v51 = 1;
  v52 = v5;
  v53 = v15;
  v54 = v14;
  OUTLINED_FUNCTION_0_104();
LABEL_61:
  OUTLINED_FUNCTION_18_6();
}

void (*sub_237ED7B70(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = *(v3 + 24);
  if (*(v3 + 32))
  {
    v5 = a3 * v4;
    if ((a3 * v4) >> 64 != (a3 * v4) >> 63)
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = v5 + a2;
    if (!__OFADD__(v5, a2))
    {
      return nullsub_1;
    }

    __break(1u);
  }

  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!__OFADD__(a2 * v4, a3))
  {
    return nullsub_1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_237ED7BE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 40);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(a4 + 8);
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7)
  {
    if (v6 < 0xFFFFFFFF80000000)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v6 > 0x7FFFFFFF)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v7 >> 31)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v8 = result;
    v9 = a5 + 32;
    v10 = *(a5 + 16);
    v11 = *(a4 + 8);
    while (v10)
    {
      v9 += 8;
      result = cblas_dscal_NEWLAPACK();
      --v10;
      v8 += 8;
      if (!--v11)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_237ED7DB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  if (result)
  {
    v8 = *(a3 + 32);
    if (v8)
    {
      v9 = a2;
    }

    else
    {
      v9 = 1;
    }

    v11[0] = result;
    v11[1] = a2;
    v11[2] = 1;
    v11[3] = v9;
    v12 = v8;
    if ((a5 & 0x8000000000000000) == 0)
    {
      if (!a5)
      {
        return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v11, 0, a7, 0);
      }

      v10 = 0;
      while ((v10 * a6) >> 64 == (v10 * a6) >> 63)
      {
        *(result + 8 * v10) = *(a4 + 8 * v10 * a6);
        if (a5 == ++v10)
        {
          return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v11, 0, a7, 0);
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237ED7E5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  if (result)
  {
    v8 = *(a3 + 32);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = a2;
    }

    v11[0] = result;
    v11[1] = 1;
    v11[2] = a2;
    v11[3] = v9;
    v12 = v8;
    if ((a5 & 0x8000000000000000) == 0)
    {
      if (!a5)
      {
        return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(a7, 0, v11, 0);
      }

      v10 = 0;
      while ((v10 * a6) >> 64 == (v10 * a6) >> 63)
      {
        *(result + 8 * v10) = *(a4 + 8 * v10 * a6);
        if (a5 == ++v10)
        {
          return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(a7, 0, v11, 0);
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237ED7F00(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v10 = *(a7 + 32);
  if (*(a7 + 32))
  {
    v11 = a5;
  }

  else
  {
    v11 = 1;
  }

  v17[0] = result;
  v17[1] = a5;
  v17[2] = 1;
  v17[3] = v11;
  v18 = v10;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = a9;
  }

  v19[0] = result + 8 * a5;
  v19[1] = 1;
  v19[2] = a9;
  v19[3] = v12;
  v20 = v10;
  if (a5 < 0)
  {
    goto LABEL_23;
  }

  if (a5)
  {
    v13 = 0;
    while ((v13 * a6) >> 64 == (v13 * a6) >> 63)
    {
      *(result + 8 * v13) = *(a4 + 8 * v13 * a6);
      if (a5 == ++v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_13:
  if ((a9 & 0x8000000000000000) == 0)
  {
    if (!a9)
    {
      return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v17, 0, v19, 0);
    }

    v14 = 0;
    while (1)
    {
      v15 = a5 + v14;
      if (__OFADD__(a5, v14))
      {
        goto LABEL_21;
      }

      v16 = v14 * a10;
      if ((v14 * a10) >> 64 != (v14 * a10) >> 63)
      {
        goto LABEL_22;
      }

      ++v14;
      *(result + 8 * v15) = *(a8 + 8 * v16);
      if (a9 == v14)
      {
        return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v17, 0, v19, 0);
      }
    }
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_104()
{

  return UnsafeMutableMatrixPointer<A>.addProductDouble(_:transposed:_:transposed:scaledBy:)(v0 - 184, 0, v0 - 144, 0);
}

__n128 OUTLINED_FUNCTION_6_82@<Q0>(uint64_t a1@<X8>)
{
  *(v2 - 104) = a1;
  v3 = *(v1 + 32);
  *(v2 - 144) = *(v1 + 16);
  *(v2 - 128) = v3;
  result = *v1;
  *(v2 - 160) = *v1;
  *(v2 - 112) = *(v1 + 48);
  return result;
}