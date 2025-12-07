int64_t sub_1AE4B0154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, a1, a2, a3);
  if (!v9)
  {
    v18 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    v15 = 1684632949;
    goto LABEL_18;
  }

  v39 = a3;
  result = sub_1AE4AEC7C(v9, v10);
  v15 = result;
  v16 = v12;
  if (v4)
  {
    v17 = v13;
    v18 = v14;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

LABEL_18:
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    *a4 = v15;
    *(a4 + 8) = v16;
    *(a4 + 16) = v17;
    *(a4 + 24) = v18;
    *(a4 + 32) = 64;
    return result;
  }

  v19 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_17;
    }

    v21 = *(result + 16);
    v20 = *(result + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      if (v23 == 16)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v19)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        goto LABEL_12;
      }

LABEL_17:
      v18 = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      sub_1AE4A41E8(v15, v16);
      v16 = 0;
      v17 = 0;
      v15 = 7;
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  if (BYTE6(v12) != 16)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_1AE4A41E8(result, v12);

  v24 = sub_1AE4AC6E0(1836345698, 0xE400000000000000, 0, a1, a2, v39);
  if (!v24)
  {
    v18 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    v15 = 1836345698;
    goto LABEL_18;
  }

  v26 = sub_1AE4AEC7C(v24, v25);
  v28 = v27;

  sub_1AE4A41E8(v26, v28);
  v29 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, a1, a2, v39);
  if (!v29)
  {
    v18 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    v15 = 1919181921;
    goto LABEL_18;
  }

  sub_1AE4A6A00(v29);
  v15 = 1701603686;

  v30 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, a1, a2, v39);
  if (!v30)
  {
    v18 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    goto LABEL_18;
  }

  sub_1AE4AF28C(v30);

  v31 = v39;
  v32 = sub_1AE4AC6E0(1919181153, 0xE400000000000000, 0, a1, a2, v39);
  if (v32)
  {
    sub_1AE4A6A00(v32);

    v31 = v39;
  }

  result = sub_1AE4AC6E0(1684632929, 0xE400000000000000, 0, a1, a2, v31);
  if (!result)
  {
    return result;
  }

  result = sub_1AE4AEC7C(result, v33);
  v15 = result;
  v16 = v34;
  v35 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_17;
    }

    v38 = *(result + 16);
    v37 = *(result + 24);
    v22 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (!v22)
    {
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  if (v35)
  {
    LODWORD(v36) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v36 = v36;
      goto LABEL_37;
    }

LABEL_43:
    __break(1u);
    return result;
  }

  v36 = BYTE6(v34);
LABEL_37:
  if (v36 != 16)
  {
    goto LABEL_17;
  }

  return sub_1AE4A41E8(v15, v16);
}

uint64_t sub_1AE4B06C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AE4B0730(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (a1 <= a1 >> 32)
    {
      v10 = sub_1AE4EA990();
      if (!v10)
      {
LABEL_21:
        result = sub_1AE4EA9A0();
        __break(1u);
        goto LABEL_22;
      }

      v11 = v10;
      v12 = sub_1AE4EA9B0();
      if (!__OFSUB__(a1, v12))
      {
        v13 = a1 - v12 + v11;
        result = sub_1AE4EA9A0();
        if (v13)
        {
          goto LABEL_13;
        }

LABEL_22:
        __break(1u);
        return result;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = sub_1AE4EA990();
    if (!v6)
    {
LABEL_19:
      sub_1AE4EA9A0();
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v7 = v6;
    v8 = sub_1AE4EA9B0();
    if (__OFSUB__(v5, v8))
    {
      goto LABEL_17;
    }

    v9 = v5 - v8 + v7;
    sub_1AE4EA9A0();
    if (!v9)
    {
      goto LABEL_20;
    }
  }

LABEL_13:
  sub_1AE4EAAF0();

  return sub_1AE4A41E8(a1, a2);
}

double sub_1AE4B0920@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v556) = a4;
  *&v557 = a3;
  *&v558 = a5;
  v601 = *MEMORY[0x1E69E9840];
  v7 = sub_1AE4EAA30();
  v547 = *(v7 - 8);
  v548 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v546 = &v521 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AE4EAA00();
  v552 = *(v9 - 8);
  v553 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v551 = &v521 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD588, &qword_1AE4EDBF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v541 = &v521 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v521 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v521 - v17;
  v19 = sub_1AE4EAC50();
  v20 = *(v19 - 8);
  v561 = v19;
  v562 = v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v540 = &v521 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v538 = &v521 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v539 = &v521 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v549 = &v521 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v550 = (&v521 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v554 = &v521 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v559 = &v521 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v534 = &v521 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v537 = &v521 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v542 = &v521 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v521 - v41;
  v43 = sub_1AE4EAB10();
  v44 = MEMORY[0x1EEE9AC00](v43);
  v533 = &v521 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v535 = &v521 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v536 = &v521 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v521 - v50;
  v543 = a1;
  v52 = a1;
  v54 = v53;
  v56 = v55;
  sub_1AE4B441C(v52, v42, &qword_1EB5DD4B8, "R3");
  v544 = *(v56 + 48);
  v545 = v56 + 48;
  if (v544(v42, 1, v54) == 1)
  {
    v532 = v56;
    *&v555 = a2;
    sub_1AE4B4558(v42, &qword_1EB5DD4B8, "R3");
  }

  else
  {
    (*(v56 + 32))(v51, v42, v54);
    v57 = *a2;
    if (*(*a2 + 16))
    {
      v58 = sub_1AE4B4484(v51);
      if (v59)
      {
        v60 = (*(v57 + 56) + 24 * v58);
        v61 = *v60;
        v62 = v60[1];
        v63 = v60[2];
        v64 = *(v56 + 8);

        v64(v51, v54);
        v66 = v558;
        *v558 = v61;
        *(v66 + 8) = v62;
        *(v66 + 16) = v63;
        return result;
      }
    }

    *&v555 = a2;
    v532 = v56;
    (*(v56 + 8))(v51, v54);
  }

  sub_1AE4B441C(v557, v18, &qword_1EB5DD520, &qword_1AE4EDB98);
  v68 = v561;
  v67 = v562;
  if ((*(v562 + 48))(v18, 1, v561) == 1)
  {
    v69 = &qword_1EB5DD520;
    v70 = &qword_1AE4EDB98;
    v71 = v18;
LABEL_16:
    sub_1AE4B4558(v71, v69, v70);
    v90 = v558;
    *(v558 + 8) = 0;
    v90[2] = 0;
    *v90 = 0;
    return result;
  }

  *&v557 = v54;
  v72 = v559;
  v73 = (*(v67 + 32))(v559, v18, v68);
  if ((v556 & 1) == 0)
  {
    v74 = sub_1AE4EABC0();
    v76 = *(v555 + 8);
    if (*(v76 + 16))
    {
      v77 = sub_1AE4E8FE4(v74, v75);
      v79 = v78;
      v67 = v562;

      v72 = v559;
      if (v79)
      {
        v80 = (*(v76 + 56) + 24 * v77);
        v81 = *v80;
        v82 = v80[1];
        v83 = v67;
        v84 = v80[2];
        v85 = *(v83 + 8);

        v85(v72, v68);
        v86 = v558;
        *v558 = v81;
        *(v86 + 8) = v82;
        *(v86 + 16) = v84;
        return result;
      }
    }

    else
    {

      v72 = v559;
    }
  }

  MEMORY[0x1B2700FE0](v73);
  v87 = sub_1AE4EAC00();
  v88 = *(v87 - 8);
  v89 = *(v88 + 48);
  if (v89(v15, 1, v87) == 1)
  {
    (*(v67 + 8))(v72, v561);
    v69 = &qword_1EB5DD588;
    v70 = &qword_1AE4EDBF0;
    v71 = v15;
    goto LABEL_16;
  }

  v528 = (v88 + 48);
  v529 = v89;
  v91 = sub_1AE4EABE0();
  v93 = v92;
  v94 = *(v88 + 8);
  v530 = v87;
  v531 = v88 + 8;
  v527 = v94;
  (v94)(v15, v87);
  v577 = 0x73616C74612ELL;
  v578 = 0xE600000000000000;
  v565[0] = v91;
  v565[1] = v93;
  v565[0] = sub_1AE4EAE30();
  v565[1] = v95;
  v96 = v562;
  sub_1AE4EADD0();
  v97 = v565[1];
  v98 = v96 + 16;
  v99 = v561;
  v526 = *(v96 + 16);
  v526(v549, v72, v561);
  sub_1AE4EAB90();

  v100 = v554;
  v549 = v97;
  sub_1AE4EAC30();
  sub_1AE4EABC0();
  v102 = *(v96 + 8);
  v101 = v96 + 8;
  v550 = v102;
  v102(v100, v99);
  v103 = v551;
  sub_1AE4EA9F0();

  v104 = v560;
  v105 = sub_1AE4EAA10();
  if (v104)
  {

    v107 = 0;
    *&v560 = 0;
    v108 = 0xF000000000000000;
  }

  else
  {
    v107 = v105;
    v108 = v106;
    *&v560 = 0;
  }

  (*(v552 + 8))(v103, v553);
  v109 = v559;
  if (v556)
  {
    sub_1AE4ABE40(v107, v108);
  }

  else if (v108 >> 60 != 15)
  {
    v525 = v98;
    sub_1AE4A6FD8(v107, v108);
    v548 = 0;
    v552 = 0xF000000000000000;
    v115 = v107;
    v116 = v108;
    goto LABEL_29;
  }

  v577 = 0;
  sub_1AE4EABC0();
  v110 = sub_1AE4EADA0();

  v111 = scavengeCache(v110 + 32, &v577);

  if (!v111)
  {
    v550(v109, v561);

    goto LABEL_27;
  }

  v525 = v98;
  v112 = v577;
  if (v577 < 0)
  {
    __break(1u);
    goto LABEL_72;
  }

  v113 = v546;
  (*(v547 + 104))(v546, *MEMORY[0x1E6969000], v548);
  v107 = sub_1AE4AB2E4(v111, v112, v113);
  v108 = v114;
  sub_1AE4A6FD8(v107, v114);
  v115 = 0;
  v116 = 0xF000000000000000;
  v548 = v107;
  v552 = v108;
LABEL_29:
  v118 = v555;
  v119 = *(v555 + 16);
  v556 = v107;
  v553 = v108;
  sub_1AE4A6FD8(v107, v108);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v118 + 16) = v119;
  v562 = v101;
  v551 = v115;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v119 = sub_1AE4E8DE0(0, *(v119 + 2) + 1, 1, v119);
    *(v555 + 16) = v119;
  }

  v121 = v556;
  v122 = v557;
  v124 = *(v119 + 2);
  v123 = *(v119 + 3);
  if (v124 >= v123 >> 1)
  {
    v119 = sub_1AE4E8DE0((v123 > 1), v124 + 1, 1, v119);
    *(v555 + 16) = v119;
  }

  *(v119 + 2) = v124 + 1;
  v125 = &v119[16 * v124];
  v126 = v553;
  *(v125 + 4) = v121;
  *(v125 + 5) = v126;
  sub_1AE4A6FD8(v121, v126);
  v127 = v560;
  v128 = sub_1AE4A702C(v121, v126, v575);
  if (v127)
  {
    v132 = v576;
    v560 = v575[0];
    v558 = v575[1];

    sub_1AE4C9530();
    swift_allocError();
    v133 = v558;
    *v134 = v560;
    *(v134 + 16) = v133;
    *(v134 + 32) = v132;
    sub_1AE4A41E8(v121, v126);
    sub_1AE4ABE40(v548, v552);
    sub_1AE4ABE40(v551, v116);
    v550(v559, v561);
    return result;
  }

  v135 = 0;
  v577 = v128;
  v578 = v129;
  v579 = v130;
  v580 = v131;
  v136 = v542;
  sub_1AE4B441C(v543, v542, &qword_1EB5DD4B8, "R3");
  v137 = v544(v136, 1, v122);
  v547 = v116;
  if (v137 == 1)
  {
    sub_1AE4B4558(v136, &qword_1EB5DD4B8, "R3");
    v565[0] = 0;
    v565[1] = 0xE000000000000000;
    sub_1AE4EB0A0();

    strcpy(v565, "caches/names/");
    HIWORD(v565[1]) = -4864;
    v139 = v541;
    MEMORY[0x1B2700FE0](v138);
    v140 = v530;
    if (v529(v139, 1, v530) == 1)
    {
      goto LABEL_346;
    }

    v144 = sub_1AE4EABF0();
    v146 = v145;
    (v527)(v139, v140);
    MEMORY[0x1B2701270](v144, v146);

    MEMORY[0x1B2701270](0x7473696C702ELL, 0xE600000000000000);
    v148 = v565[0];
    v147 = v565[1];
  }

  else
  {
    v565[0] = 0;
    v565[1] = 0xE000000000000000;
    sub_1AE4EB0A0();

    strcpy(v565, "caches/uuids/");
    HIWORD(v565[1]) = -4864;
    sub_1AE4EAAC0();
    v149 = sub_1AE4EAD90();
    v151 = v150;

    MEMORY[0x1B2701270](v149, v151);

    MEMORY[0x1B2701270](0x7473696C702ELL, 0xE600000000000000);
    v148 = v565[0];
    v147 = v565[1];
    (*(v532 + 8))(v136, v122);
  }

  v152 = sub_1AE4AA0F0(v148, v147, v575);
  v153 = v561;
  v154 = v152;
  v156 = v155;

  if (v156 >> 60 == 15)
  {
    goto LABEL_41;
  }

  sub_1AE4AB600(v154, v156);
  v157 = sub_1AE4AB614(v154, v156);
  sub_1AE4ABE40(v154, v156);
  v164 = sub_1AE4AC2B4(v157);
  v166 = v165;
  v168 = v167;

  v546 = v168;
  *&v560 = v166;
  v169 = sub_1AE4AC6E0(0x73656D616ELL, 0xE500000000000000, 0, v164, v168, v166);
  if (!v169)
  {
LABEL_44:

    sub_1AE4ABE40(v154, v156);
LABEL_41:
    v158 = v547;
    v159 = v551;
    v160 = v559;
    sub_1AE4A41E8(v556, v553);
    sub_1AE4ABE40(v548, v552);
    sub_1AE4ABE40(v159, v158);
    v161 = v579;
    v162 = v580;

    sub_1AE4A41E8(v161, v162);
    v550(v160, v153);
    v163 = v558;
    *v558 = 0;
    *(v163 + 8) = 0;
    *(v163 + 16) = 0;
    return result;
  }

  v549 = v164;
  v170 = sub_1AE4AC2B4(v169);
  v529 = v171;
  v530 = v172;
  v531 = v170;

  v173 = sub_1AE4AC6E0(0x7364697575, 0xE500000000000000, 0, v549, v546, v560);
  if (!v173)
  {

    goto LABEL_44;
  }

  v174 = sub_1AE4AC2B4(v173);
  LODWORD(v546) = v177;
  *&v560 = 0;
  v541 = v175;
  v542 = v176;
  v524 = v174;
  v521 = v154;
  v522 = v156;

  if (v552 >> 60 == 15)
  {
    v178 = &off_1F240C790;
    v179 = 18;
    while (--v179)
    {
      v180 = v178 + 2;

      sub_1AE4EABC0();
      v181 = sub_1AE4EAE10();

      v178 = v180;
      if (v181)
      {
        goto LABEL_91;
      }
    }
  }

  v565[0] = v531;
  v565[1] = v529;
  v566 = v530;
  v567 = 0;

  sub_1AE4B87FC(&v581);
  v121 = v584;
  if (v584)
  {
    v182 = v583;
    v183 = v582;
    v124 = v563;
    v184 = v560;
    while (1)
    {
      v185 = v585;
      v186 = sub_1AE4A67B4(v581, v183, v182 & 1);
      MEMORY[0x1EEE9AC00](v186);
      *(&v521 - 2) = v121;
      *(&v521 - 1) = v185;
      v187 = (*(v121 + 64))(v121, v185);
      v188 = v187;
      v189 = *(v121 + 16);
      v135 = *(v121 + 24);
      v190 = v135 >> 62;
      if ((v135 >> 62) > 1)
      {
        break;
      }

      if (v190)
      {
        v205 = v189;
        v206 = v189 >> 32;
        if (v189 >> 32 < v189)
        {
          goto LABEL_330;
        }

LABEL_66:
        swift_retain_n();
        v207 = sub_1AE4EA5A8(v205, v206, v135 & 0x3FFFFFFFFFFFFFFFLL, v188, v121, sub_1AE4EA7EC);
        v204 = v184;
        if (v184)
        {

          v431 = v184;
          *&v560 = 0;
          goto LABEL_311;
        }

        v203 = v207;
        v202 = v208;
        v200 = v209;

        goto LABEL_68;
      }

      *&v560 = v184;
      v563[0] = v189;
      LOWORD(v563[1]) = v135;
      BYTE2(v563[1]) = BYTE2(v135);
      BYTE3(v563[1]) = BYTE3(v135);
      BYTE4(v563[1]) = BYTE4(v135);
      BYTE5(v563[1]) = BYTE5(v135);
      if (BYTE6(v135) < v187)
      {
        goto LABEL_329;
      }

      if (v187 < 0)
      {
        goto LABEL_331;
      }

      if (BYTE6(v135) <= v187)
      {
        v444 = v563 + v187;
        *&v570 = v563 + v187;
        *(&v570 + 1) = v563 + BYTE6(v135);
        *&v571 = 1;
        BYTE8(v571) = 64;
        sub_1AE4C78AC();

        swift_willThrowTypedImpl();
        v431 = swift_allocError();
        *v445 = v444;
        *(v445 + 8) = v563 + BYTE6(v135);
        *(v445 + 16) = 1;
        *(v445 + 24) = 64;
        goto LABEL_310;
      }

      swift_retain_n();
      v191 = *(v563 + v188);
      *&v573 = sub_1AE4A7CA4(1uLL, v188, BYTE6(v135), v563, v563 + BYTE6(v135));
      *(&v573 + 1) = v192;
      *&v574 = v193;
      *(&v574 + 1) = v194;
      v195 = v560;
      sub_1AE4A65CC(v191);
      v200 = v199;
      *&v560 = v195;
      if (v195)
      {
LABEL_307:
        v449 = v196;
        v450 = v197;
        v451 = v198;
        sub_1AE4C78AC();
        v431 = swift_allocError();
        *v452 = v200;
        *(v452 + 8) = v449;
        *(v452 + 16) = v450;
        *(v452 + 24) = v451;
LABEL_308:

        *&v560 = 0;
        goto LABEL_310;
      }

      v201 = sub_1AE4AC038(v191);
      if (v201 != 4)
      {
        if (v201 != 6)
        {
          goto LABEL_309;
        }

LABEL_301:
        sub_1AE4C78AC();
        v431 = swift_allocError();
        *(v446 + 8) = 0;
        *(v446 + 16) = 0;
        *v446 = 0;
        *(v446 + 24) = 0x80;
        swift_willThrow();
        goto LABEL_308;
      }

      v570 = v573;
      v571 = v574;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();

      v202 = v564[0];
      v203 = v121;
      v204 = v560;
LABEL_68:
      sub_1AE4E15F0(v203, v202, v200, v568);
      if (v204)
      {
LABEL_293:
        v438 = v568[0];
        v437 = v568[1];
        v439 = v568[2];
        v440 = v568[3];
        v441 = v569;

        sub_1AE4ABE40(v521, v522);
        sub_1AE4A41E8(v556, v553);
        sub_1AE4ABE40(v548, v552);
        sub_1AE4ABE40(v551, v547);

        v442 = v579;
        v443 = v580;

        sub_1AE4A41E8(v442, v443);
        v550(v559, v561);
        sub_1AE4DFB40(v438, v437, v439, v440, v441);
        *&v560 = 0;
        goto LABEL_27;
      }

      v184 = 0;

      sub_1AE4B87FC(&v581);
      v183 = v582;
      v121 = v584;
      v182 = v583;
      if (!v584)
      {
        goto LABEL_73;
      }
    }

    if (v190 != 2)
    {
      *&v560 = v184;
      *(&v570 + 6) = 0;
      *&v570 = 0;
      if (v187 > 0)
      {
        goto LABEL_354;
      }

      if ((v187 & 0x8000000000000000) == 0)
      {
        goto LABEL_305;
      }

LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
      goto LABEL_357;
    }

    v205 = *(v189 + 16);
    v206 = *(v189 + 24);
    goto LABEL_66;
  }

LABEL_72:
  v184 = v560;
LABEL_73:
  *&v560 = v184;

  v565[0] = v524;
  v565[1] = v541;
  v566 = v542;
  v567 = 0;

  sub_1AE4B87FC(&v586);
  v121 = v589;
  if (!v589)
  {
LABEL_90:

LABEL_91:
    v565[0] = v524;
    v565[1] = v541;
    v566 = v542;
    v567 = 0;

    sub_1AE4B87FC(&v591);
    if (v594)
    {
      v235 = v594;
      v236 = v593;
      v237 = v592;
      v527 = (v532 + 8);
      v528 = (v532 + 32);
      v523 = (v532 + 16);
      v135 = v595;
      v124 = v555;
      v121 = v557;
      v239 = v536;
      v238 = v537;
      while (1)
      {
        LODWORD(v542) = v236;
        v546 = v591;
        if ((v236 & 1) == 0)
        {

          goto LABEL_145;
        }

        v541 = v235;
        v240 = (*(v591 + 64))(v591, v237);
        v124 = v240;
        v241 = *(v546 + 16);
        v242 = *(v546 + 24);
        v243 = v242 >> 62;
        if ((v242 >> 62) > 1)
        {
          break;
        }

        v244 = v237;
        if (v243)
        {
          v273 = v241;
          v274 = v241 >> 32;
          v275 = v274 - v273;
          if (v274 < v273)
          {
            goto LABEL_320;
          }

          v121 = sub_1AE4EA990();
          if (v121)
          {
            v276 = sub_1AE4EA9B0();
            if (__OFSUB__(v273, v276))
            {
              goto LABEL_345;
            }

            v121 += v273 - v276;
          }

          v277 = sub_1AE4EA9A0();
          if (v277 >= v275)
          {
            v278 = v275;
          }

          else
          {
            v278 = v277;
          }

          v270 = v121 + v278;
          if (v121)
          {
            v279 = v121 + v278;
          }

          else
          {
            v279 = 0;
          }

          v142 = v279 - v121;
          if (v121)
          {
            v280 = v279 - v121;
          }

          else
          {
            v280 = 0;
          }

          if (v280 < v124)
          {
            goto LABEL_323;
          }

          if (v124 < 0)
          {
            goto LABEL_325;
          }

          if (v280 <= v124)
          {
            goto LABEL_362;
          }

          if (!v121)
          {
            goto LABEL_364;
          }

LABEL_141:
          v281 = *(v121 + v124);
          *&v573 = sub_1AE4A7CA4(1uLL, v124, v142, v121, v270);
          *(&v573 + 1) = v282;
          *&v574 = v283;
          *(&v574 + 1) = v284;
          v285 = v560;
          sub_1AE4A65CC(v281);
          v290 = v289;
          if (v285)
          {
            v478 = v286;
            v479 = v287;
            v480 = v288;
            sub_1AE4C78AC();
            v469 = swift_allocError();
            *v481 = v290;
            *(v481 + 8) = v478;
LABEL_388:
            *(v481 + 16) = v479;
            *(v481 + 24) = v480;
            goto LABEL_389;
          }

          v257 = sub_1AE4AC038(v281);
          if (v257 == 6)
          {
LABEL_374:
            sub_1AE4C78AC();
            v469 = swift_allocError();
            *(v470 + 8) = 0;
            *(v470 + 16) = 0;
            *v470 = 0;
            *(v470 + 24) = 0x80;
            swift_willThrow();
            goto LABEL_389;
          }

          v259 = *(&v573 + 1);
          v258 = v573;
          v261 = *(&v574 + 1);
          v260 = v574;
          v262 = v290;
          goto LABEL_144;
        }

        v563[0] = *(v546 + 16);
        LOWORD(v563[1]) = v242;
        BYTE2(v563[1]) = BYTE2(v242);
        BYTE3(v563[1]) = BYTE3(v242);
        BYTE4(v563[1]) = BYTE4(v242);
        v142 = BYTE6(v242);
        BYTE5(v563[1]) = BYTE5(v242);
        if (BYTE6(v242) < v240)
        {
          goto LABEL_319;
        }

        if (v240 < 0)
        {
          goto LABEL_322;
        }

        v245 = v563;
        v246 = v563 + BYTE6(v242);
        if (BYTE6(v242) <= v240)
        {
          goto LABEL_385;
        }

        v247 = *(v563 + v240);
        *&v573 = sub_1AE4A7CA4(1uLL, v240, BYTE6(v242), v563, v246);
        *(&v573 + 1) = v248;
        *&v574 = v249;
        *(&v574 + 1) = v250;
        v251 = v560;
        sub_1AE4A65CC(v247);
        v256 = v255;
        if (v251)
        {
          v497 = v252;
          v479 = v253;
          v480 = v254;
          sub_1AE4C78AC();
          v469 = swift_allocError();
          *v481 = v256;
          *(v481 + 8) = v497;
          goto LABEL_388;
        }

        v257 = sub_1AE4AC038(v247);
        if (v257 == 6)
        {
          goto LABEL_374;
        }

        v259 = *(&v573 + 1);
        v258 = v573;
        v261 = *(&v574 + 1);
        v260 = v574;
        v262 = v256;
LABEL_144:
        sub_1AE4AF684(v257, v262, v258, v259, v260, v261, v572, v564);
        *&v560 = 0;
        v124 = v555;
        v121 = v557;
        v239 = v536;
        v238 = v537;
        v237 = v244;
        v235 = v541;
LABEL_145:
        sub_1AE4EAAB0();

        if (v544(v238, 1, v121) != 1)
        {
          (*v528)(v239, v238, v121);
          if (*(*v124 + 16))
          {
            sub_1AE4B4484(v239);
            if (v291)
            {

              sub_1AE4A67B4(v546, v237, v542 & 1);

LABEL_186:
              (*v527)(v239, v121);
              goto LABEL_94;
            }
          }

          (*v523)(v535, v239, v121);
          v292 = (*(v235 + 64))(v235, v135);
          v135 = v292;
          v293 = *(v235 + 16);
          v121 = *(v235 + 24);
          v294 = v121 >> 62;
          if ((v121 >> 62) > 1)
          {
            if (v294 != 2)
            {
              goto LABEL_367;
            }

            v308 = *(v293 + 16);
            v309 = *(v293 + 24);
            v124 = sub_1AE4EA990();
            if (v124)
            {
              v310 = sub_1AE4EA9B0();
              if (__OFSUB__(v308, v310))
              {
                goto LABEL_352;
              }

              v124 += v308 - v310;
            }

            v266 = __OFSUB__(v309, v308);
            v311 = v309 - v308;
            if (v266)
            {
              goto LABEL_340;
            }

            v312 = sub_1AE4EA9A0();
            if (v312 >= v311)
            {
              v313 = v311;
            }

            else
            {
              v313 = v312;
            }

            if (v124)
            {
              v314 = v313;
            }

            else
            {
              v314 = 0;
            }

            if (v314 < v135)
            {
              goto LABEL_343;
            }
          }

          else
          {
            if (!v294)
            {
              v563[0] = *(v235 + 16);
              LOWORD(v563[1]) = v121;
              BYTE2(v563[1]) = BYTE2(v121);
              BYTE3(v563[1]) = BYTE3(v121);
              BYTE4(v563[1]) = BYTE4(v121);
              v142 = BYTE6(v121);
              BYTE5(v563[1]) = BYTE5(v121);
              if (BYTE6(v121) < v292)
              {
                goto LABEL_339;
              }

              if (v292 < 0)
              {
                goto LABEL_341;
              }

              v295 = v563;
              v296 = v563 + BYTE6(v121);
              if (BYTE6(v121) <= v292)
              {
                goto LABEL_395;
              }

              v297 = *(v563 + v292);
              *&v573 = sub_1AE4A7CA4(1uLL, v292, BYTE6(v121), v563, v296);
              *(&v573 + 1) = v298;
              *&v574 = v299;
              *(&v574 + 1) = v300;
              v301 = v560;
              sub_1AE4A65CC(v297);
              v306 = v305;
              *&v560 = v301;
              if (v301)
              {
                v512 = v302;
                v485 = v303;
                v486 = v304;
                sub_1AE4C78AC();
                v482 = swift_allocError();
                *v487 = v306;
                goto LABEL_397;
              }

              v307 = v297;
              goto LABEL_184;
            }

            v315 = v293;
            v316 = v293 >> 32;
            v317 = v316 - v315;
            if (v316 < v315)
            {
              goto LABEL_338;
            }

            v124 = sub_1AE4EA990();
            if (v124)
            {
              v318 = sub_1AE4EA9B0();
              if (__OFSUB__(v315, v318))
              {
                goto LABEL_353;
              }

              v124 += v315 - v318;
            }

            v312 = sub_1AE4EA9A0();
            if (v312 >= v317)
            {
              v313 = v317;
            }

            else
            {
              v313 = v312;
            }

            if (v124)
            {
              v314 = v313;
            }

            else
            {
              v314 = 0;
            }

            if (v314 < v135)
            {
              goto LABEL_342;
            }
          }

          v319 = v313 + v124;
          if (!v124)
          {
            v319 = 0;
          }

          *&v573 = v135;
          *(&v573 + 1) = v314;
          *&v574 = v124;
          *(&v574 + 1) = v319;
          v320 = v560;
          sub_1AE4A5694(v312);
          v325 = v321;
          if (v320)
          {
            v484 = v322;
            v485 = v323;
            v486 = v324;
            sub_1AE4C78AC();
            v482 = swift_allocError();
            *v487 = v325;
            *(v487 + 8) = v484;
            goto LABEL_398;
          }

          sub_1AE4A65CC(v321);
          v306 = v326;
          *&v560 = 0;
          v307 = v325;
LABEL_184:
          v327 = sub_1AE4AC038(v307);
          if (v327 != 4)
          {
            if (v327 == 6)
            {
              sub_1AE4C78AC();
              v482 = swift_allocError();
              *(v483 + 8) = 0;
              *(v483 + 16) = 0;
              *v483 = 0;
              *(v483 + 24) = 0x80;
              swift_willThrow();
              goto LABEL_399;
            }

            goto LABEL_391;
          }

          v570 = v573;
          v571 = v574;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
          sub_1AE4EB230();
          v124 = v555;
          v121 = v557;
          v239 = v536;
          v238 = v537;
          sub_1AE4E8698(v235, v564[0], v306, v535);

          sub_1AE4A67B4(v546, v237, v542 & 1);
          goto LABEL_186;
        }

        sub_1AE4A67B4(v546, v237, v542 & 1);
        sub_1AE4B4558(v238, &qword_1EB5DD4B8, "R3");
LABEL_94:
        sub_1AE4B87FC(&v591);
        v237 = v592;
        v235 = v594;
        v135 = v595;
        v236 = v593;
        if (!v594)
        {
          goto LABEL_187;
        }
      }

      if (v243 != 2)
      {
        goto LABEL_358;
      }

      v244 = v237;
      v263 = *(v241 + 16);
      v264 = *(v241 + 24);
      v121 = sub_1AE4EA990();
      if (v121)
      {
        v265 = sub_1AE4EA9B0();
        if (__OFSUB__(v263, v265))
        {
          goto LABEL_344;
        }

        v121 += v263 - v265;
      }

      v266 = __OFSUB__(v264, v263);
      v267 = v264 - v263;
      if (v266)
      {
        goto LABEL_321;
      }

      v268 = sub_1AE4EA9A0();
      if (v268 >= v267)
      {
        v269 = v267;
      }

      else
      {
        v269 = v268;
      }

      v270 = v121 + v269;
      if (v121)
      {
        v271 = v121 + v269;
      }

      else
      {
        v271 = 0;
      }

      v142 = v271 - v121;
      if (v121)
      {
        v272 = v271 - v121;
      }

      else
      {
        v272 = 0;
      }

      if (v272 < v124)
      {
        goto LABEL_324;
      }

      if (v124 < 0)
      {
        goto LABEL_326;
      }

      if (v272 <= v124)
      {
        goto LABEL_365;
      }

      if (!v121)
      {
        goto LABEL_361;
      }

      goto LABEL_141;
    }

LABEL_187:

    v526(v554, v559, v561);
    sub_1AE4EAB90();
    v565[0] = v531;
    v565[1] = v529;
    v566 = v530;
    v567 = 0;

    sub_1AE4B87FC(&v596);
    v328 = v599;
    if (v599)
    {
      v329 = v598;
      v135 = v597;
      v124 = v600;
      v330 = v561;
      v331 = v555;
      while (1)
      {
        v332 = v596;
        v526(v540, v539, v330);
        LODWORD(v546) = v329;
        v554 = v135;
        v542 = v332;
        if ((v329 & 1) == 0)
        {

          goto LABEL_230;
        }

        v333 = (*(v332 + 64))(v332, v135);
        v121 = v333;
        v334 = *(v332 + 16);
        v335 = *(v332 + 24);
        v336 = v335 >> 62;
        if ((v335 >> 62) <= 1)
        {
          break;
        }

        if (v336 == 2)
        {
          v338 = *(v334 + 16);
          v339 = *(v334 + 24);
          v135 = sub_1AE4EA990();
          if (v135)
          {
            v340 = sub_1AE4EA9B0();
            if (__OFSUB__(v338, v340))
            {
              goto LABEL_347;
            }

            v135 += v338 - v340;
          }

          v266 = __OFSUB__(v339, v338);
          v341 = v339 - v338;
          if (v266)
          {
            goto LABEL_335;
          }

          v333 = sub_1AE4EA9A0();
          if (v333 >= v341)
          {
            v342 = v341;
          }

          else
          {
            v342 = v333;
          }

          if (v135)
          {
            v343 = v342;
          }

          else
          {
            v343 = 0;
          }

          if (v343 < v121)
          {
            goto LABEL_337;
          }

          goto LABEL_221;
        }

        memset(v564, 0, 14);
        if (v333 > 0)
        {
          goto LABEL_333;
        }

        v573 = v333;
        *&v574 = v564;
        *(&v574 + 1) = v564;
        v354 = v560;
        sub_1AE4A5694(v333);
        v353 = v349;
        if (v354)
        {
          v504 = v355;
          v505 = v356;
          v506 = v357;
          sub_1AE4C78AC();
          v472 = swift_allocError();
          *v507 = v353;
          *(v507 + 8) = v504;
          *(v507 + 16) = v505;
          *(v507 + 24) = v506;
          goto LABEL_393;
        }

LABEL_228:
        sub_1AE4A65CC(v349);
        v359 = v358;
        v360 = sub_1AE4AC038(v353);
        if (v360 == 6)
        {
          sub_1AE4C78AC();
          v472 = swift_allocError();
          *(v473 + 8) = 0;
          *(v473 + 16) = 0;
          *v473 = 0;
          *(v473 + 24) = 0x80;
          swift_willThrow();
LABEL_393:
          v564[0] = v472;
          v508 = v472;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
          swift_dynamicCast();
          v500 = *(&v573 + 1);
          v499 = v573;
          v501 = v574;
          v502 = BYTE8(v574);
          v570 = v573;
          *&v571 = v574;
          BYTE8(v571) = BYTE8(v574);
          v135 = sub_1AE4C78AC();
          swift_willThrowTypedImpl();

          goto LABEL_394;
        }

        sub_1AE4AF684(v360, v359, v573, *(&v573 + 1), v574, *(&v574 + 1), v572, &v570);
        *&v560 = 0;
        v330 = v561;
        v331 = v555;
LABEL_230:
        v135 = v538;
        sub_1AE4EAC30();
        v121 = sub_1AE4EABC0();
        v541 = v361;
        v550(v135, v330);
        v362 = (*(v328 + 64))(v328, v124);
        v124 = v362;
        v363 = *(v328 + 16);
        v364 = *(v328 + 24);
        v365 = v364 >> 62;
        if ((v364 >> 62) > 1)
        {
          if (v365 == 2)
          {
            v374 = *(v363 + 16);
            v373 = *(v363 + 24);
            v135 = sub_1AE4EA990();
            if (v135)
            {
              v375 = sub_1AE4EA9B0();
              if (__OFSUB__(v374, v375))
              {
                goto LABEL_327;
              }

              v135 += v374 - v375;
            }

            v266 = __OFSUB__(v373, v374);
            v376 = v373 - v374;
            if (v266)
            {
              goto LABEL_315;
            }

            v377 = sub_1AE4EA9A0();
            if (v377 >= v376)
            {
              v378 = v376;
            }

            else
            {
              v378 = v377;
            }

            if (v135)
            {
              v379 = v378;
            }

            else
            {
              v379 = 0;
            }

            v330 = v561;
            v331 = v555;
            if (v379 < v124)
            {
              goto LABEL_318;
            }

            v380 = v378 + v135;
            if (!v135)
            {
              v380 = 0;
            }

            *&v573 = v124;
            *(&v573 + 1) = v379;
            *&v574 = v135;
            *(&v574 + 1) = v380;
            v381 = v560;
            sub_1AE4A5694(v377);
            v386 = v385;
            if (v381)
            {
LABEL_373:
              v465 = v382;
              v466 = v383;
              v467 = v384;
              sub_1AE4C78AC();
              v463 = swift_allocError();
              *v468 = v386;
              *(v468 + 8) = v465;
              *(v468 + 16) = v466;
              *(v468 + 24) = v467;
              goto LABEL_384;
            }

LABEL_267:
            sub_1AE4A65CC(v386);
            v124 = v397;
            *&v560 = v381;
            v135 = v541;
          }

          else
          {
            memset(v563, 0, 14);
            if (v362 > 0)
            {
              goto LABEL_314;
            }

            v573 = v362;
            *&v574 = v563;
            *(&v574 + 1) = v563;
            v398 = v560;
            sub_1AE4A5694(v362);
            v386 = v399;
            v135 = v541;
            if (v398)
            {
              goto LABEL_373;
            }

            sub_1AE4A65CC(v399);
            v124 = v400;
            *&v560 = 0;
          }

          v372 = v386;
          goto LABEL_272;
        }

        if (v365)
        {
          v387 = v363;
          v388 = v363 >> 32;
          v389 = v388 - v387;
          if (v388 < v387)
          {
            goto LABEL_313;
          }

          v135 = sub_1AE4EA990();
          if (v135)
          {
            v390 = sub_1AE4EA9B0();
            if (__OFSUB__(v387, v390))
            {
              goto LABEL_328;
            }

            v135 += v387 - v390;
          }

          v391 = v560;
          v392 = sub_1AE4EA9A0();
          if (v392 >= v389)
          {
            v393 = v389;
          }

          else
          {
            v393 = v392;
          }

          if (v135)
          {
            v394 = v393;
          }

          else
          {
            v394 = 0;
          }

          if (v394 < v124)
          {
            goto LABEL_317;
          }

          v395 = v393 + v135;
          if (!v135)
          {
            v395 = 0;
          }

          *&v573 = v124;
          *(&v573 + 1) = v394;
          *&v574 = v135;
          *(&v574 + 1) = v395;
          v381 = v391;
          sub_1AE4A5694(v392);
          v386 = v396;
          v330 = v561;
          v331 = v555;
          if (v381)
          {
            goto LABEL_373;
          }

          goto LABEL_267;
        }

        v563[0] = *(v328 + 16);
        LOWORD(v563[1]) = v364;
        BYTE2(v563[1]) = BYTE2(v364);
        BYTE3(v563[1]) = BYTE3(v364);
        BYTE4(v563[1]) = BYTE4(v364);
        v142 = BYTE6(v364);
        BYTE5(v563[1]) = BYTE5(v364);
        v135 = v541;
        if (BYTE6(v364) < v362)
        {
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
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
          goto LABEL_355;
        }

        if (v362 < 0)
        {
          goto LABEL_316;
        }

        if (BYTE6(v364) <= v362)
        {
          v488 = v563 + v362;
          *&v570 = v563 + v362;
          *(&v570 + 1) = v563 + BYTE6(v364);
          v461 = 1;
          *&v571 = 1;
          LOBYTE(v364) = 64;
          BYTE8(v571) = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v463 = swift_allocError();
          *v462 = v488;
          *(v462 + 8) = v563 + BYTE6(v364);
          goto LABEL_383;
        }

        v366 = *(v563 + v362);
        *&v573 = sub_1AE4A7CA4(1uLL, v362, BYTE6(v364), v563, v563 + BYTE6(v364));
        *(&v573 + 1) = v367;
        *&v574 = v368;
        *(&v574 + 1) = v369;
        v370 = v560;
        sub_1AE4A65CC(v366);
        v124 = v371;
        *&v560 = v370;
        if (v370)
        {
          goto LABEL_370;
        }

        v372 = v366;
LABEL_272:
        v401 = sub_1AE4AC038(v372);
        if (v401 != 4)
        {
          if (v401 == 6)
          {
            sub_1AE4C78AC();
            v463 = swift_allocError();
            *(v464 + 8) = 0;
            *(v464 + 16) = 0;
            *v464 = 0;
            *(v464 + 24) = 0x80;
            swift_willThrow();
          }

          else
          {
            *&v571 = 0;
            v570 = 6uLL;
            BYTE8(v571) = 0x80;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v463 = swift_allocError();
            *(v471 + 8) = 0;
            *(v471 + 16) = 0;
            *v471 = 6;
            *(v471 + 24) = 0x80;
          }

          goto LABEL_384;
        }

        v570 = v573;
        v571 = v574;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        v402 = v564[0];
        if (*(*(v331 + 8) + 16) && (sub_1AE4E8FE4(v121, v135), (v403 & 1) != 0))
        {

          sub_1AE4A67B4(v542, v554, v546 & 1);
        }

        else
        {
          sub_1AE4E8870(v328, v402, v124, v121, v135);

          sub_1AE4A67B4(v542, v554, v546 & 1);
        }

        sub_1AE4B87FC(&v596);
        v135 = v597;
        v328 = v599;
        v124 = v600;
        v329 = v598;
        if (!v599)
        {
          goto LABEL_276;
        }
      }

      if (v336)
      {
        v344 = v334;
        v345 = v334 >> 32;
        v346 = v345 - v344;
        if (v345 < v344)
        {
          goto LABEL_332;
        }

        v135 = sub_1AE4EA990();
        if (v135)
        {
          v347 = sub_1AE4EA9B0();
          if (__OFSUB__(v344, v347))
          {
            goto LABEL_348;
          }

          v135 += v344 - v347;
        }

        v333 = sub_1AE4EA9A0();
        if (v333 >= v346)
        {
          v342 = v346;
        }

        else
        {
          v342 = v333;
        }

        if (v135)
        {
          v343 = v342;
        }

        else
        {
          v343 = 0;
        }

        if (v343 < v121)
        {
          goto LABEL_336;
        }

LABEL_221:
        v337 = (v342 + v135);
        if (!v135)
        {
          v337 = 0;
        }

        *&v573 = v121;
        *(&v573 + 1) = v343;
        *&v574 = v135;
      }

      else
      {
        v564[0] = v334;
        LOWORD(v564[1]) = v335;
        BYTE2(v564[1]) = BYTE2(v335);
        BYTE3(v564[1]) = BYTE3(v335);
        BYTE4(v564[1]) = BYTE4(v335);
        BYTE5(v564[1]) = BYTE5(v335);
        if (BYTE6(v335) < v333)
        {
          goto LABEL_334;
        }

        v337 = v564 + BYTE6(v335);
        *&v573 = v333;
        *(&v573 + 1) = BYTE6(v335);
        *&v574 = v564;
      }

      *(&v574 + 1) = v337;
      v348 = v560;
      sub_1AE4A5694(v333);
      v353 = v349;
      if (v348)
      {
        v474 = v350;
        v475 = v351;
        v476 = v352;
        sub_1AE4C78AC();
        v472 = swift_allocError();
        *v477 = v353;
        *(v477 + 8) = v474;
        *(v477 + 16) = v475;
        *(v477 + 24) = v476;
        goto LABEL_393;
      }

      goto LABEL_228;
    }

LABEL_276:

    v404 = v534;
    sub_1AE4B441C(v543, v534, &qword_1EB5DD4B8, "R3");
    if (v544(v404, 1, v557) != 1)
    {
      (*(v532 + 32))(v533, v534, v557);
      v417 = *v555;
      if (*(*v555 + 16) && (v418 = sub_1AE4B4484(v533), (v419 & 1) != 0))
      {
        v420 = *(v417 + 56) + 24 * v418;
        v421 = *v420;
        v555 = *(v420 + 8);

        sub_1AE4ABE40(v521, v522);
        sub_1AE4A41E8(v556, v553);
        sub_1AE4ABE40(v548, v552);
        sub_1AE4ABE40(v551, v547);
        (*(v532 + 8))(v533, v557);
        v422 = v561;
        v423 = v550;
        v550(v539, v561);
        v424 = v579;
        v425 = v580;

        sub_1AE4A41E8(v424, v425);
        v423(v559, v422);
      }

      else
      {

        sub_1AE4ABE40(v521, v522);
        sub_1AE4A41E8(v556, v553);
        sub_1AE4ABE40(v548, v552);
        sub_1AE4ABE40(v551, v547);
        (*(v532 + 8))(v533, v557);
        v426 = v561;
        v427 = v550;
        v550(v539, v561);
        v428 = v579;
        v429 = v580;

        sub_1AE4A41E8(v428, v429);
        v427(v559, v426);
        v421 = 0;
        v555 = 0u;
      }

      v430 = v558;
      *v558 = v421;
      result = *&v555;
      *(v430 + 8) = v555;
      return result;
    }

    sub_1AE4B4558(v534, &qword_1EB5DD4B8, "R3");
    v405 = sub_1AE4EABC0();
    v407 = *(v555 + 8);
    if (*(v407 + 16))
    {
      v408 = sub_1AE4E8FE4(v405, v406);
      v410 = v409;

      if (v410)
      {
        v411 = *(v407 + 56) + 24 * v408;
        v412 = *v411;
        v557 = *(v411 + 8);

        sub_1AE4ABE40(v521, v522);
        sub_1AE4A41E8(v556, v553);
        sub_1AE4ABE40(v548, v552);
        sub_1AE4ABE40(v551, v547);
        v413 = v561;
        v414 = v550;
        v550(v539, v561);
        v415 = v579;
        v416 = v580;

        sub_1AE4A41E8(v415, v416);
        v414(v559, v413);
LABEL_292:
        v436 = v558;
        *v558 = v412;
        result = *&v557;
        *(v436 + 8) = v557;
        return result;
      }
    }

    else
    {
    }

    sub_1AE4ABE40(v521, v522);
    sub_1AE4A41E8(v556, v553);
    sub_1AE4ABE40(v548, v552);
    sub_1AE4ABE40(v551, v547);
    v432 = v561;
    v433 = v550;
    v550(v539, v561);
    v434 = v579;
    v435 = v580;

    sub_1AE4A41E8(v434, v435);
    v433(v559, v432);
    v412 = 0;
    v557 = 0u;
    goto LABEL_292;
  }

  v210 = v588;
  v211 = v587;
  v124 = &qword_1AE4ECE10;
  while (1)
  {
    v212 = v590;
    v213 = sub_1AE4A67B4(v586, v211, v210 & 1);
    v546 = &v521;
    MEMORY[0x1EEE9AC00](v213);
    *(&v521 - 2) = v121;
    *(&v521 - 1) = v212;
    v214 = (*(v121 + 64))(v121, v212);
    v215 = v214;
    v216 = *(v121 + 16);
    v135 = *(v121 + 24);
    v217 = v135 >> 62;
    if ((v135 >> 62) > 1)
    {
      if (v217 != 2)
      {
        *(&v570 + 6) = 0;
        *&v570 = 0;
        if (v214 > 0)
        {
          goto LABEL_356;
        }

        if ((v214 & 0x8000000000000000) == 0)
        {
LABEL_305:
          *&v573 = &v570;
          *(&v573 + 1) = &v570;
          *&v574 = 1;
          BYTE8(v574) = 64;
          sub_1AE4C78AC();

          swift_willThrowTypedImpl();
          v431 = swift_allocError();
          *v447 = &v570;
          *(v447 + 8) = &v570;
          *(v447 + 16) = 1;
          *(v447 + 24) = 64;
          goto LABEL_310;
        }

LABEL_357:
        __break(1u);
LABEL_358:
        *(&v570 + 6) = 0;
        *&v570 = 0;
        if (v124 <= 0)
        {
          if ((v124 & 0x8000000000000000) == 0)
          {
            goto LABEL_401;
          }

          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          if (v121)
          {
            goto LABEL_402;
          }

          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          if (v121)
          {
LABEL_402:
            v518 = v121 + v124;
            v519 = v121 + v142;
            *&v570 = v518;
            *(&v570 + 1) = v519;
            *&v571 = 1;
            BYTE8(v571) = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v469 = swift_allocError();
            *v520 = v518;
            *(v520 + 8) = v519;
            *(v520 + 16) = 1;
            *(v520 + 24) = 64;
            goto LABEL_389;
          }

          __break(1u);
LABEL_367:
          *(&v570 + 6) = 0;
          *&v570 = 0;
          if (v135 > 0)
          {
            goto LABEL_400;
          }

          if (v135 < 0)
          {
            __break(1u);
LABEL_370:
            v460 = v141;
            v461 = v142;
            LOBYTE(v364) = v143;
            sub_1AE4C78AC();
            v463 = swift_allocError();
            *v462 = v124;
            *(v462 + 8) = v460;
LABEL_383:
            *(v462 + 16) = v461;
            *(v462 + 24) = v364;
LABEL_384:
            v564[0] = v463;
            v489 = v463;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v490 = v573;
            v491 = v574;
            v492 = BYTE8(v574);
            v570 = v573;
            *&v571 = v574;
            BYTE8(v571) = BYTE8(v574);
            v124 = sub_1AE4C78AC();
            swift_willThrowTypedImpl();

            swift_allocError();
            *v493 = v490;
            *(v493 + 16) = v491;
            *(v493 + 24) = v492;
            swift_unexpectedError();
            __break(1u);
LABEL_385:
            v494 = v245 + v124;
            *&v570 = v494;
            *(&v570 + 1) = v246;
            *&v571 = 1;
            BYTE8(v571) = 64;
            v495 = v246;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v469 = swift_allocError();
            *v496 = v494;
            for (*(v496 + 8) = v495; ; *(v496 + 8) = &v570)
            {
              *(v496 + 16) = 1;
              *(v496 + 24) = 64;
LABEL_389:
              v564[0] = v469;
              v498 = v469;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
              v135 = &type metadata for BPListError;
              swift_dynamicCast();
              v500 = *(&v573 + 1);
              v499 = v573;
              v501 = v574;
              v502 = BYTE8(v574);
              v570 = v573;
              *&v571 = v574;
              BYTE8(v571) = BYTE8(v574);
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();

LABEL_394:
              swift_allocError();
              *v509 = v499;
              *(v509 + 8) = v500;
              *(v509 + 16) = v501;
              *(v509 + 24) = v502;
              swift_unexpectedError();
              __break(1u);
LABEL_395:
              v510 = v295 + v135;
              *&v570 = v295 + v135;
              *(&v570 + 1) = v296;
              v485 = 1;
              *&v571 = 1;
              v486 = 64;
              BYTE8(v571) = 64;
              v511 = v296;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              v482 = swift_allocError();
              *v487 = v510;
              *(v487 + 8) = v511;
LABEL_398:
              *(v487 + 16) = v485;
              *(v487 + 24) = v486;
LABEL_399:
              v564[0] = v482;
              v513 = v482;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
              swift_dynamicCast();
              v514 = v573;
              v515 = v574;
              v516 = BYTE8(v574);
              v570 = v573;
              *&v571 = v574;
              BYTE8(v571) = BYTE8(v574);
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();

              swift_allocError();
              *v517 = v514;
              *(v517 + 16) = v515;
              *(v517 + 24) = v516;
              swift_unexpectedError();
              __break(1u);
LABEL_400:
              __break(1u);
LABEL_401:
              *&v573 = &v570;
              *(&v573 + 1) = &v570;
              *&v574 = 1;
              BYTE8(v574) = 64;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              v469 = swift_allocError();
              *v496 = &v570;
            }
          }

          v512 = &v570;
          *&v573 = &v570;
          *(&v573 + 1) = &v570;
          v485 = 1;
          *&v574 = 1;
          v486 = 64;
          BYTE8(v574) = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v482 = swift_allocError();
          *v487 = &v570;
LABEL_397:
          *(v487 + 8) = v512;
          goto LABEL_398;
        }

        __break(1u);
LABEL_391:
        *&v571 = 0;
        v570 = 6uLL;
        BYTE8(v571) = 0x80;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v482 = swift_allocError();
        *(v503 + 8) = 0;
        *(v503 + 16) = 0;
        *v503 = 6;
        *(v503 + 24) = 0x80;
        goto LABEL_399;
      }

      v227 = *(v216 + 16);
      v228 = *(v216 + 24);
      goto LABEL_86;
    }

    if (!v217)
    {
      break;
    }

    v227 = v216;
    v228 = v216 >> 32;
    if (v216 >> 32 < v216)
    {
      goto LABEL_350;
    }

LABEL_86:
    swift_retain_n();
    v229 = v215;
    v230 = v560;
    v231 = sub_1AE4EA5A8(v227, v228, v135 & 0x3FFFFFFFFFFFFFFFLL, v229, v121, sub_1AE4EA57C);
    *&v560 = v230;
    if (v230)
    {

      v431 = v560;
      *&v560 = 0;
      goto LABEL_311;
    }

    v226 = v231;
    v225 = v232;
    v200 = v233;

LABEL_88:
    v234 = v560;
    sub_1AE4E15F0(v226, v225, v200, v568);
    *&v560 = v234;
    if (v234)
    {
      goto LABEL_293;
    }

    sub_1AE4B87FC(&v586);
    v211 = v587;
    v121 = v589;
    v210 = v588;
    if (!v589)
    {
      goto LABEL_90;
    }
  }

  v563[0] = *(v121 + 16);
  LOWORD(v563[1]) = v135;
  BYTE2(v563[1]) = BYTE2(v135);
  BYTE3(v563[1]) = BYTE3(v135);
  BYTE4(v563[1]) = BYTE4(v135);
  BYTE5(v563[1]) = BYTE5(v135);
  if (BYTE6(v135) < v214)
  {
    goto LABEL_349;
  }

  if (v214 < 0)
  {
    goto LABEL_351;
  }

  if (BYTE6(v135) <= v214)
  {
    *&v570 = v563 + v214;
    *(&v570 + 1) = v563 + BYTE6(v135);
    *&v571 = 1;
    BYTE8(v571) = 64;
    sub_1AE4C78AC();

    swift_willThrowTypedImpl();
    v431 = swift_allocError();
    *v448 = v563 + v215;
    *(v448 + 8) = v563 + BYTE6(v135);
    *(v448 + 16) = 1;
    *(v448 + 24) = 64;
    goto LABEL_310;
  }

  swift_retain_n();
  v218 = *(v563 + v215);
  *&v573 = sub_1AE4A7CA4(1uLL, v215, BYTE6(v135), v563, v563 + BYTE6(v135));
  *(&v573 + 1) = v219;
  *&v574 = v220;
  *(&v574 + 1) = v221;
  v222 = v560;
  sub_1AE4A65CC(v218);
  v200 = v223;
  *&v560 = v222;
  if (v222)
  {
    goto LABEL_307;
  }

  v224 = sub_1AE4AC038(v218);
  if (v224 == 4)
  {
    v570 = v573;
    v571 = v574;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();

    v225 = v564[0];
    v226 = v121;
    goto LABEL_88;
  }

  if (v224 == 6)
  {
    goto LABEL_301;
  }

LABEL_309:
  *&v571 = 0;
  v570 = 6uLL;
  BYTE8(v571) = 0x80;
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();
  v431 = swift_allocError();
  *(v453 + 8) = 0;
  *(v453 + 16) = 0;
  *v453 = 6;
  *(v453 + 24) = 0x80;

LABEL_310:

LABEL_311:
  v564[0] = v431;
  v454 = v431;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v455 = v573;
  v456 = v574;
  v457 = BYTE8(v574);
  v570 = v573;
  *&v571 = v574;
  BYTE8(v571) = BYTE8(v574);
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

  sub_1AE4DB684(v455, *(&v455 + 1), v456, v457);

  sub_1AE4ABE40(v521, v522);
  sub_1AE4A41E8(v556, v553);
  sub_1AE4ABE40(v548, v552);
  sub_1AE4ABE40(v551, v547);

  v458 = v579;
  v459 = v580;

  sub_1AE4A41E8(v458, v459);
  v550(v559, v561);
LABEL_27:
  v117 = v558;
  *v558 = 0;
  *(v117 + 8) = 0;
  *(v117 + 16) = 0;
  return result;
}

uint64_t sub_1AE4B441C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1AE4B4484(uint64_t a1)
{
  sub_1AE4EAB10();
  v2 = MEMORY[0x1E69695A8];
  sub_1AE4A9918(&qword_1EB5DD190, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1AE4EACE0();
  return sub_1AE4A9960(a1, v3, MEMORY[0x1E69695A8], &unk_1EB5DD148, v2, MEMORY[0x1E69695C8]);
}

uint64_t sub_1AE4B4558(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1AE4B45DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  swift_weakInit();
  v4[6] = 0;
  v12 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
  swift_beginAccess();
  sub_1AE4B441C(a4 + v12, v11, &qword_1EB5DD520, &qword_1AE4EDB98);
  v13 = sub_1AE4EAC50();
  LODWORD(v12) = (*(*(v13 - 8) + 48))(v11, 1, v13);
  result = sub_1AE4B4558(v11, &qword_1EB5DD520, &qword_1AE4EDB98);
  if (v12 == 1)
  {
    __break(1u);
  }

  else
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    *(a4 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache) = v4;

    swift_weakAssign();
    return v4;
  }

  return result;
}

CFTypeRef dyld_process_snapshot_create_for_process(void *a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
    if (!a1)
    {
      v3 = 0;
      *a2 = 5;
      return v3;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v4 = [a1 getCurrentSnapshotAndReturnError:&v9];
  v5 = v9;
  v6 = v5;
  if (v5)
  {
    KernReturn = extractKernReturn(v5);
    v3 = 0;
    if (a2)
    {
      *a2 = KernReturn;
    }
  }

  else
  {
    v3 = CFRetain(v4);
  }

  return v3;
}

char *sub_1AE4B486C()
{
  v1 = OBJC_IVAR____DYProcess_impl;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = objc_allocWithZone(_DYSnapshot);

    v7 = [v6 initWithInternal_];
    v8 = &v7[OBJC_IVAR____DYSnapshot_impl];
    v9 = *&v7[OBJC_IVAR____DYSnapshot_impl];
    v10 = *&v7[OBJC_IVAR____DYSnapshot_impl + 8];
    *v8 = v4;
    *(v8 + 1) = v5;
    v11 = v7;
    sub_1AE4B4990(v9, v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4B4990(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *dyld_process_snapshot_get_shared_cache(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 sharedCache];

  return v1;
}

void *sub_1AE4B4A50()
{
  v1 = OBJC_IVAR____DYSnapshot____lazy_storage___sharedCache;
  v2 = *(v0 + OBJC_IVAR____DYSnapshot____lazy_storage___sharedCache);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1AE4B4AC0(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1AE4B51C8(v4);
  }

  sub_1AE4B51D8(v2);
  return v3;
}

void *sub_1AE4B4AC0(void *result)
{
  if (*(result + OBJC_IVAR____DYSnapshot_impl))
  {

    v1 = sub_1AE4B4BA0();
    if (!v1)
    {

      return v1;
    }

    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = result;

      v3 = [objc_allocWithZone(_DYSharedCache) initWithInternal_];
      v4 = &v3[OBJC_IVAR____DYSharedCache_impl];
      v5 = *&v3[OBJC_IVAR____DYSharedCache_impl];
      v6 = *&v3[OBJC_IVAR____DYSharedCache_impl + 8];
      *v4 = v1;
      *(v4 + 1) = v2;
      v1 = v3;
      sub_1AE4B4990(v5, v6);

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1AE4B4BA0()
{
  v1 = sub_1AE4EAB10();
  v49 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v48 = *(v0 + 72);
  v10 = *(v48 + 56);
  if (!v10)
  {
    return 0;
  }

  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];

  v14 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v11, v12, v13);
  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = sub_1AE4AEC7C(v14, v15);
  v12 = v18;

  sub_1AE4B0730(v13, v12);
  (*(v49 + 56))(v9, 0, 1, v1);
  v19 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, v10[2], v10[3], v10[4]);
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = sub_1AE4AF28C(v19);
  v22 = v21;

  MEMORY[0x1B27010F0](v20, v22);
  v23 = sub_1AE4EAC50();
  (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
  if (qword_1EB5DD140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1EB5DD188;

  os_unfair_lock_lock(v12 + 4);
  sub_1AE4B0920(v9, &qword_1EB5DD170, v6, 0, v50);
  v47 = v1;
  v32 = v50[0];
  v33 = v50[1];
  v13 = v50[2];
  os_unfair_lock_unlock(v12 + 4);
  swift_endAccess();

  sub_1AE4B4558(v6, &qword_1EB5DD520, &qword_1AE4EDB98);
  sub_1AE4B4558(v9, &qword_1EB5DD4B8, "R3");
  if (v32)
  {
    goto LABEL_11;
  }

  v37 = v47;
  v24 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v10[2], v10[3], v10[4]);
  if (v24)
  {
    v26 = v37;
    v27 = sub_1AE4AEC7C(v24, v25);
    v29 = v28;

    sub_1AE4B0730(v27, v29);
    v32 = sub_1AE4D1B1C();
    v33 = v30;
    v13 = v31;
    (*(v49 + 8))(v3, v26);
    if (v32)
    {
LABEL_11:
      v34 = v48;

      type metadata accessor for SharedCache.Impl();
      swift_allocObject();

      v35 = sub_1AE4B45DC(v32, v33, v13, v34);

      return v35;
    }

    return 0;
  }

LABEL_16:
  __break(1u);
  v38 = v16;
  v39 = v17;
  sub_1AE4C78AC();
  swift_allocError();
  *v40 = v13;
  *(v40 + 8) = v12;
  *(v40 + 16) = v38;
  *(v40 + 24) = v39;
  swift_unexpectedError();
  __break(1u);
  v42 = v41;
  v44 = v43;
  sub_1AE4C78AC();
  swift_allocError();
  *v45 = v13;
  *(v45 + 8) = v12;
  *(v45 + 16) = v42;
  *(v45 + 24) = v44;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4B5120()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1AE4B51C8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1AE4B51D8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void *dyld_shared_cache_get_mapped_size(void *result, const char *a2)
{
  if (result)
  {
    return [result vmsize];
  }

  return result;
}

unint64_t sub_1AE4B5228(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSharedCache_impl);
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6[2];
  v5 = v6[3];
  v8 = v6[4];

  v9 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v7, v5, v8);
  if (v9)
  {
    v5 = sub_1AE4A6A00(v9);

    if ((v5 & 0x8000000000000000) == 0)
    {
      return v5;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  v11 = a2;
  v12 = a3;
  v13 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v14 = v5;
  *(v14 + 8) = v11;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *dyld_shared_cache_get_base_address(void *result, const char *a2)
{
  if (result)
  {
    return [result address];
  }

  return result;
}

uint64_t sub_1AE4B5380(uint64_t Strong, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSharedCache_impl);
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v6[2];
  v5 = v6[3];
  v8 = v6[4];

  v9 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v7, v5, v8);
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_1AE4A6A00(v9);

  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = v10;

    v12 = *(v11 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide);

    return v12 + v5;
  }

LABEL_7:
  __break(1u);
  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v17 = v5;
  *(v17 + 8) = v14;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4B54F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1AE4B55F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v345 = a1;
  v385 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v344 = &v332 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v350 = &v332 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v352 = &v332 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4E8, &qword_1AE4EDB68);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v343 = &v332 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v342 = &v332 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v332 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v332 - v17;
  v19 = OBJC_IVAR____TtCV4Dyld5Image4Impl__info;
  swift_beginAccess();
  sub_1AE4B441C(v1 + v19, v18, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  v20 = type metadata accessor for Image.Info(0);
  v341 = *(v20 - 8);
  v22 = v341 + 48;
  v21 = *(v341 + 48);
  v23 = v21(v18, 1, v20);
  sub_1AE4B4558(v18, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  if (v23 != 1)
  {
    sub_1AE4B441C(v1 + v19, v16, &qword_1EB5DD4E8, &qword_1AE4EDB68);
    v271 = v21(v16, 1, v20);
    v272 = v345;
    if (v271 == 1)
    {
      __break(1u);
LABEL_321:
      v270 = v335;
      goto LABEL_322;
    }

    return sub_1AE4BA8A8(v16, v272, type metadata accessor for Image.Info);
  }

  v336 = v21;
  v337 = v22;
  v338 = v20;
  v339 = v19;
  v24 = sub_1AE4EAB10();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v352;
  v348 = v24;
  v347 = v26;
  v346 = v25 + 56;
  (v26)(v352, 1, 1);
  v28 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
  v379 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
  v378 = v28;
  v380 = 0;

  sub_1AE4B87FC(&v381);
  v29 = v381;
  v362 = v382;
  v30 = v383;
  if (!v383)
  {

    v356 = 0;
    v355 = 0;
    *&v358 = 0;
    v276 = 0;
    v351 = 0;
    v340 = 0;
    v349 = 1;
    v354 = 255;
    v357 = 255;
    v270 = 1;
    v273 = v339;
    v274 = v338;
    v275 = v344;
    v272 = v345;
LABEL_329:
    sub_1AE4B441C(v27, v275, &qword_1EB5DD4B8, "R3");
    v278 = 0;
    if (v270 & 1) != 0 && (v349)
    {
      goto LABEL_417;
    }

    goto LABEL_331;
  }

  v333 = v1;
  v334 = v28;
  v356 = 0;
  v355 = 0;
  *&v358 = 0;
  v353 = 0;
  v340 = 0;
  v351 = 0;
  v31 = v384;
  v32 = 1;
  v354 = 255;
  LODWORD(v33) = v362;
  v357 = 255;
  v349 = 1;
  do
  {
    v335 = v32;
    while (1)
    {
      v34 = *(&v29 + 1);
      v35 = v29;
      v36 = sub_1AE4B8C4C(v29, *(&v29 + 1), v33 & 1, 0x656D616E, 0xE400000000000000, 0);
      v360 = v34;
      v361 = v35;
      v359 = v33;
      if ((v36 & 1) == 0)
      {
        goto LABEL_98;
      }

      v37 = (*(v30 + 64))(v30, v31);
      v39 = v37;
      v40 = *(v30 + 16);
      v33 = *(v30 + 24);
      v41 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        if (v41 != 2)
        {
          goto LABEL_390;
        }

        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        v50 = sub_1AE4EA990();
        if (v50)
        {
          v35 = v50;
          v51 = sub_1AE4EA9B0();
          if (__OFSUB__(v49, v51))
          {
            goto LABEL_358;
          }

          v22 = v49 - v51 + v35;
          v52 = __OFSUB__(v48, v49);
          v53 = v48 - v49;
          if (v52)
          {
            goto LABEL_336;
          }
        }

        else
        {
          v22 = 0;
          v52 = __OFSUB__(v48, v49);
          v53 = v48 - v49;
          if (v52)
          {
            goto LABEL_336;
          }
        }

        v59 = sub_1AE4EA9A0();
        if (v59 >= v53)
        {
          v60 = v53;
        }

        else
        {
          v60 = v59;
        }

        v61 = v22 + v60;
        if (v22)
        {
          v62 = v22 + v60;
        }

        else
        {
          v62 = 0;
        }

        v35 = v62 - v22;
        if (v22)
        {
          v63 = v62 - v22;
        }

        else
        {
          v63 = 0;
        }

        if (v63 < v39)
        {
          goto LABEL_339;
        }

        if (sub_1AE4BA9B0(v39, v63, v22, v62) <= 0)
        {
          goto LABEL_397;
        }

        v34 = v360;
        if (!v22)
        {
          goto LABEL_396;
        }
      }

      else
      {
        if (!v41)
        {
          v363 = *(v30 + 16);
          v364 = v33;
          v365 = BYTE2(v33);
          v366 = BYTE3(v33);
          v367 = BYTE4(v33);
          v368 = BYTE5(v33);
          if (BYTE6(v33) < v37)
          {
            goto LABEL_335;
          }

          if (v37 < 0)
          {
            goto LABEL_337;
          }

          v42 = &v363;
          v38 = &v363 + BYTE6(v33);
          if (BYTE6(v33) <= v37)
          {
            goto LABEL_429;
          }

          v43 = *(&v363 + v37);
          *&v375 = sub_1AE4A7CA4(1uLL, v37, BYTE6(v33), &v363, v38);
          *(&v375 + 1) = v44;
          v376 = v45;
          v377 = v46;
          sub_1AE4A65CC(v43);
          LOBYTE(v33) = v359;
          v47 = sub_1AE4AC038(v43);
          if (v47 == 6)
          {
LABEL_421:
            sub_1AE4C78AC();
            v39 = swift_allocError();
            *(v290 + 8) = 0;
            *(v290 + 16) = 0;
            *v290 = 0;
            *(v290 + 24) = 0x80;
            swift_willThrow();
            goto LABEL_431;
          }

          goto LABEL_52;
        }

        v54 = v40;
        v55 = v40 >> 32;
        v56 = v55 - v54;
        if (v55 < v54)
        {
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
          goto LABEL_382;
        }

        v57 = sub_1AE4EA990();
        if (v57)
        {
          v35 = v57;
          v58 = sub_1AE4EA9B0();
          if (__OFSUB__(v54, v58))
          {
            goto LABEL_359;
          }

          v22 = v54 - v58 + v35;
        }

        else
        {
          v22 = 0;
        }

        v64 = sub_1AE4EA9A0();
        if (v64 >= v56)
        {
          v65 = v56;
        }

        else
        {
          v65 = v64;
        }

        v61 = v22 + v65;
        if (v22)
        {
          v66 = v22 + v65;
        }

        else
        {
          v66 = 0;
        }

        v35 = v66 - v22;
        if (v22)
        {
          v67 = v66 - v22;
        }

        else
        {
          v67 = 0;
        }

        if (v67 < v39)
        {
          goto LABEL_338;
        }

        if (sub_1AE4BA9B0(v39, v67, v22, v66) <= 0)
        {
          goto LABEL_400;
        }

        v34 = v360;
        if (!v22)
        {
          goto LABEL_399;
        }
      }

      v68 = *(v22 + v39);
      *&v375 = sub_1AE4A7CA4(1uLL, v39, v35, v22, v61);
      *(&v375 + 1) = v69;
      v376 = v70;
      v377 = v71;
      sub_1AE4A65CC(v68);
      v47 = sub_1AE4AC038(v68);
      v35 = v361;
      if (v47 == 6)
      {
        goto LABEL_421;
      }

      LOBYTE(v33) = v359;
LABEL_52:
      if (v47 == 1)
      {
        v72 = (*(v30 + 64))(v30, v31);
        v39 = v72;
        v73 = *(v30 + 16);
        v22 = *(v30 + 24);
        v74 = v22 >> 62;
        if ((v22 >> 62) > 1)
        {
          if (v74 == 2)
          {
            v80 = *(v73 + 16);
            v79 = *(v73 + 24);
            v81 = sub_1AE4EA990();
            if (v81)
            {
              v35 = v81;
              v82 = sub_1AE4EA9B0();
              if (__OFSUB__(v80, v82))
              {
                goto LABEL_378;
              }

              v83 = v80 - v82 + v35;
            }

            else
            {
              v83 = 0;
            }

            v52 = __OFSUB__(v79, v80);
            v96 = v79 - v80;
            v35 = v361;
            if (v52)
            {
              goto LABEL_369;
            }

            v97 = sub_1AE4EA9A0();
            if (v97 >= v96)
            {
              v98 = v96;
            }

            else
            {
              v98 = v97;
            }

            if (v83)
            {
              v99 = v98;
            }

            else
            {
              v99 = 0;
            }

            if (v99 < v39)
            {
              goto LABEL_371;
            }

            v100 = (v98 + v83);
            if (!v83)
            {
              v100 = 0;
            }

            *&v375 = v39;
            *(&v375 + 1) = v99;
            v376 = v83;
            v377 = v100;
            sub_1AE4A5694(v97);
            v22 = v101;
            sub_1AE4A65CC(v101);
            v77 = v102;
            LOBYTE(v33) = v359;
            v34 = v360;
            if (sub_1AE4AC038(v22) == 6)
            {
              goto LABEL_419;
            }

            v78 = v376;
            if (!v376)
            {
              goto LABEL_410;
            }
          }

          else
          {
            *(&v372 + 6) = 0;
            *&v372 = 0;
            if (v72 > 0)
            {
              goto LABEL_366;
            }

            v375 = v72;
            v376 = &v372;
            v377 = &v372;
            sub_1AE4A5694(v72);
            v22 = v94;
            sub_1AE4A65CC(v94);
            v77 = v95;
            if (sub_1AE4AC038(v22) == 6)
            {
              goto LABEL_419;
            }

            v78 = v376;
            if (!v376)
            {
              goto LABEL_409;
            }
          }
        }

        else if (v74)
        {
          v84 = v73;
          v85 = v73 >> 32;
          v86 = v85 - v84;
          if (v85 < v84)
          {
            goto LABEL_368;
          }

          v35 = sub_1AE4EA990();
          if (v35)
          {
            v87 = sub_1AE4EA9B0();
            if (__OFSUB__(v84, v87))
            {
              goto LABEL_379;
            }

            v35 += v84 - v87;
          }

          v88 = sub_1AE4EA9A0();
          if (v88 >= v86)
          {
            v89 = v86;
          }

          else
          {
            v89 = v88;
          }

          if (v35)
          {
            v90 = v89;
          }

          else
          {
            v90 = 0;
          }

          if (v90 < v39)
          {
            goto LABEL_370;
          }

          v91 = (v89 + v35);
          if (!v35)
          {
            v91 = 0;
          }

          *&v375 = v39;
          *(&v375 + 1) = v90;
          v376 = v35;
          v377 = v91;
          sub_1AE4A5694(v88);
          v22 = v92;
          sub_1AE4A65CC(v92);
          v77 = v93;
          v34 = v360;
          v35 = v361;
          if (sub_1AE4AC038(v22) == 6)
          {
            goto LABEL_419;
          }

          v78 = v376;
          if (!v376)
          {
            goto LABEL_412;
          }
        }

        else
        {
          *&v372 = *(v30 + 16);
          WORD4(v372) = v22;
          BYTE10(v372) = BYTE2(v22);
          BYTE11(v372) = BYTE3(v22);
          BYTE12(v372) = BYTE4(v22);
          BYTE13(v372) = BYTE5(v22);
          if (BYTE6(v22) < v72)
          {
            goto LABEL_367;
          }

          *&v375 = v72;
          *(&v375 + 1) = BYTE6(v22);
          v376 = &v372;
          v377 = &v372 + BYTE6(v22);
          sub_1AE4A5694(v72);
          v22 = v75;
          sub_1AE4A65CC(v75);
          v77 = v76;
          if (sub_1AE4AC038(v22) == 6)
          {
            goto LABEL_419;
          }

          v78 = v376;
          if (!v376)
          {
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            sub_1AE4C78AC();
            v288 = swift_allocError();
            *(v289 + 8) = 0;
            *(v289 + 16) = 0;
            *v289 = 0;
            *(v289 + 24) = 0x80;
            swift_willThrow();
            goto LABEL_424;
          }
        }

        v103 = v375;
        sub_1AE4BA998(v353, v358, v357);
        v353 = v78 + v103;
        *&v358 = v78 + v103 + v77;
        v357 = 0;
      }

      else
      {
        sub_1AE4BA998(v353, v358, v357);

        v357 = 1;
        v353 = v30;
        *&v358 = v31;
      }

LABEL_98:
      if ((sub_1AE4B8C4C(v35, v34, v33 & 1, 0x656C6966, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_187;
      }

      v104 = (*(v30 + 64))(v30, v31);
      v39 = v104;
      v105 = *(v30 + 16);
      v33 = *(v30 + 24);
      v106 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        if (v106 != 2)
        {
          goto LABEL_393;
        }

        v22 = *(v105 + 16);
        v114 = *(v105 + 24);
        v115 = sub_1AE4EA990();
        if (v115)
        {
          v35 = v115;
          v116 = sub_1AE4EA9B0();
          if (__OFSUB__(v22, v116))
          {
            goto LABEL_360;
          }

          v117 = v22 - v116 + v35;
        }

        else
        {
          v117 = 0;
        }

        v52 = __OFSUB__(v114, v22);
        v123 = v114 - v22;
        v35 = v361;
        if (v52)
        {
          goto LABEL_342;
        }

        v124 = sub_1AE4EA9A0();
        if (v124 >= v123)
        {
          v125 = v123;
        }

        else
        {
          v125 = v124;
        }

        if (v117)
        {
          v126 = v125;
        }

        else
        {
          v126 = 0;
        }

        if (v126 < v39)
        {
          goto LABEL_345;
        }

        v127 = (v125 + v117);
        if (!v117)
        {
          v127 = 0;
        }

        *&v375 = v39;
        *(&v375 + 1) = v126;
        v376 = v117;
        v377 = v127;
        sub_1AE4A5694(v124);
        v129 = v128;
        sub_1AE4A65CC(v128);
        LOBYTE(v33) = v359;
        v34 = v360;
        v113 = v129;
      }

      else
      {
        if (v106)
        {
          v118 = v105;
          v119 = v105 >> 32;
          v120 = v119 - v118;
          if (v119 < v118)
          {
            goto LABEL_341;
          }

          v121 = sub_1AE4EA990();
          if (v121)
          {
            v35 = v121;
            v122 = sub_1AE4EA9B0();
            if (__OFSUB__(v118, v122))
            {
              goto LABEL_361;
            }

            v22 = v118 - v122 + v35;
          }

          else
          {
            v22 = 0;
          }

          v131 = sub_1AE4EA9A0();
          if (v131 >= v120)
          {
            v132 = v120;
          }

          else
          {
            v132 = v131;
          }

          v133 = v22 + v132;
          if (v22)
          {
            v134 = v22 + v132;
          }

          else
          {
            v134 = 0;
          }

          v35 = v134 - v22;
          if (v22)
          {
            v135 = v134 - v22;
          }

          else
          {
            v135 = 0;
          }

          if (v135 < v39)
          {
            goto LABEL_344;
          }

          if (sub_1AE4BA9B0(v39, v135, v22, v134) <= 0)
          {
            goto LABEL_403;
          }

          v34 = v360;
          if (!v22)
          {
            goto LABEL_402;
          }

          v136 = *(v22 + v39);
          *&v375 = sub_1AE4A7CA4(1uLL, v39, v35, v22, v133);
          *(&v375 + 1) = v137;
          v376 = v138;
          v377 = v139;
          sub_1AE4A65CC(v136);
          v130 = sub_1AE4AC038(v136);
          v35 = v361;
          if (v130 == 6)
          {
LABEL_422:
            sub_1AE4C78AC();
            v291 = swift_allocError();
            *(v292 + 8) = 0;
            *(v292 + 16) = 0;
            *v292 = 0;
            *(v292 + 24) = 0x80;
            swift_willThrow();
            goto LABEL_423;
          }

          LOBYTE(v33) = v359;
          goto LABEL_142;
        }

        v363 = *(v30 + 16);
        v364 = v33;
        v365 = BYTE2(v33);
        v366 = BYTE3(v33);
        v367 = BYTE4(v33);
        v368 = BYTE5(v33);
        if (BYTE6(v33) < v104)
        {
          goto LABEL_340;
        }

        if (v104 < 0)
        {
          goto LABEL_343;
        }

        v107 = &v363;
        v108 = &v363 + BYTE6(v33);
        if (BYTE6(v33) <= v104)
        {
          goto LABEL_432;
        }

        v109 = *(&v363 + v104);
        *&v375 = sub_1AE4A7CA4(1uLL, v104, BYTE6(v33), &v363, v108);
        *(&v375 + 1) = v110;
        v376 = v111;
        v377 = v112;
        sub_1AE4A65CC(v109);
        LOBYTE(v33) = v359;
        v113 = v109;
      }

      v130 = sub_1AE4AC038(v113);
      if (v130 == 6)
      {
        goto LABEL_422;
      }

LABEL_142:
      if (v130 == 1)
      {
        v140 = (*(v30 + 64))(v30, v31);
        v39 = v140;
        v141 = *(v30 + 16);
        v22 = *(v30 + 24);
        v142 = v22 >> 62;
        if ((v22 >> 62) > 1)
        {
          if (v142 == 2)
          {
            v146 = *(v141 + 16);
            v145 = *(v141 + 24);
            v147 = sub_1AE4EA990();
            if (v147)
            {
              v35 = v147;
              v148 = sub_1AE4EA9B0();
              if (__OFSUB__(v146, v148))
              {
                goto LABEL_380;
              }

              v149 = v146 - v148 + v35;
            }

            else
            {
              v149 = 0;
            }

            v52 = __OFSUB__(v145, v146);
            v162 = v145 - v146;
            v35 = v361;
            if (v52)
            {
              goto LABEL_375;
            }

            v163 = sub_1AE4EA9A0();
            if (v163 >= v162)
            {
              v164 = v162;
            }

            else
            {
              v164 = v163;
            }

            if (v149)
            {
              v165 = v164;
            }

            else
            {
              v165 = 0;
            }

            if (v165 < v39)
            {
              goto LABEL_376;
            }

            v166 = (v164 + v149);
            if (!v149)
            {
              v166 = 0;
            }

            *&v375 = v39;
            *(&v375 + 1) = v165;
            v376 = v149;
            v377 = v166;
            sub_1AE4A5694(v163);
            v168 = v167;
            sub_1AE4A65CC(v167);
            LOBYTE(v33) = v359;
            v34 = v360;
            if (sub_1AE4AC038(v168) == 6)
            {
              goto LABEL_419;
            }

            if (!v376)
            {
              goto LABEL_415;
            }
          }

          else
          {
            *(&v372 + 6) = 0;
            *&v372 = 0;
            if (v140 > 0)
            {
              goto LABEL_374;
            }

            v375 = v140;
            v376 = &v372;
            v377 = &v372;
            sub_1AE4A5694(v140);
            v161 = v160;
            sub_1AE4A65CC(v160);
            if (sub_1AE4AC038(v161) == 6)
            {
              goto LABEL_419;
            }

            if (!v376)
            {
              goto LABEL_414;
            }
          }
        }

        else if (v142)
        {
          v150 = v141;
          v151 = v141 >> 32;
          v152 = v151 - v150;
          if (v151 < v150)
          {
            goto LABEL_372;
          }

          v35 = sub_1AE4EA990();
          if (v35)
          {
            v153 = sub_1AE4EA9B0();
            if (__OFSUB__(v150, v153))
            {
              goto LABEL_381;
            }

            v35 += v150 - v153;
          }

          v154 = sub_1AE4EA9A0();
          if (v154 >= v152)
          {
            v155 = v152;
          }

          else
          {
            v155 = v154;
          }

          if (v35)
          {
            v156 = v155;
          }

          else
          {
            v156 = 0;
          }

          if (v156 < v39)
          {
            goto LABEL_377;
          }

          v157 = (v155 + v35);
          if (!v35)
          {
            v157 = 0;
          }

          *&v375 = v39;
          *(&v375 + 1) = v156;
          v376 = v35;
          v377 = v157;
          sub_1AE4A5694(v154);
          v159 = v158;
          sub_1AE4A65CC(v158);
          v34 = v360;
          v35 = v361;
          if (sub_1AE4AC038(v159) == 6)
          {
            goto LABEL_419;
          }

          if (!v376)
          {
            goto LABEL_411;
          }
        }

        else
        {
          *&v372 = *(v30 + 16);
          WORD4(v372) = v22;
          BYTE10(v372) = BYTE2(v22);
          BYTE11(v372) = BYTE3(v22);
          BYTE12(v372) = BYTE4(v22);
          BYTE13(v372) = BYTE5(v22);
          if (BYTE6(v22) < v140)
          {
            goto LABEL_373;
          }

          *&v375 = v140;
          *(&v375 + 1) = BYTE6(v22);
          v376 = &v372;
          v377 = &v372 + BYTE6(v22);
          sub_1AE4A5694(v140);
          v144 = v143;
          sub_1AE4A65CC(v143);
          if (sub_1AE4AC038(v144) == 6)
          {
            goto LABEL_419;
          }

          if (!v376)
          {
            goto LABEL_413;
          }
        }
      }

      sub_1AE4BA998(v355, v356, v354);

      v354 = 1;
      v355 = v30;
      v356 = v31;
LABEL_187:
      if (sub_1AE4B8C4C(v35, v34, v33 & 1, 0x64697575, 0xE400000000000000, 0))
      {
        v169 = (*(v30 + 64))(v30, v31);
        v39 = v169;
        v170 = *(v30 + 16);
        v22 = *(v30 + 24);
        v171 = v22 >> 62;
        if ((v22 >> 62) > 1)
        {
          if (v171 == 2)
          {
            v175 = *(v170 + 16);
            v174 = *(v170 + 24);
            v176 = sub_1AE4EA990();
            if (v176)
            {
              v35 = v176;
              v177 = sub_1AE4EA9B0();
              if (__OFSUB__(v175, v177))
              {
                goto LABEL_362;
              }

              v178 = v175 - v177 + v35;
            }

            else
            {
              v178 = 0;
            }

            v52 = __OFSUB__(v174, v175);
            v191 = v174 - v175;
            v35 = v361;
            if (v52)
            {
              goto LABEL_349;
            }

            v192 = sub_1AE4EA9A0();
            if (v192 >= v191)
            {
              v193 = v191;
            }

            else
            {
              v193 = v192;
            }

            if (v178)
            {
              v194 = v193;
            }

            else
            {
              v194 = 0;
            }

            if (v194 < v39)
            {
              goto LABEL_355;
            }

            v195 = (v193 + v178);
            if (!v178)
            {
              v195 = 0;
            }

            *&v375 = v39;
            *(&v375 + 1) = v194;
            v376 = v178;
            v377 = v195;
            sub_1AE4A5694(v192);
            v197 = v196;
            sub_1AE4A65CC(v196);
            LOBYTE(v33) = v359;
            v34 = v360;
            if (sub_1AE4AC038(v197) == 6)
            {
              goto LABEL_419;
            }

            if (!v376)
            {
              goto LABEL_407;
            }
          }

          else
          {
            *(&v372 + 6) = 0;
            *&v372 = 0;
            if (v169 > 0)
            {
              goto LABEL_348;
            }

            v375 = v169;
            v376 = &v372;
            v377 = &v372;
            sub_1AE4A5694(v169);
            v190 = v189;
            sub_1AE4A65CC(v189);
            if (sub_1AE4AC038(v190) == 6)
            {
              goto LABEL_419;
            }

            if (!v376)
            {
              goto LABEL_406;
            }
          }
        }

        else if (v171)
        {
          v179 = v170;
          v180 = v170 >> 32;
          v181 = v180 - v179;
          if (v180 < v179)
          {
            goto LABEL_346;
          }

          v35 = sub_1AE4EA990();
          if (v35)
          {
            v182 = sub_1AE4EA9B0();
            if (__OFSUB__(v179, v182))
            {
              goto LABEL_364;
            }

            v35 += v179 - v182;
          }

          v183 = sub_1AE4EA9A0();
          if (v183 >= v181)
          {
            v184 = v181;
          }

          else
          {
            v184 = v183;
          }

          if (v35)
          {
            v185 = v184;
          }

          else
          {
            v185 = 0;
          }

          if (v185 < v39)
          {
            goto LABEL_354;
          }

          v186 = (v184 + v35);
          if (!v35)
          {
            v186 = 0;
          }

          *&v375 = v39;
          *(&v375 + 1) = v185;
          v376 = v35;
          v377 = v186;
          sub_1AE4A5694(v183);
          v188 = v187;
          sub_1AE4A65CC(v187);
          v34 = v360;
          v35 = v361;
          if (sub_1AE4AC038(v188) == 6)
          {
            goto LABEL_419;
          }

          if (!v376)
          {
            goto LABEL_408;
          }
        }

        else
        {
          *&v372 = *(v30 + 16);
          WORD4(v372) = v22;
          BYTE10(v372) = BYTE2(v22);
          BYTE11(v372) = BYTE3(v22);
          BYTE12(v372) = BYTE4(v22);
          BYTE13(v372) = BYTE5(v22);
          if (BYTE6(v22) < v169)
          {
            goto LABEL_347;
          }

          *&v375 = v169;
          *(&v375 + 1) = BYTE6(v22);
          v376 = &v372;
          v377 = &v372 + BYTE6(v22);
          sub_1AE4A5694(v169);
          v173 = v172;
          sub_1AE4A65CC(v172);
          if (sub_1AE4AC038(v173) == 6)
          {
            goto LABEL_419;
          }

          if (!v376)
          {
            goto LABEL_405;
          }
        }

        v198 = v350;
        sub_1AE4EAAF0();
        v199 = v352;
        sub_1AE4B4558(v352, &qword_1EB5DD4B8, "R3");
        v347(v198, 0, 1, v348);
        sub_1AE4BA928(v198, v199);
      }

      if (sub_1AE4B8C4C(v35, v34, v33 & 1, 0x72646461, 0xE400000000000000, 0))
      {
        v200 = (*(v30 + 64))(v30, v31);
        v39 = v200;
        v201 = *(v30 + 16);
        v22 = *(v30 + 24);
        v202 = v22 >> 62;
        if ((v22 >> 62) > 1)
        {
          if (v202 == 2)
          {
            v204 = *(v201 + 16);
            v203 = *(v201 + 24);
            v205 = sub_1AE4EA990();
            if (v205)
            {
              v35 = v205;
              v206 = sub_1AE4EA9B0();
              if (__OFSUB__(v204, v206))
              {
                goto LABEL_363;
              }

              v207 = v204 - v206 + v35;
            }

            else
            {
              v207 = 0;
            }

            v52 = __OFSUB__(v203, v204);
            v224 = v203 - v204;
            v35 = v361;
            if (v52)
            {
              goto LABEL_353;
            }

            v225 = sub_1AE4EA9A0();
            if (v225 >= v224)
            {
              v226 = v224;
            }

            else
            {
              v226 = v225;
            }

            if (v207)
            {
              v227 = v226;
            }

            else
            {
              v227 = 0;
            }

            if (v227 < v39)
            {
              goto LABEL_357;
            }

            v228 = (v226 + v207);
            if (!v207)
            {
              v228 = 0;
            }

            *&v375 = v39;
            *(&v375 + 1) = v227;
            v376 = v207;
            v377 = v228;
            sub_1AE4A5694(v225);
            v22 = v229;
            sub_1AE4A65CC(v229);
            v218 = v230;
            LOBYTE(v33) = v359;
            v34 = v360;
            goto LABEL_271;
          }

          *(&v372 + 6) = 0;
          *&v372 = 0;
          if (v200 > 0)
          {
            goto LABEL_351;
          }

          v375 = v200;
          v376 = &v372;
          v377 = &v372;
LABEL_257:
          sub_1AE4A5694(v200);
          v22 = v219;
          sub_1AE4A65CC(v219);
          v221 = v220;
          v222 = sub_1AE4AC038(v22);
          if (v222 == 6)
          {
            goto LABEL_419;
          }

          sub_1AE4AD198(v222, v221, v375, *(&v375 + 1), &v369, &v363);
          v349 = 0;
          v223 = &v386;
        }

        else
        {
          if (!v202)
          {
            *&v372 = *(v30 + 16);
            WORD4(v372) = v22;
            BYTE10(v372) = BYTE2(v22);
            BYTE11(v372) = BYTE3(v22);
            BYTE12(v372) = BYTE4(v22);
            BYTE13(v372) = BYTE5(v22);
            if (BYTE6(v22) < v200)
            {
              goto LABEL_350;
            }

            *&v375 = v200;
            *(&v375 + 1) = BYTE6(v22);
            v376 = &v372;
            v377 = &v372 + BYTE6(v22);
            goto LABEL_257;
          }

          v208 = v201;
          v209 = v201 >> 32;
          v210 = v209 - v208;
          if (v209 < v208)
          {
            goto LABEL_352;
          }

          v35 = sub_1AE4EA990();
          if (v35)
          {
            v211 = sub_1AE4EA9B0();
            if (__OFSUB__(v208, v211))
            {
              goto LABEL_365;
            }

            v35 += v208 - v211;
          }

          v212 = sub_1AE4EA9A0();
          if (v212 >= v210)
          {
            v213 = v210;
          }

          else
          {
            v213 = v212;
          }

          if (v35)
          {
            v214 = v213;
          }

          else
          {
            v214 = 0;
          }

          if (v214 < v39)
          {
            goto LABEL_356;
          }

          v215 = (v213 + v35);
          if (!v35)
          {
            v215 = 0;
          }

          *&v375 = v39;
          *(&v375 + 1) = v214;
          v376 = v35;
          v377 = v215;
          sub_1AE4A5694(v212);
          v22 = v216;
          sub_1AE4A65CC(v216);
          v218 = v217;
          v34 = v360;
          v35 = v361;
LABEL_271:
          v231 = sub_1AE4AC038(v22);
          if (v231 == 6)
          {
            goto LABEL_419;
          }

          sub_1AE4AD198(v231, v218, v375, *(&v375 + 1), &v369, &v372);
          v349 = 0;
          v223 = &v387;
        }

        v351 = *(v223 - 32);
      }

      if (sub_1AE4B8C4C(v35, v34, v33 & 1, 0x72646170, 0xE400000000000000, 0))
      {
        break;
      }

      sub_1AE4A67B4(v35, v34, v33 & 1);
      sub_1AE4B87FC(&v381);
      v29 = v381;
      LODWORD(v33) = v382;
      v362 = v382;
      v30 = v383;
      v31 = v384;
      if (!v383)
      {
        goto LABEL_321;
      }
    }

    v232 = (*(v30 + 64))(v30, v31);
    v39 = v232;
    v233 = *(v30 + 16);
    v35 = *(v30 + 24);
    v234 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v234 == 2)
      {
        v22 = *(v233 + 16);
        v235 = *(v233 + 24);
        v236 = sub_1AE4EA990();
        if (v236)
        {
          v237 = v236;
          v238 = sub_1AE4EA9B0();
          if (__OFSUB__(v22, v238))
          {
            goto LABEL_388;
          }

          v239 = v22 - v238 + v237;
        }

        else
        {
          v239 = 0;
        }

        v52 = __OFSUB__(v235, v22);
        v262 = v235 - v22;
        if (v52)
        {
          goto LABEL_385;
        }

        v263 = sub_1AE4EA9A0();
        if (v263 >= v262)
        {
          v264 = v262;
        }

        else
        {
          v264 = v263;
        }

        if (v239)
        {
          v265 = v264;
        }

        else
        {
          v265 = 0;
        }

        if (v265 < v39)
        {
          goto LABEL_387;
        }

        v266 = (v264 + v239);
        if (!v239)
        {
          v266 = 0;
        }

        *&v375 = v39;
        *(&v375 + 1) = v265;
        v376 = v239;
        v377 = v266;
        sub_1AE4A5694(v263);
        v250 = v267;
        v252 = v361;
        sub_1AE4A65CC(v267);
        v254 = v268;
        v251 = v360;
        goto LABEL_315;
      }

      *(&v372 + 6) = 0;
      *&v372 = 0;
      if (v232 > 0)
      {
        goto LABEL_384;
      }

      v375 = v232;
      v376 = &v372;
      v377 = &v372;
LABEL_301:
      sub_1AE4A5694(v232);
      v256 = v255;
      v257 = v361;
      sub_1AE4A65CC(v255);
      v259 = v258;
      v260 = sub_1AE4AC038(v256);
      if (v260 != 6)
      {
        sub_1AE4AD198(v260, v259, v375, *(&v375 + 1), &v369, &v363);
        sub_1AE4A67B4(v257, v34, v33 & 1);

        v261 = &v386;
        goto LABEL_317;
      }

LABEL_433:
      sub_1AE4C78AC();
      v288 = swift_allocError();
      *(v326 + 8) = 0;
      *(v326 + 16) = 0;
      *v326 = 0;
      *(v326 + 24) = 0x80;
      swift_willThrow();
      v363 = v288;
      v327 = v288;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v303 = *(&v375 + 1);
      v302 = v375;
      v304 = v376;
      v305 = v377;
      v372 = v375;
      v373 = v376;
      v374 = v377;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v306 = v33 & 1;
      goto LABEL_425;
    }

    if (!v234)
    {
      *&v372 = *(v30 + 16);
      WORD4(v372) = v35;
      BYTE10(v372) = BYTE2(v35);
      BYTE11(v372) = BYTE3(v35);
      BYTE12(v372) = BYTE4(v35);
      BYTE13(v372) = BYTE5(v35);
      if (BYTE6(v35) >= v232)
      {
        *&v375 = v232;
        *(&v375 + 1) = BYTE6(v35);
        v376 = &v372;
        v377 = &v372 + BYTE6(v35);
        goto LABEL_301;
      }

LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      *(&v372 + 6) = 0;
      v42 = &v387;
      *&v372 = 0;
      if (v39 > 0)
      {
        __break(1u);
      }

      else
      {
        if ((v39 & 0x8000000000000000) == 0)
        {
          v310 = &v372;
          *&v375 = &v372;
          *(&v375 + 1) = &v372;
          v312 = 1;
          v376 = 1;
          v314 = 64;
          LOBYTE(v377) = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v39 = swift_allocError();
          *v315 = &v372;
          goto LABEL_426;
        }

        __break(1u);
LABEL_393:
        *(&v372 + 6) = 0;
        v42 = &v387;
        *&v372 = 0;
        if (v39 <= 0)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            *&v375 = &v372;
            *(&v375 + 1) = &v372;
            v376 = 1;
            LOBYTE(v377) = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v291 = swift_allocError();
            *v325 = &v372;
            *(v325 + 8) = &v372;
            goto LABEL_420;
          }

          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          if (!v22)
          {
            __break(1u);
LABEL_399:
            __break(1u);
LABEL_400:
            if (!v22)
            {
              __break(1u);
LABEL_402:
              __break(1u);
LABEL_403:
              if (v22)
              {
                v330 = v22 + v39;
                *&v372 = v22 + v39;
                *(&v372 + 1) = v22 + v35;
                v373 = 1;
                v374 = 64;
                sub_1AE4C78AC();
                swift_willThrowTypedImpl();
                v291 = swift_allocError();
                *v331 = v330;
                *(v331 + 8) = v22 + v35;
                *(v331 + 16) = 1;
                *(v331 + 24) = 64;
                goto LABEL_423;
              }

              __break(1u);
LABEL_405:
              __break(1u);
LABEL_406:
              __break(1u);
LABEL_407:
              __break(1u);
LABEL_408:
              __break(1u);
            }
          }

          v328 = v22 + v39;
          *&v372 = v22 + v39;
          *(&v372 + 1) = v22 + v35;
          v373 = 1;
          v374 = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v39 = swift_allocError();
          *v329 = v328;
          *(v329 + 8) = v22 + v35;
          *(v329 + 16) = 1;
          *(v329 + 24) = 64;
          while (1)
          {
LABEL_431:
            v363 = v39;
            v318 = v39;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v319 = v375;
            v320 = v376;
            v321 = v377;
            v372 = v375;
            v373 = v376;
            v374 = v377;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();

            swift_allocError();
            *v322 = v319;
            *(v322 + 16) = v320;
            *(v322 + 24) = v321;
            swift_unexpectedError();
            __break(1u);
LABEL_432:
            v323 = v107 + v39;
            *&v372 = v107 + v39;
            *(&v372 + 1) = v108;
            v373 = 1;
            v374 = 64;
            v324 = v108;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v291 = swift_allocError();
            *v325 = v323;
            *(v325 + 8) = v324;
LABEL_420:
            *(v325 + 16) = 1;
            *(v325 + 24) = 64;
LABEL_423:
            v363 = v291;
            v293 = v291;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v294 = v375;
            v295 = v376;
            v296 = v377;
            v372 = v375;
            v373 = v376;
            v374 = v377;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();

            swift_allocError();
            *v297 = v294;
            *(v297 + 16) = v295;
            *(v297 + 24) = v296;
            swift_unexpectedError();
            __break(1u);
            v358 = v369;
            v298 = v370;
            v299 = v371;
            sub_1AE4C78AC();
            v288 = swift_allocError();
            *v300 = v358;
            *(v300 + 16) = v298;
            *(v300 + 24) = v299;
LABEL_424:
            v363 = v288;
            v301 = v288;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v303 = *(&v375 + 1);
            v302 = v375;
            v304 = v376;
            v305 = v377;
            v372 = v375;
            v373 = v376;
            v374 = v377;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v306 = v359 & 1;
LABEL_425:
            sub_1AE4A67B4(v361, v360, v306);

            sub_1AE4DB684(v302, v303, v304, v305);
            v307 = sub_1AE4EB140();
            __break(1u);
            v308 = v307;
            v310 = v309;
            v312 = v311;
            v314 = v313;
            sub_1AE4C78AC();
            v39 = swift_allocError();
            *v315 = v308;
LABEL_426:
            *(v315 + 8) = v310;
LABEL_430:
            *(v315 + 16) = v312;
            *(v315 + 24) = v314;
          }
        }
      }

      __break(1u);
LABEL_429:
      v316 = v42 + v39;
      *&v372 = v42 + v39;
      v312 = 1;
      *(&v372 + 1) = v38;
      v373 = 1;
      v314 = 64;
      v374 = 64;
      v317 = v38;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v39 = swift_allocError();
      *v315 = v316;
      *(v315 + 8) = v317;
      goto LABEL_430;
    }

    v240 = v233;
    v241 = v233 >> 32;
    v242 = v241 - v240;
    if (v241 < v240)
    {
      goto LABEL_383;
    }

    v243 = sub_1AE4EA990();
    if (v243)
    {
      v244 = sub_1AE4EA9B0();
      if (__OFSUB__(v240, v244))
      {
        goto LABEL_389;
      }

      v243 += v240 - v244;
    }

    v245 = sub_1AE4EA9A0();
    if (v245 >= v242)
    {
      v246 = v242;
    }

    else
    {
      v246 = v245;
    }

    if (v243)
    {
      v247 = v246;
    }

    else
    {
      v247 = 0;
    }

    if (v247 < v39)
    {
      goto LABEL_386;
    }

    v248 = (v246 + v243);
    if (!v243)
    {
      v248 = 0;
    }

    *&v375 = v39;
    *(&v375 + 1) = v247;
    v376 = v243;
    v377 = v248;
    sub_1AE4A5694(v245);
    v250 = v249;
    v251 = v360;
    v252 = v361;
    sub_1AE4A65CC(v249);
    v254 = v253;
LABEL_315:
    v269 = sub_1AE4AC038(v250);
    if (v269 == 6)
    {
      goto LABEL_433;
    }

    sub_1AE4AD198(v269, v254, v375, *(&v375 + 1), &v369, &v372);
    sub_1AE4A67B4(v252, v251, v33 & 1);

    v261 = &v387;
LABEL_317:
    v340 = *(v261 - 32);
    sub_1AE4B87FC(&v381);
    v32 = 0;
    v270 = 0;
    v29 = v381;
    LODWORD(v33) = v382;
    v362 = v382;
    v30 = v383;
    v31 = v384;
  }

  while (v383);
LABEL_322:

  v273 = v339;
  v274 = v338;
  if (v270)
  {
    v272 = v345;
    v2 = v333;
    v27 = v352;
    v275 = v344;
    v276 = v353;
    goto LABEL_329;
  }

  v272 = v345;
  v27 = v352;
  v275 = v344;
  v276 = v353;
  if ((v349 ^ 1))
  {
    v2 = v333;
    goto LABEL_329;
  }

  v2 = v333;
  v277 = *(v333 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context);
  v278 = *(v277 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache);
  if (!v278)
  {
    goto LABEL_418;
  }

  v351 = *(v277 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) + v340;

  sub_1AE4B441C(v27, v275, &qword_1EB5DD4B8, "R3");
LABEL_331:
  v279 = v275;
  v280 = v342;
  sub_1AE4BA928(v279, v342);
  v281 = v280 + v274[5];
  v282 = v356;
  *v281 = v355;
  *(v281 + 8) = v282;
  *(v281 + 16) = v354;
  v283 = v280 + v274[6];
  v284 = v358;
  *v283 = v276;
  *(v283 + 8) = v284;
  *(v283 + 16) = v357;
  v285 = v280 + v274[7];
  *v285 = v340;
  *(v285 + 8) = v270 & 1;
  *(v280 + v274[8]) = v351;
  *(v280 + v274[9]) = v278;
  (*(v341 + 56))(v280, 0, 1, v274);
  swift_beginAccess();
  sub_1AE4B06C8(v280, v2 + v273, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  swift_endAccess();
  v286 = v2 + v273;
  v16 = v343;
  sub_1AE4B441C(v286, v343, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  if (v336(v16, 1, v274) == 1)
  {
    goto LABEL_416;
  }

  sub_1AE4B4558(v27, &qword_1EB5DD4B8, "R3");
  return sub_1AE4BA8A8(v16, v272, type metadata accessor for Image.Info);
}

void _dyld_process_info_for_each_image(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v23 = a1;
    v4 = [v23 environment];
    v5 = [v4 rootPath];

    if (v5)
    {
      v6 = [v23 environment];
      v7 = [v6 rootPath];
      v5 = [v7 UTF8String];

      v24 = strlen(v5);
    }

    else
    {
      v24 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v23 images];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          v33 = 0u;
          v32 = 0u;
          *__source = 0u;
          v30 = 0u;
          [v12 getFastPathData:&v30];
          if (v5 && BYTE8(v33) == 1)
          {
            strlcpy(__dst, v5, 0x400uLL);
            v13 = v24;
          }

          else
          {
            v13 = 0;
            __dst[0] = 0;
          }

          v14 = __source[0];
          v15 = &__source[1];
          if (__source[0])
          {
            goto LABEL_15;
          }

          if (BYTE10(v33) == 1)
          {
            v19 = [v12 filePath];
            v20 = v19;
            strlcat(__dst, [v19 UTF8String], 0x400uLL);
LABEL_21:

            v18 = __dst;
            goto LABEL_22;
          }

          v14 = v30;
          v15 = &v30 + 1;
          if (v30)
          {
LABEL_15:
            v16 = &(*v15)[v13];
            if ((v16 + 1) < 0x400)
            {
              v17 = (v16 + 1);
            }

            else
            {
              v17 = 1024;
            }

            v18 = __dst;
            strlcat(__dst, v14, v17);
          }

          else
          {
            v18 = "<bad_string>";
            if (BYTE9(v33) == 1)
            {
              v19 = [v12 installname];
              v21 = v19;
              strlcat(__dst, [v19 UTF8String], 0x400uLL);
              goto LABEL_21;
            }
          }

LABEL_22:
          v3[2](v3, v33, &v32, v18);
          ++v11;
        }

        while (v9 != v11);
        v22 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
        v9 = v22;
      }

      while (v22);
    }
  }
}

uint64_t sub_1AE4B81C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *(*a5 + 33);
  v11 = qword_1AE4ED448[v10];
  v12 = a5[3];
  if ((v11 * v12) >> 64 == (v11 * v12) >> 63)
  {
    v17 = result;
    result = sub_1AE4A67C4(*(*a5 + 33), v11 * v12, result, a2, a3, a4);
    if (v7)
    {
      *a6 = result;
      *(a6 + 8) = v18;
      *(a6 + 16) = v19;
      *(a6 + 24) = v20;
      return result;
    }

    v22 = a5[2];
    v21 = a5[3];
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (!v23)
    {
      if ((v11 * v24) >> 64 == (v11 * v24) >> 63)
      {
        v25 = result;
        result = sub_1AE4A67C4(v10, v11 * v24, v17, a2, a3, a4);
        *a7 = v25;
        a7[1] = result;
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1AE4B82C4(uint64_t *a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_1AE4EAB10();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Image.Info(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - v16;
  v18 = OBJC_IVAR____DYImage_impl;
  if (!*(v1 + OBJC_IVAR____DYImage_impl))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1AE4B55F8(v17);

  v19 = &v17[*(v8 + 24)];
  v20 = *v19;
  v21 = *(v19 + 1);
  v22 = v19[16];
  sub_1AE4BA890(*v19, v21, v19[16]);
  result = sub_1AE4BA56C(v17);
  v23 = v39;
  if (v22 != 255)
  {
    if (v22)
    {
      result = sub_1AE4BA998(v20, v21, v22);
      *(v23 + 57) = 1;
    }

    else
    {
      if (!v20)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      *v39 = v20;
      v23[1] = v21 - v20;
    }
  }

  if (!*(v2 + v18))
  {
    goto LABEL_23;
  }

  sub_1AE4B55F8(v14);

  v24 = &v14[*(v8 + 20)];
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = v24[16];
  sub_1AE4BA890(*v24, v26, v24[16]);
  result = sub_1AE4BA56C(v14);
  if (v27 != 255)
  {
    if (v27)
    {
      result = sub_1AE4BA998(v25, v26, v27);
      *(v23 + 58) = 1;
    }

    else
    {
      if (!v25)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v23[2] = v25;
      v23[3] = v26 - v25;
    }
  }

  if (!*(v2 + v18))
  {
    goto LABEL_24;
  }

  sub_1AE4B55F8(v11);

  sub_1AE4BA820(v11, v5);
  sub_1AE4BA56C(v11);
  v29 = v37;
  v28 = v38;
  if ((*(v37 + 48))(v5, 1, v38) == 1)
  {
    result = sub_1AE4B4558(v5, &qword_1EB5DD4B8, "R3");
  }

  else
  {
    v30 = v36;
    (*(v29 + 32))(v36, v5, v28);
    v23[4] = sub_1AE4EAB00();
    v23[5] = v31;
    result = (*(v29 + 8))(v30, v28);
  }

  if (!*(v2 + v18))
  {
    goto LABEL_25;
  }

  v32 = sub_1AE4BA6DC();

  v23[6] = v32;
  if (!*(v2 + v18))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = sub_1AE4BA5C8();
  v35 = v34;

  if (v33)
  {
    result = sub_1AE4B4990(v33, v35);
    *(v23 + 56) = 1;
  }

  return result;
}

uint64_t sub_1AE4B86B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1AE4B87FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = 0;
  v4 = 0;
  result = 0;
  v6 = 0;
  v37[4] = *MEMORY[0x1E69E9840];
  v8 = v1[2];
  v7 = v1[3];
  if (v7 < v8)
  {
    v9 = *v1;
    v10 = v1[1];
    MEMORY[0x1EEE9AC00](0);
    v34[2] = v1;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = v12 >> 62;
    v36 = v14;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        memset(v37, 0, 14);
        if (v10 > 0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v27 = v10;
        v28 = *(v9 + 33);
        v29 = qword_1AE4ED448[v28];
        if ((v29 * v7) >> 64 != (v29 * v7) >> 63)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v3 = sub_1AE4A67C4(v28, v29 * v7, v27, 0, v37, v37);
        v30 = v7 + v8;
        if (__OFADD__(v7, v8))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v19 = v29 * v30;
        if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
        {
          goto LABEL_31;
        }

        v20 = v28;
        v21 = v37;
        v22 = v27;
        v23 = 0;
LABEL_18:
        v6 = sub_1AE4A67C4(v20, v19, v22, v23, v37, v21);
        goto LABEL_19;
      }

      v24 = *(v11 + 16);
      v25 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        v37[0] = v11;
        LOWORD(v37[1]) = v12;
        BYTE2(v37[1]) = BYTE2(v12);
        BYTE3(v37[1]) = BYTE3(v12);
        BYTE4(v37[1]) = BYTE4(v12);
        v15 = BYTE6(v12);
        BYTE5(v37[1]) = BYTE5(v12);
        v35 = v10;
        if (BYTE6(v12) < v10)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v16 = *(v9 + 33);
        v17 = qword_1AE4ED448[v16];
        if ((v17 * v7) >> 64 != (v17 * v7) >> 63)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v3 = sub_1AE4A67C4(v16, v17 * v7, v35, v15, v37, v37 + v15);
        v18 = v7 + v8;
        if (__OFADD__(v7, v8))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v19 = v17 * v18;
        if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
        }

        v20 = v16;
        v21 = v37 + v15;
        v22 = v35;
        v23 = v15;
        goto LABEL_18;
      }

      v24 = v11;
      v25 = v11 >> 32;
      if (v11 >> 32 < v11)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    v3 = sub_1AE4AD03C(v24, v25, v12 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4B87DC, v34, v10);
    v6 = v26;
LABEL_19:

    v31 = v1[3];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      v1[3] = v33;
      result = swift_retain_n();
      v4 = 1;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

uint64_t sub_1AE4B8C4C(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a6)
    {
      return a2 == a5;
    }

    v11 = a4;
    v12 = a5;
    v13 = a1;
    v14 = a2;
  }

  else
  {
    v11 = a1;
    v12 = a2;
    v13 = a4;
    v14 = a5;
    if ((a6 & 1) == 0)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_26;
    }
  }

  *v66 = v11;
  v67 = v12;
  v15 = v13[8];

  sub_1AE4A63DC(a1, a2, a3 & 1);
  sub_1AE4A63DC(a4, a5, a6 & 1);
  v18 = v15(v13, v14);
  v19 = v18;
  v20 = v13[2];
  v21 = v13[3];
  v22 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v22)
    {
      *&v68 = v13[2];
      WORD4(v68) = v21;
      BYTE10(v68) = BYTE2(v21);
      BYTE11(v68) = BYTE3(v21);
      BYTE12(v68) = BYTE4(v21);
      BYTE13(v68) = BYTE5(v21);
      v23 = v67;
      if (BYTE6(v21) >= v18)
      {
        *&v71 = v18;
        *(&v71 + 1) = BYTE6(v21);
        v72 = &v68;
        v73 = &v68 + BYTE6(v21);
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_57;
    }

    v35 = v20;
    v36 = v20 >> 32;
    v37 = v36 - v35;
    v27 = v67;
    if (v36 < v35)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v26 = sub_1AE4EA990();
    if (v26)
    {
      v38 = sub_1AE4EA9B0();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_62;
      }

      v26 += v35 - v38;
    }

    v31 = sub_1AE4EA9A0();
    if (v31 >= v37)
    {
      v32 = v37;
    }

    else
    {
      v32 = v31;
    }

    if (v26)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33 < v19)
    {
      goto LABEL_60;
    }

LABEL_40:
    v39 = (v32 + v26);
    if (!v26)
    {
      v39 = 0;
    }

    *&v71 = v19;
    *(&v71 + 1) = v33;
    v72 = v26;
    v73 = v39;
    sub_1AE4A5694(v31);
    v41 = v40;
    sub_1AE4A65CC(v40);
    v43 = v42;
    if (sub_1AE4AC038(v41) != 6)
    {

      if (v72)
      {
        v44 = v72 + v71;
        v45 = *v66;
        v46 = v27;
        v47 = *(&v71 + 1) - v71;
      }

      else
      {
        v45 = *v66;
        v46 = v27;
        v44 = 0;
        v47 = 0;
      }

      v10 = sub_1AE4A66EC(v45, v46, v44, v47, v43);

      goto LABEL_54;
    }

    goto LABEL_63;
  }

  if (v22 != 2)
  {
    *(&v68 + 6) = 0;
    *&v68 = 0;
    v23 = v67;
    if (v18 <= 0)
    {
      v71 = v18;
      v72 = &v68;
      v73 = &v68;
LABEL_47:
      sub_1AE4A5694(v18);
      v49 = v48;
      sub_1AE4A65CC(v48);
      v51 = v50;
      if (sub_1AE4AC038(v49) != 6)
      {
        v52 = v72;
        if (v72)
        {
          v53 = v71;
          v54 = *(&v71 + 1) - v71;

          v55 = v52 + v53;
          v56 = *v66;
          v57 = v23;
          v58 = v54;
        }

        else
        {

          v56 = *v66;
          v57 = v23;
          v55 = 0;
          v58 = 0;
        }

        v10 = sub_1AE4A66EC(v56, v57, v55, v58, v51);

LABEL_54:
        swift_bridgeObjectRelease_n();
        return v10;
      }

LABEL_63:
      sub_1AE4C78AC();
      v59 = swift_allocError();
      *(v60 + 8) = 0;
      *(v60 + 16) = 0;
      *v60 = 0;
      *(v60 + 24) = 0x80;
      swift_willThrow();
      v61 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v62 = v71;
      v63 = v72;
      v64 = v73;
      v68 = v71;
      v69 = v72;
      v70 = v73;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v65 = v62;
      *(v65 + 16) = v63;
      *(v65 + 24) = v64;
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    goto LABEL_58;
  }

  v24 = *(v20 + 16);
  v25 = *(v20 + 24);
  v26 = sub_1AE4EA990();
  v27 = v67;
  if (v26)
  {
    v28 = sub_1AE4EA9B0();
    if (__OFSUB__(v24, v28))
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    v26 += v24 - v28;
  }

  v29 = __OFSUB__(v25, v24);
  v30 = v25 - v24;
  if (v29)
  {
    goto LABEL_59;
  }

  v31 = sub_1AE4EA9A0();
  if (v31 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (v26)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33 >= v19)
  {
    goto LABEL_40;
  }

  __break(1u);
LABEL_26:

  return sub_1AE4EB190();
}

uint64_t sub_1AE4B921C(uint64_t Strong, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    *(&v70 + 6) = 0;
    *&v70 = 0;
    if (v8 > 0)
    {
      __break(1u);
LABEL_86:
      v51 = v5 + v8;
      goto LABEL_87;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      *&v72 = &v70;
      *(&v72 + 1) = &v70;
      *&v73 = 1;
      BYTE8(v73) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v47 = swift_allocError();
      *v58 = &v70;
      *(v58 + 8) = &v70;
      *(v58 + 16) = 1;
      *(v58 + 24) = 64;
      goto LABEL_88;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    if (!v7)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      if (!v7)
      {
        __break(1u);
      }
    }

    while (1)
    {
      v51 = &v7[v8];
      v7 += v4;
LABEL_87:
      *&v70 = v51;
      *(&v70 + 1) = v7;
      *&v71 = 1;
      BYTE8(v71) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v47 = swift_allocError();
      *v52 = v51;
      *(v52 + 8) = v7;
      *(v52 + 16) = 1;
      *(v52 + 24) = 64;
LABEL_88:
      v68 = v47;
      v53 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v54 = v72;
      v55 = v73;
      v56 = BYTE8(v73);
      v70 = v72;
      *&v71 = v73;
      BYTE8(v71) = BYTE8(v73);
      v7 = sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v57 = v54;
      *(v57 + 16) = v55;
      *(v57 + 24) = v56;
      swift_unexpectedError();
      __break(1u);
    }
  }

  v9 = a3;
  result = MEMORY[0x1E69E7CC0];
  if (!a3)
  {
    return result;
  }

  v69 = MEMORY[0x1E69E7CC0];
  sub_1AE4EB0F0();
  v11 = 0;
  v59 = v9;
  do
  {
    if (v9 == v11)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
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
      __break(1u);
      goto LABEL_69;
    }

    v12 = sub_1AE4B9974(v11, Strong, a2, v9);
    v13 = (*(v12 + 64))();
    v8 = v13;
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v4 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_71;
      }

      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      v7 = sub_1AE4EA990();
      if (v7)
      {
        v19 = sub_1AE4EA9B0();
        if (__OFSUB__(v18, v19))
        {
          goto LABEL_67;
        }

        v7 += v18 - v19;
      }

      v20 = __OFSUB__(v17, v18);
      v21 = v17 - v18;
      if (v20)
      {
        goto LABEL_59;
      }

      v22 = sub_1AE4EA9A0();
      if (v22 >= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v24 = &v7[v23];
      if (v7)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v4 = v25 - v7;
      if (v7)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      if (v5 < v8)
      {
        goto LABEL_62;
      }

      if (v8 < 0)
      {
        goto LABEL_63;
      }

      if (v5 <= v8)
      {
        goto LABEL_78;
      }

      v9 = v59;
      if (!v7)
      {
        goto LABEL_77;
      }

      if (v4 <= v8)
      {
        goto LABEL_66;
      }

LABEL_49:
      v16 = v7[v8];
      *&v72 = v8 + 1;
      *(&v72 + 1) = v4;
      *&v73 = v7;
      *(&v73 + 1) = v24;
      goto LABEL_50;
    }

    if (v4)
    {
      v26 = v14;
      v27 = v14 >> 32;
      v28 = v27 - v26;
      if (v27 < v26)
      {
        goto LABEL_57;
      }

      v7 = sub_1AE4EA990();
      if (v7)
      {
        v29 = sub_1AE4EA9B0();
        if (__OFSUB__(v26, v29))
        {
          goto LABEL_68;
        }

        v7 += v26 - v29;
      }

      v30 = sub_1AE4EA9A0();
      if (v30 >= v28)
      {
        v31 = v28;
      }

      else
      {
        v31 = v30;
      }

      v24 = &v7[v31];
      if (v7)
      {
        v32 = v24;
      }

      else
      {
        v32 = 0;
      }

      v4 = v32 - v7;
      if (v7)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      if (v5 < v8)
      {
        goto LABEL_61;
      }

      if (v8 < 0)
      {
        goto LABEL_64;
      }

      if (v5 <= v8)
      {
        goto LABEL_75;
      }

      v9 = v59;
      if (!v7)
      {
        goto LABEL_74;
      }

      if (v4 <= v8)
      {
        goto LABEL_65;
      }

      goto LABEL_49;
    }

    v62 = *(v12 + 16);
    v63 = v15;
    v64 = BYTE2(v15);
    v4 = HIDWORD(v15);
    v65 = BYTE3(v15);
    v5 = (v15 >> 40);
    v66 = BYTE4(v15);
    v67 = BYTE5(v15);
    if (BYTE6(v15) < v13)
    {
      goto LABEL_58;
    }

    if (v13 < 0)
    {
      goto LABEL_60;
    }

    v5 = &v62;
    v7 = &v62 + BYTE6(v15);
    if (BYTE6(v15) <= v13)
    {
      goto LABEL_86;
    }

    v16 = *(&v62 + v13);
    *&v72 = v13 + 1;
    *(&v72 + 1) = BYTE6(v15);
    *&v73 = &v62;
    *(&v73 + 1) = &v62 + BYTE6(v15);
LABEL_50:
    sub_1AE4A65CC(v16);
    v8 = v36;
    if (v6)
    {
      v44 = v33;
      v45 = v34;
      v46 = v35;
      sub_1AE4C78AC();
      v47 = swift_allocError();
      *v48 = v8;
      *(v48 + 8) = v44;
      *(v48 + 16) = v45;
      *(v48 + 24) = v46;
      goto LABEL_88;
    }

    v37 = v16 >> 4;
    if (v16 >> 4 != 13)
    {
      if (v37 <= 0xA && ((1 << v37) & 0x472) != 0)
      {
        *&v71 = 0;
        v70 = 6uLL;
        BYTE8(v71) = 0x80;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v47 = swift_allocError();
        *(v49 + 8) = 0;
        *(v49 + 16) = 0;
        *v49 = 6;
        *(v49 + 24) = 0x80;
      }

      else
      {
        sub_1AE4C78AC();
        v47 = swift_allocError();
        *(v50 + 8) = 0;
        *(v50 + 16) = 0;
        *v50 = 0;
        *(v50 + 24) = 0x80;
        swift_willThrow();
      }

      goto LABEL_88;
    }

    v70 = v72;
    v71 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();
    v38 = v68;
    v39 = swift_weakLoadStrong();
    if (!v39)
    {
      goto LABEL_70;
    }

    v40 = v39;
    ++v11;
    type metadata accessor for Image.Impl(0);
    v7 = swift_allocObject();
    v41 = OBJC_IVAR____TtCV4Dyld5Image4Impl__info;
    v42 = type metadata accessor for Image.Info(0);
    (*(*(v42 - 8) + 56))(&v7[v41], 1, 1, v42);
    v43 = &v7[OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist];
    *v43 = v12;
    v43[1] = v38;
    v43[2] = v8;
    *&v7[OBJC_IVAR____TtCV4Dyld5Image4Impl_context] = v40;
    sub_1AE4EB0D0();
    sub_1AE4EB100();
    sub_1AE4EB110();
    sub_1AE4EB0E0();
  }

  while (v9 != v11);
  return v69;
}

uint64_t sub_1AE4B98C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v10 = qword_1AE4ED448[*(a5 + 33)];
  if ((v10 * a6) >> 64 == (v10 * a6) >> 63)
  {
    result = sub_1AE4A67C4(*(a5 + 33), v10 * a6, result, a2, a3, a4);
    if (v8)
    {
      *a8 = result;
      *(a8 + 8) = v11;
      *(a8 + 16) = v12;
      *(a8 + 24) = v13;
    }

    else
    {
      *a7 = result;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4B9974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v29, 0, 14);
      if (a3 <= 0)
      {
        v20 = *(a2 + 33);
        v21 = qword_1AE4ED448[v20];
        v22 = v21 * a1;
        if ((v21 * a1) >> 64 == (v21 * a1) >> 63)
        {

          v13 = v20;
          v14 = v29;
          v15 = v22;
          v16 = a3;
          v17 = 0;
          goto LABEL_13;
        }

LABEL_19:
        __break(1u);
      }

      goto LABEL_17;
    }

    v18 = *(v6 + 16);
    v19 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      v29[0] = *(a2 + 16);
      LOWORD(v29[1]) = v7;
      BYTE2(v29[1]) = BYTE2(v7);
      BYTE3(v29[1]) = BYTE3(v7);
      BYTE4(v29[1]) = BYTE4(v7);
      v9 = BYTE6(v7);
      BYTE5(v29[1]) = BYTE5(v7);
      if (BYTE6(v7) >= a3)
      {
        v10 = *(a2 + 33);
        v11 = qword_1AE4ED448[v10];
        v12 = v11 * a1;
        if ((v11 * a1) >> 64 == (v11 * a1) >> 63)
        {

          v13 = v10;
          v14 = v29 + v9;
          v15 = v12;
          v16 = a3;
          v17 = v9;
LABEL_13:
          sub_1AE4A67C4(v13, v15, v16, v17, v29, v14);
          return a2;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_16;
    }

    v18 = v6;
    v19 = v6 >> 32;
    if (v6 >> 32 < v6)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  sub_1AE4AE738(v18, v19, v7 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4B9944, v24, a3);
  return a2;
}

uint64_t sub_1AE4B9C8C()
{
  v6 = sub_1AE4AC6E0(1936158057, 0xE400000000000000, 0, v1[6], v1[7], v1[8]);
  if (!v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v6;
  v8 = sub_1AE4B9FBC(v6);
  v10 = v9;
  v12 = v11;

  v0 = sub_1AE4BAEF4(v8, v10, v12, v1);

  v2 = *(v1[9] + 56);
  if (!v2)
  {
    return v0;
  }

  v13 = sub_1AE4B4BA0();
  if (!v13)
  {
LABEL_12:

    return v0;
  }

  v3 = v13;
  v14 = sub_1AE4AC6E0(1936158057, 0xE400000000000000, 0, v13[2], v13[3], v13[4]);
  if (!v14)
  {
    goto LABEL_15;
  }

  v4 = sub_1AE4B9FBC(v14);
  v5 = v15;
  v17 = v16;

  v18 = sub_1AE4B921C(v4, v5, v17, v3);

  v19 = sub_1AE4AC6E0(1836345698, 0xE400000000000000, 0, v2[2], v2[3], v2[4]);
  if (v19)
  {
    v21 = sub_1AE4AEC7C(v19, v20);
    v23 = v22;

    v24 = *(sub_1AE4BBE84(v18, v21, v23) + 16);
    if (v24)
    {
      v38 = MEMORY[0x1E69E7CC0];
      sub_1AE4EB0F0();
      v25 = 32;
      do
      {

        sub_1AE4EB0D0();
        sub_1AE4EB100();
        sub_1AE4EB110();
        sub_1AE4EB0E0();
        v25 += 16;
        --v24;
      }

      while (v24);

      v28 = v38;
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v29 = sub_1AE4BC400(v0, v28, v26, v27);

    v0 = v29;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  v31 = v7;
  sub_1AE4C78AC();
  swift_allocError();
  *v32 = v2;
  *(v32 + 8) = v3;
  *(v32 + 16) = v0;
  *(v32 + 24) = v31;
  swift_unexpectedError();
  __break(1u);
  v34 = v33;
  v36 = v35;
  sub_1AE4C78AC();
  swift_allocError();
  *v37 = v5;
  *(v37 + 8) = v4;
  *(v37 + 16) = v34;
  *(v37 + 24) = v36;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4B9FBC(uint64_t a1)
{
  v2 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v3 = (*(a1 + 64))();
  v4 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v37[0] = *(v2 + 16);
      LOWORD(v37[1]) = v6;
      BYTE2(v37[1]) = BYTE2(v6);
      BYTE3(v37[1]) = BYTE3(v6);
      BYTE4(v37[1]) = BYTE4(v6);
      BYTE5(v37[1]) = BYTE5(v6);
      if (BYTE6(v6) >= v3)
      {
        *&v40 = v3;
        *(&v40 + 1) = BYTE6(v6);
        *&v41 = v37;
        *(&v41 + 1) = v37 + BYTE6(v6);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_44;
    }

    goto LABEL_18;
  }

  if (v7 == 2)
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = sub_1AE4EA9B0();
      if (__OFSUB__(v8, v11))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (v12)
    {
      goto LABEL_46;
    }

    v3 = sub_1AE4EA9A0();
    if (v3 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v3;
    }

    if (v10)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v5 >= v4)
    {
LABEL_29:
      v19 = v14 + v10;
      if (!v10)
      {
        v19 = 0;
      }

      *&v40 = v4;
      *(&v40 + 1) = v5;
      *&v41 = v10;
      *(&v41 + 1) = v19;
      goto LABEL_34;
    }

    __break(1u);
LABEL_18:
    v15 = v5;
    v16 = v5 >> 32;
    v17 = v16 - v15;
    if (v16 < v15)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v10 = sub_1AE4EA990();
    if (v10)
    {
      v18 = sub_1AE4EA9B0();
      if (__OFSUB__(v15, v18))
      {
        goto LABEL_49;
      }

      v10 += v15 - v18;
    }

    v3 = sub_1AE4EA9A0();
    if (v3 >= v17)
    {
      v14 = v17;
    }

    else
    {
      v14 = v3;
    }

    if (v10)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v5 < v4)
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  memset(v37, 0, 14);
  if (v3 > 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v40 = v3;
  *&v41 = v37;
  *(&v41 + 1) = v37;
LABEL_34:
  sub_1AE4A5694(v3);
  v24 = v20;
  if (v1)
  {
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_1AE4C78AC();
    v28 = swift_allocError();
    *v29 = v24;
    *(v29 + 8) = v25;
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
  }

  else
  {
    sub_1AE4A65CC(v20);
    v30 = sub_1AE4AC038(v24);
    if (v30 == 6)
    {
      sub_1AE4C78AC();
      v31 = swift_allocError();
      *(v32 + 8) = 0;
      *(v32 + 16) = 0;
      *v32 = 0;
      *(v32 + 24) = 0x80;
      swift_willThrow();
      v28 = v31;
    }

    else
    {
      if (v30 >= 5)
      {
        v38 = v40;
        v39 = v41;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        return v2;
      }

      *&v39 = 0;
      v38 = 4uLL;
      BYTE8(v39) = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v28 = swift_allocError();
      *(v33 + 8) = 0;
      *(v33 + 16) = 0;
      *v33 = 4;
      *(v33 + 24) = 0x80;
    }
  }

  v37[2] = v28;
  v34 = v28;
  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v2 = v40;
  v38 = v40;
  *&v39 = v41;
  BYTE8(v39) = BYTE8(v41);
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

  return v2;
}

CFTypeRef _dyld_process_info_create(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v15 = 0;
  v5 = [[_DYProcess alloc] initWithTask:a1 queue:0 error:&v15];
  v6 = v15;
  if (!v6)
  {
    v14 = 0;
    v10 = [(_DYProcess *)v5 getCurrentSnapshotAndReturnError:&v14];
    v11 = v14;
    v7 = v11;
    if (v11)
    {
      KernReturn = extractKernReturn(v11);
      if (a3)
      {
        v9 = 0;
        *a3 = KernReturn;
LABEL_13:

        goto LABEL_14;
      }
    }

    else if (![v10 timestamp] || objc_msgSend(v10, "timestamp") != a2)
    {
      v9 = CFRetain(v10);
      goto LABEL_13;
    }

    v9 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = extractKernReturn(v6);
  v9 = 0;
  if (a3)
  {
    *a3 = v8;
  }

LABEL_14:

  return v9;
}

void *sub_1AE4BA544()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F240E408;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1AE4BA56C(uint64_t a1)
{
  v2 = type metadata accessor for Image.Info(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE4BA5C8()
{
  Strong = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist), *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8), *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16));
  if (Strong)
  {
    sub_1AE4A6A00(Strong);

    return 0;
  }

  v5 = *(*(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache);
  if (v5)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  v7 = Strong;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1AE4C78AC();
  swift_allocError();
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1AE4BA6DC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
  v2 = *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
  v3 = *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16);
  v4 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v1, v2, v3);
  if (v4)
  {
    v5 = sub_1AE4A6A00(v4);

    return v5;
  }

  v6 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v1, v2, v3);
  if (v6)
  {
    v10 = sub_1AE4A6A00(v6);

    return *(*(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) + v10;
  }

  __break(1u);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  sub_1AE4C78AC();
  swift_allocError();
  *v15 = v1;
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4BA820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE4BA890(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AE4BB78C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1AE4BA8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AE4BA928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE4BA998(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AE4BB6EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1AE4BA9B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4BAA7C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_1AE4A41E8(v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4BAAEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1AE4B4558(v0 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath, &qword_1EB5DD520, &qword_1AE4EDB98);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4BAB84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4BABBC()
{
  sub_1AE4A41E8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm()
{
  sub_1AE4A41E8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void dyld_shared_cache_for_each_file(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 filePaths];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v3[2](v3, [*(*(&v12 + 1) + 8 * v8++) UTF8String]);
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v9 = [v4 localSymbolPath];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v3[2](v3, [v10 UTF8String]);
    }
  }
}

unint64_t sub_1AE4BADDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSnapshot_impl);
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v6[6];
  v8 = v6[7];
  v9 = v6[8];

  v10 = sub_1AE4AC6E0(a1, 0xE400000000000000, 0, v5, v8, v9);
  if (v10)
  {
    v5 = sub_1AE4A6A00(v10);

    if ((v5 & 0x8000000000000000) == 0)
    {
      return v5;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v15 = v5;
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4BAEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    *(&v69 + 6) = 0;
    *&v69 = 0;
    if (v8 > 0)
    {
      __break(1u);
LABEL_84:
      v49 = (v7 + v8);
      goto LABEL_85;
    }

    if (v8 < 0)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      if (v6)
      {
        goto LABEL_87;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      if (!v6)
      {
        __break(1u);
      }

      goto LABEL_87;
    }

    *&v71 = &v69;
    *(&v71 + 1) = &v69;
    *&v72 = 1;
    BYTE8(v72) = 64;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v45 = swift_allocError();
    *v56 = &v69;
    *(v56 + 8) = &v69;
    *(v56 + 16) = 1;
    *(v56 + 24) = 64;
    while (1)
    {
LABEL_86:
      v67 = v45;
      v51 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v52 = v71;
      v53 = v72;
      v54 = BYTE8(v72);
      v69 = v71;
      *&v70 = v72;
      BYTE8(v70) = BYTE8(v72);
      v6 = sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v55 = v52;
      *(v55 + 16) = v53;
      *(v55 + 24) = v54;
      swift_unexpectedError();
      __break(1u);
LABEL_87:
      v49 = &v6[v8];
      v6 += v4;
LABEL_85:
      *&v69 = v49;
      *(&v69 + 1) = v6;
      *&v70 = 1;
      BYTE8(v70) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v45 = swift_allocError();
      *v50 = v49;
      *(v50 + 8) = v6;
      *(v50 + 16) = 1;
      *(v50 + 24) = 64;
    }
  }

  v9 = a3;
  result = MEMORY[0x1E69E7CC0];
  if (!a3)
  {
    return result;
  }

  v68 = MEMORY[0x1E69E7CC0];
  sub_1AE4EB0F0();
  v11 = 0;
  v7 = &v61;
  v57 = v9;
  do
  {
    if (v9 == v11)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v12 = sub_1AE4B9974(v11, a1, a2, v9);
    v13 = (*(v12 + 64))();
    v8 = v13;
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v4 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_69;
      }

      v17 = *(v14 + 16);
      v7 = *(v14 + 24);
      v6 = sub_1AE4EA990();
      if (v6)
      {
        v18 = sub_1AE4EA9B0();
        if (__OFSUB__(v17, v18))
        {
          goto LABEL_66;
        }

        v6 += v17 - v18;
      }

      v19 = __OFSUB__(v7, v17);
      v7 -= v17;
      if (v19)
      {
        goto LABEL_58;
      }

      v20 = sub_1AE4EA9A0();
      if (v20 >= v7)
      {
        v21 = v7;
      }

      else
      {
        v21 = v20;
      }

      v22 = &v6[v21];
      if (v6)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v4 = v23 - v6;
      if (v6)
      {
        v24 = v4;
      }

      else
      {
        v24 = 0;
      }

      if (v24 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_62;
      }

      if (v24 <= v8)
      {
        goto LABEL_76;
      }

      v9 = v57;
      if (!v6)
      {
        goto LABEL_75;
      }

      if (v4 <= v8)
      {
        goto LABEL_65;
      }

LABEL_49:
      v16 = v6[v8];
      *&v71 = v8 + 1;
      *(&v71 + 1) = v4;
      *&v72 = v6;
      *(&v72 + 1) = v22;
      goto LABEL_50;
    }

    if (v4)
    {
      v7 = v14;
      v25 = v14 >> 32;
      v26 = v25 - v7;
      if (v25 < v7)
      {
        goto LABEL_57;
      }

      v6 = sub_1AE4EA990();
      if (v6)
      {
        v27 = sub_1AE4EA9B0();
        if (__OFSUB__(v7, v27))
        {
          goto LABEL_67;
        }

        v6 += v7 - v27;
      }

      v28 = sub_1AE4EA9A0();
      if (v28 >= v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = v28;
      }

      v22 = &v6[v29];
      if (v6)
      {
        v30 = v22;
      }

      else
      {
        v30 = 0;
      }

      v4 = v30 - v6;
      if (v6)
      {
        v31 = v4;
      }

      else
      {
        v31 = 0;
      }

      if (v31 < v8)
      {
        goto LABEL_61;
      }

      if (v8 < 0)
      {
        goto LABEL_63;
      }

      if (v31 <= v8)
      {
        goto LABEL_73;
      }

      v9 = v57;
      if (!v6)
      {
        goto LABEL_72;
      }

      if (v4 <= v8)
      {
        goto LABEL_64;
      }

      goto LABEL_49;
    }

    v61 = *(v12 + 16);
    v62 = v15;
    v63 = BYTE2(v15);
    v4 = HIDWORD(v15);
    v64 = BYTE3(v15);
    v65 = BYTE4(v15);
    v66 = BYTE5(v15);
    if (BYTE6(v15) < v13)
    {
      goto LABEL_56;
    }

    if (v13 < 0)
    {
      goto LABEL_59;
    }

    v6 = &v61 + BYTE6(v15);
    if (BYTE6(v15) <= v13)
    {
      goto LABEL_84;
    }

    v16 = *(&v61 + v13);
    *&v71 = v13 + 1;
    *(&v71 + 1) = BYTE6(v15);
    *&v72 = &v61;
    *(&v72 + 1) = &v61 + BYTE6(v15);
LABEL_50:
    sub_1AE4A65CC(v16);
    v8 = v35;
    if (v5)
    {
      v42 = v32;
      v43 = v33;
      v44 = v34;
      sub_1AE4C78AC();
      v45 = swift_allocError();
      *v46 = v8;
      *(v46 + 8) = v42;
      *(v46 + 16) = v43;
      *(v46 + 24) = v44;
      goto LABEL_86;
    }

    v36 = v16 >> 4;
    if (v16 >> 4 != 13)
    {
      if (v36 <= 0xA && ((1 << v36) & 0x472) != 0)
      {
        *&v70 = 0;
        v69 = 6uLL;
        BYTE8(v70) = 0x80;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v45 = swift_allocError();
        *(v47 + 8) = 0;
        *(v47 + 16) = 0;
        *v47 = 6;
        *(v47 + 24) = 0x80;
      }

      else
      {
        sub_1AE4C78AC();
        v45 = swift_allocError();
        *(v48 + 8) = 0;
        *(v48 + 16) = 0;
        *v48 = 0;
        *(v48 + 24) = 0x80;
        swift_willThrow();
      }

      goto LABEL_86;
    }

    v69 = v71;
    v70 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();
    v37 = v67;
    ++v11;
    v38 = *(a4 + 72);
    type metadata accessor for Image.Impl(0);
    v6 = swift_allocObject();
    v39 = OBJC_IVAR____TtCV4Dyld5Image4Impl__info;
    v40 = type metadata accessor for Image.Info(0);
    (*(*(v40 - 8) + 56))(&v6[v39], 1, 1, v40);
    v41 = &v6[OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist];
    *v41 = v12;
    v41[1] = v37;
    v41[2] = v8;
    *&v6[OBJC_IVAR____TtCV4Dyld5Image4Impl_context] = v38;

    sub_1AE4EB0D0();
    sub_1AE4EB100();
    sub_1AE4EB110();
    sub_1AE4EB0E0();
    v7 = &v61;
  }

  while (v9 != v11);
  return v68;
}

void sub_1AE4BB598()
{
  v1 = v0 + OBJC_IVAR____DYSnapshot_impl;
  v2 = *(v0 + OBJC_IVAR____DYSnapshot_impl);
  if (v2)
  {
    sub_1AE4BD9A8(v2, *(v1 + 8));
    v3 = sub_1AE4BD470();

    v4 = *(v3 + 16);
    if (v4)
    {
      sub_1AE4EB0F0();
      v5 = 32;
      do
      {
        v6 = *(v3 + v5);
        v7 = objc_allocWithZone(_DYImage);

        v8 = [v7 initWithInternal_];
        *&v8[OBJC_IVAR____DYImage_impl] = v6;

        sub_1AE4EB0D0();
        sub_1AE4EB100();
        sub_1AE4EB110();
        sub_1AE4EB0E0();
        v5 += 8;
        --v4;
      }

      while (v4);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE4BB6EC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1AE4BB700(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AE4BB748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1AE4BB78C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1AE4BB7B0()
{
  v1 = type metadata accessor for Image.Info(0);
  result = MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____DYImage_impl))
  {

    sub_1AE4B55F8(v4);
    v5 = &v4[*(v1 + 20)];
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = v5[16];
    sub_1AE4BA890(*v5, v7, v5[16]);
    sub_1AE4BA56C(v4);
    if (v8 == 255)
    {

      return 0;
    }

    else
    {
      v9 = sub_1AE4BB8CC(v6, v7, v8 & 1);

      sub_1AE4BA998(v6, v7, v8);
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64_t sub_1AE4BB8CC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1AE4EAD70();
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  if (a3)
  {
    return sub_1AE4AF28C(a1);
  }

  v8 = a2 - a1;
  if (!a1)
  {
    v8 = 0;
  }

  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AE4EAD60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD2A0, &qword_1AE4ECE18);
  sub_1AE4AC078(&qword_1EB5DD088, &unk_1EB5DD2A0, &qword_1AE4ECE18, MEMORY[0x1E69E74E8]);
  result = sub_1AE4EAD50();
  if (!v9)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4BBA3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1AE4EB150();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1AE4EB150();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1AE4BBB2C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1AE4BBBCC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AE4BBB2C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1AE4EB150();
LABEL_9:
  result = sub_1AE4EB0C0();
  *v2 = result;
  return result;
}

uint64_t sub_1AE4BBBCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE4EB150();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1AE4EB150();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AE4AC078(&qword_1EB5DD500, &qword_1EB5DD4F8, &qword_1AE4EDB78, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4F8, &qword_1AE4EDB78);
            v9 = sub_1AE4DB038(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Image.Impl(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1AE4BBD70(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1AE4EAD30();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1AE4BBDF0()
{
  sub_1AE4B4558(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl__info, &qword_1EB5DD4E8, &qword_1AE4EDB68);

  return swift_deallocClassInstance();
}

unint64_t sub_1AE4BBE84(unint64_t result, unint64_t a2, unint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  if (result >> 62)
  {
    goto LABEL_65;
  }

  v43 = result & 0xFFFFFFFFFFFFFF8;
  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v35 = HIDWORD(a2);
  v6 = __OFSUB__(HIDWORD(a2), a2);
  v36 = v6;
  if (!v5)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  v7 = 0;
  v8 = 0;
  v42 = result & 0xC000000000000001;
  v9 = a3 >> 62;
  v40 = BYTE6(a3);
  v33 = a2;
  v34 = HIDWORD(a2) - a2;
  v10 = MEMORY[0x1E69E7CC0];
  v32 = a2 >> 32;
  v37 = a2;
  v38 = a3;
  v39 = v5;
  v41 = result;
LABEL_8:
  v31 = v10;
  v11 = v8;
  v12 = v7;
  while (1)
  {
    if (v42)
    {
      result = MEMORY[0x1B2701540](v12, result);
      v13 = result;
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v12 >= *(v43 + 16))
      {
        goto LABEL_55;
      }

      v13 = *(result + 8 * v12 + 32);

      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v30 = result;
        v43 = result & 0xFFFFFFFFFFFFFF8;
        v5 = sub_1AE4EB150();
        result = v30;
        goto LABEL_3;
      }
    }

    v14 = v11 >> 3;
    if (v9 > 1)
    {
      break;
    }

    v15 = v40;
    if (v9)
    {
      v15 = v34;
      if (v36)
      {
        goto LABEL_57;
      }
    }

LABEL_18:
    if (v14 >= v15)
    {
      v10 = v31;
LABEL_52:

      goto LABEL_53;
    }

    if (v9 == 2)
    {
      if (v14 < *(a2 + 16))
      {
        goto LABEL_60;
      }

      if (v14 >= *(a2 + 24))
      {
        goto LABEL_62;
      }

      a2 = a3;
      v22 = sub_1AE4EA990();
      if (!v22)
      {
        goto LABEL_67;
      }

      v20 = v22;
      a3 &= 0x3FFFFFFFFFFFFFFFuLL;
      result = sub_1AE4EA9B0();
      v21 = v14 - result;
      if (__OFSUB__(v14, result))
      {
        goto LABEL_64;
      }

      goto LABEL_31;
    }

    if (v9 == 1)
    {
      if (v14 < v33 || v14 >= v32)
      {
        goto LABEL_61;
      }

      a2 = a3;
      v19 = sub_1AE4EA990();
      if (!v19)
      {
        __break(1u);
LABEL_67:
        __break(1u);
      }

      v20 = v19;
      a3 &= 0x3FFFFFFFFFFFFFFFuLL;
      result = sub_1AE4EA9B0();
      v21 = v14 - result;
      if (__OFSUB__(v14, result))
      {
        goto LABEL_63;
      }

LABEL_31:
      v23 = *(v20 + v21);
      a2 = v37;
      a3 = v38;
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_56;
      }

      goto LABEL_36;
    }

    if (v14 >= v40)
    {
      goto LABEL_59;
    }

    v44 = a2;
    v45 = BYTE2(a2);
    v46 = BYTE3(a2);
    v47 = v35;
    v48 = BYTE5(a2);
    v49 = BYTE6(a2);
    v50 = HIBYTE(a2);
    v51 = a3;
    v52 = BYTE2(a3);
    v53 = BYTE3(a3);
    v54 = BYTE4(a3);
    v55 = BYTE5(a3);
    v23 = *(&v44 + v14);
    v8 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_56;
    }

LABEL_36:
    if ((v23 >> (v11 & 7)))
    {
      v24 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AE4BC3DC(0, *(v31 + 16) + 1, 1);
        a3 = v38;
        v24 = v56;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v24;
      if (v27 >= v26 >> 1)
      {
        sub_1AE4BC3DC((v26 > 1), v27 + 1, 1);
        a3 = v38;
        v28 = v56;
      }

      *(v28 + 16) = v27 + 1;
      v29 = v28 + 16 * v27;
      *(v29 + 32) = v13;
      *(v29 + 40) = 1;
      result = v41;
      v10 = v28;
      if (v7 == v39)
      {
LABEL_53:

        sub_1AE4A41E8(a2, a3);
        return v10;
      }

      goto LABEL_8;
    }

    ++v12;
    ++v11;
    result = v41;
    if (v7 == v39)
    {
      v10 = v31;
      goto LABEL_53;
    }
  }

  if (v9 == 2)
  {
    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (v18)
    {
      goto LABEL_58;
    }

    goto LABEL_18;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

void *sub_1AE4BC2A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD508, &qword_1AE4EDB80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD510, &unk_1AE4EDB88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AE4BC3DC(void *a1, int64_t a2, char a3)
{
  result = sub_1AE4BC2A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AE4BC400(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = a2;
  v7 = a1;
  v58 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_101;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a2 >> 62)
  {
    goto LABEL_102;
  }

LABEL_3:
  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_4:
  sub_1AE4BCC14(v11);

  while (2)
  {
    v12 = v6 & 0xFFFFFFFFFFFFFF8;
    v54 = v6;
    v55 = v6 & 0xC000000000000001;
    v13 = v6 >> 62;
    v52 = v6 & 0xFFFFFFFFFFFFFF8;
    v53 = v6 >> 62;
    if (!(v7 >> 62))
    {
LABEL_6:
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_7;
      }

LABEL_89:
      sub_1AE4BBA3C(v7);
      sub_1AE4BBA3C(v6);
      return v58;
    }

    while (1)
    {
      if (sub_1AE4EB150() < 1)
      {
        goto LABEL_89;
      }

LABEL_7:
      if (v13)
      {
        if (sub_1AE4EB150() < 1)
        {
          goto LABEL_89;
        }
      }

      else if (*(v12 + 16) < 1)
      {
        goto LABEL_89;
      }

      v14 = v7 >> 62;
      if (v7 >> 62)
      {
        if (!sub_1AE4EB150())
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
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
          v8 = sub_1AE4EB150();
          if (!(v6 >> 62))
          {
            goto LABEL_3;
          }

LABEL_102:
          v45 = sub_1AE4EB150();
          v10 = __OFADD__(v8, v45);
          v11 = v8 + v45;
          if (v10)
          {
            goto LABEL_104;
          }

          goto LABEL_4;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x1B2701540](0, v7);
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v57 = *(v7 + 32);

        if (!v13)
        {
LABEL_14:
          if (!*(v12 + 16))
          {
            goto LABEL_91;
          }

          goto LABEL_15;
        }
      }

      if (!sub_1AE4EB150())
      {
        goto LABEL_91;
      }

LABEL_15:
      if (v55)
      {
        v15 = MEMORY[0x1B2701540](0, v6);
      }

      else
      {
        if (!*(v12 + 16))
        {
          goto LABEL_93;
        }

        v15 = *(v6 + 32);
      }

      v16 = *(v57 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
      v17 = *(v57 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
      v18 = *(v57 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16);
      v19 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v16, v17, v18);
      if (v19)
      {
        v20 = v5;
        v5 = sub_1AE4A6A00(v19);
        if (v20)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v21 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v16, v17, v18);
        if (!v21)
        {
          goto LABEL_113;
        }

        v22 = v5;
        v26 = sub_1AE4A6A00(v21);
        if (v22)
        {
          v50 = v23;
          v51 = v24;
          v48 = v25;
          sub_1AE4C78AC();
          swift_allocError();
          *v49 = v26;
          *(v49 + 8) = v50;
          *(v49 + 16) = v51;
          goto LABEL_116;
        }

        v5 = *(*(v57 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) + v26;
      }

      v56 = v15;
      v27 = *(v15 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
      v28 = *(v15 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
      v29 = *(v15 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16);
      v30 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v27, v28, v29);
      if (!v30)
      {
        break;
      }

      v31 = v5;
      v32 = sub_1AE4A6A00(v30);
      v5 = 0;

      v6 = v54;
      if (v31 >= v32)
      {
        goto LABEL_64;
      }

LABEL_29:
      v13 = v53;
      if (v14)
      {
        if (!sub_1AE4EB150())
        {
          goto LABEL_96;
        }

        if (!sub_1AE4EB150())
        {
          goto LABEL_97;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B2701540](0, v7);
        v37 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!v14)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_100;
        }

        v37 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!v14)
        {
LABEL_36:
          v38 = *(v37 + 16);
          if (!v38)
          {
            goto LABEL_98;
          }

          goto LABEL_43;
        }
      }

      if (!sub_1AE4EB150())
      {
        goto LABEL_98;
      }

      if (sub_1AE4EB150() < 1)
      {
        goto LABEL_99;
      }

      v38 = sub_1AE4EB150();
LABEL_43:
      v39 = v38 - 1;
      if (__OFSUB__(v38, 1))
      {
        goto LABEL_94;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v14)
        {
LABEL_49:
          sub_1AE4EB150();
        }

LABEL_50:
        v7 = sub_1AE4EB0C0();
        goto LABEL_51;
      }

      if (v14)
      {
        goto LABEL_49;
      }

      if (v39 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_50;
      }

LABEL_51:
      v40 = sub_1AE4BCCB0(0, 1, 0);
      MEMORY[0x1B27012F0](v40);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AE4EAE90();
      }

      sub_1AE4EAEA0();
      v12 = v52;
      if (!(v7 >> 62))
      {
        goto LABEL_6;
      }
    }

    v33 = v5;
    v34 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v27, v28, v29);
    if (!v34)
    {
      goto LABEL_112;
    }

    v35 = sub_1AE4A6A00(v34);
    v6 = v54;
    v5 = 0;

    v36 = *(*(v56 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide);

    if (v33 < v36 + v35)
    {
      goto LABEL_29;
    }

LABEL_64:
    if (!v53)
    {
      if (!*(v52 + 16))
      {
        goto LABEL_107;
      }

      goto LABEL_69;
    }

    if (!sub_1AE4EB150())
    {
      goto LABEL_106;
    }

    if (!sub_1AE4EB150())
    {
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

LABEL_69:
    if (!v55)
    {
      if (!*(v52 + 16))
      {
        goto LABEL_111;
      }

      if (v53)
      {
        goto LABEL_75;
      }

LABEL_71:
      v41 = *(v52 + 16);
      if (!v41)
      {
        goto LABEL_109;
      }

LABEL_78:
      v42 = v41 - 1;
      if (__OFSUB__(v41, 1))
      {
        goto LABEL_105;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v53)
        {
          if (v42 <= *(v52 + 24) >> 1)
          {
LABEL_86:
            v43 = sub_1AE4BCCB0(0, 1, 0);
            MEMORY[0x1B27012F0](v43);
            if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AE4EAE90();
            }

            sub_1AE4EAEA0();
            continue;
          }

LABEL_85:
          v6 = sub_1AE4EB0C0();
          goto LABEL_86;
        }
      }

      else if (!v53)
      {
        goto LABEL_85;
      }

      sub_1AE4EB150();
      goto LABEL_85;
    }

    break;
  }

  MEMORY[0x1B2701540](0, v6);
  if (!v53)
  {
    goto LABEL_71;
  }

LABEL_75:
  if (!sub_1AE4EB150())
  {
    goto LABEL_109;
  }

  if (sub_1AE4EB150() >= 1)
  {
    v41 = sub_1AE4EB150();
    goto LABEL_78;
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  v46 = a2;
  v47 = a3;
  v48 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v49 = v5;
  *(v49 + 8) = v46;
  *(v49 + 16) = v47;
LABEL_116:
  *(v49 + 24) = v48;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4BCC14(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1AE4EB150();
LABEL_9:
    result = sub_1AE4EB0C0();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_1AE4BCCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Image.Impl(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1AE4EB150();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1AE4EB150();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void _dyld_process_info_get_state(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = a1;
    *a2 = [v4 timestamp];
    v3 = [v4 images];
    *(a2 + 8) = [v3 count];

    *(a2 + 12) = [v4 initialImageCount];
    *(a2 + 16) = [v4 state];
  }
}

unint64_t sub_1AE4BD01C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSnapshot_impl);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6[6];
  v5 = v6[7];
  v8 = v6[8];

  v9 = sub_1AE4AC6E0(1952543859, 0xE400000000000000, 0, v7, v5, v8);
  if (v9)
  {
    v5 = sub_1AE4A6A00(v9);

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 <= 0xFF)
    {
      return v5;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  v11 = a2;
  v12 = a3;
  v13 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v14 = v5;
  *(v14 + 8) = v11;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_1AE4BD140(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  v7 = a3();

  if (v7)
  {
    a4();
    v8 = sub_1AE4EAE70();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void _dyld_process_info_get_cache(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v8 = a1;
    v3 = [v8 sharedCache];

    if (v3)
    {
      v4 = [v8 sharedCache];
      v5 = [v4 uuid];
      [v5 getUUIDBytes:a2];

      v6 = [v8 sharedCache];
      *(a2 + 16) = [v6 address];

      *(a2 + 24) = 0;
      v7 = [v8 sharedCache];
      *(a2 + 25) = [v7 mappedPrivate];
    }

    else
    {
      uuid_copy(a2, UUID_NULL);
      *(a2 + 16) = 0;
      *(a2 + 24) = 1;
    }
  }
}

uint64_t sub_1AE4BD300(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + OBJC_IVAR____DYSharedCache_impl);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7[2];
  v9 = v7[3];
  v5 = v7[4];

  v10 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v8, v9, v5);
  if (!v10)
  {
LABEL_7:
    __break(1u);
    v16 = a3;
    v17 = a4;
    sub_1AE4C78AC();
    swift_allocError();
    *v18 = v6;
    *(v18 + 8) = v5;
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v12 = sub_1AE4AEC7C(v10, v11);
  v14 = v13;

  sub_1AE4B0730(v12, v14);
}

uint64_t sub_1AE4BD470()
{
  v0 = sub_1AE4B9C8C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1AE4EB150();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = MEMORY[0x1E69E7CC0];
  result = sub_1AE4EB0F0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B2701540](v4, v1);
      }

      else
      {
      }

      ++v4;
      sub_1AE4EB0D0();
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
    }

    while (v2 != v4);

    return v5;
  }

  return result;
}

char *sub_1AE4BD5C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(v4 + OBJC_IVAR____DYSnapshot_impl);
  if (v8)
  {
    v9 = v8[6];
    v10 = v8[7];
    v11 = v8[8];

    v12 = sub_1AE4AC6E0(1886809701, 0xE400000000000000, 0, v9, v10, v11);
    if (v12)
    {
      v13 = sub_1AE4AC2B4(v12);
      v15 = v14;
      v17 = v16;

      type metadata accessor for Environment.Impl();
      v18 = swift_allocObject();
      v18[2] = v13;
      v18[3] = v15;
      v18[4] = v17;

      v19 = [objc_allocWithZone(_DYEnvironment) initWithInternal_];
      *&v19[OBJC_IVAR____DYEnvironment_impl] = v18;
    }

    else
    {

      return 0;
    }

    return v19;
  }

  else
  {
    __break(1u);
    sub_1AE4C78AC();
    swift_allocError();
    *v22 = v7;
    *(v22 + 8) = v6;
    *(v22 + 16) = v5;
    *(v22 + 24) = a4;
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4BD788()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = qword_1EB5DD1C0;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1AE4EAF80();
    if (v7 == 2 || (v7 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v5);
      sub_1AE4EAFA0();
    }

    else
    {
      swift_beginAccess();
      sub_1AE4D4124(v1 + 40, 0x100000000);
      swift_endAccess();
    }
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], *(v1 + 32));
  sub_1AE4BD9E8(*(v1 + 40), *(v1 + 48), *(v1 + 56));

  return v1;
}

uint64_t sub_1AE4BD974()
{
  sub_1AE4BD788();

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4BD9A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE4BD9E8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return MEMORY[0x1EEE6C138](a1, a2);
  }

  return a1;
}

uint64_t sub_1AE4BDA6C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *_dyld_process_info_get_platform(void *result)
{
  if (result)
  {
    return [result platform];
  }

  return result;
}

void dyld_shared_cache_copy_uuid(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 uuid];
    [v3 getUUIDBytes:a2];
  }
}

void *dyld_shared_cache_is_mapped_private(void *result, const char *a2)
{
  if (result)
  {
    return [result mappedPrivate];
  }

  return result;
}

void *sub_1AE4BDBC4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1AE4BDBDC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_1AE4BDC20@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1AE4BDC90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AE4BDCC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AE4BDD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AE4BDDBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AE4BDE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE4BDEBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1AE4BDFA4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t deviceSupportsMTE(uint64_t a1, uint64_t a2)
{
  if (deviceSupportsMTE::onceToken != -1)
  {
    deviceSupportsMTE_cold_1();
  }

  return deviceSupportsMTE::result;
}

uint64_t __deviceSupportsMTE_block_invoke()
{
  v3 = 8;
  v4 = 0;
  result = sysctlbyname("hw.optional.arm.FEAT_MTE4", &v4, &v3, 0, 0);
  if (result)
  {
    v1 = 0;
  }

  else
  {
    v1 = v4 == 1;
  }

  v2 = v1;
  deviceSupportsMTE::result = v2;
  return result;
}

uint64_t vm_read_safe(vm_map_read_t a1, uint64_t a2, mach_vm_size_t a3, vm_address_t *a4, mach_msg_type_number_t *a5)
{
  data = 0;
  v7 = MEMORY[0x1E69E9A60];
  v8 = 0xFFFFFFFFFFFFFFLL;
  if (*MEMORY[0x1E69E9A60] == a1)
  {
    v8 = -1;
  }

  v9 = mach_vm_read(a1, v8 & a2, a3, &data, a5);
  if (!v9)
  {
    v10 = vm_allocate(*v7, a4, *a5, 1);
    if (v10)
    {
      v9 = v10;
      mach_vm_deallocate(*v7, data, *a5);
    }

    else
    {
      if (deviceSupportsMTE::onceToken != -1)
      {
        vm_read_safe_cold_1();
      }

      if (deviceSupportsMTE::result == 1)
      {
        __asm { MSR             TCO, #1 }
      }

      memcpy(*a4, data, *a5);
      if (deviceSupportsMTE::onceToken != -1)
      {
        vm_read_safe_cold_1();
      }

      if (deviceSupportsMTE::result == 1)
      {
        __asm { MSR             TCO, #0 }
      }

      mach_vm_deallocate(*v7, data, *a5);
      return 0;
    }
  }

  return v9;
}

BOOL scavengeProcess(lsl::MemoryManager *a1, void *a2, size_t *a3)
{
  v5 = a1;
  v82 = *MEMORY[0x1E69E9840];
  v6 = lsl::MemoryManager::defaultAllocator(a1);
  v49 = v6;
  __src = 0;
  __len = 0;
  v52 = 0;
  v53 = 0;
  target_task = v5;
  v69 = 0;
  v70 = 0;
  v7 = MEMORY[0x1E69E9A60];
  if (*MEMORY[0x1E69E9A60] == v5)
  {
    if (!task_threads(v5, &v69, &v70) && v70)
    {
      for (i = 0; i < v70; ++i)
      {
        v9 = *(v69 + 4 * i);
        if (v9 != MEMORY[0x1B2701920]())
        {
          thread_suspend(*(v69 + 4 * i));
        }
      }
    }
  }

  else
  {
    task_suspend(v5);
  }

  x = 0;
  PropertyList::PropertyList(v64, v6);
  v10 = PropertyList::rootDictionary(v64);
  v11 = PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(v10, "imgs", 4uLL);
  v12 = pid_for_task(v5, &x);
  if (!v12)
  {
    v46 = a3;
    v47 = a2;
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(v10, "proc", 4uLL, &x);
    v63 = *(PropertyList::Dictionary::addObjectForKey<PropertyList::Flags<long long>>(v10, "flag", 4uLL) + 8);
    size[1] = &unk_1F240C678;
    LODWORD(buffer) = 1;
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(v10, "time", 4uLL, &buffer);
    LODWORD(buffer) = 0;
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(v10, "plat", 4uLL, &buffer);
    address = 0;
    size[0] = 0;
    infoCnt = 9;
    object_name = 0;
    if (!mach_vm_region(v5, &address, size, 10, info, &infoCnt, &object_name))
    {
      v13 = 0;
      v48 = 0;
      v14 = MEMORY[0x1E69E9AC8];
      while (1)
      {
        if (info[0] == 5)
        {
          v15 = *v14 >= size[0] ? size[0] : *v14;
          v16 = v56;
          if (v56)
          {
            break;
          }
        }

LABEL_47:
        address += size[0];
        infoCnt = 9;
        object_name = 0;
        if (mach_vm_region(v5, &address, size, 10, info, &infoCnt, &object_name))
        {
          goto LABEL_48;
        }
      }

      if (v57)
      {
        v17 = v11;
        v18 = mach_o::Header::isMachO(v56, v57);
        if (v18)
        {
          v19 = v18;
          v20 = v13;
          CommandsSize = mach_o::Header::headerAndLoadCommandsSize(v18);
          if (*v14 >= CommandsSize)
          {
            goto LABEL_27;
          }

          v22 = 0;
          v23 = v56;
          v24 = v57;
          v26 = buffer;
          v25 = v79;
          v56 = buffer;
          v57 = v79;
          buffer = v23;
          v79 = v24;
          v27 = 4;
          if (v56 && v25)
          {
            v19 = mach_o::Header::isMachO(v26, v25);
            v22 = v19 != 0;
            v27 = 4 * (v19 == 0);
            v23 = buffer;
          }

          if (v23)
          {
            free(v23);
          }

          if (v22)
          {
LABEL_27:
            v13 = mach_o::Header::isDylinker(v19) | v20;
            v48 |= mach_o::Header::isMainExecutable(v19);
            if (mach_o::Header::isDylinker(v19) || mach_o::Header::isMainExecutable(v19))
            {
              v28 = PropertyList::Array::addObject<PropertyList::Dictionary>(v17);
              v55 = mach_o::Header::preferredLoadAddress(v19);
              if (v55)
              {
                PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long &>(v28, "padr", 4uLL, &v55);
              }

              PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long &>(v28, "addr", 4uLL, &address);
              v54 = mach_o::Header::installName(v19);
              if (v54)
              {
                PropertyList::Dictionary::addObjectForKey<PropertyList::String,char const*&>(v28, "name", 4uLL, &v54);
              }

              *v80 = 0;
              v81 = 0;
              if (mach_o::Header::getUuid(v19, v80))
              {
                PropertyList::Dictionary::addObjectForKey<PropertyList::UUID,unsigned char (&)[16]>(v28, "uuid", 4uLL, v80);
              }

              v29 = proc_regionfilename(x, address, &buffer, 0x400u);
              if (v29)
              {
                *(&buffer + v29) = 0;
                PropertyList::Dictionary::addObjectForKey<PropertyList::String,char (&)[1025]>(v28, "file", 4uLL, &buffer);
              }

              v77[0] = 0;
              v77[1] = v77;
              v77[2] = 0x2000000000;
              v77[3] = 0;
              v71 = MEMORY[0x1E69E9820];
              v72 = 0x40000000;
              v73 = ___ZN12_GLOBAL__N_115addSegmentArrayERN12PropertyList10DictionaryEPKN6mach_o6HeaderE_block_invoke;
              v74 = &unk_1E7A26368;
              v75 = v77;
              v76 = v28;
              mach_o::Header::forEachSegment(v19, &v71);
              _Block_object_dispose(v77, 8);
              if (v13 & v48)
              {
                v27 = 2;
              }

              else
              {
                v27 = 0;
              }
            }

            else
            {
              v27 = 4;
            }
          }

          else
          {
            v13 = v20;
          }
        }

        else
        {
          v27 = 4;
        }

        v16 = v56;
        v11 = v17;
        if (!v56)
        {
LABEL_46:
          v30 = v27 | 4;
          v14 = MEMORY[0x1E69E9AC8];
          if (v30 != 4)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v27 = 4;
      }

      free(v16);
      goto LABEL_46;
    }

LABEL_48:
    LODWORD(buffer) = 1;
    PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,int &>(v10, "init", 4uLL, &buffer);
    v32 = *(v10 + 48);
    v31 = v10 + 48;
    v33 = lsl::Allocator::aligned_alloc(v32, 8uLL, 0x18uLL);
    PropertyList::String::String(v33, v32, "stat", 4uLL);
    lsl::Vector<PropertyList::Object *>::reserve(v31 - 32, *(v31 - 16) + 1);
    v34 = *(v31 - 24);
    v35 = *(v31 - 16);
    *(v31 - 16) = v35 + 1;
    *(v34 + 8 * v35) = v33;
    v36 = lsl::Allocator::aligned_alloc(v32, 8uLL, 0x18uLL);
    PropertyList::Integer::Integer(v36, v32, 0);
    lsl::Vector<PropertyList::Object *>::reserve(v31, *(v31 + 16) + 1);
    v37 = *(v31 + 8);
    v38 = *(v31 + 16);
    *(v31 + 16) = v38 + 1;
    *(v37 + 8 * v38) = v36;
    v71 = v6;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    LODWORD(v75) = 0;
    PropertyList::encode(v64, &v71);
    AAREncoder::AAREncoder(&buffer, v6);
    AAREncoder::addFile(&buffer, "process.plist", 0xDuLL, v72, v73);
    AAREncoder::encode(&buffer, &v49);
    AAREncoder::~AAREncoder(&buffer);
    if (v72)
    {
      lsl::Vector<std::byte>::resize(&v71, 0);
    }

    a3 = v46;
    a2 = v47;
  }

  v64[1] = &unk_1F240C718;
  if (v66[1])
  {
    lsl::Vector<PropertyList::Object *>::resize(v66, 0);
  }

  if (v65[1])
  {
    lsl::Vector<PropertyList::Object *>::resize(v65, 0);
  }

  v39 = target_task;
  if (target_task != *v7)
  {
    task_resume(target_task);
    if (v12)
    {
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  if (v70)
  {
    for (j = 0; j < v70; v39 = mach_port_deallocate(*v7, *(v69 + 4 * j++)))
    {
      v41 = *(v69 + 4 * j);
      if (v41 != MEMORY[0x1B2701920](v39))
      {
        thread_resume(*(v69 + 4 * j));
      }
    }

    LODWORD(v39) = *v7;
    v42 = 4 * v70;
  }

  else
  {
    v42 = 0;
  }

  mach_vm_deallocate(v39, v69, v42);
  if (!v12)
  {
LABEL_66:
    v43 = __len;
    *a3 = __len;
    v44 = malloc_type_malloc(v43, 0x7D93AAE4uLL);
    *a2 = v44;
    if (__len)
    {
      memmove(v44, __src, __len);
    }
  }

LABEL_68:
  if (__src)
  {
    lsl::Vector<std::byte>::resize(&v49, 0);
  }

  return v12 == 0;
}