uint64_t sub_1C544A5FC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C544844C();
  type metadata accessor for SpinnerProgressView.Model(0);
  sub_1C544E03C();
  v6 = sub_1C5595064();
  sub_1C544848C(a1, a2);
  return v6;
}

uint64_t sub_1C544A698(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C544844C();
  type metadata accessor for SpinnerProgressView.Model(0);
  sub_1C544E03C();
  v6 = sub_1C5595074();
  sub_1C544848C(a1, a2);
  return v6;
}

uint64_t sub_1C544A774(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C544844C();
  v4 = *v3;
  v5 = *(v3 + 8);
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  sub_1C544848C(v4, v5);
  return sub_1C544848C(a1, a2);
}

uint64_t sub_1C544A7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v16 = sub_1C544E0BC;
  v29 = MEMORY[0x1E697D438];
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C6F0, &qword_1C55AF418);
  v30 = *(v36 - 8);
  v31 = v36 - 8;
  v13 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v21, v22, v4);
  v34 = &v13 - v13;
  v14 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v7, v8, &v13 - v13);
  v35 = &v13 - v14;
  v48 = &v13 - v14;
  v45 = v9;
  v46 = v10;
  v15 = 1;
  v47 = v11 & 1;
  sub_1C544844C();
  v17 = v39;
  v39[2] = v20;
  v39[3] = v21;
  v40 = v22 & 1 & v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C6F8, &qword_1C55AF420);
  v19 = sub_1C544E0D0();
  sub_1C544B78C();
  v23 = &v44;
  sub_1C5596064();
  sub_1C544848C(v20, v21);
  v24 = v49;
  v25 = 384;
  memcpy(v49, v23, sizeof(v49));
  v26 = v43;
  memcpy(v43, v49, sizeof(v43));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C708, &qword_1C55AF428);
  v28 = sub_1C544E158();
  sub_1C544B7B0();
  sub_1C5595CB4();
  sub_1C544E1E0(v26);
  v41 = v27;
  v42 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v34, v36, v35);
  v38 = *(v30 + 8);
  v37 = v30 + 8;
  v38(v34, v36);
  (*(v30 + 16))(v34, v35, v36);
  sub_1C540EFD8(v34, v36, v32);
  v38(v34, v36);
  return (v38)(v35, v36);
}

void sub_1C544AB3C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v39[1] = v164;
  v124 = a4;
  v88 = a1;
  v86 = a2;
  v87 = a3;
  v42 = sub_1C544FCC4;
  v204 = 0;
  v205 = 0;
  v206 = 0;
  v129 = v164;
  memset(v164, 0, sizeof(v164));
  v97 = 0;
  v101 = sub_1C5595934();
  v99 = *(v101 - 8);
  v100 = v101 - 8;
  v40 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v101, v4, v5, v6);
  v102 = v39 - v40;
  v41 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C770, &qword_1C55AF9F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88, v86, v87, v7);
  v98 = v39 - v41;
  v204 = v8;
  v205 = v9;
  v44 = 1;
  v115 = 1;
  v206 = v10 & 1;
  sub_1C544844C();
  v11 = swift_allocObject();
  v12 = v86;
  v13 = v87;
  v14 = v115;
  v15 = v11;
  v16 = v42;
  *(v15 + 16) = v88;
  *(v15 + 24) = v12;
  *(v15 + 32) = v13 & 1 & v14;
  v17 = sub_1C5448430(v16, v15);
  v43 = v192;
  v192[0] = v17;
  v192[1] = v18;
  v193 = v19 & 1 & v115;
  sub_1C544E4E0();
  v80 = 0;
  sub_1C5595AB4();
  sub_1C544FCD8(v43);
  v49 = v187;
  v187[0] = v194;
  v187[1] = v195;
  v188 = v196 & 1 & v115;
  v189 = v197;
  v190 = v198 & 1 & v115;
  v191 = v199;
  v47 = sub_1C5449418(v80);
  v45 = sub_1C5449418(v80);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C778, &qword_1C55AFA00);
  v48 = sub_1C544FD14();
  sub_1C5410F68();
  v50 = &v200;
  sub_1C5595D24();
  sub_1C544FCD8(v49);
  v51 = v207;
  v52 = 152;
  memcpy(v207, v50, sizeof(v207));
  v55 = v186;
  memcpy(v186, v207, sizeof(v186));
  v54 = sub_1C55957A4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C788, &qword_1C55AFA08);
  sub_1C544FDB8();
  v56 = &v201;
  sub_1C5595D84();
  sub_1C544FCD8(v55);
  v57 = v208;
  v58 = 193;
  memcpy(v208, v56, 0xC1uLL);
  v61 = v185;
  memcpy(v185, v208, 0xC1uLL);
  v60 = sub_1C55957D4();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C798, &qword_1C55AFA10);
  sub_1C544FE5C();
  v62 = &v202;
  sub_1C5595D84();
  sub_1C544FCD8(v61);
  v63 = v209;
  v64 = 241;
  memcpy(v209, v62, 0xF1uLL);
  v65 = v184;
  memcpy(v184, v209, 0xF1uLL);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7A8, &qword_1C55AFA18);
  v121 = sub_1C544FF00();
  v131 = v203;
  sub_1C540EFD8(v65, v118, v203);
  sub_1C544FCD8(v65);
  v66 = sub_1C544A5FC(v88, v86, v87 & 1);
  v67 = sub_1C544B630();
  v68 = v20;

  v69 = v181;
  v181[0] = v67;
  v181[1] = v68;
  v93 = sub_1C54141E8();
  v92 = MEMORY[0x1E69E6158];
  v177 = sub_1C5595A04();
  v178 = v21;
  v179 = v22;
  v180 = v23;
  v72 = v177;
  v73 = v21;
  v74 = v22;
  v75 = v23;
  sub_1C5595854();
  v70 = v24;
  v94 = sub_1C5595844();
  v25 = *(v94 - 8);
  v96 = *(v25 + 56);
  v95 = v25 + 56;
  v96(v98, v115);
  v71 = sub_1C5595894();
  sub_1C544FFA4(v98);
  v173 = v72;
  v174 = v73;
  v175 = v74 & 1 & v115;
  v176 = v75;
  v169 = sub_1C55959C4();
  v170 = v26;
  v171 = v27;
  v172 = v28;
  v76 = v169;
  v77 = v26;
  v78 = v27;
  v79 = v28;

  sub_1C5412EA0(v72, v73, v74 & 1);

  v81 = v166;
  v166[0] = v76;
  v166[1] = v77;
  v167 = v78 & 1 & v115;
  v168 = v79;
  sub_1C55957D4();
  v82 = &v182;
  v120 = MEMORY[0x1E6981148];
  v123 = MEMORY[0x1E6981138];
  sub_1C5595D84();
  sub_1C5414260(v81);
  v83 = __dst;
  v84 = 73;
  memcpy(__dst, v82, 0x49uLL);
  v85 = v165;
  memcpy(v165, __dst, 0x49uLL);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7B8, &qword_1C55AFA20);
  v122 = sub_1C545004C();
  v130 = v183;
  sub_1C540EFD8(v85, v119, v183);
  sub_1C5414260(v85);
  v89 = sub_1C544A5FC(v88, v86, v87 & 1);
  v90 = sub_1C544B6E4();
  v91 = v29;

  v162 = v90;
  v163 = v91;
  v158 = sub_1C5595A04();
  v159 = v30;
  v160 = v31;
  v161 = v32;
  v104 = v158;
  v105 = v30;
  v106 = v31;
  v107 = v32;
  (*(v99 + 104))(v102, *MEMORY[0x1E6980EF8], v101);
  (v96)(v98, v115, v115, v94);
  v103 = sub_1C55958A4();
  sub_1C544FFA4(v98);
  (*(v99 + 8))(v102, v101);
  v154 = v104;
  v155 = v105;
  v156 = v106 & 1 & v115;
  v157 = v107;
  v150 = sub_1C55959C4();
  v151 = v33;
  v152 = v34;
  v153 = v35;
  v109 = v150;
  v110 = v33;
  v108 = v34;
  v111 = v35;

  sub_1C5412EA0(v104, v105, v106 & 1);

  v149 = sub_1C5430454();
  v145 = v109;
  v146 = v110;
  v147 = v108 & 1 & v115;
  v148 = v111;
  v141 = sub_1C5595994();
  v142 = v36;
  v143 = v37;
  v144 = v38;
  v112 = v141;
  v113 = v36;
  v114 = v37;
  v116 = v38;
  sub_1C5412EA0(v109, v110, v108 & 1);

  v117 = v138;
  v138[0] = v112;
  v138[1] = v113;
  v139 = v114 & 1 & v115;
  v140 = v116;
  sub_1C540EFD8(v138, v120, v129);
  sub_1C5414260(v117);
  v128 = v136;
  sub_1C54500EC(v131, v136);
  v125 = v137;
  v137[0] = v128;
  v127 = v135;
  sub_1C54501BC(v130, v135);
  v137[1] = v127;
  v126 = v134;
  sub_1C54142A8(v129, v134);
  v137[2] = v126;
  v133[0] = v118;
  v133[1] = v119;
  v133[2] = v120;
  v132[0] = v121;
  v132[1] = v122;
  v132[2] = v123;
  sub_1C540F5A0(v125, 3uLL, v133, v132, v124);
  sub_1C5414260(v126);
  sub_1C5414260(v127);
  sub_1C544FCD8(v128);
  sub_1C5414260(v129);
  sub_1C5414260(v130);
  sub_1C544FCD8(v131);
}

uint64_t sub_1C544B630()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1;
}

uint64_t sub_1C544B6E4()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1;
}

uint64_t sub_1C544B7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[2] = a1;
  v8[3] = a2;
  sub_1C5594CF4();
  v8[0] = a1;
  v8[1] = a2;
  sub_1C5402CCC(v8, MEMORY[0x1E69E6158], a3, v3);
}

uint64_t sub_1C544B864@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_1C544B630();
  a2[1] = v2;
}

uint64_t sub_1C544B8C4(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v5);
  v3 = v5[0];
  v4 = v5[1];

  sub_1C544B938(v3, v4);
}

uint64_t sub_1C544B938(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C544B9F0(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 57066);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C544BAD0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C544BB4C(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C720, &qword_1C55AF4C8);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C544BCA0(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 23934);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C720, &qword_1C55AF4C8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 23934);
  v6[4] = __swift_coroFrameAllocStub(v5, 23934);
  sub_1C544BAD0();
  return sub_1C544BDC4;
}

void sub_1C544BDC4(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C544BB4C(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C544BB4C(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C544BEC0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__fullName;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C544BF58(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__fullName;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C544C0A4@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_1C544B6E4();
  a2[1] = v2;
}

uint64_t sub_1C544C104(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v5);
  v3 = v5[0];
  v4 = v5[1];

  sub_1C544C178(v3, v4);
}

uint64_t sub_1C544C178(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C544C230(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 16267);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C544C310()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C544C38C(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C720, &qword_1C55AF4C8);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C544C4E0(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 40195);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C720, &qword_1C55AF4C8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 40195);
  v6[4] = __swift_coroFrameAllocStub(v5, 40195);
  sub_1C544C310();
  return sub_1C544C604;
}

void sub_1C544C604(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C544C38C(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C544C38C(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C544C700@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__progressTitle;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C544C798(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__progressTitle;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

double sub_1C544C8E4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v7[1] = a1;
  sub_1C544DC88(a1, a3);
  v7[0] = a1;
  sub_1C5402CCC(v7, &unk_1F44776F0, a2, v3);
  return sub_1C544DCCC(a1);
}

uint64_t sub_1C544C93C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1;
}

uint64_t sub_1C544C9D8@<X0>(uint64_t *a2@<X8>)
{

  *a2 = sub_1C544C93C();
}

uint64_t sub_1C544CA34(void *a1, uint64_t *a2)
{
  sub_1C54507D0(a1, &v4);
  v3 = v4;

  sub_1C544835C(v3);
}

void (*sub_1C544CA9C(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 45111);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C544CB7C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C728, &qword_1C55AF4D0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C544CBF8(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C730, &qword_1C55AF4D8);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C728, &qword_1C55AF4D0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C544CD4C(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 53964);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C730, &qword_1C55AF4D8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 53964);
  v6[4] = __swift_coroFrameAllocStub(v5, 53964);
  sub_1C544CB7C();
  return sub_1C544CE70;
}

void sub_1C544CE70(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C544CBF8(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C544CBF8(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C544CF6C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__asset;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C728, &qword_1C55AF4D0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C544D004(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C728, &qword_1C55AF4D0);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__asset;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C544D150()
{
  v2 = v0 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model_timingModel;
  swift_beginAccess();
  v3 = *(v2 + 8);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C544D1C4(uint64_t a1, double a2, double a3)
{
  v7 = v3 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model_timingModel;
  swift_beginAccess();
  *v7 = a2;
  *(v7 + 8) = a1;
  *(v7 + 16) = a3;
  return swift_endAccess();
}

uint64_t sub_1C544D29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v13 = v5 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__fullName;
  swift_beginAccess();
  sub_1C544B7F0(a1, a2, v13);
  swift_endAccess();
  v16 = v5 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__progressTitle;
  swift_beginAccess();
  sub_1C544B7F0(a3, a4, v16);
  swift_endAccess();
  sub_1C544DC88(a5, v6);
  v19 = v5 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__asset;
  swift_beginAccess();
  sub_1C544C8E4(a5, v19, v7);
  swift_endAccess();
  v8 = sub_1C5527B34();
  v9 = v5 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model_timingModel;
  *v9 = v8;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  sub_1C544DCCC(a5);
  return v21;
}

uint64_t sub_1C544D3F8()
{
  v3 = OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__fullName;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C718, &qword_1C55AF4C0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3);
  (v5)(v0 + OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__progressTitle, v4);
  v6 = OBJC_IVAR____TtCV14AppleAccountUI19SpinnerProgressView5Model__asset;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C728, &qword_1C55AF4D0);
  (*(*(v1 - 8) + 8))(v0 + v6);
  return v7;
}

uint64_t sub_1C544D560@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1C5594E34();
  *a2 = result;
  return result;
}

__n128 *sub_1C544D5B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v13 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4 & 1;
  type metadata accessor for IconBubbleViewController();
  sub_1C544A698(a2, a3, a4 & 1);
  swift_getKeyPath();
  sub_1C544E03C();
  sub_1C55951A4();
  memcpy(__dst, v9, sizeof(__dst));

  v8 = sub_1C5529258(__dst);

  return v8;
}

double sub_1C544D69C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = MEMORY[0x1E69E7D40];
  (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x1C0))();
  sub_1C544A5FC(a3, a4, a5 & 1);
  v11 = sub_1C544C93C();

  (*((*a1 & *v10) + 0x1D0))(v11);
  return sub_1C544DCCC(v11);
}

void sub_1C544DA0C(uint64_t a1)
{
  sub_1C544E26C();
  sub_1C5595724();
  __break(1u);
}

uint64_t sub_1C544DC30()
{
  sub_1C544E364();
  result = sub_1C5596F34();
  qword_1EC161108 = result;
  qword_1EC161110 = v1;
  return result;
}

double sub_1C544DC88(unint64_t result, uint64_t a2)
{
  if (result > 1)
  {
    *&v2 = MEMORY[0x1E69E5928](result, a2).n128_u64[0];
  }

  return v2;
}

double sub_1C544DCCC(unint64_t a1)
{
  if (a1 > 1)
  {
    *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  }

  return result;
}

unint64_t sub_1C544DD10()
{
  v2 = qword_1EC15C6C8;
  if (!qword_1EC15C6C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C6C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C544DD74()
{
  v2 = qword_1EC15C6D0;
  if (!qword_1EC15C6D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  return sub_1C5409260(a2 + 32, a1 + 32);
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_destroy_helper_4(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_1C544DE30(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1C544DEAC(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

unint64_t sub_1C544DF28()
{
  v2 = qword_1EC15C6E0;
  if (!qword_1EC15C6E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C6E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  return sub_1C5409260(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_16(uint64_t a1)
{
}

{
}

unint64_t sub_1C544E03C()
{
  v2 = qword_1EC15C6E8;
  if (!qword_1EC15C6E8)
  {
    type metadata accessor for SpinnerProgressView.Model(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544E0D0()
{
  v2 = qword_1EC15C700;
  if (!qword_1EC15C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C6F8, &qword_1C55AF420);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544E158()
{
  v2 = qword_1EC15C710;
  if (!qword_1EC15C710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C708, &qword_1C55AF428);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C710);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C544E1E0(uint64_t a1)
{
  sub_1C544848C(*(a1 + 24), *(a1 + 32));
  sub_1C5412EA0(*(a1 + 272), *(a1 + 280), *(a1 + 288) & 1);

  sub_1C5412EA0(*(a1 + 352), *(a1 + 360), *(a1 + 368) & 1);

  return a1;
}

unint64_t sub_1C544E26C()
{
  v2 = qword_1EC15C738;
  if (!qword_1EC15C738)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544E2E8()
{
  v2 = qword_1EC161168[0];
  if (!qword_1EC161168[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC161168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544E364()
{
  v2 = qword_1EC159F90;
  if (!qword_1EC159F90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159F90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544E418()
{
  v2 = qword_1EC15C740;
  if (!qword_1EC15C740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544E4E0()
{
  v2 = qword_1EC15C748;
  if (!qword_1EC15C748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C748);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C544E568(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF9)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 6) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 249;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 7;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C544E6D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF9)
  {
    v5 = ((a3 + 6) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF9)
  {
    v4 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_1C544E9A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C544EA9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 16) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C544EC84(uint64_t a1)
{
  updated = sub_1C544EDD0(319);
  if (v1 <= 0x3F)
  {
    updated = sub_1C544EE64(319);
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_1C544EDD0(uint64_t a1)
{
  v5 = qword_1EC15C750;
  if (!qword_1EC15C750)
  {
    v4 = sub_1C5594EA4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C750);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C544EE64(uint64_t a1)
{
  v5 = qword_1EC15C758;
  if (!qword_1EC15C758)
  {
    v4 = sub_1C5594EA4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C758);
      return v2;
    }
  }

  return v5;
}

uint64_t get_enum_tag_for_layout_string_14AppleAccountUI19SpinnerProgressViewV5ModelC5AssetO(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1C544F040(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFE && *(a1 + 8))
    {
      v5 = *a1 + 2147483645;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 2;
      if (v4 - 2 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C544F190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFE)
  {
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAUISignInDataclassActionFlowStage(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AAUISignInDataclassActionFlowStage(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C544F794(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C544F89C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3)
    {
      *(result + 32) = 1;
    }
  }

  else if (a3)
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t type metadata accessor for CGRect(uint64_t a1)
{
  v5 = qword_1EC15C760;
  if (!qword_1EC15C760)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C760);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C544FAFC()
{
  v2 = qword_1EC161580[0];
  if (!qword_1EC161580[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC161580);
    return WitnessTable;
  }

  return v2;
}

id sub_1C544FB78(uint64_t a1)
{
  v4 = [v1 initWithAccount_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1C544FBC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C55948C4();
  v7 = [v3 initWithData_];
  MEMORY[0x1E69E5920](v4);
  sub_1C544DEAC(a1, a2);
  return v7;
}

id sub_1C544FC34(uint64_t a1)
{
  v4 = [v1 initWithCGImage_scale_orientation_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

unint64_t sub_1C544FD14()
{
  v2 = qword_1EC15C780;
  if (!qword_1EC15C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C778, &qword_1C55AFA00);
    sub_1C544E4E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544FDB8()
{
  v2 = qword_1EC15C790;
  if (!qword_1EC15C790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C788, &qword_1C55AFA08);
    sub_1C544FD14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544FE5C()
{
  v2 = qword_1EC15C7A0;
  if (!qword_1EC15C7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C798, &qword_1C55AFA10);
    sub_1C544FDB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544FF00()
{
  v2 = qword_1EC15C7B0;
  if (!qword_1EC15C7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C7A8, &qword_1C55AFA18);
    sub_1C544FE5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C544FFA4(uint64_t a1)
{
  v3 = sub_1C5595844();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1C545004C()
{
  v2 = qword_1EC15C7C0;
  if (!qword_1EC15C7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C7B8, &qword_1C55AFA20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54500EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  sub_1C544844C();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = a1[3];
  *(a2 + 32) = *(a1 + 16);
  memcpy((a2 + 40), a1 + 5, 0x70uLL);
  memcpy((a2 + 152), a1 + 19, 0x29uLL);
  memcpy((a2 + 200), a1 + 25, 0x29uLL);
  return a2;
}

uint64_t sub_1C54501BC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v7 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v7;
  memcpy((a2 + 32), (a1 + 32), 0x29uLL);
  return a2;
}

unint64_t sub_1C5450260()
{
  v2 = qword_1EC15C7C8;
  if (!qword_1EC15C7C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C7C8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54502C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C54503F0);
}

uint64_t sub_1C54503F0()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_1C5596E64();
  swift_getAssociatedConformanceWitness();
  sub_1C5596C54();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_1C5450558;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return MEMORY[0x1EEE6DE58](v3, v6, v5, v4);
}

uint64_t sub_1C5450558()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return MEMORY[0x1EEE6DFA0](sub_1C5450728);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_1C5450728()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

void *sub_1C54507D0(void *a1, void *a2)
{
  if (*a1 <= 1uLL)
  {
    *a2 = *a1;
  }

  else
  {
    v3 = *a1;
    MEMORY[0x1E69E5928](*a1, a2);
    *a2 = v3;
  }

  return a2;
}

uint64_t sub_1C5450848(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C5446CC8(a1, a2, v8, v9);
}

uint64_t sub_1C545091C(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C5447394(a1);
}

uint64_t sub_1C54509E8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5447F00(a1, v6, v7, v8, v9);
}

double sub_1C5450ACC(unint64_t result, uint64_t a2)
{
  if (result != 2)
  {
    return sub_1C544DC88(result, a2);
  }

  return v2;
}

double sub_1C5450B04(unint64_t a1)
{
  if (a1 != 2)
  {
    return sub_1C544DCCC(a1);
  }

  return result;
}

uint64_t sub_1C5450B3C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5408F08(a1, v6);
}

unint64_t sub_1C5450C30()
{
  v2 = qword_1EC15C7E8;
  if (!qword_1EC15C7E8)
  {
    sub_1C5596C44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C7E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CGPoint(uint64_t a1)
{
  v5 = qword_1EC15C7F0;
  if (!qword_1EC15C7F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C7F0);
      return v2;
    }
  }

  return v5;
}

void *sub_1C5450D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v79 = &v119;
  v100 = a4;
  v99 = a3;
  v106 = a2;
  v98 = a1;
  v80 = a6;
  v81 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v127 = 0;
  v126 = 0;
  v122 = 0;
  memset(v121, 0, sizeof(v121));
  v116 = 0;
  v115 = 0;
  v142 = a5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C2F0, &qword_1C55AE650);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](0, v82, v7, v8);
  v85 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  v84 = &v53 - v85;
  MEMORY[0x1EEE9AC00](v9, &v53 - v85, v10, v11);
  v86 = &v53 - v85;
  v141 = &v53 - v85;
  v87 = sub_1C5595F34();
  v88 = *(v87 - 8);
  v89 = v88;
  MEMORY[0x1EEE9AC00](v87 - 8, v87, v12, v13);
  v90 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7F8, &qword_1C55AFAC8);
  v91 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15 - 8, v16, v17, v18);
  v92 = &v53 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93 - 8, v19, v20, v21);
  v96 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95 = &v53 - v96;
  MEMORY[0x1EEE9AC00](v22, v23, v24, v25);
  v97 = &v53 - v96;
  v140 = &v53 - v96;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C2E0, &qword_1C55AE648);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106, v101, v99, v100);
  v104 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v103 = (&v53 - v104);
  MEMORY[0x1EEE9AC00](v26, &v53 - v104, v27, v28);
  v105 = (&v53 - v104);
  v139 = &v53 - v104;
  v137 = v29;
  v138 = v30;
  v135 = v31;
  v136 = v32;
  v134 = v6;
  sub_1C5594CF4();
  if (v106)
  {
    v77 = v98;
    v78 = v106;
    v76 = v106;
    v61 = v98;
    v126 = v98;
    v127 = v106;
    v67 = 1;
    sub_1C55965F4("checkmark.circle.fill", 21);
    v55 = sub_1C5595EF4();
    sub_1C5595444();
    v68 = 0;
    v33 = sub_1C5595454();
    (*(*(v33 - 8) + 56))(v92, 0, v67);
    v56 = sub_1C5595F24();
    sub_1C5451EEC(v92);

    v125[0] = v56;
    v124 = sub_1C5410CD0();
    v57 = &v124;
    v58 = v125;
    sub_1C5595BA4();
    sub_1C5410D10(v57);
    sub_1C5410D10(v58);
    v123[0] = v125[1];
    v123[1] = v125[2];
    (*(v89 + 104))(v90, *MEMORY[0x1E69816C0], v87);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C800, &qword_1C55AFAD8);
    sub_1C5451F94();
    v60 = v123;
    sub_1C5595AA4();
    (*(v89 + 8))(v90, v87);
    sub_1C5436F54(v60);
    v71 = sub_1C54520C0();
    sub_1C540EFD8(v95, v93, v97);
    sub_1C54521F0(v95);
    v64 = sub_1C5595434();
    sub_1C5594CF4();
    sub_1C5594CF4();
    v65 = &v53;
    MEMORY[0x1EEE9AC00](&v53, v34, v35, v36);
    v37 = v99;
    v38 = v76;
    v62 = &v53 - 6;
    *(&v53 - 4) = v39;
    *(&v53 - 3) = v38;
    *(&v53 - 2) = v37;
    *(&v53 - 1) = v40;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C828, &unk_1C55B85B0);
    sub_1C54522C8();
    sub_1C5596064();

    v41 = *v79;
    v129 = v79[1];
    v128 = v41;
    v42 = v79[2];
    v43 = v79[3];
    v44 = v79[4];
    v133 = v120;
    v132 = v44;
    v131 = v43;
    v130 = v42;
    v117[1] = v129;
    v117[0] = v128;
    v118 = v120;
    v117[4] = v44;
    v117[3] = v43;
    v117[2] = v42;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C830, &unk_1C55AFAF0);
    v73 = sub_1C5452350();
    v75 = v121;
    v66 = v117;
    sub_1C540EFD8(v117, v69, v121);
    sub_1C54523D8(v66);
    v113 = sub_1C5596044();
    v114 = v45 & 1;
    v70 = MEMORY[0x1E6981840];
    v72 = MEMORY[0x1E6981838];
    sub_1C540EFD8(&v113, MEMORY[0x1E6981840], &v115);
    sub_1C5452458(v97, v95);
    v112[0] = v95;
    v74 = v111;
    sub_1C5452578(v75, v111);
    v112[1] = v74;
    v110 = v116;
    v109 = v115;
    v112[2] = &v109;
    v108[0] = v93;
    v108[1] = v69;
    v108[2] = v70;
    v107[0] = v71;
    v107[1] = v73;
    v107[2] = v72;
    sub_1C540F5A0(v112, 3uLL, v108, v107, v86);
    sub_1C54523D8(v74);
    sub_1C54521F0(v95);
    sub_1C54526A8(v86, v84);
    v46 = sub_1C5430CA0();
    sub_1C540FD1C(v84, v82, MEMORY[0x1E6981E70], v46, MEMORY[0x1E6981E60], v103);
    sub_1C5452964(v84);
    sub_1C5451D30(v103, v105);
    sub_1C5452964(v86);
    sub_1C54523D8(v75);
    sub_1C54521F0(v97);
  }

  else
  {
    v47 = sub_1C5596234();
    v53 = MEMORY[0x1E6981E70];
    v54 = MEMORY[0x1E6981E60];
    v49 = sub_1C540EFD8(v47, MEMORY[0x1E6981E70], v48);
    sub_1C540EFD8(v49, v53, v50);
    v51 = sub_1C5430CA0();
    sub_1C54108A0(v51, v82, v53, v51, v54, v103);
    sub_1C5451D30(v103, v105);
  }

  sub_1C54347C8(v105, v103);
  sub_1C5430BFC();
  sub_1C540EFD8(v103, v101, v80);
  sub_1C543465C(v103);
  return sub_1C543465C(v105);
}

uint64_t sub_1C54515D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(v130, 0, sizeof(v130));
  v99 = 0;
  v100 = 0;
  v97 = 0u;
  v98 = 0u;
  v68 = 0u;
  v69 = 0u;
  v133 = a1;
  v134 = a2;
  v131 = a3;
  v132 = a4;
  sub_1C5594CF4();
  v126 = sub_1C55959D4();
  v127 = v5;
  v128 = v6;
  v129 = v7;
  v51 = v5;
  v52 = v6;
  v53 = v7;
  sub_1C5595924();
  sub_1C5595864();
  sub_1C55958C4();

  v122 = v126;
  v123 = v51;
  v124 = v52 & 1;
  v125 = v53;
  v118 = sub_1C55959C4();
  v119 = v8;
  v120 = v9;
  v121 = v10;
  v54 = v8;
  v55 = v9;
  v56 = v10;

  sub_1C5412EA0(v126, v51, v52 & 1);

  v115[0] = v118;
  v115[1] = v54;
  v116 = v55 & 1;
  v117 = v56;
  sub_1C540EFD8(v115, MEMORY[0x1E6981148], v130);
  sub_1C5414260(v115);
  sub_1C5594CF4();
  if (a4)
  {
    v99 = a3;
    v100 = a4;
    sub_1C5594CF4();
    sub_1C55953C4();
    v94 = 0;
    v95 = 0;
    v96 = 256;
    v90 = sub_1C55959E4();
    v91 = v11;
    v92 = v12;
    v93 = v13;
    v22 = v11;
    v21 = v12;
    v23 = v13;
    v89 = sub_1C5430454();
    v85 = v90;
    v86 = v22;
    v87 = v21 & 1;
    v88 = v23;
    v81 = sub_1C5595994();
    v82 = v14;
    v83 = v15;
    v84 = v16;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    sub_1C5412EA0(v90, v22, v21 & 1);

    sub_1C5595814();
    v77 = v81;
    v78 = v24;
    v79 = v25 & 1;
    v80 = v26;
    v73 = sub_1C55959C4();
    v74 = v17;
    v75 = v18;
    v76 = v19;
    v27 = v17;
    v28 = v18;
    v29 = v19;

    sub_1C5412EA0(v81, v24, v25 & 1);

    v70[0] = v73;
    v70[1] = v27;
    v71 = v28 & 1;
    v72 = v29;
    v36 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v70, MEMORY[0x1E6981148], &v97);
    sub_1C5414260(v70);
    v30 = v97;
    v31 = v98;
    v32 = *(&v98 + 1);
    sub_1C54130AC(v97, *(&v97 + 1), v98 & 1);
    sub_1C5594CF4();
    v65 = v30;
    v66 = v31 & 1;
    v67 = v32;
    sub_1C540EFD8(&v65, v36, &v68);
    sub_1C5414260(&v65);
    v34 = v68;
    v33 = v69;
    v35 = *(&v69 + 1);
    sub_1C54130AC(v68, *(&v68 + 1), v69 & 1);
    sub_1C5594CF4();
    v58 = v34;
    v59 = v33 & 1;
    v60 = v35;
    sub_1C540F554(&v58, v36, &v61);
    sub_1C54366A4(&v58);
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    sub_1C54365B4(v61, v62, v63, v64);
    v111 = v37;
    v112 = v38;
    v113 = v39;
    v114 = v40;
    sub_1C5414260(&v68);
    sub_1C5414260(&v97);

    v45 = v37;
    v46 = v38;
    v47 = v39;
    v48 = v40;
  }

  else
  {
    memset(v106, 0, sizeof(v106));
    sub_1C540F554(v106, MEMORY[0x1E6981148], &v107);
    v41 = v107;
    v42 = v108;
    v43 = v109;
    v44 = v110;
    sub_1C54365B4(v107, v108, v109, v110);
    v111 = v41;
    v112 = v42;
    v113 = v43;
    v114 = v44;
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v48 = v44;
  }

  sub_1C54142A8(v130, v104);
  v105[0] = v104;
  v103[0] = v45;
  v103[1] = v46;
  v103[2] = v47;
  v103[3] = v48;
  v105[1] = v103;
  v102[0] = MEMORY[0x1E6981148];
  v102[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448, &qword_1C55AFCB0);
  v101[0] = MEMORY[0x1E6981138];
  v101[1] = sub_1C5436610();
  sub_1C540F5A0(v105, 2uLL, v102, v101, a5);
  sub_1C54366A4(v103);
  sub_1C5414260(v104);
  sub_1C54366A4(&v111);
  return sub_1C5414260(v130);
}

_OWORD *sub_1C5451D30(_OWORD *a1, _OWORD *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350, &qword_1C55AFAD0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v15 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0);
    v8 = (a2 + *(v2 + 36));
    v9 = (a1 + *(v2 + 36));
    *v8 = *v9;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50);
    v11 = v8 + *(v3 + 28);
    v10 = v9 + *(v3 + 28);
    v4 = sub_1C5595F34();
    (*(*(v4 - 8) + 32))(v11, v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368, &qword_1C55AE6C0);
    memcpy(a2 + *(v12 + 48), a1 + *(v12 + 48), 0x58uLL);
    v5 = a2 + *(v12 + 64);
    v6 = a1 + *(v12 + 64);
    *v5 = *v6;
    v5[8] = v6[8];
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1C5451EEC(uint64_t a1)
{
  v3 = sub_1C5595454();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1C5451F94()
{
  v2 = qword_1EC15C808;
  if (!qword_1EC15C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C800, &qword_1C55AFAD8);
    sub_1C5452038();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5452038()
{
  v2 = qword_1EC159FE8;
  if (!qword_1EC159FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C810, &unk_1C55AFAE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54520C0()
{
  v2 = qword_1EC15C818;
  if (!qword_1EC15C818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C358, &unk_1C55AE6B0);
    sub_1C5451F94();
    sub_1C5452168();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5452168()
{
  v2 = qword_1EC15C820;
  if (!qword_1EC15C820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C360, &qword_1C55B0E50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C820);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C54521F0(void *a1)
{

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(&v3[v4]);
  return a1;
}

unint64_t sub_1C54522C8()
{
  v2 = qword_1EC159FB8;
  if (!qword_1EC159FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C828, &unk_1C55B85B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5452350()
{
  v2 = qword_1EC159FC8;
  if (!qword_1EC159FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C830, &unk_1C55AFAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54523D8(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 80))
  {
    sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
  }

  return a1;
}

char *sub_1C5452458(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0) + 36);
  v8 = *&a1[v7];

  *&a2[v7] = v8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v2 = sub_1C5595F34();
  (*(*(v2 - 8) + 16))(&a2[v7 + v9], &a1[v7 + v9]);
  return a2;
}

uint64_t sub_1C5452578(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_1C54130AC(v7, v8, v9 & 1);
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v12 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v12;
  if (*(a1 + 80))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    sub_1C54130AC(v3, v4, v5 & 1);
    *(a2 + 56) = v3;
    *(a2 + 64) = v4;
    *(a2 + 72) = v5 & 1;
    v6 = *(a1 + 80);
    sub_1C5594CF4();
    *(a2 + 80) = v6;
  }

  else
  {
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
  }

  return a2;
}

char *sub_1C54526A8(char *a1, char *a2)
{
  v12 = *a1;

  *a2 = v12;
  v13 = *(a1 + 1);

  *(a2 + 1) = v13;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0) + 36);
  v15 = *&a1[v14];

  *&a2[v14] = v15;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v2 = sub_1C5595F34();
  (*(*(v2 - 8) + 16))(&a2[v14 + v16], &a1[v14 + v16]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368, &qword_1C55AE6C0);
  v20 = *(v19 + 48);
  v24 = &a2[v20];
  *v24 = *&a1[v20];
  v24[16] = a1[v20 + 16];
  v21 = *&a1[v20 + 24];
  v22 = *&a1[v20 + 32];
  v23 = a1[v20 + 40];
  sub_1C54130AC(v21, v22, v23 & 1);
  *(v24 + 3) = v21;
  *(v24 + 4) = v22;
  v24[40] = v23 & 1;
  v25 = *&a1[v20 + 48];
  sub_1C5594CF4();
  *(v24 + 6) = v25;
  if (*&a1[v20 + 80])
  {
    v7 = *&a1[v20 + 56];
    v8 = *&a1[v20 + 64];
    v9 = a1[v20 + 72];
    sub_1C54130AC(v7, v8, v9 & 1);
    v10 = &a2[v20];
    *(v10 + 7) = v7;
    *(v10 + 8) = v8;
    v10[72] = v9 & 1;
    v11 = *&a1[v20 + 80];
    sub_1C5594CF4();
    *(v10 + 10) = v11;
  }

  else
  {
    v3 = &a2[v20];
    *(v3 + 56) = *&a1[v20 + 56];
    *(v3 + 72) = *&a1[v20 + 72];
  }

  result = a2;
  v5 = *(v19 + 64);
  v6 = &a2[v5];
  *v6 = *&a1[v5];
  v6[8] = a1[v5 + 8];
  return result;
}

void *sub_1C5452964(void *a1)
{

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v1 = sub_1C5595F34();
  (*(*(v1 - 8) + 8))(&v3[v4]);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368, &qword_1C55AE6C0) + 48);
  sub_1C5412EA0(*(a1 + v6 + 24), *(a1 + v6 + 32), *(a1 + v6 + 40) & 1);

  if (*(a1 + v6 + 80))
  {
    sub_1C5412EA0(*(a1 + v6 + 56), *(a1 + v6 + 64), *(a1 + v6 + 72) & 1);
  }

  return a1;
}

uint64_t sub_1C5452AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v117 = a9;
  v75 = a1;
  v86 = a2;
  v78 = a3;
  v88 = a4;
  v76 = a5;
  v85 = a6;
  v79 = a7;
  v89 = a8;
  v77 = a10;
  v87 = a11;
  v63 = a12;
  v111 = a13;
  v112 = a14;
  v113 = a15;
  v84 = sub_1C545340C;
  v81 = sub_1C545394C;
  v105 = MEMORY[0x1E697CDB0];
  v146 = 0;
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v138 = 0;
  v139 = 0;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v131 = 0;
  v147 = a16;
  v56 = 0;
  v102 = sub_1C5595564();
  v97 = *(v102 - 8);
  v98 = v102 - 8;
  v57 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v17, v18, v19);
  v99 = &v56 - v57;
  v73 = sub_1C5596384();
  v69 = *(v73 - 8);
  v70 = v73 - 8;
  v67 = v69;
  v68 = *(v69 + 64);
  v58 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73, v20, v21, v22);
  v72 = &v56 - v58;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C288, &qword_1C55AE618);
  v93 = *(v96 - 8);
  v94 = v96 - 8;
  v59 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96, v23, v24, v25);
  v95 = &v56 - v59;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C270, &qword_1C55AE610);
  v60 = (*(*(v101 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v101, v26, v27, v28);
  v100 = &v56 - v60;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338, &qword_1C55AE690);
  v107 = *(v110 - 8);
  v108 = v110 - 8;
  v61 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110, v29, v30, v31);
  v109 = &v56 - v61;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268, &unk_1C55AFB00);
  v62 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115, v32, v33, v34);
  v116 = &v56 - v62;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258, &unk_1C55AE600);
  v65 = *(*(v118 - 8) + 64);
  v64 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72, v63, v73, v88);
  v120 = &v56 - v64;
  v35 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = MEMORY[0x1EEE9AC00](v36, v37, v38, v39);
  v121 = &v56 - v35;
  v146 = &v56 - v35;
  v144 = a1;
  v145 = v86;
  v142 = v41;
  v143 = v42;
  v140 = v43;
  v141 = v44;
  v138 = v45;
  v139 = v46;
  v136 = v47;
  v137 = v48;
  v135 = v49;
  v132 = v50;
  v133 = v112;
  v134 = v113;
  v131 = v66;
  (*(v69 + 16))(v40);

  v71 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v74 = (v71 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v69 + 32))(v80 + v71, v72, v73);
  v51 = v112;
  v52 = v113;
  v53 = v80 + v74;
  *v53 = v111;
  *(v53 + 8) = v51;
  *(v53 + 16) = v52;
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  v82 = v122;
  v122[2] = v76;
  v122[3] = v85;
  v122[4] = v75;
  v122[5] = v86;
  v122[6] = v77;
  v122[7] = v87;
  v122[8] = v78;
  v122[9] = v88;
  v122[10] = v79;
  v122[11] = v89;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C838, &qword_1C55AFB10);
  sub_1C54539A0();
  sub_1C5595FD4();

  sub_1C5596244();
  v91 = sub_1C54308B4();
  v92 = sub_1C543F8AC();
  v90 = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  sub_1C5595B24();
  (*(v93 + 8))(v95, v96);
  sub_1C5456458();
  v103 = sub_1C543080C();
  v104 = sub_1C54309C4();
  sub_1C5595AC4();
  (*(v97 + 8))(v99, v102);
  sub_1C5456470(v100);
  v106 = sub_1C5595EA4();
  v127 = v101;
  v128 = v102;
  v129 = v103;
  v130 = v104;
  swift_getOpaqueTypeConformance2();
  sub_1C5595B94();

  (*(v107 + 8))(v109, v110);
  v124 = v111;
  v125 = v112;
  v126 = v113;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  MEMORY[0x1C6946C30](&v123, v54);
  v114 = v123;
  sub_1C54306EC();
  sub_1C5595DA4();
  sub_1C535E058(v116);
  v119 = sub_1C5430644();
  sub_1C540EFD8(v120, v118, v121);
  sub_1C535BC24(v120);
  sub_1C535BD04(v121, v120);
  sub_1C540EFD8(v120, v118, v117);
  sub_1C535BC24(v120);
  return sub_1C535BC24(v121);
}

uint64_t sub_1C545340C()
{
  v7 = *(sub_1C5596384() - 8);
  v1 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v2 = v0 + ((v1 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16) & 1;

  return sub_1C545338C(v0 + v1, v3, v4, v5);
}

uint64_t sub_1C54534B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a9;
  v32 = a1;
  v42 = a2;
  v33 = a3;
  v43 = a4;
  v34 = a5;
  v44 = a6;
  v35 = a7;
  v45 = a8;
  v36 = a10;
  v46 = a11;
  v37 = 0;
  v41 = sub_1C5453B74;
  v38 = sub_1C54564D8;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C850, &qword_1C55AFB18);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v29 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50, v11, v12, v13);
  v49 = &v28 - v29;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C838, &qword_1C55AFB10);
  v31 = *(*(v52 - 8) + 64);
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42, v14, v33, v43);
  v54 = &v28 - v30;
  MEMORY[0x1EEE9AC00](v15, &v28 - v30, v16, v17);
  v55 = &v28 - v18;
  v77 = &v28 - v18;
  v75 = v32;
  v76 = v19;
  v73 = v20;
  v74 = v21;
  v71 = v22;
  v72 = v23;
  v69 = v24;
  v70 = v25;
  v67 = v36;
  v68 = v26;
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  v39 = &v56;
  v57 = v32;
  v58 = v42;
  v59 = v33;
  v60 = v43;
  v61 = v34;
  v62 = v44;
  v63 = v35;
  v64 = v45;
  v65 = v36;
  v66 = v46;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C860, &unk_1C55AFB20);
  sub_1C5453AEC();
  sub_1C5595154();

  sub_1C5453A48();
  sub_1C5595C54();
  (*(v47 + 8))(v49, v50);
  v53 = sub_1C54539A0();
  sub_1C540EFD8(v54, v52, v55);
  sub_1C545652C(v54);
  sub_1C54565BC(v55, v54);
  sub_1C540EFD8(v54, v52, v51);
  sub_1C545652C(v54);
  return sub_1C545652C(v55);
}

unint64_t sub_1C54539A0()
{
  v2 = qword_1EC15C840;
  if (!qword_1EC15C840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C838, &qword_1C55AFB10);
    sub_1C5453A48();
    sub_1C543DC9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5453A48()
{
  v2 = qword_1EC15C848;
  if (!qword_1EC15C848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C850, &qword_1C55AFB18);
    sub_1C5453AEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5453AEC()
{
  v2 = qword_1EC15C858;
  if (!qword_1EC15C858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C860, &unk_1C55AFB20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C858);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5453B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a9;
  v27 = a1;
  v37 = a2;
  v28 = a3;
  v38 = a4;
  v29 = a5;
  v39 = a6;
  v30 = a7;
  v40 = a8;
  v31 = a10;
  v41 = a11;
  v34 = 0;
  v36 = sub_1C5456684;
  v33 = sub_1C5453B74;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C860, &unk_1C55AFB20);
  v42 = *(v48 - 8);
  v43 = v48 - 8;
  v26 = *(v42 + 64);
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37, v11, v28, v38);
  v46 = &v25 - v25;
  MEMORY[0x1EEE9AC00](v12, &v25 - v25, v13, v14);
  v47 = &v25 - v15;
  v72 = &v25 - v15;
  v70 = v27;
  v71 = v16;
  v68 = v17;
  v69 = v18;
  v66 = v19;
  v67 = v20;
  v64 = v21;
  v65 = v22;
  v62 = v31;
  v63 = v23;
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  v32 = &v51;
  v52 = v27;
  v53 = v37;
  v54 = v28;
  v55 = v38;
  v56 = v29;
  v57 = v39;
  v58 = v30;
  v59 = v40;
  v60 = v31;
  v61 = v41;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C868, &qword_1C55AFC58);
  sub_1C54566D8();
  sub_1C5595F64();

  v45 = sub_1C5453AEC();
  sub_1C540EFD8(v46, v48, v47);
  v50 = *(v42 + 8);
  v49 = v42 + 8;
  v50(v46, v48);
  (*(v42 + 16))(v46, v47, v48);
  sub_1C540EFD8(v46, v48, v44);
  v50(v46, v48);
  return (v50)(v47, v48);
}

uint64_t sub_1C5453FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v42 = a9;
  v28 = a1;
  v37 = a2;
  v29 = a3;
  v38 = a4;
  v30 = a5;
  v39 = a6;
  v31 = a7;
  v40 = a8;
  v32 = a10;
  v41 = a11;
  v33 = sub_1C5456760;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C868, &qword_1C55AFC58);
  v27 = *(*(v43 - 8) + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37, v11, v29, v38);
  v45 = &v25 - v26;
  MEMORY[0x1EEE9AC00](v12, &v25 - v26, v13, v14);
  v46 = &v25 - v15;
  v68 = &v25 - v15;
  v66 = v28;
  v67 = v16;
  v64 = v17;
  v65 = v18;
  v62 = v19;
  v63 = v20;
  v60 = v21;
  v61 = v22;
  v58 = v32;
  v59 = v23;
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  v34 = &v47;
  v48 = v28;
  v49 = v37;
  v50 = v29;
  v51 = v38;
  v52 = v30;
  v53 = v39;
  v54 = v31;
  v55 = v40;
  v56 = v32;
  v57 = v41;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C878, &qword_1C55AFC60);
  v36 = sub_1C54567B4();
  sub_1C5412C88();
  sub_1C5596024();

  v44 = sub_1C54566D8();
  sub_1C540EFD8(v45, v43, v46);
  sub_1C545683C(v45);
  sub_1C5456C68(v46, v45);
  sub_1C540EFD8(v45, v43, v42);
  sub_1C545683C(v45);
  return sub_1C545683C(v46);
}

void *sub_1C5454380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v97 = v157;
  v96 = v156;
  v126 = a8;
  v125 = a7;
  v124 = a6;
  v123 = a5;
  v122 = a4;
  v121 = a3;
  v136 = a2;
  v133 = a1;
  v98 = a9;
  v127 = a11;
  v99 = a11;
  v134 = a10;
  v100 = a10;
  v101 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  memset(v157, 0, 89);
  v155 = 0;
  v154 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v137 = 0;
  v102 = sub_1C5595F34();
  v103 = *(v102 - 8);
  v104 = v103;
  MEMORY[0x1EEE9AC00](0, v102, v11, v12);
  v105 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1C55951E4();
  v107 = *(v106 - 8);
  v108 = v107;
  MEMORY[0x1EEE9AC00](v106 - 8, v106, v14, v15);
  v109 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78);
  v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110 - 8, v110, v17, v18);
  v112 = &v72 - v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C890, &qword_1C55AFC70);
  v114 = *(v113 - 8);
  v115 = v114;
  v117 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113 - 8, v113, v19, v20);
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = &v72 - v119;
  MEMORY[0x1EEE9AC00](&v72 - v119, v21, v22, v23);
  v118 = &v72 - v119;
  MEMORY[0x1EEE9AC00](v24, v25, v26, v27);
  v120 = &v72 - v119;
  v170 = &v72 - v119;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8A8, &qword_1C55AFC88);
  v131 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136, v28, v121, v122);
  v129 = (&v72 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = v129;
  MEMORY[0x1EEE9AC00](v29, v129, v30, v31);
  v130 = &v72 - v32;
  MEMORY[0x1EEE9AC00](v33, v34, v35, v36);
  v132 = (&v72 - v37);
  MEMORY[0x1EEE9AC00](v38, v39, v40, v41);
  v135 = (&v72 - v42);
  v168 = &v72 - v42;
  v166 = v133;
  v167 = v43;
  v164 = v44;
  v165 = v45;
  v162 = v46;
  v163 = v47;
  v160 = v48;
  v161 = v49;
  v158 = v134;
  v159 = v50;
  sub_1C5594CF4();
  if (v136)
  {
    v94 = v133;
    v95 = v136;
    v91 = v136;
    v90 = v133;
    v139 = v133;
    v140 = v136;
    sub_1C5594CF4();
    v138 = sub_1C5595EF4();
    sub_1C5454F40();
    v92 = &v138;
    sub_1C5595BA4();
    (*(v108 + 8))(v109, v106);
    sub_1C5410D10(v92);
    (*(v104 + 104))(v105, *MEMORY[0x1E69816C0], v102);
    sub_1C54573F4();
    sub_1C5595AA4();
    (*(v104 + 8))(v105, v102);
    sub_1C5457EB0(v112);
    v93 = sub_1C545734C();
    sub_1C540EFD8(v118, v113, v120);
    sub_1C5457F38(v118);
    v137 = v118;
    sub_1C5458054(v120, v116);
    sub_1C540EFD8(v116, v113, v118);
    sub_1C5457F38(v116);
    sub_1C5458054(v118, v130);
    (*(v115 + 56))(v130, 0, 1, v113);
    sub_1C540F554(v130, v113, v132);
    sub_1C5457520(v130);
    sub_1C5457684(v132, v135);
    sub_1C5457F38(v118);
    sub_1C5457F38(v120);
  }

  else
  {
    (*(v115 + 56))(v130, 1, 1, v113);
    sub_1C545734C();
    sub_1C540F554(v130, v113, v132);
    sub_1C5457520(v130);
    sub_1C5457684(v132, v135);
  }

  v82 = sub_1C5595434();
  sub_1C5594CF4();
  sub_1C5594CF4();
  sub_1C5594CF4();
  v83 = &v72;
  MEMORY[0x1EEE9AC00](&v72, v51, v52, v53);
  v54 = v125;
  v55 = v124;
  v80 = (&v72 - 8);
  *(&v72 - 6) = v56;
  *(&v72 - 5) = v57;
  *(&v72 - 4) = v58;
  *(&v72 - 3) = v55;
  *(&v72 - 2) = v54;
  *(&v72 - 1) = v59;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8D0, &qword_1C55AFC98);
  sub_1C54578C4();
  v89 = 0;
  v88 = 1;
  sub_1C5596064();

  v60 = v97;
  v61 = v96;
  v62 = *(v96 + 6);
  *(v97 + 7) = *(v96 + 7);
  v60[6] = v62;
  v63 = v61[8];
  v64 = v61[9];
  v65 = v61[10];
  *(v60 + 169) = *(v61 + 169);
  v60[10] = v65;
  v60[9] = v64;
  v60[8] = v63;
  v66 = v60[6];
  v61[1] = v60[7];
  *v61 = v66;
  v67 = v60[8];
  v68 = v60[9];
  v69 = v60[10];
  *(v61 + 73) = *(v60 + 169);
  v61[4] = v69;
  v61[3] = v68;
  v61[2] = v67;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8E0, &qword_1C55AFCA0);
  v84 = v85;
  v86 = sub_1C545794C();
  v87 = v156;
  sub_1C540EFD8(v156, v85, v157);
  sub_1C54579D4(v87);
  v152 = sub_1C5596044();
  v153 = v70 & 1;
  sub_1C540EFD8(&v152, MEMORY[0x1E6981840], &v154);
  sub_1C5594CF4();
  if (v99)
  {
    v78 = v100;
    v79 = v99;
    v76 = v99;
    v77 = v100;
    v144 = v100;
    v145 = v99;
    v143 = v120;
    sub_1C5594CF4();
    v142 = sub_1C5595EF4();
    sub_1C5454F40();
    v74 = &v142;
    sub_1C5595BA4();
    (*(v108 + 8))(v109, v106);
    sub_1C5410D10(v74);
    (*(v104 + 104))(v105, *MEMORY[0x1E69816C0], v102);
    sub_1C54573F4();
    sub_1C5595AA4();
    (*(v104 + 8))(v105, v102);
    sub_1C5457EB0(v112);
    v75 = sub_1C545734C();
    sub_1C540EFD8(v118, v113, v120);
    sub_1C5457F38(v118);
    v141 = v118;
    sub_1C5458054(v120, v116);
    sub_1C540EFD8(v116, v113, v118);
    sub_1C5457F38(v116);
    sub_1C5458054(v118, v130);
    (*(v115 + 56))(v130, 0, 1, v113);
    sub_1C540F554(v130, v113, v132);
    sub_1C5457520(v130);
    sub_1C5457684(v132, v129);
    sub_1C5457F38(v118);
    sub_1C5457F38(v120);
  }

  else
  {
    (*(v115 + 56))(v130, 1, 1, v113);
    sub_1C545734C();
    sub_1C540F554(v130, v113, v132);
    sub_1C5457520(v130);
    sub_1C5457684(v132, v129);
  }

  sub_1C5457A64(v135, v132);
  v151[0] = v132;
  v73 = v157;
  v72 = v150;
  sub_1C5457CA4(v157, v150);
  v151[1] = v72;
  v149 = v155;
  v148 = v154;
  v151[2] = &v148;
  sub_1C5457A64(v129, v130);
  v151[3] = v130;
  v147[0] = v128;
  v147[1] = v84;
  v147[2] = MEMORY[0x1E6981840];
  v147[3] = v128;
  v146[0] = sub_1C5457E18();
  v146[1] = v86;
  v146[2] = MEMORY[0x1E6981838];
  v146[3] = v146[0];
  sub_1C540F5A0(v151, 4uLL, v147, v146, v98);
  sub_1C5457520(v130);
  sub_1C54579D4(v72);
  sub_1C5457520(v132);
  sub_1C5457520(v129);
  sub_1C54579D4(v73);
  return sub_1C5457520(v135);
}

uint64_t sub_1C5454F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v243 = a7;
  v244 = a1;
  v254 = a2;
  v245 = a3;
  v246 = a4;
  v247 = a5;
  v248 = a6;
  v466 = 0;
  v467 = 0;
  v464 = 0;
  v465 = 0;
  v462 = 0;
  v463 = 0;
  v434 = 0;
  v435 = 0;
  v432 = 0u;
  v433 = 0u;
  v402 = 0u;
  v403 = 0u;
  v385 = 0;
  v386 = 0;
  v359 = 0;
  v360 = 0;
  v357 = 0u;
  v358 = 0u;
  v296 = 0u;
  v297 = 0u;
  v284 = 0;
  v285 = 0;
  v282 = 0u;
  v283 = 0u;
  v265 = 0u;
  v266 = 0u;
  v249 = sub_1C55951E4();
  v250 = *(v249 - 8);
  v251 = v249 - 8;
  v252 = (*(v250 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v254, v7, v245, v246);
  v253 = &v54 - v252;
  v466 = v8;
  v467 = v9;
  v464 = v10;
  v465 = v11;
  v462 = v12;
  v463 = v13;
  sub_1C5594CF4();
  if (v254)
  {
    v241 = v244;
    v242 = v254;
    v228 = v254;
    v203 = v244;
    v284 = v244;
    v285 = v254;
    sub_1C5594CF4();
    v278 = sub_1C55959D4();
    v279 = v14;
    v280 = v15;
    v281 = v16;
    v206 = v278;
    v207 = v14;
    v208 = v15;
    v209 = v16;
    v204 = sub_1C5595924();
    sub_1C5595864();
    v205 = sub_1C55958C4();

    v274 = v206;
    v275 = v207;
    v217 = 1;
    v276 = v208 & 1;
    v277 = v209;
    v270 = sub_1C55959C4();
    v271 = v17;
    v272 = v18;
    v273 = v19;
    v210 = v270;
    v211 = v17;
    v212 = v18;
    v213 = v19;

    sub_1C5412EA0(v206, v207, v208 & 1);

    v214 = v267;
    v267[0] = v210;
    v267[1] = v211;
    v268 = v212 & 1 & v217;
    v269 = v213;
    v227 = &v282;
    v223 = MEMORY[0x1E6981148];
    v224 = MEMORY[0x1E6981138];
    sub_1C540EFD8(v267, MEMORY[0x1E6981148], &v282);
    sub_1C5414260(v214);
    v215 = v282;
    v216 = v283;
    v218 = *(&v283 + 1);
    sub_1C54130AC(v282, *(&v282 + 1), v283 & 1);
    sub_1C5594CF4();
    v219 = &v262;
    v262 = v215;
    v263 = v216 & 1 & v217;
    v264 = v218;
    v226 = &v265;
    sub_1C540EFD8(&v262, v223, &v265);
    sub_1C5414260(v219);
    v221 = v265;
    v220 = v266;
    v222 = *(&v266 + 1);
    sub_1C54130AC(v265, *(&v265 + 1), v266 & 1);
    sub_1C5594CF4();
    v225 = &v255;
    v255 = v221;
    v256 = v220 & 1;
    v257 = v222;
    sub_1C540F554(&v255, v223, &v258);
    sub_1C54366A4(v225);
    v229 = v258;
    v230 = v259;
    v231 = v260;
    v232 = v261;
    sub_1C54365B4(v258, v259, v260, v261);
    v458 = v229;
    v459 = v230;
    v460 = v231;
    v461 = v232;
    sub_1C5414260(v226);
    sub_1C5414260(v227);

    v237 = v229;
    v238 = v230;
    v239 = v231;
    v240 = v232;
  }

  else
  {
    memset(v453, 0, sizeof(v453));
    sub_1C540F554(v453, MEMORY[0x1E6981148], &v454);
    v233 = v454;
    v234 = v455;
    v235 = v456;
    v236 = v457;
    sub_1C54365B4(v454, v455, v456, v457);
    v458 = v233;
    v459 = v234;
    v460 = v235;
    v461 = v236;
    v237 = v233;
    v238 = v234;
    v239 = v235;
    v240 = v236;
  }

  v199 = v240;
  v200 = v239;
  v201 = v238;
  v202 = v237;
  sub_1C5594CF4();
  if (v246)
  {
    v197 = v245;
    v198 = v246;
    v193 = v246;
    v194 = v245;
    v385 = v245;
    v386 = v246;
    sub_1C5594CF4();
    if (v248)
    {
      v191 = v247;
      v192 = v248;
      v178 = v248;
      v130 = v247;
      v359 = v247;
      v360 = v248;
      sub_1C5594CF4();
      sub_1C55953C4();
      v353 = 0;
      v354 = 0;
      v355 = 0;
      v167 = 1;
      v356 = 1;
      v349 = sub_1C55959E4();
      v350 = v20;
      v351 = v21;
      v352 = v22;
      v131 = v349;
      v132 = v20;
      v133 = v21;
      v134 = v22;
      sub_1C5454F40();
      v345 = v131;
      v346 = v132;
      v347 = v133 & 1 & v167;
      v348 = v134;
      v140 = MEMORY[0x1E697E558];
      v341 = sub_1C5595994();
      v342 = v23;
      v343 = v24;
      v344 = v25;
      v136 = v341;
      v137 = v23;
      v138 = v24;
      v139 = v25;
      v142 = *(v250 + 8);
      v141 = v250 + 8;
      v142(v253, v249);
      sub_1C5412EA0(v131, v132, v133 & 1);

      v135 = sub_1C5595814();
      v337 = v136;
      v338 = v137;
      v339 = v138 & 1 & v167;
      v340 = v139;
      v333 = sub_1C55959C4();
      v334 = v26;
      v335 = v27;
      v336 = v28;
      v156 = v333;
      v157 = v26;
      v158 = v27;
      v159 = v28;

      sub_1C5412EA0(v136, v137, v138 & 1);

      sub_1C5594CF4();
      sub_1C5595EF4();
      v329 = sub_1C5595A14();
      v330 = v29;
      v331 = v30;
      v332 = v31;
      v143 = v329;
      v144 = v29;
      v145 = v30;
      v146 = v31;
      sub_1C5454F40();
      v325 = v143;
      v326 = v144;
      v327 = v145 & 1 & v167;
      v328 = v146;
      v321 = sub_1C5595994();
      v322 = v32;
      v323 = v33;
      v324 = v34;
      v148 = v321;
      v149 = v32;
      v150 = v33;
      v151 = v34;
      v142(v253, v249);
      sub_1C5412EA0(v143, v144, v145 & 1);

      v147 = sub_1C5595814();
      v317 = v148;
      v318 = v149;
      v319 = v150 & 1 & v167;
      v320 = v151;
      v313 = sub_1C55959C4();
      v314 = v35;
      v315 = v36;
      v316 = v37;
      v153 = v313;
      v154 = v35;
      v152 = v36;
      v155 = v37;

      sub_1C5412EA0(v148, v149, v150 & 1);

      v309 = v156;
      v310 = v157;
      v311 = v158 & 1 & v167;
      v312 = v159;
      v305 = v153;
      v306 = v154;
      v307 = v152 & 1 & v167;
      v308 = v155;
      v301 = sub_1C55959A4();
      v302 = v38;
      v303 = v39;
      v304 = v40;
      v160 = v301;
      v161 = v38;
      v162 = v39;
      v163 = v40;
      sub_1C5412EA0(v153, v154, v152 & 1);

      sub_1C5412EA0(v156, v157, v158 & 1);

      v164 = v298;
      v298[0] = v160;
      v298[1] = v161;
      v299 = v162 & 1 & v167;
      v300 = v163;
      v177 = &v357;
      v173 = MEMORY[0x1E6981148];
      v174 = MEMORY[0x1E6981138];
      sub_1C540EFD8(v298, MEMORY[0x1E6981148], &v357);
      sub_1C5414260(v164);
      v165 = v357;
      v166 = v358;
      v168 = *(&v358 + 1);
      sub_1C54130AC(v357, *(&v357 + 1), v358 & 1);
      sub_1C5594CF4();
      v169 = &v293;
      v293 = v165;
      v294 = v166 & 1 & v167;
      v295 = v168;
      v176 = &v296;
      sub_1C540EFD8(&v293, v173, &v296);
      sub_1C5414260(v169);
      v171 = v296;
      v170 = v297;
      v172 = *(&v297 + 1);
      sub_1C54130AC(v296, *(&v296 + 1), v297 & 1);
      sub_1C5594CF4();
      v175 = &v286;
      v286 = v171;
      v287 = v170 & 1;
      v288 = v172;
      sub_1C540F554(&v286, v173, &v289);
      sub_1C54366A4(v175);
      v179 = v289;
      v180 = v290;
      v181 = v291;
      v182 = v292;
      sub_1C54365B4(v289, v290, v291, v292);
      v381 = v179;
      v382 = v180;
      v383 = v181;
      v384 = v182;
      sub_1C5414260(v176);
      sub_1C5414260(v177);

      v187 = v179;
      v188 = v180;
      v189 = v181;
      v190 = v182;
    }

    else
    {
      memset(v376, 0, sizeof(v376));
      sub_1C540F554(v376, MEMORY[0x1E6981148], &v377);
      v183 = v377;
      v184 = v378;
      v185 = v379;
      v186 = v380;
      sub_1C54365B4(v377, v378, v379, v380);
      v381 = v183;
      v382 = v184;
      v383 = v185;
      v384 = v186;
      v187 = v183;
      v188 = v184;
      v189 = v185;
      v190 = v186;
    }

    v109 = v371;
    v371[0] = v187;
    v371[1] = v188;
    v371[2] = v189;
    v371[3] = v190;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448, &qword_1C55AFCB0);
    v115 = sub_1C5436610();
    v119 = &v372;
    sub_1C540EFD8(v109, v114, &v372);
    sub_1C54366A4(v109);
    v110 = v372;
    v111 = v373;
    v112 = v374;
    v113 = v375;
    sub_1C54365B4(v372, v373, v374, v375);
    v116 = v363;
    v363[0] = v110;
    v363[1] = v111;
    v363[2] = v112;
    v363[3] = v113;
    sub_1C540FD1C(v363, v114, MEMORY[0x1E6981148], v115, MEMORY[0x1E6981138], v364);
    sub_1C54366A4(v116);
    v118 = v361;
    v361[0] = v364[0];
    v361[1] = v364[1];
    v361[2] = v364[2];
    v361[3] = v364[3];
    v362 = v365;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8F8, &qword_1C55AFCA8);
    sub_1C54581D0();
    sub_1C540F554(v118, v117, &v366);
    sub_1C545836C(v118);
    v120 = v366;
    v121 = v367;
    v122 = v368;
    v123 = v369;
    v124 = v370;
    sub_1C5458274(v366, v367, v368, v369, v370);
    v448 = v120;
    v449 = v121;
    v450 = v122;
    v451 = v123;
    v452 = v124;
    sub_1C54366A4(v119);
    sub_1C54366A4(&v381);

    v125 = v120;
    v126 = v121;
    v127 = v122;
    v128 = v123;
    v129 = v124;
  }

  else
  {
    sub_1C5594CF4();
    if (v248)
    {
      v195 = v247;
      v196 = v248;
      v91 = v248;
      v60 = v247;
      v434 = v247;
      v435 = v248;
      sub_1C5594CF4();
      sub_1C55953C4();
      v428 = 0;
      v429 = 0;
      v430 = 0;
      v81 = 1;
      v431 = 1;
      v424 = sub_1C55959E4();
      v425 = v41;
      v426 = v42;
      v427 = v43;
      v62 = v424;
      v63 = v41;
      v61 = v42;
      v64 = v43;
      v423 = sub_1C5430454();
      v419 = v62;
      v420 = v63;
      v421 = v61 & 1 & v81;
      v422 = v64;
      v415 = sub_1C5595994();
      v416 = v44;
      v417 = v45;
      v418 = v46;
      v66 = v415;
      v67 = v44;
      v68 = v45;
      v69 = v46;
      sub_1C5412EA0(v62, v63, v61 & 1);

      v65 = sub_1C5595814();
      v411 = v66;
      v412 = v67;
      v413 = v68 & 1 & v81;
      v414 = v69;
      v407 = sub_1C55959C4();
      v408 = v47;
      v409 = v48;
      v410 = v49;
      v70 = v407;
      v71 = v47;
      v72 = v48;
      v73 = v49;

      sub_1C5412EA0(v66, v67, v68 & 1);

      v74 = v404;
      v404[0] = v70;
      v404[1] = v71;
      v405 = v72 & 1 & v81;
      v406 = v73;
      v90 = &v432;
      v84 = MEMORY[0x1E6981148];
      v85 = MEMORY[0x1E6981138];
      sub_1C540EFD8(v404, MEMORY[0x1E6981148], &v432);
      sub_1C5414260(v74);
      v75 = v432;
      v76 = v433;
      v77 = *(&v433 + 1);
      sub_1C54130AC(v432, *(&v432 + 1), v433 & 1);
      sub_1C5594CF4();
      v78 = &v399;
      v399 = v75;
      v400 = v76 & 1 & v81;
      v401 = v77;
      v89 = &v402;
      sub_1C540EFD8(&v399, v84, &v402);
      sub_1C5414260(v78);
      v79 = v402;
      v80 = v403;
      v82 = *(&v403 + 1);
      sub_1C54130AC(v402, *(&v402 + 1), v403 & 1);
      sub_1C5594CF4();
      v86 = &v389;
      v389 = v79;
      v390 = v80 & 1 & v81;
      v391 = v82;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448, &qword_1C55AFCB0);
      v50 = sub_1C5436610();
      sub_1C54108A0(v86, v83, v84, v50, v85, v392);
      sub_1C5414260(v86);
      v88 = v387;
      v387[0] = v392[0];
      v387[1] = v392[1];
      v387[2] = v392[2];
      v387[3] = v392[3];
      v388 = v393;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8F8, &qword_1C55AFCA8);
      sub_1C54581D0();
      sub_1C540F554(v88, v87, &v394);
      sub_1C545836C(v88);
      v92 = v394;
      v93 = v395;
      v94 = v396;
      v95 = v397;
      v96 = v398;
      sub_1C5458274(v394, v395, v396, v397, v398);
      v448 = v92;
      v449 = v93;
      v450 = v94;
      v451 = v95;
      v452 = v96;
      sub_1C5414260(v89);
      sub_1C5414260(v90);

      v104 = v92;
      v105 = v93;
      v106 = v94;
      v107 = v95;
      v108 = v96;
    }

    else
    {
      v98 = v442;
      memset(v442, 0, 32);
      v442[32] = -1;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8F8, &qword_1C55AFCA8);
      sub_1C54581D0();
      sub_1C540F554(v98, v97, &v443);
      v99 = v443;
      v100 = v444;
      v101 = v445;
      v102 = v446;
      v103 = v447;
      sub_1C5458274(v443, v444, v445, v446, v447);
      v448 = v99;
      v449 = v100;
      v450 = v101;
      v451 = v102;
      v452 = v103;
      v104 = v99;
      v105 = v100;
      v106 = v101;
      v107 = v102;
      v108 = v103;
    }

    v125 = v104;
    v126 = v105;
    v127 = v106;
    v128 = v107;
    v129 = v108;
  }

  v59 = v440;
  v440[0] = v202;
  v440[1] = v201;
  v440[2] = v200;
  v440[3] = v199;
  v57 = v441;
  v441[0] = v440;
  v58 = v438;
  v438[0] = v125;
  v438[1] = v126;
  v438[2] = v127;
  v438[3] = v128;
  v439 = v129;
  v441[1] = v438;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448, &qword_1C55AFCB0);
  v55 = v437;
  v437[0] = v51;
  v437[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C908, &qword_1C55AFCB8);
  v52 = sub_1C5436610();
  v56 = v436;
  v436[0] = v52;
  v436[1] = sub_1C54582D4();
  sub_1C540F5A0(v57, 2uLL, v55, v56, v243);
  sub_1C545836C(v58);
  sub_1C54366A4(v59);
  sub_1C545836C(&v448);
  return sub_1C54366A4(&v458);
}

uint64_t sub_1C5456470(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C288, &qword_1C55AE618);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C545652C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C850, &qword_1C55AFB18);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C838, &qword_1C55AFB10);

  return a1;
}

uint64_t sub_1C54565BC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C850, &qword_1C55AFB18);
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C838, &qword_1C55AFB10) + 36);
  v8 = *(a1 + v7);

  result = a2;
  v4 = a2 + v7;
  *v4 = v8;
  *(v4 + 8) = *(a1 + v7 + 8);
  return result;
}

unint64_t sub_1C54566D8()
{
  v2 = qword_1EC15C870;
  if (!qword_1EC15C870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C868, &qword_1C55AFC58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54567B4()
{
  v2 = qword_1EC15C880;
  if (!qword_1EC15C880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C878, &qword_1C55AFC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C880);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C545683C(uint64_t a1)
{
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C888, &qword_1C55AFC68) + 44);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C890, &qword_1C55AFC70);
  v18 = *(*(v17 - 8) + 48);
  if (!(v18)(a1 + v15, 1))
  {

    v12 = a1 + v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78) + 36);
    v1 = sub_1C55951E4();
    (*(*(v1 - 8) + 8))(v12);
    v13 = a1 + v15 + *(v17 + 36);

    v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
    v2 = sub_1C5595F34();
    (*(*(v2 - 8) + 8))(v14);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8A0, &qword_1C55AFC80);
  v11 = a1 + v15 + *(v10 + 48);
  if (*(v11 + 48))
  {
    sub_1C5412EA0(*(v11 + 24), *(v11 + 32), *(v11 + 40) & 1);
  }

  if (*(v11 + 88) != 255)
  {
    sub_1C5456BA0(*(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80), *(v11 + 88) & 1);
  }

  v9 = a1 + v15 + *(v10 + 80);
  if (!v18())
  {

    v6 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78) + 36);
    v3 = sub_1C55951E4();
    (*(*(v3 - 8) + 8))(v6);
    v7 = v9 + *(v17 + 36);

    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
    v4 = sub_1C5595F34();
    (*(*(v4 - 8) + 8))(v8);
  }

  return a1;
}

uint64_t sub_1C5456BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_1C5456C0C(a1, a2, a3, a4);
  }

  sub_1C5412EA0(a1, a2, a3 & 1);
}

uint64_t sub_1C5456C0C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C5412EA0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C5456C68(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C888, &qword_1C55AFC68) + 44);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C890, &qword_1C55AFC70);
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if ((v50)(a1 + v46, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8A8, &qword_1C55AFC88);
    memcpy((a2 + v46), (a1 + v46), *(*(v6 - 8) + 64));
  }

  else
  {
    v37 = *(a1 + v46);

    *(a2 + v46) = v37;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78);
    v39 = a2 + v46 + *(v2 + 36);
    v38 = a1 + v46 + *(v2 + 36);
    v3 = sub_1C55951E4();
    (*(*(v3 - 8) + 16))(v39, v38);
    v41 = (a2 + v46 + *(v48 + 36));
    v42 = (a1 + v46 + *(v48 + 36));
    v40 = *v42;

    *v41 = v40;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50);
    v44 = v41 + *(v4 + 28);
    v43 = v42 + *(v4 + 28);
    v5 = sub_1C5595F34();
    (*(*(v5 - 8) + 16))(v44, v43);
    (*(v49 + 56))(a2 + v46, 0, 1, v48);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8A0, &qword_1C55AFC80);
  v35 = a2 + v46 + v34[12];
  v36 = a1 + v46 + v34[12];
  *v35 = *v36;
  *(v35 + 16) = *(v36 + 16);
  if (*(v36 + 48))
  {
    v30 = *(v36 + 24);
    v31 = *(v36 + 32);
    v32 = *(v36 + 40);
    sub_1C54130AC(v30, v31, v32 & 1);
    *(v35 + 24) = v30;
    *(v35 + 32) = v31;
    *(v35 + 40) = v32 & 1;
    v33 = *(v36 + 48);
    sub_1C5594CF4();
    *(v35 + 48) = v33;
  }

  else
  {
    *(v35 + 24) = *(v36 + 24);
    *(v35 + 40) = *(v36 + 40);
  }

  if (*(v36 + 88) == 255)
  {
    memcpy((v35 + 56), (v36 + 56), 0x21uLL);
  }

  else
  {
    v25 = *(v36 + 56);
    v26 = *(v36 + 64);
    v27 = *(v36 + 72);
    v28 = *(v36 + 80);
    v29 = *(v36 + 88);
    sub_1C54572E0(v25, v26, v27, v28, v29 & 1);
    *(v35 + 56) = v25;
    *(v35 + 64) = v26;
    *(v35 + 72) = v27;
    *(v35 + 80) = v28;
    *(v35 + 88) = v29 & 1;
  }

  v7 = a2 + v46 + v34[16];
  v8 = a1 + v46 + v34[16];
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  v23 = (a2 + v46 + v34[20]);
  v24 = (a1 + v46 + v34[20]);
  if (v50())
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8A8, &qword_1C55AFC88);
    memcpy(v23, v24, *(*(v13 - 8) + 64));
  }

  else
  {
    v15 = *v24;

    *v23 = v15;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78);
    v17 = v23 + *(v9 + 36);
    v16 = v24 + *(v9 + 36);
    v10 = sub_1C55951E4();
    (*(*(v10 - 8) + 16))(v17, v16);
    v19 = (v23 + *(v48 + 36));
    v20 = (v24 + *(v48 + 36));
    v18 = *v20;

    *v19 = v18;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50);
    v22 = v19 + *(v11 + 28);
    v21 = v20 + *(v11 + 28);
    v12 = sub_1C5595F34();
    (*(*(v12 - 8) + 16))(v22, v21);
    (*(v49 + 56))(v23, 0, 1, v48);
  }

  return a2;
}

uint64_t sub_1C54572E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_1C54365B4(a1, a2, a3, a4);
  }

  sub_1C54130AC(a1, a2, a3 & 1);
  return sub_1C5594CF4();
}

unint64_t sub_1C545734C()
{
  v2 = qword_1EC15C8B0;
  if (!qword_1EC15C8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C890, &qword_1C55AFC70);
    sub_1C54573F4();
    sub_1C5452168();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C8B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54573F4()
{
  v2 = qword_1EC15C8B8;
  if (!qword_1EC15C8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C898, &qword_1C55AFC78);
    sub_1C5457498();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5457498()
{
  v2 = qword_1EC15C8C0;
  if (!qword_1EC15C8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C8C8, &qword_1C55AFC90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C8C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5457520(void *a1)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C890, &qword_1C55AFC70);
  if (!(*(*(v8 - 8) + 48))(a1, 1))
  {

    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78) + 36);
    v1 = sub_1C55951E4();
    (*(*(v1 - 8) + 8))(v4);
    v5 = a1 + *(v8 + 36);

    v6 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28)];
    v2 = sub_1C5595F34();
    (*(*(v2 - 8) + 8))(v6);
  }

  return a1;
}

void *sub_1C5457684(void *a1, void *a2)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C890, &qword_1C55AFC70);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8A8, &qword_1C55AFC88);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78);
    v9 = a2 + *(v2 + 36);
    v8 = a1 + *(v2 + 36);
    v3 = sub_1C55951E4();
    (*(*(v3 - 8) + 32))(v9, v8);
    v10 = (a2 + *(v16 + 36));
    v11 = (a1 + *(v16 + 36));
    *v10 = *v11;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50);
    v13 = v10 + *(v4 + 28);
    v12 = v11 + *(v4 + 28);
    v5 = sub_1C5595F34();
    (*(*(v5 - 8) + 32))(v13, v12);
    (*(v17 + 56))(a2, 0, 1, v16);
  }

  return a2;
}

unint64_t sub_1C54578C4()
{
  v2 = qword_1EC15C8D8;
  if (!qword_1EC15C8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C8D0, &qword_1C55AFC98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C8D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C545794C()
{
  v2 = qword_1EC15C8E8;
  if (!qword_1EC15C8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C8E0, &qword_1C55AFCA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C8E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54579D4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);
  }

  if (*(a1 + 88) != 255)
  {
    sub_1C5456BA0(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);
  }

  return a1;
}

void *sub_1C5457A64(uint64_t *a1, void *a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C890, &qword_1C55AFC70);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C8A8, &qword_1C55AFC88);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v8 = *a1;

    *a2 = v8;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78);
    v10 = a2 + *(v2 + 36);
    v9 = a1 + *(v2 + 36);
    v3 = sub_1C55951E4();
    (*(*(v3 - 8) + 16))(v10, v9);
    v12 = (a2 + *(v18 + 36));
    v13 = (a1 + *(v18 + 36));
    v11 = *v13;

    *v12 = v11;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50);
    v15 = v12 + *(v4 + 28);
    v14 = v13 + *(v4 + 28);
    v5 = sub_1C5595F34();
    (*(*(v5 - 8) + 16))(v15, v14);
    (*(v19 + 56))(a2, 0, 1, v18);
  }

  return a2;
}

uint64_t sub_1C5457CA4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 48))
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    sub_1C54130AC(v8, v9, v10 & 1);
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10 & 1;
    v11 = *(a1 + 48);
    sub_1C5594CF4();
    *(a2 + 48) = v11;
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  if (*(a1 + 88) == 255)
  {
    memcpy((a2 + 56), (a1 + 56), 0x21uLL);
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    sub_1C54572E0(v3, v4, v5, v6, v7 & 1);
    *(a2 + 56) = v3;
    *(a2 + 64) = v4;
    *(a2 + 72) = v5;
    *(a2 + 80) = v6;
    *(a2 + 88) = v7 & 1;
  }

  return a2;
}

unint64_t sub_1C5457E18()
{
  v2 = qword_1EC15C8F0;
  if (!qword_1EC15C8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C8A8, &qword_1C55AFC88);
    sub_1C545734C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C8F0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C5457EB0(char *a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78) + 36);
  v1 = sub_1C55951E4();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

char *sub_1C5457F38(char *a1)
{

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78) + 36);
  v1 = sub_1C55951E4();
  (*(*(v1 - 8) + 8))(&a1[v4]);
  v5 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C890, &qword_1C55AFC70) + 36)];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v2 = sub_1C5595F34();
  (*(*(v2 - 8) + 8))(&v5[v6]);
  return a1;
}

char *sub_1C5458054(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C898, &qword_1C55AFC78) + 36);
  v2 = sub_1C55951E4();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C890, &qword_1C55AFC70) + 36);
  v9 = *&a1[v8];

  *&a2[v8] = v9;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28);
  v3 = sub_1C5595F34();
  (*(*(v3 - 8) + 16))(&a2[v8 + v10], &a1[v8 + v10]);
  return a2;
}

unint64_t sub_1C54581D0()
{
  v2 = qword_1EC15C900;
  if (!qword_1EC15C900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C8F8, &qword_1C55AFCA8);
    sub_1C5436610();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5458274(uint64_t result, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 255)
  {
    return sub_1C54572E0(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

unint64_t sub_1C54582D4()
{
  v2 = qword_1EC15C910;
  if (!qword_1EC15C910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C908, &qword_1C55AFCB8);
    sub_1C54581D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C545836C(uint64_t a1)
{
  if (*(a1 + 32) != 255)
  {
    sub_1C5456BA0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32) & 1);
  }

  return a1;
}

double sub_1C54583C4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  v8 = v5;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x68))(v3);
  sub_1C5458604(v7, a3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C545846C(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v6);
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x70))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5458514@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C5458578(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SignInDataclassMergeActionInvokingOBWelcomeController.stage.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_stage);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

double sub_1C54586F4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x80))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5458794(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  v6 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x88))(v4, v2);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t sub_1C545884C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54588B4(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

char *SignInDataclassMergeActionInvokingOBWelcomeController.init(model:flowDirector:)(uint64_t a1, void *a2)
{
  v18 = 0;
  v17 = a1;
  v16 = a2;
  sub_1C5432498(a2, v15);
  sub_1C5458604(v15, OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_flowDirector);
  v7 = v18;
  v14 = 1;
  AAUISignInDataclassActionFlowStage.rawValue.getter();
  sub_1C5594CF4();
  v6 = sub_1C5596554();
  MEMORY[0x1E69E5928](v6, v2);

  MEMORY[0x1E69E5920](v6);
  *&v7[OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_stage] = v6;
  v8 = v18;
  swift_unknownObjectRetain();
  *&v8[OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_model] = a1;
  v13.receiver = v18;
  v13.super_class = type metadata accessor for SignInDataclassMergeActionInvokingOBWelcomeController();
  v12 = objc_msgSendSuper2(&v13, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v12, v3);
  v18 = v12;
  SignInDataclassMergeActionInvokingOBWelcomeController.setupInvokingActions()();
  v9 = [v12 navigationItem];
  [v9 setHidesBackButton_];
  MEMORY[0x1E69E5920](v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v18);
  return v12;
}

uint64_t sub_1C5458C08(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v4 = sub_1C5596554();
  MEMORY[0x1E69E5928](v4, v2);

  MEMORY[0x1E69E5920](v4);
  return v4;
}

Swift::Void __swiftcall SignInDataclassMergeActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v71 = sub_1C545C758;
  v72 = sub_1C545C760;
  v73 = sub_1C545AE98;
  v74 = sub_1C545C6DC;
  v75 = sub_1C545C6D4;
  v76 = sub_1C545C6D4;
  v77 = sub_1C545C6E8;
  v95 = 0;
  v78 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v79 = sub_1C5594C74();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84, v0, v1, v2);
  v83 = v28 - v82;
  v95 = v3;
  *&v4 = MEMORY[0x1E69E5928](v3, v28 - v82).n128_u64[0];
  v85 = [v84 primaryButton];
  if (v85)
  {
    v70 = v85;
    v68 = v85;
    v89 = v85;
    MEMORY[0x1E69E5920](v84);
    *&v6 = MEMORY[0x1E69E5928](v84, v5).n128_u64[0];
    v7 = [v84 secondaryButton];
    v69 = v7;
    if (v7)
    {
      v67 = v69;
      v66 = v69;
      v88 = v69;
      MEMORY[0x1E69E5920](v84);
      v60 = 0;
      v54 = sub_1C545C6F4();
      MEMORY[0x1E69E5928](v84, v8);
      v55 = 24;
      v56 = 7;
      v51 = swift_allocObject();
      *(v51 + 16) = v84;
      v53 = sub_1C54398B0();
      v52 = v9;
      v50 = sub_1C545B878();
      sub_1C53FE664();
      v65 = sub_1C5596A44();
      v87 = v65;
      MEMORY[0x1E69E5928](v84, v10);
      v58 = swift_allocObject();
      *(v58 + 16) = v84;
      v61 = sub_1C54398B0();
      v59 = v11;
      v57 = sub_1C545B878();
      sub_1C53FE664();
      v64 = sub_1C5596A44();
      v86 = v64;
      v62 = 0x1FB0D4000uLL;
      v63 = 64;
      [v68 0x1FB0D4EF8];
      [v66 (v62 + 3832)];
      MEMORY[0x1E69E5920](v64);
      MEMORY[0x1E69E5920](v65);
      MEMORY[0x1E69E5920](v66);
      MEMORY[0x1E69E5920](v68);
      return;
    }

    MEMORY[0x1E69E5920](v84);
    MEMORY[0x1E69E5920](v68);
  }

  else
  {
    MEMORY[0x1E69E5920](v84);
  }

  v12 = v83;
  v13 = sub_1C54B0910();
  (*(v80 + 16))(v12, v13, v79);
  MEMORY[0x1E69E5928](v84, v14);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v84;
  v48 = sub_1C5594C54();
  v49 = sub_1C5596954();
  v37 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 64;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v38 = 32;
  v15 = swift_allocObject();
  v16 = v40;
  v41 = v15;
  *(v15 + 16) = v73;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v41;
  v45 = v17;
  *(v17 + 16) = v74;
  *(v17 + 24) = v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v44 = sub_1C5596E04();
  v46 = v19;

  v20 = v42;
  v21 = v46;
  *v46 = v75;
  v21[1] = v20;

  v22 = v43;
  v23 = v46;
  v46[2] = v76;
  v23[3] = v22;

  v24 = v45;
  v25 = v46;
  v46[4] = v77;
  v25[5] = v24;
  sub_1C540FCD8();

  if (os_log_type_enabled(v48, v49))
  {
    v26 = v78;
    v30 = sub_1C5596A74();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v31 = sub_1C5419DC0(1, v29, v29);
    v32 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v33 = &v94;
    v94 = v30;
    v34 = &v93;
    v93 = v31;
    v35 = &v92;
    v92 = v32;
    sub_1C5419E14(2, &v94);
    sub_1C5419E14(1, v33);
    v90 = v75;
    v91 = v42;
    sub_1C5419E28(&v90, v33, v34, v35);
    v36 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v90 = v76;
      v91 = v43;
      sub_1C5419E28(&v90, &v94, &v93, &v92);
      v28[1] = 0;
      v90 = v77;
      v91 = v45;
      sub_1C5419E28(&v90, &v94, &v93, &v92);
      _os_log_impl(&dword_1C5355000, v48, v49, "%@: Failed to create buttons.", v30, 0xCu);
      sub_1C5419E74(v31, 1, v29);
      sub_1C5419E74(v32, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v27 = MEMORY[0x1E69E5920](v48);
  (*(v80 + 8))(v83, v79, v27);
}

id SignInDataclassMergeActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id SignInDataclassMergeActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1C5596554();
  if (a4)
  {
    v12 = sub_1C5596554();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1C5596554();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id SignInDataclassMergeActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1C5596554();
  if (a4)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

id SignInDataclassMergeActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInDataclassMergeActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C5459FC4(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 21167);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x78))();
  return sub_1C545A074;
}

void sub_1C545A074(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

Swift::Void __swiftcall SignInDataclassMergeActionInvokingOBWelcomeController.viewWillAppear(_:)(Swift::Bool a1)
{
  v10 = a1;
  v9 = v1;
  (MEMORY[0x1E69E5928])();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SignInDataclassMergeActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1);
  (MEMORY[0x1E69E5920])();
  v7 = [v6 primaryButton];
  if (v7)
  {
    v4 = v7;
    MEMORY[0x1E69E5928](v7, v3);
    sub_1C5401EF8(&v7);
    [v4 hidesBusyIndicator];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1C5401EF8(&v7);
    (MEMORY[0x1E69E5920])();
  }
}

Swift::Void __swiftcall SignInDataclassMergeActionInvokingOBWelcomeController.viewDidLoad()()
{
  v7 = v0;
  (MEMORY[0x1E69E5928])();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SignInDataclassMergeActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = (MEMORY[0x1E69E5920])();
  (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x80))(v1);
  type metadata accessor for SignInDataclassActionMergeListModel();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = 0;
  }

  if (v4)
  {
    v2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB0))();
    MEMORY[0x1E69E5920](v4);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    sub_1C545A488(v3);
    MEMORY[0x1E69E5920](v3);
  }
}

double sub_1C545A488(void *a1)
{
  [v1 addChildViewController_];
  v71 = [a1 view];
  *&v3 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v71)
  {
    v69 = v71;
  }

  else
  {
    LOBYTE(v21) = 2;
    v27 = 49;
    LODWORD(v33) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v69 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v69);
  v67 = [v1 contentView];
  MEMORY[0x1E69E5920](v1);
  v68 = [a1 view];
  *&v6 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v68)
  {
    v66 = v68;
  }

  else
  {
    LOBYTE(v22) = 2;
    v28 = 50;
    LODWORD(v34) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v67 addSubview_];
  MEMORY[0x1E69E5920](v66);
  MEMORY[0x1E69E5920](v67);
  v63 = objc_opt_self();
  sub_1C545C768();
  sub_1C5596E04();
  v64 = v7;
  v65 = [a1 view];
  *&v8 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v65)
  {
    v62 = v65;
  }

  else
  {
    LOBYTE(v23) = 2;
    v29 = 52;
    LODWORD(v35) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v59 = [v62 0x1FBB23FD2];
  MEMORY[0x1E69E5920](v62);
  v57 = [v1 contentView];
  v58 = [v57 0x1FBB23FD2];
  v60 = [v59 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5920](v59);
  *v64 = v60;
  v61 = [a1 view];
  *&v11 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v61)
  {
    v56 = v61;
  }

  else
  {
    LOBYTE(v24) = 2;
    v30 = 53;
    LODWORD(v36) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v53 = [v56 0x1FBBB4950];
  MEMORY[0x1E69E5920](v56);
  v51 = [v1 contentView];
  v52 = [v51 0x1FBBB4950];
  MEMORY[0x1E69E5920](v51);
  v54 = [v53 constraintEqualToAnchor:v52 constant:-1.0];
  MEMORY[0x1E69E5920](v52);
  MEMORY[0x1E69E5920](v53);
  v64[1] = v54;
  v55 = [a1 view];
  *&v14 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v55)
  {
    v50 = v55;
  }

  else
  {
    LOBYTE(v25) = 2;
    v31 = 54;
    LODWORD(v37) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v47 = [v50 0x1FBB20D25];
  MEMORY[0x1E69E5920](v50);
  v45 = [v1 contentView];
  v46 = [v45 0x1FBB20D25];
  v48 = [v47 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v47);
  v64[2] = v48;
  v49 = [a1 view];
  *&v17 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v49)
  {
    v44 = v49;
  }

  else
  {
    LOBYTE(v26) = 2;
    v32 = 55;
    LODWORD(v38) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v41 = [v44 0x1FBBC2576];
  MEMORY[0x1E69E5920](v44);
  v39 = [v1 headerView];
  v40 = [v39 0x1FBBC2576];
  v42 = [v41 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v41);
  v64[3] = v42;
  sub_1C540FCD8();
  v43 = sub_1C5596704();

  [v63 activateConstraints_];
  MEMORY[0x1E69E5920](v43);
  [v1 didMoveToParentViewController_];
  *&result = MEMORY[0x1E69E5920](v1).n128_u64[0];
  return result;
}

uint64_t sub_1C545AEA0(uint64_t a1, char *a2)
{
  v74 = a1;
  v80 = a2;
  v68 = sub_1C545AE98;
  v69 = sub_1C545C6DC;
  v70 = sub_1C545C6D4;
  v71 = sub_1C545C6D4;
  v72 = sub_1C545C6E8;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v73 = 0;
  v75 = sub_1C5594C74();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v80, v2, v3, v4);
  v79 = v36 - v78;
  v94 = v5;
  v93 = v6;
  *&v7 = MEMORY[0x1E69E5928](v6, v6).n128_u64[0];
  v92 = [v80 primaryButton];
  if (v92)
  {
    v66 = &v92;
    v67 = v92;
    MEMORY[0x1E69E5928](v92, v8);
    sub_1C5401EF8(v66);
    *&v9 = MEMORY[0x1E69E5920](v80).n128_u64[0];
    [v67 showsBusyIndicator];
    MEMORY[0x1E69E5920](v67);
  }

  else
  {
    sub_1C5401EF8(&v92);
    MEMORY[0x1E69E5920](v80);
  }

  v10 = v79;
  v11 = sub_1C54B05F8();
  (*(v76 + 16))(v10, v11, v75);
  MEMORY[0x1E69E5928](v80, v12);
  v55 = 7;
  v56 = swift_allocObject();
  *(v56 + 16) = v80;
  v64 = sub_1C5594C54();
  v65 = sub_1C5596944();
  v53 = 17;
  v58 = swift_allocObject();
  *(v58 + 16) = 64;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v54 = 32;
  v13 = swift_allocObject();
  v14 = v56;
  v57 = v13;
  *(v13 + 16) = v68;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v57;
  v61 = v15;
  *(v15 + 16) = v69;
  *(v15 + 24) = v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v60 = sub_1C5596E04();
  v62 = v17;

  v18 = v58;
  v19 = v62;
  *v62 = v70;
  v19[1] = v18;

  v20 = v59;
  v21 = v62;
  v62[2] = v71;
  v21[3] = v20;

  v22 = v61;
  v23 = v62;
  v62[4] = v72;
  v23[5] = v22;
  sub_1C540FCD8();

  if (os_log_type_enabled(v64, v65))
  {
    v24 = v73;
    v46 = sub_1C5596A74();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v47 = sub_1C5419DC0(1, v45, v45);
    v48 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v49 = &v85;
    v85 = v46;
    v50 = &v84;
    v84 = v47;
    v51 = &v83;
    v83 = v48;
    sub_1C5419E14(2, &v85);
    sub_1C5419E14(1, v49);
    v81 = v70;
    v82 = v58;
    sub_1C5419E28(&v81, v49, v50, v51);
    v52 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v81 = v71;
      v82 = v59;
      sub_1C5419E28(&v81, &v85, &v84, &v83);
      v44 = 0;
      v81 = v72;
      v82 = v61;
      sub_1C5419E28(&v81, &v85, &v84, &v83);
      _os_log_impl(&dword_1C5355000, v64, v65, "%@: Advancing action.", v46, 0xCu);
      sub_1C5419E74(v47, 1, v45);
      sub_1C5419E74(v48, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v25 = MEMORY[0x1E69E5920](v64);
  (*(v76 + 8))(v79, v75, v25);
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C998, &qword_1C55AFD80);
  v36[2] = sub_1C5596E04();
  v36[0] = v26;
  v27 = sub_1C55965F4("userSelectedDataclassAction", 27, 1);
  v28 = v36[0];
  *v36[0] = v27;
  *(v28 + 8) = v29;
  v36[3] = sub_1C545CF40();
  v30 = sub_1C545B838(2);
  v31 = v80;
  *(v36[0] + 16) = v30;
  sub_1C540FCD8();
  v36[4] = MEMORY[0x1E69E6158];
  v36[5] = MEMORY[0x1E69E6168];
  v43 = sub_1C5596454();
  v91 = v43;
  v32 = *((*v31 & *MEMORY[0x1E69E7D40]) + 0x68);
  v42 = &v88;
  v32();
  v39 = v89;
  v40 = v90;
  __swift_project_boxed_opaque_existential_0(v42, v89);
  sub_1C5594CF4();
  v37 = sub_1C5596CB4();
  v38 = *&v80[OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_stage];
  v34 = MEMORY[0x1E69E5928](v38, v33);
  v41 = v86;
  v86[0] = v37;
  v86[1] = v38;
  v87 = 0;
  (*(v40 + 32))(v34);
  sub_1C545CDC0(v41);

  __swift_destroy_boxed_opaque_existential_0(v42);
}

uint64_t sub_1C545B878()
{
  sub_1C545C468(0);

  return 0;
}

uint64_t sub_1C545B8A8(uint64_t a1, char *a2)
{
  v68 = a1;
  v74 = a2;
  v62 = sub_1C545AE98;
  v63 = sub_1C545C6DC;
  v64 = sub_1C545C6D4;
  v65 = sub_1C545C6D4;
  v66 = sub_1C545C6E8;
  v87 = 0;
  v86 = 0;
  v67 = 0;
  v69 = sub_1C5594C74();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74, v2, v3, v4);
  v73 = &v32 - v72;
  v87 = v5;
  v86 = v6;
  *&v7 = MEMORY[0x1E69E5928](v6, v6).n128_u64[0];
  v85 = [v74 secondaryButton];
  if (v85)
  {
    v60 = &v85;
    v61 = v85;
    MEMORY[0x1E69E5928](v85, v8);
    sub_1C5401EF8(v60);
    *&v9 = MEMORY[0x1E69E5920](v74).n128_u64[0];
    [v61 showsBusyIndicator];
    MEMORY[0x1E69E5920](v61);
  }

  else
  {
    sub_1C5401EF8(&v85);
    MEMORY[0x1E69E5920](v74);
  }

  v10 = v73;
  v11 = sub_1C54B05F8();
  (*(v70 + 16))(v10, v11, v69);
  MEMORY[0x1E69E5928](v74, v12);
  v49 = 7;
  v50 = swift_allocObject();
  *(v50 + 16) = v74;
  v58 = sub_1C5594C54();
  v59 = sub_1C5596944();
  v47 = 17;
  v52 = swift_allocObject();
  *(v52 + 16) = 64;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v48 = 32;
  v13 = swift_allocObject();
  v14 = v50;
  v51 = v13;
  *(v13 + 16) = v62;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v51;
  v55 = v15;
  *(v15 + 16) = v63;
  *(v15 + 24) = v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v54 = sub_1C5596E04();
  v56 = v17;

  v18 = v52;
  v19 = v56;
  *v56 = v64;
  v19[1] = v18;

  v20 = v53;
  v21 = v56;
  v56[2] = v65;
  v21[3] = v20;

  v22 = v55;
  v23 = v56;
  v56[4] = v66;
  v23[5] = v22;
  sub_1C540FCD8();

  if (os_log_type_enabled(v58, v59))
  {
    v24 = v67;
    v40 = sub_1C5596A74();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v41 = sub_1C5419DC0(1, v39, v39);
    v42 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v43 = &v79;
    v79 = v40;
    v44 = &v78;
    v78 = v41;
    v45 = &v77;
    v77 = v42;
    sub_1C5419E14(2, &v79);
    sub_1C5419E14(1, v43);
    v75 = v64;
    v76 = v52;
    sub_1C5419E28(&v75, v43, v44, v45);
    v46 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v75 = v65;
      v76 = v53;
      sub_1C5419E28(&v75, &v79, &v78, &v77);
      v38 = 0;
      v75 = v66;
      v76 = v55;
      sub_1C5419E28(&v75, &v79, &v78, &v77);
      _os_log_impl(&dword_1C5355000, v58, v59, "%@: Declining action.", v40, 0xCu);
      sub_1C5419E74(v41, 1, v39);
      sub_1C5419E74(v42, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v25 = v74;
  v26 = MEMORY[0x1E69E5920](v58);
  v27 = (*(v70 + 8))(v73, v69, v26);
  v28 = *((*v25 & *MEMORY[0x1E69E7D40]) + 0x68);
  v37 = &v82;
  v28(v27);
  v34 = v83;
  v35 = v84;
  __swift_project_boxed_opaque_existential_0(v37, v83);
  v33 = *&v74[OBJC_IVAR___AAUISignInDataclassMergeActionInvokingOBWelcomeController_stage];
  v30 = MEMORY[0x1E69E5928](v33, v29);
  v36 = v80;
  v80[0] = 0;
  v80[1] = v33;
  v81 = 1;
  (*(v35 + 32))(v30);
  sub_1C545CDC0(v36);
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_1C545C110(uint64_t a1)
{
  sub_1C545CC48();
  sub_1C545CCC8();
  return sub_1C5596D54();
}

uint64_t sub_1C545C14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C545CC48();
  sub_1C545CCC8();
  return sub_1C5596D24();
}

uint64_t sub_1C545C198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C545CC48();
  sub_1C545CCC8();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C545C1E8(uint64_t a1, uint64_t a2)
{
  sub_1C545CC48();
  sub_1C545CCC8();
  return sub_1C5596D44();
}

uint64_t sub_1C545C234@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5458C08(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C545C26C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_1C545C2A0(*v2, a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C545C2A0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v4 = sub_1C5596574();
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C545C300(uint64_t a1)
{
  sub_1C545CD40();
  sub_1C545CC48();
  return sub_1C5596D04();
}

uint64_t sub_1C545C468(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for Attributes(0);
    v1 = sub_1C5596734();
    sub_1C5594CF4();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void sub_1C545C53C(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v10 = a4(a1, a2, a3);
  v9 = *a1;
  MEMORY[0x1E69E5928](v10, v4);
  sub_1C5596AA4();
  if (v10)
  {
    MEMORY[0x1E69E5920](v10);
  }

  *a1 = v9 + 8;
  v6 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v10, v5);
    *v6 = v10;
    MEMORY[0x1E69E5920](v10);
    *a2 = v6 + 1;
  }

  else
  {
    MEMORY[0x1E69E5920](v10);
  }
}

_BYTE **sub_1C545C6C0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_1C545C6F4()
{
  v2 = qword_1EC15E810;
  if (!qword_1EC15E810)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E810);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C545C768()
{
  v2 = qword_1EC15C950;
  if (!qword_1EC15C950)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C950);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for AAUIWelcomeFlowStage(uint64_t a1)
{
  v5 = qword_1EC15C960;
  if (!qword_1EC15C960)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C960);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C545CA98()
{
  v2 = qword_1EC15E7B0;
  if (!qword_1EC15E7B0)
  {
    type metadata accessor for AAUIWelcomeFlowStage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C545CB30()
{
  v2 = qword_1EC15C970;
  if (!qword_1EC15C970)
  {
    type metadata accessor for AAUIWelcomeFlowStage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C545CBC8()
{
  v2 = qword_1EC15E7C0;
  if (!qword_1EC15E7C0)
  {
    type metadata accessor for AAUIWelcomeFlowStage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E7C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C545CC48()
{
  v2 = qword_1EC15C980;
  if (!qword_1EC15C980)
  {
    type metadata accessor for AAUIWelcomeFlowStage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C545CCC8()
{
  v2 = qword_1EC159FA0;
  if (!qword_1EC159FA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C545CD40()
{
  v2 = qword_1EC15C990;
  if (!qword_1EC15C990)
  {
    type metadata accessor for AAUIWelcomeFlowStage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C990);
    return WitnessTable;
  }

  return v2;
}

double sub_1C545CDF8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 1 || a3 == 2)
  {

    *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  }

  return result;
}

unint64_t type metadata accessor for Attributes(uint64_t a1)
{
  v5 = qword_1EC15C9A8;
  if (!qword_1EC15C9A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C9A8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C545CF40()
{
  v2 = qword_1EC15C9A0;
  if (!qword_1EC15C9A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C9A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C545D014()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C545D04C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1C545D098(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

double sub_1C545D0CC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C545D140()
{
  v4 = v0;
  v5 = *(v0 + 24);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5373718(&v5);
  return v2 & 1;
}

void sub_1C545D1C8(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v7 = *(v1 + 24);
  sub_1C5409664(&v7, v4);
  sub_1C5409664(&v7, v3);
  v2 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v2);
  sub_1C5373718(&v7);
}

void (*sub_1C545D280(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL, 63477);
  *a1 = v3;
  *v3 = *(v1 + 24);
  sub_1C5409664(v3, (v3 + 1));
  v3[2] = *v3;
  *(v3 + 14) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C545D34C;
}

void sub_1C545D34C(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[120];
    sub_1C5409664(v4, (v4 + 48));
    *(v4 + 4) = *v4;
    v4[121] = v2;
    sub_1C5595F94();
    sub_1C5373718((v4 + 64));
  }

  else
  {
    v3 = v4[120];
    sub_1C5409664(v4, (v4 + 80));
    *(v4 + 6) = *v4;
    v4[122] = v3;
    sub_1C5595F94();
    sub_1C5373718((v4 + 96));
  }

  sub_1C5373718(v4);
  free(v4);
}

uint64_t sub_1C545D440()
{
  v4 = v0;
  v5 = *(v0 + 24);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  sub_1C5373718(&v5);
  return v2;
}

uint64_t sub_1C545D4E0()
{
  v2 = *(v0 + 24);

  return v2 & 1;
}

uint64_t sub_1C545D51C(char a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1C545D568()
{
  v4 = v0;
  v5 = *(v0 + 40);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5373718(&v5);
  return v2 & 1;
}

void sub_1C545D5F0(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v7 = *(v1 + 40);
  sub_1C5409664(&v7, v4);
  sub_1C5409664(&v7, v3);
  v2 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v2);
  sub_1C5373718(&v7);
}

void (*sub_1C545D6A8(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL, 41395);
  *a1 = v3;
  *v3 = *(v1 + 40);
  sub_1C5409664(v3, (v3 + 1));
  v3[2] = *v3;
  *(v3 + 14) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C545D34C;
}

uint64_t sub_1C545D774()
{
  v4 = v0;
  v5 = *(v0 + 40);
  sub_1C5409664(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  sub_1C5373718(&v5);
  return v2;
}

uint64_t sub_1C545D814()
{
  v2 = *(v0 + 40);

  return v2 & 1;
}

uint64_t sub_1C545D850(char a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_1C545D89C(uint64_t a1)
{

  type metadata accessor for ProfilePictureElementViewModel(0);
  sub_1C5595F74();

  return v2;
}

uint64_t sub_1C545D914()
{
  v4 = v0;
  v5 = *(v0 + 56);
  sub_1C545D998(&v5, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9B0, &qword_1C55AFE08);
  sub_1C5595F84();
  sub_1C5436F54(&v5);
  return v2;
}

void *sub_1C545D998(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_1C545D9F0(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v8 = *(v1 + 56);
  sub_1C545D998(&v8, &v5);
  sub_1C545D998(&v8, &v4);
  v3 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9B0, &qword_1C55AFE08);
  sub_1C5595F94();
  sub_1C5436F54(&v3);
  sub_1C5436F54(&v8);
}

void (*sub_1C545DAB0(uint64_t **a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x90uLL, 44647);
  *a1 = v3;
  *v3 = *(v1 + 56);
  sub_1C545D998(v3, v3 + 2);
  *(v3 + 2) = *v3;
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9B0, &qword_1C55AFE08);
  sub_1C5595F84();
  return sub_1C545DB7C;
}

void sub_1C545DB7C(uint64_t **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[14];

    sub_1C545D998(v4, v4 + 6);
    *(v4 + 4) = *v4;
    v4[15] = v2;
    sub_1C5595F94();
    sub_1C5436F54(v4 + 8);
  }

  else
  {
    v3 = v4[14];
    sub_1C545D998(v4, v4 + 10);
    *(v4 + 6) = *v4;
    v4[16] = v3;
    sub_1C5595F94();
    sub_1C5436F54(v4 + 12);
  }

  sub_1C5436F54(v4);
  free(v4);
}

uint64_t sub_1C545DC84()
{
  v4 = v0;
  v5 = *(v0 + 56);
  sub_1C545D998(&v5, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9B0, &qword_1C55AFE08);
  sub_1C5595FA4();
  sub_1C5436F54(&v5);
  return v2;
}

uint64_t sub_1C545DD20()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_1C545DD60(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

char *sub_1C545DDC8@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v34 = &unk_1C55AFE28;
  v50 = sub_1C545EF08;
  v68 = 0;
  v67 = 0;
  v43 = 0;
  v57 = sub_1C5596A04();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v24 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v56 = &v24 - v24;
  v40 = sub_1C5596814();
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v25 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40, v5, v6, v7);
  v39 = &v24 - v25;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9B8, &qword_1C55AFE10);
  v26 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v8, v9, v10);
  v58 = (&v24 - v26);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9C0, &qword_1C55AFE18);
  v27 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60, v11, v12, v13);
  v62 = &v24 - v27;
  v28 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v24 - v27, v15, v16, v17);
  v63 = (&v24 - v28);
  v68 = &v24 - v28;
  v67 = v1;
  v29 = sub_1C545D914();
  v18 = (*(*v29 + 144))(v29);
  v19 = v48;
  v32 = v18;

  v30 = v19[2];
  MEMORY[0x1E69E5928](v30, v20);
  v31 = sub_1C545D140();
  v21 = sub_1C545D568();
  v33 = v69;
  sub_1C5566B44(v32, v30, v31 & 1, v21 & 1, 1, v43, v69);
  v42 = v66;
  memcpy(v66, v33, sizeof(v66));
  sub_1C545EA4C(v48, &v65);
  v46 = 88;
  v47 = 7;
  v41 = swift_allocObject();
  v49 = 72;
  memcpy((v41 + 16), v48, 0x48uLL);
  v36 = sub_1C545EC08();
  v35 = &unk_1F447EF10;
  sub_1C545EBE4();
  sub_1C5595CE4();
  (*(v37 + 8))(v39, v40);

  sub_1C545EC80(v42);
  v45 = [objc_opt_self() defaultCenter];
  v44 = *sub_1C55415F0();
  MEMORY[0x1E69E5928](v44, v22);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v44);
  MEMORY[0x1E69E5920](v45);
  sub_1C545EA4C(v48, &v64);
  v53 = swift_allocObject();
  memcpy((v53 + 16), v48, v49);
  v52 = sub_1C545EF10();
  sub_1C5443C8C();
  sub_1C5595E34();

  (*(v54 + 8))(v56, v57);
  sub_1C545F038(v58);
  v61 = sub_1C545F598();
  sub_1C540EFD8(v62, v60, v63);
  sub_1C545F620(v62);
  sub_1C545F810(v63, v62);
  sub_1C540EFD8(v62, v60, v59);
  sub_1C545F620(v62);
  return sub_1C545F620(v63);
}

uint64_t sub_1C545E2F0(uint64_t a1)
{
  v1[8] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v2 = sub_1C5594C74();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[3] = a1;
  sub_1C55967E4();
  v1[12] = sub_1C55967D4();
  v1[13] = sub_1C55967A4();
  v1[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C545E428);
}

uint64_t sub_1C545E428(uint64_t a1)
{
  v2 = v1[11];
  v18 = v1[10];
  v19 = v1[9];
  v1[2] = v1;
  v3 = sub_1C54B05F8();
  (*(v18 + 16))(v2, v3, v19);
  v21 = sub_1C5594C54();
  v20 = sub_1C5596944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v22 = sub_1C5596E04();
  if (os_log_type_enabled(v21, v20))
  {
    buf = sub_1C5596A74();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v14 = sub_1C5419DC0(0, v12, v12);
    v15 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v17 + 32) = buf;
    *(v17 + 40) = v14;
    *(v17 + 48) = v15;
    sub_1C5419E14(0, (v17 + 32));
    sub_1C5419E14(0, (v17 + 32));
    *(v17 + 56) = v22;
    v16 = swift_task_alloc();
    v16[2] = v17 + 32;
    v16[3] = v17 + 40;
    v16[4] = v17 + 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, v21, v20, "ProfilePictureElementView: Loading profile picture.", buf, 2u);
    sub_1C5419E74(v14, 0, v12);
    sub_1C5419E74(v15, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  v9 = *(v17 + 88);
  v10 = *(v17 + 72);
  v8 = *(v17 + 80);
  v4 = MEMORY[0x1E69E5920](v21);
  (*(v8 + 8))(v9, v10, v4);
  v5 = sub_1C545D914();
  *(v17 + 120) = v5;
  v11 = (*(*v5 + 176) + **(*v5 + 176));
  v6 = swift_task_alloc();
  *(v17 + 128) = v6;
  *v6 = *(v17 + 16);
  v6[1] = sub_1C545E850;

  return v11();
}

uint64_t sub_1C545E850()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C545E9B0);
}

uint64_t sub_1C545E9B0()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1C545EA4C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  sub_1C5594CF4();
  *(a2 + 8) = v3;
  v4 = *(a1 + 16);
  MEMORY[0x1E69E5928](v4, a2);
  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 24);
  v5 = *(a1 + 32);

  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 40);
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  v8 = *(a1 + 56);

  *(a2 + 56) = v8;
  v10 = *(a1 + 64);

  result = a2;
  *(a2 + 64) = v10;
  return result;
}

uint64_t sub_1C545EB34()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C545E2F0(v0 + 16);
}

unint64_t sub_1C545EC08()
{
  v2 = qword_1EC15C9C8;
  if (!qword_1EC15C9C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C9C8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C545EC80(void *a1)
{

  MEMORY[0x1E69E5920](a1[14]);

  MEMORY[0x1E69E5920](a1[18]);
  MEMORY[0x1E69E5920](a1[20]);
  return a1;
}

uint64_t sub_1C545ED6C(uint64_t a1, const void *a2)
{
  v11 = a1;
  v15 = a2;
  v14 = MEMORY[0x1E69E85E0];
  v18 = &unk_1C55B0198;
  v22 = 0;
  v21 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v15, v2, v3);
  v17 = &v11 - v12;
  v22 = v4;
  v21 = v5;
  v16 = 0;
  v6 = sub_1C5596814();
  (*(*(v6 - 8) + 56))(v17, 1);
  sub_1C545EA4C(v15, v20);
  sub_1C55967E4();
  v13 = sub_1C55967D4();
  v7 = swift_allocObject();
  v8 = v14;
  v9 = v15;
  v19 = v7;
  v7[2] = v13;
  v7[3] = v8;
  memcpy(v7 + 4, v9, 0x48uLL);
  sub_1C54061EC(v16, v16, v17, v18, v19, MEMORY[0x1E69E7CA8] + 8);
}

unint64_t sub_1C545EF10()
{
  v2 = qword_1EC15C9D0;
  if (!qword_1EC15C9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C9B8, &qword_1C55AFE10);
    sub_1C545EC08();
    sub_1C545EFB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C9D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C545EFB8()
{
  v2 = qword_1EC15C9D8;
  if (!qword_1EC15C9D8)
  {
    sub_1C5595134();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C9D8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C545F038(void *a1)
{

  MEMORY[0x1E69E5920](a1[14]);

  MEMORY[0x1E69E5920](a1[18]);
  MEMORY[0x1E69E5920](a1[20]);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9B8, &qword_1C55AFE10) + 36);

  v4 = *(sub_1C5595134() + 20);
  v1 = sub_1C5596814();
  (*(*(v1 - 8) + 8))(&v3[v4]);
  return a1;
}

uint64_t sub_1C545F1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_1C55967E4();
  v4[5] = sub_1C55967D4();
  v4[6] = sub_1C55967A4();
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C545F268);
}

uint64_t sub_1C545F268()
{
  *(v0 + 16) = v0;
  v1 = sub_1C545D914();
  *(v0 + 64) = v1;
  v5 = (*(*v1 + 176) + **(*v1 + 176));
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C545F3AC;

  return v5();
}

uint64_t sub_1C545F3AC()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C545F50C);
}

uint64_t sub_1C545F50C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

unint64_t sub_1C545F598()
{
  v2 = qword_1EC15C9E0;
  if (!qword_1EC15C9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C9C0, &qword_1C55AFE18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C9E0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C545F620(char *a1)
{

  MEMORY[0x1E69E5920](*(a1 + 14));

  MEMORY[0x1E69E5920](*(a1 + 18));
  MEMORY[0x1E69E5920](*(a1 + 20));
  v4 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9B8, &qword_1C55AFE10) + 36)];

  v5 = *(sub_1C5595134() + 20);
  v1 = sub_1C5596814();
  (*(*(v1 - 8) + 8))(&v4[v5]);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9C0, &qword_1C55AFE18) + 52);
  v2 = sub_1C5596A04();
  (*(*(v2 - 8) + 8))(&a1[v6]);

  return a1;
}

uint64_t sub_1C545F810(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;

  *a2 = v6;
  v7 = a1[1];

  *(a2 + 8) = v7;
  *(a2 + 16) = a1[2];
  v8 = a1[3];
  sub_1C5594CF4();
  *(a2 + 24) = v8;
  v9 = a1[4];

  *(a2 + 32) = v9;
  *(a2 + 40) = a1[5];
  v10 = a1[6];
  sub_1C5594CF4();
  *(a2 + 48) = v10;
  v11 = a1[7];

  *(a2 + 56) = v11;
  *(a2 + 64) = *(a1 + 64);
  v12 = a1[9];

  *(a2 + 72) = v12;
  *(a2 + 80) = *(a1 + 80);
  v13 = a1[11];

  *(a2 + 88) = v13;
  *(a2 + 96) = *(a1 + 96);
  v14 = a1[13];

  *(a2 + 104) = v14;
  v15 = a1[14];
  MEMORY[0x1E69E5928](v15, a2);
  *(a2 + 112) = v15;
  v16 = a1[15];

  *(a2 + 120) = v16;
  v17 = a1[16];

  *(a2 + 128) = v17;
  v18 = a1[17];

  *(a2 + 136) = v18;
  v19 = a1[18];
  MEMORY[0x1E69E5928](v19, a2);
  *(a2 + 144) = v19;
  *(a2 + 152) = *(a1 + 152);
  v20 = a1[20];
  MEMORY[0x1E69E5928](v20, a2);
  *(a2 + 160) = v20;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9B8, &qword_1C55AFE10) + 36);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);

  v24 = (a2 + v21);
  *v24 = v22;
  v24[1] = v23;
  v25 = *(sub_1C5595134() + 20);
  v2 = sub_1C5596814();
  (*(*(v2 - 8) + 16))(a2 + v21 + v25, a1 + v21 + v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9C0, &qword_1C55AFE18);
  v26 = *(v27 + 52);
  v3 = sub_1C5596A04();
  (*(*(v3 - 8) + 16))(a2 + v26, a1 + v26);
  v30 = *(v27 + 56);
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);

  result = a2;
  v5 = (a2 + v30);
  *v5 = v31;
  v5[1] = v32;
  return result;
}

uint64_t sub_1C545FBB8(uint64_t a1, uint64_t a2)
{
  sub_1C5596E04();
  *v2 = "id";
  *(v2 + 8) = 2;
  *(v2 + 16) = 2;
  *(v2 + 24) = "showAccountDetails";
  *(v2 + 32) = 18;
  *(v2 + 40) = 2;
  *(v2 + 48) = "showChangeButton";
  *(v2 + 56) = 16;
  *(v2 + 64) = 2;
  *(v2 + 72) = "account";
  *(v2 + 80) = 7;
  *(v2 + 88) = 2;
  sub_1C540FCD8();
  v6 = sub_1C5596D64();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_10:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
      goto LABEL_10;
    case 3:
      v5 = 3;
      goto LABEL_10;
  }

  return 4;
}

uint64_t sub_1C545FD80(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v6 = sub_1C545FBB8(a1, a2);

  if (v6 == 4)
  {
    return 4;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1C545FE30(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_1C55965F4("id", 2, 1);
    case 1:
      return sub_1C55965F4("showAccountDetails", 18, 1);
    case 2:
      return sub_1C55965F4("showChangeButton", 16, 1);
  }

  return sub_1C55965F4("account", 7, 1);
}

unint64_t sub_1C545FFAC()
{
  v2 = qword_1EC161990;
  if (!qword_1EC161990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC161990);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54600F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C545FBB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C5460130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C545FE30(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5460180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C545FD80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C54601AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C545FE18();
  *a1 = result;
  return result;
}

unint64_t sub_1C5460208()
{
  v2 = qword_1EC161998[0];
  if (!qword_1EC161998[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC161998);
    return WitnessTable;
  }

  return v2;
}

void sub_1C54602B4(void *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v74 = a1;
  v95 = 0;
  v68 = 0;
  memset(__b, 0, sizeof(__b));
  v93 = 0;
  v57 = 0;
  v58 = sub_1C55962E4();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v62 = v27 - v61;
  v63 = sub_1C5594994();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63, v5, v6, v7);
  v67 = v27 - v66;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C9E8, &qword_1C55AFE30);
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74, v8, v9, v10);
  v75 = v27 - v72;
  v95 = v27 - v72;
  v93 = v11;
  v73 = 1;
  LOBYTE(__b[3]) = sub_1C5409594(v12 & 1) & 1;
  __b[4] = v13;
  LOBYTE(__b[5]) = sub_1C5409594(v73 & 1) & v73;
  __b[6] = v14;
  v77 = v74[3];
  v78 = v74[4];
  __swift_project_boxed_opaque_existential_0(v74, v77);
  sub_1C5460208();
  v15 = v76;
  sub_1C5596F24();
  v79 = v15;
  v80 = v15;
  if (v15)
  {
    v31 = v80;
    v32 = 12;
  }

  else
  {
    v90 = 0;
    v16 = sub_1C5596D74();
    v52 = 0;
    v53 = v16;
    v54 = v17;
    v55 = 0;
    v88 = v16;
    v89 = v17;
    if (v17)
    {
      v91 = v88;
      v92 = v89;
    }

    else
    {
      sub_1C5594984();
      v91 = sub_1C5594944();
      v92 = v18;
      (*(v64 + 8))(v67, v63);
      if (v89)
      {
        sub_1C5401ECC(&v88);
      }
    }

    v19 = v52;
    __b[0] = v91;
    __b[1] = v92;
    v87 = 1;
    v20 = sub_1C5596D84();
    v49 = v19;
    v50 = v20;
    v51 = v19;
    if (v19)
    {
      v30 = v51;
      (*(v70 + 8))(v75, v69);
      v31 = v30;
      v32 = 13;
    }

    else
    {
      v86 = v50;
      if (v50 == 2)
      {
        v48 = 0;
      }

      else
      {
        v48 = v86;
      }

      v44 = 1;
      LOBYTE(__b[3]) = sub_1C5409594(v48 & 1) & 1;
      __b[4] = v21;

      v22 = v49;
      v85 = 2;
      v23 = sub_1C5596D84();
      v45 = v22;
      v46 = v23;
      v47 = v22;
      if (!v22)
      {
        v84 = v46;
        if (v46 == 2)
        {
          v43 = 1;
        }

        else
        {
          v43 = v84;
        }

        v40 = __b;
        v33 = 1;
        LOBYTE(__b[5]) = sub_1C5409594(v43 & 1) & 1;
        __b[6] = v24;

        v35 = v74[3];
        v34 = v74[4];
        __swift_project_boxed_opaque_existential_0(v74, v35);
        sub_1C5596F14();
        v36 = sub_1C55962D4();
        (*(v59 + 8))(v62, v58);
        v38 = RUIDecodingUserInfo.account.getter();
        MEMORY[0x1E69E5928](v38, v25);
        __b[2] = v38;
        MEMORY[0x1E69E5920](v36);
        v37 = 0;
        v39 = type metadata accessor for ProfilePictureElementViewModel(0);
        v26 = sub_1C552372C();
        v81[9] = sub_1C55237C0(v38, v26, v37);
        sub_1C54609FC(v39, v82);
        __b[7] = v82[0];
        __b[8] = v82[1];
        (*(v70 + 8))(v75, v69);
        v41 = __dst;
        v42 = 72;
        memcpy(__dst, v40, 0x48uLL);
        sub_1C545EA4C(__dst, v81);
        __swift_destroy_boxed_opaque_existential_0(v74);
        sub_1C5460A7C(v40);
        memcpy(v56, v41, v42);
        return;
      }

      v29 = v47;
      (*(v70 + 8))(v75, v69);
      v31 = v29;
      v32 = 13;
    }
  }

  v28 = v32;
  v27[1] = v31;
  __swift_destroy_boxed_opaque_existential_0(v74);
  if (v28)
  {
    sub_1C5401ECC(__b);
  }

  v27[0] = __b;
  sub_1C5373718(&__b[3]);
  sub_1C5373718(v27[0] + 40);
}

void *sub_1C5460A7C(void *a1)
{

  MEMORY[0x1E69E5920](a1[2]);

  return a1;
}

void sub_1C5460B34(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C54602B4(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x48uLL);
  }
}

uint64_t sub_1C5460BA4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_1C545D014();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C5460C40()
{
  v2 = qword_1EC15C9F0;
  if (!qword_1EC15C9F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5460CD4()
{
  v2 = qword_1EC15C9F8;
  if (!qword_1EC15C9F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5460D68()
{
  v2 = qword_1EC15CA00;
  if (!qword_1EC15CA00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5460E14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5460F2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAUISignOutFlowStage(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AAUISignOutFlowStage(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1C54614B4()
{
  v2 = qword_1EC161CA0[0];
  if (!qword_1EC161CA0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC161CA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5461548()
{
  v2 = qword_1EC161DB0;
  if (!qword_1EC161DB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC161DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54615DC()
{
  v2 = qword_1EC161DB8[0];
  if (!qword_1EC161DB8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC161DB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5461658(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C545F1AC(a1, v6, v7, v1 + 32);
}

uint64_t sub_1C5461790(uint64_t a1)
{
  type metadata accessor for CustodianDetailsView.Coordinator();
  MEMORY[0x1E69E5928](a1, v1);
  return sub_1C5461820(a1);
}

id sub_1C546186C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a2 trustedContactStatus];
  MEMORY[0x1E69E5920](a2);
  type metadata accessor for Status(0);
  sub_1C5461DBC();
  if (sub_1C5596E24())
  {
    sub_1C5461F68();
    MEMORY[0x1E69E5928](a3, v5);
    MEMORY[0x1E69E5928](a2, v6);
    v20 = sub_1C5461BF0(a3, a2);
    MEMORY[0x1E69E5928](v20, v7);
    v26 = v20;
    sub_1C5594CF4();
    v19 = sub_1C5596554();

    [v20 setTelemetryFlowID_];
    MEMORY[0x1E69E5920](v19);
    v21 = v20;
  }

  else
  {
    sub_1C5461E3C();
    MEMORY[0x1E69E5928](a3, v8);
    MEMORY[0x1E69E5928](a2, v9);
    v18 = sub_1C5461BF0(a3, a2);
    MEMORY[0x1E69E5928](v18, v10);
    v26 = v18;
    sub_1C5594CF4();
    v17 = sub_1C5596554();

    [v18 setTelemetryFlowID_];
    MEMORY[0x1E69E5920](v17);
    v21 = v18;
  }

  sub_1C5461EA0();
  v25 = sub_1C5404B48();
  v16 = [v25 viewModelForFlow:0 withContact:{a2, MEMORY[0x1E69E5928](a2, v11).n128_f64[0]}];
  MEMORY[0x1E69E5920](a2);
  sub_1C5461F04();
  MEMORY[0x1E69E5928](a2, v12);
  MEMORY[0x1E69E5928](v16, v13);
  v24 = sub_1C5461C38(a2, v16, v21);
  sub_1C5594CF4();
  v15 = sub_1C5596554();

  [v24 setTelemetryFlowID_];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);
  return v24;
}

uint64_t sub_1C5461CC0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  *(v2 + 16) = a1;
  MEMORY[0x1E69E5920](a1);
  return v5;
}

unint64_t type metadata accessor for Status(uint64_t a1)
{
  v5 = qword_1EC15CA40;
  if (!qword_1EC15CA40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15CA40);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5461DBC()
{
  v2 = qword_1EC15CA08;
  if (!qword_1EC15CA08)
  {
    type metadata accessor for Status(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5461E3C()
{
  v2 = qword_1EC15CA10;
  if (!qword_1EC15CA10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CA10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5461EA0()
{
  v2 = qword_1EC15CA18;
  if (!qword_1EC15CA18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CA18);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5461F04()
{
  v2 = qword_1EC15CA20;
  if (!qword_1EC15CA20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CA20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5461F68()
{
  v2 = qword_1EC15CA28;
  if (!qword_1EC15CA28)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CA28);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54620B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5461790(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1C5462138()
{
  v2 = qword_1EC15CA30;
  if (!qword_1EC15CA30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA30);
    return WitnessTable;
  }

  return v2;
}

void sub_1C54621FC(uint64_t a1)
{
  sub_1C5462138();
  sub_1C5595724();
  __break(1u);
}

unint64_t sub_1C546223C()
{
  v2 = qword_1EC15CA38;
  if (!qword_1EC15CA38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54622B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54623F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

id sub_1C54625DC(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithAccountManager_localContact_];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id sub_1C5462644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 initWithContact:a1 viewModel:? actionHandler:?];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v7;
}

uint64_t sub_1C54626BC(uint64_t a1)
{
  sub_1C5462B14();
  sub_1C5462B94();
  return sub_1C5596D54();
}

uint64_t sub_1C54626F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5462B14();
  sub_1C5462B94();
  return sub_1C5596D24();
}

uint64_t sub_1C5462744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5462B14();
  sub_1C5462B94();
  return sub_1C5596D34() & 1;
}

uint64_t sub_1C5462794(uint64_t a1, uint64_t a2)
{
  sub_1C5462B14();
  sub_1C5462B94();
  return sub_1C5596D44();
}

void sub_1C54627E0(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

uint64_t sub_1C5462850(uint64_t a1)
{
  sub_1C5462C0C();
  sub_1C5462B14();
  return sub_1C5596D04();
}

unint64_t sub_1C54628E0()
{
  v2 = qword_1EC15CA48;
  if (!qword_1EC15CA48)
  {
    type metadata accessor for Status(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5462A94()
{
  v2 = qword_1EC15CA50;
  if (!qword_1EC15CA50)
  {
    type metadata accessor for Status(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5462B14()
{
  v2 = qword_1EC15CA58;
  if (!qword_1EC15CA58)
  {
    type metadata accessor for Status(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5462B94()
{
  v2 = qword_1EC15CA60;
  if (!qword_1EC15CA60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5462C0C()
{
  v2 = qword_1EC15CA68;
  if (!qword_1EC15CA68)
  {
    type metadata accessor for Status(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5462C8C(uint64_t a1)
{
  type metadata accessor for CustodianOwnerDetailsView.Coordinator();
  MEMORY[0x1E69E5928](a1, v1);
  return sub_1C5461820(a1);
}

id sub_1C5462D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C5462F84();
  MEMORY[0x1E69E5928](a2, v5);
  v17 = sub_1C5462F44(a2);
  sub_1C5594CF4();
  v11 = sub_1C5596554();

  [v17 0x1FB85C478];
  MEMORY[0x1E69E5920](v11);
  sub_1C5461EA0();
  v16 = sub_1C5404B48();
  v14 = [v16 viewModelForFlow:1 withContact:{a2, MEMORY[0x1E69E5928](a2, v6).n128_f64[0]}];
  MEMORY[0x1E69E5920](a2);
  sub_1C5461F04();
  MEMORY[0x1E69E5928](a2, v7);
  MEMORY[0x1E69E5928](v14, v8);
  MEMORY[0x1E69E5928](v17, v9);
  v15 = sub_1C5461C38(a2, v14, v17);
  sub_1C5594CF4();
  v13 = sub_1C5596554();

  [v15 0x1FB85C478];
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  return v15;
}

unint64_t sub_1C5462F84()
{
  v2 = qword_1EC15CA70;
  if (!qword_1EC15CA70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15CA70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5463010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5462C8C(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1C5463094()
{
  v2 = qword_1EC15CA78;
  if (!qword_1EC15CA78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA78);
    return WitnessTable;
  }

  return v2;
}

void sub_1C5463158(uint64_t a1)
{
  sub_1C5463094();
  sub_1C5595724();
  __break(1u);
}

unint64_t sub_1C5463198()
{
  v2 = qword_1EC15CA80;
  if (!qword_1EC15CA80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA80);
    return WitnessTable;
  }

  return v2;
}

id sub_1C5463228(uint64_t a1)
{
  v4 = [v1 initWithLocalContact_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1C5463278()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

double sub_1C54632B8(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v16 = v2;
  v8 = *(v2 + 16);
  MEMORY[0x1E69E5928](v8, a2);

  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v14 = sub_1C54634AC;
  v15 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_1C54634B8;
  v13 = &block_descriptor_5;
  v7 = _Block_copy(&aBlock);

  [v8 refreshCurrentState_];
  _Block_release(v7);
  *&result = MEMORY[0x1E69E5920](v8).n128_u64[0];
  return result;
}

uint64_t sub_1C54633F0(uint64_t a1, void (*a2)(void), uint64_t a3)
{

  type metadata accessor for FMIPState(0);
  sub_1C5463734();
  v3 = sub_1C5596E24();
  a2(v3 & 1);
}

uint64_t sub_1C54634B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_destroy_helper_5(uint64_t a1)
{
}

{
}

uint64_t sub_1C54635B0()
{
  v0 = [objc_opt_self() sharedInstance];
  result = v2;
  *(v2 + 16) = v0;
  return result;
}

unint64_t type metadata accessor for FMIPState(uint64_t a1)
{
  v5 = qword_1EC15CA90;
  if (!qword_1EC15CA90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15CA90);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5463734()
{
  v2 = qword_1EC15CA88;
  if (!qword_1EC15CA88)
  {
    type metadata accessor for FMIPState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CA88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54637B4(uint64_t a1, uint64_t a2)
{
  sub_1C55965F4("Localizable", 11, 1);
  sub_1C5439370();
  v3 = sub_1C5596A24();
  sub_1C54398B0();
  v4 = sub_1C55947B4();

  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t sub_1C546389C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C54637B4(a2, a3);
  v4 = sub_1C5596564();

  return v4;
}

char *sub_1C5463910()
{
  v25 = 0;
  v0 = OBJC_IVAR___AAUIProtoAccountShieldUI_imageName;
  *OBJC_IVAR___AAUIProtoAccountShieldUI_imageName = 0;
  *(v0 + 8) = 0;
  v1 = &v25[OBJC_IVAR___AAUIProtoAccountShieldUI_title];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v25[OBJC_IVAR___AAUIProtoAccountShieldUI_detailText];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v25[OBJC_IVAR___AAUIProtoAccountShieldUI_primaryButton];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v25[OBJC_IVAR___AAUIProtoAccountShieldUI_secondaryButton];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v25[OBJC_IVAR___AAUIProtoAccountShieldUI_contentViewLayout] = 1;
  *&v25[OBJC_IVAR___AAUIProtoAccountShieldUI_secondaryView] = 0;
  v5 = &v25[OBJC_IVAR___AAUIProtoAccountShieldUI_helpLinkTitle];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v25[OBJC_IVAR___AAUIProtoAccountShieldUI_contentView] = 0;
  *&v25[OBJC_IVAR___AAUIProtoAccountShieldUI_image] = 0;
  v24.receiver = v25;
  v24.super_class = type metadata accessor for ProtoAccountShieldUI();
  v23 = objc_msgSendSuper2(&v24, sel_init);
  *&v7 = MEMORY[0x1E69E5928](v23, v6).n128_u64[0];
  v25 = v23;
  v12 = sub_1C55965F4("Connect to Your Parent or Guardian", 34, 1, v7);
  v14 = v8;
  v13 = &v23[OBJC_IVAR___AAUIProtoAccountShieldUI_title];
  swift_beginAccess();
  *v13 = v12;
  v13[1] = v14;

  swift_endAccess();
  v15 = v25;
  v16 = sub_1C55965F4("Connect to your parent or guardian so you can download apps and get music, movies, games and more. (Engineering UI)", 115, 1);
  v18 = v9;
  v17 = &v15[OBJC_IVAR___AAUIProtoAccountShieldUI_detailText];
  swift_beginAccess();
  *v17 = v16;
  v17[1] = v18;

  swift_endAccess();
  v19 = v25;
  v20 = sub_1C55965F4("Other Options", 13, 1);
  v22 = v10;
  v21 = &v19[OBJC_IVAR___AAUIProtoAccountShieldUI_secondaryButton];
  swift_beginAccess();
  *v21 = v20;
  v21[1] = v22;

  swift_endAccess();
  MEMORY[0x1E69E5920](v25);
  return v23;
}

uint64_t sub_1C5463D10()
{
  v2 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5463E58(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5463EF4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5463F98(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5464184()
{
  v2 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54642CC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5464368@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xB8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C546440C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xC0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C54645F8()
{
  v2 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5464740(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C54647DC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xD0))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5464880(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD8))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5464A6C()
{
  v2 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5464BB4(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5464C50@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xE8))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5464CF4(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xF0))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5464EE0()
{
  v2 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5465028(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C54650C4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x100))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5465170(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x108))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C54652F8()
{
  v2 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54653B4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___AAUIProtoAccountShieldUI_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1C5465420@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x118))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C54654C8(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x120))(v5, v2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5465644()
{
  v3 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_secondaryView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C546571C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_secondaryView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C54657B4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x130))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C546585C(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x138))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5465A44()
{
  v2 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5465B8C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C5465C28@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x148))(v3);
  a3[1] = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1C5465CD4(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[0];
  v6 = v8[1];
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x150))(v7, v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5465E6C()
{
  v3 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_contentView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5465F44(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_contentView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5465FDC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x160))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5466084(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x168))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5466210()
{
  v3 = (v0 + OBJC_IVAR___AAUIProtoAccountShieldUI_image);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C54662E8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUIProtoAccountShieldUI_image);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5466380@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x178))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5466428(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x180))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

id ProtoAccountShieldUI.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtoAccountShieldUI();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1C5467010(uint64_t a1)
{
  v117 = 0;
  v135 = 0;
  v134 = 0;
  v109 = 0;
  v129 = 0;
  v136 = a1;
  v110 = sub_1C5594C74();
  v111 = *(v110 - 8);
  v112 = v111;
  v113 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](0, v110, v2, v3);
  v115 = (v113 + 15) & 0xFFFFFFFFFFFFFFF0;
  v114 = &v41 - v115;
  MEMORY[0x1EEE9AC00](v4, &v41 - v115, v5, v6);
  v116 = &v41 - v115;
  v121 = sub_1C5594654();
  v118 = *(v121 - 8);
  v120 = v118;
  MEMORY[0x1EEE9AC00](v117, v7, v8, v9);
  v122 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v1;
  v134 = v11;
  v119 = sub_1C5594664();
  (*(v120 + 104))(v122, *MEMORY[0x1E6967690], v121);
  v123 = sub_1C5594624();
  (*(v120 + 8))(v122, v121);
  if (v123)
  {
    v12 = v109;
    v105 = sub_1C5594644();
    v13 = sub_1C5594634();
    v106 = v12;
    v107 = v13;
    v108 = v12;
    if (v12)
    {
      v22 = v114;
      v59 = v108;
      v58 = 0;

      v23 = v59;
      v129 = v59;
      v24 = sub_1C54B05F8();
      (*(v112 + 16))(v22, v24, v110);
      v25 = v59;
      v67 = 7;
      v65 = swift_allocObject();
      *(v65 + 16) = v59;
      sub_1C54398B0();

      v78 = sub_1C5594C54();
      v60 = v78;
      v77 = sub_1C5596954();
      v61 = v77;
      v62 = 17;
      v71 = swift_allocObject();
      v63 = v71;
      *(v71 + 16) = 64;
      v72 = swift_allocObject();
      v64 = v72;
      *(v72 + 16) = 8;
      v66 = 32;
      v26 = swift_allocObject();
      v27 = v65;
      v68 = v26;
      *(v26 + 16) = sub_1C5467F9C;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v68;
      v69 = v28;
      *(v28 + 16) = sub_1C5467FA4;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v69;
      v75 = v30;
      v70 = v30;
      *(v30 + 16) = sub_1C545C6DC;
      *(v30 + 24) = v31;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v73 = sub_1C5596E04();
      v74 = v32;

      v33 = v71;
      v34 = v74;
      *v74 = sub_1C545C6D4;
      v34[1] = v33;

      v35 = v72;
      v36 = v74;
      v74[2] = sub_1C545C6D4;
      v36[3] = v35;

      v37 = v74;
      v38 = v75;
      v74[4] = sub_1C545C6E8;
      v37[5] = v38;
      sub_1C540FCD8();

      if (os_log_type_enabled(v78, v77))
      {
        v39 = v58;
        v51 = sub_1C5596A74();
        v48 = v51;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v54 = 1;
        v52 = sub_1C5419DC0(1, v49, v49);
        v50 = v52;
        v53 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v128 = v51;
        v127 = v52;
        v126 = v53;
        v55 = &v128;
        sub_1C5419E14(2, &v128);
        sub_1C5419E14(v54, v55);
        v124 = sub_1C545C6D4;
        v125 = v63;
        sub_1C5419E28(&v124, v55, &v127, &v126);
        v56 = v39;
        v57 = v39;
        if (v39)
        {
          v46 = 0;

          __break(1u);
        }

        else
        {
          v124 = sub_1C545C6D4;
          v125 = v64;
          sub_1C5419E28(&v124, &v128, &v127, &v126);
          v44 = 0;
          v45 = 0;
          v124 = sub_1C545C6E8;
          v125 = v70;
          sub_1C5419E28(&v124, &v128, &v127, &v126);
          v42 = 0;
          v43 = 0;
          _os_log_impl(&dword_1C5355000, v60, v61, "Fetching orders encountered an error: %@", v48, 0xCu);
          sub_1C5419E74(v50, 1, v49);
          sub_1C5419E74(v53, 0, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v47 = v42;
        }
      }

      else
      {
        v40 = v58;

        v47 = v40;
      }

      v41 = v47;

      (*(v112 + 8))(v114, v110);
      v103 = 0;
      v104 = v41;
    }

    else
    {
      v102 = v107;

      v134 = v102;
      v103 = v102;
      v104 = v106;
    }

    v100 = v103;
    v101 = v104;
  }

  else
  {
    v14 = v116;
    v15 = sub_1C54B05F8();
    (*(v112 + 16))(v14, v15, v110);
    v98 = sub_1C5594C54();
    v95 = v98;
    v97 = sub_1C5596954();
    v96 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v99 = sub_1C5596E04();
    if (os_log_type_enabled(v98, v97))
    {
      v16 = v109;
      v86 = sub_1C5596A74();
      v82 = v86;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v84 = 0;
      v87 = sub_1C5419DC0(0, v83, v83);
      v85 = v87;
      v88 = sub_1C5419DC0(v84, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v133 = v86;
      v132 = v87;
      v131 = v88;
      v89 = 0;
      v90 = &v133;
      sub_1C5419E14(0, &v133);
      sub_1C5419E14(v89, v90);
      v130 = v99;
      v91 = &v41;
      MEMORY[0x1EEE9AC00](&v41, v17, v18, v19);
      v92 = (&v41 - 6);
      *(&v41 - 4) = v20;
      *(&v41 - 3) = &v132;
      *(&v41 - 2) = &v131;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v94 = v16;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v95, v96, "Orders data not available.", v82, 2u);
        v80 = 0;
        sub_1C5419E74(v85, 0, v83);
        sub_1C5419E74(v88, v80, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v81 = v94;
      }
    }

    else
    {

      v81 = v109;
    }

    v79 = v81;

    (*(v112 + 8))(v116, v110);
    v100 = 0;
    v101 = v79;
  }

  return v100 > 0;
}

id FinanceKitAdapter.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for FinanceKitAdapter();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id FinanceKitAdapter.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinanceKitAdapter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5467F4C(uint64_t (*a1)(void))
{
  a1();
  v3 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v3, v1);
  swift_unknownObjectRelease();
  return v3;
}

void *sub_1C5468084@<X0>(uint64_t a1@<X8>)
{
  v8[2] = a1;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50);
  v8[0] = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v1, v2, v3);
  v4 = (v8 - v8[0]);
  v10 = (v8 - v8[0]);
  v11 = v5;
  v6 = type metadata accessor for ReviewCustodianListView(0);
  sub_1C54367BC((v8[1] + *(v6 + 20)), v4);
  sub_1C5595004();
  return sub_1C5436890(v10);
}

uint64_t type metadata accessor for ReviewCustodianListView(uint64_t a1)
{
  v2 = qword_1EC162550;
  if (!qword_1EC162550)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1C5468230(void *a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v2, v3, v4);
  v10 = (&v8 - v9);
  sub_1C54367BC(v5, (&v8 - v9));
  v6 = type metadata accessor for ReviewCustodianListView(0);
  sub_1C5436BB4(v10, (v1 + *(v6 + 20)));
  return sub_1C5436890(v11);
}

uint64_t sub_1C54682E0(uint64_t a1)
{
  type metadata accessor for ReviewCustodianListViewModel(0);
  sub_1C5468328();
  return sub_1C5595184();
}

unint64_t sub_1C5468328()
{
  v2 = qword_1EC15CAF0;
  if (!qword_1EC15CAF0)
  {
    type metadata accessor for ReviewCustodianListViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CAF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54683A8()
{
  v2 = *(v0 + *(type metadata accessor for ReviewCustodianListView(0) + 24) + 8);

  return v2;
}

uint64_t sub_1C54683E4(uint64_t a1)
{

  *(v1 + *(type metadata accessor for ReviewCustodianListView(0) + 24) + 8) = a1;
}

uint64_t sub_1C5468430()
{
  type metadata accessor for ReviewCustodianListView(0);

  type metadata accessor for ReviewCustodianListViewModel(0);
  sub_1C5468328();
  v1 = sub_1C5595194();

  return v1;
}

uint64_t sub_1C54684AC()
{
  v2 = *(v0 + *(type metadata accessor for ReviewCustodianListView(0) + 24));

  return v2;
}

uint64_t sub_1C54684F4(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ReviewCustodianListView(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

void sub_1C5468550(uint64_t a1@<X8>)
{
  v20 = a1;
  v16 = sub_1C5468E7C;
  v29 = 0;
  v24 = &v27;
  v27 = 0;
  v28 = 0;
  v8 = *(type metadata accessor for ReviewCustodianListView(0) - 8);
  v10 = v8;
  v11 = *(v8 + 64);
  v9 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7[1], v1, v2, v3);
  v13 = (v7 - v9);
  v29 = v4;
  sub_1C542B834(v4, (v7 - v9));
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_1C5468D40(v13, (v14 + v12));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CAF8, &qword_1C55B0848);
  sub_1C5468EFC();
  v5 = sub_1C5595144();
  v17 = v26;
  v26[0] = v5;
  v26[1] = v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB28, &qword_1C55B0860);
  v22 = sub_1C5469C88();
  sub_1C540EFD8(v17, v21, v24);
  sub_1C5373718(v17);
  v18 = v27;
  v19 = v28;

  v23 = v25;
  v25[0] = v18;
  v25[1] = v19;
  sub_1C540EFD8(v25, v21, v20);
  sub_1C5373718(v23);
  sub_1C5373718(v24);
}

uint64_t sub_1C5468758@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v28 = a1;
  v49 = a2;
  v32 = MEMORY[0x1E697C790];
  v36 = MEMORY[0x1E697D5A0];
  v40 = sub_1C547048C;
  v43 = sub_1C54705A4;
  v56 = sub_1C5470608;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v3 = type metadata accessor for ReviewCustodianListView(0);
  v24 = *(v3 - 8);
  v41 = v24;
  v51 = *(v24 + 64);
  v25 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v54 = (&v24 - v25);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB20, &qword_1C55B0858);
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v26 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48, v7, v8, v9);
  v47 = &v24 - v26;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB10, &qword_1C55B0850);
  v27 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55, v10, v11, v12);
  v58 = &v24 - v27;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CAF8, &qword_1C55B0848);
  v29 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28, v49, v13, v14);
  v62 = &v24 - v29;
  v30 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, v17, &v24 - v29, v18);
  v63 = &v24 - v30;
  v74 = &v24 - v30;
  v73 = v19;
  v72 = v20;
  v38 = &v64;
  v65 = v20;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC68, &qword_1C55B0B40);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC70, &qword_1C55B0B48);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC78, &qword_1C55B0B50);
  v35 = sub_1C5470494();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC88, &qword_1C55B0B58);
  v21 = sub_1C547051C();
  v70 = v31;
  v71 = v21;
  v37 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v33;
  v67 = v34;
  v68 = v35;
  v69 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1C5595224();
  sub_1C542B834(v49, v54);
  v50 = *(v41 + 80);
  v42 = (v50 + 16) & ~v50;
  v52 = 7;
  v44 = swift_allocObject();
  sub_1C5468D40(v54, (v44 + v42));
  sub_1C5469044();
  sub_1C5595DC4();
  sub_1C5411348(v43, v44);
  (*(v45 + 8))(v47, v48);
  sub_1C542B834(v49, v54);
  v53 = (v50 + 16) & ~v50;
  v57 = swift_allocObject();
  sub_1C5468D40(v54, (v57 + v53));
  sub_1C5468FA0();
  sub_1C5595B04();
  sub_1C5411348(v56, v57);
  sub_1C535F34C(v58);
  v61 = sub_1C5468EFC();
  sub_1C540EFD8(v62, v60, v63);
  sub_1C535F42C(v62);
  sub_1C535F56C(v63, v62);
  sub_1C540EFD8(v62, v60, v59);
  sub_1C535F42C(v62);
  return sub_1C535F42C(v63);
}

__n128 sub_1C5468D40(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for ReviewCustodianListView(0);
  v6 = *(v5 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v6, a1 + v6, *(*(v8 - 8) + 64));
  }

  result = *(a1 + *(v5 + 24));
  *(a2 + *(v5 + 24)) = result;
  return result;
}

uint64_t sub_1C5468E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ReviewCustodianListView(0);
  v4 = (v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_1C5468758(a1, v4, a2);
}

unint64_t sub_1C5468EFC()
{
  v2 = qword_1EC15CB00;
  if (!qword_1EC15CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CAF8, &qword_1C55B0848);
    sub_1C5468FA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5468FA0()
{
  v2 = qword_1EC15CB08;
  if (!qword_1EC15CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB10, &qword_1C55B0850);
    sub_1C5469044();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5469044()
{
  v2 = qword_1EC15CB18;
  if (!qword_1EC15CB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB20, &qword_1C55B0858);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54690CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v22 = a1;
  v18 = sub_1C547066C;
  v24 = MEMORY[0x1E697C790];
  v26 = sub_1C54706FC;
  v32 = MEMORY[0x1E697D5A0];
  v54 = 0;
  v53 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC70, &qword_1C55B0B48);
  v15 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28, v2, v3, v4);
  v27 = &v15 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC68, &qword_1C55B0B40);
  v34 = *(v40 - 8);
  v35 = v40 - 8;
  v16 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v5, v6, v7);
  v38 = &v15 - v16;
  v17 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, &v15 - v16, v10, v11);
  v39 = &v15 - v17;
  v54 = &v15 - v17;
  v53 = v12;
  v19 = &v45;
  v46 = v12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC98, &qword_1C55B0B60);
  v21 = sub_1C5470674();
  sub_1C544B78C();
  sub_1C5596064();
  v25 = &v43;
  v44 = v22;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC78, &qword_1C55B0B50);
  v30 = sub_1C5470494();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CC88, &qword_1C55B0B58);
  v13 = sub_1C547051C();
  v51 = v23;
  v52 = v13;
  v33 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5595D94();
  sub_1C535F7D0(v27);
  v47 = v28;
  v48 = v29;
  v49 = v30;
  v50 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v38, v40, v39);
  v42 = *(v34 + 8);
  v41 = v34 + 8;
  v42(v38, v40);
  (*(v34 + 16))(v38, v39, v40);
  sub_1C540EFD8(v38, v40, v36);
  v42(v38, v40);
  return (v42)(v39, v40);
}

uint64_t sub_1C54694DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v45 = a1;
  v37 = sub_1C54707F8;
  v43 = MEMORY[0x1E697D368];
  v48 = sub_1C547099C;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v44 = &v86;
  v86 = 0;
  v87 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC0, &unk_1C55B0B80);
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v25 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55, v3, v4, v5);
  v54 = &v25 - v25;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCD0, &qword_1C55B0B90);
  v26 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60, v6, v7, v8);
  v67 = &v25 - v26;
  v27 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v25 - v26, v10, v11, v12);
  v70 = &v25 - v27;
  v95 = &v25 - v27;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCD8, &qword_1C55B0B98);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v28 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41, v13, v14, v15);
  v40 = &v25 - v28;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCB8, &qword_1C55B0B78);
  v56 = *(v71 - 8);
  v57 = v71 - 8;
  v29 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71, v16, v17, v18);
  v68 = &v25 - v29;
  v30 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v25 - v29, v20, v21, v22);
  v74 = &v25 - v30;
  v94 = &v25 - v30;
  v93 = a1;
  v31 = &v91;
  sub_1C5469B60();
  v32 = v96;
  v33 = 305;
  memcpy(v96, v31, 0x131uLL);
  v34 = v90;
  memcpy(v90, v96, 0x131uLL);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBE8, qword_1C55B0AC0);
  v61 = sub_1C546FABC();
  v75 = v92;
  sub_1C540EFD8(v34, v58, v92);
  sub_1C546DCA0(v34);
  v35 = v77;
  v77[2] = v45;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCE0, &qword_1C55B0BA0);
  sub_1C5470800();
  sub_1C5595964();
  v42 = sub_1C5470914();
  sub_1C5595C94();
  (*(v38 + 8))(v40, v41);
  v88 = v41;
  v89 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v68, v71, v74);
  v73 = *(v56 + 8);
  v72 = v56 + 8;
  v73(v68, v71);
  v49 = 0;
  v50 = 1;
  v84 = sub_1C5596044();
  v85 = v23 & 1;
  v59 = MEMORY[0x1E6981840];
  v63 = MEMORY[0x1E6981838];
  sub_1C540EFD8(&v84, MEMORY[0x1E6981840], v44);
  v46 = v76;
  v76[2] = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CD00, &qword_1C55B0BA8);
  sub_1C54709A4();
  sub_1C5596164();
  v51 = sub_1C55957A4();
  sub_1C5470A2C();
  sub_1C5595D84();
  (*(v52 + 8))(v54, v55);
  v64 = sub_1C5470AD8();
  sub_1C540EFD8(v67, v60, v70);
  sub_1C5470B7C(v67);
  v69 = v82;
  sub_1C5470BE4(v75, v82);
  v66 = v83;
  v83[0] = v69;
  (*(v56 + 16))(v68, v74, v71);
  v83[1] = v68;
  v80 = v86;
  v81 = v87;
  v83[2] = &v80;
  sub_1C5470DBC(v70, v67);
  v83[3] = v67;
  v79[0] = v58;
  v79[1] = v71;
  v79[2] = v59;
  v79[3] = v60;
  v78[0] = v61;
  v78[1] = OpaqueTypeConformance2;
  v78[2] = v63;
  v78[3] = v64;
  sub_1C540F5A0(v66, 4uLL, v79, v78, v65);
  sub_1C5470B7C(v67);
  v73(v68, v71);
  sub_1C546DCA0(v69);
  sub_1C5470B7C(v70);
  v73(v74, v71);
  return sub_1C546DCA0(v75);
}

uint64_t sub_1C5469B60()
{
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB38, &qword_1C55B0868);
  sub_1C546DB90();
  sub_1C544B78C();
  sub_1C5596064();
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(v2, __dst, 0x103uLL);
  sub_1C55957C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB48, &qword_1C55B0870);
  sub_1C546DC18();
  sub_1C5595D84();
  return sub_1C546DCA0(v2);
}

unint64_t sub_1C5469C88()
{
  v2 = qword_1EC15CB30;
  if (!qword_1EC15CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CB28, &qword_1C55B0860);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15CB30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5469D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v16 = a1;
  v21 = 0;
  v20 = sub_1C5469FD8;
  v38 = 0;
  v37 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCE0, &qword_1C55B0BA0);
  v27 = *(v33 - 8);
  v28 = v33 - 8;
  v14 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, v2, v3, v4);
  v31 = &v13 - v14;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v13 - v14, v7, v8);
  v32 = &v13 - v15;
  v38 = &v13 - v15;
  v37 = v9;
  v19 = 0;
  v10 = *(v16 + *(type metadata accessor for ReviewCustodianListView(0) + 24) + 8);
  v17 = v10;

  v18 = (*(*v10 + 112))(v11);

  v26 = &v36;
  v36 = v18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60, &qword_1C55B0878);
  v23 = sub_1C5594994();
  v24 = sub_1C547102C();
  v25 = sub_1C5470898();
  sub_1C54710B4();
  sub_1C5596114();
  v30 = sub_1C5470800();
  sub_1C540EFD8(v31, v33, v32);
  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v35(v31, v33);
  (*(v27 + 16))(v31, v32, v33);
  sub_1C540EFD8(v31, v33, v29);
  v35(v31, v33);
  return (v35)(v32, v33);
}

void sub_1C5469FD8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *a1;
  v5 = v15;

  v2 = sub_1C546A0C8(v5);
  v11[0] = v3;
  v11[1] = v4;
  *&v11[2] = v2;
  sub_1C5470898();
  sub_1C540EFD8(v11, &unk_1F4478328, &v12);
  sub_1C5373718(v11);
  v6 = v12;
  v7 = v13;
  v8 = v14;

  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  sub_1C540EFD8(v10, &unk_1F4478328, a2);
  sub_1C5373718(v10);
  sub_1C5373718(&v12);
}

uint64_t sub_1C546A0E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v57 = a1;
  v66 = 0;
  v70 = sub_1C546A5C8;
  v53 = sub_1C5470E68;
  v54 = sub_1C5470E68;
  v83 = 0;
  v81 = 0;
  __len = 40;
  __c = 0;
  memset(__b, 0, sizeof(__b));
  memset(v78, 0, sizeof(v78));
  v65 = 0;
  v58 = *(type metadata accessor for ReviewCustodianListView(0) - 8);
  v59 = v58;
  v60 = *(v58 + 64);
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v2, v3, v4);
  v62 = (&v25 - v61);
  v83 = v5;
  v63 = *(v5 + *(v6 + 24) + 8);
  v7 = v63;

  v64 = (*(*v7 + 112))(v8);

  v82 = v64;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60, &qword_1C55B0878);
  v68 = sub_1C5594994();
  v9 = sub_1C546E2FC();
  v71 = sub_1C546A654(v70, v66, v67, v68, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v69);
  v10 = v57;
  v51 = v71;
  sub_1C541439C(&v82);
  v81 = v51;
  v38 = 1;
  v11 = sub_1C55965F4("DONE", 4, 1);
  v25 = v12;
  v30 = sub_1C54637B4(v11, v12);
  v28 = v13;

  sub_1C542B834(v10, v62);
  sub_1C5594CF4();
  v33 = *(v59 + 80);
  v26 = (v33 + 16) & ~v33;
  v34 = 7;
  v27 = (v26 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_1C5468D40(v62, (v29 + v26));
  v14 = v28;
  v15 = v53;
  v16 = v29;
  v17 = v30;
  *(v29 + v27) = v51;
  v31 = v84;
  sub_1C5554404(v17, v14, 0, v15, v16, v84);
  v32 = __dst;
  v42 = 40;
  memcpy(__dst, v31, sizeof(__dst));
  v45 = sub_1C5470F04();
  v50 = __b;
  v44 = &unk_1F447ED10;
  sub_1C540EFD8(v32, &unk_1F447ED10, __b);
  sub_1C5470F7C(v32);
  v40 = sub_1C546B668();
  v37 = v18;
  sub_1C542B834(v57, v62);
  sub_1C5594CF4();
  v35 = (v33 + 16) & ~v33;
  v36 = (v35 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_1C5468D40(v62, (v39 + v35));
  v19 = v37;
  v20 = v38;
  v21 = v54;
  v22 = v39;
  v23 = v40;
  *(v39 + v36) = v51;
  v41 = v85;
  sub_1C5554404(v23, v19, v20, v21, v22, v85);
  v43 = v77;
  memcpy(v77, v41, v42);
  v49 = v78;
  sub_1C540EFD8(v43, v44, v78);
  sub_1C5470F7C(v43);
  v48 = v75;
  sub_1C5470FB4(v50, v75);
  v46 = v76;
  v76[0] = v48;
  v47 = v74;
  sub_1C5470FB4(v49, v74);
  v76[1] = v47;
  v73[0] = v44;
  v73[1] = v44;
  v72[0] = v45;
  v72[1] = v45;
  sub_1C540F5A0(v46, 2uLL, v73, v72, v52);
  sub_1C5470F7C(v47);
  sub_1C5470F7C(v48);
  sub_1C5470F7C(v49);
  sub_1C5470F7C(v50);
}

uint64_t sub_1C546A5C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = OBJC_IVAR____TtC14AppleAccountUI17CustodianListItem_custodianID;
  v2 = sub_1C5594994();
  return (*(*(v2 - 8) + 16))(a2, v5 + v4);
}

uint64_t sub_1C546A654(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a1;
  v41 = a2;
  v65 = a3;
  v55 = a4;
  v42 = a5;
  v64 = a6;
  v44 = a8;
  v45 = "Fatal error";
  v46 = "Range requires lowerBound <= upperBound";
  v47 = "Swift/Range.swift";
  v48 = "Index out of range";
  v49 = "invalid Collection: count differed in successive traversals";
  v50 = "Swift/ArrayShared.swift";
  v75[3] = a3;
  v75[2] = a4;
  v75[1] = a5;
  v51 = *(a5 - 8);
  v52 = a5 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v54 = &v21 - v53;
  v56 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56, v64, v65, v55);
  v61 = &v21 - v60;
  v62 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v10, v11, v8);
  v63 = &v21 - v62;
  v66 = swift_getAssociatedTypeWitness();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65, v64, v12, v13);
  v70 = &v21 - v69;
  v71 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15, v16, &v21 - v69, v17);
  v72 = &v21 - v71;
  v73 = sub_1C55968C4();
  if (!v73)
  {
    goto LABEL_24;
  }

  v75[0] = sub_1C5596C24();
  v39 = sub_1C5596C34();
  sub_1C5596C04();
  result = sub_1C55968B4();
  if (v73 < 0)
  {
    sub_1C5596C94();
    __break(1u);
LABEL_24:
    v23 = sub_1C5596724();
    v24 = v43;
    return v23;
  }

  if (!v73)
  {
LABEL_19:
    v29 = v43;
LABEL_20:
    v25 = v29;
    sub_1C55968D4();
    swift_getAssociatedConformanceWitness();
    v28 = sub_1C55964D4();
    v26 = *(v67 + 8);
    v27 = v67 + 8;
    v26(v70, v66);
    if ((v28 & 1) == 0)
    {
      sub_1C5596CC4();
      __break(1u);
    }

    v26(v72, v66);
    v22 = v75[0];

    v23 = v22;
    v24 = v25;
    return v23;
  }

  v37 = 0;
  for (i = v43; ; i = v33)
  {
    v35 = i;
    v36 = v37;
    if (v37 < 0 || v36 >= v73)
    {
      goto LABEL_18;
    }

    if (v73 < 0)
    {
      sub_1C5596C94();
      __break(1u);
LABEL_18:
      sub_1C5596CC4();
      __break(1u);
      goto LABEL_19;
    }

    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    v32 = &v74;
    v31 = sub_1C5596924();
    (*(v58 + 16))(v61);
    v31();
    v20 = v35;
    v40(v61, v54);
    v33 = v20;
    if (v20)
    {
      (*(v58 + 8))(v61, AssociatedTypeWitness);
      (*(v67 + 8))(v72, v66);
      sub_1C5410D10(v75);
      (*(v51 + 32))(v44, v54, v42);
      return v30;
    }

    (*(v58 + 8))(v61, AssociatedTypeWitness);
    sub_1C5596C14();
    sub_1C55968E4();
    if (v34 == v73)
    {
      v29 = v33;
      goto LABEL_20;
    }

    result = v33;
    v37 = v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C546AF38(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v10 = a2;
  v18 = 0;
  v17 = 0;
  v9 = 0;
  v16 = sub_1C5595104();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v8 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v10, v3, v4);
  v15 = &v7 - v8;
  v18 = a1;
  v17 = v5;
  sub_1C5594994();
  v11 = sub_1C5596E04();
  sub_1C546B060(v10, v11);

  sub_1C546B3E8();
  sub_1C5468084(v15);
  sub_1C55950F4();
  return (*(v13 + 8))(v15, v16);
}

double sub_1C546B060(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v22 = a2;
  v21 = sub_1C546E158;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v24 = type metadata accessor for ReviewCustodianListView(0);
  v25 = *(v24 - 8);
  v26 = v25;
  v27 = *(v25 + 64);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v22, v3, v4);
  v29 = (v9 - v28);
  v40 = v5;
  v39 = v6;
  v38 = v2;
  if ([objc_opt_self() canRepairCustodian])
  {
    v18 = *(v20 + *(v24 + 24) + 8);

    v19 = *(v18 + 24);
    MEMORY[0x1E69E5928](v19, v8);

    v37 = [v19 repairDelegate];
    if (v37)
    {
      v16 = &v37;
      v17 = v37;
      swift_unknownObjectRetain();
      sub_1C546E12C(v16);
      MEMORY[0x1E69E5920](v19);
      swift_getObjectType();
      [v17 startingRepair];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C546E12C(&v37);
      MEMORY[0x1E69E5920](v19);
    }

    v9[0] = 0;
    sub_1C5404B78();
    v15 = sub_1C5404B48();
    sub_1C5594CF4();
    v9[1] = sub_1C5594994();
    v14 = sub_1C5596704();

    sub_1C5594CF4();
    v13 = sub_1C5596704();

    sub_1C542B834(v20, v29);
    v10 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v11 = swift_allocObject();
    sub_1C5468D40(v29, (v11 + v10));
    v35 = v21;
    v36 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = 0;
    v33 = sub_1C546D2EC;
    v34 = &block_descriptor_6;
    v12 = _Block_copy(&aBlock);

    [v15 repairCustodians:v14 remove:v13 completion:v12];
    _Block_release(v12);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v14);
    *&result = MEMORY[0x1E69E5920](v15).n128_u64[0];
  }

  return result;
}

double sub_1C546B3E8()
{
  v20 = v0;
  sub_1C5594CF4();
  v11 = sub_1C5596554();
  v12 = *MEMORY[0x1E698B7D0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698B7D0], v1);
  if (v12)
  {
    applicationID = v12;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  CFPreferencesSetAppValue(v11, 0, applicationID);
  MEMORY[0x1E69E5920](applicationID);
  MEMORY[0x1E69E5920](v11);

  sub_1C546E234();
  v9 = sub_1C5404B48();
  v6 = *MEMORY[0x1E698B798];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698B798], v2);
  sub_1C545C2A0(v6, v3);
  MEMORY[0x1E69E5920](v6);
  sub_1C5594CF4();
  v8 = sub_1C5596554();
  MEMORY[0x1E69E5928](v8, v4);

  MEMORY[0x1E69E5920](v8);
  v18 = sub_1C546C454;
  v19 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_1C546CAAC;
  v17 = &block_descriptor_6;
  v7 = _Block_copy(&aBlock);
  [v9 dismissFollowUpWithIdentifier:v8 completion:?];
  _Block_release(v7);
  MEMORY[0x1E69E5920](v8);
  *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
  return result;
}

uint64_t sub_1C546B668()
{
  if (sub_1C546DECC())
  {
    v0 = sub_1C55965F4("UPDATE_RECOVERY_CONTACTS", 24, 1);
    v6 = sub_1C54637B4(v0, v1);

    return v6;
  }

  else
  {
    v2 = sub_1C55965F4("UPDATE_RECOVERY_CONTACT", 23, 1);
    v5 = sub_1C54637B4(v2, v3);

    return v5;
  }
}

uint64_t sub_1C546B73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v18 = a1;
  v19 = sub_1C5470704;
  v35 = 0;
  v34 = 0;
  v2 = sub_1C5595544();
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v22 = &v14 - v14;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC88, &qword_1C55B0B58);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v16 = *(v23 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v6, v7, v8);
  v27 = &v14 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, &v14 - v15, v10, v11);
  v28 = &v14 - v17;
  v35 = &v14 - v17;
  v34 = v12;
  sub_1C5595504();
  v20 = &v32;
  v33 = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  sub_1C547070C();
  sub_1C55950A4();
  v26 = sub_1C547051C();
  sub_1C540EFD8(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  MEMORY[0x1C6946140](v27, v29, v26);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_1C546B9AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v27 = a1;
  v33 = sub_1C5470794;
  v47 = 0;
  v46 = 0;
  v2 = type metadata accessor for ReviewCustodianListView(0);
  v20 = *(v2 - 8);
  v28 = v20;
  v29 = *(v20 + 64);
  v21 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v32 = (&v19 - v21);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v22 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v6, v7, v8);
  v40 = &v19 - v22;
  v23 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v10, &v19 - v22, v11, v12);
  v41 = &v19 - v23;
  v47 = &v19 - v23;
  v46 = v14;
  v30 = 7;
  v15 = sub_1C55965F4("NOT_NOW", v13);
  v24 = v16;
  v25 = sub_1C54637B4(v15, v16);
  v26 = v17;

  v35 = v45;
  v45[0] = v25;
  v45[1] = v26;
  sub_1C542B834(v27, v32);
  v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v34 = swift_allocObject();
  sub_1C5468D40(v32, (v34 + v31));
  sub_1C54141E8();
  sub_1C5596004();
  v39 = sub_1C547070C();
  sub_1C540EFD8(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1C540EFD8(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

uint64_t sub_1C546BCD0(uint64_t a1)
{
  v11 = 0;
  v10 = sub_1C5595104();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v2, v3, v4);
  v9 = &v6 - v6;
  v11 = a1;
  sub_1C5468084(&v6 - v6);
  sub_1C55950F4();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C546BDA0(uint64_t *a1)
{
  sub_1C5594CF4();
  v4 = sub_1C5596554();
  sub_1C55965F4("false", 5, 1);
  v5 = sub_1C5596554();
  v6 = *MEMORY[0x1E698B7D0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698B7D0], v1);
  if (v6)
  {
    applicationID = v6;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  CFPreferencesSetAppValue(v4, v5, applicationID);
  MEMORY[0x1E69E5920](applicationID);
  swift_unknownObjectRelease();

  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C546BF3C()
{
  v30 = 0;
  v40[1] = 0;
  v39 = 0;
  v38 = 0;
  v28 = *(v0 + *(type metadata accessor for ReviewCustodianListView(0) + 24) + 8);

  v29 = (*(*v28 + 112))(v1);

  v40[0] = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB60, &qword_1C55B0878);
  v32 = sub_1C5594994();
  v2 = sub_1C546E2FC();
  v33 = sub_1C546A654(sub_1C546A5C8, 0, v31, v32, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  v27 = v33;
  sub_1C541439C(v40);
  v39 = v33;
  if ([objc_opt_self() canRepairCustodian])
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB70, &qword_1C55B0880);
    v18 = 1;
    v19 = sub_1C5596E04();
    v20 = v4;
    v5 = sub_1C55965F4("custodianUUIDs", 14, 1);
    v6 = v20;
    *v20 = v5;
    v6[1] = v7;
    sub_1C5594CF4();
    v20[2] = v27;
    sub_1C540FCD8();
    v22 = v8;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB78, &qword_1C55B0888);
    v24 = sub_1C5596454();
    v38 = v24;
    v25 = [objc_opt_self() defaultCenter];
    v26 = *sub_1C546C3F4();
    v9 = v26;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v17 = 0;
    v16 = 0;
    sub_1C5594CF4();
    v12 = MEMORY[0x1E69E7CA0] + 8;
    v11 = MEMORY[0x1E69E69B8];
    v13 = MEMORY[0x1E69E69C0];
    v14 = sub_1C5596CB4();
    v15 = sub_1C5596434();

    [v25 postNotificationName:v26 object:v16 userInfo:v15];

    swift_unknownObjectRelease();
  }
}

uint64_t *sub_1C546C3F4()
{
  if (qword_1EC162440 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B458;
}

void sub_1C546C454(unsigned int a1, void *a2)
{
  v52 = a1;
  v51 = a2;
  v45 = sub_1C5467F9C;
  v46 = sub_1C546FF24;
  v47 = sub_1C545C6D4;
  v48 = sub_1C545C6D4;
  v49 = sub_1C545C6E8;
  v64 = 0;
  v63 = 0;
  v50 = 0;
  v53 = sub_1C5594C74();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v51, v2, v3);
  v57 = &v22 - v56;
  v64 = v4 & 1;
  v63 = v5;
  v62[1] = v5;
  v44 = v5 != 0;
  if (v5)
  {
    v6 = v57;
    v7 = sub_1C54B05F8();
    (*(v54 + 16))(v6, v7, v53);
    v8 = v51;
    v33 = 7;
    v34 = swift_allocObject();
    *(v34 + 16) = v51;
    sub_1C54398B0();

    v42 = sub_1C5594C54();
    v43 = sub_1C5596954();
    v31 = 17;
    v36 = swift_allocObject();
    *(v36 + 16) = 64;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v32 = 32;
    v9 = swift_allocObject();
    v10 = v34;
    v35 = v9;
    *(v9 + 16) = v45;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v35;
    v39 = v11;
    *(v11 + 16) = v46;
    *(v11 + 24) = v12;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v38 = sub_1C5596E04();
    v40 = v13;

    v14 = v36;
    v15 = v40;
    *v40 = v47;
    v15[1] = v14;

    v16 = v37;
    v17 = v40;
    v40[2] = v48;
    v17[3] = v16;

    v18 = v39;
    v19 = v40;
    v40[4] = v49;
    v19[5] = v18;
    sub_1C540FCD8();

    if (os_log_type_enabled(v42, v43))
    {
      v20 = v50;
      v24 = sub_1C5596A74();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v25 = sub_1C5419DC0(1, v23, v23);
      v26 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v27 = v62;
      v62[0] = v24;
      v28 = &v61;
      v61 = v25;
      v29 = &v60;
      v60 = v26;
      sub_1C5419E14(2, v62);
      sub_1C5419E14(1, v27);
      v58 = v47;
      v59 = v36;
      sub_1C5419E28(&v58, v27, v28, v29);
      v30 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v58 = v48;
        v59 = v37;
        sub_1C5419E28(&v58, v62, &v61, &v60);
        v22 = 0;
        v58 = v49;
        v59 = v39;
        sub_1C5419E28(&v58, v62, &v61, &v60);
        _os_log_impl(&dword_1C5355000, v42, v43, "Error occurred when dismissing followup. Error: %@", v24, 0xCu);
        sub_1C5419E74(v25, 1, v23);
        sub_1C5419E74(v26, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v21 = MEMORY[0x1E69E5920](v42);
    (*(v54 + 8))(v57, v53, v21);
  }
}