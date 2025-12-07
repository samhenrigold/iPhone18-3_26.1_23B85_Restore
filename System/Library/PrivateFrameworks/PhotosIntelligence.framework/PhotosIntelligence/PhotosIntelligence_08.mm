uint64_t sub_1C700BC18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_15_1();
  result = v4(v3);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_1C700BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v26;
  a20 = v27;
  v176 = v20;
  v29 = v28;
  v31 = OUTLINED_FUNCTION_424(v30);
  v32 = type metadata accessor for PartOfWeekExtendedToken(v31);
  v33 = OUTLINED_FUNCTION_18(v32);
  v185 = v34;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v171 - v37;
  v39 = type metadata accessor for TimeExtendedToken(0);
  v40 = OUTLINED_FUNCTION_18(v39);
  v186 = v41;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_512();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_367();
  OUTLINED_FUNCTION_319(v44);
  OUTLINED_FUNCTION_515(v45);
  v179 = v46;
  v187 = v47;
  v48 = v29[9];
  v177 = v29[8];
  OUTLINED_FUNCTION_377(v48);
  v49 = *(v23 + 16);
  OUTLINED_FUNCTION_494(MEMORY[0x1E69E7CC0]);
LABEL_2:
  OUTLINED_FUNCTION_556();
  while (v49 != v22)
  {
    if (v22 >= *(v23 + 16))
    {
      __break(1u);
LABEL_106:
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
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      return;
    }

    v50 = OUTLINED_FUNCTION_434();
    memcpy(v50, v51, 0x41uLL);
    if ((v190.n128_u8[8] & 1) == 0)
    {
      v52 = OUTLINED_FUNCTION_232();
      sub_1C7025F3C(v52, v53);
      OUTLINED_FUNCTION_117_2(&a15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D97C();
      }

      v55 = v29[2];
      v54 = v29[3];
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v54);
        OUTLINED_FUNCTION_94_4(&a15);
        OUTLINED_FUNCTION_374();
        sub_1C716D97C();
        OUTLINED_FUNCTION_373();
      }

      ++v22;
      v29[2] = v56;
      OUTLINED_FUNCTION_301(&a15);
      v59 = OUTLINED_FUNCTION_539(v29 + v58 * v57);
      memcpy(v59, v60, 0x41uLL);
      OUTLINED_FUNCTION_509();
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_523();
  }

  v61 = 0;
  v62 = *(v24 + 16);
  v182 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_374();
LABEL_13:
  OUTLINED_FUNCTION_556();
  OUTLINED_FUNCTION_292();
  while (v62 != v61)
  {
    if (v61 >= *(v24 + 16))
    {
      goto LABEL_106;
    }

    v63 = OUTLINED_FUNCTION_434();
    memcpy(v63, v64, 0x42uLL);
    if ((v190.n128_u8[8] & 1) == 0)
    {
      v65 = OUTLINED_FUNCTION_232();
      sub_1C7025FF8(v65, v66);
      OUTLINED_FUNCTION_117_2(&a14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D940();
      }

      OUTLINED_FUNCTION_412();
      if (v69)
      {
        OUTLINED_FUNCTION_49_6(v67);
        OUTLINED_FUNCTION_104_1(&a14);
        sub_1C716D940();
        OUTLINED_FUNCTION_509();
      }

      ++v61;
      v29[2] = v68;
      OUTLINED_FUNCTION_301(&a14);
      v71 = OUTLINED_FUNCTION_539(v29 + v49 * v70);
      memcpy(v71, v72, 0x42uLL);
      OUTLINED_FUNCTION_373();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_523();
  }

  v73 = 0;
  v74 = *(v25 + 16);
  v75 = MEMORY[0x1E69E7CC0];
  v76 = 56;
LABEL_24:
  v77 = v25 + 32 + v73 * v76;
  while (v74 != v73)
  {
    if (v73 >= *(v25 + 16))
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_53_6(v77);
    if ((v78 & 1) == 0)
    {
      v79 = OUTLINED_FUNCTION_232();
      sub_1C70260B4(v79, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
      }

      OUTLINED_FUNCTION_412();
      if (v69)
      {
        OUTLINED_FUNCTION_49_6(v81);
        OUTLINED_FUNCTION_104_1(&a13);
        sub_1C716DD2C();
        OUTLINED_FUNCTION_373();
        v83 = 56;
      }

      ++v73;
      *(v75 + 16) = v82;
      OUTLINED_FUNCTION_44_7(v75 + v49 * v83);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_571();
  }

  v172 = v75;
  v84 = 0;
  OUTLINED_FUNCTION_368();
  v181 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v86 = v188;
  while (v74 != v84)
  {
    if (v84 >= v85[1].n128_u64[0])
    {
      goto LABEL_108;
    }

    ++v84;
    OUTLINED_FUNCTION_280();
    if ((v88 & 1) == 0)
    {
      v89 = v87[1];
      OUTLINED_FUNCTION_452(*v87);
      LODWORD(v175) = v90;
      v174 = *(v91 + 32);
      sub_1C75504FC();
      v49 = v89;
      sub_1C75504FC();
      OUTLINED_FUNCTION_117_2(&a13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v189.n128_u64[0] = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DCF0();
        v86 = v189.n128_u64[0];
      }

      v93 = v86[1].n128_u64[0];
      v94 = v93 + 1;
      if (v93 >= v86[1].n128_u64[1] >> 1)
      {
        OUTLINED_FUNCTION_94_4(&a13);
        sub_1C716DCF0();
        OUTLINED_FUNCTION_331();
        v86 = v189.n128_u64[0];
      }

      v86[1].n128_u64[0] = v94;
      v181 = v86;
      v95 = v86 + 40 * v93;
      *(v95 + 32) = v173;
      *(v95 + 40) = v89;
      OUTLINED_FUNCTION_168(v95);
      OUTLINED_FUNCTION_451(v96);
      *(v97 + 64) = v174;
      OUTLINED_FUNCTION_292();
      v85 = v180;
      goto LABEL_35;
    }
  }

  v98 = 0;
  v99 = *(v49 + 16);
  v100 = v49 + 32;
  v180 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v101 = v100 + 56 * v98;
  while (v99 != v98)
  {
    if (v98 >= *(v49 + 16))
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_53_6(v101);
    if ((v102 & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_232();
      sub_1C70260B4(v103, v104);
      OUTLINED_FUNCTION_117_2(&a12);
      v193 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
      }

      v49 = v86[1].n128_u64[0];
      OUTLINED_FUNCTION_450();
      v86 = v188;
      if (v69)
      {
        OUTLINED_FUNCTION_49_6(v105);
        OUTLINED_FUNCTION_94_4(&a12);
        sub_1C716DD2C();
        v107 = v180;
        v86 = v188;
        v106 = v193;
      }

      ++v98;
      v106[1].n128_u64[0] = v107;
      v180 = v106;
      OUTLINED_FUNCTION_44_7(v106 + 56 * v49);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_571();
  }

  v108 = 0;
  v109 = v86[1].n128_u64[0];
  v183 = MEMORY[0x1E69E7CC0];
  while (v109 != v108)
  {
    OUTLINED_FUNCTION_573();
    if (v69)
    {
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_148_1();
    v98 = v111 & ~v110;
    v99 = *(v112 + 72);
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    OUTLINED_FUNCTION_173();
    sub_1C702659C();
    v49 = *(v21 + 56);
    OUTLINED_FUNCTION_294();
    sub_1C70265F0();
    if (v49)
    {
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v108;
      v86 = v188;
    }

    else
    {
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      OUTLINED_FUNCTION_117_2(&a16);
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v86;
      v189.n128_u64[0] = v86;
      if ((v113 & 1) == 0)
      {
        v115 = OUTLINED_FUNCTION_43_6();
        sub_1C716DCA8(v115, v116, v117);
        v114 = v189.n128_u64[0];
      }

      v86 = v188;
      v49 = *(v114 + 16);
      OUTLINED_FUNCTION_450();
      if (v69)
      {
        OUTLINED_FUNCTION_15(v118);
        v86 = &v189;
        OUTLINED_FUNCTION_94_4(&a16);
        sub_1C716DCA8(v121, v122, v123);
        OUTLINED_FUNCTION_510();
      }

      ++v108;
      *(v119 + 16) = v120;
      v183 = v119;
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
    }
  }

  v124 = v179;
  v125 = *(v179 + 16);
  v126 = v179 - 24;
  v127 = MEMORY[0x1E69E7CC0];
  while (v125)
  {
    if (!*(v124 + 16))
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_554();
    if ((v129 & 1) == 0)
    {
      v99 = v128[1];
      v186 = *v128;
      OUTLINED_FUNCTION_594(v128[2]);
      sub_1C75504FC();
      sub_1C75504FC();
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v189.n128_u64[0] = v127;
      LODWORD(v188) = v49;
      if ((v130 & 1) == 0)
      {
        v131 = OUTLINED_FUNCTION_99();
        sub_1C716DC6C(v131, v132, v133, v134, v135, v136, v137);
      }

      OUTLINED_FUNCTION_568();
      if (v69)
      {
        v175 = v126;
        OUTLINED_FUNCTION_143_0();
        sub_1C716DC6C(v140, v141, v142, v143, v144, v145, v146);
        v126 = v175;
      }

      OUTLINED_FUNCTION_375();
      *(v138 + 48) = v178;
      *(v138 + 56) = 0;
      *(v138 + 64) = v21;
      *(v138 + 72) = v98;
      *(v138 + 80) = v188;
      v124 = v179;
      v127 = v139;
    }
  }

  OUTLINED_FUNCTION_565();
  v147 = MEMORY[0x1E69E7CC0];
  while (v99 != v127)
  {
    OUTLINED_FUNCTION_529();
    if (v69)
    {
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_271(v148);
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    v49 = v184;
    OUTLINED_FUNCTION_350();
    sub_1C702659C();
    v149 = *(v49 + 24);
    OUTLINED_FUNCTION_423();
    sub_1C70265F0();
    if (v149)
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      ++v127;
    }

    else
    {
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
      v150 = swift_isUniquelyReferenced_nonNull_native();
      v189.n128_u64[0] = v147;
      if ((v150 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DC24();
        v147 = v189.n128_u64[0];
      }

      v49 = *(v147 + 16);
      OUTLINED_FUNCTION_305();
      if (v69)
      {
        OUTLINED_FUNCTION_15(v151);
        OUTLINED_FUNCTION_146();
        sub_1C716DC24();
        v147 = v189.n128_u64[0];
      }

      ++v127;
      *(v147 + 16) = v149;
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_582();
      sub_1C70267FC();
    }
  }

  v152 = 0;
  OUTLINED_FUNCTION_309_0();
  v153 = *(v38 + 2);
  v154 = MEMORY[0x1E69E7CC0];
LABEL_85:
  v155 = &v38[64 * v152 + 32];
  while (v153 != v152)
  {
    if (v152 >= *(v38 + 2))
    {
      goto LABEL_113;
    }

    OUTLINED_FUNCTION_448(v155);
    if ((v157 & 1) == 0)
    {
      v158 = OUTLINED_FUNCTION_232();
      sub_1C7026698(v158, v159);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21_11();
        sub_1C716DBE8();
      }

      OUTLINED_FUNCTION_274_0();
      if (v69)
      {
        OUTLINED_FUNCTION_49_6(v160);
        OUTLINED_FUNCTION_186();
        sub_1C716DBE8();
      }

      ++v152;
      *(v154 + 16) = v99;
      OUTLINED_FUNCTION_233((v154 + (v49 << 6)), v189, v190, v191, v192);
      goto LABEL_85;
    }

    v155 = (v156 + 64);
    ++v152;
  }

  v161 = 0;
  OUTLINED_FUNCTION_346();
  v163 = *(v162 + 16);
  while (v163 != v161)
  {
    if (v161 >= *(v162 + 16))
    {
      goto LABEL_114;
    }

    ++v161;
    OUTLINED_FUNCTION_280();
    if ((v164 & 1) == 0)
    {
      OUTLINED_FUNCTION_447();
      OUTLINED_FUNCTION_481(v165);
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_580();
      if ((v166 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DBAC();
      }

      OUTLINED_FUNCTION_124_1();
      if (v69)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C716DBAC();
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_168(v167);
      OUTLINED_FUNCTION_446(v168);
      OUTLINED_FUNCTION_346();
    }
  }

  OUTLINED_FUNCTION_355(&v192);
  v169 = v181;
  v170[2] = v172;
  v170[3] = v169;
  OUTLINED_FUNCTION_329_0(v170);
  OUTLINED_FUNCTION_125();
}

void sub_1C700C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v30 = OUTLINED_FUNCTION_424(v29);
  v31 = type metadata accessor for PartOfWeekExtendedToken(v30);
  v32 = OUTLINED_FUNCTION_18(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  v35 = type metadata accessor for TimeExtendedToken(0);
  v36 = OUTLINED_FUNCTION_18(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_512();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_367();
  OUTLINED_FUNCTION_165(v39);
  OUTLINED_FUNCTION_515(v28[5]);
  v165 = v40;
  v162 = v28[8];
  OUTLINED_FUNCTION_302(v28[9]);
  v41 = *(v22 + 16);
  OUTLINED_FUNCTION_494(MEMORY[0x1E69E7CC0]);
LABEL_2:
  OUTLINED_FUNCTION_556();
  while (v41 != v21)
  {
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
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
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      return;
    }

    v42 = OUTLINED_FUNCTION_434();
    memcpy(v42, v43, 0x41uLL);
    if (v172.n128_u8[8])
    {
      v44 = OUTLINED_FUNCTION_232();
      sub_1C7025F3C(v44, v45);
      OUTLINED_FUNCTION_117_2(&a15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D97C();
      }

      v47 = v28[2];
      v46 = v28[3];
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v46);
        OUTLINED_FUNCTION_94_4(&a15);
        OUTLINED_FUNCTION_374();
        sub_1C716D97C();
        OUTLINED_FUNCTION_373();
      }

      ++v21;
      v28[2] = v48;
      OUTLINED_FUNCTION_301(&a15);
      v51 = OUTLINED_FUNCTION_539(v28 + v50 * v49);
      memcpy(v51, v52, 0x41uLL);
      OUTLINED_FUNCTION_509();
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_523();
  }

  v53 = 0;
  v54 = *(v23 + 16);
  OUTLINED_FUNCTION_374();
LABEL_13:
  OUTLINED_FUNCTION_556();
  OUTLINED_FUNCTION_292();
  while (v54 != v53)
  {
    if (v53 >= *(v23 + 16))
    {
      goto LABEL_105;
    }

    v55 = OUTLINED_FUNCTION_434();
    memcpy(v55, v56, 0x42uLL);
    if (v172.n128_u8[8])
    {
      v57 = OUTLINED_FUNCTION_232();
      sub_1C7025FF8(v57, v58);
      OUTLINED_FUNCTION_117_2(&a14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D940();
      }

      OUTLINED_FUNCTION_412();
      if (v61)
      {
        OUTLINED_FUNCTION_49_6(v59);
        OUTLINED_FUNCTION_104_1(&a14);
        sub_1C716D940();
        OUTLINED_FUNCTION_509();
      }

      ++v53;
      v28[2] = v60;
      OUTLINED_FUNCTION_301(&a14);
      v63 = OUTLINED_FUNCTION_539(v28 + v41 * v62);
      memcpy(v63, v64, 0x42uLL);
      OUTLINED_FUNCTION_373();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_523();
  }

  v65 = 0;
  v66 = *(v24 + 16);
  v168 = MEMORY[0x1E69E7CC0];
  v67 = 56;
  v68 = v170;
LABEL_24:
  v69 = v24 + 32 + v65 * v67;
  while (v66 != v65)
  {
    if (v65 >= *(v24 + 16))
    {
      goto LABEL_106;
    }

    OUTLINED_FUNCTION_53_6(v69);
    if (v70)
    {
      v71 = OUTLINED_FUNCTION_232();
      sub_1C70260B4(v71, v72);
      OUTLINED_FUNCTION_117_2(&a13);
      v174 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
      }

      v41 = v68[1].n128_u64[0];
      v73 = v68[1].n128_u64[1];
      v74 = v68;
      v75 = v41 + 1;
      v68 = v170;
      if (v41 >= v73 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v73);
        v168 = v78;
        sub_1C716DD2C();
        v75 = v168;
        v68 = v170;
        v74 = v174;
      }

      ++v65;
      v74[1].n128_u64[0] = v75;
      OUTLINED_FUNCTION_374();
      OUTLINED_FUNCTION_44_7(v76 + v41 * v77);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_571();
  }

  v79 = 0;
  OUTLINED_FUNCTION_368();
  v167 = MEMORY[0x1E69E7CC0];
  while (v66 != v79)
  {
    if (v79 >= v80[1].n128_u64[0])
    {
      goto LABEL_107;
    }

    ++v79;
    OUTLINED_FUNCTION_280();
    if (v82)
    {
      v83 = v81[1];
      OUTLINED_FUNCTION_452(*v81);
      v85 = *(v84 + 32);
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_117_2(&a12);
      v171.n128_u64[0] = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DCF0();
        v68 = v171.n128_u64[0];
      }

      v41 = v68[1].n128_u64[0];
      OUTLINED_FUNCTION_450();
      if (v61)
      {
        OUTLINED_FUNCTION_94_4(&a12);
        sub_1C716DCF0();
        v86 = v167;
        v68 = v171.n128_u64[0];
      }

      v68[1].n128_u64[0] = v86;
      v167 = v68;
      v87 = v68 + 40 * v41;
      *(v87 + 32) = v161;
      *(v87 + 40) = v83;
      OUTLINED_FUNCTION_277(v87);
      *(v88 + 56) = 1;
      OUTLINED_FUNCTION_451(v88);
      *(v89 + 64) = v85;
      v68 = v170;
      OUTLINED_FUNCTION_292();
      v80 = v166;
    }
  }

  v90 = 0;
  v91 = *(v41 + 16);
  v92 = v41 + 32;
  OUTLINED_FUNCTION_165(MEMORY[0x1E69E7CC0]);
LABEL_44:
  v93 = v92 + 56 * v90;
  while (v91 != v90)
  {
    if (v90 >= *(v41 + 16))
    {
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_53_6(v93);
    if (v94)
    {
      v95 = OUTLINED_FUNCTION_232();
      sub_1C70260B4(v95, v96);
      OUTLINED_FUNCTION_117_2(&a11);
      v175 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
      }

      v41 = v68[1].n128_u64[0];
      OUTLINED_FUNCTION_450();
      v68 = v170;
      if (v61)
      {
        OUTLINED_FUNCTION_49_6(v97);
        OUTLINED_FUNCTION_94_4(&a11);
        sub_1C716DD2C();
        v99 = v166;
        v68 = v170;
        v98 = v175;
      }

      ++v90;
      v98[1].n128_u64[0] = v99;
      v166 = v98;
      OUTLINED_FUNCTION_44_7(v98 + 56 * v41);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_571();
  }

  v100 = 0;
  v101 = v68[1].n128_u64[0];
  while (v101 != v100)
  {
    OUTLINED_FUNCTION_573();
    if (v61)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_148_1();
    v90 = v103 & ~v102;
    v91 = *(v104 + 72);
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    OUTLINED_FUNCTION_173();
    sub_1C702659C();
    v41 = *(v20 + 56);
    OUTLINED_FUNCTION_294();
    sub_1C70265F0();
    if (v41)
    {
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      OUTLINED_FUNCTION_117_2(&a16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v68;
      v171.n128_u64[0] = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v107 = OUTLINED_FUNCTION_43_6();
        sub_1C716DCA8(v107, v108, v109);
        v106 = v171.n128_u64[0];
      }

      v68 = v170;
      v41 = *(v106 + 16);
      OUTLINED_FUNCTION_450();
      if (v61)
      {
        OUTLINED_FUNCTION_15(v110);
        v68 = &v171;
        OUTLINED_FUNCTION_94_4(&a16);
        sub_1C716DCA8(v113, v114, v115);
        OUTLINED_FUNCTION_510();
      }

      ++v100;
      *(v111 + 16) = v112;
      OUTLINED_FUNCTION_1_19();
      OUTLINED_FUNCTION_582();
      sub_1C70267FC();
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v100;
      v68 = v170;
    }
  }

  v116 = v165;
  v117 = *(v165 + 16);
  v118 = MEMORY[0x1E69E7CC0];
  while (v117)
  {
    if (!*(v116 + 16))
    {
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_554();
    if (v120)
    {
      v91 = *(v119 + 8);
      OUTLINED_FUNCTION_594(*(v119 + 16));
      sub_1C75504FC();
      sub_1C75504FC();
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v171.n128_u64[0] = v118;
      if ((v121 & 1) == 0)
      {
        v122 = OUTLINED_FUNCTION_99();
        sub_1C716DC6C(v122, v123, v124, v125, v126, v127, v128);
      }

      OUTLINED_FUNCTION_568();
      if (v61)
      {
        OUTLINED_FUNCTION_143_0();
        sub_1C716DC6C(v131, v132, v133, v134, v135, v136, v137);
      }

      OUTLINED_FUNCTION_375();
      *(v129 + 48) = v164;
      *(v129 + 56) = 1;
      *(v129 + 64) = v20;
      *(v129 + 72) = v90;
      *(v129 + 80) = v41;
      v116 = v165;
      v118 = v130;
    }
  }

  OUTLINED_FUNCTION_565();
  v138 = MEMORY[0x1E69E7CC0];
  while (v91 != v118)
  {
    OUTLINED_FUNCTION_529();
    if (v61)
    {
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_271(v139);
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    v41 = v169;
    OUTLINED_FUNCTION_350();
    sub_1C702659C();
    v140 = *(v169 + 24);
    OUTLINED_FUNCTION_423();
    sub_1C70265F0();
    if (v140)
    {
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v171.n128_u64[0] = v138;
      if ((v141 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DC24();
        v138 = v171.n128_u64[0];
      }

      v41 = *(v138 + 16);
      OUTLINED_FUNCTION_305();
      if (v61)
      {
        OUTLINED_FUNCTION_15(v142);
        OUTLINED_FUNCTION_146();
        sub_1C716DC24();
        v138 = v171.n128_u64[0];
      }

      ++v118;
      *(v138 + 16) = v140;
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_228();
      sub_1C70267FC();
    }

    else
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      ++v118;
    }
  }

  v143 = 0;
  v144 = *(v162 + 16);
  v145 = MEMORY[0x1E69E7CC0];
LABEL_84:
  v146 = (v162 + 32 + (v143 << 6));
  while (v144 != v143)
  {
    if (v143 >= *(v162 + 16))
    {
      goto LABEL_112;
    }

    OUTLINED_FUNCTION_448(v146);
    if (v148)
    {
      v149 = OUTLINED_FUNCTION_232();
      sub_1C7026698(v149, v150);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21_11();
        sub_1C716DBE8();
      }

      OUTLINED_FUNCTION_274_0();
      if (v61)
      {
        OUTLINED_FUNCTION_49_6(v151);
        OUTLINED_FUNCTION_186();
        sub_1C716DBE8();
      }

      ++v143;
      *(v145 + 16) = v91;
      OUTLINED_FUNCTION_233((v145 + (v41 << 6)), v171, v172, v173[0], v173[1]);
      goto LABEL_84;
    }

    v146 = (v147 + 64);
    ++v143;
  }

  v152 = 0;
  v153 = v163;
  v154 = *(v163 + 16);
  while (v154 != v152)
  {
    if (v152 >= *(v153 + 16))
    {
      goto LABEL_113;
    }

    ++v152;
    OUTLINED_FUNCTION_280();
    if (v155 == 1)
    {
      OUTLINED_FUNCTION_447();
      OUTLINED_FUNCTION_481(v156);
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_580();
      if ((v157 & 1) == 0)
      {
        OUTLINED_FUNCTION_43_6();
        sub_1C716DBAC();
      }

      OUTLINED_FUNCTION_124_1();
      if (v61)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C716DBAC();
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_277(v158);
      *(v159 + 56) = 1;
      OUTLINED_FUNCTION_446(v159);
      v153 = v163;
    }
  }

  OUTLINED_FUNCTION_355(&v173[0].n128_i64[1]);
  v160[2] = v168;
  v160[3] = v167;
  OUTLINED_FUNCTION_329_0(v160);
  OUTLINED_FUNCTION_125();
}

void sub_1C700D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v23;
  a20 = v24;
  v393 = v20;
  v394 = v25;
  v27 = v26;
  v367 = v28;
  v406[1] = *MEMORY[0x1E69E9840];
  v378 = type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v377 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_140_1();
  v34 = OUTLINED_FUNCTION_119(v33);
  v382 = type metadata accessor for TimeExtendedToken(v34);
  OUTLINED_FUNCTION_3_0();
  v381 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v39);
  v40 = 0;
  v41 = *v27;
  OUTLINED_FUNCTION_165(v27[1]);
  v42 = v27[3];
  v387 = v27[2];
  OUTLINED_FUNCTION_319(v42);
  v385 = v43;
  OUTLINED_FUNCTION_302(v44);
  v45 = v27[7];
  v383 = v27[6];
  v368 = v45;
  v46 = v27[9];
  v380 = v27[8];
  v379 = v46;
  v47 = v41 + 32;
  v48 = *(v41 + 16);
  v372 = MEMORY[0x1E69E7CC0];
  v375 = v41 + 32;
  v376 = v48;
LABEL_2:
  v49 = v47 + 72 * v40;
  while (v48 != v40)
  {
    if (v40 >= *(v41 + 16))
    {
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
    }

    v50 = OUTLINED_FUNCTION_349();
    memcpy(v50, v51, 0x41uLL);
    v21 = v405.n128_u64[1];
    if (!v405.n128_u64[1])
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_74_1();
    if (!v52)
    {
      v70 = *(v21 + 16);
      v71 = OUTLINED_FUNCTION_129_1();
      sub_1C7025F3C(v71, v72);
      v73 = OUTLINED_FUNCTION_129_1();
      sub_1C7025F3C(v73, v74);
      goto LABEL_13;
    }

    v395 = v21;
    OUTLINED_FUNCTION_27_8();
    MEMORY[0x1EEE9AC00](v53);
    v364 = &v395;
    v365 = v54;
    v56 = (v55 + 63) >> 6;
    v57 = OUTLINED_FUNCTION_129_1();
    if (v59 <= 0xD)
    {
      sub_1C7025F3C(v57, v58);
      v60 = OUTLINED_FUNCTION_129_1();
      sub_1C7025F3C(v60, v61);
      sub_1C75504FC();
      OUTLINED_FUNCTION_127_2();
      sub_1C75504FC();
LABEL_9:
      OUTLINED_FUNCTION_318();
      MEMORY[0x1EEE9AC00](v62);
      v63 = OUTLINED_FUNCTION_73_1();
      sub_1C71FAC38(v63, v56, 8 * v56);
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_157();
      sub_1C71FB7FC(v64, v65, v66, v67);
      OUTLINED_FUNCTION_176();
      if (v20)
      {
LABEL_236:
        v362 = *(v69 - 256);
        swift_willThrow();

        __break(1u);
LABEL_237:

        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        __break(1u);
        return;
      }

      v22 = v68;

      v48 = v376;
      goto LABEL_11;
    }

    sub_1C7025F3C(v57, v58);
    v76 = OUTLINED_FUNCTION_129_1();
    sub_1C7025F3C(v76, v77);
    sub_1C75504FC();
    OUTLINED_FUNCTION_127_2();
    sub_1C75504FC();
    if (swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_9;
    }

    swift_slowAlloc();
    OUTLINED_FUNCTION_157();
    sub_1C71FD078(v78, v79, v80);
    OUTLINED_FUNCTION_176();
    if (v20)
    {
      goto LABEL_237;
    }

    v22 = v81;
    OUTLINED_FUNCTION_127_2();

    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    v48 = v376;
LABEL_11:
    v70 = *(v22 + 16);

LABEL_13:
    if (v70 > 0x63)
    {
      v75 = OUTLINED_FUNCTION_82_2();
      sub_1C7025F74(v75);
      if (v70 < v21 >> 1)
      {
        OUTLINED_FUNCTION_117_2(v401);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v396 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_31_7();
          sub_1C716D97C();
          v49 = v396;
        }

        v84 = *(v49 + 16);
        OUTLINED_FUNCTION_337();
        if (v86)
        {
          OUTLINED_FUNCTION_60_2(v85);
          sub_1C716D97C();
          v49 = v396;
        }

        ++v40;
        *(v49 + 16) = v21;
        OUTLINED_FUNCTION_301(v401);
        v88 = OUTLINED_FUNCTION_268(v49 + v84 * v87);
        memcpy(v88, v89, v90);
        v47 = v375;
        goto LABEL_2;
      }
    }

    else
    {
      sub_1C7025F74(&v402);
    }

    sub_1C7025F74(&v402);
LABEL_17:
    v49 += 72;
    ++v40;
  }

  v91 = 0;
  OUTLINED_FUNCTION_151();
  v93 = *(v92 + 16);
  v94 = v92 + 32;
  v371 = MEMORY[0x1E69E7CC0];
  v376 = v92 + 32;
  while (2)
  {
    v95 = v94 + 72 * v91;
LABEL_28:
    if (v93 != v91)
    {
      OUTLINED_FUNCTION_83_1();
      if (v86)
      {
        goto LABEL_227;
      }

      v96 = OUTLINED_FUNCTION_349();
      memcpy(v96, v97, 0x42uLL);
      v21 = v405.n128_u64[1];
      if (v405.n128_u64[1])
      {
        OUTLINED_FUNCTION_74_1();
        if (v98)
        {
          v395 = v21;
          OUTLINED_FUNCTION_27_8();
          MEMORY[0x1EEE9AC00](v99);
          OUTLINED_FUNCTION_120_1();
          v101 = v100 >> 6;
          v102 = OUTLINED_FUNCTION_129_1();
          if (v104 <= 0xD)
          {
            sub_1C7025FF8(v102, v103);
            OUTLINED_FUNCTION_127_2();
            sub_1C75504FC();
            v105 = OUTLINED_FUNCTION_129_1();
            sub_1C7025FF8(v105, v106);
            isStackAllocationSafe = sub_1C75504FC();
            goto LABEL_34;
          }

          sub_1C7025FF8(v102, v103);
          OUTLINED_FUNCTION_127_2();
          sub_1C75504FC();
          v118 = OUTLINED_FUNCTION_129_1();
          sub_1C7025FF8(v118, v119);
          sub_1C75504FC();
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if (isStackAllocationSafe)
          {
LABEL_34:
            MEMORY[0x1EEE9AC00](isStackAllocationSafe);
            v108 = OUTLINED_FUNCTION_73_1();
            sub_1C71FAC38(v108, v101, v22);
            v109 = OUTLINED_FUNCTION_249();
            OUTLINED_FUNCTION_132_2(v109, v110, v21);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_236;
            }

            v22 = v111;
            OUTLINED_FUNCTION_127_2();
          }

          else
          {
            swift_slowAlloc();
            OUTLINED_FUNCTION_157();
            sub_1C71FD078(v120, v121, v122);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_237;
            }

            v22 = v123;
            OUTLINED_FUNCTION_127_2();

            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          v112 = *(v22 + 16);
        }

        else
        {
          v112 = *(v21 + 16);
          v113 = OUTLINED_FUNCTION_129_1();
          sub_1C7025FF8(v113, v114);
          v115 = OUTLINED_FUNCTION_129_1();
          sub_1C7025FF8(v115, v116);
        }

        if (v112 > 0x63)
        {
          v117 = OUTLINED_FUNCTION_82_2();
          sub_1C7026030(v117);
          if (v112 < v21 >> 1)
          {
            OUTLINED_FUNCTION_117_2(&v400);
            v124 = swift_isUniquelyReferenced_nonNull_native();
            v396 = v95;
            if ((v124 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_7();
              sub_1C716D940();
              v95 = v396;
            }

            v125 = *(v95 + 16);
            OUTLINED_FUNCTION_337();
            if (v86)
            {
              OUTLINED_FUNCTION_60_2(v126);
              sub_1C716D940();
              v95 = v396;
            }

            v91 = (v91 + 1);
            *(v95 + 16) = v21;
            OUTLINED_FUNCTION_301(&v400);
            v128 = OUTLINED_FUNCTION_267(v95 + v125 * v127);
            memcpy(v128, v129, v130);
            v94 = v376;
            continue;
          }
        }

        else
        {
          sub_1C7026030(&v402);
        }

        sub_1C7026030(&v402);
      }

      v95 += 72;
      v91 = (v91 + 1);
      goto LABEL_28;
    }

    break;
  }

  v131 = 0;
  OUTLINED_FUNCTION_266();
  v133 = *(v132 + 16);
  v134 = v132 + 32;
  v370 = MEMORY[0x1E69E7CC0];
  v388 = v132 + 32;
  while (2)
  {
    v135 = v134 + 56 * v131;
LABEL_53:
    if (v133 != v131)
    {
      OUTLINED_FUNCTION_83_1();
      if (v86)
      {
        goto LABEL_228;
      }

      OUTLINED_FUNCTION_371();
      if (v95)
      {
        OUTLINED_FUNCTION_74_1();
        if (v136)
        {
          v93 = v366;
          v395 = v95;
          OUTLINED_FUNCTION_27_8();
          MEMORY[0x1EEE9AC00](v137);
          OUTLINED_FUNCTION_120_1();
          v139 = v138 >> 6;
          v140 = OUTLINED_FUNCTION_129_1();
          if (v142 <= 0xD)
          {
            sub_1C70260B4(v140, v141);
            OUTLINED_FUNCTION_127_2();
            sub_1C75504FC();
            v143 = OUTLINED_FUNCTION_129_1();
            sub_1C70260B4(v143, v144);
            v145 = sub_1C75504FC();
            goto LABEL_59;
          }

          sub_1C70260B4(v140, v141);
          OUTLINED_FUNCTION_127_2();
          sub_1C75504FC();
          v155 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v155, v156);
          sub_1C75504FC();
          v145 = swift_stdlib_isStackAllocationSafe();
          if (v145)
          {
LABEL_59:
            MEMORY[0x1EEE9AC00](v145);
            v146 = OUTLINED_FUNCTION_73_1();
            sub_1C71FAC38(v146, v139, v22);
            v147 = OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_132_2(v147, v148, v95);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_236;
            }

            v21 = v149;
            OUTLINED_FUNCTION_127_2();
          }

          else
          {
            swift_slowAlloc();
            OUTLINED_FUNCTION_519();
            OUTLINED_FUNCTION_157();
            sub_1C71FD078(v157, v158, v159);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_237;
            }

            v21 = v160;
            OUTLINED_FUNCTION_127_2();

            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          OUTLINED_FUNCTION_486();
        }

        else
        {
          v95 = *(v95 + 16);
          v150 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v150, v151);
          v152 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v152, v153);
        }

        if (v95 > 0x63)
        {
          v154 = OUTLINED_FUNCTION_82_2();
          sub_1C70260EC(v154);
          if (v95 < v21 >> 1)
          {
            OUTLINED_FUNCTION_144_0(&v399);
            v161 = swift_isUniquelyReferenced_nonNull_native();
            v396 = v135;
            if ((v161 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_7();
              sub_1C716DD2C();
            }

            OUTLINED_FUNCTION_164_0();
            OUTLINED_FUNCTION_337();
            if (v86)
            {
              OUTLINED_FUNCTION_60_2(v162);
              sub_1C716DD2C();
              v163 = v396;
            }

            ++v131;
            *(v163 + 16) = v21;
            OUTLINED_FUNCTION_405(&v399);
            OUTLINED_FUNCTION_39_7(v164);
            v134 = v388;
            continue;
          }
        }

        else
        {
          sub_1C70260EC(&v402);
        }

        sub_1C70260EC(&v402);
      }

      v135 += 56;
      ++v131;
      goto LABEL_53;
    }

    break;
  }

  v165 = 0;
  v166 = *(v386 + 16);
  v167 = v386 + 64;
  v369 = MEMORY[0x1E69E7CC0];
  v373 = v166;
  v366[0] = v386 + 64;
LABEL_77:
  v168 = (v167 + 40 * v165);
  while (v166 != v165)
  {
    OUTLINED_FUNCTION_83_1();
    if (v86)
    {
      goto LABEL_229;
    }

    v21 = *v168;
    if (*v168)
    {
      v169 = *(v168 - 3);
      v387 = *(v168 - 4);
      OUTLINED_FUNCTION_382(*(v168 - 2));
      LODWORD(v375) = *(v168 - 8);
      v374 = *(v168 - 7);
      OUTLINED_FUNCTION_74_1();
      if (v170)
      {
        OUTLINED_FUNCTION_165(v366);
        v397 = v21;
        OUTLINED_FUNCTION_318();
        v171 = v93[4] & 0x3F;
        OUTLINED_FUNCTION_86_3();
        MEMORY[0x1EEE9AC00](v172);
        OUTLINED_FUNCTION_552();
        OUTLINED_FUNCTION_348();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v173 = sub_1C75504FC();
        if (v171 <= 0xD || (v173 = swift_stdlib_isStackAllocationSafe(), (v173 & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](v173);
          v174 = OUTLINED_FUNCTION_73_1();
          sub_1C71FAC38(v174, v95, &v363);
          OUTLINED_FUNCTION_362();
          OUTLINED_FUNCTION_132_2(v175, v176, v177);
          OUTLINED_FUNCTION_176();
          if (v20)
          {
            goto LABEL_236;
          }

          v95 = v178;
          OUTLINED_FUNCTION_127_2();

          OUTLINED_FUNCTION_151();
        }

        else
        {
          swift_slowAlloc();
          OUTLINED_FUNCTION_157();
          sub_1C71FD078(v180, v181, v182);
          OUTLINED_FUNCTION_176();
          if (v20)
          {
            goto LABEL_237;
          }

          v95 = v183;
          OUTLINED_FUNCTION_127_2();

          OUTLINED_FUNCTION_151();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v166 = v373;
        v22 = *(v95 + 16);
      }

      else
      {
        v22 = *(v21 + 16);
        OUTLINED_FUNCTION_348();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRetain_n();
      }

      if (v22 > 0x63)
      {
        OUTLINED_FUNCTION_135_1();
        v95 = *(v179 + 16);

        if (v22 < v95 >> 1)
        {
          OUTLINED_FUNCTION_144_0(&v398);
          v184 = swift_isUniquelyReferenced_nonNull_native();
          v402.n128_u64[0] = v168;
          if ((v184 & 1) == 0)
          {
            OUTLINED_FUNCTION_11_10();
            sub_1C716DCF0();
            v168 = v402.n128_u64[0];
          }

          OUTLINED_FUNCTION_164_0();
          v22 = v168 + 1;
          if (v168 >= v185 >> 1)
          {
            OUTLINED_FUNCTION_41_5(v185);
            OUTLINED_FUNCTION_186();
            sub_1C716DCF0();
            v186 = v402.n128_u64[0];
          }

          ++v165;
          *(v186 + 16) = v22;
          v369 = v186;
          OUTLINED_FUNCTION_378();
          *(v187 + 32) = v188;
          *(v187 + 40) = v169;
          OUTLINED_FUNCTION_433(v187);
          OUTLINED_FUNCTION_293(v189);
          OUTLINED_FUNCTION_432(v190);
          *(v191 + 64) = v21;
          v167 = v366[0];
          goto LABEL_77;
        }
      }

      else
      {
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRelease_n();
      }
    }

    v168 += 5;
    ++v165;
  }

  v192 = 0;
  v193 = *(v385 + 16);
  v194 = v385 + 32;
  v376 = MEMORY[0x1E69E7CC0];
  v388 = v385 + 32;
  while (2)
  {
    v195 = v194 + 56 * v192;
LABEL_102:
    if (v193 != v192)
    {
      OUTLINED_FUNCTION_83_1();
      if (v86)
      {
        goto LABEL_230;
      }

      OUTLINED_FUNCTION_371();
      if (v95)
      {
        OUTLINED_FUNCTION_74_1();
        if (v196)
        {
          v93 = v366;
          v395 = v95;
          OUTLINED_FUNCTION_27_8();
          MEMORY[0x1EEE9AC00](v197);
          OUTLINED_FUNCTION_120_1();
          v199 = v198 >> 6;
          v200 = OUTLINED_FUNCTION_129_1();
          if (v202 <= 0xD)
          {
            sub_1C70260B4(v200, v201);
            OUTLINED_FUNCTION_127_2();
            sub_1C75504FC();
            v203 = OUTLINED_FUNCTION_129_1();
            sub_1C70260B4(v203, v204);
            v205 = sub_1C75504FC();
            goto LABEL_108;
          }

          sub_1C70260B4(v200, v201);
          OUTLINED_FUNCTION_127_2();
          sub_1C75504FC();
          v215 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v215, v216);
          sub_1C75504FC();
          v205 = swift_stdlib_isStackAllocationSafe();
          if (v205)
          {
LABEL_108:
            MEMORY[0x1EEE9AC00](v205);
            v206 = OUTLINED_FUNCTION_73_1();
            sub_1C71FAC38(v206, v199, v22);
            v207 = OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_132_2(v207, v208, v95);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_236;
            }

            v21 = v209;
            OUTLINED_FUNCTION_127_2();
          }

          else
          {
            swift_slowAlloc();
            OUTLINED_FUNCTION_519();
            OUTLINED_FUNCTION_157();
            sub_1C71FD078(v217, v218, v219);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_237;
            }

            v21 = v220;
            OUTLINED_FUNCTION_127_2();

            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          OUTLINED_FUNCTION_486();
        }

        else
        {
          v95 = *(v95 + 16);
          v210 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v210, v211);
          v212 = OUTLINED_FUNCTION_129_1();
          sub_1C70260B4(v212, v213);
        }

        if (v95 > 0x63)
        {
          v214 = OUTLINED_FUNCTION_82_2();
          sub_1C70260EC(v214);
          if (v95 < v21 >> 1)
          {
            OUTLINED_FUNCTION_144_0(&v403);
            v221 = swift_isUniquelyReferenced_nonNull_native();
            v396 = v195;
            if ((v221 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_7();
              sub_1C716DD2C();
            }

            OUTLINED_FUNCTION_164_0();
            OUTLINED_FUNCTION_337();
            if (v86)
            {
              OUTLINED_FUNCTION_60_2(v222);
              sub_1C716DD2C();
              v223 = v396;
            }

            ++v192;
            *(v223 + 16) = v21;
            OUTLINED_FUNCTION_405(&v403);
            OUTLINED_FUNCTION_39_7(v224);
            v194 = v388;
            continue;
          }
        }

        else
        {
          sub_1C70260EC(&v402);
        }

        sub_1C70260EC(&v402);
      }

      v195 += 56;
      ++v192;
      goto LABEL_102;
    }

    break;
  }

  v225 = 0;
  OUTLINED_FUNCTION_368();
  v375 = MEMORY[0x1E69E7CC0];
  while (v22 != v225)
  {
    OUTLINED_FUNCTION_529();
    if (v86)
    {
      goto LABEL_231;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_271(v226);
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    v21 = v392;
    OUTLINED_FUNCTION_296();
    sub_1C702659C();
    v95 = *(v21 + *(v382 + 48));
    if (!v95)
    {
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_74_1();
    if (v227)
    {
      OUTLINED_FUNCTION_469();
      v228 = sub_1C75504FC();
      sub_1C72B8CBC(v228, v20);
      OUTLINED_FUNCTION_507();

      OUTLINED_FUNCTION_486();
    }

    else
    {
      v95 = *(v95 + 16);
    }

    if (v95 < 0x64)
    {
LABEL_133:
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_325();
      sub_1C70265F0();
LABEL_135:
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v225;
      continue;
    }

    OUTLINED_FUNCTION_135_1();
    v21 = *(v229 + 16);
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_325();
    sub_1C70265F0();
    if (v95 >= v21 >> 1)
    {
      goto LABEL_135;
    }

    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
    OUTLINED_FUNCTION_117_2(&v402.n128_i64[1]);
    v230 = swift_isUniquelyReferenced_nonNull_native();
    v402.n128_u64[0] = v95;
    if ((v230 & 1) == 0)
    {
      v231 = OUTLINED_FUNCTION_16_10();
      sub_1C716DCA8(v231, v232, v233);
      v95 = v402.n128_u64[0];
    }

    OUTLINED_FUNCTION_105_2();
    if (v86)
    {
      OUTLINED_FUNCTION_41_5(v234);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DCA8(v235, v236, v237);
      v95 = v402.n128_u64[0];
    }

    ++v225;
    *(v95 + 16) = v21;
    v375 = v95;
    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
  }

  v238 = 0;
  v239 = *(v383 + 16);
  v240 = v383 + 80;
  v382 = MEMORY[0x1E69E7CC0];
  v384 = v239;
  v381 = v383 + 80;
LABEL_142:
  v241 = (v240 + 56 * v238);
  while (v239 != v238)
  {
    OUTLINED_FUNCTION_114_1();
    if (v238 >= v242)
    {
      goto LABEL_232;
    }

    v21 = *(v241 - 1);
    if (v21)
    {
      v243 = *(v241 - 5);
      OUTLINED_FUNCTION_165(*(v241 - 6));
      v387 = *(v241 - 4);
      LODWORD(v386) = *(v241 - 24);
      v244 = *(v241 - 2);
      LODWORD(v385) = *v241;
      OUTLINED_FUNCTION_74_1();
      if (v245)
      {
        v391 = v366;
        v397 = v21;
        OUTLINED_FUNCTION_318();
        v246 = v93[4] & 0x3F;
        OUTLINED_FUNCTION_86_3();
        MEMORY[0x1EEE9AC00](v247);
        OUTLINED_FUNCTION_552();
        v392 = v248;
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v249 = sub_1C75504FC();
        if (v246 <= 0xD || (v249 = swift_stdlib_isStackAllocationSafe(), (v249 & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](v249);
          v250 = OUTLINED_FUNCTION_73_1();
          sub_1C71FAC38(v250, v95, 8 * v95);
          OUTLINED_FUNCTION_362();
          OUTLINED_FUNCTION_132_2(v251, v252, v253);
          OUTLINED_FUNCTION_176();
          if (v20)
          {
            goto LABEL_236;
          }

          v95 = v254;
          OUTLINED_FUNCTION_127_2();

          OUTLINED_FUNCTION_147_0();
        }

        else
        {
          swift_slowAlloc();
          OUTLINED_FUNCTION_157();
          sub_1C71FD078(v257, v258, v259);
          OUTLINED_FUNCTION_176();
          if (v20)
          {
            goto LABEL_237;
          }

          v95 = v260;
          OUTLINED_FUNCTION_127_2();

          OUTLINED_FUNCTION_147_0();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v239 = v384;
        v243 = v392;
        v255 = *(v95 + 16);
      }

      else
      {
        v255 = *(v21 + 16);
        OUTLINED_FUNCTION_348();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRetain_n();
      }

      if (v255 > 0x63)
      {
        OUTLINED_FUNCTION_135_1();
        v95 = *(v256 + 16);

        if (v255 < v95 >> 1)
        {
          OUTLINED_FUNCTION_144_0(v406);
          v261 = swift_isUniquelyReferenced_nonNull_native();
          v402.n128_u64[0] = v241;
          if ((v261 & 1) == 0)
          {
            v262 = OUTLINED_FUNCTION_11_10();
            sub_1C716DC6C(v262, v263, v264, v265, v266, v267, v268);
            v241 = v402.n128_u64[0];
          }

          OUTLINED_FUNCTION_164_0();
          if (v241 >= v269 >> 1)
          {
            OUTLINED_FUNCTION_41_5(v269);
            OUTLINED_FUNCTION_186();
            sub_1C716DC6C(v276, v277, v278, v279, v280, v281, v282);
            v270 = v402.n128_u64[0];
          }

          ++v238;
          *(v270 + 16) = v241 + 1;
          OUTLINED_FUNCTION_405(v406);
          OUTLINED_FUNCTION_558();
          *(v271 + 32) = v272;
          *(v271 + 40) = v243;
          OUTLINED_FUNCTION_378();
          *(v273 + 48) = v274;
          OUTLINED_FUNCTION_293(v273);
          *(v275 + 64) = v244;
          *(v275 + 72) = v21;
          *(v275 + 80) = v385;
          v240 = v381;
          goto LABEL_142;
        }
      }

      else
      {
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRelease_n();
      }
    }

    v241 += 56;
    ++v238;
  }

  v283 = 0;
  v284 = v368;
  v285 = *(v368 + 16);
  OUTLINED_FUNCTION_165(MEMORY[0x1E69E7CC0]);
  while (v285 != v283)
  {
    if (v283 >= *(v284 + 16))
    {
      goto LABEL_233;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    v21 = v390;
    OUTLINED_FUNCTION_296();
    sub_1C702659C();
    v286 = *(v21 + *(v378 + 28));
    if (!v286)
    {
      goto LABEL_174;
    }

    OUTLINED_FUNCTION_74_1();
    if (v287)
    {
      OUTLINED_FUNCTION_469();
      v288 = sub_1C75504FC();
      sub_1C72B8CBC(v288, v20);
      OUTLINED_FUNCTION_507();

      OUTLINED_FUNCTION_486();
    }

    else
    {
      v286 = *(v286 + 16);
    }

    if (v286 < 0x64)
    {
LABEL_174:
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
LABEL_176:
      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_192();
      sub_1C70265F0();
      ++v283;
      continue;
    }

    OUTLINED_FUNCTION_135_1();
    v21 = *(v289 + 16);
    OUTLINED_FUNCTION_2_11();
    sub_1C70265F0();
    if (v286 >= v21 >> 1)
    {
      goto LABEL_176;
    }

    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_192();
    sub_1C70267FC();
    OUTLINED_FUNCTION_117_2(&a11);
    v290 = swift_isUniquelyReferenced_nonNull_native();
    v402.n128_u64[0] = v286;
    if ((v290 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_10();
      sub_1C716DC24();
      v286 = v402.n128_u64[0];
    }

    OUTLINED_FUNCTION_105_2();
    if (v86)
    {
      OUTLINED_FUNCTION_41_5(v291);
      OUTLINED_FUNCTION_116_0();
      sub_1C716DC24();
      v286 = v402.n128_u64[0];
    }

    ++v283;
    *(v286 + 16) = v21;
    v388 = v286;
    OUTLINED_FUNCTION_0_15();
    sub_1C70267FC();
  }

  v292 = 0;
  OUTLINED_FUNCTION_449();
  v294 = *(v293 + 16);
  v295 = v293 + 32;
  v389 = MEMORY[0x1E69E7CC0];
  v392 = v293 + 32;
  while (2)
  {
    v296 = v295 + (v292 << 6);
LABEL_184:
    if (v294 != v292)
    {
      OUTLINED_FUNCTION_114_1();
      if (v292 >= v297)
      {
        goto LABEL_234;
      }

      v298 = *v296;
      v299 = *(v296 + 16);
      v300 = *(v296 + 32);
      v405 = *(v296 + 48);
      v403 = v299;
      v404 = v300;
      v402 = v298;
      v301 = v405.n128_u64[1];
      if (v405.n128_u64[1])
      {
        OUTLINED_FUNCTION_74_1();
        if (v302)
        {
          v395 = v301;
          OUTLINED_FUNCTION_27_8();
          MEMORY[0x1EEE9AC00](v303);
          v364 = &v395;
          v365 = v304;
          v306 = (v305 + 63) >> 6;
          v307 = OUTLINED_FUNCTION_129_1();
          if (v309 <= 0xD)
          {
            sub_1C7026698(v307, v308);
            OUTLINED_FUNCTION_127_2();
            sub_1C75504FC();
            v310 = OUTLINED_FUNCTION_129_1();
            sub_1C7026698(v310, v311);
            v312 = sub_1C75504FC();
            goto LABEL_190;
          }

          sub_1C7026698(v307, v308);
          OUTLINED_FUNCTION_127_2();
          sub_1C75504FC();
          v322 = OUTLINED_FUNCTION_129_1();
          sub_1C7026698(v322, v323);
          sub_1C75504FC();
          v312 = swift_stdlib_isStackAllocationSafe();
          if (v312)
          {
LABEL_190:
            MEMORY[0x1EEE9AC00](v312);
            sub_1C71FAC38(0, v306, v366 - ((8 * v306 + 15) & 0x3FFFFFFFFFFFFFF0));
            OUTLINED_FUNCTION_296();
            OUTLINED_FUNCTION_132_2(v313, v314, v315);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_236;
            }

            v21 = v316;
            OUTLINED_FUNCTION_127_2();
          }

          else
          {
            swift_slowAlloc();
            OUTLINED_FUNCTION_519();
            OUTLINED_FUNCTION_157();
            sub_1C71FD078(v324, v325, v326);
            OUTLINED_FUNCTION_176();
            if (v20)
            {
              goto LABEL_237;
            }

            v21 = v327;
            OUTLINED_FUNCTION_127_2();

            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          OUTLINED_FUNCTION_486();
        }

        else
        {
          v301 = *(v301 + 16);
          v317 = OUTLINED_FUNCTION_129_1();
          sub_1C7026698(v317, v318);
          v319 = OUTLINED_FUNCTION_129_1();
          sub_1C7026698(v319, v320);
        }

        if (v301 > 0x63)
        {
          v321 = OUTLINED_FUNCTION_82_2();
          sub_1C70266D0(v321);
          if (v301 < v21 >> 1)
          {
            OUTLINED_FUNCTION_144_0(&a12);
            v328 = swift_isUniquelyReferenced_nonNull_native();
            v396 = v296;
            if ((v328 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_7();
              sub_1C716DBE8();
              v296 = v396;
            }

            OUTLINED_FUNCTION_164_0();
            OUTLINED_FUNCTION_337();
            if (v86)
            {
              OUTLINED_FUNCTION_60_2(v329);
              sub_1C716DBE8();
              v330 = v396;
            }

            ++v292;
            *(v330 + 16) = v21;
            v389 = v330;
            OUTLINED_FUNCTION_233((v330 + (v296 << 6)), v402, v403, v404, v405);
            v295 = v392;
            continue;
          }
        }

        else
        {
          sub_1C70266D0(&v402);
        }

        sub_1C70266D0(&v402);
      }

      v296 += 64;
      ++v292;
      goto LABEL_184;
    }

    break;
  }

  v331 = 0;
  OUTLINED_FUNCTION_306();
  v333 = *(v332 + 16);
  v334 = v332 + 64;
  v387 = MEMORY[0x1E69E7CC0];
  v386 = v332 + 64;
LABEL_208:
  v335 = (v334 + 40 * v331);
  while (v333 != v331)
  {
    OUTLINED_FUNCTION_114_1();
    if (v331 >= v336)
    {
      goto LABEL_235;
    }

    v337 = *v335;
    if (*v335)
    {
      v339 = *(v335 - 4);
      v338 = *(v335 - 3);
      v340 = *(v335 - 2);
      LODWORD(v392) = *(v335 - 8);
      LODWORD(v391) = *(v335 - 7);
      LODWORD(v390) = *(v335 - 6);
      OUTLINED_FUNCTION_74_1();
      if (v341)
      {
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_428();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_469();
        v342 = sub_1C72B8CBC(v337, v20);

        v343 = *(v342 + 16);
      }

      else
      {
        v343 = *(v337 + 16);
        OUTLINED_FUNCTION_357();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRetain_n();
      }

      if (v343 > 0x63)
      {
        OUTLINED_FUNCTION_135_1();
        v345 = *(v344 + 16);

        if (v343 < v345 >> 1)
        {
          OUTLINED_FUNCTION_117_2(&a10);
          v346 = swift_isUniquelyReferenced_nonNull_native();
          v402.n128_u64[0] = v335;
          if ((v346 & 1) == 0)
          {
            OUTLINED_FUNCTION_16_10();
            sub_1C716DBAC();
            v335 = v402.n128_u64[0];
          }

          v348 = v335[2];
          v347 = v335[3];
          if (v348 >= v347 >> 1)
          {
            OUTLINED_FUNCTION_41_5(v347);
            OUTLINED_FUNCTION_321();
            sub_1C716DBAC();
            v335 = v402.n128_u64[0];
          }

          ++v331;
          v335[2] = v348 + 1;
          v387 = v335;
          v349 = &v335[5 * v348];
          v349[4] = v339;
          v349[5] = v338;
          v349[6] = v340;
          OUTLINED_FUNCTION_570(v349);
          OUTLINED_FUNCTION_451(v350);
          *(v351 + 58) = v390;
          *(v351 + 64) = v337;
          goto LABEL_208;
        }
      }

      else
      {
        OUTLINED_FUNCTION_290();
        swift_bridgeObjectRelease_n();
      }
    }

    v335 += 5;
    ++v331;
  }

  OUTLINED_FUNCTION_127_2();

  v352 = v367;
  v353 = v371;
  *v367 = v372;
  v352[1] = v353;
  v354 = v369;
  v352[2] = v370;
  v352[3] = v354;
  v355 = v375;
  v352[4] = v376;
  v352[5] = v355;
  OUTLINED_FUNCTION_558();
  *(v356 + 48) = v358;
  *(v356 + 56) = v357;
  OUTLINED_FUNCTION_378();
  *(v359 + 64) = v361;
  *(v359 + 72) = v360;
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_125();
}

void ExtendedTokenCollection.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v22;
  a20 = v23;
  v25 = OUTLINED_FUNCTION_424(v24);
  type metadata accessor for PartOfWeekExtendedToken(v25);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_140_1();
  v29 = OUTLINED_FUNCTION_119(v28);
  v238 = type metadata accessor for TimeExtendedToken(v29);
  OUTLINED_FUNCTION_3_0();
  v244 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v33);
  v34 = 0;
  v36 = *v20;
  v35 = v20[1];
  v245 = v20[2];
  OUTLINED_FUNCTION_319(v20[3]);
  v246 = v37;
  OUTLINED_FUNCTION_165(v38);
  OUTLINED_FUNCTION_586(v20[7]);
  v240 = v39;
  OUTLINED_FUNCTION_538(v40);
  v41 = v36 + 32;
  v42 = *(v36 + 16);
  v248 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v43 = (v41 + 72 * v34);
  while (v42 != v34)
  {
    if (v34 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_107;
    }

    memcpy(v251, v43, 0x41uLL);
    v255 = &type metadata for PersonExtendedToken;
    v44 = sub_1C7026850();
    OUTLINED_FUNCTION_585(v44);
    v252 = swift_allocObject();
    memmove(&v252[1], v43, 0x41uLL);
    v45 = OUTLINED_FUNCTION_240_0();
    sub_1C7025F3C(v45, v46);
    v47 = OUTLINED_FUNCTION_240_0();
    sub_1C7025F3C(v47, v48);
    OUTLINED_FUNCTION_17_11();
    v49();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v252);
      sub_1C7025F74(v251);
LABEL_104:

      goto LABEL_105;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&a12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D97C();
        v20 = a10;
      }

      v52 = v20[2];
      v51 = v20[3];
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v51);
        OUTLINED_FUNCTION_104_1(&a12);
        sub_1C716D97C();
        v53 = v248;
        v20 = a10;
      }

      ++v34;
      v20[2] = v53;
      OUTLINED_FUNCTION_301(&a12);
      memcpy(v20 + v52 * v54 + 32, v251, 0x41uLL);
      v41 = v36 + 32;
      goto LABEL_2;
    }

    sub_1C7025F74(v251);
    v43 += 72;
    ++v34;
  }

  v55 = 0;
  v56 = *(v35 + 16);
  OUTLINED_FUNCTION_330(MEMORY[0x1E69E7CC0]);
  v57 = v35 + 32;
LABEL_14:
  v58 = (v57 + 72 * v55);
  while (v56 != v55)
  {
    if (v55 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_121;
    }

    memcpy(v251, v58, 0x42uLL);
    v255 = &type metadata for PetExtendedToken;
    v59 = sub_1C70268A4();
    OUTLINED_FUNCTION_585(v59);
    v252 = swift_allocObject();
    memmove(&v252[1], v58, 0x42uLL);
    v60 = OUTLINED_FUNCTION_240_0();
    sub_1C7025FF8(v60, v61);
    v62 = OUTLINED_FUNCTION_240_0();
    sub_1C7025FF8(v62, v63);
    OUTLINED_FUNCTION_17_11();
    v64();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v252);
      OUTLINED_FUNCTION_192();

      sub_1C7026030(v251);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&v255);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v20;
      v247 = v57;
      if ((v65 & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716D940();
        v20 = a10;
      }

      v67 = v20[2];
      v66 = v20[3];
      if (v67 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v66);
        OUTLINED_FUNCTION_146();
        sub_1C716D940();
        v20 = a10;
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_301(&v255);
      memcpy(v20 + v67 * v68 + 32, v251, 0x42uLL);
      v57 = v247;
      goto LABEL_14;
    }

    sub_1C7026030(v251);
    v58 += 72;
    ++v55;
  }

  v69 = 0;
  v70 = v245;
  v71 = v245[2];
  v236 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v72 = &v245[7 * v69 + 4];
  while (v71 != v69)
  {
    v73 = v70[2];
    if (v69 >= v73)
    {
      __break(1u);
      goto LABEL_135;
    }

    v74 = OUTLINED_FUNCTION_272();
    v78 = OUTLINED_FUNCTION_587(v75, v74, v76, v77);
    OUTLINED_FUNCTION_585(v78);
    OUTLINED_FUNCTION_439();
    v252 = swift_allocObject();
    OUTLINED_FUNCTION_398(v252, v72[3].n128_u64[0], v72[2], v72[1], *v72);
    v79 = OUTLINED_FUNCTION_240_0();
    sub_1C70260B4(v79, v80);
    v81 = OUTLINED_FUNCTION_240_0();
    sub_1C70260B4(v81, v82);
    OUTLINED_FUNCTION_17_11();
    v83();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v252);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      sub_1C70260EC(v251);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(v251);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v20;
      if ((v84 & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
        v20 = a10;
      }

      v85 = v20[3];
      if (v20[2] >= v85 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v85);
        OUTLINED_FUNCTION_146();
        sub_1C716DD2C();
        v20 = a10;
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_404(v251);
      OUTLINED_FUNCTION_47_8(v86, v251[0], v251[1], v251[2]);
      v70 = v245;
      goto LABEL_27;
    }

    sub_1C70260EC(v251);
    v72 = (v72 + 56);
    ++v69;
  }

  OUTLINED_FUNCTION_373();
  v235 = MEMORY[0x1E69E7CC0];
  v89 = v88 + 64;
  v234 = v88 + 64;
LABEL_40:
  for (i = (v89 + 40 * v87); ; i += 5)
  {
    OUTLINED_FUNCTION_266();
    if (v91 == v92)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v94 >= v93)
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      return;
    }

    v20 = *(i - 4);
    v95 = *(i - 3);
    v96 = *(i - 2);
    v97 = *(i - 8);
    v98 = *(i - 7);
    v99 = *i;
    v251[1].n128_u64[1] = &type metadata for GenericLocationExtendedToken;
    v251[2].n128_u64[0] = sub_1C702694C();
    OUTLINED_FUNCTION_328();
    v100 = swift_allocObject();
    v251[0].n128_u64[0] = v100;
    v245 = v20;
    *(v100 + 16) = v20;
    *(v100 + 24) = v95;
    *(v100 + 32) = v96;
    *(v100 + 40) = v97;
    *(v100 + 41) = v98;
    *(v100 + 48) = v99;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_17_11();
    v101();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v251);
      OUTLINED_FUNCTION_464();

      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&v250);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v102 & 1) == 0)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1C716DCF0();
        OUTLINED_FUNCTION_182();
      }

      v104 = v20[2];
      v103 = v20[3];
      v105 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        OUTLINED_FUNCTION_15(v103);
        v20 = v249;
        OUTLINED_FUNCTION_104_1(&v250);
        sub_1C716DCF0();
        OUTLINED_FUNCTION_182();
      }

      v20[2] = v105;
      OUTLINED_FUNCTION_535(&v250);
      v107 = v20 + v104 * v106;
      *(v107 + 4) = v245;
      *(v107 + 5) = v95;
      *(v107 + 6) = v96;
      v107[56] = v97;
      v107[57] = v98;
      *(v107 + 8) = v99;
      v89 = v234;
      goto LABEL_40;
    }
  }

  v108 = 0;
  v109 = v246[2];
  OUTLINED_FUNCTION_377(MEMORY[0x1E69E7CC0]);
  v110 = 56;
LABEL_53:
  for (j = (v246 + v108 * v110 + 32); ; j = (j + 56))
  {
    OUTLINED_FUNCTION_151();
    if (v109 == v108)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v108 >= v113)
    {
      goto LABEL_138;
    }

    v114 = OUTLINED_FUNCTION_272();
    v118 = OUTLINED_FUNCTION_587(v115, v114, v116, v117);
    OUTLINED_FUNCTION_585(v118);
    OUTLINED_FUNCTION_439();
    v252 = swift_allocObject();
    OUTLINED_FUNCTION_398(v252, j[3].n128_u64[0], j[2], j[1], *j);
    v119 = OUTLINED_FUNCTION_240_0();
    sub_1C70260B4(v119, v120);
    v121 = OUTLINED_FUNCTION_240_0();
    sub_1C70260B4(v121, v122);
    OUTLINED_FUNCTION_17_11();
    v123();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v252);
      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      sub_1C70260EC(v251);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&v257);
      v124 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v20;
      if ((v124 & 1) == 0)
      {
        OUTLINED_FUNCTION_12_13();
        sub_1C716DD2C();
        v20 = a10;
      }

      v125 = v20[3];
      if (v20[2] >= v125 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v125);
        OUTLINED_FUNCTION_146();
        sub_1C716DD2C();
        v20 = a10;
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_404(&v257);
      OUTLINED_FUNCTION_47_8(v126, v251[0], v251[1], v251[2]);
      goto LABEL_53;
    }

    sub_1C70260EC(v251);
    ++v108;
  }

  v127 = 0;
  v128 = *(v112 + 16);
  v246 = MEMORY[0x1E69E7CC0];
  v129 = v238;
  while (v128 != v127)
  {
    if (v127 >= *(v112 + 16))
    {
      goto LABEL_139;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_521(v130);
    OUTLINED_FUNCTION_4_9();
    sub_1C702659C();
    v251[1].n128_u64[1] = v129;
    OUTLINED_FUNCTION_67_4();
    v251[2].n128_u64[0] = sub_1C70259B4(&qword_1EDD0A7D0, v131, protocol conformance descriptor for TimeExtendedToken);
    __swift_allocate_boxed_opaque_existential_0(v251);
    OUTLINED_FUNCTION_400();
    sub_1C702659C();
    OUTLINED_FUNCTION_17_11();
    v132();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v251);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v20)
    {
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      OUTLINED_FUNCTION_117_2(&a9);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v133 & 1) == 0)
      {
        v134 = OUTLINED_FUNCTION_59_2();
        sub_1C716DCA8(v134, v135, v136);
        OUTLINED_FUNCTION_182();
      }

      v137 = v20[3];
      if (v20[2] >= v137 >> 1)
      {
        OUTLINED_FUNCTION_15(v137);
        v20 = v249;
        OUTLINED_FUNCTION_146();
        sub_1C716DCA8(v138, v139, v140);
        OUTLINED_FUNCTION_182();
      }

      OUTLINED_FUNCTION_440();
      v246 = v20;
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      v129 = v238;
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v127;
    }

    OUTLINED_FUNCTION_151();
  }

  OUTLINED_FUNCTION_513(&v254);
  v244 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_382(v141 + 80);
LABEL_79:
  for (k = (v142 + 56 * v143); ; k += 56)
  {
    OUTLINED_FUNCTION_151();
    if (v145 == v146)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v148 >= v147)
    {
      goto LABEL_140;
    }

    v20 = *(k - 6);
    v149 = *(k - 5);
    v150 = *(k - 4);
    v151 = *(k - 24);
    v153 = *(k - 2);
    v152 = *(k - 1);
    v154 = *k;
    v251[1].n128_u64[1] = &type metadata for PartOfDayExtendedToken;
    v251[2].n128_u64[0] = sub_1C70269A0();
    OUTLINED_FUNCTION_520();
    v155 = swift_allocObject();
    v251[0].n128_u64[0] = v155;
    *(v155 + 16) = v20;
    *(v155 + 24) = v149;
    *(v155 + 32) = v150;
    *(v155 + 40) = v151;
    *(v155 + 48) = v153;
    *(v155 + 56) = v152;
    *(v155 + 64) = v154;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_348();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_17_11();
    v156();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v251);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_308();

      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v20)
    {
      OUTLINED_FUNCTION_117_2(&v256);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v157 & 1) == 0)
      {
        v158 = OUTLINED_FUNCTION_59_2();
        sub_1C716DC6C(v158, v159, v160, v161, v162, v163, v164);
        OUTLINED_FUNCTION_182();
      }

      OUTLINED_FUNCTION_331();
      v166 = v20[2];
      v165 = v20[3];
      v167 = v166 + 1;
      if (v166 >= v165 >> 1)
      {
        OUTLINED_FUNCTION_15(v165);
        v20 = v249;
        OUTLINED_FUNCTION_104_1(&v256);
        sub_1C716DC6C(v170, v171, v172, v173, v174, v175, v176);
        OUTLINED_FUNCTION_331();
        OUTLINED_FUNCTION_182();
      }

      v20[2] = v167;
      OUTLINED_FUNCTION_404(&v256);
      OUTLINED_FUNCTION_378();
      *(v168 + 32) = v169;
      *(v168 + 40) = v149;
      *(v168 + 48) = v150;
      *(v168 + 56) = v151;
      *(v168 + 64) = v153;
      *(v168 + 72) = v152;
      *(v168 + 80) = v154;
      v142 = v239;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_331();
  }

  v177 = 0;
  v178 = v241;
  v179 = *(v241 + 16);
  while (v179 != v177)
  {
    if (v177 >= *(v178 + 16))
    {
      goto LABEL_141;
    }

    OUTLINED_FUNCTION_70_4();
    OUTLINED_FUNCTION_521(v180);
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    OUTLINED_FUNCTION_306();
    v251[1].n128_u64[1] = v181;
    OUTLINED_FUNCTION_66_6();
    v251[2].n128_u64[0] = sub_1C70259B4(&qword_1EC215E28, v182, protocol conformance descriptor for PartOfWeekExtendedToken);
    __swift_allocate_boxed_opaque_existential_0(v251);
    OUTLINED_FUNCTION_400();
    sub_1C702659C();
    OUTLINED_FUNCTION_17_11();
    v183();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v251);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_308();

      OUTLINED_FUNCTION_582();

      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v20)
    {
      OUTLINED_FUNCTION_0_15();
      OUTLINED_FUNCTION_402(&v253);
      sub_1C70267FC();
      OUTLINED_FUNCTION_117_2(&v254);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v184 & 1) == 0)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1C716DC24();
        OUTLINED_FUNCTION_182();
      }

      v185 = v20[3];
      if (v20[2] >= v185 >> 1)
      {
        OUTLINED_FUNCTION_15(v185);
        v20 = v249;
        OUTLINED_FUNCTION_146();
        sub_1C716DC24();
        OUTLINED_FUNCTION_182();
      }

      OUTLINED_FUNCTION_440();
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
    }

    else
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      ++v177;
    }

    v178 = v241;
  }

LABEL_107:
  v186 = 0;
  v187 = *(v240 + 16);
  v188 = MEMORY[0x1E69E7CC0];
LABEL_108:
  v189 = v240 + 32 + (v186 << 6);
  while (v187 != v186)
  {
    OUTLINED_FUNCTION_114_1();
    if (v186 >= v190)
    {
      goto LABEL_142;
    }

    v191 = *v189;
    v192 = *(v189 + 16);
    v193 = *(v189 + 48);
    v251[2] = *(v189 + 32);
    v251[3] = v193;
    v251[0] = v191;
    v251[1] = v192;
    v255 = &type metadata for TripExtendedToken;
    v256 = sub_1C70269F4();
    v194 = swift_allocObject();
    v252 = v194;
    v195 = *(v189 + 48);
    v197 = *v189;
    v196 = *(v189 + 16);
    *(v194 + 48) = *(v189 + 32);
    *(v194 + 64) = v195;
    *(v194 + 16) = v197;
    *(v194 + 32) = v196;
    v198 = OUTLINED_FUNCTION_240_0();
    sub_1C7026698(v198, v199);
    v200 = OUTLINED_FUNCTION_240_0();
    sub_1C7026698(v200, v201);
    OUTLINED_FUNCTION_17_11();
    v202();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(&v252);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_308();

      OUTLINED_FUNCTION_582();

      sub_1C70266D0(v251);
      goto LABEL_104;
    }

    OUTLINED_FUNCTION_485();
    if (v20)
    {
      v203 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v188;
      if ((v203 & 1) == 0)
      {
        OUTLINED_FUNCTION_21_11();
        sub_1C716DBE8();
        v188 = a10;
      }

      v204 = v188;
      v205 = v188[2];
      v206 = v204[3];
      if (v205 >= v206 >> 1)
      {
        OUTLINED_FUNCTION_49_6(v206);
        OUTLINED_FUNCTION_146();
        sub_1C716DBE8();
        v204 = a10;
      }

      ++v186;
      v204[2] = v205 + 1;
      OUTLINED_FUNCTION_233(&v204[8 * v205], v251[0], v251[1], v251[2], v251[3]);
      v188 = v207;
      goto LABEL_108;
    }

    sub_1C70266D0(v251);
    v189 += 64;
    ++v186;
  }

LABEL_121:
  OUTLINED_FUNCTION_513(&v251[2]);
  v242 = MEMORY[0x1E69E7CC0];
  v210 = v209 + 64;
LABEL_122:
  for (m = (v210 + 40 * v208); ; m += 5)
  {
    OUTLINED_FUNCTION_558();
    if (v212 == v213)
    {
      break;
    }

    OUTLINED_FUNCTION_114_1();
    if (v215 >= v214)
    {
      goto LABEL_143;
    }

    v216 = *(m - 4);
    v217 = *(m - 3);
    v218 = *(m - 2);
    v219 = *(m - 8);
    v220 = *(m - 7);
    v221 = *(m - 6);
    v222 = *m;
    v251[1].n128_u64[1] = &type metadata for EventExtendedToken;
    v251[2].n128_u64[0] = sub_1C7026A9C();
    OUTLINED_FUNCTION_328();
    v223 = swift_allocObject();
    v251[0].n128_u64[0] = v223;
    *(v223 + 16) = v216;
    *(v223 + 24) = v217;
    *(v223 + 32) = v218;
    *(v223 + 40) = v219;
    *(v223 + 41) = v220;
    *(v223 + 42) = v221;
    *(v223 + 48) = v222;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_17_11();
    v224();
    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1(v251);
      OUTLINED_FUNCTION_228();

      OUTLINED_FUNCTION_464();
      OUTLINED_FUNCTION_462();
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_192();

      OUTLINED_FUNCTION_308();

      goto LABEL_104;
    }

    OUTLINED_FUNCTION_483();
    if (v216)
    {
      OUTLINED_FUNCTION_117_2(&v253);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_353();
      if ((v225 & 1) == 0)
      {
        OUTLINED_FUNCTION_59_2();
        sub_1C716DBAC();
        OUTLINED_FUNCTION_182();
      }

      OUTLINED_FUNCTION_331();
      v227 = *(v216 + 2);
      v226 = *(v216 + 3);
      v228 = v227 + 1;
      if (v227 >= v226 >> 1)
      {
        OUTLINED_FUNCTION_15(v226);
        v216 = v249;
        OUTLINED_FUNCTION_104_1(&v253);
        sub_1C716DBAC();
        OUTLINED_FUNCTION_331();
        OUTLINED_FUNCTION_182();
      }

      *(v216 + 2) = v228;
      OUTLINED_FUNCTION_535(&v253);
      OUTLINED_FUNCTION_378();
      *(v229 + 32) = v230;
      *(v229 + 40) = v217;
      *(v229 + 48) = v218;
      *(v229 + 56) = v219;
      *(v229 + 57) = v220;
      *(v229 + 58) = v221;
      *(v229 + 64) = v222;
      OUTLINED_FUNCTION_306();
      goto LABEL_122;
    }

    OUTLINED_FUNCTION_331();
  }

LABEL_135:
  *v237 = v73;
  v237[1] = v243;
  v237[2] = v236;
  v237[3] = v235;
  v237[4] = v245;
  v237[5] = v246;
  v237[6] = v244;
  OUTLINED_FUNCTION_449();
  v232[7] = v233;
  v232[8] = v231;
  v232[9] = v242;
LABEL_105:
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

uint64_t static ExtendedTokenCollection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v21 = a1[6];
  v17 = a1[8];
  v15 = a1[9];
  v4 = a2[3];
  v5 = a2[5];
  v19 = a1[7];
  v20 = a2[6];
  v18 = a2[7];
  v16 = a2[8];
  v14 = a2[9];
  if ((sub_1C7002298(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_98_1();
  if ((sub_1C7002298(v6, v7) & 1) == 0)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_15_1();
  if ((sub_1C7002324(v8, v9) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C7002438(v2, v4) & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_57_0();
  if ((sub_1C7002324(v10, v11) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C70024FC(v3, v5) & 1) == 0)
  {
    return 0;
  }

  sub_1C7002C04(v21, v20);
  if ((v12 & 1) == 0 || (sub_1C7002FDC(v19, v18) & 1) == 0 || (sub_1C70032E8(v17, v16) & 1) == 0)
  {
    return 0;
  }

  return sub_1C70033FC(v15, v14);
}

uint64_t sub_1C700FF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001C7599D80 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C7599DA0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C7599DC0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001DLL && 0x80000001C7599DE0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C7599E00 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x80000001C7599E20 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001C7599E40 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001C7599E60 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x80000001C7599E80 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000013 && 0x80000001C7599EA0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C7551DBC();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C701025C(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 5:
    case 8:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7010348(uint64_t a1)
{
  sub_1C7551F3C();
  v1 = OUTLINED_FUNCTION_224();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7010390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C700FF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70103B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C7010254();
  *a1 = result;
  return result;
}

uint64_t sub_1C70103E0(uint64_t a1)
{
  v2 = sub_1C7026B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C701041C(uint64_t a1)
{
  v2 = sub_1C7026B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ExtendedTokenCollection.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E38, &qword_1C7560708);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_61_1();
  v22 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_70(v22, v23);
  v24 = sub_1C7026B2C();
  sub_1C75504FC();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_365();
  sub_1C755200C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E40, &qword_1C7560710);
  sub_1C7026B80();
  OUTLINED_FUNCTION_46_6();
  sub_1C7551D2C();
  if (v24)
  {
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E48, &qword_1C7560718);
    v25 = sub_1C7026C58();
    OUTLINED_FUNCTION_37_10(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215698, &qword_1C7560720);
    sub_1C7026D30();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E50, &qword_1C7560728);
    v26 = sub_1C7026E08();
    OUTLINED_FUNCTION_37_10(v26);
    OUTLINED_FUNCTION_534();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E58, &qword_1C7560730);
    v27 = sub_1C7026EE0();
    OUTLINED_FUNCTION_37_10(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E60, &qword_1C7560738);
    v28 = sub_1C7026F94();
    OUTLINED_FUNCTION_37_10(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E68, &qword_1C7560740);
    v29 = sub_1C702706C();
    OUTLINED_FUNCTION_37_10(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E70, &qword_1C7560748);
    v30 = sub_1C7027120();
    OUTLINED_FUNCTION_37_10(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E78, &qword_1C7560750);
    v31 = sub_1C70271F8();
    OUTLINED_FUNCTION_37_10(v31);
  }

  v32 = OUTLINED_FUNCTION_380();
  v33(v32, v20);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

void ExtendedTokenCollection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E90, &qword_1C7560758);
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v21 = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_70(v21, v22);
  sub_1C7026B2C();
  OUTLINED_FUNCTION_316();
  sub_1C7551FFC();
  if (v10)
  {
    OUTLINED_FUNCTION_394();
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v20)
    {

      if ((v17 & 1) == 0)
      {
LABEL_9:
        if (!v15)
        {
          goto LABEL_11;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else if (!v17)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_325();

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E40, &qword_1C7560710);
  LOBYTE(v53[0]) = 0;
  v23 = sub_1C70272D0();
  OUTLINED_FUNCTION_25_5(v23);
  v52 = v54[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E48, &qword_1C7560718);
  LOBYTE(v53[0]) = 1;
  v24 = sub_1C70273A8();
  OUTLINED_FUNCTION_25_5(v24);
  v51 = v54[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215698, &qword_1C7560720);
  LOBYTE(v53[0]) = 2;
  sub_1C7027480();
  OUTLINED_FUNCTION_316();
  sub_1C7551C1C();
  v50 = v54[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E50, &qword_1C7560728);
  LOBYTE(v53[0]) = 3;
  v25 = sub_1C7027558();
  OUTLINED_FUNCTION_25_5(v25);
  v49 = v54[0];
  LOBYTE(v53[0]) = 4;
  OUTLINED_FUNCTION_316();
  sub_1C7551C1C();
  v48 = v54[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E58, &qword_1C7560730);
  LOBYTE(v53[0]) = 5;
  v26 = sub_1C7027630();
  OUTLINED_FUNCTION_25_5(v26);
  v47 = v54[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E60, &qword_1C7560738);
  LOBYTE(v53[0]) = 6;
  v27 = sub_1C70276E4();
  OUTLINED_FUNCTION_25_5(v27);
  v46 = v54[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E68, &qword_1C7560740);
  LOBYTE(v53[0]) = 7;
  v28 = sub_1C70277BC();
  OUTLINED_FUNCTION_25_5(v28);
  OUTLINED_FUNCTION_165(v54[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E70, &qword_1C7560748);
  LOBYTE(v53[0]) = 8;
  v29 = sub_1C7027870();
  OUTLINED_FUNCTION_25_5(v29);
  v45 = v54[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215E78, &qword_1C7560750);
  v55[0] = 9;
  sub_1C7027948();
  sub_1C7551C1C();
  v30 = OUTLINED_FUNCTION_69_0();
  v31(v30);
  v44 = a10;
  v32 = v52;
  v33 = v51;
  v53[0] = v52;
  v53[1] = v51;
  v34 = v50;
  v35 = v49;
  v53[2] = v50;
  v53[3] = v49;
  v36 = v48;
  v37 = v47;
  v53[4] = v48;
  v53[5] = v47;
  OUTLINED_FUNCTION_558();
  v53[6] = v39;
  v53[7] = v38;
  OUTLINED_FUNCTION_378();
  v53[8] = v41;
  v53[9] = v40;
  memcpy(v14, v53, 0x50uLL);
  sub_1C7027A20(v53, v54);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v54[0] = v32;
  v54[1] = v33;
  v54[2] = v34;
  v54[3] = v35;
  v54[4] = v36;
  v54[5] = v37;
  OUTLINED_FUNCTION_151();
  v54[6] = v43;
  v54[7] = v42;
  v54[8] = v45;
  v54[9] = v44;
  sub_1C7027A58(v54);
LABEL_11:
  OUTLINED_FUNCTION_322();
  OUTLINED_FUNCTION_125();
}

void ExtendedTokenCollection.assetScopingTokens.getter()
{
  OUTLINED_FUNCTION_124();
  v1 = ExtendedTokenCollection.allTokens.getter();
  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v1 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v26 = v1;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_14;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    sub_1C6FB5E28(v4, &v28);
    v6 = v29;
    v7 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v8 = ExtendedToken.isUsedForAssetScoping.getter(v6, v7);
    if (v0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v28);

LABEL_14:

      OUTLINED_FUNCTION_322();
      OUTLINED_FUNCTION_125();
      return;
    }

    if (v8)
    {
      sub_1C6F699F8(&v28, v27);
      v31 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = OUTLINED_FUNCTION_21_11();
        sub_1C716D5D0(v9, v10, v11);
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v25 = OUTLINED_FUNCTION_15(v12);
        sub_1C716D5D0(v25, v13 + 1, 1);
      }

      v14 = v27[3];
      v15 = v27[4];
      v16 = OUTLINED_FUNCTION_434();
      v18 = __swift_mutable_project_boxed_opaque_existential_0(v16, v17);
      MEMORY[0x1EEE9AC00](v18);
      OUTLINED_FUNCTION_14_0();
      (*(v21 + 16))(v20 - v19);
      v22 = OUTLINED_FUNCTION_98_1();
      sub_1C702591C(v22, v23, v24, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v5 = v31;
      v1 = v26;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    v4 += 40;
    ++v2;
  }

  __break(1u);
}

void sub_1C701104C()
{
  OUTLINED_FUNCTION_33();
  v212 = OUTLINED_FUNCTION_418(v3, v4, v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_140_1();
  v11 = OUTLINED_FUNCTION_119(v10);
  v217 = type metadata accessor for TimeExtendedToken(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v16);
  OUTLINED_FUNCTION_499();
  v17 = *(v1 + 64);
  OUTLINED_FUNCTION_430();
  v211 = v18;
  v230.n128_u64[0] = v2;
  v230.n128_u64[1] = v19;
  v221 = v19;
  OUTLINED_FUNCTION_498();
  v232 = v17;
  v233 = v20;
  v210 = v20;
  inited = ExtendedTokenCollection.allTokens.getter();
  v22 = 0;
  v23 = inited[2];
  for (i = (inited + 4); ; i += 40)
  {
    if (v23 == v22)
    {

      OUTLINED_FUNCTION_332();
LABEL_21:
      sub_1C6FD7FC8(v225, &qword_1EC215EA8, &qword_1C7560760);
      v37 = OUTLINED_FUNCTION_228();
      sub_1C7027A58(v37);
      goto LABEL_260;
    }

    v25 = inited[2];
    if (v22 >= v25)
    {
      __break(1u);
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
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      OUTLINED_FUNCTION_15_2(v25);
      sub_1C6FB20F8();
      v64 = v194;
LABEL_59:
      v64[2] = inited;
      v214 = v64;
      v64[v2 + 4] = v0;
      goto LABEL_60;
    }

    sub_1C6FB5E28(i, &v226);
    __swift_project_boxed_opaque_existential_1(&v226, v227);
    OUTLINED_FUNCTION_492();
    if (sub_1C702AC78(v26, v27, v28, v29))
    {
      break;
    }

    ++v22;
    __swift_destroy_boxed_opaque_existential_1(&v226);
  }

  sub_1C6F699F8(&v226, v225);
  if (!v225[3])
  {
    goto LABEL_21;
  }

  sub_1C6FD7FC8(v225, &qword_1EC215EA8, &qword_1C7560760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215EB0, &qword_1C7560768);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1C75604F0;
  inited[4] = v0;
  inited[5] = v2;
  sub_1C75504FC();
  sub_1C75504FC();
  v0 = MEMORY[0x1E69E7CC0];
  v30 = 4;
  v2 = &type metadata for LocationExtendedToken;
  OUTLINED_FUNCTION_220();
  while (v30 != 6)
  {
    v31 = inited[v30];
    i = *(v31 + 16);
    v23 = *(v0 + 16);
    if (__OFADD__(v23, i))
    {
      goto LABEL_263;
    }

    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v23 + i) > *(v0 + 24) >> 1)
    {
      sub_1C6FB2320(isUniquelyReferenced_nonNull_native);
      v0 = v33;
    }

    OUTLINED_FUNCTION_220();
    if (*(v31 + 16))
    {
      OUTLINED_FUNCTION_495();
      if (v34 < i)
      {
        goto LABEL_279;
      }

      OUTLINED_FUNCTION_501();
      swift_arrayInitWithCopy();

      if (i)
      {
        v35 = *(v0 + 16);
        v36 = __OFADD__(v35, i);
        v25 = v35 + i;
        if (v36)
        {
          goto LABEL_280;
        }

        *(v0 + 16) = v25;
      }
    }

    else
    {

      if (i)
      {
        goto LABEL_264;
      }
    }

    ++v30;
  }

  swift_setDeallocating();
  sub_1C6FDC9C8();
  v38 = 0;
  v39 = *(v17 + 16);
  v2 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v25 = v17 + 32 + (v38 << 6);
  while (v39 != v38)
  {
    if (v38 >= *(v17 + 16))
    {
      goto LABEL_265;
    }

    v40 = *(v25 + 48);
    v41 = *v25;
    v42 = *(v25 + 16);
    v230 = *(v25 + 32);
    v231 = v40;
    v228 = v41;
    v229 = v42;
    if ((v42.n128_u8[8] & 1) == 0 && v231.n128_u64[1])
    {
      v43 = OUTLINED_FUNCTION_288();
      sub_1C7026698(v43, v44);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v226 = v2;
      if ((v45 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716DBE8();
        v2 = v226;
      }

      OUTLINED_FUNCTION_407();
      if (v47)
      {
        OUTLINED_FUNCTION_96_2(v46);
        OUTLINED_FUNCTION_116_0();
        sub_1C716DBE8();
        v2 = v226;
      }

      ++v38;
      v2[1].n128_u64[0] = i;
      OUTLINED_FUNCTION_233(v2 + 224, v228, v229, v230, v231);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_563();
  }

  v48 = 0;
  v49 = *(v0 + 16);
  inited = MEMORY[0x1E69E7CC0];
  while (v49 != v48)
  {
    OUTLINED_FUNCTION_504();
    if (v47)
    {
      goto LABEL_266;
    }

    v50 = *(v0 + v25);
    v51 = *(v0 + v25 + 48);
    v52 = *(v0 + v25 + 32);
    v229 = *(v0 + v25 + 16);
    v230 = v52;
    v231.n128_u64[0] = v51;
    v228 = v50;
    if ((v52.n128_u8[8] & 1) == 0 && v51)
    {
      v53 = OUTLINED_FUNCTION_288();
      sub_1C70260B4(v53, v54);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *&v226 = inited;
      if ((v55 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716DD2C();
        inited = v226;
      }

      OUTLINED_FUNCTION_283();
      if (v47)
      {
        OUTLINED_FUNCTION_96_2(v56);
        OUTLINED_FUNCTION_116_0();
        sub_1C716DD2C();
        inited = v226;
      }

      ++v48;
      inited[2] = i;
      OUTLINED_FUNCTION_39_7((inited + 392));
    }

    else
    {
      OUTLINED_FUNCTION_572();
    }
  }

  v57 = v2[1].n128_u64[0];
  v58 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v25 = 88;
  while (v57)
  {
    if (!v2[1].n128_u64[0])
    {
      goto LABEL_267;
    }

    v0 = *(v2->n128_i64 + v25);
    OUTLINED_FUNCTION_563();
    if (v0)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_7();
        sub_1C6FB226C();
        v58 = v61;
      }

      v60 = *(v58 + 16);
      v59 = *(v58 + 24);
      if (v60 >= v59 >> 1)
      {
        OUTLINED_FUNCTION_15(v59);
        OUTLINED_FUNCTION_141_2();
        sub_1C6FB226C();
        v58 = v62;
      }

      *(v58 + 16) = v60 + 1;
      *(v58 + 8 * v60 + 32) = v0;
      goto LABEL_46;
    }
  }

  v0 = sub_1C7027A88(v58);

  if (v0)
  {

    goto LABEL_58;
  }

  OUTLINED_FUNCTION_517();
  v2 = MEMORY[0x1E69E7CC0];

  v0 = sub_1C7027A88(v2);

  if (v0)
  {
LABEL_58:
    OUTLINED_FUNCTION_356();
    v2 = *(v63 + 16);
    OUTLINED_FUNCTION_134_0();
    if (!v47)
    {
      goto LABEL_59;
    }

    goto LABEL_282;
  }

  OUTLINED_FUNCTION_538(MEMORY[0x1E69E7CC0]);
LABEL_60:
  v65 = 0;
  inited = v211;
  v66 = *(v211 + 16);
  v0 = MEMORY[0x1E69E7CC0];
  v67 = 40;
LABEL_61:
  v68 = (v211 - 8 + v65 * v67);
  while (v66 != v65)
  {
    v69 = v68;
    v25 = *(v211 + 16);
    if (v65 >= v25)
    {
      goto LABEL_268;
    }

    ++v65;
    v68 = v69 + 5;
    if ((v69[8] & 1) == 0)
    {
      v2 = v69[9];
      if (v2)
      {
        v71 = *v68;
        v70 = v69[6];
        sub_1C75504FC();
        sub_1C75504FC();
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v228.n128_u64[0] = v0;
        if ((v72 & 1) == 0)
        {
          OUTLINED_FUNCTION_11_10();
          sub_1C716DCF0();
          OUTLINED_FUNCTION_187();
        }

        v23 = *(v0 + 16);
        v73 = *(v0 + 24);
        if (v23 >= v73 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v73);
          OUTLINED_FUNCTION_336();
          sub_1C716DCF0();
          OUTLINED_FUNCTION_187();
        }

        *(v0 + 16) = v23 + 1;
        v74 = v0 + 40 * v23;
        *(v74 + 32) = v71;
        *(v74 + 40) = v70;
        OUTLINED_FUNCTION_168(v74);
        OUTLINED_FUNCTION_451(v75);
        *(v76 + 64) = v2;
        OUTLINED_FUNCTION_220();
        goto LABEL_61;
      }
    }
  }

  v77 = 0;
  v78 = *(v0 + 16);
  inited = MEMORY[0x1E69E7CC0];
  v211 = 64;
  v79 = v214;
  while (v78 != v77)
  {
    OUTLINED_FUNCTION_504();
    if (v47)
    {
      goto LABEL_269;
    }

    OUTLINED_FUNCTION_490();
    v77 = (v77 + 1);
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v81;
      }

      OUTLINED_FUNCTION_105_2();
      if (v47)
      {
        OUTLINED_FUNCTION_22_10(v80);
        sub_1C6FB226C();
        inited = v82;
      }

      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_220();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_239();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v79 = v197;
    }

    v2 = v79[2];
    OUTLINED_FUNCTION_134_0();
    if (v47)
    {
      OUTLINED_FUNCTION_15_2(v83);
      sub_1C6FB20F8();
      v79 = v198;
    }

    OUTLINED_FUNCTION_384();
    OUTLINED_FUNCTION_239();
  }

  OUTLINED_FUNCTION_159_0();
  v0 = MEMORY[0x1E69E7CC0];
LABEL_87:
  inited = v78;
  while (v77)
  {
    OUTLINED_FUNCTION_114_1();
    if (!v25)
    {
      goto LABEL_270;
    }

    v84 = OUTLINED_FUNCTION_349();
    memcpy(v84, v85, 0x41uLL);
    if ((v229.n128_u8[8] & 1) == 0 && v231.n128_u64[1])
    {
      v86 = OUTLINED_FUNCTION_288();
      sub_1C7025F3C(v86, v87);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      *&v226 = v0;
      if ((v88 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716D97C();
        v0 = v226;
      }

      OUTLINED_FUNCTION_408();
      if (v47)
      {
        OUTLINED_FUNCTION_96_2(v89);
        OUTLINED_FUNCTION_177();
        sub_1C716D97C();
        v0 = v226;
      }

      OUTLINED_FUNCTION_299();
      v90 = OUTLINED_FUNCTION_268(v0 + 72 * v23);
      memcpy(v90, v91, v92);
      OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_239();
      goto LABEL_87;
    }

    OUTLINED_FUNCTION_522();
  }

  if (v209)
  {
    sub_1C75504FC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v79 = v195;
    }

    v97 = v79[2];
    v96 = v79[3];
    if (v97 >= v96 >> 1)
    {
      OUTLINED_FUNCTION_15(v96);
      OUTLINED_FUNCTION_131_0();
      sub_1C6FB20F8();
      v79 = v196;
    }

    v79[2] = v97 + 1;
    v79[v97 + 4] = v209;
  }

  else
  {
    OUTLINED_FUNCTION_557();
    inited = MEMORY[0x1E69E7CC0];
    while (v78 != 72)
    {
      OUTLINED_FUNCTION_503();
      if (v47)
      {
        goto LABEL_281;
      }

      OUTLINED_FUNCTION_270_0();
      if (v2)
      {
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v94;
        }

        OUTLINED_FUNCTION_105_2();
        if (v47)
        {
          OUTLINED_FUNCTION_22_10(v93);
          sub_1C6FB226C();
          inited = v95;
        }

        OUTLINED_FUNCTION_174();
        OUTLINED_FUNCTION_220();
      }
    }

    sub_1C7027AF4();
    OUTLINED_FUNCTION_507();

    OUTLINED_FUNCTION_239();
  }

  v98 = v2[1].n128_u64[0];
  v0 = MEMORY[0x1E69E7CC0];
LABEL_116:
  inited = v2[2].n128_u64;
  while (v98)
  {
    v25 = v2[1].n128_u64[0];
    if (!v25)
    {
      goto LABEL_271;
    }

    v99 = OUTLINED_FUNCTION_349();
    memcpy(v99, v100, 0x42uLL);
    if ((v229.n128_u8[8] & 1) == 0 && v231.n128_u64[1])
    {
      v101 = OUTLINED_FUNCTION_288();
      sub_1C7025FF8(v101, v102);
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *&v226 = v0;
      if ((v103 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716D940();
        v0 = v226;
      }

      OUTLINED_FUNCTION_408();
      if (v47)
      {
        OUTLINED_FUNCTION_96_2(v104);
        OUTLINED_FUNCTION_177();
        sub_1C716D940();
        v0 = v226;
      }

      OUTLINED_FUNCTION_299();
      v105 = OUTLINED_FUNCTION_267(v0 + 72 * v23);
      memcpy(v105, v106, v107);
      OUTLINED_FUNCTION_220();
      OUTLINED_FUNCTION_239();
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_522();
  }

  OUTLINED_FUNCTION_557();
  inited = MEMORY[0x1E69E7CC0];
  while (v2 != -32)
  {
    OUTLINED_FUNCTION_503();
    if (v47)
    {
      goto LABEL_272;
    }

    OUTLINED_FUNCTION_270_0();
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v109;
      }

      OUTLINED_FUNCTION_105_2();
      if (v47)
      {
        OUTLINED_FUNCTION_22_10(v108);
        sub_1C6FB226C();
        inited = v110;
      }

      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_220();
    }
  }

  sub_1C7027AF4();
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_369();
  if (v0)
  {
    v111 = v221;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v79 = v199;
    }

    v2 = v79[2];
    OUTLINED_FUNCTION_134_0();
    if (v47)
    {
      OUTLINED_FUNCTION_15_2(v112);
      sub_1C6FB20F8();
      v79 = v200;
    }

    OUTLINED_FUNCTION_384();
    OUTLINED_FUNCTION_369();
  }

  else
  {
    v111 = v221;
  }

  v113 = 0;
  v114 = *(v111 + 16);
  v0 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_309_0();
  while (2)
  {
    if (v114 != v113)
    {
      v25 = *(v111 + 16);
      if (v113 >= v25)
      {
        goto LABEL_273;
      }

      v98 = (v2[5].n128_u8[0] + 32) & ~v2[5].n128_u8[0];
      OUTLINED_FUNCTION_4_9();
      sub_1C702659C();
      OUTLINED_FUNCTION_350();
      sub_1C702659C();
      if (*(v23 + 56))
      {
        OUTLINED_FUNCTION_3_12();
        sub_1C70265F0();
        goto LABEL_149;
      }

      inited = *(v23 + *(v217 + 48));
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      if (inited)
      {
        OUTLINED_FUNCTION_1_19();
        OUTLINED_FUNCTION_308();
        sub_1C70267FC();
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v228.n128_u64[0] = v0;
        if ((v115 & 1) == 0)
        {
          v116 = OUTLINED_FUNCTION_11_10();
          sub_1C716DCA8(v116, v117, v118);
          v0 = v228.n128_u64[0];
        }

        OUTLINED_FUNCTION_408();
        if (v47)
        {
          OUTLINED_FUNCTION_41_5(v119);
          OUTLINED_FUNCTION_177();
          sub_1C716DCA8(v120, v121, v122);
          v0 = v228.n128_u64[0];
        }

        OUTLINED_FUNCTION_299();
        OUTLINED_FUNCTION_1_19();
        sub_1C70267FC();
        OUTLINED_FUNCTION_369();
        OUTLINED_FUNCTION_220();
      }

      else
      {
LABEL_149:
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_308();
        sub_1C70265F0();
        ++v113;
      }

      v111 = v221;
      continue;
    }

    break;
  }

  v123 = *(v0 + 16);
  if (v123)
  {
    v98 = *(v217 + 48);
    OUTLINED_FUNCTION_191();
    v124 = v2;
    v2 = (v0 + v125);
    v111 = v124[4].n128_u64[1];
    inited = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_218();
      v23 = v219;
      sub_1C702659C();
      OUTLINED_FUNCTION_603();
      OUTLINED_FUNCTION_599();
      if (v113)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v128;
        }

        OUTLINED_FUNCTION_282_0();
        if (v47)
        {
          OUTLINED_FUNCTION_57(v126);
          sub_1C6FB226C();
          inited = v129;
        }

        OUTLINED_FUNCTION_257();
      }

      OUTLINED_FUNCTION_526();
    }

    while (!v127);
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v79 = v201;
    }

    v2 = v79[2];
    OUTLINED_FUNCTION_134_0();
    if (v47)
    {
      OUTLINED_FUNCTION_15_2(v130);
      sub_1C6FB20F8();
      v79 = v202;
    }

    OUTLINED_FUNCTION_384();
  }

  OUTLINED_FUNCTION_493();
  v0 = MEMORY[0x1E69E7CC0];
  v215 = v79;
  while (v111 != v98)
  {
    OUTLINED_FUNCTION_573();
    if (v47)
    {
      goto LABEL_274;
    }

    ++v98;
    if ((*(v131 + 80) & 1) == 0)
    {
      v2 = *(v131 + 96);
      if (v2)
      {
        v132 = *(v131 + 56);
        v79 = *(v131 + 64);
        v133 = *(v131 + 88);
        v23 = *(v131 + 104);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_530();
        *(v134 - 256) = v123;
        v222 = v132;
        if ((v135 & 1) == 0)
        {
          v136 = OUTLINED_FUNCTION_11_10();
          sub_1C716DC6C(v136, v137, v138, v139, v140, v141, v142);
          OUTLINED_FUNCTION_187();
        }

        v144 = *(v0 + 16);
        v143 = *(v0 + 24);
        if (v144 >= v143 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v143);
          OUTLINED_FUNCTION_186();
          sub_1C716DC6C(v147, v148, v149, v150, v151, v152, v153);
          OUTLINED_FUNCTION_187();
        }

        *(v0 + 16) = v144 + 1;
        v145 = v0 + 56 * v144;
        *(v145 + 32) = v222;
        *(v145 + 40) = v79;
        OUTLINED_FUNCTION_168(v145);
        *(v146 + 64) = v133;
        *(v146 + 72) = v2;
        *(v146 + 80) = v23;
        v123 = v224;
      }
    }
  }

  OUTLINED_FUNCTION_531();
  inited = MEMORY[0x1E69E7CC0];
  v154 = 56;
LABEL_185:
  v23 = v212;
  while (v123 != v79)
  {
    OUTLINED_FUNCTION_502();
    if (v47)
    {
      goto LABEL_275;
    }

    v79 = (v79 + 1);
    v2 = *(v0 + v25);
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v156;
      }

      OUTLINED_FUNCTION_105_2();
      if (v47)
      {
        OUTLINED_FUNCTION_22_10(v155);
        sub_1C6FB226C();
        inited = v157;
      }

      OUTLINED_FUNCTION_174();
      goto LABEL_185;
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  v2 = v213;
  if (v0)
  {
    v158 = v215;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_275();
    if ((v159 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
      v158 = v203;
    }

    v160 = *(v158 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v47)
    {
      OUTLINED_FUNCTION_15_2(v161);
      sub_1C6FB20F8();
      v158 = v204;
    }

    *(v158 + 16) = inited;
    v215 = v158;
    *(v158 + 8 * v160 + 32) = v0;
    v2 = v213;
  }

  else
  {
    OUTLINED_FUNCTION_275();
  }

  v162 = 0;
  v163 = MEMORY[0x48];
  v0 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v163 != v162)
    {
      v25 = *(v154 + 16);
      if (v162 >= v25)
      {
        goto LABEL_276;
      }

      OUTLINED_FUNCTION_5_16();
      sub_1C702659C();
      sub_1C702659C();
      if (v2[1].n128_u8[8])
      {
        OUTLINED_FUNCTION_2_11();
        sub_1C70265F0();
        goto LABEL_207;
      }

      inited = *(v2->n128_u64 + *(v212 + 28));
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      if (inited)
      {
        OUTLINED_FUNCTION_0_15();
        OUTLINED_FUNCTION_194();
        sub_1C70267FC();
        v164 = swift_isUniquelyReferenced_nonNull_native();
        v228.n128_u64[0] = v0;
        if ((v164 & 1) == 0)
        {
          OUTLINED_FUNCTION_11_10();
          sub_1C716DC24();
          v0 = v228.n128_u64[0];
        }

        v165 = *(v0 + 24);
        if (*(v0 + 16) >= v165 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v165);
          OUTLINED_FUNCTION_177();
          sub_1C716DC24();
          v0 = v228.n128_u64[0];
        }

        OUTLINED_FUNCTION_299();
        OUTLINED_FUNCTION_0_15();
        sub_1C70267FC();
        v2 = v213;
      }

      else
      {
LABEL_207:
        OUTLINED_FUNCTION_2_11();
        OUTLINED_FUNCTION_194();
        sub_1C70265F0();
        ++v162;
      }

      v154 = v220;
      continue;
    }

    break;
  }

  v166 = *(v0 + 16);
  if (v166)
  {
    v154 = *(v212 + 28);
    OUTLINED_FUNCTION_191();
    v2 = (v0 + v167);
    v168 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_210_0();
      v23 = v218;
      sub_1C702659C();
      OUTLINED_FUNCTION_603();
      OUTLINED_FUNCTION_599();
      if (v162)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          v168 = v170;
        }

        OUTLINED_FUNCTION_282_0();
        if (v47)
        {
          OUTLINED_FUNCTION_57(v169);
          sub_1C6FB226C();
          v168 = v171;
        }

        OUTLINED_FUNCTION_257();
      }

      OUTLINED_FUNCTION_526();
    }

    while (!v127);
  }

  else
  {

    v168 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(v168);
  OUTLINED_FUNCTION_364();
  v172 = v215;
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
      v172 = v205;
    }

    v2 = *(v172 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v47)
    {
      OUTLINED_FUNCTION_15_2(v173);
      sub_1C6FB20F8();
      v172 = v206;
    }

    *(v172 + 16) = v168;
    *(v172 + 8 * v2 + 32) = v0;
  }

  inited = v210;
  v216 = v172;
  OUTLINED_FUNCTION_517();
  v174 = v210 - 1;
  v0 = MEMORY[0x1E69E7CC0];
  v175 = 40;
LABEL_233:
  v176 = (v174 + v166 * v175);
  while (v154 != v166)
  {
    v177 = v176;
    v25 = v210[2];
    if (v166 >= v25)
    {
      goto LABEL_277;
    }

    ++v166;
    v176 = v177 + 5;
    if ((v177[8] & 1) == 0)
    {
      v2 = v177[9];
      if (v2)
      {
        v179 = *v176;
        v178 = v177[6];
        v180 = *(v177 + 65);
        v23 = *(v177 + 66);
        sub_1C75504FC();
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_530();
        *(v181 - 256) = v174;
        v223 = v179;
        if ((v182 & 1) == 0)
        {
          OUTLINED_FUNCTION_11_10();
          sub_1C716DBAC();
          OUTLINED_FUNCTION_187();
        }

        v184 = *(v0 + 16);
        v183 = *(v0 + 24);
        if (v184 >= v183 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v183);
          OUTLINED_FUNCTION_146();
          sub_1C716DBAC();
          OUTLINED_FUNCTION_187();
        }

        *(v0 + 16) = v184 + 1;
        v185 = v0 + 40 * v184;
        *(v185 + 32) = v223;
        *(v185 + 40) = v178;
        OUTLINED_FUNCTION_168(v185);
        *(v186 + 57) = v180;
        *(v186 + 58) = v23;
        *(v186 + 64) = v2;
        v174 = v224;
        goto LABEL_233;
      }
    }
  }

  OUTLINED_FUNCTION_531();
  inited = MEMORY[0x1E69E7CC0];
  while (v166 != v174)
  {
    OUTLINED_FUNCTION_502();
    if (v47)
    {
      goto LABEL_278;
    }

    OUTLINED_FUNCTION_490();
    v174 = (v174 + 1);
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v188;
      }

      OUTLINED_FUNCTION_283();
      if (v47)
      {
        OUTLINED_FUNCTION_22_10(v187);
        sub_1C6FB226C();
        inited = v189;
      }

      OUTLINED_FUNCTION_415();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    v190 = v216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
      v190 = v207;
    }

    v191 = *(v190 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v47)
    {
      OUTLINED_FUNCTION_15_2(v192);
      sub_1C6FB20F8();
      v190 = v208;
    }

    *(v190 + 16) = inited;
    *(v190 + 8 * v191 + 32) = v0;
  }

  else
  {
    v190 = v216;
  }

  sub_1C6FDE498(v190);

  v193 = OUTLINED_FUNCTION_228();
  sub_1C7027A58(v193);
LABEL_260:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C701260C()
{
  OUTLINED_FUNCTION_33();
  v223 = OUTLINED_FUNCTION_418(v3, v4, v5);
  OUTLINED_FUNCTION_3_0();
  v221 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  v12 = OUTLINED_FUNCTION_119(v11);
  v227 = type metadata accessor for TimeExtendedToken(v12);
  OUTLINED_FUNCTION_3_0();
  v224 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v215 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v20);
  OUTLINED_FUNCTION_499();
  v21 = *(v1 + 64);
  OUTLINED_FUNCTION_430();
  v222 = v22;
  v238.n128_u64[0] = v2;
  v238.n128_u64[1] = v23;
  v228 = v23;
  OUTLINED_FUNCTION_498();
  v240 = v21;
  v241 = v24;
  v220 = v24;
  inited = ExtendedTokenCollection.allTokens.getter();
  v26 = 0;
  v27 = *(inited + 16);
  for (i = inited + 32; ; i += 40)
  {
    if (v27 == v26)
    {

      OUTLINED_FUNCTION_332();
LABEL_21:
      sub_1C6FD7FC8(v232, &qword_1EC215EA8, &qword_1C7560760);
      v42 = OUTLINED_FUNCTION_228();
      sub_1C7027A58(v42);
      goto LABEL_250;
    }

    OUTLINED_FUNCTION_573();
    if (v30)
    {
      __break(1u);
LABEL_253:
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
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
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
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      OUTLINED_FUNCTION_15_2(v29);
      sub_1C6FB20F8();
      v67 = v200;
LABEL_57:
      *(v67 + 16) = inited;
      *(v67 + 8 * v2 + 32) = v0;
      goto LABEL_58;
    }

    sub_1C6FB5E28(i, &v234);
    __swift_project_boxed_opaque_existential_1(&v234, v235);
    OUTLINED_FUNCTION_492();
    if (sub_1C702ADA8(v31, v32, v33, v34))
    {
      break;
    }

    ++v26;
    __swift_destroy_boxed_opaque_existential_1(&v234);
  }

  sub_1C6F699F8(&v234, v232);
  if (!v232[3])
  {
    goto LABEL_21;
  }

  sub_1C6FD7FC8(v232, &qword_1EC215EA8, &qword_1C7560760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215EB0, &qword_1C7560768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = v0;
  *(inited + 40) = v2;
  sub_1C75504FC();
  sub_1C75504FC();
  v0 = MEMORY[0x1E69E7CC0];
  v35 = 32;
  v2 = &type metadata for LocationExtendedToken;
  v29 = &v233;
  v218 = v17;
  while (v35 != 48)
  {
    v36 = *(inited + v35);
    i = *(v36 + 16);
    v27 = *(v0 + 16);
    if (__OFADD__(v27, i))
    {
      goto LABEL_253;
    }

    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v27 + i) > *(v0 + 24) >> 1)
    {
      sub_1C6FB2320(isUniquelyReferenced_nonNull_native);
      v0 = v38;
    }

    if (*(v36 + 16))
    {
      OUTLINED_FUNCTION_495();
      if (v39 < i)
      {
        goto LABEL_269;
      }

      OUTLINED_FUNCTION_501();
      swift_arrayInitWithCopy();

      if (i)
      {
        v40 = *(v0 + 16);
        v41 = __OFADD__(v40, i);
        v29 = v40 + i;
        if (v41)
        {
          goto LABEL_270;
        }

        *(v0 + 16) = v29;
      }
    }

    else
    {

      if (i)
      {
        goto LABEL_254;
      }
    }

    v35 += 8;
  }

  swift_setDeallocating();
  sub_1C6FDC9C8();
  v43 = 0;
  v44 = *(v21 + 16);
  v2 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v29 = v21 + 32 + (v43 << 6);
  while (v44 != v43)
  {
    if (v43 >= *(v21 + 16))
    {
      goto LABEL_255;
    }

    v45 = *v29;
    v46 = *(v29 + 16);
    v47 = *(v29 + 48);
    v238 = *(v29 + 32);
    v239 = v47;
    v236 = v45;
    v237 = v46;
    if (v47.n128_u8[0] == 1)
    {
      v48 = OUTLINED_FUNCTION_288();
      sub_1C7026698(v48, v49);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *&v234 = v2;
      if ((v50 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716DBE8();
        v2 = v234;
      }

      v27 = *(v2 + 16);
      v51 = *(v2 + 24);
      i = v27 + 1;
      if (v27 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_96_2(v51);
        OUTLINED_FUNCTION_116_0();
        sub_1C716DBE8();
        v2 = v234;
      }

      ++v43;
      *(v2 + 16) = i;
      OUTLINED_FUNCTION_233((v2 + (v27 << 6)), v236, v237, v238, v239);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_563();
  }

  v52 = 0;
  v53 = *(v0 + 16);
  inited = MEMORY[0x1E69E7CC0];
  while (v53 != v52)
  {
    OUTLINED_FUNCTION_504();
    if (v30)
    {
      goto LABEL_256;
    }

    v54 = *(v0 + v29);
    v55 = *(v0 + v29 + 48);
    v56 = *(v0 + v29 + 32);
    v237 = *(v0 + v29 + 16);
    v238 = v56;
    v239.n128_u64[0] = v55;
    v236 = v54;
    if (v56.n128_u8[9] == 1)
    {
      v57 = OUTLINED_FUNCTION_288();
      sub_1C70260B4(v57, v58);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *&v234 = inited;
      if ((v59 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716DD2C();
        inited = v234;
      }

      OUTLINED_FUNCTION_102_3();
      if (v30)
      {
        OUTLINED_FUNCTION_96_2(v60);
        OUTLINED_FUNCTION_116_0();
        sub_1C716DD2C();
        inited = v234;
      }

      ++v52;
      *(inited + 16) = i;
      OUTLINED_FUNCTION_39_7(inited + 56 * v27);
    }

    else
    {
      OUTLINED_FUNCTION_572();
    }
  }

  v61 = *(v2 + 16);
  v62 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v29 = 88;
  while (v61)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_257;
    }

    v0 = *(v2 + v29);
    OUTLINED_FUNCTION_563();
    if (v0)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_7();
        sub_1C6FB226C();
        v62 = v64;
      }

      v27 = *(v62 + 16);
      v63 = *(v62 + 24);
      if (v27 >= v63 >> 1)
      {
        OUTLINED_FUNCTION_15(v63);
        OUTLINED_FUNCTION_141_2();
        sub_1C6FB226C();
        v62 = v65;
      }

      *(v62 + 16) = v27 + 1;
      *(v62 + 8 * v27 + 32) = v0;
      goto LABEL_44;
    }
  }

  v0 = sub_1C7027A88(v62);

  if (v0)
  {

    goto LABEL_56;
  }

  OUTLINED_FUNCTION_517();
  v2 = MEMORY[0x1E69E7CC0];

  v0 = sub_1C7027A88(v2);

  if (v0)
  {
LABEL_56:
    OUTLINED_FUNCTION_356();
    v67 = v66;
    v2 = *(v66 + 16);
    OUTLINED_FUNCTION_134_0();
    if (!v30)
    {
      goto LABEL_57;
    }

    goto LABEL_272;
  }

  v67 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v68 = 0;
  inited = v222;
  v69 = *(v222 + 16);
  v0 = MEMORY[0x1E69E7CC0];
  while (v69 != v68)
  {
    OUTLINED_FUNCTION_528();
    if (v30)
    {
      goto LABEL_258;
    }

    ++v68;
    if (*(v29 + 65) == 1)
    {
      v217 = v70;
      v72 = *(v29 + 40);
      v71 = *(v29 + 48);
      v216 = *(v29 + 56);
      v215[1] = *(v29 + 64);
      v2 = *(v29 + 72);
      sub_1C75504FC();
      sub_1C75504FC();
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v236.n128_u64[0] = v0;
      if ((v73 & 1) == 0)
      {
        OUTLINED_FUNCTION_11_10();
        sub_1C716DCF0();
        OUTLINED_FUNCTION_187();
      }

      v27 = *(v0 + 16);
      v74 = *(v0 + 24);
      if (v27 >= v74 >> 1)
      {
        OUTLINED_FUNCTION_41_5(v74);
        OUTLINED_FUNCTION_336();
        sub_1C716DCF0();
        OUTLINED_FUNCTION_187();
      }

      *(v0 + 16) = v27 + 1;
      v75 = v0 + 40 * v27;
      *(v75 + 32) = v72;
      *(v75 + 40) = v71;
      OUTLINED_FUNCTION_277(v75);
      OUTLINED_FUNCTION_570(v76);
      *(v77 + 57) = 1;
      *(v77 + 64) = v2;
    }
  }

  v78 = 0;
  v79 = *(v0 + 16);
  inited = MEMORY[0x1E69E7CC0];
  while (v79 != v78)
  {
    OUTLINED_FUNCTION_504();
    if (v30)
    {
      goto LABEL_259;
    }

    OUTLINED_FUNCTION_490();
    ++v78;
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v81;
      }

      OUTLINED_FUNCTION_102_3();
      if (v30)
      {
        OUTLINED_FUNCTION_22_10(v80);
        sub_1C6FB226C();
        inited = v82;
      }

      OUTLINED_FUNCTION_416();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_239();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v67 = v203;
    }

    v2 = *(v67 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v83);
      sub_1C6FB20F8();
      v67 = v204;
    }

    *(v67 + 16) = inited;
    *(v67 + 8 * v2 + 32) = v0;
    OUTLINED_FUNCTION_239();
  }

  OUTLINED_FUNCTION_159_0();
  v0 = MEMORY[0x1E69E7CC0];
LABEL_83:
  inited = v79;
  while (v78)
  {
    OUTLINED_FUNCTION_114_1();
    if (!v29)
    {
      goto LABEL_260;
    }

    v84 = OUTLINED_FUNCTION_349();
    memcpy(v84, v85, 0x41uLL);
    if (v239.n128_u8[6] == 1)
    {
      v86 = OUTLINED_FUNCTION_288();
      sub_1C7025F3C(v86, v87);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      *&v234 = v0;
      if ((v88 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716D97C();
        v0 = v234;
      }

      OUTLINED_FUNCTION_399();
      if (v30)
      {
        OUTLINED_FUNCTION_96_2(v89);
        OUTLINED_FUNCTION_177();
        sub_1C716D97C();
        v0 = v234;
      }

      OUTLINED_FUNCTION_299();
      v90 = OUTLINED_FUNCTION_268(v0 + 72 * v27);
      memcpy(v90, v91, v92);
      OUTLINED_FUNCTION_239();
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_522();
  }

  v93 = v219;
  v222 = 64;
  if (v219)
  {
    sub_1C75504FC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v67 = v201;
    }

    v99 = *(v67 + 16);
    v98 = *(v67 + 24);
    if (v99 >= v98 >> 1)
    {
      OUTLINED_FUNCTION_15(v98);
      OUTLINED_FUNCTION_143_0();
      sub_1C6FB20F8();
      v67 = v202;
    }

    *(v67 + 16) = v99 + 1;
    v229 = v67;
    *(v67 + 8 * v99 + 32) = v93;
    v94 = v218;
  }

  else
  {
    v229 = v67;
    OUTLINED_FUNCTION_557();
    inited = MEMORY[0x1E69E7CC0];
    v94 = v218;
    while (v79 != 72)
    {
      OUTLINED_FUNCTION_503();
      if (v30)
      {
        goto LABEL_271;
      }

      OUTLINED_FUNCTION_270_0();
      if (v2)
      {
        sub_1C75504FC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v96;
        }

        OUTLINED_FUNCTION_102_3();
        if (v30)
        {
          OUTLINED_FUNCTION_22_10(v95);
          sub_1C6FB226C();
          inited = v97;
        }

        OUTLINED_FUNCTION_416();
      }
    }

    sub_1C7027AF4();
    OUTLINED_FUNCTION_507();

    OUTLINED_FUNCTION_239();
  }

  v100 = *(v2 + 16);
  v101 = v2 + 32;
  v0 = MEMORY[0x1E69E7CC0];
LABEL_111:
  inited = v2 + 32;
  while (v100)
  {
    v29 = *(v2 + 16);
    if (!v29)
    {
      goto LABEL_261;
    }

    v102 = OUTLINED_FUNCTION_349();
    memcpy(v102, v103, 0x42uLL);
    if (v239.n128_u8[2] == 1)
    {
      v104 = OUTLINED_FUNCTION_288();
      sub_1C7025FF8(v104, v105);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v234 = v0;
      if ((v106 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_7();
        sub_1C716D940();
        v0 = v234;
      }

      OUTLINED_FUNCTION_399();
      if (v30)
      {
        OUTLINED_FUNCTION_96_2(v107);
        OUTLINED_FUNCTION_177();
        sub_1C716D940();
        v0 = v234;
      }

      OUTLINED_FUNCTION_299();
      v108 = OUTLINED_FUNCTION_267(v0 + 72 * v27);
      memcpy(v108, v109, v110);
      OUTLINED_FUNCTION_239();
      goto LABEL_111;
    }

    OUTLINED_FUNCTION_522();
  }

  OUTLINED_FUNCTION_557();
  inited = MEMORY[0x1E69E7CC0];
  while (v2 != -32)
  {
    OUTLINED_FUNCTION_503();
    if (v30)
    {
      goto LABEL_262;
    }

    OUTLINED_FUNCTION_270_0();
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v112;
      }

      OUTLINED_FUNCTION_102_3();
      if (v30)
      {
        OUTLINED_FUNCTION_22_10(v111);
        sub_1C6FB226C();
        inited = v113;
      }

      OUTLINED_FUNCTION_416();
    }
  }

  sub_1C7027AF4();
  OUTLINED_FUNCTION_364();
  v2 = v224;
  if (v0)
  {
    v114 = v229;
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v228;
    if ((v115 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v114 = v205;
    }

    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v116);
      sub_1C6FB20F8();
      v114 = v206;
    }

    OUTLINED_FUNCTION_171();
    v2 = v224;
  }

  else
  {
    v114 = v229;
    v27 = v228;
  }

  v117 = 0;
  v118 = *(v27 + 16);
  v0 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v118 != v117)
    {
      v29 = *(v27 + 16);
      if (v117 >= v29)
      {
        goto LABEL_263;
      }

      v100 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v101 = *(v2 + 72);
      OUTLINED_FUNCTION_4_9();
      sub_1C702659C();
      OUTLINED_FUNCTION_350();
      sub_1C702659C();
      OUTLINED_FUNCTION_449();
      v120 = *(v119 + 44);
      inited = v94[v120];
      if (v94[v120])
      {
        OUTLINED_FUNCTION_3_12();
        sub_1C70265F0();
        if (inited == 1)
        {
          OUTLINED_FUNCTION_1_19();
          OUTLINED_FUNCTION_308();
          sub_1C70267FC();
          v121 = swift_isUniquelyReferenced_nonNull_native();
          v236.n128_u64[0] = v0;
          if ((v121 & 1) == 0)
          {
            v122 = OUTLINED_FUNCTION_11_10();
            sub_1C716DCA8(v122, v123, v124);
            v0 = v236.n128_u64[0];
          }

          OUTLINED_FUNCTION_399();
          if (v30)
          {
            OUTLINED_FUNCTION_41_5(v125);
            OUTLINED_FUNCTION_177();
            sub_1C716DCA8(v126, v127, v128);
            v0 = v236.n128_u64[0];
          }

          OUTLINED_FUNCTION_299();
          OUTLINED_FUNCTION_1_19();
          sub_1C70267FC();
          v2 = v224;
          goto LABEL_149;
        }
      }

      else
      {
        OUTLINED_FUNCTION_3_12();
        sub_1C70265F0();
      }

      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_308();
      sub_1C70265F0();
      ++v117;
LABEL_149:
      v27 = v228;
      continue;
    }

    break;
  }

  v129 = *(v0 + 16);
  if (v129)
  {
    OUTLINED_FUNCTION_449();
    v100 = *(v130 + 48);
    OUTLINED_FUNCTION_191();
    v131 = v2;
    v2 = v0 + v132;
    v101 = *(v131 + 72);
    inited = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_218();
      sub_1C702659C();
      OUTLINED_FUNCTION_603();
      OUTLINED_FUNCTION_599();
      if (v117)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v135;
        }

        OUTLINED_FUNCTION_282_0();
        if (v30)
        {
          OUTLINED_FUNCTION_57(v133);
          sub_1C6FB226C();
          inited = v136;
        }

        OUTLINED_FUNCTION_257();
      }

      OUTLINED_FUNCTION_526();
    }

    while (!v134);
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v114 = v207;
    }

    v2 = *(v114 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v137);
      sub_1C6FB20F8();
      v114 = v208;
    }

    OUTLINED_FUNCTION_171();
  }

  OUTLINED_FUNCTION_493();
  v0 = MEMORY[0x1E69E7CC0];
  v138 = 56;
LABEL_169:
  v29 = v129 + v100 * v138;
  while (v101 != v100)
  {
    if (v100 >= *(inited + 16))
    {
      goto LABEL_264;
    }

    ++v100;
    v139 = v29 + 56;
    v140 = *(v29 + 104);
    v29 += 56;
    if (v140 == 1)
    {
      v2 = *(v139 + 8);
      v229 = *v139;
      v228 = *(v139 + 16);
      LODWORD(v227) = *(v139 + 24);
      v141 = *(v139 + 32);
      v27 = *(v139 + 40);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_530();
      *(v142 - 256) = v129;
      v143 = v114;
      if ((v144 & 1) == 0)
      {
        v145 = OUTLINED_FUNCTION_11_10();
        sub_1C716DC6C(v145, v146, v147, v148, v149, v150, v151);
        OUTLINED_FUNCTION_187();
      }

      v153 = *(v0 + 16);
      v152 = *(v0 + 24);
      v154 = 56;
      if (v153 >= v152 >> 1)
      {
        OUTLINED_FUNCTION_41_5(v152);
        OUTLINED_FUNCTION_186();
        sub_1C716DC6C(v158, v159, v160, v161, v162, v163, v164);
        OUTLINED_FUNCTION_187();
      }

      *(v0 + 16) = v153 + 1;
      v155 = v0 + v153 * v154;
      *(v155 + 32) = v229;
      *(v155 + 40) = v2;
      OUTLINED_FUNCTION_277(v155);
      OUTLINED_FUNCTION_570(v156);
      *(v157 + 64) = v141;
      *(v157 + 72) = v27;
      *(v157 + 80) = 1;
      v114 = v143;
      v129 = v231;
      goto LABEL_169;
    }
  }

  OUTLINED_FUNCTION_531();
  inited = MEMORY[0x1E69E7CC0];
  v165 = 56;
  while (v129 != v27)
  {
    OUTLINED_FUNCTION_502();
    if (v30)
    {
      goto LABEL_265;
    }

    ++v27;
    v2 = *(v0 + v29);
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v167;
      }

      OUTLINED_FUNCTION_105_2();
      if (v30)
      {
        OUTLINED_FUNCTION_22_10(v166);
        sub_1C6FB226C();
        inited = v168;
      }

      OUTLINED_FUNCTION_174();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  OUTLINED_FUNCTION_369();
  if (v0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_275();
    if ((v169 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v114 = v209;
    }

    v2 = *(v114 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v170);
      sub_1C6FB20F8();
      v114 = v210;
    }

    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_369();
  }

  else
  {
    OUTLINED_FUNCTION_275();
  }

  v171 = 0;
  v27 = MEMORY[0x48];
  v0 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v27 != v171)
    {
      v29 = *(v165 + 16);
      if (v171 >= v29)
      {
        goto LABEL_266;
      }

      OUTLINED_FUNCTION_5_16();
      sub_1C702659C();
      v172 = v225;
      OUTLINED_FUNCTION_350();
      sub_1C702659C();
      v173 = *(v2 + 32);
      inited = *(v172 + v173);
      if (*(v172 + v173))
      {
        OUTLINED_FUNCTION_2_11();
        sub_1C70265F0();
        if (inited == 1)
        {
          OUTLINED_FUNCTION_0_15();
          OUTLINED_FUNCTION_194();
          sub_1C70267FC();
          v174 = swift_isUniquelyReferenced_nonNull_native();
          v236.n128_u64[0] = v0;
          if ((v174 & 1) == 0)
          {
            OUTLINED_FUNCTION_11_10();
            sub_1C716DC24();
            v0 = v236.n128_u64[0];
          }

          v176 = *(v0 + 16);
          v175 = *(v0 + 24);
          v2 = v176 + 1;
          if (v176 >= v175 >> 1)
          {
            OUTLINED_FUNCTION_41_5(v175);
            OUTLINED_FUNCTION_177();
            sub_1C716DC24();
            v0 = v236.n128_u64[0];
          }

          OUTLINED_FUNCTION_299();
          OUTLINED_FUNCTION_0_15();
          sub_1C70267FC();
          OUTLINED_FUNCTION_369();
          goto LABEL_206;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_11();
        sub_1C70265F0();
      }

      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_194();
      sub_1C70265F0();
      ++v171;
LABEL_206:
      v165 = v226;
      continue;
    }

    break;
  }

  v177 = *(v0 + 16);
  if (v177)
  {
    v165 = *(v2 + 28);
    OUTLINED_FUNCTION_191();
    v2 = v0 + v178;
    v179 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_210_0();
      sub_1C702659C();
      OUTLINED_FUNCTION_603();
      OUTLINED_FUNCTION_599();
      if (v171)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          v179 = v181;
        }

        OUTLINED_FUNCTION_282_0();
        if (v30)
        {
          OUTLINED_FUNCTION_57(v180);
          sub_1C6FB226C();
          v179 = v182;
        }

        OUTLINED_FUNCTION_257();
      }

      OUTLINED_FUNCTION_526();
    }

    while (!v134);
  }

  else
  {

    v179 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(v179);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v114 = v211;
    }

    v2 = *(v114 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v183);
      sub_1C6FB20F8();
      v114 = v212;
    }

    OUTLINED_FUNCTION_171();
  }

  inited = v220;
  OUTLINED_FUNCTION_517();
  v27 = inited - 8;
  v0 = MEMORY[0x1E69E7CC0];
  while (v165 != v177)
  {
    OUTLINED_FUNCTION_528();
    if (v30)
    {
      goto LABEL_267;
    }

    ++v177;
    if (*(v29 + 66) == 1)
    {
      v229 = v114;
      v185 = *(v29 + 40);
      v184 = *(v29 + 48);
      v186 = *(v29 + 56);
      v187 = *(v29 + 64);
      LODWORD(v228) = *(v29 + 65);
      v2 = *(v29 + 72);
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_530();
      *(v188 - 256) = v27;
      v230 = v187;
      if ((v189 & 1) == 0)
      {
        OUTLINED_FUNCTION_11_10();
        sub_1C716DBAC();
        OUTLINED_FUNCTION_187();
      }

      v190 = *(v0 + 16);
      OUTLINED_FUNCTION_305();
      if (v30)
      {
        OUTLINED_FUNCTION_41_5(v191);
        OUTLINED_FUNCTION_146();
        sub_1C716DBAC();
        OUTLINED_FUNCTION_187();
      }

      *(v0 + 16) = v27;
      v192 = (v0 + 40 * v190);
      v192[4] = v185;
      v192[5] = v184;
      v192[6] = v186;
      OUTLINED_FUNCTION_570(v192);
      OUTLINED_FUNCTION_451(v193);
      *(v194 + 58) = 1;
      *(v194 + 64) = v2;
      v114 = v229;
      v27 = v231;
    }
  }

  OUTLINED_FUNCTION_531();
  inited = MEMORY[0x1E69E7CC0];
  while (v177 != v27)
  {
    OUTLINED_FUNCTION_502();
    if (v30)
    {
      goto LABEL_268;
    }

    OUTLINED_FUNCTION_490();
    ++v27;
    if (v2)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v196;
      }

      OUTLINED_FUNCTION_283();
      if (v30)
      {
        OUTLINED_FUNCTION_22_10(v195);
        sub_1C6FB226C();
        inited = v197;
      }

      OUTLINED_FUNCTION_415();
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_364();
  if (v0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v114 = v213;
    }

    OUTLINED_FUNCTION_134_0();
    if (v30)
    {
      OUTLINED_FUNCTION_15_2(v198);
      sub_1C6FB20F8();
      v114 = v214;
    }

    OUTLINED_FUNCTION_171();
  }

  sub_1C6FDE498(v114);

  v199 = OUTLINED_FUNCTION_228();
  sub_1C7027A58(v199);
LABEL_250:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C7013BC0()
{
  OUTLINED_FUNCTION_33();
  v344 = v1;
  v3 = v2;
  v323 = v4;
  type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v329 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_130();
  v337 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  v326 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  type metadata accessor for TimeExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v332 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  v327 = v14;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  v16 = v3[1];
  v18 = v3[2];
  v17 = v3[3];
  v20 = v3[4];
  v19 = v3[5];
  v22 = v3[6];
  v21 = v3[7];
  v24 = v3[8];
  v23 = v3[9];
  v324 = *v3;
  v352[0] = *v3;
  v352[1] = v16;
  v335 = v16;
  v336 = v17;
  v352[2] = v18;
  v352[3] = v17;
  v352[4] = v20;
  v352[5] = v19;
  v334 = v19;
  v330 = v21;
  v331 = v22;
  v352[6] = v22;
  v352[7] = v21;
  v352[8] = v24;
  v352[9] = v23;
  v328 = v23;
  boxed_opaque_existential_0 = ExtendedTokenCollection.allTokens.getter();
  j = 0;
  v27 = *(boxed_opaque_existential_0 + 16);
  for (i = boxed_opaque_existential_0 + 32; ; i += 40)
  {
    if (v27 == j)
    {

      memset(v346, 0, 40);
LABEL_21:
      sub_1C6FD7FC8(v346, &qword_1EC215EA8, &qword_1C7560760);
      sub_1C7027A58(v344);
      goto LABEL_303;
    }

    v29 = *(boxed_opaque_existential_0 + 16);
    if (j >= v29)
    {
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      OUTLINED_FUNCTION_15_2(v29);
      sub_1C6FB20F8();
      v325 = v311;
LABEL_77:
      *(v325 + 16) = boxed_opaque_existential_0;
      *(v325 + 8 * j + 32) = v18;
      goto LABEL_78;
    }

    sub_1C6FB5E28(i, v345);
    v0 = v345[1].n128_u64[1];
    v30 = v345[2].n128_i64[0];
    v31 = __swift_project_boxed_opaque_existential_1(v345, v345[1].n128_i64[1]);
    if (sub_1C702AEB0(v31, v344, v0, v30))
    {
      break;
    }

    ++j;
    __swift_destroy_boxed_opaque_existential_1(v345);
  }

  v32 = OUTLINED_FUNCTION_221();
  sub_1C6F699F8(v32, v33);
  if (!v346[3])
  {
    goto LABEL_21;
  }

  sub_1C6FD7FC8(v346, &qword_1EC215EA8, &qword_1C7560760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215EB0, &qword_1C7560768);
  boxed_opaque_existential_0 = swift_allocObject();
  *(boxed_opaque_existential_0 + 16) = xmmword_1C75604F0;
  *(boxed_opaque_existential_0 + 32) = v18;
  *(boxed_opaque_existential_0 + 40) = v20;
  sub_1C75504FC();
  sub_1C75504FC();
  v18 = MEMORY[0x1E69E7CC0];
  for (j = 32; j != 48; j += 8)
  {
    v0 = *(boxed_opaque_existential_0 + j);
    v34 = *(v0 + 16);
    v35 = *(v18 + 16);
    if (__OFADD__(v35, v34))
    {
      goto LABEL_306;
    }

    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v35 + v34 > *(v18 + 24) >> 1)
    {
      OUTLINED_FUNCTION_141_2();
      sub_1C6FB2320(v36);
      v18 = v37;
    }

    if (*(v0 + 16))
    {
      OUTLINED_FUNCTION_495();
      if (v38 < v34)
      {
        goto LABEL_322;
      }

      swift_arrayInitWithCopy();

      if (v34)
      {
        v39 = *(v18 + 16);
        v40 = __OFADD__(v39, v34);
        v29 = v39 + v34;
        if (v40)
        {
          goto LABEL_323;
        }

        *(v18 + 16) = v29;
      }
    }

    else
    {

      if (v34)
      {
        goto LABEL_307;
      }
    }
  }

  swift_setDeallocating();
  sub_1C6FDC9C8();
  v0 = 0;
  v41 = v24 + 32;
  v42 = MEMORY[0x1E69E7CC0];
  j = *(v24 + 16);
LABEL_23:
  v43 = (v41 + (v0 << 6));
  while (j != v0)
  {
    v29 = *(v24 + 16);
    if (v0 >= v29)
    {
      goto LABEL_308;
    }

    v44 = *v43;
    v45 = v43[1];
    v46 = v43[3];
    v345[2] = v43[2];
    v345[3] = v46;
    v345[0] = v44;
    v345[1] = v45;
    v349 = &type metadata for TripExtendedToken;
    v350 = sub_1C70269F4();
    v47 = swift_allocObject();
    v348[0] = v47;
    v48 = v43[2];
    v49 = v43[3];
    v50 = v43[1];
    *(v47 + 16) = *v43;
    *(v47 + 32) = v50;
    *(v47 + 48) = v48;
    *(v47 + 64) = v49;
    if (*(v47 + 40))
    {
      v51 = OUTLINED_FUNCTION_273();
      sub_1C7026698(v51, v52);
      v53 = OUTLINED_FUNCTION_273();
      sub_1C7026698(v53, v54);
      v55 = OUTLINED_FUNCTION_273();
      sub_1C7026698(v55, v56);
    }

    else
    {
      OUTLINED_FUNCTION_419();
      v57 = OUTLINED_FUNCTION_221();
      sub_1C7026698(v57, v58);
      v59 = OUTLINED_FUNCTION_221();
      sub_1C7026698(v59, v60);
      v61 = OUTLINED_FUNCTION_221();
      sub_1C7026698(v61, v62);
      boxed_opaque_existential_0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v64 = OUTLINED_FUNCTION_152();
        memcpy(v64, v65, 0x41uLL);
        sub_1C7025F74(v346);
LABEL_33:
        v68 = OUTLINED_FUNCTION_339();
        sub_1C70266D0(v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v351 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_16_10();
          sub_1C716DBE8();
          v42 = v351;
        }

        v71 = *(v42 + 16);
        v70 = *(v42 + 24);
        v72 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v70);
          v74 = v73;
          OUTLINED_FUNCTION_222();
          sub_1C716DBE8();
          v72 = v74;
          v42 = v351;
        }

        ++v0;
        *(v42 + 16) = v72;
        OUTLINED_FUNCTION_233((v42 + (v71 << 6)), v345[0], v345[1], v345[2], v345[3]);
        v41 = v24 + 32;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v66 = OUTLINED_FUNCTION_152();
        memcpy(v66, v67, 0x42uLL);
        sub_1C7026030(v346);
        goto LABEL_33;
      }
    }

    v63 = OUTLINED_FUNCTION_339();
    sub_1C70266D0(v63);
    sub_1C70266D0(v345);
    v43 += 4;
    ++v0;
  }

  v75 = 0;
  boxed_opaque_existential_0 = MEMORY[0x1E69E7CC0];
  j = *(v18 + 16);
  v0 = &type metadata for PersonExtendedToken;
LABEL_39:
  v76 = 56 * v75 + 32;
  while (j != v75)
  {
    v29 = *(v18 + 16);
    if (v75 >= v29)
    {
      goto LABEL_309;
    }

    v77 = *(v18 + v76);
    v78 = *(v18 + v76 + 16);
    v79 = *(v18 + v76 + 32);
    v345[3].n128_u64[0] = *(v18 + v76 + 48);
    v345[1] = v78;
    v345[2] = v79;
    v345[0] = v77;
    v349 = &type metadata for LocationExtendedToken;
    v350 = sub_1C70268F8();
    OUTLINED_FUNCTION_439();
    v80 = swift_allocObject();
    v348[0] = v80;
    v81 = *(v18 + v76 + 48);
    v82 = *(v18 + v76);
    v83 = *(v18 + v76 + 32);
    *(v80 + 32) = *(v18 + v76 + 16);
    *(v80 + 48) = v83;
    *(v80 + 64) = v81;
    *(v80 + 16) = v82;
    if (*(v80 + 56))
    {
      v84 = OUTLINED_FUNCTION_273();
      sub_1C70260B4(v84, v85);
      v86 = OUTLINED_FUNCTION_273();
      sub_1C70260B4(v86, v87);
      v88 = OUTLINED_FUNCTION_273();
      sub_1C70260B4(v88, v89);
    }

    else
    {
      OUTLINED_FUNCTION_419();
      v90 = OUTLINED_FUNCTION_221();
      sub_1C70260B4(v90, v91);
      v92 = OUTLINED_FUNCTION_221();
      sub_1C70260B4(v92, v93);
      v94 = OUTLINED_FUNCTION_221();
      sub_1C70260B4(v94, v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v97 = OUTLINED_FUNCTION_152();
        memcpy(v97, v98, 0x41uLL);
        sub_1C7025F74(v346);
LABEL_49:
        v101 = OUTLINED_FUNCTION_339();
        sub_1C70260EC(v101);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v351 = boxed_opaque_existential_0;
        if ((v102 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_10();
          sub_1C716DD2C();
          boxed_opaque_existential_0 = v351;
        }

        v104 = *(boxed_opaque_existential_0 + 16);
        v103 = *(boxed_opaque_existential_0 + 24);
        if (v104 >= v103 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v103);
          OUTLINED_FUNCTION_321();
          sub_1C716DD2C();
          boxed_opaque_existential_0 = v351;
        }

        ++v75;
        *(boxed_opaque_existential_0 + 16) = v104 + 1;
        OUTLINED_FUNCTION_47_8((boxed_opaque_existential_0 + 56 * v104), v345[0], v345[1], v345[2]);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v99 = OUTLINED_FUNCTION_152();
        memcpy(v99, v100, 0x42uLL);
        sub_1C7026030(v346);
        goto LABEL_49;
      }
    }

    v96 = OUTLINED_FUNCTION_339();
    sub_1C70260EC(v96);
    sub_1C70260EC(v345);
    v76 += 56;
    ++v75;
  }

  j = 0;
  v105 = *(v42 + 16);
  v106 = MEMORY[0x1E69E7CC0];
LABEL_55:
  v29 = (j << 6) + 88;
  while (v105 != j)
  {
    if (j >= *(v42 + 16))
    {
      goto LABEL_310;
    }

    v18 = *(v42 + v29);
    v29 += 64;
    ++j;
    if (v18)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v106 = v109;
      }

      v108 = *(v106 + 16);
      v107 = *(v106 + 24);
      v0 = v108 + 1;
      if (v108 >= v107 >> 1)
      {
        OUTLINED_FUNCTION_45_6(v107);
        sub_1C6FB226C();
        v106 = v110;
      }

      *(v106 + 16) = v0;
      *(v106 + 8 * v108 + 32) = v18;
      goto LABEL_55;
    }
  }

  v18 = sub_1C7027A88(v106);

  if (v18)
  {

    goto LABEL_76;
  }

  j = 0;
  v111 = *(boxed_opaque_existential_0 + 16);
  v112 = MEMORY[0x1E69E7CC0];
  v0 = 56;
  while (v111 != j)
  {
    OUTLINED_FUNCTION_527();
    if (v113)
    {
      goto LABEL_324;
    }

    v18 = *(boxed_opaque_existential_0 + v29);
    ++j;
    if (v18)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v112 = v116;
      }

      v115 = *(v112 + 16);
      v114 = *(v112 + 24);
      if (v115 >= v114 >> 1)
      {
        OUTLINED_FUNCTION_15(v114);
        OUTLINED_FUNCTION_131_0();
        sub_1C6FB226C();
        v112 = v117;
      }

      *(v112 + 16) = v115 + 1;
      *(v112 + 8 * v115 + 32) = v18;
    }
  }

  v18 = sub_1C7027A88(v112);

  if (v18)
  {
LABEL_76:
    OUTLINED_FUNCTION_356();
    j = *(v118 + 16);
    v325 = v118;
    OUTLINED_FUNCTION_134_0();
    if (!v113)
    {
      goto LABEL_77;
    }

    goto LABEL_326;
  }

  v325 = MEMORY[0x1E69E7CC0];
LABEL_78:
  v119 = 0;
  v120 = v336 + 64;
  boxed_opaque_existential_0 = MEMORY[0x1E69E7CC0];
  v333 = *(v336 + 16);
LABEL_79:
  v121 = v120 + 40 * v119;
  while (v333 != v119)
  {
    v29 = *(v336 + 16);
    if (v119 >= v29)
    {
      goto LABEL_311;
    }

    v122 = *(v121 - 32);
    v123 = *(v121 - 24);
    v18 = *(v121 - 16);
    v0 = *(v121 - 8);
    j = *(v121 - 7);
    v124 = *v121;
    v345[1].n128_u64[1] = &type metadata for GenericLocationExtendedToken;
    v345[2].n128_u64[0] = sub_1C702694C();
    OUTLINED_FUNCTION_328();
    v125 = swift_allocObject();
    v345[0].n128_u64[0] = v125;
    *(v125 + 16) = v122;
    *(v125 + 24) = v123;
    *(v125 + 32) = v18;
    *(v125 + 40) = v0;
    *(v125 + 41) = j;
    *(v125 + 48) = v124;
    if (v0)
    {
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_468();
    }

    else
    {
      OUTLINED_FUNCTION_383();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_468();
      v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v126 = OUTLINED_FUNCTION_152();
        memcpy(v126, v127, 0x41uLL);
        sub_1C7025F74(v346);
LABEL_89:
        __swift_destroy_boxed_opaque_existential_1(v345);

        v130 = swift_isUniquelyReferenced_nonNull_native();
        v347 = boxed_opaque_existential_0;
        if ((v130 & 1) == 0)
        {
          OUTLINED_FUNCTION_31_7();
          sub_1C716DCF0();
          boxed_opaque_existential_0 = v347;
        }

        OUTLINED_FUNCTION_124_1();
        if (v113)
        {
          OUTLINED_FUNCTION_77_3(v131);
          OUTLINED_FUNCTION_137_0();
          sub_1C716DCF0();
          boxed_opaque_existential_0 = v347;
        }

        ++v119;
        *(boxed_opaque_existential_0 + 16) = v0;
        v132 = boxed_opaque_existential_0 + 40 * v121;
        *(v132 + 32) = v122;
        *(v132 + 40) = v123;
        *(v132 + 48) = v18;
        *(v132 + 56) = 0;
        *(v132 + 57) = j;
        *(v132 + 64) = v124;
        v120 = v336 + 64;
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v128 = OUTLINED_FUNCTION_152();
        memcpy(v128, v129, 0x42uLL);
        sub_1C7026030(v346);
        goto LABEL_89;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v345);

    v121 += 40;
    ++v119;
  }

  j = 0;
  v133 = *(boxed_opaque_existential_0 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  while (v133 != j)
  {
    OUTLINED_FUNCTION_527();
    if (v113)
    {
      goto LABEL_312;
    }

    v134 = *(boxed_opaque_existential_0 + v29);
    ++j;
    if (v134)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_7();
        sub_1C6FB226C();
        v18 = v137;
      }

      v136 = *(v18 + 16);
      v135 = *(v18 + 24);
      v0 = v136 + 1;
      if (v136 >= v135 >> 1)
      {
        OUTLINED_FUNCTION_45_6(v135);
        sub_1C6FB226C();
        v18 = v138;
      }

      *(v18 + 16) = v0;
      *(v18 + 8 * v136 + 32) = v134;
    }
  }

  v139 = sub_1C7027A88(v18);

  if (v139)
  {
    v140 = v324;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
    }

    OUTLINED_FUNCTION_583();
    if (v113)
    {
      OUTLINED_FUNCTION_22_10(v141);
      sub_1C6FB20F8();
      v325 = v314;
    }

    OUTLINED_FUNCTION_518();
  }

  else
  {
    v140 = v324;
  }

  j = 0;
  v142 = v140 + 32;
  boxed_opaque_existential_0 = MEMORY[0x1E69E7CC0];
  v143 = *(v140 + 16);
  v18 = &type metadata for PetExtendedToken;
  v336 = v140 + 32;
LABEL_111:
  v144 = (v142 + 72 * j);
  while (v143 != j)
  {
    v29 = *(v140 + 16);
    if (j >= v29)
    {
      goto LABEL_313;
    }

    memcpy(v345, v144, 0x41uLL);
    v349 = &type metadata for PersonExtendedToken;
    v350 = sub_1C7026850();
    v0 = swift_allocObject();
    v145 = OUTLINED_FUNCTION_584(v0);
    memmove(v145, v144, 0x41uLL);
    if (*(v0 + 40))
    {
      v146 = OUTLINED_FUNCTION_273();
      sub_1C7025F3C(v146, v147);
      v148 = OUTLINED_FUNCTION_273();
      sub_1C7025F3C(v148, v149);
      v150 = OUTLINED_FUNCTION_273();
      sub_1C7025F3C(v150, v151);
    }

    else
    {
      OUTLINED_FUNCTION_419();
      v152 = OUTLINED_FUNCTION_221();
      sub_1C7025F3C(v152, v153);
      v154 = OUTLINED_FUNCTION_221();
      sub_1C7025F3C(v154, v155);
      v156 = OUTLINED_FUNCTION_221();
      sub_1C7025F3C(v156, v157);
      v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v159 = OUTLINED_FUNCTION_152();
        memcpy(v159, v160, 0x41uLL);
        sub_1C7025F74(v346);
LABEL_121:
        v163 = OUTLINED_FUNCTION_339();
        sub_1C7025F74(v163);
        v164 = swift_isUniquelyReferenced_nonNull_native();
        v351 = boxed_opaque_existential_0;
        if ((v164 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_10();
          sub_1C716D97C();
          boxed_opaque_existential_0 = v351;
        }

        v166 = *(boxed_opaque_existential_0 + 16);
        v165 = *(boxed_opaque_existential_0 + 24);
        if (v166 >= v165 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v165);
          OUTLINED_FUNCTION_336();
          sub_1C716D97C();
          boxed_opaque_existential_0 = v351;
        }

        ++j;
        *(boxed_opaque_existential_0 + 16) = v166 + 1;
        memcpy((boxed_opaque_existential_0 + 72 * v166 + 32), v345, 0x41uLL);
        v140 = v324;
        v142 = v336;
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_379();
      if (swift_dynamicCast())
      {
        v161 = OUTLINED_FUNCTION_152();
        memcpy(v161, v162, 0x42uLL);
        sub_1C7026030(v346);
        goto LABEL_121;
      }
    }

    v158 = OUTLINED_FUNCTION_339();
    sub_1C7025F74(v158);
    sub_1C7025F74(v345);
    v144 += 72;
    ++j;
  }

  v167 = v323;
  v336 = 88;
  if (v323)
  {
    sub_1C75504FC();

    goto LABEL_138;
  }

  j = 0;
  v168 = *(boxed_opaque_existential_0 + 16);
  v169 = MEMORY[0x1E69E7CC0];
  while (v168 != j)
  {
    OUTLINED_FUNCTION_527();
    if (v113)
    {
      goto LABEL_325;
    }

    ++j;
    v170 = *(boxed_opaque_existential_0 + v29);
    if (v170)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v169 = v173;
      }

      v171 = *(v169 + 16);
      OUTLINED_FUNCTION_238();
      if (v113)
      {
        OUTLINED_FUNCTION_45_6(v172);
        sub_1C6FB226C();
        v169 = v174;
      }

      *(v169 + 16) = v0;
      *(v169 + 8 * v171 + 32) = v170;
    }
  }

  sub_1C7027AF4();
  v167 = v175;

  if (v167)
  {
LABEL_138:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v325 = v312;
    }

    v176 = *(v325 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v113)
    {
      OUTLINED_FUNCTION_15_2(v177);
      sub_1C6FB20F8();
      v325 = v313;
    }

    *(v325 + 16) = boxed_opaque_existential_0;
    *(v325 + 8 * v176 + 32) = v167;
  }

  j = 0;
  v178 = v335 + 32;
  boxed_opaque_existential_0 = MEMORY[0x1E69E7CC0];
  v179 = *(v335 + 16);
  v180 = &unk_1F46AF1B8;
  v0 = &unk_1C7562CE0;
  v324 = v335 + 32;
LABEL_144:
  v181 = (v178 + 72 * j);
  while (v179 != j)
  {
    v29 = *(v335 + 16);
    if (j >= v29)
    {
      goto LABEL_314;
    }

    memcpy(v352, v181, 0x42uLL);
    v349 = &type metadata for PetExtendedToken;
    v350 = sub_1C70268A4();
    v182 = swift_allocObject();
    v183 = OUTLINED_FUNCTION_584(v182);
    memmove(v183, v181, 0x42uLL);
    if (*(v182 + 40))
    {
      OUTLINED_FUNCTION_475();
      OUTLINED_FUNCTION_475();
      OUTLINED_FUNCTION_475();
    }

    else
    {
      OUTLINED_FUNCTION_419();
      OUTLINED_FUNCTION_475();
      OUTLINED_FUNCTION_475();
      OUTLINED_FUNCTION_475();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
      if (swift_dynamicCast())
      {
        memcpy(v346, v345, 0x41uLL);
        sub_1C7025F74(v346);
LABEL_154:
        __swift_destroy_boxed_opaque_existential_1(v348);
        sub_1C7026030(v352);
        v186 = swift_isUniquelyReferenced_nonNull_native();
        v351 = boxed_opaque_existential_0;
        if ((v186 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_10();
          sub_1C716D940();
          boxed_opaque_existential_0 = v351;
        }

        v188 = *(boxed_opaque_existential_0 + 16);
        v187 = *(boxed_opaque_existential_0 + 24);
        if (v188 >= v187 >> 1)
        {
          OUTLINED_FUNCTION_41_5(v187);
          OUTLINED_FUNCTION_336();
          sub_1C716D940();
          boxed_opaque_existential_0 = v351;
        }

        ++j;
        *(boxed_opaque_existential_0 + 16) = v188 + 1;
        memcpy((boxed_opaque_existential_0 + 72 * v188 + 32), v352, 0x42uLL);
        v178 = v335 + 32;
        goto LABEL_144;
      }

      OUTLINED_FUNCTION_419();
      if (swift_dynamicCast())
      {
        v184 = OUTLINED_FUNCTION_221();
        memcpy(v184, v185, 0x42uLL);
        sub_1C7026030(v345);
        goto LABEL_154;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v348);
    sub_1C7026030(v352);
    sub_1C7026030(v352);
    v181 += 72;
    ++j;
  }

  j = 0;
  v189 = *(boxed_opaque_existential_0 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v0 = 72;
  while (v189 != j)
  {
    OUTLINED_FUNCTION_527();
    if (v113)
    {
      goto LABEL_315;
    }

    ++j;
    v180 = *(boxed_opaque_existential_0 + v29);
    if (v180)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_7();
        sub_1C6FB226C();
        v18 = v192;
      }

      v191 = *(v18 + 16);
      v190 = *(v18 + 24);
      if (v191 >= v190 >> 1)
      {
        OUTLINED_FUNCTION_15(v190);
        OUTLINED_FUNCTION_141_2();
        sub_1C6FB226C();
        v18 = v193;
      }

      *(v18 + 16) = v191 + 1;
      *(v18 + 8 * v191 + 32) = v180;
    }
  }

  sub_1C7027AF4();
  boxed_opaque_existential_0 = v194;

  if (boxed_opaque_existential_0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
    }

    OUTLINED_FUNCTION_583();
    if (v113)
    {
      OUTLINED_FUNCTION_22_10(v195);
      sub_1C6FB20F8();
      v325 = v315;
    }

    OUTLINED_FUNCTION_518();
  }

  else
  {
    v196 = v334;
  }

  j = 0;
  v336 = MEMORY[0x1E69E7CC0];
  v18 = &qword_1EDD0A7D0;
  v197 = *(v196 + 16);
  v0 = &type metadata for PersonExtendedToken;
  while (v197 != j)
  {
    v29 = *(v196 + 16);
    if (j >= v29)
    {
      goto LABEL_316;
    }

    OUTLINED_FUNCTION_148_1();
    v180 = (v199 & ~v198);
    sub_1C702659C();
    sub_1C702659C();
    v345[1].n128_u64[1] = v332;
    OUTLINED_FUNCTION_67_4();
    v345[2].n128_u64[0] = sub_1C70259B4(&qword_1EDD0A7D0, v200, protocol conformance descriptor for TimeExtendedToken);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v345);
    OUTLINED_FUNCTION_423();
    sub_1C702659C();
    if (*(boxed_opaque_existential_0 + 56))
    {
LABEL_181:
      __swift_destroy_boxed_opaque_existential_1(v345);
      OUTLINED_FUNCTION_4_9();
      sub_1C70265F0();
      sub_1C70265F0();
      ++j;
      v196 = v334;
      continue;
    }

    OUTLINED_FUNCTION_383();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
    OUTLINED_FUNCTION_237();
    if (swift_dynamicCast())
    {
      v201 = OUTLINED_FUNCTION_152();
      memcpy(v201, v202, 0x41uLL);
      sub_1C7025F74(v346);
    }

    else
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (!swift_dynamicCast())
      {
        goto LABEL_181;
      }

      v203 = OUTLINED_FUNCTION_152();
      memcpy(v203, v204, 0x42uLL);
      sub_1C7026030(v346);
    }

    __swift_destroy_boxed_opaque_existential_1(v345);
    OUTLINED_FUNCTION_3_12();
    sub_1C70265F0();
    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
    boxed_opaque_existential_0 = v336;
    v205 = swift_isUniquelyReferenced_nonNull_native();
    v347 = v336;
    if ((v205 & 1) == 0)
    {
      v206 = OUTLINED_FUNCTION_31_7();
      sub_1C716DCA8(v206, v207, v208);
      boxed_opaque_existential_0 = v347;
    }

    v210 = *(boxed_opaque_existential_0 + 16);
    v209 = *(boxed_opaque_existential_0 + 24);
    if (v210 >= v209 >> 1)
    {
      OUTLINED_FUNCTION_77_3(v209);
      OUTLINED_FUNCTION_336();
      sub_1C716DCA8(v211, v212, v213);
      boxed_opaque_existential_0 = v347;
    }

    ++j;
    *(boxed_opaque_existential_0 + 16) = v210 + 1;
    v336 = boxed_opaque_existential_0;
    OUTLINED_FUNCTION_1_19();
    sub_1C70267FC();
    v196 = v334;
  }

  v214 = *(v336 + 16);
  if (v214)
  {
    v0 = *(v332 + 48);
    OUTLINED_FUNCTION_148_1();
    v218 = v217 + (v216 & ~v215);
    v220 = *(v219 + 72);
    v221 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_4_9();
      sub_1C702659C();
      v180 = *(v327 + v0);
      sub_1C75504FC();
      sub_1C70265F0();
      if (v180)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_3();
          sub_1C6FB226C();
          v221 = v223;
        }

        boxed_opaque_existential_0 = *(v221 + 16);
        v222 = *(v221 + 24);
        if (boxed_opaque_existential_0 >= v222 >> 1)
        {
          OUTLINED_FUNCTION_15(v222);
          OUTLINED_FUNCTION_186();
          sub_1C6FB226C();
          v221 = v224;
        }

        *(v221 + 16) = boxed_opaque_existential_0 + 1;
        *(v221 + 8 * boxed_opaque_existential_0 + 32) = v180;
      }

      v218 += v220;
      --v214;
    }

    while (v214);
  }

  else
  {

    v221 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(v221);
  OUTLINED_FUNCTION_487();
  j = v325;
  if (boxed_opaque_existential_0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      sub_1C6FB20F8();
      j = v316;
    }

    OUTLINED_FUNCTION_265();
    if (v113)
    {
      OUTLINED_FUNCTION_15(v225);
      OUTLINED_FUNCTION_177();
      sub_1C6FB20F8();
      v325 = v317;
    }

    OUTLINED_FUNCTION_253();
  }

  v18 = 0;
  v226 = v331 + 80;
  v227 = MEMORY[0x1E69E7CC0];
  v338 = *(v331 + 16);
  v336 = v331 + 80;
LABEL_207:
  boxed_opaque_existential_0 = v226 + 56 * v18;
  v340 = v227;
  while (v338 != v18)
  {
    v29 = *(v331 + 16);
    if (v18 >= v29)
    {
      goto LABEL_317;
    }

    v228 = *(boxed_opaque_existential_0 - 48);
    v0 = *(boxed_opaque_existential_0 - 40);
    j = *(boxed_opaque_existential_0 - 32);
    v229 = *(boxed_opaque_existential_0 - 24);
    v230 = *(boxed_opaque_existential_0 - 16);
    v231 = *(boxed_opaque_existential_0 - 8);
    v180 = *boxed_opaque_existential_0;
    v345[1].n128_u64[1] = &type metadata for PartOfDayExtendedToken;
    v345[2].n128_u64[0] = sub_1C70269A0();
    OUTLINED_FUNCTION_520();
    v232 = swift_allocObject();
    v345[0].n128_u64[0] = v232;
    *(v232 + 16) = v228;
    *(v232 + 24) = v0;
    *(v232 + 32) = j;
    *(v232 + 40) = v229;
    *(v232 + 48) = v230;
    *(v232 + 56) = v231;
    *(v232 + 64) = v180;
    if (v229)
    {
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_428();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_468();
    }

    else
    {
      OUTLINED_FUNCTION_383();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_428();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v233 = OUTLINED_FUNCTION_152();
        memcpy(v233, v234, 0x41uLL);
        sub_1C7025F74(v346);
LABEL_217:
        __swift_destroy_boxed_opaque_existential_1(v345);

        v237 = swift_isUniquelyReferenced_nonNull_native();
        v227 = v340;
        v347 = v340;
        if ((v237 & 1) == 0)
        {
          v238 = OUTLINED_FUNCTION_31_7();
          sub_1C716DC6C(v238, v239, v240, v241, v242, v243, v244);
          v227 = v347;
        }

        v226 = v331 + 80;
        v246 = *(v227 + 16);
        v245 = *(v227 + 24);
        v247 = v246 + 1;
        if (v246 >= v245 >> 1)
        {
          v249 = OUTLINED_FUNCTION_77_3(v245);
          v341 = v250;
          sub_1C716DC6C(v249, v250, 1, v251, v252, v253, v254);
          v247 = v341;
          v226 = v331 + 80;
          v227 = v347;
        }

        ++v18;
        *(v227 + 16) = v247;
        v248 = v227 + 56 * v246;
        *(v248 + 32) = v228;
        *(v248 + 40) = v0;
        *(v248 + 48) = j;
        *(v248 + 56) = 0;
        *(v248 + 64) = v230;
        *(v248 + 72) = v231;
        *(v248 + 80) = v180;
        goto LABEL_207;
      }

      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v235 = OUTLINED_FUNCTION_152();
        memcpy(v235, v236, 0x42uLL);
        sub_1C7026030(v346);
        goto LABEL_217;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v345);

    boxed_opaque_existential_0 += 56;
    ++v18;
    v227 = v340;
  }

  boxed_opaque_existential_0 = 0;
  v255 = *(v227 + 16);
  j = MEMORY[0x1E69E7CC0];
  v0 = 72;
LABEL_223:
  v29 = 56 * boxed_opaque_existential_0 + 72;
  while (v255 != boxed_opaque_existential_0)
  {
    if (boxed_opaque_existential_0 >= *(v227 + 16))
    {
      goto LABEL_318;
    }

    ++boxed_opaque_existential_0;
    v18 = *(v227 + v29);
    v29 += 56;
    if (v18)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_3();
        sub_1C6FB226C();
        j = v258;
      }

      v256 = *(j + 16);
      OUTLINED_FUNCTION_305();
      v227 = v340;
      if (v113)
      {
        OUTLINED_FUNCTION_57(v257);
        sub_1C6FB226C();
        v227 = v340;
        j = v259;
      }

      *(j + 16) = v180;
      *(j + 8 * v256 + 32) = v18;
      goto LABEL_223;
    }
  }

  sub_1C7027A88(j);
  OUTLINED_FUNCTION_487();
  if (boxed_opaque_existential_0)
  {
    v260 = v330;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      sub_1C6FB20F8();
    }

    OUTLINED_FUNCTION_265();
    if (v113)
    {
      OUTLINED_FUNCTION_15(v261);
      OUTLINED_FUNCTION_177();
      sub_1C6FB20F8();
      v325 = v318;
    }

    OUTLINED_FUNCTION_253();
  }

  else
  {
    v260 = v330;
  }

  v262 = 0;
  v342 = MEMORY[0x1E69E7CC0];
  j = &qword_1EC215E28;
  v18 = *(v260 + 16);
  while (v18 != v262)
  {
    v29 = *(v260 + 16);
    if (v262 >= v29)
    {
      goto LABEL_319;
    }

    OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_65_4();
    sub_1C702659C();
    boxed_opaque_existential_0 = v337;
    sub_1C702659C();
    v345[1].n128_u64[1] = v329;
    OUTLINED_FUNCTION_66_6();
    v345[2].n128_u64[0] = sub_1C70259B4(&qword_1EC215E28, v263, protocol conformance descriptor for PartOfWeekExtendedToken);
    v264 = __swift_allocate_boxed_opaque_existential_0(v345);
    sub_1C702659C();
    if (v264[3])
    {
LABEL_245:
      __swift_destroy_boxed_opaque_existential_1(v345);
      OUTLINED_FUNCTION_65_4();
      sub_1C70265F0();
      sub_1C70265F0();
      v262 = (v262 + 1);
      v260 = v330;
      continue;
    }

    OUTLINED_FUNCTION_383();
    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
    OUTLINED_FUNCTION_237();
    if (swift_dynamicCast())
    {
      v265 = OUTLINED_FUNCTION_152();
      memcpy(v265, v266, 0x41uLL);
      sub_1C7025F74(v346);
    }

    else
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (!swift_dynamicCast())
      {
        goto LABEL_245;
      }

      v267 = OUTLINED_FUNCTION_152();
      memcpy(v267, v268, 0x42uLL);
      sub_1C7026030(v346);
    }

    __swift_destroy_boxed_opaque_existential_1(v345);
    OUTLINED_FUNCTION_2_11();
    sub_1C70265F0();
    OUTLINED_FUNCTION_0_15();
    sub_1C70267FC();
    boxed_opaque_existential_0 = v342;
    v269 = swift_isUniquelyReferenced_nonNull_native();
    v347 = v342;
    if ((v269 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_7();
      sub_1C716DC24();
      boxed_opaque_existential_0 = v347;
    }

    OUTLINED_FUNCTION_411();
    if (v113)
    {
      OUTLINED_FUNCTION_77_3(v270);
      OUTLINED_FUNCTION_137_0();
      sub_1C716DC24();
      boxed_opaque_existential_0 = v347;
    }

    v262 = (v262 + 1);
    *(boxed_opaque_existential_0 + 16) = v0;
    v342 = boxed_opaque_existential_0;
    OUTLINED_FUNCTION_0_15();
    sub_1C70267FC();
    v260 = v330;
  }

  v271 = *(v342 + 16);
  if (v271)
  {
    v0 = *(v329 + 28);
    OUTLINED_FUNCTION_148_1();
    v275 = v274 + (v273 & ~v272);
    v277 = *(v276 + 72);
    v278 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C702659C();
      v279 = *(v326 + v0);
      sub_1C75504FC();
      sub_1C70265F0();
      if (v279)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_3();
          sub_1C6FB226C();
          v278 = v282;
        }

        v281 = *(v278 + 16);
        v280 = *(v278 + 24);
        if (v281 >= v280 >> 1)
        {
          OUTLINED_FUNCTION_15(v280);
          OUTLINED_FUNCTION_186();
          sub_1C6FB226C();
          v278 = v283;
        }

        *(v278 + 16) = v281 + 1;
        *(v278 + 8 * v281 + 32) = v279;
      }

      v275 += v277;
      --v271;
    }

    while (v271);
  }

  else
  {

    v278 = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(v278);
  OUTLINED_FUNCTION_487();
  j = v325;
  if (boxed_opaque_existential_0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      sub_1C6FB20F8();
      j = v319;
    }

    OUTLINED_FUNCTION_265();
    if (v113)
    {
      OUTLINED_FUNCTION_15(v284);
      OUTLINED_FUNCTION_177();
      sub_1C6FB20F8();
      v325 = v320;
    }

    OUTLINED_FUNCTION_253();
  }

  v18 = 0;
  v285 = v328 + 64;
  v286 = MEMORY[0x1E69E7CC0];
  v343 = *(v328 + 16);
  v335 = v328 + 64;
LABEL_271:
  boxed_opaque_existential_0 = v285 + 40 * v18;
  v339 = v286;
  while (v343 != v18)
  {
    v29 = *(v328 + 16);
    if (v18 >= v29)
    {
      goto LABEL_320;
    }

    v287 = *(boxed_opaque_existential_0 - 32);
    v0 = *(boxed_opaque_existential_0 - 24);
    j = *(boxed_opaque_existential_0 - 16);
    v288 = *(boxed_opaque_existential_0 - 8);
    v289 = *(boxed_opaque_existential_0 - 7);
    v290 = *(boxed_opaque_existential_0 - 6);
    v291 = *boxed_opaque_existential_0;
    v345[1].n128_u64[1] = &type metadata for EventExtendedToken;
    v345[2].n128_u64[0] = sub_1C7026A9C();
    OUTLINED_FUNCTION_328();
    v292 = swift_allocObject();
    v345[0].n128_u64[0] = v292;
    v336 = v287;
    *(v292 + 16) = v287;
    *(v292 + 24) = v0;
    *(v292 + 32) = j;
    *(v292 + 40) = v288;
    *(v292 + 41) = v289;
    LODWORD(v337) = v290;
    *(v292 + 42) = v290;
    *(v292 + 48) = v291;
    if (v288)
    {
      OUTLINED_FUNCTION_468();
      OUTLINED_FUNCTION_428();
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v293 = j;
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_468();
      OUTLINED_FUNCTION_428();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v294 = OUTLINED_FUNCTION_152();
        memcpy(v294, v295, 0x41uLL);
        sub_1C7025F74(v346);
LABEL_281:
        __swift_destroy_boxed_opaque_existential_1(v345);

        v298 = v339;
        v299 = swift_isUniquelyReferenced_nonNull_native();
        v347 = v339;
        if ((v299 & 1) == 0)
        {
          OUTLINED_FUNCTION_31_7();
          sub_1C716DBAC();
          v298 = v347;
        }

        v301 = *(v298 + 16);
        v300 = *(v298 + 24);
        j = v301 + 1;
        if (v301 >= v300 >> 1)
        {
          OUTLINED_FUNCTION_77_3(v300);
          OUTLINED_FUNCTION_177();
          sub_1C716DBAC();
          v298 = v347;
        }

        ++v18;
        *(v298 + 16) = j;
        v302 = v298 + 40 * v301;
        *(v302 + 32) = v336;
        *(v302 + 40) = v0;
        *(v302 + 48) = v293;
        *(v302 + 56) = 0;
        *(v302 + 57) = v289;
        *(v302 + 58) = v290;
        *(v302 + 64) = v291;
        v286 = v298;
        v285 = v328 + 64;
        goto LABEL_271;
      }

      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_237();
      if (swift_dynamicCast())
      {
        v296 = OUTLINED_FUNCTION_152();
        memcpy(v296, v297, 0x42uLL);
        sub_1C7026030(v346);
        goto LABEL_281;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v345);

    v286 = v339;

    boxed_opaque_existential_0 += 40;
    ++v18;
  }

  boxed_opaque_existential_0 = 0;
  v303 = *(v286 + 16);
  j = MEMORY[0x1E69E7CC0];
LABEL_287:
  v29 = 40 * boxed_opaque_existential_0 + 64;
  while (v303 != boxed_opaque_existential_0)
  {
    if (boxed_opaque_existential_0 >= *(v286 + 16))
    {
      goto LABEL_321;
    }

    v18 = *(v286 + v29);
    v29 += 40;
    ++boxed_opaque_existential_0;
    if (v18)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_19_3();
        sub_1C6FB226C();
        j = v305;
      }

      v0 = *(j + 16);
      v304 = *(j + 24);
      if (v0 >= v304 >> 1)
      {
        OUTLINED_FUNCTION_57(v304);
        sub_1C6FB226C();
        j = v306;
      }

      *(j + 16) = v0 + 1;
      *(j + 8 * v0 + 32) = v18;
      goto LABEL_287;
    }
  }

  sub_1C7027A88(j);
  OUTLINED_FUNCTION_487();
  v307 = v325;
  if (boxed_opaque_existential_0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_3();
      sub_1C6FB20F8();
      v307 = v321;
    }

    v309 = *(v307 + 16);
    v308 = *(v307 + 24);
    v310 = v307;
    if (v309 >= v308 >> 1)
    {
      OUTLINED_FUNCTION_15(v308);
      OUTLINED_FUNCTION_177();
      sub_1C6FB20F8();
      v310 = v322;
    }

    *(v310 + 16) = v309 + 1;
    v307 = v310;
    *(v310 + 8 * v309 + 32) = boxed_opaque_existential_0;
  }

  sub_1C6FDE498(v307);
  OUTLINED_FUNCTION_487();
  sub_1C7027A58(v344);
LABEL_303:
  OUTLINED_FUNCTION_25_0();
}

void ExtendedTokenCollection.assetUUIDs(for:consolidatedPersonAssetUUIDs:)()
{
  OUTLINED_FUNCTION_33();
  v304 = v1;
  v313 = type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v306 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_130();
  v310 = v5;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_140_1();
  type metadata accessor for TimeExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v307 = v8;
  v308 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  v311 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_1();
  v315 = v12;
  v13 = v0[1];
  v15 = v0[2];
  v14 = v0[3];
  v17 = v0[4];
  v16 = v0[5];
  v19 = v0[6];
  v18 = v0[7];
  v21 = v0[8];
  v20 = v0[9];
  v305 = *v0;
  v330.n128_u64[0] = *v0;
  v330.n128_u64[1] = v13;
  v303 = v13;
  v331.n128_u64[0] = v15;
  v331.n128_u64[1] = v14;
  v321 = v16;
  v322 = v14;
  v332.n128_u64[0] = v17;
  v332.n128_u64[1] = v16;
  v316 = v19;
  v333.n128_u64[0] = v19;
  v333.n128_u64[1] = v18;
  v314 = v18;
  v334 = v21;
  v335 = v20;
  v312 = v20;
  inited = &v330;
  v23 = ExtendedTokenCollection.allTokens.getter();
  j = 0;
  v25 = *(v23 + 16);
  for (i = v23 + 32; ; i += 40)
  {
    if (v25 == j)
    {

      v325 = 0;
      v323 = 0u;
      v324 = 0u;
LABEL_21:
      sub_1C6FD7FC8(&v323, &qword_1EC215EA8, &qword_1C7560760);
      goto LABEL_266;
    }

    v27 = *(v23 + 16);
    if (j >= v27)
    {
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
LABEL_289:
      OUTLINED_FUNCTION_57(v27);
      sub_1C6FB20F8();
      v309 = v286;
LABEL_68:
      *(v309 + 16) = v15;
      *(v309 + 8 * j + 32) = inited;
      goto LABEL_69;
    }

    sub_1C6FB5E28(i, &v327);
    v28 = OUTLINED_FUNCTION_427();
    if (v29(v28))
    {
      break;
    }

    ++j;
    __swift_destroy_boxed_opaque_existential_1(&v327);
  }

  sub_1C6F699F8(&v327, &v323);
  if (!*(&v324 + 1))
  {
    goto LABEL_21;
  }

  sub_1C6FD7FC8(&v323, &qword_1EC215EA8, &qword_1C7560760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215EB0, &qword_1C7560768);
  inited = swift_initStackObject();
  inited[1] = xmmword_1C75604F0;
  inited[2].n128_u64[0] = v15;
  inited[2].n128_u64[1] = v17;
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = MEMORY[0x1E69E7CC0];
  for (j = 32; j != 48; j += 8)
  {
    v30 = *(inited->n128_i64 + j);
    v31 = *(v30 + 16);
    v32 = *(v15 + 16);
    if (__OFADD__(v32, v31))
    {
      goto LABEL_269;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v32 + v31 > *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_131_0();
      sub_1C6FB2320(v33);
      v15 = v34;
    }

    if (*(v30 + 16))
    {
      OUTLINED_FUNCTION_495();
      if (v35 < v31)
      {
        goto LABEL_285;
      }

      swift_arrayInitWithCopy();

      if (v31)
      {
        v36 = *(v15 + 16);
        v37 = __OFADD__(v36, v31);
        v27 = v36 + v31;
        if (v37)
        {
          goto LABEL_286;
        }

        *(v15 + 16) = v27;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_270;
      }
    }
  }

  swift_setDeallocating();
  sub_1C6FDC9C8();
  v38 = 0;
  v39 = *(v21 + 16);
  v40 = v21 + 32;
  v41 = MEMORY[0x1E69E7CC0];
LABEL_23:
  j = v40 + (v38 << 6);
  while (v39 != v38)
  {
    v27 = *(v21 + 16);
    if (v38 >= v27)
    {
      goto LABEL_271;
    }

    v42 = *j;
    v43 = *(j + 16);
    v44 = *(j + 48);
    v332 = *(j + 32);
    v333 = v44;
    v330 = v42;
    v331 = v43;
    v328 = &type metadata for TripExtendedToken;
    v329 = sub_1C70269F4();
    v45 = swift_allocObject();
    *&v327 = v45;
    v46 = *(j + 48);
    v48 = *j;
    v47 = *(j + 16);
    v45[3] = *(j + 32);
    v45[4] = v46;
    v45[1] = v48;
    v45[2] = v47;
    v49 = OUTLINED_FUNCTION_289();
    sub_1C7026698(v49, v50);
    v51 = OUTLINED_FUNCTION_289();
    sub_1C7026698(v51, v52);
    v53 = OUTLINED_FUNCTION_427();
    v54(v53);
    OUTLINED_FUNCTION_600();
    if (inited)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v326[0] = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        inited = v326;
        OUTLINED_FUNCTION_99();
        sub_1C716DBE8();
        v41 = v326[0];
      }

      v57 = *(v41 + 16);
      v56 = *(v41 + 24);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        OUTLINED_FUNCTION_15(v56);
        inited = v326;
        v60 = v59;
        OUTLINED_FUNCTION_222();
        sub_1C716DBE8();
        v58 = v60;
        v41 = v326[0];
      }

      ++v38;
      *(v41 + 16) = v58;
      OUTLINED_FUNCTION_233((v41 + (v57 << 6)), v330, v331, v332, v333);
      v40 = v21 + 32;
      goto LABEL_23;
    }

    sub_1C70266D0(&v330);
    j += 64;
    ++v38;
  }

  v61 = 0;
  v62 = *(v15 + 16);
  v63 = MEMORY[0x1E69E7CC0];
LABEL_34:
  j = 56 * v61 + 32;
  while (v62 != v61)
  {
    v27 = *(v15 + 16);
    if (v61 >= v27)
    {
      goto LABEL_272;
    }

    inited = (v15 + j);
    v64 = *(v15 + j);
    v65 = *(v15 + j + 16);
    v66 = *(v15 + j + 32);
    v333.n128_u64[0] = *(v15 + j + 48);
    v331 = v65;
    v332 = v66;
    v330 = v64;
    v328 = &type metadata for LocationExtendedToken;
    v329 = sub_1C70268F8();
    OUTLINED_FUNCTION_439();
    *&v327 = swift_allocObject();
    OUTLINED_FUNCTION_398(v327, inited[3].n128_u64[0], inited[2], inited[1], *inited);
    v67 = OUTLINED_FUNCTION_289();
    sub_1C70260B4(v67, v68);
    v69 = OUTLINED_FUNCTION_289();
    sub_1C70260B4(v69, v70);
    v71 = OUTLINED_FUNCTION_427();
    v72(v71);
    OUTLINED_FUNCTION_600();
    if ((v15 + j))
    {
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v326[0] = v63;
      if ((v73 & 1) == 0)
      {
        inited = v326;
        OUTLINED_FUNCTION_99();
        sub_1C716DD2C();
        v63 = v326[0];
      }

      v75 = *(v63 + 16);
      v74 = *(v63 + 24);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        OUTLINED_FUNCTION_15(v74);
        inited = v326;
        v78 = v77;
        OUTLINED_FUNCTION_222();
        sub_1C716DD2C();
        v76 = v78;
        v63 = v326[0];
      }

      ++v61;
      *(v63 + 16) = v76;
      OUTLINED_FUNCTION_39_7(v63 + 56 * v75);
      goto LABEL_34;
    }

    sub_1C70260EC(&v330);
    j += 56;
    ++v61;
  }

  j = 0;
  v79 = *(v41 + 16);
  v15 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v27 = (j << 6) + 88;
  while (v79 != j)
  {
    if (j >= *(v41 + 16))
    {
      goto LABEL_273;
    }

    inited = *(v41 + v27);
    v27 += 64;
    ++j;
    if (inited)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v15 = v82;
      }

      v81 = *(v15 + 16);
      v80 = *(v15 + 24);
      v62 = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        OUTLINED_FUNCTION_15(v80);
        OUTLINED_FUNCTION_131_0();
        sub_1C6FB226C();
        v15 = v83;
      }

      *(v15 + 16) = v62;
      *(v15 + 8 * v81 + 32) = inited;
      goto LABEL_45;
    }
  }

  inited = sub_1C7027A88(v15);

  if (inited)
  {

    goto LABEL_67;
  }

  j = 0;
  v84 = *(v63 + 16);
  v15 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v27 = 56 * j + 80;
  while (v84 != j)
  {
    if (j >= *(v63 + 16))
    {
      goto LABEL_287;
    }

    inited = *(v63 + v27);
    v27 += 56;
    ++j;
    if (inited)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_13_13();
        sub_1C6FB226C();
        v15 = v87;
      }

      OUTLINED_FUNCTION_274_0();
      if (v86)
      {
        OUTLINED_FUNCTION_15(v85);
        OUTLINED_FUNCTION_131_0();
        sub_1C6FB226C();
        v15 = v88;
      }

      *(v15 + 16) = v62;
      *(v15 + 8 * &unk_1F46AF1E0 + 32) = inited;
      goto LABEL_57;
    }
  }

  inited = sub_1C7027A88(v15);

  if (inited)
  {
LABEL_67:
    OUTLINED_FUNCTION_356();
    j = *(v89 + 16);
    v27 = *(v89 + 24);
    v309 = v89;
    v15 = j + 1;
    if (j < v27 >> 1)
    {
      goto LABEL_68;
    }

    goto LABEL_289;
  }

  v309 = MEMORY[0x1E69E7CC0];
LABEL_69:
  v90 = 0;
  v317 = *(v322 + 16);
  v91 = v322 + 64;
  v301 = MEMORY[0x1E69E7CC0];
LABEL_70:
  v15 = v91 + 40 * v90;
  while (v317 != v90)
  {
    v27 = *(v322 + 16);
    if (v90 >= v27)
    {
      goto LABEL_274;
    }

    j = *(v15 - 32);
    v92 = *(v15 - 24);
    v93 = *(v15 - 16);
    v94 = *(v15 - 8);
    v95 = *(v15 - 7);
    v96 = *v15;
    v331.n128_u64[1] = &type metadata for GenericLocationExtendedToken;
    v332.n128_u64[0] = sub_1C702694C();
    OUTLINED_FUNCTION_328();
    v97 = swift_allocObject();
    v330.n128_u64[0] = v97;
    *(v97 + 16) = j;
    *(v97 + 24) = v92;
    *(v97 + 32) = v93;
    *(v97 + 40) = v94;
    *(v97 + 41) = v95;
    *(v97 + 48) = v96;
    OUTLINED_FUNCTION_348();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_290();
    swift_bridgeObjectRetain_n();
    v98 = OUTLINED_FUNCTION_426();
    v99(v98);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      inited = v301;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      *&v323 = v301;
      if ((v100 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_5();
        sub_1C716DCF0();
        inited = v323;
      }

      v102 = inited[1].n128_u64[0];
      v101 = inited[1].n128_u64[1];
      v103 = v102 + 1;
      if (v102 >= v101 >> 1)
      {
        OUTLINED_FUNCTION_15(v101);
        v302 = v105;
        OUTLINED_FUNCTION_222();
        sub_1C716DCF0();
        v103 = v302;
        inited = v323;
      }

      ++v90;
      inited[1].n128_u64[0] = v103;
      v301 = inited;
      v104 = inited + 40 * v102;
      *(v104 + 4) = j;
      *(v104 + 5) = v92;
      *(v104 + 6) = v93;
      v104[56] = v94;
      v104[57] = v95;
      *(v104 + 8) = v96;
      v91 = v322 + 64;
      goto LABEL_70;
    }

    v15 += 40;
    ++v90;
  }

  j = 0;
  v106 = v301[1].n128_u64[0];
  inited = MEMORY[0x1E69E7CC0];
LABEL_81:
  v27 = 40 * j + 64;
  while (v106 != j)
  {
    if (j >= v301[1].n128_u64[0])
    {
      goto LABEL_275;
    }

    v107 = *(v301->n128_u64 + v27);
    v27 += 40;
    ++j;
    if (v107)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v109;
      }

      v15 = inited[1].n128_u64[0];
      v108 = inited[1].n128_u64[1];
      if (v15 >= v108 >> 1)
      {
        OUTLINED_FUNCTION_45_6(v108);
        sub_1C6FB226C();
        inited = v110;
      }

      inited[1].n128_u64[0] = v15 + 1;
      inited[2].n128_u64[v15] = v107;
      goto LABEL_81;
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    v111 = v305;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v309 = v289;
    }

    OUTLINED_FUNCTION_87_3();
    if (v86)
    {
      OUTLINED_FUNCTION_15_2(v112);
      sub_1C6FB20F8();
      v309 = v290;
    }

    OUTLINED_FUNCTION_88_2();
  }

  else
  {
    v111 = v305;
  }

  v113 = 0;
  v114 = *(v111 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  j = v111 + 32;
LABEL_98:
  v115 = j + 72 * v113;
  while (v114 != v113)
  {
    v27 = *(v111 + 16);
    if (v113 >= v27)
    {
      goto LABEL_276;
    }

    OUTLINED_FUNCTION_578();
    memcpy(v116, v117, v118);
    v328 = &type metadata for PersonExtendedToken;
    v329 = sub_1C7026850();
    v119 = swift_allocObject();
    OUTLINED_FUNCTION_584(v119);
    OUTLINED_FUNCTION_578();
    memmove(v120, v121, v122);
    v123 = OUTLINED_FUNCTION_289();
    sub_1C7025F3C(v123, v124);
    v125 = OUTLINED_FUNCTION_289();
    sub_1C7025F3C(v125, v126);
    v127 = OUTLINED_FUNCTION_427();
    v128(v127);
    OUTLINED_FUNCTION_600();
    if (inited)
    {
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v326[0] = v15;
      v322 = j;
      if ((v129 & 1) == 0)
      {
        inited = v326;
        OUTLINED_FUNCTION_99();
        sub_1C716D97C();
        v15 = v326[0];
      }

      v131 = *(v15 + 16);
      v130 = *(v15 + 24);
      if (v131 >= v130 >> 1)
      {
        OUTLINED_FUNCTION_15(v130);
        inited = v326;
        OUTLINED_FUNCTION_137_0();
        sub_1C716D97C();
        v15 = v326[0];
      }

      ++v113;
      *(v15 + 16) = v131 + 1;
      v132 = OUTLINED_FUNCTION_268(v15 + 72 * v131);
      memcpy(v132, v133, v134);
      j = v322;
      goto LABEL_98;
    }

    sub_1C7025F74(&v330);
    v115 += 72;
    ++v113;
  }

  v322 = 88;
  v135 = v304;
  if (v304)
  {
    sub_1C75504FC();

    goto LABEL_121;
  }

  j = 0;
  v136 = *(v15 + 16);
  inited = MEMORY[0x1E69E7CC0];
LABEL_111:
  v27 = 72 * j + 88;
  while (v136 != j)
  {
    if (j >= *(v15 + 16))
    {
      goto LABEL_288;
    }

    ++j;
    v137 = *(v15 + v27);
    v27 += 72;
    if (v137)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v139;
      }

      OUTLINED_FUNCTION_411();
      if (v86)
      {
        OUTLINED_FUNCTION_45_6(v138);
        sub_1C6FB226C();
        inited = v140;
      }

      inited[1].n128_u64[0] = v115;
      inited[2].n128_u64[v114] = v137;
      goto LABEL_111;
    }
  }

  sub_1C7027AF4();
  v135 = v141;

  if (v135)
  {
LABEL_121:
    v142 = v309;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_7();
      sub_1C6FB20F8();
      v142 = v287;
    }

    v143 = *(v142 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v86)
    {
      OUTLINED_FUNCTION_15_2(v144);
      sub_1C6FB20F8();
      v142 = v288;
    }

    *(v142 + 16) = inited;
    v309 = v142;
    *(v142 + 8 * v143 + 32) = v135;
  }

  v145 = 0;
  v146 = *(v303 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  j = v303 + 32;
LABEL_127:
  v147 = j + 72 * v145;
  while (v146 != v145)
  {
    v27 = *(v303 + 16);
    if (v145 >= v27)
    {
      goto LABEL_277;
    }

    OUTLINED_FUNCTION_577();
    memcpy(v148, v149, v150);
    v328 = &type metadata for PetExtendedToken;
    v329 = sub_1C70268A4();
    v151 = swift_allocObject();
    OUTLINED_FUNCTION_584(v151);
    OUTLINED_FUNCTION_577();
    memmove(v152, v153, v154);
    v155 = OUTLINED_FUNCTION_289();
    sub_1C7025FF8(v155, v156);
    v157 = OUTLINED_FUNCTION_289();
    sub_1C7025FF8(v157, v158);
    v159 = OUTLINED_FUNCTION_427();
    v160(v159);
    OUTLINED_FUNCTION_600();
    if (inited)
    {
      v161 = swift_isUniquelyReferenced_nonNull_native();
      v326[0] = v15;
      v318 = j;
      if ((v161 & 1) == 0)
      {
        inited = v326;
        OUTLINED_FUNCTION_99();
        sub_1C716D940();
        v15 = v326[0];
      }

      v163 = *(v15 + 16);
      v162 = *(v15 + 24);
      if (v163 >= v162 >> 1)
      {
        OUTLINED_FUNCTION_15(v162);
        inited = v326;
        OUTLINED_FUNCTION_137_0();
        sub_1C716D940();
        v15 = v326[0];
      }

      ++v145;
      *(v15 + 16) = v163 + 1;
      v164 = OUTLINED_FUNCTION_267(v15 + 72 * v163);
      memcpy(v164, v165, v166);
      j = v318;
      goto LABEL_127;
    }

    sub_1C7026030(&v330);
    v147 += 72;
    ++v145;
  }

  j = 0;
  v167 = *(v15 + 16);
  inited = MEMORY[0x1E69E7CC0];
  v168 = v307;
LABEL_138:
  v27 = 72 * j + 88;
  v169 = v308;
  while (v167 != j)
  {
    if (j >= *(v15 + 16))
    {
      goto LABEL_278;
    }

    ++j;
    v170 = *(v15 + v27);
    v27 += 72;
    if (v170)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v172;
      }

      OUTLINED_FUNCTION_411();
      if (v86)
      {
        OUTLINED_FUNCTION_45_6(v171);
        sub_1C6FB226C();
        inited = v173;
      }

      inited[1].n128_u64[0] = v308;
      inited[2].n128_u64[&type metadata for PetExtendedToken] = v170;
      goto LABEL_138;
    }
  }

  sub_1C7027AF4();
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    v174 = v321;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v309 = v291;
    }

    OUTLINED_FUNCTION_87_3();
    if (v86)
    {
      OUTLINED_FUNCTION_15_2(v175);
      sub_1C6FB20F8();
      v309 = v292;
    }

    OUTLINED_FUNCTION_88_2();
  }

  else
  {
    v174 = v321;
  }

  v176 = 0;
  v177 = *(v174 + 16);
  v322 = MEMORY[0x1E69E7CC0];
  while (v177 != v176)
  {
    v27 = *(v174 + 16);
    if (v176 >= v27)
    {
      goto LABEL_279;
    }

    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_4_9();
    v15 = v315;
    sub_1C702659C();
    v331.n128_u64[1] = v169;
    OUTLINED_FUNCTION_67_4();
    v332.n128_u64[0] = sub_1C70259B4(&qword_1EDD0A7D0, v178, protocol conformance descriptor for TimeExtendedToken);
    __swift_allocate_boxed_opaque_existential_0(&v330);
    OUTLINED_FUNCTION_400();
    sub_1C702659C();
    v179 = OUTLINED_FUNCTION_426();
    v180(v179);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      inited = v322;
      v181 = swift_isUniquelyReferenced_nonNull_native();
      *&v323 = v322;
      if ((v181 & 1) == 0)
      {
        v182 = OUTLINED_FUNCTION_90_5();
        sub_1C716DCA8(v182, v183, v184);
        inited = v323;
      }

      OUTLINED_FUNCTION_124_1();
      if (v86)
      {
        OUTLINED_FUNCTION_15(v185);
        OUTLINED_FUNCTION_137_0();
        sub_1C716DCA8(v186, v187, v188);
        inited = v323;
      }

      ++v176;
      inited[1].n128_u64[0] = v169;
      v322 = inited;
      OUTLINED_FUNCTION_1_19();
      sub_1C70267FC();
      v168 = v307;
      v169 = v308;
      v174 = v321;
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      sub_1C70265F0();
      ++v176;
      v174 = v321;
    }
  }

  j = *(v322 + 16);
  if (j)
  {
    v189 = *(v169 + 48);
    OUTLINED_FUNCTION_191();
    v192 = v190 + v191;
    v193 = *(v168 + 72);
    inited = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C702659C();
      v194 = *(v311 + v189);
      sub_1C75504FC();
      OUTLINED_FUNCTION_156();
      sub_1C70265F0();
      if (v194)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v196;
        }

        OUTLINED_FUNCTION_124_1();
        if (v86)
        {
          OUTLINED_FUNCTION_45_6(v195);
          sub_1C6FB226C();
          inited = v197;
        }

        inited[1].n128_u64[0] = type metadata accessor for TimeExtendedToken;
        inited[2].n128_u64[v311] = v194;
      }

      v192 += v193;
      --j;
    }

    while (j);
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v309 = v293;
    }

    OUTLINED_FUNCTION_87_3();
    if (v86)
    {
      OUTLINED_FUNCTION_15_2(v198);
      sub_1C6FB20F8();
      v309 = v294;
    }

    OUTLINED_FUNCTION_88_2();
  }

  v199 = 0;
  v321 = *(v316 + 16);
  v200 = MEMORY[0x1E69E7CC0];
  v201 = v316 + 80;
  v315 = v316 + 80;
LABEL_182:
  v202 = (v201 + 56 * v199);
  v319 = v200;
  while (v321 != v199)
  {
    v27 = *(v316 + 16);
    if (v199 >= v27)
    {
      goto LABEL_280;
    }

    v322 = v199;
    v203 = *(v202 - 6);
    j = *(v202 - 5);
    v204 = *(v202 - 4);
    v15 = *(v202 - 24);
    v205 = *(v202 - 2);
    v206 = *(v202 - 1);
    v207 = *v202;
    v331.n128_u64[1] = &type metadata for PartOfDayExtendedToken;
    v332.n128_u64[0] = sub_1C70269A0();
    OUTLINED_FUNCTION_520();
    v208 = swift_allocObject();
    v330.n128_u64[0] = v208;
    *(v208 + 16) = v203;
    *(v208 + 24) = j;
    *(v208 + 32) = v204;
    *(v208 + 40) = v15;
    *(v208 + 48) = v205;
    *(v208 + 56) = v206;
    *(v208 + 64) = v207;
    OUTLINED_FUNCTION_348();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_290();
    swift_bridgeObjectRetain_n();
    v209 = OUTLINED_FUNCTION_426();
    v210(v209);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      v311 = j;
      inited = v319;
      v211 = swift_isUniquelyReferenced_nonNull_native();
      v200 = v319;
      *&v323 = v319;
      if ((v211 & 1) == 0)
      {
        v212 = OUTLINED_FUNCTION_90_5();
        sub_1C716DC6C(v212, v213, v214, v215, v216, v217, v218);
        v200 = v323;
      }

      v219 = v322;
      j = v203;
      v220 = v311;
      v222 = *(v200 + 16);
      v221 = *(v200 + 24);
      v223 = v222 + 1;
      v224 = v207;
      if (v222 >= v221 >> 1)
      {
        v226 = OUTLINED_FUNCTION_15(v221);
        inited = &v323;
        v228 = v227;
        sub_1C716DC6C(v226, v227, 1, v229, v230, v231, v232);
        v223 = v228;
        v220 = v311;
        v219 = v322;
        v200 = v323;
      }

      v199 = v219 + 1;
      *(v200 + 16) = v223;
      v225 = v200 + 56 * v222;
      *(v225 + 32) = j;
      *(v225 + 40) = v220;
      *(v225 + 48) = v204;
      *(v225 + 56) = v15;
      *(v225 + 64) = v205;
      *(v225 + 72) = v206;
      *(v225 + 80) = v224;
      v201 = v316 + 80;
      goto LABEL_182;
    }

    v202 += 56;
    v199 = v322 + 1;
    v200 = v319;
  }

  j = 0;
  v233 = *(v200 + 16);
  inited = MEMORY[0x1E69E7CC0];
  v234 = v306;
LABEL_193:
  v27 = 56 * j + 72;
  while (v233 != j)
  {
    if (j >= *(v200 + 16))
    {
      goto LABEL_281;
    }

    ++j;
    v235 = *(v200 + v27);
    v27 += 56;
    if (v235)
    {
      v15 = v200;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v238;
      }

      v237 = inited[1].n128_u64[0];
      v236 = inited[1].n128_u64[1];
      if (v237 >= v236 >> 1)
      {
        OUTLINED_FUNCTION_15(v236);
        sub_1C6FB226C();
        v200 = v15;
        inited = v239;
      }

      else
      {
        v200 = v15;
      }

      inited[1].n128_u64[0] = v237 + 1;
      inited[2].n128_u64[v237] = v235;
      goto LABEL_193;
    }
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    v240 = v314;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v309 = v295;
    }

    OUTLINED_FUNCTION_87_3();
    if (v86)
    {
      OUTLINED_FUNCTION_15_2(v241);
      sub_1C6FB20F8();
      v309 = v296;
    }

    OUTLINED_FUNCTION_88_2();
  }

  else
  {
    v240 = v314;
  }

  v242 = 0;
  v243 = *(v240 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  while (v243 != v242)
  {
    v27 = *(v240 + 16);
    if (v242 >= v27)
    {
      goto LABEL_282;
    }

    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_5_16();
    sub_1C702659C();
    v331.n128_u64[1] = v313;
    OUTLINED_FUNCTION_66_6();
    v332.n128_u64[0] = sub_1C70259B4(&qword_1EC215E28, v244, protocol conformance descriptor for PartOfWeekExtendedToken);
    __swift_allocate_boxed_opaque_existential_0(&v330);
    sub_1C702659C();
    v245 = OUTLINED_FUNCTION_426();
    v246(v245);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
      v247 = swift_isUniquelyReferenced_nonNull_native();
      *&v323 = v15;
      if ((v247 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_5();
        sub_1C716DC24();
        v15 = v323;
      }

      v249 = *(v15 + 16);
      v248 = *(v15 + 24);
      if (v249 >= v248 >> 1)
      {
        OUTLINED_FUNCTION_15(v248);
        inited = &v323;
        sub_1C716DC24();
        v15 = v323;
      }

      ++v242;
      *(v15 + 16) = v249 + 1;
      OUTLINED_FUNCTION_0_15();
      sub_1C70267FC();
      v234 = v306;
      v240 = v314;
    }

    else
    {
      OUTLINED_FUNCTION_2_11();
      sub_1C70265F0();
      ++v242;
      v240 = v314;
    }
  }

  j = *(v15 + 16);
  if (j)
  {
    v250 = *(v313 + 28);
    OUTLINED_FUNCTION_191();
    v252 = v15 + v251;
    v253 = *(v234 + 72);
    inited = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_65_4();
      sub_1C702659C();
      v254 = *(v310 + v250);
      sub_1C75504FC();
      OUTLINED_FUNCTION_156();
      sub_1C70265F0();
      if (v254)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB226C();
          inited = v256;
        }

        OUTLINED_FUNCTION_124_1();
        if (v86)
        {
          OUTLINED_FUNCTION_45_6(v255);
          sub_1C6FB226C();
          inited = v257;
        }

        inited[1].n128_u64[0] = v242;
        inited[2].n128_u64[v310] = v254;
      }

      v252 += v253;
      --j;
    }

    while (j);
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  sub_1C7027A88(inited);
  OUTLINED_FUNCTION_461();
  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB20F8();
      v309 = v297;
    }

    OUTLINED_FUNCTION_87_3();
    if (v86)
    {
      OUTLINED_FUNCTION_15_2(v258);
      sub_1C6FB20F8();
      v309 = v298;
    }

    OUTLINED_FUNCTION_88_2();
  }

  v259 = 0;
  v321 = *(v312 + 16);
  v260 = v312 + 64;
  v316 = v312 + 64;
  v320 = MEMORY[0x1E69E7CC0];
LABEL_238:
  v261 = (v260 + 40 * v259);
  while (v321 != v259)
  {
    v27 = *(v312 + 16);
    if (v259 >= v27)
    {
      goto LABEL_283;
    }

    v322 = v259;
    v262 = *(v261 - 4);
    v263 = *(v261 - 3);
    v15 = *(v261 - 2);
    v264 = *(v261 - 8);
    j = *(v261 - 7);
    v265 = *(v261 - 6);
    v266 = *v261;
    v331.n128_u64[1] = &type metadata for EventExtendedToken;
    v332.n128_u64[0] = sub_1C7026A9C();
    OUTLINED_FUNCTION_328();
    v267 = swift_allocObject();
    v330.n128_u64[0] = v267;
    *(v267 + 16) = v262;
    *(v267 + 24) = v263;
    *(v267 + 32) = v15;
    *(v267 + 40) = v264;
    *(v267 + 41) = j;
    *(v267 + 42) = v265;
    *(v267 + 48) = v266;
    OUTLINED_FUNCTION_290();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v268 = OUTLINED_FUNCTION_426();
    v269(v268);
    OUTLINED_FUNCTION_484();
    if (inited)
    {
      LODWORD(v315) = v265;
      inited = v320;
      v270 = swift_isUniquelyReferenced_nonNull_native();
      *&v323 = v320;
      if ((v270 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_5();
        sub_1C716DBAC();
        inited = v323;
      }

      v271 = v322;
      v272 = v262;
      v273 = v15;
      v274 = v265;
      v276 = inited[1].n128_u64[0];
      v275 = inited[1].n128_u64[1];
      if (v276 >= v275 >> 1)
      {
        OUTLINED_FUNCTION_15(v275);
        OUTLINED_FUNCTION_321();
        sub_1C716DBAC();
        v274 = v265;
        v273 = v15;
        v272 = v262;
        v271 = v322;
        inited = v323;
      }

      v259 = v271 + 1;
      inited[1].n128_u64[0] = v276 + 1;
      v320 = inited;
      v277 = inited + 40 * v276;
      *(v277 + 4) = v272;
      *(v277 + 5) = v263;
      *(v277 + 6) = v273;
      v277[56] = v264;
      v277[57] = j;
      v277[58] = v274;
      *(v277 + 8) = v266;
      v260 = v312 + 64;
      goto LABEL_238;
    }

    v261 += 5;
    v259 = v322 + 1;
  }

  v15 = 0;
  v278 = v320[1].n128_u64[0];
  inited = MEMORY[0x1E69E7CC0];
LABEL_249:
  v27 = 40 * v15 + 64;
  while (v278 != v15)
  {
    if (v15 >= v320[1].n128_u64[0])
    {
      goto LABEL_284;
    }

    j = *(v320->n128_u64 + v27);
    v27 += 40;
    ++v15;
    if (j)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB226C();
        inited = v280;
      }

      OUTLINED_FUNCTION_283();
      if (v86)
      {
        OUTLINED_FUNCTION_22_10(v279);
        sub_1C6FB226C();
        inited = v281;
      }

      OUTLINED_FUNCTION_415();
      goto LABEL_249;
    }
  }

  v282 = sub_1C7027A88(inited);

  if (v282)
  {
    v283 = v309;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_1C6FB20F8();
      v283 = v299;
    }

    v285 = *(v283 + 16);
    v284 = *(v283 + 24);
    if (v285 >= v284 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v284);
      sub_1C6FB20F8();
      v283 = v300;
    }

    *(v283 + 16) = v285 + 1;
    *(v283 + 8 * v285 + 32) = v282;
  }

  else
  {
    v283 = v309;
  }

  sub_1C6FDE498(v283);

LABEL_266:
  OUTLINED_FUNCTION_25_0();
}

void ExtendedTokenCollection.assetUUIDsInAllQueryExtendedTokens(consolidatedPersonAssetUUIDs:)()
{
  OUTLINED_FUNCTION_363();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_363();
  memcpy(v3, v4, v5);
  sub_1C7027A20(v7, v6);
  sub_1C701104C();
}

void ExtendedTokenCollection.assetUUIDsInAssetScopingTokens(consolidatedPersonAssetUUIDs:)()
{
  OUTLINED_FUNCTION_363();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_363();
  memcpy(v3, v4, v5);
  sub_1C7027A20(v7, &v6);
  sub_1C701260C();
}

uint64_t ExtendedTokenCollection.numberOfQueryCharacters.getter()
{
  v1 = 0;
  v2 = v0[1];
  v3 = (*v0 + 56);
  v4 = *(*v0 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v3 += 72;
    v6 = (v5 & 1) == 0;
    v7 = __OFADD__(v1, v6);
    v1 += v6;
    if (v7)
    {
      __break(1u);
      break;
    }
  }

  v8 = (v2 + 56);
  v9 = *(v2 + 16) + 1;
  while (--v9)
  {
    v10 = *v8;
    v8 += 72;
    v11 = (v10 & 1) == 0;
    v7 = __OFADD__(v4, v11);
    v4 += v11;
    if (v7)
    {
      __break(1u);
      break;
    }
  }

  result = v1 + v4;
  if (__OFADD__(v1, v4))
  {
    __break(1u);
  }

  return result;
}

void ExtendedTokenCollection.queryCharacterAssetUUIDs()()
{
  OUTLINED_FUNCTION_363();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_363();
  memcpy(v3, v4, v5);
  sub_1C7027A20(v7, &v6);
  sub_1C7013BC0();
}

void __swiftcall ExtendedTokenCollection.merging(_:)(PhotosIntelligence::ExtendedTokenCollection *__return_ptr retstr, PhotosIntelligence::ExtendedTokenCollection *a2)
{
  rawValue = a2->petExtendedTokens._rawValue;
  v180 = a2->personExtendedTokens._rawValue;
  v5 = a2->locationExtendedTokens._rawValue;
  v4 = a2->genericLocationExtendedTokens._rawValue;
  v7 = a2->homeExtendedTokens._rawValue;
  v6 = a2->timeExtendedTokens._rawValue;
  v8 = a2->partOfDayExtendedTokens._rawValue;
  v9 = a2->partOfWeekExtendedTokens._rawValue;
  v10 = a2->tripExtendedTokens._rawValue;
  v11 = v2[2];
  v156 = v2[3];
  v148 = v2[4];
  v164 = v2[5];
  v172 = *v2;
  v132 = v2[1];
  v140 = v2[6];
  v12 = v2[9];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v202 = v4;
  v13 = v11;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v242 = v9;
  v14 = v148;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C706D940();
  sub_1C7073A2C();
  sub_1C739C234(v15, v16, v17, v18, v19, v20, v21, v22, v124, v132, v140, v148, v156, v164, v172, v180, rawValue, v5, v202, v7, v6, retstr, v8, v242, v10, v12);
  v264[0] = v23;
  OUTLINED_FUNCTION_209();
  sub_1C7018150(v264, v24, v25, sub_1C70210D0, sub_1C701A5E0);

  v26 = v264[0];
  sub_1C706D9F4();
  sub_1C7073AC4();
  sub_1C739C1F4(v27, v28, v29, v30, v31, v32, v33, v34, v125, v133, v141, v149, v157, v165, v173, v181, v188, v195, v203, v210, v217, v227, v235, v243, v250, v257);
  v264[0] = v35;
  OUTLINED_FUNCTION_208();
  sub_1C7018150(v264, v36, v37, sub_1C70202C4, sub_1C701A318);

  v38 = v264[0];
  sub_1C706DAA8(v13);
  sub_1C7073B5C();
  sub_1C739C1B4(v39, v40, v41, v42, v43, v44, v45, v46, v126, v134, v142, v150, v158, v166, v174, v182, v189, v196, v204, v211, v218, v228, v236, v244, v251, v258);
  v264[0] = v47;
  sub_1C70180B8(v264);

  v48 = v264[0];
  sub_1C706DB74();
  sub_1C7073C04();
  sub_1C739C174(v49, v50, v51, v52, v53, v54, v55, v56, v127, v135, v143, v151, v159, v167, v175, v183, v190, v197, v205, v212, v219, v229, v237, v245, v252, v259);
  v264[0] = v57;
  OUTLINED_FUNCTION_207_0();
  sub_1C7018150(v264, v58, v59, sub_1C701E6D8, sub_1C7019D2C);

  v60 = v264[0];
  sub_1C706DAA8(v14);
  sub_1C7073B5C();
  sub_1C739C1B4(v61, v62, v63, v64, v65, v66, v67, v68, v128, v136, v144, v152, v160, v168, v176, v184, v191, v198, v206, v213, v220, v230, v238, v246, v253, v260);
  v264[0] = v69;
  sub_1C70180B8(v264);

  v70 = v264[0];
  v71 = sub_1C706DC14();
  v72 = sub_1C7073C88(v221, v71);
  v264[0] = sub_1C739C090(v72);
  OUTLINED_FUNCTION_206_0();
  sub_1C7017FF8(v264, v73, sub_1C7422B34, sub_1C7018758);
  v222 = v70;

  v74 = v264[0];
  v75 = sub_1C706DD74();
  v82 = sub_1C7073DC8(v239, v75, v76, v77, v78, v79, v80, v81);
  sub_1C739C050(v82, v83, v84, v85, v86, v87, v88, v89, v129, v137, v145, v153, v161, v169, v177, v185, v192, v199, v207, v214, v222, v231, v239, v247, v254, v261);
  v264[0] = v90;
  OUTLINED_FUNCTION_205();
  sub_1C7018150(v264, v91, v92, sub_1C701C494, sub_1C70194C4);
  v93 = v48;
  v94 = v26;

  v95 = v264[0];
  sub_1C706DE30();
  sub_1C7073E6C();
  v264[0] = sub_1C739C010(v96);
  OUTLINED_FUNCTION_204_0();
  sub_1C7017FF8(v264, v97, sub_1C7422B04, sub_1C70183E8);
  v98 = v38;

  v99 = v264[0];
  sub_1C706E37C();
  sub_1C7074368();
  sub_1C739BFD0(v100, v101, v102, v103, v104, v105, v106, v107, v130, v138, v146, v154, v162, v170, v178, v186, v193, v200, v208, v215, v223, v232, v240, v248, v255, v262);
  v264[0] = v108;
  OUTLINED_FUNCTION_203();
  sub_1C7018150(v264, v109, v110, sub_1C701B704, sub_1C7018F24);

  v111 = v264[0];
  sub_1C706E418();
  sub_1C70743E8();
  sub_1C739BF90(v112, v113, v114, v115, v116, v117, v118, v119, v131, v139, v147, v155, v163, v171, v179, v187, v194, v201, v209, v216, v224, v233, v241, v249, v256, v263);
  v264[0] = v120;
  OUTLINED_FUNCTION_202();
  sub_1C7018150(v264, v121, v122, sub_1C701A8B0, sub_1C7018C2C);

  v123 = v264[0];
  *v234 = v94;
  v234[1] = v98;
  v234[2] = v93;
  v234[3] = v60;
  v234[4] = v225;
  v234[5] = v74;
  v234[6] = v95;
  v234[7] = v99;
  v234[8] = v111;
  v234[9] = v123;
}