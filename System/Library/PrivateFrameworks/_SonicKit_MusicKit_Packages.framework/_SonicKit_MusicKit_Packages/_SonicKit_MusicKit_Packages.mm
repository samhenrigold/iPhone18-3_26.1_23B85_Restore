double sub_2753ED3B8(double a1, double a2, double a3, double a4)
{
  v4 = a2 - a1;
  v5 = a4 - a3 <= 0.0 || v4 <= 0.0;
  result = v4 / (a4 - a3);
  if (v5)
  {
    return 1.0;
  }

  return result;
}

double sub_2753ED3DC(double a1, double a2, double a3, double a4)
{
  v4 = a4 - a3;
  v5 = a2 - a1;
  v6 = v5 <= 0.0 || v4 <= 0.0;
  result = v4 / v5;
  if (v6)
  {
    return 1.0;
  }

  return result;
}

void sub_2753ED400(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2753ED6D8(a1);
  if (v4 < 0.0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_2753ED6D8(a1);
  if (v6 < 0.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  if (v7 < fmax(v7 - sub_2753ED89C(a1), 0.0))
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (v7 >= v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  *a2 = 0;
  *(a2 + 8) = v8;
}

void sub_2753ED490(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_2753ED724(a1, a3, a4);
  v13 = sub_2753ED860(a3, a4, a5, a6, a1);
  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v14 < 0.0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v15 = sub_2753ED724(a1, a3, a4);
  v16 = sub_2753ED860(a3, a4, a5, a6, a1);
  if (v15 > v16)
  {
    v16 = v15;
  }

  if (v16 < 0.0)
  {
    goto LABEL_12;
  }

  if (v16 < v14)
  {
    v16 = v14;
  }

  *a2 = 0;
  *(a2 + 8) = v16;
}

void sub_2753ED568(__int128 *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_2753ED6D8(a1);
  if (v4 < 0.0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_2753ED6D8(a1);
  if (v6 < 0.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = fmax(v6 - sub_2753ED89C(a1), 0.0);
  if (v7 >= v8)
  {
    *a2 = v8 + (v5 - v8) * 0.5;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_2753ED5FC(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_2753ED724(a1, a3, a4);
  v13 = sub_2753ED860(a3, a4, a5, a6, a1);
  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v14 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_2753ED724(a1, a3, a4);
    v16 = sub_2753ED860(a3, a4, a5, a6, a1);
    if (v15 > v16)
    {
      v16 = v15;
    }

    if (v16 >= 0.0)
    {
      *a2 = v14 * 0.5 + 0.0;
      return;
    }
  }

  __break(1u);
}

double sub_2753ED6D8(__int128 *a1)
{
  v1 = a1[1];
  *&v14[3] = *a1;
  *&v14[5] = v1;
  v15 = *(a1 + 32);
  sub_275409C88();
  OUTLINED_FUNCTION_2(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  sub_275409C88();
  return sub_2753ED754(v14, v12, v13);
}

double sub_2753ED754(__int128 *a1, double a2, double a3)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  if (*a1 <= a2 && (v7 = *(a1 + 56), v7 < 0xFC))
  {
    v9 = *(a1 + 40);
    v16 = *(a1 + 24);
    v17 = v9;
    v10 = a1[1];
    v20 = *a1;
    v21 = v10;
    v22[0] = a1[2];
    *(v22 + 9) = *(a1 + 41);
    v19 = a2;
    v18 = v7;
    sub_27542D92C(&v19, &v16, &v23);
    v8 = v24;
  }

  else
  {
    v8 = v6 + a2 - v5;
  }

  if (v5 <= a3 && (v11 = *(a1 + 56), v11 < 0xFC))
  {
    v13 = *(a1 + 40);
    v16 = *(a1 + 24);
    v17 = v13;
    v14 = a1[1];
    v20 = *a1;
    v21 = v14;
    v22[0] = a1[2];
    *(v22 + 9) = *(a1 + 41);
    v19 = a3;
    v18 = v11;
    sub_27542D92C(&v19, &v16, &v23);
    v12 = v24;
  }

  else
  {
    v12 = v6 + a3 - v5;
  }

  return v12 - v8;
}

double sub_2753ED89C(uint64_t a1)
{
  *&v13[3] = *(a1 + 40);
  *&v13[5] = *(a1 + 56);
  v14 = *(a1 + 72);
  sub_275409C88();
  OUTLINED_FUNCTION_2(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  sub_275409C88();
  return sub_2753ED754(v13, v11, v12);
}

void sub_2753ED910(void *a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  v9 = OUTLINED_FUNCTION_1(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  sub_2753ED400(v9, v10);
}

void sub_2753ED940(void *a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  v9 = OUTLINED_FUNCTION_1(v1, v2, v3, v4, v5, v6, v7, v8, v11);
  sub_2753ED568(v9, v10);
}

void sub_2753ED9A0(void *a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  v9 = OUTLINED_FUNCTION_1(v1, v2, v3, v4, v5, v6, v7, v8, v15);
  sub_2753ED490(v9, v10, v11, v12, v13, v14);
}

void sub_2753ED9D8(void *a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  v9 = OUTLINED_FUNCTION_1(v1, v2, v3, v4, v5, v6, v7, v8, v15);
  sub_2753ED5FC(v9, v10, v11, v12, v13, v14);
}

void *OUTLINED_FUNCTION_0(void *__src, ...)
{
  va_start(va, __src);

  return memcpy(va, __src, 0x49uLL);
}

double OUTLINED_FUNCTION_3@<D0>(char a1@<W8>, double a2@<D0>, double a3@<D1>, __int128 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  a10 = a1;
  *&a4 = a2;
  *(&a4 + 1) = a2;
  a5 = 0;

  return sub_2753ED754(&a4, a2, a3);
}

uint64_t sub_2753EDA84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 170))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 1)
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

uint64_t sub_2753EDAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 170) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 170) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

void sub_2753EDB44()
{
  sub_275409C88();
  sub_275409C88();
  sub_2753EDBA0();
}

double sub_2753EDBA0()
{
  sub_275409C88();
  sub_275409C88();
  return (v1 - v2) / sub_2753EDDA4();
}

void sub_2753EDC00()
{
  v0 = sub_2753EDBA0();
  sub_275409C88();
  sub_275409C88();
  sub_275409C88();
  v1 = v7 - sub_2753EDBA0();
  sub_275409C88();
  v2 = v7;
  if (v7 < v1)
  {
    __break(1u);
  }

  else
  {
    v3 = v12 - v6 <= 0.0 || v0 <= 0.0;
    v4 = v0 / (v12 - v6);
    if (v3)
    {
      v4 = 1.0;
    }

    v6 = v4;
    v7 = 1.0;
    v8 = v1;
    v9 = v2;
    v10 = 0x80;
    sub_275409C88();
    v5 = v11;
    sub_275453DA8(&v5);
  }
}

void sub_2753EDCE4(void *a1)
{
  OUTLINED_FUNCTION_0(a1);
  v2 = sub_2753ED6D8(v3);
  if (v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = v2;
  }
}

void sub_2753EDD28(void *a1)
{
  OUTLINED_FUNCTION_0(a1);
  v2 = sub_2753ED6D8(v5);
  if (v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = fmax(v2 - sub_2753ED89C(v5), 0.0);
    if (v3 >= v4)
    {
      *v1 = v4;
      v1[1] = v3;
      return;
    }
  }

  __break(1u);
}

double sub_2753EDDA4()
{
  v1 = v0;
  sub_275409D20();
  v2 = sub_2753EDE30();
  sub_2753EDF40(v5);
  sub_275409D20();
  v3 = sub_2753EDE30();
  sub_2753EDF40(v5);
  return dbl_275474458[*(v1 + 169)] * v3 / v2;
}

uint64_t sub_2753EDE30()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  OUTLINED_FUNCTION_0_0();
  v4 = v3(v1, v2);
  v5 = v0[8];
  v6 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v5);
  OUTLINED_FUNCTION_0_0();
  result = v7(v5, v6);
  if (result < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = result;
  v10 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v10);
  OUTLINED_FUNCTION_0_0();
  v13 = v12(v10, v11);
  v14 = v0[8];
  v15 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v14);
  OUTLINED_FUNCTION_0_0();
  result = v16(v14, v15);
  if (result < v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v9 - v13;
  if (__OFSUB__(v9, v13))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2753EDFF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753EE014(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_2753EE050@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_2753EE05C@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

void sub_2753EE068(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v13, __src, sizeof(v13));
  v3 = OUTLINED_FUNCTION_0_1();
  v6 = sub_2753ED724(v4, v3, v5);
  v7 = OUTLINED_FUNCTION_0_1();
  v12 = sub_2753ED860(v7, v9, v10, v11, v8);
  if (v6 > v12)
  {
    v12 = v6;
  }

  if (v12 < 0.0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v12;
  }
}

uint64_t sub_2753EE13C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2753EE5B4((a1 + 14), v181);
  OUTLINED_FUNCTION_1_0();
  v4 = OUTLINED_FUNCTION_0_2();
  v5(v4);
  v163 = *&v169;
  OUTLINED_FUNCTION_1_0();
  v6 = OUTLINED_FUNCTION_0_2();
  v7(v6);
  v160 = *&v169;
  OUTLINED_FUNCTION_1_0();
  v8 = OUTLINED_FUNCTION_0_2();
  v9(v8);
  OUTLINED_FUNCTION_1_0();
  v10 = OUTLINED_FUNCTION_0_2();
  v11(v10);
  v12 = v169;
  v13 = v170;
  OUTLINED_FUNCTION_1_0();
  v14 = OUTLINED_FUNCTION_0_2();
  v16 = v15(v14);
  OUTLINED_FUNCTION_1_0();
  v17 = OUTLINED_FUNCTION_0_2();
  v19 = v18(v17);
  OUTLINED_FUNCTION_1_0();
  v20 = OUTLINED_FUNCTION_0_2();
  v22 = v21(v20);
  OUTLINED_FUNCTION_1_0();
  v23 = OUTLINED_FUNCTION_0_2();
  v25 = v24(v23);
  v27 = *a1;
  v26 = a1[1];
  v28 = *(a1 + 16);
  v29 = a1[4];
  v152 = a1[3];
  v30 = *(a1 + 40);
  v31 = a1[13];
  sub_2753EE660(a1[11], &v169, v31, v16, v19);
  if (!v2)
  {
    v33 = v32;
    HIDWORD(v135) = v28;
    v139 = v26;
    v35 = v160;
    v34 = v163;
    v36 = a1[12];
    v180[0] = v12;
    v180[1] = v13;
    sub_2753EE660(v36, v180, v31, v22, v25);
    v38 = v37;
    v104 = v33;
    sub_2753EEEC4(v33, &v169);
    v146 = *&v170;
    v149 = *&v169;
    v39 = v171;
    v143 = v172;
    v184 = v173;
    sub_2753EEEC4(v38, &v169);
    v40 = *&v169;
    v82 = *&v169;
    HIDWORD(v115) = v30;
    v41 = *&v170;
    v108 = v27;
    v43 = v171;
    v42 = v172;
    v132 = v171;
    LOBYTE(v33) = v173;
    HIDWORD(v85) = v173;
    v119 = *&v170;
    v122 = v182;
    v94 = v183;
    __swift_project_boxed_opaque_existential_1(v181, v182);
    OUTLINED_FUNCTION_2_0();
    v129 = v39;
    v171 = v39;
    v172 = v143;
    v173 = v184;
    v174 = v40;
    v175 = v41;
    v176 = v43;
    v177 = v42;
    v178 = v33;
    (*(v94 + 72))(&v179, &v169, v122);
    v95 = v179;
    __swift_project_boxed_opaque_existential_1(v181, v182);
    OUTLINED_FUNCTION_2_0();
    v171 = v39;
    v172 = v143;
    LOBYTE(v41) = v184;
    v173 = v184;
    v44 = v82;
    v174 = v82;
    v175 = v119;
    v176 = v132;
    v177 = v42;
    v45 = v42;
    LOBYTE(v40) = BYTE4(v85);
    v178 = BYTE4(v85);
    v54 = OUTLINED_FUNCTION_3_0(v46, v47, v48, v49, v50, v51, v52, v53, v82, v85, v88, v92, v95, *(&v95 + 1), v38, v104, v108, v29, v115, v119, &v179 + 8, v127, v129, v132, v135, v139, v143, v146, v149, v152, a2, v160, v163, v166, SLOBYTE(v169));
    v55(v54);
    *&v56 = v179;
    *(&v56 + 1) = *v123;
    v89 = v56;
    __swift_project_boxed_opaque_existential_1(v181, v182);
    OUTLINED_FUNCTION_2_0();
    v171 = v130;
    v172 = v144;
    v173 = v41;
    v57 = v120;
    v174 = v44;
    v175 = v120;
    v58 = v133;
    v176 = v133;
    v177 = v45;
    v178 = v40;
    v67 = OUTLINED_FUNCTION_3_0(v59, v60, v61, v62, v63, v64, v65, v66, v83, v86, v89, *(&v89 + 1), v96, v99, v101, v105, v109, v112, v116, v120, v123, v128, v130, v133, v136, v140, v144, v147, v150, v153, v157, v161, v164, v167, SLOBYTE(v169));
    v68(v67);
    *&v69 = v179;
    *(&v69 + 1) = *v124;
    v125 = v69;
    __swift_project_boxed_opaque_existential_1(v181, v182);
    OUTLINED_FUNCTION_2_0();
    v171 = v131;
    v172 = v145;
    v173 = v184;
    v174 = v44;
    v175 = v57;
    v176 = v58;
    v177 = v45;
    v178 = v40;
    v78 = OUTLINED_FUNCTION_3_0(v70, v71, v72, v73, v74, v75, v76, v77, v84, v87, v90, v93, v97, v100, v102, v106, v110, v113, v117, v121, v125, *(&v125 + 1), v131, v134, v137, v141, v145, v148, v151, v154, v158, v162, v165, v168, SLOBYTE(v169));
    v79(v78);
    v80 = v179;
    *v159 = v98;
    *(v159 + 16) = v91;
    *(v159 + 32) = v80;
    *(v159 + 40) = v107;
    *(v159 + 48) = v34;
    *(v159 + 56) = v111;
    *(v159 + 64) = v142;
    *(v159 + 72) = v138;
    *(v159 + 80) = v98;
    *(v159 + 96) = v126;
    *(v159 + 112) = v80;
    *(v159 + 120) = v103;
    *(v159 + 128) = v35;
    *(v159 + 136) = v155;
    *(v159 + 144) = v114;
    *(v159 + 152) = v118;
  }

  return __swift_destroy_boxed_opaque_existential_1(v181);
}

_OWORD *sub_2753EE5B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2753EF3C8(a1, v8);
  if (v9)
  {
    result = swift_allocObject();
    v4 = result;
    v5 = *&v8[16];
    result[1] = *v8;
    result[2] = v5;
    v6 = &off_288411978;
    v7 = &_s30UnstructuredScheduleCalculatorVN;
  }

  else
  {
    v4 = swift_allocObject();
    result = memcpy(v4 + 1, v8, 0xAAuLL);
    v6 = &off_288411890;
    v7 = &_s28StructuredScheduleCalculatorVN;
  }

  a2[3] = v7;
  a2[4] = v6;
  *a2 = v4;
  return result;
}

void sub_2753EE660(uint64_t result, double *a2, uint64_t a3, double a4, double a5)
{
  v5 = a3;
  v6 = 0;
  v8 = *a2;
  v7 = a2[1];
  v104 = result + 32;
  v105 = *(result + 16);
  v9 = MEMORY[0x277D84F90];
  v103 = v7 - *a2;
  v107 = v7;
  v102 = *a2;
  while (1)
  {
    v108 = v9;
    if (v6 == v105)
    {
      break;
    }

    v10 = v104 + 40 * v6;
    v11 = *(v10 + 32);
    v12 = v8 + *(v10 + 8) + v103 * *v10;
    if (v7 >= v12)
    {
      v13 = v8 + *(v10 + 8) + v103 * *v10;
    }

    else
    {
      v13 = v7;
    }

    if (v12 >= v8)
    {
      v14 = v13;
    }

    else
    {
      v14 = v8;
    }

    v15 = v8 + *(v10 + 24) + v103 * *(v10 + 16);
    if (v7 >= v15)
    {
      v16 = v8 + *(v10 + 24) + v103 * *(v10 + 16);
    }

    else
    {
      v16 = v7;
    }

    if (v15 >= v8)
    {
      v17 = v16;
    }

    else
    {
      v17 = v8;
    }

    if (v17 >= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v14 + (v17 - v14) * 0.5;
    }

    if (v17 >= v14)
    {
      v19 = v17;
    }

    else
    {
      v19 = v14 + (v17 - v14) * 0.5;
    }

    v20 = *(v11 + 16);
    v106 = v6;
    if (v20)
    {
      v122 = MEMORY[0x277D84F90];

      sub_27544107C(0, v20, 0);
      v21 = 0;
      v22 = v122;
      v113 = v19 - v18;
      v114 = v19;
      v112 = v20 - 1;
      v23 = 32;
      v115 = v11;
      while (v21 < *(v11 + 16))
      {
        v117 = v23;
        memcpy(__dst, (v11 + v23), sizeof(__dst));
        v118 = *&__dst[72];
        v119 = *&__dst[80];
        v25 = *&__dst[56];
        v24 = *&__dst[64];
        v26 = *__dst;
        v27 = *&__dst[8];
        v28 = *&__dst[24];
        v123 = *&__dst[16];
        v30 = *&__dst[40];
        v31 = *&__dst[32];
        v29 = *&__dst[48];
        sub_2753EF2CC(__dst, v120);
        v32 = qword_2809DAD90;

        if (v32 != -1)
        {
          swift_once();
        }

        v33 = *&qword_2809DC3C8;
        v34 = unk_2809DC3D0;
        v35 = *&qword_2809DC3D8;
        v37 = qword_2809DC3E0;
        v36 = unk_2809DC3E8;
        v38 = qword_2809DC3B8 == v26 && unk_2809DC3C0 == v27;
        if (v38 || (sub_27546E9A0()) && (v33 == v123 ? (v39 = v34 == v28) : (v39 = 0), v39 ? (v40 = v35 == v31) : (v40 = 0), v40 && (v37 == v30 ? (v41 = v36 == v29) : (v41 = 0), v41 || (sub_27546E9A0())))
        {

          v26 = qword_2809DC3B8;
          v27 = unk_2809DC3C0;
          v28 = unk_2809DC3D0;
          v123 = *&qword_2809DC3C8;
          v31 = *&qword_2809DC3D8;
          v30 = qword_2809DC3E0;
          v29 = unk_2809DC3E8;
          v42 = v18 + v113 * v25 + v24;
          if (v114 >= v42)
          {
            v43 = v18 + v113 * v25 + v24;
          }

          else
          {
            v43 = v114;
          }

          if (v42 >= v18)
          {
            v44 = v43;
          }

          else
          {
            v44 = v18;
          }

          v45 = v18 + v113 * v118 + v119;
          if (v114 >= v45)
          {
            v46 = v18 + v113 * v118 + v119;
          }

          else
          {
            v46 = v114;
          }

          if (v45 >= v18)
          {
            v47 = v46;
          }

          else
          {
            v47 = v18;
          }

          if (v47 >= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = v44 + (v47 - v44) * 0.5;
          }

          if (v47 >= v44)
          {
            v49 = v47;
          }

          else
          {
            v49 = v44 + (v47 - v44) * 0.5;
          }

          sub_2753EF37C(0, &qword_2809DADB8, &type metadata for Transition.ContinuousSchedule.AutomationPoint);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_2754744F0;
          *(v50 + 32) = a4;
          *(v50 + 40) = v48;
          *(v50 + 48) = 0x80;
          *(v50 + 56) = a5;
          *(v50 + 64) = v49;
          *(v50 + 72) = 0x80;
        }

        else
        {
          v51 = sub_2754294DC(v5, *&__dst[88], *&__dst[96], *&__dst[104], __dst[112]);
          if (v116)
          {
            goto LABEL_100;
          }

          v52 = v51;
          v53 = sub_2754294DC(v5, *&__dst[120], *&__dst[128], *&__dst[136], __dst[144]);
          v116 = 0;
          v54 = v18 + v113 * v25 + v24;
          if (v114 >= v54)
          {
            v55 = v18 + v113 * v25 + v24;
          }

          else
          {
            v55 = v114;
          }

          if (v54 >= v18)
          {
            v56 = v55;
          }

          else
          {
            v56 = v18;
          }

          v57 = v18 + v113 * v118 + v119;
          if (v114 >= v57)
          {
            v58 = v18 + v113 * v118 + v119;
          }

          else
          {
            v58 = v114;
          }

          if (v57 >= v18)
          {
            v59 = v58;
          }

          else
          {
            v59 = v18;
          }

          if (v59 >= v56)
          {
            v60 = v56;
          }

          else
          {
            v60 = v56 + (v59 - v56) * 0.5;
          }

          if (v59 >= v56)
          {
            v61 = v59;
          }

          else
          {
            v61 = v56 + (v59 - v56) * 0.5;
          }

          v62 = __dst[145];
          sub_2753EF37C(0, &qword_2809DADB8, &type metadata for Transition.ContinuousSchedule.AutomationPoint);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_2754744F0;
          *(v50 + 32) = v52;
          *(v50 + 40) = v60;
          *(v50 + 48) = v62;
          *(v50 + 56) = v53;
          *(v50 + 64) = v61;
          *(v50 + 72) = v62;
        }

        sub_2753EF328(__dst);
        v122 = v22;
        v64 = *(v22 + 16);
        v63 = *(v22 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_27544107C((v63 > 1), v64 + 1, 1);
          v22 = v122;
        }

        *(v22 + 16) = v64 + 1;
        v65 = v22 + (v64 << 6);
        *(v65 + 32) = v26;
        *(v65 + 40) = v27;
        *(v65 + 48) = v123;
        *(v65 + 56) = v28;
        *(v65 + 64) = v31;
        *(v65 + 72) = v30;
        *(v65 + 80) = v29;
        *(v65 + 88) = v50;
        if (v112 == v21)
        {

          v9 = v108;
          v5 = a3;
          goto LABEL_89;
        }

        v23 = v117 + 152;
        ++v21;
        v5 = a3;
        v11 = v115;
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      return;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_89:
    v66 = *(v22 + 16);
    v67 = *(v9 + 16);
    v8 = v102;
    if (__OFADD__(v67, v66))
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v108;
    if (!isUniquelyReferenced_nonNull_native || v67 + v66 > *(v108 + 24) >> 1)
    {
      sub_275431038();
      v69 = v70;
    }

    if (*(v22 + 16))
    {
      if ((*(v69 + 24) >> 1) - *(v69 + 16) < v66)
      {
        goto LABEL_132;
      }

      v71 = v69;
      swift_arrayInitWithCopy();

      v9 = v71;
      v6 = v106 + 1;
      v7 = v107;
      if (v66)
      {
        v72 = *(v71 + 16);
        v73 = __OFADD__(v72, v66);
        v74 = v72 + v66;
        if (v73)
        {
          goto LABEL_133;
        }

        *(v71 + 16) = v74;
      }
    }

    else
    {
      v75 = v69;

      v9 = v75;
      v6 = v106 + 1;
      v7 = v107;
      if (v66)
      {
        __break(1u);
LABEL_100:

        sub_2753EF328(__dst);

        return;
      }
    }
  }

  v76 = 0;
  v123 = *(v9 + 16);
  v77 = 32;
  while (*&v123 != v76)
  {
    if (v76 >= *(v9 + 16))
    {
      goto LABEL_130;
    }

    v79 = *(v9 + v77 + 32);
    v78 = *(v9 + v77 + 48);
    v80 = *(v9 + v77 + 16);
    *__dst = *(v9 + v77);
    *&__dst[16] = v80;
    *&__dst[32] = v79;
    *&__dst[48] = v78;
    v82 = *__dst;
    v81 = *&__dst[8];
    v83 = v80;
    v85 = v79;
    v84 = v78;
    sub_2753EF21C(__dst, v120);
    v86 = qword_2809DADA0;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = *&qword_2809DC438;
    v88 = unk_2809DC440;
    v89 = *&qword_2809DC448;
    v90 = qword_2809DC450;
    v91 = unk_2809DC458;
    v92 = v82 == qword_2809DC428 && v81 == unk_2809DC430;
    if (v92 || (sub_27546E9A0()) && (*&v83 == v87 ? (v93 = *(&v83 + 1) == v88) : (v93 = 0), v93 && *&v85 == v89))
    {
      if (*(&v85 + 1) == v90 && v84 == v91)
      {
        sub_2753EF278(__dst);

        return;
      }

      v95 = sub_27546E9A0();
      sub_2753EF278(__dst);

      if (v95)
      {
        return;
      }
    }

    else
    {
      sub_2753EF278(__dst);
    }

    v77 += 64;
    ++v76;
    v9 = v108;
    v7 = v107;
  }

  if (v7 > v8)
  {
    *v120 = v8;
    *&v120[1] = v7;
    v96 = v9;
    sub_2753EF104(v120, __dst);
    sub_2753EF37C(0, &qword_2809DADC0, &type metadata for Transition.ContinuousSchedule.Automation);
    v97 = swift_allocObject();
    v98 = *__dst;
    v99 = *&__dst[16];
    v97[1] = xmmword_275474500;
    v97[2] = v98;
    v100 = *&__dst[32];
    v101 = *&__dst[48];
    v97[3] = v99;
    v97[4] = v100;
    v97[5] = v101;
    v120[0] = v97;
    sub_2754591F4(v96);
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2753EEEC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  v3 = (result + 32);
  if (!v2)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = v3[1];
    v31 = *v3;
    v32 = v4;
    v5 = v3[3];
    v33 = v3[2];
    v34 = v5;
    v6 = v31;
    v7 = v32;
    v9 = v33;
    v8 = v5;
    sub_2753EF21C(&v31, v30);
    v10 = qword_2809DAD90;

    if (v10 != -1)
    {
      swift_once();
    }

    v12 = *&qword_2809DC3C8;
    v11 = unk_2809DC3D0;
    v13 = *&qword_2809DC3D8;
    v14 = qword_2809DC3E0;
    v15 = unk_2809DC3E8;
    v16 = v6 == qword_2809DC3B8 && *(&v6 + 1) == unk_2809DC3C0;
    if (!v16 && (sub_27546E9A0() & 1) == 0 || *&v7 != v12 || *(&v7 + 1) != v11 || *&v9 != v13)
    {

      goto LABEL_19;
    }

    v17 = *(&v34 + 1);
    if (*(&v9 + 1) == v14 && v8 == v15)
    {
      break;
    }

    v19 = sub_27546E9A0();

    if (v19)
    {
      goto LABEL_22;
    }

LABEL_19:
    result = sub_2753EF278(&v31);
    v3 += 4;
    if (!--v2)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  swift_bridgeObjectRetain_n();
  v20 = sub_27544FBA0(1, v17);
  v30[0] = v17;
  v30[1] = v20;
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v23;
  sub_27544E690(v30);
  v25 = v24;
  swift_unknownObjectRelease();

  sub_2753EF278(&v31);
  if (*(v25 + 16))
  {
    v26 = *(v25 + 64);
    v27 = *(v25 + 48);
    v28 = *(v25 + 32);

    *a2 = v28;
    *(a2 + 16) = v27;
    *(a2 + 32) = v26;
    return result;
  }

LABEL_25:
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = -4;
  return result;
}

uint64_t sub_2753EF104@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_2809DADA0 != -1)
  {
    swift_once();
  }

  v6 = qword_2809DC428;
  v5 = unk_2809DC430;
  v7 = qword_2809DC438;
  v8 = unk_2809DC440;
  v9 = qword_2809DC448;
  v11 = qword_2809DC450;
  v10 = unk_2809DC458;
  sub_2753EF37C(0, &qword_2809DADB8, &type metadata for Transition.ContinuousSchedule.AutomationPoint);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_275474510;
  *(v12 + 32) = v8;
  *(v12 + 40) = v4;
  *(v12 + 48) = 0x80;
  *(v12 + 56) = v7;
  *(v12 + 64) = v4;
  *(v12 + 72) = 0x80;
  *(v12 + 80) = v7;
  *(v12 + 88) = v3;
  *(v12 + 96) = 0x80;
  *(v12 + 104) = v8;
  *(v12 + 112) = v3;
  *(v12 + 120) = 0x80;
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v11;
  a2[6] = v10;
  a2[7] = v12;
}

void sub_2753EF37C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_27546E990();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2753EF434()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return MEMORY[0x2821FE8E8](v0, 186, 7);
}

void *OUTLINED_FUNCTION_1_0()
{
  v2 = *(v0 - 168);

  return __swift_project_boxed_opaque_existential_1((v0 - 192), v2);
}

uint64_t sub_2753EF4E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2753EF528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s14SchedulingSongVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14SchedulingSongVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
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

uint64_t sub_2753EF610(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753EF630(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t sub_2753EF68C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 283))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_2753EF6CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 282) = 0;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 283) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 283) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2753EF780(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753EF7A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

BOOL sub_2753EF7E0(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8)
{
  if (a5 != a7 || a6 != a8)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    return (a4 & 1) == 0 && *&a1 == *&a3;
  }

  return (a4 & 1) != 0;
}

double *sub_2753EF850@<X0>(double *result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v3 = *result;
  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_26:
    *a3 = v3;
    return result;
  }

  v5 = (a2 + 40);
  v6 = v4 - 1;
  v7 = 1;
  v8 = 0.0;
  for (i = 0.0; ; i = v10)
  {
    v11 = *(v5 - 1);
    v10 = *v5;
    if (v11 >= v3)
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = 0;
    v5 += 2;
    --v6;
    v8 = v11;
  }

  if (v7)
  {
LABEL_7:
    v3 = v3 + v10;
    goto LABEL_26;
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v5 - 1);
  }

  if (v8 > v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v5 - 1);
  }

  if (v12 <= v13)
  {
    if (v12 >= v3)
    {
      if (v8 >= v11)
      {
        i = *v5;
      }
    }

    else if (v3 >= v13)
    {
      if (v8 < v11)
      {
        i = *v5;
      }
    }

    else
    {
      v14 = (v3 - v8) / (v11 - v8);
      if (v14 > 0.0)
      {
        if (v14 >= 1.0)
        {
          i = *v5;
        }

        else
        {
          i = i + (v10 - i) * v14;
        }
      }
    }

    v3 = v3 + i;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s25UnstructuredStylingRegionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s25UnstructuredStylingRegionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_2753EF9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2753EF3C8(a1, __src);
  v4 = v14;
  if (v14)
  {
    v5 = *&__src[16];
    v6 = *&__src[24];
    v12 = *__src;
    sub_2753EFEAC(&v12, v2, v11);
    v7 = v11[0];
    *&v12 = v5;
    *(&v12 + 1) = v6;
    result = sub_2753EFEAC(&v12, v2 + 5, v11);
    v9 = v11[0];
    *a2 = v7;
    *(a2 + 16) = v9;
  }

  else
  {
    memcpy(v11, __src, 0xAAuLL);
    sub_2753EFCA4(v11, v2, a2);
    sub_2753EFCA4(&v11[5] + 8, v2 + 5, (a2 + 88));
    v10 = BYTE9(v11[10]);
    result = sub_2753F13EC(v11);
    *(a2 + 169) = v10;
  }

  *(a2 + 170) = v4;
  return result;
}

uint64_t sub_2753EFAB4()
{
  v1 = v0;
  sub_2754097E0(v12);
  sub_2754097E0(v11);
  v2 = sub_2753F0B2C(v12, v11, v0);
  sub_2753F122C(v11);
  sub_2753F122C(v12);
  if ((v2 & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2809DACB0);
    }

    v5 = sub_27546E3E0();
    __swift_project_value_buffer(v5, qword_2809F3C00);
    v6 = sub_27546E3C0();
    v7 = sub_27546E6D0();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Outgoing spatial region invalid.";
    goto LABEL_12;
  }

  sub_275409858(v12);
  sub_275409858(v11);
  v3 = sub_2753F0B2C(v12, v11, v1 + 5);
  sub_2753F122C(v11);
  sub_2753F122C(v12);
  if (v3)
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2809DACB0);
  }

  v10 = sub_27546E3E0();
  __swift_project_value_buffer(v10, qword_2809F3C00);
  v6 = sub_27546E3C0();
  v7 = sub_27546E6D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Incoming spatial region invalid.";
LABEL_12:
    _os_log_impl(&dword_2753EC000, v6, v7, v9, v8, 2u);
    MEMORY[0x277C78090](v8, -1, -1);
  }

LABEL_13:

  return 0;
}

void *sub_2753EFCA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 80))(v5, v6);
  if (v7)
  {
    v8 = v7;
    sub_275409C88();
    v9 = __dst[1];
    v14[0] = __dst[0];
    sub_2753EF850(v14, v8, __src);
    v10 = __src[0];
    v14[0] = v9;
    sub_2753EF850(v14, v8, __src);

    v12 = *&__src[0];
    if (__src[0] < v10)
    {
      __break(1u);
    }

    else
    {
      sub_275409E34();
      if (*&__src[3])
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_2753F1548(__dst, v14);
        v13 = v10;
        sub_2753F01A4(v14, &v13, __src);
        v13 = *&v12;
        sub_2753F01A4(v15, &v13, &__src[5]);
        sub_2753F15A4(v14);
        sub_2753F15A4(__dst);
        result = memcpy(a3, __src, 0x50uLL);
        a3[80] = 1;
      }

      else
      {
        sub_2753F149C(__src);
        sub_275409D20();
        *v14 = v10;
        sub_2753EFF68(__src, v14, __dst);
        v14[0] = v12;
        sub_2753EFF68(&__src[5], v14, &__dst[5]);
        sub_2753EDF40(__src);
        result = memcpy(a3, __dst, 0x50uLL);
        a3[80] = 0;
      }
    }
  }

  else
  {

    return sub_2753F1440(a1, a3);
  }

  return result;
}

uint64_t sub_2753EFEAC@<X0>(double *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 80))(v6, v7);
  if (result && (v9 = result, v10 = v4, sub_2753EF850(&v10, result, &v11), v4 = v11, v10 = v5, sub_2753EF850(&v10, v9, &v11), result = , v5 = v11, v11 < v4))
  {
    __break(1u);
  }

  else
  {
    *a3 = v4;
    a3[1] = v5;
  }

  return result;
}

uint64_t sub_2753EFF68@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_2753F161C(a1, v35);
  sub_2753F1680(0, &qword_2809DADD8, &protocol descriptor for TransitionPlannerBeatEvent);
  sub_2753F1680(0, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  if (swift_dynamicCast())
  {
    sub_2753F16E0(&v28, v27);
    v23 = v5;
    sub_2753F01A4(v27, &v23, v24);
    v6 = v25;
    v7 = v26;
    v8 = __swift_project_boxed_opaque_existential_1(v24, v25);
    a3[3] = v6;
    a3[4] = *(v7 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else if (swift_dynamicCast())
  {
    v10 = *(&v28 + 1);
    v11 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
    v16 = v34;
    a3[3] = &_s22SongStructureBeatEventVN;
    a3[4] = &off_2884126F8;
    v17 = swift_allocObject();
    *a3 = v17;
    *(v17 + 16) = v5;
    *(v17 + 24) = v10;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = v14;
    *(v17 + 64) = v15;
    *(v17 + 72) = v16;
  }

  else
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    a3[3] = &_s22SongStructureBeatEventVN;
    a3[4] = &off_2884126F8;
    v21 = swift_allocObject();
    *a3 = v21;
    *(v21 + 16) = v5;
    *(v21 + 24) = v20;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    *(v21 + 48) = 0;
    *(v21 + 56) = 1;
    *(v21 + 64) = 0;
    *(v21 + 72) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_2753F01A4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_2753F161C(a1, v21);
  sub_2753F1680(0, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  if (swift_dynamicCast())
  {
    a3[3] = &_s33SongStructureSectionBoundaryEventVN;
    a3[4] = &off_288412A20;
    v6 = swift_allocObject();
    *a3 = v6;
    *(v6 + 16) = v5;
    *(v6 + 40) = v18;
    *(v6 + 24) = v17;
  }

  else if (swift_dynamicCast())
  {
    a3[3] = &_s33SongStructureSegmentBoundaryEventVN;
    a3[4] = &off_288412B08;
    v7 = swift_allocObject();
    *a3 = v7;
    *(v7 + 16) = v5;
    *(v7 + 40) = v18;
    *(v7 + 24) = v17;
    *(v7 + 56) = v19;
  }

  else if (swift_dynamicCast())
  {
    a3[3] = &_s26SongStructureDownbeatEventVN;
    a3[4] = &off_2884127C8;
    v8 = swift_allocObject();
    *a3 = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v17;
    *(v8 + 40) = v18;
    *(v8 + 48) = BYTE8(v18);
    *(v8 + 56) = v19;
    *(v8 + 64) = v20;
  }

  else
  {
    v10 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v11 = (*(*(v9 + 8) + 16))(v10);
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v14 = (*(v13 + 16))(v12, v13);
    a3[3] = &_s26SongStructureDownbeatEventVN;
    a3[4] = &off_2884127C8;
    v15 = swift_allocObject();
    *a3 = v15;
    *(v15 + 16) = v5;
    *(v15 + 24) = v11;
    *(v15 + 32) = v14;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    *(v15 + 56) = 0;
    *(v15 + 64) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

__n128 sub_2753F0410@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = 0.0;
  if (*a1 <= 0.0)
  {
    v10 = 0.0 - v5;
    if (v7 <= 0.0)
    {
      if (v10 <= 0.0 - v7)
      {
        v10 = 0.0 - v7;
      }
    }

    else if (v10 <= 0.0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v7 > 0.0)
    {
      goto LABEL_17;
    }

    v10 = 0.0 - v7;
    if (0.0 - v7 < 0.0)
    {
      goto LABEL_17;
    }
  }

  if (v10 > 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2809DACB0);
    }

    v11 = sub_27546E3E0();
    __swift_project_value_buffer(v11, qword_2809F3C00);
    v12 = sub_27546E3C0();
    v13 = sub_27546E6E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v10;
      OUTLINED_FUNCTION_3_1(&dword_2753EC000, v15, v16, "Spatial regions need to be truncated at start. Truncated leading duration = %f.");
      MEMORY[0x277C78090](v14, -1, -1);
    }
  }

  v9 = v10;
LABEL_17:
  v29.n128_f64[0] = v5;
  v29.n128_u64[1] = v6;
  v30 = v7;
  v31 = v8;
  sub_2753F066C();
  v18 = v17;
  if (v17 > 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2809DACB0);
    }

    v19 = sub_27546E3E0();
    __swift_project_value_buffer(v19, qword_2809F3C00);
    v20 = sub_27546E3C0();
    v21 = sub_27546E6E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v18;
      OUTLINED_FUNCTION_3_1(&dword_2753EC000, v23, v24, "Spatial regions need to be truncated at end. Truncated trailing duration = %f.");
      MEMORY[0x277C78090](v22, -1, -1);
    }
  }

  v27 = v5;
  v28 = v6;
  sub_2753F07A8(&v27, v3, v29.n128_f64, v9, v18);
  v25 = v29;
  v27 = v7;
  v28 = v8;
  sub_2753F07A8(&v27, v3 + 40, v29.n128_f64, v9, v18);
  result = v29;
  *a2 = v25;
  a2[1] = result;
  return result;
}

uint64_t sub_2753F066C()
{
  sub_2753F161C(v0, v10);
  v1 = v11;
  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v3 = *(v2 + 16);
  v3(v1, v2);
  if (v4)
  {
    v3(v1, v2);
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_2753F161C(v0 + 40, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = *(v6 + 16);
  v7(v5, v6);
  if (v8)
  {
    v7(v5, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void sub_2753F07A8(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 + a4;
  v10 = v8 - a5;
  if (*a1 - v9 != 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v11 = sub_27546E3E0();
    __swift_project_value_buffer(v11, qword_2809F3C00);
    v12 = sub_27546E3C0();
    v13 = sub_27546E6E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v7;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      _os_log_impl(&dword_2753EC000, v12, v13, "Spatial region truncated at start. Original region start time = %f. Truncated region start time = %f.", v14, 0x16u);
      MEMORY[0x277C78090](v14, -1, -1);
    }
  }

  if (v8 - v10 != 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v15 = sub_27546E3E0();
    __swift_project_value_buffer(v15, qword_2809F3C00);
    sub_2753F161C(a2, v30);
    v16 = sub_27546E3C0();
    v17 = sub_27546E6E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218496;
      *(v18 + 4) = v8;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v10;
      *(v18 + 22) = 2048;
      v19 = v31;
      v20 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v21 = *(v20 + 16);
      v22 = v21(v19, v20);
      if (v23)
      {
        v21(v19, v20);
        v25 = v24;
      }

      else
      {
        v25 = v22;
      }

      __swift_destroy_boxed_opaque_existential_1(v30);
      *(v18 + 24) = v25;
      _os_log_impl(&dword_2753EC000, v16, v17, "Spatial region truncated at end. Original region end time = %f. Truncated region end time = %f. Song duration = %f.", v18, 0x20u);
      MEMORY[0x277C78090](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  if (v9 < v10)
  {
    if (v10 >= v9)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v26 = sub_27546E3E0();
  __swift_project_value_buffer(v26, qword_2809F3C00);
  v27 = sub_27546E3C0();
  v28 = sub_27546E6D0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = v9;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v10;
    _os_log_impl(&dword_2753EC000, v27, v28, "Truncated region invalid. Start time later than end time. Truncated region start time = %f. Truncated region end time = %f.", v29, 0x16u);
    MEMORY[0x277C78090](v29, -1, -1);
  }

  v9 = v7;
  v10 = v8;
LABEL_24:
  *a3 = v9;
  a3[1] = v10;
}

uint64_t sub_2753F0B2C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2753F12B8(a1, __src);
  v6 = __src;
  if ((v87 & 1) == 0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v6 = v78;
    sub_275409C88();
    sub_2753F1398(__dst);
  }

  if (*v6 < 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_27546E3E0();
    __swift_project_value_buffer(v7, qword_2809F3C00);
    sub_2753F12B8(a1, __src);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v81[0] = v11;
      *v10 = 136315138;
      v12 = __dst;
      v13 = sub_2753F12B8(__src, __dst);
      if ((v80 & 1) == 0)
      {
        memcpy(v78, __dst, 0x51uLL);
        v12 = v83;
        sub_275409C88();
        v13 = sub_2753F1398(v78);
      }

      v21 = sub_2753F1314(*v12, v12[1], v13, v14, v15, v16, v17, v18, v19, v20);
      v23 = v22;
      sub_2753F122C(__src);
      v24 = sub_275446968(v21, v23, v81);

      *(v10 + 4) = v24;
      v25 = "Spatial region starts before beginning of song even after attempting truncation. Spatial song time range = %s.";
      v26 = v9;
      v27 = v8;
      v28 = v10;
      v29 = 12;
LABEL_41:
      _os_log_impl(&dword_2753EC000, v27, v26, v25, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x277C78090](v11, -1, -1);
      v76 = v10;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  sub_2753F12B8(a1, __src);
  if (v87)
  {
    v30 = &__src[8];
  }

  else
  {
    v30 = &v78[1];
    memcpy(__dst, __src, sizeof(__dst));
    sub_275409C88();
    sub_2753F1398(__dst);
  }

  v31 = *v30;
  v32 = a3[3];
  v33 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v32);
  v34 = *(v33 + 16);
  *&v35 = COERCE_DOUBLE(v34(v32, v33));
  if (v36)
  {
    v34(v32, v33);
  }

  else
  {
    v37 = *&v35;
  }

  if (v31 > v37)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v38 = sub_27546E3E0();
    __swift_project_value_buffer(v38, qword_2809F3C00);
    sub_2753F12B8(a1, __src);
    sub_2753F161C(a3, v83);
    v8 = sub_27546E3C0();
    v39 = sub_27546E6D0();
    if (os_log_type_enabled(v8, v39))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v82 = v11;
      *v10 = 136315394;
      v40 = __dst;
      v41 = sub_2753F12B8(__src, __dst);
      if ((v80 & 1) == 0)
      {
        memcpy(v78, __dst, 0x51uLL);
        v40 = v81;
        sub_275409C88();
        v41 = sub_2753F1398(v78);
      }

      v49 = sub_2753F1314(*v40, v40[1], v41, v42, v43, v44, v45, v46, v47, v48);
      v51 = v50;
      sub_2753F122C(__src);
      v52 = sub_275446968(v49, v51, &v82);

      *(v10 + 4) = v52;
      *(v10 + 12) = 2048;
      v53 = v84;
      v54 = v85;
      __swift_project_boxed_opaque_existential_1(v83, v84);
      v55 = *(v54 + 16);
      v56 = v55(v53, v54);
      if (v57)
      {
        v55(v53, v54);
        v59 = v58;
      }

      else
      {
        v59 = v56;
      }

      __swift_destroy_boxed_opaque_existential_1(v83);
      *(v10 + 14) = v59;
      v25 = "Spatial region ends after end of spatial song even after attempting truncation. Spatial song time range = %s. Spatial song duration = %f.";
      v26 = v39;
      v27 = v8;
      v28 = v10;
      v29 = 22;
      goto LABEL_41;
    }

    sub_2753F122C(__src);
    __swift_destroy_boxed_opaque_existential_1(v83);
    return 0;
  }

  if (sub_27540B1D4() < 1.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v60 = sub_27546E3E0();
    __swift_project_value_buffer(v60, qword_2809F3C00);
    sub_2753F12B8(a2, __src);
    sub_2753F12B8(a1, __dst);
    v8 = sub_27546E3C0();
    v61 = sub_27546E6D0();
    if (os_log_type_enabled(v8, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134218496;
      v63 = sub_27540B1D4();
      sub_2753F122C(__src);
      *(v62 + 4) = v63;
      *(v62 + 12) = 2048;
      v64 = sub_27540B1D4();
      sub_2753F122C(__dst);
      *(v62 + 14) = v64;
      *(v62 + 22) = 2048;
      *(v62 + 24) = 0x3FF0000000000000;
      v65 = "Spatial region duration too low. Original spatial region duration = %f. Truncated spatial region duration = %f. Minimum spatial region duration = %f.";
      v66 = v61;
      v67 = v8;
      v68 = v62;
      v69 = 32;
LABEL_36:
      _os_log_impl(&dword_2753EC000, v67, v66, v65, v68, v69);
      v76 = v62;
LABEL_42:
      MEMORY[0x277C78090](v76, -1, -1);

      return 0;
    }

    goto LABEL_37;
  }

  v70 = sub_27540B1D4();
  v71 = vabdd_f64(v70, sub_27540B1D4());
  if (v71 > 1.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v72 = sub_27546E3E0();
    __swift_project_value_buffer(v72, qword_2809F3C00);
    sub_2753F12B8(a2, __src);
    sub_2753F12B8(a1, __dst);
    v8 = sub_27546E3C0();
    v73 = sub_27546E6D0();
    if (os_log_type_enabled(v8, v73))
    {
      v62 = swift_slowAlloc();
      *v62 = 134218752;
      v74 = sub_27540B1D4();
      sub_2753F122C(__src);
      *(v62 + 4) = v74;
      *(v62 + 12) = 2048;
      v75 = sub_27540B1D4();
      sub_2753F122C(__dst);
      *(v62 + 14) = v75;
      *(v62 + 22) = 2048;
      *(v62 + 24) = v71;
      *(v62 + 32) = 2048;
      *(v62 + 34) = 0x3FF0000000000000;
      v65 = "Truncated spatial region duration delta too high. Original spatial region duration = %f. Truncated spatial region duration = %f. Truncated spatial region duration delta = %f. Maximum truncated spatial region duration delta = %f.";
      v66 = v73;
      v67 = v8;
      v68 = v62;
      v69 = 42;
      goto LABEL_36;
    }

LABEL_37:

    sub_2753F122C(__dst);
LABEL_38:
    sub_2753F122C(__src);
    return 0;
  }

  return 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2753F1314(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a1;
  v21 = a2;
  OUTLINED_FUNCTION_2_1(&v20, a4, a5, a6, a7, a8, a9, a10, 0);
  MEMORY[0x277C776B0](3026478, 0xE300000000000000);
  OUTLINED_FUNCTION_2_1(&v21, v10, v11, v12, v13, v14, v15, v16, v18);
  return v19;
}

uint64_t sub_2753F149C(uint64_t a1)
{
  sub_2753F14F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2753F14F8()
{
  if (!qword_2809DADC8)
  {
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DADC8);
    }
  }
}

uint64_t sub_2753F161C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2753F1680(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2753F16E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2753F1760(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2753F17A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x2821FD480](a1, &a9, v9, v10, v11);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t _s20StylingPlacementPairOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20StylingPlacementPairOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753F19F0);
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

unint64_t sub_2753F1A44()
{
  result = qword_2809DADE0;
  if (!qword_2809DADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DADE0);
  }

  return result;
}

uint64_t sub_2753F1AC0(char a1)
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](a1 & 1);
  return sub_27546EAC0();
}

uint64_t sub_2753F1B24(uint64_t a1)
{
  v2 = *v1;
  sub_27546EA90();
  MEMORY[0x277C77BF0](v2);
  return sub_27546EAC0();
}

void sub_2753F1B68(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>, double a4@<D0>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  *&v18 = *a1;
  BYTE8(v18) = v7;
  sub_275435F6C(&v15, a4);
  if (!v4)
  {
    v12 = v15;
    v13 = v16;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    sub_2754339AC(&v18, a3);
    v14 = v18;
    *a2 = v7 >> 7;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 40) = v11;
  }
}

uint64_t sub_2753F1C20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4();
  if (sub_2753F1D4C(v2))
  {
    OUTLINED_FUNCTION_0_4();
    if (sub_2753F2200(a1))
    {
      return 1;
    }
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v4 = sub_27546E3E0();
  __swift_project_value_buffer(v4, qword_2809F3C00);
  v5 = sub_27546E3C0();
  v6 = sub_27546E6E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2753EC000, v5, v6, "Placement criteria: Not satisfied.", v7, 2u);
    MEMORY[0x277C78090](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_2753F1D4C(_BYTE *a1)
{
  v3 = *(v1 + 8);
  if (*a1 == 3)
  {
    sub_2754097E0(v60);
    sub_2753F12B8(v60, __src);
    if (v62)
    {
      sub_2753F122C(v60);
      v4 = __src;
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      v4 = v55;
      sub_275409C88();
      sub_2753F1398(__dst);
      sub_2753F122C(v60);
    }

    if (*v4 < v3)
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v7 = sub_27546E3E0();
      __swift_project_value_buffer(v7, qword_2809F3C00);
      sub_2753F2548(a1, v60);
      v8 = sub_27546E3C0();
      v9 = sub_27546E6E0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v59 = v11;
        *v10 = 136315394;
        sub_2754097E0(__src);
        sub_2753F12B8(__src, __dst);
        if (v57)
        {
          v12 = sub_2753F122C(__src);
          v20 = __dst;
        }

        else
        {
          memcpy(v55, __dst, 0x51uLL);
          v20 = v58;
          sub_275409C88();
          sub_2753F1398(v55);
          v12 = sub_2753F122C(__src);
        }

        v48 = sub_2753F1314(*v20, v20[1], v12, v13, v14, v15, v16, v17, v18, v19);
        v50 = v49;
        sub_2753F25A4(v60);
        v51 = sub_275446968(v48, v50, &v59);

        *(v10 + 4) = v51;
        *(v10 + 12) = 2080;
        *__src = v3;
        v52 = sub_27546E540();
        v54 = sub_275446968(v52, v53, &v59);

        *(v10 + 14) = v54;
        v47 = "Outgoing placement criteria: Not satisfied. Outgoing region = %s. Minimum outgoing region start time = %s.";
LABEL_27:
        _os_log_impl(&dword_2753EC000, v8, v9, v47, v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x277C78090](v11, -1, -1);
        MEMORY[0x277C78090](v10, -1, -1);

        return 0;
      }

      goto LABEL_22;
    }

    return 1;
  }

  v5 = *(v1 + 16);
  sub_2754097E0(v60);
  sub_2753F12B8(v60, __src);
  if (v62)
  {
    sub_2753F122C(v60);
    v6 = __src;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    v6 = v55;
    sub_275409C88();
    sub_2753F1398(__dst);
    sub_2753F122C(v60);
  }

  if (*v6 >= v3 && v5 >= *v6)
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v21 = sub_27546E3E0();
  __swift_project_value_buffer(v21, qword_2809F3C00);
  sub_2753F2548(a1, v60);
  v8 = sub_27546E3C0();
  v9 = sub_27546E6E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v10 = 136315394;
    sub_2754097E0(__src);
    sub_2753F12B8(__src, __dst);
    if (v57)
    {
      v22 = sub_2753F122C(__src);
      v30 = __dst;
    }

    else
    {
      memcpy(v55, __dst, 0x51uLL);
      v30 = v58;
      sub_275409C88();
      sub_2753F1398(v55);
      v22 = sub_2753F122C(__src);
    }

    v32 = sub_2753F1314(*v30, v30[1], v22, v23, v24, v25, v26, v27, v28, v29);
    v34 = v33;
    sub_2753F25A4(v60);
    v35 = sub_275446968(v32, v34, &v59);

    *(v10 + 4) = v35;
    *(v10 + 12) = 2080;
    v44 = sub_2753F1314(v3, v5, v36, v37, v38, v39, v40, v41, v42, v43);
    v46 = sub_275446968(v44, v45, &v59);

    *(v10 + 14) = v46;
    v47 = "Outgoing placement criteria: Not satisfied. Outgoing region = %s. Required outgoing region start time range = %s.";
    goto LABEL_27;
  }

LABEL_22:

  sub_2753F25A4(v60);
  return 0;
}

uint64_t sub_2753F2200(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_275409858(v40);
  sub_2753F12B8(v40, __src);
  if (__src[81])
  {
    sub_2753F122C(v40);
    v5 = __src;
  }

  else
  {
    memcpy(__dst, __src, 0x51uLL);
    v5 = v36;
    sub_275409C88();
    sub_2753F1398(__dst);
    sub_2753F122C(v40);
  }

  if (*v5 >= v3 && v4 >= *v5)
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_27546E3E0();
  __swift_project_value_buffer(v6, qword_2809F3C00);
  sub_2753F2548(a1, v40);
  v7 = sub_27546E3C0();
  v8 = sub_27546E6E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315394;
    sub_275409858(__src);
    sub_2753F12B8(__src, __dst);
    if (__dst[81])
    {
      v11 = sub_2753F122C(__src);
      v19 = __dst;
    }

    else
    {
      memcpy(v36, __dst, 0x51uLL);
      v19 = &v38;
      sub_275409C88();
      sub_2753F1398(v36);
      v11 = sub_2753F122C(__src);
    }

    v21 = sub_2753F1314(*v19, v19[1], v11, v12, v13, v14, v15, v16, v17, v18);
    v23 = v22;
    sub_2753F25A4(v40);
    v24 = sub_275446968(v21, v23, &v39);

    *(v9 + 4) = v24;
    *(v9 + 12) = 2080;
    v33 = sub_2753F1314(v3, v4, v25, v26, v27, v28, v29, v30, v31, v32);
    v35 = sub_275446968(v33, v34, &v39);

    *(v9 + 14) = v35;
    _os_log_impl(&dword_2753EC000, v7, v8, "Incoming placement criteria: Not satisfied. Incoming region = %s. Required incoming region start time range = %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C78090](v10, -1, -1);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  else
  {

    sub_2753F25A4(v40);
  }

  return 0;
}

uint64_t sub_2753F24AC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[41])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2753F24E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s24EarlyPlacementConstraintOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t _s24EarlyPlacementConstraintOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2753F26B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      if (!*(a1 + 8) || (v7 = , sub_275460DEC(v7), v9 = v8, v10 = , sub_275460DEC(v10), sub_2753F2B04(v11, v9), v13 = v12, , , (v13 & 1) != 0))
      {
        if (!*(a2 + 8))
        {
          return 1;
        }

        sub_275460DEC(v14);
        v16 = v15;

        sub_275460DEC(v17);
        sub_2753F2B04(v18, v16);
        v20 = v19;

        if (v20)
        {
          return 1;
        }
      }

      return 2;
    }

    if (*(a1 + 8))
    {
      v22 = *(a1 + 56);
      v23 = *(a1 + 32);
      v52[0] = *(a1 + 16);
      v52[1] = v23;

      v25 = sub_2753F2A88(v24, a3);
      sub_275460DEC(v22);
      v27 = v26;

      sub_275460DEC(v28);
      sub_2753F2B04(v29, v27);
      v31 = v30;

      if (v25)
      {
        sub_2753F2CDC();
        inited = swift_initStackObject();
        v33 = *(v52 + 8);
        v53 = *(v52 + 8);
        *(inited + 16) = xmmword_275474500;
        *(inited + 32) = v33;
        *&v54 = inited;
        sub_2753F2D2C(&v53, v51);

        sub_2754592AC(v34);
        v35 = sub_2753F2A88(v54, a3);

        if (((v35 | v31) & 1) == 0)
        {
          return 2;
        }
      }

      else if ((v31 & 1) == 0)
      {
        return 2;
      }

      if (*(a2 + 8))
      {
        v36 = *(a2 + 56);
        v37 = *(a2 + 32);
        v51[0] = *(a2 + 16);
        v51[1] = v37;

        v39 = sub_2753F2A88(v38, a3);
        sub_275460DEC(v36);
        v41 = v40;

        sub_275460DEC(v42);
        sub_2753F2B04(v43, v41);
        v45 = v44;

        if (v39)
        {
          sub_2753F2CDC();
          v46 = swift_initStackObject();
          *(v46 + 16) = xmmword_275474500;
          v54 = *(v51 + 8);
          *(v46 + 32) = *(v51 + 8);
          v50 = v46;
          sub_2753F2D2C(&v54, v49);

          sub_2754592AC(v47);
          v48 = sub_2753F2A88(v50, a3);

          if ((v48 | v45))
          {
            return 0;
          }
        }

        else if (v45)
        {
          return 0;
        }
      }
    }

    return 2;
  }

  return sub_2753F29A0(a1, a2, a3);
}

uint64_t sub_2753F29A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) && *(*(a1 + 56) + 16) && *(a3 + 16) && (v4 = , sub_275460DEC(v4), v6 = v5, v7 = , sub_275460DEC(v7), sub_2753F2B04(v8, v6), v10 = v9, , , (v10 & 1) == 0) && *(a2 + 8) && *(*(a2 + 56) + 16) && (v11 = , sub_275460DEC(v11), v13 = v12, v14 = , sub_275460DEC(v14), sub_2753F2B04(v15, v13), v17 = v16, , , (v17 & 1) == 0))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2753F2A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {

      sub_275460DEC(v3);
      v5 = v4;

      sub_275460DEC(v6);
      sub_2753F2B04(v7, v5);
      v9 = v8;

      LOBYTE(v2) = v9 ^ 1;
    }
  }

  return v2 & 1;
}

void sub_2753F2B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;

      v11 = 0;
LABEL_13:
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v6 + 16))
        {
          v23 = v4;
          v14 = (*(v4 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v12)))));
          v16 = *v14;
          v15 = v14[1];
          sub_27546EA90();

          sub_27546E550();
          v17 = sub_27546EAC0();
          v18 = ~(-1 << *(v6 + 32));
          do
          {
            v19 = v17 & v18;
            if (((*(v6 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {

              v4 = v23;
              goto LABEL_13;
            }

            v20 = (*(v6 + 48) + 16 * v19);
            if (*v20 == v16 && v20[1] == v15)
            {
              break;
            }

            v22 = sub_27546E9A0();
            v17 = v19 + 1;
          }

          while ((v22 & 1) == 0);

          return;
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v12 = *(v5 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_2753F2CDC()
{
  if (!qword_2809DADE8)
  {
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DADE8);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2753F2D9C(uint64_t a1, int a2)
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

uint64_t sub_2753F2DDC(uint64_t result, int a2, int a3)
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

void sub_2753F2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (sub_27546E9A0() & 1) != 0)
  {

    sub_27543C4EC(a3, a6);
  }
}

uint64_t sub_2753F2E98@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_2753F2EC4()
{
  result = qword_2809DADF0;
  if (!qword_2809DADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DADF0);
  }

  return result;
}

void sub_2753F2F24(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
}

void *sub_2753F2F80@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_2753F2F90()
{
  result = qword_2809DADF8;
  if (!qword_2809DADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DADF8);
  }

  return result;
}

unint64_t sub_2753F2FF4()
{
  result = qword_2809DAE00;
  if (!qword_2809DAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE00);
  }

  return result;
}

uint64_t sub_2753F3054(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2753F3094(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2753F30E4()
{
  result = qword_2809DAE08;
  if (!qword_2809DAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE08);
  }

  return result;
}

uint64_t sub_2753F313C(uint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_27546E9A0() & 1) == 0)
  {
    return 0;
  }

  sub_27543C4EC(v4, v5);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v8 && (sub_27546E9A0() & 1) == 0 || (sub_27543C460(a1[5], a2[5]) & 1) == 0 || (sub_27543C460(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v9 = a1[7];
  v10 = a2[7];

  return sub_27543C460(v9, v10);
}

void sub_2753F3210(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{

  v12 = OUTLINED_FUNCTION_0_5();
  sub_2753F3310(v12, v13, v14, v15, v16);
  v18 = v17;

  v19 = OUTLINED_FUNCTION_0_5();
  sub_2753F3558(v19, v20, v21, v22, v23, 0);
  v25 = v24;

  sub_2753F2CDC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275474500;
  *(inited + 32) = a4;
  *(inited + 40) = a5;

  sub_2754592AC(inited);
  sub_2754592AC(v25);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v18;
  a6[6] = v25;
  a6[7] = v18;
}

void sub_2753F3310(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3[2];
  v9 = a3 + 5;
  v10 = v8 + 1;
  while (--v10)
  {
    if (*(v9 - 1) != a4 || *v9 != a5)
    {
      v9 += 3;
      if ((sub_27546E9A0() & 1) == 0)
      {
        continue;
      }
    }

    sub_2753F2CDC();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_275474500;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    return;
  }

  v13 = (a3 + 6);
  v14 = MEMORY[0x277D84F90];
  if (v8)
  {
    while (1)
    {
      v16 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v13 - 2);

      sub_2753F3310(v17, v16, v15, a4, a5);
      v19 = v18;

      v20 = *(v19 + 16);
      v21 = *(v14 + 16);
      if (__OFADD__(v21, v20))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v21 + v20 > *(v14 + 24) >> 1)
      {
        sub_2754311BC();
        v14 = v22;
      }

      if (*(v19 + 16))
      {
        if ((*(v14 + 24) >> 1) - *(v14 + 16) < v20)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v20)
        {
          v23 = *(v14 + 16);
          v24 = __OFADD__(v23, v20);
          v25 = v23 + v20;
          if (v24)
          {
            goto LABEL_27;
          }

          *(v14 + 16) = v25;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_25;
        }
      }

      v13 += 3;
      if (!--v8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v14 + 16))
    {
      sub_2753F2CDC();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_275474500;
      *(v26 + 32) = a1;
      *(v26 + 40) = a2;

      sub_2754592AC(v14);
    }

    else
    {
    }
  }
}

void sub_2753F3558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1 == a4 && a2 == a5;
  if (v11 || (v12 = a6, (sub_27546E9A0() & 1) != 0))
  {
    v12 = 1;
  }

  v28 = a1;
  v29 = a2;
  v13 = *(a3 + 16);

  v14 = (a3 + 48);
  v15 = MEMORY[0x277D84F90];
  if (v13)
  {
    while (1)
    {
      v17 = *(v14 - 1);
      v16 = *v14;
      v18 = *(v14 - 2);

      sub_2753F3558(v18, v17, v16, a4, a5, v12 & 1);
      v20 = v19;

      v21 = *(v20 + 16);
      v22 = *(v15 + 16);
      if (__OFADD__(v22, v21))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v22 + v21 > *(v15 + 24) >> 1)
      {
        sub_2754311BC();
        v15 = v23;
      }

      if (*(v20 + 16))
      {
        if ((*(v15 + 24) >> 1) - *(v15 + 16) < v21)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v21)
        {
          v24 = *(v15 + 16);
          v25 = __OFADD__(v24, v21);
          v26 = v24 + v21;
          if (v25)
          {
            goto LABEL_25;
          }

          *(v15 + 16) = v26;
        }
      }

      else
      {

        if (v21)
        {
          goto LABEL_23;
        }
      }

      v14 += 3;
      if (!--v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_19:
    if (a6)
    {
      sub_2753F2CDC();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_275474500;
      *(v27 + 32) = v28;
      *(v27 + 40) = v29;
      sub_2754592AC(v15);
    }

    else
    {
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753F3774(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2753F37B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double sub_2753F382C(uint64_t a1, double result)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    result = 0.0;
    v4 = *(a1 + 16);
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *(v3 - 1);
      v7 = v7 + v8;
      v6 = v6 + v8 * v8;
      v5 = v5 + *v3;
      result = result + v8 * *v3;
      v3 += 2;
      --v4;
    }

    while (v4);
    v9 = v6 * v2 - v7 * v7;
    if (v9 != 0.0)
    {
      return (result * v2 - v7 * v5) / v9;
    }
  }

  return result;
}

uint64_t sub_2753F38E8(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u64[0];
  if (!v2)
  {
    return 254;
  }

  v5 = sub_2753F3BBC(a1);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 0.0;
    do
    {
      v9 = *v7++;
      v8 = v8 + v9;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v10 = COERCE_DOUBLE(sub_2753F3AF4(a2));
  if (v12)
  {
    return 254;
  }

  v11.n128_f64[0] = v10 - v8 / v2;
  if (v11.n128_f64[0] >= 6.0)
  {
    return sub_2753F39C4(a1, v11);
  }

  if (v11.n128_f64[0] <= -6.0)
  {
    return sub_2753F3A34(a1, a2, v11) | 0x40u;
  }

  return 128;
}

BOOL sub_2753F39C4(__n128 *a1, __n128 a2)
{
  v3 = sub_2753F3C88(a1, a2);
  result = 1;
  if ((v4 & 1) == 0)
  {
    v5 = *&v3;
    v6 = sub_2753F3BBC(a1);
    v7 = sub_2753F3D70(v6);

    if (!sub_2753F4038(v7 & 1, v5))
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_2753F3A34(uint64_t a1, __n128 *a2, __n128 a3)
{
  v4 = sub_2753F3C88(a2, a3);
  result = 0;
  if ((v5 & 1) == 0)
  {
    v6 = *&v4;
    v7 = sub_2753F3BBC(a2);
    v8 = sub_2753F3D70(v7);

    if (sub_2753F4038(v8 & 1, v6) == 2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2753F3AF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = sub_2753F3BBC(a1);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 32);
      v5 = 0.0;
      do
      {
        v6 = *v4++;
        v5 = v5 + v6;
        --v3;
      }

      while (v3);
    }

    else
    {
      v5 = 0.0;
    }

    *&result = v5 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_2753F3B7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 40);
    v4 = *(result + 16 + 16 * v2 + 8);
    if (v4 < v3)
    {
      __break(1u);
    }

    else
    {
      *a2 = v3;
      *(a2 + 8) = v4;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_2753F3BBC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_2754410DC(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_2754410DC(v7 > 1, v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      v4 += 2;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2753F3C88(__n128 *a1, __n128 a2)
{
  v2 = a1[1].n128_i64[0];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_27544110C(0, v2, 0);
    v3 = v18;
    v5 = a1 + 2;
    v6 = *(v18 + 16);
    do
    {
      v7 = *v5;
      if (v6 >= *(v18 + 24) >> 1)
      {
        OUTLINED_FUNCTION_1_2();
        v17 = v8;
        sub_27544110C(v9, v10, v11);
        v7 = v17;
      }

      *(v18 + 16) = v6 + 1;
      a2 = vextq_s8(v7, v7, 8uLL);
      *(v18 + 16 * v6 + 32) = a2;
      ++v5;
      ++v6;
      --v2;
    }

    while (v2);
  }

  sub_2753F382C(v3, a2.n128_f64[0]);
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_2753F3D70(uint64_t a1)
{

  v2 = sub_27544FBA0(1, a1);
  result = sub_2753F44D8(1, v2, v3, v4, v5);
  if (!__OFSUB__(v9 >> 1, v8))
  {
    v10 = result;
    if (((v9 >> 1) - v8) < 3)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    v11 = v7;
    v12 = v8;
    v13 = v9;
    swift_unknownObjectRetain();
    v43[0] = v10;
    v43[1] = v11;
    v43[2] = v12;
    v43[3] = v13;
    v43[4] = sub_27544E5F0(1, v10, v11, v12, v13);
    v43[5] = v14;
    v43[6] = v15;
    v43[7] = v16;
    swift_unknownObjectRetain();
    v17 = sub_2753F4590(v43);
    sub_2753F4A34(v43);
    v18 = v17[2];
    if (v18)
    {
      v19 = (v17 + 4);
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = *v19;
        if (*v19 != 0.0)
        {
          v42[0] = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = OUTLINED_FUNCTION_0_6();
            sub_27544114C(v22, v23, v24);
            v20 = v42[0];
          }

          v26 = *(v20 + 16);
          v25 = *(v20 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_27544114C((v25 > 1), v26 + 1, 1);
            v20 = v42[0];
          }

          *(v20 + 16) = v26 + 1;
          *(v20 + 8 * v26 + 32) = v21;
        }

        ++v19;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v42[0] = v20;
    v42[1] = sub_27544FBA0(1, v20);
    v42[2] = v27;
    v42[3] = v28;
    v42[4] = v29;
    v30 = sub_2753F47D0(v42);
    swift_unknownObjectRelease();

    v31 = 0;
    v32 = v30[2];
    v33 = MEMORY[0x277D84F90];
LABEL_16:
    v34 = v30 + 2 * v31 + 33;
    while (1)
    {
      if (v32 == v31)
      {

        swift_unknownObjectRelease();
        v41 = *(v33 + 16);

        return v41 < 2;
      }

      if (v31 >= v30[2])
      {
        break;
      }

      ++v31;
      v35 = *(v34 - 1);
      v37 = *v34;
      v34 += 2;
      v36 = v37;
      if (v35 != v37)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_27544112C(0, *(v33 + 16) + 1, 1);
        }

        v39 = *(v33 + 16);
        v38 = *(v33 + 24);
        if (v39 >= v38 >> 1)
        {
          result = sub_27544112C((v38 > 1), v39 + 1, 1);
        }

        *(v33 + 16) = v39 + 1;
        v40 = v33 + 2 * v39;
        *(v40 + 32) = v35;
        *(v40 + 33) = v36;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2753F4038(char a1, double a2)
{
  v2 = fabs(a2);
  if (a2 >= 0.0)
  {
    v3 = a2 == 0.0;
  }

  else
  {
    v3 = 2;
  }

  if ((a1 & 1) == 0)
  {
    v3 = 1;
  }

  if (v2 >= 1.0)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

void sub_2753F4068(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32);
    sub_2753F4BA0(0, &qword_2809DAE28, &_s14LoudnessSampleVN, MEMORY[0x277D84560]);
    v3 = (a1 + 40);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = *v3;
      v2 = v2 * 0.5 + *(v3 - 1) * 0.5;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_275474500;
      *(inited + 32) = v2;
      v7 = (inited + 32);
      *(inited + 40) = v5;
      v8 = *(v4 + 16);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v9 = *(v4 + 24) >> 1, v9 <= v8))
      {
        sub_275431274();
        v4 = v10;
        v9 = *(v10 + 24) >> 1;
      }

      v11 = *(v4 + 16);
      if (v9 <= v11)
      {
        break;
      }

      *(v4 + 16 * v11 + 32) = *v7;

      ++*(v4 + 16);
      OUTLINED_FUNCTION_4();
      if (v12)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2753F41C8(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  v2 = a1 + 2;
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    if (v2->n128_f64[0] <= -60.0)
    {
      break;
    }

    if ((OUTLINED_FUNCTION_6() & 1) == 0)
    {
      v4 = OUTLINED_FUNCTION_0_6();
      sub_27544116C(v4, v5, v6);
    }

    v7 = *(i + 16);
    v8 = v21;
    if (v7 >= *(i + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_2();
      v12 = sub_27544116C(v9, v10, v11);
      v8 = OUTLINED_FUNCTION_5(v12, v13, v14, v15, v16, v17, v18, v19, v21);
    }

    *(i + 16) = v7 + 1;
    *(i + 16 * v7 + 32) = v8;
    ++v2;
  }

  return i;
}

uint64_t sub_2753F4294(double *a1, __n128 *a2, __n128 a3)
{
  if (!a2[1].n128_u64[0])
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *a1;
  v4 = a2 + 2;
  v5 = MEMORY[0x277D84F90];
  do
  {
    if (v3 >= v4->n128_f64[1])
    {
      if ((OUTLINED_FUNCTION_6() & 1) == 0)
      {
        v6 = OUTLINED_FUNCTION_0_6();
        sub_27544116C(v6, v7, v8);
      }

      OUTLINED_FUNCTION_3_2();
      v9 = v24;
      if (v10)
      {
        OUTLINED_FUNCTION_1_2();
        v15 = sub_27544116C(v12, v13, v14);
        v9 = OUTLINED_FUNCTION_5(v15, v16, v17, v18, v19, v20, v21, v22, v24);
      }

      OUTLINED_FUNCTION_2_2(v9);
    }

    OUTLINED_FUNCTION_4();
  }

  while (!v11);
  return v5;
}

uint64_t sub_2753F4354(double *a1, __n128 *a2, __n128 a3)
{
  if (!a2[1].n128_u64[0])
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *a1;
  v4 = a2 + 2;
  v5 = MEMORY[0x277D84F90];
  do
  {
    if (v4->n128_f64[1] >= v3)
    {
      if ((OUTLINED_FUNCTION_6() & 1) == 0)
      {
        v6 = OUTLINED_FUNCTION_0_6();
        sub_27544116C(v6, v7, v8);
      }

      OUTLINED_FUNCTION_3_2();
      v9 = v24;
      if (v10)
      {
        OUTLINED_FUNCTION_1_2();
        v15 = sub_27544116C(v12, v13, v14);
        v9 = OUTLINED_FUNCTION_5(v15, v16, v17, v18, v19, v20, v21, v22, v24);
      }

      OUTLINED_FUNCTION_2_2(v9);
    }

    OUTLINED_FUNCTION_4();
  }

  while (!v11);
  return v5;
}

uint64_t sub_2753F4414(double *a1, __n128 *a2, __n128 a3)
{
  if (!a2[1].n128_u64[0])
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = a2 + 2;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5->n128_f64[1];
    if (v7 >= v3 && v4 >= v7)
    {
      if ((OUTLINED_FUNCTION_6() & 1) == 0)
      {
        v9 = OUTLINED_FUNCTION_0_6();
        sub_27544116C(v9, v10, v11);
      }

      OUTLINED_FUNCTION_3_2();
      v12 = v27;
      if (v13)
      {
        OUTLINED_FUNCTION_1_2();
        v18 = sub_27544116C(v15, v16, v17);
        v12 = OUTLINED_FUNCTION_5(v18, v19, v20, v21, v22, v23, v24, v25, v27);
      }

      OUTLINED_FUNCTION_2_2(v12);
    }

    OUTLINED_FUNCTION_4();
  }

  while (!v14);
  return v6;
}

uint64_t sub_2753F44D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_27544FB58(a5 >> 1, -result, a4);
    if (v6)
    {
      v7 = a4;
    }

    else
    {
      v7 = result;
    }

    if (v7 >= a4)
    {
      v8 = sub_27543386C(a4);
      swift_unknownObjectRelease();
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2753F4590(uint64_t *result)
{
  v1 = result[2];
  v2 = result[3] >> 1;
  if (__OFSUB__(v2, v1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = result[6];
  v4 = result[7] >> 1;
  if (__OFSUB__(v4, v3))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v26 = result[6];
  v27 = result[2];
  v24 = result[5];
  v25 = result[1];
  if (v4 - v3 >= v2 - v1)
  {
    v5 = v2 - v1;
  }

  else
  {
    v5 = v4 - v3;
  }

  v28 = MEMORY[0x277D84F90];
  result = sub_27544114C(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    goto LABEL_43;
  }

  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  if (v5)
  {
    v7 = v26;
    v6 = v27;
    v8 = v26;
    v9 = v27;
    v11 = v24;
    v10 = v25;
    while (v2 != v9)
    {
      if (v9 >= v2)
      {
        goto LABEL_36;
      }

      if (v4 == v8)
      {
        goto LABEL_37;
      }

      if (v8 >= v4)
      {
        goto LABEL_38;
      }

      v12 = *(v10 + 8 * v9);
      v13 = *(v11 + 8 * v8);
      v15 = *(v28 + 16);
      v14 = *(v28 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_27544114C((v14 > 1), v15 + 1, 1);
        v11 = v24;
        v10 = v25;
        v7 = v26;
        v6 = v27;
      }

      *(v28 + 16) = v15 + 1;
      *(v28 + 8 * v15 + 32) = v13 - v12;
      ++v8;
      ++v9;
      if (!--v5)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v26;
  v6 = v27;
  v8 = v26;
  v9 = v27;
  v11 = v24;
  v10 = v25;
LABEL_18:
  v16 = v8;
  for (i = v9; v2 != i; ++i)
  {
    if (v9 < v6 || i >= v2)
    {
      goto LABEL_39;
    }

    if (v4 == v16)
    {
      break;
    }

    if (v8 < v7 || v16 >= v4)
    {
      goto LABEL_40;
    }

    v20 = *(v10 + 8 * i);
    v21 = *(v11 + 8 * v16);
    v23 = *(v28 + 16);
    v22 = *(v28 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_27544114C((v22 > 1), v23 + 1, 1);
      v11 = v24;
      v10 = v25;
      v7 = v26;
      v6 = v27;
    }

    *(v28 + 16) = v23 + 1;
    *(v28 + 8 * v23 + 32) = v21 - v20;
    ++v16;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v28;
}

void *sub_2753F47D0(void *result)
{
  v1 = result[3];
  v2 = result[4] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v4 = *result;
  v26 = result[2];
  v27 = result[3];
  v25 = *(*result + 16);
  if (v3 >= v25)
  {
    v5 = *(*result + 16);
  }

  else
  {
    v5 = v2 - v1;
  }

  v28 = MEMORY[0x277D84F90];
  result = sub_27544112C(0, v5 & ~(v5 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_37;
  }

  if (v5)
  {
    v6 = (v4 + 32);

    result = swift_unknownObjectRetain();
    v8 = v25;
    v7 = v26;
    v9 = v25;
    v10 = v5;
    v11 = v27;
    v12 = v27;
    while (v9)
    {
      if (v2 == v12)
      {
        goto LABEL_31;
      }

      if (v12 >= v2)
      {
        goto LABEL_32;
      }

      v13 = *(v7 + 8 * v12);
      v14 = *v6;
      v16 = *(v28 + 16);
      v15 = *(v28 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_27544112C((v15 > 1), v16 + 1, 1);
        v8 = v25;
        v7 = v26;
        v11 = v27;
      }

      *(v28 + 16) = v16 + 1;
      v17 = v28 + 2 * v16;
      *(v17 + 32) = v14 > 0.0;
      *(v17 + 33) = v13 > 0.0;
      ++v6;
      --v9;
      ++v12;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = swift_unknownObjectRetain();
  v7 = v26;
  v11 = v27;
  v12 = v27;
  v8 = v25;
LABEL_16:
  for (i = v12; v8 != v5; ++i)
  {
    if (v5 >= v8)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_34;
    }

    if (v2 == i)
    {
      break;
    }

    if (v12 < v11 || i >= v2)
    {
      goto LABEL_35;
    }

    v20 = *(v4 + 32 + 8 * v5);
    v21 = *(v7 + 8 * i);
    v23 = *(v28 + 16);
    v22 = *(v28 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_27544112C((v22 > 1), v23 + 1, 1);
      v8 = v25;
      v7 = v26;
      v11 = v27;
    }

    *(v28 + 16) = v23 + 1;
    v24 = v28 + 2 * v23;
    *(v24 + 32) = v20 > 0.0;
    *(v24 + 33) = v21 > 0.0;
    ++v5;
  }

  swift_unknownObjectRelease();

  return v28;
}

uint64_t sub_2753F4A34(uint64_t a1)
{
  sub_2753F4A90(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2753F4A90(uint64_t a1)
{
  if (!qword_2809DAE10)
  {
    sub_2753F4BA0(255, &qword_2809DAE18, &_s13LoudnessValueVN, MEMORY[0x277D83F98]);
    sub_2753F4B24();
    v1 = sub_27546E780();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DAE10);
    }
  }
}

unint64_t sub_2753F4B24()
{
  result = qword_2809DAE20;
  if (!qword_2809DAE20)
  {
    sub_2753F4BA0(255, &qword_2809DAE18, &_s13LoudnessValueVN, MEMORY[0x277D83F98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE20);
  }

  return result;
}

void sub_2753F4BA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t sub_2753F4C78()
{
  result = qword_2809DAE30;
  if (!qword_2809DAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE30);
  }

  return result;
}

double sub_2753F4CEC@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 0;
  return result;
}

double sub_2753F4CFC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t sub_2753F4E24()
{
  result = qword_2809DAE38;
  if (!qword_2809DAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE38);
  }

  return result;
}

double *sub_2753F4E7C(double *result, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v6 = a2;
  if (a3)
  {
    v7 = a4 + a6;
LABEL_5:
    *result = v7;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = v6 * a6 + a5;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_2753F4ED4(uint64_t a1)
{
  *(a1 + 8) = sub_2753F4F04();
  result = sub_2753F4F58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2753F4F04()
{
  result = qword_2809DAE40;
  if (!qword_2809DAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE40);
  }

  return result;
}

unint64_t sub_2753F4F58()
{
  result = qword_2809DAE48;
  if (!qword_2809DAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE48);
  }

  return result;
}

unint64_t sub_2753F4FB0()
{
  result = qword_2809DAE50;
  if (!qword_2809DAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE50);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753F504C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753F506C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

unint64_t sub_2753F50B0()
{
  result = qword_2809DAE58;
  if (!qword_2809DAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE58);
  }

  return result;
}

unint64_t sub_2753F5104(uint64_t a1)
{
  *(a1 + 8) = sub_2753F5134();
  result = sub_2753F5188();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2753F5134()
{
  result = qword_2809DAE60;
  if (!qword_2809DAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE60);
  }

  return result;
}

unint64_t sub_2753F5188()
{
  result = qword_2809DAE68;
  if (!qword_2809DAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE68);
  }

  return result;
}

unint64_t sub_2753F51E0()
{
  result = qword_2809DAE70;
  if (!qword_2809DAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE70);
  }

  return result;
}

unint64_t sub_2753F5258()
{
  result = qword_2809DAE78;
  if (!qword_2809DAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE78);
  }

  return result;
}

unint64_t sub_2753F52AC(uint64_t a1)
{
  *(a1 + 8) = sub_2753F52DC();
  result = sub_2753F5330();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2753F52DC()
{
  result = qword_2809DAE80;
  if (!qword_2809DAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE80);
  }

  return result;
}

unint64_t sub_2753F5330()
{
  result = qword_2809DAE88;
  if (!qword_2809DAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE88);
  }

  return result;
}

unint64_t sub_2753F5388()
{
  result = qword_2809DAE90;
  if (!qword_2809DAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE90);
  }

  return result;
}

unint64_t sub_2753F5400()
{
  result = qword_2809DAE98;
  if (!qword_2809DAE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAE98);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2753F5470(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753F5490(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2753F5500(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753F5520(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

uint64_t sub_2753F5574()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_6_0();
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_0();
  v9 = v8 | (v7 << 32);
  v10 = *(v0 + 56);
  v11 = *(v0 + 48);
  switch(v10 >> 6)
  {
    case 1u:
      v23 = &_s26SongStructureDownbeatEventVN;
      v24 = &off_2884127B0;
      v17 = swift_allocObject();
      *&v22 = v17;
      *(v17 + 16) = v2;
      *(v17 + 24) = v1;
      *(v17 + 32) = v4;
      *(v17 + 40) = v3;
      *(v17 + 48) = v5 & 1;
      *(OUTLINED_FUNCTION_3_3(v17) + 64) = v11 & 1;
      break;
    case 2u:
      v23 = &_s33SongStructureSegmentBoundaryEventVN;
      v24 = &off_288412AF0;
      v15 = swift_allocObject();
      *(OUTLINED_FUNCTION_2_3(v15) + 56) = v6 & 1;
      break;
    case 3u:
      v23 = &_s33SongStructureSectionBoundaryEventVN;
      v24 = &off_288412A08;
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_2_3(v16);
      break;
    default:
      v21 = v10 & 0x3F;
      v23 = &_s22SongStructureBeatEventVN;
      v24 = &off_2884126F8;
      v12 = swift_allocObject();
      v13 = OUTLINED_FUNCTION_2_3(v12);
      v14 = OUTLINED_FUNCTION_3_3(v13);
      *(v14 + 64) = v11;
      *(v14 + 71) = BYTE6(v9);
      *(v14 + 69) = WORD2(v9);
      *(v14 + 65) = v9;
      *(v14 + 72) = v21;
      break;
  }

  sub_2753F16E0(&v22, v25);
  v19 = v26;
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(*(v18 + 8) + 8))(v19);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_2753F5774()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_6_0();
  v6 = *(v0 + 40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_0();
  v9 = v8 | (v7 << 32);
  v10 = *(v0 + 56);
  v11 = *(v0 + 48);
  switch(v10 >> 6)
  {
    case 1u:
      v24 = &_s26SongStructureDownbeatEventVN;
      v25 = &off_2884127B0;
      v17 = swift_allocObject();
      *&v23 = v17;
      *(v17 + 16) = v2;
      *(v17 + 24) = v1;
      *(v17 + 32) = v4;
      *(v17 + 40) = v3;
      *(v17 + 48) = v5 & 1;
      *(OUTLINED_FUNCTION_4_0(v17) + 64) = v11 & 1;
      break;
    case 2u:
      v24 = &_s33SongStructureSegmentBoundaryEventVN;
      v25 = &off_288412AF0;
      v15 = swift_allocObject();
      *(OUTLINED_FUNCTION_1_3(v15) + 56) = v6 & 1;
      break;
    case 3u:
      v24 = &_s33SongStructureSectionBoundaryEventVN;
      v25 = &off_288412A08;
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_1_3(v16);
      break;
    default:
      v22 = v10 & 0x3F;
      v24 = &_s22SongStructureBeatEventVN;
      v25 = &off_2884126F8;
      v12 = swift_allocObject();
      v13 = OUTLINED_FUNCTION_1_3(v12);
      v14 = OUTLINED_FUNCTION_4_0(v13);
      *(v14 + 64) = v11;
      *(v14 + 71) = BYTE6(v9);
      *(v14 + 69) = WORD2(v9);
      *(v14 + 65) = v9;
      *(v14 + 72) = v22;
      break;
  }

  sub_2753F16E0(&v23, v26);
  v18 = v27;
  v19 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v20 = (*(v19 + 16))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v20;
}

uint64_t _s18SongStructureEventOwCP(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = *a2;
  *a1 = *a2;

  return v3 + 16;
}

uint64_t _s18SongStructureEventOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 57))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 56) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 56) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t _s18SongStructureEventOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 56) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t result)
{
  *(result + 16) = v6;
  *(result + 24) = v4;
  *(result + 32) = v3;
  *(result + 40) = v2;
  *(result + 48) = v1;
  *(result + 55) = BYTE6(v5);
  *(result + 53) = WORD2(v5);
  *(result + 49) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t result)
{
  *(result + 16) = v6;
  *(result + 24) = v4;
  *(result + 32) = v3;
  *(result + 40) = v2;
  *(result + 48) = v1;
  *(result + 55) = BYTE6(v5);
  *(result + 53) = WORD2(v5);
  *(result + 49) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t result)
{
  *(result + 56) = v1;
  *(result + 63) = BYTE6(v2);
  *(result + 61) = WORD2(v2);
  *(result + 57) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t result)
{
  *(result + 56) = v1;
  *(result + 63) = BYTE6(v2);
  *(result + 61) = WORD2(v2);
  *(result + 57) = v2;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2753F5BB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2753F5BD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_2753F5C24(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v14);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  OUTLINED_FUNCTION_0_0();
  v4 = OUTLINED_FUNCTION_0_7();
  v6 = v5(v4);
  (*(a2 + 24))(v11, a1, a2);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_0_0();
  result = v9(v7, v8);
  if (result < v6)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v6;
  }

  return result;
}

uint64_t sub_2753F5D20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v48 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v10[3];
  v13 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v12);
  v14 = sub_2753F5C24(v12, v13);
  v16 = v15;
  v49 = *(a3 + 24);
  v50 = v5;
  v17 = OUTLINED_FUNCTION_0_7();
  v18(v17);
  v20 = v52;
  v19 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  OUTLINED_FUNCTION_0_0();
  v22 = v21(v20, v19);
  if (v22 >= v14)
  {
    v24 = v22;
    result = __swift_destroy_boxed_opaque_existential_1(v51);
    if (v16 >= v24)
    {
      v25 = a1[3];
      v26 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v25);
      v27 = sub_2753F5C24(v25, v26);
      v46 = v28;
      v29 = OUTLINED_FUNCTION_0_7();
      v45 = v30;
      v30(v29);
      v31 = v52;
      v32 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      OUTLINED_FUNCTION_0_0();
      v34 = v33(v31, v32);
      if (v34 >= v27)
      {
        v35 = v34;
        __swift_destroy_boxed_opaque_existential_1(v51);
        if (v46 >= v35)
        {
          v40 = v47;
          v41 = v48;
          (*(v48 + 16))(v47, v50, a2);
          v42 = OUTLINED_FUNCTION_0_7();
          v45(v42);
          v43 = OUTLINED_FUNCTION_0_7();
          v49(v43);
          return (*(v41 + 8))(v40, a2);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v51);
      }

      v36 = a1[3];
      v37 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v36);
      (*(v37 + 16))(v36, v37);
      v38 = OUTLINED_FUNCTION_0_7();
      return v39(v38);
    }
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1(v51);
  }

  a4[3] = 0u;
  a4[4] = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_2753F6044(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v7 = OUTLINED_FUNCTION_0_8();
  result = v8(v7);
  if (result < v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = OUTLINED_FUNCTION_0_8();
  v13 = v12(v11);
  v14 = a2[8];
  v15 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v14);
  result = (*(v15 + 16))(v14, v15);
  if (result < v13)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return v6 == v13 && v10 == result;
}

uint64_t sub_2753F6178(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v7 = OUTLINED_FUNCTION_0_8();
  result = v8(v7);
  if (result < v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = OUTLINED_FUNCTION_0_8();
  v13 = v12(v11);
  v14 = a2[8];
  v15 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, v14);
  result = (*(v15 + 16))(v14, v15);
  if (result < v13)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return v6 == v13 && v10 == result;
}

uint64_t sub_2753F62B8()
{
  v1 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_4_1(v0, v1);
  v13[3] = v1;
  v3 = *(v2 + 8);
  v13[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_0_9();
  (*(v4 + 16))();
  v5 = (*(v3 + 16))(v1, v3);
  v6 = v0[8];
  v7 = v0[9];
  OUTLINED_FUNCTION_4_1(v0 + 5, v6);
  v11[3] = v6;
  v12 = *(v7 + 8);
  v8 = v12;
  __swift_allocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_9();
  v9();
  result = (*(v8 + 16))(v6, v8);
  if (result < v5)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v5;
  }

  return result;
}

uint64_t sub_2753F6400(uint64_t a1)
{
  v192[5] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  sub_2753F6E08(a1 + 32, v191);
  sub_2753F161C(v191, v190);
  sub_2753F161C(v192, v189);
  sub_2753F62B8();
  v3 = v2;
  v4 = sub_2753F62B8();
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
    goto LABEL_44;
  }

  sub_2753F75D8(0, &qword_2809DAEA0, &_s7SongBarVN, MEMORY[0x277D84560]);
  v160 = v6;
  v7 = swift_allocObject();
  v153 = xmmword_275474500;
  *(v7 + 16) = xmmword_275474500;
  v8 = sub_2753F6E08(v191, v7 + 32);
  v9 = sub_27540B08C(v179, v8);
  v10 = *v179;
  sub_27540B090(__src, v9);
  v11 = *__src - v10;

  v12 = sub_27544FBA0(1, a1);
  v16 = (v15 >> 1) - v14;
  v149 = v12;
  if (v15 >> 1 != v14)
  {
    if ((v15 >> 1) <= v14)
    {
      goto LABEL_45;
    }

    v164 = MEMORY[0x277D84F90];
    v29 = v13 + 80 * v14;
    while (1)
    {
      sub_2753F6E08(v29, v183);
      v30 = __swift_project_boxed_opaque_existential_1(v183, v184);
      OUTLINED_FUNCTION_7_0(v30, v31, v32, v33, v34, v35, v36, v37, v145, v149, v153, *(&v153 + 1), v160, v164, v170, v174, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32]);
      OUTLINED_FUNCTION_0_9();
      (*(v38 + 16))();
      v39 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      OUTLINED_FUNCTION_1_4(v39, v40, v41, v42, v43, v44, v45, v46, v146, v150, v154, v157, v161, v166, v171, v175, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v179[0], v179[1], v179[2], v179[3], v179[4]);
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_10();
      v47();
      __swift_destroy_boxed_opaque_existential_1(__src);
      v48 = OUTLINED_FUNCTION_5_1();
      v49(v48);
      __swift_destroy_boxed_opaque_existential_1(v179);
      v50 = *&v176;
      v51 = __swift_project_boxed_opaque_existential_1(v186, v187);
      OUTLINED_FUNCTION_7_0(v51, v52, v53, v54, v55, v56, v57, v58, v147, v151, v155, v158, v162, v167, v172, v176, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32]);
      OUTLINED_FUNCTION_0_9();
      (*(v59 + 16))();
      v60 = __swift_project_boxed_opaque_existential_1(__src, *&__src[24]);
      OUTLINED_FUNCTION_1_4(v60, v61, v62, v63, v64, v65, v66, v67, v148, v152, v156, v159, v163, v168, v173, v177, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v179[0], v179[1], v179[2], v179[3], v179[4]);
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_10();
      v68();
      __swift_destroy_boxed_opaque_existential_1(__src);
      v69 = OUTLINED_FUNCTION_5_1();
      v70(v69);
      __swift_destroy_boxed_opaque_existential_1(v179);
      if (vabdd_f64(*__src - v50, v11) > 0.040000001)
      {
        goto LABEL_23;
      }

      v71 = __swift_project_boxed_opaque_existential_1(v183, v184);
      OUTLINED_FUNCTION_1_4(v71, v72, v73, v74, v75, v76, v77, v78, v145, v149, v153, *(&v153 + 1), v160, v164, v29, v174, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v179[0], v179[1], v179[2], v179[3], v179[4]);
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_10();
      v79();
      v80 = OUTLINED_FUNCTION_5_1();
      v82 = v81(v80);
      v84 = v187;
      v83 = v188;
      OUTLINED_FUNCTION_4_1(v186, v187);
      *&__src[24] = v84;
      *&__src[32] = *(v83 + 8);
      v85 = *&__src[32];
      __swift_allocate_boxed_opaque_existential_1(__src);
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_10();
      v86();
      v87 = (*(v85 + 16))(v84, v85);
      if (v87 < v82)
      {
        goto LABEL_41;
      }

      v88 = v87;
      __swift_destroy_boxed_opaque_existential_1(__src);
      __swift_destroy_boxed_opaque_existential_1(v179);
      v90 = v184;
      v89 = v185;
      OUTLINED_FUNCTION_4_1(v183, v184);
      v179[3] = v90;
      v179[4] = *(v89 + 8);
      v91 = v179[4];
      __swift_allocate_boxed_opaque_existential_1(v179);
      OUTLINED_FUNCTION_0_9();
      (*(v92 + 16))();
      v93 = (*(v91 + 16))(v90, v91);
      v95 = v187;
      v94 = v188;
      __swift_project_boxed_opaque_existential_1(v186, v187);
      *&__src[24] = v95;
      *&__src[32] = *(v94 + 8);
      v96 = *&__src[32];
      __swift_allocate_boxed_opaque_existential_1(__src);
      OUTLINED_FUNCTION_0_9();
      (*(v97 + 16))();
      if ((*(v96 + 16))(v95, v96) < v93)
      {
        goto LABEL_42;
      }

      __swift_destroy_boxed_opaque_existential_1(__src);
      __swift_destroy_boxed_opaque_existential_1(v179);
      if (__OFSUB__(v88, v93))
      {
        goto LABEL_43;
      }

      v29 = v170;
      if (v88 - v93 == v5)
      {
        sub_2753F6E08(v183, v179);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = OUTLINED_FUNCTION_6_1();
          sub_2754313E8(v134, v135, v136, v7);
          v7 = v137;
        }

        v99 = *(v7 + 16);
        v98 = *(v7 + 24);
        if (v99 >= v98 >> 1)
        {
          v138 = OUTLINED_FUNCTION_2_4(v98);
          sub_2754313E8(v138, v139, v140, v7);
          v7 = v141;
        }

        __swift_destroy_boxed_opaque_existential_1(v189);
        *(v7 + 16) = v99 + 1;
        memcpy((v7 + 80 * v99 + 32), v179, 0x50uLL);
      }

      else
      {
LABEL_23:
        v100 = *(v7 + 16);

        if (v100 < 5)
        {
          __swift_destroy_boxed_opaque_existential_1(v190);
        }

        else
        {
          OUTLINED_FUNCTION_3_4();
          sub_2753F161C(v190, v179);
          v101 = sub_2753F161C(v189, &v179[5]);
          OUTLINED_FUNCTION_8(v101, v102, v103, v104, v105, v106, v107, v108, v145, v149, v153, *(&v153 + 1), v160, v164, v170, v174, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], v179[9], v180, v181, v182);
          v109 = v169;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_1();
            sub_275431328();
            v109 = v132;
          }

          v111 = *(v109 + 16);
          v110 = *(v109 + 24);
          if (v111 >= v110 >> 1)
          {
            OUTLINED_FUNCTION_2_4(v110);
            sub_275431328();
            v109 = v133;
          }

          sub_2753F7504(v179);
          __swift_destroy_boxed_opaque_existential_1(v190);
          *(v109 + 16) = v111 + 1;
          v164 = v109;
          memcpy((v109 + 104 * v111 + 32), __src, 0x61uLL);
        }

        sub_2753F161C(v183, v190);
        v113 = v184;
        v112 = v185;
        OUTLINED_FUNCTION_4_1(v183, v184);
        v179[3] = v113;
        v179[4] = *(v112 + 8);
        v114 = v179[4];
        __swift_allocate_boxed_opaque_existential_1(v179);
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_9();
        v115();
        v116 = (*(v114 + 16))(v113, v114);
        v118 = v187;
        v117 = v188;
        OUTLINED_FUNCTION_4_1(v186, v187);
        *&__src[24] = v118;
        *&__src[32] = *(v117 + 8);
        v119 = *&__src[32];
        __swift_allocate_boxed_opaque_existential_1(__src);
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 16))();
        v121 = (*(v119 + 16))(v118, v119);
        if (v121 < v116)
        {
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
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          OUTLINED_FUNCTION_6_1();
          sub_275431328();
          v26 = v143;
LABEL_7:
          v28 = *(v26 + 16);
          v27 = *(v26 + 24);
          if (v28 >= v27 >> 1)
          {
            OUTLINED_FUNCTION_2_4(v27);
            sub_275431328();
            v26 = v144;
          }

          sub_2753F7504(v179);
          __swift_destroy_boxed_opaque_existential_1(v189);
          __swift_destroy_boxed_opaque_existential_1(v190);
          sub_2753F7454(v191);
          *(v26 + 16) = v28 + 1;
          memcpy((v26 + 104 * v28 + 32), __src, 0x61uLL);
          return v26;
        }

        v122 = v121;
        __swift_destroy_boxed_opaque_existential_1(__src);
        __swift_destroy_boxed_opaque_existential_1(v179);
        v124 = v184;
        v123 = v185;
        OUTLINED_FUNCTION_4_1(v183, v184);
        v179[3] = v124;
        v179[4] = *(v123 + 8);
        v125 = v179[4];
        __swift_allocate_boxed_opaque_existential_1(v179);
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_9();
        v126();
        v127 = (*(v125 + 16))(v124, v125);
        v129 = v187;
        v128 = v188;
        OUTLINED_FUNCTION_4_1(v186, v187);
        *&__src[24] = v129;
        *&__src[32] = *(v128 + 8);
        v130 = *&__src[32];
        __swift_allocate_boxed_opaque_existential_1(__src);
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_9();
        v131();
        if ((*(v130 + 16))(v129, v130) < v127)
        {
          goto LABEL_39;
        }

        __swift_destroy_boxed_opaque_existential_1(__src);
        __swift_destroy_boxed_opaque_existential_1(v179);
        v5 = v122 - v127;
        if (__OFSUB__(v122, v127))
        {
          goto LABEL_40;
        }

        v7 = swift_allocObject();
        *(v7 + 16) = v153;
        sub_2753F6E08(v183, v7 + 32);
        __swift_destroy_boxed_opaque_existential_1(v189);
      }

      sub_2753F161C(v186, v189);
      v11 = sub_2753F71E0(v7);
      sub_2753F7454(v183);
      v29 += 80;
      if (!--v16)
      {
        goto LABEL_5;
      }
    }
  }

  v164 = MEMORY[0x277D84F90];
LABEL_5:
  swift_unknownObjectRelease();
  v17 = *(v7 + 16);

  if (v17 >= 5)
  {
    OUTLINED_FUNCTION_3_4();
    sub_2753F161C(v190, v179);
    v18 = sub_2753F161C(v189, &v179[5]);
    OUTLINED_FUNCTION_8(v18, v19, v20, v21, v22, v23, v24, v25, v145, v149, v153, *(&v153 + 1), v160, v164, v170, v174, *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], v179[0], v179[1], v179[2], v179[3], v179[4], v179[5], v179[6], v179[7], v179[8], v179[9], v180, v181, v182);
    v26 = v165;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(v189);
  __swift_destroy_boxed_opaque_existential_1(v190);
  sub_2753F7454(v191);
  return v164;
}

char *sub_2753F6E64@<X0>(char *result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = a2 + 32;
    while (1)
    {
      sub_2753F74A8(v6, __src);
      v7 = __src[3];
      v8 = __src[4];
      __swift_project_boxed_opaque_existential_1(__src, __src[3]);
      v9 = (*(v8 + 16))(v7, v8);
      v10 = __src[8];
      v11 = __src[9];
      __swift_project_boxed_opaque_existential_1(&__src[5], __src[8]);
      result = (*(v11 + 16))(v10, v11);
      v12 = result - 1;
      if (__OFSUB__(result, 1))
      {
        break;
      }

      if (v12 < v9)
      {
        goto LABEL_13;
      }

      if (v9 <= v5 && v12 >= v5)
      {
        return memcpy(a3, __src, 0x61uLL);
      }

      result = sub_2753F7504(__src);
      v6 += 104;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    *(a3 + 96) = 0;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2753F6F90(char *a1, uint64_t a2)
{
  sub_2753F6E64(a1, a2, &v4);
  if (v5)
  {
    v2 = v6;
    sub_2753F7504(&v4);
  }

  else
  {
    sub_2753F7558(&v4);
    return 0;
  }

  return v2;
}

double sub_2753F6FF0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_2753F8BB4(sub_2753F7628, a2, __src);
  if (*&__src[24])
  {
    memcpy(__dst, __src, 0x61uLL);
    v5 = a1[3];
    v6 = a1[4];
    OUTLINED_FUNCTION_4_1(a1, v5);
    *&__src[24] = &_s22BeatStabilityMapRegionVN;
    *&__src[32] = &off_2884130A8;
    *__src = swift_allocObject();
    sub_2753F74A8(__dst, *__src + 16);
    sub_2753F5D20(__src, v5, v6, a3);
    sub_2753F7504(__dst);
    __swift_destroy_boxed_opaque_existential_1(__src);
  }

  else
  {
    sub_2753F7558(__src);
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_2753F70FC(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = a1[8];
  v8 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v7);
  result = (*(v8 + 16))(v7, v8);
  if (result < v6)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    sub_2753F5C24(v11, v12);
    return v13 >= v6 && v10 >= v13;
  }

  return result;
}

double sub_2753F71E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = 0.0;
    v4 = *(a1 + 16);
    do
    {
      sub_2753F6E08(v2, v32);
      v5 = v33;
      v6 = v34;
      v7 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v26 = v5;
      v27 = *(v6 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
      (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
      v9 = v26;
      v10 = v27;
      v11 = __swift_project_boxed_opaque_existential_1(v25, v26);
      v29 = v9;
      v12 = *(v10 + 8);
      v30 = v12;
      v13 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(*(v9 - 8) + 16))(v13, v11, v9);
      __swift_destroy_boxed_opaque_existential_1(v25);
      (*(v12 + 8))(&v31, v9, v12);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v14 = v31;
      v15 = v36;
      v16 = v37;
      v17 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v26 = v15;
      v27 = *(v16 + 8);
      v18 = __swift_allocate_boxed_opaque_existential_1(v25);
      (*(*(v15 - 8) + 16))(v18, v17, v15);
      v19 = v26;
      v20 = v27;
      v21 = __swift_project_boxed_opaque_existential_1(v25, v26);
      v29 = v19;
      v22 = *(v20 + 8);
      v30 = v22;
      v23 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(*(v19 - 8) + 16))(v23, v21, v19);
      __swift_destroy_boxed_opaque_existential_1(v25);
      (*(v22 + 8))(v25, v19, v22);
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_2753F7454(v32);
      v3 = v3 + *v25 - v14;
      v2 += 80;
      --v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0.0;
  }

  return v3 / v1;
}

uint64_t sub_2753F7558(uint64_t a1)
{
  sub_2753F75D8(0, &qword_2809DAEA8, &_s22BeatStabilityMapRegionVN, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2753F75D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2753F7648()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t *OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a33 = v35;
  a34 = *(v34 + 8);

  return __swift_allocate_boxed_opaque_existential_1(&a30);
}

uint64_t *OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a20 = v21;
  a21 = *(v22 + 8);

  return __swift_allocate_boxed_opaque_existential_1(&a17);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  a40 = v42;
  a41 = v44;
  a42 = 0;

  return sub_2753F74A8(&a30, &a17);
}

uint64_t sub_2753F77A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_2753F77E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s16TempoBinaryRatioOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16TempoBinaryRatioOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753F79B0);
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

unint64_t sub_2753F79F4()
{
  result = qword_2809DAEB0;
  if (!qword_2809DAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAEB0);
  }

  return result;
}

uint64_t sub_2753F7A70(unsigned __int8 a1)
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](a1);
  return sub_27546EAC0();
}

uint64_t sub_2753F7AE8(double a1)
{
  if (a1 == 0.5)
  {
    return 0;
  }

  if (a1 == 2.0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (a1 == 1.0)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

_BYTE *_s22TempoBinaryScaleFactorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753F7BF0);
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

unint64_t sub_2753F7C2C()
{
  result = qword_2809DAEB8;
  if (!qword_2809DAEB8)
  {
    sub_2753F7C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAEB8);
  }

  return result;
}

void sub_2753F7C84()
{
  if (!qword_2809DAEC0)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAEC0);
    }
  }
}

uint64_t sub_2753F7CF8@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2753F7AE8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2753F7D64()
{
  result = qword_2809DAEC8;
  if (!qword_2809DAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAEC8);
  }

  return result;
}

uint64_t _s18TempoCompatibilityOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3F)
  {
    if (a2 + 193 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 193) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 194;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v5 >= 0x3E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s18TempoCompatibilityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3E)
  {
    v6 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
        JUMPOUT(0x2753F7F28);
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
          *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

BOOL sub_2753F7F90(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 0xFBu)
  {
    return a2 > 0xFBu;
  }

  if (a2 <= 0xFBu)
  {
    if ((a1 & 0x80) != 0)
    {
      if ((a2 & 0x80) == 0 || ((a2 ^ a1) & 0x7F) != 0)
      {
        return 0;
      }
    }

    else if (a1 != a2)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_2753F7FF0(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  sub_2753F8300(a1, a2 & 1, a3, a4 & 1);
  v11 = v10;
  v12 = COERCE_DOUBLE(sub_2753F860C(v10, a3, a4 & 1));
  v14 = v13;
  if (!sub_2753F865C(*&v12, v13 & 1, a1, a2 & 1))
  {
    v15 = v12;
    if (v14)
    {
      v15 = 60.0 / v12;
    }

    v16 = log(v15);
    v17 = *&a1;
    if (a2)
    {
      v17 = 60.0 / *&a1;
    }

    if (vabdd_f64(v16, log(v17)) <= a5)
    {
      return v11 | 0xFFFFFF80;
    }

    else
    {
      return 252;
    }
  }

  return v11;
}

uint64_t _s17TempoRelationshipOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E)
  {
    v2 = a2 + 194;
    if (a2 + 194 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 194;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 194;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2753F8184);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 194;
      default:
        break;
    }
  }

  v7 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v7 >= 0x3E)
  {
    v7 = -1;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

_BYTE *_s17TempoRelationshipOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 194;
  if (a3 + 194 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0x3E)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0x3D)
  {
    v7 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x2753F8278);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = (2 * (a2 ^ 0x3F)) & 0xFC | ((a2 ^ 0x3F) << 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2753F82A0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 1) & 0x3E) != 0)
  {
    return 64 - ((v1 >> 1) & 0x3E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2753F82C4(_BYTE *result, unsigned int a2)
{
  if (a2 > 0x3E)
  {
    LOBYTE(v2) = a2 - 63;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
  }

  *result = v2;
  return result;
}

void sub_2753F8300(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = OUTLINED_FUNCTION_0_10();
  sub_2754411AC(v6, 3, 0);
  v7 = 0;
  v8 = v48;
  v9 = &unk_288411278;
  do
  {
    v10 = v9[v7 + 32];
    if (v9[v7 + 32])
    {
      v11 = *&a3;
      v12 = a4;
      if (v10 == 1)
      {
        goto LABEL_8;
      }

      v13 = 2.0;
      if ((a4 & 1) == 0)
      {
LABEL_5:
        v12 = 0;
        v11 = v13 * *&a3;
        goto LABEL_8;
      }
    }

    else
    {
      v13 = 0.5;
      if ((a4 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *&a3 / v13;
    v12 = 1;
LABEL_8:
    v49 = v8;
    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    if (v15 >= v14 >> 1)
    {
      v17 = OUTLINED_FUNCTION_1_5(v14);
      v19 = v18;
      sub_2754411AC(v17, v15 + 1, 1);
      v9 = v19;
      v8 = v49;
    }

    ++v7;
    *(v8 + 16) = v15 + 1;
    v16 = v8 + 24 * v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v11;
    *(v16 + 48) = v12 & 1;
  }

  while (v7 != 3);
  v20 = OUTLINED_FUNCTION_0_10();
  sub_27544118C(v20, v15 + 1, 0);
  v21 = 0;
  v22 = v15 + 1;
  v23 = (v8 + 48);
  do
  {
    if (v21 >= *(v8 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v24 = *(v23 - 16);
    if (*v23)
    {
      v25 = 60.0 / *(v23 - 1);
    }

    else
    {
      v25 = *(v23 - 1);
    }

    v27 = *(v49 + 16);
    v26 = *(v49 + 24);
    if (v27 >= v26 >> 1)
    {
      v29 = OUTLINED_FUNCTION_1_5(v26);
      sub_27544118C(v29, v27 + 1, 1);
    }

    ++v21;
    *(v49 + 16) = v27 + 1;
    v28 = v49 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    v23 += 3;
  }

  while (v22 != v21);

  v30 = *(v49 + 16);
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_0_10();
    sub_27544118C(v31, v30, 0);
    v32 = v49;
    v33 = *&a1;
    if (a2)
    {
      v33 = 60.0 / *&a1;
    }

    v34 = log(v33);
    v35 = 0;
    v36 = (v49 + 40);
    while (v35 < *(v49 + 16))
    {
      v37 = *(v36 - 8);
      v38 = log(*v36);
      v40 = *(v49 + 16);
      v39 = *(v49 + 24);
      if (v40 >= v39 >> 1)
      {
        v42 = OUTLINED_FUNCTION_1_5(v39);
        sub_27544118C(v42, v40 + 1, 1);
      }

      ++v35;
      *(v49 + 16) = v40 + 1;
      v41 = v49 + 16 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = vabdd_f64(v38, v34);
      v36 += 2;
      if (v30 == v35)
      {

        goto LABEL_29;
      }
    }

    goto LABEL_37;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_29:
  v43 = *(v32 + 16);
  if (v43)
  {
    v44 = *(v32 + 40);
    for (i = (v32 + 56); --v43; i += 2)
    {
      if (*i < v44)
      {
        v44 = *i;
      }
    }
  }
}

uint64_t sub_2753F860C(char a1, uint64_t a2, char a3)
{
  v3 = *&a2;
  if (a1)
  {
    if (a1 == 1)
    {
      return *&v3;
    }

    v4 = 2.0;
  }

  else
  {
    v4 = 0.5;
  }

  if (a3)
  {
    v3 = *&a2 / v4;
  }

  else
  {
    v3 = v4 * *&a2;
  }

  return *&v3;
}

BOOL sub_2753F865C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *&a1;
  if (a2)
  {
    v5 = *&a3;
    if ((a4 & 1) == 0)
    {
      v4 = 60.0 / *&a1;
    }
  }

  else
  {
    v5 = *&a3;
    if (a4)
    {
      v5 = 60.0 / *&a3;
    }
  }

  return v4 == v5;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2753F86E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_2753F872C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t _s26TimeSignatureCompatibilityOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *_s26TimeSignatureCompatibilityOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2753F88ACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2753F88F0()
{
  result = qword_2809DAED0;
  if (!qword_2809DAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAED0);
  }

  return result;
}

uint64_t sub_2753F896C()
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](0);
  return sub_27546EAC0();
}

uint64_t sub_2753F89C0(uint64_t a1)
{
  sub_27546EA90();
  MEMORY[0x277C77BF0](0);
  return sub_27546EAC0();
}

_BYTE *_s25TimeSignatureRelationshipOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753F8ACCLL);
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

uint64_t sub_2753F8B04(char a1, char a2)
{
  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2)
  {
    return 0;
  }

  return 1;
}

BOOL sub_2753F8B54(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t (*sub_2753F8BB4@<X0>(uint64_t (*result)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>))(_BYTE *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_2753F74A8(v7, __src);
      v8 = v4(__src);
      if (v3)
      {
        return sub_2753F7504(__src);
      }

      if (v8)
      {
        return memcpy(a3, __src, 0x61uLL);
      }

      result = sub_2753F7504(__src);
      v7 += 104;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 96) = 0;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t (*sub_2753F8CA4@<X0>(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void *, uint64_t)@<X3>, uint64_t a4@<X8>))(void *)
{
  v6 = result;
  v8 = *(a2 + 16);
  v9 = a2 + 32;
  if (v8)
  {
    while (1)
    {
      sub_2753F161C(v9, v11);
      v10 = v6(v11);
      if (v4)
      {
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v11);
      v9 += 40;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t (*sub_2753F8D6C@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X8>))(__int128 *)
{
  v6 = a3;
  v7 = result;
  v9 = a4 >> 1;
  for (i = a2 + 40 * a3; ; i += 40)
  {
    if (v9 == v6)
    {
      *(a5 + 32) = 0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      return result;
    }

    if (v6 >= v9)
    {
      break;
    }

    sub_2753F161C(i, v12);
    v11 = v7(v12);
    if (v5)
    {
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    if (v11)
    {
      return sub_2753F16E0(v12, a5);
    }

    result = __swift_destroy_boxed_opaque_existential_1(v12);
    ++v6;
  }

  __break(1u);
  return result;
}

double sub_2753F8E44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2753F161C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2753F8E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_27546E490();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

double sub_2753F8F24@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    return OUTLINED_FUNCTION_20_0(a2);
  }

  sub_2753FC774(a1 + 32, a2);
  return result;
}

double sub_2753F8F3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2753F74A8(a1 + 32, a2);
  }

  else
  {
    *(a2 + 96) = 0;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2753F8F68(void *a1)
{
  v1 = a1[4] >> 1;
  v22 = a1[3];
  v2 = v1 - v22;
  if (__OFSUB__(v1, v22))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v24 = a1[4] >> 1;
  v3 = *a1;
  v21 = a1[2];
  v23 = *(*a1 + 16);
  if (v2 >= v23)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = v1 - v22;
  }

  v28 = MEMORY[0x277D84F90];
  sub_27544122C(0, v4 & ~(v4 >> 63), 0);
  if (v2 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    result = __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_38:
    __break(1u);
    return result;
  }

  v20 = v3;
  v5 = v28;
  if (v4)
  {
    v6 = v3 + 32;

    result = swift_unknownObjectRetain();
    v8 = v22;
    v9 = v21 + 40 * v22;
    v10 = v23;
    v11 = v4;
    while (v10)
    {
      sub_2753F161C(v6, v25);
      if (v24 == v8)
      {
        goto LABEL_37;
      }

      if (v8 >= v24)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_2753F16E0(v25, v26);
      sub_2753F161C(v9, &v26[40]);
      sub_2753F161C(v26, __src);
      sub_2753F161C(&v26[40], &__src[40]);
      sub_2753FC650(v26, &qword_2809DAF28, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
      v28 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_27544122C(v12 > 1, v13 + 1, 1);
        v5 = v28;
      }

      *(v5 + 16) = v13 + 1;
      result = memcpy((v5 + 80 * v13 + 32), __src, 0x50uLL);
      v6 += 40;
      --v10;
      v9 += 40;
      ++v8;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  v8 = v22;
LABEL_16:
  v14 = v21 + 40 * v8;
  v15 = v20 + 40 * v4 + 32;
  v16 = v8;
  while (v23 != v4)
  {
    if (v4 >= v23)
    {
      goto LABEL_32;
    }

    sub_2753F161C(v15, v25);
    if (__OFADD__(v4, 1))
    {
      goto LABEL_33;
    }

    if (v24 == v16)
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
      break;
    }

    if (v8 < v22 || v16 >= v24)
    {
      goto LABEL_34;
    }

    sub_2753F16E0(v25, v26);
    sub_2753F161C(v14, &v26[40]);
    memcpy(__src, v26, 0x50uLL);
    sub_2753F161C(__src, v26);
    sub_2753F161C(&__src[40], &v26[40]);
    sub_2753FC650(__src, &qword_2809DAF28, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    v28 = v5;
    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_27544122C(v18 > 1, v19 + 1, 1);
      v5 = v28;
    }

    *(v5 + 16) = v19 + 1;
    memcpy((v5 + 80 * v19 + 32), v26, 0x50uLL);
    v14 += 40;
    ++v4;
    v15 += 40;
    ++v16;
  }

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_2753F92A8(void *a1)
{
  v1 = a1[4] >> 1;
  v22 = a1[3];
  v2 = v1 - v22;
  if (__OFSUB__(v1, v22))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v24 = a1[4] >> 1;
  v3 = *a1;
  v21 = a1[2];
  v23 = *(*a1 + 16);
  if (v2 >= v23)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = v1 - v22;
  }

  v28 = MEMORY[0x277D84F90];
  sub_2754411FC(0, v4 & ~(v4 >> 63), 0);
  if (v2 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    result = __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_38:
    __break(1u);
    return result;
  }

  v20 = v3;
  v5 = v28;
  if (v4)
  {
    v6 = v3 + 32;

    result = swift_unknownObjectRetain();
    v8 = v22;
    v9 = v21 + 40 * v22;
    v10 = v23;
    v11 = v4;
    while (v10)
    {
      sub_2753F161C(v6, v25);
      if (v24 == v8)
      {
        goto LABEL_37;
      }

      if (v8 >= v24)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_2753F16E0(v25, v26);
      sub_2753F161C(v9, &v26[40]);
      sub_2753F161C(v26, __src);
      sub_2753F161C(&v26[40], &__src[40]);
      sub_2753FC650(v26, &qword_2809DAF20, &qword_2809DAF18, &protocol descriptor for TransitionPlannerSegmentBoundaryEvent);
      v28 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2754411FC(v12 > 1, v13 + 1, 1);
        v5 = v28;
      }

      *(v5 + 16) = v13 + 1;
      result = memcpy((v5 + 80 * v13 + 32), __src, 0x50uLL);
      v6 += 40;
      --v10;
      v9 += 40;
      ++v8;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  v8 = v22;
LABEL_16:
  v14 = v21 + 40 * v8;
  v15 = v20 + 40 * v4 + 32;
  v16 = v8;
  while (v23 != v4)
  {
    if (v4 >= v23)
    {
      goto LABEL_32;
    }

    sub_2753F161C(v15, v25);
    if (__OFADD__(v4, 1))
    {
      goto LABEL_33;
    }

    if (v24 == v16)
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
      break;
    }

    if (v8 < v22 || v16 >= v24)
    {
      goto LABEL_34;
    }

    sub_2753F16E0(v25, v26);
    sub_2753F161C(v14, &v26[40]);
    memcpy(__src, v26, 0x50uLL);
    sub_2753F161C(__src, v26);
    sub_2753F161C(&__src[40], &v26[40]);
    sub_2753FC650(__src, &qword_2809DAF20, &qword_2809DAF18, &protocol descriptor for TransitionPlannerSegmentBoundaryEvent);
    v28 = v5;
    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2754411FC(v18 > 1, v19 + 1, 1);
      v5 = v28;
    }

    *(v5 + 16) = v19 + 1;
    memcpy((v5 + 80 * v19 + 32), v26, 0x50uLL);
    v14 += 40;
    ++v4;
    v15 += 40;
    ++v16;
  }

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_2753F95E8(void *a1)
{
  v1 = a1[4] >> 1;
  v22 = a1[3];
  v2 = v1 - v22;
  if (__OFSUB__(v1, v22))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v24 = a1[4] >> 1;
  v3 = *a1;
  v21 = a1[2];
  v23 = *(*a1 + 16);
  if (v2 >= v23)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = v1 - v22;
  }

  v28 = MEMORY[0x277D84F90];
  sub_2754411CC(0, v4 & ~(v4 >> 63), 0);
  if (v2 < 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    result = __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_38:
    __break(1u);
    return result;
  }

  v20 = v3;
  v5 = v28;
  if (v4)
  {
    v6 = v3 + 32;

    result = swift_unknownObjectRetain();
    v8 = v22;
    v9 = v21 + 40 * v22;
    v10 = v23;
    v11 = v4;
    while (v10)
    {
      sub_2753F161C(v6, v25);
      if (v24 == v8)
      {
        goto LABEL_37;
      }

      if (v8 >= v24)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_2753F16E0(v25, v26);
      sub_2753F161C(v9, &v26[40]);
      sub_2753F161C(v26, __src);
      sub_2753F161C(&v26[40], &__src[40]);
      sub_2753FC650(v26, &qword_2809DAF08, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
      v28 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2754411CC(v12 > 1, v13 + 1, 1);
        v5 = v28;
      }

      *(v5 + 16) = v13 + 1;
      result = memcpy((v5 + 80 * v13 + 32), __src, 0x50uLL);
      v6 += 40;
      --v10;
      v9 += 40;
      ++v8;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  v8 = v22;
LABEL_16:
  v14 = v21 + 40 * v8;
  v15 = v20 + 40 * v4 + 32;
  v16 = v8;
  while (v23 != v4)
  {
    if (v4 >= v23)
    {
      goto LABEL_32;
    }

    sub_2753F161C(v15, v25);
    if (__OFADD__(v4, 1))
    {
      goto LABEL_33;
    }

    if (v24 == v16)
    {
      __swift_destroy_boxed_opaque_existential_1(v25);
      break;
    }

    if (v8 < v22 || v16 >= v24)
    {
      goto LABEL_34;
    }

    sub_2753F16E0(v25, v26);
    sub_2753F161C(v14, &v26[40]);
    memcpy(__src, v26, 0x50uLL);
    sub_2753F161C(__src, v26);
    sub_2753F161C(&__src[40], &v26[40]);
    sub_2753FC650(__src, &qword_2809DAF08, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
    v28 = v5;
    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2754411CC(v18 > 1, v19 + 1, 1);
      v5 = v28;
    }

    *(v5 + 16) = v19 + 1;
    memcpy((v5 + 80 * v19 + 32), v26, 0x50uLL);
    v14 += 40;
    ++v4;
    v15 += 40;
    ++v16;
  }

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_2753F9928(void *a1)
{
  v1 = a1[4] >> 1;
  v41 = a1[3];
  v2 = v1 - v41;
  if (__OFSUB__(v1, v41))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v43 = a1[4] >> 1;
  v3 = *a1;
  v39 = a1[2];
  v42 = *(*a1 + 16);
  if (v2 >= v42)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = v1 - v41;
  }

  v47 = MEMORY[0x277D84F90];
  sub_275441294(0, v4 & ~(v4 >> 63), 0);
  if (v2 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    result = __swift_destroy_boxed_opaque_existential_1(__src);
LABEL_42:
    __break(1u);
    return result;
  }

  v5 = v47;
  v40 = v3;
  v38 = v4;
  if (v4)
  {
    v6 = v3 + 32;

    result = swift_unknownObjectRetain();
    v9 = v41;
    v8 = v42;
    v10 = v39 + 40 * v41;
    while (v8)
    {
      sub_2753F161C(v6, __src);
      if (v43 == v9)
      {
        goto LABEL_41;
      }

      if (v9 >= v43)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      sub_2753F16E0(__src, __dst);
      sub_2753F161C(v10, &__dst[5]);
      sub_2753F161C(__dst, __src);
      v12 = __dst[8];
      v11 = __dst[9];
      __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
      v13 = (*(*(*(v11 + 8) + 8) + 16))(v12);
      v15 = __dst[3];
      v14 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      v16 = (*(*(*(v14 + 8) + 8) + 16))(v15);
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_34;
      }

      *(&__src[2] + 1) = v13 - v16;
      result = sub_2753FC650(__dst, &qword_2809DAF08, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
      v47 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_275441294((v17 > 1), v18 + 1, 1);
        v5 = v47;
      }

      *(v5 + 16) = v18 + 1;
      v19 = (v5 + 48 * v18);
      v20 = __src[0];
      v21 = __src[2];
      v19[3] = __src[1];
      v19[4] = v21;
      v6 += 40;
      v19[2] = v20;
      --v8;
      v10 += 40;
      ++v9;
      if (!--v4)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_42;
  }

  swift_unknownObjectRetain();
  v9 = v41;
LABEL_17:
  v22 = v38;
  v23 = v39 + 40 * v9;
  v24 = v40 + 40 * v38 + 32;
  v25 = v9;
  while (v42 != v22)
  {
    if (v22 >= v42)
    {
      goto LABEL_35;
    }

    sub_2753F161C(v24, v44);
    if (__OFADD__(v22, 1))
    {
      goto LABEL_36;
    }

    if (v43 == v25)
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
      break;
    }

    if (v9 < v41 || v25 >= v43)
    {
      goto LABEL_37;
    }

    sub_2753F16E0(v44, __src);
    sub_2753F161C(v23, &__src[2] + 8);
    memcpy(__dst, __src, 0x50uLL);
    sub_2753F161C(__dst, __src);
    v28 = __dst[8];
    v27 = __dst[9];
    __swift_project_boxed_opaque_existential_1(&__dst[5], __dst[8]);
    v29 = (*(*(*(v27 + 8) + 8) + 16))(v28);
    v31 = __dst[3];
    v30 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v32 = (*(*(*(v30 + 8) + 8) + 16))(v31);
    if (__OFSUB__(v29, v32))
    {
      goto LABEL_38;
    }

    *(&__src[2] + 1) = v29 - v32;
    sub_2753FC650(__dst, &qword_2809DAF08, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
    v47 = v5;
    v34 = *(v5 + 16);
    v33 = *(v5 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_275441294((v33 > 1), v34 + 1, 1);
      v5 = v47;
    }

    *(v5 + 16) = v34 + 1;
    v35 = (v5 + 48 * v34);
    v36 = __src[0];
    v37 = __src[2];
    v35[3] = __src[1];
    v35[4] = v37;
    v35[2] = v36;
    v23 += 40;
    ++v22;
    v24 += 40;
    ++v25;
  }

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_2753F9D50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v82 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v131[0] = MEMORY[0x277D84F90];
  sub_27544125C(0, v2, 0);
  v130 = v131[0];
  v4 = (a1 + 88);
  do
  {
    v5 = *(v4 - 16);
    v6 = *(v4 - 15) | ((*(v4 - 11) | (*(v4 - 9) << 16)) << 32);
    v7 = *(v4 - 7) | ((*(v4 - 3) | (*(v4 - 1) << 16)) << 32);
    v8 = *v4;
    v9 = *(v4 - 8);
    v4 += 64;
    switch(v8 >> 6)
    {
      case 1u:
        v134 = &_s26SongStructureDownbeatEventVN;
        v135 = &off_2884127B0;
        v21 = v5;
        v22 = swift_allocObject();
        v23 = OUTLINED_FUNCTION_0_11(v22);
        *(v23 + 48) = v24 & 1;
        *(v23 + 56) = v21;
        *(v23 + 63) = BYTE6(v6);
        *(v23 + 61) = WORD2(v6);
        *(v23 + 57) = v6;
        *(v23 + 64) = v9 & 1;
        break;
      case 2u:
        v134 = &_s33SongStructureSegmentBoundaryEventVN;
        v135 = &off_288412AF0;
        v14 = v5;
        v15 = swift_allocObject();
        v16 = OUTLINED_FUNCTION_0_11(v15);
        *(OUTLINED_FUNCTION_16(v16, v17) + 56) = v14 & 1;
        break;
      case 3u:
        v134 = &_s33SongStructureSectionBoundaryEventVN;
        v135 = &off_288412A08;
        OUTLINED_FUNCTION_30();
        v18 = swift_allocObject();
        v19 = OUTLINED_FUNCTION_0_11(v18);
        OUTLINED_FUNCTION_16(v19, v20);
        break;
      default:
        v124 = v8 & 0x3F;
        v134 = &_s22SongStructureBeatEventVN;
        v135 = &off_2884126F8;
        v123 = v5;
        v10 = swift_allocObject();
        v11 = OUTLINED_FUNCTION_0_11(v10);
        v13 = OUTLINED_FUNCTION_16(v11, v12);
        *(v13 + 56) = v123;
        *(v13 + 63) = BYTE6(v6);
        *(v13 + 61) = WORD2(v6);
        *(v13 + 57) = v6;
        *(v13 + 64) = v9;
        *(v13 + 71) = BYTE6(v7);
        *(v13 + 69) = WORD2(v7);
        *(v13 + 65) = v7;
        *(v13 + 72) = v124;
        break;
    }

    OUTLINED_FUNCTION_29();
    v25 = v130;
    v131[0] = v130;
    v27 = *(v130 + 16);
    v26 = *(v130 + 24);
    if (v27 >= v26 >> 1)
    {
      v28 = OUTLINED_FUNCTION_11(v26);
      sub_27544125C(v28, v27 + 1, 1);
      v25 = v131[0];
    }

    *(v25 + 16) = v27 + 1;
    v130 = v25;
    sub_2753F16E0(&v136, v25 + 40 * v27 + 32);
    --v2;
  }

  while (v2);
  v29 = *(a1 + 16);
  if (!v29)
  {
    v82 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    v105 = MEMORY[0x277D84F90];
    v104 = v130;
    goto LABEL_48;
  }

  v30 = (a1 + 48);
  v129 = MEMORY[0x277D84F90];
  v125 = *(a1 + 16);
  do
  {
    v31 = *(v30 - 2);
    v32 = *(v30 - 1);
    v34 = *v30;
    v33 = v30[1];
    v35 = *(v30 + 16);
    v36 = *(v30 + 17);
    v37 = *(v30 + 24);
    v38 = *(v30 + 25) | ((*(v30 + 29) | (*(v30 + 31) << 16)) << 32);
    v39 = *(v30 + 32);
    v40 = *(v30 + 40);
    v30 += 8;
    switch(v40 >> 6)
    {
      case 1u:
        v48 = v35;
        v49 = v33;
        v50 = v37;
        v44 = swift_allocObject();
        *(v44 + 16) = v31;
        *(v44 + 24) = v32;
        *(v44 + 32) = v34;
        *(v44 + 40) = v49;
        *(v44 + 48) = v48 & 1;
        *(v44 + 56) = v50;
        *(v44 + 63) = BYTE6(v38);
        *(v44 + 61) = WORD2(v38);
        *(v44 + 57) = v38;
        v45 = &_s26SongStructureDownbeatEventVN;
        v46 = &off_2884127C8;
        *(v44 + 64) = v39 & 1;
        goto LABEL_18;
      case 2u:
        v127 = v37;
        v43 = swift_allocObject();
        v44 = OUTLINED_FUNCTION_26(v43);
        *(v44 + 49) = v36;
        v45 = &_s33SongStructureSegmentBoundaryEventVN;
        v46 = &off_288412B08;
        *(v44 + 56) = v127 & 1;
        goto LABEL_18;
      case 3u:
        OUTLINED_FUNCTION_30();
        v47 = swift_allocObject();
        v44 = OUTLINED_FUNCTION_26(v47);
        v45 = &_s33SongStructureSectionBoundaryEventVN;
        v46 = &off_288412A20;
        *(v44 + 49) = v36;
LABEL_18:
        v133 = 0;
        v132 = v44;
        v134 = v45;
        v135 = v46;
        OUTLINED_FUNCTION_29();
        v42 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = OUTLINED_FUNCTION_6_1();
          sub_275431470(v53, v54, v55, v129);
          v42 = v56;
        }

        v52 = *(v42 + 16);
        v51 = *(v42 + 24);
        if (v52 >= v51 >> 1)
        {
          v57 = OUTLINED_FUNCTION_11(v51);
          sub_275431470(v57, v52 + 1, 1, v42);
          v42 = v58;
        }

        *(v42 + 16) = v52 + 1;
        sub_2753F16E0(&v136, v42 + 40 * v52 + 32);
        break;
      default:
        v41 = OUTLINED_FUNCTION_15();
        sub_2753FC520(v41, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
        v42 = v129;
        break;
    }

    v129 = v42;
    --v29;
  }

  while (v29);
  v59 = MEMORY[0x277D84F90];
  v60 = (a1 + 48);
  v61 = v125;
  do
  {
    v62 = *(v60 - 2);
    v63 = *(v60 - 1);
    v65 = *v60;
    v64 = v60[1];
    v66 = v60[2];
    v67 = *(v60 + 40) >> 6;
    if (v67 == 3)
    {
      OUTLINED_FUNCTION_30();
      v69 = swift_allocObject();
      *(v69 + 16) = v62;
      *(v69 + 24) = v63;
      *(v69 + 32) = v65;
      *(v69 + 40) = v64;
      v70 = &off_2884129D8;
      v71 = &_s33SongStructureSectionBoundaryEventVN;
      *(v69 + 48) = v66;
    }

    else
    {
      if (v67 != 2)
      {
        v74 = OUTLINED_FUNCTION_15();
        sub_2753FC520(v74, &qword_2809DAF10, &qword_2809DAF18, &protocol descriptor for TransitionPlannerSegmentBoundaryEvent);
        goto LABEL_35;
      }

      v68 = *(v60 + 24);
      v69 = swift_allocObject();
      *(v69 + 16) = v62;
      *(v69 + 24) = v63;
      *(v69 + 32) = v65;
      *(v69 + 40) = v64;
      *(v69 + 48) = v66;
      v70 = &off_288412AD8;
      v71 = &_s33SongStructureSegmentBoundaryEventVN;
      *(v69 + 56) = v68 & 1;
    }

    v133 = 0;
    v132 = v69;
    v134 = v71;
    v135 = v70;
    OUTLINED_FUNCTION_29();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = OUTLINED_FUNCTION_6_1();
      sub_275431440(v75, v76, v77, v59);
      v59 = v78;
    }

    v73 = *(v59 + 16);
    v72 = *(v59 + 24);
    if (v73 >= v72 >> 1)
    {
      v79 = OUTLINED_FUNCTION_11(v72);
      sub_275431440(v79, v73 + 1, 1, v59);
      v59 = v80;
    }

    *(v59 + 16) = v73 + 1;
    sub_2753F16E0(&v136, v59 + 40 * v73 + 32);
LABEL_35:
    v60 += 8;
    --v61;
  }

  while (v61);
  v81 = (a1 + 88);
  v82 = MEMORY[0x277D84F90];
  v83 = v125;
  do
  {
    if (*v81 >= 0xC0u)
    {
      v85 = *(v81 - 7);
      v126 = *(v81 - 2);
      v128 = *(v81 - 3);
      OUTLINED_FUNCTION_30();
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 40) = v126;
      *(v86 + 24) = v128;
      v133 = 0;
      v132 = v86;
      v134 = &_s33SongStructureSectionBoundaryEventVN;
      v135 = &off_2884129F0;
      OUTLINED_FUNCTION_29();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = OUTLINED_FUNCTION_6_1();
        sub_275431410(v98, v99, v100, v82);
        v82 = v101;
      }

      v88 = *(v82 + 16);
      v87 = *(v82 + 24);
      v89 = v83;
      if (v88 >= v87 >> 1)
      {
        v102 = OUTLINED_FUNCTION_11(v87);
        sub_275431410(v102, v88 + 1, 1, v82);
        v82 = v103;
      }

      __swift_mutable_project_boxed_opaque_existential_1(&v136, v138);
      OUTLINED_FUNCTION_7_1();
      MEMORY[0x28223BE20](v90);
      OUTLINED_FUNCTION_18();
      v93 = (v92 - v91);
      (*(v94 + 16))(v92 - v91);
      v95 = *v93;
      v134 = &_s33SongStructureSectionBoundaryEventVN;
      v135 = &off_2884129F0;
      OUTLINED_FUNCTION_30();
      v96 = swift_allocObject();
      *&v132 = v96;
      *(v96 + 16) = v95;
      v97 = *(v93 + 1);
      *(v96 + 40) = *(v93 + 3);
      *(v96 + 24) = v97;
      *(v82 + 16) = v88 + 1;
      sub_2753F16E0(&v132, v82 + 40 * v88 + 32);
      __swift_destroy_boxed_opaque_existential_1(&v136);
      v83 = v89;
    }

    else
    {
      v84 = OUTLINED_FUNCTION_15();
      sub_2753FC520(v84, &qword_2809DAEE8, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
    }

    v81 += 64;
    --v83;
  }

  while (v83);
  v105 = v129;
  v104 = v130;
LABEL_48:

  v106 = sub_27544FBA0(1, v105);
  *&v136 = v105;
  *(&v136 + 1) = v106;
  v137 = v107;
  v138 = v108;
  v139 = v109;

  v110 = sub_2753F8F68(&v136);
  swift_unknownObjectRelease();

  v111 = sub_27544FBA0(1, v59);
  *&v132 = v59;
  *(&v132 + 1) = v111;
  v133 = v112;
  v134 = v113;
  v135 = v114;

  v115 = sub_2753F92A8(&v132);
  swift_unknownObjectRelease();

  v131[0] = v82;
  v131[1] = sub_27544FBA0(1, v82);
  v131[2] = v116;
  v131[3] = v117;
  v131[4] = v118;

  v119 = sub_2753F95E8(v131);
  swift_unknownObjectRelease();

  result = sub_2753F6400(v110);
  *a2 = a1;
  a2[1] = v104;
  a2[2] = v105;
  a2[3] = v59;
  a2[4] = v82;
  a2[5] = v110;
  a2[6] = v115;
  a2[7] = v119;
  a2[8] = result;
  return result;
}

uint64_t sub_2753FA740@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  OUTLINED_FUNCTION_0_0();
  result = v9(v7, v8);
  v11 = result - a2;
  if (__OFSUB__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v3 + 16);
    v13 = *(v12 + 16);
    v14 = v12 + 32;
    if (v13)
    {
      while (1)
      {
        sub_2753F161C(v14, &v18);
        v15 = v19;
        v16 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, v19);
        OUTLINED_FUNCTION_0_0();
        if (v17(v15, v16) >= v11)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(&v18);
        v14 += 40;
        if (!--v13)
        {
          goto LABEL_5;
        }
      }

      sub_2753F16E0(&v18, v21);
      sub_2753F16E0(v21, v22);
      sub_2753F16E0(v22, a3);
    }

    else
    {
LABEL_5:
      sub_2753F161C(a1, a3);
    }

    return sub_2753F161C(a1, a3 + 40);
  }

  return result;
}

uint64_t sub_2753FA864@<X0>(uint64_t a1@<X8>)
{
  sub_2753FA9B8(&v13);
  if (v14)
  {
    sub_2753F16E0(&v13, v16);
    v3 = v17;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    OUTLINED_FUNCTION_0_0();
    v5 = v4(v3) % 4;
    v6 = *(v1 + 16);
    v7 = *(v6 + 16);
    v8 = v6 + 32;
    if (v7)
    {
      while (1)
      {
        sub_2753F161C(v8, &v13);
        v9 = v14;
        v10 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, v14);
        OUTLINED_FUNCTION_0_0();
        if (v11(v9, v10) == v5)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(&v13);
        v8 += 40;
        if (!--v7)
        {
          goto LABEL_5;
        }
      }

      sub_2753F16E0(&v13, a1);
    }

    else
    {
LABEL_5:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    result = sub_2753FC520(&v13, &qword_2809DAEE8, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_2753FA9B8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  swift_bridgeObjectRetain_n();
  v43[0] = v3;
  v43[1] = sub_27544FBA0(1, v3);
  v43[2] = v4;
  v43[3] = v5;
  v43[4] = v6;
  v7 = sub_2753F9928(v43);
  swift_unknownObjectRelease();

  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v7 + 32; ; i += 48)
  {
    if (v9 == v8)
    {

      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      goto LABEL_8;
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      return;
    }

    sub_2753FC404(i, &v33, sub_2753FC38C);
    if ((BYTE8(v35) & 3) == 0)
    {
      break;
    }

    ++v8;
    OUTLINED_FUNCTION_10_0();
    sub_2753FC4BC(&v33, v11);
  }

  v37 = v33;
  v38 = v34;
  v39 = v35;
LABEL_8:
  v12 = sub_2753FC404(&v37, &v33, sub_2753FC464);
  if (*(&v34 + 1))
  {
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_2753F161C(&v29, &v40);
    OUTLINED_FUNCTION_10_0();
    v21 = sub_2753FC4BC(&v29, v20);
    OUTLINED_FUNCTION_12(v21, v22, v23, v24, v25, v26, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36);
    if (*(&v41 + 1))
    {
      sub_2753F16E0(&v40, a1);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12(v12, v13, v14, v15, v16, v17, v18, v19, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33, *(&v33 + 1), v34, 0, v35, *(&v35 + 1), v36);
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
  }

  sub_2753F8E44(v3, a1);
  if (*(&v41 + 1))
  {
    sub_2753FC520(&v40, &qword_2809DAEE8, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
  }
}