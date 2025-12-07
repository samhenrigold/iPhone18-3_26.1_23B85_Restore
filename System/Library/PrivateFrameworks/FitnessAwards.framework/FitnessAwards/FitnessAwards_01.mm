__n128 sub_24B3E88E8@<Q0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v28 = a2;
  v29 = v3;
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458D0C();
  (*(v10 + 8))(v12, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = *v8;
    v14 = *(v8 + 1);
    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    v18 = v8[32];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B3DF4F0(v8, &qword_27EFE7DB0, &unk_24B45D910);
LABEL_8:
    *&v55 = sub_24B458B1C();
    sub_24B3EC9A4(&v55);
    v39 = *&v56[112];
    v40 = *&v56[128];
    v41 = *&v56[144];
    v42 = *&v56[160];
    v35 = *&v56[48];
    v36 = *&v56[64];
    v37 = *&v56[80];
    v38 = *&v56[96];
    v31 = v55;
    v32 = *v56;
    v33 = *&v56[16];
    v34 = *&v56[32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DD8, &qword_24B45B4D8);
    sub_24B3DF11C(&qword_27EFE7DD0, &qword_27EFE7DD8, &qword_24B45B4D8, MEMORY[0x277CE1198]);
    sub_24B45871C();
    goto LABEL_9;
  }

  v15 = *v8;
  v14 = *(v8 + 1);
  v17 = *(v8 + 2);
  v16 = *(v8 + 3);
  v18 = v8[32];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
  v20 = sub_24B45833C();
  (*(*(v20 - 8) + 8))(&v8[v19], v20);
LABEL_6:
  v57[0] = v15;
  v57[1] = v14;
  v57[2] = v17;
  v57[3] = v16;
  v58 = v18;
  LOBYTE(v31) = 0;
  sub_24B3EBA28(v57, v29, v28[2], v28[3], v28[4], v28[5], &v59);
  v50 = v65;
  v51 = v66;
  v52[0] = v67[0];
  *(v52 + 9) = *(v67 + 9);
  v46 = v61;
  v47 = v62;
  v48 = v63;
  v49 = v64;
  v44 = v59;
  v45 = v60;
  v53[6] = v65;
  v53[7] = v66;
  v54[0] = v67[0];
  *(v54 + 9) = *(v67 + 9);
  v53[2] = v61;
  v53[3] = v62;
  v53[4] = v63;
  v53[5] = v64;
  v53[0] = v59;
  v53[1] = v60;
  sub_24B3DF488(&v44, &v55, &qword_27EFE7DF0, &qword_24B45B500);
  sub_24B3DF4F0(v53, &qword_27EFE7DF0, &qword_24B45B500);

  *(&v43[7] + 7) = v51;
  *(&v43[6] + 7) = v50;
  *(&v43[3] + 7) = v47;
  *(&v43[2] + 7) = v46;
  *(&v43[8] + 7) = v52[0];
  v43[9] = *(v52 + 9);
  *(&v43[4] + 7) = v48;
  *(&v43[5] + 7) = v49;
  *(v43 + 7) = v44;
  *(&v43[1] + 7) = v45;
  *&v56[97] = v43[6];
  *&v56[113] = v43[7];
  *&v56[129] = v43[8];
  *&v56[145] = *(v52 + 9);
  *&v56[33] = v43[2];
  *&v56[49] = v43[3];
  *&v56[65] = v43[4];
  *&v56[81] = v43[5];
  *&v56[1] = v43[0];
  v55 = v30;
  v56[0] = v31;
  *&v56[17] = v43[1];
  sub_24B3EC998(&v55);
  v39 = *&v56[112];
  v40 = *&v56[128];
  v41 = *&v56[144];
  v42 = *&v56[160];
  v35 = *&v56[48];
  v36 = *&v56[64];
  v37 = *&v56[80];
  v38 = *&v56[96];
  v31 = v55;
  v32 = *v56;
  v33 = *&v56[16];
  v34 = *&v56[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DD8, &qword_24B45B4D8);
  sub_24B3DF11C(&qword_27EFE7DD0, &qword_27EFE7DD8, &qword_24B45B4D8, MEMORY[0x277CE1198]);
  sub_24B45871C();
LABEL_9:
  v21 = v67[1];
  *(a3 + 128) = v67[0];
  *(a3 + 144) = v21;
  *(a3 + 160) = v67[2];
  *(a3 + 176) = v68;
  v22 = v64;
  *(a3 + 64) = v63;
  *(a3 + 80) = v22;
  v23 = v66;
  *(a3 + 96) = v65;
  *(a3 + 112) = v23;
  v24 = v60;
  *a3 = v59;
  *(a3 + 16) = v24;
  result = v61;
  v26 = v62;
  *(a3 + 32) = v61;
  *(a3 + 48) = v26;
  return result;
}

uint64_t sub_24B3E8E40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v18 = a2;
  v4 = *(a1 + 16);
  sub_24B4585BC();
  v23 = sub_24B4585BC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v6 = *(a1 + 24);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v25 = sub_24B458F6C();
  v26 = v5;
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v7 = sub_24B458C1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v19 = v4;
  v20 = v6;
  v21 = *(a1 + 32);
  v22 = v2;
  sub_24B4586EC();
  sub_24B458C0C();
  swift_getWitnessTable();
  v14 = *(v8 + 16);
  v14(v13, v11, v7);
  v15 = *(v8 + 8);
  v15(v11, v7);
  v14(v18, v13, v7);
  return (v15)(v13, v7);
}

uint64_t sub_24B3E90E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a4;
  v107 = a1;
  v103 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v11 = sub_24B4585BC();
  v106 = v10;
  swift_getTupleTypeMetadata2();
  v12 = sub_24B458CDC();
  v99 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v86 = v81 - v14;
  v87 = v11;
  v85 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = v81 - v17;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  MEMORY[0x28223BE20](v96);
  v91 = v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v20 = *(v19 - 8);
  v93 = v19;
  v94 = v20;
  MEMORY[0x28223BE20](v19);
  v92 = v81 - v21;
  v111 = v12;
  v102 = sub_24B458F6C();
  v100 = *(v102 - 8);
  v22 = MEMORY[0x28223BE20](v102);
  v101 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v108 = v81 - v24;
  v104 = sub_24B45843C();
  v97 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v95 = v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for AwardHeaderLayout(0);
  MEMORY[0x28223BE20](v112);
  v27 = v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v105 = a2;
  v29 = sub_24B4585BC();
  v98 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v89 = v81 - v30;
  v110 = sub_24B4585BC();
  v114 = *(v110 - 8);
  v31 = MEMORY[0x28223BE20](v110);
  v33 = v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v113 = v81 - v34;
  *&v182 = v28;
  v81[1] = a3;
  *(&v182 + 1) = a3;
  *&v183 = a4;
  v83 = a5;
  *(&v183 + 1) = a5;
  v35 = type metadata accessor for AwardHeaderView(0, &v182);
  v88 = *(v35 + 52);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3EC714(v27);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3EC714(v27);
  sub_24B458CBC();
  v36 = v90;
  sub_24B458A4C();
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  v37 = v97;
  v38 = v95;
  v39 = v104;
  (*(v97 + 16))(v95, &v27[*(v112 + 32)], v104);
  v105 = v27;
  sub_24B3EC714(v27);
  sub_24B4583EC();
  (*(v37 + 8))(v38, v39);
  v166 = v36;
  v167 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v41 = v89;
  sub_24B458A8C();
  v98[1](v41, v29);
  v164 = WitnessTable;
  v165 = MEMORY[0x277CDF918];
  v42 = v110;
  v97 = swift_getWitnessTable();
  v43 = v114;
  v95 = *(v114 + 16);
  (v95)(v113, v33, v42);
  v45 = v43 + 8;
  v44 = *(v43 + 8);
  v109 = v33;
  v46 = v91;
  v114 = v45;
  v98 = v44;
  (v44)(v33, v42);
  v47 = sub_24B4586EC();
  sub_24B3E88E8(v47, v35, v180);
  v190 = v180[8];
  v191 = v180[9];
  v192 = v180[10];
  LOWORD(v193) = v181;
  v186 = v180[4];
  v187 = v180[5];
  v188 = v180[6];
  v189 = v180[7];
  v182 = v180[0];
  v183 = v180[1];
  v184 = v180[2];
  v185 = v180[3];
  HIWORD(v193) = 256;
  v104 = v35;
  sub_24B3E4898();
  swift_getKeyPath();
  v48 = v92;
  sub_24B458D5C();

  v49 = v93;
  sub_24B458D0C();
  (*(v94 + 8))(v48, v49);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B3DF4F0(v46, &qword_27EFE7DB0, &unk_24B45D910);
    goto LABEL_5;
  }

  v50 = *(v46 + 32);
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
  v52 = sub_24B45833C();
  (*(*(v52 - 8) + 8))(v46 + v51, v52);

  if (v50 != 1)
  {
LABEL_5:
    v64 = v101;
    (*(v99 + 56))(v101, 1, 1, v111);
    swift_getWitnessTable();
    v67 = v108;
    v68 = v64;
    goto LABEL_6;
  }

  sub_24B3E4898();
  swift_getKeyPath();
  v53 = v105;
  sub_24B458D5C();

  sub_24B3EC714(v53);
  sub_24B458CBC();
  sub_24B45855C();
  v92 = v168;
  v93 = v170;
  v96 = v172;
  v94 = v173;
  LOBYTE(v150[0]) = 1;
  LOBYTE(v148[0]) = v169;
  LOBYTE(v146[0]) = v171;
  v54 = v83;
  v55 = v84;
  sub_24B458AEC();
  v115 = v54;
  v116 = MEMORY[0x277CDFC48];
  v56 = v87;
  v57 = swift_getWitnessTable();
  v58 = v85;
  v59 = *(v85 + 16);
  v60 = v82;
  v59(v82, v55, v56);
  v61 = *(v58 + 8);
  v61(v55, v56);
  *&v152 = 0;
  BYTE8(v152) = v150[0];
  *(&v152 + 9) = v145[0];
  HIDWORD(v152) = *(v145 + 3);
  *&v153 = v92;
  BYTE8(v153) = v148[0];
  *(&v153 + 9) = v122[0];
  HIDWORD(v153) = *(v122 + 3);
  *&v154 = v93;
  BYTE8(v154) = v146[0];
  *(&v154 + 9) = v118;
  HIDWORD(v154) = *(&v118 + 3);
  *&v155 = v96;
  *(&v155 + 1) = v94;
  *&v133 = &v152;
  v59(v55, v60, v56);
  *(&v133 + 1) = v55;
  v123 = v106;
  v124 = v56;
  v174 = sub_24B3EC908();
  v175 = v57;
  v62 = v86;
  sub_24B437D88(&v133, 2uLL, &v123);
  v61(v60, v56);
  v61(v55, v56);
  v63 = v99;
  v64 = v101;
  v65 = v62;
  v66 = v111;
  (*(v99 + 32))(v101, v65, v111);
  (*(v63 + 56))(v64, 0, 1, v66);
  swift_getWitnessTable();
  v67 = v108;
  v68 = v64;
LABEL_6:
  sub_24B428520(v68, v67);
  v69 = v100;
  v70 = *(v100 + 8);
  v99 = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v71 = v102;
  v70(v64, v102);
  sub_24B3E4898();
  swift_getKeyPath();
  v72 = v105;
  sub_24B458D5C();

  sub_24B3EC714(v72);
  sub_24B458CBC();
  sub_24B45855C();
  v73 = v174;
  v74 = v176;
  v112 = v178;
  v107 = v179;
  v151 = 1;
  v149 = v175;
  v147 = v177;
  v75 = v110;
  v76 = v109;
  (v95)();
  v141 = v190;
  v142 = v191;
  v143 = v192;
  v144 = v193;
  v137 = v186;
  v138 = v187;
  v139 = v188;
  v140 = v189;
  v133 = v182;
  v134 = v183;
  v135 = v184;
  v136 = v185;
  v145[0] = v76;
  v145[1] = &v133;
  v77 = v108;
  (*(v69 + 16))(v64, v108, v71);
  v123 = 0;
  LOBYTE(v124) = v151;
  *(&v124 + 1) = v150[0];
  HIDWORD(v124) = *(v150 + 3);
  v125 = v73;
  v126 = v149;
  *v127 = v148[0];
  *&v127[3] = *(v148 + 3);
  v128 = v74;
  v129 = v147;
  *v130 = v146[0];
  *&v130[3] = *(v146 + 3);
  v131 = v112;
  v132 = v107;
  v145[2] = v64;
  v145[3] = &v123;
  sub_24B3DF488(&v182, &v152, qword_27EFE7D10, &qword_24B45B420);
  v122[0] = v75;
  v122[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFE7D10, &qword_24B45B420);
  v122[2] = v71;
  v122[3] = v106;
  v118 = v97;
  v119 = sub_24B3ECA18();
  v117 = swift_getWitnessTable();
  v120 = swift_getWitnessTable();
  v121 = sub_24B3EC908();
  sub_24B437D88(v145, 4uLL, v122);
  sub_24B3DF4F0(&v182, qword_27EFE7D10, &qword_24B45B420);
  v78 = *(v69 + 8);
  v78(v77, v71);
  v79 = v98;
  (v98)(v113, v75);
  v78(v64, v71);
  v160 = v141;
  v161 = v142;
  v162 = v143;
  v163 = v144;
  v156 = v137;
  v157 = v138;
  v158 = v139;
  v159 = v140;
  v152 = v133;
  v153 = v134;
  v154 = v135;
  v155 = v136;
  sub_24B3DF4F0(&v152, qword_27EFE7D10, &qword_24B45B420);
  return (v79)(v109, v75);
}

uint64_t sub_24B3EA0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a1;
  OpaqueTypeConformance2 = a5;
  v81 = a6;
  v103 = a2;
  v104 = a3;
  v105 = a4;
  v106 = a5;
  v79 = type metadata accessor for AwardHeaderView(0, &v103);
  v77 = *(v79 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v74 = &v51 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  sub_24B458F6C();
  swift_getTupleTypeMetadata2();
  v69 = sub_24B458CDC();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24B458C1C();
  v72 = v10;
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = &v51 - v11;
  v66 = MEMORY[0x277CE1198];
  v71 = swift_getWitnessTable();
  v103 = v10;
  v104 = v71;
  v73 = MEMORY[0x277CDEBE0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v67 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v51 - v14;
  v15 = a2;
  sub_24B4585BC();
  sub_24B4585BC();
  v53 = a4;
  v114[7] = a4;
  v114[8] = MEMORY[0x277CDF678];
  v114[5] = swift_getWitnessTable();
  v114[6] = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v16 = sub_24B458C1C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v20;
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v62 = &v51 - v21;
  sub_24B4586EC();
  v90 = v15;
  v91 = a3;
  v52 = a3;
  v92 = a4;
  v23 = OpaqueTypeConformance2;
  v93 = OpaqueTypeConformance2;
  v94 = v82;
  sub_24B458C0C();
  v57 = v16;
  v63 = swift_getWitnessTable();
  v24 = *(v17 + 16);
  v60 = v17 + 16;
  v61 = v24;
  v24(v22, v20, v16);
  v25 = *(v17 + 8);
  v65 = v17 + 8;
  v66 = v25;
  v25(v20, v16);
  sub_24B458CBC();
  sub_24B45855C();
  v54 = v114[9];
  v55 = v116;
  v58 = v119;
  v59 = v118;
  v125 = 1;
  v123 = v115;
  v121 = v117;
  sub_24B4586FC();
  v85 = v15;
  v86 = a3;
  v26 = v53;
  v87 = v53;
  v88 = v23;
  v27 = v82;
  v89 = v82;
  v28 = v64;
  sub_24B458C0C();
  sub_24B45879C();
  v29 = v77;
  v30 = v74;
  v31 = v79;
  (*(v77 + 16))(v74, v27, v79);
  v32 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v52;
  *(v33 + 2) = v15;
  *(v33 + 3) = v34;
  v35 = OpaqueTypeConformance2;
  *(v33 + 4) = v26;
  *(v33 + 5) = v35;
  (*(v29 + 32))(&v33[v32], v30, v31);
  sub_24B458CBC();
  v36 = v67;
  v38 = v71;
  v37 = v72;
  sub_24B458A2C();

  (*(v76 + 8))(v28, v37);
  v103 = v37;
  v104 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v84;
  v40 = *(v84 + 16);
  v41 = v70;
  v42 = OpaqueTypeMetadata2;
  v40(v70, v36, OpaqueTypeMetadata2);
  v43 = *(v39 + 8);
  v84 = v39 + 8;
  v43(v36, v42);
  v112 = 0;
  v113 = 1;
  v114[0] = &v112;
  v44 = v56;
  v45 = v57;
  v46 = v62;
  v61(v56, v62, v57);
  v103 = 0;
  LOBYTE(v104) = v125;
  *(&v104 + 1) = *v124;
  HIDWORD(v104) = *&v124[3];
  v105 = v54;
  LOBYTE(v106) = v123;
  *(&v106 + 1) = *v122;
  HIDWORD(v106) = *&v122[3];
  v107 = v55;
  v108 = v121;
  *v109 = *v120;
  *&v109[3] = *&v120[3];
  v110 = v59;
  v111 = v58;
  v114[1] = v44;
  v114[2] = &v103;
  v40(v36, v41, v42);
  v101 = 0;
  v102 = 1;
  v114[3] = v36;
  v114[4] = &v101;
  v47 = v36;
  v100[0] = MEMORY[0x277CE1180];
  v100[1] = v45;
  v100[2] = v80;
  v100[3] = v42;
  v100[4] = MEMORY[0x277CE1180];
  v48 = MEMORY[0x277CE1170];
  v95 = MEMORY[0x277CE1170];
  v96 = v63;
  v97 = sub_24B3EC908();
  v98 = OpaqueTypeConformance2;
  v99 = v48;
  sub_24B437D88(v114, 5uLL, v100);
  v43(v41, v42);
  v49 = v66;
  v66(v46, v45);
  v43(v47, v42);
  return v49(v44, v45);
}

uint64_t sub_24B3EA8F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v36 = a3;
  v45 = a5;
  v9 = sub_24B45843C();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AwardHeaderLayout(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v37 = a1;
  v16 = sub_24B4585BC();
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = sub_24B4585BC();
  v41 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v38 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v39 = &v35 - v22;
  v50[0] = v15;
  v50[1] = a2;
  v50[2] = a3;
  v50[3] = a4;
  v35 = *(type metadata accessor for AwardHeaderView(0, v50) + 52);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3EC714(v14);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3EC714(v14);
  sub_24B458CBC();
  v23 = v36;
  sub_24B458A4C();
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  v24 = *(v12 + 40);
  v26 = v42;
  v25 = v43;
  v27 = v40;
  (*(v42 + 16))(v40, &v14[v24], v43);
  sub_24B3EC714(v14);
  sub_24B4583EC();
  (*(v26 + 8))(v27, v25);
  v48 = v23;
  v49 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v29 = v38;
  sub_24B458A8C();
  (*(v44 + 8))(v18, v16);
  v46 = WitnessTable;
  v47 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v30 = v41;
  v31 = *(v41 + 16);
  v32 = v39;
  v31(v39, v29, v19);
  v33 = *(v30 + 8);
  v33(v29, v19);
  v31(v45, v32, v19);
  return (v33)(v32, v19);
}

uint64_t sub_24B3EADDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a1;
  v70 = a5;
  v60 = a2;
  v61 = a4;
  v68 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v8 = sub_24B4585BC();
  v58 = v7;
  swift_getTupleTypeMetadata2();
  v9 = sub_24B458CDC();
  v63 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v57 = &v50 - v11;
  v59 = v8;
  v56 = *(v8 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v50 - v14;
  v53 = type metadata accessor for AwardHeaderLayout(0);
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  v67 = v9;
  v66 = sub_24B458F6C();
  v62 = *(v66 - 8);
  v23 = MEMORY[0x28223BE20](v66);
  v65 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v64 = &v50 - v25;
  v26 = sub_24B4586FC();
  *&v117 = v60;
  v60 = a3;
  *(&v117 + 1) = a3;
  *&v118 = v61;
  *(&v118 + 1) = v70;
  v27 = type metadata accessor for AwardHeaderView(0, &v117);
  sub_24B3E88E8(v26, v27, v115);
  v125 = v115[8];
  v126 = v115[9];
  v127 = v115[10];
  LOWORD(v128) = v116;
  v121 = v115[4];
  v122 = v115[5];
  v123 = v115[6];
  v124 = v115[7];
  v117 = v115[0];
  v118 = v115[1];
  v119 = v115[2];
  v120 = v115[3];
  HIWORD(v128) = 256;
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458D0C();
  (*(v20 + 8))(v22, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B3DF4F0(v18, &qword_27EFE7DB0, &unk_24B45D910);
    goto LABEL_5;
  }

  v28 = v18[32];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
  v30 = sub_24B45833C();
  (*(*(v30 - 8) + 8))(&v18[v29], v30);

  if (v28 != 1)
  {
LABEL_5:
    v42 = v65;
    (*(v63 + 56))(v65, 1, 1, v67);
    goto LABEL_6;
  }

  sub_24B3E4898();
  swift_getKeyPath();
  v31 = v52;
  sub_24B458D5C();

  sub_24B3EC714(v31);
  sub_24B458CBC();
  sub_24B45855C();
  v51 = v109;
  v52 = v111;
  v61 = v113;
  v53 = v114;
  v77 = 1;
  v76 = v110;
  v74 = v112;
  v32 = v55;
  v33 = v70;
  sub_24B458AEC();
  v71 = v33;
  v72 = MEMORY[0x277CDFC48];
  v34 = v59;
  WitnessTable = swift_getWitnessTable();
  v36 = v56;
  v37 = *(v56 + 16);
  v38 = v54;
  v37(v54, v32, v34);
  v39 = *(v36 + 8);
  v39(v32, v34);
  *&v97 = 0;
  BYTE8(v97) = v77;
  *(&v97 + 9) = v79;
  HIDWORD(v97) = *(&v79 + 3);
  *&v98 = v51;
  BYTE8(v98) = v76;
  *(&v98 + 9) = *v75;
  HIDWORD(v98) = *&v75[3];
  *&v99 = v52;
  BYTE8(v99) = v74;
  *(&v99 + 9) = *v73;
  HIDWORD(v99) = *&v73[3];
  *&v100 = v61;
  *(&v100 + 1) = v53;
  *&v83 = &v97;
  v37(v32, v38, v34);
  *(&v83 + 1) = v32;
  v95 = v58;
  v96 = v34;
  v81 = sub_24B3EC908();
  v82 = WitnessTable;
  v40 = v57;
  sub_24B437D88(&v83, 2uLL, &v95);
  v39(v38, v34);
  v39(v32, v34);
  v41 = v63;
  v42 = v65;
  v43 = v40;
  v44 = v67;
  (*(v63 + 32))(v65, v43, v67);
  (*(v41 + 56))(v42, 0, 1, v44);
LABEL_6:
  swift_getWitnessTable();
  v45 = v64;
  sub_24B428520(v42, v64);
  v46 = v62;
  v47 = *(v62 + 8);
  v48 = v66;
  v47(v42, v66);
  v92 = v126;
  v93 = v127;
  v88 = v122;
  v89 = v123;
  v90 = v124;
  v91 = v125;
  v83 = v117;
  v84 = v118;
  v85 = v119;
  v94 = v128;
  v86 = v120;
  v87 = v121;
  v95 = &v83;
  (*(v46 + 16))(v42, v45, v48);
  v96 = v42;
  sub_24B3DF488(&v117, &v97, qword_27EFE7D10, &qword_24B45B420);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFE7D10, &qword_24B45B420);
  v82 = v48;
  v79 = sub_24B3ECA18();
  v78 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  sub_24B437D88(&v95, 2uLL, &v81);
  sub_24B3DF4F0(&v117, qword_27EFE7D10, &qword_24B45B420);
  v47(v45, v48);
  v47(v42, v48);
  v105 = v91;
  v106 = v92;
  v107 = v93;
  v101 = v87;
  v102 = v88;
  v108 = v94;
  v103 = v89;
  v104 = v90;
  v97 = v83;
  v98 = v84;
  v99 = v85;
  v100 = v86;
  return sub_24B3DF4F0(&v97, qword_27EFE7D10, &qword_24B45B420);
}

uint64_t sub_24B3EB794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[1] = a2;
  v10 = sub_24B45843C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AwardHeaderLayout(0);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v26 - v19;
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  type metadata accessor for AwardHeaderView(0, v27);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  v21 = v10;

  (*(v11 + 16))(v13, &v20[*(v15 + 28)], v10);
  sub_24B3EC714(v20);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  v22 = &v18[*(v15 + 68)];
  v23 = *v22;
  v24 = *(v22 + 2);
  sub_24B3EC714(v18);
  sub_24B45841C();
  result = sub_24B45842C();
  if (__OFSUB__(v23, 1))
  {
    __break(1u);
  }

  else if (!__OFSUB__(v24, 1))
  {
    return (*(v11 + 8))(v13, v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B3EBA28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a6;
  v77 = a5;
  v80 = a2;
  v11 = type metadata accessor for AwardHeaderLayout(0) - 8;
  v79 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v78 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  KeyPath = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - v16;
  v72 = a1;
  v18 = *a1;
  v19 = a1[1];
  v89 = v18;
  v90 = v19;
  v71 = sub_24B3EC9AC();

  v20 = sub_24B45892C();
  v22 = v21;
  v24 = v23;
  v89 = a3;
  v90 = a4;
  v91 = v77;
  v92 = v81;
  v81 = type metadata accessor for AwardHeaderView(0, &v89);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  v25 = *(v11 + 76);
  v65 = v17;
  LOWORD(a3) = *&v17[v25];
  sub_24B3EC714(v17);
  LOWORD(v89) = a3;
  sub_24B43C2AC();
  v26 = sub_24B45890C();
  v28 = v27;
  v30 = v29;

  sub_24B3DF478(v20, v22, v24 & 1);

  LODWORD(v89) = sub_24B45874C();
  v76 = sub_24B4588DC();
  v75 = v31;
  v74 = v32;
  v77 = v33;
  sub_24B3DF478(v26, v28, v30 & 1);

  sub_24B3E4898();
  swift_getKeyPath();
  v34 = KeyPath;
  sub_24B458D5C();

  v35 = v79;
  v73 = *(v34 + *(v79 + 72));
  sub_24B3EC714(v34);
  KeyPath = swift_getKeyPath();
  sub_24B3E4898();
  swift_getKeyPath();
  v36 = v65;
  sub_24B458D5C();

  sub_24B3EC714(v36);
  sub_24B458CBC();
  sub_24B45855C();
  v69 = v89;
  v68 = v91;
  v67 = v93;
  v66 = v94;
  v88 = 1;
  v87 = v90;
  v86 = v92;
  v37 = v72[3];
  v84 = v72[2];
  v85 = v37;

  v38 = sub_24B45892C();
  v40 = v39;
  LOBYTE(v26) = v41;
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  LOWORD(a3) = *(v36 + *(v35 + 32));
  sub_24B3EC714(v36);
  LOWORD(v84) = a3;
  sub_24B43C2AC();
  v42 = sub_24B45890C();
  v44 = v43;
  LOBYTE(v36) = v45;

  sub_24B3DF478(v38, v40, v26 & 1);

  LODWORD(v84) = sub_24B45875C();
  v46 = sub_24B4588DC();
  v48 = v47;
  LOBYTE(v38) = v49;
  v51 = v50;
  sub_24B3DF478(v42, v44, v36 & 1);

  sub_24B3E4898();
  swift_getKeyPath();
  v52 = v78;
  sub_24B458D5C();

  LOBYTE(v36) = *(v52 + *(v79 + 72));
  sub_24B3EC714(v52);
  v53 = swift_getKeyPath();
  v54 = v74 & 1;
  LOBYTE(v84) = v74 & 1;
  v55 = v88;
  v56 = v87;
  v57 = v86;
  v83 = v74 & 1;
  LOBYTE(v38) = v38 & 1;
  v82 = v38;
  v58 = v76;
  v59 = v75;
  *a7 = v76;
  *(a7 + 8) = v59;
  *(a7 + 16) = v54;
  v60 = KeyPath;
  *(a7 + 24) = v77;
  *(a7 + 32) = v60;
  *(a7 + 40) = v73;
  *(a7 + 48) = 0;
  *(a7 + 56) = v55;
  *(a7 + 64) = v69;
  *(a7 + 72) = v56;
  *(a7 + 80) = v68;
  *(a7 + 88) = v57;
  v61 = v66;
  *(a7 + 96) = v67;
  *(a7 + 104) = v61;
  *(a7 + 112) = v46;
  *(a7 + 120) = v48;
  *(a7 + 128) = v38;
  *(a7 + 136) = v51;
  *(a7 + 144) = v53;
  *(a7 + 152) = v36;
  v62 = v58;
  v63 = v59;
  sub_24B3DF5A4(v58, v59, v54);

  sub_24B3DF5A4(v46, v48, v38);

  sub_24B3DF478(v46, v48, v38);

  sub_24B3DF478(v62, v63, v84);
}

void sub_24B3EC094(uint64_t a1)
{
  sub_24B3EC670(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B3EC138(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_24B3EC35C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_24B3EC670(uint64_t a1)
{
  if (!qword_27EFE7D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7DA0, qword_24B45B498);
    sub_24B3DF11C(&qword_27EFE7DA8, &qword_27EFE7DA0, qword_24B45B498, MEMORY[0x277D04410]);
    v1 = sub_24B45852C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFE7D98);
    }
  }
}

uint64_t sub_24B3EC714(uint64_t a1)
{
  v2 = type metadata accessor for AwardHeaderLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B3EC788()
{
  result = qword_27EFE7DC8;
  if (!qword_27EFE7DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7DC0, &qword_24B45B4D0);
    sub_24B3DF11C(&qword_27EFE7DD0, &qword_27EFE7DD8, &qword_24B45B4D8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7DC8);
  }

  return result;
}

unint64_t sub_24B3EC840()
{
  result = qword_27EFE7DE0;
  if (!qword_27EFE7DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D00, &qword_24B45B418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7DC0, &qword_24B45B4D0);
    sub_24B3EC788();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7DE0);
  }

  return result;
}

unint64_t sub_24B3EC908()
{
  result = qword_2810E2898;
  if (!qword_2810E2898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2898);
  }

  return result;
}

unint64_t sub_24B3EC9AC()
{
  result = qword_2810E27B0;
  if (!qword_2810E27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E27B0);
  }

  return result;
}

unint64_t sub_24B3ECA18()
{
  result = qword_27EFE7DF8;
  if (!qword_27EFE7DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE7D10, &qword_24B45B420);
    sub_24B3EC788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7DF8);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for AwardHeaderView(0, &v7) - 8);
  v4 = (v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80)));
  sub_24B3DE5B8(*v4, v4[1]);
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1);
  (*(*(v6 - 8) + 8))(v4 + v3[16]);
  return swift_deallocObject();
}

uint64_t sub_24B3ECC44(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for AwardHeaderView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_24B3EB794(a1 & 1, v8, v3, v4, v5, v6);
}

uint64_t sub_24B3ECD08()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 0x64656863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_24B3ECD5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B3EEC2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B3ECD84(uint64_t a1)
{
  v2 = sub_24B3ED5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3ECDC0(uint64_t a1)
{
  v2 = sub_24B3ED5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3ECDFC(uint64_t a1)
{
  v2 = sub_24B3ED680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3ECE38(uint64_t a1)
{
  v2 = sub_24B3ED680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3ECE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6174736E69 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B3ECF14(uint64_t a1)
{
  v2 = sub_24B3ED6D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3ECF50(uint64_t a1)
{
  v2 = sub_24B3ED6D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3ECF8C(uint64_t a1)
{
  v2 = sub_24B3ED728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3ECFC8(uint64_t a1)
{
  v2 = sub_24B3ED728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardProgressLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7E00, &qword_24B45B540);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7E08, &qword_24B45B548);
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v43 = &v33 - v4;
  v5 = sub_24B45836C();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7E10, &qword_24B45B550);
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7E18, &qword_24B45B558);
  v13 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3ED5C8();
  sub_24B45928C();
  sub_24B3ED61C(v44, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v12;
      v43 = *(v12 + 1);
      v18 = v43;
      v44 = v17;
      v19 = *(v12 + 3);
      v42 = *(v12 + 2);
      v20 = v12[32];
      LOBYTE(v46) = 2;
      sub_24B3ED680();
      v21 = v38;
      v22 = v45;
      sub_24B45910C();
      v46 = v17;
      v47 = v18;
      v23 = v42;
      v48 = v42;
      v49 = v19;
      v50 = v20;
      sub_24B3E1110();
      v24 = v41;
      sub_24B45918C();
      (*(v40 + 8))(v21, v24);
      (*(v13 + 8))(v15, v22);
      return sub_24B3DF468(v44, v43, v23, v19, v20);
    }

    else
    {
      LOBYTE(v46) = 0;
      sub_24B3ED728();
      v32 = v45;
      sub_24B45910C();
      (*(v34 + 8))(v9, v7);
      return (*(v13 + 8))(v15, v32);
    }
  }

  else
  {
    v26 = v35;
    v27 = v36;
    v28 = v12;
    v29 = v37;
    (*(v36 + 32))(v42, v28, v37);
    LOBYTE(v46) = 1;
    sub_24B3ED6D4();
    v30 = v45;
    sub_24B45910C();
    sub_24B3EE64C(&qword_27EFE7E38, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v31 = v39;
    sub_24B45918C();
    (*(v26 + 8))(v43, v31);
    (*(v27 + 8))(v42, v29);
    return (*(v13 + 8))(v15, v30);
  }
}

unint64_t sub_24B3ED5C8()
{
  result = qword_27EFE7E20;
  if (!qword_27EFE7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E20);
  }

  return result;
}

uint64_t sub_24B3ED61C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardProgressLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B3ED680()
{
  result = qword_27EFE7E28;
  if (!qword_27EFE7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E28);
  }

  return result;
}

unint64_t sub_24B3ED6D4()
{
  result = qword_27EFE7E30;
  if (!qword_27EFE7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E30);
  }

  return result;
}

unint64_t sub_24B3ED728()
{
  result = qword_27EFE7E40;
  if (!qword_27EFE7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E40);
  }

  return result;
}

uint64_t AwardProgressLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7E48, &qword_24B45B560);
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  MEMORY[0x28223BE20](v3);
  v68 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7E50, &qword_24B45B568);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  MEMORY[0x28223BE20](v6);
  v67 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7E58, &qword_24B45B570);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7E60, &unk_24B45B578);
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = &v55 - v12;
  State = type metadata accessor for AwardProgressLoadState(0);
  v15 = MEMORY[0x28223BE20](State);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  v23 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B3ED5C8();
  v24 = v70;
  sub_24B45927C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v25 = v64;
  v56 = v17;
  v57 = v20;
  v26 = v65;
  v28 = v67;
  v27 = v68;
  v70 = 0;
  v58 = v22;
  v29 = v66;
  v30 = sub_24B4590FC();
  v31 = (2 * *(v30 + 16)) | 1;
  v74 = v30;
  v75 = v30 + 32;
  v76 = 0;
  v77 = v31;
  v32 = sub_24B3E3808();
  v33 = v29;
  v34 = v13;
  if (v32 == 3 || v76 != v77 >> 1)
  {
    v37 = sub_24B458FFC();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v39 = State;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v69 + 8))(v34, v33);
    goto LABEL_9;
  }

  if (v32)
  {
    if (v32 == 1)
    {
      LOBYTE(v71) = 1;
      sub_24B3ED6D4();
      v35 = v70;
      sub_24B45905C();
      v36 = v69;
      if (v35)
      {
LABEL_7:
        (*(v69 + 8))(v34, v33);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v78);
      }

      sub_24B45836C();
      sub_24B3EE64C(&qword_27EFE7E68, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v46 = v57;
      v47 = v28;
      v48 = v59;
      sub_24B4590EC();
      (*(v60 + 8))(v47, v48);
      (*(v36 + 8))(v34, v33);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v49 = v58;
      sub_24B3EDF64(v46, v58);
      v44 = v63;
    }

    else
    {
      LOBYTE(v71) = 2;
      sub_24B3ED680();
      v42 = v27;
      v43 = v70;
      sub_24B45905C();
      v44 = v63;
      v45 = v69;
      if (v43)
      {
        goto LABEL_7;
      }

      sub_24B3E2680();
      v50 = v61;
      sub_24B4590EC();
      (*(v62 + 8))(v42, v50);
      (*(v45 + 8))(v34, v33);
      swift_unknownObjectRelease();
      v51 = v73;
      v52 = v72;
      v53 = v56;
      *v56 = v71;
      v53[1] = v52;
      *(v53 + 32) = v51;
      swift_storeEnumTagMultiPayload();
      v54 = v53;
      v49 = v58;
      sub_24B3EDF64(v54, v58);
    }
  }

  else
  {
    LOBYTE(v71) = 0;
    sub_24B3ED728();
    v41 = v70;
    sub_24B45905C();
    if (v41)
    {
      (*(v69 + 8))(v13, v33);
      goto LABEL_9;
    }

    (*(v25 + 8))(v11, v26);
    (*(v69 + 8))(v13, v33);
    swift_unknownObjectRelease();
    v49 = v58;
    swift_storeEnumTagMultiPayload();
    v44 = v63;
  }

  sub_24B3EDF64(v49, v44);
  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_24B3EDF64(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardProgressLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t AwardProgressLoadState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B45836C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B3ED61C(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v10 + 1);
      v14[0] = *v10;
      v14[1] = v12;
      v15 = v10[32];
      MEMORY[0x24C2403C0](2);
      AwardProgress.hash(into:)(a1);
      return sub_24B3EE5B0(v14);
    }

    else
    {
      return MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x24C2403C0](1);
    sub_24B3EE64C(&qword_27EFE7E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24B458D9C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t AwardProgressLoadState.hashValue.getter()
{
  sub_24B45922C();
  AwardProgressLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B3EE238()
{
  sub_24B45922C();
  AwardProgressLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B3EE27C(uint64_t a1)
{
  sub_24B45922C();
  AwardProgressLoadState.hash(into:)(v2);
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards22AwardProgressLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B45836C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState(0);
  v9 = MEMORY[0x28223BE20](State);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7ED0, &qword_24B45BA80);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v25 - v16;
  v18 = v25 + *(v15 + 56) - v16;
  sub_24B3ED61C(a1, v25 - v16);
  sub_24B3ED61C(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B3ED61C(v17, v13);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v7, v18, v4);
      v22 = sub_24B45834C();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v13, v4);
      goto LABEL_12;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_24B3ED61C(v17, v11);
    v20 = *(v11 + 1);
    v25[0] = *v11;
    v25[1] = v20;
    v26 = v11[32];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *(v18 + 1);
      v27[0] = *v18;
      v27[1] = v21;
      v28 = v18[32];
      v22 = _s13FitnessAwards13AwardProgressO2eeoiySbAC_ACtFZ_0(v25, v27);
      sub_24B3EE5B0(v25);
      sub_24B3EE5B0(v27);
LABEL_12:
      sub_24B3DF2D4(v17);
      return v22 & 1;
    }

    sub_24B3EE5B0(v25);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_24B3EED44(v17);
    v22 = 0;
    return v22 & 1;
  }

  sub_24B3DF2D4(v17);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_24B3EE64C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AwardProgressLoadState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AwardProgressLoadState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B3EE868()
{
  result = qword_27EFE7E78;
  if (!qword_27EFE7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E78);
  }

  return result;
}

unint64_t sub_24B3EE8C0()
{
  result = qword_27EFE7E80;
  if (!qword_27EFE7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E80);
  }

  return result;
}

unint64_t sub_24B3EE918()
{
  result = qword_27EFE7E88;
  if (!qword_27EFE7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E88);
  }

  return result;
}

unint64_t sub_24B3EE970()
{
  result = qword_27EFE7E90;
  if (!qword_27EFE7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E90);
  }

  return result;
}

unint64_t sub_24B3EE9C8()
{
  result = qword_27EFE7E98;
  if (!qword_27EFE7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7E98);
  }

  return result;
}

unint64_t sub_24B3EEA20()
{
  result = qword_27EFE7EA0;
  if (!qword_27EFE7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7EA0);
  }

  return result;
}

unint64_t sub_24B3EEA78()
{
  result = qword_27EFE7EA8;
  if (!qword_27EFE7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7EA8);
  }

  return result;
}

unint64_t sub_24B3EEAD0()
{
  result = qword_27EFE7EB0;
  if (!qword_27EFE7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7EB0);
  }

  return result;
}

unint64_t sub_24B3EEB28()
{
  result = qword_27EFE7EB8;
  if (!qword_27EFE7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7EB8);
  }

  return result;
}

unint64_t sub_24B3EEB80()
{
  result = qword_27EFE7EC0;
  if (!qword_27EFE7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7EC0);
  }

  return result;
}

unint64_t sub_24B3EEBD8()
{
  result = qword_27EFE7EC8;
  if (!qword_27EFE7EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7EC8);
  }

  return result;
}

uint64_t sub_24B3EEC2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B3EED44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7ED0, &qword_24B45BA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 AwardProgressFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  type metadata accessor for AwardProgressFeature(0);
  sub_24B45835C();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for AwardProgressFeature(uint64_t a1)
{
  result = qword_2810E2DC8;
  if (!qword_2810E2DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B3EEEC8()
{
  v1 = *(v0 + 16);
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  sub_24B458E6C();
  return sub_24B45926C();
}

uint64_t sub_24B3EEF2C(uint64_t a1)
{
  MEMORY[0x24C2403C0](*(v1 + 16));

  return sub_24B458E6C();
}

uint64_t sub_24B3EEF80(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24B45922C();
  MEMORY[0x24C2403C0](v2);
  sub_24B458E6C();
  return sub_24B45926C();
}

uint64_t sub_24B3EEFE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B4591AC();
  }
}

uint64_t AwardProgressFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v139 = a2;
  v136 = a3;
  v126 = a1;
  v5 = sub_24B45836C();
  v127 = *(v5 - 8);
  v128 = v5;
  MEMORY[0x28223BE20](v5);
  v122 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState(0);
  v7 = MEMORY[0x28223BE20](State);
  v123 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v121 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v124 = &v121 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v121 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v125 = &v121 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v129 = &v121 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v121 - v22;
  MEMORY[0x28223BE20](v21);
  v133 = &v121 - v23;
  v24 = type metadata accessor for AwardProgressFeature(0);
  v130 = *(v24 - 8);
  v25 = *(v130 + 64);
  MEMORY[0x28223BE20](v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7ED8, &unk_24B45BAD0);
  v134 = *(v26 - 8);
  v135 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v30 = &v121 - v29;
  v31 = *a4;
  v32 = *(a4 + 8);
  v33 = *(a4 + 16);
  v34 = *(a4 + 24);
  v35 = *(a4 + 32);
  if (v35 >> 6)
  {
    if (v35 >> 6 == 1)
    {
      v36 = v139;
      v37 = *(v139 + 2);
      v136 = *(v139 + 1);
      v38 = v31;
      sub_24B3F1F54(v31, v32, v33, v34, v35 & 1);
      if (qword_2810E3610 != -1)
      {
        swift_once();
      }

      v39 = sub_24B45847C();
      v40 = __swift_project_value_buffer(v39, qword_2810E3618);
      sub_24B3F1F64(v38, v32, v33, v34, v35);

      v138 = v40;
      v41 = sub_24B45845C();
      v42 = sub_24B458F4C();

      sub_24B3F1F88(v38, v32, v33, v34, v35);
      v43 = os_log_type_enabled(v41, v42);
      v132 = v38;
      if (v43)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v140 = v45;
        *v44 = 136315394;
        *(v44 + 4) = sub_24B3F17BC(v136, v37, &v140);
        *(v44 + 12) = 2080;
        v141 = v38;
        v142 = v32;
        v143 = v33;
        v144 = v34;
        v145 = v35 & 1;
        sub_24B3F1F54(v38, v32, v33, v34, v35 & 1);
        v46 = sub_24B458E4C();
        v48 = sub_24B3F17BC(v46, v47, &v140);

        *(v44 + 14) = v48;
        _os_log_impl(&dword_24B3CE000, v41, v42, "[AwardProgressFeature] (%s) Progress fetched: %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C2408A0](v45, -1, -1);
        v49 = v44;
        v36 = v139;
        MEMORY[0x24C2408A0](v49, -1, -1);
      }

      v50 = &v36[*(type metadata accessor for AwardProgressState(0) + 24)];
      v51 = v133;
      sub_24B3F1FAC(v50, v133, type metadata accessor for AwardProgressLoadState);
      v52 = v131;
      sub_24B3F1FAC(v51, v131, type metadata accessor for AwardProgressLoadState);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_24B3DF2D4(v51);
        (*(v127 + 8))(v52, v128);
        sub_24B3DF2D4(v50);
        *v50 = v132;
        *(v50 + 8) = v32;
        *(v50 + 16) = v33;
        *(v50 + 24) = v34;
        *(v50 + 32) = v35 & 1;
        return swift_storeEnumTagMultiPayload();
      }

      sub_24B3F1F88(v132, v32, v33, v34, v35);
      sub_24B3DF2D4(v52);
      v53 = v129;
      sub_24B3F1FAC(v51, v129, type metadata accessor for AwardProgressLoadState);
      v54 = sub_24B45845C();
      v55 = sub_24B458F4C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v141 = v57;
        *v56 = 136315138;
        sub_24B3F1FAC(v53, v125, type metadata accessor for AwardProgressLoadState);
        v58 = sub_24B458E4C();
        v60 = v59;
        sub_24B3DF2D4(v53);
        v61 = sub_24B3F17BC(v58, v60, &v141);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_24B3CE000, v54, v55, "[AwardProgressFeature] Current state is %s, skipping .fetched update", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x24C2408A0](v57, -1, -1);
        MEMORY[0x24C2408A0](v56, -1, -1);
      }

      else
      {

        sub_24B3DF2D4(v53);
      }

      v62 = v51;
      return sub_24B3DF2D4(v62);
    }

    v81 = v139;
    if (!(v33 | v32 | v31 | v34) && v35 == 128)
    {
      v141 = 2;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0x80;
      return AwardProgressFeature.reduce(localState:sharedState:sideEffects:action:)(v126, v139, v136, &v141);
    }

    if (v35 == 128 && v31 == 1 && !(v33 | v32 | v34))
    {
      v82 = *(type metadata accessor for AwardProgressState(0) + 24);
      sub_24B3F1FAC(&v81[v82], v16, type metadata accessor for AwardProgressLoadState);
      if (swift_getEnumCaseMultiPayload())
      {
        v62 = v16;
        return sub_24B3DF2D4(v62);
      }

      v117 = v127;
      v116 = v128;
      v118 = v122;
      (*(v127 + 32))(v122, v16, v128);
      v119 = sub_24B45834C();
      result = (*(v117 + 8))(v118, v116);
      if (v119)
      {
        sub_24B3DF2D4(&v81[v82]);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v83 = v28;
      v85 = *(v139 + 1);
      v84 = *(v139 + 2);
      v86 = *(type metadata accessor for AwardProgressState(0) + 24);
      v87 = v124;
      sub_24B3F1FAC(&v81[v86], v124, type metadata accessor for AwardProgressLoadState);
      sub_24B3F1FAC(v87, v11, type metadata accessor for AwardProgressLoadState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      sub_24B3DF2D4(v11);
      if (EnumCaseMultiPayload != 2)
      {
        if (qword_2810E3610 != -1)
        {
          swift_once();
        }

        v105 = sub_24B45847C();
        __swift_project_value_buffer(v105, qword_2810E3618);
        v106 = v123;
        sub_24B3F1FAC(v87, v123, type metadata accessor for AwardProgressLoadState);

        v107 = sub_24B45845C();
        v108 = sub_24B458F4C();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v141 = v110;
          *v109 = 136315394;
          v111 = sub_24B3F17BC(v85, v84, &v141);

          *(v109 + 4) = v111;
          *(v109 + 12) = 2080;
          sub_24B3F1FAC(v106, v125, type metadata accessor for AwardProgressLoadState);
          v112 = sub_24B458E4C();
          v114 = v113;
          sub_24B3DF2D4(v106);
          v115 = sub_24B3F17BC(v112, v114, &v141);

          *(v109 + 14) = v115;
          _os_log_impl(&dword_24B3CE000, v107, v108, "[AwardProgressFeature] View appeared for %s but load state was %s, returning.", v109, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C2408A0](v110, -1, -1);
          MEMORY[0x24C2408A0](v109, -1, -1);
        }

        else
        {

          sub_24B3DF2D4(v106);
        }

        v62 = v87;
        return sub_24B3DF2D4(v62);
      }

      sub_24B3DF2D4(&v81[v86]);
      (*(v127 + 16))(&v81[v86], v138 + *(v24 + 20), v128);
      swift_storeEnumTagMultiPayload();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v90 = v89[16];
      v91 = v89[20];
      v92 = (v83 + v89[24]);
      v141 = v85;
      v142 = v84;
      LOBYTE(v143) = 1;
      sub_24B3F1D64();

      sub_24B458F9C();
      sub_24B458EFC();
      v93 = swift_allocObject();
      *(v93 + 16) = v85;
      *(v93 + 24) = v84;
      *v92 = &unk_24B45BAE8;
      v92[1] = v93;
      v94 = *MEMORY[0x277D043F8];
      v95 = sub_24B458D4C();
      (*(*(v95 - 8) + 104))(v83 + v90, v94, v95);
      v96 = *MEMORY[0x277D043E8];
      v97 = sub_24B458D3C();
      (*(*(v97 - 8) + 104))(v83 + v91, v96, v97);
      v99 = v134;
      v98 = v135;
      (*(v134 + 104))(v83, *MEMORY[0x277D043B0], v135);
      v100 = v136;
      v101 = *v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_24B3F1550(0, v101[2] + 1, 1, v101, &qword_27EFE7F80, &qword_24B45BD00, &qword_27EFE7ED8, &unk_24B45BAD0);
      }

      v103 = v101[2];
      v102 = v101[3];
      v104 = v124;
      if (v103 >= v102 >> 1)
      {
        v120 = v124;
        v101 = sub_24B3F1550((v102 > 1), v103 + 1, 1, v101, &qword_27EFE7F80, &qword_24B45BD00, &qword_27EFE7ED8, &unk_24B45BAD0);
        v104 = v120;
      }

      sub_24B3DF2D4(v104);
      v101[2] = v103 + 1;
      result = (*(v99 + 32))(v101 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v103, v83, v98);
      *v100 = v101;
    }
  }

  else
  {
    v63 = v31;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
    v65 = v64[16];
    State = v64[20];
    v139 = &v30[v64[24]];
    v132 = v63;
    v141 = v63;
    v142 = v32;
    LOBYTE(v143) = 0;
    sub_24B3F1F64(v63, v32, v33, v34, v35);
    sub_24B3F1D64();

    sub_24B458F9C();
    sub_24B458EFC();
    v66 = *MEMORY[0x277D04400];
    v67 = sub_24B458D4C();
    (*(*(v67 - 8) + 104))(&v30[v65], v66, v67);
    v68 = *MEMORY[0x277D043E0];
    v69 = sub_24B458D3C();
    (*(*(v69 - 8) + 104))(&v30[State], v68, v69);
    sub_24B3F1FAC(v138, &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AwardProgressFeature);
    v70 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v71 = swift_allocObject();
    sub_24B3F2014(&v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v71 + v70);
    v72 = (v71 + ((v25 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v72 = v132;
    v72[1] = v32;
    v73 = v139;
    *v139 = &unk_24B45BAF8;
    *(v73 + 1) = v71;
    v75 = v134;
    v74 = v135;
    (*(v134 + 104))(v30, *MEMORY[0x277D043B0], v135);
    v76 = v136;
    v77 = *v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_24B3F1550(0, v77[2] + 1, 1, v77, &qword_27EFE7F80, &qword_24B45BD00, &qword_27EFE7ED8, &unk_24B45BAD0);
    }

    v79 = v77[2];
    v78 = v77[3];
    if (v79 >= v78 >> 1)
    {
      v77 = sub_24B3F1550((v78 > 1), v79 + 1, 1, v77, &qword_27EFE7F80, &qword_24B45BD00, &qword_27EFE7ED8, &unk_24B45BAD0);
    }

    v77[2] = v79 + 1;
    result = (*(v75 + 32))(v77 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v79, v30, v74);
    *v76 = v77;
  }

  return result;
}

uint64_t sub_24B3F001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  sub_24B458EEC();
  v4[40] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[41] = v6;
  v4[42] = v5;

  return MEMORY[0x2822009F8](sub_24B3F00B8, v6, v5);
}

uint64_t sub_24B3F00B8()
{
  v5 = (**(v0 + 296) + ***(v0 + 296));
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_24B3F01B0;
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  return v5(v0 + 16, v2, v3);
}

uint64_t sub_24B3F01B0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_24B3F073C;
  }

  else
  {
    v6 = *(v2 + 32);
    *(v2 + 360) = *(v2 + 16);
    *(v2 + 376) = v6;
    *(v2 + 49) = *(v2 + 48);
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_24B3F02E0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B3F02E0()
{
  v18 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);
  sub_24B3F24BC(v0 + 16, v0 + 96);

  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();
  sub_24B3EE5B0(v0 + 16);

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    v8 = *(v0 + 32);
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v8;
    *(v0 + 208) = *(v0 + 48);
    sub_24B3F24BC(v0 + 16, v0 + 216);
    v9 = sub_24B458E4C();
    v11 = sub_24B3F17BC(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24B3F17BC(v5, v4, &v17);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardProgressFeature] Sending .progressFetched(%s action for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v12 = *(v0 + 49);
  v13 = *(v0 + 376);
  *(v0 + 136) = *(v0 + 360);
  *(v0 + 152) = v13;
  *(v0 + 168) = v12 | 0x40;
  v14 = swift_task_alloc();
  *(v0 + 392) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F78, &qword_24B45BCF8);
  *v14 = v0;
  v14[1] = sub_24B3F055C;

  return MEMORY[0x282159B08](v0 + 136, v15);
}

uint64_t sub_24B3F055C()
{
  v1 = *v0;

  sub_24B3F1F88(*(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168));
  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_24B3F06D8, v3, v2);
}

uint64_t sub_24B3F06D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B3F073C()
{
  v16 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  MEMORY[0x24C2406E0](v1);
  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  MEMORY[0x24C2406D0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v15);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_24B4591DC();
    v11 = sub_24B3F17BC(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardProgressFeature] Failed to fetch progress for %s, error %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  *(v0 + 56) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0;
  *(v0 + 88) = 0x80;
  v12 = swift_task_alloc();
  *(v0 + 400) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F78, &qword_24B45BCF8);
  *v12 = v0;
  v12[1] = sub_24B3F09A0;

  return MEMORY[0x282159B08](v0 + 56, v13);
}

uint64_t sub_24B3F09A0()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_24B3F0AC0, v3, v2);
}

uint64_t sub_24B3F0AC0()
{
  v1 = *(v0 + 352);

  MEMORY[0x24C2406D0](v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B3F0B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_24B458EEC();
  v3[10] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_24B3F0BCC, v5, v4);
}

uint64_t sub_24B3F0BCC()
{
  v13 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);

  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B3F17BC(v5, v4, &v12);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardProgressFeature] Sending .fetchAwardProgress(%s) action on view appeared", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v8 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v8;
  *(v0 + 48) = 0;

  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F78, &qword_24B45BCF8);
  *v9 = v0;
  v9[1] = sub_24B3F0DCC;

  return MEMORY[0x282159B08](v0 + 16, v10);
}

uint64_t sub_24B3F0DCC()
{
  v1 = *v0;

  sub_24B3F1F88(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B3F0F48, v3, v2);
}

uint64_t sub_24B3F0F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AwardProgressFeature.dispose(localState:sharedState:)(uint64_t a1)
{
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B45836C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for AwardProgressState(0) + 24);
  sub_24B3F1FAC(a1 + v9, v4, type metadata accessor for AwardProgressLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_24B3DF2D4(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  type metadata accessor for AwardProgressFeature(0);
  v11 = sub_24B45834C();
  result = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    sub_24B3DF2D4(a1 + v9);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24B3F1168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B45836C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for AwardProgressState(0) + 24);
  sub_24B3F1FAC(a2 + v11, v6, type metadata accessor for AwardProgressLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_24B3DF2D4(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = sub_24B45834C();
  result = (*(v8 + 8))(v10, v7);
  if (v13)
  {
    sub_24B3DF2D4(a2 + v11);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

char *sub_24B3F13B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE78F0, &qword_24B45BC80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B3F1550(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_24B3F1738(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE78F0, &qword_24B45BC80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_24B3F17BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B3F1888(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24B3F2518(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24B3F1888(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24B3F1994(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24B45900C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24B3F1994(uint64_t a1, unint64_t a2)
{
  v3 = sub_24B3F19E0(a1, a2);
  sub_24B3F1B10(&unk_285E6C4B0);
  return v3;
}

void *sub_24B3F19E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24B3F1BFC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24B45900C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24B458E7C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B3F1BFC(v10, 0);
        result = sub_24B458FDC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24B3F1B10(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24B3F1C70(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24B3F1BFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F88, &qword_24B45BD08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B3F1C70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F88, &qword_24B45BD08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_24B3F1D64()
{
  result = qword_27EFE7EE8;
  if (!qword_27EFE7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7EE8);
  }

  return result;
}

uint64_t sub_24B3F1DB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F1E60;

  return sub_24B3F0B30(a1, v5, v4);
}

uint64_t sub_24B3F1E60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B3F1F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24B3F1F64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >> 6 == 1)
  {
    return sub_24B3F1F54(result, a2, a3, a4, a5 & 1);
  }

  if (!(a5 >> 6))
  {
  }

  return result;
}

uint64_t sub_24B3F1F88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >> 6 == 1)
  {
    return sub_24B3DF468(result, a2, a3, a4, a5 & 1);
  }

  if (!(a5 >> 6))
  {
  }

  return result;
}

uint64_t sub_24B3F1FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B3F2014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardProgressFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3F2078(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardProgressFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B3F2574;

  return sub_24B3F001C(a1, v1 + v5, v7, v8);
}

unint64_t sub_24B3F2194()
{
  result = qword_2810E2F28;
  if (!qword_2810E2F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F28);
  }

  return result;
}

unint64_t sub_24B3F21EC()
{
  result = qword_2810E2F30;
  if (!qword_2810E2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F30);
  }

  return result;
}

unint64_t sub_24B3F2244()
{
  result = qword_2810E27D0;
  if (!qword_2810E27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E27D0);
  }

  return result;
}

unint64_t sub_24B3F229C()
{
  result = qword_2810E30F8[0];
  if (!qword_2810E30F8[0])
  {
    type metadata accessor for AwardProgressState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E30F8);
  }

  return result;
}

uint64_t sub_24B3F231C(uint64_t a1)
{
  result = sub_24B45836C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_24B3F23B8(uint64_t a1, unsigned int a2)
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

uint64_t sub_24B3F2400(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B3F2464()
{
  result = qword_27EFE7EF0;
  if (!qword_27EFE7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7EF0);
  }

  return result;
}

uint64_t sub_24B3F2518(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24B3F258C(uint64_t a1)
{
  v2 = sub_24B3F2C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3F25C8(uint64_t a1)
{
  v2 = sub_24B3F2C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3F2604()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 0x646C6F62696D6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684828002;
  }
}

uint64_t sub_24B3F2658@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B3F3678(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B3F2680(uint64_t a1)
{
  v2 = sub_24B3F2B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3F26BC(uint64_t a1)
{
  v2 = sub_24B3F2B54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3F26F8(uint64_t a1)
{
  v2 = sub_24B3F2BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3F2734(uint64_t a1)
{
  v2 = sub_24B3F2BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3F2770(uint64_t a1)
{
  v2 = sub_24B3F2BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3F27AC(uint64_t a1)
{
  v2 = sub_24B3F2BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FontWeight.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F90, &qword_24B45BD10);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F98, &qword_24B45BD18);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7FA0, &qword_24B45BD20);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7FA8, &qword_24B45BD28);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3F2B54();
  sub_24B45928C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_24B3F2BFC();
      v9 = v21;
      sub_24B45910C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_24B3F2BA8();
      v9 = v24;
      sub_24B45910C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_24B3F2C50();
    sub_24B45910C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_24B3F2B54()
{
  result = qword_27EFE7FB0;
  if (!qword_27EFE7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7FB0);
  }

  return result;
}

unint64_t sub_24B3F2BA8()
{
  result = qword_27EFE7FB8;
  if (!qword_27EFE7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7FB8);
  }

  return result;
}

unint64_t sub_24B3F2BFC()
{
  result = qword_27EFE7FC0;
  if (!qword_27EFE7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7FC0);
  }

  return result;
}

unint64_t sub_24B3F2C50()
{
  result = qword_27EFE7FC8;
  if (!qword_27EFE7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7FC8);
  }

  return result;
}

uint64_t FontWeight.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7FD0, &qword_24B45BD30);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7FD8, &qword_24B45BD38);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7FE0, &qword_24B45BD40);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7FE8, &unk_24B45BD48);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B3F2B54();
  v15 = v36;
  sub_24B45927C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_24B4590FC();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_24B3E3808();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_24B458FFC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
      *v24 = &type metadata for FontWeight;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_24B3F2BFC();
          sub_24B45905C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_24B3F2BA8();
          v26 = v17;
          sub_24B45905C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_24B3F2C50();
        sub_24B45905C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t FontWeight.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

unint64_t sub_24B3F32BC()
{
  result = qword_27EFE7FF0;
  if (!qword_27EFE7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7FF0);
  }

  return result;
}

unint64_t sub_24B3F3364()
{
  result = qword_27EFE7FF8;
  if (!qword_27EFE7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE7FF8);
  }

  return result;
}

unint64_t sub_24B3F33BC()
{
  result = qword_27EFE8000;
  if (!qword_27EFE8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8000);
  }

  return result;
}

unint64_t sub_24B3F3414()
{
  result = qword_27EFE8008;
  if (!qword_27EFE8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8008);
  }

  return result;
}

unint64_t sub_24B3F346C()
{
  result = qword_27EFE8010;
  if (!qword_27EFE8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8010);
  }

  return result;
}

unint64_t sub_24B3F34C4()
{
  result = qword_27EFE8018;
  if (!qword_27EFE8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8018);
  }

  return result;
}

unint64_t sub_24B3F351C()
{
  result = qword_27EFE8020;
  if (!qword_27EFE8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8020);
  }

  return result;
}

unint64_t sub_24B3F3574()
{
  result = qword_27EFE8028;
  if (!qword_27EFE8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8028);
  }

  return result;
}

unint64_t sub_24B3F35CC()
{
  result = qword_27EFE8030;
  if (!qword_27EFE8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8030);
  }

  return result;
}

unint64_t sub_24B3F3624()
{
  result = qword_27EFE8038;
  if (!qword_27EFE8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8038);
  }

  return result;
}

uint64_t sub_24B3F3678(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684828002 && a2 == 0xE400000000000000;
  if (v3 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C6F62696D6573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B3F3798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8060, qword_24B45C210);
  sub_24B3DF11C(&qword_2810E27C0, &qword_27EFE8060, qword_24B45C210, MEMORY[0x277D04410]);

  return sub_24B45851C();
}

uint64_t AwardLockupView.init(store:awardImageViewBuilder:awardProgressViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a9 = sub_24B3DB5A8;
  *(a9 + 8) = v17;
  *(a9 + 16) = 0;
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  type metadata accessor for AwardLockupView(0, v22);

  v19 = a3(v18);
  a5(v19);
}

uint64_t AwardLockupView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = sub_24B4585EC();
  v63 = *(v65 - 8);
  v3 = MEMORY[0x28223BE20](v65);
  v62 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 - 8);
  *&v60 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(a1 + 16);
  v56 = a1;
  sub_24B4585BC();
  v85 = sub_24B4585BC();
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AD8, &qword_24B45A210);
  v55 = v6;
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  v88 = sub_24B4585BC();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B45872C();
  sub_24B458B7C();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v7 = sub_24B4585BC();
  v8 = sub_24B4585AC();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v83 = WitnessTable;
  v84 = v10;
  v82 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v81 = MEMORY[0x277CDF918];
  v78 = swift_getWitnessTable();
  v79 = MEMORY[0x277CDFC60];
  v11 = swift_getWitnessTable();
  v12 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190, MEMORY[0x277CE0728]);
  v76 = v11;
  v77 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_24B3F4404(&qword_2810E28D0, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
  v85 = v7;
  v86 = v8;
  v87 = v13;
  v88 = v14;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  sub_24B4585BC();
  sub_24B4585BC();
  v15 = sub_24B4585BC();
  v85 = v7;
  v86 = v8;
  v87 = v13;
  v88 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198, MEMORY[0x277CDF4F0]);
  v74 = OpaqueTypeConformance2;
  v75 = v17;
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x277CE0790];
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x277CDFC60];
  v53 = v15;
  v52 = swift_getWitnessTable();
  v18 = sub_24B458BDC();
  v54 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v49 = &v44 - v19;
  v20 = swift_getWitnessTable();
  v48 = v20;
  v47 = sub_24B3F4404(&qword_2810E2870, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v85 = v18;
  v86 = v65;
  v87 = v20;
  v88 = v47;
  v50 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  v22 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v45 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v46 = &v44 - v24;
  v25 = v58;
  v26 = v57;
  v27 = v61;
  v28 = v56;
  (*(v58 + 16))(v57, v61, v56);
  v29 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v31 = v59;
  *&v32 = v59;
  v33 = v55;
  *(&v32 + 1) = v55;
  v60 = *(v28 + 32);
  v34 = v60;
  *(v30 + 16) = v32;
  *(v30 + 32) = v34;
  (*(v25 + 32))(v30 + v29, v26, v28);
  v66 = v31;
  v67 = v33;
  v68 = v60;
  v69 = v27;
  v35 = v49;
  sub_24B458BCC();
  v36 = v62;
  sub_24B4585DC();
  v37 = v45;
  v38 = v65;
  v39 = v48;
  v40 = v47;
  sub_24B45899C();
  (*(v63 + 8))(v36, v38);
  (*(v54 + 8))(v35, v18);
  v85 = v18;
  v86 = v38;
  v87 = v39;
  v88 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v46;
  sub_24B3ECD00();
  v42 = *(v51 + 8);
  v42(v37, OpaqueTypeMetadata2);
  sub_24B3ECD00();
  return (v42)(v41, OpaqueTypeMetadata2);
}

uint64_t sub_24B3F4404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B3F4454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v33 = a4;
  v32 = a2;
  v35 = a1;
  v36 = a6;
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AD8, &qword_24B45A210);
  v31 = a3;
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B45872C();
  sub_24B458B7C();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v7 = sub_24B4585BC();
  v27 = sub_24B4585AC();
  WitnessTable = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CDF918];
  v8 = MEMORY[0x277CDFAD8];
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDFC60];
  v30 = v8;
  v43 = swift_getWitnessTable();
  v44 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190, MEMORY[0x277CE0728]);
  v28 = v7;
  v26 = swift_getWitnessTable();
  v25 = sub_24B3F4404(&qword_2810E28D0, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
  v52 = v7;
  v53 = v27;
  v54 = v26;
  v55 = v25;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  sub_24B4585BC();
  v9 = sub_24B4585BC();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = sub_24B4585BC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v52 = v32;
  v53 = v31;
  v54 = v33;
  v55 = v34;
  v19 = type metadata accessor for AwardLockupView(0, &v52);
  sub_24B3F4C90(v19, v11);
  sub_24B458CAC();
  v52 = v28;
  v53 = v27;
  v54 = v26;
  v55 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198, MEMORY[0x277CDF4F0]);
  v41 = OpaqueTypeConformance2;
  v42 = v21;
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CE0790];
  v24 = swift_getWitnessTable();
  sub_24B458A5C();
  (*(v29 + 8))(v11, v9);
  v37 = v24;
  v38 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_24B3ECD00();
  v22 = *(v13 + 8);
  v22(v16, v12);
  sub_24B3ECD00();
  return (v22)(v18, v12);
}

uint64_t sub_24B3F4C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v113 = a1;
  v110 = *(a1 - 8);
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](a1);
  v109 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_24B4585AC();
  v108 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v107 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24B458C8C();
  v106 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_24B45843C();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for AwardLockupLayout(0) - 8;
  MEMORY[0x28223BE20](v114);
  v91 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(a1 + 16);
  sub_24B4585BC();
  v134 = sub_24B4585BC();
  v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  v8 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AD8, &qword_24B45A210);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  v137 = sub_24B4585BC();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  v9 = v8;
  v77 = v8;
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  sub_24B45872C();
  v10 = sub_24B458B7C();
  v95 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v82 = &v68 - v11;
  v70 = v10;
  v12 = sub_24B4585BC();
  v97 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v86 = &v68 - v13;
  v73 = v12;
  v14 = sub_24B4585BC();
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v93 = &v68 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v81 = v14;
  v16 = sub_24B4585BC();
  v98 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v92 = &v68 - v17;
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v132 = WitnessTable;
  v133 = v19;
  v131 = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v129 = v69;
  v130 = MEMORY[0x277CDF918];
  v20 = MEMORY[0x277CDFAD8];
  v72 = swift_getWitnessTable();
  v127 = v72;
  v128 = MEMORY[0x277CDFC60];
  v99 = v20;
  v21 = swift_getWitnessTable();
  v76 = v21;
  v22 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190, MEMORY[0x277CE0728]);
  v125 = v21;
  v126 = v22;
  v80 = v16;
  v23 = swift_getWitnessTable();
  v79 = v23;
  v78 = sub_24B3F4404(&qword_2810E28D0, MEMORY[0x277CDD9F8], MEMORY[0x277CDD9F0]);
  v134 = v16;
  v135 = v116;
  v136 = v23;
  v137 = v78;
  v84 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v71 = &v68 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  v88 = sub_24B4585BC();
  v94 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v75 = &v68 - v25;
  v90 = sub_24B4585BC();
  v96 = *(v90 - 8);
  v26 = MEMORY[0x28223BE20](v90);
  v85 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v89 = &v68 - v28;
  *&v29 = v117;
  *(&v29 + 1) = v9;
  v120 = v115;
  v74 = *(v113 + 32);
  v118 = v29;
  v119 = v74;
  v30 = v82;
  sub_24B458B6C();
  sub_24B3F3798();
  swift_getKeyPath();
  v31 = v91;
  sub_24B458D5C();

  v32 = v101;
  v33 = v102;
  v34 = v103;
  (*(v101 + 16))(v102, v31 + *(v114 + 32), v103);
  sub_24B3F6618(v31);
  sub_24B4583EC();
  (*(v32 + 8))(v33, v34);
  v35 = v86;
  v36 = v70;
  sub_24B458A8C();
  (*(v95 + 8))(v30, v36);
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  v37 = v31;
  sub_24B3F6618(v31);
  sub_24B458CCC();
  v38 = v73;
  v39 = v93;
  sub_24B458A5C();
  (*(v97 + 8))(v35, v38);
  v40 = v104;
  sub_24B458C7C();
  sub_24B4587CC();
  v41 = v92;
  v42 = v81;
  v43 = v105;
  sub_24B45897C();
  (*(v106 + 8))(v40, v43);
  (*(v100 + 8))(v39, v42);
  v44 = v107;
  sub_24B45862C();
  v45 = v71;
  v46 = v80;
  v47 = v116;
  v48 = v79;
  v49 = v78;
  sub_24B4589BC();
  (*(v108 + 8))(v44, v47);
  (*(v98 + 8))(v41, v46);
  v50 = v115;
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3F6618(v37);
  v134 = v46;
  v135 = v47;
  v136 = v48;
  v137 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v75;
  v53 = OpaqueTypeMetadata2;
  sub_24B4589CC();
  (*(v87 + 8))(v45, v53);
  v54 = v110;
  v55 = v109;
  v56 = v113;
  (*(v110 + 16))(v109, v50, v113);
  v57 = (*(v54 + 80) + 48) & ~*(v54 + 80);
  v58 = swift_allocObject();
  v59 = v77;
  *(v58 + 16) = v117;
  *(v58 + 24) = v59;
  *(v58 + 32) = v74;
  (*(v54 + 32))(v58 + v57, v55, v56);
  v60 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198, MEMORY[0x277CDF4F0]);
  v123 = OpaqueTypeConformance2;
  v124 = v60;
  v61 = v88;
  v62 = swift_getWitnessTable();
  v63 = v85;
  sub_24B458AAC();

  (*(v94 + 8))(v52, v61);
  v121 = v62;
  v122 = MEMORY[0x277CE0790];
  v64 = v90;
  swift_getWitnessTable();
  v65 = v89;
  sub_24B3ECD00();
  v66 = *(v96 + 8);
  v66(v63, v64);
  sub_24B3ECD00();
  return (v66)(v65, v64);
}

void sub_24B3F5DF4(uint64_t a1)
{
  sub_24B3F5E98(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B3F5E98(uint64_t a1)
{
  if (!qword_2810E28E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8060, qword_24B45C210);
    sub_24B3DF11C(&qword_2810E27C0, &qword_27EFE8060, qword_24B45C210, MEMORY[0x277D04410]);
    v1 = sub_24B45852C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810E28E8);
    }
  }
}

uint64_t sub_24B3F5F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v51 = a4;
  v52 = a1;
  v53 = a6;
  sub_24B4585BC();
  v8 = sub_24B4585BC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  v11 = sub_24B458BFC();
  v47 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v42 - v14;
  v56 = v8;
  v57 = v9;
  v58 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AD8, &qword_24B45A210);
  sub_24B4585BC();
  sub_24B4585BC();
  v59 = sub_24B4585BC();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v15 = sub_24B458C1C();
  v44 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v43 = &v42 - v19;
  v20 = type metadata accessor for AwardLockupLayout(0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24B45872C();
  v48 = *(v24 - 8);
  v49 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - v25;
  v56 = a2;
  v57 = a3;
  v58 = v51;
  v59 = v50;
  v27 = type metadata accessor for AwardLockupView(0, &v56);
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  v28 = v23[*(v21 + 40)];
  sub_24B3F6618(v23);
  if (v28 == 1)
  {
    sub_24B3F6674(v27, v18);
    WitnessTable = swift_getWitnessTable();
    v30 = v43;
    sub_24B3ECD00();
    v31 = *(v44 + 8);
    v31(v18, v15);
    sub_24B3ECD00();
    v32 = swift_getWitnessTable();
    sub_24B437B98(v18, v15, v11, WitnessTable, v32);
    v31(v18, v15);
    v31(v30, v15);
  }

  else
  {
    v33 = v46;
    sub_24B3F6928(v27, v46);
    v34 = swift_getWitnessTable();
    v35 = v45;
    sub_24B3ECD00();
    v36 = *(v47 + 8);
    v36(v33, v11);
    sub_24B3ECD00();
    v37 = swift_getWitnessTable();
    sub_24B437C90(v33, v15, v11, v37, v34);
    v36(v33, v11);
    v36(v35, v11);
  }

  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v54 = v38;
  v55 = v39;
  v40 = v49;
  swift_getWitnessTable();
  sub_24B3ECD00();
  return (*(v48 + 8))(v26, v40);
}

uint64_t sub_24B3F6618(uint64_t a1)
{
  v2 = type metadata accessor for AwardLockupLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B3F6674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = *(a1 + 16);
  sub_24B4585BC();
  v18 = sub_24B4585BC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AD8, &qword_24B45A210);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  v21 = sub_24B4585BC();
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v6 = sub_24B458C1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  sub_24B4586FC();
  v15[4] = v4;
  v15[5] = v5;
  v16 = *(a1 + 32);
  v17 = v2;
  sub_24B458C0C();
  swift_getWitnessTable();
  sub_24B3ECD00();
  v13 = *(v7 + 8);
  v13(v10, v6);
  sub_24B3ECD00();
  return (v13)(v12, v6);
}

uint64_t sub_24B3F6928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = *(a1 + 16);
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  v6 = sub_24B458BFC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  sub_24B4586BC();
  v15[4] = v4;
  v15[5] = v5;
  v16 = *(a1 + 32);
  v17 = v2;
  sub_24B458BEC();
  swift_getWitnessTable();
  sub_24B3ECD00();
  v13 = *(v7 + 8);
  v13(v10, v6);
  sub_24B3ECD00();
  return (v13)(v12, v6);
}

uint64_t sub_24B3F6BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for AwardLockupView(0, v8);
  sub_24B3F3798();
  LOBYTE(v8[0]) = a6;
  sub_24B458D6C();
}

uint64_t objectdestroy_2Tm_0()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for AwardLockupView(0, &v7) - 8);
  v4 = (v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80)));
  sub_24B3DE5B8(*v4, v4[1]);
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1);
  (*(*(v6 - 8) + 8))(v4 + v3[16]);
  return swift_deallocObject();
}

uint64_t sub_24B3F6DA0(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for AwardLockupView(0, v9) - 8);
  return sub_24B3F6BFC(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_24B3F6E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v61 = a4;
  v64 = a1;
  v74 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  v59 = a3;
  sub_24B4585BC();
  swift_getTupleTypeMetadata2();
  v70 = sub_24B458CDC();
  WitnessTable = swift_getWitnessTable();
  v67 = sub_24B458C1C();
  v73 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v53 - v9;
  v10 = sub_24B4585BC();
  v11 = *(v10 - 8);
  v71 = v10;
  v72 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v53 - v14;
  v62 = sub_24B45843C();
  v58 = *(v62 - 1);
  MEMORY[0x28223BE20](v62);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AwardLockupLayout(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B4585BC();
  v63 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v54 = &v53 - v21;
  v22 = sub_24B4585BC();
  v23 = *(v22 - 8);
  v76 = v22;
  v77 = v23;
  v24 = MEMORY[0x28223BE20](v22);
  v75 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v78 = &v53 - v26;
  v88 = a2;
  v89 = a3;
  v57 = a2;
  v27 = v61;
  v90 = v61;
  v91 = a5;
  v55 = type metadata accessor for AwardLockupView(0, &v88);
  sub_24B458CBC();
  v28 = v64;
  v29 = v27;
  sub_24B458A4C();
  v30 = v28;
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  v31 = *(v17 + 28);
  v32 = v58;
  v33 = v56;
  v34 = v62;
  (*(v58 + 16))(v56, &v19[v31], v62);
  sub_24B3F6618(v19);
  sub_24B4583EC();
  (*(v32 + 8))(v33, v34);
  v97[7] = v29;
  v97[8] = MEMORY[0x277CDF678];
  v35 = swift_getWitnessTable();
  v36 = v75;
  v37 = v54;
  sub_24B458A8C();
  (*(v63 + 8))(v37, v20);
  v38 = MEMORY[0x277CDF918];
  v97[5] = v35;
  v97[6] = MEMORY[0x277CDF918];
  v39 = v76;
  v58 = swift_getWitnessTable();
  sub_24B3ECD00();
  v62 = *(v77 + 8);
  v63 = v77 + 8;
  (v62)(v36, v39);
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3F6618(v19);
  sub_24B458CBC();
  sub_24B45855C();
  v53 = v97[9];
  v54 = v99;
  v55 = v102;
  v56 = v101;
  v108 = 1;
  v106 = v98;
  v104 = v100;
  sub_24B4586FC();
  v79 = v57;
  v80 = v59;
  v81 = v29;
  v82 = v60;
  v83 = v30;
  v40 = v66;
  sub_24B458C0C();
  sub_24B4587FC();
  v41 = v67;
  v42 = swift_getWitnessTable();
  v43 = v65;
  sub_24B458A9C();
  (*(v73 + 8))(v40, v41);
  v97[3] = v42;
  v97[4] = v38;
  v44 = v71;
  v45 = swift_getWitnessTable();
  v46 = v68;
  sub_24B3ECD00();
  v47 = v72;
  v48 = *(v72 + 8);
  v48(v43, v44);
  v49 = v75;
  v50 = v76;
  (*(v77 + 16))(v75, v78, v76);
  v88 = 0;
  LOBYTE(v89) = v108;
  *(&v89 + 1) = *v107;
  HIDWORD(v89) = *&v107[3];
  v90 = v53;
  LOBYTE(v91) = v106;
  *(&v91 + 1) = *v105;
  HIDWORD(v91) = *&v105[3];
  v92 = v54;
  v93 = v104;
  *v94 = *v103;
  *&v94[3] = *&v103[3];
  v95 = v56;
  v96 = v55;
  v97[0] = v49;
  v97[1] = &v88;
  (*(v47 + 16))(v43, v46, v44);
  v97[2] = v43;
  v87[0] = v50;
  v87[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D08, &qword_24B45D850);
  v87[2] = v44;
  v84 = v58;
  v85 = sub_24B3EC908();
  v86 = v45;
  sub_24B437D88(v97, 3uLL, v87);
  v48(v46, v44);
  v51 = v62;
  (v62)(v78, v50);
  v48(v43, v44);
  return v51(v49, v50);
}

uint64_t sub_24B3F7720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v35 = a1;
  v39 = a6;
  v10 = type metadata accessor for AwardLockupLayout(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  v13 = a3;
  v34 = a3;
  v14 = sub_24B4585BC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v37 = &v32 - v19;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8040, &qword_24B45C180);
  v20 = MEMORY[0x28223BE20](v38);
  v36 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v32 - v22;
  v43 = a2;
  v44 = v13;
  v45 = a4;
  v46 = a5;
  v24 = type metadata accessor for AwardLockupView(0, &v43);
  sub_24B3F7AB0(v24, v23);
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3F6618(v12);
  v25 = v33;
  sub_24B458AFC();
  v26 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188, MEMORY[0x277CE0868]);
  v42[2] = v25;
  v42[3] = v26;
  WitnessTable = swift_getWitnessTable();
  v28 = v37;
  sub_24B3ECD00();
  v29 = *(v15 + 8);
  v29(v18, v14);
  v30 = v36;
  sub_24B3D307C(v23, v36);
  v43 = v30;
  (*(v15 + 16))(v18, v28, v14);
  v44 = v18;
  v42[0] = v38;
  v42[1] = v14;
  v40 = sub_24B3F8D50();
  v41 = WitnessTable;
  sub_24B437D88(&v43, 2uLL, v42);
  v29(v28, v14);
  sub_24B3D30EC(v23);
  v29(v18, v14);
  return sub_24B3D30EC(v30);
}

uint64_t sub_24B3F7AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v52 = type metadata accessor for AwardLockupLayout(0);
  MEMORY[0x28223BE20](v52);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8080, &qword_24B45C258);
  MEMORY[0x28223BE20](v57);
  v59 = v47 - v5;
  v6 = sub_24B45860C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B28, &qword_24B45A368);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  MEMORY[0x28223BE20](v11);
  v13 = v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v47 - v16;
  v50 = a1;
  v53 = v2;
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458D0C();
  (*(v15 + 8))(v17, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(v13 + 1);
      *&v66 = *v13;
      *(&v66 + 1) = v19;
      sub_24B3EC9AC();

      v20 = sub_24B45892C();
      v47[1] = v22;
      v48 = v21;
      v24 = v23;

      sub_24B3F3798();
      swift_getKeyPath();
      v25 = v51;
      sub_24B458D5C();

      v26 = v52;
      LOWORD(v19) = *(v25 + *(v52 + 48));
      sub_24B3F6618(v25);
      LOWORD(v66) = v19;
      sub_24B43C2AC();
      v27 = v48;
      v28 = sub_24B45890C();
      v55 = v29;
      v56 = v28;
      v49 = v30;
      v54 = v31;

      sub_24B3DF478(v20, v27, v24 & 1);

      sub_24B3F3798();
      swift_getKeyPath();
      sub_24B458D5C();

      v32 = *(v25 + *(v26 + 36));
      sub_24B3F6618(v25);
      KeyPath = swift_getKeyPath();
      sub_24B458CCC();
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
      sub_24B45861C();
      *&v63[55] = v69;
      *&v63[71] = v70;
      *&v63[87] = v71;
      *&v63[103] = v72;
      *&v63[7] = v66;
      *&v63[23] = v67;
      *&v63[39] = v68;
      v35 = *&v63[80];
      v36 = v59;
      *(v59 + 113) = *&v63[64];
      *(v36 + 129) = v35;
      *(v36 + 145) = *&v63[96];
      v37 = *&v63[16];
      *(v36 + 49) = *v63;
      *(v36 + 65) = v37;
      v38 = *&v63[48];
      *(v36 + 81) = *&v63[32];
      v39 = v49 & 1;
      v65 = v49 & 1;
      v64 = 0;
      v40 = v55;
      *v36 = v56;
      *(v36 + 1) = v40;
      v36[16] = v39;
      *(v36 + 3) = v54;
      *(v36 + 4) = KeyPath;
      *(v36 + 5) = v32;
      v36[48] = 0;
      *(v36 + 20) = *&v63[111];
      *(v36 + 97) = v38;
      *(v36 + 84) = 256;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8068, &qword_24B45C248);
      v61 = MEMORY[0x277CE0BD8];
      v62 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      sub_24B3F8E0C();
      sub_24B45871C();
      v41 = sub_24B45833C();
      return (*(*(v41 - 8) + 8))(&v13[v34], v41);
    }

    sub_24B3F8FDC(v13);
  }

  *&v66 = 0xD000000000000011;
  *(&v66 + 1) = 0x800000024B466E00;
  LOBYTE(v67) = 0;
  *(&v67 + 1) = MEMORY[0x277D84F90];
  sub_24B4585FC();
  v43 = MEMORY[0x277CE0BD8];
  v44 = MEMORY[0x277CE0BC8];
  sub_24B458ACC();
  (*(v54 + 8))(v8, v55);
  v45 = v56;
  v46 = v58;
  (*(v56 + 16))(v59, v10, v58);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8068, &qword_24B45C248);
  *&v66 = v43;
  *(&v66 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  sub_24B3F8E0C();
  sub_24B45871C();
  return (*(v45 + 8))(v10, v46);
}

uint64_t sub_24B3F823C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v66 = a4;
  v81 = a1;
  v79 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AD8, &qword_24B45A210);
  v63 = a3;
  v70 = sub_24B4585BC();
  v74 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  v71 = sub_24B4585BC();
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v58 - v10;
  v73 = sub_24B4585BC();
  v76 = *(v73 - 8);
  v11 = MEMORY[0x28223BE20](v73);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v72 = &v58 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8040, &qword_24B45C180);
  v14 = MEMORY[0x28223BE20](v78);
  v77 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v58 - v16;
  v64 = sub_24B45843C();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for AwardLockupLayout(0) - 8;
  MEMORY[0x28223BE20](v82);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B4585BC();
  v65 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v80 = sub_24B4585BC();
  v83 = *(v80 - 8);
  v24 = MEMORY[0x28223BE20](v80);
  v85 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v86 = &v58 - v26;
  v92 = a2;
  v93 = a3;
  v27 = v66;
  v94 = v66;
  v95 = a5;
  v28 = type metadata accessor for AwardLockupView(0, &v92);
  sub_24B458CBC();
  sub_24B458A4C();
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  v29 = v61;
  v30 = v64;
  (*(v61 + 16))(v18, &v20[*(v82 + 28)], v64);
  sub_24B3F6618(v20);
  sub_24B4583EC();
  (*(v29 + 8))(v18, v30);
  v101[12] = v27;
  v101[13] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v32 = v85;
  sub_24B458A8C();
  (*(v65 + 8))(v23, v21);
  v101[10] = WitnessTable;
  v101[11] = MEMORY[0x277CDF918];
  v33 = v80;
  v64 = swift_getWitnessTable();
  sub_24B3ECD00();
  v34 = *(v83 + 8);
  v65 = v83 + 8;
  v66 = v34;
  v34(v32, v33);
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3F6618(v20);
  sub_24B458CBC();
  sub_24B45855C();
  v58 = v101[14];
  v59 = v103;
  v60 = v106;
  v61 = v105;
  v112 = 1;
  v110 = v102;
  v108 = v104;
  sub_24B3F7AB0(v28, v84);
  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  LOWORD(v33) = *&v20[*(v82 + 52)];
  sub_24B3F6618(v20);
  LOWORD(v92) = v33;
  sub_24B43C2AC();
  v35 = v67;
  v36 = v62;
  sub_24B458A3C();

  sub_24B3F3798();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3F6618(v20);
  v37 = MEMORY[0x277CE0868];
  v38 = sub_24B3DF11C(&qword_2810E27F8, &qword_27EFE7AD8, &qword_24B45A210, MEMORY[0x277CE0868]);
  v101[8] = v36;
  v101[9] = v38;
  v39 = v70;
  v40 = swift_getWitnessTable();
  v41 = v68;
  sub_24B458AFC();
  (*(v74 + 8))(v35, v39);
  v42 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188, v37);
  v101[6] = v40;
  v101[7] = v42;
  v43 = v71;
  v44 = swift_getWitnessTable();
  v45 = v69;
  sub_24B458AEC();
  (*(v75 + 8))(v41, v43);
  v101[4] = v44;
  v101[5] = MEMORY[0x277CDFC48];
  v46 = v73;
  v82 = swift_getWitnessTable();
  v47 = v72;
  v48 = v45;
  sub_24B3ECD00();
  v49 = v76;
  v50 = *(v76 + 8);
  v50(v45, v46);
  v51 = v85;
  v52 = v80;
  (*(v83 + 16))(v85, v86, v80);
  v92 = 0;
  LOBYTE(v93) = v112;
  *(&v93 + 1) = *v111;
  HIDWORD(v93) = *&v111[3];
  v94 = v58;
  LOBYTE(v95) = v110;
  *(&v95 + 1) = *v109;
  HIDWORD(v95) = *&v109[3];
  v96 = v59;
  v97 = v108;
  *v98 = *v107;
  *&v98[3] = *&v107[3];
  v99 = v61;
  v100 = v60;
  v101[0] = v51;
  v101[1] = &v92;
  v53 = v84;
  v54 = v77;
  sub_24B3D307C(v84, v77);
  v101[2] = v54;
  (*(v49 + 16))(v48, v47, v46);
  v101[3] = v48;
  v55 = v48;
  v91[0] = v52;
  v91[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D08, &qword_24B45D850);
  v91[2] = v78;
  v91[3] = v46;
  v87 = v64;
  v88 = sub_24B3EC908();
  v89 = sub_24B3F8D50();
  v90 = v82;
  sub_24B437D88(v101, 4uLL, v91);
  v50(v47, v46);
  sub_24B3D30EC(v53);
  v56 = v66;
  v66(v86, v52);
  v50(v55, v46);
  sub_24B3D30EC(v54);
  return v56(v85, v52);
}

unint64_t sub_24B3F8D50()
{
  result = qword_2810E2848;
  if (!qword_2810E2848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8040, &qword_24B45C180);
    swift_getOpaqueTypeConformance2();
    sub_24B3F8E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2848);
  }

  return result;
}

unint64_t sub_24B3F8E0C()
{
  result = qword_2810E2878;
  if (!qword_2810E2878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8068, &qword_24B45C248);
    sub_24B3F8E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2878);
  }

  return result;
}

unint64_t sub_24B3F8E98()
{
  result = qword_2810E2888;
  if (!qword_2810E2888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8070, &qword_24B45C250);
    sub_24B3F8F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2888);
  }

  return result;
}

unint64_t sub_24B3F8F24()
{
  result = qword_2810E28C0;
  if (!qword_2810E28C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8078, &qword_24B45D9B0);
    sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28C0);
  }

  return result;
}

uint64_t sub_24B3F8FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 AwardRemoteParticipantStatusMonitorFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, unint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F70, &qword_24B45BCF0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v85 - v10;
  State = type metadata accessor for AwardToastLoadState(0);
  v13 = MEMORY[0x28223BE20](State);
  v14 = MEMORY[0x28223BE20](v13);
  v91 = &v85 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v85 - v17;
  if (*a4)
  {
    v20 = *v4;
    v19 = v4[1];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
    v22 = v21[16];
    v23 = v21[20];
    v24 = &v11[v21[24]];
    sub_24B3FA4AC();
    sub_24B458F9C();
    sub_24B458EFC();
    v25 = *MEMORY[0x277D043F0];
    v26 = sub_24B458D4C();
    (*(*(v26 - 8) + 104))(&v11[v22], v25, v26);
    v27 = *MEMORY[0x277D043E0];
    v28 = sub_24B458D3C();
    (*(*(v28 - 8) + 104))(&v11[v23], v27, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = v20;
    *(v29 + 24) = v19;
    *v24 = &unk_24B45C2B8;
    *(v24 + 1) = v29;
    (*(v9 + 104))(v11, *MEMORY[0x277D043B0], v8);
    v30 = *a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_24B3F1324(0, v30[2] + 1, 1, v30);
    }

    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_24B3F1324((v31 > 1), v32 + 1, 1, v30);
    }

    v30[2] = v32 + 1;
    result = (*(v9 + 32))(v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v11, v8);
    *a3 = v30;
  }

  else
  {
    v86 = v16;
    v34 = *a2;
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v35 = sub_24B45847C();
    __swift_project_value_buffer(v35, qword_2810E3618);

    v36 = sub_24B45845C();
    v37 = sub_24B458F4C();

    v38 = os_log_type_enabled(v36, v37);
    v90 = v18;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v92 = v40;
      *v39 = 136315138;
      type metadata accessor for AwardEarnedLoadState(0);
      v41 = sub_24B458D7C();
      v43 = sub_24B3F17BC(v41, v42, &v92);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_24B3CE000, v36, v37, "[RemoteBrowsingIdentityUpdatedMonitor] Clearing previous earned load states %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x24C2408A0](v40, -1, -1);
      MEMORY[0x24C2408A0](v39, -1, -1);
    }

    v44 = a2[1];

    v45 = sub_24B45845C();
    v46 = sub_24B458F4C();

    v47 = os_log_type_enabled(v45, v46);
    v88 = v44;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v92 = v49;
      *v48 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8090, &qword_24B45C2C0);
      v50 = sub_24B458D7C();
      v52 = sub_24B3F17BC(v50, v51, &v92);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_24B3CE000, v45, v46, "[RemoteBrowsingIdentityUpdatedMonitor] Clearing previous image load states %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x24C2408A0](v49, -1, -1);
      MEMORY[0x24C2408A0](v48, -1, -1);
    }

    v53 = a2[2];

    v54 = sub_24B45845C();
    v55 = sub_24B458F4C();

    v56 = os_log_type_enabled(v54, v55);
    v89 = v34;
    v87 = v53;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v92 = v58;
      *v57 = 136315138;
      type metadata accessor for AwardProgressLoadState(0);
      v59 = sub_24B458D7C();
      v61 = sub_24B3F17BC(v59, v60, &v92);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_24B3CE000, v54, v55, "[RemoteBrowsingIdentityUpdatedMonitor] Clearing previous progress load states %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x24C2408A0](v58, -1, -1);
      MEMORY[0x24C2408A0](v57, -1, -1);
    }

    v62 = sub_24B45845C();
    v63 = sub_24B458F4C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v92 = v65;
      *v64 = 136315138;
      v66 = sub_24B458D7C();
      v68 = sub_24B3F17BC(v66, v67, &v92);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_24B3CE000, v62, v63, "[RemoteBrowsingIdentityUpdatedMonitor] Clearing previous suggested workout load states %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x24C2408A0](v65, -1, -1);
      MEMORY[0x24C2408A0](v64, -1, -1);
    }

    v69 = v90;
    v70 = v91;
    v71 = *(type metadata accessor for AwardRemoteParticipantStatusMonitorState(0) + 32);
    sub_24B3D1D24(a2 + v71, v69);
    sub_24B3D1D24(v69, v70);
    v72 = sub_24B45845C();
    v73 = sub_24B458F4C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v92 = v75;
      *v74 = 136315138;
      sub_24B3D1D24(v70, v86);
      v76 = sub_24B458E4C();
      v78 = v77;
      sub_24B3D1D88(v70);
      v79 = sub_24B3F17BC(v76, v78, &v92);
      v69 = v90;

      *(v74 + 4) = v79;
      _os_log_impl(&dword_24B3CE000, v72, v73, "[RemoteBrowsingIdentityUpdatedMonitor] Clearing previous toast load state %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x24C2408A0](v75, -1, -1);
      MEMORY[0x24C2408A0](v74, -1, -1);
    }

    else
    {

      sub_24B3D1D88(v70);
    }

    v80 = MEMORY[0x277D84F90];
    v81 = sub_24B3FA5A8(MEMORY[0x277D84F90]);

    *a2 = v81;
    v82 = sub_24B3FA790(v80);

    a2[1] = v82;
    v83 = sub_24B3FA894(v80);

    a2[2] = v83;
    v84 = sub_24B3FAA7C(v80);
    sub_24B3D1D88(v69);

    a2[3] = v84;
    sub_24B3D1D88(a2 + v71);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24B3F99D0(uint64_t a1, int *a2)
{
  v2[12] = a1;
  v2[13] = sub_24B458EEC();
  v2[14] = sub_24B458EDC();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_24B3F9AEC;

  return v6(v2 + 7);
}

uint64_t sub_24B3F9AEC()
{
  v2 = *v1;
  v2[16] = v0;

  v4 = sub_24B458EBC();
  v2[17] = v4;
  v2[18] = v3;
  if (v0)
  {
    v5 = sub_24B3FA440;
  }

  else
  {
    v5 = sub_24B3F9C4C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B3F9C4C()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B458F1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_24B458EDC();
  v0[19] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_24B3F9E24;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 22, v5, v7);
}

uint64_t sub_24B3F9E24()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return MEMORY[0x2822009F8](sub_24B3F9F38, v4, v5);
  }

  return result;
}

uint64_t sub_24B3F9F38(uint64_t a1)
{
  v19 = v1;
  v2 = *(v1 + 176);
  if (v2 == 2)
  {

    __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    v3 = *(v1 + 8);

    return v3();
  }

  else if (v2)
  {
    v5 = sub_24B458EDC();
    *(v1 + 152) = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, *(v1 + 40));
    v6 = swift_task_alloc();
    *(v1 + 160) = v6;
    *v6 = v1;
    v6[1] = sub_24B3F9E24;
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v1 + 176, v5, v7);
  }

  else
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v8 = sub_24B45847C();
    __swift_project_value_buffer(v8, qword_2810E3618);
    v9 = sub_24B45845C();
    v10 = sub_24B458F4C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      *(v1 + 178) = 0;
      v13 = sub_24B458E4C();
      v15 = sub_24B3F17BC(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24B3CE000, v9, v10, "[RemoteBrowsingIdentityUpdatedMonitor] Received updated remote browsing identity (%s) - clearing award states.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x24C2408A0](v12, -1, -1);
      MEMORY[0x24C2408A0](v11, -1, -1);
    }

    *(v1 + 177) = 0;
    v16 = swift_task_alloc();
    *(v1 + 168) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80E8, &qword_24B45C428);
    *v16 = v1;
    v16[1] = sub_24B3FA244;

    return MEMORY[0x282159B08](v1 + 177, v17);
  }
}

uint64_t sub_24B3FA244()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_24B3FA364, v3, v2);
}

uint64_t sub_24B3FA364(uint64_t a1)
{
  v2 = sub_24B458EDC();
  v1[19] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[20] = v3;
  *v3 = v1;
  v3[1] = sub_24B3F9E24;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 22, v2, v4);
}

uint64_t sub_24B3FA440()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24B3FA4AC()
{
  result = qword_27EFE8088;
  if (!qword_27EFE8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8088);
  }

  return result;
}

uint64_t sub_24B3FA500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B3F1E60;

  return sub_24B3F99D0(a1, v4);
}

unint64_t sub_24B3FA5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80D8, &qword_24B45C418);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80E0, &qword_24B45C420);
    v7 = sub_24B45903C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B3DF488(v9, v5, &qword_27EFE80D8, &qword_24B45C418);
      v11 = *v5;
      v12 = v5[1];
      result = sub_24B412140(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      State = type metadata accessor for AwardEarnedLoadState(0);
      result = sub_24B3FAD78(v5 + v8, v17 + *(*(State - 8) + 72) * v15, type metadata accessor for AwardEarnedLoadState);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B3FA790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80D0, &qword_24B45C410);
    v3 = sub_24B45903C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24B412140(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B3FA894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80C0, &qword_24B45C400);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80C8, &qword_24B45C408);
    v7 = sub_24B45903C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24B3DF488(v9, v5, &qword_27EFE80C0, &qword_24B45C400);
      v11 = *v5;
      v12 = v5[1];
      result = sub_24B412140(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      State = type metadata accessor for AwardProgressLoadState(0);
      result = sub_24B3FAD78(v5 + v8, v17 + *(*(State - 8) + 72) * v15, type metadata accessor for AwardProgressLoadState);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B3FAA7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80B8, &qword_24B45C3F8);
    v3 = sub_24B45903C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_24B3D81E4(v7);
      result = sub_24B412140(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24B3FAB84()
{
  result = qword_27EFE8098;
  if (!qword_27EFE8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8098);
  }

  return result;
}

unint64_t sub_24B3FABDC()
{
  result = qword_27EFE80A0;
  if (!qword_27EFE80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE80A0);
  }

  return result;
}

unint64_t sub_24B3FAC34()
{
  result = qword_27EFE80A8;
  if (!qword_27EFE80A8)
  {
    type metadata accessor for AwardRemoteParticipantStatusMonitorState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE80A8);
  }

  return result;
}

uint64_t sub_24B3FAC8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B3FACD4(uint64_t result, int a2, int a3)
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

unint64_t sub_24B3FAD24()
{
  result = qword_27EFE80B0;
  if (!qword_27EFE80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE80B0);
  }

  return result;
}

uint64_t sub_24B3FAD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void __swiftcall AwardDescription.init(title:longDescription:shouldDisplayProgress:)(FitnessAwards::AwardDescription *__return_ptr retstr, Swift::String title, Swift::String longDescription, Swift::Bool shouldDisplayProgress)
{
  retstr->title = title;
  retstr->longDescription = longDescription;
  retstr->shouldDisplayProgress = shouldDisplayProgress;
}

unint64_t sub_24B3FAEA4()
{
  v1 = 0x63736544676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24B3FAF0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B3FB9CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B3FAF34(uint64_t a1)
{
  v2 = sub_24B3FB16C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FAF70(uint64_t a1)
{
  v2 = sub_24B3FB16C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardDescription.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80F0, &qword_24B45C430);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3FB16C();
  sub_24B45928C();
  v14 = 0;
  v8 = v10[3];
  sub_24B45914C();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24B45914C();
  v12 = 2;
  sub_24B45915C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B3FB16C()
{
  result = qword_27EFE80F8;
  if (!qword_27EFE80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE80F8);
  }

  return result;
}

uint64_t AwardDescription.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8100, &qword_24B45C438);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3FB16C();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_24B4590AC();
  v11 = v10;
  v20 = v9;
  v22 = 1;
  v18 = sub_24B4590AC();
  v19 = v12;
  v21 = 2;
  v13 = sub_24B4590BC();
  (*(v6 + 8))(v8, v5);
  v14 = v13 & 1;
  v15 = v19;
  *a2 = v20;
  *(a2 + 8) = v11;
  *(a2 + 16) = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static AwardDescription.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_24B4591AC()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24B4591AC()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t AwardDescription.hash(into:)(uint64_t a1)
{
  sub_24B458E6C();
  sub_24B458E6C();
  return sub_24B45924C();
}

uint64_t AwardDescription.hashValue.getter()
{
  sub_24B45922C();
  sub_24B458E6C();
  sub_24B458E6C();
  sub_24B45924C();
  return sub_24B45926C();
}

uint64_t sub_24B3FB5CC()
{
  sub_24B45922C();
  sub_24B458E6C();
  sub_24B458E6C();
  sub_24B45924C();
  return sub_24B45926C();
}

uint64_t sub_24B3FB64C(uint64_t a1)
{
  sub_24B458E6C();
  sub_24B458E6C();
  return sub_24B45924C();
}

uint64_t sub_24B3FB6A0(uint64_t a1)
{
  sub_24B45922C();
  sub_24B458E6C();
  sub_24B458E6C();
  sub_24B45924C();
  return sub_24B45926C();
}

unint64_t sub_24B3FB720()
{
  result = qword_2810E3510[0];
  if (!qword_2810E3510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3510);
  }

  return result;
}

uint64_t sub_24B3FB774(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_24B4591AC()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24B4591AC()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_24B3FB828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B3FB870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B3FB8C8()
{
  result = qword_27EFE8108;
  if (!qword_27EFE8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8108);
  }

  return result;
}

unint64_t sub_24B3FB920()
{
  result = qword_27EFE8110;
  if (!qword_27EFE8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8110);
  }

  return result;
}

unint64_t sub_24B3FB978()
{
  result = qword_27EFE8118;
  if (!qword_27EFE8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8118);
  }

  return result;
}

uint64_t sub_24B3FB9CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63736544676E6F6CLL && a2 == 0xEF6E6F6974706972 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B466E20 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AwardDetailEnvironment.init(fetchAwardEarnedState:refreshSuggestedWorkoutsCanvas:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
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

uint64_t sub_24B3FBB08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B3FBB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B3FBBA0()
{
  if (*v0)
  {
    return 0x6469576465786966;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24B3FBBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6469576465786966 && a2 == 0xEA00000000006874)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B3FBCC8(uint64_t a1)
{
  v2 = sub_24B3FC1D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FBD04(uint64_t a1)
{
  v2 = sub_24B3FC1D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FBD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B3FBDD8(uint64_t a1)
{
  v2 = sub_24B3FC22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FBE14(uint64_t a1)
{
  v2 = sub_24B3FC22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FBE50(uint64_t a1)
{
  v2 = sub_24B3FC280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FBE8C(uint64_t a1)
{
  v2 = sub_24B3FC280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastWidth.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8120, &qword_24B45C6B0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8128, &qword_24B45C6B8);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8130, &qword_24B45C6C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3FC1D8();
  sub_24B45928C();
  if (v13)
  {
    v23 = 0;
    sub_24B3FC280();
    sub_24B45910C();
    (*(v18 + 8))(v7, v19);
  }

  else
  {
    v25 = 1;
    sub_24B3FC22C();
    v15 = v20;
    sub_24B45910C();
    v24 = v12;
    sub_24B3E3CF4();
    v16 = v22;
    sub_24B45918C();
    (*(v21 + 8))(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_24B3FC1D8()
{
  result = qword_27EFE8138;
  if (!qword_27EFE8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8138);
  }

  return result;
}

unint64_t sub_24B3FC22C()
{
  result = qword_27EFE8140;
  if (!qword_27EFE8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8140);
  }

  return result;
}

unint64_t sub_24B3FC280()
{
  result = qword_27EFE8148;
  if (!qword_27EFE8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8148);
  }

  return result;
}

uint64_t AwardToastWidth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8150, &qword_24B45C6C8);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8158, &qword_24B45C6D0);
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8160, &unk_24B45C6D8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-v12];
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B3FC1D8();
  v15 = v35;
  sub_24B45927C();
  if (!v15)
  {
    v35 = v11;
    v17 = v33;
    v16 = v34;
    v18 = sub_24B4590FC();
    v19 = (2 * *(v18 + 16)) | 1;
    v37 = v18;
    v38 = v18 + 32;
    v39 = 0;
    v40 = v19;
    v20 = sub_24B3E3810();
    v21 = v13;
    if (v20 == 2 || v39 != v40 >> 1)
    {
      v25 = sub_24B458FFC();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
      *v27 = &type metadata for AwardToastWidth;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v35 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = v20;
      if (v20)
      {
        LOBYTE(v41) = 1;
        sub_24B3FC22C();
        sub_24B45905C();
        v22 = v16;
        sub_24B3E4088();
        v23 = v31;
        sub_24B4590EC();
        (*(v32 + 8))(v6, v23);
        (*(v35 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v24 = v41;
      }

      else
      {
        LOBYTE(v41) = 0;
        sub_24B3FC280();
        sub_24B45905C();
        v22 = v16;
        (*(v17 + 8))(v9, v7);
        (*(v35 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v24 = 0;
      }

      *v22 = v24;
      *(v22 + 8) = (v30 & 1) == 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

BOOL static AwardToastWidth.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t AwardToastWidth.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x24C2403C0](0);
  }

  v2 = *v0;
  MEMORY[0x24C2403C0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x24C2403E0](v3);
}

uint64_t AwardToastWidth.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B45922C();
  if (v2)
  {
    MEMORY[0x24C2403C0](0);
  }

  else
  {
    MEMORY[0x24C2403C0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x24C2403E0](v3);
  }

  return sub_24B45926C();
}

uint64_t sub_24B3FC8AC()
{
  if (v0[1])
  {
    return MEMORY[0x24C2403C0](0);
  }

  v2 = *v0;
  MEMORY[0x24C2403C0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x24C2403E0](v3);
}

uint64_t sub_24B3FC8FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_24B45922C();
  if (v3)
  {
    MEMORY[0x24C2403C0](0);
  }

  else
  {
    MEMORY[0x24C2403C0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x24C2403E0](v4);
  }

  return sub_24B45926C();
}

unint64_t sub_24B3FC96C()
{
  result = qword_27EFE8168;
  if (!qword_27EFE8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8168);
  }

  return result;
}

BOOL sub_24B3FC9C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AwardToastWidth(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AwardToastWidth(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24B3FCA60(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B3FCA7C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardToastWidth.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AwardToastWidth.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B3FCC20()
{
  result = qword_27EFE8170;
  if (!qword_27EFE8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8170);
  }

  return result;
}

unint64_t sub_24B3FCC78()
{
  result = qword_27EFE8178;
  if (!qword_27EFE8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8178);
  }

  return result;
}

unint64_t sub_24B3FCCD0()
{
  result = qword_27EFE8180;
  if (!qword_27EFE8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8180);
  }

  return result;
}

unint64_t sub_24B3FCD28()
{
  result = qword_27EFE8188;
  if (!qword_27EFE8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8188);
  }

  return result;
}

unint64_t sub_24B3FCD80()
{
  result = qword_27EFE8190;
  if (!qword_27EFE8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8190);
  }

  return result;
}

unint64_t sub_24B3FCDD8()
{
  result = qword_27EFE8198;
  if (!qword_27EFE8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8198);
  }

  return result;
}

unint64_t sub_24B3FCE30()
{
  result = qword_27EFE81A0;
  if (!qword_27EFE81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE81A0);
  }

  return result;
}

unint64_t sub_24B3FCE88()
{
  result = qword_27EFE81A8;
  if (!qword_27EFE81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE81A8);
  }

  return result;
}

unint64_t sub_24B3FCEDC()
{
  v1 = *v0;
  v2 = 0x73736572676F7270;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0x6570704177656976;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B3FCF98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B3FEBFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B3FCFCC(uint64_t a1)
{
  v2 = sub_24B3FD8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FD008(uint64_t a1)
{
  v2 = sub_24B3FD8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FD044(uint64_t a1)
{
  v2 = sub_24B3FDA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FD080(uint64_t a1)
{
  v2 = sub_24B3FDA60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FD0BC(uint64_t a1)
{
  v2 = sub_24B3FDA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FD0F8(uint64_t a1)
{
  v2 = sub_24B3FDA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FD134(uint64_t a1)
{
  v2 = sub_24B3FD964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FD170(uint64_t a1)
{
  v2 = sub_24B3FD964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FD1AC(uint64_t a1)
{
  v2 = sub_24B3FD9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FD1E8(uint64_t a1)
{
  v2 = sub_24B3FD9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FD224(uint64_t a1)
{
  v2 = sub_24B3FD910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FD260(uint64_t a1)
{
  v2 = sub_24B3FD910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardProgressAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE81B0, &qword_24B45CAC0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE81B8, &qword_24B45CAC8);
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE81C0, &qword_24B45CAD0);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE81C8, &qword_24B45CAD8);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v35 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE81D0, &qword_24B45CAE0);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE81D8, &qword_24B45CAE8);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = *v1;
  v43 = v1[1];
  v44 = v16;
  v17 = v1[3];
  v42 = v1[2];
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B3FD8BC();
  sub_24B45928C();
  if (v18 >> 6)
  {
    if (v18 >> 6 == 1)
    {
      LOBYTE(v47) = 2;
      sub_24B3FD9B8();
      v19 = v39;
      v20 = v46;
      sub_24B45910C();
      v47 = v44;
      v48 = v43;
      v49 = v42;
      v50 = v17;
      v51 = v18 & 1;
      sub_24B3E1110();
      v21 = v41;
      sub_24B45918C();
      (*(v40 + 8))(v19, v21);
      return (*(v45 + 8))(v15, v20);
    }

    if (v42 | v43 | v44 | v17 || v18 != 128)
    {
      if (v18 == 128 && v44 == 1 && !(v42 | v43 | v17))
      {
        LOBYTE(v47) = 3;
        sub_24B3FD964();
        v28 = v29;
        v25 = v46;
        sub_24B45910C();
        (*(v30 + 8))(v28, v31);
        return (*(v45 + 8))(v15, v25);
      }

      LOBYTE(v47) = 4;
      sub_24B3FD910();
      v24 = v32;
      v25 = v46;
      sub_24B45910C();
      v27 = v33;
      v26 = v34;
    }

    else
    {
      LOBYTE(v47) = 1;
      sub_24B3FDA0C();
      v24 = v35;
      v25 = v46;
      sub_24B45910C();
      v27 = v36;
      v26 = v37;
    }

    (*(v27 + 8))(v24, v26);
    return (*(v45 + 8))(v15, v25);
  }

  LOBYTE(v47) = 0;
  sub_24B3FDA60();
  v23 = v46;
  sub_24B45910C();
  sub_24B45914C();
  (*(v38 + 8))(v12, v10);
  return (*(v45 + 8))(v15, v23);
}

unint64_t sub_24B3FD8BC()
{
  result = qword_2810E2F70;
  if (!qword_2810E2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F70);
  }

  return result;
}

unint64_t sub_24B3FD910()
{
  result = qword_2810E2F58;
  if (!qword_2810E2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F58);
  }

  return result;
}

unint64_t sub_24B3FD964()
{
  result = qword_27EFE81E0;
  if (!qword_27EFE81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE81E0);
  }

  return result;
}

unint64_t sub_24B3FD9B8()
{
  result = qword_27EFE81E8;
  if (!qword_27EFE81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE81E8);
  }

  return result;
}

unint64_t sub_24B3FDA0C()
{
  result = qword_27EFE81F0;
  if (!qword_27EFE81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE81F0);
  }

  return result;
}

unint64_t sub_24B3FDA60()
{
  result = qword_27EFE81F8;
  if (!qword_27EFE81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE81F8);
  }

  return result;
}

uint64_t AwardProgressAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8200, &qword_24B45CAF0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v43 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8208, &qword_24B45CAF8);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v54 = &v43 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8210, &qword_24B45CB00);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v55 = &v43 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8218, &qword_24B45CB08);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8220, &qword_24B45CB10);
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8228, &unk_24B45CB18);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B3FD8BC();
  v17 = v58;
  sub_24B45927C();
  v18 = v17;
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v19 = v11;
  v44 = v9;
  v21 = v55;
  v20 = v56;
  v58 = v13;
  v22 = v57;
  v23 = sub_24B4590FC();
  v24 = (2 * *(v23 + 16)) | 1;
  v63 = v23;
  v64 = v23 + 32;
  v65 = 0;
  v66 = v24;
  v25 = sub_24B3E3814();
  if (v25 == 5 || v65 != v66 >> 1)
  {
    v32 = sub_24B458FFC();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v34 = &type metadata for AwardProgressAction;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v58 + 8))(v15, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  if (v25 <= 1u)
  {
    if (v25)
    {
      LOBYTE(v59) = 1;
      sub_24B3FDA0C();
      sub_24B45905C();
      v43 = 0;
      (*(v45 + 8))(v8, v47);
      (*(v58 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v31 = 0;
      v29 = 0uLL;
      v30 = 0x80;
    }

    else
    {
      LOBYTE(v59) = 0;
      sub_24B3FDA60();
      v36 = v19;
      sub_24B45905C();
      v37 = v44;
      v38 = sub_24B4590AC();
      v43 = 0;
      v31 = v38;
      v18 = v42;
      (*(v46 + 8))(v36, v37);
      (*(v58 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v30 = 0;
      v29 = 0uLL;
    }

    goto LABEL_18;
  }

  if (v25 == 2)
  {
    LOBYTE(v59) = 2;
    sub_24B3FD9B8();
    sub_24B45905C();
    v39 = v58;
    sub_24B3E2680();
    v41 = v53;
    sub_24B4590EC();
    v43 = 0;
    (*(v51 + 8))(v21, v41);
    (*(v39 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v31 = v59;
    v18 = v60;
    v29 = v61;
    v30 = v62 | 0x40;
    goto LABEL_18;
  }

  v43 = 0;
  v26 = v58;
  if (v25 != 3)
  {
    LOBYTE(v59) = 4;
    sub_24B3FD910();
    v40 = v43;
    sub_24B45905C();
    v43 = v40;
    if (!v40)
    {
      (*(v48 + 8))(v20, v49);
      (*(v26 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v18 = 0;
      v29 = 0uLL;
      v30 = 0x80;
      v31 = 2;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  LOBYTE(v59) = 3;
  sub_24B3FD964();
  v27 = v54;
  v28 = v43;
  sub_24B45905C();
  v43 = v28;
  if (v28)
  {
LABEL_17:
    (*(v26 + 8))(v15, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  (*(v52 + 8))(v27, v50);
  (*(v26 + 8))(v15, v12);
  swift_unknownObjectRelease();
  v18 = 0;
  v29 = 0uLL;
  v30 = 0x80;
  v31 = 1;
LABEL_18:
  *v22 = v31;
  *(v22 + 8) = v18;
  *(v22 + 16) = v29;
  *(v22 + 32) = v30;
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards19AwardProgressActionO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24B3FE434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24B3FE488(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_24B3FE4F4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 32) = *(result + 32) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardProgressAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AwardProgressAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B3FE6D8()
{
  result = qword_27EFE8230;
  if (!qword_27EFE8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8230);
  }

  return result;
}

unint64_t sub_24B3FE730()
{
  result = qword_27EFE8238;
  if (!qword_27EFE8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8238);
  }

  return result;
}

unint64_t sub_24B3FE788()
{
  result = qword_27EFE8240;
  if (!qword_27EFE8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8240);
  }

  return result;
}

unint64_t sub_24B3FE7E0()
{
  result = qword_2810E2F98;
  if (!qword_2810E2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F98);
  }

  return result;
}

unint64_t sub_24B3FE838()
{
  result = qword_2810E2FA0[0];
  if (!qword_2810E2FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E2FA0);
  }

  return result;
}

unint64_t sub_24B3FE890()
{
  result = qword_2810E2F38;
  if (!qword_2810E2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F38);
  }

  return result;
}

unint64_t sub_24B3FE8E8()
{
  result = qword_2810E2F40;
  if (!qword_2810E2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F40);
  }

  return result;
}

unint64_t sub_24B3FE940()
{
  result = qword_2810E2F88;
  if (!qword_2810E2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F88);
  }

  return result;
}

unint64_t sub_24B3FE998()
{
  result = qword_2810E2F90;
  if (!qword_2810E2F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F90);
  }

  return result;
}

unint64_t sub_24B3FE9F0()
{
  result = qword_2810E2F78;
  if (!qword_2810E2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F78);
  }

  return result;
}

unint64_t sub_24B3FEA48()
{
  result = qword_2810E2F80;
  if (!qword_2810E2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F80);
  }

  return result;
}

unint64_t sub_24B3FEAA0()
{
  result = qword_2810E2F48;
  if (!qword_2810E2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F48);
  }

  return result;
}

unint64_t sub_24B3FEAF8()
{
  result = qword_2810E2F50;
  if (!qword_2810E2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F50);
  }

  return result;
}

unint64_t sub_24B3FEB50()
{
  result = qword_2810E2F60;
  if (!qword_2810E2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F60);
  }

  return result;
}

unint64_t sub_24B3FEBA8()
{
  result = qword_2810E2F68;
  if (!qword_2810E2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2F68);
  }

  return result;
}

uint64_t sub_24B3FEBFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000024B466E40 == a2;
  if (v3 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B466E60 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEF64656863746546 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B466E80 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t AwardToastImageView.init(imageData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double AwardToastImageView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24B458BAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v7 = sub_24B45831C();
  v8 = [v6 initWithData_];

  if (v8)
  {
    v9 = v8;
    sub_24B458B8C();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v10 = sub_24B458BBC();

    (*(v3 + 8))(v5, v2);
    v15 = v10;
    v16 = 0x3FF0000000000000;
    v17 = 0;
    v18 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8248, &qword_24B45D200);
    sub_24B3FF010();
    sub_24B45871C();
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8248, &qword_24B45D200);
    sub_24B3FF010();
    sub_24B45871C();
  }

  result = *&v19;
  v12 = v20;
  v13 = v21;
  *a1 = v19;
  *(a1 + 16) = v12;
  *(a1 + 18) = v13;
  return result;
}

unint64_t sub_24B3FF010()
{
  result = qword_2810E28A0;
  if (!qword_2810E28A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8248, &qword_24B45D200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24B3FF0D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24B3FF124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_24B3FF180()
{
  result = qword_27EFE8250;
  if (!qword_27EFE8250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8258, &qword_24B45D308);
    sub_24B3FF010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8250);
  }

  return result;
}

uint64_t sub_24B3FF210(uint64_t a1)
{
  v2 = sub_24B4006B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FF24C(uint64_t a1)
{
  v2 = sub_24B4006B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FF288(uint64_t a1)
{
  v2 = sub_24B400770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FF2C4(uint64_t a1)
{
  v2 = sub_24B400770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FF300(uint64_t a1)
{
  v2 = sub_24B400818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FF33C(uint64_t a1)
{
  v2 = sub_24B400818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B3FF378(uint64_t a1)
{
  v2 = sub_24B40086C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B3FF3B4(uint64_t a1)
{
  v2 = sub_24B40086C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardEarnedLoadState.encode(to:)(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8260, &qword_24B45D310);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v31 = &v27 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8268, &qword_24B45D318);
  v29 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v27 - v3;
  v32 = sub_24B45836C();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v36 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8270, &qword_24B45D320);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  State = type metadata accessor for AwardEarnedLoadState(0);
  MEMORY[0x28223BE20](State);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8278, &qword_24B45D328);
  v11 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4006B8();
  sub_24B45928C();
  sub_24B40070C(v38, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v10;
      v43 = 2;
      sub_24B400770();
      v16 = v31;
      v17 = v39;
      sub_24B45910C();
      v42 = v15;
      sub_24B4007C4();
      v18 = v35;
      sub_24B45918C();
      (*(v33 + 8))(v16, v18);
      return (*(v11 + 8))(v13, v17);
    }

    else
    {
      v40 = 0;
      sub_24B40086C();
      v26 = v39;
      sub_24B45910C();
      (*(v28 + 8))(v7, v5);
      return (*(v11 + 8))(v13, v26);
    }
  }

  else
  {
    v20 = v29;
    v21 = v30;
    v22 = v10;
    v23 = v32;
    (*(v30 + 32))(v36, v22, v32);
    v41 = 1;
    sub_24B400818();
    v24 = v39;
    sub_24B45910C();
    sub_24B40095C(&qword_27EFE7E38, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v25 = v34;
    sub_24B45918C();
    (*(v20 + 8))(v37, v25);
    (*(v21 + 8))(v36, v23);
    return (*(v11 + 8))(v13, v24);
  }
}

uint64_t AwardEarnedLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE82A8, &qword_24B45D330);
  v4 = *(v3 - 8);
  v62 = v3;
  v63 = v4;
  MEMORY[0x28223BE20](v3);
  v69 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE82B0, &qword_24B45D338);
  v7 = *(v6 - 8);
  v60 = v6;
  v61 = v7;
  MEMORY[0x28223BE20](v6);
  v68 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE82B8, &qword_24B45D340);
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE82C0, &unk_24B45D348);
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v56 - v12;
  State = type metadata accessor for AwardEarnedLoadState(0);
  v15 = MEMORY[0x28223BE20](State);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v23 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B4006B8();
  v24 = v71;
  sub_24B45927C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v57 = v17;
  v58 = v20;
  v26 = v65;
  v25 = v66;
  v28 = v68;
  v27 = v69;
  v71 = 0;
  v59 = v22;
  v29 = v67;
  v30 = sub_24B4590FC();
  v31 = (2 * *(v30 + 16)) | 1;
  v73 = v30;
  v74 = v30 + 32;
  v75 = 0;
  v76 = v31;
  v32 = sub_24B3E3808();
  v33 = v29;
  if (v32 == 3 || v75 != v76 >> 1)
  {
    v42 = sub_24B458FFC();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v44 = State;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    (*(v70 + 8))(v13, v33);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  if (!v32)
  {
    v77 = 0;
    sub_24B40086C();
    v46 = v11;
    v34 = v29;
    v47 = v71;
    sub_24B45905C();
    if (!v47)
    {
      (*(v26 + 8))(v46, v25);
      (*(v70 + 8))(v13, v29);
      swift_unknownObjectRelease();
      v40 = v59;
      swift_storeEnumTagMultiPayload();
      v41 = v64;
      goto LABEL_18;
    }

    v36 = v70;
LABEL_13:
    (*(v36 + 8))(v13, v34);
    goto LABEL_9;
  }

  if (v32 != 1)
  {
    v77 = 2;
    sub_24B400770();
    v48 = v27;
    v49 = v29;
    v50 = v71;
    sub_24B45905C();
    v41 = v64;
    v51 = v70;
    if (!v50)
    {
      v52 = v49;
      sub_24B4008C0();
      v53 = v62;
      sub_24B4590EC();
      (*(v63 + 8))(v48, v53);
      (*(v51 + 8))(v13, v52);
      swift_unknownObjectRelease();
      v54 = v57;
      *v57 = v77;
      swift_storeEnumTagMultiPayload();
      v55 = v54;
      v40 = v59;
      sub_24B3D843C(v55, v59);
      goto LABEL_18;
    }

    (*(v70 + 8))(v13, v49);
    goto LABEL_9;
  }

  v77 = 1;
  sub_24B400818();
  v34 = v29;
  v35 = v71;
  sub_24B45905C();
  v36 = v70;
  if (v35)
  {
    goto LABEL_13;
  }

  sub_24B45836C();
  sub_24B40095C(&qword_27EFE7E68, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v37 = v58;
  v38 = v28;
  v39 = v60;
  sub_24B4590EC();
  (*(v61 + 8))(v38, v39);
  (*(v36 + 8))(v13, v29);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v40 = v59;
  sub_24B3D843C(v37, v59);
  v41 = v64;
LABEL_18:
  sub_24B3D843C(v40, v41);
  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t AwardEarnedLoadState.hash(into:)(uint64_t a1)
{
  v2 = sub_24B45836C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardEarnedLoadState(0);
  MEMORY[0x28223BE20](State);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B40070C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      MEMORY[0x24C2403C0](2);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    return MEMORY[0x24C2403C0](v11);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C2403C0](1);
    sub_24B40095C(&qword_27EFE7E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24B458D9C();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t AwardEarnedLoadState.hashValue.getter()
{
  sub_24B45922C();
  AwardEarnedLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B400378()
{
  sub_24B45922C();
  AwardEarnedLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B4003BC(uint64_t a1)
{
  sub_24B45922C();
  AwardEarnedLoadState.hash(into:)(v2);
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards20AwardEarnedLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B45836C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardEarnedLoadState(0);
  v9 = MEMORY[0x28223BE20](State);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8330, &unk_24B45D840);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_24B40070C(a1, &v24 - v16);
  sub_24B40070C(a2, &v17[v18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B40070C(v17, v13);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      v21 = sub_24B45834C();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v13, v4);
      sub_24B400E14(v17);
      return v21 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_24B400E14(v17);
      v21 = 1;
      return v21 & 1;
    }

LABEL_9:
    sub_24B400DAC(v17);
    v21 = 0;
    return v21 & 1;
  }

  sub_24B40070C(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_9;
  }

  v20 = *v11 ^ v17[v18];
  sub_24B400E14(v17);
  v21 = v20 ^ 1;
  return v21 & 1;
}

unint64_t sub_24B4006B8()
{
  result = qword_27EFE8280;
  if (!qword_27EFE8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8280);
  }

  return result;
}

uint64_t sub_24B40070C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardEarnedLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B400770()
{
  result = qword_27EFE8288;
  if (!qword_27EFE8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8288);
  }

  return result;
}

unint64_t sub_24B4007C4()
{
  result = qword_27EFE8290;
  if (!qword_27EFE8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8290);
  }

  return result;
}

unint64_t sub_24B400818()
{
  result = qword_27EFE8298;
  if (!qword_27EFE8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8298);
  }

  return result;
}

unint64_t sub_24B40086C()
{
  result = qword_27EFE82A0;
  if (!qword_27EFE82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82A0);
  }

  return result;
}

unint64_t sub_24B4008C0()
{
  result = qword_27EFE82C8;
  if (!qword_27EFE82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82C8);
  }

  return result;
}

uint64_t sub_24B40095C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4009E8()
{
  result = qword_27EFE82D8;
  if (!qword_27EFE82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82D8);
  }

  return result;
}

unint64_t sub_24B400A40()
{
  result = qword_27EFE82E0;
  if (!qword_27EFE82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82E0);
  }

  return result;
}

unint64_t sub_24B400A98()
{
  result = qword_27EFE82E8;
  if (!qword_27EFE82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82E8);
  }

  return result;
}

unint64_t sub_24B400AF0()
{
  result = qword_27EFE82F0;
  if (!qword_27EFE82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82F0);
  }

  return result;
}

unint64_t sub_24B400B48()
{
  result = qword_27EFE82F8;
  if (!qword_27EFE82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82F8);
  }

  return result;
}

unint64_t sub_24B400BA0()
{
  result = qword_27EFE8300;
  if (!qword_27EFE8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8300);
  }

  return result;
}

unint64_t sub_24B400BF8()
{
  result = qword_27EFE8308;
  if (!qword_27EFE8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8308);
  }

  return result;
}

unint64_t sub_24B400C50()
{
  result = qword_27EFE8310;
  if (!qword_27EFE8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8310);
  }

  return result;
}

unint64_t sub_24B400CA8()
{
  result = qword_27EFE8318;
  if (!qword_27EFE8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8318);
  }

  return result;
}

unint64_t sub_24B400D00()
{
  result = qword_27EFE8320;
  if (!qword_27EFE8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8320);
  }

  return result;
}

unint64_t sub_24B400D58()
{
  result = qword_27EFE8328;
  if (!qword_27EFE8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8328);
  }

  return result;
}

uint64_t sub_24B400DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8330, &unk_24B45D840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B400E14(uint64_t a1)
{
  State = type metadata accessor for AwardEarnedLoadState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t TVAwardHeaderView.init(store:awardImageViewBuilder:awardProgressViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a9 = sub_24B3DB5A8;
  *(a9 + 8) = v17;
  *(a9 + 16) = 0;
  v22[0] = a7;
  v22[1] = a8;
  v22[2] = a10;
  v22[3] = a11;
  type metadata accessor for TVAwardHeaderView(0, v22);

  v19 = a3(v18);
  a5(v19);
}

uint64_t TVAwardHeaderView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = *(a1 - 8);
  v44 = *(v43 + 64);
  v2 = MEMORY[0x28223BE20](a1);
  v42 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v2 + 16);
  v5 = v2;
  v46 = v2;
  v35 = v4;
  sub_24B4585BC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
  v7 = *(v5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  v34 = v7;
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v55 = sub_24B458F6C();
  v56 = v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  v8 = sub_24B458BFC();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_24B4585BC();
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = sub_24B4585BC();
  v40 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v36 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v38 = &v33 - v17;
  sub_24B4586BC();
  *&v18 = v4;
  *(&v18 + 1) = v7;
  v19 = v41;
  v49 = v41;
  v33 = *(v46 + 32);
  v47 = v18;
  v48 = v33;
  sub_24B458BEC();
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  WitnessTable = swift_getWitnessTable();
  sub_24B458A4C();
  (*(v37 + 8))(v10, v8);
  v21 = v43;
  v22 = v42;
  v23 = v46;
  (*(v43 + 16))(v42, v19, v46);
  v24 = v21;
  v25 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v35;
  *(v26 + 24) = v27;
  *(v26 + 32) = v33;
  (*(v24 + 32))(v26 + v25, v22, v23);
  v52 = WitnessTable;
  v53 = MEMORY[0x277CDF678];
  v28 = swift_getWitnessTable();
  v29 = v36;
  sub_24B458AAC();

  (*(v39 + 8))(v13, v11);
  v50 = v28;
  v51 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v30 = v38;
  sub_24B3ECD00();
  v31 = *(v40 + 8);
  v31(v29, v14);
  sub_24B3ECD00();
  return (v31)(v30, v14);
}

uint64_t sub_24B4016B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v50 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v59 = sub_24B458F6C();
  v60 = v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v46 = sub_24B458C1C();
  v47 = sub_24B4585BC();
  v10 = sub_24B45872C();
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v36 - v14;
  v43 = a1;
  v15 = sub_24B4585BC();
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = &v36 - v20;
  v58 = a1;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v21 = type metadata accessor for TVAwardHeaderView(0, &v58);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  sub_24B458A4C();
  v67[7] = a3;
  v67[8] = MEMORY[0x277CDF678];
  v22 = v51;
  WitnessTable = swift_getWitnessTable();
  v23 = v19;
  sub_24B3ECD00();
  v42 = *(v52 + 8);
  v43 = v52 + 8;
  v42(v19, v22);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  sub_24B45855C();
  v37 = v67[9];
  v38 = v69;
  v39 = v72;
  v40 = v71;
  v78 = 1;
  v76 = v68;
  v74 = v70;
  v24 = v44;
  sub_24B401D9C(v21, v44);
  v25 = sub_24B403D7C();
  v67[5] = swift_getWitnessTable();
  v67[6] = MEMORY[0x277CDFC60];
  v26 = swift_getWitnessTable();
  v67[3] = v25;
  v67[4] = v26;
  v27 = v48;
  v28 = swift_getWitnessTable();
  v29 = v45;
  sub_24B3ECD00();
  v30 = v49;
  v31 = *(v49 + 8);
  v31(v24, v27);
  v32 = *(v52 + 16);
  v36 = v23;
  v33 = v51;
  v32(v23, v53, v51);
  v58 = 0;
  LOBYTE(v59) = v78;
  *(&v59 + 1) = *v77;
  HIDWORD(v59) = *&v77[3];
  v60 = v37;
  LOBYTE(v61) = v76;
  *(&v61 + 1) = *v75;
  HIDWORD(v61) = *&v75[3];
  v62 = v38;
  v63 = v74;
  *v64 = *v73;
  *&v64[3] = *&v73[3];
  v65 = v40;
  v66 = v39;
  v67[0] = v23;
  v67[1] = &v58;
  (*(v30 + 16))(v24, v29, v27);
  v67[2] = v24;
  v57[0] = v33;
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D08, &qword_24B45D850);
  v57[2] = v27;
  v54 = WitnessTable;
  v55 = sub_24B3EC908();
  v56 = v28;
  sub_24B437D88(v67, 3uLL, v57);
  v31(v29, v27);
  v34 = v42;
  v42(v53, v33);
  v31(v24, v27);
  return v34(v36, v33);
}