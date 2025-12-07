uint64_t sub_24B401D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  *&v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  v55 = v5;
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  *(&v68 + 1) = sub_24B458F6C();
  *&v69 = v4;
  *(&v69 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
  swift_getTupleTypeMetadata();
  v6 = sub_24B458CDC();
  v50[0] = swift_getWitnessTable();
  v50[1] = v6;
  v7 = sub_24B458C1C();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v51 = v50 - v8;
  v62 = v9;
  v10 = sub_24B4585BC();
  v54 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v50 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
  v22 = sub_24B45872C();
  v60 = *(v22 - 8);
  v61 = v22;
  MEMORY[0x28223BE20](v22);
  v59 = v50 - v23;
  v56 = a1;
  v57 = v2;
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458D0C();
  (*(v19 + 8))(v21, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = MEMORY[0x277CDFC60];
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = *v17;
    v26 = *(v17 + 1);
    v29 = *(v17 + 2);
    v28 = *(v17 + 3);
    v30 = v17[32];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B3DF4F0(v17, &qword_27EFE7DB0, &unk_24B45D910);
LABEL_8:
    v40 = sub_24B458B1C();
    sub_24B3E4898();
    swift_getKeyPath();
    sub_24B458D5C();

    sub_24B458CBC();
    sub_24B45861C();
    *&v66[0] = v40;
    v41 = sub_24B403D7C();
    WitnessTable = swift_getWitnessTable();
    v65 = v25;
    v42 = swift_getWitnessTable();
    v39 = v59;
    sub_24B437B98(v66, v58, v10, v41, v42);
    v72 = v66[4];
    v73 = v66[5];
    v74 = v66[6];
    v75 = v67;
    v68 = v66[0];
    v69 = v66[1];
    v70 = v66[2];
    v71 = v66[3];
    sub_24B3DF4F0(&v68, &qword_27EFE8338, &qword_24B45D858);
    goto LABEL_9;
  }

  v27 = *v17;
  v26 = *(v17 + 1);
  v29 = *(v17 + 2);
  v28 = *(v17 + 3);
  v30 = v17[32];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
  v32 = sub_24B45833C();
  (*(*(v32 - 8) + 8))(&v17[v31], v32);
LABEL_6:
  *&v68 = v27;
  *(&v68 + 1) = v26;
  *&v69 = v29;
  *(&v69 + 1) = v28;
  LOBYTE(v70) = v30;
  v33 = sub_24B4586FC();
  MEMORY[0x28223BE20](v33);
  v34 = v51;
  sub_24B458C0C();

  sub_24B458CBC();
  v48 = v62;
  v49 = swift_getWitnessTable();
  sub_24B458A5C();
  (*(v52 + 8))(v34, v48);
  v80 = v49;
  v25 = MEMORY[0x277CDFC60];
  v81 = MEMORY[0x277CDFC60];
  v35 = swift_getWitnessTable();
  v36 = v53;
  sub_24B3ECD00();
  v37 = *(v54 + 8);
  v37(v13, v10);
  sub_24B3ECD00();
  v38 = sub_24B403D7C();
  v39 = v59;
  sub_24B437C90(v13, v58, v10, v38, v35);
  v37(v13, v10);
  v37(v36, v10);
LABEL_9:
  v44 = v60;
  v43 = v61;
  v45 = sub_24B403D7C();
  v78 = swift_getWitnessTable();
  v79 = v25;
  v46 = swift_getWitnessTable();
  v76 = v45;
  v77 = v46;
  swift_getWitnessTable();
  sub_24B3ECD00();
  return (*(v44 + 8))(v39, v43);
}

uint64_t sub_24B402708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for TVAwardHeaderView(0, v6);
  sub_24B3E4898();
  sub_24B458D6C();
}

uint64_t sub_24B402758()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for TVAwardHeaderView(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_24B402708(v6, v1, v2, v3, v4);
}

uint64_t sub_24B402840@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v97 = a5;
  *(&v97 + 1) = a6;
  v94 = a4;
  v95 = a2;
  v96 = a3;
  v106 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  v87[0] = sub_24B4585BC();
  v9 = sub_24B4585BC();
  v10 = sub_24B4585BC();
  v87[1] = v9;
  v87[2] = v10;
  v11 = sub_24B45872C();
  v107 = v8;
  swift_getTupleTypeMetadata2();
  v12 = sub_24B458CDC();
  v98 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v91 = v87 - v14;
  v92 = v11;
  v88 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v90 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = v87 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  MEMORY[0x28223BE20](v93);
  v19 = v87 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v87 - v22;
  v111 = v12;
  v110 = sub_24B458F6C();
  v108 = *(v110 - 8);
  v24 = MEMORY[0x28223BE20](v110);
  v109 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v112 = v87 - v26;
  v27 = *a1;
  v28 = a1[1];
  v101 = a1;
  *&v160 = v27;
  *(&v160 + 1) = v28;
  v29 = sub_24B3EC9AC();

  v99 = v29;
  v30 = sub_24B45892C();
  v32 = v31;
  v34 = v33;
  sub_24B45886C();
  v35 = sub_24B45890C();
  v103 = v36;
  v104 = v35;
  v100 = v37;
  v105 = v38;

  sub_24B3DF478(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  *&v160 = v96;
  *(&v160 + 1) = v94;
  v161 = v97;
  v39 = *(&v97 + 1);
  v40 = type metadata accessor for TVAwardHeaderView(0, &v160);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458D0C();
  (*(v21 + 8))(v23, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B3DF4F0(v19, &qword_27EFE7DB0, &unk_24B45D910);
    goto LABEL_5;
  }

  v41 = v19[32];
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
  v43 = sub_24B45833C();
  (*(*(v43 - 8) + 8))(&v19[v42], v43);

  if (v41 != 1)
  {
LABEL_5:
    v58 = v109;
    (*(v98 + 56))(v109, 1, 1, v111);
    swift_getWitnessTable();
    sub_24B428520(v58, v112);
    v59 = *(v108 + 8);
    v98 = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v59(v58, v110);
    goto LABEL_6;
  }

  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  sub_24B45855C();
  v93 = v165;
  v94 = v167;
  v96 = v170;
  *&v97 = v169;
  LOBYTE(v126[0]) = 1;
  LOBYTE(v122) = v166;
  LOBYTE(v153[0]) = v168;
  v44 = v90;
  sub_24B4035B0(v40, v90);
  v45 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188, MEMORY[0x277CE0868]);
  v119 = v39;
  v120 = v45;
  WitnessTable = swift_getWitnessTable();
  v118 = MEMORY[0x277CDFC48];
  v46 = swift_getWitnessTable();
  v115 = v39;
  v116 = MEMORY[0x277CDF678];
  v47 = swift_getWitnessTable();
  v113 = v46;
  v114 = v47;
  v48 = v92;
  v49 = swift_getWitnessTable();
  v50 = v89;
  sub_24B3ECD00();
  v51 = v88;
  v52 = *(v88 + 8);
  v52(v44, v48);
  *&v160 = 0;
  BYTE8(v160) = v126[0];
  *(&v160 + 9) = v171;
  HIDWORD(v160) = *(&v171 + 3);
  *&v161 = v93;
  BYTE8(v161) = v122;
  *(&v161 + 9) = v142;
  HIDWORD(v161) = *(&v142 + 3);
  *&v162 = v94;
  BYTE8(v162) = v153[0];
  *(&v162 + 9) = v148[0];
  HIDWORD(v162) = *(v148 + 3);
  *&v163 = v97;
  *(&v163 + 1) = v96;
  *&v155 = &v160;
  (*(v51 + 16))(v44, v50, v48);
  *(&v155 + 1) = v44;
  *&v127 = v107;
  *(&v127 + 1) = v48;
  v132 = sub_24B3EC908();
  v133 = v49;
  v53 = v91;
  sub_24B437D88(&v155, 2uLL, &v127);
  v52(v50, v48);
  v52(v44, v48);
  v54 = v98;
  v55 = v109;
  v56 = v111;
  (*(v98 + 32))(v109, v53, v111);
  (*(v54 + 56))(v55, 0, 1, v56);
  swift_getWitnessTable();
  sub_24B428520(v55, v112);
  v57 = *(v108 + 8);
  v98 = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v55, v110);
LABEL_6:
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  sub_24B45855C();
  v95 = v171;
  v96 = v173;
  *&v97 = v176;
  *(&v97 + 1) = v175;
  v154 = 1;
  v152 = v172;
  v150 = v174;
  v60 = v101[3];
  *&v160 = v101[2];
  *(&v160 + 1) = v60;

  v61 = sub_24B45892C();
  v63 = v62;
  v65 = v64;
  sub_24B45889C();
  v66 = sub_24B45890C();
  v68 = v67;
  v70 = v69;

  sub_24B3DF478(v61, v63, v65 & 1);

  LODWORD(v160) = sub_24B45875C();
  v71 = sub_24B4588DC();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  sub_24B3DF478(v66, v68, v70 & 1);

  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  LOBYTE(v132) = v75 & 1;
  *&v155 = v71;
  *(&v155 + 1) = v73;
  LOBYTE(v156) = v75 & 1;
  *(&v156 + 1) = v160;
  DWORD1(v156) = *(&v160 + 3);
  *(&v156 + 1) = v77;
  *&v157 = v78;
  *(&v157 + 1) = 3;
  LOBYTE(v158) = 0;
  *(&v158 + 1) = v127;
  DWORD1(v158) = *(&v127 + 3);
  *(&v158 + 1) = v79;
  v159 = 0;
  v81 = v103;
  v80 = v104;
  v142 = v104;
  v143 = v103;
  LOBYTE(v71) = v100 & 1;
  v144 = v100 & 1;
  v145 = v105;
  v146 = KeyPath;
  v147 = 0;
  v148[0] = &v142;
  v82 = v109;
  v83 = v108 + 16;
  v84 = v110;
  (*(v108 + 16))(v109, v112, v110);
  v132 = 0;
  LOBYTE(v133) = v154;
  *(&v133 + 1) = v153[0];
  HIDWORD(v133) = *(v153 + 3);
  v134 = v95;
  v135 = v152;
  *v136 = *v151;
  *&v136[3] = *&v151[3];
  v137 = v96;
  v138 = v150;
  *v139 = *v149;
  *&v139[3] = *&v149[3];
  v140 = *(&v97 + 1);
  v141 = v97;
  v148[1] = v82;
  v148[2] = &v132;
  v129 = v157;
  v130 = v158;
  v131 = v159;
  v127 = v155;
  v128 = v156;
  v148[3] = &v127;
  sub_24B3DF5A4(v80, v81, v71);

  sub_24B403E10(&v155, &v160);
  v126[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC8, &qword_24B45A200);
  v126[1] = v84;
  v126[2] = v107;
  v126[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFE8340, &qword_24B45D860);
  v122 = sub_24B3DEDBC();
  v121 = swift_getWitnessTable();
  v123 = swift_getWitnessTable();
  v124 = sub_24B3EC908();
  v125 = sub_24B403E80();
  sub_24B437D88(v148, 4uLL, v126);
  sub_24B3DF478(v80, v81, v71);

  sub_24B3DF4F0(&v155, qword_27EFE8340, &qword_24B45D860);
  v85 = *(v83 - 8);
  v85(v112, v84);
  v161 = v128;
  v162 = v129;
  v163 = v130;
  v164 = v131;
  v160 = v127;
  sub_24B3DF4F0(&v160, qword_27EFE8340, &qword_24B45D860);
  v85(v82, v84);
  sub_24B3DF478(v142, v143, v144);
}

uint64_t sub_24B4035B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_24B4585BC();
  v48 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  v7 = sub_24B4585BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = sub_24B4585BC();
  v50 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v46 - v15;
  v51 = v16;
  v55 = v3;
  v54 = sub_24B45872C();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v46 - v17;
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  if (__PAIR128__(0x800000024B4668F0, 0xD00000000000001CLL) == v77)
  {
  }

  else
  {
    v18 = sub_24B4591AC();

    if ((v18 & 1) == 0)
    {
      sub_24B458CBC();
      v31 = *(a1 + 40);
      v33 = v46;
      sub_24B458A4C();
      v75 = v31;
      v32 = MEMORY[0x277CDF678];
      v76 = MEMORY[0x277CDF678];
      v34 = v55;
      WitnessTable = swift_getWitnessTable();
      v36 = v47;
      sub_24B3ECD00();
      v50 = *(v48 + 8);
      (v50)(v33, v34);
      sub_24B3ECD00();
      v37 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188, MEMORY[0x277CE0868]);
      v73 = v31;
      v74 = v37;
      v71 = swift_getWitnessTable();
      v72 = MEMORY[0x277CDFC48];
      v38 = v51;
      v39 = swift_getWitnessTable();
      v30 = v52;
      sub_24B437C90(v33, v38, v34, v39, WitnessTable);
      v40 = v50;
      (v50)(v33, v34);
      v40(v36, v34);
      goto LABEL_6;
    }
  }

  v19 = *(a1 + 40);
  sub_24B458AFC();
  v20 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188, MEMORY[0x277CE0868]);
  v61 = v19;
  v62 = v20;
  v21 = swift_getWitnessTable();
  sub_24B458AEC();
  (*(v8 + 8))(v10, v7);
  v59 = v21;
  v60 = MEMORY[0x277CDFC48];
  v22 = v51;
  v23 = swift_getWitnessTable();
  v24 = v49;
  sub_24B3ECD00();
  v25 = *(v50 + 8);
  v25(v14, v22);
  sub_24B3ECD00();
  v57 = v19;
  v58 = MEMORY[0x277CDF678];
  v26 = v55;
  v27 = swift_getWitnessTable();
  v28 = v52;
  sub_24B437B98(v14, v22, v26, v23, v27);
  v29 = v14;
  v30 = v28;
  v25(v29, v22);
  v25(v24, v22);
  v31 = v19;
  v32 = MEMORY[0x277CDF678];
LABEL_6:
  v41 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188, MEMORY[0x277CE0868]);
  v69 = v31;
  v70 = v41;
  v67 = swift_getWitnessTable();
  v68 = MEMORY[0x277CDFC48];
  v42 = swift_getWitnessTable();
  v65 = v31;
  v66 = v32;
  v43 = swift_getWitnessTable();
  v63 = v42;
  v64 = v43;
  v44 = v54;
  swift_getWitnessTable();
  sub_24B3ECD00();
  return (*(v53 + 8))(v30, v44);
}

unint64_t sub_24B403D7C()
{
  result = qword_27EFE83C8;
  if (!qword_27EFE83C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE83C8);
  }

  return result;
}

uint64_t sub_24B403E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFE8340, &qword_24B45D860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B403E80()
{
  result = qword_27EFE83D0;
  if (!qword_27EFE83D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
    sub_24B3F8F24();
    sub_24B3DF11C(&qword_2810E2800, &qword_27EFE7AD0, &qword_24B45A208, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE83D0);
  }

  return result;
}

uint64_t sub_24B403F4C(uint64_t a1)
{
  v2 = sub_24B4045C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B403F88(uint64_t a1)
{
  v2 = sub_24B4045C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B403FC4()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_24B40401C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B40503C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B404044(uint64_t a1)
{
  v2 = sub_24B404518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B404080(uint64_t a1)
{
  v2 = sub_24B404518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4040BC(uint64_t a1)
{
  v2 = sub_24B404614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4040F8(uint64_t a1)
{
  v2 = sub_24B404614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B404134(uint64_t a1)
{
  v2 = sub_24B40456C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B404170(uint64_t a1)
{
  v2 = sub_24B40456C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DescriptionTextAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE83D8, &qword_24B45D9E0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE83E0, &qword_24B45D9E8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE83E8, &qword_24B45D9F0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE83F0, &qword_24B45D9F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B404518();
  sub_24B45928C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_24B4045C0();
      v9 = v21;
      sub_24B45910C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_24B40456C();
      v9 = v24;
      sub_24B45910C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_24B404614();
    sub_24B45910C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_24B404518()
{
  result = qword_27EFE83F8;
  if (!qword_27EFE83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE83F8);
  }

  return result;
}

unint64_t sub_24B40456C()
{
  result = qword_27EFE8400;
  if (!qword_27EFE8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8400);
  }

  return result;
}

unint64_t sub_24B4045C0()
{
  result = qword_27EFE8408;
  if (!qword_27EFE8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8408);
  }

  return result;
}

unint64_t sub_24B404614()
{
  result = qword_27EFE8410;
  if (!qword_27EFE8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8410);
  }

  return result;
}

uint64_t DescriptionTextAlignment.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8418, &qword_24B45DA00);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8420, &qword_24B45DA08);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8428, &qword_24B45DA10);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8430, &unk_24B45DA18);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B404518();
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
      *v24 = &type metadata for DescriptionTextAlignment;
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
          sub_24B4045C0();
          sub_24B45905C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_24B40456C();
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
        sub_24B404614();
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

uint64_t DescriptionTextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

unint64_t sub_24B404C80()
{
  result = qword_27EFE8438;
  if (!qword_27EFE8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8438);
  }

  return result;
}

unint64_t sub_24B404D28()
{
  result = qword_27EFE8440;
  if (!qword_27EFE8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8440);
  }

  return result;
}

unint64_t sub_24B404D80()
{
  result = qword_27EFE8448;
  if (!qword_27EFE8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8448);
  }

  return result;
}

unint64_t sub_24B404DD8()
{
  result = qword_27EFE8450;
  if (!qword_27EFE8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8450);
  }

  return result;
}

unint64_t sub_24B404E30()
{
  result = qword_27EFE8458;
  if (!qword_27EFE8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8458);
  }

  return result;
}

unint64_t sub_24B404E88()
{
  result = qword_27EFE8460;
  if (!qword_27EFE8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8460);
  }

  return result;
}

unint64_t sub_24B404EE0()
{
  result = qword_27EFE8468;
  if (!qword_27EFE8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8468);
  }

  return result;
}

unint64_t sub_24B404F38()
{
  result = qword_27EFE8470;
  if (!qword_27EFE8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8470);
  }

  return result;
}

unint64_t sub_24B404F90()
{
  result = qword_27EFE8478;
  if (!qword_27EFE8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8478);
  }

  return result;
}

unint64_t sub_24B404FE8()
{
  result = qword_27EFE8480;
  if (!qword_27EFE8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8480);
  }

  return result;
}

uint64_t sub_24B40503C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696461656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
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

uint64_t sub_24B405150(uint64_t a1)
{
  v2 = sub_24B405BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40518C(uint64_t a1)
{
  v2 = sub_24B405BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4051C8()
{
  v1 = 0x7274537472617473;
  v2 = 0x646573656C616F63;
  if (*v0 != 2)
  {
    v2 = 0x6E7261457478656ELL;
  }

  if (*v0)
  {
    v1 = 0x6E6961746E69616DLL;
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

uint64_t sub_24B405260@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B406F38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B405288(uint64_t a1)
{
  v2 = sub_24B405AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4052C4(uint64_t a1)
{
  v2 = sub_24B405AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B405320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654C6B6165727473 && a2 == 0xEC0000006874676ELL)
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

uint64_t sub_24B4053AC(uint64_t a1)
{
  v2 = sub_24B405BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4053E8(uint64_t a1)
{
  v2 = sub_24B405BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B405440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B4591AC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B4054D4(uint64_t a1)
{
  v2 = sub_24B405B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B405510(uint64_t a1)
{
  v2 = sub_24B405B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B40554C(uint64_t a1)
{
  v2 = sub_24B405C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B405588(uint64_t a1)
{
  v2 = sub_24B405C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastKind.encode(to:)(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8488, &qword_24B45DE70);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v28 = v23 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8490, &qword_24B45DE78);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v27 = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8498, &qword_24B45DE80);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84A0, &qword_24B45DE88);
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84A8, &qword_24B45DE90);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = v1[1];
  v33 = *v1;
  v23[1] = v14;
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B405AFC();
  sub_24B45928C();
  if (v15 <= 1)
  {
    if (!v15)
    {
      v38 = 1;
      sub_24B405BF8();
      v16 = v35;
      sub_24B45910C();
      v17 = v26;
      sub_24B45917C();
      (*(v25 + 8))(v7, v17);
      return (*(v34 + 8))(v13, v16);
    }

    v39 = 2;
    sub_24B405BA4();
    v18 = v27;
    v16 = v35;
    sub_24B45910C();
    v36 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84C8, &qword_24B45DE98);
    sub_24B40646C(&qword_27EFE84D0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v19 = v31;
    sub_24B45918C();
    v20 = v29;
LABEL_7:
    (*(v20 + 8))(v18, v19);
    return (*(v34 + 8))(v13, v16);
  }

  if (v15 == 2)
  {
    v40 = 3;
    sub_24B405B50();
    v18 = v28;
    v16 = v35;
    sub_24B45910C();
    v19 = v32;
    sub_24B45914C();
    v20 = v30;
    goto LABEL_7;
  }

  v37 = 0;
  sub_24B405C4C();
  v22 = v35;
  sub_24B45910C();
  (*(v24 + 8))(v10, v8);
  return (*(v34 + 8))(v13, v22);
}

unint64_t sub_24B405AFC()
{
  result = qword_27EFE84B0;
  if (!qword_27EFE84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84B0);
  }

  return result;
}

unint64_t sub_24B405B50()
{
  result = qword_27EFE84B8;
  if (!qword_27EFE84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84B8);
  }

  return result;
}

unint64_t sub_24B405BA4()
{
  result = qword_27EFE84C0;
  if (!qword_27EFE84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84C0);
  }

  return result;
}

unint64_t sub_24B405BF8()
{
  result = qword_27EFE84D8;
  if (!qword_27EFE84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84D8);
  }

  return result;
}

unint64_t sub_24B405C4C()
{
  result = qword_27EFE84E0;
  if (!qword_27EFE84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84E0);
  }

  return result;
}

uint64_t AwardToastKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84E8, &qword_24B45DEA0);
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v40 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84F0, &qword_24B45DEA8);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v40 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84F8, &qword_24B45DEB0);
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8500, &qword_24B45DEB8);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8508, &unk_24B45DEC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B405AFC();
  v15 = v52;
  sub_24B45927C();
  if (!v15)
  {
    v16 = v9;
    v40 = v7;
    v41 = 0;
    v17 = v48;
    v18 = v49;
    v52 = v11;
    v20 = v50;
    v19 = v51;
    v21 = sub_24B4590FC();
    v22 = (2 * *(v21 + 16)) | 1;
    v54 = v21;
    v55 = v21 + 32;
    v56 = 0;
    v57 = v22;
    v23 = sub_24B3E380C();
    if (v23 == 4 || v56 != v57 >> 1)
    {
      v27 = sub_24B458FFC();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
      *v29 = &type metadata for AwardToastKind;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
    }

    else
    {
      if (v23 > 1u)
      {
        if (v23 == 2)
        {
          LOBYTE(v58) = 2;
          sub_24B405BA4();
          v32 = v17;
          v33 = v41;
          sub_24B45905C();
          v30 = v52;
          if (v33)
          {
            goto LABEL_10;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84C8, &qword_24B45DE98);
          sub_24B40646C(&qword_27EFE8510, MEMORY[0x277D83808], MEMORY[0x277D83978]);
          v34 = v44;
          sub_24B4590EC();
          (*(v47 + 8))(v32, v34);
          (*(v30 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v48 = v58;
          v26 = 1;
        }

        else
        {
          LOBYTE(v58) = 3;
          sub_24B405B50();
          v37 = v41;
          sub_24B45905C();
          v38 = v52;
          if (v37)
          {
            (*(v52 + 8))(v13, v10);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v53);
          }

          v48 = sub_24B4590AC();
          v25 = v39;
          (*(v46 + 8))(v18, v20);
          (*(v38 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v26 = 2;
        }

        v19 = v51;
        goto LABEL_21;
      }

      if (v23)
      {
        LOBYTE(v58) = 1;
        sub_24B405BF8();
        v35 = v41;
        sub_24B45905C();
        if (!v35)
        {
          v36 = v42;
          v48 = sub_24B4590DC();
          (*(v45 + 8))(v6, v36);
          (*(v52 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v58) = 0;
        sub_24B405C4C();
        v24 = v41;
        sub_24B45905C();
        if (!v24)
        {
          (*(v43 + 8))(v16, v40);
          (*(v52 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v48 = 0;
          v25 = 0;
          v26 = 3;
LABEL_21:
          *v19 = v48;
          *(v19 + 8) = v25;
          *(v19 + 16) = v26;
          return __swift_destroy_boxed_opaque_existential_1(v53);
        }
      }
    }

    v30 = v52;
LABEL_10:
    (*(v30 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_24B40646C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE84C8, &qword_24B45DE98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AwardToastKind.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      v3 = 0;
      return MEMORY[0x24C2403C0](v3);
    }

    MEMORY[0x24C2403C0](3);

    return sub_24B458E6C();
  }

  else
  {
    if (!*(v1 + 16))
    {
      MEMORY[0x24C2403C0](1);
      v3 = v2;
      return MEMORY[0x24C2403C0](v3);
    }

    MEMORY[0x24C2403C0](2);
    result = MEMORY[0x24C2403C0](*(v2 + 16));
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = v2 + 40;
      do
      {

        sub_24B458E6C();

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t AwardToastKind.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24B45922C();
  AwardToastKind.hash(into:)(v3);
  return sub_24B45926C();
}

uint64_t sub_24B406660()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24B45922C();
  AwardToastKind.hash(into:)(v3);
  return sub_24B45926C();
}

uint64_t sub_24B4066B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_24B45922C();
  AwardToastKind.hash(into:)(v4);
  return sub_24B45926C();
}

BOOL _s13FitnessAwards14AwardToastKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_24B3D810C(*a1, v3, 0);
        sub_24B3D810C(v5, v6, 0);
        return v2 == v5;
      }

      goto LABEL_22;
    }

    if (v7 == 1)
    {
      v10 = sub_24B40EB18(v2, *a2);
      sub_24B4070AC(v5, v6, 1);
      sub_24B4070AC(v2, v3, 1);
      sub_24B3D810C(v2, v3, 1);
      v11 = v5;
      v12 = v6;
      v13 = 1;
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
LABEL_21:

LABEL_22:
      sub_24B4070AC(v5, v6, v7);
      sub_24B3D810C(v2, v3, v4);
      sub_24B3D810C(v5, v6, v7);
      return 0;
    }

    if (v2 != v5 || v3 != v6)
    {
      v10 = sub_24B4591AC();
      sub_24B4070AC(v5, v6, 2);
      sub_24B4070AC(v2, v3, 2);
      sub_24B3D810C(v2, v3, 2);
      v11 = v5;
      v12 = v6;
      v13 = 2;
LABEL_14:
      sub_24B3D810C(v11, v12, v13);
      return v10 & 1;
    }

    sub_24B4070AC(v2, v3, 2);
    sub_24B4070AC(v2, v3, 2);
    sub_24B3D810C(v2, v3, 2);
    v15 = v2;
    v16 = v3;
    v17 = 2;
  }

  else
  {
    if (v7 != 3 || (v6 | v5) != 0)
    {
      goto LABEL_22;
    }

    sub_24B3D810C(*a1, v3, 3);
    v15 = 0;
    v16 = 0;
    v17 = 3;
  }

  sub_24B3D810C(v15, v16, v17);
  return 1;
}

unint64_t sub_24B406910()
{
  result = qword_27EFE8518;
  if (!qword_27EFE8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8518);
  }

  return result;
}

uint64_t sub_24B406964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B4069AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_24B4069F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24B406A6C()
{
  result = qword_27EFE8520;
  if (!qword_27EFE8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8520);
  }

  return result;
}

unint64_t sub_24B406AC4()
{
  result = qword_27EFE8528;
  if (!qword_27EFE8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8528);
  }

  return result;
}

unint64_t sub_24B406B1C()
{
  result = qword_27EFE8530;
  if (!qword_27EFE8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8530);
  }

  return result;
}

unint64_t sub_24B406B74()
{
  result = qword_27EFE8538;
  if (!qword_27EFE8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8538);
  }

  return result;
}

unint64_t sub_24B406BCC()
{
  result = qword_27EFE8540;
  if (!qword_27EFE8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8540);
  }

  return result;
}

unint64_t sub_24B406C24()
{
  result = qword_27EFE8548;
  if (!qword_27EFE8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8548);
  }

  return result;
}

unint64_t sub_24B406C7C()
{
  result = qword_27EFE8550;
  if (!qword_27EFE8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8550);
  }

  return result;
}

unint64_t sub_24B406CD4()
{
  result = qword_27EFE8558;
  if (!qword_27EFE8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8558);
  }

  return result;
}

unint64_t sub_24B406D2C()
{
  result = qword_27EFE8560;
  if (!qword_27EFE8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8560);
  }

  return result;
}

unint64_t sub_24B406D84()
{
  result = qword_27EFE8568;
  if (!qword_27EFE8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8568);
  }

  return result;
}

unint64_t sub_24B406DDC()
{
  result = qword_27EFE8570;
  if (!qword_27EFE8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8570);
  }

  return result;
}

unint64_t sub_24B406E34()
{
  result = qword_27EFE8578;
  if (!qword_27EFE8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8578);
  }

  return result;
}

unint64_t sub_24B406E8C()
{
  result = qword_27EFE8580;
  if (!qword_27EFE8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8580);
  }

  return result;
}

unint64_t sub_24B406EE4()
{
  result = qword_27EFE8588;
  if (!qword_27EFE8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8588);
  }

  return result;
}

uint64_t sub_24B406F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274537472617473 && a2 == 0xEB000000006B6165;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6961746E69616DLL && a2 == 0xEE006B6165727453 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573656C616F63 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7261457478656ELL && a2 == 0xEC000000656C6261)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B4070AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return v3;
}

uint64_t sub_24B4070D0()
{
  if (*v0)
  {
    return 0x6B6165727473;
  }

  else
  {
    return 1818324839;
  }
}

uint64_t sub_24B407100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1818324839 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6165727473 && a2 == 0xE600000000000000)
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

uint64_t sub_24B4071D8(uint64_t a1)
{
  v2 = sub_24B407B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B407214(uint64_t a1)
{
  v2 = sub_24B407B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B407250()
{
  v1 = 0x73736572676F7270;
  if (*v0 != 1)
  {
    v1 = 1818324839;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B4072A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B407C40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4072D0(uint64_t a1)
{
  v2 = sub_24B407BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40730C(uint64_t a1)
{
  v2 = sub_24B407BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B407348()
{
  v1 = 0x6261646E65747865;
  if (*v0 != 1)
  {
    v1 = 0x53747365676E6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654C6B6165727473;
  }
}

uint64_t sub_24B4073BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B407D64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4073E4(uint64_t a1)
{
  v2 = sub_24B407B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B407420(uint64_t a1)
{
  v2 = sub_24B407B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardProgress.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8590, &qword_24B45E590);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8598, &qword_24B45E598);
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85A0, &qword_24B45E5A0);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B407B44();
  sub_24B45928C();
  v20[1] = *(v2 + 16);
  if (*(v2 + 32))
  {
    v33 = 1;
    sub_24B407B98();
    sub_24B45910C();
    v32 = 0;
    v14 = v23;
    v13 = v24;
    sub_24B45917C();
    if (!v13)
    {
      v31 = 1;
      sub_24B45915C();
      v30 = 2;
      sub_24B45917C();
      (*(v22 + 8))(v6, v14);
      return (*(v25 + 8))(v12, v10);
    }

    v15 = *(v22 + 8);
    v16 = v6;
    v17 = v14;
LABEL_8:
    v15(v16, v17);
    return (*(v25 + 8))(v12, v10);
  }

  v29 = 0;
  sub_24B407BEC();
  sub_24B45910C();
  v28 = 0;
  v18 = v24;
  sub_24B45914C();
  if (v18)
  {
    v15 = *(v21 + 8);
    v16 = v9;
    v17 = v7;
    goto LABEL_8;
  }

  v27 = 1;
  sub_24B45916C();
  v26 = 2;
  sub_24B45916C();
  (*(v21 + 8))(v9, v7);
  return (*(v25 + 8))(v12, v10);
}

double AwardProgress.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24B407E90(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_24B407860@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24B407E90(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t AwardProgress.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  if (v1[4])
  {
    MEMORY[0x24C2403C0](1);
    MEMORY[0x24C2403C0](*&v2);
    sub_24B45924C();
    return MEMORY[0x24C2403C0](v3);
  }

  else
  {
    v5 = v1[3];
    MEMORY[0x24C2403C0](0);
    sub_24B458E6C();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x24C2403E0](v6);
    v7 = 0.0;
    if (v5 != 0.0)
    {
      v7 = v5;
    }

    return MEMORY[0x24C2403E0](*&v7);
  }
}

uint64_t AwardProgress.hashValue.getter()
{
  sub_24B45922C();
  AwardProgress.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B4079A4()
{
  sub_24B45922C();
  AwardProgress.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B4079E8(uint64_t a1)
{
  sub_24B45922C();
  AwardProgress.hash(into:)(v2);
  return sub_24B45926C();
}

uint64_t sub_24B407A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s13FitnessAwards13AwardProgressO2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s13FitnessAwards13AwardProgressO2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[2];
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      v7 = *(a2 + 16);
      v8 = (v4 == *a2) & ~(v5 ^ *(a2 + 8));
      if (*&v6 == v7)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a1[2];
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  if (v4 == *a2 && v5 == *(a2 + 8))
  {
    if (v13 != v6)
    {
      return 0;
    }

    return v10 == v12;
  }

  v15 = sub_24B4591AC();
  result = 0;
  if ((v15 & 1) != 0 && v13 == v11)
  {
    return v10 == v12;
  }

  return result;
}

unint64_t sub_24B407B44()
{
  result = qword_2810E3608;
  if (!qword_2810E3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3608);
  }

  return result;
}

unint64_t sub_24B407B98()
{
  result = qword_2810E35D8;
  if (!qword_2810E35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35D8);
  }

  return result;
}

unint64_t sub_24B407BEC()
{
  result = qword_2810E35F0;
  if (!qword_2810E35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35F0);
  }

  return result;
}

uint64_t sub_24B407C40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B407D64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C6B6165727473 && a2 == 0xEC0000006874676ELL;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6261646E65747865 && a2 == 0xEA0000000000656CLL || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274)
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

uint64_t sub_24B407E90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85C0, &qword_24B45EA40);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85C8, &qword_24B45EA48);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85D0, &unk_24B45EA50);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B407B44();
  v13 = v45;
  sub_24B45927C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v14 = v5;
  v45 = v9;
  v15 = sub_24B4590FC();
  v16 = (2 * *(v15 + 16)) | 1;
  v47 = v15;
  v48 = v15 + 32;
  v49 = 0;
  v50 = v16;
  v17 = sub_24B3E3810();
  if (v17 == 2 || v49 != v50 >> 1)
  {
    v21 = sub_24B458FFC();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v23 = &type metadata for AwardProgress;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
    swift_willThrow();
    (*(v45 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v51 = v17;
  if (v17)
  {
    v52 = 1;
    sub_24B407B98();
    sub_24B45905C();
    v18 = v45;
    v52 = 0;
    v19 = v42;
    v20 = sub_24B4590DC();
    v52 = 1;
    v33 = sub_24B4590BC();
    v40 = v20;
    v52 = 2;
    v34 = sub_24B4590DC();
    (*(v44 + 8))(v4, v19);
    (*(v18 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v36 = v33 & 1;
    v37 = 0;
  }

  else
  {
    v52 = 0;
    sub_24B407BEC();
    v25 = v7;
    sub_24B45905C();
    v26 = v45;
    v27 = v8;
    v52 = 0;
    v28 = sub_24B4590AC();
    v36 = v29;
    v40 = v28;
    v52 = 1;
    sub_24B4590CC();
    v30 = v43;
    v32 = v31;
    v52 = 2;
    sub_24B4590CC();
    v37 = v35;
    (*(v30 + 8))(v25, v14);
    (*(v26 + 8))(v11, v27);
    swift_unknownObjectRelease();
    v34 = v32;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v46);
  v38 = v41;
  *v41 = v40;
  v38[1] = v36;
  v38[2] = v34;
  v38[3] = v37;
  *(v38 + 32) = v51 & 1;
  return result;
}

unint64_t sub_24B4084C8()
{
  result = qword_2810E35B0;
  if (!qword_2810E35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35B0);
  }

  return result;
}

uint64_t sub_24B40851C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24B408564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_24B4085FC()
{
  result = qword_27EFE85A8;
  if (!qword_27EFE85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85A8);
  }

  return result;
}

unint64_t sub_24B408654()
{
  result = qword_27EFE85B0;
  if (!qword_27EFE85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85B0);
  }

  return result;
}

unint64_t sub_24B4086AC()
{
  result = qword_27EFE85B8;
  if (!qword_27EFE85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85B8);
  }

  return result;
}

unint64_t sub_24B408704()
{
  result = qword_2810E35E0;
  if (!qword_2810E35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35E0);
  }

  return result;
}

unint64_t sub_24B40875C()
{
  result = qword_2810E35E8;
  if (!qword_2810E35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35E8);
  }

  return result;
}

unint64_t sub_24B4087B4()
{
  result = qword_2810E35C8;
  if (!qword_2810E35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35C8);
  }

  return result;
}

unint64_t sub_24B40880C()
{
  result = qword_2810E35D0;
  if (!qword_2810E35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35D0);
  }

  return result;
}

unint64_t sub_24B408864()
{
  result = qword_2810E35F8;
  if (!qword_2810E35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35F8);
  }

  return result;
}

unint64_t sub_24B4088BC()
{
  result = qword_2810E3600;
  if (!qword_2810E3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3600);
  }

  return result;
}

uint64_t sub_24B408924()
{
  if (*v0)
  {
    return 0x64656E7261656E75;
  }

  else
  {
    return 0x64656E726165;
  }
}

uint64_t sub_24B40895C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656E726165 && a2 == 0xE600000000000000;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656E7261656E75 && a2 == 0xE800000000000000)
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

uint64_t sub_24B408A34(uint64_t a1)
{
  v2 = sub_24B408E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B408A70(uint64_t a1)
{
  v2 = sub_24B408E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B408AAC(uint64_t a1)
{
  v2 = sub_24B408F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B408AE8(uint64_t a1)
{
  v2 = sub_24B408F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B408B24(uint64_t a1)
{
  v2 = sub_24B408EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B408B60(uint64_t a1)
{
  v2 = sub_24B408EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardEarnedState.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85D8, &qword_24B45EA60);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85E0, &qword_24B45EA68);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85E8, &qword_24B45EA70);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B408E58();
  sub_24B45928C();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B408EAC();
    sub_24B45910C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B408F00();
    sub_24B45910C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B408E58()
{
  result = qword_27EFE85F0;
  if (!qword_27EFE85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85F0);
  }

  return result;
}

unint64_t sub_24B408EAC()
{
  result = qword_27EFE85F8;
  if (!qword_27EFE85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85F8);
  }

  return result;
}

unint64_t sub_24B408F00()
{
  result = qword_27EFE8600;
  if (!qword_27EFE8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8600);
  }

  return result;
}

uint64_t sub_24B408F70@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B40902C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t AwardEarnedState.hashValue.getter(char a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1 & 1);
  return sub_24B45926C();
}

uint64_t sub_24B40902C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8648, &qword_24B45EDE0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8650, &qword_24B45EDE8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8658, &unk_24B45EDF0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B408E58();
  v11 = v26;
  sub_24B45927C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B4590FC();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B3E3810();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B458FFC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v19 = &type metadata for AwardEarnedState;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B408EAC();
    sub_24B45905C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B408F00();
    sub_24B45905C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B4094EC()
{
  result = qword_27EFE8608;
  if (!qword_27EFE8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8608);
  }

  return result;
}

unint64_t sub_24B409584()
{
  result = qword_27EFE8610;
  if (!qword_27EFE8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8610);
  }

  return result;
}

unint64_t sub_24B4095DC()
{
  result = qword_27EFE8618;
  if (!qword_27EFE8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8618);
  }

  return result;
}

unint64_t sub_24B409634()
{
  result = qword_27EFE8620;
  if (!qword_27EFE8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8620);
  }

  return result;
}

unint64_t sub_24B40968C()
{
  result = qword_27EFE8628;
  if (!qword_27EFE8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8628);
  }

  return result;
}

unint64_t sub_24B4096E4()
{
  result = qword_27EFE8630;
  if (!qword_27EFE8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8630);
  }

  return result;
}

unint64_t sub_24B40973C()
{
  result = qword_27EFE8638;
  if (!qword_27EFE8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8638);
  }

  return result;
}

unint64_t sub_24B409794()
{
  result = qword_27EFE8640;
  if (!qword_27EFE8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8640);
  }

  return result;
}

__n128 AwardDetailFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for AwardDetailFeature(0);
  sub_24B45835C();
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for AwardDetailFeature(uint64_t a1)
{
  result = qword_27EFE8680;
  if (!qword_27EFE8680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v192 = a3;
  v194 = a2;
  v5 = sub_24B45836C();
  v187 = *(v5 - 8);
  v188 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for AwardDetailFeature(0);
  v189 = *(v186 - 8);
  v8 = *(v189 + 64);
  v9 = MEMORY[0x28223BE20](v186);
  v184 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v185 = &v181 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F60, &qword_24B45BCE0);
  v190 = *(v11 - 8);
  v191 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v182 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v181 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v181 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v181 - v20;
  State = type metadata accessor for AwardEarnedLoadState(0);
  v23 = MEMORY[0x28223BE20](State);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v181 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v181 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v181 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v36);
  v38 = MEMORY[0x28223BE20](&v181 - v37);
  v39 = MEMORY[0x28223BE20](v38);
  v183 = a4;
  if (a4 > 3u)
  {
    switch(a4)
    {
      case 4u:
        v78 = *v194;
        v77 = v194[1];
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
        v80 = v79[16];
        v81 = v79[20];
        v82 = &v21[v79[24]];
        v196 = v78;
        v197 = v77;
        v198 = 1;
        sub_24B40C6A4();
        swift_bridgeObjectRetain_n();
        sub_24B458F9C();
        sub_24B458EFC();
        v83 = *MEMORY[0x277D04400];
        v84 = sub_24B458D4C();
        (*(*(v84 - 8) + 104))(&v21[v80], v83, v84);
        v85 = *MEMORY[0x277D043E0];
        v86 = sub_24B458D3C();
        (*(*(v86 - 8) + 104))(&v21[v81], v85, v86);
        v87 = v185;
        sub_24B40C7A0(v193, v185, type metadata accessor for AwardDetailFeature);
        v88 = (*(v189 + 80) + 16) & ~*(v189 + 80);
        v89 = swift_allocObject();
        sub_24B40C808(v87, v89 + v88);
        v90 = (v89 + ((v8 + v88 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v90 = v78;
        v90[1] = v77;
        *v82 = &unk_24B45EE38;
        *(v82 + 1) = v89;
        v92 = v190;
        v91 = v191;
        (*(v190 + 104))(v21, *MEMORY[0x277D043B0], v191);
        v67 = v192;
        v68 = *v192;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_24B3F1348(0, v68[2] + 1, 1, v68);
        }

        v94 = v68[2];
        v93 = v68[3];
        if (v94 >= v93 >> 1)
        {
          v68 = sub_24B3F1348((v93 > 1), v94 + 1, 1, v68);
        }

        v68[2] = v94 + 1;
        result = (*(v92 + 32))(v68 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v94, v21, v91);
        goto LABEL_30;
      case 5u:
        v97 = *v194;
        v96 = v194[1];
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
        v99 = v98[16];
        v100 = v98[20];
        v101 = &v16[v98[24]];
        v196 = v97;
        v197 = v96;
        v198 = 2;
        sub_24B40C6A4();
        swift_bridgeObjectRetain_n();
        sub_24B458F9C();
        sub_24B458EFC();
        v102 = *MEMORY[0x277D04400];
        v103 = sub_24B458D4C();
        (*(*(v103 - 8) + 104))(&v16[v99], v102, v103);
        v104 = v184;
        sub_24B40C7A0(v193, v184, type metadata accessor for AwardDetailFeature);
        v105 = (*(v189 + 80) + 32) & ~*(v189 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = v97;
        *(v106 + 24) = v96;
        sub_24B40C808(v104, v106 + v105);
        *v101 = &unk_24B45EE18;
        *(v101 + 1) = v106;
        v107 = *MEMORY[0x277D043E8];
        v108 = sub_24B458D3C();
        (*(*(v108 - 8) + 104))(&v16[v100], v107, v108);
        v110 = v190;
        v109 = v191;
        (*(v190 + 104))(v16, *MEMORY[0x277D043B0], v191);
        v67 = v192;
        v68 = *v192;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_24B3F1348(0, v68[2] + 1, 1, v68);
        }

        v112 = v68[2];
        v111 = v68[3];
        if (v112 >= v111 >> 1)
        {
          v68 = sub_24B3F1348((v111 > 1), v112 + 1, 1, v68);
        }

        v68[2] = v112 + 1;
        result = (*(v110 + 32))(v68 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v112, v16, v109);
        goto LABEL_30;
      case 6u:
        v47 = v40;
        v48 = v44;
        v49 = v194;
        v51 = *v194;
        v50 = v194[1];
        v52 = v45;
        v53 = *(type metadata accessor for AwardDetailState(0) + 28);
        sub_24B40C7A0(v49 + v53, v52, type metadata accessor for AwardEarnedLoadState);
        v189 = v52;
        sub_24B40C7A0(v52, v26, type metadata accessor for AwardEarnedLoadState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

        sub_24B400E14(v26);
        if (EnumCaseMultiPayload == 2)
        {
          sub_24B400E14(v49 + v53);
          (*(v187 + 16))(v49 + v53, v193 + *(v186 + 20), v188);
          swift_storeEnumTagMultiPayload();
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
          v56 = v55[16];
          v57 = v55[20];
          v58 = v182;
          v59 = &v182[v55[24]];
          v196 = v51;
          v197 = v50;
          v198 = 3;
          sub_24B40C6A4();

          sub_24B458F9C();
          sub_24B458EFC();
          v60 = swift_allocObject();
          *(v60 + 16) = v51;
          *(v60 + 24) = v50;
          *v59 = &unk_24B45EE08;
          *(v59 + 1) = v60;
          v61 = *MEMORY[0x277D043F8];
          v62 = sub_24B458D4C();
          (*(*(v62 - 8) + 104))(&v58[v56], v61, v62);
          v63 = *MEMORY[0x277D043E8];
          v64 = sub_24B458D3C();
          (*(*(v64 - 8) + 104))(&v58[v57], v63, v64);
          v66 = v190;
          v65 = v191;
          (*(v190 + 104))(v58, *MEMORY[0x277D043B0], v191);
          v67 = v192;
          v68 = *v192;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = sub_24B3F1348(0, v68[2] + 1, 1, v68);
          }

          v69 = v189;
          v71 = v68[2];
          v70 = v68[3];
          v72 = v71 + 1;
          if (v71 >= v70 >> 1)
          {
            v68 = sub_24B3F1348((v70 > 1), v71 + 1, 1, v68);
            v69 = v189;
          }

LABEL_29:
          sub_24B400E14(v69);
          v68[2] = v72;
          result = (*(v66 + 32))(v68 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v71, v58, v65);
LABEL_30:
          *v67 = v68;
          return result;
        }

        if (qword_2810E3610 != -1)
        {
          swift_once();
        }

        v165 = sub_24B45847C();
        __swift_project_value_buffer(v165, qword_2810E3618);
        v166 = v189;
        sub_24B40C7A0(v189, v47, type metadata accessor for AwardEarnedLoadState);

        v167 = sub_24B45845C();
        v168 = sub_24B458F4C();

        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v196 = v170;
          *v169 = 136315394;
          v171 = sub_24B3F17BC(v51, v50, &v196);

          *(v169 + 4) = v171;
          *(v169 + 12) = 2080;
          sub_24B40C7A0(v47, v48, type metadata accessor for AwardEarnedLoadState);
          v172 = sub_24B458E4C();
          v174 = v173;
          sub_24B400E14(v47);
          v175 = sub_24B3F17BC(v172, v174, &v196);

          *(v169 + 14) = v175;
          _os_log_impl(&dword_24B3CE000, v167, v168, "[AwardDetailFeature] View appeared for %s but load state was %s, returning.", v169, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C2408A0](v170, -1, -1);
          MEMORY[0x24C2408A0](v169, -1, -1);
        }

        else
        {

          sub_24B400E14(v47);
        }

        v76 = v166;
        return sub_24B400E14(v76);
    }

LABEL_31:
    v130 = v42;
    v193 = v39;
    v131 = &v181 - v43;
    v189 = v44;
    v132 = v194;
    v134 = *v194;
    v133 = v194[1];
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v135 = sub_24B45847C();
    __swift_project_value_buffer(v135, qword_2810E3618);

    v136 = sub_24B45845C();
    v137 = sub_24B458F4C();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v196 = v139;
      *v138 = 136315394;
      *(v138 + 4) = sub_24B3F17BC(v134, v133, &v196);
      *(v138 + 12) = 2080;
      v195 = v183 & 1;
      v140 = sub_24B458E4C();
      v142 = sub_24B3F17BC(v140, v141, &v196);

      *(v138 + 14) = v142;
      _os_log_impl(&dword_24B3CE000, v136, v137, "[AwardDetailFeature] (%s) Earned state fetched: %s", v138, 0x16u);
      swift_arrayDestroy();
      v143 = v139;
      v132 = v194;
      MEMORY[0x24C2408A0](v143, -1, -1);
      MEMORY[0x24C2408A0](v138, -1, -1);
    }

    v144 = *(type metadata accessor for AwardDetailState(0) + 28);
    sub_24B40C7A0(v132 + v144, v131, type metadata accessor for AwardEarnedLoadState);
    sub_24B40C7A0(v131, v130, type metadata accessor for AwardEarnedLoadState);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_24B400E14(v131);
      (*(v187 + 8))(v130, v188);
      sub_24B400E14(v132 + v144);
      *(v132 + v144) = v183 & 1;
      return swift_storeEnumTagMultiPayload();
    }

    sub_24B400E14(v130);
    v145 = v193;
    sub_24B40C7A0(v131, v193, type metadata accessor for AwardEarnedLoadState);
    v146 = sub_24B45845C();
    v147 = sub_24B458F4C();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v196 = v149;
      *v148 = 136315138;
      sub_24B40C7A0(v145, v189, type metadata accessor for AwardEarnedLoadState);
      v150 = sub_24B458E4C();
      v152 = v151;
      sub_24B400E14(v145);
      v153 = sub_24B3F17BC(v150, v152, &v196);

      *(v148 + 4) = v153;
      _os_log_impl(&dword_24B3CE000, v146, v147, "[AwardDetailFeature] Current state is %s, skipping .fetched update", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x24C2408A0](v149, -1, -1);
      MEMORY[0x24C2408A0](v148, -1, -1);
    }

    else
    {

      sub_24B400E14(v145);
    }

    v76 = v131;
    return sub_24B400E14(v76);
  }

  if (a4 == 2)
  {
    v113 = v41;
    v189 = v44;
    v114 = v194;
    v116 = *v194;
    v115 = v194[1];
    v117 = v46;
    v118 = *(type metadata accessor for AwardDetailState(0) + 28);
    sub_24B40C7A0(v114 + v118, v117, type metadata accessor for AwardEarnedLoadState);
    v185 = v117;
    sub_24B40C7A0(v117, v31, type metadata accessor for AwardEarnedLoadState);
    v119 = swift_getEnumCaseMultiPayload();

    sub_24B400E14(v31);
    if (v119 == 2)
    {
      sub_24B400E14(v114 + v118);
      (*(v187 + 16))(v114 + v118, v193 + *(v186 + 20), v188);
      swift_storeEnumTagMultiPayload();
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v121 = v120[16];
      v122 = v120[20];
      v58 = v19;
      v123 = &v19[v120[24]];
      v196 = v116;
      v197 = v115;
      v198 = 0;
      sub_24B40C6A4();

      sub_24B458F9C();
      sub_24B458EFC();
      v124 = swift_allocObject();
      *(v124 + 16) = v116;
      *(v124 + 24) = v115;
      *v123 = &unk_24B45EE28;
      *(v123 + 1) = v124;
      v125 = *MEMORY[0x277D043F8];
      v126 = sub_24B458D4C();
      (*(*(v126 - 8) + 104))(&v58[v121], v125, v126);
      v127 = *MEMORY[0x277D043E8];
      v128 = sub_24B458D3C();
      (*(*(v128 - 8) + 104))(&v58[v122], v127, v128);
      v66 = v190;
      v65 = v191;
      (*(v190 + 104))(v58, *MEMORY[0x277D043B0], v191);
      v67 = v192;
      v68 = *v192;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_24B3F1348(0, v68[2] + 1, 1, v68);
      }

      v69 = v185;
      v71 = v68[2];
      v129 = v68[3];
      v72 = v71 + 1;
      if (v71 >= v129 >> 1)
      {
        v68 = sub_24B3F1348((v129 > 1), v71 + 1, 1, v68);
        v69 = v185;
      }

      goto LABEL_29;
    }

    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v154 = sub_24B45847C();
    __swift_project_value_buffer(v154, qword_2810E3618);
    v155 = v185;
    sub_24B40C7A0(v185, v113, type metadata accessor for AwardEarnedLoadState);

    v156 = sub_24B45845C();
    v157 = sub_24B458F4C();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v196 = v159;
      *v158 = 136315394;
      v160 = sub_24B3F17BC(v116, v115, &v196);

      *(v158 + 4) = v160;
      *(v158 + 12) = 2080;
      sub_24B40C7A0(v113, v189, type metadata accessor for AwardEarnedLoadState);
      v161 = sub_24B458E4C();
      v163 = v162;
      sub_24B400E14(v113);
      v164 = sub_24B3F17BC(v161, v163, &v196);

      *(v158 + 14) = v164;
      _os_log_impl(&dword_24B3CE000, v156, v157, "[AwardDetailFeature] Notified of earned load state being cleared for %s but load state was %s, returning", v158, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C2408A0](v159, -1, -1);
      MEMORY[0x24C2408A0](v158, -1, -1);
    }

    else
    {

      sub_24B400E14(v113);
    }

    v76 = v155;
    return sub_24B400E14(v76);
  }

  if (a4 != 3)
  {
    goto LABEL_31;
  }

  v73 = v7;
  v74 = *(type metadata accessor for AwardDetailState(0) + 28);
  v75 = v194;
  sub_24B40C7A0(v194 + v74, v35, type metadata accessor for AwardEarnedLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    v76 = v35;
    return sub_24B400E14(v76);
  }

  v176 = v187;
  v177 = v73;
  v178 = v35;
  v179 = v188;
  (*(v187 + 32))(v73, v178, v188);
  v180 = sub_24B45834C();
  result = (*(v176 + 8))(v177, v179);
  if (v180)
  {
    sub_24B400E14(v75 + v74);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24B40AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  sub_24B458EEC();
  v4[10] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_24B40AEB4, v6, v5);
}

uint64_t sub_24B40AEB4()
{
  v5 = (**(v0 + 56) + ***(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_24B40AFA8;
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v5(v3, v2);
}

uint64_t sub_24B40AFA8(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 139) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_24B40B45C;
  }

  else
  {
    v7 = sub_24B40B0F0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B40B0F0()
{
  v18 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);

  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 139);
  if (v4)
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    v10 = v5 & 1;
    *(v0 + 138) = v5 & 1;
    v11 = sub_24B458E4C();
    v13 = sub_24B3F17BC(v11, v12, &v17);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24B3F17BC(v7, v6, &v17);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardDetailFeature] Sending .earnedStateFetched(%s) action for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v9, -1, -1);
    MEMORY[0x24C2408A0](v8, -1, -1);
  }

  else
  {

    v10 = v5 & 1;
  }

  *(v0 + 137) = v10;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8698, &unk_24B45EFE0);
  *v14 = v0;
  v14[1] = sub_24B40B33C;

  return MEMORY[0x282159B08](v0 + 137, v15);
}

uint64_t sub_24B40B33C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B3F0F48, v3, v2);
}

uint64_t sub_24B40B45C()
{
  v16 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  MEMORY[0x24C2406E0](v1);
  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  MEMORY[0x24C2406D0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
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
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardDetailFeature] Failed to fetch earned state for %s with error %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  *(v0 + 136) = 3;
  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8698, &unk_24B45EFE0);
  *v12 = v0;
  v12[1] = sub_24B40B6B0;

  return MEMORY[0x282159B08](v0 + 136, v13);
}

uint64_t sub_24B40B6B0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B40B7D0, v3, v2);
}

uint64_t sub_24B40B7D0()
{
  v1 = *(v0 + 112);

  MEMORY[0x24C2406D0](v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B40B840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_24B458EEC();
  v3[5] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_24B40B8DC, v5, v4);
}

uint64_t sub_24B40B8DC()
{
  v12 = v0;
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
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B3F17BC(v5, v4, &v11);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardDetailFeature] Sending .fetchEarnedState(%s) action for earnedLoadStateCleared", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  *(v0 + 72) = 4;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8698, &unk_24B45EFE0);
  *v8 = v0;
  v8[1] = sub_24B40BAC8;

  return MEMORY[0x282159B08](v0 + 72, v9);
}

uint64_t sub_24B40BAC8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B40CDC0, v3, v2);
}

uint64_t sub_24B40BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B458EEC();
  v4[5] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B40BC84, v6, v5);
}

uint64_t sub_24B40BC84()
{
  v12 = v0;
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
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B3F17BC(v5, v4, &v11);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardDetailFeature] Refreshing suggested workouts canvas for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v10 = (*(v0[4] + 16) + **(v0[4] + 16));
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_24B40BE9C;

  return v10();
}

uint64_t sub_24B40BE9C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_24B40C03C;
  }

  else
  {
    v5 = sub_24B40BFD8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B40BFD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B40C03C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B40C0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_24B458EEC();
  v3[5] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_24B40C13C, v5, v4);
}

uint64_t sub_24B40C13C()
{
  v12 = v0;
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
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B3F17BC(v5, v4, &v11);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardDetailFeature] Sending .fetchEarnedState(%s) action on view appeared", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  *(v0 + 72) = 4;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8698, &unk_24B45EFE0);
  *v8 = v0;
  v8[1] = sub_24B40BAC8;

  return MEMORY[0x282159B08](v0 + 72, v9);
}

uint64_t AwardDetailFeature.dispose(localState:sharedState:)(uint64_t a1)
{
  State = type metadata accessor for AwardEarnedLoadState(0);
  MEMORY[0x28223BE20](State);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B45836C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for AwardDetailState(0) + 28);
  sub_24B40C7A0(a1 + v9, v4, type metadata accessor for AwardEarnedLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_24B400E14(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  type metadata accessor for AwardDetailFeature(0);
  v11 = sub_24B45834C();
  result = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    sub_24B400E14(a1 + v9);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24B40C4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  State = type metadata accessor for AwardEarnedLoadState(0);
  MEMORY[0x28223BE20](State);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B45836C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for AwardDetailState(0) + 28);
  sub_24B40C7A0(a2 + v11, v6, type metadata accessor for AwardEarnedLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_24B400E14(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = sub_24B45834C();
  result = (*(v8 + 8))(v10, v7);
  if (v13)
  {
    sub_24B400E14(a2 + v11);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_24B40C6A4()
{
  result = qword_27EFE8660;
  if (!qword_27EFE8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8660);
  }

  return result;
}

uint64_t sub_24B40C6F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F2574;

  return sub_24B40C0A0(a1, v5, v4);
}

uint64_t sub_24B40C7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B40C808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardDetailFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B40C86C(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardDetailFeature(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F1E60;

  return sub_24B40BBE8(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B40C958(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F2574;

  return sub_24B40B840(a1, v5, v4);
}

uint64_t sub_24B40CA00(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardDetailFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B3F2574;

  return sub_24B40AE18(a1, v1 + v5, v7, v8);
}

unint64_t sub_24B40CB1C()
{
  result = qword_27EFE8668;
  if (!qword_27EFE8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8668);
  }

  return result;
}

unint64_t sub_24B40CB74()
{
  result = qword_27EFE8670;
  if (!qword_27EFE8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8670);
  }

  return result;
}

unint64_t sub_24B40CBCC()
{
  result = qword_27EFE8678;
  if (!qword_27EFE8678)
  {
    type metadata accessor for AwardDetailState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8678);
  }

  return result;
}

uint64_t sub_24B40CC4C(uint64_t a1)
{
  result = sub_24B45836C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B40CCF0()
{
  result = qword_27EFE8690;
  if (!qword_27EFE8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8690);
  }

  return result;
}

uint64_t sub_24B40CD44(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 3)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_24B4591AC();
  }
}

uint64_t sub_24B40CDC4()
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  sub_24B458E6C();
  return sub_24B45926C();
}

uint64_t sub_24B40CE24(uint64_t a1)
{
  MEMORY[0x24C2403C0](0);

  return sub_24B458E6C();
}

uint64_t sub_24B40CE78(uint64_t a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  sub_24B458E6C();
  return sub_24B45926C();
}

uint64_t sub_24B40CED4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B4591AC();
  }
}

__n128 AchievementEnvironmentCacheMonitorFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t AchievementEnvironmentCacheMonitorFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, unint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F50, &qword_24B45BCD0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v85 - v10;
  State = type metadata accessor for AwardToastLoadState(0);
  v13 = MEMORY[0x28223BE20](State);
  v14 = MEMORY[0x28223BE20](v13);
  v87 = v85 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v85 - v17;
  if (*a4)
  {
    v20 = *v4;
    v19 = v4[1];
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
    v22 = v21[16];
    v23 = v21[20];
    v24 = &v11[v21[24]];
    v88[0] = 0x726F74696E6F6DLL;
    v88[1] = 0xE700000000000000;
    sub_24B40E210();
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
    *v24 = &unk_24B45EFF8;
    *(v24 + 1) = v29;
    (*(v9 + 104))(v11, *MEMORY[0x277D043B0], v8);
    v30 = *a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_24B3F136C(0, v30[2] + 1, 1, v30);
    }

    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_24B3F136C((v31 > 1), v32 + 1, 1, v30);
    }

    v30[2] = v32 + 1;
    result = (*(v9 + 32))(v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v11, v8);
    *a3 = v30;
  }

  else
  {
    v85[0] = v16;
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
    v86 = v18;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v88[0] = v40;
      *v39 = 136315138;
      type metadata accessor for AwardEarnedLoadState(0);
      v41 = sub_24B458D7C();
      v43 = sub_24B3F17BC(v41, v42, v88);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_24B3CE000, v36, v37, "[AchievementEnvironmentCacheMonitor] Clearing previous earned load states %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x24C2408A0](v40, -1, -1);
      MEMORY[0x24C2408A0](v39, -1, -1);
    }

    v44 = a2[1];

    v45 = sub_24B45845C();
    v46 = sub_24B458F4C();

    v47 = os_log_type_enabled(v45, v46);
    v85[2] = v44;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v88[0] = v49;
      *v48 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8090, &qword_24B45C2C0);
      v50 = sub_24B458D7C();
      v52 = sub_24B3F17BC(v50, v51, v88);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_24B3CE000, v45, v46, "[AchievementEnvironmentCacheMonitor] Clearing previous image load states %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x24C2408A0](v49, -1, -1);
      MEMORY[0x24C2408A0](v48, -1, -1);
    }

    v53 = a2[2];

    v54 = sub_24B45845C();
    v55 = sub_24B458F4C();

    v56 = os_log_type_enabled(v54, v55);
    v85[3] = v34;
    v85[1] = v53;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v88[0] = v58;
      *v57 = 136315138;
      type metadata accessor for AwardProgressLoadState(0);
      v59 = sub_24B458D7C();
      v61 = sub_24B3F17BC(v59, v60, v88);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_24B3CE000, v54, v55, "[AchievementEnvironmentCacheMonitor] Clearing previous progress load states %s", v57, 0xCu);
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
      v88[0] = v65;
      *v64 = 136315138;
      v66 = sub_24B458D7C();
      v68 = sub_24B3F17BC(v66, v67, v88);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_24B3CE000, v62, v63, "[AchievementEnvironmentCacheMonitor] Clearing previous suggested workout load states %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x24C2408A0](v65, -1, -1);
      MEMORY[0x24C2408A0](v64, -1, -1);
    }

    v69 = v86;
    v70 = v87;
    v71 = *(type metadata accessor for AchievementEnvironmentCacheMonitorState(0) + 32);
    sub_24B3D1D24(a2 + v71, v69);
    sub_24B3D1D24(v69, v70);
    v72 = sub_24B45845C();
    v73 = sub_24B458F4C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v88[0] = v75;
      *v74 = 136315138;
      sub_24B3D1D24(v70, v85[0]);
      v76 = sub_24B458E4C();
      v78 = v77;
      sub_24B3D1D88(v70);
      v79 = sub_24B3F17BC(v76, v78, v88);
      v69 = v86;

      *(v74 + 4) = v79;
      _os_log_impl(&dword_24B3CE000, v72, v73, "[AchievementEnvironmentCacheMonitor] Clearing previous toast load state %s", v74, 0xCu);
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

uint64_t sub_24B40D864(uint64_t a1, int *a2)
{
  v2[12] = a1;
  v2[13] = sub_24B458EEC();
  v2[14] = sub_24B458EDC();
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_24B40D980;

  return v6(v2 + 7);
}

uint64_t sub_24B40D980()
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
    v5 = sub_24B40DAE0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B40DAE0()
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
  v6[1] = sub_24B40DCB8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 22, v5, v7);
}

uint64_t sub_24B40DCB8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return MEMORY[0x2822009F8](sub_24B40DDCC, v4, v5);
  }

  return result;
}

uint64_t sub_24B40DDCC()
{
  v14 = v0;
  if (*(v0 + 176) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v3 = sub_24B45847C();
    __swift_project_value_buffer(v3, qword_2810E3618);
    v4 = sub_24B45845C();
    v5 = sub_24B458F4C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_24B458E4C();
      v10 = sub_24B3F17BC(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_24B3CE000, v4, v5, "[AchievementEnvironmentCacheMonitor] Received updated achievement environment cache (%s) - clearing cached awards data.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x24C2408A0](v7, -1, -1);
      MEMORY[0x24C2408A0](v6, -1, -1);
    }

    *(v0 + 177) = 0;
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86A0, &qword_24B45F158);
    *v11 = v0;
    v11[1] = sub_24B40E00C;

    return MEMORY[0x282159B08](v0 + 177, v12);
  }
}

uint64_t sub_24B40E00C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_24B40E12C, v3, v2);
}

uint64_t sub_24B40E12C(uint64_t a1)
{
  v2 = sub_24B458EDC();
  v1[19] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[20] = v3;
  *v3 = v1;
  v3[1] = sub_24B40DCB8;
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v1 + 22, v2, v4);
}

unint64_t sub_24B40E210()
{
  result = qword_2810E28F8;
  if (!qword_2810E28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28F8);
  }

  return result;
}

uint64_t sub_24B40E264(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B3F1E60;

  return sub_24B40D864(a1, v4);
}

unint64_t sub_24B40E310()
{
  result = qword_2810E2900;
  if (!qword_2810E2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2900);
  }

  return result;
}

unint64_t sub_24B40E368()
{
  result = qword_2810E2908;
  if (!qword_2810E2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2908);
  }

  return result;
}

uint64_t sub_24B40E3BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B40E404(uint64_t result, int a2, int a3)
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

unint64_t sub_24B40E454()
{
  result = qword_2810E28F0;
  if (!qword_2810E28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28F0);
  }

  return result;
}

uint64_t AwardsError.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

unint64_t sub_24B40E534()
{
  result = qword_27EFE86A8;
  if (!qword_27EFE86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86A8);
  }

  return result;
}

uint64_t static AwardSuggestedWorkoutsLoadState.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_24B40E5E4(a1, a2);
}

uint64_t sub_24B40E5E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v14 = *i;
      v10 = *(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3);
      if (!v10 && (sub_24B4591AC() & 1) == 0)
      {
        break;
      }

      v11 = v6 == v9 && v5 == v8;
      if (!v11 && (sub_24B4591AC() & 1) == 0)
      {
        break;
      }

      v12 = sub_24B40E74C(v7, v14);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24B40E74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v7 = *(a1 + v5 + 48);
      v8 = *(a1 + v5 + 56);
      v9 = *(a1 + v5 + 64);
      v10 = *(a2 + v5 + 48);
      v11 = *(a2 + v5 + 56);
      v12 = *(a2 + v5 + 64);
      v13 = *(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40);
      if (!v13 && (sub_24B4591AC() & 1) == 0)
      {
        return 0;
      }

      if (v7 <= 3)
      {
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v15 = 0xD000000000000013;
            v14 = 0x800000024B466930;
            if (v10 <= 3)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v14 = 0xE800000000000000;
            v15 = 0x7974696C61646F6DLL;
            if (v10 <= 3)
            {
              goto LABEL_45;
            }
          }
        }

        else if (v7)
        {
          v15 = 0x6169726F74696465;
          v14 = 0xED0000647261436CLL;
          if (v10 <= 3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v14 = 0xE500000000000000;
          v15 = 0x6472617761;
          if (v10 <= 3)
          {
            goto LABEL_45;
          }
        }
      }

      else if (v7 <= 5)
      {
        if (v7 == 4)
        {
          v14 = 0xE800000000000000;
          v15 = 0x7473696C79616C70;
          if (v10 <= 3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v14 = 0xE700000000000000;
          v15 = 0x6D6172676F7270;
          if (v10 <= 3)
          {
LABEL_45:
            if (v10 > 1)
            {
              if (v10 == 2)
              {
                v16 = 0x800000024B466930;
                if (v15 != 0xD000000000000013)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v16 = 0xE800000000000000;
                if (v15 != 0x7974696C61646F6DLL)
                {
                  goto LABEL_65;
                }
              }
            }

            else if (v10)
            {
              v16 = 0xED0000647261436CLL;
              if (v15 != 0x6169726F74696465)
              {
                goto LABEL_65;
              }
            }

            else
            {
              v16 = 0xE500000000000000;
              if (v15 != 0x6472617761)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_63;
          }
        }
      }

      else if (v7 == 6)
      {
        v14 = 0xE300000000000000;
        v15 = 7367028;
        if (v10 <= 3)
        {
          goto LABEL_45;
        }
      }

      else if (v7 == 7)
      {
        v14 = 0xE700000000000000;
        v15 = 0x72656E69617274;
        if (v10 <= 3)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        v15 = 0x74756F6B726F77;
        if (v10 <= 3)
        {
          goto LABEL_45;
        }
      }

      if (v10 <= 5)
      {
        if (v10 == 4)
        {
          v16 = 0xE800000000000000;
          if (v15 != 0x7473696C79616C70)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v15 != 0x6D6172676F7270)
          {
            goto LABEL_65;
          }
        }
      }

      else if (v10 == 6)
      {
        v16 = 0xE300000000000000;
        if (v15 != 7367028)
        {
          goto LABEL_65;
        }
      }

      else if (v10 == 7)
      {
        v16 = 0xE700000000000000;
        if (v15 != 0x72656E69617274)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        if (v15 != 0x74756F6B726F77)
        {
          goto LABEL_65;
        }
      }

LABEL_63:
      if (v14 == v16)
      {

        goto LABEL_66;
      }

LABEL_65:
      v17 = sub_24B4591AC();

      if ((v17 & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      if (v9)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v11)
        {
          v6 = v12;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24B40EB18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24B4591AC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24B40EBA8(uint64_t a1)
{
  v2 = sub_24B40F24C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40EBE4(uint64_t a1)
{
  v2 = sub_24B40F24C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B40EC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL)
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

uint64_t sub_24B40ECCC(uint64_t a1)
{
  v2 = sub_24B40F2A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40ED08(uint64_t a1)
{
  v2 = sub_24B40F2A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B40ED44(uint64_t a1)
{
  v2 = sub_24B40F2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40ED80(uint64_t a1)
{
  v2 = sub_24B40F2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B40EDBC(uint64_t a1)
{
  v2 = sub_24B40F348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40EDF8(uint64_t a1)
{
  v2 = sub_24B40F348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardSuggestedWorkoutsLoadState.encode(to:)(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86B0, &qword_24B45F230);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86B8, &qword_24B45F238);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86C0, &qword_24B45F240);
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86C8, &qword_24B45F248);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B40F24C();
  v15 = v26;
  sub_24B45928C();
  if (!v15)
  {
    v28 = 0;
    sub_24B40F348();
    sub_24B45910C();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_24B40F2F4();
    sub_24B45910C();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_24B40F2A0();
  v17 = v23;
  sub_24B45910C();
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86E0, &qword_24B45F250);
  sub_24B4108F0(&qword_27EFE86E8, sub_24B3E1068, MEMORY[0x277D83948]);
  v18 = v25;
  sub_24B45918C();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_24B40F24C()
{
  result = qword_27EFE86D0;
  if (!qword_27EFE86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86D0);
  }

  return result;
}

unint64_t sub_24B40F2A0()
{
  result = qword_27EFE86D8;
  if (!qword_27EFE86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86D8);
  }

  return result;
}

unint64_t sub_24B40F2F4()
{
  result = qword_27EFE86F0;
  if (!qword_27EFE86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86F0);
  }

  return result;
}

unint64_t sub_24B40F348()
{
  result = qword_27EFE86F8;
  if (!qword_27EFE86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86F8);
  }

  return result;
}

uint64_t sub_24B40F3B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B40FDC0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AwardSuggestedWorkoutsLoadState.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = 0;
    return MEMORY[0x24C2403C0](v3);
  }

  if (a2 == 1)
  {
    v3 = 1;
    return MEMORY[0x24C2403C0](v3);
  }

  MEMORY[0x24C2403C0](2);

  return sub_24B40F944(a1, a2);
}

uint64_t AwardSuggestedWorkoutsLoadState.hashValue.getter(uint64_t a1)
{
  sub_24B45922C();
  if (a1)
  {
    if (a1 != 1)
    {
      MEMORY[0x24C2403C0](2);
      sub_24B40F944(v4, a1);
      return sub_24B45926C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B40F4DC()
{
  v1 = *v0;
  sub_24B45922C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x24C2403C0](2);
      sub_24B40F944(v4, v1);
      return sub_24B45926C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B40F550(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x24C2403C0](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x24C2403C0](v4);
  }

  MEMORY[0x24C2403C0](2);

  return sub_24B40F944(a1, v3);
}

uint64_t sub_24B40F5D0(uint64_t a1)
{
  v2 = *v1;
  sub_24B45922C();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x24C2403C0](2);
      sub_24B40F944(v5, v2);
      return sub_24B45926C();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x24C2403C0](v3);
  return sub_24B45926C();
}

uint64_t sub_24B40F640(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_24B40E5E4(v2, v3);
}

uint64_t sub_24B40F680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE500000000000000;
    v11 = 0xD000000000000013;
    v12 = 0x800000024B466930;
    if (a1 != 2)
    {
      v11 = 0x7974696C61646F6DLL;
      v12 = 0xE800000000000000;
    }

    v13 = 0x6169726F74696465;
    if (a1)
    {
      v10 = 0xED0000647261436CLL;
    }

    else
    {
      v13 = 0x6472617761;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7367028;
    v5 = 0x72656E69617274;
    if (a1 != 7)
    {
      v5 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = 0xE700000000000000;
    }

    v6 = 0xE800000000000000;
    v7 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v7 = 0x6D6172676F7270;
      v6 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0x800000024B466930;
        if (v8 != 0xD000000000000013)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE800000000000000;
        if (v8 != 0x7974696C61646F6DLL)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xED0000647261436CLL;
      if (v8 != 0x6169726F74696465)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v8 != 0x6472617761)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE800000000000000;
      if (v8 != 0x7473696C79616C70)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6D6172676F7270)
      {
LABEL_52:
        v15 = sub_24B4591AC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE300000000000000;
    if (v8 != 7367028)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    if (a2 == 7)
    {
      if (v8 != 0x72656E69617274)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x74756F6B726F77)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_24B40F944(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C2403C0](v3);
  if (v3)
  {
    v5 = 0;
    do
    {
      v12 = v5;
      v6 = *(a2 + 32 + 40 * v5 + 32);

      sub_24B458E6C();
      sub_24B458E6C();
      v7 = *(v6 + 16);
      MEMORY[0x24C2403C0](v7);
      if (v7)
      {
        v8 = (v6 + 64);
        do
        {
          v10 = *(v8 - 1);
          v11 = *v8;

          sub_24B458E6C();
          sub_24B458E6C();

          if (v11)
          {
            sub_24B45924C();
          }

          else
          {
            sub_24B45924C();
            if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v9 = v10;
            }

            else
            {
              v9 = 0;
            }

            MEMORY[0x24C2403E0](v9);
          }

          v8 += 40;
          --v7;
        }

        while (v7);
      }

      v5 = v12 + 1;
    }

    while (v12 + 1 != v3);
  }

  return result;
}

uint64_t sub_24B40FBDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C2403C0](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_24B458E6C();
      sub_24B458E6C();

      if (v7)
      {
        sub_24B45924C();
      }

      else
      {
        sub_24B45924C();
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }

        MEMORY[0x24C2403E0](v8);
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24B40FDC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8758, &qword_24B45F728);
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8760, &qword_24B45F730);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8768, &qword_24B45F738);
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8770, &qword_24B45F740);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = a1[3];
  v39 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B40F24C();
  v17 = v38;
  sub_24B45927C();
  if (!v17)
  {
    v31 = v8;
    v18 = v36;
    v19 = v37;
    v38 = v12;
    v20 = sub_24B4590FC();
    v21 = (2 * *(v20 + 16)) | 1;
    v40 = v20;
    v41 = v20 + 32;
    v42 = 0;
    v43 = v21;
    v22 = sub_24B3E3808();
    if (v22 == 3 || v42 != v43 >> 1)
    {
      v24 = sub_24B458FFC();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
      *v26 = &type metadata for AwardSuggestedWorkoutsLoadState;
      v16 = v14;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v38 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v23 = v38;
      if (v22 == 1)
      {
        LOBYTE(v44) = 1;
        sub_24B40F2F4();
        sub_24B45905C();
        (*(v32 + 8))(v7, v33);
        (*(v23 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = 1;
      }

      else
      {
        LOBYTE(v44) = 2;
        sub_24B40F2A0();
        sub_24B45905C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86E0, &qword_24B45F250);
        sub_24B4108F0(&qword_27EFE8778, sub_24B3E25B4, MEMORY[0x277D83978]);
        v29 = v34;
        sub_24B4590EC();
        (*(v35 + 8))(v19, v29);
        (*(v23 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = v44;
      }
    }

    else
    {
      LOBYTE(v44) = 0;
      sub_24B40F348();
      sub_24B45905C();
      v28 = v38;
      (*(v18 + 8))(v10, v31);
      (*(v28 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return v16;
}

unint64_t sub_24B4103F8()
{
  result = qword_27EFE8700;
  if (!qword_27EFE8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8700);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards31AwardSuggestedWorkoutsLoadStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B410470(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B4104C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
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

void *sub_24B410520(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_24B410584()
{
  result = qword_27EFE8708;
  if (!qword_27EFE8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8708);
  }

  return result;
}

unint64_t sub_24B4105DC()
{
  result = qword_27EFE8710;
  if (!qword_27EFE8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8710);
  }

  return result;
}

unint64_t sub_24B410634()
{
  result = qword_27EFE8718;
  if (!qword_27EFE8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8718);
  }

  return result;
}

unint64_t sub_24B41068C()
{
  result = qword_27EFE8720;
  if (!qword_27EFE8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8720);
  }

  return result;
}

unint64_t sub_24B4106E4()
{
  result = qword_27EFE8728;
  if (!qword_27EFE8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8728);
  }

  return result;
}

unint64_t sub_24B41073C()
{
  result = qword_27EFE8730;
  if (!qword_27EFE8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8730);
  }

  return result;
}

unint64_t sub_24B410794()
{
  result = qword_27EFE8738;
  if (!qword_27EFE8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8738);
  }

  return result;
}

unint64_t sub_24B4107EC()
{
  result = qword_27EFE8740;
  if (!qword_27EFE8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8740);
  }

  return result;
}

unint64_t sub_24B410844()
{
  result = qword_27EFE8748;
  if (!qword_27EFE8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8748);
  }

  return result;
}

unint64_t sub_24B41089C()
{
  result = qword_27EFE8750;
  if (!qword_27EFE8750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8750);
  }

  return result;
}

uint64_t sub_24B4108F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE86E0, &qword_24B45F250);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AwardImageView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_24B3DB5A8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t AwardImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  MEMORY[0x28223BE20](v25);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8788, &qword_24B45F748);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  sub_24B410D74(v24 - v6);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  v24[1] = v5;
  v12 = &v7[*(v5 + 36)];
  *v12 = sub_24B4119C4;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  sub_24B3DE5D8(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8790, &qword_24B45F750);
  sub_24B4119D0();
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v13 = v28;
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  if (*(v13 + 16) && (v14 = sub_24B4121B8(v26, v27), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    State = type metadata accessor for AwardImageLoadState(0);
    v19 = *(State - 8);
    v24[0] = a1;
    v20 = v19;
    sub_24B412634(v17 + *(v19 + 72) * v16, v4);

    (*(v20 + 56))(v4, 0, 1, State);
  }

  else
  {

    v21 = type metadata accessor for AwardImageLoadState(0);
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = v9;
  *(v22 + 32) = v10;
  sub_24B3DE5D8(v8, v9);
  sub_24B412274();
  sub_24B412558();
  sub_24B458ABC();

  sub_24B3DF4F0(v4, &qword_27EFE8780, &unk_24B45F8E0);
  return sub_24B3DF4F0(v7, &qword_27EFE8788, &qword_24B45F748);
}

uint64_t sub_24B410D74@<X0>(uint64_t a4@<X8>)
{
  v66 = a4;
  v50 = sub_24B458BAC();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24B45830C();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87C0, &qword_24B45F8C0);
  MEMORY[0x28223BE20](v64);
  v65 = (&v47 - v6);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87C8, &qword_24B45F8C8);
  MEMORY[0x28223BE20](v59);
  v61 = (&v47 - v7);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87A8, &qword_24B45F7A8);
  MEMORY[0x28223BE20](v63);
  v62 = &v47 - v8;
  v55 = sub_24B45860C();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B28, &qword_24B45A368);
  *&v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v47 - v11;
  State = type metadata accessor for AwardImageLoadState(0);
  *&v58 = *(State - 8);
  MEMORY[0x28223BE20](State);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8790, &qword_24B45F750);
  sub_24B4119D0();
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v15 = v77;
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  if (!*(v15 + 16) || (v16 = sub_24B4121B8(v75, v76), (v17 & 1) == 0))
  {

    *v65 = sub_24B458B1C();
    swift_storeEnumTagMultiPayload();
    sub_24B412410();
    return sub_24B45871C();
  }

  sub_24B412634(*(v15 + 56) + *(v58 + 72) * v16, v14);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = sub_24B45836C();
    (*(*(v31 - 8) + 8))(v14, v31);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_9:
    *&v72 = 0xD00000000000001BLL;
    *(&v72 + 1) = 0x800000024B466EF0;
    LOBYTE(v73) = 0;
    *(&v73 + 1) = MEMORY[0x277D84F90];
    sub_24B4585FC();
    v32 = MEMORY[0x277CE0BD8];
    v33 = MEMORY[0x277CE0BC8];
    v34 = v56;
    sub_24B458ACC();
    (*(v54 + 8))(v10, v55);
    v35 = v57;
    v36 = v60;
    (*(v57 + 16))(v61, v34, v60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87B0, &qword_24B45F7B0);
    *&v72 = v32;
    *(&v72 + 1) = v33;
    swift_getOpaqueTypeConformance2();
    sub_24B4124CC();
    v37 = v62;
    sub_24B45871C();
    sub_24B3D3A58(v37, v65);
    swift_storeEnumTagMultiPayload();
    sub_24B412410();
    sub_24B45871C();
    sub_24B3DF4F0(v37, &qword_27EFE87A8, &qword_24B45F7A8);
    return (*(v35 + 8))(v34, v36);
  }

  v19 = v51;
  (*(v51 + 32))(v52, v14, v53);
  sub_24B4582FC();
  v20 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v21 = sub_24B458E3C();

  v22 = [v20 initWithContentsOfFile_];

  v23 = MEMORY[0x277CE0BD8];
  v24 = MEMORY[0x277CE0BC8];
  if (v22)
  {
    v25 = v22;
    sub_24B458B8C();
    v26 = v49;
    v27 = v48;
    v28 = v50;
    (*(v49 + 104))(v48, *MEMORY[0x277CE0FE0], v50);
    v29 = sub_24B458BBC();

    (*(v26 + 8))(v27, v28);
    v67 = v29;
    v68 = 0x3FF0000000000000;
    v69 = 0;
    v70 = 0;
    v71 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8248, &qword_24B45D200);
    sub_24B3FF010();
    sub_24B45871C();
  }

  else
  {
    sub_24B4586CC();
    v67 = sub_24B45891C();
    v68 = v38;
    v69 = v39 & 1;
    v70 = v40;
    v71 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8248, &qword_24B45D200);
    sub_24B3FF010();
    sub_24B45871C();
  }

  v41 = v73;
  v42 = v74;
  v57 = v72;
  v58 = v73;
  v43 = v61;
  *v61 = v72;
  v43[1] = v41;
  *(v43 + 32) = v42;
  swift_storeEnumTagMultiPayload();
  v44 = v57;
  v45 = v58;
  sub_24B412924(v57, *(&v57 + 1), v58, *(&v58 + 1), v42);
  sub_24B412924(v44, *(&v44 + 1), v45, *(&v45 + 1), v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87B0, &qword_24B45F7B0);
  *&v72 = v23;
  *(&v72 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  sub_24B4124CC();
  v46 = v62;
  sub_24B45871C();
  sub_24B3D3A58(v46, v65);
  swift_storeEnumTagMultiPayload();
  sub_24B412410();
  sub_24B45871C();
  sub_24B412974(v44, *(&v44 + 1), v45, *(&v45 + 1), v42);
  sub_24B412974(v44, *(&v44 + 1), v45, *(&v45 + 1), v42);
  sub_24B3DF4F0(v46, &qword_27EFE87A8, &qword_24B45F7A8);
  return (*(v19 + 8))(v52, v53);
}

uint64_t sub_24B411868(uint64_t a1, uint64_t a2, char a3)
{
  v3 = type metadata accessor for AwardImageAction(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8790, &qword_24B45F750);
  sub_24B4119D0();
  sub_24B45851C();
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  *v5 = v7;
  swift_storeEnumTagMultiPayload();
  sub_24B458D6C();

  return sub_24B4127E8(v5, type metadata accessor for AwardImageAction);
}

unint64_t sub_24B4119D0()
{
  result = qword_2810E27C8;
  if (!qword_2810E27C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8790, &qword_24B45F750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E27C8);
  }

  return result;
}

uint64_t sub_24B411A34(uint64_t a1, uint64_t a2, int a3)
{
  v51 = type metadata accessor for AwardImageAction(0);
  MEMORY[0x28223BE20](v51);
  v52 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  State = type metadata accessor for AwardImageLoadState(0);
  v56 = *(State - 8);
  MEMORY[0x28223BE20](State);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87B8, &qword_24B45F898);
  MEMORY[0x28223BE20](v55);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v57 = &v45 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8790, &qword_24B45F750);
  v19 = sub_24B4119D0();
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v20 = v59;
  v21 = v60;
  v49 = a3;
  v47 = v19;
  v48 = a1;
  v50 = a2;
  v54 = v18;
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v22 = *&v59;
  if (*(*&v59 + 16) && (v23 = sub_24B4121B8(v20, v21), (v24 & 1) != 0))
  {
    v26 = v56;
    v25 = v57;
    sub_24B412634(*(v22 + 56) + *(v56 + 72) * v23, v57);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v26 = v56;
    v25 = v57;
  }

  v28 = *(v26 + 56);
  v28(v25, v27, 1, State);
  swift_storeEnumTagMultiPayload();
  v28(v16, 0, 1, State);
  v29 = *(v55 + 48);
  sub_24B412778(v25, v10);
  sub_24B412778(v16, &v10[v29]);
  v30 = *(v26 + 48);
  if (v30(v10, 1, State) != 1)
  {
    v31 = v53;
    sub_24B412778(v10, v53);
    if (v30(&v10[v29], 1, State) != 1)
    {
      v32 = v46;
      sub_24B412848(&v10[v29], v46);
      StateO2eeoiySbAC_ACtFZ_0 = _s13FitnessAwards19AwardImageLoadStateO2eeoiySbAC_ACtFZ_0(v31, v32);
      sub_24B4127E8(v32, type metadata accessor for AwardImageLoadState);
      sub_24B3DF4F0(v16, &qword_27EFE8780, &unk_24B45F8E0);
      sub_24B4127E8(v31, type metadata accessor for AwardImageLoadState);
      sub_24B3DF4F0(v10, &qword_27EFE8780, &unk_24B45F8E0);
      if ((StateO2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        return sub_24B3DF4F0(v25, &qword_27EFE8780, &unk_24B45F8E0);
      }

      goto LABEL_12;
    }

    sub_24B3DF4F0(v16, &qword_27EFE8780, &unk_24B45F8E0);
    sub_24B4127E8(v31, type metadata accessor for AwardImageLoadState);
LABEL_10:
    sub_24B3DF4F0(v10, &qword_27EFE87B8, &qword_24B45F898);
    return sub_24B3DF4F0(v25, &qword_27EFE8780, &unk_24B45F8E0);
  }

  sub_24B3DF4F0(v16, &qword_27EFE8780, &unk_24B45F8E0);
  if (v30(&v10[v29], 1, State) != 1)
  {
    goto LABEL_10;
  }

  sub_24B3DF4F0(v10, &qword_27EFE8780, &unk_24B45F8E0);
LABEL_12:
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v34 = sub_24B45847C();
  __swift_project_value_buffer(v34, qword_2810E3618);
  v35 = v48;
  v36 = v50;
  sub_24B3DE5D8(v48, v50);
  v37 = sub_24B45845C();
  v38 = sub_24B458F4C();
  sub_24B3DE5B8(v35, v36);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v58 = v40;
    *v39 = 136315138;
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v41 = sub_24B3F17BC(*&v59, *&v60, &v58);

    *(v39 + 4) = v41;
    _os_log_impl(&dword_24B3CE000, v37, v38, "[AwardImageView] Load state was reset to idle for  %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x24C2408A0](v40, -1, -1);
    v42 = v39;
    v25 = v57;
    MEMORY[0x24C2408A0](v42, -1, -1);
  }

  sub_24B45851C();
  v43 = v52;
  *v52 = v20;
  *(v43 + 8) = v21;
  swift_storeEnumTagMultiPayload();
  sub_24B458D6C();

  sub_24B4127E8(v43, type metadata accessor for AwardImageAction);
  return sub_24B3DF4F0(v25, &qword_27EFE8780, &unk_24B45F8E0);
}

unint64_t sub_24B412140(uint64_t a1, uint64_t a2)
{
  sub_24B45922C();
  sub_24B458E6C();
  v4 = sub_24B45926C();

  return sub_24B4126C0(a1, a2, v4);
}

unint64_t sub_24B4121B8(double a1, double a2)
{
  sub_24B45922C();
  sub_24B3DB298(a1, a2);
  v4 = sub_24B45926C();

  return sub_24B4128AC(v4, a1, a2);
}

uint64_t objectdestroy_2Tm_1()
{
  sub_24B3DE5B8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_24B412274()
{
  result = qword_2810E28A8;
  if (!qword_2810E28A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8788, &qword_24B45F748);
    sub_24B412300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28A8);
  }

  return result;
}

unint64_t sub_24B412300()
{
  result = qword_2810E27E0;
  if (!qword_2810E27E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8798, &qword_24B45F798);
    sub_24B412384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E27E0);
  }

  return result;
}

unint64_t sub_24B412384()
{
  result = qword_2810E2820;
  if (!qword_2810E2820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE87A0, &qword_24B45F7A0);
    sub_24B412410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2820);
  }

  return result;
}

unint64_t sub_24B412410()
{
  result = qword_2810E2840;
  if (!qword_2810E2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE87A8, &qword_24B45F7A8);
    swift_getOpaqueTypeConformance2();
    sub_24B4124CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2840);
  }

  return result;
}

unint64_t sub_24B4124CC()
{
  result = qword_2810E2860;
  if (!qword_2810E2860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE87B0, &qword_24B45F7B0);
    sub_24B3FF010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2860);
  }

  return result;
}

unint64_t sub_24B412558()
{
  result = qword_2810E3018[0];
  if (!qword_2810E3018[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8780, &unk_24B45F8E0);
    sub_24B4125DC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3018);
  }

  return result;
}

unint64_t sub_24B4125DC()
{
  result = qword_2810E3058[0];
  if (!qword_2810E3058[0])
  {
    type metadata accessor for AwardImageLoadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3058);
  }

  return result;
}

uint64_t sub_24B412634(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B4126C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24B4591AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24B412778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4127E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B412848(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

unint64_t sub_24B4128AC(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24B412924(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_24B3DF5A4(a1, a2, a3 & 1);
  }

  else
  {
  }
}

uint64_t sub_24B412974(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_24B3DF478(a1, a2, a3 & 1);
  }

  else
  {
  }
}

__n128 AwardImageFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  type metadata accessor for AwardImageFeature(0);
  sub_24B45835C();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for AwardImageFeature(uint64_t a1)
{
  result = qword_2810E3320;
  if (!qword_2810E3320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B412A50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_24B45922C();
  MEMORY[0x24C2403C0](v3);
  sub_24B458E6C();
  sub_24B3DB298(v1, v2);
  return sub_24B45926C();
}

uint64_t sub_24B412AD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  MEMORY[0x24C2403C0](*(v1 + 32));
  sub_24B458E6C();

  return sub_24B3DB298(v2, v3);
}

uint64_t sub_24B412B40(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_24B45922C();
  MEMORY[0x24C2403C0](v4);
  sub_24B458E6C();
  sub_24B3DB298(v2, v3);
  return sub_24B45926C();
}

BOOL sub_24B412BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_24B4161E4(v5, v7);
}

uint64_t AwardImageFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v199 = a4;
  v197 = a3;
  v200 = a2;
  v183 = a1;
  State = type metadata accessor for AwardImageLoadState(0);
  v195 = *(State - 8);
  v196 = State;
  v5 = MEMORY[0x28223BE20](State);
  v175 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v186 = (&v174 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v184 = &v174 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v176 = &v174 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v188 = &v174 - v14;
  MEMORY[0x28223BE20](v13);
  v193 = &v174 - v15;
  v179 = sub_24B45836C();
  v189 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v192 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  v17 = MEMORY[0x28223BE20](v187);
  v19 = (&v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v178 = &v174 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v174 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v174 - v25;
  v27 = sub_24B45830C();
  v194 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = (&v174 - v31);
  v177 = type metadata accessor for AwardImageFeature(0);
  v180 = *(v177 - 8);
  v33 = *(v180 + 64);
  MEMORY[0x28223BE20](v177);
  v181 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F40, &qword_24B45BCC0);
  v190 = *(v34 - 8);
  v191 = v34;
  v35 = MEMORY[0x28223BE20](v34);
  v185 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v182 = &v174 - v37;
  v38 = type metadata accessor for AwardImageAction(0);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = (&v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v43 = (&v174 - v42);
  sub_24B415B48(v199, &v174 - v42, type metadata accessor for AwardImageAction);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v76 = *v43;
      v77 = v43[1];
      v79 = *v200;
      v78 = v200[1];
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v81 = v80[16];
      v82 = v80[20];
      v83 = v182;
      v84 = &v182[v80[24]];
      v201 = *&v79;
      v202 = *&v78;
      v203 = v76;
      v204 = v77;
      v205 = 0;
      sub_24B415970();
      swift_bridgeObjectRetain_n();
      sub_24B458F9C();
      sub_24B458EFC();
      v85 = *MEMORY[0x277D04400];
      v86 = sub_24B458D4C();
      (*(*(v86 - 8) + 104))(&v83[v81], v85, v86);
      v87 = *MEMORY[0x277D043E0];
      v88 = sub_24B458D3C();
      (*(*(v88 - 8) + 104))(&v83[v82], v87, v88);
      v89 = v181;
      sub_24B415B48(v198, v181, type metadata accessor for AwardImageFeature);
      v90 = (*(v180 + 80) + 16) & ~*(v180 + 80);
      v91 = (v33 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = swift_allocObject();
      sub_24B415BB0(v89, v92 + v90, type metadata accessor for AwardImageFeature);
      v93 = (v92 + v91);
      *v93 = v79;
      v93[1] = v78;
      v94 = (v92 + ((v91 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v94 = v76;
      v94[1] = v77;
      *v84 = &unk_24B45F918;
      *(v84 + 1) = v92;
      v96 = v190;
      v95 = v191;
      v190[13](v83, *MEMORY[0x277D043B0], v191);
      v97 = v197;
      v98 = *v197;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_24B3F1390(0, v98[2] + 1, 1, v98);
      }

      v100 = v98[2];
      v99 = v98[3];
      if (v100 >= v99 >> 1)
      {
        v98 = sub_24B3F1390((v99 > 1), v100 + 1, 1, v98);
      }

      v98[2] = v100 + 1;
      result = v96[4](v98 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v96[9] * v100, v83, v95);
      *v97 = v98;
    }

    else
    {
      if (result == 3)
      {
        *v41 = *v43;
        swift_storeEnumTagMultiPayload();
        AwardImageFeature.reduce(localState:sharedState:sideEffects:action:)(v183, v200, v197, v41);
        v45 = type metadata accessor for AwardImageAction;
        v46 = v41;
        return sub_24B415A80(v46, v45);
      }

      v102 = *v43;
      v101 = v43[1];
      v103 = v200[4];
      if (*(v103 + 16) && (v104 = sub_24B4121B8(*v43, v43[1]), (v105 & 1) != 0))
      {
        v106 = v176;
        sub_24B415B48(*(v103 + 56) + *(v195 + 72) * v104, v176, type metadata accessor for AwardImageLoadState);
        v107 = v188;
        sub_24B415BB0(v106, v188, type metadata accessor for AwardImageLoadState);
        v108 = v196;
      }

      else
      {
        v107 = v188;
        v108 = v196;
        swift_storeEnumTagMultiPayload();
      }

      v115 = v189;
      v116 = v186;
      v117 = v185;
      v118 = v184;
      sub_24B415B48(v107, v184, type metadata accessor for AwardImageLoadState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_24B415A80(v118, type metadata accessor for AwardImageLoadState);
      if (EnumCaseMultiPayload != 2)
      {
        if (qword_2810E3610 != -1)
        {
          swift_once();
        }

        v138 = sub_24B45847C();
        __swift_project_value_buffer(v138, qword_2810E3618);
        sub_24B415B48(v107, v116, type metadata accessor for AwardImageLoadState);
        v139 = sub_24B45845C();
        v140 = sub_24B458F4C();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v206 = v142;
          *v141 = 136315394;
          v201 = v102;
          v202 = v101;
          type metadata accessor for CGSize();
          v143 = sub_24B458E4C();
          v145 = sub_24B3F17BC(v143, v144, &v206);

          *(v141 + 4) = v145;
          *(v141 + 12) = 2080;
          sub_24B415B48(v116, v175, type metadata accessor for AwardImageLoadState);
          v146 = sub_24B458E4C();
          v148 = v147;
          sub_24B415A80(v116, type metadata accessor for AwardImageLoadState);
          v149 = sub_24B3F17BC(v146, v148, &v206);

          *(v141 + 14) = v149;
          _os_log_impl(&dword_24B3CE000, v139, v140, "[AwardImageFeature] View appeared but loadState for image size %s was %s, returning", v141, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C2408A0](v142, -1, -1);
          MEMORY[0x24C2408A0](v141, -1, -1);
        }

        else
        {

          sub_24B415A80(v116, type metadata accessor for AwardImageLoadState);
        }

        v46 = v107;
        v45 = type metadata accessor for AwardImageLoadState;
        return sub_24B415A80(v46, v45);
      }

      v120 = v178;
      (*(v115 + 16))(v178, v198 + *(v177 + 20), v179);
      swift_storeEnumTagMultiPayload();
      (*(v195 + 56))(v120, 0, 1, v108);
      sub_24B414D54(v120, v102, v101);
      v122 = *v200;
      v121 = v200[1];
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v124 = v123[16];
      v125 = v123[20];
      v126 = &v117[v123[24]];
      v201 = *&v122;
      v202 = *&v121;
      v203 = v102;
      v204 = v101;
      v205 = 1;
      sub_24B415970();
      swift_bridgeObjectRetain_n();
      sub_24B458F9C();
      sub_24B458EFC();
      v127 = *MEMORY[0x277D04400];
      v128 = sub_24B458D4C();
      (*(*(v128 - 8) + 104))(&v117[v124], v127, v128);
      v129 = *MEMORY[0x277D043E0];
      v130 = sub_24B458D3C();
      (*(*(v130 - 8) + 104))(&v117[v125], v129, v130);
      v131 = swift_allocObject();
      v131[2] = *&v122;
      v131[3] = *&v121;
      v131[4] = v102;
      v131[5] = v101;
      *v126 = &unk_24B45F900;
      *(v126 + 1) = v131;
      v133 = v190;
      v132 = v191;
      v190[13](v117, *MEMORY[0x277D043B0], v191);
      v134 = v197;
      v135 = *v197;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = sub_24B3F1390(0, v135[2] + 1, 1, v135);
      }

      v137 = v135[2];
      v136 = v135[3];
      if (v137 >= v136 >> 1)
      {
        v135 = sub_24B3F1390((v136 > 1), v137 + 1, 1, v135);
      }

      sub_24B415A80(v107, type metadata accessor for AwardImageLoadState);
      v135[2] = v137 + 1;
      result = v133[4](v135 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + v133[9] * v137, v117, v132);
      *v134 = v135;
    }

    return result;
  }

  v47 = v192;
  v48 = v193;
  v188 = v24;
  v190 = v19;
  v191 = v26;
  v197 = v32;
  v199 = v27;
  if (!result)
  {
    v49 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D0, &qword_24B4624C0) + 48));
    v50 = *v49;
    v51 = v49[1];
    v52 = v194;
    v53 = v197;
    v54 = v43;
    v55 = v199;
    (*(v194 + 32))(v197, v54, v199);
    v56 = v200;
    v58 = *v200;
    v57 = v200[1];
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v59 = sub_24B45847C();
    v60 = __swift_project_value_buffer(v59, qword_2810E3618);
    v61 = *(v52 + 16);
    v62 = v30;
    v192 = (v52 + 16);
    v186 = v61;
    v61(v30, v53, v55);

    v193 = v60;
    v63 = sub_24B45845C();
    v64 = sub_24B458F4C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v206 = v66;
      *v65 = 136315650;
      *(v65 + 4) = sub_24B3F17BC(v58, v57, &v206);
      *(v65 + 12) = 2080;
      v201 = v50;
      v202 = v51;
      type metadata accessor for CGSize();
      v67 = sub_24B458E4C();
      v69 = sub_24B3F17BC(v67, v68, &v206);

      *(v65 + 14) = v69;
      *(v65 + 22) = 2080;
      sub_24B41668C(&qword_2810E36D8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v70 = sub_24B45919C();
      v72 = v71;
      v198 = *(v52 + 8);
      v198(v62, v199);
      v73 = sub_24B3F17BC(v70, v72, &v206);

      *(v65 + 24) = v73;
      _os_log_impl(&dword_24B3CE000, v63, v64, "[AwardImageFeature] (%s) Image fetched for size %s: %s", v65, 0x20u);
      swift_arrayDestroy();
      v74 = v66;
      v55 = v199;
      MEMORY[0x24C2408A0](v74, -1, -1);
      v75 = v65;
      v56 = v200;
      MEMORY[0x24C2408A0](v75, -1, -1);
    }

    else
    {

      v198 = *(v52 + 8);
      v198(v62, v55);
    }

    v151 = v195;
    v150 = v196;
    v153 = v190;
    v152 = v191;
    v154 = v56[4];
    if (*(v154 + 16) && (v155 = sub_24B4121B8(v50, v51), (v156 & 1) != 0))
    {
      sub_24B415B48(*(v154 + 56) + *(v151 + 72) * v155, v152, type metadata accessor for AwardImageLoadState);
      v157 = 0;
    }

    else
    {
      v157 = 1;
    }

    v158 = *(v151 + 56);
    v158(v152, v157, 1, v150);
    v159 = v188;
    sub_24B412778(v152, v188);
    if ((*(v151 + 48))(v159, 1, v150) == 1)
    {
      sub_24B415AE0(v159);
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        (*(v189 + 8))(v159, v179);
        v169 = v178;
        v170 = v197;
        v186(v178, v197, v55);
        swift_storeEnumTagMultiPayload();
        v158(v169, 0, 1, v150);
        sub_24B414D54(v169, v50, v51);
        sub_24B415AE0(v152);
        v168 = v170;
        return (v198)(v168, v55);
      }

      sub_24B415A80(v159, type metadata accessor for AwardImageLoadState);
    }

    sub_24B412778(v152, v153);
    v160 = sub_24B45845C();
    v161 = sub_24B458F4C();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      v163 = COERCE_DOUBLE(swift_slowAlloc());
      v201 = v163;
      *v162 = 136315138;
      v164 = sub_24B458F5C();
      v166 = v165;
      sub_24B415AE0(v153);
      v167 = sub_24B3F17BC(v164, v166, &v201);

      *(v162 + 4) = v167;
      _os_log_impl(&dword_24B3CE000, v160, v161, "[AwardImageFeature] Current state is %s, skipping .fetched update", v162, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(*&v163);
      MEMORY[0x24C2408A0](*&v163, -1, -1);
      MEMORY[0x24C2408A0](v162, -1, -1);
    }

    else
    {

      sub_24B415AE0(v153);
    }

    sub_24B415AE0(v152);
    v168 = v197;
    return (v198)(v168, v55);
  }

  v109 = v200[4];
  if (*(v109 + 16))
  {
    v110 = *v43;
    v111 = v43[1];
    result = sub_24B4121B8(*v43, v111);
    if (v112)
    {
      v113 = v195;
      sub_24B415B48(*(v109 + 56) + *(v195 + 72) * result, v48, type metadata accessor for AwardImageLoadState);
      v114 = v196;
      if (swift_getEnumCaseMultiPayload())
      {
        v45 = type metadata accessor for AwardImageLoadState;
        v46 = v48;
        return sub_24B415A80(v46, v45);
      }

      v171 = v189;
      v172 = v179;
      (*(v189 + 32))(v47, v48, v179);
      if (sub_24B45834C())
      {
        v173 = v178;
        swift_storeEnumTagMultiPayload();
        (*(v113 + 56))(v173, 0, 1, v114);
        sub_24B414D54(v173, v110, v111);
      }

      return (*(v171 + 8))(v47, v172);
    }
  }

  return result;
}

uint64_t sub_24B4140A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  *(v6 + 96) = type metadata accessor for AwardImageAction(0);
  *(v6 + 104) = swift_task_alloc();
  v7 = sub_24B45830C();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  sub_24B458EEC();
  *(v6 + 144) = sub_24B458EDC();
  v9 = sub_24B458EBC();
  *(v6 + 152) = v9;
  *(v6 + 160) = v8;

  return MEMORY[0x2822009F8](sub_24B4141DC, v9, v8);
}

uint64_t sub_24B4141DC()
{
  v8 = (**(v0 + 56) + ***(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_24B4142D8;
  v2 = *(v0 + 136);
  v3.n128_u64[0] = *(v0 + 80);
  v4.n128_u64[0] = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  return v8(v2, v5, v6, v3, v4);
}

uint64_t sub_24B4142D8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_24B414914;
  }

  else
  {
    v5 = sub_24B414414;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B414414()
{
  v35 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = sub_24B45847C();
  __swift_project_value_buffer(v5, qword_2810E3618);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = sub_24B45845C();
  v8 = sub_24B458F4C();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v13 = 136315138;
    sub_24B41668C(&qword_2810E36D8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_24B45919C();
    v16 = v15;
    v32 = v8;
    v19 = *(v11 + 8);
    v18 = v11 + 8;
    v17 = v19;
    v19(v10, v12);
    v20 = sub_24B3F17BC(v14, v16, &v34);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_24B3CE000, v7, v32, "[AwardImageFeature] Image url fetched %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x24C2408A0](v33, -1, -1);
    MEMORY[0x24C2408A0](v13, -1, -1);
  }

  else
  {

    v21 = *(v11 + 8);
    v18 = v11 + 8;
    v17 = v21;
    v21(v10, v12);
  }

  v0[23] = v18;
  v0[24] = v17;
  v22 = v0[17];
  v24 = v0[13];
  v23 = v0[14];
  v26 = v0[10];
  v25 = v0[11];
  v27 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D0, &qword_24B4624C0) + 48));
  v6(v24, v22, v23);
  *v27 = v26;
  v27[1] = v25;
  swift_storeEnumTagMultiPayload();
  v28 = swift_task_alloc();
  v0[25] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D8, &unk_24B45FA90);
  *v28 = v0;
  v28[1] = sub_24B414718;
  v30 = v0[13];

  return MEMORY[0x282159B08](v30, v29);
}

uint64_t sub_24B414718()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_24B415A80(v2, type metadata accessor for AwardImageAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B414870, v4, v3);
}

uint64_t sub_24B414870()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B414914()
{
  v17 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  MEMORY[0x24C2406E0](v1);
  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  MEMORY[0x24C2406D0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v16);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_24B4591DC();
    v11 = sub_24B3F17BC(v9, v10, &v16);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardImageFeature] Failed to fetch image url for %s, error %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  **(v0 + 104) = *(v0 + 80);
  swift_storeEnumTagMultiPayload();
  v12 = swift_task_alloc();
  *(v0 + 208) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D8, &unk_24B45FA90);
  *v12 = v0;
  v12[1] = sub_24B414B70;
  v14 = *(v0 + 104);

  return MEMORY[0x282159B08](v14, v13);
}

uint64_t sub_24B414B70()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_24B415A80(v2, type metadata accessor for AwardImageAction);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B414CC8, v4, v3);
}

uint64_t sub_24B414CC8()
{
  v1 = *(v0 + 176);

  MEMORY[0x24C2406D0](v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_24B414D54(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  State = type metadata accessor for AwardImageLoadState(0);
  v12 = *(State - 8);
  MEMORY[0x28223BE20](State);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, State) == 1)
  {
    sub_24B415AE0(a1);
    v15 = sub_24B4121B8(a2, a3);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v4;
      v22 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24B44C398();
        v19 = v22;
      }

      sub_24B415BB0(*(v19 + 56) + *(v12 + 72) * v17, v10, type metadata accessor for AwardImageLoadState);
      sub_24B415D58(v17, v19);
      *v4 = v19;
      (*(v12 + 56))(v10, 0, 1, State);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, State);
    }

    sub_24B415AE0(v10);
  }

  else
  {
    sub_24B415BB0(a1, v14, type metadata accessor for AwardImageLoadState);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_24B415F54(v14, v20, a2, a3);
    *v4 = v22;
  }
}

uint64_t sub_24B414F9C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 32) = a1;
  *(v5 + 72) = type metadata accessor for AwardImageAction(0);
  *(v5 + 80) = swift_task_alloc();
  sub_24B458EEC();
  *(v5 + 88) = sub_24B458EDC();
  v7 = sub_24B458EBC();
  *(v5 + 96) = v7;
  *(v5 + 104) = v6;

  return MEMORY[0x2822009F8](sub_24B41506C, v7, v6);
}

uint64_t sub_24B41506C()
{
  v18 = v0;
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
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24B3F17BC(v7, v6, &v17);
    *(v8 + 12) = 2080;
    v0[2] = v5;
    v0[3] = v4;
    type metadata accessor for CGSize();
    v10 = sub_24B458E4C();
    v12 = sub_24B3F17BC(v10, v11, &v17);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardImageFeature] Requesting image data for %s with size %s on view appeared", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v9, -1, -1);
    MEMORY[0x24C2408A0](v8, -1, -1);
  }

  *v0[10] = *(v0 + 7);
  swift_storeEnumTagMultiPayload();
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D8, &unk_24B45FA90);
  *v13 = v0;
  v13[1] = sub_24B4152B8;
  v15 = v0[10];

  return MEMORY[0x282159B08](v15, v14);
}

uint64_t sub_24B4152B8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  sub_24B415A80(v2, type metadata accessor for AwardImageAction);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24B415410, v4, v3);
}

uint64_t sub_24B415410()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AwardImageFeature.dispose(localState:sharedState:)(uint64_t a1)
{
  v2 = sub_24B41647C(*(a1 + 32), sub_24B415D50);
  sub_24B4155F4(v2, a1);
}

uint64_t sub_24B4154E8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState(0);
  MEMORY[0x28223BE20](State);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for AwardImageFeature(0) + 20);
  v8 = sub_24B45836C();
  (*(*(v8 - 8) + 16))(v6, a2 + v7, v8);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = _s13FitnessAwards19AwardImageLoadStateO2eeoiySbAC_ACtFZ_0(a1, v6);
  sub_24B415A80(v6, type metadata accessor for AwardImageLoadState);
  return a2 & 1;
}

uint64_t sub_24B4155F4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState(0);
  v37 = *(State - 8);
  v4 = MEMORY[0x28223BE20](State);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - v7;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v40 = a1;

  v13 = 0;
  while (v11)
  {
LABEL_11:
    v15 = (*(v40 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v16 = *v15;
    v17 = v15[1];
    v18 = v38;
    swift_storeEnumTagMultiPayload();
    v19 = v6;
    sub_24B415BB0(v18, v6, type metadata accessor for AwardImageLoadState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(a2 + 32);
    v21 = v41;
    v22 = sub_24B4121B8(v16, v17);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (v21[3] < v27)
    {
      sub_24B44BC90(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_24B4121B8(v16, v17);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v30 = v41;
      if (v28)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v34 = v22;
    sub_24B44C398();
    v22 = v34;
    v30 = v41;
    if (v28)
    {
LABEL_4:
      v6 = v19;
      sub_24B416844(v19, v30[7] + *(v37 + 72) * v22);
      goto LABEL_5;
    }

LABEL_17:
    v30[(v22 >> 6) + 8] |= 1 << v22;
    v31 = (v30[6] + 16 * v22);
    *v31 = v16;
    v31[1] = v17;
    v6 = v19;
    sub_24B415BB0(v19, v30[7] + *(v37 + 72) * v22, type metadata accessor for AwardImageLoadState);
    v32 = v30[2];
    v26 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v26)
    {
      goto LABEL_24;
    }

    v30[2] = v33;
LABEL_5:
    v11 &= v11 - 1;
    *(a2 + 32) = v30;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  type metadata accessor for CGSize();
  result = sub_24B4591CC();
  __break(1u);
  return result;
}

uint64_t sub_24B415904(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B41647C(*(a2 + 32), sub_24B4168A8);
  sub_24B4155F4(v3, a2);
}

unint64_t sub_24B415970()
{
  result = qword_2810E35A8;
  if (!qword_2810E35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35A8);
  }

  return result;
}

uint64_t sub_24B4159C4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F1E60;

  return sub_24B414F9C(a1, v4, v5, v6, v7);
}

uint64_t sub_24B415A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B415AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B415B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B415BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B415C18(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardImageFeature(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24B3F2574;

  return sub_24B4140A4(a1, v1 + v5, v9, v10, v11, v12);
}

unint64_t sub_24B415D58(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24B458F8C() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_24B45922C();
      v12 = v10 == 0.0 ? 0.0 : v10;
      MEMORY[0x24C2403E0](*&v12);
      v13 = v11 == 0.0 ? 0.0 : v11;
      MEMORY[0x24C2403E0](*&v13);
      result = sub_24B45926C();
      v14 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_16;
      }

LABEL_17:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for AwardImageLoadState(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_26:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24B415F54(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24B4121B8(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a2 & 1) == 0)
  {
    if (v17 >= v15 && (a2 & 1) == 0)
    {
      sub_24B44C398();
      goto LABEL_7;
    }

    sub_24B44BC90(v15, a2 & 1);
    v22 = sub_24B4121B8(a3, a4);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for CGSize();
    result = sub_24B4591CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AwardImageLoadState(0) - 8) + 72) * v12;

    return sub_24B416844(a1, v20);
  }

LABEL_13:

  return sub_24B4160A8(v12, a1, v18, a3, a4);
}

uint64_t sub_24B4160A8(unint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a3[6] + 16 * a1);
  *v8 = a4;
  v8[1] = a5;
  v9 = a3[7];
  State = type metadata accessor for AwardImageLoadState(0);
  result = sub_24B415BB0(a2, v9 + *(*(State - 8) + 72) * a1, type metadata accessor for AwardImageLoadState);
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

void *sub_24B416154(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, double, double))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24B41626C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

BOOL sub_24B4161E4(double *a1, double *a2)
{
  v3 = *a1;
  v5 = a1[2];
  v4 = a1[3];
  v7 = a2[2];
  v6 = a2[3];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v8 = v3 == *a2 && *(a1 + 1) == *(a2 + 1);
  if (!v8 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  return v4 == v6 && v5 == v7;
}

uint64_t sub_24B41626C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, double, double))
{
  v24 = a2;
  v28 = a4;
  v25 = a1;
  State = type metadata accessor for AwardImageLoadState(0);
  v27 = *(State - 8);
  result = MEMORY[0x28223BE20](State - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    v18 = (*(a3 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    sub_24B415B48(*(a3 + 56) + *(v27 + 72) * v17, v8, type metadata accessor for AwardImageLoadState);
    v21 = v28(v8, v19, v20);
    result = sub_24B415A80(v8, type metadata accessor for AwardImageLoadState);
    if (v21)
    {
      *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_24B44CA9C(v25, v24, v26, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return sub_24B44CA9C(v25, v24, v26, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_24B41647C(uint64_t a1, uint64_t (*a2)(char *, double, double))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_24B41626C(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_24B416154(v10, v6, v4, a2);
  result = MEMORY[0x24C2408A0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_24B41668C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4166D8()
{
  result = qword_2810E3598;
  if (!qword_2810E3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3598);
  }

  return result;
}

uint64_t sub_24B416754(uint64_t a1)
{
  result = sub_24B45836C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B4167F0()
{
  result = qword_2810E35A0;
  if (!qword_2810E35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35A0);
  }

  return result;
}

uint64_t sub_24B416844(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t AwardCanvasPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall AwardCanvasPlaceholder.init(identifier:referenceType:score:)(FitnessAwards::AwardCanvasPlaceholder *__return_ptr retstr, Swift::String identifier, FitnessAwards::PlaceholderReferenceType referenceType, Swift::Double_optional score)
{
  retstr->identifier = identifier;
  retstr->referenceType = referenceType;
  *(&retstr->score.value + 7) = *&score.is_nil;
  LOBYTE(retstr[1].identifier._countAndFlagsBits) = v4 & 1;
}

uint64_t sub_24B416908()
{
  v1 = 0x636E657265666572;
  if (*v0 != 1)
  {
    v1 = 0x65726F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B416970@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4174A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B416998(uint64_t a1)
{
  v2 = sub_24B416BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4169D4(uint64_t a1)
{
  v2 = sub_24B416BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardCanvasPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87E0, &qword_24B45FAA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v12 = *(v1 + 16);
  v10 = *(v1 + 24);
  v9[3] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B416BE8();
  sub_24B45928C();
  v16 = 0;
  v7 = v11;
  sub_24B45914C();
  if (!v7)
  {
    v15 = v12;
    v14 = 1;
    sub_24B416C3C();
    sub_24B45918C();
    v13 = 2;
    sub_24B45912C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B416BE8()
{
  result = qword_2810E2D40[0];
  if (!qword_2810E2D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E2D40);
  }

  return result;
}

unint64_t sub_24B416C3C()
{
  result = qword_2810E2C70[0];
  if (!qword_2810E2C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E2C70);
  }

  return result;
}

uint64_t AwardCanvasPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87E8, &qword_24B45FAA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B416BE8();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_24B4590AC();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_24B416EC4();
  sub_24B4590EC();
  v19 = v22;
  v20 = 2;
  v14 = sub_24B45908C();
  v15 = v8;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B416EC4()
{
  result = qword_27EFE87F0;
  if (!qword_27EFE87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE87F0);
  }

  return result;
}

uint64_t AwardCanvasPlaceholder.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  sub_24B458E6C();
  sub_24B417134(a1, v5);
  if (v4 == 1)
  {
    return sub_24B45924C();
  }

  sub_24B45924C();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x24C2403E0](v7);
}

uint64_t AwardCanvasPlaceholder.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_24B45922C();
  sub_24B458E6C();
  sub_24B417134(v6, v3);
  if (v2 == 1)
  {
    sub_24B45924C();
  }

  else
  {
    sub_24B45924C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x24C2403E0](v4);
  }

  return sub_24B45926C();
}

uint64_t sub_24B417068()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_24B45922C();
  AwardCanvasPlaceholder.hash(into:)(v6);
  return sub_24B45926C();
}

uint64_t sub_24B4170D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7[9] = *v1;
  v7[10] = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  sub_24B45922C();
  AwardCanvasPlaceholder.hash(into:)(v7);
  return sub_24B45926C();
}

uint64_t sub_24B417134(uint64_t a1, unsigned __int8 a2)
{
  sub_24B458E6C();
}

uint64_t _s13FitnessAwards22AwardCanvasPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (sub_24B4591AC() & 1) == 0 || (sub_24B40F680(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_24B417328()
{
  result = qword_27EFE87F8;
  if (!qword_27EFE87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE87F8);
  }

  return result;
}

unint64_t sub_24B4173A0()
{
  result = qword_27EFE8800;
  if (!qword_27EFE8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8800);
  }

  return result;
}

unint64_t sub_24B4173F8()
{
  result = qword_2810E2D30;
  if (!qword_2810E2D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2D30);
  }

  return result;
}

unint64_t sub_24B417450()
{
  result = qword_2810E2D38;
  if (!qword_2810E2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2D38);
  }

  return result;
}

uint64_t sub_24B4174A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
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

uint64_t AwardLockupEnvironment.init(navigateToDetail:resolveAwardDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B4175F4(uint64_t a1)
{
  v2 = sub_24B417BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B417630(uint64_t a1)
{
  v2 = sub_24B417BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B41766C()
{
  if (*v0)
  {
    return 0x7069636974726170;
  }

  else
  {
    return 0x756F6D796E6F6E61;
  }
}

uint64_t sub_24B4176B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F6D796E6F6E61 && a2 == 0xE900000000000073;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61)
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

uint64_t sub_24B41779C(uint64_t a1)
{
  v2 = sub_24B417B48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4177D8(uint64_t a1)
{
  v2 = sub_24B417B48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B417814(uint64_t a1)
{
  v2 = sub_24B417B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B417850(uint64_t a1)
{
  v2 = sub_24B417B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteBrowsingIdentity.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8808, &qword_24B45FD20);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8810, &qword_24B45FD28);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8818, &qword_24B45FD30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B417B48();
  sub_24B45928C();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B417B9C();
    sub_24B45910C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B417BF0();
    sub_24B45910C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B417B48()
{
  result = qword_27EFE8820;
  if (!qword_27EFE8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8820);
  }

  return result;
}

unint64_t sub_24B417B9C()
{
  result = qword_27EFE8828;
  if (!qword_27EFE8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8828);
  }

  return result;
}

unint64_t sub_24B417BF0()
{
  result = qword_27EFE8830;
  if (!qword_27EFE8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8830);
  }

  return result;
}

uint64_t sub_24B417C60@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B417D1C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t RemoteBrowsingIdentity.hashValue.getter(char a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1 & 1);
  return sub_24B45926C();
}

uint64_t sub_24B417D1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8878, &qword_24B4600B0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8880, &qword_24B4600B8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8888, &unk_24B4600C0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B417B48();
  v11 = v26;
  sub_24B45927C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B4590FC();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B3E3810();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B458FFC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v19 = &type metadata for RemoteBrowsingIdentity;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B417B9C();
    sub_24B45905C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B417BF0();
    sub_24B45905C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B4181DC()
{
  result = qword_27EFE8838;
  if (!qword_27EFE8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8838);
  }

  return result;
}

unint64_t sub_24B418274()
{
  result = qword_27EFE8840;
  if (!qword_27EFE8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8840);
  }

  return result;
}

unint64_t sub_24B4182CC()
{
  result = qword_27EFE8848;
  if (!qword_27EFE8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8848);
  }

  return result;
}

unint64_t sub_24B418324()
{
  result = qword_27EFE8850;
  if (!qword_27EFE8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8850);
  }

  return result;
}

unint64_t sub_24B41837C()
{
  result = qword_27EFE8858;
  if (!qword_27EFE8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8858);
  }

  return result;
}

unint64_t sub_24B4183D4()
{
  result = qword_27EFE8860;
  if (!qword_27EFE8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8860);
  }

  return result;
}

unint64_t sub_24B41842C()
{
  result = qword_27EFE8868;
  if (!qword_27EFE8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8868);
  }

  return result;
}

unint64_t sub_24B418484()
{
  result = qword_27EFE8870;
  if (!qword_27EFE8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8870);
  }

  return result;
}

uint64_t sub_24B4184F0(uint64_t a1)
{
  v2 = sub_24B418AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41852C(uint64_t a1)
{
  v2 = sub_24B418AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B418568()
{
  if (*v0)
  {
    return 0x6570704177656976;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24B4185B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000024B466F10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B4591AC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24B41869C(uint64_t a1)
{
  v2 = sub_24B418A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4186D8(uint64_t a1)
{
  v2 = sub_24B418A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B418714(uint64_t a1)
{
  v2 = sub_24B418A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B418750(uint64_t a1)
{
  v2 = sub_24B418A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementEnvironmentCacheMonitorAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8890, &qword_24B4600D0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8898, &qword_24B4600D8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88A0, &qword_24B4600E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B418A3C();
  sub_24B45928C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_24B418A90();
    v14 = v18;
    sub_24B45910C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_24B418AE4();
    sub_24B45910C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_24B418A3C()
{
  result = qword_2810E2948[0];
  if (!qword_2810E2948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E2948);
  }

  return result;
}

unint64_t sub_24B418A90()
{
  result = qword_2810E2930;
  if (!qword_2810E2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2930);
  }

  return result;
}

unint64_t sub_24B418AE4()
{
  result = qword_27EFE88A8;
  if (!qword_27EFE88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88A8);
  }

  return result;
}

uint64_t AchievementEnvironmentCacheMonitorAction.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

uint64_t AchievementEnvironmentCacheMonitorAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88B0, &qword_24B4600E8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88B8, &qword_24B4600F0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88C0, &unk_24B4600F8);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B418A3C();
  v12 = v31;
  sub_24B45927C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_24B4590FC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_24B3E3810();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_24B458FFC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
      *v22 = &type metadata for AchievementEnvironmentCacheMonitorAction;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_24B418A90();
        sub_24B45905C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_24B418AE4();
        sub_24B45905C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_24B41909C()
{
  result = qword_27EFE88C8;
  if (!qword_27EFE88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88C8);
  }

  return result;
}

unint64_t sub_24B419134()
{
  result = qword_27EFE88D0;
  if (!qword_27EFE88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88D0);
  }

  return result;
}

unint64_t sub_24B41918C()
{
  result = qword_2810E2910;
  if (!qword_2810E2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2910);
  }

  return result;
}

unint64_t sub_24B4191E4()
{
  result = qword_2810E2918;
  if (!qword_2810E2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2918);
  }

  return result;
}

unint64_t sub_24B41923C()
{
  result = qword_2810E2920;
  if (!qword_2810E2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2920);
  }

  return result;
}

unint64_t sub_24B419294()
{
  result = qword_2810E2928;
  if (!qword_2810E2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2928);
  }

  return result;
}

unint64_t sub_24B4192EC()
{
  result = qword_2810E2938;
  if (!qword_2810E2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2938);
  }

  return result;
}

unint64_t sub_24B419344()
{
  result = qword_2810E2940;
  if (!qword_2810E2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2940);
  }

  return result;
}

uint64_t AwardToastDetail.init(templateUniqueNames:title:subtitle:imageData:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AwardToastDetail.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AwardToastDetail.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t sub_24B419424()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x656C746974627573;
  v4 = 0x7461446567616D69;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_24B4194BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B41BDD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4194E4(uint64_t a1)
{
  v2 = sub_24B41984C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B419520(uint64_t a1)
{
  v2 = sub_24B41984C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastDetail.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88D8, &unk_24B460490);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v19 = v1[2];
  v20 = v8;
  v11 = v1[5];
  v17 = v1[4];
  v18 = v10;
  v16 = v11;
  v15 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B41984C();

  sub_24B45928C();
  v22 = v9;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84C8, &qword_24B45DE98);
  sub_24B40646C(&qword_27EFE84D0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_24B45918C();
  if (v2)
  {
  }

  else
  {
    v12 = v16;

    LOBYTE(v22) = 1;
    sub_24B45914C();
    LOBYTE(v22) = 2;
    sub_24B45911C();
    v22 = v12;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88E8, &qword_24B4604A0);
    sub_24B419D70(&qword_27EFE88F0, sub_24B4198A0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24B45918C();
    LOBYTE(v22) = v15;
    v21 = 4;
    sub_24B4198F4();
    sub_24B45918C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B41984C()
{
  result = qword_27EFE88E0;
  if (!qword_27EFE88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88E0);
  }

  return result;
}

unint64_t sub_24B4198A0()
{
  result = qword_27EFE88F8;
  if (!qword_27EFE88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE88F8);
  }

  return result;
}

unint64_t sub_24B4198F4()
{
  result = qword_27EFE8900;
  if (!qword_27EFE8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8900);
  }

  return result;
}

uint64_t AwardToastDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8908, &qword_24B4604A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B41984C();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84C8, &qword_24B45DE98);
  v24 = 0;
  sub_24B40646C(&qword_27EFE8510, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24B4590EC();
  v9 = v25;
  LOBYTE(v25) = 1;
  v10 = sub_24B4590AC();
  v23 = v11;
  v21 = v10;
  LOBYTE(v25) = 2;
  v20 = sub_24B45907C();
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE88E8, &qword_24B4604A0);
  v24 = 3;
  sub_24B419D70(&qword_27EFE8910, sub_24B419DF4, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_24B4590EC();
  v19 = v25;
  v24 = 4;
  sub_24B419E48();
  sub_24B4590EC();
  (*(v6 + 8))(v8, v5);
  v14 = v25;
  v15 = v20;
  v16 = v21;
  *a2 = v9;
  *(a2 + 8) = v16;
  v17 = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v15;
  v18 = v19;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B419D70(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE88E8, &qword_24B4604A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B419DF4()
{
  result = qword_27EFE8918;
  if (!qword_27EFE8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8918);
  }

  return result;
}

unint64_t sub_24B419E48()
{
  result = qword_27EFE8920;
  if (!qword_27EFE8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8920);
  }

  return result;
}

uint64_t AwardToastDetail.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(v1 + 48);
  MEMORY[0x24C2403C0](*(*v1 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v3 + 40;
    do
    {

      sub_24B458E6C();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  sub_24B458E6C();
  sub_24B45924C();
  if (v5)
  {
    sub_24B458E6C();
  }

  sub_24B41B9E4(a1, v4);
  return MEMORY[0x24C2403C0](v6);
}

uint64_t AwardToastDetail.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *&v5[72] = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  v9 = v3;
  sub_24B45922C();
  AwardToastDetail.hash(into:)(v5);
  return sub_24B45926C();
}

uint64_t sub_24B41A03C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *&v5[72] = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  v9 = v3;
  sub_24B45922C();
  AwardToastDetail.hash(into:)(v5);
  return sub_24B45926C();
}

uint64_t sub_24B41A0AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = *(v1 + 24);
  v9 = v3;
  v10 = v4;
  sub_24B45922C();
  AwardToastDetail.hash(into:)(v6);
  return sub_24B45926C();
}

uint64_t sub_24B41A114(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_12:
    v27 = v11;
    v14 = *(*(v2 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));

    sub_24B3D81E4(v14);
    sub_24B458E6C();

    if (!v14)
    {
      v12 = 0;
LABEL_5:
      MEMORY[0x24C2403C0](v12);
      goto LABEL_6;
    }

    if (v14 == 1)
    {
      v12 = 1;
      goto LABEL_5;
    }

    MEMORY[0x24C2403C0](2);
    MEMORY[0x24C2403C0](*(v14 + 16));
    v28 = *(v14 + 16);
    if (v28)
    {
      v22 = v10;
      v23 = v8;
      v24 = v4;
      v25 = v2;
      v26 = a1;
      for (i = 0; i != v28; ++i)
      {
        v16 = *(v14 + 32 + 40 * i + 32);

        sub_24B458E6C();
        sub_24B458E6C();
        MEMORY[0x24C2403C0](*(v16 + 16));
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = (v16 + 64);
          do
          {
            v20 = *(v18 - 1);
            v21 = *v18;

            sub_24B458E6C();
            sub_24B458E6C();

            if (v21)
            {
              sub_24B45924C();
            }

            else
            {
              sub_24B45924C();
              if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v19 = v20;
              }

              else
              {
                v19 = 0;
              }

              MEMORY[0x24C2403E0](v19);
            }

            v18 += 40;
            --v17;
          }

          while (v17);
        }
      }

      sub_24B3D8220(v14);
      v2 = v25;
      a1 = v26;
      v8 = v23;
      v4 = v24;
      v10 = v22;
    }

    else
    {
      sub_24B3D8220(v14);
    }

LABEL_6:
    v7 &= v7 - 1;
    result = sub_24B45926C();
    v10 ^= result;
    v11 = v27;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return MEMORY[0x24C2403C0](v10);
    }

    v7 = *(v4 + 8 * v13);
    ++v11;
    if (v7)
    {
      v11 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}