uint64_t sub_261145384(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  swift_retain_n();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  MEMORY[0x2666F9C60](&v13, v4);
  *&v11 = v3;
  if (v13)
  {
    sub_26115A5B4();
    sub_261147470(&qword_27FE81C10, MEMORY[0x277D433F0], MEMORY[0x277D433F8]);
    v5 = sub_26115B664();
  }

  else
  {

    v5 = 0;
  }

  v6 = *(a2 + 8);
  v13 = v3;
  v14 = v5 & 1;
  v15 = xmmword_261160C90;
  v16 = 0x4056000000000000;
  v17 = v6;
  v7 = swift_allocObject();
  v8 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  v9 = *(a2 + 48);
  *(v7 + 48) = *(a2 + 32);
  *(v7 + 64) = v9;
  *(v7 + 80) = v3;

  sub_261146CD4(a2, &v11);
  sub_261145854();
  sub_26115B364();
}

uint64_t sub_261145538(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B68, &qword_261160CA8);
  return sub_26115B594();
}

uint64_t sub_26114559C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  return sub_26114434C(v5, a1);
}

uint64_t sub_2611455E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261145628(uint64_t result, int a2, int a3)
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

unint64_t sub_26114568C()
{
  result = qword_27FE81B70;
  if (!qword_27FE81B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81B78, &qword_261160D78);
    sub_261145710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B70);
  }

  return result;
}

unint64_t sub_261145710()
{
  result = qword_27FE81B80;
  if (!qword_27FE81B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81B88, &qword_261160D80);
    sub_26114579C();
    sub_26110CC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B80);
  }

  return result;
}

unint64_t sub_26114579C()
{
  result = qword_27FE81B90;
  if (!qword_27FE81B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81B98, &qword_261160D88);
    sub_261145854();
    swift_getOpaqueTypeConformance2();
    sub_2611458A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81B90);
  }

  return result;
}

unint64_t sub_261145854()
{
  result = qword_27FE81BA0;
  if (!qword_27FE81BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81BA0);
  }

  return result;
}

unint64_t sub_2611458A8()
{
  result = qword_27FE81BA8;
  if (!qword_27FE81BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81BB0, &qword_261160D90);
    sub_26111EDDC(&qword_27FE81BB8, &qword_27FE81BC0, &qword_261160D98, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81BA8);
  }

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

uint64_t sub_261145974(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2611459BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_261145A34@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_26115B4E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_26115A534() & 1) == 0)
  {
    v13 = sub_26115A5A4();
    if (v14 >> 60 != 15)
    {
      v15 = v13;
      v16 = v14;
      v17 = objc_allocWithZone(MEMORY[0x277D755B8]);
      sub_2611478E0(v15, v16);
      v18 = sub_26115A1F4();
      v19 = [v17 initWithData_];

      sub_26112B158(v15, v16);
      if (v19)
      {
        sub_26115B4C4();
        sub_26112B158(v15, v16);
LABEL_8:
        (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
        v20 = sub_26115B504();

        (*(v4 + 8))(v6, v3);
        sub_26115B5C4();
        sub_26115AEC4();
        v29 = v43;
        v31 = v35;
        v38 = v40;
        v37 = v42;
        v34 = 1;
        v24 = v20;
        v25 = v39;
        LOBYTE(v26) = v40;
        v27 = v41;
        LOBYTE(v28) = v42;
        v30 = 256;
        v32 = v36;
        v33 = 1;
        goto LABEL_9;
      }

      sub_26112B158(v15, v16);
    }

    sub_26115B4D4();
    goto LABEL_8;
  }

  sub_26115B4D4();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = sub_26115B504();

  (*(v4 + 8))(v6, v3);
  v8 = sub_26115B484();
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  v10 = sub_26115B4B4();
  sub_26115B264();
  sub_26115B284();
  v11 = sub_26115B2B4();

  KeyPath = swift_getKeyPath();
  sub_26115B5C4();
  sub_26115AEC4();
  LOBYTE(v39) = 0;
  v24 = v7;
  v25 = v8;
  v26 = v10;
  v27 = KeyPath;
  v28 = v11;
  HIWORD(v32) = 256;
  v33 = 0;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CE8, &qword_261160FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81CF0, &qword_261160FF8);
  sub_2611474F0();
  sub_2611477A4();
  sub_26115B104();
  v21 = v47;
  a1[2] = v46;
  a1[3] = v21;
  a1[4] = v48[0];
  *(a1 + 75) = *(v48 + 11);
  result = *&v44;
  v23 = v45;
  *a1 = v44;
  a1[1] = v23;
  return result;
}

uint64_t sub_261145E64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v22 = sub_26115B064();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26115B154();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BC8, &qword_261160E30);
  v18 = *(v8 - 8);
  v19 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v11 = sub_26115B074();
  v25 = 1;
  sub_261146204(v2, v28);
  memcpy(v26, v28, sizeof(v26));
  memcpy(v27, v28, sizeof(v27));
  sub_26110CE78(v26, v23, &qword_27FE81BD0, &qword_261160E38);
  sub_26110CEE0(v27, &qword_27FE81BD0, &qword_261160E38);
  memcpy(&v24[7], v26, 0x128uLL);
  v23[0] = v11;
  v23[1] = 0;
  LOBYTE(v23[2]) = v25;
  memcpy(&v23[2] + 1, v24, 0x12FuLL);
  sub_26115B144();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81BD8, &unk_261160E40);
  v13 = sub_26111EDDC(&qword_27FE81BE0, &qword_27FE81BD8, &unk_261160E40, MEMORY[0x277CE1198]);
  sub_26115B3E4();
  (*(v5 + 8))(v7, v17);
  memcpy(v28, v23, 0x140uLL);
  sub_26110CEE0(v28, &qword_27FE81BD8, &unk_261160E40);
  if (*(v16[1] + 8))
  {
    sub_26115B044();
  }

  else
  {
    sub_26115B054();
  }

  v23[0] = v12;
  v23[1] = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v19;
  sub_26115B404();
  (*(v20 + 8))(v4, v22);
  return (*(v18 + 8))(v10, v14);
}

uint64_t sub_261146204@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81248, &qword_26115E930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v66 - v5;
  v87 = sub_26115B2D4();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26115B5C4();
  v90 = v10;
  v91 = v9;
  v89 = *(a1 + 8);
  v12 = *(a1 + 3);
  v11 = a1[4];
  v13 = *a1;
  sub_261146C50(a1, &v146);
  v88 = sub_26115B254();
  sub_26115AE24();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v133 = 0;
  if (a1[5])
  {
    v84 = a2;
    sub_26115B5C4();
    sub_26115AEC4();
    v82 = v136;
    v83 = v134;
    v80 = v139;
    v81 = v138;
    LOBYTE(v120[0]) = 1;
    LOBYTE(v98[0]) = v135;
    LOBYTE(v113) = v137;
    v22 = sub_26115A594();
    v86 = v13;
    if (!v23)
    {
      v22 = sub_26115A584();
      if (!v23)
      {
        v22 = 0;
        v23 = 0xE000000000000000;
      }
    }

    *&v146 = v22;
    *(&v146 + 1) = v23;
    v72 = sub_2611123E4();
    v24 = sub_26115B314();
    v78 = v25;
    v79 = v24;
    v27 = v26;
    v28 = *MEMORY[0x277CE0A68];
    v29 = v85;
    v71 = *(v85 + 104);
    v30 = v87;
    v71(v8, v28, v87);
    v69 = sub_26115B274();
    v31 = *(v69 - 8);
    v68 = *(v31 + 56);
    v70 = v31 + 56;
    v68(v6, 1, 1, v69);
    sub_26115B2A4();
    sub_26110CEE0(v6, &qword_27FE81248, &qword_26115E930);
    v67 = *(v29 + 8);
    v67(v8, v30);
    v66 = v8;
    v32 = v6;
    v33 = v27;
    v35 = v78;
    v34 = v79;
    v74 = sub_26115B2F4();
    v75 = v36;
    v73 = v37;
    v76 = v38;

    sub_261146CA8(v34, v35, v33 & 1);

    sub_26115B5C4();
    sub_26115AEC4();
    v85 = v140;
    v78 = v144;
    v79 = v142;
    v77 = v145;
    v97 = 1;
    v96 = v141;
    v95 = v143;
    *&v146 = sub_26115A544();
    *(&v146 + 1) = v39;
    v72 = sub_26115B314();
    v41 = v40;
    LOBYTE(v35) = v42;
    v43 = v66;
    v44 = v87;
    v71(v66, *MEMORY[0x277CE0AB0], v87);
    v68(v32, 1, 1, v69);
    sub_26115B2A4();
    sub_26110CEE0(v32, &qword_27FE81248, &qword_26115E930);
    v67(v43, v44);
    LOBYTE(v29) = v35;
    v45 = v72;
    v46 = sub_26115B2F4();
    v48 = v47;
    LOBYTE(v43) = v49;
    v87 = v50;

    sub_261146CA8(v45, v41, v29 & 1);

    sub_26115B4A4();
    v51 = sub_26115B2E4();
    v53 = v52;
    LOBYTE(v41) = v54;
    v67 = v55;

    sub_261146CA8(v46, v48, v43 & 1);

    LODWORD(v68) = LOBYTE(v120[0]);
    LODWORD(v69) = LOBYTE(v98[0]);
    LODWORD(v70) = v113;
    LOBYTE(v29) = v73 & 1;
    v94 = v29;
    LODWORD(v71) = v97;
    LODWORD(v72) = v96;
    v73 = v95;
    v93 = v29;
    LOBYTE(v34) = v41 & 1;
    v92 = v41 & 1;
    LODWORD(v87) = v41 & 1;
    v56 = v74;
    v57 = v75;
    sub_261146CB8(v74, v75, v29);
    v58 = v76;

    sub_261146CB8(v51, v53, v34);
    v59 = v67;

    sub_261146CA8(v51, v53, v34);

    sub_261146CA8(v56, v57, v94);

    *&v121 = 0;
    BYTE8(v121) = v68;
    *&v122 = v83;
    BYTE8(v122) = v69;
    *&v123 = v82;
    BYTE8(v123) = v70;
    *&v124 = v81;
    *(&v124 + 1) = v80;
    *&v125 = v56;
    *(&v125 + 1) = v57;
    LOBYTE(v126) = v29;
    *(&v126 + 1) = v58;
    *&v127 = 0;
    BYTE8(v127) = v71;
    *&v128 = v85;
    BYTE8(v128) = v72;
    *&v129 = v79;
    BYTE8(v129) = v73;
    *&v130 = v78;
    *(&v130 + 1) = v77;
    *&v131 = v51;
    *(&v131 + 1) = v53;
    LOBYTE(v132) = v87;
    *(&v132 + 1) = v59;
    nullsub_1();
    v154 = v129;
    v155 = v130;
    v156 = v131;
    v157 = v132;
    v150 = v125;
    v151 = v126;
    v152 = v127;
    v153 = v128;
    v146 = v121;
    v147 = v122;
    v148 = v123;
    v149 = v124;
    v60 = v84;
    v13 = v86;
  }

  else
  {
    sub_261146C88(&v146);
    v60 = a2;
  }

  v129 = v154;
  v130 = v155;
  v131 = v156;
  v132 = v157;
  v125 = v150;
  v126 = v151;
  v127 = v152;
  v128 = v153;
  v121 = v146;
  v122 = v147;
  v123 = v148;
  v124 = v149;
  v62 = v90;
  v61 = v91;
  *&v113 = v91;
  *(&v113 + 1) = v90;
  v64 = v88;
  v63 = v89;
  LOBYTE(v114) = v89;
  *(&v114 + 1) = v159[0];
  DWORD1(v114) = *(v159 + 3);
  *(&v114 + 1) = v12;
  *&v115 = v11 + 10.0;
  *(&v115 + 1) = v13;
  *&v116 = v11;
  BYTE8(v116) = v88;
  *(&v116 + 9) = *v158;
  HIDWORD(v116) = *&v158[3];
  *&v117 = v15;
  *(&v117 + 1) = v17;
  *&v118 = v19;
  *(&v118 + 1) = v21;
  *&v112[32] = v115;
  *&v112[48] = v116;
  *v112 = v113;
  *&v112[16] = v114;
  *&v112[64] = v117;
  *&v112[80] = v118;
  v120[3] = v149;
  v120[2] = v148;
  v120[1] = v147;
  v120[0] = v146;
  v120[7] = v153;
  v120[6] = v152;
  v120[5] = v151;
  v120[4] = v150;
  v120[10] = v156;
  v120[11] = v157;
  v120[8] = v154;
  v120[9] = v155;
  *&v112[264] = v156;
  *&v112[280] = v157;
  *&v112[232] = v154;
  *&v112[248] = v155;
  *&v112[168] = v150;
  *&v112[184] = v151;
  *&v112[200] = v152;
  *&v112[216] = v153;
  v119 = 0;
  v112[96] = 0;
  *&v112[104] = v146;
  *&v112[120] = v147;
  *&v112[136] = v148;
  *&v112[152] = v149;
  memcpy(v60, v112, 0x128uLL);
  sub_26110CE78(&v113, v98, &qword_27FE81BE8, &qword_261160E50);
  sub_26110CE78(v120, v98, &qword_27FE81BF0, &qword_261160E58);
  sub_26110CEE0(&v121, &qword_27FE81BF0, &qword_261160E58);
  v98[0] = v61;
  v98[1] = v62;
  v99 = v63;
  *v100 = v159[0];
  *&v100[3] = *(v159 + 3);
  v101 = v12;
  v102 = v11 + 10.0;
  v103 = v13;
  v104 = v11;
  v105 = v64;
  *v106 = *v158;
  *&v106[3] = *&v158[3];
  v107 = v15;
  v108 = v17;
  v109 = v19;
  v110 = v21;
  v111 = 0;
  return sub_26110CEE0(v98, &qword_27FE81BE8, &qword_261160E50);
}

double sub_261146B00@<D0>(uint64_t a2@<X8>)
{
  v5 = sub_26115B484();
  sub_26115AE74();
  v6 = sub_26115B5C4();
  v8 = v7;
  sub_26115B5C4();
  sub_26115AEC4();
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v5;
  *(a2 + 48) = 256;
  *(a2 + 56) = v6;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;
  *(a2 + 88) = v11;
  result = *&v12;
  *(a2 + 104) = v12;
  return result;
}

double sub_261146C88(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_261146CA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_261146CB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_261146D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B98, &qword_261160D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261146D88()
{
  result = qword_27FE81C48;
  if (!qword_27FE81C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C40, &qword_261160EA0);
    sub_261146E40();
    sub_26111EDDC(&qword_27FE81C80, &qword_27FE81C88, &qword_261160EC0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81C48);
  }

  return result;
}

unint64_t sub_261146E40()
{
  result = qword_27FE81C50;
  if (!qword_27FE81C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C58, &qword_261160EA8);
    sub_26111EDDC(&qword_27FE81C60, &qword_27FE81C68, &qword_261160EB0, MEMORY[0x277CE1138]);
    sub_26111EDDC(&qword_27FE81C70, &qword_27FE81C78, &qword_261160EB8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81C50);
  }

  return result;
}

unint64_t sub_261146F24()
{
  result = qword_27FE81C90;
  if (!qword_27FE81C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C18, &qword_261160E78);
    sub_26111EDDC(&qword_27FE81C98, &qword_27FE81C30, &qword_261160E90, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81C90);
  }

  return result;
}

unint64_t sub_261146FDC()
{
  result = qword_27FE81CA8;
  if (!qword_27FE81CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C38, &qword_261160E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C20, &qword_261160E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81C18, &qword_261160E78);
    sub_261146F24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81CA8);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2611471A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t getEnumTagSinglePayload for PASUIPickerPresentableView.SelectionView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PASUIPickerPresentableView.SelectionView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_261147344()
{
  result = qword_27FE81CD0;
  if (!qword_27FE81CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81CD8, qword_261160F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81BD8, &unk_261160E40);
    sub_26111EDDC(&qword_27FE81BE0, &qword_27FE81BD8, &unk_261160E40, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_261147470(&qword_27FE81CE0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81CD0);
  }

  return result;
}

uint64_t sub_261147470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2611474F0()
{
  result = qword_27FE81CF8;
  if (!qword_27FE81CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81CE8, &qword_261160FF0);
    sub_2611475A8();
    sub_26111EDDC(&qword_27FE81D40, &qword_27FE81D48, &qword_261161028, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81CF8);
  }

  return result;
}

unint64_t sub_2611475A8()
{
  result = qword_27FE81D00;
  if (!qword_27FE81D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D08, &qword_261161000);
    sub_261147634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D00);
  }

  return result;
}

unint64_t sub_261147634()
{
  result = qword_27FE81D10;
  if (!qword_27FE81D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D18, &qword_261161008);
    sub_2611476EC();
    sub_26111EDDC(&qword_27FE81278, &qword_27FE81280, &qword_26115E9B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D10);
  }

  return result;
}

unint64_t sub_2611476EC()
{
  result = qword_27FE81D20;
  if (!qword_27FE81D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D28, &qword_261161010);
    sub_26111EDDC(&qword_27FE81D30, &qword_27FE81D38, &unk_261161018, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D20);
  }

  return result;
}

unint64_t sub_2611477A4()
{
  result = qword_27FE81D50;
  if (!qword_27FE81D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81CF0, &qword_261160FF8);
    sub_26114785C();
    sub_26111EDDC(&qword_27FE81D40, &qword_27FE81D48, &qword_261161028, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D50);
  }

  return result;
}

unint64_t sub_26114785C()
{
  result = qword_27FE81D58;
  if (!qword_27FE81D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D60, &qword_261161030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D58);
  }

  return result;
}

uint64_t sub_2611478E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_261147940()
{
  result = qword_27FE81D68;
  if (!qword_27FE81D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D70, &qword_261161068);
    sub_2611474F0();
    sub_2611477A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D68);
  }

  return result;
}

unint64_t sub_2611479D0()
{
  result = qword_27FE81D78;
  if (!qword_27FE81D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81D80, &qword_261161070);
    sub_26111EDDC(&qword_27FE81D88, &qword_27FE81D90, &qword_261161078, MEMORY[0x277CDFB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81D78);
  }

  return result;
}

uint64_t PASFlowStepTargetProtoAccountStart.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81D98, &qword_261161080);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = v0;
  v8 = sub_261147C20();
  sub_26115B414();
  (*(v2 + 16))(v5, v7, v1);
  v11[0] = &type metadata for PASUITargetProtoAccountStartView;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v9;
}

unint64_t sub_261147C20()
{
  result = qword_27FE81DA0;
  if (!qword_27FE81DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81DA0);
  }

  return result;
}

uint64_t sub_261147C74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81D98, &qword_261161080);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = *v0;
  v8 = sub_261147C20();
  sub_26115B414();
  (*(v2 + 16))(v5, v7, v1);
  v11[0] = &type metadata for PASUITargetProtoAccountStartView;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_261147E24(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return sub_261131A7C(result, a2);
  }

  return result;
}

uint64_t sub_261147E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2)
  {
    if (a4)
    {
      return sub_261131C14(a1, a2, a3, a4);
    }
  }

  return result;
}

void sub_261147E88(uint64_t (**a1)(uint64_t result, uint64_t a2)@<X8>)
{
  *a1 = sub_261147E24;
  a1[1] = 0;
  a1[2] = sub_261147E44;
  a1[3] = 0;
}

unint64_t sub_261147EB8()
{
  result = qword_27FE81DA8;
  if (!qword_27FE81DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81DA8);
  }

  return result;
}

uint64_t PASFlowStepTargetStart.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81DB0, &qword_261161160);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = v0;
  v8 = sub_26114808C();
  sub_26115B414();
  (*(v2 + 16))(v5, v7, v1);
  v11[0] = &type metadata for PASUITargetStartView;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v9;
}

unint64_t sub_26114808C()
{
  result = qword_27FE81DB8;
  if (!qword_27FE81DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81DB8);
  }

  return result;
}

uint64_t sub_2611480E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81DB0, &qword_261161160);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = *v0;
  v8 = sub_26114808C();
  sub_26115B414();
  (*(v2 + 16))(v5, v7, v1);
  v11[0] = &type metadata for PASUITargetStartView;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_261148290(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return sub_261122874(result, a2);
  }

  return result;
}

uint64_t sub_2611482B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2)
  {
    if (a4)
    {
      return sub_261122A0C(a1, a2, a3, a4);
    }
  }

  return result;
}

void sub_2611482F4(uint64_t a1@<X8>)
{
  *a1 = sub_261148290;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_2611482B0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 56) = 0;
  *(a1 + 64) = v1;
}

uint64_t PASFlowStepRepairFamily.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81DC0, &unk_261161240);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  v8 = sub_26115A2E4();
  v12 = v0;
  v13 = v8;
  v9 = sub_2611484F4();
  sub_26115B414();

  (*(v2 + 16))(v5, v7, v1);
  v12 = &type metadata for PASUIRepairFamilyView;
  v13 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v10;
}

unint64_t sub_2611484F4()
{
  result = qword_27FE81DC8;
  if (!qword_27FE81DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81DC8);
  }

  return result;
}

uint64_t sub_261148548()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81DC0, &unk_261161240);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  swift_allocObject();
  v9 = sub_26115A2E4();
  v13 = v8;
  v14 = v9;
  v10 = sub_2611484F4();
  sub_26115B414();

  (*(v2 + 16))(v5, v7, v1);
  v13 = &type metadata for PASUIRepairFamilyView;
  v14 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v11;
}

double sub_26114872C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  sub_26115AF04();
  swift_retain_n();

  sub_26115B7B4();
  *v7 = &unk_261161330;
  v7[1] = v6;
  *a3 = sub_26110C934;
  *(a3 + 8) = a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_26110C93C;
  *(a3 + 32) = 0;
  *(a3 + 40) = sub_26110C970;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 1;
  *(a3 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26114883C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_26115B7A4();
  v2[3] = sub_26115B794();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_26110E430;

  return sub_2611488F8(a1, a2);
}

uint64_t sub_2611488F8(uint64_t a1, uint64_t a2)
{
  v2[53] = a1;
  v2[54] = a2;
  v3 = sub_26115AD64();
  v2[55] = v3;
  v2[56] = *(v3 - 8);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  sub_26115B7A4();
  v2[61] = sub_26115B794();
  v5 = sub_26115B774();
  v2[62] = v5;
  v2[63] = v4;

  return MEMORY[0x2822009F8](sub_261148A10, v5, v4);
}

uint64_t sub_261148A10(uint64_t a1)
{
  v52 = v1;
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B834();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUIRepairFamilyView repairFamilyForServicesSetup", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v5 = v1[60];
  v6 = v1[55];
  v7 = v1[56];

  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v1[64] = v9;
  v10 = sub_26115A834();
  v1[65] = v10;
  if (v10)
  {
    v11 = v10;
    v12 = sub_26115A844();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = v1[54];
      v48 = v1[53];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E18, &qword_26115D9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_261161230;
      *(inited + 32) = 0x64497265626D656DLL;
      *(inited + 40) = 0xE800000000000000;
      v18 = sub_26114993C();
      *(inited + 48) = v11;
      *(inited + 72) = v18;
      *(inited + 80) = 0x44495344746C61;
      v19 = MEMORY[0x277D837D0];
      *(inited + 88) = 0xE700000000000000;
      *(inited + 96) = v14;
      *(inited + 104) = v15;
      *(inited + 120) = v19;
      *(inited + 128) = 0x6574736575716572;
      *(inited + 136) = 0xE900000000000072;
      v20 = v11;
      v21 = sub_26115A384();
      type metadata accessor for AKAppleIDAuthenticationAppProvidedContext(0);
      *(inited + 168) = v22;
      *(inited + 144) = v21;
      sub_26110EC0C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E20, &qword_26115D9E8);
      swift_arrayDestroy();
      v23 = sub_26115B604();

      [v9 setAdditionalParameters_];

      sub_26115A2D4();
      v24 = v1[49];
      v25 = v1[50];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 46, v24);
      v26 = (*(v25 + 16))(v24, v25);
      v27 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
      v1[66] = v27;

      __swift_destroy_boxed_opaque_existential_1(v1 + 46);
      [v27 setPresentationType_];
      v28 = swift_allocObject();
      *(v28 + 16) = v48;
      *(v28 + 24) = v16;
      v1[44] = sub_261149988;
      v1[45] = v28;
      v1[40] = MEMORY[0x277D85DD0];
      v1[41] = 1107296256;
      v1[42] = sub_26113432C;
      v1[43] = &block_descriptor_7;
      v29 = _Block_copy(v1 + 40);

      [v27 setPresentationHandler_];
      _Block_release(v29);
      v1[2] = v1;
      v1[7] = v1 + 52;
      v1[3] = sub_261149138;
      v30 = swift_continuation_init();
      v1[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E10, qword_261161350);
      v1[32] = MEMORY[0x277D85DD0];
      v1[33] = 1107296256;
      v1[34] = sub_26110E56C;
      v1[35] = &block_descriptor_10;
      v1[36] = v30;
      [v27 performWithContext:v9 completion:?];

      return MEMORY[0x282200938](v1 + 2);
    }
  }

  v31 = sub_26115AAB4();
  sub_261149B08(&qword_27FE81DD0, MEMORY[0x277D43500], MEMORY[0x277D43508]);
  v32 = swift_allocError();
  (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D434F8], v31);
  swift_willThrow();

  sub_26115AD44();
  v34 = v32;
  v35 = sub_26115AD54();
  v36 = sub_26115B814();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v1[57];
  v39 = v1[55];
  if (v37)
  {
    v50 = v8;
    v40 = swift_slowAlloc();
    v49 = v38;
    v41 = swift_slowAlloc();
    v51 = v41;
    *v40 = 136446210;
    v1[51] = v32;
    v42 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v43 = sub_26115B6B4();
    v45 = sub_26111C268(v43, v44, &v51);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_261107000, v35, v36, "PASUIRepairFamilyView repairFamilyForServicesSetup failed: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x2666FA930](v41, -1, -1);
    MEMORY[0x2666FA930](v40, -1, -1);

    v50(v49, v39);
  }

  else
  {

    v8(v38, v39);
  }

  v46 = swift_task_alloc();
  v1[67] = v46;
  *v46 = v1;
  v46[1] = sub_2611496E8;

  return MEMORY[0x2821A48F8]();
}

uint64_t sub_261149138()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);

  return MEMORY[0x2822009F8](sub_261149240, v2, v1);
}

uint64_t sub_261149240(uint64_t a1)
{
  v45 = v1;
  v2 = v1[52];
  sub_26115AD44();
  v3 = v2;
  v4 = sub_26115AD54();
  v5 = sub_26115B834();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 141558274;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_261107000, v4, v5, "PASUIRepairFamilyView repairFamilyForServicesSetup got response %{mask.hash}@", v6, 0x16u);
    sub_26112F444(v7);
    MEMORY[0x2666FA930](v7, -1, -1);
    MEMORY[0x2666FA930](v6, -1, -1);
  }

  v9 = v1[59];
  v10 = v1[55];
  v11 = v1[56];

  v12 = *(v11 + 8);
  v12(v9, v10);
  if ([v3 loadSuccess])
  {
    v13 = v1[66];
    v14 = v1[65];
    v15 = v1[64];
  }

  else
  {
    sub_26115AD44();
    v16 = sub_26115AD54();
    v17 = sub_26115B814();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_261107000, v16, v17, "PASUIRepairFamilyView repairFamilyForServicesSetup response: load fail", v18, 2u);
      MEMORY[0x2666FA930](v18, -1, -1);
    }

    v19 = v1[66];
    v20 = v1[65];
    v21 = v1[64];
    v22 = v1[58];
    v23 = v1[55];

    v12(v22, v23);
    v24 = sub_26115AAB4();
    sub_261149B08(&qword_27FE81DD0, MEMORY[0x277D43500], MEMORY[0x277D43508]);
    v25 = swift_allocError();
    v27 = v26;
    *v26 = [v3 error];
    (*(*(v24 - 8) + 104))(v27, *MEMORY[0x277D434F0], v24);
    swift_willThrow();

    sub_26115AD44();
    v28 = v25;
    v29 = sub_26115AD54();
    v30 = sub_26115B814();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[57];
    v33 = v1[55];
    if (v31)
    {
      v43 = v1[57];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136446210;
      v1[51] = v25;
      v36 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
      v37 = sub_26115B6B4();
      v42 = v12;
      v39 = sub_26111C268(v37, v38, &v44);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_261107000, v29, v30, "PASUIRepairFamilyView repairFamilyForServicesSetup failed: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x2666FA930](v35, -1, -1);
      MEMORY[0x2666FA930](v34, -1, -1);

      v42(v43, v33);
    }

    else
    {

      v12(v32, v33);
    }
  }

  v40 = swift_task_alloc();
  v1[67] = v40;
  *v40 = v1;
  v40[1] = sub_2611496E8;

  return MEMORY[0x2821A48F8]();
}

uint64_t sub_2611496E8()
{
  v1 = *v0;

  v2 = *(v1 + 504);
  v3 = *(v1 + 496);

  return MEMORY[0x2822009F8](sub_261149808, v3, v2);
}

uint64_t sub_261149808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2611498A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26110CAC4;

  return sub_26114883C(v2, v3);
}

unint64_t sub_26114993C()
{
  result = qword_27FE81DD8;
  if (!qword_27FE81DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE81DD8);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  return sub_2611105C8(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_9(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t sub_2611499D0()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v4 = sub_26115AD54();
  v5 = sub_26115B834();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_261107000, v4, v5, "PASUIRepairFamilyView familyCirclePresentationHandler", v6, 2u);
    MEMORY[0x2666FA930](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_261149B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_261149B54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_261149BC0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_26115A1D4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_261149D60()
{
  v1 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController;
  v2 = *(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController);
  }

  else
  {
    v4 = sub_261149DC4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_261149DC4(uint64_t a1)
{
  v2 = sub_26115A294();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_26115A2C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EC0, &qword_261161478);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_identity, v3);

  sub_26115A2A4();
  sub_26115B8A4();
  v11 = sub_26115B8B4();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_26115B8C4();
  [v10 setDelegate_];
  return v10;
}

void *sub_261149FE4()
{
  v1 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy;
  if (*(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy);
  }

  else
  {
    type metadata accessor for WeakHostWrapper();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    type metadata accessor for PASUIExtensionProxy();
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[5] = 0;
    swift_unknownObjectWeakInit();
    v2[3] = v3;
    v2[5] = &off_28739AA48;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_26114A0B8(void *a1, void *a2, int a3)
{
  v4 = v3;
  v8 = sub_26115AD64();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_finished;
  if (*(v4 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_finished) == 1)
  {
    sub_26115AD44();
    v18 = a3 & 1;
    sub_26114C004(a1, a2, a3 & 1);
    v19 = sub_26115AD54();
    v20 = sub_26115B814();
    sub_26114C050(a1, a2, v18);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v54 = v22;
      *v21 = 141558274;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2080;
      v51 = a1;
      v52 = a2;
      v53 = v18;
      sub_26114C004(a1, a2, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EB8, &qword_261161470);
      v23 = sub_26115B6B4();
      v25 = sub_26111C268(v23, v24, &v54);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_261107000, v19, v20, "PASUIHostViewController finish with result is discarding result %{mask.hash}s", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2666FA930](v22, -1, -1);
      MEMORY[0x2666FA930](v21, -1, -1);
    }

    return (*(v9 + 8))(v16, v8);
  }

  else
  {
    v48 = v14;
    v50 = v9;
    sub_26115AD44();
    v49 = a3;
    v27 = a3 & 1;
    sub_26114C004(a1, a2, v27);
    v28 = sub_26115AD54();
    v29 = sub_26115B7F4();
    sub_26114C050(a1, a2, v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v47 = v8;
      v31 = v30;
      v46 = swift_slowAlloc();
      v54 = v46;
      *v31 = 141558274;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2080;
      v51 = a1;
      v52 = a2;
      v53 = v27;
      sub_26114C004(a1, a2, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EB8, &qword_261161470);
      v32 = sub_26115B6B4();
      v34 = sub_26111C268(v32, v33, &v54);

      *(v31 + 14) = v34;
      _os_log_impl(&dword_261107000, v28, v29, "PASUIHostViewController finish with result: %{mask.hash}s", v31, 0x16u);
      v35 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x2666FA930](v35, -1, -1);
      v36 = v31;
      v8 = v47;
      MEMORY[0x2666FA930](v36, -1, -1);
    }

    v37 = *(v50 + 8);
    v37(v13, v8);
    *(v4 + v17) = 1;
    if (v49)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_26115AD44();
      v38 = a1;
      v39 = sub_26115AD54();
      v40 = sub_26115B814();
      sub_26114C050(a1, a2, 1);
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543362;
        v43 = a1;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_261107000, v39, v40, "ExtensionViewControllerWrapper.Coordinator hostViewController didFailWith %{public}@", v41, 0xCu);
        sub_26112F444(v42);
        MEMORY[0x2666FA930](v42, -1, -1);
        MEMORY[0x2666FA930](v41, -1, -1);
      }

      v37(v48, v8);
      sub_26115AC84();
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_26112F090(a1, a2);
    }

    return swift_unknownObjectRelease();
  }
}

id sub_26114A620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUIExtensionHostViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PASUIExtensionHostViewController(uint64_t a1)
{
  result = qword_27FE81E10;
  if (!qword_27FE81E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26114A75C(uint64_t a1)
{
  result = sub_26115A2C4();
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

id sub_26114A814(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  result = [v8 isMainThread];
  if (result)
  {
    sub_26115AD44();
    v10 = a1;
    v11 = sub_26115AD54();
    v12 = sub_26115B7F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_261107000, v11, v12, "PASUIExtensionHostViewController hostViewControllerDidActivate: %{public}@", v13, 0xCu);
      sub_26112F444(v14);
      MEMORY[0x2666FA930](v14, -1, -1);
      MEMORY[0x2666FA930](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    result = [v8 isMainThread];
    if (result)
    {
      v16 = v2;
      v17 = sub_261149FE4();
      sub_2611310EC(v17, v16);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_26114AAE0()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = sub_261149D60();
  v5[0] = 0;
  v1 = [v0 makeXPCConnectionWithError_];

  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_26115A1E4();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_26114ABA4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26115B5D4();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26115B5F4();
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EC34();
  v23 = sub_26115B874();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = v22;
  v14[6] = v22;
  aBlock[4] = sub_26114BFF4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26113432C;
  aBlock[3] = &block_descriptor_49_0;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a2;

  v19 = v15;

  sub_26115B5E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261131538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
  sub_261131590();
  sub_26115B904();
  v20 = v23;
  MEMORY[0x2666F9F60](0, v13, v10, v16);
  _Block_release(v16);

  (*(v25 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v24);
}

uint64_t sub_26114AE58(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v32 = sub_26115AD64();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v12 = a1;
  v13 = a2;
  v14 = sub_26115AD54();
  v15 = sub_26115B7F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = a5;
    v21 = v20;
    v34 = v20;
    *v17 = 141558530;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    v22 = sub_26115AA24();
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = sub_26111C268(v22, v24, &v34);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2114;
    *(v17 + 24) = v13;
    *v19 = v13;
    v26 = v13;
    _os_log_impl(&dword_261107000, v14, v15, "PASUIExtensionHostViewController extensionDidFinish with account: %{mask.hash}s, context: %{public}@", v17, 0x20u);
    sub_26112F444(v19);
    v27 = v19;
    a3 = v30;
    MEMORY[0x2666FA930](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x2666FA930](v21, -1, -1);
    MEMORY[0x2666FA930](v17, -1, -1);

    (*(v29 + 8))(v11, v32);
  }

  else
  {

    (*(v9 + 8))(v11, v32);
  }

  a3(0);
  return sub_26114A0B8(v12, v13, 0);
}

uint64_t sub_26114B1A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26115B5D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26115B5F4();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EC34();
  v12 = sub_26115B874();
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_26114BF98;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26113432C;
  aBlock[3] = &block_descriptor_39;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_26115B5E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261131538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
  sub_261131590();
  sub_26115B904();
  MEMORY[0x2666F9F60](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_26114B438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_26115AD64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B7F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "PASUIExtensionHostViewController promptForFlowCancel", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_26112F2FC();
    swift_unknownObjectRelease();
  }

  return a2(0);
}

uint64_t sub_26114B684()
{
  sub_26115BA94();
  MEMORY[0x2666FA180](0);
  return sub_26115BAB4();
}

uint64_t sub_26114B6F0(uint64_t a1)
{
  sub_26115BA94();
  MEMORY[0x2666FA180](0);
  return sub_26115BAB4();
}

uint64_t sub_26114B82C()
{
  sub_26111D830(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26114B888(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_26114B8C0(void *a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  if ([objc_opt_self() isMainThread])
  {
    if (a1)
    {
      v9 = a1;
      sub_26115AD44();
      v10 = a1;
      v11 = sub_26115AD54();
      v12 = sub_26115B814();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138543362;
        v15 = a1;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_261107000, v11, v12, "PASUIExtensionHostViewController hostViewControllerWillDeactivate error: %{public}@", v13, 0xCu);
        sub_26112F444(v14);
        MEMORY[0x2666FA930](v14, -1, -1);
        MEMORY[0x2666FA930](v13, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
      v17 = a1;
      sub_26114A0B8(a1, 0, 1);
    }

    else
    {
      sub_26115AD44();
      v18 = sub_26115AD54();
      v19 = sub_26115B7F4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261107000, v18, v19, "PASUIExtensionHostViewController hostViewControllerWillDeactivate", v20, 2u);
        MEMORY[0x2666FA930](v20, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26114BB70(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v14[4] = sub_2611262F4;
    v14[5] = v7;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_261149B54;
    v14[3] = &block_descriptor_29;
    v10 = _Block_copy(v14);
    _Block_copy(a4);

    [v9 extensionDidFinishWith:a1 context:a2 completion:v10];
    _Block_release(v10);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_26114BEEC();
    v12 = swift_allocError();
    _Block_copy(a4);
    v13 = sub_26115A1D4();
    (a4)[2](a4, v13);
  }
}

uint64_t sub_26114BD20(uint64_t a1, void (**a2)(void, void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v10[4] = sub_261126120;
    v10[5] = v3;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_261149B54;
    v10[3] = &block_descriptor_8;
    v6 = _Block_copy(v10);
    _Block_copy(a2);

    [v5 promptForFlowCancelWithCompletion_];
    _Block_release(v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_26114BEEC();
    v8 = swift_allocError();
    _Block_copy(a2);
    v9 = sub_26115A1D4();
    (a2)[2](a2, v9);
  }
}

uint64_t sub_26114BEB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26114BEEC()
{
  result = qword_27FE81E88;
  if (!qword_27FE81E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81E88);
  }

  return result;
}

uint64_t sub_26114BF58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26114BFA4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_26114C004(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v5 = a1;
    a1 = a2;
  }

  return a1;
}

void sub_26114C050(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

unint64_t sub_26114C0B0()
{
  result = qword_27FE81EC8;
  if (!qword_27FE81EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81EC8);
  }

  return result;
}

id sub_26114C154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_26115AD64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277CFDAE8]) initWithCDPContext_];
  v13 = sub_26115B674();
  [v12 setFeatureName_];

  if (*(v5 + 24))
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v12 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  [v12 setDeviceToDeviceEncryptionUpgradeType_];
  sub_26115AD44();

  v15 = sub_26115AD54();
  v16 = sub_26115B804();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v9;
    v18 = v17;
    v33 = swift_slowAlloc();
    v37 = v33;
    *v18 = 136446210;

    sub_26115A2D4();

    v34 = v8;
    v36 = a4;
    v19 = v39;
    v20 = v40;
    __swift_project_boxed_opaque_existential_1Tm(v38, v39);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = [v21 description];
    v23 = sub_26115B6A4();
    v25 = v24;

    __swift_destroy_boxed_opaque_existential_1(v38);
    v26 = v23;
    a4 = v36;
    v27 = sub_26111C268(v26, v25, &v37);

    *(v18 + 4) = v27;
    _os_log_impl(&dword_261107000, v15, v16, "Passing view controller from PASUIManateeRepairHelperProvider: %{public}s", v18, 0xCu);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2666FA930](v28, -1, -1);
    MEMORY[0x2666FA930](v18, -1, -1);

    (*(v35 + 8))(v11, v34);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_26115A2D4();

  v29 = v39;
  v30 = v40;
  __swift_project_boxed_opaque_existential_1Tm(v38, v39);
  v31 = (*(v30 + 16))(v29, v30);
  [v12 setPresentingViewController_];

  __swift_destroy_boxed_opaque_existential_1(v38);
  [v12 setSecurityUpgradeContext_];
  return v12;
}

void PASUIManateeRepairHelperProvider.helper(withFeatureName:cdpContext:securityUpgradeContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = sub_26114C154(a1, a2, a3, a4);
  v7 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  a5[3] = sub_26114C540();
  a5[4] = sub_26114C58C();

  *a5 = v7;
}

unint64_t sub_26114C540()
{
  result = qword_27FE81ED0;
  if (!qword_27FE81ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE81ED0);
  }

  return result;
}

unint64_t sub_26114C58C()
{
  result = qword_27FE81ED8;
  if (!qword_27FE81ED8)
  {
    sub_26114C540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81ED8);
  }

  return result;
}

uint64_t PASUIManateeRepairHelperProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

void sub_26114C63C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = sub_26114C154(a1, a2, a3, a4);
  v7 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  a5[3] = sub_26114C540();
  a5[4] = sub_26114C58C();

  *a5 = v7;
}

uint64_t sub_26114C6D0()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_26114C7EC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EE0, &qword_261161678);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26114C944;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 performDeviceToDeviceEncryptionStateRepairWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26114C7EC(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v1 + 152);
    v3 = *(v2 + 8);
  }

  return v3(v4);
}

uint64_t sub_26114C944(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

void sub_26114CA50(void *a1)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81068, &unk_26115E300);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81070, &unk_261161BB0);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EE8, qword_261161750);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  sub_26115B6F4();
  v16 = sub_26115B674();

  [a1 setTitle_];

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA04();
  swift_unknownObjectRelease();
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0, MEMORY[0x277CBCEC8]);
  sub_26115AD74();
  sub_26112B474(0, &qword_27FE81E90, 0x277D85C78);
  v17 = sub_26115B874();
  v38 = v17;
  v18 = sub_26115B854();
  v19 = v32;
  (*(*(v18 - 8) + 56))(v32, 1, 1, v18);
  sub_26111EDDC(&qword_27FE81080, &qword_27FE81068, &unk_26115E300, MEMORY[0x277CBCAF0]);
  sub_26111EC80();
  v20 = v31;
  sub_26115ADC4();
  sub_26110CEE0(v19, &qword_27FE81058, &unk_26115E2F0);

  (*(v33 + 8))(v7, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E90, &qword_26115DBC8);
  sub_26111EDDC(&qword_27FE81090, &qword_27FE81070, &unk_261161BB0, MEMORY[0x277CBCD60]);
  v21 = v34;
  sub_26115ADB4();

  (*(v35 + 8))(v11, v21);
  swift_getKeyPath();
  v22 = v30;
  v38 = v30;
  sub_26111EDDC(&qword_27FE81EF0, &qword_27FE81EE8, qword_261161750, MEMORY[0x277CBCC08]);
  v23 = v36;
  sub_26115ADE4();

  (*(v37 + 8))(v15, v23);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  sub_26115B6F4();
  v24 = sub_26115B674();

  sub_26115B6F4();
  v25 = sub_26115B674();

  sub_26115B6F4();
  v26 = sub_26115B674();

  sub_26115B6F4();
  v27 = sub_26115B674();

  v28 = [v22 dismissalConfirmationActionWithTitle:v24 message:v25 confirmButtonTitle:v26 cancelButtonTitle:v27];

  [v22 setDismissButtonAction_];
}

uint64_t sub_26114D168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a4 && a2)
  {
    sub_26115B954();

    MEMORY[0x2666F9DF0](a3, a4);
    MEMORY[0x2666F9DF0](95, 0xE100000000000000);
    MEMORY[0x2666F9DF0](a1, a2);
    v9 = sub_26115B6F4();

    return v9;
  }

  return v5;
}

uint64_t sub_26114D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_26114E3BC(a1, &v18);
  v25 = v19;
  v24 = v18;
  v26 = v20;
  if (*(&v19 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v6 = sub_26115A694();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
  }

  else
  {
    sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
    sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
    v6 = 0;
    v8 = 0;
  }

  sub_26114E3BC(a1, &v18);
  v25 = v22;
  v24 = v21;
  v26 = v23;
  if (*(&v22 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v9 = sub_26115A694();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
  }

  else
  {
    sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
    sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
    v9 = 0;
    v11 = 0;
  }

  v12 = (*(*a2 + 152))(v6, v8, v9, v11);
  v14 = v13;

  *a3 = v12;
  a3[1] = v14;
  return result;
}

void sub_26114D4A8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 subtitle];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26115B6A4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_26114D510(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_26115B674();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSubtitle_];
}

uint64_t sub_26114D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_26115B7D4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_26115B7A4();

  v9 = sub_26115B794();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = a3;
  sub_261112D1C(0, 0, v7, &unk_261161748, v10);
}

void sub_26114D6D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26114D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_26115B7D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;

  sub_261112D1C(0, 0, v10, a5, v12);
}

uint64_t sub_26114D844(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26110CAC4;

  return v7();
}

uint64_t sub_26114D92C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_26114D9D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26115B6F4();
  sub_26115B6F4();
  v8 = sub_26115B674();

  v9 = sub_26115B674();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  sub_26115B6F4();
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;

  v12 = sub_26115B674();

  v26 = sub_26114DD60;
  v27 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_26114D6D0;
  v25 = &block_descriptor_10;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:1 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  sub_26115B6F4();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  v17 = sub_26115B674();

  v26 = sub_26114DDB0;
  v27 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_26114D6D0;
  v25 = &block_descriptor_16;
  v18 = _Block_copy(&aBlock);

  v19 = [v14 actionWithTitle:v17 style:2 handler:v18];
  _Block_release(v18);

  [v10 addAction_];
  [a1 presentViewController:v10 animated:1 completion:0];
}

uint64_t sub_26114DD28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26114DDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_26114D844(a1, v4, v5, v6);
}

uint64_t sub_26114DEAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110DB28;

  return sub_26113F504(a1, v4, v5, v6);
}

void sub_26114DF6C(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setContentMode_];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() systemBlueColor];
  }

  v7 = a3;
  [v5 setTintColor_];

  [objc_msgSend(a1 mainView)];
  swift_unknownObjectRelease();
  v8 = [objc_msgSend(a1 mainView)];
  swift_unknownObjectRelease();
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26115E240;
  v11 = [v5 topAnchor];
  v12 = [v8 topAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v5 bottomAnchor];
  v15 = [v8 bottomAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v5 centerXAnchor];
  v18 = [v8 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  v20 = [v5 centerYAnchor];

  v21 = [v8 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v10 + 56) = v22;
  sub_26112B474(0, &qword_27FE81050, 0x277CCAAD0);
  v23 = sub_26115B744();

  [v9 activateConstraints_];
}

uint64_t sub_26114E2E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110DB28;

  return sub_2611202E4(a1, v4, v5, v6);
}

uint64_t sub_26114E3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EF8, qword_261161790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_26114E440@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PASUIFamilyPickerProxCardAdapter();
  v3 = swift_allocObject();

  result = sub_26114E544(v4);
  *(a1 + 24) = v2;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_26114E4A8(uint64_t a1)
{
  sub_261150F70(&qword_27FE81F30, MEMORY[0x277D43480], MEMORY[0x277D433C0]);

  sub_26115AF34();
  sub_261150E00();
  return sub_26115B574();
}

void *sub_26114E544(uint64_t a1)
{
  v2 = v1;
  v1[5] = 0;
  v1[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F80, &unk_26115DD50);
  swift_allocObject();
  v1[7] = sub_26115A2E4();
  v1[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();

  v1[2] = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v4 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v2[3] = v4;
  return v2;
}

void sub_26114E624(char a1, id a2)
{
  if (*(v2 + 40))
  {
    [a2 removeAction_];
  }

  sub_26115B6F4();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_261161880;
  *(v5 + 24) = v4;
  swift_retain_n();
  v6 = sub_26115B674();

  v13[4] = sub_261151020;
  v13[5] = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26114D6D0;
  v13[3] = &block_descriptor_60;
  v7 = _Block_copy(v13);
  v8 = [objc_opt_self() actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v9 = [a2 addAction_];

  v10 = *(v2 + 40);
  *(v2 + 40) = v9;
  v11 = v9;

  v12 = sub_26115A794();
  if (v12)
  {
  }

  [v11 setEnabled_];
}

uint64_t sub_26114E84C(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_26115B7A4();
  *(v1 + 48) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26114E8E4, v3, v2);
}

uint64_t sub_26114E8E4()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_26115A7D4();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_26114E988(id a1)
{
  if (*(v1 + 48))
  {
    [a1 removeAction_];
  }

  sub_26115B6F4();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_261161870;
  *(v4 + 24) = v3;
  swift_retain_n();
  v5 = sub_26115B674();

  v11[4] = sub_26112D960;
  v11[5] = v4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_26114D6D0;
  v11[3] = &block_descriptor_50;
  v6 = _Block_copy(v11);
  v7 = [objc_opt_self() actionWithTitle:v5 style:1 handler:v6];

  _Block_release(v6);

  v8 = [a1 addAction_];

  v9 = *(v1 + 48);
  *(v1 + 48) = v8;
  v10 = v8;

  [v10 setEnabled_];
}

uint64_t sub_26114EB7C(uint64_t a1)
{
  v1[5] = a1;
  sub_26115B7A4();
  v1[6] = sub_26115B794();
  v3 = sub_26115B774();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_26114EC14, v3, v2);
}

uint64_t sub_26114EC14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[9] = *(Strong + 32);

    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_26114ED1C;

    return MEMORY[0x2821A48C8]();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_26114ED1C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26114EE60, v3, v2);
}

uint64_t sub_26114EE60()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26114EEC0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81298, &unk_26115E9C0);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81620, "Fp");
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F00, &unk_261161830);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  MEMORY[0x28223BE20](v11);
  v58 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F08, &qword_261161840);
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x28223BE20](v13);
  v59 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F10, &qword_261161848);
  v64 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v62 = &v51 - v16;
  v57 = sub_26115AD64();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  swift_unknownObjectRetain();
  v19 = sub_26115AD54();
  v20 = sub_26115B804();
  v21 = a1;
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    v53 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54 = v15;
    v52 = v24;
    v71 = a1;
    aBlock[0] = v24;
    *v23 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81660, &qword_26115F658);
    v25 = sub_26115B6B4();
    v27 = sub_26111C268(v25, v26, aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_261107000, v19, v20, "PASUIFamilyPickerProxCardAdapter attach to presenter: %{public}s", v23, 0xCu);
    v28 = v52;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v15 = v54;
    MEMORY[0x2666FA930](v28, -1, -1);
    MEMORY[0x2666FA930](v23, -1, -1);
  }

  (*(v55 + 8))(v18, v57);
  v56 = v21;
  sub_26114CA50(v21);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  v57 = *(v2 + 32);
  sub_26115A784();
  v29 = MEMORY[0x277CBCEC8];
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0, MEMORY[0x277CBCEC8]);
  sub_26111EDDC(&qword_27FE81F18, &qword_27FE81F00, &unk_261161830, v29);
  v30 = v59;
  sub_26115AD74();
  sub_26111EC34();
  v31 = sub_26115B874();
  aBlock[0] = v31;
  v32 = sub_26115B854();
  v33 = v63;
  (*(*(v32 - 8) + 56))(v63, 1, 1, v32);
  sub_26111EDDC(&qword_27FE81F20, &qword_27FE81F08, &qword_261161840, MEMORY[0x277CBCAF0]);
  sub_261150F70(&qword_27FE81088, sub_26111EC34, MEMORY[0x277D85228]);
  v34 = v61;
  v35 = v62;
  sub_26115ADC4();
  sub_26110CEE0(v33, &qword_27FE81058, &unk_26115E2F0);

  (*(v60 + 8))(v30, v34);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v38 = v56;
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_261150530;
  *(v39 + 24) = v37;
  sub_26111EDDC(&qword_27FE81F28, &qword_27FE81F10, &qword_261161848, MEMORY[0x277CBCD60]);
  swift_unknownObjectRetain();
  sub_26115ADD4();

  (*(v64 + 8))(v35, v15);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v40 = v65;
  sub_26115A7B4();
  swift_allocObject();
  swift_weakInit();
  sub_26111EDDC(&qword_27FE81658, &qword_27FE81620, "Fp", v29);
  v41 = v67;
  sub_26115ADD4();

  (*(v66 + 8))(v40, v41);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v42 = v68;
  sub_26115A774();
  swift_allocObject();
  swift_weakInit();
  sub_26111EDDC(&qword_27FE812A0, &qword_27FE81298, &unk_26115E9C0, v29);
  v43 = v70;
  sub_26115ADD4();

  (*(v69 + 8))(v42, v43);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_2611505F4;
  *(v47 + 24) = v46;

  v48 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_11;
  v49 = _Block_copy(aBlock);
  v50 = [objc_opt_self() actionWithTitle:v48 style:0 handler:v49];

  _Block_release(v49);

  [v38 setDismissButtonAction_];
}

uint64_t sub_26114FA54(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_26115AD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26115AD44();
    sub_26111EE24(a1, v39);
    swift_bridgeObjectRetain_n();
    v12 = sub_26115AD54();
    v13 = sub_26115B804();
    v14 = a2 >> 62;
    if (os_log_type_enabled(v12, v13))
    {
      v31 = v13;
      v32 = v8;
      v34 = v7;
      v35 = a1;
      v36 = a4;
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v15 = 136446722;
      sub_26111EE24(v39, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81098, &qword_26115E5F0);
      v16 = sub_26115B6B4();
      v18 = v17;
      sub_26110CEE0(v39, &qword_27FE81098, &qword_26115E5F0);
      v19 = sub_26111C268(v16, v18, &v38);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      v33 = a2 >> 62;
      if (v14)
      {
        v20 = sub_26115B9A4();
      }

      else
      {
        v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v15 + 14) = v20;

      *(v15 + 22) = 2082;
      v21 = sub_26115A5B4();
      v22 = MEMORY[0x2666F9E40](a2, v21);
      v24 = sub_26111C268(v22, v23, &v38);

      *(v15 + 24) = v24;
      _os_log_impl(&dword_261107000, v12, v31, "PASUIFamilyPickerProxCardAdapter publishers updating.\ndevice: %{public}s\n%ld member(s): %{public}s", v15, 0x20u);
      v25 = v30;
      swift_arrayDestroy();
      MEMORY[0x2666FA930](v25, -1, -1);
      MEMORY[0x2666FA930](v15, -1, -1);

      (*(v32 + 8))(v10, v34);
      a1 = v35;
      a4 = v36;
      v14 = v33;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_26110CEE0(v39, &qword_27FE81098, &qword_26115E5F0);
      (*(v8 + 8))(v10, v7);
    }

    if (v14)
    {
      v26 = sub_26115B9A4();
    }

    else
    {
      v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v26 == 1;
    sub_261150AA8(a1, v26 == 1);
    v28 = sub_26115B674();

    [a4 setTitle_];

    sub_261150018(a1, v27);
    v29 = sub_26115B674();

    [a4 setSubtitle_];

    sub_26114E624(v27, a4);
    sub_26114E988(a4);
  }

  return result;
}

void sub_26114FE38(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 40);
    v5 = v4;

    if (v4)
    {
      if (v2 && (sub_26115A564(), v6))
      {

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      [v5 setEnabled_];
    }
  }
}

uint64_t sub_26114FEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong viewController];
      v7 = *(v4 + 32);
      v8 = swift_allocObject();
      *(v8 + 16) = sub_261112550;
      *(v8 + 24) = v7;
      swift_retain_n();
      sub_26114D9D4(v6, &unk_261161858, v7, &unk_26115E9E0, v8);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_261150018(uint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EE24(a1, &v24);
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v24, v26);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v23, v23[3]);
    v8 = sub_26115A694();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_26115B954();

    v15 = 0x8000000261164D20;
    v16 = 0xD00000000000001CLL;
LABEL_23:
    v24 = v16;
    v25 = v15;
    MEMORY[0x2666F9DF0](v8, v10);

    v21 = sub_26115B6F4();
    goto LABEL_24;
  }

LABEL_15:
  sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
  (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
  v8 = sub_26115A3E4();
  v10 = v14;
  (*(v5 + 8))(v7, v4);
  if ((v2 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = sub_26115A764();
  v12 = v11;
  if (!(v11 >> 62))
  {
    v2 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v2 = sub_26115B9A4();
  if (!v2)
  {
LABEL_21:

LABEL_22:
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_26115B954();

    v15 = 0x8000000261164D40;
    v16 = 0xD00000000000002ALL;
    goto LABEL_23;
  }

LABEL_5:
  v4 = 0;
  v5 = v12 & 0xC000000000000001;
  while (1)
  {
    if (v5)
    {
      v7 = MEMORY[0x2666FA050](v4, v12);
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v4 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v7 = *(v12 + 8 * v4 + 32);

      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    if (sub_26115A554())
    {
      break;
    }

    ++v4;
    if (v13 == v2)
    {
      goto LABEL_21;
    }
  }

  v17 = sub_26115A574();
  v19 = v18;

  if (!v19)
  {
    goto LABEL_22;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_26115B954();

  v24 = 0xD000000000000024;
  v25 = 0x8000000261164D70;
  MEMORY[0x2666F9DF0](v8, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26115D860;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_261121EE0();
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  v21 = sub_26115B6D4();

LABEL_24:

  return v21;
}

uint64_t sub_2611503FC()
{
}

uint64_t sub_26115043C()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2611504E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261150538()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2611505A4()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_261150614@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26115A764();
  v7 = sub_26115A764();
  if (v7 >> 62)
  {
    v8 = sub_26115B9A4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v8 > 1;
  sub_26115A7E4();
  sub_261150F70(&qword_27FE81F30, MEMORY[0x277D43480], MEMORY[0x277D433C0]);
  sub_26115AF44();
  swift_getKeyPath();
  sub_26115AF54();

  type metadata accessor for CGSize(0);
  sub_26115B514();
  sub_26115B514();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81688, &qword_26115F780) + 36));
  sub_26115AF04();

  sub_26115B7B4();
  *v11 = &unk_261161958;
  v11[1] = v10;
  *a3 = v6;
  *(a3 + 8) = v9;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  result = v16;
  *(a3 + 40) = v16;
  *(a3 + 56) = v17;
  return result;
}

uint64_t sub_26115081C(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  sub_26115B7A4();
  v2[8] = sub_26115B794();
  v4 = sub_26115B774();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_2611508B4, v4, v3);
}

uint64_t sub_2611508B4()
{
  v1 = type metadata accessor for PASUIMonogramMaker();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = sub_261150F70(&qword_27FE812A8, type metadata accessor for PASUIMonogramMaker, &unk_26115D834);
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_26112335C;

  return MEMORY[0x2821A4888](v0 + 2);
}

double sub_2611509B4@<D0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_26115B074();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F40, &qword_261161918);
  *&result = sub_261150614(v5, v4, a2 + *(v6 + 44)).n128_u64[0];
  return result;
}

uint64_t sub_261150A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110DB28;

  return sub_261123CEC();
}

uint64_t sub_261150AA8(uint64_t a1, char a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EE24(a1, &v16);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v16, v18);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
    v8 = sub_26115A694();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    sub_26110CEE0(&v16, &qword_27FE81098, &qword_26115E5F0);
    (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
    v8 = sub_26115A3E4();
    v10 = v11;
    (*(v5 + 8))(v7, v4);
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_26115B954();

  if (a2)
  {
    v12 = 0x8000000261164CF0;
    v16 = 0xD000000000000021;
  }

  else
  {
    v12 = 0x8000000261164CD0;
    v16 = 0xD000000000000019;
  }

  v17 = v12;
  MEMORY[0x2666F9DF0](v8, v10);

  v13 = sub_26115B6F4();

  return v13;
}

uint64_t sub_261150CE0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110DB28;

  return sub_26114EB7C(v0);
}

uint64_t sub_261150D70()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110DB28;

  return sub_26114E84C(v0);
}

unint64_t sub_261150E00()
{
  result = qword_27FE81F38;
  if (!qword_27FE81F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81F38);
  }

  return result;
}

uint64_t sub_261150E80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115A794();
  *a1 = result;
  return result;
}

uint64_t sub_261150ED8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26110CAC4;

  return sub_26115081C(v2, v3);
}

uint64_t sub_261150F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261151040@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  type metadata accessor for PASUIDeviceStringController();
  swift_allocObject();
  sub_2611122C8(v3, v4);
  sub_2611122C8(v5, v6);
  v7 = sub_26111E6AC(v3, v4, v5, v6);
  sub_26111EE94(v5, v6);
  result = sub_26111EE94(v3, v4);
  *a1 = v7;
  return result;
}

uint64_t sub_2611510DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261151994();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_261151140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261151994();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2611511A4(uint64_t a1)
{
  sub_261151994();
  sub_26115B1C4();
  __break(1u);
}

id sub_2611511CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *&v4[OBJC_IVAR____TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController_activityIndicatorView] = v6;
  v7 = sub_26115B674();

  if (a4)
  {
    v8 = sub_26115B674();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for PASUIWelcomeProtoAccountController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithTitle_detailText_icon_contentLayout_, v7, v8, 0, 2);

  return v9;
}

void sub_261151384()
{
  v1 = *&v0[OBJC_IVAR____TtC23ProximityAppleIDSetupUI34PASUIWelcomeProtoAccountController_activityIndicatorView];
  [v1 removeFromSuperview];
  v2 = [v0 contentView];
  [v2 addSubview_];

  if ([v0 isContentCenterAligned])
  {
    v3 = 100;
  }

  else
  {
    v3 = 101;
  }

  [v1 setActivityIndicatorViewStyle_];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 centerYAnchor];

    v7 = [v1 centerYAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    LODWORD(v9) = 1132068864;
    [v8 setPriority_];
    v10 = [v0 isContentCenterAligned];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26115E240;
    v13 = [v0 contentView];
    v14 = v13;
    if (v10)
    {
      v15 = &selRef_centerXAnchor;
    }

    else
    {
      v15 = &selRef_leadingAnchor;
    }

    v16 = [v13 *v15];

    v17 = [v1 *v15];
    v18 = [v16 constraintEqualToAnchor_];

    *(v12 + 32) = v18;
    *(v12 + 40) = v8;
    v28 = v8;
    v19 = [v1 topAnchor];
    v20 = [v0 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintGreaterThanOrEqualToAnchor_];
    *(v12 + 48) = v22;
    v23 = [v0 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v1 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v12 + 56) = v26;
    sub_26111DEC0();
    v27 = sub_26115B744();

    [v11 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_261151750(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PASUIWelcomeProtoAccountController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2611517D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = [v5 headerView];
  v8 = sub_26115B674();

  [v7 *a5];
}

id sub_261151884()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F60, &qword_261161B38);
  sub_26115B214();
  v1 = v8[5];
  v0 = v8[6];

  if (!v0)
  {
    v1 = 0;
    v0 = 0xE000000000000000;
  }

  sub_26115B214();
  v2 = v8[7];
  v3 = v8[8];

  v4 = objc_allocWithZone(type metadata accessor for PASUIWelcomeProtoAccountController());
  v5 = sub_2611511CC(v1, v0, v2, v3);
  sub_26115B214();
  v6 = v5;
  sub_26111DF84(v5, &off_28739B108);

  return v6;
}

unint64_t sub_261151994()
{
  result = qword_27FE81F68;
  if (!qword_27FE81F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81F68);
  }

  return result;
}

uint64_t sub_2611519E8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();

  *(v1 + 16) = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v3 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *(v2 + 24) = v3;
  return v2;
}

void sub_261151A98(void *a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81068, &unk_26115E300);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81070, &unk_261161BB0);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  sub_26114CA50(a1);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA04();
  swift_unknownObjectRelease();
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0, MEMORY[0x277CBCEC8]);
  sub_26115AD74();
  sub_26111EC34();
  v14 = sub_26115B874();
  aBlock[0] = v14;
  v15 = sub_26115B854();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_26111EDDC(&qword_27FE81080, &qword_27FE81068, &unk_26115E300, MEMORY[0x277CBCAF0]);
  sub_26111EC80();
  v16 = v28;
  sub_26115ADC4();
  sub_26110CEE0(v4, &qword_27FE81058, &unk_26115E2F0);

  (*(v7 + 8))(v9, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v29;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  sub_26111EDDC(&qword_27FE81090, &qword_27FE81070, &unk_261161BB0, MEMORY[0x277CBCD60]);
  swift_unknownObjectRetain();
  v20 = v30;
  sub_26115ADD4();

  (*(v31 + 8))(v13, v20);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_261152A10;
  *(v24 + 24) = v23;

  v25 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_12;
  v26 = _Block_copy(aBlock);
  v27 = [objc_opt_self() actionWithTitle:v25 style:0 handler:v26];

  _Block_release(v26);

  [v19 setDismissButtonAction_];
}

void sub_2611520FC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26114E3BC(a1, &v18);
    v25 = v19;
    v24 = v18;
    v26 = v20;
    if (*(&v19 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v5 = sub_26115A694();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
    }

    else
    {
      sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
      sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
      v5 = 0;
      v7 = 0;
    }

    sub_26114E3BC(a1, &v18);
    v25 = v22;
    v24 = v21;
    v26 = v23;
    if (*(&v22 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      sub_26115A694();
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
    }

    else
    {
      sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
      sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
    }

    sub_261152AF8(v5, v7);

    v8 = sub_26115B674();

    [a3 setTitle_];

    sub_26114E3BC(a1, &v18);
    v25 = v19;
    v24 = v18;
    v26 = v20;
    if (*(&v19 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v9 = sub_26115A694();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
    }

    else
    {
      sub_26110CEE0(&v21, &qword_27FE81098, &qword_26115E5F0);
      sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
      v9 = 0;
      v11 = 0;
    }

    sub_26114E3BC(a1, &v18);
    v25 = v22;
    v24 = v21;
    v26 = v23;
    if (*(&v22 + 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v12 = sub_26115A694();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(&v24);
      sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
    }

    else
    {
      sub_26110CEE0(&v18, &qword_27FE81098, &qword_26115E5F0);
      sub_26110CEE0(&v24, &qword_27FE81098, &qword_26115E5F0);
      v12 = 0;
      v14 = 0;
    }

    sub_261152748(v9, v11, v12, v14);

    v15 = sub_26115B674();

    [a3 setSubtitle_];
  }
}

uint64_t sub_261152594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong viewController];
      v7 = *(v4 + 32);
      v8 = swift_allocObject();
      *(v8 + 16) = sub_261112550;
      *(v8 + 24) = v7;
      swift_retain_n();
      sub_26114D9D4(v6, &unk_261161BC8, v7, &unk_26115E9E0, v8);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2611526DC()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_261152748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26115A3F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D433B8], v8);
    a3 = sub_26115A3E4();
    v12 = v14;
    (*(v9 + 8))(v11, v8);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    (*(v9 + 104))(v11, *MEMORY[0x277D433B8], v8);

    a1 = sub_26115A3E4();
    v13 = v15;
    (*(v9 + 8))(v11, v8);
    goto LABEL_6;
  }

  v12 = a4;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:

  v13 = a2;
LABEL_6:
  v18 = 0;
  v19 = 0xE000000000000000;

  sub_26115B954();

  v18 = 0xD000000000000013;
  v19 = 0x8000000261163380;
  MEMORY[0x2666F9DF0](a3, v12);

  MEMORY[0x2666F9DF0](95, 0xE100000000000000);
  MEMORY[0x2666F9DF0](a1, v13);

  v16 = sub_26115B6F4();

  return v16;
}

uint64_t sub_261152968()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2611529C0()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261152A18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261152A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return sub_261123CEC();
}

uint64_t sub_261152AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_26115B954();

  v12 = 0xD00000000000001DLL;
  v13 = 0x8000000261164F90;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v8 = v9;
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x2666F9DF0](a1, v8);

  v10 = sub_26115B6F4();

  return v10;
}

uint64_t PASFlowStepTargetError.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F70, qword_261161BD0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = v0;
  v8 = sub_261152E10();
  sub_26115B414();
  (*(v2 + 16))(v5, v7, v1);
  v11[0] = &type metadata for PASUITargetErrorView;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v9;
}

unint64_t sub_261152E10()
{
  result = qword_27FE81F78;
  if (!qword_27FE81F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81F78);
  }

  return result;
}

uint64_t sub_261152E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F70, qword_261161BD0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v11[0] = *v0;
  v8 = sub_261152E10();
  sub_26115B414();
  (*(v2 + 16))(v5, v7, v1);
  v11[0] = &type metadata for PASUITargetErrorView;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_26115B574();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_261153014@<X0>(uint64_t *a2@<X8>)
{
  v14 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F80, &qword_261161C98);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  *&v15 = sub_261153248;
  *(&v15 + 1) = 0;
  *&v16 = sub_261153264;
  *(&v16 + 1) = 0;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = 0;
  v18 = 0uLL;
  v19 = MEMORY[0x277D84F90];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F88, &qword_261161CA0);
  v10 = sub_26112812C();
  v11 = sub_261153B58();
  sub_26115B454();
  v20[2] = v17;
  v20[3] = v18;
  v21 = v19;
  v20[0] = v15;
  v20[1] = v16;
  sub_261153D1C(v20);
  (*(v3 + 16))(v6, v8, v2);
  *&v15 = &type metadata for PASUITargetBaseView;
  *(&v15 + 1) = v9;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  v12 = sub_26115B574();
  result = (*(v3 + 8))(v8, v2);
  *v14 = v12;
  return result;
}

uint64_t sub_261153264(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_26115B954();

  v12 = 0xD000000000000015;
  v13 = 0x8000000261164FB0;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v8 = v9;
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x2666F9DF0](a1, v8);

  v10 = sub_26115B6F4();

  return v10;
}

uint64_t sub_2611533F8@<X0>(uint64_t a2@<X8>)
{
  v25 = a2;
  v2 = sub_26115AFB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81F98, &qword_261161CA8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FB0, &qword_261161CB0);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FB8, &qword_261161CB8);
  sub_261153D78();
  sub_26115B554();
  sub_26115AFA4();
  v14 = sub_26111EDDC(&qword_27FE81FA0, &qword_27FE81F98, &qword_261161CA8, MEMORY[0x277CDF028]);
  v15 = sub_261153CD4(&qword_27FE81FA8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_26115B354();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  sub_26115B034();
  v16 = sub_26115B304();
  v18 = v17;
  LOBYTE(v7) = v19;
  v26 = v6;
  v27 = v2;
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  v20 = v23;
  sub_26115B3B4();
  sub_261146CA8(v16, v18, v7 & 1);

  return (*(v24 + 8))(v13, v20);
}

uint64_t sub_2611537B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_26115B7D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_26115B7A4();

  v6 = sub_26115B794();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_261112D1C(0, 0, v4, &unk_261161D40, v7);
}

uint64_t sub_2611538D4()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v3 = (*MEMORY[0x277D43458] + MEMORY[0x277D43458]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26110E430;

  return v3();
}

uint64_t sub_261153998@<X0>(uint64_t a1@<X8>)
{
  sub_26115B4D4();
  sub_26115B2C4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FF8, &unk_261161CD8);
  sub_261154068();
  sub_26115B424();

  v2 = sub_26115B114();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FF0, &qword_261161CD0) + 36)) = v2;
  LOBYTE(v2) = sub_26115B254();
  sub_26115AE24();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FE0, &qword_261161CC8) + 36);
  *v11 = v2;
  *(v11 + 8) = v4;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = 0;
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  v13 = sub_26115B4B4();
  v14 = sub_26115B254();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FD0, &qword_261161CC0) + 36);
  *v15 = v13;
  *(v15 + 8) = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81FB8, &qword_261161CB8);
  *(a1 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_261153B58()
{
  result = qword_27FE81F90;
  if (!qword_27FE81F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81F88, &qword_261161CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81F98, &qword_261161CA8);
    sub_26115AFB4();
    sub_26111EDDC(&qword_27FE81FA0, &qword_27FE81F98, &qword_261161CA8, MEMORY[0x277CDF028]);
    sub_261153CD4(&qword_27FE81FA8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_261153CD4(&qword_27FE81CE0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81F90);
  }

  return result;
}

uint64_t sub_261153CD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261153D78()
{
  result = qword_27FE81FC0;
  if (!qword_27FE81FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FB8, &qword_261161CB8);
    sub_261153E30();
    sub_26111EDDC(&qword_27FE81D40, &qword_27FE81D48, &qword_261161028, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81FC0);
  }

  return result;
}

unint64_t sub_261153E30()
{
  result = qword_27FE81FC8;
  if (!qword_27FE81FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FD0, &qword_261161CC0);
    sub_261153EE8();
    sub_26111EDDC(&qword_27FE82018, &qword_27FE82020, &unk_261161CF0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81FC8);
  }

  return result;
}

unint64_t sub_261153EE8()
{
  result = qword_27FE81FD8;
  if (!qword_27FE81FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FE0, &qword_261161CC8);
    sub_261153F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81FD8);
  }

  return result;
}

unint64_t sub_261153F74()
{
  result = qword_27FE81FE8;
  if (!qword_27FE81FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FF0, &qword_261161CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FF8, &unk_261161CD8);
    sub_261154068();
    swift_getOpaqueTypeConformance2();
    sub_26111EDDC(&qword_27FE82008, &qword_27FE82010, &qword_261161CE8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81FE8);
  }

  return result;
}

unint64_t sub_261154068()
{
  result = qword_27FE82000;
  if (!qword_27FE82000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81FF8, &unk_261161CD8);
    sub_26111EDDC(&qword_27FE81278, &qword_27FE81280, &qword_26115E9B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE82000);
  }

  return result;
}

uint64_t sub_261154128()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261154168()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return sub_2611538D4();
}

void sub_261154228(uint64_t *a1@<X8>)
{
  if (xmmword_27FE858D8)
  {
    v2 = *(&xmmword_27FE858D8 + 1);

    v4 = v2(v3);

    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_26115428C(void *a1, uint64_t a2)
{
  v3 = sub_26115B5D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26115B5F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_26111EC34();
    v12 = sub_26115B874();
    v19 = v7;
    v13 = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_261154944;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26113432C;
    aBlock[3] = &block_descriptor_13;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    sub_26115B5E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_261154964(&qword_27FE816F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
    sub_261131590();
    sub_26115B904();
    MEMORY[0x2666F9F60](0, v10, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v19);
  }

  return Strong != 0;
}

uint64_t sub_2611545A0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    if (xmmword_27FE858D8)
    {

      sub_2611330E0(a2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_261154620()
{
  v0 = xmmword_27FE858D8;
  if (xmmword_27FE858D8)
  {
    type metadata accessor for PASUINonUIExtensionConfiguration();
    v1 = swift_allocObject();
    type metadata accessor for AuthenticateProxyObjectFetchingDecorator();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v1 + 16) = v2;
    sub_26115A274();
    sub_261154964(&unk_27FE82030, type metadata accessor for PASUINonUIExtensionConfiguration, &unk_26115EADC);

    swift_unknownObjectRetain();
    sub_26115A284();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_261154730(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();

  v3 = MEMORY[0x277CE11C8];
  v4 = MEMORY[0x277CE11C0];

  return MEMORY[0x2821169D0](0x746C7561666564, 0xE700000000000000, sub_2611548BC, a1, sub_2611548FC, v2, v3, v4);
}

uint64_t sub_261154880@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PASUIAppExtension();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_2611548C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261154904()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261154964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2611549E8()
{
  v1 = sub_26115AD64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if (v5)
  {

    return v5;
  }

  else
  {
    sub_26115AD44();
    v7 = sub_26115AD54();
    v8 = sub_26115B824();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261107000, v7, v8, "PASUIViewControllerProvider has no viewController", v9, 2u);
      MEMORY[0x2666FA930](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  }
}

id sub_261154B68()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  if (!v6 || (result = [v6 navigationController]) == 0)
  {
    sub_26115AD44();
    v8 = sub_26115AD54();
    v9 = sub_26115B824();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_261107000, v8, v9, "PASUIViewControllerProvider has no navigationController", v10, 2u);
      MEMORY[0x2666FA930](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = sub_2611549E8();
    v12 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    return v12;
  }

  return result;
}

id sub_261154CFC(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v18 = a1;
  v8 = sub_26115AD54();
  v9 = sub_26115B834();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v18;
    *(v10 + 4) = v18;
    *v11 = v12;
    v13 = v12;
    _os_log_impl(&dword_261107000, v8, v9, "PASUIViewControllerProvider setViewController %{public}@", v10, 0xCu);
    sub_26112F444(v11);
    MEMORY[0x2666FA930](v11, -1, -1);
    MEMORY[0x2666FA930](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v14 = *(v2 + 16);
  *(v2 + 16) = v18;

  v15 = v18;

  return v15;
}

uint64_t sub_261154EB8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_261154F80()
{
  sub_261155CD4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUICDPEnrollmentObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PASUICDPEnrollmentObserver(uint64_t a1)
{
  result = qword_27FE820C8;
  if (!qword_27FE820C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2611550C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E8, &qword_261161EF8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_26115A684();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_lastStatus;
  swift_beginAccess();
  sub_2611566D0(v2 + v19, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_261156740(v11);
    goto LABEL_7;
  }

  v36 = v4;
  (*(v13 + 32))(v18, v11, v12);
  v20 = sub_26115A674();
  if (v20 >= sub_26115A674())
  {
    (*(v13 + 8))(v18, v12);
LABEL_7:
    (*(v13 + 16))(v9, a1, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    swift_beginAccess();
    sub_2611567A8(v9, v2 + v19);
    swift_endAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      sub_26115A924();
      return swift_unknownObjectRelease();
    }

    return result;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_26115B954();

  v39 = 544175136;
  v40 = 0xE400000000000000;
  v21 = *(v13 + 16);
  v21(v16, a1, v12);
  v22 = sub_26115B6B4();
  MEMORY[0x2666F9DF0](v22);

  MEMORY[0x2666F9DF0](0xD000000000000018, 0x8000000261165170);
  v21(v16, v18, v12);
  v23 = sub_26115B6B4();
  MEMORY[0x2666F9DF0](v23);

  v24 = v39;
  v25 = v40;
  v39 = 0xD000000000000030;
  v40 = 0x8000000261165130;
  MEMORY[0x2666F9DF0](v24, v25);

  v27 = v39;
  v26 = v40;
  v28 = v37;
  sub_26115AD44();

  v29 = sub_26115AD54();
  v30 = sub_26115B814();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39 = v32;
    *v31 = 136446210;
    v33 = sub_26111C268(v27, v26, &v39);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_261107000, v29, v30, "%{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x2666FA930](v32, -1, -1);
    MEMORY[0x2666FA930](v31, -1, -1);
  }

  else
  {
  }

  (*(v38 + 8))(v28, v36);
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_261155608()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v6 = sub_26115AD54();
  v7 = sub_26115B834();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_261107000, v6, v7, "PASUICDPEnrollmentObserver registerObservers", v8, 2u);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26115E240;
  v10 = *&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_notificationCenter];
  v11 = *MEMORY[0x277CFDAD0];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v40 = sub_261156628;
  v41 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_261155AF0;
  v39 = &block_descriptor_14;
  v13 = _Block_copy(&aBlock);
  v14 = v11;
  v15 = v1;

  v16 = [v10 addObserverForName:v14 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);

  *(v9 + 32) = v16;
  v17 = *MEMORY[0x277CFDAC8];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v40 = sub_261156664;
  v41 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_261155AF0;
  v39 = &block_descriptor_17;
  v19 = _Block_copy(&aBlock);
  v20 = v15;
  v21 = v17;

  v22 = [v10 addObserverForName:v21 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);

  *(v9 + 40) = v22;
  v23 = *MEMORY[0x277CFDAB8];
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  v40 = sub_261156688;
  v41 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_261155AF0;
  v39 = &block_descriptor_23;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v23;

  v28 = [v10 addObserverForName:v27 object:0 queue:0 usingBlock:v25];
  _Block_release(v25);

  *(v9 + 48) = v28;
  v29 = *MEMORY[0x277CFDAC0];
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  v40 = sub_2611566AC;
  v41 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_261155AF0;
  v39 = &block_descriptor_29_0;
  v31 = _Block_copy(&aBlock);
  v32 = v26;
  v33 = v29;

  v34 = [v10 addObserverForName:v33 object:0 queue:0 usingBlock:v31];
  _Block_release(v31);

  *(v9 + 56) = v34;
  *&v32[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_observers] = v9;
}

uint64_t sub_261155AF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_26115A194();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_26115A184();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_261155BE4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_26115A684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *a3, v4);
  sub_2611550C8(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_261155CD4()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v6 = sub_26115AD54();
  v7 = sub_26115B834();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_261107000, v6, v7, "PASUICDPEnrollmentObserver deregisterObservers", v8, 2u);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_observers);
  if (v9 >> 62)
  {
LABEL_17:
    v10 = sub_26115B9A4();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_notificationCenter;

  if (v10)
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2666FA050](v12, v9);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v13 = *(v9 + 8 * v12 + 32);
        swift_unknownObjectRetain();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_14;
        }
      }

      [*(v1 + v11) removeObserver_];
      swift_unknownObjectRelease();
      ++v12;
    }

    while (v14 != v10);
  }
}

void sub_261155F1C(uint64_t a1)
{
  sub_261155FD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_261155FD4(uint64_t a1)
{
  if (!qword_27FE820D8)
  {
    sub_26115A684();
    v1 = sub_26115B8E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE820D8);
    }
  }
}

uint64_t sub_26115626C(uint64_t a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v6 = sub_26115AD54();
  v7 = sub_26115B834();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_261107000, v6, v7, "PASUICDPEnrollmentObserver uiController(_:prepareAlertContext:)", v8, 2u);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return (*(a1 + 16))(a1);
}

uint64_t sub_2611563BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26115A684();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26115AD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v11 = sub_26115AD54();
  v12 = sub_26115B834();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17 = a2;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_261107000, v11, v12, "PASUICDPEnrollmentObserver uiController(_:preparePresentationContext:)", v13, 2u);
    a2 = v17;
    MEMORY[0x2666FA930](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, *MEMORY[0x277D43430], v3);
  sub_2611550C8(v6);
  (*(v4 + 8))(v6, v3);
  return (*(a2 + 16))(a2);
}

uint64_t sub_2611565F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2611566D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E8, &qword_261161EF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261156740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E8, &qword_261161EF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2611567A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E8, &qword_261161EF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_26115683C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE82100, qword_2611620C8);
  sub_26115B214();

  sub_26115B214();
  v1 = *(v19 + 64);

  v2 = *(v0 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = sub_2611578D4(*(v0 + 40), *(v0 + 48));
  }

  v4 = v2;
  v5 = sub_26115B674();

  if (v1)
  {
    v6 = sub_26115B674();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(type metadata accessor for PASUIWelcomeController()) initWithTitle:v5 detailText:v6 icon:v3];

  sub_26115B214();
  v8 = v7;
  sub_26111DF84(v7, &off_28739B518);

  v10 = *(v0 + 56);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_8;
    }

    return v8;
  }

  result = sub_26115B9A4();
  v11 = result;
  if (!result)
  {
    return v8;
  }

LABEL_8:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2666FA050](i, v10);
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = *(v13 + 16);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v17 = v14;
        v18 = [v8 buttonTray];
        [v18 addButton_];
      }
    }

    return v8;
  }

  __break(1u);
  return result;
}

id sub_261156A9C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI22PASUIWelcomeController_activityIndicatorView);
  v3 = &selRef_startAnimating;
  if (!*(v1 + 64))
  {
    v3 = &selRef_stopAnimating;
  }

  return [v2 *v3];
}

uint64_t sub_261156ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261157880();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_261156B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261157880();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_261156B94(uint64_t a1)
{
  sub_261157880();
  sub_26115B1C4();
  __break(1u);
}

id sub_261156BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *&v5[OBJC_IVAR____TtC23ProximityAppleIDSetupUI22PASUIWelcomeController_activityIndicatorView] = v8;
  v9 = sub_26115B674();

  if (a4)
  {
    v10 = sub_26115B674();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = type metadata accessor for PASUIWelcomeController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v9, v10, a5, 2);

  return v11;
}

void sub_261156E04()
{
  v1 = *&v0[OBJC_IVAR____TtC23ProximityAppleIDSetupUI22PASUIWelcomeController_activityIndicatorView];
  [v1 removeFromSuperview];
  v2 = [v0 contentView];
  [v2 addSubview_];

  if ([v0 isContentCenterAligned])
  {
    v3 = 100;
  }

  else
  {
    v3 = 101;
  }

  [v1 setActivityIndicatorViewStyle_];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 centerYAnchor];

    v7 = [v1 centerYAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    LODWORD(v9) = 1132068864;
    [v8 setPriority_];
    v10 = [v0 isContentCenterAligned];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26115E240;
    v13 = [v0 contentView];
    v14 = v13;
    if (v10)
    {
      v15 = &selRef_centerXAnchor;
    }

    else
    {
      v15 = &selRef_leadingAnchor;
    }

    v16 = [v13 *v15];

    v17 = [v1 *v15];
    v18 = [v16 constraintEqualToAnchor_];

    *(v12 + 32) = v18;
    *(v12 + 40) = v8;
    v28 = v8;
    v19 = [v1 topAnchor];
    v20 = [v0 contentView];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintGreaterThanOrEqualToAnchor_];
    *(v12 + 48) = v22;
    v23 = [v0 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v1 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v12 + 56) = v26;
    sub_26111DEC0();
    v27 = sub_26115B744();

    [v11 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_261157170()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v6 = sub_26115AD54();
  v7 = sub_26115B834();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_261107000, v6, v7, "Adding header animation view", v8, 2u);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  type metadata accessor for PASUIMicaView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 addSubview_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v1 headerView];
  v12 = [v11 animationView];

  if (v12)
  {
    v13 = v12;
    [v13 addSubview_];
    v14 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_261161F00;
    v16 = [v9 centerXAnchor];
    v17 = [v13 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v15 + 32) = v18;
    v19 = [v9 centerYAnchor];
    v20 = [v13 centerYAnchor];

    v21 = [v19 constraintEqualToAnchor_];
    *(v15 + 40) = v21;
    v22 = [v9 heightAnchor];
    v23 = [v22 constraintEqualToConstant_];

    *(v15 + 48) = v23;
    v24 = [v9 widthAnchor];
    v25 = [v24 constraintEqualToConstant_];

    *(v15 + 56) = v25;
    v26 = [v10 topAnchor];
    v27 = [v9 topAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v15 + 64) = v28;
    v29 = [v10 bottomAnchor];
    v30 = [v9 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v15 + 72) = v31;
    v32 = [v10 leadingAnchor];
    v33 = [v9 leadingAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(v15 + 80) = v34;
    v35 = [v10 trailingAnchor];

    v36 = [v9 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v15 + 88) = v37;
    sub_26111DEC0();
    v38 = sub_26115B744();

    [v14 activateConstraints_];
  }

  else
  {
    v38 = v9;
    v9 = v10;
  }
}

id sub_261157744(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PASUIWelcomeController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2611577D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261157818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261157880()
{
  result = qword_27FE820F8;
  if (!qword_27FE820F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE820F8);
  }

  return result;
}

id sub_2611578D4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = [objc_opt_self() tintColor];
    v4 = objc_opt_self();
    v5 = [v4 configurationWithHierarchicalColor_];

    v6 = [v4 configurationWithPointSize_];
    v7 = [v5 configurationByApplyingConfiguration_];
    v8 = sub_26115B674();
    v2 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];
  }

  return v2;
}

void sub_261157A1C(uint64_t *a1@<X8>)
{
  v2 = sub_26115B494();
  sub_26115AED4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

unint64_t sub_261157A5C@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for PASUISourceStartViewProxCardAdapter();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();
  *(v3 + 16) = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    result = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    result = MEMORY[0x277D84FA0];
  }

  *(v3 + 24) = result;
  *(a1 + 24) = started;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t PASFlowStepSourceStart.buildView()()
{
  sub_261157B4C();

  return sub_26115B574();
}

unint64_t sub_261157B4C()
{
  result = qword_27FE82108;
  if (!qword_27FE82108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE82108);
  }

  return result;
}

uint64_t sub_261157BB8()
{
  sub_261157B4C();

  return sub_26115B574();
}

uint64_t PASFlowStepSignInResult.buildView()()
{
  sub_26110CC00();

  return sub_26115B574();
}

uint64_t sub_261157C74(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

void *sub_261157CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PASUIAllSetProxCardAdapter();
  v3 = swift_allocObject();

  result = sub_261157D68(v4);
  *(a1 + 24) = v2;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v3;
  *(a1 + 40) = 0;
  return result;
}

void *sub_261157D68(uint64_t a1)
{
  v2 = v1;
  v1[4] = a1;
  v1[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  swift_allocObject();

  v1[2] = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v3 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  v2[3] = v3;
  return v2;
}

void sub_261157E18(void *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE82128, &unk_261162300);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26115D860;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 32) = 0xD00000000000001DLL;
    *(v4 + 40) = 0x8000000261165360;
    v5 = v3;
    sub_26115BA84();

    [a1 removeAction_];
  }

  sub_26115B6F4();

  v6 = sub_26115B674();

  v10[4] = sub_2611590FC;
  v10[5] = v1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26114D6D0;
  v10[3] = &block_descriptor_36_0;
  v7 = _Block_copy(v10);
  v8 = [objc_opt_self() actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v9 = *(v1 + 40);
  *(v1 + 40) = v8;
}

uint64_t sub_26115800C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_26115B7D4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_26115B7A4();

  v7 = sub_26115B794();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_261112D1C(0, 0, v5, &unk_261162318, v8);
}

uint64_t sub_261158130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26115B7A4();
  *(v4 + 24) = sub_26115B794();
  v6 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_2611581C8, v6, v5);
}

uint64_t sub_2611581C8()
{

  sub_26115A464();
  v1 = *(v0 + 8);

  return v1();
}

void sub_261158230(void *a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE82110, &unk_2611622C0);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v25 - v10;
  sub_26114CA50(a1);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  sub_26111EC34();
  v12 = sub_26115B874();
  aBlock[0] = v12;
  v13 = sub_26115B854();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0, MEMORY[0x277CBCEC8]);
  sub_26111EC80();
  sub_26115ADC4();
  sub_26110CEE0(v4, &qword_27FE81058, &unk_26115E2F0);

  (*(v6 + 8))(v8, v5);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v25;
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  sub_26111EDDC(&qword_27FE82118, &qword_27FE82110, &unk_2611622C0, MEMORY[0x277CBCD60]);
  swift_unknownObjectRetain();
  v17 = v26;
  sub_26115ADD4();

  (*(v9 + 8))(v11, v17);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_261158E80;
  *(v21 + 24) = v20;

  v22 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_15;
  v23 = _Block_copy(aBlock);
  v24 = [objc_opt_self() actionWithTitle:v22 style:0 handler:v23];

  _Block_release(v23);

  [v16 setDismissButtonAction_];
}

void sub_26115878C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  sub_26115A474();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1Tm(v33, v34);
    v5 = sub_26115A9C4();
    if (v5)
    {
      v6 = v5;
      sub_26115A954();
      v8 = v7;

      __swift_destroy_boxed_opaque_existential_1(v33);
      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  else
  {
    sub_26110CEE0(v33, &qword_27FE82120, &unk_2611622F0);
  }

  sub_26111EE24(a1, v33);
  v9 = v34;
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1Tm(v33, v34);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v32, v32[3]);
    v10 = sub_26115A694();
    v9 = v11;
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_26110CEE0(v33, &qword_27FE81098, &qword_26115E5F0);
    v10 = 0;
  }

  sub_261158F68(v10, v9);

LABEL_12:
  v12 = sub_26115B674();

  [a3 setTitle_];

  sub_26115A474();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1Tm(v33, v34);
    v13 = sub_26115A9C4();
    if (v13)
    {
      v14 = v13;
      sub_26115A964();
      v16 = v15;

      __swift_destroy_boxed_opaque_existential_1(v33);
      if (v16)
      {
        v17 = sub_26115B674();

        goto LABEL_19;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  else
  {
    sub_26110CEE0(v33, &qword_27FE82120, &unk_2611622F0);
  }

  v17 = 0;
LABEL_19:
  [a3 setSubtitle_];

  sub_261157E18(a3);
  sub_26115A474();
  if (!v34)
  {
    sub_26110CEE0(v33, &qword_27FE82120, &unk_2611622F0);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1Tm(v33, v34);
  v18 = sub_26115A9C4();
  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    goto LABEL_25;
  }

  v19 = v18;
  sub_26115A944();
  v21 = v20;

  __swift_destroy_boxed_opaque_existential_1(v33);
  if (!v21)
  {
LABEL_25:
    v22 = [objc_opt_self() configurationWithPointSize_];
    v23 = sub_26115B674();
    goto LABEL_26;
  }

  v22 = [objc_opt_self() configurationWithPointSize:3 weight:80.0];
  v23 = sub_26115B674();

LABEL_26:
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  if (!v24)
  {

    return;
  }

  v25 = v24;
  sub_26115A474();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1Tm(v33, v34);
    v26 = sub_26115A9C4();
    if (v26 && (v27 = v26, v28 = sub_26115A934(), v30 = v29, v27, (v30 & 1) == 0))
    {
      if (v28 != 1)
      {
        v32[0] = v28;
        sub_26115BA04();
        __break(1u);
        return;
      }

      v31 = [objc_opt_self() systemGreenColor];
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
      v31 = 0;
    }
  }

  else
  {
    sub_26110CEE0(v33, &qword_27FE82120, &unk_2611622F0);
    v31 = 0;
  }

  sub_26114DF6C(a3, v25, v31);
}

uint64_t sub_261158C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong viewController];
      v7 = *(v4 + 32);
      v8 = swift_allocObject();
      *(v8 + 16) = sub_261112550;
      *(v8 + 24) = v7;
      swift_retain_n();
      sub_26114D9D4(v6, &unk_2611622D8, v7, &unk_26115E9E0, v8);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_261158DD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261158E30()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261158E88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261158ED8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110DB28;

  return sub_261123CEC();
}

uint64_t sub_261158F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_26115B954();

  v12 = 0xD000000000000019;
  v13 = 0x8000000261165320;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v8 = v9;
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x2666F9DF0](a1, v8);

  v10 = sub_26115B6F4();

  return v10;
}

uint64_t sub_261159104()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261159144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_261158130(a1, v4, v5, v6);
}

uint64_t sub_261159218@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PASUISourceErrorProxCardAdapter();
  v3 = swift_allocObject();

  result = sub_2611519E8(v4);
  *(a1 + 24) = v2;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v3;
  *(a1 + 40) = 0;
  return result;
}

void sub_261159280(void *a1)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE82110, &unk_2611622C0);
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - v10;
  sub_26114CA50(a1);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  sub_26111EC34();
  v12 = sub_26115B874();
  aBlock[0] = v12;
  v13 = sub_26115B854();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0, MEMORY[0x277CBCEC8]);
  sub_26111EC80();
  sub_26115ADC4();
  sub_26110CEE0(v4, &qword_27FE81058, &unk_26115E2F0);

  (*(v6 + 8))(v8, v5);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  sub_26111EDDC(&qword_27FE82118, &qword_27FE82110, &unk_2611622C0, MEMORY[0x277CBCD60]);
  swift_unknownObjectRetain();
  v17 = v24;
  sub_26115ADD4();

  (*(v9 + 8))(v11, v17);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_261159CD4;
  *(v19 + 24) = v18;
  swift_retain_n();
  v20 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);
  v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];

  _Block_release(v21);

  [v16 setDismissButtonAction_];
}

void sub_261159788(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26111EE24(a1, v15);
    v5 = v16;
    if (v16)
    {
      __swift_project_boxed_opaque_existential_1Tm(v15, v16);
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      v5 = sub_26115A694();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v13);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_26110CEE0(v15, &qword_27FE81098, &qword_26115E5F0);
      v7 = 0;
    }

    sub_261159E20(v5, v7);

    v8 = sub_26115B674();

    [a3 setTitle_];

    sub_26111EE24(a1, v15);
    v9 = v16;
    if (v16)
    {
      __swift_project_boxed_opaque_existential_1Tm(v15, v16);
      sub_26115A434();
      __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      v9 = sub_26115A694();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v13);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_26110CEE0(v15, &qword_27FE81098, &qword_26115E5F0);
      v11 = 0;
    }

    sub_261159FB4(v9, v11);

    v12 = sub_26115B674();

    [a3 setSubtitle_];
  }
}

uint64_t sub_2611599AC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_26115B7D4();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_26115B7A4();

    v8 = sub_26115B794();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_261112D1C(0, 0, v4, &unk_2611623A0, v9);
  }

  return result;
}

uint64_t sub_261159B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26115B7A4();
  v4[3] = sub_26115B794();
  v6 = sub_26115B774();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_261159B98, v6, v5);
}

uint64_t sub_261159B98()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26110C78C;

  return MEMORY[0x2821A4870]();
}

uint64_t sub_261159C54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261159C8C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261159CDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261159D2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261159D6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_261159B00(a1, v4, v5, v6);
}

uint64_t sub_261159E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_26115B954();

  v12 = 0xD000000000000012;
  v13 = 0x80000002611653C0;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v8 = v9;
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x2666F9DF0](a1, v8);

  v10 = sub_26115B6F4();

  return v10;
}

uint64_t sub_261159FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_26115B954();

  v12 = 0xD000000000000015;
  v13 = 0x8000000261164FB0;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D433B8], v4);
    a1 = sub_26115A3E4();
    v8 = v9;
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x2666F9DF0](a1, v8);

  v10 = sub_26115B6F4();

  return v10;
}