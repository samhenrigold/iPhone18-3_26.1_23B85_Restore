uint64_t sub_1DB0532E0(uint64_t *a1)
{
  v3 = sub_1DB09D734();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74[1] = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[1];
  v83 = *a1;
  v89 = v5;
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v88 = a1[10];
  v87 = a1[11];
  v86 = a1[12];
  v85 = a1[13];
  v84 = a1[14];
  v14 = a1 + 15;
  v15 = *(a1 + 17);
  v150 = *(a1 + 15);
  v151 = v15;
  v16 = *(a1 + 19);
  v17 = *(a1 + 21);
  v18 = *(a1 + 23);
  v155 = *(a1 + 25);
  v154 = v18;
  v153 = v17;
  v152 = v16;
  v19 = *(a1 + 27);
  v20 = *(a1 + 29);
  v21 = *(a1 + 31);
  v22 = *(a1 + 35);
  v159 = *(a1 + 33);
  v158 = v21;
  v157 = v20;
  v156 = v19;
  v23 = *(a1 + 37);
  v24 = *(a1 + 39);
  v163 = *(a1 + 328);
  v162 = v24;
  v161 = v23;
  v160 = v22;
  v75 = *v1;
  if (v7)
  {
    v78 = v12;
    v79 = v10;
    v81 = v9;
    v82 = v6;
    v80 = v8;
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    v13 = 0;
    v11 = 0;
    v82 = 0;
  }

  v25 = *(a1 + 37);
  v146 = *(a1 + 35);
  v147 = v25;
  v148 = *(a1 + 39);
  v149 = *(a1 + 328);
  v26 = *(a1 + 29);
  v142 = *(a1 + 27);
  v143 = v26;
  v27 = *(a1 + 33);
  v144 = *(a1 + 31);
  v145 = v27;
  v28 = *(a1 + 21);
  v138 = *(a1 + 19);
  v139 = v28;
  v29 = *(a1 + 25);
  v140 = *(a1 + 23);
  v141 = v29;
  v30 = *(a1 + 17);
  v136 = *v14;
  v137 = v30;
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(&v136) == 1)
  {
    v77 = 0;
    v31 = 0;
  }

  else
  {
    v31 = *(&v137 + 1);
    v77 = v137;
  }

  v32 = *(v14 + 11);
  v132 = *(v14 + 10);
  v133 = v32;
  v134 = *(v14 + 12);
  v135 = *(v14 + 208);
  v33 = *(v14 + 6);
  v129 = *(v14 + 7);
  v34 = *(v14 + 9);
  v130 = *(v14 + 8);
  v131 = v34;
  v35 = *(v14 + 3);
  v124 = *(v14 + 2);
  v125 = v35;
  v36 = *(v14 + 5);
  v126 = *(v14 + 4);
  v127 = v36;
  v128 = v33;
  v37 = *(v14 + 1);
  v123[0] = *v14;
  v123[1] = v37;
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v123) == 1)
  {
    sub_1DB053A2C(&v113);
  }

  else
  {
    *&v107[40] = v125;
    *&v107[56] = v126;
    *&v107[72] = v127;
    *&v107[88] = v128;
    v112 = v132;
    *&v107[24] = v124;
    v104 = v123[0];
    LOBYTE(v105) = v135;
    *(&v105 + 1) = *(&v131 + 1);
    LOBYTE(v106) = v132;
    *(&v106 + 1) = v131;
    *v107 = *(&v134 + 1);
    *&v107[8] = v133;
    nullsub_3();

    sub_1DB053AA4(&v124, v92);
    v119 = *&v107[48];
    v120 = *&v107[64];
    v121 = *&v107[80];
    v122 = *&v107[96];
    v115 = v106;
    v116 = *v107;
    v117 = *&v107[16];
    v118 = *&v107[32];
    v113 = v104;
    v114 = v105;
  }

  v100 = v119;
  v101 = v120;
  v102 = v121;
  v103 = v122;
  v96 = v115;
  v97 = v116;
  v98 = v117;
  v99 = v118;
  v94 = v113;
  v95 = v114;
  v38 = *(v14 + 11);
  v108 = *(v14 + 10);
  v109 = v38;
  v110 = *(v14 + 12);
  v111 = *(v14 + 208);
  v39 = *(v14 + 7);
  *&v107[48] = *(v14 + 6);
  *&v107[64] = v39;
  v40 = *(v14 + 9);
  *&v107[80] = *(v14 + 8);
  *&v107[96] = v40;
  v41 = *(v14 + 3);
  v106 = *(v14 + 2);
  *v107 = v41;
  v42 = *(v14 + 5);
  *&v107[16] = *(v14 + 4);
  *&v107[32] = v42;
  v43 = *(v14 + 1);
  v104 = *v14;
  v105 = v43;
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(&v104) == 1)
  {
    v44 = 0xE200000000000000;
    v76 = 12589;
  }

  else
  {
    v76 = *&v107[80];
    v44 = *&v107[88];
  }

  type metadata accessor for AMPCristalPayloadData();
  v45 = swift_allocObject();
  v46 = v80;
  *(v45 + 16) = v81;
  *(v45 + 24) = v46;
  v47 = v79;
  *(v45 + 32) = v78;
  *(v45 + 40) = v13;
  *(v45 + 48) = v47;
  *(v45 + 56) = v11;
  *(v45 + 64) = v82;
  *(v45 + 72) = v7;
  *(v45 + 80) = v77;
  *(v45 + 88) = v31;
  v48 = v89;
  *(v45 + 96) = v83;
  *(v45 + 104) = v48;
  v49 = v101;
  *(v45 + 208) = v100;
  *(v45 + 224) = v49;
  *(v45 + 240) = v102;
  v50 = v103;
  v51 = v97;
  *(v45 + 144) = v96;
  *(v45 + 160) = v51;
  v52 = v99;
  *(v45 + 176) = v98;
  *(v45 + 192) = v52;
  v53 = v95;
  *(v45 + 112) = v94;
  *(v45 + 128) = v53;
  v55 = v87;
  v54 = v88;
  *(v45 + 256) = v50;
  *(v45 + 264) = v54;
  v57 = v85;
  v56 = v86;
  *(v45 + 272) = v55;
  *(v45 + 280) = v56;
  v58 = v84;
  *(v45 + 288) = v57;
  *(v45 + 296) = v58;
  *(v45 + 304) = v76;
  *(v45 + 312) = v44;
  sub_1DB09CC54();
  swift_allocObject();

  sub_1DAFB85E4(v54, v55, v56, v57, v58);
  sub_1DB09CC44();
  *&v92[0] = v45;
  sub_1DB053A4C();
  v68 = sub_1DB09CC34();
  v70 = v69;

  sub_1DB09D714();
  v71 = sub_1DB09D6E4();
  v73 = v72;
  sub_1DAF40780(v68, v70);
  if (v73)
  {

    return v71;
  }

  else
  {
    v92[0] = v75;
    LOBYTE(v90) = 14;

    CoreODILogger.fault(_:category:)(0xD00000000000001BLL, 0x80000001DB0C3390, &v90);

    v92[10] = v160;
    v92[11] = v161;
    v92[12] = v162;
    v93 = v163;
    v92[6] = v156;
    v92[7] = v157;
    v92[8] = v158;
    v92[9] = v159;
    v92[2] = v152;
    v92[3] = v153;
    v92[4] = v154;
    v92[5] = v155;
    v92[0] = v150;
    v92[1] = v151;
    if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v92) == 1)
    {
      v59 = 0xE700000000000000;
      v60 = 0x6E776F6E6B6E75;
    }

    else
    {
      v59 = *(&v92[0] + 1);
      v60 = *&v92[0];
    }

    v90 = 0;
    v91 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000002FLL, 0x80000001DB0C33B0);
    MEMORY[0x1E127FE90](v60, v59);

    MEMORY[0x1E127FE90](8224034, 0xE300000000000000);
    v61 = sub_1DAF484E4(v90, v91);
    v63 = v62;
    v64 = sub_1DB09D014();
    v66 = v65;
    sub_1DAF40780(v61, v63);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_1DB09DE44();

    v90 = 0x737365737361227BLL;
    v91 = 0xEF223A22746E656DLL;
    MEMORY[0x1E127FE90](v64, v66);

    MEMORY[0x1E127FE90](0xD00000000000001BLL, 0x80000001DB0CB2F0);

    return v90;
  }
}

double sub_1DB053A2C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1DB053A4C()
{
  result = qword_1ECC0FC90;
  if (!qword_1ECC0FC90)
  {
    type metadata accessor for AMPCristalPayloadData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FC90);
  }

  return result;
}

uint64_t sub_1DB053AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E8A0, &qword_1DB0A6650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DB053B14(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DB09D074();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1DAF40780(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1DB07F6C8(v10, 0);
      v14 = sub_1DB09CF94();
      sub_1DAF40780(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void *sub_1DB053C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1DAFF6FB0(*(a1 + 16), 0);
  v3 = sub_1DAFF7F6C();
  sub_1DAF333A4(v5);
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t ArmandDeviceData.hasValidData.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v11 = *(v1 + 16);
  if (!v11)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 65);
  while (v2 < *(v1 + 16))
  {
    v12 = *(v3 - 33);
    v4 = *(v3 - 17);
    v5 = *(v3 - 9);
    v22[0] = *v3;
    *(v22 + 9) = *(v3 + 9);
    v6 = *(v3 - 1);
    v17 = v1;
    memcpy(v18, v0 + 1, 0x402uLL);
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16[0] = v22[0];
    *(v16 + 9) = *(v22 + 9);
    sub_1DB06829C(&v12, v19);
    v7 = v20;
    v8 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v17 = v4;
    v18[0] = v5;
    LOBYTE(v18[1]) = v6 & 1;
    v9 = *(v8 + 8);
    sub_1DB042B1C(v4, v5, v6 & 1);
    v9(&v12, &v17, v7, v8);
    sub_1DB041AD8(v17, v18[0], v18[1]);
    LODWORD(v9) = v12;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
    if (v9 == 211)
    {
      return 1;
    }

    ++v2;
    v3 += 4;
    if (v11 == v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ArmandDeviceData.isLessComplete(lhs:than:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v108[2] = *(v1 + 40);
  v108[3] = v6;
  v109 = *(v1 + 72);
  v7 = *(v1 + 8);
  v108[1] = v5;
  v108[0] = v7;
  v8 = *(v1 + 128);
  v112 = *(v1 + 112);
  v113 = v8;
  v114 = *(v1 + 144);
  v115 = *(v1 + 160);
  v9 = *(v1 + 96);
  v110 = *(v1 + 80);
  v111 = v9;
  v10 = *(v1 + 176);
  v81 = *(v1 + 168);
  v11 = *(v1 + 184);
  v12 = *(v1 + 208);
  v116 = *(v1 + 192);
  v117 = v12;
  v118[0] = *(v1 + 224);
  *(v118 + 9) = *(v1 + 233);
  v13 = *(v1 + 304);
  v121 = *(v1 + 288);
  v122[0] = v13;
  *(v122 + 15) = *(v1 + 319);
  v14 = *(v1 + 256);
  v120 = *(v1 + 272);
  v119 = v14;
  v79 = *(v1 + 336);
  v80 = *(v1 + 328);
  v78 = *(v1 + 344);
  v73 = *(v1 + 346);
  v74 = *(v1 + 345);
  v69 = *(v1 + 360);
  v70 = *(v1 + 352);
  v68 = *(v1 + 368);
  v129 = *(v1 + 472);
  v15 = *(v1 + 440);
  v128 = *(v1 + 456);
  v127 = v15;
  v16 = *(v1 + 408);
  v126 = *(v1 + 424);
  v125 = v16;
  v17 = *(v1 + 376);
  v124 = *(v1 + 392);
  v123 = v17;
  v64 = *(v1 + 480);
  v63 = *(v1 + 488);
  memcpy(__dst, (v1 + 496), 0x119uLL);
  v60 = *(v4 + 800);
  v58 = *(v4 + 784);
  v59 = *(v4 + 816);
  v18 = *(v4 + 904);
  v135 = *(v4 + 888);
  v136 = v18;
  v137[0] = *(v4 + 920);
  *(v137 + 10) = *(v4 + 930);
  v19 = *(v4 + 840);
  v131 = *(v4 + 824);
  v132 = v19;
  v20 = *(v4 + 872);
  v133 = *(v4 + 856);
  v134 = v20;
  v21 = *(v3 + 24);
  v22 = *(v3 + 56);
  v138[2] = *(v3 + 40);
  v138[3] = v22;
  v139 = *(v3 + 72);
  v23 = *(v3 + 8);
  v138[1] = v21;
  v138[0] = v23;
  v24 = *(v3 + 128);
  v142 = *(v3 + 112);
  v143 = v24;
  v144 = *(v3 + 144);
  v145 = *(v3 + 160);
  v25 = *(v3 + 96);
  v140 = *(v3 + 80);
  v141 = v25;
  v26 = *(v3 + 168);
  v27 = *(v3 + 176);
  v28 = *(v3 + 184);
  *(v148 + 9) = *(v3 + 233);
  v29 = *(v3 + 208);
  v148[0] = *(v3 + 224);
  v30 = *(v3 + 192);
  v147 = v29;
  v146 = v30;
  *(v152 + 15) = *(v3 + 319);
  v31 = *(v3 + 288);
  v152[0] = *(v3 + 304);
  v151 = v31;
  v32 = *(v3 + 272);
  v149 = *(v3 + 256);
  v150 = v32;
  v76 = *(v3 + 336);
  v77 = *(v3 + 328);
  v75 = *(v3 + 344);
  v71 = *(v3 + 346);
  v72 = *(v3 + 345);
  v66 = *(v3 + 360);
  v67 = *(v3 + 352);
  v65 = *(v3 + 368);
  v33 = *(v3 + 376);
  v154 = *(v3 + 392);
  v153 = v33;
  v34 = *(v3 + 408);
  v35 = *(v3 + 424);
  v36 = *(v3 + 440);
  v37 = *(v3 + 456);
  v159 = *(v3 + 472);
  v158 = v37;
  v157 = v36;
  v155 = v34;
  v156 = v35;
  v62 = *(v3 + 480);
  v61 = *(v3 + 488);
  memcpy(v160, (v3 + 496), 0x119uLL);
  v56 = *(v3 + 800);
  v57 = *(v3 + 784);
  v55 = *(v3 + 816);
  v38 = *(v3 + 904);
  v165 = *(v3 + 888);
  v166 = v38;
  v167[0] = *(v3 + 920);
  *(v167 + 10) = *(v3 + 930);
  v39 = *(v3 + 840);
  v161 = *(v3 + 824);
  v162 = v39;
  v40 = *(v3 + 872);
  v163 = *(v3 + 856);
  v164 = v40;
  v41 = *(v4 + 24);
  v42 = *(v4 + 56);
  v91[2] = *(v4 + 40);
  v91[3] = v42;
  LOBYTE(v91[4]) = *(v4 + 72);
  v43 = *(v4 + 8);
  v91[1] = v41;
  v91[0] = v43;
  v44 = *(v3 + 24);
  v45 = *(v3 + 56);
  v90[2] = *(v3 + 40);
  v90[3] = v45;
  LOBYTE(v90[4]) = *(v3 + 72);
  v46 = *(v3 + 8);
  v90[1] = v44;
  v90[0] = v46;
  sub_1DB08B170(v108, v89);
  sub_1DB08B170(v138, v89);
  LOBYTE(v3) = sub_1DB0878EC(v91, v90);
  v168[2] = v90[2];
  v168[3] = v90[3];
  v169 = v90[4];
  v168[0] = v90[0];
  v168[1] = v90[1];
  sub_1DAF40AEC(v168, &qword_1ECC0FC98, &qword_1DB0B92A0);
  v170[2] = v91[2];
  v170[3] = v91[3];
  v171 = v91[4];
  v170[0] = v91[0];
  v170[1] = v91[1];
  sub_1DAF40AEC(v170, &qword_1ECC0FC98, &qword_1DB0B92A0);
  if ((v3 & 1) != 0
    || (v91[2] = v112, v91[3] = v113, v91[4] = v114, LOWORD(v91[5]) = v115, v91[0] = v110, v91[1] = v111, v90[2] = v142, v90[3] = v143, v90[4] = v144, LOWORD(v90[5]) = v145, v90[0] = v140, v90[1] = v141, sub_1DB08B1A8(&v110, v89), sub_1DB08B1A8(&v140, v89), v47 = sub_1DB087B44(v91, v90), v104[2] = v90[2], v104[3] = v90[3], v104[4] = v90[4], v105 = v90[5], v104[0] = v90[0], v104[1] = v90[1], sub_1DAF40AEC(v104, &qword_1ECC0FCA0, &qword_1DB0B92A8), v106[2] = v91[2], v106[3] = v91[3], v106[4] = v91[4], v107 = v91[5], v106[0] = v91[0], v106[1] = v91[1], sub_1DAF40AEC(v106, &qword_1ECC0FCA0, &qword_1DB0B92A8), (v47 & 1) != 0)
    || (sub_1DB0561D4(v26, v27, v28, v81, v10, v11) & 1) == 0
    || (v91[0] = v116, v91[1] = v117, v91[2] = v118[0], *(&v91[2] + 9) = *(v118 + 9), v90[0] = v146, v90[1] = v147, v90[2] = v148[0], *(&v90[2] + 9) = *(v148 + 9), sub_1DB08B1E0(&v116, v89), sub_1DB08B1E0(&v146, v89), v48 = sub_1DB087E14(v91, v90), v100[0] = v90[0], v100[1] = v90[1], v101[0] = v90[2], *(v101 + 9) = *(&v90[2] + 9), sub_1DAF40AEC(v100, &qword_1ECC0FCA8, &qword_1DB0B92B0), v102[0] = v91[0], v102[1] = v91[1], v103[0] = v91[2], *(v103 + 9) = *(&v91[2] + 9), sub_1DAF40AEC(v102, &qword_1ECC0FCA8, &qword_1DB0B92B0), (v48 & 1) != 0)
    || (v91[2] = v121, v91[3] = v122[0], *(&v91[3] + 15) = *(v122 + 15), v91[1] = v120, v91[0] = v119, v90[2] = v151, v90[3] = v152[0], *(&v90[3] + 15) = *(v152 + 15), v90[1] = v150, v90[0] = v149, sub_1DB08B218(&v119, v89), sub_1DB08B218(&v149, v89), v49 = sub_1DB087FF0(v91, v90), v96[2] = v90[2], v97[0] = v90[3], *(v97 + 15) = *(&v90[3] + 15), v96[1] = v90[1], v96[0] = v90[0], sub_1DAF40AEC(v96, &qword_1ECC0FCB0, &qword_1DB0B92B8), v98[2] = v91[2], v99[0] = v91[3], *(v99 + 15) = *(&v91[3] + 15), v98[1] = v91[1], v98[0] = v91[0], sub_1DAF40AEC(v98, &qword_1ECC0FCB0, &qword_1DB0B92B8), (v49 & 1) != 0)
    || (v91[4] = v127, v91[5] = v128, LOWORD(v91[6]) = v129, v91[0] = v123, v91[1] = v124, v91[3] = v126, v91[2] = v125, v90[4] = v157, v90[5] = v158, LOWORD(v90[6]) = v159, v90[0] = v153, v90[1] = v154, v90[3] = v156, v90[2] = v155, sub_1DB08B250(&v123, v89), sub_1DB08B250(&v153, v89), v50 = sub_1DB088294(v91, v90), v92[4] = v90[4], v92[5] = v90[5], v93 = v90[6], v92[0] = v90[0], v92[1] = v90[1], v92[3] = v90[3], v92[2] = v90[2], sub_1DAF40AEC(v92, &qword_1ECC0FCB8, &qword_1DB0B92C0), v94[4] = v91[4], v94[5] = v91[5], v95 = v91[6], v94[0] = v91[0], v94[1] = v91[1], v94[3] = v91[3], v94[2] = v91[2], sub_1DAF40AEC(v94, &qword_1ECC0FCB8, &qword_1DB0B92C0), (v50 & 1) != 0)
    || (sub_1DB0561D4(v77, v76, v75, v80, v79, v78) & 1) == 0
    || (sub_1DB056364(v72 | (v71 << 8), v74 | (v73 << 8)) & 1) == 0
    || (sub_1DB0561D4(v67, v66, v65, v70, v69, v68) & 1) == 0
    || (*&v91[0] = v64, BYTE8(v91[0]) = v63, *&v90[0] = v62, BYTE8(v90[0]) = v61, , , v51 = sub_1DB0884F4(v91, v90), sub_1DB08B288(*&v90[0]), sub_1DB08B288(*&v91[0]), (v51 & 1) != 0)
    || (memcpy(__src, __dst, sizeof(__src)), nullsub_3(), memcpy(v87, __src, 0x119uLL), memcpy(v89, v160, 0x119uLL), nullsub_3(), memcpy(v86, v89, 0x119uLL), sub_1DB08B298(__dst, v84), sub_1DB08B298(v160, v84), v52 = sub_1DB088D78(v87), memcpy(v90, v86, 0x119uLL), sub_1DAF40AEC(v90, &qword_1ECC0FCC0, &qword_1DB0B92C8), memcpy(v91, v87, 0x119uLL), sub_1DAF40AEC(v91, &qword_1ECC0FCC0, &qword_1DB0B92C8), (v52 & 1) != 0)
    || (v87[0] = v58, v87[1] = v60, LODWORD(v87[2]) = v59, v86[0] = v57, v86[1] = v56, LODWORD(v86[2]) = v55, (sub_1DB089824(v87, v86) & 1) != 0))
  {
    v53 = 0;
  }

  else
  {
    v86[4] = v135;
    v86[5] = v136;
    v86[6] = v137[0];
    *(&v86[6] + 10) = *(v137 + 10);
    v86[0] = v131;
    v86[1] = v132;
    v86[2] = v133;
    v86[3] = v134;
    nullsub_3();
    v84[4] = v86[4];
    v84[5] = v86[5];
    v85[0] = v86[6];
    *(v85 + 10) = *(&v86[6] + 10);
    v84[0] = v86[0];
    v84[1] = v86[1];
    v84[2] = v86[2];
    v84[3] = v86[3];
    v87[2] = v163;
    v87[3] = v164;
    v87[0] = v161;
    v87[1] = v162;
    *(&v87[6] + 10) = *(v167 + 10);
    v87[6] = v167[0];
    v87[5] = v166;
    v87[4] = v165;
    nullsub_3();
    v82[4] = v87[4];
    v82[5] = v87[5];
    v83[0] = v87[6];
    *(v83 + 10) = *(&v87[6] + 10);
    v82[0] = v87[0];
    v82[1] = v87[1];
    v82[2] = v87[2];
    v82[3] = v87[3];
    v53 = sub_1DB089958(v84, v82) ^ 1;
  }

  return v53 & 1;
}

unint64_t ArmandDeviceData.description.getter()
{
  v0 = sub_1DB09D734();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1DB054C84();
  v3 = v2;
  sub_1DB09D714();
  v4 = sub_1DB09D6E4();
  v6 = v5;
  sub_1DAF40780(v1, v3);
  if (!v6)
  {
    return 0xD00000000000001FLL;
  }

  MEMORY[0x1E127FF00](v4, v6);

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1DB09D6B4();
  v9 = [v7 BOOLForKey_];

  if (v9)
  {
    sub_1DB09DE44();

    v13 = 0x6144656369766544;
    v10 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v10);

    MEMORY[0x1E127FE90](40, 0xE100000000000000);
    MEMORY[0x1E127FE90](v4, v6);

    MEMORY[0x1E127FE90](41, 0xE100000000000000);
  }

  else
  {

    sub_1DB09DE44();

    v13 = 0xD000000000000011;
    v12 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v12);
  }

  return v13;
}

void *sub_1DB054C84()
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  memcpy(__dst, v0 + 1, sizeof(__dst));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v2 + 16);
  if (!v3)
  {

    goto LABEL_21;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  v6 = 32;
  v34 = v2;
  v35 = v1;
  do
  {
    v36 = v6;
    v7 = (v2 + v6);
    v9 = v7[1];
    v8 = v7[2];
    v10 = *v7;
    *(v45 + 10) = *(v7 + 42);
    v45[0] = v8;
    v43 = v10;
    v44 = v9;
    v11 = v10;
    *&v39[0] = v1;
    memcpy(v39 + 8, __dst, 0x402uLL);
    v37[0] = *v7;
    v37[1] = v7[1];
    v38[0] = v7[2];
    *(v38 + 10) = *(v7 + 42);
    sub_1DB06829C(v37, v40);
    v12 = v41;
    v13 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v39[0] = v43;
    v39[1] = v44;
    v39[2] = v45[0];
    *(&v39[2] + 10) = *(v45 + 10);
    v14 = *(v13 + 24);
    sub_1DB042BD4(&v43, v37);
    v14(v37, v39, v12, v13);
    v15 = *&v37[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39[0] = v5;
    v17 = sub_1DAF35210(v11, *(&v11 + 1));
    v19 = v5[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v23 = v18;
    if (v5[3] < v22)
    {
      sub_1DAF378E0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1DAF35210(v11, *(&v11 + 1));
      if ((v23 & 1) != (v24 & 1))
      {
        result = sub_1DB09E2E4();
        __break(1u);
        return result;
      }

LABEL_11:
      v5 = *&v39[0];
      if (v23)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v25 = v17;
    sub_1DAF3C590();
    v17 = v25;
    v5 = *&v39[0];
    if (v23)
    {
LABEL_12:
      *(v5[7] + 8 * v17) = v15;

      sub_1DB042C0C(&v43);
      goto LABEL_16;
    }

LABEL_14:
    v5[(v17 >> 6) + 8] |= 1 << v17;
    *(v5[6] + 16 * v17) = v11;
    *(v5[7] + 8 * v17) = v15;

    sub_1DB042C0C(&v43);
    v26 = v5[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v5[2] = v27;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v2 = v34;
    v1 = v35;
    if (v3 - 1 == v4)
    {
      goto LABEL_19;
    }

    ++v4;
    v6 = v36 + 64;
  }

  while (v4 < *(v34 + 16));
  __break(1u);
LABEL_19:

LABEL_21:
  v28 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7B8, &qword_1DB0A5198);
  v29 = sub_1DB09D604();

  *&v39[0] = 0;
  v30 = [v28 dataWithJSONObject:v29 options:0 error:v39];

  v31 = *&v39[0];
  if (v30)
  {
    v32 = sub_1DB09D034();
  }

  else
  {
    v32 = v31;
    sub_1DB09CE74();

    swift_willThrow();
  }

  return v32;
}

uint64_t sub_1DB055070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1DAF40A84(a1, v18 - v8, &qword_1ECC0ECE0, &unk_1DB0A21D0);
  v10 = sub_1DB09DA24();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DAF40AEC(v9, &qword_1ECC0ECE0, &unk_1DB0A21D0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1DB09D984();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DB09DA14();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1DB055260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    v9 = MEMORY[0x1E69E6158];
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v10 = MEMORY[0x1E69E6168];
    *(inited + 72) = v9;
    *(inited + 80) = v10;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((a3 + 45) >= 9u)
    {
      v11 = qword_1DB0BD040[a3 ^ 0x80u];
    }

    else
    {
      v11 = -(a3 + 45);
    }

    v14 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v14;
    *(inited + 104) = v11;
    v15 = inited;

    v12 = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1DB0A04E0;
    *(v12 + 32) = 0x646F43726F727265;
    *(v12 + 40) = 0xE900000000000065;
    if ((a3 + 45) >= 9u)
    {
      v13 = qword_1DB0BD040[a3 ^ 0x80u];
    }

    else
    {
      v13 = -(a3 + 45);
    }

    v16 = MEMORY[0x1E69E6540];
    *(v12 + 72) = MEMORY[0x1E69E6530];
    *(v12 + 80) = v16;
    *(v12 + 48) = v13;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(v12, a4);
}

uint64_t sub_1DB0553F8@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v7 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v7 = -(HIBYTE(a2) + 45);
    }

    v10 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v10;
    *(inited + 48) = v7;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v8 = MEMORY[0x1E69E76E8];
    *(inited + 72) = MEMORY[0x1E69E76D8];
    *(inited + 80) = v8;
    *(inited + 48) = a1;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v9 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v9 = -(HIBYTE(a2) + 45);
    }

    v11 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v11;
    *(inited + 104) = v9;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a3);
}

uint64_t sub_1DB055578@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  v2 = HIBYTE(a1);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  if (v4 == 2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    if ((v2 + 45) >= 9u)
    {
      v6 = qword_1DB0BD040[v2 ^ 0x80u];
    }

    else
    {
      v6 = -(v2 + 45);
    }

    v10 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v10;
    *(inited + 48) = v6;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    v7 = MEMORY[0x1E69E6370];
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v8 = MEMORY[0x1E69E6380];
    *(inited + 72) = v7;
    *(inited + 80) = v8;
    *(inited + 48) = v4 & 1;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((v2 + 45) >= 9u)
    {
      v9 = qword_1DB0BD040[v2 ^ 0x80u];
    }

    else
    {
      v9 = -(v2 + 45);
    }

    v11 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v11;
    *(inited + 104) = v9;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
}

uint64_t sub_1DB055700@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v7 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v7 = -(HIBYTE(a2) + 45);
    }

    v11 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v11;
    *(inited + 48) = v7;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v9;
    *(inited + 48) = a1;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v10 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v10 = -(HIBYTE(a2) + 45);
    }

    *(inited + 128) = v8;
    *(inited + 136) = v9;
    *(inited + 104) = v10;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a3);
}

uint64_t sub_1DB055870@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  if (a2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v7 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v7 = -(HIBYTE(a2) + 45);
    }

    v10 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v10;
    *(inited + 48) = v7;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    v8 = MEMORY[0x1E69E63D0];
    *(inited + 72) = MEMORY[0x1E69E63B0];
    *(inited + 80) = v8;
    *(inited + 48) = a1;
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((HIBYTE(a2) + 45) >= 9u)
    {
      v9 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u];
    }

    else
    {
      v9 = -(HIBYTE(a2) + 45);
    }

    v11 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v11;
    *(inited + 104) = v9;
  }

  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a3);
}

uint64_t sub_1DB0559F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB08E6B0(v2, v6, type metadata accessor for AnyODIKnownBinding.BindingContent);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v10 = *v6;
        v11 = v6[1];
        v12 = MEMORY[0x1E69E6168];
        a1[3] = MEMORY[0x1E69E6158];
        a1[4] = v12;
        *a1 = v10;
        a1[1] = v11;
      }

      else
      {
        v17 = *v6;
        v18 = MEMORY[0x1E69E6540];
        a1[3] = MEMORY[0x1E69E6530];
        a1[4] = v18;
        *a1 = v17;
      }
    }

    else
    {
      v15 = *v6;
      v16 = MEMORY[0x1E69E63D0];
      a1[3] = MEMORY[0x1E69E63B0];
      a1[4] = v16;
      *a1 = v15;
    }
  }

  else if (result > 4)
  {
    if (result == 5)
    {

      v14 = sub_1DB0588FC(v13);

      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
      a1[4] = sub_1DB08E57C();

      *a1 = v14;
    }

    else
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      a1[3] = sub_1DAF4062C(0, &qword_1ECC0E818, 0x1E695DFB0);
      result = sub_1DB08E5F8(&qword_1ECC0FF28, &qword_1ECC0E818, 0x1E695DFB0);
      a1[4] = result;
      *a1 = v21;
    }
  }

  else if (result == 3)
  {
    v8 = sub_1DB09D154();
    a1[3] = v8;
    a1[4] = sub_1DB08E648(&qword_1ECC0FF30, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
    return (*(*(v8 - 8) + 32))(boxed_opaque_existential_0, v6, v8);
  }

  else
  {
    v19 = *v6;
    v20 = MEMORY[0x1E69E6380];
    a1[3] = MEMORY[0x1E69E6370];
    a1[4] = v20;
    *a1 = v19;
  }

  return result;
}

uint64_t sub_1DB055C74(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  if (a3)
  {
    sub_1DB09E3C4();
  }

  else
  {
    sub_1DB09E3C4();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1E1280AA0](v5);
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v6 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v6 = (v3 + 45);
  }

  return MEMORY[0x1E1280A80](v6);
}

uint64_t sub_1DB055D08(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 <= 0xD6u)
  {
    if (a3 > 0xD4u)
    {
      if (a3 == 213)
      {
        if (a6 != 213)
        {
          return 0;
        }
      }

      else
      {
        if (a3 != 214)
        {
          goto LABEL_31;
        }

        if (a6 != 214)
        {
          return 0;
        }
      }
    }

    else
    {
      if (a3 != 211)
      {
        if (a3 == 212)
        {
          if (a6 == 212)
          {
            goto LABEL_33;
          }

          return 0;
        }

LABEL_31:
        if (a6 - 211 >= 9 && qword_1DB0BD040[a3 ^ 0x80u] == qword_1DB0BD040[a6 ^ 0x80u])
        {
          goto LABEL_33;
        }

        return 0;
      }

      if (a6 != 211)
      {
        return 0;
      }
    }
  }

  else if (a3 <= 0xD8u)
  {
    if (a3 == 215)
    {
      if (a6 != 215)
      {
        return 0;
      }
    }

    else
    {
      if (a3 != 216)
      {
        goto LABEL_31;
      }

      if (a6 != 216)
      {
        return 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 0xD9u:
        if (a6 != 217)
        {
          return 0;
        }

        break;
      case 0xDAu:
        if (a6 != 218)
        {
          return 0;
        }

        break;
      case 0xDBu:
        if (a6 == 219)
        {
          break;
        }

        return 0;
      default:
        goto LABEL_31;
    }
  }

LABEL_33:
  v6 = (a2 | a5) == 0;
  if (!a2 || !a5)
  {
    return v6;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1DB09E254();
}

uint64_t sub_1DB055E54(__int16 a1, __int16 a2)
{
  if (HIBYTE(a1) > 0xD6u)
  {
    if (HIBYTE(a1) <= 0xD8u)
    {
      if (HIBYTE(a1) == 215)
      {
        if (HIBYTE(a2) == 215)
        {
          goto LABEL_33;
        }

        return 0;
      }

      if (HIBYTE(a1) == 216)
      {
        if (HIBYTE(a2) == 216)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    else
    {
      switch(HIBYTE(a1))
      {
        case 0xD9u:
          if (HIBYTE(a2) == 217)
          {
            goto LABEL_33;
          }

          return 0;
        case 0xDAu:
          if (HIBYTE(a2) == 218)
          {
            goto LABEL_33;
          }

          return 0;
        case 0xDBu:
          if (HIBYTE(a2) == 219)
          {
            goto LABEL_33;
          }

          return 0;
      }
    }

    goto LABEL_31;
  }

  if (HIBYTE(a1) > 0xD4u)
  {
    if (HIBYTE(a1) == 213)
    {
      if (HIBYTE(a2) == 213)
      {
        goto LABEL_33;
      }

      return 0;
    }

    if (HIBYTE(a1) == 214)
    {
      if (HIBYTE(a2) == 214)
      {
        goto LABEL_33;
      }

      return 0;
    }

    goto LABEL_31;
  }

  if (HIBYTE(a1) == 211)
  {
    if (HIBYTE(a2) == 211)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (HIBYTE(a1) != 212)
  {
LABEL_31:
    if (HIBYTE(a2) - 211 < 9 || qword_1DB0BD040[HIBYTE(a1) ^ 0x80u] != qword_1DB0BD040[HIBYTE(a2) ^ 0x80u])
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (HIBYTE(a2) != 212)
  {
    return 0;
  }

LABEL_33:
  v2 = a2 == 2 && a1 == 2;
  if (a1 != 2 && a2 != 2)
  {
    v2 = a1 ^ a2 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1DB055FA0(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4)
{
  if (HIBYTE(a2) <= 0xD6u)
  {
    if (HIBYTE(a2) > 0xD4u)
    {
      if (HIBYTE(a2) == 213)
      {
        v4 = BYTE1(a4) == 213;
        goto LABEL_25;
      }

      if (HIBYTE(a2) == 214)
      {
        v4 = BYTE1(a4) == 214;
        goto LABEL_25;
      }
    }

    else
    {
      if (HIBYTE(a2) == 211)
      {
        v4 = BYTE1(a4) == 211;
        goto LABEL_25;
      }

      if (HIBYTE(a2) == 212)
      {
        v4 = BYTE1(a4) == 212;
        goto LABEL_25;
      }
    }
  }

  else if (HIBYTE(a2) <= 0xD8u)
  {
    if (HIBYTE(a2) == 215)
    {
      v4 = BYTE1(a4) == 215;
      goto LABEL_25;
    }

    if (HIBYTE(a2) == 216)
    {
      v4 = BYTE1(a4) == 216;
      goto LABEL_25;
    }
  }

  else
  {
    switch(HIBYTE(a2))
    {
      case 0xD9u:
        v4 = BYTE1(a4) == 217;
        goto LABEL_25;
      case 0xDAu:
        v4 = BYTE1(a4) == 218;
        goto LABEL_25;
      case 0xDBu:
        v4 = BYTE1(a4) == 219;
        goto LABEL_25;
    }
  }

  if (BYTE1(a4) - 211 < 9)
  {
    return 0;
  }

  v4 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u] == qword_1DB0BD040[BYTE1(a4) ^ 0x80u];
LABEL_25:
  v6 = v4;
  v7 = v6 & a4;
  if (!v4 || (a2 & 1) != 0)
  {
    return v7;
  }

  else
  {
    return (a1 == a3) & ~a4;
  }
}

BOOL sub_1DB0560B4(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (HIBYTE(a2) <= 0xD6u)
  {
    if (HIBYTE(a2) > 0xD4u)
    {
      if (HIBYTE(a2) == 213)
      {
        v4 = HIBYTE(a4) == 213;
        goto LABEL_25;
      }

      if (HIBYTE(a2) == 214)
      {
        v4 = HIBYTE(a4) == 214;
        goto LABEL_25;
      }
    }

    else
    {
      if (HIBYTE(a2) == 211)
      {
        v4 = HIBYTE(a4) == 211;
        goto LABEL_25;
      }

      if (HIBYTE(a2) == 212)
      {
        v4 = HIBYTE(a4) == 212;
        goto LABEL_25;
      }
    }
  }

  else if (HIBYTE(a2) <= 0xD8u)
  {
    if (HIBYTE(a2) == 215)
    {
      v4 = HIBYTE(a4) == 215;
      goto LABEL_25;
    }

    if (HIBYTE(a2) == 216)
    {
      v4 = HIBYTE(a4) == 216;
      goto LABEL_25;
    }
  }

  else
  {
    switch(HIBYTE(a2))
    {
      case 0xD9u:
        v4 = HIBYTE(a4) == 217;
        goto LABEL_25;
      case 0xDAu:
        v4 = HIBYTE(a4) == 218;
        goto LABEL_25;
      case 0xDBu:
        v4 = HIBYTE(a4) == 219;
        goto LABEL_25;
    }
  }

  if (HIBYTE(a4) - 211 < 9)
  {
    return 0;
  }

  v4 = qword_1DB0BD040[HIBYTE(a2) ^ 0x80u] == qword_1DB0BD040[HIBYTE(a4) ^ 0x80u];
LABEL_25:
  v6 = !v4;
  v7 = v6 | a2;
  v8 = (v6 ^ (v6 | a2)) & a4;
  if (v7 & 1) != 0 || (a4)
  {
    return v8 & 1;
  }

  else
  {
    return *&a1 == *&a3;
  }
}

uint64_t sub_1DB0561D4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a5 == 1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return 1;
  }

  if (a6 != 211)
  {
    if (a3 <= 0xD6u)
    {
      if (a3 > 0xD4u)
      {
        if (a3 == 213)
        {
          if (a6 == 213)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (a3 != 214)
          {
            goto LABEL_42;
          }

          if (a6 == 214)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        if (a3 == 211)
        {
          return 0;
        }

        if (a3 != 212)
        {
          goto LABEL_42;
        }

        if (a6 == 212)
        {
          goto LABEL_7;
        }
      }
    }

    else if (a3 <= 0xD8u)
    {
      if (a3 == 215)
      {
        if (a6 == 215)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (a3 != 216)
        {
          goto LABEL_42;
        }

        if (a6 == 216)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      switch(a3)
      {
        case 0xD9u:
          if (a6 == 217)
          {
            goto LABEL_7;
          }

          break;
        case 0xDAu:
          if (a6 == 218)
          {
            goto LABEL_7;
          }

          break;
        case 0xDBu:
          if (a6 == 219)
          {
            goto LABEL_7;
          }

          return 0;
        default:
LABEL_42:
          if (a6 - 211 >= 9 && qword_1DB0BD040[a3 ^ 0x80u] == qword_1DB0BD040[a6 ^ 0x80u])
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    return 0;
  }

  if (a3 != 211)
  {
    return 1;
  }

LABEL_7:
  v7 = (a2 | a5) == 0;
  if (a2 && a5)
  {
    if (a1 == a4 && a2 == a5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1DB09E254();
    }
  }

  return (v7 ^ 1) & 1;
}

uint64_t sub_1DB056364(__int16 a1, __int16 a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if (HIBYTE(a2) != 211)
  {
    if (HIBYTE(a1) <= 0xD6u)
    {
      if (HIBYTE(a1) > 0xD4u)
      {
        if (HIBYTE(a1) == 213)
        {
          if (HIBYTE(a2) == 213)
          {
            goto LABEL_7;
          }
        }

        else if (HIBYTE(a2) == 214)
        {
          goto LABEL_7;
        }

        return 0;
      }

      if (HIBYTE(a1) == 211)
      {
        return 0;
      }

      if (HIBYTE(a1) == 212)
      {
        if (HIBYTE(a2) == 212)
        {
          goto LABEL_7;
        }

        return 0;
      }
    }

    else
    {
      if (HIBYTE(a1) <= 0xD8u)
      {
        if (HIBYTE(a1) == 215)
        {
          if (HIBYTE(a2) == 215)
          {
            goto LABEL_7;
          }
        }

        else if (HIBYTE(a2) == 216)
        {
          goto LABEL_7;
        }

        return 0;
      }

      switch(HIBYTE(a1))
      {
        case 0xD9u:
          if (HIBYTE(a2) == 217)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDAu:
          if (HIBYTE(a2) == 218)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDBu:
          if (HIBYTE(a2) == 219)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (HIBYTE(a2) - 211 >= 9 && qword_1DB0BD040[HIBYTE(a1) ^ 0x80u] == qword_1DB0BD040[HIBYTE(a2) ^ 0x80u])
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (HIBYTE(a1) != 211)
  {
    return 1;
  }

LABEL_7:
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1 ^ a2;
  }

  if (a1 == 2)
  {
    return a2 != 2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB0564C0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (BYTE1(a4) == 220)
  {
    return 0;
  }

  if (BYTE1(a2) == 220)
  {
    return 1;
  }

  if (BYTE1(a4) != 211)
  {
    if (BYTE1(a2) <= 0xD6u)
    {
      if (BYTE1(a2) > 0xD4u)
      {
        if (BYTE1(a2) == 213)
        {
          if (BYTE1(a4) == 213)
          {
            goto LABEL_7;
          }
        }

        else if (BYTE1(a4) == 214)
        {
          goto LABEL_7;
        }

        return 0;
      }

      if (BYTE1(a2) == 211)
      {
        return 0;
      }

      if (BYTE1(a2) == 212)
      {
        if (BYTE1(a4) == 212)
        {
          goto LABEL_7;
        }

        return 0;
      }
    }

    else
    {
      if (BYTE1(a2) <= 0xD8u)
      {
        if (BYTE1(a2) == 215)
        {
          if (BYTE1(a4) == 215)
          {
            goto LABEL_7;
          }
        }

        else if (BYTE1(a4) == 216)
        {
          goto LABEL_7;
        }

        return 0;
      }

      switch(BYTE1(a2))
      {
        case 0xD9u:
          if (BYTE1(a4) == 217)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDAu:
          if (BYTE1(a4) == 218)
          {
            goto LABEL_7;
          }

          return 0;
        case 0xDBu:
          if (BYTE1(a4) == 219)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (BYTE1(a4) - 211 >= 9 && qword_1DB0BD040[BYTE1(a2) ^ 0x80u] == qword_1DB0BD040[BYTE1(a4) ^ 0x80u])
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (BYTE1(a2) != 211)
  {
    return 1;
  }

LABEL_7:
  v5 = a2 & a4;
  v6 = *&a1 == *&a3;
  if (a4)
  {
    v6 = a2 & a4;
  }

  if ((a2 & 1) == 0)
  {
    v5 = v6;
  }

  return (v5 ^ 1) & 1;
}

uint64_t sub_1DB056618(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DB090428();
  result = MEMORY[0x1E12801C0](v2, MEMORY[0x1E6969080], v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1DAF40780(v15[0], v15[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1DAF40674(*v12, v14);
    sub_1DB081398(v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DB05673C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  v4 = sub_1DB08E5F8(&qword_1ECC0F310, &qword_1ECC0E240, 0x1E695CF60);
  v5 = 0;
  v12[1] = MEMORY[0x1E12801C0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1DB081D14(v12, *(*(a1 + 56) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1DB05687C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6369447974706D65;
    if (a1 != 8)
    {
      v5 = 0x726F727245636170;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD00000000000001BLL;
    if (a1 != 5)
    {
      v6 = 0x676E69646F636E65;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7272456F6ELL;
    v2 = 0x6F6974704F6C696ELL;
    v3 = 0x6465696E6564;
    if (a1 != 3)
    {
      v3 = 0x7463657078656E75;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6C61567465736E75;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB0569EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08E208(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB056A20(uint64_t a1)
{
  v2 = sub_1DB08B2D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056A5C(uint64_t a1)
{
  v2 = sub_1DB08B2D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056A98(uint64_t a1)
{
  v2 = sub_1DB08B51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056AD4(uint64_t a1)
{
  v2 = sub_1DB08B51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056B10(uint64_t a1)
{
  v2 = sub_1DB08B378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056B4C(uint64_t a1)
{
  v2 = sub_1DB08B378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056B88(uint64_t a1)
{
  v2 = sub_1DB08B420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056BC4(uint64_t a1)
{
  v2 = sub_1DB08B420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056C00(uint64_t a1)
{
  v2 = sub_1DB08B570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056C3C(uint64_t a1)
{
  v2 = sub_1DB08B570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056C78(uint64_t a1)
{
  v2 = sub_1DB08B618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056CB4(uint64_t a1)
{
  v2 = sub_1DB08B618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056CF0(uint64_t a1)
{
  v2 = sub_1DB08B3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056D2C(uint64_t a1)
{
  v2 = sub_1DB08B3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056D68(uint64_t a1)
{
  v2 = sub_1DB08B324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056DA4(uint64_t a1)
{
  v2 = sub_1DB08B324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056DE0(uint64_t a1)
{
  v2 = sub_1DB08B4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056E1C(uint64_t a1)
{
  v2 = sub_1DB08B4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056E58(uint64_t a1)
{
  v2 = sub_1DB08B5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056E94(uint64_t a1)
{
  v2 = sub_1DB08B5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB056ED0(uint64_t a1)
{
  v2 = sub_1DB08B474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB056F0C(uint64_t a1)
{
  v2 = sub_1DB08B474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArmandDeviceDataErrorCode.hash(into:)()
{
  v1 = *v0;
  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v2 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v2 = (v1 + 45);
  }

  return MEMORY[0x1E1280A80](v2);
}

uint64_t ArmandDeviceDataErrorCode.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v2 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v2 = (v1 + 45);
  }

  MEMORY[0x1E1280A80](v2);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB057028()
{
  sub_1DB09E3A4();
  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t ArmandDeviceDataErrorCode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCC8, &qword_1DB0B92D0);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCD0, &qword_1DB0B92D8);
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCD8, &qword_1DB0B92E0);
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v50 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCE0, &qword_1DB0B92E8);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v50 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCE8, &qword_1DB0B92F0);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v50 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCF0, &qword_1DB0B92F8);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v50 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FCF8, &qword_1DB0B9300);
  v75 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v74 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD00, &qword_1DB0B9308);
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD08, &qword_1DB0B9310);
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD10, &qword_1DB0B9318);
  v70 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD18, &qword_1DB0B9320);
  v22 = *(v21 - 8);
  v77 = v21;
  v78 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - v23;
  v25 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08B2D0();
  v76 = v24;
  sub_1DB09E434();
  if (v25 <= 214)
  {
    v32 = v70;
    v31 = v71;
    v65 = v15;
    v66 = v18;
    v34 = v72;
    v33 = v73;
    v35 = v74;
    v36 = v75;
    if (v25 > 212)
    {
      if (v25 == 213)
      {
        v81[0] = 2;
        sub_1DB08B570();
        v42 = v31;
        v28 = v76;
        v27 = v77;
        sub_1DB09E0F4();
        (*(v34 + 8))(v42, v33);
      }

      else
      {
        v82 = 3;
        sub_1DB08B51C();
        v37 = v35;
        v28 = v76;
        v27 = v77;
        sub_1DB09E0F4();
        (*(v36 + 8))(v37, v51);
      }

      return (*(v78 + 8))(v28, v27);
    }

    if (v25 == 211)
    {
      v79 = 0;
      sub_1DB08B618();
      v28 = v76;
      v27 = v77;
      sub_1DB09E0F4();
      (*(v32 + 8))(v20, v66);
    }

    else
    {
      if (v25 != 212)
      {
        goto LABEL_24;
      }

      v80 = 1;
      sub_1DB08B5C4();
      v28 = v76;
      v27 = v77;
      sub_1DB09E0F4();
      (*(v50 + 8))(v17, v65);
    }

    return (*(v78 + 8))(v28, v27);
  }

  if (v25 <= 216)
  {
    if (v25 == 215)
    {
      v83 = 4;
      sub_1DB08B4C8();
      v44 = v52;
      v28 = v76;
      v27 = v77;
      sub_1DB09E0F4();
      v39 = *(v53 + 8);
      v40 = v44;
      v41 = &v90;
    }

    else
    {
      v84 = 5;
      sub_1DB08B474();
      v38 = v55;
      v28 = v76;
      v27 = v77;
      sub_1DB09E0F4();
      v39 = *(v56 + 8);
      v40 = v38;
      v41 = &v91;
    }

    v29 = *(v41 - 32);
    goto LABEL_22;
  }

  switch(v25)
  {
    case 217:
      v85 = 6;
      sub_1DB08B420();
      v43 = v58;
      v28 = v76;
      v27 = v77;
      sub_1DB09E0F4();
      (*(v59 + 8))(v43, v60);
      return (*(v78 + 8))(v28, v27);
    case 218:
      v86 = 7;
      sub_1DB08B3CC();
      v26 = v61;
      v28 = v76;
      v27 = v77;
      sub_1DB09E0F4();
      v30 = v62;
      v29 = v63;
      goto LABEL_21;
    case 219:
      v87 = 8;
      sub_1DB08B378();
      v26 = v64;
      v28 = v76;
      v27 = v77;
      sub_1DB09E0F4();
      v30 = v65;
      v29 = v66;
LABEL_21:
      v39 = *(v30 + 8);
      v40 = v26;
LABEL_22:
      v39(v40, v29);
      return (*(v78 + 8))(v28, v27);
  }

LABEL_24:
  v89 = 9;
  sub_1DB08B324();
  v46 = v67;
  v48 = v76;
  v47 = v77;
  sub_1DB09E0F4();
  v88 = v25;
  sub_1DB04993C();
  v49 = v69;
  sub_1DB09E194();
  (*(v68 + 8))(v46, v49);
  return (*(v78 + 8))(v48, v47);
}

uint64_t ArmandDeviceDataErrorCode.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD78, &qword_1DB0B9328);
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD80, &qword_1DB0B9330);
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD88, &qword_1DB0B9338);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v56 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD90, &qword_1DB0B9340);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v84 = &v56 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FD98, &qword_1DB0B9348);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v83 = &v56 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDA0, &qword_1DB0B9350);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v78 = &v56 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDA8, &qword_1DB0B9358);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v79 = &v56 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDB0, &qword_1DB0B9360);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v82 = &v56 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDB8, &qword_1DB0B9368);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDC0, &qword_1DB0B9370);
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FDC8, &qword_1DB0B9378);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - v22;
  v24 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1DB08B2D0();
  v25 = v88;
  sub_1DB09E414();
  if (v25)
  {
    goto LABEL_13;
  }

  v26 = v19;
  v56 = v17;
  v57 = v16;
  v27 = v82;
  v28 = v83;
  v58 = 0;
  v29 = v84;
  v30 = v85;
  v88 = v21;
  v31 = v86;
  v32 = sub_1DB09E0D4();
  v33 = (2 * *(v32 + 16)) | 1;
  v89 = v32;
  v90 = v32 + 32;
  v91 = 0;
  v92 = v33;
  v34 = sub_1DB028438();
  if (v34 == 10 || v91 != v92 >> 1)
  {
    v40 = sub_1DB09DEA4();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F638, qword_1DB0B9380);
    *v42 = &type metadata for ArmandDeviceDataErrorCode;
    sub_1DB09E034();
    sub_1DB09DE84();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
  }

  else
  {
    if (v34 > 4u)
    {
      if (v34 <= 6u)
      {
        if (v34 == 5)
        {
          v93 = 5;
          sub_1DB08B474();
          v46 = v58;
          sub_1DB09E024();
          v47 = v88;
          if (!v46)
          {
            (*(v68 + 8))(v28, v69);
            (*(v47 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v38 = -40;
            v39 = v87;
            goto LABEL_40;
          }
        }

        else
        {
          v93 = 6;
          sub_1DB08B420();
          v55 = v58;
          sub_1DB09E024();
          v47 = v88;
          if (!v55)
          {
            (*(v70 + 8))(v29, v71);
            (*(v47 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v38 = -39;
            v39 = v87;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v34 != 7)
        {
          v36 = v88;
          if (v34 == 8)
          {
            v93 = 8;
            sub_1DB08B378();
            v44 = v81;
            v45 = v58;
            sub_1DB09E024();
            if (!v45)
            {
              (*(v74 + 8))(v44, v75);
              (*(v36 + 8))(v23, v20);
              swift_unknownObjectRelease();
              v38 = -37;
              v39 = v87;
              goto LABEL_40;
            }
          }

          else
          {
            v50 = v31;
            v93 = 9;
            sub_1DB08B324();
            v51 = v80;
            v52 = v58;
            sub_1DB09E024();
            if (!v52)
            {
              sub_1DB0498E8();
              v53 = v76;
              sub_1DB09E0C4();
              (*(v77 + 8))(v51, v53);
              (*(v36 + 8))(v23, v20);
              swift_unknownObjectRelease();
              v38 = v93;
              v39 = v87;
              v31 = v50;
              goto LABEL_40;
            }
          }

          goto LABEL_34;
        }

        v93 = 7;
        sub_1DB08B3CC();
        v48 = v58;
        sub_1DB09E024();
        v47 = v88;
        if (!v48)
        {
          (*(v72 + 8))(v30, v73);
          (*(v47 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v38 = -38;
          v39 = v87;
          goto LABEL_40;
        }
      }

LABEL_38:
      (*(v47 + 8))(v23, v20);
      goto LABEL_12;
    }

    v35 = v58;
    if (v34 > 1u)
    {
      if (v34 != 2)
      {
        v36 = v88;
        if (v34 == 3)
        {
          v93 = 3;
          sub_1DB08B51C();
          v37 = v79;
          sub_1DB09E024();
          if (!v35)
          {
            (*(v64 + 8))(v37, v65);
            (*(v36 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v38 = -42;
            v39 = v87;
LABEL_40:
            *v31 = v38;
            return __swift_destroy_boxed_opaque_existential_1Tm(v39);
          }
        }

        else
        {
          v93 = 4;
          sub_1DB08B4C8();
          v49 = v78;
          sub_1DB09E024();
          if (!v35)
          {
            (*(v67 + 8))(v49, v66);
            (*(v36 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v38 = -41;
            v39 = v87;
            goto LABEL_40;
          }
        }

LABEL_34:
        (*(v36 + 8))(v23, v20);
        goto LABEL_12;
      }

      v93 = 2;
      sub_1DB08B570();
      sub_1DB09E024();
      v47 = v88;
      if (!v35)
      {
        (*(v62 + 8))(v27, v63);
        (*(v47 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v38 = -43;
        v39 = v87;
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (v34)
    {
      v93 = 1;
      sub_1DB08B5C4();
      v54 = v57;
      sub_1DB09E024();
      if (!v35)
      {
        (*(v60 + 8))(v54, v61);
        (*(v88 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v38 = -44;
        v39 = v87;
        goto LABEL_40;
      }
    }

    else
    {
      v93 = 0;
      sub_1DB08B618();
      sub_1DB09E024();
      if (!v35)
      {
        (*(v59 + 8))(v26, v56);
        (*(v88 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v38 = -45;
        v39 = v87;
        goto LABEL_40;
      }
    }
  }

  (*(v88 + 8))(v23, v20);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v39 = v87;
  return __swift_destroy_boxed_opaque_existential_1Tm(v39);
}

char *sub_1DB0588FC(uint64_t a1)
{
  v2 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AnyODIKnownBinding(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E6158];
    v13 = *(v6 + 72);
    v31 = v2;
    v32 = v13;
    while (1)
    {
      sub_1DB08E6B0(v10, v8, type metadata accessor for AnyODIKnownBinding);
      sub_1DB08E6B0(v8, v4, type metadata accessor for AnyODIKnownBinding.BindingContent);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v18 = *v4;
            v19 = v4[1];
            v34 = v12;
            v35 = MEMORY[0x1E69E6168];
            *&v33 = v18;
            *(&v33 + 1) = v19;
          }

          else
          {
            v23 = *v4;
            v35 = MEMORY[0x1E69E6540];
            v34 = MEMORY[0x1E69E6530];
            *&v33 = v23;
          }
        }

        else
        {
          v22 = *v4;
          v34 = MEMORY[0x1E69E63B0];
          v35 = MEMORY[0x1E69E63D0];
          *&v33 = v22;
        }
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {

          v21 = sub_1DB0588FC(v20);
          v12 = MEMORY[0x1E69E6158];

          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
          v35 = sub_1DB08E57C();
          *&v33 = v21;
          sub_1DB08E718(v8, type metadata accessor for AnyODIKnownBinding);

          goto LABEL_19;
        }

        v25 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v34 = sub_1DAF4062C(0, &qword_1ECC0E818, 0x1E695DFB0);
        v35 = sub_1DB08E5F8(&qword_1ECC0FF28, &qword_1ECC0E818, 0x1E695DFB0);
        *&v33 = v25;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v16 = sub_1DB09D154();
        v34 = v16;
        v35 = sub_1DB08E648(&qword_1ECC0FF30, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
        (*(*(v16 - 8) + 32))(boxed_opaque_existential_0, v4, v16);
      }

      else
      {
        v24 = *v4;
        v34 = MEMORY[0x1E69E6370];
        v35 = MEMORY[0x1E69E6380];
        LOBYTE(v33) = v24;
      }

      sub_1DB08E718(v8, type metadata accessor for AnyODIKnownBinding);
LABEL_19:
      sub_1DAF332B8(&v33, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
      if (swift_dynamicCast())
      {
        v26 = v38;
        if (v38)
        {
          v27 = v37;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1DAF72DB4(0, *(v11 + 2) + 1, 1, v11);
          }

          v29 = *(v11 + 2);
          v28 = *(v11 + 3);
          if (v29 >= v28 >> 1)
          {
            v11 = sub_1DAF72DB4((v28 > 1), v29 + 1, 1, v11);
          }

          *(v11 + 2) = v29 + 1;
          v14 = &v11[16 * v29];
          *(v14 + 4) = v27;
          *(v14 + 5) = v26;
          v12 = MEMORY[0x1E69E6158];
        }
      }

      v10 += v32;
      if (!--v9)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DB058D9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103C8, &qword_1DB0BC680);
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103D0, &qword_1DB0BC688);
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v50 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103D8, &qword_1DB0BC690);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103E0, &qword_1DB0BC698);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v50 - v8;
  v57 = sub_1DB09D154();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103E8, &qword_1DB0BC6A0);
  v50 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103F0, &qword_1DB0BC6A8);
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC103F8, &qword_1DB0BC6B0);
  v66 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10400, &qword_1DB0BC6B8);
  v21 = *(v20 - 8);
  v73 = v20;
  v74 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09475C();
  v71 = v23;
  sub_1DB09E434();
  sub_1DB08E6B0(v72, v19, type metadata accessor for AnyODIKnownBinding.BindingContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v33 = v66;
    v32 = v67;
    v35 = v68;
    v34 = v69;
    v36 = v70;
    if (!EnumCaseMultiPayload)
    {
      v75 = 0;
      sub_1DB0949A8();
      v45 = v73;
      v46 = v71;
      sub_1DB09E0F4();
      sub_1DB09E174();
      (*(v33 + 8))(v16, v14);
      return (*(v74 + 8))(v46, v45);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v76 = 1;
      sub_1DB094954();
      v37 = v73;
      v38 = v71;
      sub_1DB09E0F4();
      sub_1DB09E154();

      (*(v32 + 8))(v13, v35);
      return (*(v74 + 8))(v38, v37);
    }

    v77 = 2;
    sub_1DB094900();
    v25 = v73;
    v26 = v71;
    sub_1DB09E0F4();
    sub_1DB09E184();
    (*(v50 + 8))(v34, v36);
    return (*(v74 + 8))(v26, v25);
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v25 = v73;
    v26 = v71;
    if (EnumCaseMultiPayload == 3)
    {
      v27 = v55;
      v28 = v52;
      v29 = v57;
      (*(v55 + 32))(v52, v19, v57);
      v78 = 3;
      sub_1DB0948AC();
      v30 = v53;
      sub_1DB09E0F4();
      sub_1DB08E648(&qword_1ECC0F150, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      v31 = v59;
      sub_1DB09E194();
      (*(v58 + 8))(v30, v31);
      (*(v27 + 8))(v28, v29);
    }

    else
    {
      v79 = 4;
      sub_1DB094858();
      v47 = v51;
      sub_1DB09E0F4();
      v48 = v56;
      sub_1DB09E164();
      (*(v54 + 8))(v47, v48);
    }

    return (*(v74 + 8))(v26, v25);
  }

  v40 = v73;
  v41 = v71;
  if (EnumCaseMultiPayload == 5)
  {
    v42 = *(*v19 + 16);
    v81 = 5;
    sub_1DB094804();

    v43 = v63;
    sub_1DB09E0F4();
    v80 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10390, &qword_1DB0BC678);
    sub_1DB0949FC(&qword_1ECC10408, &qword_1ECC101A8, &unk_1DB0BB48C, MEMORY[0x1E69E6300]);
    v44 = v65;
    sub_1DB09E194();
    (*(v64 + 8))(v43, v44);
    (*(v74 + 8))(v41, v40);
  }

  else
  {
    v82[0] = 6;
    sub_1DB0947B0();
    v49 = v60;
    sub_1DB09E0F4();
    (*(v61 + 8))(v49, v62);
    return (*(v74 + 8))(v41, v40);
  }
}

uint64_t sub_1DB059844(uint64_t a1)
{
  v3 = type metadata accessor for AnyODIKnownBinding(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB09D154();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB08E6B0(v1, v13, type metadata accessor for AnyODIKnownBinding.BindingContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        (*(v8 + 32))(v10, v13, v7);
        MEMORY[0x1E1280A80](3);
        sub_1DB08E648(&qword_1ECC0FF30, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1DB09D684();
        return (*(v8 + 8))(v10, v7);
      }

      else
      {
        MEMORY[0x1E1280A80](4);
        return sub_1DB09E3C4();
      }
    }

    if (EnumCaseMultiPayload == 5)
    {
      v16 = *(*v13 + 16);
      MEMORY[0x1E1280A80](5);
      MEMORY[0x1E1280A80](*(v16 + 16));
      v17 = *(v16 + 16);
      if (!v17)
      {
      }

      v18 = v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v19 = *(v4 + 72);

      do
      {
        sub_1DB08E6B0(v18, v6, type metadata accessor for AnyODIKnownBinding);
        sub_1DB059844(a1);
        sub_1DB08E718(v6, type metadata accessor for AnyODIKnownBinding);
        v18 += v19;
        --v17;
      }

      while (v17);
    }

    v23 = 6;
    return MEMORY[0x1E1280A80](v23);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1E1280A80](1);
      sub_1DB09D794();
    }

    v22 = *v13;
    MEMORY[0x1E1280A80](2);
    v23 = v22;
    return MEMORY[0x1E1280A80](v23);
  }

  v20 = *v13;
  MEMORY[0x1E1280A80](0);
  v21 = 0.0;
  if (v20 != 0.0)
  {
    v21 = v20;
  }

  return MEMORY[0x1E1280AA0](*&v21);
}

uint64_t sub_1DB059BF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10338, &qword_1DB0BC638);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v98 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10340, &qword_1DB0BC640);
  v5 = *(v4 - 8);
  v93 = v4;
  v94 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v76 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10348, &qword_1DB0BC648);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v97 = &v76 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10350, &qword_1DB0BC650);
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v96 = &v76 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10358, &qword_1DB0BC658);
  v86 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v103 = &v76 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10360, &qword_1DB0BC660);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v95 = &v76 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10368, &qword_1DB0BC668);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v101 = &v76 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10370, &qword_1DB0BC670);
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v13 = &v76 - v12;
  v99 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v14 = MEMORY[0x1EEE9AC00](v99);
  v80 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v76 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v76 - v23);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = (&v76 - v28);
  v30 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1DB09475C();
  v31 = v107;
  sub_1DB09E414();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v106);
  }

  v76 = v27;
  v77 = v24;
  v78 = v21;
  v32 = v101;
  v79 = v18;
  v34 = v103;
  v33 = v104;
  v107 = v29;
  v35 = v105;
  v36 = v102;
  v37 = sub_1DB09E0D4();
  v38 = (2 * *(v37 + 16)) | 1;
  v109 = v37;
  v110 = v37 + 32;
  v111 = 0;
  v112 = v38;
  v39 = sub_1DB02846C();
  if (v39 == 7 || v111 != v112 >> 1)
  {
    v44 = sub_1DB09DEA4();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F638, qword_1DB0B9380);
    *v46 = v99;
    sub_1DB09E034();
    sub_1DB09DE84();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    (*(v100 + 8))(v13, v36);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v106);
  }

  if (v39 <= 2u)
  {
    if (v39)
    {
      if (v39 != 1)
      {
        v108 = 2;
        sub_1DB094900();
        sub_1DB09E024();
        v55 = v83;
        v56 = sub_1DB09E0B4();
        v101 = 0;
        v57 = v100;
        v69 = v56;
        (*(v86 + 8))(v34, v55);
        (*(v57 + 8))(v13, v36);
        swift_unknownObjectRelease();
        v70 = v78;
        *v78 = v69;
        swift_storeEnumTagMultiPayload();
        v71 = v70;
        goto LABEL_20;
      }

      v108 = 1;
      sub_1DB094954();
      v48 = v95;
      sub_1DB09E024();
      v49 = v85;
      v65 = sub_1DB09E084();
      v67 = v66;
      v101 = 0;
      (*(v84 + 8))(v48, v49);
      (*(v100 + 8))(v13, v36);
      swift_unknownObjectRelease();
      v68 = v77;
      *v77 = v65;
      v68[1] = v67;
    }

    else
    {
      v108 = 0;
      sub_1DB0949A8();
      sub_1DB09E024();
      v52 = v82;
      sub_1DB09E0A4();
      v54 = v53;
      (*(v81 + 8))(v32, v52);
      (*(v100 + 8))(v13, v36);
      swift_unknownObjectRelease();
      v101 = 0;
      v68 = v76;
      *v76 = v54;
    }

LABEL_19:
    swift_storeEnumTagMultiPayload();
    v71 = v68;
    goto LABEL_20;
  }

  if (v39 <= 4u)
  {
    v40 = v100;
    if (v39 == 3)
    {
      v108 = 3;
      sub_1DB0948AC();
      v41 = v96;
      sub_1DB09E024();
      sub_1DB09D154();
      sub_1DB08E648(&qword_1ECC0F110, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
      v42 = v79;
      v43 = v89;
      sub_1DB09E0C4();
      v101 = 0;
      (*(v87 + 8))(v41, v43);
      (*(v40 + 8))(v13, v36);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v71 = v42;
LABEL_20:
      v72 = v107;
      sub_1DB08E91C(v71, v107, type metadata accessor for AnyODIKnownBinding.BindingContent);
      goto LABEL_21;
    }

    v108 = 4;
    sub_1DB094858();
    v58 = v97;
    sub_1DB09E024();
    v63 = v90;
    v64 = sub_1DB09E094();
    v101 = 0;
    v74 = v64;
    (*(v88 + 8))(v58, v63);
    (*(v40 + 8))(v13, v36);
    swift_unknownObjectRelease();
    v75 = v74 & 1;
    v68 = v80;
    *v80 = v75;
    goto LABEL_19;
  }

  v50 = v100;
  if (v39 != 5)
  {
    v108 = 6;
    sub_1DB0947B0();
    v59 = v98;
    sub_1DB09E024();
    v101 = 0;
    (*(v91 + 8))(v59, v92);
    (*(v50 + 8))(v13, v36);
    swift_unknownObjectRelease();
    v72 = v107;
    swift_storeEnumTagMultiPayload();
LABEL_21:
    v73 = v106;
    goto LABEL_22;
  }

  v108 = 5;
  sub_1DB094804();
  v51 = v33;
  sub_1DB09E024();
  v60 = v35;
  v103 = v13;
  v61 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10390, &qword_1DB0BC678);
  sub_1DB0949FC(&qword_1ECC10398, &qword_1ECC101A0, &unk_1DB0BB4B4, MEMORY[0x1E69E6330]);
  v62 = v93;
  sub_1DB09E0C4();
  v101 = 0;
  (*(v94 + 8))(v51, v62);
  (*(v50 + 8))(v103, v36);
  swift_unknownObjectRelease();
  v72 = v107;
  *v107 = v61;
  swift_storeEnumTagMultiPayload();
  v73 = v106;
  v35 = v60;
LABEL_22:
  sub_1DB08E91C(v72, v35, type metadata accessor for AnyODIKnownBinding.BindingContent);
  return __swift_destroy_boxed_opaque_existential_1Tm(v73);
}

uint64_t sub_1DB05AB6C(uint64_t a1)
{
  v2 = sub_1DB094804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05ABA8(uint64_t a1)
{
  v2 = sub_1DB094804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05ABE4(uint64_t a1)
{
  v2 = sub_1DB094858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AC20(uint64_t a1)
{
  v2 = sub_1DB094858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AC5C()
{
  v1 = *v0;
  v2 = 0x656C62756F44;
  v3 = 0x7961727241;
  if (v1 != 5)
  {
    v3 = 1819047246;
  }

  v4 = 1702125892;
  if (v1 != 3)
  {
    v4 = 1819242306;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E69727453;
  if (v1 != 1)
  {
    v5 = 7630409;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB05AD08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08EE24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB05AD30(uint64_t a1)
{
  v2 = sub_1DB09475C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AD6C(uint64_t a1)
{
  v2 = sub_1DB09475C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05ADA8(uint64_t a1)
{
  v2 = sub_1DB0948AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05ADE4(uint64_t a1)
{
  v2 = sub_1DB0948AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AE20(uint64_t a1)
{
  v2 = sub_1DB0949A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AE5C(uint64_t a1)
{
  v2 = sub_1DB0949A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AE98(uint64_t a1)
{
  v2 = sub_1DB094900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AED4(uint64_t a1)
{
  v2 = sub_1DB094900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AF10(uint64_t a1)
{
  v2 = sub_1DB0947B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AF4C(uint64_t a1)
{
  v2 = sub_1DB0947B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05AF88(uint64_t a1)
{
  v2 = sub_1DB094954();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05AFC4(uint64_t a1)
{
  v2 = sub_1DB094954();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05B030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1DB09D154();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AnyODIKnownBinding(0);
  v47 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  sub_1DAF3523C(a1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  if (swift_dynamicCast())
  {
    *v9 = v51;
LABEL_36:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    sub_1DB08E91C(v9, v15, type metadata accessor for AnyODIKnownBinding.BindingContent);
    sub_1DB08E91C(v15, v48, type metadata accessor for AnyODIKnownBinding);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  if (swift_dynamicCast())
  {
    v16 = *(&v51 + 1);
    *v9 = v51;
    v9[1] = v16;
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    *v9 = v51;
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    (*(v4 + 32))(v9, v6, v3);
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    *v9 = v51;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10148, &qword_1DB0BB1A8);
  if (swift_dynamicCast())
  {
    v17 = v55;
    v18 = swift_allocObject();
    v19 = v18;
    v20 = *(v17 + 16);
    if (!v20)
    {

      v22 = MEMORY[0x1E69E7CC0];
LABEL_35:
      *(v19 + 2) = v22;
      *v9 = v19;
      goto LABEL_36;
    }

    v43 = v18;
    v44 = a1;
    v53 = MEMORY[0x1E69E7CC0];
    v45 = v20;
    sub_1DAF5F6EC(0, v20, 0);
    v21 = 0;
    v22 = v53;
    v46 = v17;
    v23 = v17 + 32;
    while (v21 < *(v46 + 16))
    {
      sub_1DAF3523C(v23, &v51);
      sub_1DAF3523C(&v51, v50);
      v24 = v49;
      sub_1DB05B030(v50, v13);
      if (v24)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v51);

        swift_deallocUninitializedObject();
        goto LABEL_34;
      }

      v49 = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      v53 = v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v19 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        sub_1DAF5F6EC((v25 > 1), v26 + 1, 1);
        v22 = v53;
      }

      ++v21;
      *(v22 + 16) = v19;
      sub_1DB08E91C(v13, v22 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v26, type metadata accessor for AnyODIKnownBinding);
      v23 += 40;
      if (v45 == v21)
      {

        a1 = v44;
        v19 = v43;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_23;
  }

  sub_1DAF4062C(0, &qword_1ECC0E818, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    goto LABEL_36;
  }

  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ELL, 0x80000001DB0CBA50);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v27 = sub_1DB09E474();
  MEMORY[0x1E127FE90](v27);

  MEMORY[0x1E127FE90](0x203A6C617620, 0xE600000000000000);
  v28 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1DB09E234();
  v23 = *(&v51 + 1);
  v49 = v51;
  v19 = "CoreODIEssentials/ArmandDeviceData.swift";
  if (qword_1EE301E08 != -1)
  {
    goto LABEL_38;
  }

LABEL_23:
  v29 = v19 - 32;
  v30 = MEMORY[0x1E69E7CC0];
  v31 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v32 = *(v31 + 16);

  if (v32)
  {
    v33 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v34)
    {
      sub_1DAF409DC(*(v31 + 56) + 32 * v33, &v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v30 = *&v50[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1DAF72EC0(0, *(v30 + 2) + 1, 1, v30);
  }

  v36 = *(v30 + 2);
  v35 = *(v30 + 3);
  if (v36 >= v35 >> 1)
  {
    v30 = sub_1DAF72EC0((v35 > 1), v36 + 1, 1, v30);
  }

  *(v30 + 2) = v36 + 1;
  v37 = &v30[56 * v36];
  *(v37 + 4) = v49;
  *(v37 + 5) = v23;
  *(v37 + 6) = 0xD000000000000028;
  *(v37 + 7) = v29 | 0x8000000000000000;
  strcpy(v37 + 64, "init(inVal:)");
  v37[77] = 0;
  *(v37 + 39) = -5120;
  *(v37 + 10) = 116;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v51 = v30;
  sub_1DAF40D20(&v51, v50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v31;
  sub_1DAF3B11C(v50, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v40 = sub_1DB09D6B4();
  v41 = sub_1DB09D604();
  [v39 initWithDomain:v40 code:-2125 userInfo:v41];

  swift_willThrow();
LABEL_34:
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t sub_1DB05B8C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10410, &qword_1DB0BC6C0);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AnyODIKnownBinding(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB094A9C();
  sub_1DB09E414();
  if (!v2)
  {
    v12 = v15;
    sub_1DB08E648(&qword_1ECC10420, 255, type metadata accessor for AnyODIKnownBinding.BindingContent, &unk_1DB0BB588);
    v13 = v17;
    sub_1DB09E0C4();
    (*(v16 + 8))(v8, v6);
    sub_1DB08E91C(v13, v11, type metadata accessor for AnyODIKnownBinding.BindingContent);
    sub_1DB08E91C(v11, v12, type metadata accessor for AnyODIKnownBinding);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB05BB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB05BBE0(uint64_t a1)
{
  v2 = sub_1DB094A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05BC1C(uint64_t a1)
{
  v2 = sub_1DB094A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB05BC70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10428, &qword_1DB0BC6C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB094A9C();
  sub_1DB09E434();
  type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  sub_1DB08E648(&qword_1ECC10430, 255, type metadata accessor for AnyODIKnownBinding.BindingContent, &unk_1DB0BB560);
  sub_1DB09E194();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DB05BDEC()
{
  sub_1DB09E3A4();
  sub_1DB059844(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05BE2C()
{
  sub_1DB09E3A4();
  sub_1DB059844(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05BE68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  switch(v7)
  {
    case 16:
      v8 = *(v2 + 24);
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
      break;
    case 18:
      v8 = *(v2 + 48);
      v9 = *(v2 + 56);
      v10 = *(v2 + 64);
      break;
    case 17:
      v8 = *v2;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      break;
    default:
LABEL_2:
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB0A04E0;
      *(inited + 32) = 0x646F43726F727265;
      *(inited + 40) = 0xE900000000000065;
      v5 = MEMORY[0x1E69E6540];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 80) = v5;
      *(inited + 48) = -5;
      return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  return sub_1DB055260(v8, v9, v10, a2);
}

uint64_t sub_1DB05BF5C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  if (*(v1 + 8))
  {
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v2 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v2 + 45));
    if (v3)
    {
LABEL_6:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_9;
    }
  }

  sub_1DB09E3C4();
LABEL_9:
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v4 ^ 0x80u]);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v4 + 45));
    if (v5)
    {
LABEL_11:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_14;
    }
  }

  sub_1DB09E3C4();
LABEL_14:
  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v7 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v7 = (v6 + 45);
  }

  return MEMORY[0x1E1280A80](v7);
}

uint64_t sub_1DB05C0C8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v1)
  {
    sub_1DB09D794();
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v7 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v7 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v7);
  sub_1DB09E3C4();
  if (v3)
  {
    sub_1DB09D794();
  }

  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v8 = qword_1DB0BD040[v4 ^ 0x80u];
  }

  else
  {
    v8 = (v4 + 45);
  }

  MEMORY[0x1E1280A80](v8);
  sub_1DB09E3C4();
  if (v5)
  {
    sub_1DB09D794();
  }

  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v9 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05C260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10130, &qword_1DB0BB180);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08ED98();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v32 = 0;
    v33 = 0;
    v34 = -44;
    v35 = 0;
    v36 = 0;
    v37 = -44;
    v38 = 0;
    v39 = 0;
    v40 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v24) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v23 = v32;
    v22 = v33;
    v41 = v34;

    LOBYTE(v24) = 1;
    sub_1DB09E0C4();
    v21 = v6;
    v20 = a2;
    v9 = v32;
    v10 = v33;
    v11 = v34;

    v42 = 2;
    sub_1DB09E0C4();
    (*(v21 + 8))(v8, v5);
    v13 = v29;
    v14 = v30;
    v15 = v31;

    v16 = v22;
    *&v24 = v23;
    *(&v24 + 1) = v22;
    LOBYTE(v25) = v41;
    *(&v25 + 1) = v9;
    *&v26 = v10;
    BYTE8(v26) = v11;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    v28 = v15;
    v17 = v20;
    *(v20 + 64) = v15;
    v18 = v27;
    v17[2] = v26;
    v17[3] = v18;
    v19 = v25;
    *v17 = v24;
    v17[1] = v19;
    sub_1DB08B170(&v24, &v32);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v32 = v23;
    v33 = v16;
    v34 = v41;
    v35 = v9;
    v36 = v10;
    v37 = v11;
    v38 = v13;
    v39 = v14;
    v40 = v15;
  }

  return sub_1DB08EDEC(&v32);
}

uint64_t sub_1DB05C634()
{
  v1 = 0x645F64756F6C6369;
  if (*v0 != 1)
  {
    v1 = 0x4449656C707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x645F73656E757469;
  }
}

uint64_t sub_1DB05C694@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08F060(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB05C6BC(uint64_t a1)
{
  v2 = sub_1DB08ED98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05C6F8(uint64_t a1)
{
  v2 = sub_1DB08ED98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1DB05C734@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  if (result[16])
  {
    *a2 = -40;
  }

  else
  {
    v3 = v2[16];
    v4 = *result;
    if (v4 != 17)
    {
      v3 = -40;
    }

    if (v4 == 18)
    {
      v3 = v2[64];
    }

    if (v4 == 16)
    {
      v3 = v2[40];
    }

    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB05C7DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  if (v7 <= 2)
  {
    if (!*(a1 + 16))
    {
      v8 = *v2;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      goto LABEL_14;
    }

    if (v7 == 2)
    {
      v8 = *(v2 + 24);
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
LABEL_14:

      return sub_1DB055260(v8, v9, v10, a2);
    }

LABEL_2:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v5 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v5;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  if (v7 == 3)
  {
    v8 = *(v2 + 48);
    v9 = *(v2 + 56);
    v10 = *(v2 + 64);
    goto LABEL_14;
  }

  if (v7 != 4)
  {
    goto LABEL_2;
  }

  v11 = *(v2 + 72);
  v12 = *(v2 + 80) | (*(v2 + 81) << 8);

  return sub_1DB055700(v11, v12, a2);
}

uint64_t sub_1DB05C90C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10128, &qword_1DB0BB178);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  v9 = v1[4];
  v22 = v1[3];
  v23 = v9;
  v29 = *(v1 + 40);
  v10 = v1[6];
  v20 = v1[7];
  v21 = v10;
  LODWORD(v10) = *(v1 + 64);
  v16 = v1[9];
  v17 = *(v1 + 80);
  v18 = *(v1 + 81);
  v19 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08ED14();

  sub_1DB09E434();
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC458);
  v11 = v24;
  sub_1DB09E194();
  if (v11)
  {

    return (*(v25 + 8))(v5, v3);
  }

  else
  {
    v14 = v20;
    v13 = v21;
    v15 = v25;

    v26 = v22;
    v27 = v23;
    v28 = v29;
    v30 = 1;

    sub_1DB09E194();

    v26 = v13;
    v27 = v14;
    v28 = v19;
    v30 = 2;

    sub_1DB09E194();

    v26 = v16;
    LOBYTE(v27) = v17;
    BYTE1(v27) = v18;
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DAF4AA8C(&qword_1ECC10038, &qword_1ECC10020, &qword_1DB0BB0E0, &unk_1DB0AC458);
    sub_1DB09E194();
    return (*(v15 + 8))(v5, v3);
  }
}

uint64_t sub_1DB05CC50(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v7 = *(v1 + 81);
  if (*(v1 + 8))
  {
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v2 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v2 + 45));
    if (v3)
    {
LABEL_6:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_9;
    }
  }

  sub_1DB09E3C4();
LABEL_9:
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v4 ^ 0x80u]);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v4 + 45));
    if (v5)
    {
LABEL_11:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_14;
    }
  }

  sub_1DB09E3C4();
LABEL_14:
  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v8 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v8 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v8);
  sub_1DB09E3C4();
  if (!v12)
  {
    MEMORY[0x1E1280A80](v11);
  }

  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v9 = (v7 + 45);
  }

  return MEMORY[0x1E1280A80](v9);
}

uint64_t sub_1DB05CE28@<X0>(void *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10118, &qword_1DB0BB170);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v56 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08ED14();
  sub_1DB09E414();
  if (v2)
  {
    v33 = 0;
    v60 = 0;
    v34 = 212;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v43 = 0uLL;
    v44 = -44;
    *v45 = v59[0];
    *&v45[3] = *(v59 + 3);
    v46 = 0uLL;
    v47 = -44;
    *v48 = *v58;
    *&v48[3] = *&v58[3];
    v49 = v60;
    v50 = v33;
    v51 = v34;
    *&v52[3] = *&v57[3];
    *v52 = *v57;
    v53 = 0;
    v54 = v56;
    v24 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v35) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v32 = v43;
    v31 = v44;

    LOBYTE(v35) = 1;
    sub_1DB09E0C4();
    v29 = a2;
    v30 = v43;
    v10 = v44;

    LOBYTE(v35) = 2;
    sub_1DB09E0C4();
    v28 = v10;
    v33 = *(&v43 + 1);
    v60 = v43;
    v34 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    v40 = 3;
    sub_1DAF4AA8C(&qword_1ECC10028, &qword_1ECC10020, &qword_1DB0BB0E0, &unk_1DB0AC480);
    sub_1DB09E0C4();
    (*(v6 + 8))(v8, v5);
    v27 = v41;
    v11 = v42;
    v26 = HIBYTE(v42);
    v56 = v42;
    v12 = v32;
    v35 = v32;
    v13 = *(&v32 + 1);
    v14 = v31;
    v36[0] = v31;
    v17 = v30;
    v15 = v17 >> 64;
    v16 = v17;
    *&v36[8] = v30;
    v36[24] = v28;
    v18 = v33;
    *&v37 = v60;
    *(&v37 + 1) = v33;
    LOBYTE(v38) = v34;
    *(&v38 + 1) = v41;
    v39 = v42;
    v19 = *v36;
    v20 = v29;
    *v29 = v32;
    v20[1] = v19;
    v21 = *&v36[16];
    v22 = v37;
    v23 = v38;
    *(v20 + 40) = v39;
    v20[3] = v22;
    v20[4] = v23;
    v20[2] = v21;
    sub_1DB08B1A8(&v35, &v43);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *&v43 = v12;
    *(&v43 + 1) = v13;
    v44 = v14;
    v46 = __PAIR128__(v15, v16);
    v47 = v28;
    v49 = v60;
    v50 = v18;
    v51 = v34;
    v53 = v27;
    v54 = v11;
    v24 = v26;
  }

  v55 = v24;
  return sub_1DB08ED68(&v43);
}

uint64_t sub_1DB05D450()
{
  v1 = 0x726556646C697562;
  v2 = 1684628597;
  if (*v0 != 2)
  {
    v2 = 1684628325;
  }

  if (*v0)
  {
    v1 = 0x6C6169726573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB05D4C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08F184(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB05D4EC(uint64_t a1)
{
  v2 = sub_1DB08ED14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05D528(uint64_t a1)
{
  v2 = sub_1DB08ED14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1DB05D564@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  if (result[16])
  {
    *a2 = -40;
  }

  else
  {
    v3 = v2[16];
    v4 = v2[40];
    v5 = v2[64];
    v6 = v2[81];
    v7 = *result;
    if (v7 != 4)
    {
      v6 = -40;
    }

    if (v7 != 3)
    {
      v5 = v6;
    }

    if (v7 != 2)
    {
      v4 = -40;
    }

    if (*result)
    {
      v3 = v4;
    }

    if (*result > 2u)
    {
      v3 = v5;
    }

    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB05D5F4()
{
  sub_1DB09E3A4();
  sub_1DB05CC50(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05D638()
{
  sub_1DB09E3A4();
  sub_1DB05CC50(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05D678@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  if (v7 == 1)
  {
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    goto LABEL_11;
  }

  if (v7 == 5)
  {
    v10 = *(v2 + 40);
    v11 = *(v2 + 48);
    v12 = *(v2 + 56);
LABEL_11:

    return sub_1DB055260(v10, v11, v12, a2);
  }

  if (v7 != 4)
  {
LABEL_2:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v5 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v5;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  v8 = *v2;
  v9 = *(v2 + 8) | (*(v2 + 9) << 8);

  return sub_1DB0553F8(v8, v9, a2);
}

uint64_t sub_1DB05D790(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10108, &qword_1DB0BB168);
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v9 = v1[3];
  v19 = v1[2];
  v20 = v9;
  v26 = *(v1 + 32);
  v10 = v1[5];
  v17 = v1[6];
  v18 = v10;
  HIDWORD(v16) = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EC90();
  sub_1DB09E434();
  v23 = v6;
  LOBYTE(v24) = v7;
  BYTE1(v24) = v8;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100F8, &qword_1DB0BB160);
  sub_1DAF4AA8C(&qword_1ECC10110, &qword_1ECC100F8, &qword_1DB0BB160, &unk_1DB0AC458);
  v11 = v22;
  sub_1DB09E194();
  if (v11)
  {
    return (*(v21 + 8))(v5, v3);
  }

  v13 = v17;
  v14 = v18;
  v15 = v21;
  v23 = v19;
  v24 = v20;
  v25 = v26;
  v27 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC458);
  sub_1DB09E194();

  v23 = v14;
  v24 = v13;
  v25 = BYTE4(v16);
  v27 = 2;

  sub_1DB09E194();

  return (*(v15 + 8))(v5, v3);
}

uint64_t sub_1DB05DA5C(uint64_t a1)
{
  v2 = *(v1 + 9);
  v3 = v1[3];
  v4 = *(v1 + 32);
  v5 = v1[6];
  v6 = *(v1 + 56);
  if (*(v1 + 8) == 1)
  {
    sub_1DB09E3C4();
  }

  else
  {
    v7 = *v1;
    sub_1DB09E3C4();
    MEMORY[0x1E1280AA0](v7);
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v2 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v2 + 45));
    if (v3)
    {
LABEL_6:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_9;
    }
  }

  sub_1DB09E3C4();
LABEL_9:
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v4 ^ 0x80u]);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v4 + 45));
    if (v5)
    {
LABEL_11:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_14;
    }
  }

  sub_1DB09E3C4();
LABEL_14:
  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v8 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v8 = (v6 + 45);
  }

  return MEMORY[0x1E1280A80](v8);
}

uint64_t sub_1DB05DBC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[6];
  v7 = *(v0 + 56);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2 != 1)
  {
    MEMORY[0x1E1280AA0](v1);
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v8 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v8 = (v3 + 45);
  }

  MEMORY[0x1E1280A80](v8);
  sub_1DB09E3C4();
  if (v4)
  {
    sub_1DB09D794();
  }

  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v9 = (v5 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  sub_1DB09E3C4();
  if (v6)
  {
    sub_1DB09D794();
  }

  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v10 = (v7 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05DD60@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100E8, &qword_1DB0BB158);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v37 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EC90();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v29 = 0;
    LOBYTE(v30) = v37;
    BYTE1(v30) = -44;
    v31 = 0;
    v32 = 0;
    v33 = -44;
    v34 = 0;
    v35 = 0;
    v36 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100F8, &qword_1DB0BB160);
    LOBYTE(v23) = 0;
    sub_1DAF4AA8C(&qword_1ECC10100, &qword_1ECC100F8, &qword_1DB0BB160, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v22 = v29;
    v9 = BYTE1(v30);
    v37 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v23) = 1;
    v21 = sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v20 = v6;
    v19 = a2;
    v11 = v29;
    v10 = v30;
    v12 = v31;

    v38 = 2;
    sub_1DB09E0C4();
    (*(v20 + 8))(v8, v5);
    v15 = v26;
    v14 = v27;
    v16 = v28;

    *&v23 = v22;
    LODWORD(v21) = v37;
    BYTE8(v23) = v37;
    BYTE9(v23) = v9;
    *&v24 = v11;
    *(&v24 + 1) = v10;
    v25[0] = v12;
    *&v25[8] = v15;
    *&v25[16] = v14;
    v25[24] = v16;
    v17 = v19;
    v19[2] = *v25;
    *(v17 + 41) = *&v25[9];
    v18 = v24;
    *v17 = v23;
    v17[1] = v18;
    sub_1DB08B1E0(&v23, &v29);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v29 = v22;
    LOBYTE(v30) = v21;
    BYTE1(v30) = v9;
    v31 = v11;
    v32 = v10;
    v33 = v12;
    v34 = v15;
    v35 = v14;
    v36 = v16;
  }

  return sub_1DB08ECE4(&v29);
}

uint64_t sub_1DB05E164()
{
  v1 = 1684628851;
  if (*v0 != 1)
  {
    v1 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684628325;
  }
}

uint64_t sub_1DB05E1B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08F2E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB05E1D8(uint64_t a1)
{
  v2 = sub_1DB08EC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05E214(uint64_t a1)
{
  v2 = sub_1DB08EC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1DB05E250@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  if (result[16])
  {
    *a2 = -40;
  }

  else
  {
    v3 = v2[9];
    v4 = *result;
    if (v4 != 4)
    {
      v3 = -40;
    }

    if (v4 == 5)
    {
      v3 = v2[56];
    }

    if (v4 == 1)
    {
      v3 = v2[32];
    }

    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB05E2D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[3];
  v4 = v0[6];
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2 != 1)
  {
    MEMORY[0x1E1280AA0](v1);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (v3)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (v4)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05E40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684628851 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB05E494(uint64_t a1)
{
  v2 = sub_1DB08E778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05E4D0(uint64_t a1)
{
  v2 = sub_1DB08E778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *sub_1DB05E50C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v3 = -40;
  if ((result[16] & 1) == 0 && *result == 1)
  {
    v3 = *(v2 + 16);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DB05E530@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 16) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v9 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v9;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  else
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);

    return sub_1DB055260(v3, v4, v5, a2);
  }
}

uint64_t sub_1DB05E684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  if (v7 <= 8)
  {
    if (v7 == 6)
    {
      v8 = *v2;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      goto LABEL_14;
    }

    if (v7 == 8)
    {
      v8 = *(v2 + 24);
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
LABEL_14:

      return sub_1DB055260(v8, v9, v10, a2);
    }

LABEL_2:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v5 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v5;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  if (v7 == 9)
  {
    v8 = *(v2 + 48);
    v9 = *(v2 + 56);
    v10 = *(v2 + 64);
    goto LABEL_14;
  }

  if (v7 != 15)
  {
    goto LABEL_2;
  }

  v11 = *(v2 + 65) | (*(v2 + 66) << 8);

  return sub_1DB055578(v11, a2);
}

uint64_t sub_1DB05E7B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100E0, &qword_1DB0BB150);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  v9 = v1[4];
  v22 = v1[3];
  v23 = v9;
  v29 = *(v1 + 40);
  v10 = v1[6];
  v20 = v1[7];
  v21 = v10;
  LODWORD(v10) = *(v1 + 64);
  v17 = *(v1 + 65);
  v18 = *(v1 + 66);
  v19 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EC0C();

  sub_1DB09E434();
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC458);
  v11 = v24;
  sub_1DB09E194();
  if (v11)
  {

    return (*(v25 + 8))(v5, v3);
  }

  else
  {
    v14 = v20;
    v13 = v21;
    v15 = v25;

    v26 = v22;
    v27 = v23;
    v28 = v29;
    v30 = 1;

    sub_1DB09E194();

    v26 = v13;
    v27 = v14;
    v28 = v19;
    v30 = 2;

    sub_1DB09E194();

    LOBYTE(v26) = v17;
    BYTE1(v26) = v18;
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DAF4AA8C(&qword_1ECC0FFA8, &qword_1ECC0FF90, &qword_1DB0BB088, &unk_1DB0AC458);
    sub_1DB09E194();
    return (*(v15 + 8))(v5, v3);
  }
}

uint64_t sub_1DB05EAE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v12 = *(v1 + 64);
  v6 = *(v1 + 65);
  v7 = *(v1 + 66);
  if (*(v1 + 8))
  {
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v2 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v2 + 45));
    if (v3)
    {
LABEL_6:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_9;
    }
  }

  sub_1DB09E3C4();
LABEL_9:
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v8 = qword_1DB0BD040[v4 ^ 0x80u];
  }

  else
  {
    v8 = (v4 + 45);
  }

  MEMORY[0x1E1280A80](v8);
  sub_1DB09E3C4();
  if (v5)
  {
    sub_1DB09D794();
  }

  if ((v12 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v12 ^ 0x80u];
  }

  else
  {
    v9 = (v12 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  if (v6 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v10 = (v7 + 45);
  }

  return MEMORY[0x1E1280A80](v10);
}

uint64_t sub_1DB05ECB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100D0, &qword_1DB0BB148);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EC0C();
  sub_1DB09E414();
  if (v2)
  {
    v24 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v28 = 0uLL;
    v29 = -44;
    v30 = 0uLL;
    v31 = -44;
    v32 = v24;
    v33 = -44;
    v34 = -11262;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v25) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v23 = v28;
    v35 = v29;

    LOBYTE(v25) = 1;
    sub_1DB09E0C4();
    v22 = v28;
    v21 = v29;

    LOBYTE(v25) = 2;
    sub_1DB09E0C4();
    v20 = a2;
    v24 = v28;
    v10 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    v36 = 3;
    sub_1DAF4AA8C(&qword_1ECC0FF98, &qword_1ECC0FF90, &qword_1DB0BB088, &unk_1DB0AC480);
    sub_1DB09E0C4();
    (*(v6 + 8))(v8, v5);
    v19 = v37;
    v18 = v38;
    v11 = v23;
    v25 = v23;
    v12 = v35;
    v26[0] = v35;
    v13 = v22;
    *&v26[8] = v22;
    v14 = v21;
    v26[24] = v21;
    *v27 = v24;
    v27[16] = v10;
    v27[17] = v37;
    v27[18] = v38;
    v15 = v24;
    v16 = v20;
    *(v20 + 32) = *&v26[16];
    *(v16 + 48) = v15;
    v17 = *v26;
    *v16 = v25;
    *(v16 + 16) = v17;
    *(v16 + 63) = *&v27[15];
    sub_1DB08B218(&v25, &v28);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v32 = v24;
    v33 = v10;
    LOBYTE(v34) = v19;
    HIBYTE(v34) = v18;
  }

  return sub_1DB08EC60(&v28);
}

uint64_t sub_1DB05F198()
{
  v1 = 0x7265626D756ELL;
  v2 = 1769172329;
  if (*v0 != 2)
  {
    v2 = 0x6572506D69537369;
  }

  if (*v0)
  {
    v1 = 0x6469636369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB05F20C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08F400(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB05F234(uint64_t a1)
{
  v2 = sub_1DB08EC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05F270(uint64_t a1)
{
  v2 = sub_1DB08EC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1DB05F2AC@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  if (result[16])
  {
    *a2 = -40;
  }

  else
  {
    v3 = v2[16];
    v4 = v2[40];
    v5 = v2[64];
    v6 = v2[66];
    v7 = *result;
    if (v7 != 15)
    {
      v6 = -40;
    }

    if (v7 != 9)
    {
      v5 = v6;
    }

    if (v7 != 8)
    {
      v4 = -40;
    }

    if (v7 != 6)
    {
      v3 = v4;
    }

    if (*result > 8u)
    {
      v3 = v5;
    }

    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB05F33C()
{
  sub_1DB09E3A4();
  sub_1DB05EAE8(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05F380()
{
  sub_1DB09E3A4();
  sub_1DB05EAE8(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05F3C0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v17 = v7;
  v18 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  v11 = *v5;
  v12 = v5[1];
  v13 = *(v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();

  sub_1DB09E434();
  v19 = v11;
  v20 = v12;
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC458);
  v14 = v17;
  sub_1DB09E194();

  return (*(v18 + 8))(v10, v14);
}

uint64_t sub_1DB05F574@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v16 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB09E414();
  if (!v6)
  {
    v12 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC480);
    sub_1DB09E0C4();
    (*(v19 + 8))(v11, v9);
    v13 = v18;
    *v12 = v17;
    *(v12 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB05F75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C61746144636170 && a2 == 0xEB00000000747369)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB05F7E8(uint64_t a1)
{
  v2 = sub_1DB08E7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05F824(uint64_t a1)
{
  v2 = sub_1DB08E7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *sub_1DB05F860@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v3 = -40;
  if ((result[16] & 1) == 0 && *result == 7)
  {
    v3 = *(v2 + 16);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DB05F884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 16) != 7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v9 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v9;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  else
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);

    return sub_1DB055260(v3, v4, v5, a2);
  }
}

uint64_t sub_1DB05F9D8(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  return ArmandDeviceDataErrorCode.hash(into:)();
}

id sub_1DB05FA5C(void *a1)
{
  [a1 coordinate];
  v4 = round(v3 * 1000.0) / 1000.0;
  [a1 coordinate];
  *(v1 + 24) = v4;
  *(v1 + 32) = -11520;
  *(v1 + 40) = round(v5 * 1000.0) / 1000.0;
  *(v1 + 48) = -11520;
  [a1 horizontalAccuracy];
  *(v1 + 56) = v6;
  *(v1 + 64) = -11520;
  [a1 verticalAccuracy];
  *(v1 + 72) = v7;
  *(v1 + 80) = -11520;
  result = [a1 altitude];
  *(v1 + 88) = v9;
  *(v1 + 96) = -11520;
  return result;
}

char sub_1DB05FB24@<W0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*a1 == 10)
    {
      v12 = v2[16];
      goto LABEL_14;
    }

    if (*a1 == 11)
    {
      v12 = v2[18];
LABEL_14:
      *a2 = v12;
      return a1;
    }

LABEL_12:
    v12 = -40;
    goto LABEL_14;
  }

  v5 = v2[33];
  v6 = v2[49];
  v7 = v2[65];
  v8 = v2[81];
  v9 = v2[97];
  v10 = *(a1 + 8);

  v11._countAndFlagsBits = v4;
  v11._object = v10;
  LOBYTE(a1) = ODILocationBindingsName.init(rawValue:)(v11);
  if (v14 > 2u)
  {
    if (v14 == 3)
    {
      *a2 = v8;
      return a1;
    }

    if (v14 == 4)
    {
      *a2 = v9;
      return a1;
    }

    goto LABEL_12;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      *a2 = v6;
    }

    else
    {
      *a2 = v7;
    }
  }

  else
  {
    *a2 = v5;
  }

  return a1;
}

uint64_t sub_1DB05FC1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 32))
  {
    v30 = *(v2 + 24);
    v31 = *(v2 + 40);
    v27 = *(v2 + 32);
    v28 = *(v2 + 48);
    v25 = *(v2 + 33);
    v26 = *(v2 + 49);
    v29 = *(v2 + 56);
    v24 = *(v2 + 64);
    v5 = *(v2 + 65);
    v6 = *(v2 + 72);
    v7 = *(v2 + 80);
    v8 = *(v2 + 81);
    v9 = *(v2 + 88);
    v10 = *(v2 + 96);
    v11 = *(v2 + 97);
    v12 = *(a1 + 24);

    v13._countAndFlagsBits = v3;
    v13._object = v12;
    ODILocationBindingsName.init(rawValue:)(v13);
    if (v32 <= 2u)
    {
      if (!v32)
      {
        return sub_1DB055870(v30, v27 | (v25 << 8), a2);
      }

      if (v32 == 1)
      {
        return sub_1DB055870(v31, v28 | (v26 << 8), a2);
      }

      return sub_1DB055870(v29, v24 | (v5 << 8), a2);
    }

    if (v32 == 3)
    {
      return sub_1DB055870(v6, v7 | (v8 << 8), a2);
    }

    if (v32 == 4)
    {
      return sub_1DB055870(v9, v10 | (v11 << 8), a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v23 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v23;
    *(inited + 48) = -5;
    v22 = a2;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, v22);
  }

  if (*(a1 + 16) == 10)
  {
    v16 = *v2;
    v17 = *(v2 + 8);
    v18 = *(v2 + 16);

    return sub_1DB055260(v16, v17, v18, a2);
  }

  else
  {
    if (*(a1 + 16) != 11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB0A04E0;
      *(inited + 32) = 0x646F43726F727265;
      *(inited + 40) = 0xE900000000000065;
      v21 = MEMORY[0x1E69E6540];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 80) = v21;
      *(inited + 48) = -5;
      v22 = a2;
      return ODIBindingsDict.init(dictionaryLiteral:)(inited, v22);
    }

    v15 = *(v2 + 17) | (*(v2 + 18) << 8);

    return sub_1DB055578(v15, a2);
  }
}

uint64_t sub_1DB05FED8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100C8, &qword_1DB0BB140);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = *(v1 + 16);
  v41 = *(v1 + 17);
  v35 = *(v1 + 18);
  v34 = v1[3];
  v9 = *(v1 + 32);
  v32 = *(v1 + 33);
  v33 = v9;
  v29 = v1[5];
  v10 = *(v1 + 48);
  v30 = *(v1 + 49);
  v31 = v10;
  v26 = v1[7];
  v11 = *(v1 + 64);
  v27 = *(v1 + 65);
  v28 = v11;
  v23 = v1[9];
  v12 = *(v1 + 80);
  v24 = *(v1 + 81);
  v25 = v12;
  v20 = v1[11];
  v13 = *(v1 + 96);
  v21 = *(v1 + 97);
  v22 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EB88();

  sub_1DB09E434();
  v38 = v7;
  v39 = v6;
  v40 = v8;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC458);
  v14 = v36;
  sub_1DB09E194();
  if (v14)
  {

    return (*(v37 + 8))(v5, v3);
  }

  else
  {
    v16 = v32;
    v17 = v33;
    v18 = v34;

    LOBYTE(v38) = v41;
    BYTE1(v38) = v35;
    v42 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DAF4AA8C(&qword_1ECC0FFA8, &qword_1ECC0FF90, &qword_1DB0BB088, &unk_1DB0AC458);
    sub_1DB09E194();
    v38 = v18;
    LOBYTE(v39) = v17;
    BYTE1(v39) = v16;
    v42 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10050, &qword_1DB0BB0F8);
    sub_1DAF4AA8C(&qword_1ECC10068, &qword_1ECC10050, &qword_1DB0BB0F8, &unk_1DB0AC458);
    sub_1DB09E194();
    v19 = v37;
    v38 = v29;
    LOBYTE(v39) = v31;
    BYTE1(v39) = v30;
    v42 = 3;
    sub_1DB09E194();
    v38 = v26;
    LOBYTE(v39) = v28;
    BYTE1(v39) = v27;
    v42 = 4;
    sub_1DB09E194();
    v38 = v23;
    LOBYTE(v39) = v25;
    BYTE1(v39) = v24;
    v42 = 5;
    sub_1DB09E194();
    v38 = v20;
    LOBYTE(v39) = v22;
    BYTE1(v39) = v21;
    v42 = 6;
    sub_1DB09E194();
    return (*(v19 + 8))(v5, v3);
  }
}

uint64_t sub_1DB060374(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 18);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  v16 = *(v1 + 40);
  v12 = *(v1 + 49);
  v13 = *(v1 + 48);
  v19 = *(v1 + 56);
  v14 = *(v1 + 65);
  v15 = *(v1 + 64);
  v17 = *(v1 + 81);
  v18 = *(v1 + 80);
  v22 = *(v1 + 72);
  v23 = *(v1 + 88);
  v20 = *(v1 + 97);
  v21 = *(v1 + 96);
  if (*(v1 + 8))
  {
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v9 = (v3 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  if (v4 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v10 = (v5 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  sub_1DB055C74(a1, v6, v7 | (v8 << 8));
  sub_1DB055C74(a1, v16, v13 | (v12 << 8));
  sub_1DB055C74(a1, v19, v15 | (v14 << 8));
  sub_1DB055C74(a1, v22, v18 | (v17 << 8));

  return sub_1DB055C74(a1, v23, v21 | (v20 << 8));
}

uint64_t sub_1DB06055C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100B8, &qword_1DB0BB138);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v101 = 1;
  v98 = 1;
  v95 = 1;
  v92 = 1;
  v89 = 1;
  v9 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB08EB88();
  sub_1DB09E414();
  if (v2)
  {
    v48 = v2;
    v45 = 0;
    v46 = 0;
    v49 = 0;
    v105 = 2;
    v44 = 212;
    v104 = 212;
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v60 = 0uLL;
    v61 = -44;
    v62 = v105;
    v63 = -44;
    v64 = v102;
    v65 = v103;
    v66 = 0;
    v67 = v101;
    v68 = -44;
    v69 = v99;
    v70 = v100;
    v71 = v49;
    v72 = v98;
    v73 = -44;
    v74 = v96;
    v75 = v97;
    v76 = v46;
    v77 = v95;
    v78 = v104;
    v79 = v93;
    v80 = v94;
    v81 = v45;
    v82 = v92;
    v83 = v44;
    v85 = v91;
    v84 = v90;
    v86 = 0;
    v87 = v89;
    v10 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v50) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v42 = v6;
    v43 = v60;
    v12 = v61;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    LOBYTE(v50) = 1;
    sub_1DAF4AA8C(&qword_1ECC0FF98, &qword_1ECC0FF90, &qword_1DB0BB088, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v105 = v60;
    v41 = BYTE1(v60);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10050, &qword_1DB0BB0F8);
    LOBYTE(v50) = 2;
    sub_1DAF4AA8C(&qword_1ECC10058, &qword_1ECC10050, &qword_1DB0BB0F8, &unk_1DB0AC480);
    v48 = v13;
    sub_1DB09E0C4();
    v14 = v105;
    v40 = v60;
    v39 = BYTE9(v60);
    v101 = BYTE8(v60);
    LOBYTE(v50) = 3;
    sub_1DB09E0C4();
    v37 = a2;
    v15 = v60;
    v38 = BYTE9(v60);
    v98 = BYTE8(v60);
    LOBYTE(v50) = 4;
    sub_1DB09E0C4();
    v49 = v15;
    v16 = v14;
    v36 = v12;
    v17 = v60;
    v18 = BYTE9(v60);
    v95 = BYTE8(v60);
    LOBYTE(v50) = 5;
    sub_1DB09E0C4();
    v46 = v17;
    v104 = v18;
    v45 = v60;
    v44 = BYTE9(v60);
    v92 = BYTE8(v60);
    v57 = 6;
    sub_1DB09E0C4();
    v48 = 0;
    (*(v42 + 8))(v8, v5);
    v33 = v58;
    v32 = HIBYTE(v59);
    v89 = v59;
    v50 = v43;
    LOBYTE(v51) = v36;
    BYTE1(v51) = v16;
    BYTE2(v51) = v41;
    *(&v51 + 1) = v40;
    LODWORD(v42) = v101;
    LOBYTE(v52) = v101;
    v19 = v38;
    BYTE1(v52) = v39;
    *(&v52 + 1) = v49;
    v35 = v98;
    LOBYTE(v53) = v98;
    BYTE1(v53) = v38;
    v20 = v45;
    v21 = v46;
    *(&v53 + 1) = v46;
    v34 = v95;
    LOBYTE(v54) = v95;
    LOBYTE(v13) = v104;
    BYTE1(v54) = v104;
    *(&v54 + 1) = v45;
    v22 = v92;
    LOBYTE(v55) = v92;
    v23 = v44;
    BYTE1(v55) = v44;
    *(&v55 + 1) = v58;
    v24 = v59;
    v56 = v59;
    v25 = v51;
    v26 = v37;
    *v37 = v43;
    v26[1] = v25;
    v27 = v52;
    v28 = v53;
    v29 = v54;
    v30 = v55;
    *(v26 + 48) = v56;
    v26[4] = v29;
    v26[5] = v30;
    v26[2] = v27;
    v26[3] = v28;
    sub_1DB08B250(&v50, &v60);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v60 = v43;
    v61 = v36;
    v62 = v105;
    v63 = v41;
    v66 = v40;
    v67 = v42;
    v68 = v39;
    v71 = v49;
    v72 = v35;
    v73 = v19;
    v76 = v21;
    v77 = v34;
    v78 = v13;
    v81 = v20;
    v82 = v22;
    v83 = v23;
    v86 = v33;
    v87 = v24;
    v10 = v32;
  }

  v88 = v10;
  return sub_1DB08EBDC(&v60);
}

uint64_t sub_1DB060D8C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0x656475746974616CLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x61636F6C5F737067;
    }
  }

  else
  {
    v2 = 0x6564757469746C61;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000012;
    if (v1 == 3)
    {
      v3 = 0x64757469676E6F6CLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB060E84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08F560(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB060EAC(uint64_t a1)
{
  v2 = sub_1DB08EB88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB060EE8(uint64_t a1)
{
  v2 = sub_1DB08EB88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB060F5C()
{
  sub_1DB09E3A4();
  sub_1DB060374(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB060FA0()
{
  sub_1DB09E3A4();
  sub_1DB060374(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB060FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFA0, &qword_1DB0BB090);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E820();
  sub_1DB09E434();
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
  sub_1DAF4AA8C(&qword_1ECC0FFA8, &qword_1ECC0FF90, &qword_1DB0BB088, &unk_1DB0AC458);
  sub_1DB09E194();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB06116C()
{
  v1 = v0[1];
  if (*v0 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v2 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v2 = (v1 + 45);
  }

  return MEMORY[0x1E1280A80](v2);
}

uint64_t sub_1DB0611F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB09E3A4();
  if (v1 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v3 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v3);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB0612A0@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF80, &qword_1DB0BB080);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E820();
  sub_1DB09E414();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DAF4AA8C(&qword_1ECC0FF98, &qword_1ECC0FF90, &qword_1DB0BB088, &unk_1DB0AC480);
    sub_1DB09E0C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB061468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DB0CC020 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB09E254();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB0614FC(uint64_t a1)
{
  v2 = sub_1DB08E820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB061538(uint64_t a1)
{
  v2 = sub_1DB08E820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB061574@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 16) & 1 | (*result != 12))
  {
    v3 = -40;
  }

  else
  {
    v3 = *(v2 + 1);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DB0615A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 16) != 12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v7 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v7;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  else
  {
    v3 = *v2;

    return sub_1DB055578(v3, a2);
  }
}

uint64_t sub_1DB0616A4()
{
  v1 = *v0;
  sub_1DB09E3A4();
  if (v1 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB061724(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v3 = (v2 + 45);
  }

  return MEMORY[0x1E1280A80](v3);
}

uint64_t sub_1DB0617B8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v1)
  {
    sub_1DB09D794();
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v3 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v3);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB061880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB061908(uint64_t a1)
{
  v2 = sub_1DB08E874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB061944(uint64_t a1)
{
  v2 = sub_1DB08E874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *sub_1DB061980@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v3 = -40;
  if ((result[16] & 1) == 0 && *result == 14)
  {
    v3 = *(v2 + 16);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DB0619A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 16) != 14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v9 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v9;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  else
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);

    return sub_1DB055260(v3, v4, v5, a2);
  }
}

uint64_t sub_1DB061AF8()
{
  v1 = *(v0 + 8);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v1)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB061B78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);

    sub_1DAFCE348(v4, v3, a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v7 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v7;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }
}

uint64_t sub_1DB061C58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E238, &qword_1DB0A01D0);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  if (*(a1 + 16) == 1)
  {
    v9 = *v2;
    if (v9 && (v11 = *a1, v10 = *(a1 + 8), v12 = *(v9 + 16), , v12) && (v13 = sub_1DAF35210(v11, v10), (v14 & 1) != 0))
    {
      v15 = v13;
      v16 = *(v9 + 56);
      v17 = type metadata accessor for AnyODIKnownBinding(0);
      v18 = *(v17 - 8);
      sub_1DB08E6B0(v16 + *(v18 + 72) * v15, v8, type metadata accessor for AnyODIKnownBinding);
      (*(v18 + 56))(v8, 0, 1, v17);
      sub_1DAF40AEC(v8, &qword_1ECC0E238, &qword_1DB0A01D0);

      v19 = -45;
    }

    else
    {
      v20 = type metadata accessor for AnyODIKnownBinding(0);
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      sub_1DAF40AEC(v8, &qword_1ECC0E238, &qword_1DB0A01D0);

      v19 = -44;
    }
  }

  else
  {
    v19 = -40;
  }

  *a2 = v19;
  return result;
}

uint64_t sub_1DB061E4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFE8, &qword_1DB0BB0B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E8C8();

  sub_1DB09E434();
  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFD8, &qword_1DB0BB0B0);
  sub_1DAF4AA8C(&qword_1ECC0FFF0, &qword_1ECC0FFD8, &qword_1DB0BB0B0, &unk_1DB0AC458);
  sub_1DB09E194();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB061FF8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (*v2)
  {
    sub_1DB09E3C4();
    sub_1DB084210(a1, v4);
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v6 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v6 = (v5 + 45);
  }

  return MEMORY[0x1E1280A80](v6);
}

uint64_t sub_1DB062084()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v1)
  {
    sub_1DB084210(v5, v1);
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v3 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v3);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB062130@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFC8, &qword_1DB0BB0A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  sub_1DAF3F644(MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E8C8();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFD8, &qword_1DB0BB0B0);
    sub_1DAF4AA8C(&qword_1ECC0FFE0, &qword_1ECC0FFD8, &qword_1DB0BB0B0, &unk_1DB0AC480);
    sub_1DB09E0C4();
    (*(v5 + 8))(v7, v4);
    v9 = v12;
    v10 = v13;

    v11 = v14;
    *v14 = v9;
    *(v11 + 8) = v10;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1DB062340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DB0CC040 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB09E254();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB0623D4(uint64_t a1)
{
  v2 = sub_1DB08E8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB062410(uint64_t a1)
{
  v2 = sub_1DB08E8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB06248C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v1)
  {
    sub_1DB084210(v3, v1);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB06250C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (*(a1 + 32) == 1)
  {
    v5 = *v2;
    v6 = v2[1];
    v23 = v2[3];
    v24 = v2[2];
    v7 = *(v2 + 1);
    v8 = v2[16];
    v9 = v2[17];
    v10 = *(v2 + 3);
    v11 = v2[32];
    v12 = v2[33];
    v13 = *(a1 + 24);

    v14._countAndFlagsBits = v4;
    v14._object = v13;
    ODIDeviceSettingsBindingsName.init(rawValue:)(v14);
    if (v26 > 2u)
    {
      if (v26 - 5 >= 2)
      {
        if (v26 == 3)
        {
          v21 = v8 | (v9 << 8);
          v22 = v7;
        }

        else
        {
          v21 = v11 | (v12 << 8);
          v22 = v10;
        }

        result = sub_1DB055700(v22, v21, &v27);
        goto LABEL_17;
      }
    }

    else
    {
      if (!v26)
      {
        v15 = v5 | (v6 << 8);
        goto LABEL_14;
      }

      if (v26 == 1)
      {
        v15 = v24 | (v23 << 8);
LABEL_14:
        result = sub_1DB055578(v15, &v27);
        goto LABEL_17;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v20 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v20;
    *(inited + 48) = -5;
    result = ODIBindingsDict.init(dictionaryLiteral:)(inited, &v27);
LABEL_17:
    v3 = a2;
    goto LABEL_18;
  }

  if (*(a1 + 16) == 13)
  {
    result = sub_1DB055578(v2[34] | (v2[35] << 8), &v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1DB0A04E0;
    *(v17 + 32) = 0x646F43726F727265;
    *(v17 + 40) = 0xE900000000000065;
    v18 = MEMORY[0x1E69E6540];
    *(v17 + 72) = MEMORY[0x1E69E6530];
    *(v17 + 80) = v18;
    *(v17 + 48) = -5;
    result = ODIBindingsDict.init(dictionaryLiteral:)(v17, &v27);
  }

LABEL_18:
  *v3 = v27;
  return result;
}

char sub_1DB062720@<W0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  if (*(a1 + 16) == 1)
  {
    v5 = v2[1];
    v6 = v2[3];
    v7 = v2[17];
    v8 = v2[33];
    v9 = *(a1 + 8);

    v10._countAndFlagsBits = v4;
    v10._object = v9;
    LOBYTE(a1) = ODIDeviceSettingsBindingsName.init(rawValue:)(v10);
    if (v12 > 2u)
    {
      if (v12 - 5 < 2)
      {
        goto LABEL_10;
      }

      if (v12 == 3)
      {
        v5 = v7;
      }

      else
      {
        v5 = v8;
      }
    }

    else if (v12)
    {
      if (v12 == 1)
      {
        v5 = v6;
        goto LABEL_14;
      }

LABEL_10:
      v5 = -40;
    }
  }

  else if (*a1 == 13)
  {
    v5 = v2[35];
  }

  else
  {
    v5 = -40;
  }

LABEL_14:
  *a2 = v5;
  return a1;
}

uint64_t sub_1DB0627F4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10030, &qword_1DB0BB0E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v26 = *(v1 + 2);
  v22 = *(v1 + 3);
  v21 = *(v1 + 1);
  v9 = *(v1 + 16);
  v19 = *(v1 + 17);
  v20 = v9;
  v16 = *(v1 + 3);
  v10 = *(v1 + 32);
  v17 = *(v1 + 33);
  v18 = v10;
  LODWORD(v6) = *(v1 + 35);
  v14 = *(v1 + 34);
  v15 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E984();
  sub_1DB09E434();
  LOWORD(v23) = v8;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
  sub_1DAF4AA8C(&qword_1ECC0FFA8, &qword_1ECC0FF90, &qword_1DB0BB088, &unk_1DB0AC458);
  sub_1DB09E194();
  if (!v2)
  {
    v12 = v20;
    v13 = v21;
    LOBYTE(v23) = v26;
    BYTE1(v23) = v22;
    v27 = 1;
    sub_1DB09E194();
    v23 = v13;
    v24 = v12;
    v25 = v19;
    v27 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DAF4AA8C(&qword_1ECC10038, &qword_1ECC10020, &qword_1DB0BB0E0, &unk_1DB0AC458);
    sub_1DB09E194();
    v23 = v16;
    v24 = v18;
    v25 = v17;
    v27 = 3;
    sub_1DB09E194();
    LOBYTE(v23) = v14;
    BYTE1(v23) = v15;
    v27 = 4;
    sub_1DB09E194();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DB062B54()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v14 = *(v0 + 8);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v6 = *(v0 + 33);
  v7 = *(v0 + 34);
  v8 = *(v0 + 35);
  if (*v0 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v9 = (v1 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  if (v2 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v3 ^ 0x80u]);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v3 + 45));
    if (!v4)
    {
LABEL_10:
      sub_1DB09E3C4();
      MEMORY[0x1E1280A80](v14);
      goto LABEL_13;
    }
  }

  sub_1DB09E3C4();
LABEL_13:
  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v10 = (v5 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  sub_1DB09E3C4();
  if (!v16)
  {
    MEMORY[0x1E1280A80](v15);
  }

  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v11 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  if (v7 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v8 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v12 = qword_1DB0BD040[v8 ^ 0x80u];
  }

  else
  {
    v12 = (v8 + 45);
  }

  return MEMORY[0x1E1280A80](v12);
}

uint64_t sub_1DB062D64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[17];
  v15 = *(v0 + 1);
  v16 = *(v0 + 3);
  v17 = v0[16];
  v18 = v0[32];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[35];
  sub_1DB09E3A4();
  if (v1 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v9 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  if (v3 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v4 ^ 0x80u];
  }

  else
  {
    v10 = (v4 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  sub_1DB09E3C4();
  if (!v17)
  {
    MEMORY[0x1E1280A80](v15);
  }

  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v11 = (v5 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  sub_1DB09E3C4();
  if (!v18)
  {
    MEMORY[0x1E1280A80](v16);
  }

  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v12 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v12 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v12);
  if (v7 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v8 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v13 = qword_1DB0BD040[v8 ^ 0x80u];
  }

  else
  {
    v13 = (v8 + 45);
  }

  MEMORY[0x1E1280A80](v13);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB062FDC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10010, &qword_1DB0BB0D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E984();
  sub_1DB09E414();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    v31 = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF98, &qword_1ECC0FF90, &qword_1DB0BB088, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v24 = a2;
    v25 = v26;
    v9 = BYTE1(v26);
    v31 = 1;
    sub_1DB09E0C4();
    v20 = v26;
    v21 = BYTE1(v26);
    v22 = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    v31 = 2;
    sub_1DAF4AA8C(&qword_1ECC10028, &qword_1ECC10020, &qword_1DB0BB0E0, &unk_1DB0AC480);
    v23 = v10;
    sub_1DB09E0C4();
    v18 = v26;
    v19 = v28;
    v30 = v27;
    v31 = 3;
    sub_1DB09E0C4();
    v12 = v26;
    LODWORD(v23) = v28;
    v29 = v27;
    v31 = 4;
    sub_1DB09E0C4();
    (*(v6 + 8))(v8, v5);
    v13 = v26;
    v14 = v30;
    v15 = v29;
    v16 = v24;
    *v24 = v25;
    v16[1] = v22;
    v16[2] = v20;
    v16[3] = v21;
    *(v16 + 1) = v18;
    v16[16] = v14;
    v16[17] = v19;
    *(v16 + 3) = v12;
    v16[32] = v15;
    v16[33] = v23;
    *(v16 + 17) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DB063370()
{
  v1 = *v0;
  v2 = 0x6563697665447369;
  v3 = 0x614C656369766564;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB063424@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08F7B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB06344C(uint64_t a1)
{
  v2 = sub_1DB08E984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB063488(uint64_t a1)
{
  v2 = sub_1DB08E984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB063504()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 1);
  v4 = v0[16];
  v8 = *(v0 + 3);
  v5 = v0[32];
  v6 = v0[34];
  sub_1DB09E3A4();
  if (v1 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  ArmandDeviceDataErrorCode.hash(into:)();
  if (v2 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (!v4)
  {
    MEMORY[0x1E1280A80](v3);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (!v5)
  {
    MEMORY[0x1E1280A80](v8);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  if (v6 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB0636B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    v6 = *(v2 + 9);
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    ODIDeviceSettingsBindingsName.init(rawValue:)(v9);
    if (v13 == 5)
    {
      return sub_1DB055700(v4, v5 | (v6 << 8), a2);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  v12 = MEMORY[0x1E69E6540];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 80) = v12;
  *(inited + 48) = -5;
  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
}

char sub_1DB0637CC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 16) == 1 && (v4 = *(v2 + 9), v6 = *a1, v5 = *(a1 + 8), , v7._countAndFlagsBits = v6, v7._object = v5, LOBYTE(a1) = ODIDeviceSettingsBindingsName.init(rawValue:)(v7), v9 == 5))
  {
    *a2 = v4;
  }

  else
  {
    *a2 = -40;
  }

  return a1;
}

uint64_t sub_1DB063844(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10098, &qword_1DB0BB120);
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EAB0();
  sub_1DB09E434();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
  sub_1DAF4AA8C(&qword_1ECC10038, &qword_1ECC10020, &qword_1DB0BB0E0, &unk_1DB0AC458);
  v9 = v12;
  sub_1DB09E194();
  return (*(v3 + 8))(v5, v9);
}

uint64_t sub_1DB0639E8()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1DB09E3C4();
  }

  else
  {
    v2 = *v0;
    sub_1DB09E3C4();
    MEMORY[0x1E1280A80](v2);
  }

  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v3 = (v1 + 45);
  }

  return MEMORY[0x1E1280A80](v3);
}

uint64_t sub_1DB063A78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2 != 1)
  {
    MEMORY[0x1E1280A80](v1);
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v4 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v4 = (v3 + 45);
  }

  MEMORY[0x1E1280A80](v4);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB063B2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10088, &qword_1DB0BB118);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EAB0();
  sub_1DB09E414();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DAF4AA8C(&qword_1ECC10028, &qword_1ECC10020, &qword_1DB0BB0E0, &unk_1DB0AC480);
    sub_1DB09E0C4();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 8) = v9;
    *(a2 + 9) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB063D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB063D8C(uint64_t a1)
{
  v2 = sub_1DB08EAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB063DC8(uint64_t a1)
{
  v2 = sub_1DB08EAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB063E44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2 != 1)
  {
    MEMORY[0x1E1280A80](v1);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB063ECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) != 1)
  {
    goto LABEL_6;
  }

  v21 = *(v2 + 8);
  v22 = *v2;
  v20 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  sub_1DB042B1C(v11, v10, 1);
  v12 = sub_1DB09E004();
  sub_1DB041AD8(v11, v10, 1);
  if (v12 == 2)
  {
    v13 = a2;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    goto LABEL_9;
  }

  if (v12 == 1)
  {
    v13 = a2;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    goto LABEL_9;
  }

  if (v12)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v18 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v18;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  v13 = a2;
  v15 = v21;
  v14 = v22;
  v16 = v20;
LABEL_9:

  return sub_1DB055260(v14, v15, v16, v13);
}

uint64_t sub_1DB064078@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 16) == 1)
  {
    v4 = v2[40];
    v5 = v2[64];
    v6 = v2[16];
    v8 = *result;
    v7 = *(result + 8);
    sub_1DB042B1C(*result, v7, 1);
    v9 = sub_1DB09E004();
    result = sub_1DB041AD8(v8, v7, 1);
    if (v9 == 1)
    {
      v10 = v4;
    }

    else
    {
      v10 = -40;
    }

    if (v9 == 2)
    {
      v10 = v5;
    }

    if (!v9)
    {
      v10 = v6;
    }
  }

  else
  {
    v10 = -40;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1DB06412C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *v5;
  v11 = v5[1];
  v12 = *(v5 + 16);
  v13 = v5[3];
  v26 = v5[4];
  v27 = v10;
  v34 = *(v5 + 40);
  v14 = v5[7];
  v24 = v5[6];
  v25 = v13;
  v23 = v14;
  HIDWORD(v22) = *(v5 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28();

  sub_1DB09E434();
  v31 = v27;
  v32 = v11;
  v33 = v12;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  v15 = v9;
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC458);
  v16 = v29;
  sub_1DB09E194();

  if (v16)
  {
    return (*(v30 + 8))(v9, v7);
  }

  v18 = BYTE4(v22);
  v19 = v23;
  v20 = v24;
  v21 = v30;
  v31 = v25;
  v32 = v26;
  v33 = v34;
  v35 = 1;

  sub_1DB09E194();

  v31 = v20;
  v32 = v19;
  v33 = v18;
  v35 = 2;

  sub_1DB09E194();

  return (*(v21 + 8))(v15, v7);
}

uint64_t sub_1DB0643C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10070, &qword_1DB0BB108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EA2C();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v32 = 0;
    v33 = 0;
    v34 = -44;
    v35 = 0;
    v36 = 0;
    v37 = -44;
    v38 = 0;
    v39 = 0;
    v40 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v24) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v23 = v32;
    v22 = v33;
    v41 = v34;

    LOBYTE(v24) = 1;
    sub_1DB09E0C4();
    v21 = v6;
    v20 = a2;
    v9 = v32;
    v10 = v33;
    v11 = v34;

    v42 = 2;
    sub_1DB09E0C4();
    (*(v21 + 8))(v8, v5);
    v13 = v29;
    v14 = v30;
    v15 = v31;

    v16 = v22;
    *&v24 = v23;
    *(&v24 + 1) = v22;
    LOBYTE(v25) = v41;
    *(&v25 + 1) = v9;
    *&v26 = v10;
    BYTE8(v26) = v11;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    v28 = v15;
    v17 = v20;
    *(v20 + 64) = v15;
    v18 = v27;
    v17[2] = v26;
    v17[3] = v18;
    v19 = v25;
    *v17 = v24;
    v17[1] = v19;
    sub_1DB08B66C(&v24, &v32);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v32 = v23;
    v33 = v16;
    v34 = v41;
    v35 = v9;
    v36 = v10;
    v37 = v11;
    v38 = v13;
    v39 = v14;
    v40 = v15;
  }

  return sub_1DB08EA80(&v32);
}

unint64_t sub_1DB064798()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1DB0647F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08F980(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB064818(uint64_t a1)
{
  v2 = sub_1DB08EA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB064854(uint64_t a1)
{
  v2 = sub_1DB08EA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB0648F4()
{
  v1 = v0[1];
  v2 = v0[4];
  v3 = v0[7];
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v1)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (v2)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (v3)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB064A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = *(a1 + 56);
  v14 = *(a1 + 48);
  v5 = *(a1 + 64);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  if ((sub_1DB055D08(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || (sub_1DB055D08(v2, v3, v4, v7, v6, v8) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055D08(v14, v13, v5, v9, v10, v11);
}

uint64_t sub_1DB064B04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  if (*(a1 + 32) != 1)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v17 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v17;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, v3);
  }

  v33 = *v2;
  v31 = *(v2 + 9);
  v32 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 25);
  v29 = *(v2 + 32);
  v30 = *(v2 + 16);
  v26 = *(v2 + 41);
  v27 = *(v2 + 40);
  v28 = *(v2 + 48);
  v22 = *(v2 + 57);
  v23 = *(v2 + 56);
  v24 = *(v2 + 64);
  v25 = *(v2 + 80);
  v20 = *(v2 + 72);
  v21 = *(v2 + 88);
  v18 = *(v2 + 73);
  v19 = *(v2 + 89);
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);
  v8 = *(v2 + 105);
  v9 = *(v2 + 112);
  v10 = *(v2 + 120);
  v11 = *(v2 + 121);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);

  v14._countAndFlagsBits = v13;
  v14._object = v12;
  ODIGeocoderBindingsName.init(rawValue:)(v14);
  if (v35 <= 3u)
  {
    if (v35 > 1u)
    {
      if (v35 == 2)
      {
        return sub_1DB055870(v6, v7 | (v8 << 8), a2);
      }

      else
      {
        return sub_1DB055870(v9, v10 | (v11 << 8), a2);
      }
    }

    else if (v35)
    {
      return sub_1DB055870(v30, v4 | (v5 << 8), a2);
    }

    else
    {
      return sub_1DB055870(v33, v32 | (v31 << 8), a2);
    }
  }

  else if (v35 <= 5u)
  {
    if (v35 == 4)
    {
      return sub_1DB055870(v29, v27 | (v26 << 8), a2);
    }

    else
    {
      return sub_1DB055870(v28, v23 | (v22 << 8), a2);
    }
  }

  else
  {
    v3 = a2;
    if (v35 != 6)
    {
      if (v35 == 7)
      {
        return sub_1DB055870(v25, v21 | (v19 << 8), a2);
      }

      goto LABEL_7;
    }

    return sub_1DB055870(v24, v20 | (v18 << 8), a2);
  }
}

char sub_1DB064D7C@<W0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  v4 = v2[9];
  v5 = v2[25];
  v6 = v2[41];
  v7 = v2[57];
  v8 = v2[73];
  v16 = v2[89];
  v9 = v2[105];
  v10 = v2[121];
  v12 = *a1;
  v11 = *(a1 + 8);

  v13._countAndFlagsBits = v12;
  v13._object = v11;
  LOBYTE(a1) = ODIGeocoderBindingsName.init(rawValue:)(v13);
  if (v17 <= 3u)
  {
    if (v17 > 1u)
    {
      if (v17 == 2)
      {
        *a2 = v9;
      }

      else
      {
        *a2 = v10;
      }
    }

    else if (v17)
    {
      *a2 = v5;
    }

    else
    {
      *a2 = v4;
    }
  }

  else if (v17 <= 5u)
  {
    if (v17 == 4)
    {
      *a2 = v6;
    }

    else
    {
      *a2 = v7;
    }
  }

  else
  {
    if (v17 != 6)
    {
      if (v17 == 7)
      {
        v14 = v16;
LABEL_8:
        *a2 = v14;
        return a1;
      }

LABEL_7:
      v14 = -40;
      goto LABEL_8;
    }

    *a2 = v8;
  }

  return a1;
}

uint64_t sub_1DB064E98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10060, &qword_1DB0BB100);
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v37 = v1[2];
  v43 = *(v1 + 24);
  v36 = *(v1 + 25);
  v35 = v1[4];
  v9 = *(v1 + 40);
  v33 = *(v1 + 41);
  v34 = v9;
  v32 = v1[6];
  LODWORD(v4) = *(v1 + 57);
  v30 = *(v1 + 56);
  v31 = v4;
  v27 = v1[8];
  LODWORD(v4) = *(v1 + 73);
  v28 = *(v1 + 72);
  v29 = v4;
  v24 = v1[10];
  LODWORD(v4) = *(v1 + 89);
  v25 = *(v1 + 88);
  v26 = v4;
  v21 = v1[12];
  LODWORD(v4) = *(v1 + 105);
  v22 = *(v1 + 104);
  v23 = v4;
  v18 = v1[14];
  LODWORD(v4) = *(v1 + 121);
  v19 = *(v1 + 120);
  v20 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E9D8();
  sub_1DB09E434();
  v40 = v6;
  v41 = v7;
  v42 = v8;
  v10 = v5;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10050, &qword_1DB0BB0F8);
  sub_1DAF4AA8C(&qword_1ECC10068, &qword_1ECC10050, &qword_1DB0BB0F8, &unk_1DB0AC458);
  v11 = v39;
  sub_1DB09E194();
  if (v11)
  {
    return (*(v38 + 8))(v5, v3);
  }

  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v32;
  v17 = v38;
  v40 = v37;
  v41 = v43;
  v42 = v36;
  v44 = 1;
  sub_1DB09E194();
  v40 = v15;
  v41 = v14;
  v42 = v13;
  v44 = 2;
  sub_1DB09E194();
  v40 = v16;
  v41 = v30;
  v42 = v31;
  v44 = 3;
  sub_1DB09E194();
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v44 = 4;
  sub_1DB09E194();
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v44 = 5;
  sub_1DB09E194();
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v44 = 6;
  sub_1DB09E194();
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v44 = 7;
  sub_1DB09E194();
  return (*(v17 + 8))(v10, v3);
}

uint64_t sub_1DB0652A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v19 = *(v0 + 64);
  v17 = *(v0 + 72);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v5 = *(v0 + 9);
  v6 = *(v0 + 25);
  v7 = *(v0 + 41);
  v8 = *(v0 + 57);
  v9 = *(v0 + 73);
  v14 = *(v0 + 89);
  v18 = *(v0 + 105);
  v10 = *(v0 + 121);
  sub_1DB09E3A4();
  sub_1DB055C74(v26, v1, v2 | (v5 << 8));
  sub_1DB055C74(v26, v3, v4 | (v6 << 8));
  sub_1DB055C74(v26, v13, v12 | (v7 << 8));
  sub_1DB055C74(v26, v16, v15 | (v8 << 8));
  sub_1DB055C74(v26, v19, v17 | (v9 << 8));
  sub_1DB055C74(v26, v21, v20 | (v14 << 8));
  sub_1DB055C74(v26, v23, v22 | (v18 << 8));
  sub_1DB055C74(v26, v25, v24 | (v10 << 8));
  return sub_1DB09E3E4();
}

uint64_t sub_1DB065438@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10040, &qword_1DB0BB0F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E9D8();
  sub_1DB09E414();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10050, &qword_1DB0BB0F8);
    v54 = 0;
    sub_1DAF4AA8C(&qword_1ECC10058, &qword_1ECC10050, &qword_1DB0BB0F8, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v41 = a2;
    v42 = v43;
    v9 = v45;
    v53 = v44;
    v54 = 1;
    sub_1DB09E0C4();
    v40 = v9;
    v39 = v43;
    v10 = v45;
    v52 = v44;
    v54 = 2;
    sub_1DB09E0C4();
    v38 = v10;
    v37 = v43;
    v11 = v45;
    v51 = v44;
    v54 = 3;
    sub_1DB09E0C4();
    v36 = v11;
    v35 = v43;
    v12 = v45;
    v50 = v44;
    v54 = 4;
    sub_1DB09E0C4();
    v34 = v12;
    v33 = v43;
    v13 = v45;
    v49 = v44;
    v54 = 5;
    sub_1DB09E0C4();
    v32 = v13;
    v31 = v43;
    v14 = v45;
    v48 = v44;
    v54 = 6;
    sub_1DB09E0C4();
    v30 = v14;
    v16 = v43;
    v29 = v45;
    v47 = v44;
    v54 = 7;
    sub_1DB09E0C4();
    (*(v6 + 8))(v8, v5);
    v17 = v43;
    v18 = v44;
    v19 = v45;
    v46 = v44;
    v20 = v53;
    v21 = v52;
    v22 = v51;
    v23 = v50;
    v24 = v49;
    v25 = v48;
    v26 = v47;
    v27 = v41;
    *v41 = v42;
    *(v27 + 8) = v20;
    *(v27 + 9) = v40;
    v27[2] = v39;
    *(v27 + 24) = v21;
    *(v27 + 25) = v38;
    v27[4] = v37;
    *(v27 + 40) = v22;
    *(v27 + 41) = v36;
    v27[6] = v35;
    *(v27 + 56) = v23;
    *(v27 + 57) = v34;
    v27[8] = v33;
    *(v27 + 72) = v24;
    *(v27 + 73) = v32;
    v27[10] = v31;
    *(v27 + 88) = v25;
    *(v27 + 89) = v30;
    v27[12] = v16;
    *(v27 + 104) = v26;
    *(v27 + 105) = v29;
    v27[14] = v17;
    *(v27 + 120) = v18;
    *(v27 + 121) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB0658E8()
{
  v1 = *v0;
  v2 = 0x6974614C656D6F68;
  v3 = 0x746974614C636F64;
  if (v1 != 6)
  {
    v3 = 0x69676E6F4C636F64;
  }

  v4 = 0x4C676E696C6C6962;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x676E6F4C656D6F68;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB065A10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB08FAA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB065A44(uint64_t a1)
{
  v2 = sub_1DB08E9D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB065A80(uint64_t a1)
{
  v2 = sub_1DB08E9D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB065AF8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v17 = *(v1 + 48);
  v16 = *(v1 + 56);
  v20 = *(v1 + 64);
  v18 = *(v1 + 72);
  v22 = *(v1 + 80);
  v21 = *(v1 + 88);
  v24 = *(v1 + 96);
  v23 = *(v1 + 104);
  v26 = *(v1 + 112);
  v25 = *(v1 + 120);
  v8 = *(v1 + 25);
  v9 = *(v1 + 41);
  v10 = *(v1 + 57);
  v11 = *(v1 + 73);
  v15 = *(v1 + 89);
  v19 = *(v1 + 105);
  v12 = *(v1 + 8) | (*(v1 + 9) << 8);
  v13 = *(v1 + 121);
  sub_1DB055C74(a1, v3, v12);
  sub_1DB055C74(a1, v4, v5 | (v8 << 8));
  sub_1DB055C74(a1, v6, v7 | (v9 << 8));
  sub_1DB055C74(a1, v17, v16 | (v10 << 8));
  sub_1DB055C74(a1, v20, v18 | (v11 << 8));
  sub_1DB055C74(a1, v22, v21 | (v15 << 8));
  sub_1DB055C74(a1, v24, v23 | (v19 << 8));

  return sub_1DB055C74(a1, v26, v25 | (v13 << 8));
}

uint64_t sub_1DB065C70()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v19 = *(v0 + 64);
  v17 = *(v0 + 72);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v5 = *(v0 + 9);
  v6 = *(v0 + 25);
  v7 = *(v0 + 41);
  v8 = *(v0 + 57);
  v9 = *(v0 + 73);
  v14 = *(v0 + 89);
  v18 = *(v0 + 105);
  v10 = *(v0 + 121);
  sub_1DB09E3A4();
  sub_1DB055C74(v26, v1, v2 | (v5 << 8));
  sub_1DB055C74(v26, v3, v4 | (v6 << 8));
  sub_1DB055C74(v26, v13, v12 | (v7 << 8));
  sub_1DB055C74(v26, v16, v15 | (v8 << 8));
  sub_1DB055C74(v26, v19, v17 | (v9 << 8));
  sub_1DB055C74(v26, v21, v20 | (v14 << 8));
  sub_1DB055C74(v26, v23, v22 | (v18 << 8));
  sub_1DB055C74(v26, v25, v24 | (v10 << 8));
  return sub_1DB09E3E4();
}

uint64_t sub_1DB065E00(uint64_t a1, char a2)
{
  v3 = v2;
  v38 = sub_1DB09CE14();
  v6 = v5;
  if (a2)
  {
    v34 = v2 + 18;
    v47 = 35;
    v46 = 34;
    v45 = 33;
    v44 = 32;
    v43 = 31;
    v42 = 30;
    v41 = 29;
    v40 = 28;
    v39 = 27;
    v37 = 26;
    v7 = 25;
    v36 = 24;
    v35 = 23;
    v8 = 22;
    v9 = 21;
    v10 = 20;
    v11 = 19;
  }

  else
  {
    v47 = 17;
    v46 = 16;
    v45 = 15;
    v44 = 14;
    v43 = 13;
    v42 = 12;
    v41 = 11;
    v40 = 10;
    v39 = 9;
    v37 = 8;
    v7 = 7;
    v36 = 6;
    v34 = v2;
    v35 = 5;
    v8 = 4;
    v9 = 3;
    v10 = 2;
    v11 = 1;
  }

  if (v6)
  {
    v12 = -45;
  }

  else
  {
    v12 = -43;
  }

  *v34 = v38;
  v2[v11] = v6;
  LOBYTE(v2[v10]) = v12;
  v13 = sub_1DB09CDF4();
  v15 = v14;

  v2[v9] = v13;
  if (v15)
  {
    v16 = -45;
  }

  else
  {
    v16 = -43;
  }

  v2[v8] = v15;
  LOBYTE(v2[v35]) = v16;
  v17 = sub_1DB09CDE4();
  v19 = v18;

  v2[v36] = v17;
  if (v19)
  {
    v20 = -45;
  }

  else
  {
    v20 = -43;
  }

  v2[v7] = v19;
  LOBYTE(v2[v37]) = v20;
  v21 = sub_1DB09CE04();
  v23 = v22;

  v2[v39] = v21;
  if (v23)
  {
    v24 = -45;
  }

  else
  {
    v24 = -43;
  }

  v2[v40] = v23;
  LOBYTE(v2[v41]) = v24;
  v25 = sub_1DB09CE24();
  v27 = v26;

  v2[v42] = v25;
  if (v27)
  {
    v28 = -45;
  }

  else
  {
    v28 = -43;
  }

  v2[v43] = v27;
  LOBYTE(v2[v44]) = v28;
  v29 = sub_1DB09CE44();
  v31 = v30;

  v3[v45] = v29;
  if (v31)
  {
    v33 = -45;
  }

  else
  {
    v33 = -43;
  }

  v3[v46] = v31;
  LOBYTE(v3[v47]) = v33;
  return result;
}

uint64_t sub_1DB066074@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v44 = *(v2 + 8);
    v45 = *v2;
    v43 = *(v2 + 16);
    v41 = *(v2 + 32);
    v42 = *(v2 + 24);
    v40 = *(v2 + 40);
    v38 = *(v2 + 56);
    v39 = *(v2 + 48);
    v37 = *(v2 + 64);
    v35 = *(v2 + 80);
    v36 = *(v2 + 72);
    v34 = *(v2 + 88);
    v32 = *(v2 + 104);
    v33 = *(v2 + 96);
    v31 = *(v2 + 112);
    v29 = *(v2 + 128);
    v30 = *(v2 + 120);
    v28 = *(v2 + 136);
    v26 = *(v2 + 152);
    v27 = *(v2 + 144);
    v25 = *(v2 + 160);
    v23 = *(v2 + 176);
    v24 = *(v2 + 168);
    v22 = *(v2 + 184);
    v20 = *(v2 + 200);
    v21 = *(v2 + 192);
    v19 = *(v2 + 208);
    v17 = *(v2 + 224);
    v18 = *(v2 + 216);
    v4 = *(v2 + 232);
    v5 = *(v2 + 240);
    v6 = *(v2 + 248);
    v7 = *(v2 + 256);
    v8 = *(v2 + 264);
    v9 = *(v2 + 272);
    v10 = *(v2 + 280);
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    ODIComputableBindingsName.init(rawValue:)(v13);
    switch(v46)
    {
      case 1:
        result = sub_1DB055260(v39, v38, v37, a2);
        break;
      case 2:
        result = sub_1DB055260(v36, v35, v34, a2);
        break;
      case 3:
        result = sub_1DB055260(v45, v44, v43, a2);
        break;
      case 4:
        result = sub_1DB055260(v33, v32, v31, a2);
        break;
      case 5:
        result = sub_1DB055260(v30, v29, v28, a2);
        break;
      case 6:
        result = sub_1DB055260(v24, v23, v22, a2);
        break;
      case 7:
        result = sub_1DB055260(v21, v20, v19, a2);
        break;
      case 8:
        result = sub_1DB055260(v18, v17, v4, a2);
        break;
      case 9:
        result = sub_1DB055260(v27, v26, v25, a2);
        break;
      case 10:
        result = sub_1DB055260(v5, v6, v7, a2);
        break;
      case 11:
        result = sub_1DB055260(v8, v9, v10, a2);
        break;
      case 12:
        goto LABEL_4;
      default:
        result = sub_1DB055260(v42, v41, v40, a2);
        break;
    }
  }

  else
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v16 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v16;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  return result;
}

char sub_1DB066330@<W0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v18 = v2[16];
    v19 = v2[40];
    v16 = v2[88];
    v17 = v2[64];
    v4 = v2[112];
    v5 = v2[136];
    v6 = v2[160];
    v7 = v2[208];
    v8 = v2[232];
    v9 = v2[256];
    v10 = v2[280];
    v12 = *a1;
    v11 = *(a1 + 8);

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    LOBYTE(a1) = ODIComputableBindingsName.init(rawValue:)(v13);
    switch(v20)
    {
      case 1:
        v14 = v17;
        goto LABEL_5;
      case 2:
        v14 = v16;
        goto LABEL_5;
      case 3:
        v14 = v18;
        goto LABEL_5;
      case 4:
        *a2 = v4;
        break;
      case 5:
        *a2 = v5;
        break;
      case 7:
        *a2 = v7;
        break;
      case 8:
        *a2 = v8;
        break;
      case 9:
        *a2 = v6;
        break;
      case 10:
        *a2 = v9;
        break;
      case 11:
        *a2 = v10;
        break;
      case 12:
        goto LABEL_4;
      default:
        v14 = v19;
        goto LABEL_5;
    }
  }

  else
  {
LABEL_4:
    v14 = -40;
LABEL_5:
    *a2 = v14;
  }

  return a1;
}

uint64_t sub_1DB066458(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6464694D72656570;
    v7 = 0x656D614E72656570;
    if (a1 != 10)
    {
      v7 = 0x6B63694E72656570;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656D614E72656570;
    v9 = 0x696D614672656570;
    if (a1 != 7)
    {
      v9 = 0x6576694772656570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x66657250656D616ELL;
    v2 = 0x614E656C6464696DLL;
    v3 = 0x66667553656D616ELL;
    if (a1 != 4)
    {
      v3 = 0x656D616E6B63696ELL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x614E796C696D6166;
    if (a1 != 1)
    {
      v4 = 0x6D614E6E65766967;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB066624(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100B0, &qword_1DB0BB130);
  v60 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  v9 = v1[4];
  v57 = v1[3];
  v58 = v9;
  v64 = *(v1 + 40);
  v10 = v1[6];
  v55 = v1[7];
  v56 = v10;
  LODWORD(v10) = *(v1 + 64);
  v11 = v1[10];
  v51 = v1[9];
  v52 = v11;
  v53 = *(v1 + 88);
  v54 = v10;
  v12 = v1[13];
  v48 = v1[12];
  v49 = v12;
  v50 = *(v1 + 112);
  v13 = v1[16];
  v45 = v1[15];
  v46 = v13;
  v47 = *(v1 + 136);
  v14 = v1[19];
  v42 = v1[18];
  v43 = v14;
  v44 = *(v1 + 160);
  v15 = v1[22];
  v39 = v1[21];
  v40 = v15;
  v41 = *(v1 + 184);
  v16 = v1[25];
  v36 = v1[24];
  v38 = v16;
  v37 = *(v1 + 208);
  v17 = v1[28];
  v33 = v1[27];
  v35 = v17;
  v34 = *(v1 + 232);
  v18 = v1[31];
  v30 = v1[30];
  v32 = v18;
  v31 = *(v1 + 256);
  v19 = v1[34];
  v27 = v1[33];
  v29 = v19;
  v28 = *(v1 + 280);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EB04();

  v20 = v5;
  sub_1DB09E434();
  v61 = v6;
  v62 = v7;
  v63 = v8;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC458);
  v21 = v59;
  sub_1DB09E194();
  if (v21)
  {

    return (*(v60 + 8))(v5, v3);
  }

  else
  {
    v23 = v54;
    v24 = v55;
    v25 = v56;

    v61 = v57;
    v62 = v58;
    v63 = v64;
    v65 = 1;

    sub_1DB09E194();

    v61 = v25;
    v62 = v24;
    v63 = v23;
    v65 = 2;

    sub_1DB09E194();

    v61 = v51;
    v62 = v52;
    v63 = v53;
    v65 = 3;

    sub_1DB09E194();

    v61 = v48;
    v62 = v49;
    v63 = v50;
    v65 = 4;

    sub_1DB09E194();

    v61 = v45;
    v62 = v46;
    v63 = v47;
    v65 = 5;

    sub_1DB09E194();

    v61 = v42;
    v62 = v43;
    v63 = v44;
    v65 = 6;

    sub_1DB09E194();

    v61 = v39;
    v62 = v40;
    v63 = v41;
    v65 = 7;

    sub_1DB09E194();

    v61 = v36;
    v62 = v38;
    v63 = v37;
    v65 = 8;

    sub_1DB09E194();

    v61 = v33;
    v62 = v35;
    v63 = v34;
    v65 = 9;

    sub_1DB09E194();

    v61 = v30;
    v62 = v32;
    v63 = v31;
    v65 = 10;

    sub_1DB09E194();

    v61 = v27;
    v62 = v29;
    v63 = v28;
    v65 = 11;

    sub_1DB09E194();

    return (*(v60 + 8))(v20, v3);
  }
}

uint64_t sub_1DB066CEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = *(v1 + 56);
  v17 = *(v1 + 64);
  v18 = *(v1 + 80);
  v4 = *(v1 + 104);
  v19 = *(v1 + 88);
  v20 = *(v1 + 112);
  v21 = *(v1 + 128);
  v22 = *(v1 + 136);
  v23 = *(v1 + 152);
  v24 = *(v1 + 160);
  v5 = *(v1 + 176);
  v25 = *(v1 + 184);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  v26 = *(v1 + 224);
  v28 = *(v1 + 232);
  v8 = *(v1 + 248);
  v29 = *(v1 + 256);
  v30 = *(v1 + 272);
  v27 = *(v1 + 280);
  if (*(v1 + 8))
  {
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v9 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  sub_1DB09E3C4();
  if (v3)
  {
    sub_1DB09D794();
  }

  if ((v15 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v15 ^ 0x80u]);
    if (v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v15 + 45));
    if (v16)
    {
LABEL_11:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_14;
    }
  }

  sub_1DB09E3C4();
LABEL_14:
  if ((v17 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v17 ^ 0x80u]);
    if (v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v17 + 45));
    if (v18)
    {
LABEL_16:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_19;
    }
  }

  sub_1DB09E3C4();
LABEL_19:
  if ((v19 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v19 ^ 0x80u]);
    if (v4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v19 + 45));
    if (v4)
    {
LABEL_21:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_24;
    }
  }

  sub_1DB09E3C4();
LABEL_24:
  if ((v20 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v20 ^ 0x80u]);
    if (v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v20 + 45));
    if (v21)
    {
LABEL_26:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_29;
    }
  }

  sub_1DB09E3C4();
LABEL_29:
  if ((v22 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v22 ^ 0x80u]);
    if (v23)
    {
      goto LABEL_31;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v22 + 45));
    if (v23)
    {
LABEL_31:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_34;
    }
  }

  sub_1DB09E3C4();
LABEL_34:
  if ((v24 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v24 ^ 0x80u]);
    if (v5)
    {
      goto LABEL_36;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v24 + 45));
    if (v5)
    {
LABEL_36:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_39;
    }
  }

  sub_1DB09E3C4();
LABEL_39:
  if ((v25 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v25 ^ 0x80u];
  }

  else
  {
    v10 = (v25 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  sub_1DB09E3C4();
  if (v6)
  {
    sub_1DB09D794();
  }

  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v7 ^ 0x80u]);
    if (v26)
    {
      goto LABEL_46;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v7 + 45));
    if (v26)
    {
LABEL_46:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_49;
    }
  }

  sub_1DB09E3C4();
LABEL_49:
  if ((v28 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v28 ^ 0x80u];
  }

  else
  {
    v11 = (v28 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  sub_1DB09E3C4();
  if (v8)
  {
    sub_1DB09D794();
  }

  if ((v29 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v12 = qword_1DB0BD040[v29 ^ 0x80u];
  }

  else
  {
    v12 = (v29 + 45);
  }

  MEMORY[0x1E1280A80](v12);
  sub_1DB09E3C4();
  if (v30)
  {
    sub_1DB09D794();
  }

  if ((v27 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v13 = qword_1DB0BD040[v27 ^ 0x80u];
  }

  else
  {
    v13 = (v27 + 45);
  }

  return MEMORY[0x1E1280A80](v13);
}

uint64_t sub_1DB06728C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100A0, &qword_1DB0BB128);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB08EB04();
  sub_1DB09E414();
  if (v2)
  {
    v134 = v2;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v45 = 0;
    v46 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v50 = 212;
    v51 = 212;
    v48 = 212;
    v49 = 212;
    v52 = 212;
    v53 = 212;
    v54 = 212;
    v14 = -44;
    v15 = -44;
    v16 = -44;
    v17 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    v71[0] = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060, &unk_1DB0AC480);
    sub_1DB09E0C4();
    v43 = v76;
    v44 = v77;
    v42 = v78;

    v71[0] = 1;
    sub_1DB09E0C4();
    v40 = v77;
    v41 = v76;
    v39 = v78;

    v71[0] = 2;
    sub_1DB09E0C4();
    v38 = a2;
    v45 = v76;
    v46 = v77;
    v20 = v78;

    v71[0] = 3;
    sub_1DB09E0C4();
    v69 = v76;
    v70 = v77;
    v37 = v78;

    v71[0] = 4;
    sub_1DB09E0C4();
    v36 = v20;
    v67 = v76;
    v68 = v77;
    v54 = v78;

    v71[0] = 5;
    sub_1DB09E0C4();
    v65 = v76;
    v21 = v77;
    v53 = v78;

    v71[0] = 6;
    sub_1DB09E0C4();
    v66 = v21;
    v63 = v76;
    v64 = v77;
    v52 = v78;

    v71[0] = 7;
    sub_1DB09E0C4();
    v61 = v76;
    v62 = v77;
    v50 = v78;

    v71[0] = 8;
    sub_1DB09E0C4();
    v134 = 0;
    v58 = v76;
    v60 = v77;
    v49 = v78;

    v71[0] = 9;
    v22 = v134;
    sub_1DB09E0C4();
    v134 = v22;
    if (v22)
    {
      (*(v6 + 8))(v8, v5);
      v56 = 0;
      v57 = 0;
      v55 = 0;
      v59 = 0;
      v51 = 212;
      v48 = 212;
    }

    else
    {
      v56 = v76;
      v59 = v77;
      v48 = v78;

      v71[0] = 10;
      v23 = v134;
      sub_1DB09E0C4();
      v134 = v23;
      if (v23)
      {
        (*(v6 + 8))(v8, v5);
        v57 = 0;
        v55 = 0;
        v51 = 212;
      }

      else
      {
        v55 = v76;
        v57 = v77;
        v51 = v78;

        v72 = 11;
        v24 = v134;
        sub_1DB09E0C4();
        v134 = v24;
        if (!v24)
        {
          (*(v6 + 8))(v8, v5);
          v34 = v74;
          v35 = v73;
          v33 = v75;

          *&v71[140] = *&v128[3];
          *&v71[137] = *v128;
          *&v71[164] = *&v127[3];
          *&v71[161] = *v127;
          *&v71[188] = *&v126[3];
          *&v71[185] = *v126;
          *&v71[212] = *&v125[3];
          *&v71[209] = *v125;
          *&v71[236] = *&v124[3];
          *&v71[233] = *v124;
          *&v71[257] = *v123;
          *&v71[17] = v133[0];
          *&v71[20] = *(v133 + 3);
          *&v71[41] = *v132;
          *&v71[44] = *&v132[3];
          *&v71[68] = *&v131[3];
          *&v71[65] = *v131;
          *&v71[89] = *v130;
          *&v71[92] = *&v130[3];
          *&v71[113] = *v129;
          *&v71[116] = *&v129[3];
          *&v71[260] = *&v123[3];
          v26 = v43;
          v25 = v44;
          *v71 = v43;
          *&v71[8] = v44;
          v27 = v42;
          v71[16] = v42;
          v28 = v40;
          *&v71[24] = v41;
          *&v71[32] = v40;
          v29 = v39;
          v71[40] = v39;
          v30 = v45;
          v31 = v46;
          *&v71[48] = v45;
          *&v71[56] = v46;
          v71[64] = v36;
          *&v71[72] = v69;
          *&v71[80] = v70;
          v71[88] = v37;
          *&v71[96] = v67;
          *&v71[104] = v68;
          v71[112] = v54;
          *&v71[120] = v65;
          *&v71[128] = v66;
          v71[136] = v53;
          *&v71[144] = v63;
          *&v71[152] = v64;
          v71[160] = v52;
          *&v71[168] = v61;
          *&v71[176] = v62;
          v71[184] = v50;
          *&v71[192] = v58;
          *&v71[200] = v60;
          v71[208] = v49;
          *&v71[216] = v56;
          *&v71[224] = v59;
          v71[232] = v48;
          *&v71[240] = v55;
          *&v71[248] = v57;
          v71[256] = v51;
          *&v71[264] = v35;
          *&v71[272] = v34;
          v71[280] = v33;
          memcpy(v38, v71, 0x119uLL);
          sub_1DB08B298(v71, &v76);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);
          v76 = v26;
          v77 = v25;
          v78 = v27;
          v80 = v41;
          v81 = v28;
          v82 = v29;
          v84 = v30;
          v85 = v31;
          *v79 = v133[0];
          *&v79[3] = *(v133 + 3);
          *v83 = *v132;
          *&v83[3] = *&v132[3];
          v86 = v36;
          *&v87[3] = *&v131[3];
          *v87 = *v131;
          v88 = v69;
          v89 = v70;
          v90 = v37;
          *v91 = *v130;
          *&v91[3] = *&v130[3];
          v92 = v67;
          v93 = v68;
          v94 = v54;
          *v95 = *v129;
          *&v95[3] = *&v129[3];
          v96 = v65;
          v97 = v66;
          v98 = v53;
          *&v99[3] = *&v128[3];
          *v99 = *v128;
          v100 = v63;
          v101 = v64;
          v102 = v52;
          *&v103[3] = *&v127[3];
          *v103 = *v127;
          v104 = v61;
          v105 = v62;
          v106 = v50;
          *&v107[3] = *&v126[3];
          *v107 = *v126;
          v108 = v58;
          v109 = v60;
          v110 = v49;
          *&v111[3] = *&v125[3];
          *v111 = *v125;
          v112 = v56;
          v113 = v59;
          v114 = v48;
          *&v115[3] = *&v124[3];
          *v115 = *v124;
          v116 = v55;
          v117 = v57;
          v118 = v51;
          *v119 = *v123;
          *&v119[3] = *&v123[3];
          v120 = v35;
          v121 = v34;
          v18 = v33;
          goto LABEL_5;
        }

        (*(v6 + 8))(v8, v5);
      }
    }

    v13 = v43;
    v12 = v44;
    v10 = v40;
    v11 = v41;
    v17 = v42;
    v16 = v39;
    v15 = v36;
    v14 = v37;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  v76 = v13;
  v77 = v12;
  v78 = v17;
  v80 = v11;
  v81 = v10;
  *v79 = v133[0];
  *&v79[3] = *(v133 + 3);
  v82 = v16;
  *v83 = *v132;
  *&v83[3] = *&v132[3];
  v84 = v45;
  v85 = v46;
  v86 = v15;
  *&v87[3] = *&v131[3];
  *v87 = *v131;
  v88 = v69;
  v89 = v70;
  v90 = v14;
  *v91 = *v130;
  *&v91[3] = *&v130[3];
  v92 = v67;
  v93 = v68;
  v94 = v54;
  *v95 = *v129;
  *&v95[3] = *&v129[3];
  v96 = v65;
  v97 = v66;
  v98 = v53;
  *&v99[3] = *&v128[3];
  *v99 = *v128;
  v100 = v63;
  v101 = v64;
  v102 = v52;
  *&v103[3] = *&v127[3];
  *v103 = *v127;
  v104 = v61;
  v105 = v62;
  v106 = v50;
  *&v107[3] = *&v126[3];
  *v107 = *v126;
  v108 = v58;
  v109 = v60;
  v110 = v49;
  *&v111[3] = *&v125[3];
  *v111 = *v125;
  v112 = v56;
  v113 = v59;
  v114 = v48;
  *&v115[3] = *&v124[3];
  *v115 = *v124;
  v116 = v55;
  v117 = v57;
  v118 = v51;
  *v119 = *v123;
  *&v119[3] = *&v123[3];
  v121 = 0;
  v120 = 0;
  v18 = -44;
LABEL_5:
  v122 = v18;
  return sub_1DB08EB58(&v76);
}