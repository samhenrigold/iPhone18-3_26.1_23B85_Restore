uint64_t sub_27291DCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFC8, &qword_272935BC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  sub_27292DD84();
  v10 = a2;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFD0, &qword_272935BD0);
  sub_272924984();
  sub_27292D8F4();
  sub_27292E124();
  sub_27290B998(&qword_28089C010, &qword_28089BFC8, &qword_272935BC8, MEMORY[0x277CDD6E0]);
  sub_27292DED4();
  return (*(v5 + 8))(v7, v4);
}

double sub_27291DE78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C000, &qword_272935BE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFE0, &qword_272935BD8);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C018, &qword_272935BF0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - v13;
  *v7 = sub_27292DB44();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C020, &qword_272935BF8);
  sub_27291E2C0(a1, &v7[*(v15 + 44)]);
  v26[3] = a2;
  sub_27292D9D4();
  sub_27292E0E4();
  sub_27292DA54();
  sub_27291A7B8(v7, v10, &qword_28089C000, &qword_272935BE8);
  v16 = &v10[*(v8 + 36)];
  v17 = v33;
  *(v16 + 4) = v32;
  *(v16 + 5) = v17;
  *(v16 + 6) = v34;
  v18 = v29;
  *v16 = v28;
  *(v16 + 1) = v18;
  v19 = v31;
  *(v16 + 2) = v30;
  *(v16 + 3) = v19;
  v20 = sub_27292E094();
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFE8, &qword_272935BE0);
  sub_272924A90();
  sub_272924B48();
  sub_27292DF34();
  sub_27290B880(v10, &qword_28089BFE0, &qword_272935BD8);
  sub_27292D9D4();
  sub_27292E0E4();
  sub_27292D974();
  v22 = v27;
  (*(v12 + 32))(v27, v14, v11);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFD0, &qword_272935BD0) + 36));
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;
  result = v37[0];
  v23[2] = *v37;
  return result;
}

uint64_t sub_27291E2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C028, &qword_272935C00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C030, &qword_272935C08);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C038, &qword_272935C10);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v34 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  if (*(a1 + 24) == 1 && (type metadata accessor for GMEnrollmentSetupIntroView(0), (sub_27291AD00() & 1) != 0))
  {
    v24 = sub_27292DB54();
  }

  else
  {
    v24 = sub_27292DB44();
  }

  *v21 = v24;
  *(v21 + 1) = 0;
  v21[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C040, &qword_272935C18);
  sub_27291E74C(a1, &v21[*(v25 + 44)]);
  sub_27291A7B8(v21, v23, &qword_28089C038, &qword_272935C10);
  *v5 = sub_27292DB44();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C048, &qword_272935C20);
  sub_27291F7E4(a1, &v5[*(v26 + 44)]);
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  [qword_28089BEA0 isIpad];
  sub_27292E0E4();
  sub_27292DA54();
  sub_27291A7B8(v5, v12, &qword_28089C028, &qword_272935C00);
  v27 = &v12[*(v6 + 36)];
  v28 = v41;
  *(v27 + 4) = v40;
  *(v27 + 5) = v28;
  *(v27 + 6) = v42;
  v29 = v37;
  *v27 = v36;
  *(v27 + 1) = v29;
  v30 = v39;
  *(v27 + 2) = v38;
  *(v27 + 3) = v30;
  sub_27291A7B8(v12, v14, &qword_28089C030, &qword_272935C08);
  sub_27290939C(v23, v18, &qword_28089C038, &qword_272935C10);
  sub_27290939C(v14, v9, &qword_28089C030, &qword_272935C08);
  v31 = v35;
  sub_27290939C(v18, v35, &qword_28089C038, &qword_272935C10);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C050, &qword_272935C28);
  sub_27290939C(v9, v31 + *(v32 + 48), &qword_28089C030, &qword_272935C08);
  sub_27290B880(v14, &qword_28089C030, &qword_272935C08);
  sub_27290B880(v23, &qword_28089C038, &qword_272935C10);
  sub_27290B880(v9, &qword_28089C030, &qword_272935C08);
  return sub_27290B880(v18, &qword_28089C038, &qword_272935C10);
}

void sub_27291E74C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v117 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C218, &qword_272935DB8);
  MEMORY[0x28223BE20](v110);
  v112 = (&v93 - v3);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C220, &qword_272935DC0);
  MEMORY[0x28223BE20](v111);
  v108 = &v93 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C228, &qword_272935DC8);
  v5 = MEMORY[0x28223BE20](v104);
  v106 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v107 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C230, &qword_272935DD0);
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x28223BE20](v8);
  v101 = &v93 - v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C238, &qword_272935DD8);
  v10 = MEMORY[0x28223BE20](v100);
  v105 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v99 = &v93 - v13;
  MEMORY[0x28223BE20](v12);
  v109 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C240, &qword_272935DE0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v116 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v115 = &v93 - v18;
  v19 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v118 = v21;
  v119 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C248, &qword_272935DE8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v93 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C250, &qword_272935DF0);
  v26 = MEMORY[0x28223BE20](v25);
  v114 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v120 = &v93 - v28;
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v29 = qword_28089BEA0;
  v113 = [qword_28089BEA0 isIpad];
  v30 = *(a1 + 24);
  if (v30 == 1 && (sub_27291AD00() & 1) != 0)
  {
    v31 = sub_27292DB54();
  }

  else
  {
    v31 = sub_27292DB44();
  }

  *v24 = v31;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C258, &qword_272935DF8);
  sub_272922988(a1, &v24[*(v32 + 44)]);
  v33 = a1;
  v34 = a1;
  v35 = v119;
  sub_27290B624(v33, v119);
  v36 = *(v20 + 80);
  v37 = (v36 + 16) & ~v36;
  v97 = v36;
  v38 = swift_allocObject();
  v98 = v37;
  sub_27290B5C0(v35, v38 + v37);
  v39 = v120;
  sub_27291A7B8(v24, v120, &qword_28089C248, &qword_272935DE8);
  v40 = (v39 + *(v25 + 36));
  *v40 = sub_272925704;
  v40[1] = v38;
  v40[2] = 0;
  v40[3] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v129 || ![v29 isBuddyOrFollowUp])
  {
    v41 = [v29 isIpad];
    v42 = v115;
    if (v41)
    {
      v43 = v112;
      *v112 = 0;
      *(v43 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_27290B998(&qword_28089C270, &qword_28089C220, &qword_272935DC0, MEMORY[0x277CE14C0]);
      sub_27292DC34();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C260, &qword_272935E00);
      (*(*(v44 - 8) + 56))(v42, 0, 1, v44);
    }

    else
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C260, &qword_272935E00);
      (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
    }

LABEL_20:
    v86 = v113;
    v87 = v113 ^ 1;
    v88 = v120;
    v89 = v114;
    sub_27290939C(v120, v114, &qword_28089C250, &qword_272935DF0);
    v90 = v116;
    sub_27290939C(v42, v116, &qword_28089C240, &qword_272935DE0);
    v91 = v117;
    *v117 = 0;
    *(v91 + 8) = v87;
    *(v91 + 9) = v86;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C268, &qword_272935E08);
    sub_27290939C(v89, v91 + *(v92 + 48), &qword_28089C250, &qword_272935DF0);
    sub_27290939C(v90, v91 + *(v92 + 64), &qword_28089C240, &qword_272935DE0);
    sub_27290B880(v42, &qword_28089C240, &qword_272935DE0);
    sub_27290B880(v88, &qword_28089C250, &qword_272935DF0);
    sub_27290B880(v90, &qword_28089C240, &qword_272935DE0);
    sub_27290B880(v89, &qword_28089C250, &qword_272935DF0);
    return;
  }

  if ([v29 isIpad])
  {
    LOBYTE(v139) = 1;
    LOBYTE(v134) = 0;
    *&v121 = 0;
    BYTE8(v121) = 1;
    v125 = 0;
  }

  else
  {
    sub_27292E0E4();
    sub_27292D974();
    v128 = 1;
    v127 = v135;
    v126 = v137;
    LOBYTE(v139) = 1;
    *&v121 = 0;
    BYTE8(v121) = 1;
    *&v122 = v134;
    BYTE8(v122) = v135;
    *&v123 = v136;
    BYTE8(v123) = v137;
    v124 = v138;
    v125 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0C0, &qword_272935C98);
  sub_272924BEC();
  sub_27292DC34();
  v95 = v34;
  v46 = sub_27292E224();
  v47 = [v29 VTUIDeviceSpecificString_];

  v96 = v29;
  if (v47)
  {
    v48 = sub_27292E254();
    v50 = v49;

    *&v121 = v48;
    *(&v121 + 1) = v50;
    sub_2729255E8();
    v51 = sub_27292DE44();
    v53 = v52;
    LOBYTE(v48) = v54;
    sub_27292DDF4();
    v55 = sub_27292DE34();
    v57 = v56;
    v59 = v58;
    v61 = v60;

    sub_27292563C(v51, v53, v48 & 1);

    *&v121 = v55;
    *(&v121 + 1) = v57;
    LOBYTE(v122) = v59 & 1;
    *(&v122 + 1) = v61;
    sub_27292E094();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C278, &unk_272935E10);
    sub_27292571C();
    v62 = v101;
    sub_27292DF34();
    sub_27292563C(v55, v57, v59 & 1);

    v63 = sub_27292DF64();
    v64 = v99;
    (*(v102 + 32))(v99, v62, v103);
    *(v64 + *(v100 + 36)) = v63;
    sub_27291A7B8(v64, v109, &qword_28089C238, &qword_272935DD8);
    if ([v96 isIpad])
    {
      sub_27292E0E4();
      sub_27292D974();
      LODWORD(v102) = 0;
      v103 = v139;
      v100 = v143;
      v101 = v141;
      v99 = v144;
      v128 = 1;
      v127 = v140;
      v126 = v142;
      v93 = 1;
      v94 = v140;
      v96 = v142;
      LOBYTE(v121) = 0;
    }

    else
    {
      v103 = 0;
      v100 = 0;
      v101 = 0;
      v99 = 0;
      v96 = 0;
      v93 = 0;
      v94 = 0;
      LODWORD(v102) = 1;
    }

    v65 = v119;
    sub_27290B624(v95, v119);
    v66 = v98;
    v67 = swift_allocObject();
    v68 = sub_27290B5C0(v65, v67 + v66);
    MEMORY[0x28223BE20](v68);
    v69 = v107;
    sub_27292E054();
    v70 = sub_27292DF84();
    KeyPath = swift_getKeyPath();
    v72 = (v69 + *(v104 + 36));
    *v72 = KeyPath;
    v72[1] = v70;
    v123 = v131;
    v124 = v132;
    v125 = v133;
    v121 = v129;
    v122 = v130;
    v73 = v105;
    sub_27290939C(v109, v105, &qword_28089C238, &qword_272935DD8);
    v74 = v106;
    sub_27290939C(v69, v106, &qword_28089C228, &qword_272935DC8);
    v75 = v124;
    v76 = v108;
    *(v108 + 2) = v123;
    *(v76 + 48) = v75;
    *(v76 + 64) = v125;
    v77 = v122;
    *v76 = v121;
    *(v76 + 16) = v77;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C298, &qword_272935E50);
    sub_27290939C(v73, v76 + v78[12], &qword_28089C238, &qword_272935DD8);
    v79 = v76 + v78[16];
    v80 = v93;
    *v79 = 0;
    *(v79 + 8) = v80;
    v81 = v94;
    *(v79 + 16) = v103;
    *(v79 + 24) = v81;
    v82 = v96;
    *(v79 + 32) = v101;
    *(v79 + 40) = v82;
    v83 = v99;
    *(v79 + 48) = v100;
    *(v79 + 56) = v83;
    *(v79 + 64) = v102;
    sub_27290939C(v74, v76 + v78[20], &qword_28089C228, &qword_272935DC8);
    sub_27290B880(v74, &qword_28089C228, &qword_272935DC8);
    sub_27290B880(v73, &qword_28089C238, &qword_272935DD8);
    sub_27290939C(v76, v112, &qword_28089C220, &qword_272935DC0);
    swift_storeEnumTagMultiPayload();
    sub_27290B998(&qword_28089C270, &qword_28089C220, &qword_272935DC0, MEMORY[0x277CE14C0]);
    v84 = v115;
    sub_27292DC34();
    v42 = v84;
    sub_27290B880(v76, &qword_28089C220, &qword_272935DC0);
    sub_27290B880(v69, &qword_28089C228, &qword_272935DC8);
    sub_27290B880(v109, &qword_28089C238, &qword_272935DD8);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C260, &qword_272935E00);
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_27291F610(uint64_t a1@<X8>)
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v2 = qword_28089BEA0;
  v3 = sub_27292E224();
  v4 = [v2 VTUIDeviceSpecificString_];

  if (v4)
  {
    sub_27292E254();

    sub_2729255E8();
    v5 = sub_27292DE44();
    v7 = v6;
    v9 = v8;
    sub_27292DDF4();
    v10 = sub_27292DE34();
    v12 = v11;
    v14 = v13;

    sub_27292563C(v5, v7, v9 & 1);

    v15 = [objc_opt_self() systemBlueColor];
    sub_27292DFD4();
    v16 = sub_27292DE24();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sub_27292563C(v10, v12, v14 & 1);

    *a1 = v16;
    *(a1 + 8) = v18;
    *(a1 + 16) = v20 & 1;
    *(a1 + 24) = v22;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_27291F7E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v153 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C058, &qword_272935C30);
  v154 = *(v155 - 8);
  v3 = MEMORY[0x28223BE20](v155);
  v165 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v164 = &v119 - v5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C060, &qword_272935C38);
  MEMORY[0x28223BE20](v128);
  v130 = &v119 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C068, &qword_272935C40);
  MEMORY[0x28223BE20](v129);
  v131 = &v119 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C070, &qword_272935C48);
  MEMORY[0x28223BE20](v151);
  v132 = &v119 - v8;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C078, &qword_272935C50);
  v134 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v133 = &v119 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C080, &qword_272935C58);
  MEMORY[0x28223BE20](v146);
  v148 = &v119 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C088, &qword_272935C60);
  MEMORY[0x28223BE20](v136);
  v135 = &v119 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C090, &qword_272935C68);
  v138 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v137 = &v119 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C098, &qword_272935C70);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v169 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v163 = &v119 - v16;
  v158 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v139 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = v17;
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0A0, &qword_272935C78);
  MEMORY[0x28223BE20](v143);
  v20 = &v119 - v19;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0A8, &qword_272935C80);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v142 = &v119 - v21;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0B0, &qword_272935C88);
  v22 = MEMORY[0x28223BE20](v141);
  v162 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v140 = &v119 - v25;
  MEMORY[0x28223BE20](v24);
  v168 = &v119 - v26;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0B8, &qword_272935C90);
  v149 = *(v150 - 8);
  v27 = MEMORY[0x28223BE20](v150);
  v167 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v161 = &v119 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v166 = &v119 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v119 - v33;
  v35 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v36 = *(a1 + 8);
  [v35 scaledValueForValue_];
  v38 = v37;

  v39 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  if ([objc_opt_self() isNaturalUIEnabled])
  {
    v40 = v36 * 0.5;
  }

  else
  {
    v40 = *(a1 + 16);
  }

  [v39 scaledValueForValue_];
  v42 = v41;

  v43 = sub_27292E094();
  MEMORY[0x28223BE20](v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0C0, &qword_272935C98);
  v159 = sub_272924BEC();
  v160 = v34;
  sub_27292E0A4();
  sub_27290B624(a1, v18);
  v45 = (v139[80] + 16) & ~v139[80];
  v46 = swift_allocObject();
  v120 = v45;
  v139 = v18;
  v47 = sub_27290B5C0(v18, v46 + v45);
  MEMORY[0x28223BE20](v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0D0, &qword_272935CA0);
  sub_27290B998(&qword_28089C0D8, &qword_28089C0D0, &qword_272935CA0, MEMORY[0x277CE11A8]);
  sub_27292E054();
  v48 = a1;
  sub_27292E0E4();
  v127 = v38;
  sub_27292D974();
  v49 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0E0, &qword_272935CA8) + 36)];
  v50 = v179;
  *v49 = v178;
  *(v49 + 1) = v50;
  *(v49 + 2) = v180;
  v119 = objc_opt_self();
  v51 = [v119 systemBlueColor];
  v52 = sub_27292DFD4();
  v53 = sub_27292DDA4();
  v54 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0E8, &qword_272935CB0) + 36)];
  *v54 = v52;
  v54[8] = v53;
  v55 = &v20[*(v143 + 36)];
  v126 = sub_27292DA44();
  v56 = *(v126 + 20);
  v57 = *MEMORY[0x277CE0118];
  v58 = sub_27292DB04();
  v59 = *(v58 - 8);
  v60 = *(v59 + 104);
  v125 = v57;
  v124 = v58;
  v123 = v60;
  v122 = v59 + 104;
  (v60)(&v55[v56], v57);
  *v55 = v42;
  *(v55 + 1) = v42;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0F0, &qword_272935CB8);
  *&v55[*(v121 + 36)] = 256;
  sub_27292E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0F8, &qword_272935CC0);
  sub_272924E34();
  v61 = MEMORY[0x277CE1340];
  sub_27290B998(&qword_28089C140, &qword_28089C0F8, &qword_272935CC0, MEMORY[0x277CE0480]);
  v62 = MEMORY[0x277CE1350];
  v63 = v44;
  v64 = v142;
  sub_27292DF34();
  sub_27290B880(v20, &qword_28089C0A0, &qword_272935C78);
  if (sub_27291AE14())
  {
    v65 = 1.0;
  }

  else
  {
    v65 = 0.0;
  }

  v66 = v140;
  (*(v144 + 32))(v140, v64, v145);
  *(v66 + *(v141 + 36)) = v65;
  sub_27291A7B8(v66, v168, &qword_28089C0B0, &qword_272935C88);
  v67 = sub_27292E094();
  MEMORY[0x28223BE20](v67);
  v158 = v63;
  sub_27292E0A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v157 = v48;
  if (v170)
  {
    goto LABEL_13;
  }

  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  if (([qword_28089BEA0 isBuddyOrFollowUp] & 1) == 0)
  {
LABEL_13:
    sub_27292E094();
    v82 = sub_27292DB14();
    MEMORY[0x28223BE20](v82);
    v170 = v62;
    v171 = v61;
    swift_getOpaqueTypeConformance2();
    v83 = v137;
    sub_27292E0B4();
    v84 = v138;
    v85 = v147;
    (*(v138 + 16))(v148, v83, v147);
    swift_storeEnumTagMultiPayload();
    sub_27292506C();
    v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C150, &qword_272935CD8);
    v87 = sub_272925134();
    v88 = sub_27290B998(&qword_28089C180, &qword_28089C150, &qword_272935CD8, MEMORY[0x277CE0480]);
    v170 = v151;
    v171 = MEMORY[0x277CE1350];
    v172 = v86;
    v173 = v151;
    v174 = v87;
    v175 = MEMORY[0x277CE1340];
    v176 = v88;
    v177 = v87;
    swift_getOpaqueTypeConformance2();
    v89 = v163;
    sub_27292DC34();
    (*(v84 + 8))(v83, v85);
  }

  else
  {
    v68 = v139;
    sub_27290B624(v48, v139);
    v69 = v120;
    v70 = swift_allocObject();
    v71 = sub_27290B5C0(v68, v70 + v69);
    MEMORY[0x28223BE20](v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1A0, &qword_272935CF8);
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C1A8, &qword_272935D00);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C1B0, &qword_272935D08);
    v74 = sub_27292547C();
    v75 = sub_272925500();
    v170 = v72;
    v171 = v62;
    v172 = v73;
    v173 = v73;
    v174 = v74;
    v175 = v61;
    v176 = v75;
    v177 = v75;
    swift_getOpaqueTypeConformance2();
    v76 = v130;
    sub_27292E054();
    sub_27292E0E4();
    sub_27292D974();
    v77 = (v76 + *(v128 + 36));
    v78 = v182;
    *v77 = v181;
    v77[1] = v78;
    v77[2] = v183;
    v79 = v62;
    if (*(v157 + 24) == 1)
    {
      v80 = [v119 systemGray6Color];
      v81 = sub_27292DFD4();
    }

    else
    {
      v81 = sub_27292DF84();
    }

    v106 = v81;
    v107 = sub_27292DDA4();
    v108 = v131;
    sub_27291A7B8(v76, v131, &qword_28089C060, &qword_272935C38);
    v109 = v108 + *(v129 + 36);
    *v109 = v106;
    *(v109 + 8) = v107;
    v110 = v151;
    v111 = v132;
    v112 = &v132[*(v151 + 36)];
    v123(&v112[*(v126 + 20)], v125, v124);
    *v112 = v42;
    *(v112 + 1) = v42;
    *&v112[*(v121 + 36)] = 256;
    sub_27291A7B8(v108, v111, &qword_28089C068, &qword_272935C40);
    sub_27292E094();
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C150, &qword_272935CD8);
    v114 = sub_272925134();
    v118 = sub_27290B998(&qword_28089C180, &qword_28089C150, &qword_272935CD8, MEMORY[0x277CE0480]);
    v115 = v133;
    sub_27292DF34();
    sub_27290B880(v111, &qword_28089C070, &qword_272935C48);
    v116 = v134;
    v117 = v152;
    (*(v134 + 16))(v148, v115, v152);
    swift_storeEnumTagMultiPayload();
    sub_27292506C();
    v170 = v110;
    v171 = v79;
    v172 = v113;
    v173 = v110;
    v174 = v114;
    v175 = MEMORY[0x277CE1340];
    v176 = v118;
    v177 = v114;
    swift_getOpaqueTypeConformance2();
    v89 = v163;
    sub_27292DC34();
    (*(v116 + 8))(v115, v117);
  }

  v90 = sub_27292E094();
  MEMORY[0x28223BE20](v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C188, &qword_272935CE8);
  sub_272925364();
  v91 = v164;
  sub_27292E0A4();
  v92 = v149;
  v93 = *(v149 + 16);
  v94 = v161;
  v95 = v150;
  v93(v161, v160, v150);
  v96 = v162;
  sub_27290939C(v168, v162, &qword_28089C0B0, &qword_272935C88);
  v93(v167, v166, v95);
  sub_27290939C(v89, v169, &qword_28089C098, &qword_272935C70);
  v97 = v154;
  v159 = *(v154 + 16);
  v98 = v91;
  v99 = v155;
  v159(v165, v98, v155);
  v100 = v153;
  v93(v153, v94, v95);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C198, &qword_272935CF0);
  sub_27290939C(v96, &v100[v101[12]], &qword_28089C0B0, &qword_272935C88);
  v93(&v100[v101[16]], v167, v95);
  sub_27290939C(v169, &v100[v101[20]], &qword_28089C098, &qword_272935C70);
  v102 = v165;
  v159(&v100[v101[24]], v165, v99);
  v103 = *(v97 + 8);
  v103(v164, v99);
  sub_27290B880(v163, &qword_28089C098, &qword_272935C70);
  v104 = *(v92 + 8);
  v104(v166, v95);
  sub_27290B880(v168, &qword_28089C0B0, &qword_272935C88);
  v104(v160, v95);
  v103(v102, v99);
  sub_27290B880(v169, &qword_28089C098, &qword_272935C70);
  v104(v167, v95);
  sub_27290B880(v162, &qword_28089C0B0, &qword_272935C88);
  return (v104)(v161, v95);
}

double sub_272920FF4@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for GMEnrollmentSetupIntroView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (!v4)
  {
    if (qword_28089BA10 != -1)
    {
      swift_once();
    }

    [qword_28089BEA0 isBuddyOrFollowUp];
  }

  sub_27292E0E4();
  sub_27292D974();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

double sub_272921148(void **a1)
{
  v2 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (aBlock == 2 || sub_27291BDE0(aBlock + 1) == 4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;

    sub_27292D8B4();
    v6 = *a1;
    sub_27290B624(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = sub_27292E4B4();
    sub_27290B624(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    sub_27290B5C0(&aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
    v19 = sub_2729256EC;
    v20 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_27290B0BC;
    v18 = &block_descriptor_52;
    v10 = _Block_copy(&aBlock);

    [v6 siriIntroViewControllerContinuePressed:v7 completion:v10];
LABEL_4:
    _Block_release(v10);
LABEL_5:
    swift_unknownObjectRelease();
    return result;
  }

  sub_27291AC24();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (aBlock == 4)
  {
    v12 = *a1;
    sub_27290B624(a1, v5);
    v13 = sub_27292E4B4();
    v19 = nullsub_1;
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_27290B0BC;
    v18 = &block_descriptor_2;
    v10 = _Block_copy(&aBlock);
    [v12 siriIntroViewControllerContinuePressed:v13 completion:v10];
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (aBlock == 7)
  {
    v14 = *a1;
    sub_27290B624(a1, v5);
    [v14 siriIntroViewControllerContinuePressedOnSiriReady_];
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_27292151C(uint64_t a1)
{
  type metadata accessor for GMEnrollmentSetupIntroView(0);
  sub_27291AC24();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27292D8B4();
}

uint64_t sub_2729215A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_27292E0E4();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1E0, &qword_272935D48);
  return sub_2729215F4(a1, a2 + *(v5 + 44));
}

uint64_t sub_2729215F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v71 = a2;
  v3 = sub_27292DCB4();
  v4 = *(v3 - 8);
  v67 = v3;
  v68 = v4;
  MEMORY[0x28223BE20](v3);
  v62 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1E8, &qword_272935D50);
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v53[-v7];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1F0, &qword_272935D58) - 8;
  v8 = MEMORY[0x28223BE20](v65);
  v66 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v53[-v11];
  MEMORY[0x28223BE20](v10);
  v72 = &v53[-v12];
  v13 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v55 = *(a1 + *(v13 + 36) + 8);
  v56 = v13;
  sub_27291B67C();
  v84 = v14;
  v85 = v15;
  sub_2729255E8();
  v16 = sub_27292DE44();
  v18 = v17;
  v20 = v19;
  sub_27292DDB4();
  v21 = sub_27292DE34();
  v23 = v22;
  v25 = v24;

  sub_27292563C(v16, v18, v20 & 1);

  sub_27292DDD4();
  v26 = sub_27292DE14();
  v58 = v27;
  v59 = v26;
  LOBYTE(v16) = v28;
  v60 = v29;
  sub_27292563C(v21, v23, v25 & 1);

  sub_27292E0E4();
  sub_27292DA54();
  v106 = v16 & 1;
  v30 = v16 & 1;
  v54 = v16 & 1;
  *(&v57 + 1) = sub_27292DF94();
  *&v57 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v31 = 1.0;
  if (v84)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = v62;
  sub_27292DCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF28, &qword_272935AC8);
  sub_27290B998(&qword_28089C1F8, &qword_28089BF28, &qword_272935AC8, MEMORY[0x277CDD7F8]);
  sub_27292568C(&qword_28089C200, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  v34 = v63;
  v35 = v67;
  sub_27292DE74();
  (*(v68 + 8))(v33, v35);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (!v84)
  {
    v31 = 0.0;
  }

  v36 = v64;
  (*(v69 + 32))(v64, v34, v70);
  *&v36[*(v65 + 44)] = v31;
  v37 = v36;
  v38 = v72;
  sub_27291A7B8(v37, v72, &qword_28089C1F0, &qword_272935D58);
  v39 = v66;
  sub_27290939C(v38, v66, &qword_28089C1F0, &qword_272935D58);
  v41 = v58;
  v40 = v59;
  *&v73 = v59;
  *(&v73 + 1) = v58;
  LOBYTE(v74) = v30;
  *(&v74 + 1) = *v105;
  DWORD1(v74) = *&v105[3];
  v42 = v60;
  *(&v74 + 1) = v60;
  v79 = v102;
  v80 = v103;
  v81 = v104;
  v75 = v98;
  v76 = v99;
  v77 = v100;
  v78 = v101;
  v43 = v57;
  v82 = v57;
  v83 = v32;
  v44 = v101;
  v45 = v71;
  *(v71 + 64) = v100;
  *(v45 + 80) = v44;
  v46 = v80;
  *(v45 + 96) = v79;
  *(v45 + 112) = v46;
  v47 = v74;
  *v45 = v73;
  *(v45 + 16) = v47;
  v48 = v76;
  *(v45 + 32) = v75;
  *(v45 + 48) = v48;
  v49 = v82;
  *(v45 + 128) = v81;
  *(v45 + 144) = v49;
  *(v45 + 160) = v83;
  v50 = v45;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C208, &qword_272935DA8);
  sub_27290939C(v39, v50 + *(v51 + 48), &qword_28089C1F0, &qword_272935D58);
  sub_27290939C(&v73, &v84, &qword_28089C210, &qword_272935DB0);
  sub_27290B880(v72, &qword_28089C1F0, &qword_272935D58);
  sub_27290B880(v39, &qword_28089C1F0, &qword_272935D58);
  v84 = v40;
  v85 = v41;
  v86 = v54;
  *v87 = *v105;
  *&v87[3] = *&v105[3];
  v93 = v102;
  v94 = v103;
  v95 = v104;
  v89 = v98;
  v90 = v99;
  v91 = v100;
  v92 = v101;
  v88 = v42;
  v96 = v43;
  v97 = v32;
  return sub_27290B880(&v84, &qword_28089C210, &qword_272935DB0);
}

double sub_272921CF8@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for GMEnrollmentSetupIntroView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (!v4)
  {
    if (qword_28089BA10 != -1)
    {
      swift_once();
    }

    [qword_28089BEA0 isBuddyOrFollowUp];
  }

  sub_27292E0E4();
  sub_27292D974();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

double sub_272921E4C@<D0>(uint64_t a2@<X8>)
{
  sub_27292E0E4();
  sub_27292D974();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_272921EE4(void **a1)
{
  v2 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  MEMORY[0x28223BE20](v2);
  v4 = *a1;
  sub_27290B624(a1, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  [v4 siriIntroViewControllerLaterPressed_];
  return swift_unknownObjectRelease();
}

void sub_272921F98()
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v2 = qword_28089BEA0;
  v3 = sub_27292E224();
  v4 = [v2 VTUIDeviceSpecificString_];

  if (v4)
  {
    sub_27292E254();

    sub_2729255E8();
    v5 = sub_27292DE44();
    v7 = v6;
    v9 = v8;
    sub_27292DDB4();
    v10 = sub_27292DE34();
    v12 = v11;
    v14 = v13;

    sub_27292563C(v5, v7, v9 & 1);

    sub_27292DDD4();
    v15 = sub_27292DE14();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_27292563C(v10, v12, v14 & 1);

    sub_27292E0E4();
    sub_27292DA54();
    v34 = v19 & 1;
    *&v24 = v15;
    *(&v24 + 1) = v17;
    LOBYTE(v25) = v19 & 1;
    *(&v25 + 1) = v21;
    v22 = sub_27292E094();
    v23 = MEMORY[0x28223BE20](v22);
    MEMORY[0x28223BE20](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1A8, &qword_272935D00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C1B0, &qword_272935D08);
    sub_27292547C();
    sub_272925500();
    sub_27292DF34();
    v33[6] = v30;
    v33[7] = v31;
    v33[8] = v32;
    v33[2] = v26;
    v33[3] = v27;
    v33[4] = v28;
    v33[5] = v29;
    v33[0] = v24;
    v33[1] = v25;
    sub_27290B880(v33, &qword_28089C1A8, &qword_272935D00);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2729222DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v20[6] = a1[6];
  v20[7] = v4;
  v20[8] = a1[8];
  v5 = a1[3];
  v20[2] = a1[2];
  v20[3] = v5;
  v6 = a1[5];
  v20[4] = a1[4];
  v20[5] = v6;
  v7 = a1[1];
  v20[0] = *a1;
  v20[1] = v7;
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v8 = [qword_28089BEA0 isIpad];
  v9 = objc_opt_self();
  v10 = &selRef_labelColor;
  if (!v8)
  {
    v10 = &selRef_secondaryLabelColor;
  }

  v11 = [v9 *v10];
  v12 = sub_27292DFD4();
  KeyPath = swift_getKeyPath();
  v14 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v14;
  *(a2 + 128) = a1[8];
  v15 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v15;
  v16 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v16;
  v17 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v17;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v12;
  return sub_27290939C(v20, &v19, &qword_28089C1A8, &qword_272935D00);
}

uint64_t sub_272922410@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v18[6] = a1[6];
  v18[7] = v4;
  v18[8] = a1[8];
  v5 = a1[3];
  v18[2] = a1[2];
  v18[3] = v5;
  v6 = a1[5];
  v18[4] = a1[4];
  v18[5] = v6;
  v7 = a1[1];
  v18[0] = *a1;
  v18[1] = v7;
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  if ([qword_28089BEA0 isIpad])
  {
    v8 = [objc_opt_self() systemBlueColor];
    v9 = sub_27292DFD4();
  }

  else
  {
    v9 = sub_27292DF94();
  }

  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v12;
  *(a2 + 128) = a1[8];
  v13 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v13;
  v14 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v14;
  v15 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v15;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v10;
  return sub_27290939C(v18, &v17, &qword_28089C1A8, &qword_272935D00);
}

uint64_t sub_272922574(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  a4();
  return sub_27292DC44();
}

void *sub_27292261C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  result = [qword_28089BEA0 isIpad];
  if (result)
  {
    sub_27292E0E4();
    result = sub_27292D974();
    v3 = 0;
    v4 = v10;
    v5 = v12;
    v6 = v14;
    v7 = 1;
    v8 = v11;
    v9 = v13;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0uLL;
    v3 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = v8;
  *(a1 + 32) = v5;
  *(a1 + 40) = v9;
  *(a1 + 48) = v6;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_27292271C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27292DD94();
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  [qword_28089BEA0 isIpad];
  sub_27292D8E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_27290939C(a1, a2, &qword_28089BFE0, &qword_272935BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFE8, &qword_272935BE0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_272922818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27292DD94();
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  [qword_28089BEA0 isIpad];
  sub_27292D8E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_27290939C(a1, a2, &qword_28089BFE0, &qword_272935BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BFE8, &qword_272935BE0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_272922910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v7 = a1[3];
  v6 = a1[4];
  v8 = sub_27292DA34();
  v9 = sub_27292DDA4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
}

uint64_t sub_272922988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C230, &qword_272935DD0);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v91 - v3;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2A0, &qword_272935E88);
  v111 = *(v112 - 1);
  MEMORY[0x28223BE20](v112);
  v109 = &v91 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2A8, &qword_272935E90);
  v115 = *(v116 - 8);
  v5 = MEMORY[0x28223BE20](v116);
  v114 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v121 = &v91 - v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C088, &qword_272935C60);
  MEMORY[0x28223BE20](v106);
  v105 = &v91 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C090, &qword_272935C68);
  v113 = *(v120 - 8);
  v9 = MEMORY[0x28223BE20](v120);
  v119 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v126 = &v91 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2B0, &qword_272935E98);
  v122 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v13 = &v91 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2B8, &qword_272935EA0);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v91 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2C0, &qword_272935EA8);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v91 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2C8, &qword_272935EB0);
  MEMORY[0x28223BE20](v103);
  v104 = &v91 - v16;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2D0, &qword_272935EB8);
  v118 = *(v125 - 8);
  v17 = MEMORY[0x28223BE20](v125);
  v124 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v91 - v19;
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v93 = qword_28089BEA0;
  if ([qword_28089BEA0 isIpad])
  {
    sub_27292E0E4();
    sub_27292D974();
    v129 = 1;
    v128 = v137;
    v127 = v139;
    v135 = 0;
    *&v130 = 0;
    BYTE8(v130) = 1;
    *&v131 = v136;
    BYTE8(v131) = v137;
    *&v132 = v138;
    BYTE8(v132) = v139;
    v133 = v140;
    v134 = 0;
  }

  else
  {
    LOBYTE(v136) = 1;
    v135 = 1;
    *&v130 = 0;
    BYTE8(v130) = 1;
    v134 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0C0, &qword_272935C98);
  sub_272924BEC();
  sub_27292DC34();
  v92 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v95 = *(a1 + *(v92 + 36) + 8);
  sub_27291AFD4();
  *&v130 = v20;
  *(&v130 + 1) = v21;
  v94 = sub_2729255E8();
  v22 = sub_27292DE44();
  v24 = v23;
  *&v130 = v22;
  *(&v130 + 1) = v23;
  v26 = v25 & 1;
  LOBYTE(v131) = v25 & 1;
  *(&v131 + 1) = v27;
  sub_27292E094();
  v28 = MEMORY[0x277CE0BC8];
  v29 = MEMORY[0x277CE0BD8];
  v30 = MEMORY[0x277CE1350];
  sub_27292DF34();
  sub_27292563C(v22, v24, v26);
  v31 = MEMORY[0x277CE1340];

  sub_27292DDC4();
  *&v130 = v29;
  *(&v130 + 1) = v30;
  *&v131 = v29;
  *(&v131 + 1) = v29;
  *&v132 = v28;
  *(&v132 + 1) = v31;
  *&v133 = v28;
  *(&v133 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v97;
  v34 = v96;
  sub_27292DE84();
  (*(v122 + 8))(v13, v34);
  v35 = sub_27292E094();
  MEMORY[0x28223BE20](v35);
  v122 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2D8, &qword_272935EC0);
  *&v130 = v34;
  *(&v130 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27292585C();
  v36 = v100;
  v37 = v99;
  sub_27292DF34();
  (*(v98 + 8))(v33, v37);
  if ([v93 isIpad])
  {
    v38 = sub_27292DFA4();
  }

  else
  {
    v38 = sub_27292DF94();
  }

  v39 = v38;
  v40 = v104;
  (*(v101 + 32))(v104, v36, v102);
  *(v40 + *(v103 + 36)) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
  v41 = v122;
  sub_27292DC64();
  sub_27292599C();
  sub_27292DEF4();

  sub_27290B880(v40, &qword_28089C2C8, &qword_272935EB0);
  sub_27292E094();
  v42 = MEMORY[0x277CE1350];
  v43 = MEMORY[0x277CE1340];
  sub_27292DB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C0C0, &qword_272935C98);
  *&v130 = v42;
  *(&v130 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  sub_272924BEC();
  sub_27292E0B4();
  sub_27291B2A0();
  *&v130 = v44;
  *(&v130 + 1) = v45;
  v46 = sub_27292DE44();
  v48 = v47;
  v50 = v49;
  if (*(v41 + 24) == 1)
  {
    sub_27292DDE4();
  }

  else
  {
    sub_27292DDB4();
  }

  v51 = sub_27292DE34();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_27292563C(v46, v48, v50 & 1);

  *&v130 = v51;
  *(&v130 + 1) = v53;
  LOBYTE(v131) = v55 & 1;
  *(&v131 + 1) = v57;
  v58 = sub_27292E094();
  v106 = &v91;
  MEMORY[0x28223BE20](v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C278, &unk_272935E10);
  v60 = sub_27292571C();
  v61 = v107;
  v62 = MEMORY[0x277CE1350];
  sub_27292DF34();
  sub_27292563C(v51, v53, v55 & 1);

  v63 = sub_27292E094();
  v106 = &v91;
  MEMORY[0x28223BE20](v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C238, &qword_272935DD8);
  *&v130 = MEMORY[0x277CE0BD8];
  *(&v130 + 1) = v62;
  *&v131 = v59;
  *(&v131 + 1) = v59;
  *&v132 = MEMORY[0x277CE0BC8];
  *(&v132 + 1) = MEMORY[0x277CE1340];
  *&v133 = v60;
  *(&v133 + 1) = v60;
  v65 = swift_getOpaqueTypeConformance2();
  v90 = sub_272925B60();
  v66 = v109;
  v67 = v110;
  v68 = MEMORY[0x277CE1350];
  sub_27292DF34();
  (v108[1])(v61, v67);
  v69 = sub_27292E094();
  v108 = &v91;
  MEMORY[0x28223BE20](v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C308, &qword_272935ED0);
  *&v130 = v67;
  *(&v130 + 1) = v68;
  *&v131 = v64;
  *(&v131 + 1) = v64;
  *&v132 = v65;
  *(&v132 + 1) = MEMORY[0x277CE1340];
  *&v133 = v90;
  *(&v133 + 1) = v90;
  swift_getOpaqueTypeConformance2();
  sub_272925C88();
  v70 = v121;
  v71 = v112;
  sub_27292DF44();
  (*(v111 + 8))(v66, v71);
  v132 = v143;
  v133 = v144;
  v134 = v145;
  v131 = v142;
  v130 = v141;
  v122 = *(v118 + 16);
  (v122)(v124, v123, v125);
  v72 = v113;
  v112 = *(v113 + 16);
  v73 = v119;
  (v112)(v119, v126, v120);
  v74 = v115;
  v111 = *(v115 + 16);
  v75 = v114;
  v76 = v70;
  v77 = v116;
  (v111)(v114, v76, v116);
  v78 = v133;
  v79 = v117;
  *(v117 + 32) = v132;
  *(v79 + 48) = v78;
  *(v79 + 64) = v134;
  v80 = v131;
  *v79 = v130;
  *(v79 + 16) = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C318, &qword_272935ED8);
  (v122)(v79 + v81[12], v124, v125);
  v82 = v73;
  v83 = v120;
  (v112)(v79 + v81[16], v82, v120);
  (v111)(v79 + v81[20], v75, v77);
  v84 = *(v74 + 8);
  v84(v121, v77);
  v85 = *(v72 + 8);
  v86 = v83;
  v85(v126, v83);
  v87 = *(v118 + 8);
  v88 = v125;
  v87(v123, v125);
  v84(v75, v77);
  v85(v119, v86);
  return (v87)(v124, v88);
}

void sub_272923C68(uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a2();
  v4 = sub_27292DE34();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
}

uint64_t sub_272923CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for GMEnrollmentSetupIntroView(0);
  v4 = (sub_27291AD00() & 1) == 0;
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2B8, &qword_272935EA0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2D8, &qword_272935EC0);
  v8 = a2 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = v4;
  return result;
}

uint64_t sub_272923DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2B8, &qword_272935EA0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2D8, &qword_272935EC0);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = 1;
  return result;
}

double sub_272923E74@<D0>(uint64_t a2@<X8>)
{
  sub_27292E0E4();
  sub_27292D974();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_272923F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  type metadata accessor for GMEnrollmentSetupIntroView(0);
  v7 = (sub_27291AD00() & 1) == 0;
  KeyPath = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v7;
  sub_272925844(v3, v4, v5);
}

uint64_t sub_272923FB4@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = a1[3];
  KeyPath = swift_getKeyPath();
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = a2;
  sub_272925844(v5, v6, v7);
}

uint64_t sub_272924034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27292DFB4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C230, &qword_272935DD0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C238, &qword_272935DD8);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_2729240CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  if ([qword_28089BEA0 isIpad])
  {
    v4 = sub_27292DFA4();
  }

  else
  {
    v4 = sub_27292DF94();
  }

  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C230, &qword_272935DD0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C238, &qword_272935DD8);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_2729241B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27292DD94();
  type metadata accessor for GMEnrollmentSetupIntroView(0);
  sub_27291AD00();
  sub_27292D8E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C2A0, &qword_272935E88);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C308, &qword_272935ED0);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_2729242B0()
{
  type metadata accessor for GMEnrollmentSetupIntroView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
  return sub_27292DC54();
}

uint64_t sub_27292435C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272924394(uint64_t a1)
{
  sub_272918F08();
  if (v1 <= 0x3F)
  {
    sub_27292445C();
    if (v2 <= 0x3F)
    {
      sub_2729244C8(319);
      if (v3 <= 0x3F)
      {
        sub_27292455C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27292445C()
{
  if (!qword_28089BF40)
  {
    v0 = sub_27292D964();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BF40);
    }
  }
}

void sub_2729244C8(uint64_t a1)
{
  if (!qword_28089BF48)
  {
    type metadata accessor for GMIntroViewModel(255);
    sub_27292568C(&qword_28089BBC0, type metadata accessor for GMIntroViewModel, &unk_272935874);
    v1 = sub_27292DA14();
    if (!v2)
    {
      atomic_store(v1, &qword_28089BF48);
    }
  }
}

void sub_27292455C()
{
  if (!qword_28089BF50)
  {
    v0 = sub_27292DC84();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BF50);
    }
  }
}

uint64_t sub_2729245D0(uint64_t a1)
{
  v3 = *(type metadata accessor for GMEnrollmentSetupIntroView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27291DCDC(a1, v4);
}

unint64_t sub_272924650()
{
  result = qword_28089BF90;
  if (!qword_28089BF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF80, &qword_272935B70);
    sub_27290B998(&qword_28089BF88, &qword_28089BF78, &qword_272935B68, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BF90);
  }

  return result;
}

unint64_t sub_272924708()
{
  result = qword_28089BF98;
  if (!qword_28089BF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF60, &qword_272935B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF78, &qword_272935B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF80, &qword_272935B70);
    sub_27290B998(&qword_28089BF88, &qword_28089BF78, &qword_272935B68, MEMORY[0x277CE1198]);
    sub_272924650();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BF98);
  }

  return result;
}

unint64_t sub_272924844()
{
  result = qword_28089BFA0;
  if (!qword_28089BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BFA0);
  }

  return result;
}

unint64_t sub_272924898()
{
  result = qword_28089BFB0;
  if (!qword_28089BFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BF70, &qword_272935B60);
    sub_27290B998(&qword_28089BFA8, &qword_28089BF68, &qword_272935B58, MEMORY[0x277CE1148]);
    sub_27290B998(&qword_28089BFB8, &qword_28089BFC0, &qword_272935BC0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BFB0);
  }

  return result;
}

unint64_t sub_272924984()
{
  result = qword_28089BFD8;
  if (!qword_28089BFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFD0, &qword_272935BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFE0, &qword_272935BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFE8, &qword_272935BE0);
    sub_272924A90();
    sub_272924B48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BFD8);
  }

  return result;
}

unint64_t sub_272924A90()
{
  result = qword_28089BFF0;
  if (!qword_28089BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFE0, &qword_272935BD8);
    sub_27290B998(&qword_28089BFF8, &qword_28089C000, &qword_272935BE8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BFF0);
  }

  return result;
}

unint64_t sub_272924B48()
{
  result = qword_28089C008;
  if (!qword_28089C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BFE8, &qword_272935BE0);
    sub_272924A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C008);
  }

  return result;
}

unint64_t sub_272924BEC()
{
  result = qword_28089C0C8;
  if (!qword_28089C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C0C0, &qword_272935C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C0C8);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for GMEnrollmentSetupIntroView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v1[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF28, &qword_272935AC8);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v0 + v3 + v1[12];
  v8 = sub_27292DC94();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_272924E34()
{
  result = qword_28089C100;
  if (!qword_28089C100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C0A0, &qword_272935C78);
    sub_272924EEC();
    sub_27290B998(&qword_28089C138, &qword_28089C0F0, &qword_272935CB8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C100);
  }

  return result;
}

unint64_t sub_272924EEC()
{
  result = qword_28089C108;
  if (!qword_28089C108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C0E8, &qword_272935CB0);
    sub_272924FA4();
    sub_27290B998(&qword_28089C128, &qword_28089C130, &qword_272935CD0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C108);
  }

  return result;
}

unint64_t sub_272924FA4()
{
  result = qword_28089C110;
  if (!qword_28089C110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C0E0, &qword_272935CA8);
    sub_27290B998(&qword_28089C118, &qword_28089C120, &qword_272935CC8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C110);
  }

  return result;
}

unint64_t sub_27292506C()
{
  result = qword_28089C148;
  if (!qword_28089C148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C090, &qword_272935C68);
    swift_getOpaqueTypeConformance2();
    sub_272924BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C148);
  }

  return result;
}

unint64_t sub_272925134()
{
  result = qword_28089C158;
  if (!qword_28089C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C070, &qword_272935C48);
    sub_2729251EC();
    sub_27290B998(&qword_28089C138, &qword_28089C0F0, &qword_272935CB8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C158);
  }

  return result;
}

unint64_t sub_2729251EC()
{
  result = qword_28089C160;
  if (!qword_28089C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C068, &qword_272935C40);
    sub_2729252A4();
    sub_27290B998(&qword_28089C128, &qword_28089C130, &qword_272935CD0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C160);
  }

  return result;
}

unint64_t sub_2729252A4()
{
  result = qword_28089C168;
  if (!qword_28089C168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C060, &qword_272935C38);
    sub_27290B998(&qword_28089C170, &qword_28089C178, &qword_272935CE0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C168);
  }

  return result;
}

unint64_t sub_272925364()
{
  result = qword_28089C190;
  if (!qword_28089C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C188, &qword_272935CE8);
    sub_272924BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C190);
  }

  return result;
}

uint64_t sub_272925400(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GMEnrollmentSetupIntroView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_27292547C()
{
  result = qword_28089C1B8;
  if (!qword_28089C1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C1A8, &qword_272935D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C1B8);
  }

  return result;
}

unint64_t sub_272925500()
{
  result = qword_28089C1C0;
  if (!qword_28089C1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C1B0, &qword_272935D08);
    sub_27292547C();
    sub_27290B998(&qword_28089C1C8, &qword_28089C1D0, &qword_272935D10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C1C0);
  }

  return result;
}

unint64_t sub_2729255E8()
{
  result = qword_28089C1D8;
  if (!qword_28089C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C1D8);
  }

  return result;
}

void sub_27292563C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_27292568C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27292571C()
{
  result = qword_28089C280;
  if (!qword_28089C280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C278, &unk_272935E10);
    sub_27290B998(&qword_28089C288, &qword_28089C290, &unk_272936260, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C280);
  }

  return result;
}

id sub_2729257D4()
{
  v1 = *(type metadata accessor for GMEnrollmentSetupIntroView(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return [v2 siriIntroViewControllerPrivacyLinkTapped];
}

uint64_t sub_272925844(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_27292585C()
{
  result = qword_28089C2E0;
  if (!qword_28089C2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2D8, &qword_272935EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2B0, &qword_272935E98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27290B998(&qword_28089C288, &qword_28089C290, &unk_272936260, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C2E0);
  }

  return result;
}

unint64_t sub_27292599C()
{
  result = qword_28089C2E8;
  if (!qword_28089C2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2C8, &qword_272935EB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2B8, &qword_272935EA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2D8, &qword_272935EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C2B0, &qword_272935E98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27292585C();
    swift_getOpaqueTypeConformance2();
    sub_27290B998(&qword_28089C2F0, &qword_28089C2F8, &qword_272935EC8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C2E8);
  }

  return result;
}

unint64_t sub_272925B60()
{
  result = qword_28089C300;
  if (!qword_28089C300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C238, &qword_272935DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C278, &unk_272935E10);
    sub_27292571C();
    swift_getOpaqueTypeConformance2();
    sub_27290B998(&qword_28089C2F0, &qword_28089C2F8, &qword_272935EC8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C300);
  }

  return result;
}

unint64_t sub_272925C88()
{
  result = qword_28089C310;
  if (!qword_28089C310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C308, &qword_272935ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C230, &qword_272935DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C238, &qword_272935DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C278, &unk_272935E10);
    sub_27292571C();
    swift_getOpaqueTypeConformance2();
    sub_272925B60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C310);
  }

  return result;
}

uint64_t type metadata accessor for GMIntroIPadAnimationView(uint64_t a1)
{
  result = qword_28089C320;
  if (!qword_28089C320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272925E70(uint64_t a1)
{
  sub_27292D914();
  if (v1 <= 0x3F)
  {
    sub_2729244C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_272925EF4(void *a1)
{
  v171 = a1;
  v2 = sub_27292E154();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v168 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27292E174();
  v169 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v167 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_27292E144();
  v164 = *(v165 - 1);
  MEMORY[0x28223BE20](v165);
  v8 = (&v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_27292E194();
  v9 = *(v170 - 8);
  v10 = MEMORY[0x28223BE20](v170);
  v12 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v166 = &v156 - v13;
  v14 = *(v1 + *(type metadata accessor for GMIntroIPadAnimationView(0) + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v163 = v14;
  sub_27292D8A4();

  if (aBlock > 2u)
  {
    if (aBlock == 7)
    {
      v20 = sub_27292E224();
      v21 = [v171 publishedObjectWithName_];

      if (v21)
      {
        sub_27292E3B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v183 = 0u;
        v184 = 0u;
      }

      v185 = v183;
      v186 = v184;
      if (*(&v184 + 1))
      {
        sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_79;
        }

        v71 = v182;
        [v182 bounds];
        v84 = v83;
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v80 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
        [v80 setFrame_];
        [v80 setIsQuicktationPill_];
        LODWORD(v91) = 1045220557;
        [v80 setMinimumPowerLevel_];
        [v80 setColorPalette_];
        [v80 setPaused_];
        [v80 bounds];
        v93 = v92;
        v95 = v94;
        v97 = v96;
        v99 = v98;
        v100 = [objc_allocWithZone(MEMORY[0x277D61A48]) init];
        [v100 setOpaque_];
        LODWORD(v101) = 1045220557;
        [v100 setMinimumPowerLevel_];
        [v100 setAllowsHitTesting_];
        [v100 setFrame_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC98, &qword_272934D60);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_272934680;
        CAColorMatrixMakeMultiplyColor();
        v103 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        v104 = objc_opt_self();
        v174 = v179;
        v175 = v180;
        v176 = v181;
        v173 = v178;
        v172 = aBlock;
        v105 = [v104 valueWithCAColorMatrix_];
        [v103 setValue:v105 forKey:*MEMORY[0x277CDA440]];

        *(v102 + 56) = sub_272908E38(0, &qword_28089BCC8, 0x277CD9EA0);
        *(v102 + 32) = v103;
        v106 = sub_27292E2B4();

        [v80 setFilters_];

        [v80 setMask_];
        [v100 setBurstOpacity_];
        [v100 setBurstStartPosition_];
        LODWORD(v107) = 1137180672;
        LODWORD(v108) = 10.0;
        [v100 setCustomCornerRadius:v108 forWidth:v107];
        [v100 animateOn];

        goto LABEL_33;
      }

      p_aBlock = &v185;
LABEL_35:
      sub_272928A1C(p_aBlock);
      goto LABEL_79;
    }

    if (aBlock == 4)
    {
      sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
      v26 = sub_27292E374();
      v162 = v5;
      v163 = v26;
      sub_27292E184();
      *v8 = 500;
      v27 = v164;
      v28 = v165;
      (*(v164 + 13))(v8, *MEMORY[0x277D85178], v165);
      v29 = v166;
      MEMORY[0x2743D0080](v12, v8);
      v27[1](v8, v28);
      v30 = *(v9 + 8);
      v161 = v9 + 8;
      v31 = v170;
      v30(v12, v170);
      v32 = swift_allocObject();
      v33 = v171;
      *(v32 + 16) = v171;
      *&v179 = sub_272928A84;
      *(&v179 + 1) = v32;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v178 = sub_27290B0BC;
      *(&v178 + 1) = &block_descriptor_3;
      v34 = _Block_copy(&aBlock);
      v35 = v33;

      v36 = v167;
      sub_27292E164();
      *&aBlock = MEMORY[0x277D84F90];
      sub_272928C9C(&qword_28089BB48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
      sub_2729136D0();
      v37 = v168;
      sub_27292E3D4();
      v38 = v163;
      MEMORY[0x2743D0240](v29, v36, v37, v34);
      _Block_release(v34);

      (*(v3 + 8))(v37, v2);
      (*(v169 + 8))(v36, v162);
      v30(v29, v31);
      goto LABEL_79;
    }

    if (aBlock != 3)
    {
      goto LABEL_79;
    }

LABEL_10:
    v17 = v171;
    sub_2729282F4(v171);
    v18 = sub_27292E224();
    v19 = [v17 publishedObjectWithName_];

    if (v19)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v183 = 0u;
      v184 = 0u;
    }

    v185 = v183;
    v186 = v184;
    if (*(&v184 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v39 = v182;
        [v182 bounds];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v48 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
        [v48 setFrame_];
        [v48 setIsQuicktationPill_];
        LODWORD(v49) = 1045220557;
        [v48 setMinimumPowerLevel_];
        [v48 setColorPalette_];
        [v48 setPaused_];
        [v48 bounds];
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v58 = [objc_allocWithZone(MEMORY[0x277D61A48]) init];
        [v58 setOpaque_];
        LODWORD(v59) = 1045220557;
        [v58 setMinimumPowerLevel_];
        [v58 setAllowsHitTesting_];
        [v58 setFrame_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC98, &qword_272934D60);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_272934680;
        CAColorMatrixMakeMultiplyColor();
        v61 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        v62 = objc_opt_self();
        v174 = v179;
        v175 = v180;
        v176 = v181;
        v173 = v178;
        v172 = aBlock;
        v63 = [v62 valueWithCAColorMatrix_];
        [v61 setValue:v63 forKey:*MEMORY[0x277CDA440]];

        *(v60 + 56) = sub_272908E38(0, &qword_28089BCC8, 0x277CD9EA0);
        *(v60 + 32) = v61;
        v64 = sub_27292E2B4();

        [v48 setFilters_];

        [v48 setMask_];
        [v58 setBurstOpacity_];
        [v58 setBurstStartPosition_];
        LODWORD(v65) = 1137180672;
        LODWORD(v66) = 10.0;
        [v58 setCustomCornerRadius:v66 forWidth:v65];
        [v58 animateOn];

        [v39 addSublayer_];
      }
    }

    else
    {
      sub_272928A1C(&v185);
    }

    v67 = sub_27292E224();
    v68 = v171;
    [v171 setState:v67 animated:1];

    v69 = sub_27292E224();
    v70 = [v68 publishedObjectWithName_];

    if (v70)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v173 = 0u;
      v172 = 0u;
    }

    v178 = v173;
    aBlock = v172;
    if (*(&v173 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_79;
      }

      v71 = v185;
      [v185 bounds];
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v80 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
      [v80 setFrame_];
      [v80 setIsQuicktationPill_];
      LODWORD(v81) = 1045220557;
      [v80 setMinimumPowerLevel_];
      [v80 setColorPalette_];
      [v80 setPaused_];
LABEL_33:
      [v71 addSublayer_];

      goto LABEL_79;
    }

    p_aBlock = &aBlock;
    goto LABEL_35;
  }

  if (!aBlock)
  {
    goto LABEL_10;
  }

  if (aBlock != 1)
  {
    if (aBlock != 2)
    {
      goto LABEL_79;
    }

    v15 = sub_27292E224();
    v16 = [v171 publishedObjectWithName_];

    if (v16)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v173 = 0u;
      v172 = 0u;
    }

    v178 = v173;
    aBlock = v172;
    v160 = v1;
    v159 = v3;
    v162 = v5;
    if (*(&v173 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v109 = v185;
        v110 = [v185 sublayers];
        if (v110)
        {
          v161 = v9;
          v111 = v110;
          v112 = sub_27292E2C4();

          v158 = v2;
          v157 = v109;
          if (v112 >> 62)
          {
            goto LABEL_71;
          }

          for (i = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_27292E434())
          {
            v114 = 0;
            while (1)
            {
              if ((v112 & 0xC000000000000001) != 0)
              {
                v115 = MEMORY[0x2743D02E0](v114, v112);
              }

              else
              {
                if (v114 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_69;
                }

                v115 = *(v112 + 8 * v114 + 32);
              }

              v116 = v115;
              v117 = v114 + 1;
              if (__OFADD__(v114, 1))
              {
                break;
              }

              [v115 removeFromSuperlayer];

              ++v114;
              if (v117 == i)
              {
                goto LABEL_72;
              }
            }

            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            ;
          }

LABEL_72:

          v2 = v158;
          v9 = v161;
        }

        else
        {
        }
      }
    }

    else
    {
      sub_272928A1C(&aBlock);
    }

    sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
    v126 = sub_27292E374();
    sub_27292E184();
    *v8 = 1000;
    v127 = v164;
    v128 = v165;
    (*(v164 + 13))(v8, *MEMORY[0x277D85178], v165);
    v129 = v166;
    MEMORY[0x2743D0080](v12, v8);
    v127[1](v8, v128);
    v165 = *(v9 + 8);
    v130 = v170;
    (v165)(v12, v170);
    v131 = swift_allocObject();
    v132 = v171;
    *(v131 + 16) = v171;
    *&v179 = sub_272928AC0;
    *(&v179 + 1) = v131;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v178 = sub_27290B0BC;
    *(&v178 + 1) = &block_descriptor_9;
    v133 = _Block_copy(&aBlock);
    v164 = v132;

    v134 = v167;
    sub_27292E164();
    *&aBlock = MEMORY[0x277D84F90];
    sub_272928C9C(&qword_28089BB48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
    sub_2729136D0();
    v135 = v168;
    sub_27292E3D4();
    MEMORY[0x2743D0240](v129, v134, v135, v133);
    _Block_release(v133);

    (*(v159 + 8))(v135, v2);
    (*(v169 + 8))(v134, v162);
    (v165)(v129, v130);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    v136 = aBlock;
    v137 = v164;
    goto LABEL_78;
  }

  v22 = sub_27292E224();
  v23 = v171;
  [v171 setState:v22 animated:1];

  v24 = sub_27292E224();
  v25 = [v23 publishedObjectWithName_];

  if (v25)
  {
    sub_27292E3B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v173 = 0u;
    v172 = 0u;
  }

  v178 = v173;
  aBlock = v172;
  if (*(&v173 + 1))
  {
    sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
    if (swift_dynamicCast())
    {
      v162 = v5;
      v118 = v185;
      v119 = [v185 sublayers];
      if (!v119)
      {
LABEL_76:
        sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
        v160 = v1;
        v161 = sub_27292E374();
        sub_27292E184();
        *v8 = 1200;
        v138 = v164;
        v139 = v165;
        (*(v164 + 13))(v8, *MEMORY[0x277D85178], v165);
        v140 = v166;
        MEMORY[0x2743D0080](v12, v8);
        v138[1](v8, v139);
        v165 = *(v9 + 8);
        (v165)(v12, v170);
        v141 = swift_allocObject();
        *(v141 + 16) = v118;
        *&v179 = sub_272928B3C;
        *(&v179 + 1) = v141;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v178 = sub_27290B0BC;
        *(&v178 + 1) = &block_descriptor_15;
        v142 = _Block_copy(&aBlock);
        v143 = v118;

        v144 = v167;
        sub_27292E164();
        *&aBlock = MEMORY[0x277D84F90];
        sub_272928C9C(&qword_28089BB48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
        sub_2729136D0();
        v145 = v3;
        v146 = v168;
        sub_27292E3D4();
        v147 = v161;
        MEMORY[0x2743D0240](v140, v144, v146, v142);
        _Block_release(v142);

        (*(v145 + 8))(v146, v2);
        (*(v169 + 8))(v144, v162);
        (v165)(v140, v170);
        goto LABEL_77;
      }

      v157 = v118;
      v161 = v9;
      v159 = v3;
      v120 = v119;
      v112 = sub_27292E2C4();

      v158 = v2;
      if (v112 >> 62)
      {
        v121 = sub_27292E434();
        if (v121)
        {
LABEL_57:
          v122 = 0;
          do
          {
            if ((v112 & 0xC000000000000001) != 0)
            {
              v123 = MEMORY[0x2743D02E0](v122, v112);
            }

            else
            {
              if (v122 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_70;
              }

              v123 = *(v112 + 8 * v122 + 32);
            }

            v124 = v123;
            v125 = v122 + 1;
            if (__OFADD__(v122, 1))
            {
              goto LABEL_68;
            }

            [v123 removeFromSuperlayer];

            ++v122;
          }

          while (v125 != v121);
        }
      }

      else
      {
        v121 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v121)
        {
          goto LABEL_57;
        }
      }

      v2 = v158;
      v3 = v159;
      v9 = v161;
      v118 = v157;
      goto LABEL_76;
    }
  }

  else
  {
    sub_272928A1C(&aBlock);
  }

LABEL_77:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v136 = aBlock;
  v137 = v171;
LABEL_78:
  sub_272927E90(v136, v137);
LABEL_79:
  v148 = [objc_opt_self() sharedStyle];
  v149 = [v148 isIPadWithVolumePowerSameSide];

  if (v149)
  {
    v150 = sub_27292E224();
    v151 = [v171 publishedObjectWithName_];

    if (v151)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v173 = 0u;
      v172 = 0u;
    }

    v178 = v173;
    aBlock = v172;
    if (*(&v173 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v152 = v185;
        [v185 setHidden_];
      }
    }

    else
    {
      sub_272928A1C(&aBlock);
    }

    v153 = sub_27292E224();
    v154 = [v171 publishedObjectWithName_];

    if (v154)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v173 = 0u;
      v172 = 0u;
    }

    v178 = v173;
    aBlock = v172;
    if (*(&v173 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v155 = v185;
        [v185 setHidden_];
      }
    }

    else
    {
      sub_272928A1C(&aBlock);
    }
  }
}

void sub_272927B54(void *a1)
{
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
  [v10 setFrame_];
  [v10 setIsQuicktationPill_];
  LODWORD(v11) = 1045220557;
  [v10 setMinimumPowerLevel_];
  [v10 setColorPalette_];
  [v10 setPaused_];
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277D61A48]) init];
  [v20 setOpaque_];
  LODWORD(v21) = 1045220557;
  [v20 setMinimumPowerLevel_];
  [v20 setAllowsHitTesting_];
  [v20 setFrame_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC98, &qword_272934D60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_272934680;
  CAColorMatrixMakeMultiplyColor();
  v23 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v24 = [objc_opt_self() valueWithCAColorMatrix_];
  [v23 setValue:v24 forKey:*MEMORY[0x277CDA440]];

  *(v22 + 56) = sub_272908E38(0, &qword_28089BCC8, 0x277CD9EA0);
  *(v22 + 32) = v23;
  v25 = sub_27292E2B4();

  [v10 setFilters_];

  [v10 setMask_];
  LODWORD(v26) = 0.5;
  [v20 setBurstOpacity_];
  [v20 setBurstStartPosition_];
  [v20 setBurstStartPositionCustom_];
  LODWORD(v27) = 1137180672;
  LODWORD(v28) = 10.0;
  [v20 setCustomCornerRadius:v28 forWidth:v27];
  [v20 animateOn];

  [a1 addSublayer_];
}

uint64_t sub_272927E90(int a1, void *a2)
{
  v34 = a2;
  v33 = a1;
  v35 = sub_27292E154();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_27292E174();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GMIntroIPadAnimationView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27292E194();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
  v30 = sub_27292E374();
  sub_27292E184();
  sub_27292E1B4();
  v18 = *(v12 + 8);
  v18(v15, v11);
  sub_272928B44(v31, v10);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = v19 + v9;
  v21 = (v19 + v9) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_272928BA8(v10, v22 + v19);
  *(v22 + v20) = v33;
  v23 = v34;
  *(v22 + v21 + 8) = v34;
  aBlock[4] = sub_272928C0C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27290B0BC;
  aBlock[3] = &block_descriptor_22;
  v24 = _Block_copy(aBlock);
  v25 = v23;

  sub_27292E164();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_272928C9C(&qword_28089BB48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
  sub_2729136D0();
  v26 = v35;
  sub_27292E3D4();
  v27 = v30;
  MEMORY[0x2743D0240](v17, v6, v3, v24);
  _Block_release(v24);

  (*(v38 + 8))(v3, v26);
  (*(v36 + 8))(v6, v37);
  return (v18)(v17, v32);
}

uint64_t sub_2729282F4(void *a1)
{
  v2 = sub_27292D914();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
  v6 = sub_27292D904();
  (*(v3 + 8))(v5, v2);
  v7 = aIppet;
  v8 = 3;
  do
  {

    v9 = sub_27292E224();
    v10 = [a1 publishedObjectWithName_];

    if (v10)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22 = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v11 = v19;
        [v19 setHidden_];
      }
    }

    else
    {

      sub_272928A1C(&v22);
    }

    v7 += 16;
    --v8;
  }

  while (v8);
  HIDWORD(v18) = v6 ^ 1;
  v12 = aPpet;
  v13 = 3;
  do
  {

    v15 = sub_27292E224();
    v16 = [a1 publishedObjectWithName_];

    if (v16)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22 = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        v17 = v19;
        [v19 setHidden_];
      }
    }

    else
    {

      result = sub_272928A1C(&v22);
    }

    v12 += 16;
    --v13;
  }

  while (v13);
  return result;
}

void sub_272928620(uint64_t a1, unsigned __int8 a2, void *a3)
{
  type metadata accessor for GMIntroIPadAnimationView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v6 == a2)
  {
    v5 = sub_27292E224();
    [a3 setState:v5 animated:1];

    swift_getKeyPath();
    swift_getKeyPath();

    sub_27292D8B4();
  }
}

void sub_272928740()
{
  type metadata accessor for GMDeviceSceneViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = objc_allocWithZone(MEMORY[0x277CF0D48]);
  v3 = sub_27292E224();
  v4 = [v2 initWithPackageName:v3 inBundle:v1];

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_272928854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272928C9C(&qword_28089C338, type metadata accessor for GMIntroIPadAnimationView, &unk_272935F4C);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2729288E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272928C9C(&qword_28089C338, type metadata accessor for GMIntroIPadAnimationView, &unk_272935F4C);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_27292897C(uint64_t a1)
{
  sub_272928C9C(&qword_28089C338, type metadata accessor for GMIntroIPadAnimationView, &unk_272935F4C);
  sub_27292DC04();
  __break(1u);
}

uint64_t sub_272928A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BCB0, &qword_272934D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_272928AE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_27292E224();
  [v3 setState:v4 animated:1];
}

uint64_t sub_272928B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GMIntroIPadAnimationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272928BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GMIntroIPadAnimationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_272928C0C()
{
  v1 = *(type metadata accessor for GMIntroIPadAnimationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v5 = *(v0 + v3);

  sub_272928620(v0 + v2, v5, v4);
}

uint64_t sub_272928C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_272928CFC@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_27292E074();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C340, &qword_272936030);
  swift_allocObject();
  *(a3 + 88) = sub_27292D854();
  type metadata accessor for SmartDialogTextView(0);
  sub_27292E064();
  sub_27292E1D4();
  *a3 = a2;
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel, &protocol conformance descriptor for GMEnrollmentViewModel);
  sub_27292D664();

  v32 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude;
  v7 = *&a1[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude];
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
  v8 = v7;
  sub_27292D664();

  v9 = *&v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font];

  *(a3 + 8) = sub_27292DE04();
  swift_getKeyPath();
  sub_27292D664();

  v31 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction;
  v10 = *&a1[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction];
  swift_getKeyPath();
  v11 = v10;
  sub_27292D664();

  v12 = *&v11[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font];

  *(a3 + 16) = sub_27292DE04();
  swift_getKeyPath();
  sub_27292D664();

  v30 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation;
  v13 = *&a1[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation];
  swift_getKeyPath();
  v14 = v13;
  sub_27292D664();

  v15 = *&v14[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font];

  *(a3 + 24) = sub_27292DE04();
  swift_getKeyPath();
  sub_27292D664();

  v16 = *&a1[v32];
  swift_getKeyPath();
  v17 = v16;
  sub_27292D664();

  v19 = *&v17[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  v18 = *&v17[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

  *(a3 + 32) = v19;
  *(a3 + 40) = v18;
  swift_getKeyPath();
  sub_27292D664();

  v20 = *&a1[v31];
  swift_getKeyPath();
  v21 = v20;
  sub_27292D664();

  v23 = *&v21[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  v22 = *&v21[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

  *(a3 + 48) = v23;
  *(a3 + 56) = v22;
  swift_getKeyPath();

  sub_27292D664();

  v24 = *&a1[v30];
  swift_getKeyPath();
  v25 = v24;
  sub_27292D664();

  v27 = *&v25[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  v26 = *&v25[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

  *(a3 + 64) = v27;
  *(a3 + 72) = v26;

  v29 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v29 = v23 & 0xFFFFFFFFFFFFLL;
  }

  *(a3 + 80) = v29 == 0;
  return result;
}

uint64_t type metadata accessor for SmartDialogTextView(uint64_t a1)
{
  result = qword_28089C348;
  if (!qword_28089C348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2729292C0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_27292DCD4();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmartDialogTextView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = v7;
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27292E1E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C360, &qword_272936168);
  MEMORY[0x28223BE20](v36);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C368, &qword_272936170);
  v16 = *(v15 - 8);
  v37 = v15;
  v38 = v16;
  MEMORY[0x28223BE20](v15);
  v35 = &v33 - v17;
  (*(v10 + 16))(v12, v1 + *(v5 + 60), v9);
  v18 = *(v1 + 88);
  v34 = v1;
  *&v45 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C340, &qword_272936030);
  sub_27290B998(&qword_28089C370, &qword_28089C340, &qword_272936030, MEMORY[0x277CBCE20]);
  sub_27292D8D4();
  sub_27292AA14(v1, v8);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_27292AA78(v8, v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C378, &qword_272936178);
  sub_27290B998(&qword_28089C380, &qword_28089C378, &qword_272936178, MEMORY[0x277CE14C0]);
  sub_27292E1C4();
  sub_27292E0C4();
  sub_27292D974();
  v21 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C388, &qword_272936180) + 36)];
  v22 = v46;
  *v21 = v45;
  *(v21 + 1) = v22;
  *(v21 + 2) = v47;
  sub_27292D9A4();
  sub_27292D9A4();
  MEMORY[0x2743CF870](0.0, -50.0);
  sub_27292D9B4();

  MEMORY[0x2743CFFE0](v23, 0.5, 0.9, 0.0);
  sub_27292D9C4();

  v24 = sub_27292D984();

  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C390, &qword_272936188) + 36)] = v24;
  sub_27292AA14(v34, v8);
  v25 = swift_allocObject();
  sub_27292AA78(v8, v25 + v19);
  v26 = v36;
  v27 = &v14[*(v36 + 36)];
  *v27 = sub_27292AC64;
  v27[1] = v25;
  v27[2] = 0;
  v27[3] = 0;
  v28 = v39;
  sub_27292DCC4();
  v29 = sub_27292ACC4();
  v30 = v35;
  sub_27292DEE4();
  (*(v40 + 8))(v28, v41);
  sub_27290B880(v14, &qword_28089C360, &qword_272936168);
  v43 = v26;
  v44 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  sub_27292DEB4();
  return (*(v38 + 8))(v30, v31);
}

uint64_t sub_2729298D4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3C8, &qword_2729361A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  sub_27292E0E4();
  sub_27292D974();
  v30 = v34;
  v31 = v32;
  v29 = v36;
  v28 = v37;
  v46 = 1;
  v45 = v33;
  v44 = v35;
  *v9 = sub_27292E0E4();
  *(v9 + 1) = v10;
  *(v9 + 2) = 0;
  v9[24] = 1;
  *(v9 + 4) = 0x4036000000000000;
  v9[40] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3D0, &qword_2729361A8);
  sub_272929B94(a1, &v9[*(v11 + 44)]);
  sub_27292E0E4();
  sub_27292D974();
  v27 = v38;
  v26 = v40;
  v25 = v42;
  v24 = v43;
  v49 = 1;
  v48 = v39;
  v47 = v41;
  v12 = v46;
  v13 = v45;
  v14 = v44;
  sub_27290939C(v9, v7, &qword_28089C3C8, &qword_2729361A0);
  LOBYTE(a1) = v49;
  v15 = v48;
  v23 = v47;
  *a2 = 0;
  *(a2 + 8) = v12;
  v16 = v30;
  *(a2 + 16) = v31;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  *(a2 + 40) = v14;
  v17 = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3D8, &qword_2729361B0);
  sub_27290939C(v7, a2 + *(v18 + 48), &qword_28089C3C8, &qword_2729361A0);
  v19 = a2 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = a1;
  *(v19 + 16) = v27;
  *(v19 + 24) = v15;
  *(v19 + 32) = v26;
  *(v19 + 40) = v23;
  v20 = v24;
  *(v19 + 48) = v25;
  *(v19 + 56) = v20;
  sub_27290B880(v9, &qword_28089C3C8, &qword_2729361A0);
  return sub_27290B880(v7, &qword_28089C3C8, &qword_2729361A0);
}

uint64_t sub_272929B94@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3E0, &qword_2729361B8);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v36 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3E8, &qword_2729361C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3F0, &qword_2729361C8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  *v20 = 0;
  v20[8] = 1;
  sub_27292A000(a1);
  if (*a1)
  {
    (*(v37 + 56))(v11, 1, 1, v38);
  }

  else
  {
    *&v40 = 0;
    BYTE8(v40) = 1;
    sub_27292A268(a1, &v41);
    *v18 = 0;
    v18[8] = 1;
    sub_27292A424(a1);
    sub_27290939C(v18, v15, &qword_28089C3F0, &qword_2729361C8);
    v21 = v49;
    v52[8] = v48;
    v52[9] = v49;
    v22 = v50;
    v23 = v51;
    v52[10] = v50;
    v52[11] = v51;
    v24 = v44;
    v25 = v45;
    v52[4] = v44;
    v52[5] = v45;
    v26 = v46;
    v27 = v47;
    v52[6] = v46;
    v52[7] = v47;
    v28 = v40;
    v29 = v41;
    v52[0] = v40;
    v52[1] = v41;
    v30 = v42;
    v31 = v43;
    v52[2] = v42;
    v52[3] = v43;
    v5[8] = v48;
    v5[9] = v21;
    v5[10] = v22;
    v5[11] = v23;
    v5[4] = v24;
    v5[5] = v25;
    v5[6] = v26;
    v5[7] = v27;
    *v5 = v28;
    v5[1] = v29;
    v5[2] = v30;
    v5[3] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3F8, &qword_2729361D0);
    sub_27290939C(v15, v5 + *(v32 + 48), &qword_28089C3F0, &qword_2729361C8);
    sub_27290939C(v52, v53, &qword_28089C400, &qword_2729361D8);
    sub_27290B880(v18, &qword_28089C3F0, &qword_2729361C8);
    sub_27290B880(v15, &qword_28089C3F0, &qword_2729361C8);
    v53[8] = v48;
    v53[9] = v49;
    v53[10] = v50;
    v53[11] = v51;
    v53[4] = v44;
    v53[5] = v45;
    v53[6] = v46;
    v53[7] = v47;
    v53[0] = v40;
    v53[1] = v41;
    v53[2] = v42;
    v53[3] = v43;
    sub_27290B880(v53, &qword_28089C400, &qword_2729361D8);
    sub_27292AEC0(v5, v11);
    (*(v37 + 56))(v11, 0, 1, v38);
  }

  sub_27290939C(v20, v18, &qword_28089C3F0, &qword_2729361C8);
  sub_27290939C(v11, v9, &qword_28089C3E8, &qword_2729361C0);
  v33 = v39;
  sub_27290939C(v18, v39, &qword_28089C3F0, &qword_2729361C8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C408, &qword_2729361E0);
  sub_27290939C(v9, v33 + *(v34 + 48), &qword_28089C3E8, &qword_2729361C0);
  sub_27290B880(v11, &qword_28089C3E8, &qword_2729361C0);
  sub_27290B880(v20, &qword_28089C3F0, &qword_2729361C8);
  sub_27290B880(v9, &qword_28089C3E8, &qword_2729361C0);
  return sub_27290B880(v18, &qword_28089C3F0, &qword_2729361C8);
}

uint64_t sub_27292A000(_BYTE *a1)
{
  if ((a1[80] & 1) == 0 && *a1 == 1)
  {
  }

  sub_2729255E8();
  v1 = sub_27292DE44();
  v3 = v2;
  v5 = v4;
  v16 = sub_27292DE34();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_27292563C(v1, v3, v5 & 1);

  KeyPath = swift_getKeyPath();
  sub_27292E0C4();
  sub_27292DA54();
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[7] = v24;
  *&v22[23] = v25;
  v13 = v9 & 1;
  v23 = v9 & 1;
  *&v22[39] = v26;
  v14 = sub_27292DF94();
  *&v20[73] = *&v22[64];
  *&v20[89] = *&v22[80];
  *&v20[105] = *&v22[96];
  *&v20[9] = *v22;
  *&v20[25] = *&v22[16];
  *&v20[41] = *&v22[32];
  *&v18 = v16;
  *(&v18 + 1) = v7;
  LOBYTE(v19) = v13;
  *(&v19 + 1) = v11;
  *v20 = KeyPath;
  v20[8] = 1;
  *&v20[57] = *&v22[48];
  *&v20[120] = *(&v30 + 1);
  *&v21 = swift_getKeyPath();
  *(&v21 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C410, &qword_272936248);
  sub_27292AFDC();
  sub_27292DEB4();
  v17[8] = *&v20[96];
  v17[9] = *&v20[112];
  v17[10] = v21;
  v17[4] = *&v20[32];
  v17[5] = *&v20[48];
  v17[6] = *&v20[64];
  v17[7] = *&v20[80];
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = *v20;
  v17[3] = *&v20[16];
  return sub_27290B880(v17, &qword_28089C410, &qword_272936248);
}

__n128 sub_27292A268@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *(a1 + 3);
  sub_2729255E8();

  v3 = sub_27292DE44();
  v5 = v4;
  v7 = v6;
  v8 = sub_27292DE34();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_27292563C(v3, v5, v7 & 1);

  KeyPath = swift_getKeyPath();
  sub_27292E0C4();
  sub_27292DA54();
  *&v20[55] = v24;
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27;
  *&v20[7] = v21;
  *&v20[23] = v22;
  v16 = v12 & 1;
  *&v20[39] = v23;
  v17 = sub_27292DF94();
  v18 = swift_getKeyPath();
  *(a2 + 105) = *&v20[64];
  *(a2 + 121) = *&v20[80];
  *(a2 + 137) = *&v20[96];
  *(a2 + 41) = *v20;
  *(a2 + 57) = *&v20[16];
  result = *&v20[32];
  *(a2 + 73) = *&v20[32];
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 89) = *&v20[48];
  *(a2 + 152) = *(&v27 + 1);
  *(a2 + 160) = v18;
  *(a2 + 168) = v17;
  return result;
}

uint64_t sub_27292A424(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
  }

  sub_2729255E8();
  v1 = sub_27292DE44();
  v3 = v2;
  v5 = v4;
  v6 = sub_27292DE34();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_27292563C(v1, v3, v5 & 1);

  KeyPath = swift_getKeyPath();
  sub_27292E0C4();
  sub_27292DA54();
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[7] = v24;
  *&v22[23] = v25;
  v14 = v10 & 1;
  v23 = v10 & 1;
  *&v22[39] = v26;
  v15 = sub_27292DF94();
  *&v19[73] = *&v22[64];
  *&v19[89] = *&v22[80];
  *&v19[105] = *&v22[96];
  *&v19[9] = *v22;
  *&v19[25] = *&v22[16];
  *&v19[41] = *&v22[32];
  *&v17 = v6;
  *(&v17 + 1) = v8;
  LOBYTE(v18) = v14;
  *(&v18 + 1) = v12;
  *v19 = KeyPath;
  v19[8] = 1;
  *&v19[57] = *&v22[48];
  *&v19[120] = *(&v30 + 1);
  *&v20 = swift_getKeyPath();
  *(&v20 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C410, &qword_272936248);
  sub_27292AFDC();
  sub_27292DEB4();
  v21[8] = *&v19[96];
  v21[9] = *&v19[112];
  v21[10] = v20;
  v21[4] = *&v19[32];
  v21[5] = *&v19[48];
  v21[6] = *&v19[64];
  v21[7] = *&v19[80];
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = *v19;
  v21[3] = *&v19[16];
  return sub_27290B880(v21, &qword_28089C410, &qword_272936248);
}

uint64_t sub_27292A660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C340, &qword_272936030);
  sub_27290B998(&qword_28089C3C0, &qword_28089C340, &qword_272936030, MEMORY[0x277CBCE18]);
  return sub_27292D874();
}

id sub_27292A6E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
  sub_27292D664();

  v4 = *(v3 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font);
  *a2 = v4;

  return v4;
}

id sub_27292A7CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel, &protocol conformance descriptor for GMEnrollmentViewModel);
  sub_27292D664();

  v4 = *(v3 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation);
  *a2 = v4;

  return v4;
}

void sub_27292A8E0(uint64_t a1)
{
  sub_27292A994();
  if (v1 <= 0x3F)
  {
    sub_27292E1E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27292A994()
{
  if (!qword_28089C358)
  {
    v0 = sub_27292D864();
    if (!v1)
    {
      atomic_store(v0, &qword_28089C358);
    }
  }
}

uint64_t sub_27292AA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27292AA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27292AADC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SmartDialogTextView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2729298D4(v4, a1);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for SmartDialogTextView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  v6 = sub_27292E1E4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27292AC64()
{
  type metadata accessor for SmartDialogTextView(0);

  return sub_27292A660();
}

unint64_t sub_27292ACC4()
{
  result = qword_28089C398;
  if (!qword_28089C398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C360, &qword_272936168);
    sub_27292AD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C398);
  }

  return result;
}

unint64_t sub_27292AD50()
{
  result = qword_28089C3A0;
  if (!qword_28089C3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C390, &qword_272936188);
    sub_27292AE08();
    sub_27290B998(&qword_28089BFB8, &qword_28089BFC0, &qword_272935BC0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C3A0);
  }

  return result;
}

unint64_t sub_27292AE08()
{
  result = qword_28089C3A8;
  if (!qword_28089C3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C388, &qword_272936180);
    sub_27290B998(&qword_28089C3B0, &qword_28089C3B8, &unk_272936190, MEMORY[0x277D63B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C3A8);
  }

  return result;
}

uint64_t sub_27292AEC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089C3E0, &qword_2729361B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27292AF30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27292DAA4();
  *a1 = result;
  return result;
}

uint64_t sub_27292AF84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27292DA84();
  *a1 = result;
  return result;
}

unint64_t sub_27292AFDC()
{
  result = qword_28089C418;
  if (!qword_28089C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C410, &qword_272936248);
    sub_27292B094();
    sub_27290B998(&qword_28089C1C8, &qword_28089C1D0, &qword_272935D10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C418);
  }

  return result;
}

unint64_t sub_27292B094()
{
  result = qword_28089C420;
  if (!qword_28089C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C428, &unk_272936250);
    sub_27292571C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C420);
  }

  return result;
}

unint64_t sub_27292B120()
{
  result = qword_28089C430;
  if (!qword_28089C430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C438, &unk_272936270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089C360, &qword_272936168);
    sub_27292ACC4();
    swift_getOpaqueTypeConformance2();
    sub_272918D78(&qword_28089BDF8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089C430);
  }

  return result;
}

uint64_t sub_27292B218()
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
  sub_27292D664();

  v1 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label);

  return v1;
}

uint64_t sub_27292B2D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label);
  v6 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label) == a1 && *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8) == a2;
  if (v6 || (sub_27292E494() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
    sub_27292D654();
  }
}

uint64_t sub_27292B440()
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
  sub_27292D664();

  return *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden);
}

void sub_27292B4E8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
  sub_27292D664();

  *a2 = *(v3 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden);
}

void sub_27292B598(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
    sub_27292D654();
  }
}

id sub_27292B6B0()
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
  sub_27292D664();

  v1 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font);

  return v1;
}

void sub_27292B768(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font;
  v5 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font);
  sub_27292CDCC();
  v6 = v5;
  v7 = sub_27292E3A4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
    sub_27292D654();
  }
}

id GMEnrollmentTextModel.__allocating_init(font:label:hidden:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  sub_27292D674();
  *&v9[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = a1;
  v10 = &v9[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v10 = a2;
  v10[1] = a3;
  v9[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id GMEnrollmentTextModel.init(font:label:hidden:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_27292D674();
  *&v4[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = a1;
  v9 = &v4[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v9 = a2;
  v9[1] = a3;
  v4[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = a4;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for GMEnrollmentTextModel(0);
  return objc_msgSendSuper2(&v11, sel_init);
}

id GMEnrollmentTextModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_27292BC58(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel, &protocol conformance descriptor for GMEnrollmentViewModel);
  sub_27292D664();

  v4 = *(v2 + *a2);

  return v4;
}

void sub_27292BD30(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(v4 + *a2);
  type metadata accessor for GMEnrollmentTextModel(0);
  v9 = v8;
  v10 = sub_27292E3A4();

  if (v10)
  {
    v11 = *(v5 + v7);
    *(v5 + v7) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27292CE58(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel, &protocol conformance descriptor for GMEnrollmentViewModel);
    sub_27292D654();
  }
}

id GMEnrollmentViewModel.__allocating_init(prelude:instruction:continuation:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_27292C6B0(a1, a2, a3);

  return v8;
}

id GMEnrollmentViewModel.init(prelude:instruction:continuation:)(void *a1, void *a2, void *a3)
{
  v6 = sub_27292C6B0(a1, a2, a3);

  return v6;
}

double sub_27292C064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_27292E114();
  sub_27292D9E4();

  return result;
}

void sub_27292C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel, &protocol conformance descriptor for GMEnrollmentViewModel);
  sub_27292D664();

  v9 = *(a1 + *a5);

  sub_27292B2D4(a2, a3);
}

double sub_27292C1BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27292E254();
  v4 = a1;
  sub_27292E114();
  sub_27292D9E4();

  return result;
}

double sub_27292C2C4(uint64_t a1, uint64_t a2)
{
  sub_27292E114();
  sub_27292D9E4();

  return result;
}

void sub_27292C328(_BYTE *a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2 & 1;
  swift_getKeyPath();
  sub_27292CE58(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel, &protocol conformance descriptor for GMEnrollmentViewModel);
  sub_27292D664();

  v8 = *&a1[*a4];
  if (v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] == v7)
  {
    v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27292CE58(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel, &protocol conformance descriptor for GMEnrollmentTextModel);
    v10 = v8;
    sub_27292D654();
  }
}

double sub_27292C4EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  sub_27292E114();
  sub_27292D9E4();

  return result;
}

id sub_27292C5D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_27292C6B0(void *a1, void *a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D743F8];
  v6 = [v4 systemFontOfSize:28.0 weight:*MEMORY[0x277D743F8]];
  v7 = type metadata accessor for GMEnrollmentTextModel(0);
  v8 = objc_allocWithZone(v7);
  sub_27292D674();
  *&v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = v6;
  v9 = &v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v8[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = 0;
  v29.receiver = v8;
  v29.super_class = v7;
  v10 = objc_msgSendSuper2(&v29, sel_init);
  v11 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude;
  *&v3[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude] = v10;
  v12 = [v4 systemFontOfSize:28.0 weight:v5];
  v13 = objc_allocWithZone(v7);
  sub_27292D674();
  *&v13[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = v12;
  v14 = &v13[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v13[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = 0;
  v28.receiver = v13;
  v28.super_class = v7;
  v15 = objc_msgSendSuper2(&v28, sel_init);
  v16 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction;
  *&v3[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction] = v15;
  v17 = [v4 systemFontOfSize:28.0 weight:v5];
  v18 = objc_allocWithZone(v7);
  sub_27292D674();
  *&v18[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font] = v17;
  v19 = &v18[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v18[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__hidden] = 0;
  v27.receiver = v18;
  v27.super_class = v7;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  v21 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation;
  *&v3[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation] = v20;
  sub_27292D674();
  objc_storeStrong(&v3[v11], a1);
  objc_storeStrong(&v3[v16], a2);
  objc_storeStrong(&v3[v21], a3);
  v26.receiver = v3;
  v26.super_class = type metadata accessor for GMEnrollmentViewModel(0);
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_27292CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_27292D684();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_27292CD0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__continuation) = v2;
  v4 = v2;
}

void sub_27292CD4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction) = v2;
  v4 = v2;
}

void sub_27292CD8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude) = v2;
  v4 = v2;
}

unint64_t sub_27292CDCC()
{
  result = qword_28089BAC0;
  if (!qword_28089BAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28089BAC0);
  }

  return result;
}

void sub_27292CE18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__font) = v2;
  v4 = v2;
}

uint64_t sub_27292CE58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27292CEB8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label);
  *v2 = v0[3];
  v2[1] = v1;
}