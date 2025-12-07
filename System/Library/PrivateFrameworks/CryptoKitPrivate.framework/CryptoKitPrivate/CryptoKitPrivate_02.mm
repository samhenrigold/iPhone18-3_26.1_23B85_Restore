id sub_1C0D058D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v8 = sub_1C0D786BC();
  (*(v5 + 8))(v7, v4);
  v9 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v10 = [v9 serializedPublicKey_];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C0D7832C();
    v14 = v13;

    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    strcpy(v24, "HashToGroup-");
    BYTE5(v24[1]) = 0;
    HIWORD(v24[1]) = -5120;
    MEMORY[0x1C68E3B00](v15, v16);
    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](0x6F746172656E6567, 0xEA00000000004872);

    v17 = sub_1C0D07698(v24[0], v24[1]);
    v19 = v18;
    sub_1C0D3F5F4(v12, v14, v17, v18);
    v21 = v20;
    sub_1C0CF448C(v17, v19);
    sub_1C0CF448C(v12, v14);
    *a1 = v21;
    return v9;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1C0D05B24(id a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v13 = *(v6 + 72);
  v39[0] = *(v6 + 56);
  v39[1] = v13;
  v14 = *(v6 + 96);
  v40 = *(v6 + 88);
  v15 = *(v6 + 104);
  v16 = sub_1C0D05CEC(v14, v15, v39, a1, a2, a3, a4);
  if (!v7)
  {
    if (v16)
    {
      v31 = *(v6 + 8);
      v33 = *v6;
      v27 = *(v6 + 24);
      v29 = *(v6 + 16);
      v25 = *(v6 + 32);
      v26 = *(v6 + 40);
      v17 = *(v6 + 48);
      v41 = 0;
      v37 = a1;
      v36 = a2;
      v35 = a3;
      sub_1C0D78BFC();
      v34 = v33;
      v32 = v31;
      v30 = v29;
      v28 = v27;
      v18 = v25;
      v19 = v26;
      v20 = v17;
      v21 = v14;
      v22 = v15;
      v23 = a5;
      sub_1C0D13734(v39, v38, &qword_1EBE6D420, &qword_1C0D7BF10);
      sub_1C0D0620C(v37, v36, v35, v34, v32, v30, v28, a6, v18, v19, v20, v21, v22, v23, v39);
    }

    else
    {
      sub_1C0CFC3D4();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1C0D05CEC(void *a1, void *a2, uint64_t a3, id a4, void *a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = a4;
  if ([a4 isEqual_] & 1) != 0 || (objc_msgSend(v12, sel_isEqual_, a2) & 1) != 0 || (v52 = a6, v60 = a7, v16 = sub_1C0D0DFC0(v12, v12), v17 = objc_msgSend(v12, sel_isEqual_, v16), v16, (v17) || (objc_msgSend(a5, sel_isEqual_, a1) & 1) != 0 || (objc_msgSend(a5, sel_isEqual_, a2) & 1) != 0 || (v18 = sub_1C0D0DFC0(a5, a5), v19 = objc_msgSend(a5, sel_isEqual_, v18), v18, (v19))
  {
    LOBYTE(v20) = 0;
    return v20 & 1;
  }

  v22 = *(a3 + 8);
  v23 = *(a3 + 16);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v22, v23);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000011, 0x80000001C0D808D0);

  v53 = v22;
  v54 = v23;
  v56 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v24 = sub_1C0CF49E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  v27 = v25 >> 1;
  v28 = v26 + 1;
  v51 = v26;
  if (v25 >> 1 <= v26)
  {
    v43 = sub_1C0CF49E8((v25 > 1), v26 + 1, 1, v24);
    v26 = v51;
    v24 = v43;
    v25 = *(v43 + 3);
    v27 = v25 >> 1;
  }

  *(v24 + 2) = v28;
  v29 = &v24[16 * v26];
  *(v29 + 4) = 12653;
  *(v29 + 5) = 0xE200000000000000;
  v55 = v24;
  v30 = v26 + 2;
  if (v27 < (v26 + 2))
  {
    v44 = sub_1C0CF49E8((v25 > 1), v26 + 2, 1, v24);
    v26 = v51;
    v24 = v44;
  }

  *(v24 + 2) = v30;
  v31 = &v24[16 * v28];
  *(v31 + 32) = 12909;
  *(v31 + 40) = 0xE200000000000000;
  v32 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v24 + 3);
    v28 = v26 + 3;
    if ((v26 + 3) <= (v31 >> 1))
    {
      goto LABEL_15;
    }
  }

  v45 = sub_1C0CF49E8((v31 > 1), v28, 1, v24);
  v26 = v51;
  v24 = v45;
LABEL_15:
  *(v24 + 2) = v28;
  v33 = &v24[16 * v30];
  *(v33 + 32) = 12658;
  *(v33 + 40) = 0xE200000000000000;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = *(v24 + 3);
    v30 = v26 + 4;
    v50 = v28 - 1;
    if ((v26 + 4) <= (v33 >> 1))
    {
      goto LABEL_17;
    }
  }

  v24 = sub_1C0CF49E8((v33 > 1), v30, 1, v24);
LABEL_17:
  *(v24 + 2) = v30;
  v34 = &v24[16 * v28];
  *(v34 + 4) = 12914;
  *(v34 + 5) = 0xE200000000000000;
  v55 = v24;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v28 = sub_1C0D2EC40(1198417255, 0xE400000000000000, a1, &v53);
  a2 = sub_1C0D2EC40(1215194471, 0xE400000000000000, a2, &v53);
  v48 = sub_1C0D2EC40(0x636E45316DLL, 0xE500000000000000, v12, &v53);
  v49 = sub_1C0D2EC40(0x636E45326DLL, 0xE500000000000000, a5, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v12 = swift_allocObject();
  v47 = xmmword_1C0D7BEE0;
  *(v12 + 1) = xmmword_1C0D7BEE0;
  *(v12 + 4) = v51;
  *(v12 + 5) = v28;
  *(v12 + 6) = v50;
  *(v12 + 7) = a2;
  a5 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    a5 = sub_1C0CF4AF4(0, a5[2] + 1, 1, a5);
  }

  v36 = a5[2];
  v35 = a5[3];
  if (v36 >= v35 >> 1)
  {
    a5 = sub_1C0CF4AF4((v35 > 1), v36 + 1, 1, a5);
  }

  a5[2] = v36 + 1;
  v37 = &a5[2 * v36];
  v37[4] = v48;
  v37[5] = v12;
  v58 = a5;
  v38 = swift_allocObject();
  *(v38 + 16) = v47;
  *(v38 + 32) = v32;
  *(v38 + 40) = v28;
  *(v38 + 48) = v30 - 1;
  *(v38 + 56) = a2;
  v40 = a5[2];
  v39 = a5[3];
  if (v40 >= v39 >> 1)
  {
    v46 = v38;
    a5 = sub_1C0CF4AF4((v39 > 1), v40 + 1, 1, a5);
    v38 = v46;
  }

  a5[2] = v40 + 1;
  v41 = &a5[2 * v40];
  v41[4] = v49;
  v41[5] = v38;
  v59[0] = v53;
  v59[1] = v54;
  v59[2] = v55;
  v59[3] = v56;
  v59[4] = v57;
  v59[5] = a5;
  v20 = v59;
  v42 = sub_1C0D21C50(v52, v60);
  if (!v8)
  {
    LOBYTE(v20) = v42;
  }

  return v20 & 1;
}

void sub_1C0D0620C(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, void *a9@<X8>, void *a10, void *a11, void *a12, id a13, void *a14, void *a15, uint64_t a16)
{
  v133 = sub_1C0D0DE9C(a15, a13);
  v20 = sub_1C0D30290(a15, a8);
  v124 = sub_1C0D0DE9C(v20, a14);

  v123 = sub_1C0D0DE9C(a15, a11);
  v122 = sub_1C0D0DE9C(a15, a12);
  v121 = sub_1C0D0DE9C(a15, a14);
  v21 = sub_1C0D0DE9C(a6, a1);
  v22 = sub_1C0D0DFC0(a10, v21);

  v23 = sub_1C0D0DE9C(a7, a2);
  v24 = sub_1C0D0DFC0(v22, v23);

  v25 = sub_1C0D0DE9C(a15, v24);
  v26 = *(a16 + 8);
  v27 = *(a16 + 16);
  *&v126 = v26;
  *(&v126 + 1) = v27;
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v26, v27);
  sub_1C0D13578(a16, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D808B0);

  v127 = v126;
  *&v128 = MEMORY[0x1E69E7CC0];
  *(&v128 + 1) = MEMORY[0x1E69E7CC0];
  *&v129 = MEMORY[0x1E69E7CC0];
  *(&v129 + 1) = MEMORY[0x1E69E7CC0];
  v130 = MEMORY[0x1E69E7CC0];
  v125 = sub_1C0D21940(12408, 0xE200000000000000, a5);

  v98 = sub_1C0D21940(12664, 0xE200000000000000, a6);
  v100 = sub_1C0D21940(12920, 0xE200000000000000, a7);
  v28 = sub_1C0D21940(0x69646E696C423078, 0xEA0000000000676ELL, a8);

  v29 = sub_1C0D21940(98, 0xE100000000000000, a15);
  v30 = sub_1C0D30290(a15, a6);

  v106 = sub_1C0D21940(12660, 0xE200000000000000, v30);
  v31 = sub_1C0D30290(a15, a7);

  v110 = sub_1C0D21940(12916, 0xE200000000000000, v31);
  v32 = sub_1C0D2EAB0(1198417255, 0xE400000000000000, a13, &v127);
  v33 = sub_1C0D2EAB0(1215194471, 0xE400000000000000, a14, &v127);
  v104 = sub_1C0D2EAB0(0x636E45316DLL, 0xE500000000000000, a1, &v127);
  v103 = sub_1C0D2EAB0(0x636E45326DLL, 0xE500000000000000, a2, &v127);
  v101 = sub_1C0D2EAB0(85, 0xE100000000000000, v133, &v127);
  v107 = v25;
  v105 = sub_1C0D2EAB0(0x6D69725055636E65, 0xE900000000000065, v25, &v127);
  v112 = sub_1C0D2EAB0(12376, 0xE200000000000000, a10, &v127);
  v114 = sub_1C0D2EAB0(12632, 0xE200000000000000, a11, &v127);
  v116 = sub_1C0D2EAB0(12888, 0xE200000000000000, a12, &v127);
  v97 = sub_1C0D2EAB0(0x7875413058, 0xE500000000000000, v124, &v127);
  v99 = sub_1C0D2EAB0(0x7875413158, 0xE500000000000000, v123, &v127);
  v118 = sub_1C0D2EAB0(0x7875413258, 0xE500000000000000, v122, &v127);
  v34 = sub_1C0D2EAB0(2020950344, 0xE400000000000000, v121, &v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C0D7BEE0;
  *(v35 + 32) = v125;
  *(v35 + 40) = v32;
  v102 = v32;
  v36 = v28;
  *(v35 + 48) = v28;
  *(v35 + 56) = v33;
  v37 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1C0CF4AF4(0, v37[2] + 1, 1, v37);
  }

  v39 = v37[2];
  v38 = v37[3];
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1C0CF4AF4((v38 > 1), v39 + 1, 1, v37);
  }

  v37[2] = v39 + 1;
  v40 = &v37[2 * v39];
  v41 = v112;
  v40[4] = v112;
  v40[5] = v35;
  v130 = v37;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C0D7B690;
  *(v42 + 32) = v98;
  *(v42 + 40) = v33;
  v44 = v37[2];
  v43 = v37[3];
  if (v44 >= v43 >> 1)
  {
    v87 = v42;
    v37 = sub_1C0CF4AF4((v43 > 1), v44 + 1, 1, v37);
    v42 = v87;
    v41 = v112;
  }

  v37[2] = v44 + 1;
  v45 = &v37[2 * v44];
  v45[4] = v114;
  v45[5] = v42;
  v130 = v37;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C0D7B690;
  *(v46 + 32) = v100;
  *(v46 + 40) = v33;
  v48 = v37[2];
  v47 = v37[3];
  if (v48 >= v47 >> 1)
  {
    v88 = v46;
    v37 = sub_1C0CF4AF4((v47 > 1), v48 + 1, 1, v37);
    v46 = v88;
    v41 = v112;
  }

  v37[2] = v48 + 1;
  v49 = &v37[2 * v48];
  v49[4] = v116;
  v49[5] = v46;
  v130 = v37;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C0D7B690;
  *(v50 + 32) = v29;
  *(v50 + 40) = v33;
  v52 = v37[2];
  v51 = v37[3];
  if (v52 >= v51 >> 1)
  {
    v89 = v50;
    v37 = sub_1C0CF4AF4((v51 > 1), v52 + 1, 1, v37);
    v50 = v89;
    v41 = v112;
  }

  v37[2] = v52 + 1;
  v53 = &v37[2 * v52];
  v53[4] = v34;
  v53[5] = v50;
  v130 = v37;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C0D7B690;
  *(v54 + 32) = v36;
  *(v54 + 40) = v34;
  v56 = v37[2];
  v55 = v37[3];
  if (v56 >= v55 >> 1)
  {
    v90 = v54;
    v37 = sub_1C0CF4AF4((v55 > 1), v56 + 1, 1, v37);
    v54 = v90;
    v41 = v112;
  }

  v37[2] = v56 + 1;
  v57 = &v37[2 * v56];
  v57[4] = v97;
  v57[5] = v54;
  v130 = v37;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1C0D7B690;
  *(v58 + 32) = v106;
  *(v58 + 40) = v33;
  v60 = v37[2];
  v59 = v37[3];
  if (v60 >= v59 >> 1)
  {
    v91 = v58;
    v37 = sub_1C0CF4AF4((v59 > 1), v60 + 1, 1, v37);
    v58 = v91;
    v41 = v112;
  }

  v37[2] = v60 + 1;
  v61 = &v37[2 * v60];
  v61[4] = v99;
  v61[5] = v58;
  v130 = v37;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1C0D7B690;
  *(v62 + 32) = v29;
  *(v62 + 40) = v114;
  v64 = v37[2];
  v63 = v37[3];
  if (v64 >= v63 >> 1)
  {
    v92 = v62;
    v37 = sub_1C0CF4AF4((v63 > 1), v64 + 1, 1, v37);
    v62 = v92;
    v41 = v112;
  }

  v37[2] = v64 + 1;
  v65 = &v37[2 * v64];
  v65[4] = v99;
  v65[5] = v62;
  v130 = v37;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1C0D7B690;
  *(v66 + 32) = v29;
  *(v66 + 40) = v116;
  v68 = v37[2];
  v67 = v37[3];
  if (v68 >= v67 >> 1)
  {
    v93 = v66;
    v37 = sub_1C0CF4AF4((v67 > 1), v68 + 1, 1, v37);
    v66 = v93;
  }

  v37[2] = v68 + 1;
  v69 = &v37[2 * v68];
  v69[4] = v118;
  v69[5] = v66;
  v130 = v37;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1C0D7B690;
  v71 = v110;
  *(v70 + 32) = v110;
  *(v70 + 40) = v33;
  v73 = v37[2];
  v72 = v37[3];
  if (v73 >= v72 >> 1)
  {
    v94 = v70;
    v37 = sub_1C0CF4AF4((v72 > 1), v73 + 1, 1, v37);
    v70 = v94;
    v71 = v110;
  }

  v37[2] = v73 + 1;
  v74 = &v37[2 * v73];
  v74[4] = v118;
  v74[5] = v70;
  v130 = v37;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1C0D7B690;
  *(v75 + 32) = v29;
  *(v75 + 40) = v102;
  v77 = v37[2];
  v76 = v37[3];
  if (v77 >= v76 >> 1)
  {
    v95 = v75;
    v37 = sub_1C0CF4AF4((v76 > 1), v77 + 1, 1, v37);
    v75 = v95;
    v71 = v110;
  }

  v37[2] = v77 + 1;
  v78 = &v37[2 * v77];
  v78[4] = v101;
  v78[5] = v75;
  v130 = v37;
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1C0D7BEF0;
  *(v79 + 32) = v29;
  *(v79 + 40) = v41;
  *(v79 + 48) = v106;
  *(v79 + 56) = v104;
  *(v79 + 64) = v71;
  *(v79 + 72) = v103;
  v81 = v37[2];
  v80 = v37[3];
  if (v81 >= v80 >> 1)
  {
    v37 = sub_1C0CF4AF4((v80 > 1), v81 + 1, 1, v37);
  }

  v37[2] = v81 + 1;
  v82 = &v37[2 * v81];
  v82[4] = v105;
  v82[5] = v79;

  v130 = v37;

  v131[0] = v127;
  v131[1] = v128;
  v131[2] = v129;
  v132 = v130;
  v83 = sub_1C0D21A5C();
  if (v109)
  {
    sub_1C0D13578(v131, &qword_1EBE6D4E0, &qword_1C0D7C038);
  }

  else
  {
    v85 = v83;
    v86 = v84;
    sub_1C0D13578(v131, &qword_1EBE6D4E0, &qword_1C0D7C038);
    *a9 = v133;
    a9[1] = v107;
    a9[2] = v124;
    a9[3] = v123;
    a9[4] = v122;
    a9[5] = v121;
    a9[6] = v85;
    a9[7] = v86;
  }
}

uint64_t sub_1C0D06CA0(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v115 = *MEMORY[0x1E69E9840];
  v14 = *(v7 + 64);
  v13 = *(v7 + 72);
  v103[0] = v14;
  v103[1] = v13;
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0x4374736575716572, 0xEE00747865746E6FLL);
  v15 = sub_1C0D07698(v14, v13);
  v17 = v16;
  v18 = sub_1C0D0E630(a2, a3, v15, v16);
  sub_1C0CF448C(v15, v17);
  if (v8)
  {
    return v15 & 1;
  }

  if (a7 < 0 || (v92 = a7, a7 >= a6))
  {

    goto LABEL_8;
  }

  v19 = v14;
  v100 = v18;
  v20 = *v9;
  v86 = v9[1];
  v88 = v9[2];
  v21 = v9[5];
  v82 = v9[12];
  v83 = v9[13];
  v22 = *a1;
  v23 = a1[1];
  v90 = a1[3];
  v91 = a1[2];
  v84 = a1[5];
  v85 = a1[4];
  v24 = sub_1C0D0DFC0(*a1, *a1);
  v97[0] = v22;
  LOBYTE(v22) = [v22 isEqual_];

  if ((v22 & 1) != 0 || (v25 = sub_1C0D0DFC0(v23, v23), v26 = [v23 isEqual_], v25, v26))
  {

LABEL_8:
    LOBYTE(v15) = 0;
    return v15 & 1;
  }

  v81 = v21;
  v28 = sub_1C0D0DE9C(v20, v97[0]);
  v29 = sub_1C0D0DE9C(v86, v91);
  v30 = sub_1C0D0DFC0(v28, v29);

  v31 = sub_1C0D30290(v88, v100);
  v32 = sub_1C0D0DE9C(v31, v97[0]);

  v33 = sub_1C0D0DFC0(v30, v32);
  v89 = v23;
  v34 = sub_1C0D2BEDC(v33, v23);

  strcpy(v103, "HashToGroup-");
  BYTE5(v103[1]) = 0;
  HIWORD(v103[1]) = -5120;
  v35 = v19;
  v36 = v19;
  v37 = v13;
  MEMORY[0x1C68E3B00](v36, v13);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](6775124, 0xE300000000000000);

  v38 = sub_1C0D07698(v103[0], v103[1]);
  v40 = v39;
  sub_1C0D3F5F4(a4, a5, v38, v39);
  v42 = v41;
  sub_1C0CF448C(v38, v40);
  v43 = v42;
  v96 = v43;
  v44 = v90;
  v45 = v92;
  if (!v92)
  {
LABEL_14:
    v101 = v35;
    v102 = v37;
    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](v35, v37);
    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](0xD000000000000016, 0x80000001C0D80860);

    v103[0] = v101;
    v103[1] = v102;
    v105 = MEMORY[0x1E69E7CC0];
    v106 = MEMORY[0x1E69E7CC0];
    v107 = MEMORY[0x1E69E7CC0];
    v48 = sub_1C0CF49E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    v51 = v49 >> 1;
    v52 = v50 + 1;
    if (v49 >> 1 <= v50)
    {
      v48 = sub_1C0CF49E8((v49 > 1), v50 + 1, 1, v48);
      v49 = *(v48 + 3);
      v51 = v49 >> 1;
    }

    *(v48 + 2) = v52;
    v53 = &v48[16 * v50];
    *(v53 + 4) = 12653;
    *(v53 + 5) = 0xE200000000000000;
    v54 = v50 + 2;
    if (v51 < (v50 + 2))
    {
      v48 = sub_1C0CF49E8((v49 > 1), v50 + 2, 1, v48);
    }

    *(v48 + 2) = v54;
    v55 = &v48[16 * v52];
    *(v55 + 4) = 122;
    *(v55 + 5) = 0xE100000000000000;
    v104 = v48;
    v56 = v50 + 1;
    v94 = v50 + 1;
    if (__OFSUB__(v54, 1))
    {
      __break(1u);
    }

    else
    {
      v56 = *(v48 + 3);
      v52 = v50 + 3;
      if ((v50 + 3) <= (v56 >> 1))
      {
        goto LABEL_20;
      }
    }

    v48 = sub_1C0CF49E8((v56 > 1), v52, 1, v48);
LABEL_20:
    *(v48 + 2) = v52;
    v57 = &v48[16 * v54];
    *(v57 + 32) = 29229;
    *(v57 + 40) = 0xE200000000000000;
    v104 = v48;
    if (__OFSUB__(v52, 1))
    {
      __break(1u);
    }

    else
    {
      v57 = *(v48 + 3);
      v54 = v50 + 4;
      v80 = v52 - 1;
      if ((v50 + 4) <= (v57 >> 1))
      {
        goto LABEL_22;
      }
    }

    v48 = sub_1C0CF49E8((v57 > 1), v54, 1, v48);
LABEL_22:
    *(v48 + 2) = v54;
    v58 = &v48[16 * v52];
    *(v58 + 4) = 0x65636E6F6ELL;
    *(v58 + 5) = 0xE500000000000000;
    v104 = v48;
    *v87 = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
      __break(1u);
    }

    else
    {
      v82 = sub_1C0D2EC40(1198417255, 0xE400000000000000, v82, v103);
      v59 = sub_1C0D2EC40(1215194471, 0xE400000000000000, v83, v103);
      v60 = sub_1C0D2EC40(85, 0xE100000000000000, v97[0], v103);
      sub_1C0D2EC40(0x6F43656D69725055, 0xEC00000074696D6DLL, v89, v103);
      v83 = sub_1C0D2EC40(0x74696D6D6F43316DLL, 0xE800000000000000, v91, v103);
      v89 = sub_1C0D2EC40(86, 0xE100000000000000, v34, v103);
      v37 = sub_1C0D2EC40(12632, 0xE200000000000000, v81, v103);
      v44 = sub_1C0D2EC40(6775156, 0xE300000000000000, v90, v103);
      v90 = sub_1C0D2EC40(1416521063, 0xE400000000000000, v96, v103);
      v91 = sub_1C0D2EC40(0x676154316DLL, 0xE500000000000000, v43, v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
      v52 = swift_allocObject();
      *v97 = xmmword_1C0D7BEE0;
      *(v52 + 16) = xmmword_1C0D7BEE0;
      *(v52 + 32) = v50;
      *(v52 + 40) = v60;
      *(v52 + 48) = v94;
      *(v52 + 56) = v59;
      v45 = v107;
      v79 = v34;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v62 = v45[2];
        v61 = v45[3];
        if (v62 >= v61 >> 1)
        {
          v45 = sub_1C0CF4AF4((v61 > 1), v62 + 1, 1, v45);
        }

        v45[2] = v62 + 1;
        v63 = &v45[2 * v62];
        v63[4] = v83;
        v63[5] = v52;
        v107 = v45;
        v64 = swift_allocObject();
        *(v64 + 16) = *v97;
        *(v64 + 32) = v94;
        *(v64 + 40) = v37;
        *(v64 + 48) = v80;
        *(v64 + 56) = v82;
        v66 = v45[2];
        v65 = v45[3];
        if (v66 >= v65 >> 1)
        {
          v75 = v64;
          v45 = sub_1C0CF4AF4((v65 > 1), v66 + 1, 1, v45);
          v64 = v75;
        }

        v45[2] = v66 + 1;
        v67 = &v45[2 * v66];
        v67[4] = v89;
        v67[5] = v64;
        v107 = v45;
        v68 = swift_allocObject();
        *(v68 + 16) = *v97;
        *(v68 + 32) = v50;
        *(v68 + 40) = v44;
        *(v68 + 48) = *v87;
        *(v68 + 56) = v44;
        v70 = v45[2];
        v69 = v45[3];
        if (v70 >= v69 >> 1)
        {
          v76 = v68;
          v45 = sub_1C0CF4AF4((v69 > 1), v70 + 1, 1, v45);
          v68 = v76;
        }

        v45[2] = v70 + 1;
        v71 = &v45[2 * v70];
        v71[4] = v90;
        v71[5] = v68;
        v107 = v45;
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1C0D7B690;
        *(v72 + 32) = v50;
        *(v72 + 40) = v44;
        v15 = v45[2];
        v73 = v45[3];
        if (v15 >= v73 >> 1)
        {
          v77 = v72;
          v45 = sub_1C0CF4AF4((v73 > 1), v15 + 1, 1, v45);
          v72 = v77;
        }

        v45[2] = v15 + 1;
        v74 = &v45[2 * v15];
        v74[4] = v91;
        v74[5] = v72;
        v109 = v103[0];
        v110 = v103[1];
        v111 = v104;
        v112 = v105;
        v113 = v106;
        v114 = v45;
        LOBYTE(v15) = sub_1C0D21C50(v85, v84);

        return v15 & 1;
      }
    }

    v45 = sub_1C0CF4AF4(0, v45[2] + 1, 1, v45);
    goto LABEL_24;
  }

  v46 = v43;
  while (1)
  {
    LODWORD(v101) = 0;
    v47 = [v46 sub:v90 corecryptoError:&v101];
    if (!v47)
    {
      break;
    }

    v43 = v47;

    v46 = v43;
    v45 = (v45 - 1);
    if (!v45)
    {
      goto LABEL_14;
    }
  }

  v103[0] = 0;
  v103[1] = 0xE000000000000000;
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD00000000000003FLL, 0x80000001C0D80820);
  v108 = v101;
  v78 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v78);

  sub_1C0D78EBC();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C0D07698(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  sub_1C0D78BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4B0, &qword_1C0D7C010);
  if (swift_dynamicCast())
  {
    sub_1C0D13498(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1C0D7819C();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1C0D13578(v40, &qword_1EBE6D4B8, &qword_1C0D7C018);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v40;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1C0D78DFC();
  }

  sub_1C0D0EB00(v4, v5, &v43);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = sub_1C0D0F990(v8);
  *(&v40[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v10 = sub_1C0D773F0(sub_1C0D1379C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v40[0] + 1) >> 62;
  if ((*(&v40[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v40[0] + 16);
      v18 = *(*&v40[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v40[0]), v40[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v40[0]) - LODWORD(v40[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v40[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v40[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v40[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1C0D782AC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v40[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1C0D77C68(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1C0D78B2C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1C0D78B5C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1C0D78DFC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1C0D77C68(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1C0D78B3C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1C0D782CC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1C0D782CC();
    sub_1C0CEACDC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1C0CEACDC(v36, v6);
LABEL_63:
  v32 = v40[0];
  sub_1C0CF6468(*&v40[0], *(&v40[0] + 1));

  sub_1C0CF448C(v32, *(&v32 + 1));
  return v32;
}

void sub_1C0D07BB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C8, &qword_1C0D7C028);
  v16[3] = v8;
  v16[4] = sub_1C0CF3914(&qword_1EBE6C9C0, &qword_1EBE6D4C8, &qword_1C0D7C028, MEMORY[0x1E696A0A0]);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_1C0D20850((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

unint64_t sub_1C0D07CD0(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1C0D77CE4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1C0D77DA4(v3, v4);
    }

    else
    {
      v6 = sub_1C0D77E20(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1C0D07D8C(__int128 *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D498, &qword_1C0D7BFF8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4A0, &qword_1C0D7C000);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v37 - v6);
  v8 = *a1;
  v47 = a1[1];
  v48 = *(a1 + 4);
  v46 = v8;
  v9 = v8;
  v10 = v47;
  v42 = v8;
  v43 = v47;
  v44 = v48;
  sub_1C0D78BFC();
  sub_1C0CF6468(*(&v9 + 1), v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4A8, &qword_1C0D7C008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4B0, &qword_1C0D7C010);
  if (!swift_dynamicCast())
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_1C0D13578(v40, &qword_1EBE6D4B8, &qword_1C0D7C018);
    v11 = *(&v46 + 1);
    v12 = *(v9 + 16);
    v13 = v47 >> 62;
    if ((v47 >> 62) > 1)
    {
      v14 = 0;
      if (v13 != 2)
      {
        goto LABEL_15;
      }

      v15 = *(*(&v46 + 1) + 16);
      v16 = *(*(&v46 + 1) + 24);
      v17 = __OFSUB__(v16, v15);
      v11 = v16 - v15;
      if (!v17)
      {
LABEL_12:
        if (v11 >= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v11;
        }

LABEL_15:
        *&v42 = sub_1C0D0F990(v14);
        *(&v42 + 1) = v18;
        MEMORY[0x1EEE9AC00](v42);
        *(&v37 - 2) = &v46;
        sub_1C0D77794(sub_1C0D1340C, (&v37 - 4));
        v19 = *&v4[*(v2 + 48)];
        sub_1C0D13428(v4, v7);
        v20 = *(&v42 + 1) >> 62;
        if ((*(&v42 + 1) >> 62) > 1)
        {
          if (v20 != 2)
          {
            if (!v19)
            {
              goto LABEL_30;
            }

            v24 = 0;
LABEL_37:
            if (v24 < v19)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            sub_1C0D782AC();
LABEL_39:
            sub_1C0D13578(v7, &qword_1EBE6D4A0, &qword_1C0D7C000);
            goto LABEL_40;
          }

          v22 = *(v42 + 16);
          v21 = *(v42 + 24);
          v17 = __OFSUB__(v21, v22);
          v23 = v21 - v22;
          if (v17)
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
          }

          if (v19 != v23)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (!v20)
          {
            if (v19 == BYTE14(v42))
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          if (__OFSUB__(DWORD1(v42), v42))
          {
            goto LABEL_53;
          }

          if (v19 != DWORD1(v42) - v42)
          {
LABEL_25:
            if (v20 == 2)
            {
              v24 = *(v42 + 24);
            }

            else if (v20 == 1)
            {
              v24 = v42 >> 32;
            }

            else
            {
              v24 = BYTE14(v42);
            }

            goto LABEL_37;
          }
        }

LABEL_30:
        memset(v45, 0, 15);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C0, &qword_1C0D7C020);
        if ((*(v7 + *(v25 + 56)) & 1) == 0)
        {
          v38 = *(v25 + 56);
          v26 = *v7;
          v27 = v7[1];
          v28 = *(*v7 + 16);
          if (v27 == v28)
          {
            LOBYTE(v29) = 0;
LABEL_33:
            *(v7 + v38) = 1;
            if (v29)
            {
              *&v40[0] = v45[0];
              *(v40 + 6) = *(v45 + 6);
              sub_1C0D782CC();
            }

            goto LABEL_39;
          }

          LOBYTE(v29) = 0;
          while (v27 < v28)
          {
            v34 = *(v26 + v27 + 32);
            v7[1] = v27 + 1;
            sub_1C0D7836C();
            sub_1C0D13530(&qword_1ED9076D8, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
            sub_1C0D78D4C();
            if (BYTE1(v40[0]) == 1)
            {
              goto LABEL_33;
            }

            v35 = v40[0];
            v36 = *(v7 + *(v5 + 44));
            LOBYTE(v40[0]) = v34;
            BYTE1(v40[0]) = v35;
            v36(&v39, v40);
            *(v45 + v29) = v39;
            v29 = v29 + 1;
            if ((v29 >> 8))
            {
              goto LABEL_49;
            }

            if (v29 == 14)
            {
              *&v40[0] = v45[0];
              *(v40 + 6) = *(v45 + 6);
              sub_1C0D782CC();
              LOBYTE(v29) = 0;
            }

            v26 = *v7;
            v27 = v7[1];
            v28 = *(*v7 + 16);
            if (v27 == v28)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v13)
    {
      v11 = BYTE6(v47);
      goto LABEL_12;
    }

    v17 = __OFSUB__(HIDWORD(v11), v11);
    LODWORD(v11) = HIDWORD(v11) - v11;
    if (v17)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v11 = v11;
    goto LABEL_12;
  }

  sub_1C0D13498(v40, v45);
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_1C0D7819C();
  v42 = v40[0];
  __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_40:
  v30 = v42;
  v31 = *(&v46 + 1);
  v32 = v47;
  sub_1C0CF6468(v42, *(&v42 + 1));

  sub_1C0CF448C(v31, v32);

  sub_1C0CF448C(v30, *(&v30 + 1));
  return v30;
}

uint64_t sub_1C0D0837C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>, void *a10)
{
  v118 = a7;
  v127 = a6;
  v125 = a5;
  v102 = a9;
  v135 = *MEMORY[0x1E69E9840];
  *&v119 = sub_1C0D786CC();
  v15 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 48);
  v112 = *(a1 + 40);
  v111 = v18;
  v117 = *(a1 + 56);
  v19 = sub_1C0D0DE9C(a2, *(a1 + 8));
  v114 = *a1;
  v126 = v19;
  v20 = sub_1C0D0DE9C(v114, v19);
  v121 = a10;
  v21 = sub_1C0D0DE9C(a4, a10);
  v124 = sub_1C0D0DFC0(v20, v21);

  v22 = sub_1C0D0DE9C(a2, *(a1 + 16));
  v23 = sub_1C0D0DE9C(a3, a8);
  v116 = v22;
  v123 = sub_1C0D0DFC0(v22, v23);

  v24 = *(a1 + 24);
  v115 = a4;
  v25 = a4;
  v26 = a3;
  v113 = v24;
  v27 = sub_1C0D0DE9C(v25, v24);
  v122 = a8;
  v28 = sub_1C0D0DE9C(a3, a8);
  v120 = sub_1C0D2BEDC(v27, v28);

  v29 = sub_1C0D053E8(v118, v117);
  v31 = v30;
  LODWORD(v129) = 0;
  sub_1C0D7884C();
  sub_1C0CF6468(v29, v31);
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v32 = sub_1C0D786BC();
  (*(v15 + 8))(v17, v119);
  v33 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v34 = sub_1C0D7830C();
  v35 = [v33 initWithData:v34 inGroup:v32 reduction:1 corecryptoError:&v129];

  sub_1C0CF448C(v29, v31);
  if (!v35)
  {
    v90 = v26;
    v91 = v129;
    sub_1C0CF8DE0();
    swift_allocError();
    *v92 = v91;
    *(v92 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v29, v31);
    sub_1C0CF448C(v125, v127);

    v89 = a1;
    return sub_1C0D13578(v89, &qword_1EBE6D450, &unk_1C0D7BF20);
  }

  *&v119 = v26;
  v117 = a1;
  sub_1C0CF448C(v29, v31);
  v36 = v114;
  v37 = sub_1C0D302E8(v35, v114);
  v38 = [v37 inverseModOrder];

  if (!v38)
  {
    __break(1u);
    goto LABEL_20;
  }

  strcpy(&v129, "HashToGroup-");
  BYTE13(v129) = 0;
  HIWORD(v129) = -5120;
  v39 = v112;
  v40 = v111;
  MEMORY[0x1C68E3B00](v112, v111);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](6775124, 0xE300000000000000);

  v41 = sub_1C0D07698(v129, *(&v129 + 1));
  v43 = v42;
  v44 = v110;
  sub_1C0D3F5F4(v125, v127, v41, v42);
  v109 = v44;
  if (v44)
  {
LABEL_20:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v46 = v45;
  sub_1C0CF448C(v41, v43);
  v110 = v38;
  v47 = sub_1C0D0DE9C(v38, v46);
  v48 = v36;
  v49 = sub_1C0D0DE9C(v36, v47);
  *&v128 = v39;
  *(&v128 + 1) = v40;
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v39, v40);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000016, 0x80000001C0D80860);

  v129 = v128;
  *&v130 = MEMORY[0x1E69E7CC0];
  *(&v130 + 1) = MEMORY[0x1E69E7CC0];
  *&v131 = MEMORY[0x1E69E7CC0];
  *(&v131 + 1) = MEMORY[0x1E69E7CC0];
  v132 = MEMORY[0x1E69E7CC0];
  v50 = sub_1C0D21940(12653, 0xE200000000000000, v48);
  v51 = v115;
  v104 = sub_1C0D21940(122, 0xE100000000000000, v115);

  v52 = v119;
  v53 = sub_1C0D2C288(v119);

  v108 = sub_1C0D21940(29229, 0xE200000000000000, v53);
  v114 = v35;
  v115 = sub_1C0D21940(0x65636E6F6ELL, 0xE500000000000000, v35);
  v106 = sub_1C0D2EAB0(1198417255, 0xE400000000000000, v122, &v129);
  v54 = sub_1C0D2EAB0(1215194471, 0xE400000000000000, v121, &v129);
  v55 = sub_1C0D2EAB0(85, 0xE100000000000000, v126, &v129);
  sub_1C0D2EAB0(0x6F43656D69725055, 0xEC00000074696D6DLL, v123, &v129);
  v56 = sub_1C0D2EAB0(0x74696D6D6F43316DLL, 0xE800000000000000, v124, &v129);
  v103 = sub_1C0D2EAB0(86, 0xE100000000000000, v120, &v129);
  v57 = sub_1C0D2EAB0(12632, 0xE200000000000000, v113, &v129);
  v113 = v47;
  v58 = sub_1C0D2EAB0(6775156, 0xE300000000000000, v47, &v129);
  v112 = v46;
  v105 = sub_1C0D2EAB0(1416521063, 0xE400000000000000, v46, &v129);
  v111 = v49;
  v59 = sub_1C0D2EAB0(0x676154316DLL, 0xE500000000000000, v49, &v129);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v60 = swift_allocObject();
  v119 = xmmword_1C0D7BEE0;
  *(v60 + 16) = xmmword_1C0D7BEE0;
  v118 = v50;
  *(v60 + 32) = v50;
  *(v60 + 40) = v55;
  v61 = v104;
  *(v60 + 48) = v104;
  *(v60 + 56) = v54;
  v62 = v132;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v107 = v59;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v62 = sub_1C0CF4AF4(0, v62[2] + 1, 1, v62);
  }

  v65 = v62[2];
  v64 = v62[3];
  if (v65 >= v64 >> 1)
  {
    v62 = sub_1C0CF4AF4((v64 > 1), v65 + 1, 1, v62);
  }

  v62[2] = v65 + 1;
  v66 = &v62[2 * v65];
  v66[4] = v56;
  v66[5] = v60;
  v132 = v62;
  v67 = swift_allocObject();
  *(v67 + 16) = v119;
  *(v67 + 32) = v61;
  *(v67 + 40) = v57;
  v68 = v106;
  *(v67 + 48) = v108;
  *(v67 + 56) = v68;
  v70 = v62[2];
  v69 = v62[3];
  if (v70 >= v69 >> 1)
  {
    v99 = v67;
    v62 = sub_1C0CF4AF4((v69 > 1), v70 + 1, 1, v62);
    v67 = v99;
  }

  v71 = v126;
  v72 = v124;
  v73 = v122;
  v62[2] = v70 + 1;
  v74 = &v62[2 * v70];
  v74[4] = v103;
  v74[5] = v67;
  v132 = v62;
  v75 = swift_allocObject();
  *(v75 + 16) = v119;
  v76 = v118;
  *(v75 + 32) = v118;
  *(v75 + 40) = v58;
  *(v75 + 48) = v115;
  *(v75 + 56) = v58;
  v78 = v62[2];
  v77 = v62[3];
  if (v78 >= v77 >> 1)
  {
    v100 = v75;
    v62 = sub_1C0CF4AF4((v77 > 1), v78 + 1, 1, v62);
    v75 = v100;
    v76 = v118;
  }

  v62[2] = v78 + 1;
  v79 = &v62[2 * v78];
  v79[4] = v105;
  v79[5] = v75;
  v132 = v62;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1C0D7B690;
  *(v80 + 32) = v76;
  *(v80 + 40) = v58;
  v82 = v62[2];
  v81 = v62[3];
  if (v82 >= v81 >> 1)
  {
    v62 = sub_1C0CF4AF4((v81 > 1), v82 + 1, 1, v62);
  }

  v83 = v117;
  v84 = v116;

  v62[2] = v82 + 1;
  v85 = &v62[2 * v82];
  v85[4] = v107;
  v85[5] = v80;
  v132 = v62;
  v134 = v62;
  v133[0] = v129;
  v133[1] = v130;
  v133[2] = v131;
  v86 = v109;
  v87 = sub_1C0D21A5C();
  if (v86)
  {
    sub_1C0D13578(v133, &qword_1EBE6D4E0, &qword_1C0D7C038);
    sub_1C0CF448C(v125, v127);

    v89 = v83;
    return sub_1C0D13578(v89, &qword_1EBE6D450, &unk_1C0D7BF20);
  }

  v94 = v87;
  v95 = v88;

  sub_1C0D13578(v133, &qword_1EBE6D4E0, &qword_1C0D7C038);
  sub_1C0CF448C(v125, v127);
  result = sub_1C0D13578(v83, &qword_1EBE6D450, &unk_1C0D7BF20);
  v96 = v102;
  v97 = v123;
  *v102 = v71;
  v96[1] = v97;
  v98 = v113;
  v96[2] = v72;
  v96[3] = v98;
  v96[4] = v94;
  v96[5] = v95;
  return result;
}

void sub_1C0D08F3C(void *a1, void *a2, void *a3, void *a4, id a5, void *a6, uint64_t a7)
{
  v14 = sub_1C0D0DE9C(a1, a5);
  v15 = sub_1C0D0DE9C(a3, a6);
  v48 = sub_1C0D0DFC0(v14, v15);

  v16 = sub_1C0D0DE9C(a2, a5);
  v17 = sub_1C0D0DE9C(a4, a6);
  v40 = sub_1C0D0DFC0(v16, v17);

  v18 = *(a7 + 8);
  v19 = *(a7 + 16);
  *&v41 = v18;
  *(&v41 + 1) = v19;
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v18, v19);
  sub_1C0D13578(a7, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000011, 0x80000001C0D808D0);

  v42 = v41;
  *&v43 = MEMORY[0x1E69E7CC0];
  *(&v43 + 1) = MEMORY[0x1E69E7CC0];
  *&v44 = MEMORY[0x1E69E7CC0];
  *(&v44 + 1) = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v20 = sub_1C0D21940(12653, 0xE200000000000000, a1);

  v35 = sub_1C0D21940(12909, 0xE200000000000000, a2);
  v21 = sub_1C0D21940(12658, 0xE200000000000000, a3);

  v39 = sub_1C0D21940(12914, 0xE200000000000000, a4);
  v36 = a5;
  v22 = sub_1C0D2EAB0(1198417255, 0xE400000000000000, a5, &v42);
  v37 = a6;
  v23 = sub_1C0D2EAB0(1215194471, 0xE400000000000000, a6, &v42);
  v24 = sub_1C0D2EAB0(0x636E45316DLL, 0xE500000000000000, v48, &v42);
  v25 = sub_1C0D2EAB0(0x636E45326DLL, 0xE500000000000000, v40, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C0D7BEE0;
  *(v26 + 32) = v20;
  *(v26 + 40) = v22;
  *(v26 + 48) = v21;
  *(v26 + 56) = v23;
  v27 = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1C0CF4AF4(0, v27[2] + 1, 1, v27);
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1C0CF4AF4((v28 > 1), v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  v30 = &v27[2 * v29];
  v30[4] = v24;
  v30[5] = v26;
  v45 = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C0D7BEE0;
  *(v31 + 32) = v35;
  *(v31 + 40) = v22;
  *(v31 + 48) = v39;
  *(v31 + 56) = v23;
  v33 = v27[2];
  v32 = v27[3];
  if (v33 >= v32 >> 1)
  {
    v27 = sub_1C0CF4AF4((v32 > 1), v33 + 1, 1, v27);
  }

  v27[2] = v33 + 1;
  v34 = &v27[2 * v33];
  v34[4] = v25;
  v34[5] = v31;
  v45 = v27;
  v47 = v27;
  v46[0] = v42;
  v46[1] = v43;
  v46[2] = v44;
  sub_1C0D21A5C();
  sub_1C0D13578(v46, &qword_1EBE6D4E0, &qword_1C0D7C038);
  if (v38)
  {
  }
}

char *ARCAwaitingActivationWrapper.init(requestContext:serverPublicKeyData:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = sub_1C0D786CC();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D099E4(v83);
  v13 = &v4[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_ciphersuite];
  v14 = v83[1];
  *v13 = v83[0];
  *(v13 + 1) = v14;
  v15 = v84;
  v87 = v13;
  *(v13 + 4) = v84;
  sub_1C0D13734(v83, v82, &qword_1EBE6D420, &qword_1C0D7BF10);
  v16 = sub_1C0D105F4(a3, a4, v15);
  if (v5)
  {
    sub_1C0CF448C(a1, a2);
    sub_1C0D13578(v83, &qword_1EBE6D420, &qword_1C0D7BF10);
    sub_1C0CF448C(a3, a4);
    goto LABEL_9;
  }

  v65 = v18;
  v66 = v17;
  v67 = v16;
  v68 = a1;
  v62 = a3;
  v63 = 0;
  v69 = a4;
  v70 = a2;
  v64 = v4;
  sub_1C0D13578(v83, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D099E4(v85);
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v19 = sub_1C0D786BC();
  v20 = v72;
  v21 = v71[1];
  v21(v12, v72);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = result;
  sub_1C0D786EC();
  v24 = sub_1C0D786BC();
  v21(v12, v20);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  v71 = result;
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1C0D786EC();
  v25 = sub_1C0D786BC();
  v21(v12, v20);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v26 = result;
    v74 = *(v85 + 8);
    v27 = v68;
    v28 = v70;
    sub_1C0CF6468(v68, v70);
    sub_1C0D13734(v85, v82, &qword_1EBE6D420, &qword_1C0D7BF10);
    MEMORY[0x1C68E3B00](0x4374736575716572, 0xEE00747865746E6FLL);
    v29 = sub_1C0D07698(v74, *(&v74 + 1));
    v31 = v30;
    v32 = v63;
    v33 = sub_1C0D0E630(v27, v28, v29, v30);
    v34 = v69;
    if (!v32)
    {
      v35 = v33;
      sub_1C0CF448C(v29, v31);
      *&v75 = v23;
      *(&v75 + 1) = v35;
      v36 = v71;
      *&v76 = v71;
      *(&v76 + 1) = v26;
      *&v77 = v67;
      *(&v77 + 1) = v66;
      *&v78[0] = v65;
      *(v78 + 8) = v85[0];
      *(&v78[1] + 8) = v85[1];
      *(&v78[2] + 1) = v86;
      sub_1C0D13734(v85, v82, &qword_1EBE6D420, &qword_1C0D7BF10);
      v37 = v23;
      v38 = v35;
      v39 = v36;
      v40 = v26;
      *&v79 = sub_1C0D058D0(&v79 + 1, v85);
      v41 = *(&v79 + 1);
      v42 = v79;
      v43 = v41;
      v71 = v38;
      v72 = v37;
      v63 = v42;
      v61 = v43;
      sub_1C0D08F3C(v37, v38, v39, v40, v42, v43, v85);
      v44 = v64;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = v68;
      v54 = v70;
      sub_1C0CF448C(v68, v70);
      *&v80 = v46;
      *(&v80 + 1) = v48;
      *&v81 = v50;
      *(&v81 + 1) = v52;
      v55 = &v44[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential];
      v56 = v80;
      *(v55 + 6) = v79;
      *(v55 + 7) = v56;
      v57 = v78[0];
      *(v55 + 2) = v77;
      *(v55 + 3) = v57;
      v58 = v78[2];
      *(v55 + 4) = v78[1];
      *(v55 + 5) = v58;
      v59 = v76;
      *v55 = v75;
      *(v55 + 1) = v59;
      *(v55 + 8) = v81;
      v60 = type metadata accessor for ARCAwaitingActivationWrapper();
      v73.receiver = v44;
      v73.super_class = v60;
      v4 = objc_msgSendSuper2(&v73, sel_init);
      sub_1C0CF448C(v62, v69);
      sub_1C0CF448C(v53, v54);
      return v4;
    }

    sub_1C0CF448C(v27, v28);
    sub_1C0CF448C(v62, v34);

    sub_1C0CF448C(v29, v31);
    sub_1C0CF448C(v27, v28);
    sub_1C0D13578(v85, &qword_1EBE6D420, &qword_1C0D7BF10);
    v4 = v64;
LABEL_9:

    type metadata accessor for ARCAwaitingActivationWrapper();
    swift_deallocPartialClassInstance();
    return v4;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1C0D099E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v7 = sub_1C0D786BC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  result = [v6 groupOrderByteCountForCP_];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    sub_1C0D786EC();
    v11 = sub_1C0D786BC();
    v8(v5, v2);
    result = [v6 compressedx962PointByteCountForCurveParameters_];
    if ((result & 0x8000000000000000) == 0)
    {
      *a1 = xmmword_1C0D7BF00;
      *(a1 + 16) = 0xEA00000000003635;
      *(a1 + 24) = v10;
      *(a1 + 32) = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_1C0D09D5C(uint64_t a1, unint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential);
  v5 = *(v2 + OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 72);
  v37[0] = *(v2 + OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 56);
  v37[1] = v5;
  v38 = *(v2 + OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 88);
  sub_1C0D09F10(a1, a2, v37, &v28);
  if (!v3)
  {
    v36[0] = v28;
    v36[1] = v29;
    v36[2] = v30;
    v36[3] = v31;
    v6 = v4[7];
    v36[10] = v4[6];
    v36[11] = v6;
    v36[12] = v4[8];
    v7 = v4[3];
    v36[6] = v4[2];
    v36[7] = v7;
    v8 = v4[5];
    v36[8] = v4[4];
    v36[9] = v8;
    v9 = v4[1];
    v36[4] = *v4;
    v36[5] = v9;
    sub_1C0D0AAF0(v36, &v28);
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v22 = v28;
    v23 = v29;
    v10 = type metadata accessor for ARCCredentialWrapper();
    v11 = objc_allocWithZone(v10);
    sub_1C0D099E4(v34);
    v12 = &v11[OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_ciphersuite];
    v13 = v34[1];
    *v12 = v34[0];
    *(v12 + 1) = v13;
    *(v12 + 4) = v35;
    v14 = &v11[OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential];
    v15 = v23;
    *v14 = v22;
    *(v14 + 1) = v15;
    v16 = v27;
    v18 = v24;
    v17 = v25;
    *(v14 + 4) = v26;
    *(v14 + 5) = v16;
    *(v14 + 2) = v18;
    *(v14 + 3) = v17;
    sub_1C0D13734(&v22, v21, &qword_1EBE6D450, &unk_1C0D7BF20);
    v20.receiver = v11;
    v20.super_class = v10;
    v4 = objc_msgSendSuper2(&v20, sel_init);
    sub_1C0D13578(v36, &qword_1EBE6D438, &qword_1C0D7BF18);
    sub_1C0D13578(&v22, &qword_1EBE6D450, &unk_1C0D7BF20);
  }

  return v4;
}

uint64_t sub_1C0D09F10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v134 = *MEMORY[0x1E69E9840];
  v9 = sub_1C0D786CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v14 = v14;
LABEL_10:
  v18 = *(a3 + 32);
  v19 = 6 * v18;
  if ((v18 * 6) >> 64 != (6 * v18) >> 63)
  {
    __break(1u);
    goto LABEL_57;
  }

  v20 = *(a3 + 24);
  if ((v20 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v17 = __OFADD__(v19, 8 * v20);
  v21 = v19 + 8 * v20;
  if (v17)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v14 != v21)
  {
    sub_1C0CFC3D4();
    swift_allocError();
    *v28 = 4;
    return swift_willThrow();
  }

  v121 = *(a3 + 24);
  v130 = MEMORY[0x1E6969080];
  v131 = MEMORY[0x1E6969078];
  v128 = a1;
  v129 = a2;
  v22 = __swift_project_boxed_opaque_existential_1(&v128, MEMORY[0x1E6969080]);
  v23 = *v22;
  v24 = v22[1];
  v25 = v24 >> 62;
  v119 = a4;
  v125 = v9;
  if ((v24 >> 62) > 1)
  {
    if (v25 != 2)
    {
      memset(v126, 0, 14);
      sub_1C0CF6468(a1, a2);
      v26 = v126;
      v27 = v126;
      goto LABEL_37;
    }

    v30 = *(v23 + 16);
    v31 = *(v23 + 24);
    sub_1C0CF6468(a1, a2);
    a2 = v24 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = sub_1C0D7812C();
    if (a1)
    {
      a2 = v24 & 0x3FFFFFFFFFFFFFFFLL;
      v32 = sub_1C0D7815C();
      v23 = v30 - v32;
      if (__OFSUB__(v30, v32))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      a1 += v23;
    }

    v17 = __OFSUB__(v31, v30);
    v33 = v31 - v30;
    if (!v17)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v126[0] = v23;
    LOWORD(v126[1]) = v24;
    BYTE2(v126[1]) = BYTE2(v24);
    BYTE3(v126[1]) = BYTE3(v24);
    BYTE4(v126[1]) = BYTE4(v24);
    BYTE5(v126[1]) = BYTE5(v24);
    sub_1C0CF6468(a1, a2);
    v26 = v126;
    v27 = v126 + BYTE6(v24);
    goto LABEL_37;
  }

  v34 = v23;
  v35 = v23 >> 32;
  v33 = v35 - v34;
  if (v35 < v34)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  sub_1C0CF6468(a1, a2);
  a1 = sub_1C0D7812C();
  if (a1)
  {
    v36 = sub_1C0D7815C();
    if (!__OFSUB__(v34, v36))
    {
      a1 += v34 - v36;
      goto LABEL_29;
    }

LABEL_62:
    __break(1u);
  }

LABEL_29:
  v37 = sub_1C0D7814C();
  if (v37 >= v33)
  {
    v38 = v33;
  }

  else
  {
    v38 = v37;
  }

  v39 = (v38 + a1);
  if (a1)
  {
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  v26 = a1;
LABEL_37:
  sub_1C0D20850(v26, v27, v127);
  v120 = v4;
  v40 = v127[0];
  v41 = v127[1];
  __swift_destroy_boxed_opaque_existential_1(&v128);
  v132 = v40;
  v133 = v41;
  sub_1C0CF6468(v40, v41);
  sub_1C0D01560(v18, v40, v41, &v128);
  v43 = v128;
  v42 = v129;
  sub_1C0D22268(v18);
  LODWORD(v128) = 0;
  sub_1C0D7884C();
  sub_1C0CF6468(v43, v42);
  v124 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v44 = sub_1C0D786BC();
  v123 = *(v10 + 8);
  v123(v12, v125);
  v45 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v46 = sub_1C0D7830C();
  v47 = [v45 initFromPublicKeyBytes:v46 inGroup:v44 compressed:1 corecryptoError:&v128];

  sub_1C0CF448C(v43, v42);
  if (!v47)
  {
    v95 = v128;
    sub_1C0CF8DE0();
    swift_allocError();
    *v96 = v95;
    *(v96 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v43, v42);
LABEL_52:
    v93 = v132;
    v94 = v133;
    return sub_1C0CF448C(v93, v94);
  }

  v122 = v47;
  sub_1C0CF448C(v43, v42);
  v48 = v132;
  v49 = v133;
  sub_1C0CF6468(v132, v133);
  sub_1C0D01560(v18, v48, v49, &v128);
  v50 = v128;
  v51 = v129;
  sub_1C0D22268(v18);
  LODWORD(v128) = 0;
  sub_1C0CF6468(v50, v51);
  sub_1C0D786EC();
  v52 = sub_1C0D786BC();
  v123(v12, v125);
  v53 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v54 = sub_1C0D7830C();
  v55 = [v53 initFromPublicKeyBytes:v54 inGroup:v52 compressed:1 corecryptoError:&v128];

  sub_1C0CF448C(v50, v51);
  if (!v55)
  {
    v97 = v128;
    sub_1C0CF8DE0();
    swift_allocError();
    *v98 = v97;
    *(v98 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v50, v51);
    v99 = v122;
LABEL_51:

    goto LABEL_52;
  }

  v118 = v55;
  sub_1C0CF448C(v50, v51);
  v56 = v132;
  v57 = v133;
  sub_1C0CF6468(v132, v133);
  sub_1C0D01560(v18, v56, v57, &v128);
  v58 = v128;
  v59 = v129;
  sub_1C0D22268(v18);
  LODWORD(v128) = 0;
  sub_1C0CF6468(v58, v59);
  sub_1C0D786EC();
  v60 = sub_1C0D786BC();
  v123(v12, v125);
  v61 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v62 = sub_1C0D7830C();
  v63 = [v61 initFromPublicKeyBytes:v62 inGroup:v60 compressed:1 corecryptoError:&v128];

  sub_1C0CF448C(v58, v59);
  if (!v63)
  {
    v100 = v128;
    sub_1C0CF8DE0();
    swift_allocError();
    *v101 = v100;
    *(v101 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v58, v59);
LABEL_50:

    v99 = v118;
    goto LABEL_51;
  }

  v117 = v63;
  sub_1C0CF448C(v58, v59);
  v64 = v132;
  v65 = v133;
  sub_1C0CF6468(v132, v133);
  sub_1C0D01560(v18, v64, v65, &v128);
  v66 = v128;
  v67 = v129;
  sub_1C0D22268(v18);
  LODWORD(v128) = 0;
  sub_1C0CF6468(v66, v67);
  sub_1C0D786EC();
  v68 = sub_1C0D786BC();
  v123(v12, v125);
  v69 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v70 = sub_1C0D7830C();
  v71 = [v69 initFromPublicKeyBytes:v70 inGroup:v68 compressed:1 corecryptoError:&v128];

  sub_1C0CF448C(v66, v67);
  if (!v71)
  {
    v102 = v128;
    sub_1C0CF8DE0();
    swift_allocError();
    *v103 = v102;
    *(v103 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v66, v67);

    v99 = v122;
    goto LABEL_51;
  }

  v116 = v71;
  sub_1C0CF448C(v66, v67);
  v72 = v132;
  v73 = v133;
  sub_1C0CF6468(v132, v133);
  sub_1C0D01560(v18, v72, v73, &v128);
  v74 = v128;
  v75 = v129;
  sub_1C0D22268(v18);
  LODWORD(v128) = 0;
  sub_1C0CF6468(v74, v75);
  sub_1C0D786EC();
  v76 = sub_1C0D786BC();
  v123(v12, v125);
  v77 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v78 = sub_1C0D7830C();
  v79 = [v77 initFromPublicKeyBytes:v78 inGroup:v76 compressed:1 corecryptoError:&v128];

  sub_1C0CF448C(v74, v75);
  if (!v79)
  {
    v104 = v128;
    sub_1C0CF8DE0();
    swift_allocError();
    *v105 = v104;
    *(v105 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v74, v75);

    goto LABEL_50;
  }

  v115 = v79;
  sub_1C0CF448C(v74, v75);
  v80 = v132;
  v81 = v133;
  sub_1C0CF6468(v132, v133);
  sub_1C0D01560(v18, v80, v81, &v128);
  v82 = v128;
  v83 = v129;
  sub_1C0D22268(v18);
  LODWORD(v128) = 0;
  sub_1C0CF6468(v82, v83);
  sub_1C0D786EC();
  v84 = sub_1C0D786BC();
  v123(v12, v125);
  v85 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v86 = sub_1C0D7830C();
  v87 = [v85 initFromPublicKeyBytes:v86 inGroup:v84 compressed:1 corecryptoError:&v128];

  sub_1C0CF448C(v82, v83);
  if (!v87)
  {
    v106 = v128;
    sub_1C0CF8DE0();
    swift_allocError();
    *v107 = v106;
    *(v107 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v82, v83);

    v99 = v117;
    goto LABEL_51;
  }

  sub_1C0CF448C(v82, v83);
  v88 = v132;
  v89 = v133;
  v90 = v120;
  v91 = sub_1C0D11094(v132, v133, 8, v121);
  if (v90)
  {

    v93 = v88;
    v94 = v89;
    return sub_1C0CF448C(v93, v94);
  }

  v108 = v91;
  v109 = v88;
  v110 = v92;
  result = sub_1C0CF448C(v109, v89);
  v111 = v119;
  v112 = v117;
  v113 = v118;
  *v119 = v122;
  v111[1] = v113;
  v111[2] = v112;
  v114 = v115;
  v111[3] = v116;
  v111[4] = v114;
  v111[5] = v87;
  v111[6] = v108;
  v111[7] = v110;
  return result;
}

id sub_1C0D0AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[14];
  v29 = v2[15];
  v5 = v2[2];
  v6 = v2[3];
  v36 = *v2;
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(v2 + 9);
  v33 = *(v2 + 7);
  v34 = v10;
  v11 = v2[12];
  v35 = v2[11];
  v12 = v2[13];
  sub_1C0D13734(&v36, v32, &qword_1EBE6D480, &unk_1C0D7BF30);
  v13 = v5;
  v14 = v6;
  sub_1C0D13734(&v33, v32, &qword_1EBE6D420, &qword_1C0D7BF10);
  v15 = v11;
  v16 = v12;
  sub_1C0D13734(a1, v32, &qword_1EBE6D438, &qword_1C0D7BF18);
  v17 = sub_1C0D0FB0C(v4, v29, v7, v8, v9, v15, v16, &v33);
  if (v30)
  {

    sub_1C0D13578(&v33, &qword_1EBE6D420, &qword_1C0D7BF10);
    sub_1C0D13578(&v36, &qword_1EBE6D480, &unk_1C0D7BF30);
    return sub_1C0D13578(a1, &qword_1EBE6D438, &qword_1C0D7BF18);
  }

  else if (v17)
  {
    v31 = v16;
    v19 = sub_1C0D2BEDC(*(a1 + 8), *(a1 + 16));
    v20 = sub_1C0D0DE9C(v13, *(a1 + 24));

    v21 = sub_1C0D2BEDC(v19, v20);
    v22 = sub_1C0D0DE9C(v14, *(a1 + 32));

    v23 = sub_1C0D2BEDC(v21, v22);
    v24 = *a1;
    sub_1C0D13578(a1, &qword_1EBE6D438, &qword_1C0D7BF18);
    *a2 = v36;
    *(a2 + 8) = v24;
    *(a2 + 16) = v23;
    *(a2 + 24) = v8;
    v25 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v25;
    *(a2 + 64) = v35;
    *(a2 + 72) = v15;
    v26 = MEMORY[0x1E69E7CC8];
    *(a2 + 80) = v31;
    *(a2 + 88) = v26;
    return v8;
  }

  else
  {

    sub_1C0D13578(&v33, &qword_1EBE6D420, &qword_1C0D7BF10);
    sub_1C0D13578(&v36, &qword_1EBE6D480, &unk_1C0D7BF30);
    sub_1C0D13578(a1, &qword_1EBE6D438, &qword_1C0D7BF18);
    sub_1C0CFC3D4();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1C0D0AFB0()
{
  v1 = (v0 + OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential);
  swift_beginAccess();
  v2 = v1[2];
  v3 = v1[4];
  v12 = v1[3];
  v13 = v3;
  v4 = v1[1];
  v11[0] = *v1;
  v11[1] = v4;
  v11[2] = v2;
  v5 = v1[5];
  v15[0] = v2;
  v15[1] = v12;
  v14 = v5;
  v16 = *(v1 + 8);
  v6 = v16;
  v7 = *(&v12 + 1);
  sub_1C0D13734(v11, v10, &qword_1EBE6D450, &unk_1C0D7BF20);
  sub_1C0D13734(v15, v10, &qword_1EBE6D420, &qword_1C0D7BF10);
  v8 = sub_1C0D11774(v7, v6);
  sub_1C0D13578(v15, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D13578(v11, &qword_1EBE6D450, &unk_1C0D7BF20);
  return v8;
}

char *ARCCredentialWrapper.init(credentialData:)(uint64_t a1, unint64_t a2)
{
  sub_1C0D099E4(v15);
  v6 = &v2[OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_ciphersuite];
  v7 = v15[1];
  *v6 = v15[0];
  *(v6 + 1) = v7;
  *(v6 + 4) = v16;
  sub_1C0D78BFC();
  sub_1C0D0B424(a1, a2, v15, v14);
  sub_1C0D13578(v15, &qword_1EBE6D420, &qword_1C0D7BF10);
  if (v3)
  {
    sub_1C0CF448C(a1, a2);

    type metadata accessor for ARCCredentialWrapper();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = &v2[OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential];
    v9 = v14[3];
    *(v8 + 2) = v14[2];
    *(v8 + 3) = v9;
    v10 = v14[5];
    *(v8 + 4) = v14[4];
    *(v8 + 5) = v10;
    v11 = v14[1];
    *v8 = v14[0];
    *(v8 + 1) = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for ARCCredentialWrapper();
    v2 = objc_msgSendSuper2(&v13, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v2;
}

uint64_t sub_1C0D0B424@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v150 = *MEMORY[0x1E69E9840];
  v9 = sub_1C0D786CC();
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v14 = v14;
LABEL_10:
  v18 = *(a3 + 32);
  v19 = 5 * v18;
  if ((v18 * 5) >> 64 != (5 * v18) >> 63)
  {
    __break(1u);
    goto LABEL_79;
  }

  v20 = *(a3 + 24);
  v17 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (v17)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v17 = __OFSUB__(v14, v21);
  v22 = v14 - v21;
  if (v17)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v22 < 0)
  {
    sub_1C0CFC3D4();
    swift_allocError();
    *v30 = 5;
    return swift_willThrow();
  }

  v135 = v18;
  v141 = v10;
  v132 = a4;
  v23 = MEMORY[0x1E6969080];
  v24 = MEMORY[0x1E6969078];
  v148 = MEMORY[0x1E6969080];
  v149 = MEMORY[0x1E6969078];
  *&v147 = a1;
  *(&v147 + 1) = a2;
  v25 = __swift_project_boxed_opaque_existential_1(&v147, MEMORY[0x1E6969080]);
  v26 = *v25;
  v27 = v25[1];
  v28 = v27 >> 62;
  v138 = v9;
  if ((v27 >> 62) <= 1)
  {
    if (!v28)
    {
      *&v145 = v26;
      WORD4(v145) = v27;
      BYTE10(v145) = BYTE2(v27);
      BYTE11(v145) = BYTE3(v27);
      BYTE12(v145) = BYTE4(v27);
      BYTE13(v145) = BYTE5(v27);
      sub_1C0CF6468(a1, a2);
      v29 = (&v145 + BYTE6(v27));
LABEL_37:
      sub_1C0D20850(&v145, v29, &v146);
      v43 = v4;
      goto LABEL_38;
    }

LABEL_25:
    v36 = v26;
    v37 = v26 >> 32;
    v35 = v37 - v36;
    if (v37 >= v36)
    {
      sub_1C0CF6468(a1, a2);
      a1 = sub_1C0D7812C();
      if (a1)
      {
        v38 = sub_1C0D7815C();
        if (__OFSUB__(v36, v38))
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        a1 += v36 - v38;
      }

      goto LABEL_29;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v28 != 2)
  {
    *(&v145 + 6) = 0;
    *&v145 = 0;
    sub_1C0CF6468(a1, a2);
    v29 = &v145;
    goto LABEL_37;
  }

  v32 = *(v26 + 16);
  v33 = *(v26 + 24);
  sub_1C0CF6468(a1, a2);
  a2 = v27 & 0x3FFFFFFFFFFFFFFFLL;
  a1 = sub_1C0D7812C();
  if (a1)
  {
    a2 = v27 & 0x3FFFFFFFFFFFFFFFLL;
    v34 = sub_1C0D7815C();
    v26 = v32 - v34;
    if (__OFSUB__(v32, v34))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    a1 += v26;
  }

  v17 = __OFSUB__(v33, v32);
  v35 = v33 - v32;
  if (v17)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_29:
  v39 = sub_1C0D7814C();
  if (v39 >= v35)
  {
    v40 = v35;
  }

  else
  {
    v40 = v39;
  }

  v41 = (v40 + a1);
  if (a1)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  sub_1C0D20850(a1, v42, &v146);
  v43 = v4;
  v24 = MEMORY[0x1E6969078];
LABEL_38:
  v45 = *(&v146 + 1);
  v44 = v146;
  __swift_destroy_boxed_opaque_existential_1(&v147);
  v148 = v23;
  v149 = v24;
  v147 = __PAIR128__(v45, v44);
  v46 = __swift_project_boxed_opaque_existential_1(&v147, v23);
  v47 = *v46;
  v48 = v46[1];
  v49 = v48 >> 62;
  v137 = v44;
  v136 = v45;
  if ((v48 >> 62) > 1)
  {
    if (v49 != 2)
    {
      memset(v142, 0, 14);
      sub_1C0CF6468(v44, v45);
      v50 = v142;
      v51 = v142;
      goto LABEL_60;
    }

    v52 = v45;
    v53 = *(v47 + 16);
    v45 = *(v47 + 24);
    sub_1C0CF6468(v44, v52);
    v44 = sub_1C0D7812C();
    if (v44)
    {
      v54 = sub_1C0D7815C();
      v47 = v53 - v54;
      if (__OFSUB__(v53, v54))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v44 += v47;
    }

    v17 = __OFSUB__(v45, v53);
    v55 = v45 - v53;
    if (!v17)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  else if (!v49)
  {
    v142[0] = v47;
    LOWORD(v142[1]) = v48;
    BYTE2(v142[1]) = BYTE2(v48);
    BYTE3(v142[1]) = BYTE3(v48);
    BYTE4(v142[1]) = BYTE4(v48);
    BYTE5(v142[1]) = BYTE5(v48);
    sub_1C0CF6468(v44, v45);
    v50 = v142;
    v51 = v142 + BYTE6(v48);
    goto LABEL_60;
  }

  v56 = v45;
  v57 = v47;
  v58 = v47 >> 32;
  v55 = v58 - v57;
  if (v58 < v57)
  {
    goto LABEL_83;
  }

  sub_1C0CF6468(v44, v56);
  v44 = sub_1C0D7812C();
  if (v44)
  {
    v59 = sub_1C0D7815C();
    if (!__OFSUB__(v57, v59))
    {
      v44 += v57 - v59;
      goto LABEL_52;
    }

LABEL_87:
    __break(1u);
  }

LABEL_52:
  v60 = sub_1C0D7814C();
  if (v60 >= v55)
  {
    v61 = v55;
  }

  else
  {
    v61 = v60;
  }

  v62 = (v61 + v44);
  if (v44)
  {
    v51 = v62;
  }

  else
  {
    v51 = 0;
  }

  v50 = v44;
LABEL_60:
  sub_1C0D20850(v50, v51, &v145);
  v133 = v43;
  v63 = v141;
  v64 = v145;
  __swift_destroy_boxed_opaque_existential_1(&v147);
  v146 = v64;
  sub_1C0CF6468(v64, *(&v64 + 1));
  sub_1C0D01560(v20, v64, *(&v64 + 1), &v147);
  v65 = v147;
  sub_1C0D22268(v20);
  LODWORD(v147) = 0;
  sub_1C0D7884C();
  sub_1C0CF6468(v65, *(&v65 + 1));
  v140 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v66 = sub_1C0D786BC();
  v67 = *(v63 + 8);
  v141 = v63 + 8;
  v68 = v138;
  v139 = v67;
  v67(v12, v138);
  v69 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v70 = sub_1C0D7830C();
  v71 = [v69 initWithData:v70 inGroup:v66 reduction:1 corecryptoError:&v147];

  sub_1C0CF448C(v65, *(&v65 + 1));
  if (!v71)
  {
    v110 = v147;
    sub_1C0CF8DE0();
    swift_allocError();
    *v111 = v110;
    *(v111 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v65, *(&v65 + 1));
    sub_1C0CF448C(v146, *(&v146 + 1));
    v108 = v137;
    v109 = v136;
    return sub_1C0CF448C(v108, v109);
  }

  v134 = v71;
  sub_1C0CF448C(v65, *(&v65 + 1));
  v72 = v146;
  sub_1C0CF6468(v146, *(&v146 + 1));
  v73 = v135;
  sub_1C0D01560(v135, v72, *(&v72 + 1), &v147);
  v74 = v147;
  sub_1C0D22268(v73);
  LODWORD(v147) = 0;
  sub_1C0CF6468(v74, *(&v74 + 1));
  sub_1C0D786EC();
  v75 = sub_1C0D786BC();
  v139(v12, v68);
  v76 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v77 = sub_1C0D7830C();
  v78 = [v76 initFromPublicKeyBytes:v77 inGroup:v75 compressed:1 corecryptoError:&v147];

  sub_1C0CF448C(v74, *(&v74 + 1));
  if (!v78)
  {
    v112 = v147;
    sub_1C0CF8DE0();
    swift_allocError();
    *v113 = v112;
    *(v113 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v74, *(&v74 + 1));
    v114 = &v153;
LABEL_74:

    sub_1C0CF448C(v137, v136);
    v109 = *(&v146 + 1);
    v108 = v146;
    return sub_1C0CF448C(v108, v109);
  }

  v131 = v78;
  sub_1C0CF448C(v74, *(&v74 + 1));
  v79 = v146;
  sub_1C0CF6468(v146, *(&v146 + 1));
  sub_1C0D01560(v73, v79, *(&v79 + 1), &v147);
  v80 = v147;
  sub_1C0D22268(v73);
  LODWORD(v147) = 0;
  sub_1C0CF6468(v80, *(&v80 + 1));
  sub_1C0D786EC();
  v81 = sub_1C0D786BC();
  v139(v12, v68);
  v82 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v83 = sub_1C0D7830C();
  v84 = [v82 initFromPublicKeyBytes:v83 inGroup:v81 compressed:1 corecryptoError:&v147];

  sub_1C0CF448C(v80, *(&v80 + 1));
  if (!v84)
  {
    v115 = v147;
    sub_1C0CF8DE0();
    swift_allocError();
    *v116 = v115;
    *(v116 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v80, *(&v80 + 1));
LABEL_73:

    v114 = &v152;
    goto LABEL_74;
  }

  v130 = v84;
  sub_1C0CF448C(v80, *(&v80 + 1));
  v85 = v146;
  sub_1C0CF6468(v146, *(&v146 + 1));
  sub_1C0D01560(v73, v85, *(&v85 + 1), &v147);
  v86 = v147;
  sub_1C0D22268(v73);
  LODWORD(v147) = 0;
  sub_1C0CF6468(v86, *(&v86 + 1));
  sub_1C0D786EC();
  v87 = sub_1C0D786BC();
  v139(v12, v68);
  v88 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v89 = sub_1C0D7830C();
  v90 = [v88 initFromPublicKeyBytes:v89 inGroup:v87 compressed:1 corecryptoError:&v147];

  sub_1C0CF448C(v86, *(&v86 + 1));
  if (!v90)
  {
    v117 = v147;
    sub_1C0CF8DE0();
    swift_allocError();
    *v118 = v117;
    *(v118 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v86, *(&v86 + 1));

    v114 = &v153;
    goto LABEL_74;
  }

  v129 = v90;
  sub_1C0CF448C(v86, *(&v86 + 1));
  v91 = v146;
  sub_1C0CF6468(v146, *(&v146 + 1));
  sub_1C0D01560(v73, v91, *(&v91 + 1), &v147);
  v92 = v147;
  sub_1C0D22268(v73);
  LODWORD(v147) = 0;
  sub_1C0CF6468(v92, *(&v92 + 1));
  sub_1C0D786EC();
  v93 = sub_1C0D786BC();
  v139(v12, v68);
  v94 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v95 = sub_1C0D7830C();
  v96 = [v94 initFromPublicKeyBytes:v95 inGroup:v93 compressed:1 corecryptoError:&v147];

  v97 = v96;
  sub_1C0CF448C(v92, *(&v92 + 1));
  if (!v96)
  {
    v119 = v147;
    sub_1C0CF8DE0();
    swift_allocError();
    *v120 = v119;
    *(v120 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v92, *(&v92 + 1));

    goto LABEL_73;
  }

  sub_1C0CF448C(v92, *(&v92 + 1));
  v98 = v146;
  sub_1C0CF6468(v146, *(&v146 + 1));
  sub_1C0D01560(v73, v98, *(&v98 + 1), &v147);
  v99 = v147;
  sub_1C0D22268(v73);
  LODWORD(v147) = 0;
  sub_1C0CF6468(v99, *(&v99 + 1));
  sub_1C0D786EC();
  v100 = sub_1C0D786BC();
  v139(v12, v68);
  v101 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v102 = sub_1C0D7830C();
  v103 = [v101 initFromPublicKeyBytes:v102 inGroup:v100 compressed:1 corecryptoError:&v147];

  sub_1C0CF448C(v99, *(&v99 + 1));
  if (!v103)
  {
    v121 = v147;
    sub_1C0CF8DE0();
    swift_allocError();
    *v122 = v121;
    *(v122 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v99, *(&v99 + 1));

    v114 = &v151;
    goto LABEL_74;
  }

  sub_1C0CF448C(v99, *(&v99 + 1));
  v104 = v146;
  v105 = v133;
  v106 = sub_1C0D0E0DC(v146, *(&v146 + 1));
  v107 = v136;
  if (v105)
  {

    sub_1C0CF448C(v137, v107);
    v109 = v104 >> 64;
    v108 = v104;
    return sub_1C0CF448C(v108, v109);
  }

  v123 = v106;
  sub_1C0D099E4(v143);
  sub_1C0CF448C(v137, v107);
  result = sub_1C0CF448C(v104, *(&v104 + 1));
  v124 = v132;
  v125 = v131;
  *v132 = v134;
  v124[1] = v125;
  v126 = v129;
  v124[2] = v130;
  v124[3] = v126;
  v127 = v143[1];
  *(v124 + 2) = v143[0];
  *(v124 + 3) = v127;
  v124[8] = v144;
  v124[9] = v97;
  v124[10] = v103;
  v124[11] = v123;
  return result;
}

id sub_1C0D0C338(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v37 = a3;
  v48 = a2;
  v39 = a1;
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v3 + OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential);
  swift_beginAccess();
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v9 = sub_1C0D786BC();
  v10 = *(v5 + 8);
  v10(v7, v4);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  v36 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1C0D786EC();
  v12 = sub_1C0D786BC();
  v10(v7, v4);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  v35 = result;
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v10(v7, v4);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = v38;
  v16 = v39;
  v17 = v48;
  v18 = sub_1C0CFACAC(v39, v48, v37, 0, 1);
  if (v15)
  {

    return swift_endAccess();
  }

  else
  {
    v19 = v18;
    v20 = v8[5];
    v46 = v8[4];
    v47 = v20;
    v21 = v8[3];
    v45[2] = v8[2];
    v45[3] = v21;
    v22 = v8[1];
    v45[0] = *v8;
    v45[1] = v22;
    v23 = *(&v46 + 1);
    v24 = v47;
    sub_1C0D13734(v45, &v41, &qword_1EBE6D450, &unk_1C0D7BF20);
    v25 = v23;
    v26 = v24;
    sub_1C0CF6468(v16, v17);
    sub_1C0D0837C(v45, v36, v35, v14, v16, v17, v19, v25, v42, v26);
    swift_endAccess();
    v27 = type metadata accessor for ARCPresentationWrapper();
    v28 = objc_allocWithZone(v27);
    sub_1C0D099E4(v43);
    v29 = &v28[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite];
    v30 = v43[1];
    *v29 = v43[0];
    *(v29 + 1) = v30;
    *(v29 + 4) = v44;
    v31 = &v28[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation];
    v32 = v42[1];
    v33 = v42[2];
    *v31 = v42[0];
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *&v28[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_nonce] = v19;
    v40.receiver = v28;
    v40.super_class = v27;
    return objc_msgSendSuper2(&v40, sel_init);
  }
}

uint64_t sub_1C0D0C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential;
  swift_beginAccess();
  if (!*(*(v7 + 88) + 16))
  {
    return a3;
  }

  sub_1C0D78BFC();
  sub_1C0D0F06C(a1, a2, MEMORY[0x1E6969048], sub_1C0D0F1B0);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    return a3;
  }

  v11 = *(v7 + 88);
  if (*(v11 + 16))
  {
    sub_1C0D78BFC();
    result = sub_1C0D0F06C(a1, a2, MEMORY[0x1E6969048], sub_1C0D0F1B0);
    if (v12)
    {
      v13 = (*(v11 + 56) + 16 * result);
      v15 = *v13;
      v14 = v13[1];
      sub_1C0D78BFC();

      if (v15 == a3)
      {
        v16 = *(v14 + 16);

        v17 = __OFSUB__(a3, v16);
        a3 -= v16;
        if (!v17)
        {
          return a3;
        }

        __break(1u);
      }

      return -1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id ARCCredentialWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ARCPresentationWrapper.__allocating_init(presentationData:nonce:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1C0D099E4(&v19);
  v8 = &v7[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite];
  v9 = v21;
  v10 = v20;
  *v8 = v19;
  *(v8 + 1) = v10;
  *(v8 + 4) = v9;
  v12 = *(&v20 + 1);
  v11 = v21;
  sub_1C0D13734(&v19, v18, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D11CE4(a1, a2, v12, v11, v22);
  sub_1C0D13578(&v19, &qword_1EBE6D420, &qword_1C0D7BF10);
  if (v4)
  {
    sub_1C0CF448C(a1, a2);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = &v7[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation];
    v14 = v22[1];
    *v13 = v22[0];
    *(v13 + 1) = v14;
    *(v13 + 2) = v22[2];
    *&v7[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_nonce] = a3;
    v17.receiver = v7;
    v17.super_class = v23;
    v8 = objc_msgSendSuper2(&v17, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v8;
}

char *ARCPresentationWrapper.init(presentationData:nonce:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1C0D099E4(&v17);
  v8 = &v3[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite];
  v9 = v18;
  *v8 = v17;
  *(v8 + 1) = v9;
  v11 = *(&v18 + 1);
  v10 = v19;
  *(v8 + 4) = v19;
  sub_1C0D13734(&v17, v16, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D11CE4(a1, a2, v11, v10, v20);
  sub_1C0D13578(&v17, &qword_1EBE6D420, &qword_1C0D7BF10);
  if (v4)
  {
    sub_1C0CF448C(a1, a2);

    type metadata accessor for ARCPresentationWrapper();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = &v3[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation];
    v13 = v20[1];
    *v12 = v20[0];
    *(v12 + 1) = v13;
    *(v12 + 2) = v20[2];
    *&v3[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_nonce] = a3;
    v15.receiver = v3;
    v15.super_class = type metadata accessor for ARCPresentationWrapper();
    v3 = objc_msgSendSuper2(&v15, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v3;
}

id ARCServer.init()()
{
  v1 = v0;
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D099E4(v37);
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v6 = sub_1C0D786BC();
  v7 = *(v3 + 8);
  v7(v5, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  v30 = v1;
  sub_1C0D786EC();
  v10 = sub_1C0D786BC();
  v7(v5, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  sub_1C0D786EC();
  v12 = sub_1C0D786BC();
  v7(v5, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = result;
  sub_1C0D786EC();
  v14 = sub_1C0D786BC();
  v7(v5, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v15 = result;
    *&v35[8] = v37[0];
    *&v35[24] = v37[1];
    *&v35[40] = v38;
    sub_1C0D78BFC();
    v16 = sub_1C0D058D0(&v36 + 1, v37);
    sub_1C0D13578(v37, &qword_1EBE6D420, &qword_1C0D7BF10);
    *&v36 = v16;
    *&v32 = v9;
    *(&v32 + 1) = v11;
    *&v33 = v13;
    *(&v33 + 1) = v15;
    v17 = *(&v36 + 1);
    v18 = sub_1C0D0DE9C(v9, v16);
    v19 = sub_1C0D0DE9C(v15, v17);
    v20 = sub_1C0D0DFC0(v18, v19);

    v21 = sub_1C0D0DE9C(v11, v17);
    v22 = sub_1C0D0DE9C(v13, v17);
    *&v34 = v20;
    *(&v34 + 1) = v21;
    *v35 = v22;
    v23 = v30;
    v24 = &v30[OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server];
    v25 = *&v35[32];
    *(v24 + 4) = *&v35[16];
    *(v24 + 5) = v25;
    *(v24 + 6) = v36;
    v26 = v33;
    *v24 = v32;
    *(v24 + 1) = v26;
    v27 = *v35;
    *(v24 + 2) = v34;
    *(v24 + 3) = v27;
    v28 = type metadata accessor for ARCServer();
    v31.receiver = v23;
    v31.super_class = v28;
    return objc_msgSendSuper2(&v31, sel_init);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1C0D0D43C(void *a1, unint64_t a2)
{
  v6 = sub_1C0D786CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server;
  v11 = sub_1C0D12624(a1, a2, *(v10 + 80), *(v10 + 88));
  if (v3)
  {
    return v10;
  }

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = *(v10 + 80);
  v26[8] = *(v10 + 64);
  v27 = v19;
  v28 = *(v10 + 96);
  v20 = *(v10 + 16);
  v26[4] = *v10;
  v26[5] = v20;
  v21 = *(v10 + 48);
  v26[6] = *(v10 + 32);
  v26[7] = v21;
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v22 = sub_1C0D786BC();
  (*(v7 + 8))(v9, v6);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v24 = result;
    sub_1C0D05B24(v15, v16, v17, v18, result, v25);

    v26[0] = v25[0];
    v26[1] = v25[1];
    v26[2] = v25[2];
    v26[3] = v25[3];
    v10 = sub_1C0D12CF0(v27, *(&v27 + 1));

    sub_1C0D13578(v26, &qword_1EBE6D438, &qword_1C0D7BF18);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D0D7D0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (v8 + OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server);
  sub_1C0D11CE4(a1, a2, *(v15 + 10), *(v15 + 11), v21);
  v16 = v15[5];
  v32 = v15[4];
  v33 = v16;
  v34 = v15[6];
  v17 = v15[1];
  v28 = *v15;
  v29 = v17;
  v18 = v15[3];
  v30 = v15[2];
  v31 = v18;
  LOBYTE(a8) = sub_1C0D06CA0(v21, a4, a5, a6, a7, a8, a3);
  v27 = v21[0];
  sub_1C0D13578(&v27, &qword_1EBE6D478, &unk_1C0D7C850);
  v26 = v21[1];
  sub_1C0D13578(&v26, &qword_1EBE6D478, &unk_1C0D7C850);
  v25 = v21[2];
  sub_1C0D13578(&v25, &qword_1EBE6D478, &unk_1C0D7C850);
  v24 = v21[3];
  sub_1C0D13578(&v24, &qword_1EBE6D478, &unk_1C0D7C850);
  v19 = v21[5];
  v23 = v21[4];
  sub_1C0D13578(&v23, &qword_1EBE6D480, &unk_1C0D7BF30);
  v22 = v19;
  sub_1C0D13578(&v22, &qword_1EBE6D488, &qword_1C0D7C860);
  return a8 & 1;
}

id sub_1C0D0DDC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C0D0DE9C(uint64_t a1, id a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  result = [a2 multiply:a1 corecryptoError:&v4];
  if (!result)
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
    v3 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v3);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

id sub_1C0D0DFC0(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  result = [a1 add:a2 corecryptoError:&v4];
  if (!result)
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v3 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v3);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

void *sub_1C0D0E0DC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v66[5] = *MEMORY[0x1E69E9840];
  sub_1C0D781DC();
  swift_allocObject();
  sub_1C0D781CC();
  v66[3] = MEMORY[0x1E6969080];
  v66[4] = MEMORY[0x1E6969078];
  v66[0] = a1;
  v66[1] = a2;
  v6 = __swift_project_boxed_opaque_existential_1(v66, MEMORY[0x1E6969080]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(v64, 0, 14);
      sub_1C0CF6468(a1, a2);
      v10 = v64;
      v11 = v64;
      goto LABEL_24;
    }

    v12 = *(v7 + 16);
    v13 = *(v7 + 24);
    sub_1C0CF6468(a1, a2);
    v14 = sub_1C0D7812C();
    if (v14)
    {
      v15 = sub_1C0D7815C();
      if (__OFSUB__(v12, v15))
      {
        goto LABEL_58;
      }

      v14 += v12 - v15;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_57;
    }

    v16 = sub_1C0D7814C();
    if (v16 >= v13 - v12)
    {
      v17 = v13 - v12;
    }

    else
    {
      v17 = v16;
    }
  }

  else
  {
    if (!v9)
    {
      v64[0] = *v6;
      LOWORD(v64[1]) = v8;
      BYTE2(v64[1]) = BYTE2(v8);
      BYTE3(v64[1]) = BYTE3(v8);
      BYTE4(v64[1]) = BYTE4(v8);
      BYTE5(v64[1]) = BYTE5(v8);
      sub_1C0CF6468(a1, a2);
      v10 = v64;
      v11 = v64 + BYTE6(v8);
      goto LABEL_24;
    }

    v18 = v7;
    v19 = v7 >> 32;
    v20 = v19 - v18;
    if (v19 < v18)
    {
      goto LABEL_56;
    }

    sub_1C0CF6468(a1, a2);
    v14 = sub_1C0D7812C();
    if (v14)
    {
      v21 = sub_1C0D7815C();
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_59;
      }

      v14 += v18 - v21;
    }

    v22 = sub_1C0D7814C();
    if (v22 >= v20)
    {
      v17 = v20;
    }

    else
    {
      v17 = v22;
    }
  }

  v23 = (v17 + v14);
  if (v14)
  {
    v11 = v23;
  }

  else
  {
    v11 = 0;
  }

  v10 = v14;
LABEL_24:
  sub_1C0D20850(v10, v11, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4E8, &qword_1C0D7C040);
  v24 = v65[0];
  v25 = v65[1];
  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_1C0D135D8();
  sub_1C0D781BC();
  if (v2)
  {

    sub_1C0CF448C(v24, v25);
  }

  else
  {
    sub_1C0CF448C(v24, v25);
    v26 = v64[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D340, &qword_1C0D7BA90);
    v27 = sub_1C0D78EEC();
    v3 = v27;
    v28 = 0;
    v55 = v26 + 64;
    v56 = v26;
    v29 = 1 << *(v26 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v26 + 64);
    v32 = (v29 + 63) >> 6;
    v58 = v32;
    v59 = v27 + 64;
    v57 = v27;
    if (v31)
    {
      goto LABEL_30;
    }

LABEL_31:
    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v28 >= v32)
      {
        break;
      }

      v36 = *(v55 + 8 * v28);
      ++v35;
      if (v36)
      {
        v33 = __clz(__rbit64(v36));
        v34 = (v36 - 1) & v36;
        while (2)
        {
          v37 = v33 | (v28 << 6);
          v38 = *(*(v26 + 56) + 8 * v37);
          v39 = *(v38 + 16);
          if (v39)
          {
            v63 = v33 | (v28 << 6);
            v60 = v34;
            v61 = *(v38 + 32);
            v62 = *(*(v26 + 48) + 16 * v37);
            sub_1C0CF6468(*(*(v26 + 48) + 16 * v37), *(*(v26 + 48) + 16 * v37 + 8));
            sub_1C0D78BFC();
            v40 = MEMORY[0x1C68E3C40](v39 - 1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
            v41 = v40;
            if (v39 == 1)
            {
            }

            else
            {
              v42 = 1;
              v43 = v40 + 56;
              do
              {
                while (1)
                {
                  v44 = *(v38 + 32 + 8 * v42++);
                  v45 = sub_1C0D78FEC();
                  v46 = -1 << *(v41 + 32);
                  v47 = v45 & ~v46;
                  if ((*(v43 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
                  {
                    break;
                  }

LABEL_45:
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v66[0] = v41;
                  sub_1C0CFBEF8(v44, v47, isUniquelyReferenced_nonNull_native);
                  v41 = v66[0];
                  if (v42 == v39)
                  {
                    goto LABEL_47;
                  }

                  v43 = v66[0] + 56;
                }

                v48 = ~v46;
                while (*(*(v41 + 48) + 8 * v47) != v44)
                {
                  v47 = (v47 + 1) & v48;
                  if (((*(v43 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                  {
                    goto LABEL_45;
                  }
                }
              }

              while (v42 != v39);
LABEL_47:

              v3 = v57;
              v26 = v56;
            }

            *(v59 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
            *(v3[6] + 16 * v63) = v62;
            v50 = (v3[7] + 16 * v63);
            *v50 = v61;
            v50[1] = v41;
            v51 = v3[2];
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (!v52)
            {
              v3[2] = v53;
              v32 = v58;
              v31 = v60;
              if (!v60)
              {
                goto LABEL_31;
              }

LABEL_30:
              v33 = __clz(__rbit64(v31));
              v34 = (v31 - 1) & v31;
              continue;
            }

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
          }

          break;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }
  }

  return v3;
}

id sub_1C0D0E630(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v28 = a2;
  v8 = sub_1C0D78AEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v12 = sub_1C0D78AAC();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  if (v14 >> 60 == 15)
  {
    __break(1u);
LABEL_8:

    __break(1u);
    return result;
  }

  v26 = v12;
  v27 = v14;
  v25[3] = MEMORY[0x1E6969080];
  v25[4] = MEMORY[0x1E6969078];
  v25[0] = a3;
  v25[1] = a4;
  v15 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1C0D134D0(v12, v14);
  sub_1C0CF6468(a3, a4);
  sub_1C0D4268C(v16, v17, &v26);
  sub_1C0CEACDC(v12, v14);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v18 = v26;
  v19 = v27;
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  v20 = sub_1C0D786DC();
  v21 = sub_1C0D3ECE4(a1, v28, 1, v18, v19, v20, 0);
  if (v4)
  {
    return sub_1C0CF448C(v18, v19);
  }

  if (!*(v21 + 16))
  {
    goto LABEL_8;
  }

  v23 = *(v21 + 32);

  sub_1C0CF448C(v18, v19);
  return v23;
}

id sub_1C0D0E898(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v28 = a2;
  v8 = sub_1C0D78AEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v12 = sub_1C0D78AAC();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  if (v14 >> 60 == 15)
  {
    __break(1u);
LABEL_8:

    __break(1u);
    return result;
  }

  v26 = v12;
  v27 = v14;
  v25[3] = MEMORY[0x1E6969080];
  v25[4] = MEMORY[0x1E6969078];
  v25[0] = a3;
  v25[1] = a4;
  v15 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1C0D134D0(v12, v14);
  sub_1C0CF6468(a3, a4);
  sub_1C0D4268C(v16, v17, &v26);
  sub_1C0CEACDC(v12, v14);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v18 = v26;
  v19 = v27;
  sub_1C0D7896C();
  sub_1C0D13530(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  v20 = sub_1C0D786DC();
  v21 = sub_1C0D3F16C(a1, v28, 1, v18, v19, v20, 0);
  if (v4)
  {
    return sub_1C0CF448C(v18, v19);
  }

  if (!*(v21 + 16))
  {
    goto LABEL_8;
  }

  v23 = *(v21 + 32);

  sub_1C0CF448C(v18, v19);
  return v23;
}

unint64_t sub_1C0D0EB00@<X0>(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1C0D77CE4(a1, &a1[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1C0D7818C();
      swift_allocObject();
      v8 = sub_1C0D7811C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1C0D7828C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1C0D0EBC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C0D0ECC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21 = a3;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4A0, &qword_1C0D7C000);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v19 - v6);
  v8 = *v3;
  *v7 = *v3;
  v7[1] = 0;
  v22 = a1;
  v9 = v3[3];
  v10 = v3[4];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C0, &qword_1C0D7C020);
  result = sub_1C0D7837C();
  v13 = *(v11 + 56);
  *(v7 + v13) = 0;
  v14 = (v7 + *(v5 + 44));
  *v14 = v9;
  v14[1] = v10;
  if (v25)
  {
    v20 = v13;
    v15 = v21;
    if (v21)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      v16 = *(v8 + 16);
      if (v16)
      {
        v15 = 0;
        v23 = v21 - 1;
        v24 = v8 + 32;
        while (v15 < *(v8 + 16))
        {
          v17 = *(v24 + v15);
          v7[1] = v15 + 1;
          sub_1C0D7836C();
          sub_1C0D13530(&qword_1ED9076D8, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
          sub_1C0D78D4C();
          if ((v26 & 0x100000000) != 0)
          {
            goto LABEL_11;
          }

          BYTE1(v26) = v17;
          BYTE2(v26) = BYTE3(v26);
          result = v9(&v26, &v26 + 1);
          *(v25 + v15) = v26;
          if (v23 == v15)
          {
            v15 = v21;
            v18 = v22;
            goto LABEL_14;
          }

          if (v16 == ++v15)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_17;
      }

LABEL_10:
      v15 = v16;
LABEL_11:
      *(v7 + v20) = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = v22;
LABEL_14:
  sub_1C0D13428(v7, v18);
  return v15;
}

unint64_t sub_1C0D0EF18(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1C68E3FC0](*(v1 + 40), a1, 4);

  return sub_1C0D0F144(v2, v3);
}

unint64_t sub_1C0D0EF8C(uint64_t a1)
{
  sub_1C0D78FFC();
  type metadata accessor for CFString(0);
  sub_1C0D13530(&qword_1EBE6D4D0, type metadata accessor for CFString, &unk_1C0D7ADC4);
  sub_1C0D783AC();
  v2 = sub_1C0D7902C();

  return sub_1C0D0F5B0(a1, v2);
}

uint64_t sub_1C0D0F06C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1C0D78FFC();
  a3(v10, a1, a2);
  v7 = sub_1C0D7902C();

  return a4(a1, a2, v7);
}

unint64_t sub_1C0D0F100(uint64_t a1)
{
  v2 = sub_1C0D78D1C();

  return sub_1C0D0F774(a1, v2);
}

unint64_t sub_1C0D0F144(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C0D0F1B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
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
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_1C0CF6468(v17, v16);
          sub_1C0D198E4(v45, v9, v8, &v44);
          sub_1C0CF448C(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1C0CF6468(v17, v16);
        v31 = sub_1C0D7812C();
        if (v31)
        {
          v33 = sub_1C0D7815C();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1C0CF6468(v17, v16);
        v31 = sub_1C0D7812C();
        if (v31)
        {
          v32 = sub_1C0D7815C();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_1C0D7814C();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1C0D198E4(v34, a1, a2, v45);
        sub_1C0CF448C(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_1C0CF6468(v17, v16);
      sub_1C0D198E4(v45, v9, v8, &v44);
      sub_1C0CF448C(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1C0D0F5B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1C0D13530(&qword_1EBE6D4D0, type metadata accessor for CFString, &unk_1C0D7ADC4);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C0D7839C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C0D0F6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C0D78F3C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C0D0F774(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C0D134E4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C0D78D2C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C0D0F838@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1C0D78DBC();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D0F888(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v3 = *(a3 + 3);
  v7 = *(a3 + 1);
  v8 = v3;
  v5[2] = &v6;
  return sub_1C0D75340(sub_1C0D134B0, v5, a1, a2);
}

void *sub_1C0D0F8EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v7;
  v12 = *(a3 + 32);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D498, &qword_1C0D7BFF8) + 48);
  sub_1C0D13734(v11, v10, &qword_1EBE6D4A8, &qword_1C0D7C008);
  result = sub_1C0D0ECC8(a4, a1, a2);
  *(a4 + v8) = result;
  return result;
}

uint64_t sub_1C0D0F990(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1C0D42970(result);
    }

    else
    {
      sub_1C0D7818C();
      swift_allocObject();
      sub_1C0D7813C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C0D7828C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1C0D0FA30(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1F0, &qword_1C0D7BFF0);
  v10 = sub_1C0CF3914(qword_1ED907618, &qword_1EBE6D1F0, &qword_1C0D7BFF0, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);
  sub_1C0D78BFC();
  sub_1C0D20850(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1C0D0FB0C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v127 = a4;
  v13 = *v8;
  v14 = sub_1C0D0DFC0(*v8, *v8);
  v15 = [v13 isEqual_];

  if (v15)
  {
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  v114 = v9;
  v17 = v8[1];
  v18 = sub_1C0D0DFC0(v17, v17);
  v19 = [v17 isEqual_];

  if (v19)
  {
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  v20 = v8;
  v21 = *(a8 + 8);
  v119 = *(a8 + 16);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v21, v119);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D808B0);

  v120 = v21;
  v121 = v119;
  v123 = MEMORY[0x1E69E7CC0];
  v124 = MEMORY[0x1E69E7CC0];
  v125 = MEMORY[0x1E69E7CC0];
  v22 = sub_1C0CF49E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = v23 >> 1;
  v26 = v24 + 1;
  if (v23 >> 1 <= v24)
  {
    v22 = sub_1C0CF49E8((v23 > 1), v24 + 1, 1, v22);
    v23 = *(v22 + 3);
    v25 = v23 >> 1;
  }

  *(v22 + 2) = v26;
  v27 = &v22[16 * v24];
  *(v27 + 4) = 12408;
  *(v27 + 5) = 0xE200000000000000;
  v122 = v22;
  v28 = v24 + 2;
  if (v25 < (v24 + 2))
  {
    v22 = sub_1C0CF49E8((v23 > 1), v24 + 2, 1, v22);
  }

  *(v22 + 2) = v28;
  v29 = &v22[16 * v26];
  *(v29 + 32) = 12664;
  *(v29 + 40) = 0xE200000000000000;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v29 = *(v22 + 3);
    v26 = v24 + 3;
    v111 = v24 + 1;
    if ((v24 + 3) <= (v29 >> 1))
    {
      goto LABEL_11;
    }
  }

  v22 = sub_1C0CF49E8((v29 > 1), v26, 1, v22);
LABEL_11:
  *(v22 + 2) = v26;
  v30 = &v22[16 * v28];
  *(v30 + 32) = 12920;
  *(v30 + 40) = 0xE200000000000000;
  v31 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = *(v22 + 3);
    v28 = v24 + 4;
    if ((v24 + 4) <= (v30 >> 1))
    {
      goto LABEL_13;
    }
  }

  v22 = sub_1C0CF49E8((v30 > 1), v28, 1, v22);
LABEL_13:
  *(v22 + 2) = v28;
  v32 = &v22[16 * v26];
  *(v32 + 4) = 0x69646E696C423078;
  *(v32 + 5) = 0xEA0000000000676ELL;
  v122 = v22;
  v33 = v28 - 1;
  v113 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = *(v22 + 3);
    v26 = v24 + 5;
    if ((v24 + 5) <= (v33 >> 1))
    {
      goto LABEL_15;
    }
  }

  v22 = sub_1C0CF49E8((v33 > 1), v26, 1, v22);
LABEL_15:
  *(v22 + 2) = v26;
  v34 = &v22[16 * v28];
  *(v34 + 4) = 98;
  *(v34 + 5) = 0xE100000000000000;
  v35 = v26 - 1;
  v112 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    v35 = *(v22 + 3);
    v28 = v24 + 6;
    v110 = v31;
    if ((v24 + 6) <= (v35 >> 1))
    {
      goto LABEL_17;
    }
  }

  v22 = sub_1C0CF49E8((v35 > 1), v28, 1, v22);
LABEL_17:
  *(v22 + 2) = v28;
  v36 = &v22[16 * v26];
  *(v36 + 32) = 12660;
  *(v36 + 40) = 0xE200000000000000;
  v37 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = *(v22 + 3);
    v26 = v24 + 7;
    if ((v24 + 7) <= (v36 >> 1))
    {
      goto LABEL_19;
    }
  }

  v22 = sub_1C0CF49E8((v36 > 1), v26, 1, v22);
LABEL_19:
  *(v22 + 2) = v26;
  v38 = &v22[16 * v28];
  *(v38 + 4) = 12916;
  *(v38 + 5) = 0xE200000000000000;
  v122 = v22;
  v109 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
    goto LABEL_58;
  }

  v107 = v28 - 1;
  v108 = v20;
  v39 = v20[2];
  v40 = v20[3];
  v41 = v20[4];
  v104 = v20[5];
  v42 = sub_1C0D2EC40(1198417255, 0xE400000000000000, a6, &v120);
  a7 = sub_1C0D2EC40(1215194471, 0xE400000000000000, a7, &v120);
  a1 = sub_1C0D2EC40(0x636E45316DLL, 0xE500000000000000, a1, &v120);
  v105 = sub_1C0D2EC40(0x636E45326DLL, 0xE500000000000000, a2, &v120);
  v102 = sub_1C0D2EC40(85, 0xE100000000000000, v13, &v120);
  v106 = sub_1C0D2EC40(0x6D69725055636E65, 0xE900000000000065, v17, &v120);
  a3 = sub_1C0D2EC40(12376, 0xE200000000000000, a3, &v120);
  v17 = sub_1C0D2EC40(12632, 0xE200000000000000, v127, &v120);
  v127 = sub_1C0D2EC40(12888, 0xE200000000000000, a5, &v120);
  v101 = sub_1C0D2EC40(0x7875413058, 0xE500000000000000, v39, &v120);
  v20 = sub_1C0D2EC40(0x7875413158, 0xE500000000000000, v40, &v120);
  a2 = sub_1C0D2EC40(0x7875413258, 0xE500000000000000, v41, &v120);
  v37 = sub_1C0D2EC40(2020950344, 0xE400000000000000, v104, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0D7BEE0;
  *(v13 + 32) = v24;
  *(v13 + 40) = v42;
  v103 = v42;
  *(v13 + 48) = v113;
  *(v13 + 56) = a7;
  a6 = v125;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_58:
    a6 = sub_1C0CF4AF4(0, a6[2] + 1, 1, a6);
  }

  v44 = a6[2];
  v43 = a6[3];
  if (v44 >= v43 >> 1)
  {
    a6 = sub_1C0CF4AF4((v43 > 1), v44 + 1, 1, a6);
  }

  a6[2] = v44 + 1;
  v45 = &a6[2 * v44];
  v45[4] = a3;
  v45[5] = v13;
  v125 = a6;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C0D7B690;
  *(v46 + 32) = v111;
  *(v46 + 40) = a7;
  v48 = a6[2];
  v47 = a6[3];
  if (v48 >= v47 >> 1)
  {
    v91 = v46;
    a6 = sub_1C0CF4AF4((v47 > 1), v48 + 1, 1, a6);
    v46 = v91;
  }

  a6[2] = v48 + 1;
  v49 = &a6[2 * v48];
  v49[4] = v17;
  v49[5] = v46;
  v125 = a6;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C0D7B690;
  *(v50 + 32) = v110;
  *(v50 + 40) = a7;
  v52 = a6[2];
  v51 = a6[3];
  v53 = v112;
  if (v52 >= v51 >> 1)
  {
    v92 = v50;
    a6 = sub_1C0CF4AF4((v51 > 1), v52 + 1, 1, a6);
    v50 = v92;
    v53 = v112;
  }

  a6[2] = v52 + 1;
  v54 = &a6[2 * v52];
  v54[4] = v127;
  v54[5] = v50;
  v125 = a6;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C0D7B690;
  *(v55 + 32) = v53;
  *(v55 + 40) = a7;
  v57 = a6[2];
  v56 = a6[3];
  if (v57 >= v56 >> 1)
  {
    v93 = v55;
    a6 = sub_1C0CF4AF4((v56 > 1), v57 + 1, 1, a6);
    v55 = v93;
    v53 = v112;
  }

  a6[2] = v57 + 1;
  v58 = &a6[2 * v57];
  v58[4] = v37;
  v58[5] = v55;
  v125 = a6;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1C0D7B690;
  *(v59 + 32) = v113;
  *(v59 + 40) = v37;
  v61 = a6[2];
  v60 = a6[3];
  if (v61 >= v60 >> 1)
  {
    v94 = v59;
    a6 = sub_1C0CF4AF4((v60 > 1), v61 + 1, 1, a6);
    v59 = v94;
    v53 = v112;
  }

  a6[2] = v61 + 1;
  v62 = &a6[2 * v61];
  v62[4] = v101;
  v62[5] = v59;
  v125 = a6;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1C0D7B690;
  *(v63 + 32) = v107;
  *(v63 + 40) = a7;
  v65 = a6[2];
  v64 = a6[3];
  if (v65 >= v64 >> 1)
  {
    v95 = v63;
    a6 = sub_1C0CF4AF4((v64 > 1), v65 + 1, 1, a6);
    v63 = v95;
    v53 = v112;
  }

  a6[2] = v65 + 1;
  v66 = &a6[2 * v65];
  v66[4] = v20;
  v66[5] = v63;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1C0D7B690;
  *(v67 + 32) = v53;
  *(v67 + 40) = v17;
  v125 = a6;
  v69 = a6[2];
  v68 = a6[3];
  if (v69 >= v68 >> 1)
  {
    v96 = v67;
    a6 = sub_1C0CF4AF4((v68 > 1), v69 + 1, 1, a6);
    v67 = v96;
  }

  a6[2] = v69 + 1;
  v70 = &a6[2 * v69];
  v70[4] = v20;
  v70[5] = v67;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1C0D7B690;
  v72 = v127;
  *(v71 + 32) = v53;
  *(v71 + 40) = v72;
  v125 = a6;
  v74 = a6[2];
  v73 = a6[3];
  v75 = a2;
  if (v74 >= v73 >> 1)
  {
    v97 = v71;
    a6 = sub_1C0CF4AF4((v73 > 1), v74 + 1, 1, a6);
    v71 = v97;
    v75 = a2;
  }

  a6[2] = v74 + 1;
  v76 = &a6[2 * v74];
  v76[4] = v75;
  v76[5] = v71;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1C0D7B690;
  *(v77 + 32) = v109;
  *(v77 + 40) = a7;
  v125 = a6;
  v79 = a6[2];
  v78 = a6[3];
  if (v79 >= v78 >> 1)
  {
    v98 = v77;
    a6 = sub_1C0CF4AF4((v78 > 1), v79 + 1, 1, a6);
    v77 = v98;
    v75 = a2;
  }

  a6[2] = v79 + 1;
  v80 = &a6[2 * v79];
  v80[4] = v75;
  v80[5] = v77;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1C0D7B690;
  *(v81 + 32) = v53;
  *(v81 + 40) = v103;
  v125 = a6;
  v83 = a6[2];
  v82 = a6[3];
  if (v83 >= v82 >> 1)
  {
    v99 = v81;
    a6 = sub_1C0CF4AF4((v82 > 1), v83 + 1, 1, a6);
    v81 = v99;
  }

  a6[2] = v83 + 1;
  v84 = &a6[2 * v83];
  v84[4] = v102;
  v84[5] = v81;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1C0D7BEF0;
  *(v85 + 32) = v53;
  *(v85 + 40) = a3;
  *(v85 + 48) = v107;
  *(v85 + 56) = a1;
  *(v85 + 64) = v109;
  *(v85 + 72) = v105;
  v125 = a6;
  v87 = a6[2];
  v86 = a6[3];
  if (v87 >= v86 >> 1)
  {
    v100 = v85;
    a6 = sub_1C0CF4AF4((v86 > 1), v87 + 1, 1, a6);
    v85 = v100;
  }

  a6[2] = v87 + 1;
  v88 = &a6[2 * v87];
  v88[4] = v106;
  v88[5] = v85;
  v126[0] = v120;
  v126[1] = v121;
  v126[2] = v122;
  v126[3] = v123;
  v126[4] = v124;
  v126[5] = a6;
  v16 = v126;
  v89 = sub_1C0D21C50(v108[6], v108[7]);
  if (!v114)
  {
    LOBYTE(v16) = v89;
  }

  return v16 & 1;
}

id sub_1C0D105F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v7 = sub_1C0D786CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = __OFSUB__(v13, v14);
    v12 = v13 - v14;
    if (!v15)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v12) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = v12;
LABEL_10:
  if ((a3 * 3) >> 64 != (3 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v12 != 3 * a3)
  {
    sub_1C0CFC3D4();
    swift_allocError();
    *v21 = 8;
    return swift_willThrow();
  }

  v78 = MEMORY[0x1E6969080];
  v79 = MEMORY[0x1E6969078];
  v76 = a1;
  v77 = a2;
  v16 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x1E6969080]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  v70 = v7;
  v72 = v8;
  if ((v18 >> 62) <= 1)
  {
    if (!v19)
    {
      v74[0] = v17;
      LOWORD(v74[1]) = v18;
      BYTE2(v74[1]) = BYTE2(v18);
      BYTE3(v74[1]) = BYTE3(v18);
      BYTE4(v74[1]) = BYTE4(v18);
      BYTE5(v74[1]) = BYTE5(v18);
      sub_1C0CF6468(a1, a2);
      v20 = v74 + BYTE6(v18);
LABEL_36:
      sub_1C0D20850(v74, v20, v75);
      v68 = v3;
      goto LABEL_37;
    }

    v29 = v17;
    v30 = v17 >> 32;
    v31 = v30 - v29;
    if (v30 >= v29)
    {
      sub_1C0CF6468(a1, a2);
      v25 = sub_1C0D7812C();
      if (!v25)
      {
        goto LABEL_28;
      }

      v32 = sub_1C0D7815C();
      if (!__OFSUB__(v29, v32))
      {
        v25 += v29 - v32;
LABEL_28:
        v33 = sub_1C0D7814C();
        if (v33 >= v31)
        {
          v28 = v31;
        }

        else
        {
          v28 = v33;
        }

        goto LABEL_31;
      }

LABEL_50:
      __break(1u);
    }

    goto LABEL_47;
  }

  if (v19 != 2)
  {
    memset(v74, 0, 14);
    sub_1C0CF6468(a1, a2);
    v20 = v74;
    goto LABEL_36;
  }

  v23 = *(v17 + 16);
  v24 = *(v17 + 24);
  sub_1C0CF6468(a1, a2);
  v25 = sub_1C0D7812C();
  if (v25)
  {
    v26 = sub_1C0D7815C();
    if (__OFSUB__(v23, v26))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 += v23 - v26;
  }

  if (__OFSUB__(v24, v23))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v27 = sub_1C0D7814C();
  if (v27 >= v24 - v23)
  {
    v28 = v24 - v23;
  }

  else
  {
    v28 = v27;
  }

LABEL_31:
  v34 = &v25[v28];
  if (v25)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  sub_1C0D20850(v25, v35, v75);
  v68 = v3;
  v7 = v70;
LABEL_37:
  v36 = v75[0];
  v37 = v75[1];
  __swift_destroy_boxed_opaque_existential_1(&v76);
  v80 = v36;
  v81 = v37;
  sub_1C0CF6468(v36, v37);
  sub_1C0D01560(a3, v36, v37, &v76);
  v39 = v76;
  v38 = v77;
  sub_1C0D22268(a3);
  LODWORD(v76) = 0;
  sub_1C0D7884C();
  sub_1C0CF6468(v39, v38);
  v73 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v40 = sub_1C0D786BC();
  v71 = a3;
  v72 = *(v72 + 8);
  (v72)(v10, v7);
  v41 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v42 = sub_1C0D7830C();
  v43 = [v41 initFromPublicKeyBytes:v42 inGroup:v40 compressed:1 corecryptoError:&v76];

  sub_1C0CF448C(v39, v38);
  if (v43)
  {
    v69 = v43;
    sub_1C0CF448C(v39, v38);
    v44 = v80;
    v45 = v81;
    sub_1C0CF6468(v80, v81);
    v46 = v71;
    sub_1C0D01560(v71, v44, v45, &v76);
    v47 = v76;
    v48 = v77;
    sub_1C0D22268(v46);
    LODWORD(v76) = 0;
    sub_1C0CF6468(v47, v48);
    sub_1C0D786EC();
    v49 = sub_1C0D786BC();
    (v72)(v10, v7);
    v50 = objc_allocWithZone(MEMORY[0x1E6999648]);
    v51 = sub_1C0D7830C();
    v52 = [v50 initFromPublicKeyBytes:v51 inGroup:v49 compressed:1 corecryptoError:&v76];

    sub_1C0CF448C(v47, v48);
    if (v52)
    {
      sub_1C0CF448C(v47, v48);
      v53 = v80;
      v54 = v81;
      sub_1C0CF6468(v80, v81);
      v55 = v71;
      sub_1C0D01560(v71, v53, v54, &v76);
      v56 = v76;
      v57 = v77;
      sub_1C0D22268(v55);
      LODWORD(v76) = 0;
      sub_1C0CF6468(v56, v57);
      sub_1C0D786EC();
      v58 = sub_1C0D786BC();
      (v72)(v10, v70);
      v59 = objc_allocWithZone(MEMORY[0x1E6999648]);
      v60 = sub_1C0D7830C();
      v61 = [v59 initFromPublicKeyBytes:v60 inGroup:v58 compressed:1 corecryptoError:&v76];

      sub_1C0CF448C(v56, v57);
      if (v61)
      {
        sub_1C0CF448C(v56, v57);
        sub_1C0CF448C(v80, v81);
        return v69;
      }

      v66 = v76;
      sub_1C0CF8DE0();
      swift_allocError();
      *v67 = v66;
      *(v67 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v56, v57);
    }

    else
    {
      v64 = v76;
      sub_1C0CF8DE0();
      swift_allocError();
      *v65 = v64;
      *(v65 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v47, v48);
    }
  }

  else
  {
    v62 = v76;
    sub_1C0CF8DE0();
    swift_allocError();
    *v63 = v62;
    *(v63 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v39, v38);
  }

  return sub_1C0CF448C(v80, v81);
}

uint64_t sub_1C0D10D8C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (v4 + 1) * a1;
  if (((v4 + 1) * a1) >> 64 == v5 >> 63)
  {
    v21 = sub_1C0D6E528(v5);
    v8 = [a2 serializedBigEndianScalar];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1C0D7832C();
      v12 = v11;

      sub_1C0D7834C();
      sub_1C0CF448C(v10, v12);
      if (!v4)
      {
        return v21;
      }

      sub_1C0D78BFC();
      for (i = 32; ; i += 8)
      {
        v14 = *(a3 + i);
        v15 = [v14 serializedBigEndianScalar];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = sub_1C0D7832C();
        v19 = v18;

        sub_1C0D7834C();
        sub_1C0CF448C(v17, v19);
        if (!--v4)
        {

          return v21;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D10F0C(uint64_t result, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v7 = 5 * result;
  if ((result * 5) >> 64 != (5 * result) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = 2 * a2 + v7;
  if (__OFADD__(2 * a2, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v23 = sub_1C0D6E528(result);
  result = [a3 serializedPublicKey_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  v13 = sub_1C0D7832C();
  v15 = v14;

  sub_1C0D7834C();
  sub_1C0CF448C(v13, v15);
  result = [a4 serializedPublicKey_];
  if (result)
  {
    v16 = result;
    v17 = sub_1C0D7832C();
    v19 = v18;

    sub_1C0D7834C();
    sub_1C0CF448C(v17, v19);
    v20 = sub_1C0D10D8C(v6, a5, a6);
    v22 = v21;
    sub_1C0D7834C();
    sub_1C0CF448C(v20, v22);
    return v23;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1C0D11094(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v82 = *MEMORY[0x1E69E9840];
  v72 = sub_1C0D786CC();
  v8 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (!v14)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v11) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v11 = v11;
LABEL_10:
  if ((a3 * v73) >> 64 != (a3 * v73) >> 63)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v11 != a3 * v73)
  {
    sub_1C0CFC3D4();
    swift_allocError();
    *v21 = 7;
    return swift_willThrow();
  }

  v78 = MEMORY[0x1E6969080];
  v79 = MEMORY[0x1E6969078];
  v76 = a1;
  v77 = a2;
  v15 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      memset(v74, 0, 14);
      sub_1C0CF6468(a1, a2);
      v19 = v74;
      v20 = v74;
      goto LABEL_35;
    }

    v23 = *(v16 + 16);
    v24 = *(v16 + 24);
    sub_1C0CF6468(a1, a2);
    a2 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v25 = sub_1C0D7812C();
    if (v25)
    {
      a2 = v17 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = sub_1C0D7815C();
      v16 = v23 - v26;
      if (__OFSUB__(v23, v26))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
      }

      v25 += v16;
    }

    v14 = __OFSUB__(v24, v23);
    v27 = v24 - v23;
    if (!v14)
    {
LABEL_27:
      v31 = sub_1C0D7814C();
      if (v31 >= v27)
      {
        v32 = v27;
      }

      else
      {
        v32 = v31;
      }

      v33 = (v32 + v25);
      if (v25)
      {
        v20 = v33;
      }

      else
      {
        v20 = 0;
      }

      v19 = v25;
      goto LABEL_35;
    }

    __break(1u);
LABEL_23:
    v28 = v16;
    v29 = v16 >> 32;
    v27 = v29 - v28;
    if (v29 < v28)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_1C0CF6468(a1, a2);
    v25 = sub_1C0D7812C();
    if (v25)
    {
      v30 = sub_1C0D7815C();
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_55;
      }

      v25 += v28 - v30;
    }

    goto LABEL_27;
  }

  if (v18)
  {
    goto LABEL_23;
  }

  v74[0] = *v15;
  LOWORD(v74[1]) = v17;
  BYTE2(v74[1]) = BYTE2(v17);
  BYTE3(v74[1]) = BYTE3(v17);
  BYTE4(v74[1]) = BYTE4(v17);
  BYTE5(v74[1]) = BYTE5(v17);
  sub_1C0CF6468(a1, a2);
  v19 = v74;
  v20 = v74 + BYTE6(v17);
LABEL_35:
  sub_1C0D20850(v19, v20, v75);
  v34 = v75[0];
  v35 = v75[1];
  __swift_destroy_boxed_opaque_existential_1(&v76);
  v80 = v34;
  v81 = v35;
  sub_1C0CF6468(v34, v35);
  v36 = v73;
  sub_1C0D01560(v73, v34, v35, &v76);
  v38 = v76;
  v37 = v77;
  sub_1C0D22268(v36);
  LODWORD(v76) = 0;
  v39 = sub_1C0D7884C();
  sub_1C0CF6468(v38, v37);
  v40 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  v41 = v71;
  v67 = v39;
  v69 = v40;
  sub_1C0D786EC();
  v42 = sub_1C0D786BC();
  v43 = *(v8 + 8);
  v70 = v8 + 8;
  v68 = v43;
  v43(v41, v72);
  v44 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v45 = sub_1C0D7830C();
  v46 = [v44 initWithData:v45 inGroup:v42 reduction:1 corecryptoError:&v76];

  sub_1C0CF448C(v38, v37);
  if (!v46)
  {
    v61 = v76;
    sub_1C0CF8DE0();
    swift_allocError();
    *v62 = v61;
    *(v62 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v38, v37);
    return sub_1C0CF448C(v80, v81);
  }

  sub_1C0CF448C(v38, v37);
  v47 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_50;
  }

  v75[0] = sub_1C0D78DEC();
  if (v47 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v65 = v4;
  v66 = v46;
  if (a3 == 1)
  {
LABEL_45:
    sub_1C0CF448C(v80, v81);
    return v66;
  }

  v48 = 0;
  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    v50 = v80;
    v51 = v81;
    sub_1C0CF6468(v80, v81);
    v52 = v73;
    sub_1C0D01560(v73, v50, v51, &v76);
    v53 = v76;
    v54 = v77;
    sub_1C0D22268(v52);
    LODWORD(v76) = 0;
    sub_1C0CF6468(v53, v54);
    v55 = v71;
    sub_1C0D786EC();
    v56 = sub_1C0D786BC();
    v68(v55, v72);
    v57 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v58 = sub_1C0D7830C();
    v59 = [v57 initWithData:v58 inGroup:v56 reduction:1 corecryptoError:&v76];

    sub_1C0CF448C(v53, v54);
    if (!v59)
    {
      break;
    }

    sub_1C0CF448C(v53, v54);
    v60 = v59;
    MEMORY[0x1C68E3BD0]();
    if (*(v75[0] + 16) >= *(v75[0] + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();

    ++v48;
    if (v49 == v47)
    {
      goto LABEL_45;
    }
  }

  v63 = v76;
  sub_1C0CF8DE0();
  swift_allocError();
  *v64 = v63;
  *(v64 + 4) = 0;
  swift_willThrow();

  sub_1C0CF448C(v53, v54);
  sub_1C0CF448C(v80, v81);
}

uint64_t sub_1C0D11774(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = sub_1C0D387FC(*(v4 + 88));
  if (!v3)
  {
    v9 = 5 * a2;
    if ((a2 * 5) >> 64 == (5 * a2) >> 63)
    {
      v10 = __OFADD__(v9, a1);
      v11 = v9 + a1;
      if (!v10)
      {
        v12 = v8 >> 62;
        if ((v8 >> 62) <= 1)
        {
          if (!v12)
          {
            v13 = BYTE6(v8);
            goto LABEL_14;
          }

LABEL_11:
          LODWORD(v13) = HIDWORD(result) - result;
          if (__OFSUB__(HIDWORD(result), result))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v13 = v13;
          goto LABEL_14;
        }

        if (v12 == 2)
        {
          v15 = *(result + 16);
          v14 = *(result + 24);
          v10 = __OFSUB__(v14, v15);
          v13 = v14 - v15;
          if (v10)
          {
            __break(1u);
            goto LABEL_11;
          }
        }

        else
        {
          v13 = 0;
        }

LABEL_14:
        v10 = __OFADD__(v11, v13);
        v16 = v11 + v13;
        if (!v10)
        {
          v17 = v8;
          v18 = result;
          v49 = sub_1C0D6E528(v16);
          v19 = [*v4 serializedBigEndianScalar];
          if (!v19)
          {
LABEL_32:
            result = sub_1C0D78EBC();
            __break(1u);
            return result;
          }

          v20 = v19;
          v21 = sub_1C0D7832C();
          v23 = v22;

          sub_1C0D7834C();
          sub_1C0CF448C(v21, v23);
          v24 = [*(v4 + 8) serializedPublicKey_];
          if (v24)
          {
            v25 = v24;
            v26 = sub_1C0D7832C();
            v28 = v27;

            sub_1C0D7834C();
            sub_1C0CF448C(v26, v28);
            v29 = [*(v4 + 16) serializedPublicKey_];
            if (v29)
            {
              v30 = v29;
              v31 = sub_1C0D7832C();
              v33 = v32;

              sub_1C0D7834C();
              sub_1C0CF448C(v31, v33);
              v34 = [*(v4 + 24) serializedPublicKey_];
              if (v34)
              {
                v35 = v34;
                v36 = sub_1C0D7832C();
                v38 = v37;

                sub_1C0D7834C();
                sub_1C0CF448C(v36, v38);
                v39 = [*(v4 + 72) serializedPublicKey_];
                if (v39)
                {
                  v40 = v39;
                  v41 = sub_1C0D7832C();
                  v43 = v42;

                  sub_1C0D7834C();
                  sub_1C0CF448C(v41, v43);
                  v44 = [*(v4 + 80) serializedPublicKey_];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = sub_1C0D7832C();
                    v48 = v47;

                    sub_1C0D7834C();
                    sub_1C0CF448C(v46, v48);
                    sub_1C0D7834C();
                    sub_1C0CF448C(v18, v17);
                    return v49;
                  }

                  goto LABEL_31;
                }

LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1C0D11AD4(uint64_t result, uint64_t a2)
{
  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = 5 * result;
  if ((result * 5) >> 64 != (5 * result) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = 4 * a2 + v4;
  if (__OFADD__(4 * a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *v2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v30 = sub_1C0D6E528(result);
  result = [v6 serializedPublicKey_];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v12 = sub_1C0D7832C();
  v14 = v13;

  sub_1C0D7834C();
  sub_1C0CF448C(v12, v14);
  result = [v5 serializedPublicKey_];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = result;
  v16 = sub_1C0D7832C();
  v18 = v17;

  sub_1C0D7834C();
  sub_1C0CF448C(v16, v18);
  result = [v8 serializedPublicKey_];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  v20 = sub_1C0D7832C();
  v22 = v21;

  sub_1C0D7834C();
  sub_1C0CF448C(v20, v22);
  result = [v7 serializedPublicKey_];
  if (result)
  {
    v23 = result;
    v24 = sub_1C0D7832C();
    v26 = v25;

    sub_1C0D7834C();
    sub_1C0CF448C(v24, v26);
    v27 = sub_1C0D10D8C(v3, v9, v10);
    v29 = v28;
    sub_1C0D7834C();
    sub_1C0CF448C(v27, v29);
    return v30;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C0D11CE4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v110 = *MEMORY[0x1E69E9840];
  v11 = sub_1C0D786CC();
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v16) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = v16;
LABEL_10:
  if ((a4 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_52;
  }

  v20 = 5 * a3;
  if ((a3 * 5) >> 64 != (5 * a3) >> 63)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v19 = __OFADD__(4 * a4, v20);
  v21 = 4 * a4 + v20;
  if (v19)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v16 != v21)
  {
    sub_1C0CFC3D4();
    swift_allocError();
    *v28 = 6;
    return swift_willThrow();
  }

  v99 = v12;
  v106 = MEMORY[0x1E6969080];
  v107 = MEMORY[0x1E6969078];
  v104 = a1;
  v105 = a2;
  v22 = __swift_project_boxed_opaque_existential_1(&v104, MEMORY[0x1E6969080]);
  v23 = *v22;
  v24 = v22[1];
  v25 = v24 >> 62;
  v95 = a5;
  v97 = a3;
  v101 = v11;
  if ((v24 >> 62) > 1)
  {
    if (v25 != 2)
    {
      memset(v102, 0, 14);
      sub_1C0CF6468(a1, a2);
      v26 = v102;
      v27 = v102;
      goto LABEL_37;
    }

    v30 = *(v23 + 16);
    v31 = *(v23 + 24);
    sub_1C0CF6468(a1, a2);
    a1 = v24 & 0x3FFFFFFFFFFFFFFFLL;
    a2 = sub_1C0D7812C();
    if (a2)
    {
      a1 = v24 & 0x3FFFFFFFFFFFFFFFLL;
      v32 = sub_1C0D7815C();
      v23 = v30 - v32;
      if (__OFSUB__(v30, v32))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      a2 += v23;
    }

    v19 = __OFSUB__(v31, v30);
    v33 = v31 - v30;
    if (!v19)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v25)
  {
    v102[0] = v23;
    LOWORD(v102[1]) = v24;
    BYTE2(v102[1]) = BYTE2(v24);
    BYTE3(v102[1]) = BYTE3(v24);
    BYTE4(v102[1]) = BYTE4(v24);
    BYTE5(v102[1]) = BYTE5(v24);
    sub_1C0CF6468(a1, a2);
    v26 = v102;
    v27 = v102 + BYTE6(v24);
    goto LABEL_37;
  }

  v34 = v23;
  v35 = v23 >> 32;
  v33 = v35 - v34;
  if (v35 < v34)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  sub_1C0CF6468(a1, a2);
  a2 = sub_1C0D7812C();
  if (a2)
  {
    v36 = sub_1C0D7815C();
    if (!__OFSUB__(v34, v36))
    {
      a2 += v34 - v36;
      goto LABEL_29;
    }

LABEL_57:
    __break(1u);
  }

LABEL_29:
  v37 = sub_1C0D7814C();
  if (v37 >= v33)
  {
    v38 = v33;
  }

  else
  {
    v38 = v37;
  }

  v39 = (v38 + a2);
  if (a2)
  {
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  v26 = a2;
LABEL_37:
  sub_1C0D20850(v26, v27, v103);
  v96 = v5;
  v40 = v103[0];
  v41 = v103[1];
  __swift_destroy_boxed_opaque_existential_1(&v104);
  v108 = v40;
  v109 = v41;
  sub_1C0CF6468(v40, v41);
  sub_1C0D01560(a4, v40, v41, &v104);
  v43 = v104;
  v42 = v105;
  sub_1C0D22268(a4);
  LODWORD(v104) = 0;
  sub_1C0D7884C();
  sub_1C0CF6468(v43, v42);
  v100 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v44 = sub_1C0D786BC();
  v99 = *(v99 + 8);
  (v99)(v14, v101);
  v45 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v46 = sub_1C0D7830C();
  v47 = [v45 initFromPublicKeyBytes:v46 inGroup:v44 compressed:1 corecryptoError:&v104];

  sub_1C0CF448C(v43, v42);
  if (!v47)
  {
    v79 = v104;
    sub_1C0CF8DE0();
    swift_allocError();
    *v80 = v79;
    *(v80 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v43, v42);
LABEL_48:
    v77 = v108;
    v78 = v109;
    return sub_1C0CF448C(v77, v78);
  }

  v98 = v47;
  sub_1C0CF448C(v43, v42);
  v48 = v108;
  v49 = v109;
  sub_1C0CF6468(v108, v109);
  sub_1C0D01560(a4, v48, v49, &v104);
  v50 = v104;
  v51 = v105;
  sub_1C0D22268(a4);
  LODWORD(v104) = 0;
  sub_1C0CF6468(v50, v51);
  sub_1C0D786EC();
  v52 = sub_1C0D786BC();
  (v99)(v14, v101);
  v53 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v54 = sub_1C0D7830C();
  v55 = [v53 initFromPublicKeyBytes:v54 inGroup:v52 compressed:1 corecryptoError:&v104];

  sub_1C0CF448C(v50, v51);
  if (!v55)
  {
    v81 = v104;
    sub_1C0CF8DE0();
    swift_allocError();
    *v82 = v81;
    *(v82 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v50, v51);
    v83 = v98;
LABEL_47:

    goto LABEL_48;
  }

  v94 = v55;
  sub_1C0CF448C(v50, v51);
  v56 = v108;
  v57 = v109;
  sub_1C0CF6468(v108, v109);
  sub_1C0D01560(a4, v56, v57, &v104);
  v58 = v104;
  v59 = v105;
  sub_1C0D22268(a4);
  LODWORD(v104) = 0;
  sub_1C0CF6468(v58, v59);
  sub_1C0D786EC();
  v60 = sub_1C0D786BC();
  (v99)(v14, v101);
  v61 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v62 = sub_1C0D7830C();
  v63 = [v61 initFromPublicKeyBytes:v62 inGroup:v60 compressed:1 corecryptoError:&v104];

  sub_1C0CF448C(v58, v59);
  if (!v63)
  {
    v84 = v104;
    sub_1C0CF8DE0();
    swift_allocError();
    *v85 = v84;
    *(v85 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v58, v59);

    v83 = v94;
    goto LABEL_47;
  }

  v93 = v63;
  sub_1C0CF448C(v58, v59);
  v64 = v108;
  v65 = v109;
  sub_1C0CF6468(v108, v109);
  sub_1C0D01560(a4, v64, v65, &v104);
  v66 = v104;
  v67 = v105;
  sub_1C0D22268(a4);
  LODWORD(v104) = 0;
  sub_1C0CF6468(v66, v67);
  sub_1C0D786EC();
  v68 = sub_1C0D786BC();
  (v99)(v14, v101);
  v69 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v70 = sub_1C0D7830C();
  v71 = [v69 initFromPublicKeyBytes:v70 inGroup:v68 compressed:1 corecryptoError:&v104];

  sub_1C0CF448C(v66, v67);
  if (!v71)
  {
    v86 = v104;
    sub_1C0CF8DE0();
    swift_allocError();
    *v87 = v86;
    *(v87 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v66, v67);

    v83 = v93;
    goto LABEL_47;
  }

  sub_1C0CF448C(v66, v67);
  v72 = v108;
  v73 = v109;
  v74 = v96;
  v75 = sub_1C0D11094(v108, v109, 5, v97);
  if (v74)
  {

    v77 = v72;
    v78 = v73;
    return sub_1C0CF448C(v77, v78);
  }

  v88 = v75;
  v89 = v76;
  result = sub_1C0CF448C(v72, v73);
  v90 = v95;
  v91 = v93;
  v92 = v94;
  *v95 = v98;
  v90[1] = v92;
  v90[2] = v91;
  v90[3] = v71;
  v90[4] = v88;
  v90[5] = v89;
  return result;
}

void *sub_1C0D12624(void *a1, unint64_t a2, uint64_t a3, char *a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v9 = sub_1C0D786CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v14 = 0;
    if (v13 != 2)
    {
      goto LABEL_10;
    }

    v16 = a1[2];
    v15 = a1[3];
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v14) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v14 = v14;
LABEL_10:
  if ((a4 + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v18 = 5 * a3;
  if ((a3 * 5) >> 64 != (5 * a3) >> 63)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v17 = __OFADD__(2 * a4, v18);
  v19 = 2 * a4 + v18;
  if (v17)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v14 == v19)
  {
    v81 = MEMORY[0x1E6969080];
    v82 = MEMORY[0x1E6969078];
    v79 = a1;
    v80 = a2;
    v20 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x1E6969080]);
    v21 = *v20;
    v22 = v20[1];
    v23 = v22 >> 62;
    v73 = a3;
    v76 = v9;
    if ((v22 >> 62) > 1)
    {
      if (v23 != 2)
      {
        memset(v77, 0, 14);
        sub_1C0CF6468(a1, a2);
        v24 = v77;
        goto LABEL_42;
      }

      v74 = a4;
      v75 = v10;
      v26 = *(v21 + 16);
      v27 = *(v21 + 24);
      sub_1C0CF6468(a1, a2);
      v28 = sub_1C0D7812C();
      if (v28)
      {
        v29 = sub_1C0D7815C();
        if (__OFSUB__(v26, v29))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v28 += v26 - v29;
      }

      v17 = __OFSUB__(v27, v26);
      v30 = v27 - v26;
      if (!v17)
      {
        v31 = sub_1C0D7814C();
        if (v31 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v31;
        }

        v33 = &v28[v32];
        if (v28)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        sub_1C0D20850(v28, v34, v78);
        v72 = v4;
        a4 = v74;
        v10 = v75;
LABEL_43:
        v45 = v78[0];
        v46 = v78[1];
        __swift_destroy_boxed_opaque_existential_1(&v79);
        v83 = v45;
        v84 = v46;
        sub_1C0CF6468(v45, v46);
        sub_1C0D01560(a4, v45, v46, &v79);
        v47 = a4;
        v48 = v79;
        v49 = v80;
        sub_1C0D22268(v47);
        LODWORD(v79) = 0;
        sub_1C0D7884C();
        sub_1C0CF6468(v48, v49);
        v75 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
        sub_1C0D786EC();
        v50 = sub_1C0D786BC();
        v74 = *(v10 + 8);
        (v74)(v12, v76);
        v51 = objc_allocWithZone(MEMORY[0x1E6999648]);
        v52 = sub_1C0D7830C();
        a1 = [v51 initFromPublicKeyBytes:v52 inGroup:v50 compressed:1 corecryptoError:&v79];

        sub_1C0CF448C(v48, v49);
        if (a1)
        {
          sub_1C0CF448C(v48, v49);
          v53 = v83;
          v54 = v84;
          sub_1C0CF6468(v83, v84);
          sub_1C0D01560(v47, v53, v54, &v79);
          v55 = v79;
          v56 = v80;
          sub_1C0D22268(v47);
          LODWORD(v79) = 0;
          sub_1C0CF6468(v55, v56);
          sub_1C0D786EC();
          v57 = sub_1C0D786BC();
          (v74)(v12, v76);
          v58 = objc_allocWithZone(MEMORY[0x1E6999648]);
          v59 = sub_1C0D7830C();
          v60 = [v58 initFromPublicKeyBytes:v59 inGroup:v57 compressed:1 corecryptoError:&v79];

          sub_1C0CF448C(v55, v56);
          if (v60)
          {
            sub_1C0CF448C(v55, v56);
            v61 = v83;
            v62 = v84;
            v63 = v72;
            sub_1C0D11094(v83, v84, 5, v73);
            if (!v63)
            {
              sub_1C0CF448C(v61, v62);
              return a1;
            }

            v64 = v61;
            v65 = v62;
            goto LABEL_50;
          }

          v68 = v79;
          sub_1C0CF8DE0();
          swift_allocError();
          *v69 = v68;
          *(v69 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v55, v56);
        }

        else
        {
          v66 = v79;
          sub_1C0CF8DE0();
          swift_allocError();
          *v67 = v66;
          *(v67 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v48, v49);
        }

        v64 = v83;
        v65 = v84;
LABEL_50:
        sub_1C0CF448C(v64, v65);
        return a1;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (!v23)
    {
      v77[0] = v21;
      LOWORD(v77[1]) = v22;
      BYTE2(v77[1]) = BYTE2(v22);
      BYTE3(v77[1]) = BYTE3(v22);
      BYTE4(v77[1]) = BYTE4(v22);
      BYTE5(v77[1]) = BYTE5(v22);
      sub_1C0CF6468(a1, a2);
      v24 = v77 + BYTE6(v22);
LABEL_42:
      sub_1C0D20850(v77, v24, v78);
      v72 = v4;
      goto LABEL_43;
    }

    v74 = v12;
    v75 = v10;
    v35 = a4;
    v36 = v21;
    v37 = v21 >> 32;
    v38 = v37 - v36;
    if (v37 >= v36)
    {
      sub_1C0CF6468(a1, a2);
      v39 = sub_1C0D7812C();
      if (!v39)
      {
LABEL_34:
        a4 = v35;
        v41 = sub_1C0D7814C();
        if (v41 >= v38)
        {
          v42 = v38;
        }

        else
        {
          v42 = v41;
        }

        v43 = &v39[v42];
        if (v39)
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        sub_1C0D20850(v39, v44, v78);
        v72 = v4;
        v12 = v74;
        v10 = v75;
        goto LABEL_43;
      }

      v40 = sub_1C0D7815C();
      if (!__OFSUB__(v36, v40))
      {
        v39 += v36 - v40;
        goto LABEL_34;
      }

LABEL_60:
      __break(1u);
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  sub_1C0CFC3D4();
  swift_allocError();
  *v25 = 3;
  swift_willThrow();
  return a1;
}

uint64_t sub_1C0D12CF0(uint64_t result, uint64_t a2)
{
  v3 = 6 * a2;
  if ((a2 * 6) >> 64 != (6 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v3 + 8 * result;
  if (__OFADD__(v3, 8 * v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v2;
  v33 = sub_1C0D6E528(result);
  result = [*v2 serializedPublicKey_];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v7 = sub_1C0D7832C();
  v9 = v8;

  sub_1C0D7834C();
  sub_1C0CF448C(v7, v9);
  result = [v5[1] serializedPublicKey_];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = sub_1C0D7832C();
  v13 = v12;

  sub_1C0D7834C();
  sub_1C0CF448C(v11, v13);
  result = [v5[2] serializedPublicKey_];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = sub_1C0D7832C();
  v17 = v16;

  sub_1C0D7834C();
  sub_1C0CF448C(v15, v17);
  result = [v5[3] serializedPublicKey_];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = result;
  v19 = sub_1C0D7832C();
  v21 = v20;

  sub_1C0D7834C();
  sub_1C0CF448C(v19, v21);
  result = [v5[4] serializedPublicKey_];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = result;
  v23 = sub_1C0D7832C();
  v25 = v24;

  sub_1C0D7834C();
  sub_1C0CF448C(v23, v25);
  result = [v5[5] serializedPublicKey_];
  if (result)
  {
    v26 = result;
    v27 = sub_1C0D7832C();
    v29 = v28;

    sub_1C0D7834C();
    sub_1C0CF448C(v27, v29);
    v30 = sub_1C0D10D8C(v4, v5[6], v5[7]);
    v32 = v31;
    sub_1C0D7834C();
    sub_1C0CF448C(v30, v32);
    return v33;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C0D12F84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = (a1 * 3) >> 64;
  result = 3 * a1;
  if (v4 != result >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = sub_1C0D6E528(result);
  result = [a2 serializedPublicKey_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  v10 = sub_1C0D7832C();
  v12 = v11;

  sub_1C0D7834C();
  sub_1C0CF448C(v10, v12);
  result = [a3 serializedPublicKey_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = result;
  v14 = sub_1C0D7832C();
  v16 = v15;

  sub_1C0D7834C();
  sub_1C0CF448C(v14, v16);
  result = [a4 serializedPublicKey_];
  if (result)
  {
    v17 = result;
    v18 = sub_1C0D7832C();
    v20 = v19;

    sub_1C0D7834C();
    sub_1C0CF448C(v18, v20);
    return v21;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C0D13428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4A0, &qword_1C0D7C000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0D13498(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C0D134D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0CF6468(result, a2);
  }

  return result;
}

unint64_t sub_1C0D134E4()
{
  result = qword_1EBE6C9C8;
  if (!qword_1EBE6C9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE6C9C8);
  }

  return result;
}

uint64_t sub_1C0D13530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0D13578(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C0D135D8()
{
  result = qword_1EBE6D4F0;
  if (!qword_1EBE6D4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D4E8, &qword_1C0D7C040);
    sub_1C0D13664();
    sub_1C0D136B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D4F0);
  }

  return result;
}

unint64_t sub_1C0D13664()
{
  result = qword_1EBE6D4F8;
  if (!qword_1EBE6D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D4F8);
  }

  return result;
}

unint64_t sub_1C0D136B8()
{
  result = qword_1EBE6D500[0];
  if (!qword_1EBE6D500[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D500);
  }

  return result;
}

uint64_t sub_1C0D13734(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1C0D1379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1C0D752D4(sub_1C0D13804, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

id sub_1C0D13834(uint64_t a1, id a2)
{

  return sub_1C0CEABF4(a1, a2);
}

id sub_1C0D1388C(void *a1, uint64_t a2)
{

  return sub_1C0CEAC4C(a1, a2);
}

uint64_t sub_1C0D138E4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = v4;
    result = sub_1C0D78C4C();
    if (v6 <= 0x3F)
    {
      if (v5 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C0D13A54(int *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 8;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + ((v14 + ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & ~v11)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    v25 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v14 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
    }

    else
    {
      v26 = *v25;
      if (*v25 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_1C0D13DA0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((*(v10 + 64) + ((*(v10 + 64) + v12 + ((*(v10 + 64) + v12 + ((v12 + 8 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((*(v10 + 64) + v12 + ((*(v10 + 64) + v12 + ((v12 + 8 + ((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a3 - v14 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v14)
      {
        v22 = *(v8 + 56);

        v22(a1, a2, v9, AssociatedTypeWitness);
      }

      else
      {
        v23 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v25 = *(v10 + 56);

          v25((v12 + 8 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *v23 = v24;
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((*(v10 + 64) + v12 + ((*(v10 + 64) + v12 + ((v12 + 8 + ((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + ((*(v10 + 64) + v12 + ((*(v10 + 64) + v12 + ((v12 + 8 + ((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12)) & ~v12)) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1C0D14150(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = cche_param_ctx_sizeof();
  v5 = swift_slowAlloc();
  *(v1 + 16) = v5;
  *(v1 + 24) = v5 + v4;
  *(v1 + 32) = v5;
  v6 = cche_param_ctx_init();
  if (v6)
  {
    v7 = v6;
    sub_1C0CF8DE0();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    swift_willThrow();
    _s12ParamContextCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = v2;
    *(v1 + 41) = v3;
  }

  return v1;
}

uint64_t sub_1C0D14234()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1C68E4EB0](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C0D1429C(uint64_t a1)
{
  cche_param_ctx_polynomial_degree();
  v1 = cche_ciphertext_galois_elt_rotate_rows_right();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C0CF8DE0();
  swift_allocError();
  *v3 = v2;
  *(v3 + 4) = 0;
  return swift_willThrow();
}

uint64_t sub_1C0D1435C()
{
  cche_param_ctx_polynomial_degree();
  v0 = cche_ciphertext_galois_elt_swap_columns();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  sub_1C0CF8DE0();
  swift_allocError();
  *v2 = v1;
  *(v2 + 4) = 0;
  return swift_willThrow();
}

uint64_t sub_1C0D14438()
{
  result = cche_ciphertext_fresh_npolys();
  qword_1EBE72CC0 = result;
  return result;
}

uint64_t sub_1C0D1445C()
{
  result = cche_ciphertext_fresh_correction_factor();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    qword_1EBE72CC8 = result;
  }

  return result;
}

uint64_t sub_1C0D14484@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = cche_plaintext_sizeof();
  type metadata accessor for HE.ObjectStorage();
  v9 = swift_allocObject();
  v9[2] = v4;

  result = swift_slowAlloc();
  v9[3] = result;
  v9[4] = result + v8;
  if (HIDWORD(*(a1 + 16)))
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      result = cche_encode_simd_reduced_int64();
      if (!result)
      {
LABEL_4:
        *a3 = v9;
        return result;
      }
    }

    else
    {
      result = cche_encode_simd_int64();
      if (!result)
      {
        goto LABEL_4;
      }
    }

    v11 = result;
    sub_1C0CF8DE0();
    swift_allocError();
    *v12 = v11;
    *(v12 + 4) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1C0D14588(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 41);
  v7[0] = *(*a1 + 40);
  v7[1] = v3;
  v4 = *(v2 + 40);
  LOBYTE(v2) = *(v2 + 41);
  v6[0] = v4;
  v6[1] = v2;
  return _s16CryptoKitPrivate2HEO16EncryptionParamsV2eeoiySbAE_AEtFZ_0(v7, v6) & 1;
}

void sub_1C0D145DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 != 0)
  {
    v4 = a1 + 32;
    v5 = *(*(a1 + 32) + 16);
    v23 = v5;
    if (v5)
    {
      v6 = sub_1C0D78C2C();
      *(v6 + 16) = v5;
      bzero((v6 + 32), 8 * v5);
    }

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v10 = *(v4 + 8 * v7);
      v11 = *(v10 + 16);
      v12 = *(v8 + 2);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_33;
      }

      sub_1C0D78BFC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= *(v8 + 3) >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        v8 = sub_1C0CF4C50(isUniquelyReferenced_nonNull_native, v15, 1, v8);
        if (*(v10 + 16))
        {
LABEL_20:
          v16 = *(v8 + 2);
          if ((*(v8 + 3) >> 1) - v16 < v11)
          {
            goto LABEL_35;
          }

          memcpy(&v8[8 * v16 + 32], (v10 + 32), 8 * v11);

          if (v11)
          {
            v17 = *(v8 + 2);
            v18 = __OFADD__(v17, v11);
            v19 = v17 + v11;
            if (v18)
            {
              goto LABEL_36;
            }

            *(v8 + 2) = v19;
          }

          goto LABEL_9;
        }
      }

      if (v11)
      {
        goto LABEL_34;
      }

LABEL_9:
      ++v7;
      if (v9 == v2)
      {
        if ((v23 * v2) >> 64 == (v23 * v2) >> 63)
        {
          if (*(v8 + 2) != v23 * v2)
          {

            break;
          }

          sub_1C0D78BFC();
          v20 = cche_crt_compose();

          if (!v20)
          {
            return;
          }

          v21 = 0;
          goto LABEL_30;
        }

LABEL_37:
        __break(1u);
        return;
      }
    }
  }

  v21 = 1;
  v20 = 5;
LABEL_30:
  sub_1C0CF8DE0();
  swift_allocError();
  *v22 = v20;
  *(v22 + 4) = v21;
  swift_willThrow();
}

uint64_t sub_1C0D14838(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1C0D78C4C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0D14978(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1C0D14BB4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *v19 = v20;
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

unint64_t sub_1C0D14E7C()
{
  result = qword_1EBE6D608;
  if (!qword_1EBE6D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D608);
  }

  return result;
}

uint64_t sub_1C0D14EE0()
{
  result = sub_1C0D07698(0x654B204153444345, 0xEF646E696C422079);
  qword_1EBE72CD0 = result;
  *algn_1EBE72CD8 = v1;
  return result;
}

id sub_1C0D15298(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(id, id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7(v10, v11, v12);

  return v13;
}

id CKPIETFKeyBlinding.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKPIETFKeyBlinding.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPIETFKeyBlinding();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKPIETFKeyBlinding.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CKPIETFKeyBlinding();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

CFDictionaryRef sub_1C0D15450(__SecKey *a1, char a2)
{
  result = SecKeyCopyAttributes(a1);
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    *&v3 = 0;
    type metadata accessor for CFString(0);
    sub_1C0D17DC4(&qword_1EBE6CD60, type metadata accessor for CFString, &unk_1C0D7ADF0);
    result = sub_1C0D78A2C();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void sub_1C0D1573C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D618, &qword_1C0D7C2D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0D7BEF0;
  v3 = *MEMORY[0x1E697AD68];
  *(inited + 32) = *MEMORY[0x1E697AD68];
  v4 = *MEMORY[0x1E697AD78];
  v5 = *MEMORY[0x1E697AD30];
  *(inited + 40) = *MEMORY[0x1E697AD78];
  *(inited + 48) = v5;
  v6 = *MEMORY[0x1E697AD40];
  v7 = *MEMORY[0x1E697AD50];
  *(inited + 56) = *MEMORY[0x1E697AD40];
  *(inited + 64) = v7;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  *(inited + 72) = sub_1C0D78C6C();
  sub_1C0D39A80(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D620, &qword_1C0D7C2E0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1C0D17DC4(&qword_1EBE6CD60, type metadata accessor for CFString, &unk_1C0D7ADF0);
  v13 = sub_1C0D78A1C();

  v14 = sub_1C0D7830C();
  v15 = SecKeyCreateWithData(v14, v13, 0);

  if (v15)
  {
  }

  else
  {
    __break(1u);
  }
}

void _s16CryptoKitPrivate18CKPIETFKeyBlindingC23privateScalarFromSecKeyy10Foundation4DataVSgSo0iJ3RefaFZ_0(__SecKey *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = error - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D15450(a1, 0);
  error[0] = 0;
  v6 = SecKeyCopyExternalRepresentation(a1, error);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C0D7832C();
    v10 = v9;

    sub_1C0D7896C();
    sub_1C0D17DC4(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
    sub_1C0D786EC();
    v11 = sub_1C0D786BC();
    (*(v3 + 8))(v5, v2);
    v12 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v13 = sub_1C0D7830C();
    v14 = [v12 initWithx963Representation:v13 group:v11];

    if (v14)
    {
      v15 = [v14 serializedBigEndianScalar];
      if (v15)
      {
        v16 = v15;
        sub_1C0D7832C();

        sub_1C0CF448C(v8, v10);
      }

      else
      {

        sub_1C0CF448C(v8, v10);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

CFDataRef _s16CryptoKitPrivate18CKPIETFKeyBlindingC7isValid9signature3for4with7contextSb10Foundation4DataV_AKSo9SecKeyRefaSo6NSDataCtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __SecKey *a5)
{
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D640, &qword_1C0D7C2F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_1C0D788FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D630, &qword_1C0D7C2F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_1C0D7895C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D15450(a5, 1);
  v40 = v19;
  v41 = v16;
  v36 = v12;
  v37 = v8;
  v42 = v17;
  v38 = v9;
  v39 = v10;
  v20 = v45;
  v21 = v46;
  error[0] = 0;
  result = SecKeyCopyExternalRepresentation(a5, error);
  if (result)
  {
    v23 = result;
    v24 = sub_1C0D7832C();
    v26 = v25;

    v47 = v24;
    v48 = v26;
    sub_1C0CF6468(v24, v26);
    sub_1C0D7892C();
    v27 = v41;
    v28 = v42;
    (*(v42 + 56))(v15, 0, 1, v41);
    (*(v28 + 32))(v40, v15, v27);
    v47 = v43;
    v48 = v44;
    sub_1C0CF6468(v43, v44);
    sub_1C0D17E68();
    v29 = v37;
    sub_1C0D788EC();
    v31 = v38;
    v30 = v39;
    (*(v39 + 56))(v29, 0, 1, v38);
    v32 = *(v30 + 32);
    v44 = v26;
    v33 = v36;
    v32(v36, v29, v31);
    v47 = v20;
    v48 = v21;
    v34 = v40;
    v35 = sub_1C0D7890C();
    sub_1C0CF448C(v24, v44);
    (*(v30 + 8))(v33, v31);
    (*(v28 + 8))(v34, v27);
    return (v35 & 1);
  }

  if (error[0])
  {

    v35 = 0;
    return (v35 & 1);
  }

  __break(1u);
  return result;
}

id sub_1C0D15FC8(void *a1, unint64_t a2, unint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = [a1 serializedBigEndianScalar];
  if (!v6)
  {
LABEL_9:
    __break(1u);
  }

  v7 = v6;
  v8 = sub_1C0D7832C();
  v10 = v9;

  v29 = sub_1C0D42970(1uLL);
  LODWORD(v30) = v11;
  BYTE6(v30) = v12;
  WORD2(v30) = v13;
  bzero(&v29, v12);
  v33 = v8;
  v34 = v10;
  v14 = MEMORY[0x1E6969080];
  v15 = MEMORY[0x1E6969078];
  v31 = MEMORY[0x1E6969080];
  v32 = MEMORY[0x1E6969078];
  v30 = v30 | ((WORD2(v30) | (BYTE6(v30) << 16)) << 32);
  v16 = __swift_project_boxed_opaque_existential_1(&v29, MEMORY[0x1E6969080]);
  v17 = *v16;
  v18 = v16[1];
  sub_1C0CF6468(v8, v10);
  sub_1C0D4268C(v17, v18, &v33);
  sub_1C0CF448C(v8, v10);
  __swift_destroy_boxed_opaque_existential_1(&v29);
  v19 = v33;
  v20 = v34;
  v35 = v33;
  v36 = v34;
  v31 = v14;
  v32 = v15;
  v29 = a2;
  v30 = a3;
  v21 = __swift_project_boxed_opaque_existential_1(&v29, v14);
  v22 = *v21;
  v23 = v21[1];
  sub_1C0CF6468(v19, v20);
  sub_1C0CF6468(a2, a3);
  sub_1C0D4268C(v22, v23, &v35);
  sub_1C0CF448C(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v29);
  v24 = v35;
  v25 = v36;
  if (qword_1EBE6CC58 != -1)
  {
    swift_once();
  }

  v26 = sub_1C0D3F16C(v24, v25, 1, qword_1EBE72CD0, *algn_1EBE72CD8, 72, 0);
  if (v3)
  {
    return sub_1C0CF448C(v24, v25);
  }

  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v28 = *(v26 + 32);
  sub_1C0CF448C(v24, v25);

  return v28;
}

__SecKey *sub_1C0D16244(uint64_t a1, uint64_t a2, __SecKey *a3, __SecKey *a4, uint64_t a5)
{
  v75 = a4;
  v74 = a5;
  v71 = a1;
  v72 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C0D788FC();
  v73 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C0D788CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0D786CC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  v17 = v76;
  sub_1C0D15450(a3, 0);
  if (v17)
  {
    return a3;
  }

  v76 = v16;
  v69 = a3;
  v70 = v14;
  v65 = v8;
  v66 = v12;
  v67 = v6;
  v68 = v10;
  a3 = v75;
  sub_1C0D15450(v75, 0);
  v64 = 0;
  v18 = SecKeyCopyExternalRepresentation(a3, error);
  if (!v18)
  {
    if (error[0])
    {

      sub_1C0D17CF0();
      swift_allocError();
      *v44 = 3;
      swift_willThrow();
      return a3;
    }

    goto LABEL_21;
  }

  v62 = v9;
  v19 = v18;
  v20 = sub_1C0D7832C();
  v22 = v21;

  sub_1C0D7896C();
  v23 = sub_1C0D17DC4(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  v24 = v76;
  v63 = v23;
  sub_1C0D786EC();
  v75 = sub_1C0D786BC();
  v25 = *(v70 + 8);
  v25(v24, v13);
  v26 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v70 = v20;
  v27 = sub_1C0D7830C();
  a3 = [v26 initWithx963Representation:v27 group:v75];

  if (!a3)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = SecKeyCopyExternalRepresentation(v69, error);
  if (!v28)
  {
    if (error[0])
    {

      sub_1C0D17CF0();
      swift_allocError();
      *v45 = 3;
      swift_willThrow();

      goto LABEL_13;
    }

    goto LABEL_22;
  }

  v75 = a3;
  v69 = v22;
  v29 = v28;
  v30 = sub_1C0D7832C();
  v32 = v31;

  v33 = v76;
  sub_1C0D786EC();
  v34 = sub_1C0D786BC();
  v25(v33, v13);
  a3 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v63 = v30;
  v76 = v32;
  v35 = sub_1C0D7830C();
  v36 = [(__SecKey *)a3 initWithx963Representation:v35 group:v34];

  if (!v36)
  {
    goto LABEL_20;
  }

  v37 = sub_1C0D7832C();
  v39 = v38;
  v40 = v64;
  v41 = sub_1C0D15FC8(v36, v37, v38);
  v42 = v68;
  v22 = v69;
  if (v40)
  {

    sub_1C0CF448C(v37, v39);
    sub_1C0D17CF0();
    swift_allocError();
    *v43 = 4;
    swift_willThrow();

    sub_1C0CF448C(v63, v76);
LABEL_13:
    sub_1C0CF448C(v70, v22);
    return a3;
  }

  v47 = v41;
  sub_1C0CF448C(v37, v39);
  v48 = sub_1C0D30290(v75, v47);

  v49 = [v48 x963Representation];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1C0D7832C();
    v53 = v52;

    v77 = v51;
    v78 = v53;
    v54 = v66;
    sub_1C0D788AC();
    v77 = v71;
    v78 = v72;
    sub_1C0D17E68();
    v55 = v65;
    sub_1C0D788BC();
    v56 = sub_1C0D788DC();
    v57 = v55;
    v58 = v56;
    v60 = v59;
    (*(v73 + 8))(v57, v67);
    a3 = sub_1C0D7830C();
    sub_1C0CF448C(v58, v60);

    sub_1C0CF448C(v63, v76);
    sub_1C0CF448C(v70, v22);

    (*(v42 + 8))(v54, v62);
    return a3;
  }

LABEL_23:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

CFDataRef _s16CryptoKitPrivate18CKPIETFKeyBlindingC28compressedRepresentationFrom6secKeySo6NSDataCSgSo03SecJ3Refa_tFZ_0(__SecKey *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D630, &qword_1C0D7C2F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_1C0D7895C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  sub_1C0D15450(a1, 1);
  result = SecKeyCopyExternalRepresentation(a1, error);
  if (result)
  {
    v10 = result;
    v11 = sub_1C0D7832C();
    v13 = v12;

    v18[2] = v11;
    v18[3] = v13;
    sub_1C0CF6468(v11, v13);
    sub_1C0D7892C();
    (*(v6 + 56))(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
    v14 = sub_1C0D7893C();
    v16 = v15;
    v17 = sub_1C0D7830C();
    sub_1C0CF448C(v14, v16);
    sub_1C0CF448C(v11, v13);
    (*(v6 + 8))(v8, v5);
    return v17;
  }

  return result;
}

uint64_t _s16CryptoKitPrivate18CKPIETFKeyBlindingC10secKeyFrom24compressedRepresentationSo03SecG3RefaSgSo6NSDataC_tFZ_0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D630, &qword_1C0D7C2F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v16 - v2;
  v4 = sub_1C0D7895C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = sub_1C0D7832C();
  v16[3] = v8;
  sub_1C0D7894C();
  (*(v5 + 56))(v3, 0, 1, v4);
  v9 = (*(v5 + 32))(v7, v3, v4);
  v10 = MEMORY[0x1C68E3900](v9);
  v12 = v11;
  sub_1C0D1573C(v10, v11);
  v14 = v13;
  sub_1C0CF448C(v10, v12);
  (*(v5 + 8))(v7, v4);
  return v14;
}

void sub_1C0D16D68(__SecKey *a1, __SecKey *a2, void *a3)
{
  v90 = a3;
  v92 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C0D786CC();
  v91 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C0D7895C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v77 - v16;
  sub_1C0D15450(a1, 1);
  if (!v3)
  {
    v87 = v15;
    v88 = v7;
    v85 = v12;
    v89 = v17;
    v18 = v92;
    sub_1C0D15450(v92, 0);
    v86 = 0;
    error[0] = 0;
    v19 = SecKeyCopyExternalRepresentation(a1, error);
    if (v19)
    {
      v20 = v19;
      v21 = sub_1C0D7832C();
      v23 = v22;

      v93 = v21;
      v94 = v23;
      sub_1C0CF6468(v21, v23);
      v24 = v89;
      v25 = v86;
      sub_1C0D7892C();
      v86 = v25;
      if (v25)
      {
        sub_1C0CF448C(v21, v23);
        return;
      }

      v83 = v23;
      v84 = v9;
      v81 = v21;
      v27 = v87;
      (*(v9 + 16))(v87, v24, v8);
      v28 = sub_1C0D7893C();
      v30 = v29;
      LODWORD(v93) = 0;
      v31 = sub_1C0D7896C();
      sub_1C0CF6468(v28, v30);
      v32 = sub_1C0D17DC4(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
      v33 = v88;
      v79 = v32;
      v80 = v31;
      sub_1C0D786EC();
      v82 = sub_1C0D786BC();
      v78 = *(v91 + 8);
      v91 += 8;
      v78(v33, v5);
      v34 = objc_allocWithZone(MEMORY[0x1E6999648]);
      v35 = sub_1C0D7830C();
      v36 = v34;
      v37 = v30;
      v38 = [v36 initFromPublicKeyBytes:v35 inGroup:v82 compressed:1 corecryptoError:&v93];

      sub_1C0CF448C(v28, v37);
      if (!v38)
      {
        v59 = v93;
        sub_1C0CF8DE0();
        swift_allocError();
        *v60 = v59;
        *(v60 + 4) = 0;
        swift_willThrow();
        sub_1C0CF448C(v28, v37);
        sub_1C0CF448C(v81, v83);
        v61 = *(v84 + 8);
        v61(v27, v8);
        v61(v89, v8);
        return;
      }

      sub_1C0CF448C(v28, v37);
      v39 = v84 + 8;
      v40 = *(v84 + 8);
      v41 = v27;
      v42 = v8;
      (v40)(v41, v8);
      v43 = SecKeyCopyExternalRepresentation(v18, error);
      v44 = v83;
      if (!v43)
      {
        if (error[0])
        {

          sub_1C0D17CF0();
          swift_allocError();
          *v62 = 3;
          swift_willThrow();

          sub_1C0CF448C(v81, v44);
          (v40)(v89, v42);
          return;
        }

        goto LABEL_21;
      }

      v92 = v40;
      v84 = v39;
      v45 = v43;
      v46 = v33;
      v47 = sub_1C0D7832C();
      v49 = v48;

      sub_1C0D786EC();
      v50 = sub_1C0D786BC();
      v78(v46, v5);
      v51 = objc_allocWithZone(MEMORY[0x1E6999650]);
      v91 = v49;
      v52 = sub_1C0D7830C();
      v53 = [v51 initWithx963Representation:v52 group:v50];

      if (v53)
      {
        v54 = sub_1C0D7832C();
        v56 = v55;
        v57 = v86;
        v58 = sub_1C0D15FC8(v53, v54, v55);
        if (v57)
        {
          (v92)(v89, v42);
          sub_1C0CF448C(v81, v44);
          sub_1C0CF448C(v54, v56);

          sub_1C0CF448C(v47, v91);
          return;
        }

        v63 = v58;
        sub_1C0CF448C(v54, v56);
        v90 = v38;
        v64 = sub_1C0D13834(v63, v38);

        v88 = v64;
        v65 = [v64 serializedPublicKey_];
        if (v65)
        {
          v66 = v65;
          v67 = sub_1C0D7832C();
          v69 = v68;

          v93 = v67;
          v94 = v69;
          v70 = v85;
          v71 = sub_1C0D7894C();
          v72 = MEMORY[0x1C68E3900](v71);
          v74 = v73;
          sub_1C0D1573C(v72, v73);
          sub_1C0CF448C(v72, v74);

          sub_1C0CF448C(v47, v91);
          sub_1C0CF448C(v81, v44);
          v75 = v70;
          v76 = v92;
          (v92)(v75, v42);
          (v76)(v89, v42);
          return;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (error[0])
      {

        sub_1C0D17CF0();
        swift_allocError();
        *v26 = 3;
        swift_willThrow();
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_1C0D17500(__SecKey *a1, __SecKey *a2, void *a3)
{
  v89 = a3;
  v91 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C0D786CC();
  v90 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C0D7895C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v76 - v16;
  error[0] = 0;
  sub_1C0D15450(a1, 1);
  if (!v3)
  {
    v86 = v15;
    v87 = v7;
    v84 = v12;
    v88 = v17;
    v18 = v91;
    sub_1C0D15450(v91, 0);
    v85 = 0;
    v19 = SecKeyCopyExternalRepresentation(a1, error);
    if (v19)
    {
      v20 = v19;
      v21 = sub_1C0D7832C();
      v23 = v22;

      v92 = v21;
      v93 = v23;
      sub_1C0CF6468(v21, v23);
      v24 = v88;
      v25 = v85;
      sub_1C0D7892C();
      v85 = v25;
      if (v25)
      {
        sub_1C0CF448C(v21, v23);
        return;
      }

      v81 = v23;
      v82 = v21;
      v83 = v9;
      v27 = v86;
      (*(v9 + 16))(v86, v24, v8);
      v28 = sub_1C0D7893C();
      v30 = v29;
      LODWORD(v92) = 0;
      v31 = sub_1C0D7896C();
      sub_1C0CF6468(v28, v30);
      v32 = sub_1C0D17DC4(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
      v33 = v87;
      v78 = v32;
      v79 = v31;
      sub_1C0D786EC();
      v80 = sub_1C0D786BC();
      v77 = *(v90 + 8);
      v90 += 8;
      v77(v33, v5);
      v34 = objc_allocWithZone(MEMORY[0x1E6999648]);
      v35 = sub_1C0D7830C();
      v36 = [v34 initFromPublicKeyBytes:v35 inGroup:v80 compressed:1 corecryptoError:&v92];

      sub_1C0CF448C(v28, v30);
      if (!v36)
      {
        v56 = v92;
        sub_1C0CF8DE0();
        swift_allocError();
        *v57 = v56;
        *(v57 + 4) = 0;
        swift_willThrow();
        sub_1C0CF448C(v28, v30);
        sub_1C0CF448C(v82, v81);
        v58 = *(v83 + 8);
        v58(v27, v8);
        v58(v88, v8);
        return;
      }

      v80 = v36;
      sub_1C0CF448C(v28, v30);
      v37 = v83 + 8;
      v38 = *(v83 + 8);
      (v38)(v27, v8);
      v39 = SecKeyCopyExternalRepresentation(v18, error);
      v40 = v81;
      if (!v39)
      {
        if (error[0])
        {

          sub_1C0D17CF0();
          swift_allocError();
          *v59 = 3;
          swift_willThrow();

          sub_1C0CF448C(v82, v40);
          (v38)(v88, v8);
          return;
        }

        goto LABEL_22;
      }

      v91 = v38;
      v83 = v37;
      v41 = v39;
      v42 = v33;
      v43 = sub_1C0D7832C();
      v45 = v44;

      sub_1C0D786EC();
      v46 = sub_1C0D786BC();
      v77(v42, v5);
      v47 = objc_allocWithZone(MEMORY[0x1E6999650]);
      v90 = v45;
      v48 = sub_1C0D7830C();
      v49 = [v47 initWithx963Representation:v48 group:v46];

      if (v49)
      {
        v50 = sub_1C0D7832C();
        v52 = v51;
        v53 = v85;
        v54 = sub_1C0D15FC8(v49, v50, v51);
        v55 = v82;
        if (v53)
        {
          (v91)(v88, v8);
          sub_1C0CF448C(v55, v40);
          sub_1C0CF448C(v50, v52);

          sub_1C0CF448C(v43, v90);
          return;
        }

        v60 = v54;
        sub_1C0CF448C(v50, v52);
        v61 = [v60 inverseModOrder];
        if (v61)
        {
          v89 = v60;
          v87 = v8;
          v62 = v61;
          v86 = sub_1C0D13834(v61, v80);
          v63 = [v86 serializedPublicKey_];
          if (v63)
          {
            v64 = v63;
            v65 = sub_1C0D7832C();
            v67 = v66;

            v92 = v65;
            v93 = v67;
            v68 = v84;
            v69 = sub_1C0D7894C();
            v70 = MEMORY[0x1C68E3900](v69);
            v72 = v71;
            sub_1C0D1573C(v70, v71);
            sub_1C0CF448C(v70, v72);

            sub_1C0CF448C(v43, v90);
            sub_1C0CF448C(v82, v40);
            v73 = v68;
            v74 = v87;
            v75 = v91;
            (v91)(v73, v87);
            (v75)(v88, v74);
            return;
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }
    }

    else
    {
      if (error[0])
      {

        sub_1C0D17CF0();
        swift_allocError();
        *v26 = 3;
        swift_willThrow();
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

unint64_t sub_1C0D17CF0()
{
  result = qword_1EBE6D610;
  if (!qword_1EBE6D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D610);
  }

  return result;
}

uint64_t sub_1C0D17D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D628, &qword_1C0D7C2E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C0D17DB4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C0D17DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0D17E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C0D17E68()
{
  result = qword_1EBE6D638;
  if (!qword_1EBE6D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D638);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKPIETFKeyBlindingErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CKPIETFKeyBlindingErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0D18010()
{
  result = qword_1EBE6D648[0];
  if (!qword_1EBE6D648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D648);
  }

  return result;
}

objc_class *RSAPSSSPKI_Bridging.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v6 = sub_1C0D785FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v2);
  sub_1C0CF6468(a1, a2);
  sub_1C0D785DC();
  if (v3)
  {
    sub_1C0CF448C(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v7 + 32))(v10 + OBJC_IVAR____TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging_backingStruct, v9, v6);
    v12.receiver = v10;
    v12.super_class = v2;
    v2 = objc_msgSendSuper2(&v12, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v2;
}

void *RSAPSSSPKI_Bridging.init(data:)(uint64_t a1, unint64_t a2)
{
  v6 = sub_1C0D785FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0CF6468(a1, a2);
  sub_1C0D785DC();
  if (v3)
  {
    sub_1C0CF448C(a1, a2);
    type metadata accessor for RSAPSSSPKI_Bridging(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v7 + 32))(v2 + OBJC_IVAR____TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging_backingStruct, v9, v6);
    v10 = type metadata accessor for RSAPSSSPKI_Bridging(0);
    v12.receiver = v2;
    v12.super_class = v10;
    v2 = objc_msgSendSuper2(&v12, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v2;
}

uint64_t type metadata accessor for RSAPSSSPKI_Bridging(uint64_t a1)
{
  result = qword_1ED907588;
  if (!qword_1ED907588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RSAPSSSPKI_Bridging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RSAPSSSPKI_Bridging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RSAPSSSPKI_Bridging(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0D188D0(uint64_t a1)
{
  result = sub_1C0D785FC();
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

uint64_t sub_1C0D189D4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D18AB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_1C0D18CA8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t _s17CuckooTableConfigVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}