uint64_t sub_1E598F880@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v118 = a1;
  v139 = a4;
  v6 = *(a2 + 16);
  v119 = a2;
  v7 = *(a2 + 32);
  v132 = v6;
  v133 = v7;
  v8 = type metadata accessor for TVCustomPlanView(255, v6, v7, a3);
  WitnessTable = swift_getWitnessTable();
  *&v169 = v8;
  *(&v169 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v122 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v131 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  *&v169 = v8;
  *(&v169 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v169 = OpaqueTypeMetadata2;
  *(&v169 + 1) = OpaqueTypeConformance2;
  v143 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1E5A2AA84();
  v17 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  *&v169 = v14;
  *(&v169 + 1) = MEMORY[0x1E69E6158];
  v142 = v16;
  *&v170 = v16;
  *(&v170 + 1) = v17;
  *v171 = MEMORY[0x1E69E6168];
  v18 = sub_1E5A2B6F4();
  v117 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v121 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v109 - v21;
  *&v169 = v8;
  *(&v169 + 1) = WitnessTable;
  v22 = swift_getOpaqueTypeMetadata2();
  v125 = v8;
  v126 = WitnessTable;
  *&v169 = v8;
  *(&v169 + 1) = WitnessTable;
  v23 = swift_getOpaqueTypeConformance2();
  *&v169 = v22;
  *(&v169 + 1) = v23;
  *(&v141 + 1) = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v138 = v18;
  v25 = sub_1E5A2AA84();
  v129 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v109 - v26;
  v27 = sub_1E5A2A734();
  v111 = *(v27 - 8);
  v112 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v141 = swift_checkMetadataState();
  v114 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v113 = &v109 - v29;
  v128 = v24;
  v116 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v115 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v124 = &v109 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v109 - v35;
  v37 = type metadata accessor for PersonalizedWorkoutPlanCandidates(0);
  v123 = *(v37 - 8);
  v38 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v109 - v41;
  v137 = v25;
  v140 = OpaqueTypeMetadata2;
  v43 = sub_1E5A2AA84();
  v135 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v134 = &v109 - v44;
  v45 = v4[1];
  v172 = *v4;
  v173 = v45;
  v174 = v4[2];
  v175 = *(v4 + 6);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v136 = v43;
  if (EnumCaseMultiPayload <= 1)
  {
    v66 = v118;
    v67 = v119;
    if (EnumCaseMultiPayload)
    {
      v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
      sub_1E594D3DC(v36, v42);
      v85 = sub_1E5A29E34();
      (*(*(v85 - 8) + 8))(&v36[v84], v85);
    }

    else
    {
      sub_1E594D3DC(v36, v42);
    }

    v86 = v123;
    sub_1E594D3DC(v42, v39);
    v87 = (*(v86 + 80) + 105) & ~*(v86 + 80);
    v88 = swift_allocObject();
    v89 = *(v67 + 24);
    v90 = v133;
    *(v88 + 16) = v132;
    *(v88 + 24) = v89;
    v91 = *(v67 + 40);
    *(v88 + 32) = v90;
    *(v88 + 40) = v91;
    v92 = v173;
    *(v88 + 48) = v172;
    *(v88 + 64) = v92;
    *(v88 + 80) = v174;
    *(v88 + 96) = v175;
    *(v88 + 104) = v66;
    sub_1E594D3DC(v39, v88 + v87);

    (*(*(v67 - 8) + 16))(&v169, &v172, v67);
    type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
    v93 = v140;
    *&v169 = v140;
    *(&v169 + 1) = v143;
    v152 = swift_getOpaqueTypeConformance2();
    v153 = MEMORY[0x1E6981E60];
    v133 = MEMORY[0x1E697F968];
    v94 = swift_getWitnessTable();
    sub_1E599AF40(&qword_1ECFFF280, type metadata accessor for PersonalizedWorkoutPlanCandidateType, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateType);
    v64 = v93;
    sub_1E599AF40(&qword_1ECFFF288, type metadata accessor for PersonalizedWorkoutPlanCandidateType, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateType);
    v95 = v121;
    sub_1E5A2B6D4();
    v151 = v94;
    v96 = v138;
    v97 = swift_getWitnessTable();
    v98 = v120;
    sub_1E58B41DC();
    v99 = *(v117 + 8);
    v99(v95, v96);
    sub_1E58B41DC();
    v169 = v141;
    v100 = swift_getOpaqueTypeConformance2();
    v101 = v127;
    sub_1E595ECB8(v95, v128, v96, v100, v97);
    v149 = v100;
    v150 = v97;
    v102 = v137;
    v103 = swift_getWitnessTable();
    v62 = v134;
    sub_1E595EBC0(v101, v102, v64, v103, v143);
    (*(v129 + 8))(v101, v102);
    v99(v95, v96);
    v99(v98, v96);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1E58BAD14(v36, &qword_1ECFFE260, &qword_1E5A39370);
  }

  else if (EnumCaseMultiPayload != 3)
  {
    v169 = v172;
    v170 = v173;
    *v171 = v174;
    *&v171[16] = v175;
    sub_1E598D300();
    v47 = *(&v173 + 1);
    v48 = v174;

    TVCustomPlanView.init(store:index:actionButtonViewBuilder:)(0, v47, v48, v132, v133, &v166);
    v49 = v110;
    sub_1E5A2A724();
    v50 = swift_checkMetadataState();
    v51 = v113;
    sub_1E5A2B394();
    (*(v111 + 8))(v49, v112);
    v169 = v166;
    v170 = v167;
    *v171 = v168[0];
    *&v171[9] = *(v168 + 9);
    (*(*(v50 - 8) + 8))(&v169, v50);
    sub_1E5A2AD64();
    sub_1E5A2B7E4();
    v52 = v115;
    v53 = v141;
    sub_1E5A2B274();
    (*(v114 + 8))(v51, v53);
    v166 = v53;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = v128;
    sub_1E58B41DC();
    v133 = *(v116 + 8);
    v133(v52, v55);
    sub_1E58B41DC();
    v56 = v143;
    *&v166 = v140;
    *(&v166 + 1) = v143;
    v147 = swift_getOpaqueTypeConformance2();
    v148 = MEMORY[0x1E6981E60];
    v146 = swift_getWitnessTable();
    v57 = v138;
    v58 = swift_getWitnessTable();
    v59 = v127;
    sub_1E595EBC0(v52, v55, v57, v54, v58);
    v144 = v54;
    v145 = v58;
    v60 = v137;
    v61 = swift_getWitnessTable();
    v62 = v134;
    v63 = v56;
    v64 = v140;
    sub_1E595EBC0(v59, v60, v140, v61, v63);
    (*(v129 + 8))(v59, v60);
    v65 = v133;
    v133(v52, v55);
    v65(v124, v55);
LABEL_11:
    v80 = v62;
    v74 = *(&v141 + 1);
    v75 = v141;
    goto LABEL_12;
  }

  v169 = v172;
  v170 = v173;
  *v171 = v174;
  *&v171[16] = v175;
  sub_1E598D300();
  v68 = *(&v173 + 1);
  v69 = v174;

  TVCustomPlanView.init(store:index:actionButtonViewBuilder:)(0, v68, v69, v132, v133, &v166);
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v70 = swift_checkMetadataState();
  v71 = v131;
  sub_1E5A2B274();
  v169 = v166;
  v170 = v167;
  *v171 = v168[0];
  *&v171[9] = *(v168 + 9);
  (*(*(v70 - 8) + 8))(&v169, v70);
  v72 = v71;
  v64 = v140;
  v73 = v143;
  sub_1E58B41DC();
  v133 = *(v122 + 8);
  v133(v72, v64);
  sub_1E58B41DC();
  v74 = *(&v141 + 1);
  v75 = v141;
  v166 = v141;
  v76 = swift_getOpaqueTypeConformance2();
  *&v166 = v64;
  *(&v166 + 1) = v73;
  v164 = swift_getOpaqueTypeConformance2();
  v165 = MEMORY[0x1E6981E60];
  v163 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v161 = v76;
  v162 = v77;
  v78 = v137;
  v79 = swift_getWitnessTable();
  v80 = v134;
  v81 = v131;
  sub_1E595ECB8(v131, v78, v64, v79, v73);
  v82 = v81;
  v83 = v133;
  v133(v82, v64);
  v83(v130, v64);
LABEL_12:
  *&v169 = v75;
  *(&v169 + 1) = v74;
  v104 = swift_getOpaqueTypeConformance2();
  *&v169 = v64;
  v105 = v143;
  *(&v169 + 1) = v143;
  v159 = swift_getOpaqueTypeConformance2();
  v160 = MEMORY[0x1E6981E60];
  v158 = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v156 = v104;
  v157 = v106;
  v154 = swift_getWitnessTable();
  v155 = v105;
  v107 = v136;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v135 + 8))(v80, v107);
}

uint64_t sub_1E5990994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v76 = a7;
  v89 = a5;
  v87 = a4;
  v94 = a3;
  v92 = a2;
  v98 = a1;
  v99 = a9;
  v12 = sub_1E5A2BA14();
  v91 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v93 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v78 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v86 = &v73 - v23;
  v77 = a6;
  v79 = a8;
  v25 = type metadata accessor for TVCustomPlanView(255, a6, a8, v24);
  WitnessTable = swift_getWitnessTable();
  *&v102 = v25;
  *(&v102 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v95 = &v73 - v28;
  *&v102 = v25;
  *(&v102 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v102 = OpaqueTypeMetadata2;
  *(&v102 + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeMetadata2();
  v85 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v83 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v81 = &v73 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v82 = &v73 - v35;
  v36 = type metadata accessor for PersonalizedWorkoutPlanCandidateType(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v73 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E5A2AA84();
  v96 = *(v39 - 8);
  v97 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v73 - v40;
  sub_1E599AF88(v92, v38, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  v42 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  if ((*(*(v42 - 8) + 48))(v38, 1, v42) == 1)
  {
    v73 = v30;
    v74 = v41;
    v75 = OpaqueTypeConformance2;
    v92 = v12;
    v43 = v77;
    *&v102 = v77;
    *(&v102 + 1) = v76;
    v44 = v79;
    *&v103 = v79;
    *(&v103 + 1) = a10;
    type metadata accessor for TVPersonalizedWorkoutPlansView(0, &v102);
    v45 = v94;
    sub_1E598D300();
    v46 = *(v45 + 24);
    v47 = *(v45 + 32);

    TVCustomPlanView.init(store:index:actionButtonViewBuilder:)(v98, v46, v47, v43, v44, v100);
    sub_1E5A2AD64();
    sub_1E5A2B7E4();
    v48 = swift_checkMetadataState();
    sub_1E5A2B274();
    v102 = v100[0];
    v103 = v100[1];
    v104[0] = v101[0];
    *(v104 + 9) = *(v101 + 9);
    (*(*(v48 - 8) + 8))(&v102, v48);
    sub_1E5A2B9B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    *(inited + 16) = xmmword_1E5A3C8E0;
    *(inited + 40) = 0xE400000000000000;
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v50 = qword_1EE2D33E0;
    sub_1E598D300();
    swift_getKeyPath();
    sub_1E5A2B944();

    v51 = sub_1E5A2BB64();
    v52 = MEMORY[0x1E69E6158];
    *(inited + 48) = v51;
    *(inited + 56) = v53;
    *(inited + 72) = v52;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x70756B636F6CLL;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 120) = v52;
    *(inited + 128) = 0x6973736572706D69;
    v54 = v98;
    if (v87 != 1)
    {
      v54 = 0;
    }

    v55 = MEMORY[0x1E69E6530];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = v54;
    *(inited + 168) = v55;
    *(inited + 176) = 0x64496F636572;
    *(inited + 184) = 0xE600000000000000;
    type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
    v56 = sub_1E5A29E44();
    *(inited + 216) = v52;
    *(inited + 192) = v56;
    *(inited + 200) = v57;
    sub_1E590DF48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
    swift_arrayDestroy();
    sub_1E5A2B984();
    v58 = MEMORY[0x1E69E7CC0];
    sub_1E590DF48(MEMORY[0x1E69E7CC0]);
    sub_1E590DF48(v58);
    v59 = v86;
    sub_1E5A2B9D4();
    v60 = sub_1E5A2B9E4();
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    v61 = v90;
    sub_1E5A2B9F4();
    v62 = v81;
    v63 = OpaqueTypeMetadata2;
    OpaqueTypeConformance2 = v75;
    v64 = v95;
    sub_1E5A2B014();
    (*(v91 + 8))(v61, v92);
    sub_1E58BAD14(v59, &qword_1ECFFB550, &qword_1E5A304B0);
    (*(v84 + 8))(v64, OpaqueTypeMetadata2);
    *&v100[0] = OpaqueTypeMetadata2;
    *(&v100[0] + 1) = OpaqueTypeConformance2;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v82;
    v67 = v73;
    sub_1E58B41DC();
    v68 = *(v85 + 8);
    v68(v62, v67);
    v69 = v83;
    sub_1E58B41DC();
    v41 = v74;
    sub_1E595EBC0(v69, v67, MEMORY[0x1E6981E70], v65, MEMORY[0x1E6981E60]);
    v68(v69, v67);
    v68(v66, v67);
  }

  else
  {
    *&v102 = OpaqueTypeMetadata2;
    *(&v102 + 1) = OpaqueTypeConformance2;
    v70 = swift_getOpaqueTypeConformance2();
    sub_1E595ECB8(v70, v30, MEMORY[0x1E6981E70], v70, MEMORY[0x1E6981E60]);
    sub_1E599AFF0(v38, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v63 = OpaqueTypeMetadata2;
  }

  *&v102 = v63;
  *(&v102 + 1) = OpaqueTypeConformance2;
  v105 = swift_getOpaqueTypeConformance2();
  v106 = MEMORY[0x1E6981E60];
  v71 = v97;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v96 + 8))(v41, v71);
}

uint64_t TVPersonalizedWorkoutPlansView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  *(&v86 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  v87 = a1;
  v3 = *(a1 + 40);
  v72 = *(a1 + 24);
  *&v73 = v3;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, v72, v3, v4);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  v82 = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = MEMORY[0x1E697D318];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v74 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  v77 = v5;
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = MEMORY[0x1E69E6338];
  *&v126 = OpaqueTypeMetadata2;
  *(&v126 + 1) = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  *&v127 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v7 = sub_1E5A2AA84();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v123 = swift_getOpaqueTypeConformance2();
  v79 = MEMORY[0x1E69819D0];
  v121 = OpaqueTypeConformance2;
  v122 = swift_getWitnessTable();
  v85 = MEMORY[0x1E697F968];
  v119 = swift_getWitnessTable();
  v120 = MEMORY[0x1E6981E60];
  v9 = MEMORY[0x1E6981E60];
  v81 = v7;
  swift_getWitnessTable();
  sub_1E5A2A474();
  sub_1E5A2A6C4();
  v78 = MEMORY[0x1E697DA78];
  v117 = swift_getWitnessTable();
  v118 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  v10 = sub_1E5A2B734();
  v11 = sub_1E59926B8();
  v76 = MEMORY[0x1E697BE60];
  v114 = v11;
  v115 = swift_getWitnessTable();
  v116 = v9;
  *(&v86 + 1) = MEMORY[0x1E697D6F0];
  v12 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  *&v125 = v10;
  *(&v125 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  v75 = sub_1E5A2BD84();
  *&v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  v13 = *(v87 + 32);
  v70 = *(v87 + 16);
  v71 = v13;
  type metadata accessor for TVCustomPlanView(255, v70, v13, v14);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  swift_getOpaqueTypeMetadata2();
  v15 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v80);
  *&v127 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v74 = sub_1E5A2AA84();
  v16 = swift_getOpaqueTypeConformance2();
  v112 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x1E6981E60];
  v113 = MEMORY[0x1E6981E60];
  v111 = swift_getWitnessTable();
  v109 = v16;
  v110 = swift_getWitnessTable();
  v107 = swift_getWitnessTable();
  v108 = v15;
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  sub_1E5A2B734();
  v80 = MEMORY[0x1E6981870];
  v79 = sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900, MEMORY[0x1E6981870]);
  v104 = v79;
  v105 = swift_getWitnessTable();
  v106 = v17;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = sub_1E5A2AD04();
  v20 = swift_getOpaqueTypeConformance2();
  v21 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  *&v125 = v18;
  *(&v125 + 1) = v19;
  *&v126 = v20;
  *(&v126 + 1) = v21;
  v101 = v79;
  v102 = swift_getOpaqueTypeConformance2();
  v22 = MEMORY[0x1E6981E60];
  v103 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2AA84();
  v23 = sub_1E5A2AA84();
  v99 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  v97 = swift_getWitnessTable();
  v98 = v22;
  v79 = v23;
  v76 = swift_getWitnessTable();
  v24 = sub_1E5A2B604();
  v77 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - v25;
  v27 = swift_getWitnessTable();
  *&v125 = v24;
  *(&v125 + 1) = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v68 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  *&v125 = v24;
  *(&v125 + 1) = v27;
  v31 = swift_getOpaqueTypeConformance2();
  *&v86 = v28;
  *(&v86 + 1) = v31;
  *&v125 = v28;
  *(&v125 + 1) = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v78 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v67 - v33;
  v74 = v35;
  v36 = sub_1E5A2A6C4();
  v81 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v69 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v75 = &v67 - v39;
  v40 = sub_1E5A2BD84();
  v85 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v80 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v82 = &v67 - v43;
  v44 = *(v83 + 16);
  v125 = *v83;
  v126 = v44;
  v46 = *v83;
  v45 = *(v83 + 16);
  v127 = *(v83 + 32);
  v128 = *(v83 + 48);
  v95[0] = v46;
  v95[1] = v45;
  v95[2] = *(v83 + 32);
  v96 = *(v83 + 48);
  if (sub_1E598D728())
  {
    v47 = sub_1E5A2AA34();
    MEMORY[0x1EEE9AC00](v47);
    *&v48 = v70;
    *&v49 = v71;
    *(&v48 + 1) = v72;
    v83 = v48;
    *(&v49 + 1) = v73;
    v73 = v49;
    *(&v67 - 3) = v48;
    *(&v67 - 2) = v49;
    *(&v67 - 2) = v50;
    sub_1E5A2B5F4();
    sub_1E5A2B1E4();
    (*(v77 + 8))(v26, v24);
    v51 = *(&v86 + 1);
    v52 = v86;
    sub_1E5A2AFF4();
    (*(v68 + 8))(v30, v52);
    v53 = swift_allocObject();
    v54 = v73;
    *(v53 + 16) = v83;
    *(v53 + 32) = v54;
    v55 = v126;
    *(v53 + 48) = v125;
    *(v53 + 64) = v55;
    *(v53 + 80) = v127;
    *(v53 + 96) = v128;
    (*(*(v87 - 8) + 16))(v95, &v125);
    v95[0] = __PAIR128__(v51, v52);
    v56 = swift_getOpaqueTypeConformance2();
    v57 = v69;
    v58 = v74;
    sub_1E5A2B364();

    (*(v78 + 8))(v34, v58);
    v88 = v56;
    v89 = MEMORY[0x1E69805D0];
    swift_getWitnessTable();
    v59 = v75;
    sub_1E58B41DC();
    v60 = v81;
    v61 = *(v81 + 8);
    v61(v57, v36);
    sub_1E58B41DC();
    v61(v59, v36);
    v62 = v80;
    (*(v60 + 32))(v80, v57, v36);
    (*(v60 + 56))(v62, 0, 1, v36);
  }

  else
  {
    v62 = v80;
    (*(v81 + 56))(v80, 1, 1, v36);
    v52 = v86;
    v95[0] = v86;
    v93 = swift_getOpaqueTypeConformance2();
    v94 = MEMORY[0x1E69805D0];
    swift_getWitnessTable();
  }

  v63 = v85;
  v64 = v82;
  (*(v85 + 16))(v82, v62, v40);
  v65 = *(v63 + 8);
  v65(v62, v40);
  *&v95[0] = v52;
  *(&v95[0] + 1) = *(&v86 + 1);
  v91 = swift_getOpaqueTypeConformance2();
  v92 = MEMORY[0x1E69805D0];
  v90 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (v65)(v64, v40);
}

unint64_t sub_1E59926B8()
{
  result = qword_1EE2CFB08;
  if (!qword_1EE2CFB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
    sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFB08);
  }

  return result;
}

uint64_t sub_1E5992770@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v149 = a5;
  v150 = a6;
  v155 = a2;
  v156 = a4;
  v151 = a3;
  v154 = a1;
  v153 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, a3, a5, v8);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = MEMORY[0x1E697D318];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  v138 = swift_getOpaqueTypeMetadata2();
  v137 = swift_getOpaqueTypeConformance2();
  v128 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v11 = MEMORY[0x1E69E6338];
  sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v134 = sub_1E5A2B6F4();
  v136 = sub_1E5A2AA84();
  v127 = sub_1E5A2AA84();
  type metadata accessor for TVCustomPlanView(255, v155, v156, v12);
  swift_getWitnessTable();
  v132 = v10;
  v148 = swift_getOpaqueTypeMetadata2();
  v146 = swift_getOpaqueTypeConformance2();
  v144 = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v13 = swift_getOpaqueTypeMetadata2();
  v143 = swift_getOpaqueTypeConformance2();
  v135 = v13;
  swift_getOpaqueTypeMetadata2();
  v140 = sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v11);
  *&v178 = MEMORY[0x1E69E6168];
  v139 = sub_1E5A2B6F4();
  v141 = sub_1E5A2AA84();
  v142 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  v130 = MEMORY[0x1E697DA78];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  v131 = MEMORY[0x1E697BE60];
  swift_getWitnessTable();
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = sub_1E5A2AD04();
  v16 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  v18 = sub_1E5A2B734();
  v133 = sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900, MEMORY[0x1E6981870]);
  *&v176 = v14;
  *(&v176 + 1) = v15;
  *&v177 = v16;
  *(&v177 + 1) = v17;
  v200 = v133;
  v201 = swift_getOpaqueTypeConformance2();
  v19 = MEMORY[0x1E6981E60];
  v202 = MEMORY[0x1E6981E60];
  v129 = MEMORY[0x1E697D6F0];
  v123[2] = swift_getWitnessTable();
  v123[3] = v18;
  v152 = sub_1E5A2B604();
  v125 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v124 = v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v126 = v123 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  *&v176 = OpaqueTypeMetadata2;
  *(&v176 + 1) = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  *&v176 = v138;
  *(&v176 + 1) = v137;
  v199 = swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = MEMORY[0x1E69819D0];
  v24 = swift_getWitnessTable();
  v197 = v23;
  v198 = v24;
  v195 = swift_getWitnessTable();
  v196 = v19;
  swift_getWitnessTable();
  sub_1E5A2A474();
  sub_1E5A2A6C4();
  v193 = swift_getWitnessTable();
  v194 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  v25 = sub_1E5A2B734();
  v26 = sub_1E59926B8();
  v27 = swift_getWitnessTable();
  v190 = v26;
  v191 = v27;
  v192 = v19;
  v28 = swift_getWitnessTable();
  *&v176 = v25;
  *(&v176 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  *&v176 = v25;
  *(&v176 + 1) = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v127 = v29;
  v123[1] = v30;
  v31 = sub_1E5A2B604();
  v32 = sub_1E5A2BD84();
  *&v176 = v148;
  *(&v176 + 1) = v146;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v143;
  *&v176 = v135;
  *(&v176 + 1) = v143;
  v188 = swift_getOpaqueTypeConformance2();
  v189 = v19;
  v187 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v185 = v33;
  v186 = v35;
  v183 = swift_getWitnessTable();
  v184 = v34;
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  v36 = sub_1E5A2B734();
  v37 = swift_getWitnessTable();
  v180 = v133;
  v181 = v37;
  v182 = v19;
  v38 = swift_getWitnessTable();
  *&v176 = v36;
  *(&v176 + 1) = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  *&v176 = v36;
  *(&v176 + 1) = v38;
  v40 = v149;
  v41 = swift_getOpaqueTypeConformance2();
  v135 = v39;
  v133 = v41;
  v42 = sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  v43 = sub_1E5A2B864();
  v44 = sub_1E5A2AA84();
  v142 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v141 = v123 - v45;
  v148 = v43;
  v137 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v136 = v123 - v47;
  v139 = v42;
  v132 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v134 = v123 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v140 = v123 - v51;
  v138 = v31;
  v130 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = v123 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v123 - v56;
  OpaqueTypeMetadata2 = v32;
  v131 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = v123 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v143 = v123 - v62;
  v153 = v63;
  v64 = sub_1E5A2AA84();
  OpaqueTypeConformance2 = *(v64 - 8);
  v146 = v64;
  MEMORY[0x1EEE9AC00](v64);
  v144 = v123 - v65;
  v66 = v154[1];
  v176 = *v154;
  v177 = v66;
  v178 = v154[2];
  v179 = *(v154 + 6);
  v67 = v155;
  *&v163 = v155;
  v68 = v151;
  *(&v163 + 1) = v151;
  v69 = v156;
  *&v164 = v156;
  *(&v164 + 1) = v40;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, &v163);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v175)
  {
    if (v175 == 1)
    {
      MEMORY[0x1EEE9AC00](v70);
      v123[-6] = v67;
      v123[-5] = v68;
      v123[-4] = v69;
      v123[-3] = v71;
      v123[-2] = v154;
      sub_1E5A2AA24();
      v72 = v124;
      sub_1E5A2B5F4();
      v73 = v152;
      v74 = swift_getWitnessTable();
      sub_1E58B41DC();
      v75 = *(v125 + 8);
      v75(v72, v73);
      sub_1E58B41DC();
      v76 = v148;
      v77 = swift_getWitnessTable();
      v78 = v141;
      sub_1E595ECB8(v72, v76, v73, v77, v74);
      v167 = v77;
      v168 = v74;
      v79 = v153;
      v80 = swift_getWitnessTable();
      v81 = v144;
      sub_1E595EBC0(v78, v79, MEMORY[0x1E6981E70], v80, MEMORY[0x1E6981E60]);
      (*(v142 + 8))(v78, v79);
      v75(v72, v73);
      v75(v126, v73);
    }

    else
    {
      v86 = v154;
      v87 = v154[1];
      v163 = *v154;
      v164 = v87;
      v165 = v154[2];
      v166 = *(v154 + 6);
      v88 = sub_1E598D3A0();
      if (v88)
      {
        MEMORY[0x1EEE9AC00](v88);
        v123[-6] = v67;
        v123[-5] = v68;
        v123[-4] = v69;
        v123[-3] = v40;
        v123[-2] = v154;
        sub_1E5A2AA24();
        sub_1E5A2B5F4();
        v89 = v138;
        swift_getWitnessTable();
        sub_1E58B41DC();
        v90 = v130;
        v91 = v40;
        v92 = *(v130 + 8);
        v92(v54, v89);
        v93 = v89;
        sub_1E58B41DC();
        v94 = v57;
        v95 = v91;
        v92(v94, v89);
        v67 = v155;
        v69 = v156;
        v86 = v154;
        (*(v90 + 32))(v60, v54, v93);
        (*(v90 + 56))(v60, 0, 1, v93);
        v68 = v151;
      }

      else
      {
        (*(v130 + 56))(v60, 1, 1, v138);
        swift_getWitnessTable();
        v95 = v40;
      }

      v96 = sub_1E5A2BD84();
      (*(*(v96 - 8) + 16))(v143, v60, v96);
      v97 = v131;
      v98 = *(v131 + 8);
      v130 = v131 + 8;
      v154 = v98;
      v99 = (v98)(v60, OpaqueTypeMetadata2);
      MEMORY[0x1EEE9AC00](v99);
      v123[-6] = v67;
      v123[-5] = v68;
      v123[-4] = v69;
      v123[-3] = v95;
      v123[-2] = v86;
      sub_1E5A2AA24();
      v100 = v134;
      sub_1E5A2B5F4();
      v156 = MEMORY[0x1E6981870];
      v101 = v139;
      v149 = swift_getWitnessTable();
      v102 = v60;
      v103 = v140;
      sub_1E58B41DC();
      v104 = v132;
      v106 = v132 + 8;
      v105 = *(v132 + 8);
      v105(v100, v101);
      v155 = v106;
      v151 = v105;
      v107 = OpaqueTypeMetadata2;
      (*(v97 + 16))(v102, v143, OpaqueTypeMetadata2);
      *&v163 = v102;
      (*(v104 + 16))(v100, v103, v101);
      *(&v163 + 1) = v100;
      v162[0] = v107;
      v162[1] = v101;
      v108 = v101;
      v159 = swift_getWitnessTable();
      v160 = swift_getWitnessTable();
      v161 = v149;
      v109 = v136;
      sub_1E597DC00(&v163, 2uLL, v162);
      v105(v100, v101);
      (v154)(v102, v107);
      v110 = v148;
      v111 = swift_getWitnessTable();
      v112 = v152;
      v113 = swift_getWitnessTable();
      v114 = v141;
      sub_1E595EBC0(v109, v110, v112, v111, v113);
      v157 = v111;
      v158 = v113;
      v115 = v153;
      v116 = swift_getWitnessTable();
      v81 = v144;
      sub_1E595EBC0(v114, v115, MEMORY[0x1E6981E70], v116, MEMORY[0x1E6981E60]);
      (*(v142 + 8))(v114, v115);
      (*(v137 + 8))(v109, v110);
      v151(v140, v108);
      (v154)(v143, OpaqueTypeMetadata2);
    }
  }

  else
  {
    v82 = swift_getWitnessTable();
    v83 = swift_getWitnessTable();
    v173 = v82;
    v174 = v83;
    v84 = v153;
    v85 = swift_getWitnessTable();
    v81 = v144;
    sub_1E595ECB8(v85, v84, MEMORY[0x1E6981E70], v85, MEMORY[0x1E6981E60]);
  }

  v117 = MEMORY[0x1E6981E60];
  v119 = OpaqueTypeConformance2;
  v118 = v146;
  v120 = swift_getWitnessTable();
  v121 = swift_getWitnessTable();
  v171 = v120;
  v172 = v121;
  v169 = swift_getWitnessTable();
  v170 = v117;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v119 + 8))(v81, v118);
}

uint64_t sub_1E5993DBC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a5;
  v86 = a3;
  v87 = a4;
  v88 = a2;
  v77 = a1;
  v85 = a6;
  v8 = sub_1E5A2BA14();
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v89 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v80 = &v68 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  v21 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, a3, a5, v20);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v22 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  *&v93 = v22;
  *(&v93 + 1) = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = OpaqueTypeMetadata2;
  *&v93 = v22;
  *(&v93 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v93 = OpaqueTypeMetadata2;
  *(&v93 + 1) = OpaqueTypeConformance2;
  v73 = swift_getOpaqueTypeMetadata2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v27 = sub_1E5A29E74();
  v28 = swift_getWitnessTable();
  *&v93 = v21;
  *(&v93 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  *&v93 = v21;
  *(&v93 + 1) = v28;
  v30 = swift_getOpaqueTypeConformance2();
  *&v93 = v29;
  *(&v93 + 1) = v30;
  v74 = MEMORY[0x1E69E3B40];
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v33 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v93 = v26;
  *(&v93 + 1) = v27;
  *&v94 = v31;
  *(&v94 + 1) = v32;
  *&v95 = v33;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  *&v93 = v76;
  *(&v93 + 1) = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  *&v93 = v29;
  *(&v93 + 1) = v30;
  v106 = swift_getOpaqueTypeConformance2();
  v35 = v77;
  v36 = swift_getWitnessTable();
  v104 = v34;
  v105 = v36;
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x1E6981E60];
  v102 = v37;
  v103 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E5A2A474();
  sub_1E5A2A6C4();
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v39 = sub_1E5A2A4B4();
  v40 = v72;
  v41 = sub_1E5A2B734();
  v76 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v68 - v42;
  v44 = sub_1E59926B8();
  v45 = swift_getWitnessTable();
  v97 = v44;
  v98 = v45;
  v99 = v38;
  v46 = v75;
  v47 = swift_getWitnessTable();
  *&v93 = v41;
  *(&v93 + 1) = v47;
  v71 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v73 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v69 = &v68 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v70 = &v68 - v51;
  v91[2] = v88;
  v91[3] = v86;
  v91[4] = v87;
  v91[5] = v46;
  v91[6] = v35;
  v90[2] = v88;
  v90[3] = v86;
  v90[4] = v87;
  v90[5] = v46;
  v90[6] = v35;
  v74 = v43;
  sub_1E59B66BC(sub_1E599AD60, v91, sub_1E599AD78, v90, v40, v39, v44, v45);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v53 = v35[1];
  v93 = *v35;
  v94 = v53;
  v95 = v35[2];
  v96 = *(v35 + 6);
  v54 = qword_1EE2D33E0;
  v92[0] = v88;
  v92[1] = v86;
  v92[2] = v87;
  v92[3] = v46;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, v92);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v55 = sub_1E5A2BB64();
  v56 = MEMORY[0x1E69E6158];
  *(inited + 48) = v55;
  *(inited + 56) = v57;
  *(inited + 72) = v56;
  strcpy((inited + 80), "impressionType");
  *(inited + 120) = v56;
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v58 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v58);
  v59 = v80;
  sub_1E5A2B9D4();
  v60 = sub_1E5A2B9E4();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  v61 = v82;
  sub_1E5A2BA04();
  v62 = v69;
  v63 = v71;
  v64 = v74;
  sub_1E5A2B014();
  (*(v83 + 8))(v61, v84);
  sub_1E58BAD14(v59, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v76 + 8))(v64, v41);
  *&v93 = v41;
  *(&v93 + 1) = v63;
  swift_getOpaqueTypeConformance2();
  v65 = v70;
  sub_1E58B41DC();
  v66 = *(v73 + 8);
  v66(v62, v48);
  sub_1E58B41DC();
  return (v66)(v65, v48);
}

uint64_t sub_1E5994924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v26 = a4;
  v22 = a3;
  v24 = a2;
  v25 = a1;
  v27 = a6;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, a3, a5, a4);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v21[1] = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = swift_getOpaqueTypeMetadata2();
  v44 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v45 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v8 = swift_getOpaqueTypeConformance2();
  v41 = OpaqueTypeMetadata2;
  v42 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v38 = v8;
  v39 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E5A2A474();
  v9 = sub_1E5A2A6C4();
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x1E697EBF8];
  v10 = swift_getWitnessTable();
  v11 = sub_1E5A2A4B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  v18 = sub_1E5A2AD64();
  v29 = v24;
  v30 = v22;
  v31 = v26;
  v32 = v23;
  v33 = v25;
  sub_1E594320C(v18, sub_1E599AD88, v28, v9, v10);
  swift_getWitnessTable();
  sub_1E58B41DC();
  v19 = *(v12 + 8);
  v19(v14, v11);
  sub_1E58B41DC();
  return (v19)(v17, v11);
}

uint64_t sub_1E5994E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v45 = a4;
  v40 = a3;
  v43 = a2;
  v44 = a1;
  v46 = a6;
  v8 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, a3, a5, v10);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v12 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v59 = v12;
  v60 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = v12;
  v60 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v17 = sub_1E5A29E74();
  v18 = swift_getWitnessTable();
  v59 = v11;
  v60 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v59 = v11;
  v60 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v59 = v19;
  v60 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v23 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v59 = v16;
  v60 = v17;
  v61 = v21;
  v62 = v22;
  v63 = v23;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v59 = OpaqueTypeMetadata2;
  v60 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v59 = v19;
  v60 = v20;
  v58 = swift_getOpaqueTypeConformance2();
  v25 = swift_getWitnessTable();
  v56 = v24;
  v57 = v25;
  v54 = swift_getWitnessTable();
  v55 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v26 = sub_1E5A2A474();
  v39 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - v27;
  v29 = sub_1E5A2A6C4();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v39 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v39 - v34;
  v47 = v43;
  v48 = v40;
  v49 = v45;
  v50 = v41;
  v51 = v44;
  sub_1E5A2A934();
  sub_1E59C9940();
  sub_1E5A2A464();
  sub_1E5A2B7E4();
  v38 = swift_getWitnessTable();
  sub_1E5A2B2E4();
  (*(v39 + 8))(v28, v26);
  v52 = v38;
  v53 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v36 = *(v30 + 8);
  v36(v32, v29);
  sub_1E58B41DC();
  return (v36)(v35, v29);
}

uint64_t sub_1E599551C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v29 = a4;
  v26 = a3;
  v28 = a2;
  v30 = a6;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, a3, a5, a4);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23[1] = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v8 = sub_1E5A29E74();
  swift_getWitnessTable();
  v23[0] = swift_getOpaqueTypeMetadata2();
  v9 = swift_getOpaqueTypeConformance2();
  *&v37 = v7;
  *(&v37 + 1) = v8;
  *&v38 = swift_getOpaqueTypeMetadata2();
  *(&v38 + 1) = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  *&v39 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v10 = sub_1E5A2AA84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = a1[1];
  v37 = *a1;
  v38 = v17;
  v39 = a1[2];
  v40 = *(a1 + 6);
  v36[0] = v28;
  v36[1] = v26;
  v36[2] = v29;
  v36[3] = v27;
  v18 = type metadata accessor for TVPersonalizedWorkoutPlansView(0, v36);
  sub_1E598D8D4(v18, v13);
  *&v37 = OpaqueTypeMetadata2;
  *(&v37 + 1) = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  *&v37 = v23[0];
  *(&v37 + 1) = v9;
  v35 = swift_getOpaqueTypeConformance2();
  v20 = swift_getWitnessTable();
  v33 = v19;
  v34 = v20;
  v31 = swift_getWitnessTable();
  v32 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v21 = *(v11 + 8);
  v21(v13, v10);
  sub_1E58B41DC();
  return (v21)(v16, v10);
}

__n128 sub_1E59959DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2AA34();
  v19 = 0;
  sub_1E5995B48(a1, a2, a3, a4, a5, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, sizeof(v21));
  sub_1E58BABA0(__dst, v16, &qword_1ECFFF268, &unk_1E5A3EBC0);
  sub_1E58BAD14(v21, &qword_1ECFFF268, &unk_1E5A3EBC0);
  memcpy(&v18[7], __dst, 0x120uLL);
  LOBYTE(a5) = v19;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *a6 = v12;
  *(a6 + 8) = 0x4014000000000000;
  *(a6 + 16) = a5;
  memcpy((a6 + 17), v18, 0x127uLL);
  v13 = __src[5];
  *(a6 + 376) = __src[4];
  *(a6 + 392) = v13;
  *(a6 + 408) = __src[6];
  v14 = __src[1];
  *(a6 + 312) = __src[0];
  *(a6 + 328) = v14;
  result = __src[3];
  *(a6 + 344) = __src[2];
  *(a6 + 360) = result;
  return result;
}

id sub_1E5995B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v61 = a6;
  v11 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE2D33E0;
  v100 = a2;
  v101 = a3;
  v102 = a4;
  v103 = a5;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, &v100);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v18 = sub_1E5A2AF64();
  v20 = v19;
  v22 = v21;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  v59 = v16;
  v60 = v13;
  v58 = a1;
  if (result)
  {
    sub_1E5A2AF34();
    v24 = sub_1E5A2AFA4();
    v26 = v25;
    v28 = v27;

    sub_1E58B3C9C(v18, v20, v22 & 1);

    LODWORD(v100) = sub_1E5A2ABA4();
    v29 = sub_1E5A2AF84();
    v55 = v30;
    v56 = v29;
    v32 = v31;
    v57 = v33;
    sub_1E58B3C9C(v24, v26, v28 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v62 = v32 & 1;
    v121 = v32 & 1;
    sub_1E5A2BA84();
    v34 = qword_1EE2D33E0;
    sub_1E598D300();
    swift_getKeyPath();
    sub_1E5A2B944();

    v35 = sub_1E5A2AF64();
    v37 = v36;
    LOBYTE(v26) = v38;
    sub_1E5A2AEC4();
    v39 = sub_1E5A2AFA4();
    v41 = v40;
    v43 = v42;

    sub_1E58B3C9C(v35, v37, v26 & 1);

    LODWORD(v100) = sub_1E5A2ABA4();
    v44 = sub_1E5A2AF84();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1E58B3C9C(v39, v41, v43 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v51 = v48 & 1;
    v112 = v48 & 1;
    v53 = v55;
    v52 = v56;
    *&v71 = v56;
    *(&v71 + 1) = v55;
    LOBYTE(v72) = v62;
    *(&v72 + 1) = *v120;
    DWORD1(v72) = *&v120[3];
    v54 = v57;
    *(&v72 + 1) = v57;
    v77 = v117;
    v78 = v118;
    v79 = v119;
    v73 = v113;
    v74 = v114;
    v75 = v115;
    v76 = v116;
    v63[6] = v117;
    v63[7] = v118;
    v63[2] = v113;
    v63[3] = v114;
    v63[4] = v115;
    v63[5] = v116;
    v63[0] = v71;
    v63[1] = v72;
    *&v80 = v44;
    *(&v80 + 1) = v46;
    LOBYTE(v81) = v51;
    *(&v81 + 1) = *v111;
    DWORD1(v81) = *&v111[3];
    *(&v81 + 1) = v50;
    v86 = v68;
    v87 = v69;
    v88 = v70;
    v82 = v64;
    v83 = v65;
    v84 = v66;
    v85 = v67;
    v63[12] = v65;
    v63[13] = v66;
    v63[10] = v81;
    v63[11] = v64;
    v63[14] = v67;
    v63[15] = v68;
    v63[16] = v69;
    v63[17] = v70;
    v63[8] = v119;
    v63[9] = v80;
    memcpy(v61, v63, 0x120uLL);
    v89[0] = v44;
    v89[1] = v46;
    v90 = v51;
    *v91 = *v111;
    *&v91[3] = *&v111[3];
    v92 = v50;
    v97 = v68;
    v98 = v69;
    v99 = v70;
    v93 = v64;
    v94 = v65;
    v95 = v66;
    v96 = v67;
    sub_1E58BABA0(&v71, &v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BABA0(&v80, &v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BAD14(v89, &qword_1ECFFB4F8, &unk_1E5A2C940);
    v100 = v52;
    v101 = v53;
    LOBYTE(v102) = v62;
    *(&v102 + 1) = *v120;
    HIDWORD(v102) = *&v120[3];
    v103 = v54;
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    return sub_1E58BAD14(&v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E59961AC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a3;
  v81 = a5;
  v68 = a4;
  v82 = a2;
  v72 = a1;
  v79 = a6;
  v8 = sub_1E5A2BA14();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v71 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v74 = &v62 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  v21 = type metadata accessor for TVCustomPlanView(255, a2, a4, v20);
  WitnessTable = swift_getWitnessTable();
  *&v87 = v21;
  *(&v87 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = OpaqueTypeMetadata2;
  *&v87 = v21;
  *(&v87 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v87 = OpaqueTypeMetadata2;
  *(&v87 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  *&v87 = v21;
  *(&v87 + 1) = WitnessTable;
  v26 = swift_getOpaqueTypeMetadata2();
  *&v87 = v21;
  *(&v87 + 1) = WitnessTable;
  v27 = swift_getOpaqueTypeConformance2();
  *&v87 = v26;
  *(&v87 + 1) = v27;
  v69 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v28 = sub_1E5A2AA84();
  v29 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  *&v87 = v25;
  *(&v87 + 1) = MEMORY[0x1E69E6158];
  *&v88 = v28;
  *(&v88 + 1) = v29;
  *&v89 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  *&v87 = v70;
  *(&v87 + 1) = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  *&v87 = v26;
  *(&v87 + 1) = v27;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = MEMORY[0x1E6981E60];
  v98 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v96 = v30;
  v97 = v31;
  v32 = v81;
  v94 = swift_getWitnessTable();
  v95 = v27;
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  v33 = sub_1E5A2A4B4();
  v34 = v63;
  v35 = sub_1E5A2B734();
  v70 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v62 - v36;
  v38 = sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900, MEMORY[0x1E6981870]);
  v39 = swift_getWitnessTable();
  v91 = v38;
  v92 = v39;
  v93 = MEMORY[0x1E6981E60];
  v40 = swift_getWitnessTable();
  *&v87 = v35;
  *(&v87 + 1) = v40;
  v66 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v67 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v64 = &v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v65 = &v62 - v44;
  v85[2] = v82;
  v85[3] = v80;
  v85[4] = v68;
  v85[5] = v32;
  v85[6] = v72;
  v84[2] = v82;
  v84[3] = v80;
  v45 = v68;
  v84[4] = v68;
  v84[5] = v32;
  v46 = v72;
  v84[6] = v72;
  v69 = v37;
  sub_1E59B66BC(sub_1E599AE2C, v85, sub_1E599AE44, v84, v34, v33, v38, v39);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v48 = v46[1];
  v87 = *v46;
  v88 = v48;
  v89 = v46[2];
  v90 = *(v46 + 6);
  v49 = qword_1EE2D33E0;
  v86[0] = v82;
  v86[1] = v80;
  v86[2] = v45;
  v86[3] = v81;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, v86);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  *(inited + 48) = sub_1E5A2BB64();
  *(inited + 56) = v50;
  v51 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  strcpy((inited + 80), "impressionType");
  *(inited + 120) = v51;
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v52 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v52);
  v53 = v74;
  sub_1E5A2B9D4();
  v54 = sub_1E5A2B9E4();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = v76;
  sub_1E5A2BA04();
  v56 = v64;
  v57 = v66;
  v58 = v69;
  sub_1E5A2B014();
  (*(v77 + 8))(v55, v78);
  sub_1E58BAD14(v53, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v70 + 8))(v58, v35);
  *&v87 = v35;
  *(&v87 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  v59 = v65;
  sub_1E58B41DC();
  v60 = *(v67 + 8);
  v60(v56, v41);
  sub_1E58B41DC();
  return (v60)(v59, v41);
}

uint64_t sub_1E5996C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v22 = a4;
  v23 = a3;
  v21 = a2;
  v24 = a1;
  v26 = a6;
  type metadata accessor for TVCustomPlanView(255, a2, a4, a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v42 = sub_1E5A2AA84();
  v43 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v44 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v8 = swift_getOpaqueTypeConformance2();
  v40 = OpaqueTypeMetadata2;
  v41 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = MEMORY[0x1E6981E60];
  WitnessTable = swift_getWitnessTable();
  v35 = v8;
  v36 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v34 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v9 = sub_1E5A2A474();
  v10 = swift_getWitnessTable();
  v11 = sub_1E5A2A4B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v18 = sub_1E5A2AD64();
  v28 = v21;
  v29 = v23;
  v30 = v22;
  v31 = v25;
  v32 = v24;
  sub_1E594320C(v18, sub_1E599AE5C, v27, v9, v10);
  swift_getWitnessTable();
  sub_1E58B41DC();
  v19 = *(v12 + 8);
  v19(v14, v11);
  sub_1E58B41DC();
  return (v19)(v17, v11);
}

uint64_t sub_1E59970F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v33 = a4;
  v35 = a3;
  v32 = a2;
  v36 = a1;
  v38 = a6;
  v8 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TVCustomPlanView(255, a2, a4, v10);
  WitnessTable = swift_getWitnessTable();
  v51 = v11;
  v52 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = v11;
  v52 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = OpaqueTypeMetadata2;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v51 = v11;
  v52 = WitnessTable;
  v16 = swift_getOpaqueTypeMetadata2();
  v51 = v11;
  v52 = WitnessTable;
  v17 = swift_getOpaqueTypeConformance2();
  v51 = v16;
  v52 = v17;
  swift_getOpaqueTypeMetadata2();
  v18 = sub_1E5A2AA84();
  v19 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  v51 = v15;
  v52 = MEMORY[0x1E69E6158];
  v53 = v18;
  v54 = v19;
  v55 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v51 = OpaqueTypeMetadata2;
  v52 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v51 = v16;
  v52 = v17;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = MEMORY[0x1E6981E60];
  v48 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v46 = v20;
  v47 = v21;
  v44 = swift_getWitnessTable();
  v45 = v17;
  swift_getWitnessTable();
  v22 = sub_1E5A2A474();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v31 - v27;
  v39 = v32;
  v40 = v35;
  v41 = v33;
  v42 = v37;
  v43 = v36;
  sub_1E5A2A934();
  sub_1E59C9940();
  sub_1E5A2A464();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v29 = *(v23 + 8);
  v29(v25, v22);
  sub_1E58B41DC();
  return (v29)(v28, v22);
}

uint64_t sub_1E59975B8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v31 = a4;
  v34 = a3;
  v36 = a6;
  type metadata accessor for TVCustomPlanView(255, a2, a4, a4);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v9 = swift_getOpaqueTypeMetadata2();
  v30 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v27 = sub_1E5A2AA84();
  v10 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  *&v45 = v8;
  *(&v45 + 1) = MEMORY[0x1E69E6158];
  *&v46 = v27;
  *(&v46 + 1) = v10;
  *&v47 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v28 = sub_1E5A2AA84();
  v11 = sub_1E5A2AA84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = a1[1];
  v45 = *a1;
  v46 = v18;
  v47 = a1[2];
  v48 = *(a1 + 6);
  v44[0] = a2;
  v44[1] = v34;
  v44[2] = v31;
  v44[3] = v35;
  v19 = type metadata accessor for TVPersonalizedWorkoutPlansView(0, v44);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E598F880(LOBYTE(v44[0]), v19, v20, v14);
  *&v45 = OpaqueTypeMetadata2;
  *(&v45 + 1) = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  *&v45 = v9;
  v22 = v30;
  *(&v45 + 1) = v30;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = MEMORY[0x1E6981E60];
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v39 = v21;
  v40 = v23;
  v37 = swift_getWitnessTable();
  v38 = v22;
  swift_getWitnessTable();
  sub_1E58B41DC();
  v24 = *(v12 + 8);
  v24(v14, v11);
  sub_1E58B41DC();
  return (v24)(v17, v11);
}

id sub_1E5997A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v61 = a6;
  v11 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE2D33E0;
  v100 = a2;
  v101 = a3;
  v102 = a4;
  v103 = a5;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, &v100);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v18 = sub_1E5A2AF64();
  v20 = v19;
  v22 = v21;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  v59 = v16;
  v60 = v13;
  v58 = a1;
  if (result)
  {
    sub_1E5A2AF34();
    v24 = sub_1E5A2AFA4();
    v26 = v25;
    v28 = v27;

    sub_1E58B3C9C(v18, v20, v22 & 1);

    LODWORD(v100) = sub_1E5A2ABA4();
    v29 = sub_1E5A2AF84();
    v55 = v30;
    v56 = v29;
    v32 = v31;
    v57 = v33;
    sub_1E58B3C9C(v24, v26, v28 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v62 = v32 & 1;
    v121 = v32 & 1;
    sub_1E5A2BA84();
    v34 = qword_1EE2D33E0;
    sub_1E598D300();
    swift_getKeyPath();
    sub_1E5A2B944();

    v35 = sub_1E5A2AF64();
    v37 = v36;
    LOBYTE(v26) = v38;
    sub_1E5A2AEC4();
    v39 = sub_1E5A2AFA4();
    v41 = v40;
    v43 = v42;

    sub_1E58B3C9C(v35, v37, v26 & 1);

    LODWORD(v100) = sub_1E5A2ABA4();
    v44 = sub_1E5A2AF84();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1E58B3C9C(v39, v41, v43 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v51 = v48 & 1;
    v112 = v48 & 1;
    v53 = v55;
    v52 = v56;
    *&v71 = v56;
    *(&v71 + 1) = v55;
    LOBYTE(v72) = v62;
    *(&v72 + 1) = *v120;
    DWORD1(v72) = *&v120[3];
    v54 = v57;
    *(&v72 + 1) = v57;
    v77 = v117;
    v78 = v118;
    v79 = v119;
    v73 = v113;
    v74 = v114;
    v75 = v115;
    v76 = v116;
    v63[6] = v117;
    v63[7] = v118;
    v63[2] = v113;
    v63[3] = v114;
    v63[4] = v115;
    v63[5] = v116;
    v63[0] = v71;
    v63[1] = v72;
    *&v80 = v44;
    *(&v80 + 1) = v46;
    LOBYTE(v81) = v51;
    *(&v81 + 1) = *v111;
    DWORD1(v81) = *&v111[3];
    *(&v81 + 1) = v50;
    v86 = v68;
    v87 = v69;
    v88 = v70;
    v82 = v64;
    v83 = v65;
    v84 = v66;
    v85 = v67;
    v63[12] = v65;
    v63[13] = v66;
    v63[10] = v81;
    v63[11] = v64;
    v63[14] = v67;
    v63[15] = v68;
    v63[16] = v69;
    v63[17] = v70;
    v63[8] = v119;
    v63[9] = v80;
    memcpy(v61, v63, 0x120uLL);
    v89[0] = v44;
    v89[1] = v46;
    v90 = v51;
    *v91 = *v111;
    *&v91[3] = *&v111[3];
    v92 = v50;
    v97 = v68;
    v98 = v69;
    v99 = v70;
    v93 = v64;
    v94 = v65;
    v95 = v66;
    v96 = v67;
    sub_1E58BABA0(&v71, &v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BABA0(&v80, &v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BAD14(v89, &qword_1ECFFB4F8, &unk_1E5A2C940);
    v100 = v52;
    v101 = v53;
    LOBYTE(v102) = v62;
    *(&v102 + 1) = *v120;
    HIDWORD(v102) = *&v120[3];
    v103 = v54;
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    return sub_1E58BAD14(&v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5998090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v32 = a4;
  v27 = a3;
  v31 = a2;
  v29 = a1;
  v30 = a6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, a3, a5, v8);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  v26[2] = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v9 = MEMORY[0x1E69E6338];
  sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v26[1] = sub_1E5A2AA84();
  type metadata accessor for TVCustomPlanView(255, v31, v32, v10);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v9);
  v53 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_1E5A2AD04();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = OpaqueTypeMetadata2;
  v50 = v12;
  v51 = OpaqueTypeConformance2;
  v52 = MEMORY[0x1E697CC08];
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = sub_1E5A2B734();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - v20;
  v41 = v31;
  v42 = v27;
  v43 = v32;
  v44 = v28;
  v45 = v29;
  v35 = v31;
  v36 = v27;
  v37 = v32;
  v38 = v28;
  v39 = v29;
  v22 = sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900, MEMORY[0x1E6981870]);
  v49 = OpaqueTypeMetadata2;
  v50 = v12;
  v51 = OpaqueTypeConformance2;
  v52 = MEMORY[0x1E697CC08];
  v23 = swift_getOpaqueTypeConformance2();
  sub_1E59B66BC(sub_1E599B050, v40, sub_1E599B068, v34, v33, v14, v22, v23);
  v46 = v22;
  v47 = v23;
  v48 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v24 = *(v16 + 8);
  v24(v18, v15);
  sub_1E58B41DC();
  return (v24)(v21, v15);
}

uint64_t sub_1E5998894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v81 = a4;
  v70 = a3;
  v80 = a2;
  v73 = a1;
  v79 = a6;
  v8 = sub_1E5A2ACE4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1E5A2AD04();
  v78 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1E5A2AAC4();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, a3, a5, v12);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v14 = sub_1E5A2B494();
  v69 = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v89 = v14;
  v90 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = v14;
  v90 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = OpaqueTypeMetadata2;
  v90 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v19 = sub_1E5A29E74();
  v20 = swift_getWitnessTable();
  v89 = v13;
  v90 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v89 = v13;
  v90 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v89 = v21;
  v90 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = MEMORY[0x1E69E6338];
  v25 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v26 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v89 = v18;
  v90 = v19;
  v91 = v23;
  v92 = v25;
  v93 = v26;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v68 = sub_1E5A2AA84();
  v28 = type metadata accessor for TVCustomPlanView(255, v80, v81, v27);
  v29 = swift_getWitnessTable();
  v89 = v28;
  v90 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v89 = v28;
  v90 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v89 = v30;
  v90 = v31;
  swift_getOpaqueTypeMetadata2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v89 = v28;
  v90 = v29;
  v33 = swift_getOpaqueTypeMetadata2();
  v89 = v28;
  v90 = v29;
  v34 = swift_getOpaqueTypeConformance2();
  v89 = v33;
  v90 = v34;
  swift_getOpaqueTypeMetadata2();
  v35 = sub_1E5A2AA84();
  v36 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v24);
  v89 = v32;
  v90 = MEMORY[0x1E69E6158];
  v91 = v35;
  v92 = v36;
  v93 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v37 = sub_1E5A2A474();
  v38 = swift_getWitnessTable();
  v89 = v37;
  v90 = v38;
  v64 = swift_getOpaqueTypeMetadata2();
  v89 = v37;
  v90 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_1E5A2A4B4();
  v69 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v63 - v41;
  v43 = swift_getWitnessTable();
  v89 = v40;
  v90 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v68 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v63 - v45;
  v89 = v40;
  v90 = v43;
  v65 = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v89 = v44;
  v90 = v82;
  v66 = v47;
  v91 = v47;
  v92 = MEMORY[0x1E697CC08];
  v48 = swift_getOpaqueTypeMetadata2();
  v67 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v63 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v63 - v52;
  v54 = sub_1E5A2AD64();
  v84 = v80;
  v85 = v70;
  v86 = v81;
  v87 = v71;
  v88 = v73;
  v55 = v42;
  sub_1E594320C(v54, sub_1E599B0A8, v83, v64, v39);
  v56 = v72;
  sub_1E5A2AAB4();
  LOBYTE(v37) = sub_1E5A2AD84();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v37)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2B234();
  (*(v74 + 8))(v56, v75);
  (*(v69 + 8))(v55, v40);
  sub_1E5A2ACD4();
  v57 = v76;
  sub_1E5A2ACF4();
  v58 = v82;
  v59 = v66;
  v60 = MEMORY[0x1E697CC08];
  sub_1E5A2B244();
  (*(v78 + 8))(v57, v58);
  (*(v68 + 8))(v46, v44);
  v89 = v44;
  v90 = v58;
  v91 = v59;
  v92 = v60;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v61 = *(v67 + 8);
  v61(v50, v48);
  sub_1E58B41DC();
  return (v61)(v53, v48);
}

uint64_t sub_1E5999314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a3;
  v52 = a5;
  v56 = a2;
  v57 = a4;
  v54 = a1;
  v55 = a6;
  v8 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, a3, a5, v10);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v12 = sub_1E5A2B494();
  v50 = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v63 = v12;
  v64 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v12;
  v64 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = OpaqueTypeMetadata2;
  v64 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v17 = sub_1E5A29E74();
  v18 = swift_getWitnessTable();
  v63 = v11;
  v64 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v63 = v11;
  v64 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v63 = v19;
  v64 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = MEMORY[0x1E69E6338];
  v23 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  v24 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v63 = v16;
  v64 = v17;
  v65 = v21;
  v66 = v23;
  v67 = v24;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v49 = sub_1E5A2AA84();
  v26 = type metadata accessor for TVCustomPlanView(255, v56, v57, v25);
  v27 = swift_getWitnessTable();
  v63 = v26;
  v64 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v63 = v26;
  v64 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v63 = v28;
  v64 = v29;
  swift_getOpaqueTypeMetadata2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v63 = v26;
  v64 = v27;
  v31 = swift_getOpaqueTypeMetadata2();
  v63 = v26;
  v64 = v27;
  v32 = swift_getOpaqueTypeConformance2();
  v63 = v31;
  v64 = v32;
  swift_getOpaqueTypeMetadata2();
  v33 = sub_1E5A2AA84();
  v34 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v22);
  v63 = v30;
  v64 = MEMORY[0x1E69E6158];
  v65 = v33;
  v66 = v34;
  v67 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v35 = sub_1E5A2A474();
  v50 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v48 - v36;
  v48 = swift_getWitnessTable();
  v63 = v35;
  v64 = v48;
  v49 = MEMORY[0x1E697D1A0];
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v48 - v43;
  v58 = v56;
  v59 = v51;
  v60 = v57;
  v61 = v52;
  v62 = v54;
  sub_1E5A2A934();
  sub_1E59C9940();
  sub_1E5A2A464();
  v45 = v48;
  sub_1E5A2B204();
  (*(v50 + 8))(v37, v35);
  v63 = v35;
  v64 = v45;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v46 = *(v39 + 8);
  v46(v41, v38);
  sub_1E58B41DC();
  return (v46)(v44, v38);
}

uint64_t sub_1E5999A28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a5;
  v67 = a4;
  v82 = a3;
  v66 = a2;
  v80 = a1;
  v78 = a6;
  type metadata accessor for TVCustomPlanView(255, a2, a4, a4);
  swift_getWitnessTable();
  v81 = MEMORY[0x1E6981458];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = MEMORY[0x1E697D318];
  swift_getOpaqueTypeMetadata2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v9 = swift_getOpaqueTypeMetadata2();
  v75 = swift_getOpaqueTypeConformance2();
  v68 = v9;
  v79 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v71 = sub_1E5A2AA84();
  v10 = MEMORY[0x1E69E6338];
  v11 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, MEMORY[0x1E69E6338]);
  *&v101 = v8;
  *(&v101 + 1) = MEMORY[0x1E69E6158];
  *&v102 = v71;
  *(&v102 + 1) = v11;
  *&v103 = MEMORY[0x1E69E6168];
  v70 = sub_1E5A2B6F4();
  v72 = sub_1E5A2AA84();
  v73 = sub_1E5A2AA84();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v57 - v14;
  v16 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, v82, a5, v15);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v17 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v101 = v17;
  *(&v101 + 1) = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v62 = v19;
  *&v101 = v17;
  *(&v101 + 1) = v18;
  v61 = swift_getOpaqueTypeConformance2();
  *&v101 = v19;
  *(&v101 + 1) = v61;
  swift_getOpaqueTypeMetadata2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v21 = sub_1E5A29E74();
  v22 = swift_getWitnessTable();
  *&v101 = v16;
  *(&v101 + 1) = v22;
  v64 = v7;
  v23 = swift_getOpaqueTypeMetadata2();
  v58 = v23;
  *&v101 = v16;
  *(&v101 + 1) = v22;
  v24 = swift_getOpaqueTypeConformance2();
  *&v101 = v23;
  *(&v101 + 1) = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, v10);
  v27 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *&v101 = v20;
  *(&v101 + 1) = v21;
  *&v102 = v25;
  *(&v102 + 1) = v26;
  *&v103 = v27;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v28 = sub_1E5A2AA84();
  v60 = *(v28 - 8);
  v29 = v60;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v57 - v33;
  v35 = v80[1];
  v101 = *v80;
  v102 = v35;
  v103 = v80[2];
  v104 = *(v80 + 6);
  v97 = v66;
  v98 = v82;
  v99 = v67;
  v100 = v63;
  v36 = type metadata accessor for TVPersonalizedWorkoutPlansView(0, &v97);
  sub_1E598D8D4(v36, v31);
  *&v101 = v62;
  *(&v101 + 1) = v61;
  v37 = swift_getOpaqueTypeConformance2();
  *&v101 = v58;
  *(&v101 + 1) = v24;
  v96 = swift_getOpaqueTypeConformance2();
  v66 = MEMORY[0x1E69819D0];
  v38 = swift_getWitnessTable();
  v94 = v37;
  v95 = v38;
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E6981E60];
  v67 = swift_getWitnessTable();
  v39 = v34;
  v59 = v28;
  sub_1E58B41DC();
  v81 = *(v29 + 8);
  v82 = v29 + 8;
  v81(v31, v28);
  v40 = v80[1];
  v101 = *v80;
  v102 = v40;
  v103 = v80[2];
  v104 = *(v80 + 6);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v41 = v65;
  sub_1E598F880(v97, v36, v42, v65);
  *&v101 = OpaqueTypeMetadata2;
  *(&v101 + 1) = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v75;
  *&v101 = v68;
  *(&v101 + 1) = v75;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = MEMORY[0x1E6981E60];
  v89 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v87 = v43;
  v88 = v45;
  v85 = swift_getWitnessTable();
  v86 = v44;
  v46 = v73;
  v47 = swift_getWitnessTable();
  v48 = v69;
  v49 = v41;
  sub_1E58B41DC();
  v50 = v74;
  v51 = *(v74 + 8);
  v51(v49, v46);
  v52 = v39;
  v53 = v39;
  v54 = v59;
  (*(v60 + 16))(v31, v53, v59);
  *&v101 = v31;
  (*(v50 + 16))(v49, v48, v46);
  *(&v101 + 1) = v49;
  v97 = v54;
  v98 = v46;
  v83 = v67;
  v84 = v47;
  sub_1E597DC00(&v101, 2uLL, &v97);
  v51(v48, v46);
  v55 = v81;
  v81(v52, v54);
  v51(v49, v46);
  return v55(v31, v54);
}

void *sub_1E599A3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1E5A2AA24();
  v20 = 0;
  a6(__src, a1, a2, a3, a4, a5);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, sizeof(v22));
  sub_1E58BABA0(__dst, &v17, &qword_1ECFFF268, &unk_1E5A3EBC0);
  sub_1E58BAD14(v22, &qword_1ECFFF268, &unk_1E5A3EBC0);
  memcpy(&v19[7], __dst, 0x120uLL);
  v15 = v20;
  *a7 = v14;
  *(a7 + 8) = 0x4014000000000000;
  *(a7 + 16) = v15;
  return memcpy((a7 + 17), v19, 0x127uLL);
}

id sub_1E599A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v61 = a6;
  v11 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE2D33E0;
  v100 = a2;
  v101 = a3;
  v102 = a4;
  v103 = a5;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, &v100);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v18 = sub_1E5A2AF64();
  v20 = v19;
  v22 = v21;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  v59 = v16;
  v60 = v13;
  v58 = a1;
  if (result)
  {
    sub_1E5A2AF34();
    v24 = sub_1E5A2AFA4();
    v26 = v25;
    v28 = v27;

    sub_1E58B3C9C(v18, v20, v22 & 1);

    LODWORD(v100) = sub_1E5A2ABA4();
    v29 = sub_1E5A2AF84();
    v55 = v30;
    v56 = v29;
    v32 = v31;
    v57 = v33;
    sub_1E58B3C9C(v24, v26, v28 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v62 = v32 & 1;
    v121 = v32 & 1;
    sub_1E5A2BA84();
    v34 = qword_1EE2D33E0;
    sub_1E598D300();
    swift_getKeyPath();
    sub_1E5A2B944();

    v35 = sub_1E5A2AF64();
    v37 = v36;
    LOBYTE(v26) = v38;
    sub_1E5A2AEC4();
    v39 = sub_1E5A2AFA4();
    v41 = v40;
    v43 = v42;

    sub_1E58B3C9C(v35, v37, v26 & 1);

    LODWORD(v100) = sub_1E5A2ABA4();
    v44 = sub_1E5A2AF84();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1E58B3C9C(v39, v41, v43 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v51 = v48 & 1;
    v112 = v48 & 1;
    v53 = v55;
    v52 = v56;
    *&v71 = v56;
    *(&v71 + 1) = v55;
    LOBYTE(v72) = v62;
    *(&v72 + 1) = *v120;
    DWORD1(v72) = *&v120[3];
    v54 = v57;
    *(&v72 + 1) = v57;
    v77 = v117;
    v78 = v118;
    v79 = v119;
    v73 = v113;
    v74 = v114;
    v75 = v115;
    v76 = v116;
    v63[6] = v117;
    v63[7] = v118;
    v63[2] = v113;
    v63[3] = v114;
    v63[4] = v115;
    v63[5] = v116;
    v63[0] = v71;
    v63[1] = v72;
    *&v80 = v44;
    *(&v80 + 1) = v46;
    LOBYTE(v81) = v51;
    *(&v81 + 1) = *v111;
    DWORD1(v81) = *&v111[3];
    *(&v81 + 1) = v50;
    v86 = v68;
    v87 = v69;
    v88 = v70;
    v82 = v64;
    v83 = v65;
    v84 = v66;
    v85 = v67;
    v63[12] = v65;
    v63[13] = v66;
    v63[10] = v81;
    v63[11] = v64;
    v63[14] = v67;
    v63[15] = v68;
    v63[16] = v69;
    v63[17] = v70;
    v63[8] = v119;
    v63[9] = v80;
    memcpy(v61, v63, 0x120uLL);
    v89[0] = v44;
    v89[1] = v46;
    v90 = v51;
    *v91 = *v111;
    *&v91[3] = *&v111[3];
    v92 = v50;
    v97 = v68;
    v98 = v69;
    v99 = v70;
    v93 = v64;
    v94 = v65;
    v95 = v66;
    v96 = v67;
    sub_1E58BABA0(&v71, &v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BABA0(&v80, &v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BAD14(v89, &qword_1ECFFB4F8, &unk_1E5A2C940);
    v100 = v52;
    v101 = v53;
    LOBYTE(v102) = v62;
    *(&v102 + 1) = *v120;
    HIDWORD(v102) = *&v120[3];
    v103 = v54;
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    return sub_1E58BAD14(&v100, &qword_1ECFFB4F8, &unk_1E5A2C940);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E599AB70(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  type metadata accessor for TVPersonalizedWorkoutPlansView(0, v7);
  sub_1E598D300();
  LOBYTE(v7[0]) = 1;
  sub_1E5A2B954();
}

uint64_t sub_1E599AC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E599AC6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E599ACB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  sub_1E58B369C(*(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1E599AE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(type metadata accessor for PersonalizedWorkoutPlanCandidates(0) - 8);
  return sub_1E5990994(a1, a2, v3 + 48, *(v3 + 104), v3 + ((*(v11 + 80) + 105) & ~*(v11 + 80)), v7, v8, v9, a3, v10);
}

uint64_t sub_1E599AF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E599AF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E599AFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E599B100()
{
  v1 = 0x726F727265;
  v2 = 0x676E696863746566;
  if (*v0 != 2)
  {
    v2 = 0x64656863746566;
  }

  if (*v0)
  {
    v1 = 1701602409;
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

uint64_t sub_1E599B170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E599BAA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E599B198(uint64_t a1)
{
  v2 = sub_1E599B89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B1D4(uint64_t a1)
{
  v2 = sub_1E599B89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599B210(uint64_t a1)
{
  v2 = sub_1E599B9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B24C(uint64_t a1)
{
  v2 = sub_1E599B9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599B288(uint64_t a1)
{
  v2 = sub_1E599B8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B2C4(uint64_t a1)
{
  v2 = sub_1E599B8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599B300(uint64_t a1)
{
  v2 = sub_1E599B944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B33C(uint64_t a1)
{
  v2 = sub_1E599B944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599B378(uint64_t a1)
{
  v2 = sub_1E599B998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B3B4(uint64_t a1)
{
  v2 = sub_1E599B998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LoadState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t LoadState.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF290, &qword_1E5A3CAD0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF298, &qword_1E5A3CAD8);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF2A0, &qword_1E5A3CAE0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF2A8, &qword_1E5A3CAE8);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF2B0, &qword_1E5A3CAF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599B89C();
  sub_1E5A2C224();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1E599B944();
      v9 = v23;
      sub_1E5A2C024();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1E599B8F0();
      v9 = v26;
      sub_1E5A2C024();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1E599B998();
    sub_1E5A2C024();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1E599B9EC();
  sub_1E5A2C024();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_1E599B89C()
{
  result = qword_1ECFFF2B8;
  if (!qword_1ECFFF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2B8);
  }

  return result;
}

unint64_t sub_1E599B8F0()
{
  result = qword_1ECFFF2C0;
  if (!qword_1ECFFF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2C0);
  }

  return result;
}

unint64_t sub_1E599B944()
{
  result = qword_1ECFFF2C8;
  if (!qword_1ECFFF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2C8);
  }

  return result;
}

unint64_t sub_1E599B998()
{
  result = qword_1ECFFF2D0;
  if (!qword_1ECFFF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2D0);
  }

  return result;
}

unint64_t sub_1E599B9EC()
{
  result = qword_1ECFFF2D8;
  if (!qword_1ECFFF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2D8);
  }

  return result;
}

void *sub_1E599BA58@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E599BC00(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E599BAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

void *sub_1E599BC00(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF340, &qword_1E5A3CFC0);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF348, &qword_1E5A3CFC8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF350, &qword_1E5A3CFD0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF358, &qword_1E5A3CFD8);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF360, &unk_1E5A3CFE0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E599B89C();
  v15 = v43;
  sub_1E5A2C214();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_1E5A2C004();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1E58BC5B8();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_1E599B998();
        v29 = v33;
        sub_1E5A2BF44();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1E599B9EC();
        v23 = v33;
        sub_1E5A2BF44();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_1E599B944();
      v28 = v33;
      sub_1E5A2BF44();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_1E599B8F0();
      v30 = v33;
      sub_1E5A2BF44();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_1E5A2BE84();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
  *v11 = &type metadata for LoadState;
  sub_1E5A2BF54();
  sub_1E5A2BE74();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_1E599C244()
{
  result = qword_1ECFFF2E0;
  if (!qword_1ECFFF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2E0);
  }

  return result;
}

unint64_t sub_1E599C2EC()
{
  result = qword_1ECFFF2E8;
  if (!qword_1ECFFF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2E8);
  }

  return result;
}

unint64_t sub_1E599C344()
{
  result = qword_1ECFFF2F0;
  if (!qword_1ECFFF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2F0);
  }

  return result;
}

unint64_t sub_1E599C39C()
{
  result = qword_1ECFFF2F8;
  if (!qword_1ECFFF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2F8);
  }

  return result;
}

unint64_t sub_1E599C3F4()
{
  result = qword_1ECFFF300;
  if (!qword_1ECFFF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF300);
  }

  return result;
}

unint64_t sub_1E599C44C()
{
  result = qword_1ECFFF308;
  if (!qword_1ECFFF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF308);
  }

  return result;
}

unint64_t sub_1E599C4A4()
{
  result = qword_1ECFFF310;
  if (!qword_1ECFFF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF310);
  }

  return result;
}

unint64_t sub_1E599C4FC()
{
  result = qword_1ECFFF318;
  if (!qword_1ECFFF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF318);
  }

  return result;
}

unint64_t sub_1E599C554()
{
  result = qword_1ECFFF320;
  if (!qword_1ECFFF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF320);
  }

  return result;
}

unint64_t sub_1E599C5AC()
{
  result = qword_1ECFFF328;
  if (!qword_1ECFFF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF328);
  }

  return result;
}

unint64_t sub_1E599C604()
{
  result = qword_1ECFFF330;
  if (!qword_1ECFFF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF330);
  }

  return result;
}

unint64_t sub_1E599C65C()
{
  result = qword_1ECFFF338;
  if (!qword_1ECFFF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF338);
  }

  return result;
}

void sub_1E599C6C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v41 - v8);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v10 = 0;
    v11 = a1 + 64;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = (v12 + 63) >> 6;
    v42 = v15;
    v43 = a1;
    v45 = a2;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v44 = (v14 - 1) & v14;
LABEL_15:
      v19 = v16 | (v10 << 6);
      v20 = *(a1 + 56);
      v21 = (*(a1 + 48) + 32 * v19);
      v22 = *v21;
      v23 = v21[1];
      v25 = v21[2];
      v24 = v21[3];
      v26 = *(v20 + 8 * v19);

      if (!v26)
      {
        return;
      }

      v27 = sub_1E58EF458(v22, v23, v25, v24);
      if ((v28 & 1) == 0 || (v29 = *(*(v45 + 56) + 8 * v27), v30 = *(v29 + 16), v30 != *(v26 + 16)))
      {
LABEL_37:

        return;
      }

      if (v30 && v29 != v26)
      {
        v31 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v46 = v29 + v31;
        v32 = v26 + v31;

        v33 = 0;
        while (v33 < *(v29 + 16))
        {
          v34 = *(v47 + 72) * v33;
          sub_1E58F2504(v46 + v34, v9);
          if (v33 >= *(v26 + 16))
          {
            goto LABEL_41;
          }

          sub_1E58F2504(v32 + v34, v6);
          if (*v9 != *v6 || (sub_1E58B4B48(v9[1], v6[1]) & 1) == 0 || (sub_1E5A29E54() & 1) == 0)
          {
            sub_1E58F2568(v6);
            sub_1E58F2568(v9);
LABEL_36:

            goto LABEL_37;
          }

          v35 = *(v48 + 28);
          v36 = *(v9 + v35);
          v37 = *(v9 + v35 + 8);
          v38 = (v6 + v35);
          if (v36 == *v38 && v37 == v38[1])
          {
            sub_1E58F2568(v6);
            sub_1E58F2568(v9);
          }

          else
          {
            v40 = sub_1E5A2C114();
            sub_1E58F2568(v6);
            sub_1E58F2568(v9);
            if ((v40 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          if (v30 == ++v33)
          {

            goto LABEL_7;
          }
        }

        goto LABEL_40;
      }

LABEL_7:

      v15 = v42;
      a1 = v43;
      v14 = v44;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        return;
      }

      v18 = *(v11 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v44 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1E599CA08(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1E58EF508(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1E5A2C114();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E599CBAC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v3 + 56) + (v12 << 6));
    v17 = v16[2];
    v18 = v16[3];
    v19 = v16[1];
    v39 = *v16;
    v40 = v19;
    v41 = v17;
    v42 = v18;
    v32 = v18;
    v33 = v19;
    v30 = v17;
    v31 = v39;

    sub_1E58BD154(&v39, &v35);
    if (!v14)
    {
      return 1;
    }

    v39 = v31;
    v40 = v33;
    v41 = v30;
    v42 = v32;
    v20 = sub_1E58EF508(v15, v14);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_26;
    }

    v23 = (*(a2 + 56) + (v20 << 6));
    v24 = v23[3];
    v26 = *v23;
    v25 = v23[1];
    v37 = v23[2];
    v38 = v24;
    v35 = v26;
    v36 = v25;
    v27 = v26;
    v28 = v39;
    sub_1E58BD154(&v35, v34);
    if ((sub_1E58B61B8(v27, v28) & 1) == 0 || (sub_1E58B61B8(*(&v35 + 1), *(&v39 + 1)) & 1) == 0 || (sub_1E58B61B8(v36, v40) & 1) == 0 || (sub_1E58B61B8(*(&v36 + 1), *(&v40 + 1)) & 1) == 0 || (sub_1E58B61B8(v37, v41) & 1) == 0 || (sub_1E58B61B8(*(&v37 + 1), *(&v41 + 1)) & 1) == 0 || (sub_1E58B61B8(v38, v42) & 1) == 0)
    {
      sub_1E58BD18C(&v35);
LABEL_26:
      sub_1E58BD18C(&v39);
      return 0;
    }

    v29 = sub_1E58B61B8(*(&v38 + 1), *(&v42 + 1));
    sub_1E58BD18C(&v35);
    result = sub_1E58BD18C(&v39);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E599CDF4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v29 = (v6 + 63) >> 6;
  v30 = result;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v31 = (v8 - 1) & v8;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v3 + 56) + 32 * v12);
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[2];
    v20 = v16[3];

    if (!v14)
    {
      return 1;
    }

    v21 = sub_1E58EF508(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_27;
    }

    v24 = (*(a2 + 56) + 32 * v21);
    v25 = v24[2];
    v26 = v24[3];
    v27 = *v24 == v18 && v17 == v24[1];
    if (!v27 && (sub_1E5A2C114() & 1) == 0)
    {
      goto LABEL_27;
    }

    if ((sub_1E58B61B8(v25, v19) & 1) == 0)
    {

LABEL_27:

      return 0;
    }

    v28 = sub_1E58B61B8(v26, v20);

    v3 = v30;
    v8 = v31;
    result = v14 == 0;
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v29)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E599D054(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v26 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 32 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    v18 = *(*(result + 56) + 8 * v12);

    if (!v18)
    {
      return 1;
    }

    result = sub_1E58EF458(v14, v15, v16, v17);
    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * result), v21 = *(v20 + 16), v21 != *(v18 + 16)))
    {
LABEL_29:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v18;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v18 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1E5A2C114();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    result = v26;
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t WorkoutPlanSchedule.isEmpty.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = v4 & v6;
  v8 = (v3 + 63) >> 6;
  while (v7)
  {
    v9 = v1;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (*(*(*(*v0 + 56) + ((v9 << 9) | (8 * v10))) + 16))
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v5 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E599D2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4F7942736D657469 && a2 == 0xED00007465736666)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E599D35C(uint64_t a1)
{
  v2 = sub_1E599D548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599D398(uint64_t a1)
{
  v2 = sub_1E599D548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanSchedule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF368, &qword_1E5A3CFF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599D548();

  sub_1E5A2C224();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF378, &qword_1E5A3CFF8);
  sub_1E599D59C();
  sub_1E5A2C0B4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E599D548()
{
  result = qword_1ECFFF370;
  if (!qword_1ECFFF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF370);
  }

  return result;
}

unint64_t sub_1E599D59C()
{
  result = qword_1ECFFF380;
  if (!qword_1ECFFF380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF378, &qword_1E5A3CFF8);
    sub_1E58F8EA0();
    sub_1E599D8A4(&qword_1ECFFF388, &qword_1ECFFB910, &protocol conformance descriptor for WorkoutPlanScheduledItem, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF380);
  }

  return result;
}

uint64_t WorkoutPlanSchedule.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF398, &qword_1E5A3D008);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599D548();
  sub_1E5A2C214();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF378, &qword_1E5A3CFF8);
    sub_1E599D7E0();
    sub_1E5A2BFE4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E599D7E0()
{
  result = qword_1ECFFF3A0;
  if (!qword_1ECFFF3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF378, &qword_1E5A3CFF8);
    sub_1E58F9778();
    sub_1E599D8A4(&qword_1ECFFF3A8, &qword_1ECFFBB28, &protocol conformance descriptor for WorkoutPlanScheduledItem, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3A0);
  }

  return result;
}

uint64_t sub_1E599D8A4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF390, &qword_1E5A3D000);
    sub_1E58C79BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutPlanSchedule.hashValue.getter()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E58F9DDC(v3, v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E599D9B8()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E58F9DDC(v3, v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E599DA08(uint64_t a1)
{
  v2 = *v1;
  sub_1E5A2C1B4();
  sub_1E58F9DDC(v4, v2);
  return sub_1E5A2C204();
}

unint64_t sub_1E599DA5C()
{
  result = qword_1ECFFF3B0;
  if (!qword_1ECFFF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3B0);
  }

  return result;
}

uint64_t sub_1E599DABC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1E599DB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E599DB54()
{
  result = qword_1ECFFF3B8;
  if (!qword_1ECFFF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3B8);
  }

  return result;
}

unint64_t sub_1E599DBAC()
{
  result = qword_1ECFFF3C0;
  if (!qword_1ECFFF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3C0);
  }

  return result;
}

unint64_t sub_1E599DC04()
{
  result = qword_1ECFFF3C8;
  if (!qword_1ECFFF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3C8);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutPlanArtwork(uint64_t a1)
{
  result = qword_1ECFFF408;
  if (!qword_1ECFFF408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanArtwork.init(backgroundColor:templateURL:variant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1E58F0054(a1, a4, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v7 = type metadata accessor for WorkoutPlanArtwork(0);
  result = sub_1E58F0054(a2, a4 + *(v7 + 24), &qword_1ECFFB5E0, &qword_1E5A3AC70);
  *(a4 + *(v7 + 20)) = a3;
  return result;
}

uint64_t sub_1E599DDBC()
{
  v1 = 0x746E6169726176;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_1E599DE2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E599FC4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E599DE54(uint64_t a1)
{
  v2 = sub_1E599E178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599DE90(uint64_t a1)
{
  v2 = sub_1E599E178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanArtwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF3D0, &qword_1E5A3D220);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599E178();
  sub_1E5A2C224();
  v10[15] = 0;
  sub_1E5A2A064();
  sub_1E599FD70(&qword_1ECFFD938, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA0]);
  sub_1E5A2C054();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for WorkoutPlanArtwork(0) + 20));
    v10[13] = 1;
    sub_1E599E1CC();
    sub_1E5A2C0B4();
    v10[12] = 2;
    sub_1E5A29D44();
    sub_1E599FD70(&qword_1ECFFD940, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E5A2C054();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E599E178()
{
  result = qword_1ECFFF3D8;
  if (!qword_1ECFFF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3D8);
  }

  return result;
}

unint64_t sub_1E599E1CC()
{
  result = qword_1ECFFF3E0;
  if (!qword_1ECFFF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3E0);
  }

  return result;
}

uint64_t WorkoutPlanArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = &v23 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF3E8, &qword_1E5A3D228);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v23 - v9;
  v11 = type metadata accessor for WorkoutPlanArtwork(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599E178();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v26;
  v15 = v13;
  v24 = v6;
  sub_1E5A2A064();
  v32 = 0;
  sub_1E599FD70(&qword_1ECFFD950, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB8]);
  v17 = v27;
  v16 = v28;
  sub_1E5A2BF84();
  v18 = v17;
  v19 = v15;
  sub_1E58F0054(v18, v15, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v30 = 1;
  sub_1E599E63C();
  sub_1E5A2BFE4();
  v20 = v11;
  *(v19 + *(v11 + 20)) = v31;
  sub_1E5A29D44();
  v29 = 2;
  sub_1E599FD70(&qword_1ECFFD958, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v21 = v24;
  sub_1E5A2BF84();
  (*(v14 + 8))(v10, v16);
  sub_1E58F0054(v21, v19 + *(v20 + 24), &qword_1ECFFB5E0, &qword_1E5A3AC70);
  sub_1E58BAAD8(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E58BAC08(v19);
}

unint64_t sub_1E599E63C()
{
  result = qword_1ECFFF3F0;
  if (!qword_1ECFFF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3F0);
  }

  return result;
}

uint64_t WorkoutPlanArtwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E5A29D44();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1E5A2A064();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  sub_1E58BABA0(v2, &v19 - v13, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
    sub_1E5A2BA44();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for WorkoutPlanArtwork(0);
  WorkoutPlanArtworkVariant.rawValue.getter(*(v2 + *(v15 + 20)));
  sub_1E5A2BB74();

  sub_1E58BABA0(v2 + *(v15 + 24), v7, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v16 = v20;
  if ((*(v20 + 48))(v7, 1, v3) == 1)
  {
    return sub_1E5A2C1D4();
  }

  v18 = v19;
  (*(v16 + 32))(v19, v7, v3);
  sub_1E5A2C1D4();
  sub_1E599FD70(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E5A2BA44();
  return (*(v16 + 8))(v18, v3);
}

uint64_t WorkoutPlanArtwork.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1E5A29D44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1E5A2A064();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1E5A2C1B4();
  sub_1E58BABA0(v1, v14, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
    sub_1E5A2BA44();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for WorkoutPlanArtwork(0);
  WorkoutPlanArtworkVariant.rawValue.getter(*(v1 + *(v15 + 20)));
  sub_1E5A2BB74();

  sub_1E58BABA0(v1 + *(v15 + 24), v7, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    v16 = v18;
    (*(v3 + 32))(v18, v7, v2);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E5A2BA44();
    (*(v3 + 8))(v16, v2);
  }

  return sub_1E5A2C204();
}

uint64_t sub_1E599EE90(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1E5A29D44();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1E5A2A064();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  sub_1E5A2C1B4();
  sub_1E58BABA0(v2, v14, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
    sub_1E5A2BA44();
    (*(v9 + 8))(v11, v8);
  }

  v15 = v20;
  WorkoutPlanArtworkVariant.rawValue.getter(*(v2 + *(v20 + 20)));
  sub_1E5A2BB74();

  sub_1E58BABA0(v2 + *(v15 + 24), v7, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v16 = v21;
  if ((*(v21 + 48))(v7, 1, v3) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    v17 = v19;
    (*(v16 + 32))(v19, v7, v3);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E5A2BA44();
    (*(v16 + 8))(v17, v3);
  }

  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan0bC7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A29D44();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v49 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB600, &unk_1E5A36750);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v49 - v8;
  v9 = sub_1E5A2A064();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB608, &qword_1E5A2CDC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - v17;
  v20 = *(v19 + 56);
  v56 = a1;
  sub_1E58BABA0(a1, &v49 - v17, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v21 = a2;
  sub_1E58BABA0(a2, &v18[v20], &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v22 = *(v10 + 48);
  if (v22(v18, 1, v9) != 1)
  {
    sub_1E58BABA0(v18, v15, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
    if (v22(&v18[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v18[v20], v9);
      sub_1E599FD70(&qword_1ECFFB618, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
      v26 = sub_1E5A2BA74();
      v27 = *(v10 + 8);
      v27(v12, v9);
      v27(v15, v9);
      sub_1E58BAD14(v18, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v23 = &qword_1ECFFB608;
    v24 = &qword_1E5A2CDC0;
    v25 = v18;
LABEL_18:
    sub_1E58BAD14(v25, v23, v24);
    return 0;
  }

  if (v22(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1E58BAD14(v18, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
LABEL_8:
  v28 = type metadata accessor for WorkoutPlanArtwork(0);
  v29 = *(v28 + 20);
  v30 = v56;
  v31 = *(a2 + v29);
  v32 = WorkoutPlanArtworkVariant.rawValue.getter(*(v56 + v29));
  v34 = v33;
  if (v32 == WorkoutPlanArtworkVariant.rawValue.getter(v31) && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E5A2C114();

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = *(v28 + 24);
  v38 = v53;
  v39 = *(v52 + 48);
  sub_1E58BABA0(v30 + v37, v53, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  sub_1E58BABA0(v21 + v37, v38 + v39, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v41 = v54;
  v40 = v55;
  v42 = *(v54 + 48);
  if (v42(v38, 1, v55) == 1)
  {
    if (v42(v38 + v39, 1, v40) == 1)
    {
      sub_1E58BAD14(v38, &qword_1ECFFB5E0, &qword_1E5A3AC70);
      return 1;
    }

    goto LABEL_17;
  }

  v43 = v51;
  sub_1E58BABA0(v38, v51, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  if (v42(v38 + v39, 1, v40) == 1)
  {
    (*(v41 + 8))(v43, v40);
LABEL_17:
    v23 = &qword_1ECFFB600;
    v24 = &unk_1E5A36750;
    v25 = v38;
    goto LABEL_18;
  }

  v45 = v38 + v39;
  v46 = v50;
  (*(v41 + 32))(v50, v45, v40);
  sub_1E599FD70(&qword_1ECFFB610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v47 = sub_1E5A2BA74();
  v48 = *(v41 + 8);
  v48(v46, v40);
  v48(v43, v40);
  sub_1E58BAD14(v38, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  return (v47 & 1) != 0;
}

void sub_1E599FA70(uint64_t a1)
{
  sub_1E5934538(319, &qword_1ECFFD978, MEMORY[0x1E699DB98]);
  if (v1 <= 0x3F)
  {
    sub_1E5934538(319, &qword_1ECFFD980, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E599FB48()
{
  result = qword_1ECFFF418;
  if (!qword_1ECFFF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF418);
  }

  return result;
}

unint64_t sub_1E599FBA0()
{
  result = qword_1ECFFF420;
  if (!qword_1ECFFF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF420);
  }

  return result;
}

unint64_t sub_1E599FBF8()
{
  result = qword_1ECFFF428;
  if (!qword_1ECFFF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF428);
  }

  return result;
}

uint64_t sub_1E599FC4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E599FD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E599FDBC()
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

uint64_t sub_1E599FE10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59A1CE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E599FE38(uint64_t a1)
{
  v2 = sub_1E59A157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599FE74(uint64_t a1)
{
  v2 = sub_1E59A157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599FEB0(uint64_t a1)
{
  v2 = sub_1E59A16A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599FEEC(uint64_t a1)
{
  v2 = sub_1E59A16A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599FF28(uint64_t a1)
{
  v2 = sub_1E59A16F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599FF64(uint64_t a1)
{
  v2 = sub_1E59A16F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599FFA0(uint64_t a1)
{
  v2 = sub_1E59A174C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599FFDC(uint64_t a1)
{
  v2 = sub_1E59A174C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviousPlanLockupLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF430, &unk_1E5A3D480);
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF440, &qword_1E5A3D490);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF448, &qword_1E5A3D498);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF450, &qword_1E5A3D4A0);
  v15 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A157C();
  sub_1E5A2C224();
  sub_1E59A15D0(v36, v14);
  v18 = (*(v5 + 48))(v14, 2, v4);
  if (v18)
  {
    if (v18 == 1)
    {
      v38 = 0;
      sub_1E59A174C();
      v19 = v37;
      sub_1E5A2C024();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v39 = 1;
      sub_1E59A16F8();
      v11 = v29;
      v19 = v37;
      sub_1E5A2C024();
      v21 = v30;
      v20 = v31;
    }

    (*(v21 + 8))(v11, v20);
    return (*(v15 + 8))(v17, v19);
  }

  else
  {
    v22 = v32;
    sub_1E59A1634(v14, v32);
    v40 = 2;
    sub_1E59A16A4();
    v23 = v33;
    v24 = v37;
    sub_1E5A2C024();
    type metadata accessor for PreviousPlanDetail(0);
    sub_1E59A18C0(&qword_1ECFFF468, type metadata accessor for PreviousPlanDetail, &protocol conformance descriptor for PreviousPlanDetail);
    v25 = v35;
    sub_1E5A2C054();
    (*(v34 + 8))(v23, v25);
    sub_1E58BAD14(v22, &qword_1ECFFF438, &qword_1E5A3EDB0);
    return (*(v15 + 8))(v17, v24);
  }
}

uint64_t PreviousPlanLockupLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF480, &qword_1E5A3D4A8);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v45 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF488, &qword_1E5A3D4B0);
  v55 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v54 = &v45 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF490, &qword_1E5A3D4B8);
  v53 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF498, &unk_1E5A3D4C0);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E59A157C();
  v19 = v57;
  sub_1E5A2C214();
  if (!v19)
  {
    v21 = v53;
    v20 = v54;
    v45 = v14;
    v46 = v17;
    v22 = v55;
    v57 = 0;
    v23 = sub_1E5A2C004();
    v24 = (2 * *(v23 + 16)) | 1;
    v59 = v23;
    v60 = v23 + 32;
    v61 = 0;
    v62 = v24;
    v25 = sub_1E58BC5A8();
    v26 = v11;
    if (v25 == 3 || v61 != v62 >> 1)
    {
      v32 = sub_1E5A2BE84();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
      *v34 = State;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v56 + 8))(v26, v9);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v58);
    }

    if (v25)
    {
      v27 = v56;
      if (v25 == 1)
      {
        v63 = 1;
        sub_1E59A16F8();
        v28 = v57;
        sub_1E5A2BF44();
        if (!v28)
        {
          (*(v22 + 8))(v20, v48);
          (*(v27 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
          v30 = v46;
          (*(*(v29 - 8) + 56))(v46, 2, 2, v29);
          v31 = v52;
LABEL_17:
          sub_1E59A1810(v30, v31, type metadata accessor for PreviousPlanLockupLoadState);
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }
      }

      else
      {
        v63 = 2;
        sub_1E59A16A4();
        v38 = v57;
        sub_1E5A2BF44();
        if (!v38)
        {
          v39 = v52;
          type metadata accessor for PreviousPlanDetail(0);
          sub_1E59A18C0(&qword_1ECFFF4A0, type metadata accessor for PreviousPlanDetail, &protocol conformance descriptor for PreviousPlanDetail);
          v40 = v45;
          v41 = v49;
          v42 = v51;
          sub_1E5A2BF84();
          (*(v50 + 8))(v42, v41);
          (*(v27 + 8))(v26, v9);
          swift_unknownObjectRelease();
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
          (*(*(v44 - 8) + 56))(v40, 0, 2, v44);
          v30 = v46;
          sub_1E59A1810(v40, v46, type metadata accessor for PreviousPlanLockupLoadState);
          v31 = v39;
          goto LABEL_17;
        }
      }

      (*(v27 + 8))(v11, v9);
      goto LABEL_9;
    }

    v63 = 0;
    sub_1E59A174C();
    v36 = v57;
    sub_1E5A2BF44();
    v37 = v56;
    if (!v36)
    {
      (*(v21 + 8))(v8, v47);
      (*(v37 + 8))(v11, v9);
      swift_unknownObjectRelease();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
      v30 = v46;
      (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
      v31 = v52;
      goto LABEL_17;
    }

    (*(v56 + 8))(v11, v9);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t PreviousPlanLockupLoadState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PreviousPlanDetail(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E59A15D0(v2, v17);
  v18 = (*(v9 + 48))(v17, 2, v8);
  if (v18)
  {
    if (v18 == 1)
    {
      return MEMORY[0x1E6932DE0](0);
    }

    else
    {
      return MEMORY[0x1E6932DE0](1);
    }
  }

  else
  {
    sub_1E59A1634(v17, v14);
    MEMORY[0x1E6932DE0](2);
    sub_1E59A17A0(v14, v11);
    if ((*(v5 + 48))(v11, 1, v4) == 1)
    {
      sub_1E5A2C1D4();
    }

    else
    {
      sub_1E59A1810(v11, v7, type metadata accessor for PreviousPlanDetail);
      sub_1E5A2C1D4();
      PreviousPlanDetail.hash(into:)(a1);
      sub_1E59A1DF8(v7, type metadata accessor for PreviousPlanDetail);
    }

    return sub_1E58BAD14(v14, &qword_1ECFFF438, &qword_1E5A3EDB0);
  }
}

uint64_t PreviousPlanLockupLoadState.hashValue.getter()
{
  sub_1E5A2C1B4();
  PreviousPlanLockupLoadState.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59A1038()
{
  sub_1E5A2C1B4();
  PreviousPlanLockupLoadState.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59A107C(uint64_t a1)
{
  sub_1E5A2C1B4();
  PreviousPlanLockupLoadState.hash(into:)(v2);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan08PreviousC15LockupLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v36 = a2;
  v3 = type metadata accessor for PreviousPlanDetail(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF500, &qword_1E5A3D968);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF508, &qword_1E5A3D970);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33 - v17;
  v20 = *(v19 + 56);
  sub_1E59A15D0(a1, &v33 - v17);
  sub_1E59A15D0(v36, &v18[v20]);
  v21 = *(v7 + 48);
  v22 = v21(v18, 2, v6);
  if (!v22)
  {
    v36 = v9;
    v23 = v35;
    sub_1E59A15D0(v18, v15);
    if (v21(&v18[v20], 2, v6))
    {
      sub_1E58BAD14(v15, &qword_1ECFFF438, &qword_1E5A3EDB0);
      goto LABEL_9;
    }

    v25 = *(v10 + 48);
    v26 = v12;
    sub_1E59A1634(v15, v12);
    sub_1E59A1634(&v18[v20], &v12[v25]);
    v27 = *(v34 + 48);
    if (v27(v12, 1, v23) == 1)
    {
      if (v27(&v12[v25], 1, v23) == 1)
      {
        sub_1E58BAD14(v12, &qword_1ECFFF438, &qword_1E5A3EDB0);
        goto LABEL_8;
      }
    }

    else
    {
      v28 = v12;
      v29 = v36;
      sub_1E59A17A0(v28, v36);
      if (v27((v26 + v25), 1, v23) != 1)
      {
        v30 = v26 + v25;
        v31 = v5;
        sub_1E59A1810(v30, v5, type metadata accessor for PreviousPlanDetail);
        v32 = _s18FitnessWorkoutPlan08PreviousC6DetailV2eeoiySbAC_ACtFZ_0(v29, v5);
        sub_1E59A1DF8(v31, type metadata accessor for PreviousPlanDetail);
        sub_1E59A1DF8(v29, type metadata accessor for PreviousPlanDetail);
        sub_1E58BAD14(v26, &qword_1ECFFF438, &qword_1E5A3EDB0);
        if (v32)
        {
          goto LABEL_8;
        }

LABEL_17:
        sub_1E59A1DF8(v18, type metadata accessor for PreviousPlanLockupLoadState);
        return 0;
      }

      sub_1E59A1DF8(v29, type metadata accessor for PreviousPlanDetail);
    }

    sub_1E58BAD14(v26, &qword_1ECFFF500, &qword_1E5A3D968);
    goto LABEL_17;
  }

  if (v22 == 1)
  {
    if (v21(&v18[v20], 2, v6) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1E59A1DF8(v18, type metadata accessor for PreviousPlanLockupLoadState);
    return 1;
  }

  if (v21(&v18[v20], 2, v6) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_1E58BAD14(v18, &qword_1ECFFF508, &qword_1E5A3D970);
  return 0;
}

unint64_t sub_1E59A157C()
{
  result = qword_1ECFFF458;
  if (!qword_1ECFFF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF458);
  }

  return result;
}

uint64_t sub_1E59A15D0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for PreviousPlanLockupLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_1E59A1634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E59A16A4()
{
  result = qword_1ECFFF460;
  if (!qword_1ECFFF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF460);
  }

  return result;
}

unint64_t sub_1E59A16F8()
{
  result = qword_1ECFFF470;
  if (!qword_1ECFFF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF470);
  }

  return result;
}

unint64_t sub_1E59A174C()
{
  result = qword_1ECFFF478;
  if (!qword_1ECFFF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF478);
  }

  return result;
}

uint64_t sub_1E59A17A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59A1810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59A18C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E59A1974()
{
  result = qword_1ECFFF4B0;
  if (!qword_1ECFFF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4B0);
  }

  return result;
}

unint64_t sub_1E59A19CC()
{
  result = qword_1ECFFF4B8;
  if (!qword_1ECFFF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4B8);
  }

  return result;
}

unint64_t sub_1E59A1A24()
{
  result = qword_1ECFFF4C0;
  if (!qword_1ECFFF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4C0);
  }

  return result;
}

unint64_t sub_1E59A1A7C()
{
  result = qword_1ECFFF4C8;
  if (!qword_1ECFFF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4C8);
  }

  return result;
}

unint64_t sub_1E59A1AD4()
{
  result = qword_1ECFFF4D0;
  if (!qword_1ECFFF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4D0);
  }

  return result;
}

unint64_t sub_1E59A1B2C()
{
  result = qword_1ECFFF4D8;
  if (!qword_1ECFFF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4D8);
  }

  return result;
}

unint64_t sub_1E59A1B84()
{
  result = qword_1ECFFF4E0;
  if (!qword_1ECFFF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4E0);
  }

  return result;
}

unint64_t sub_1E59A1BDC()
{
  result = qword_1ECFFF4E8;
  if (!qword_1ECFFF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4E8);
  }

  return result;
}

unint64_t sub_1E59A1C34()
{
  result = qword_1ECFFF4F0;
  if (!qword_1ECFFF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4F0);
  }

  return result;
}

unint64_t sub_1E59A1C8C()
{
  result = qword_1ECFFF4F8;
  if (!qword_1ECFFF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4F8);
  }

  return result;
}

uint64_t sub_1E59A1CE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E59A1DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 WorkoutPlanCreationRequest.init(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  v14 = *a6;
  v21 = *a7;
  v15 = a7[1].n128_u64[0];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v16 = type metadata accessor for WorkoutPlanCreationRequest(0);
  v17 = v16[6];
  v18 = sub_1E5A29E74();
  (*(*(v18 - 8) + 32))(&a9[v17], a4, v18);
  sub_1E595418C(a5, &a9[v16[7]]);
  *&a9[v16[8]] = v14;
  v19 = &a9[v16[9]];
  result = v21;
  *v19 = v21;
  *(v19 + 2) = v15;
  a9[v16[10]] = a8;
  *&a9[v16[11]] = a10;
  return result;
}

uint64_t type metadata accessor for WorkoutPlanCreationRequest(uint64_t a1)
{
  result = qword_1ECFFF558;
  if (!qword_1ECFFF558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanCreationRequest.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WorkoutPlanCreationRequest.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationRequest(0) + 24);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlanCreationRequest.recommendationMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlanCreationRequest(0) + 28);

  return sub_1E59541FC(v3, a1);
}

uint64_t WorkoutPlanCreationRequest.schedule.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WorkoutPlanCreationRequest(0) + 32));
}

__n128 WorkoutPlanCreationRequest.startDate.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WorkoutPlanCreationRequest(0) + 36));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

unint64_t sub_1E59A2160()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F69746169726176;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x656C756465686373;
  if (v1 != 4)
  {
    v4 = 0x7461447472617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6564496E616C70;
  if (v1 != 2)
  {
    v5 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1E59A2270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59A3AE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59A2298(uint64_t a1)
{
  v2 = sub_1E59A26DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A22D4(uint64_t a1)
{
  v2 = sub_1E59A26DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF510, &qword_1E5A3D978);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A26DC();
  sub_1E5A2C224();
  *&v13 = *v3;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF520, &qword_1E5A3D980);
  sub_1E59A2E64(&qword_1ECFFF528, sub_1E59A2730, MEMORY[0x1E69E64F0]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1E5A2C064();
    v9 = type metadata accessor for WorkoutPlanCreationRequest(0);
    LOBYTE(v13) = 2;
    sub_1E5A29E74();
    sub_1E59A382C(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5A2C0B4();
    LOBYTE(v13) = 3;
    type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
    sub_1E59A382C(&qword_1ECFFE450, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2C054();
    *&v13 = *(v3 + v9[8]);
    v15 = 4;
    sub_1E58C2B90();

    sub_1E5A2C0B4();

    v10 = v3 + v9[9];
    v11 = *(v10 + 2);
    v13 = *v10;
    v14 = v11;
    v15 = 5;
    sub_1E58C2AE8();
    sub_1E5A2C0B4();
    LOBYTE(v13) = *(v3 + v9[10]);
    v15 = 6;
    sub_1E58F8F9C();
    sub_1E5A2C0B4();
    LOBYTE(v13) = 7;
    sub_1E5A2C094();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E59A26DC()
{
  result = qword_1ECFFF518;
  if (!qword_1ECFFF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF518);
  }

  return result;
}

unint64_t sub_1E59A2730()
{
  result = qword_1ECFFF530;
  if (!qword_1ECFFF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF530);
  }

  return result;
}

uint64_t WorkoutPlanCreationRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v6 = sub_1E5A29E74();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF538, &qword_1E5A3D988);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for WorkoutPlanCreationRequest(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E59A26DC();
  v35 = v11;
  v16 = v36;
  sub_1E5A2C214();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v17 = v8;
  v36 = v5;
  v18 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF520, &qword_1E5A3D980);
  v40 = 0;
  sub_1E59A2E64(&qword_1ECFFF540, sub_1E59A2EDC, MEMORY[0x1E69E6510]);
  v19 = v34;
  sub_1E5A2BFE4();
  v20 = v14;
  *v14 = v38;
  LOBYTE(v38) = 1;
  v14[1] = sub_1E5A2BF94();
  v14[2] = v21;
  LOBYTE(v38) = 2;
  sub_1E59A382C(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v30[2] = 0;
  sub_1E5A2BFE4();
  v22 = *(v32 + 32);
  v23 = v14 + v12[6];
  v30[1] = v6;
  v22(v23, v17, v6);
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  LOBYTE(v38) = 3;
  sub_1E59A382C(&qword_1ECFFE480, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
  v24 = v36;
  sub_1E5A2BF84();
  sub_1E595418C(v24, v20 + v12[7]);
  v40 = 4;
  sub_1E58C7620();
  sub_1E5A2BFE4();
  *(v20 + v12[8]) = v38;
  v40 = 5;
  sub_1E58C75CC();
  sub_1E5A2BFE4();
  v25 = v39;
  v26 = v20 + v12[9];
  *v26 = v38;
  *(v26 + 16) = v25;
  v40 = 6;
  sub_1E58F98EC();
  sub_1E5A2BFE4();
  *(v20 + v12[10]) = v38;
  LOBYTE(v38) = 7;
  v27 = v35;
  v28 = sub_1E5A2BFC4();
  (*(v18 + 8))(v27, v19);
  *(v20 + v12[11]) = v28;
  sub_1E59A2F30(v20, v31);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1E59A3784(v20, type metadata accessor for WorkoutPlanCreationRequest);
}

uint64_t sub_1E59A2E64(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF520, &qword_1E5A3D980);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E59A2EDC()
{
  result = qword_1ECFFF548;
  if (!qword_1ECFFF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF548);
  }

  return result;
}

uint64_t sub_1E59A2F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCreationRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutPlanCreationRequest.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  sub_1E58B9868(a1, *v1);
  sub_1E5A2BB74();
  v10 = type metadata accessor for WorkoutPlanCreationRequest(0);
  sub_1E5A29E74();
  sub_1E59A382C(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2BA44();
  sub_1E59541FC(v1 + v10[7], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    sub_1E59A3720(v9, v6);
    sub_1E5A2C1D4();
    MEMORY[0x1E6932DE0](*v6);
    sub_1E5A2BA44();
    sub_1E5953800(a1, *(v6 + *(v3 + 24)));
    sub_1E59A3784(v6, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  }

  sub_1E58F9DDC(a1, *(v1 + v10[8]));
  v11 = (v1 + v10[9]);
  v12 = v11[1];
  v13 = v11[2];
  MEMORY[0x1E6932DE0](*v11);
  MEMORY[0x1E6932DE0](v12);
  MEMORY[0x1E6932DE0](v13);
  MEMORY[0x1E6932DE0](*(v1 + v10[10]));
  return MEMORY[0x1E6932DE0](*(v1 + v10[11]));
}

uint64_t WorkoutPlanCreationRequest.hashValue.getter()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59A328C()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59A32D0(uint64_t a1)
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationRequest.hash(into:)(v2);
  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan0bC15CreationRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4D0, &unk_1E5A3DBC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  if ((sub_1E58B6370(*a1, *a2) & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for WorkoutPlanCreationRequest(0);
  if ((sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[7];
  v16 = *(v11 + 48);
  sub_1E59541FC(a1 + v15, v13);
  sub_1E59541FC(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_1E59541FC(v13, v10);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_1E59A3720(&v13[v16], v7);
      if (*v10 == *v7 && (sub_1E5A29E54() & 1) != 0)
      {
        v30 = sub_1E595AC4C(*(v10 + *(v4 + 24)), *(v7 + *(v4 + 24)));
        sub_1E59A3784(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
        sub_1E59A3784(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
        sub_1E58BAD14(v13, &qword_1ECFFD900, &qword_1E5A39BB0);
        if (v30)
        {
          goto LABEL_9;
        }

        return 0;
      }

      sub_1E59A3784(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      sub_1E59A3784(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      v28 = &qword_1ECFFD900;
      v29 = &qword_1E5A39BB0;
LABEL_23:
      sub_1E58BAD14(v13, v28, v29);
      return 0;
    }

    sub_1E59A3784(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
LABEL_17:
    v28 = &qword_1ECFFE4D0;
    v29 = &unk_1E5A3DBC0;
    goto LABEL_23;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  sub_1E58BAD14(v13, &qword_1ECFFD900, &qword_1E5A39BB0);
LABEL_9:
  v18 = v14[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);

  sub_1E599C6C0(v19, v20);
  v22 = v21;

  result = 0;
  if (v22)
  {
    v24 = v14[9];
    v25 = a1 + v24;
    v26 = *(a1 + v24);
    v27 = (a2 + v24);
    if (v26 == *v27 && *(v25 + 1) == v27[1] && *(v25 + 2) == v27[2])
    {
      if (*(a1 + v14[10]) == *(a2 + v14[10]))
      {
        return *(a1 + v14[11]) == *(a2 + v14[11]);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E59A3720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59A3784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E59A382C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E59A389C(uint64_t a1)
{
  sub_1E59A396C(319);
  if (v1 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v2 <= 0x3F)
    {
      sub_1E5898B54(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E59A396C(uint64_t a1)
{
  if (!qword_1ECFFF568)
  {
    sub_1E591CBE8();
    v1 = sub_1E5A2BD24();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFF568);
    }
  }
}

unint64_t sub_1E59A39DC()
{
  result = qword_1ECFFF570;
  if (!qword_1ECFFF570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF570);
  }

  return result;
}

unint64_t sub_1E59A3A34()
{
  result = qword_1ECFFF578;
  if (!qword_1ECFFF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF578);
  }

  return result;
}

unint64_t sub_1E59A3A8C()
{
  result = qword_1ECFFF580;
  if (!qword_1ECFFF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF580);
  }

  return result;
}

uint64_t sub_1E59A3AE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001E5A46C30 == a2;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564496E616C70 && a2 == 0xEE00726569666974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A468F0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A46C50 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t StretchGoalPlanArtworkView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E5A2B7E4();
  *a2 = result;
  a2[1] = v4;
  a2[2] = sub_1E59A3DC8;
  a2[3] = 0;
  return result;
}

uint64_t sub_1E59A3DC8@<X0>(void *a1@<X8>)
{
  v86 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F8, &unk_1E5A35EE0);
  MEMORY[0x1EEE9AC00](v97);
  v89 = &v82[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v88 = &v82[-v3];
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v82[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v82[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v82[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v82[-v11];
  sub_1E5A2B8A4();
  sub_1E5A2B894();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v13 = swift_allocObject();
  v85 = xmmword_1E5A2C930;
  *(v13 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v13 + 32) = sub_1E5A2B744();
  *(v13 + 40) = v14;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v13 + 48) = sub_1E5A2B744();
  *(v13 + 56) = v15;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v16 = sub_1E5A2ABB4();
  v17 = *(v16 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1E5A2A9B4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 104);
  v22 = v98;
  v23 = v18;
  v91 = v19;
  v93 = v21;
  v84 = v20 + 104;
  (v21)(&v98[v17], v18);
  sub_1E5A2AAA4();
  *v22 = v24;
  v22[1] = v25;
  v22[2] = v26;
  v22[3] = v27;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v28 = swift_allocObject();
  v92 = xmmword_1E5A303B0;
  *(v28 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4A0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v28 + 32) = sub_1E5A2B744();
  *(v28 + 40) = v29;
  if (qword_1ECFFB498 != -1)
  {
    swift_once();
  }

  v96 = v12;
  swift_retain_n();
  *(v28 + 48) = sub_1E5A2B744();
  *(v28 + 56) = v30;
  if (qword_1ECFFB4A8 != -1)
  {
    swift_once();
  }

  v90 = qword_1ED0264C8;
  swift_retain_n();
  *(v28 + 64) = sub_1E5A2B744();
  *(v28 + 72) = v31;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD800, &qword_1E5A35EF0);
  v33 = v98;
  v34 = &v98[*(v32 + 52)];
  v35 = v103;
  *v34 = v102;
  *(v34 + 1) = v35;
  *(v34 + 4) = v104;
  *&v33[*(v32 + 56)] = 256;
  sub_1E5A2A5F4();
  sub_1E5A2B804();
  sub_1E5A2A5B4();
  v36 = &v33[*(v97 + 36)];
  v37 = v106;
  *v36 = v105;
  v36[1] = v37;
  v36[2] = v107;
  v38 = v94;
  v39 = &v94[*(v16 + 20)];
  v83 = v23;
  v93(v39, v23, v91);
  sub_1E5A2AAA4();
  *v38 = v40;
  v38[1] = v41;
  v38[2] = v42;
  v38[3] = v43;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v44 = swift_allocObject();
  *(v44 + 16) = v92;
  *(v44 + 32) = sub_1E5A2B744();
  *(v44 + 40) = v45;
  *(v44 + 48) = sub_1E5A2B744();
  *(v44 + 56) = v46;
  *(v44 + 64) = sub_1E5A2B744();
  *(v44 + 72) = v47;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v48 = v38 + *(v32 + 52);
  v49 = v109;
  *v48 = v108;
  *(v48 + 1) = v49;
  *(v48 + 4) = v110;
  *(v38 + *(v32 + 56)) = 256;
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v50 = v97;
  v51 = (v38 + *(v97 + 36));
  v52 = v112;
  *v51 = v111;
  v51[1] = v52;
  v51[2] = v113;
  v53 = v95;
  v93(&v95[*(v16 + 20)], v83, v91);
  sub_1E5A2AAA4();
  *v53 = v54;
  v53[1] = v55;
  v53[2] = v56;
  v53[3] = v57;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v58 = swift_allocObject();
  *(v58 + 16) = v92;
  *(v58 + 32) = sub_1E5A2B744();
  *(v58 + 40) = v59;
  *(v58 + 48) = sub_1E5A2B744();
  *(v58 + 56) = v60;
  *(v58 + 64) = sub_1E5A2B744();
  *(v58 + 72) = v61;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v62 = v53 + *(v32 + 52);
  v63 = v115;
  *v62 = v114;
  *(v62 + 1) = v63;
  *(v62 + 4) = v116;
  *(v53 + *(v32 + 56)) = 256;
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v64 = (v53 + *(v50 + 36));
  v65 = v118;
  *v64 = v117;
  v64[1] = v65;
  v64[2] = v119;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v66 = swift_allocObject();
  *(v66 + 16) = v85;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v66 + 32) = sub_1E5A2B744();
  *(v66 + 40) = v67;
  sub_1E5A2B434();
  *(v66 + 48) = sub_1E5A2B744();
  *(v66 + 56) = v68;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v69 = v99;
  v70 = v87;
  sub_1E591D234(v98, v87);
  v71 = v94;
  v72 = v88;
  sub_1E591D234(v94, v88);
  v73 = v95;
  v74 = v89;
  sub_1E591D234(v95, v89);
  v75 = v120;
  v76 = v86;
  *v86 = v69;
  v77 = v100;
  *(v76 + 3) = v101;
  *(v76 + 1) = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF598, &unk_1E5A3DC70);
  sub_1E591D234(v70, v76 + v78[12]);
  sub_1E591D234(v72, v76 + v78[16]);
  sub_1E591D234(v74, v76 + v78[20]);
  v79 = v76 + v78[24];
  *v79 = v75;
  v80 = v121;
  *(v79 + 24) = v122;
  *(v79 + 8) = v80;

  sub_1E591D2A4(v73);
  sub_1E591D2A4(v71);
  sub_1E591D2A4(v98);

  sub_1E591D2A4(v74);
  sub_1E591D2A4(v72);
  sub_1E591D2A4(v70);
}

uint64_t sub_1E59A4758@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E5A2B7E4();
  *a2 = result;
  a2[1] = v4;
  a2[2] = sub_1E59A3DC8;
  a2[3] = 0;
  return result;
}

unint64_t sub_1E59A47A4()
{
  result = qword_1ECFFF588;
  if (!qword_1ECFFF588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF590, &unk_1E5A3DC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF588);
  }

  return result;
}

FitnessWorkoutPlan::WorkoutPlanModalitySelection __swiftcall WorkoutPlanModalitySelection.init(modalityIdentifier:preferredDurations:preferredWeekdays:)(Swift::String modalityIdentifier, Swift::OpaquePointer preferredDurations, Swift::OpaquePointer preferredWeekdays)
{
  *v3 = modalityIdentifier;
  *(v3 + 16) = preferredDurations;
  *(v3 + 24) = preferredWeekdays;
  result.modalityIdentifier = modalityIdentifier;
  result.preferredWeekdays = preferredWeekdays;
  result.preferredDurations = preferredDurations;
  return result;
}

uint64_t WorkoutPlanModalitySelection.modalityIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1E59A4854()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1E59A48A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59A54AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59A48D0(uint64_t a1)
{
  v2 = sub_1E59A4B90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A490C(uint64_t a1)
{
  v2 = sub_1E59A4B90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanModalitySelection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF5A0, &unk_1E5A3DC80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A4B90();
  sub_1E5A2C224();
  LOBYTE(v15) = 0;
  v8 = v13;
  sub_1E5A2C064();
  if (!v8)
  {
    v9 = v11;
    v15 = v12;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
    sub_1E59A4EFC(&qword_1ECFFF5B0, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
    v15 = v9;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF5B8, &qword_1E5A3DC90);
    sub_1E59A4F68(&qword_1ECFFF5C0, sub_1E58C2944, MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E59A4B90()
{
  result = qword_1ECFFF5A8;
  if (!qword_1ECFFF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5A8);
  }

  return result;
}

uint64_t WorkoutPlanModalitySelection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF5C8, &qword_1E5A3DC98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A4B90();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v9 = sub_1E5A2BF94();
  v11 = v10;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  v18 = 1;
  sub_1E59A4EFC(&qword_1ECFFF5D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  v16 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF5B8, &qword_1E5A3DC90);
  v18 = 2;
  sub_1E59A4F68(&qword_1ECFFF5D8, sub_1E58C7514, MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  (*(v6 + 8))(v8, v5);
  v12 = v19;
  v13 = v16;
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E59A4EFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF178, &qword_1E5A3C800);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E59A4F68(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF5B8, &qword_1E5A3DC90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static WorkoutPlanModalitySelection.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E5A2C114() & 1) == 0 || (sub_1E595C8C0() & 1) == 0)
  {
    return 0;
  }

  return sub_1E595C8C4();
}

uint64_t WorkoutPlanModalitySelection.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1E6932DE0](v6);
      --v4;
    }

    while (v4);
  }

  result = MEMORY[0x1E6932DE0](*(v2 + 16));
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = (v2 + 32);
    do
    {
      v10 = *v9++;
      result = MEMORY[0x1E6932DE0](v10);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t WorkoutPlanModalitySelection.hashValue.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1E6932DE0](v5);
      --v3;
    }

    while (v3);
  }

  MEMORY[0x1E6932DE0](*(v1 + 16));
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = (v1 + 32);
    do
    {
      v8 = *v7++;
      MEMORY[0x1E6932DE0](v8);
      --v6;
    }

    while (v6);
  }

  return sub_1E5A2C204();
}

uint64_t sub_1E59A51E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1E6932DE0](v6);
      --v4;
    }

    while (v4);
  }

  MEMORY[0x1E6932DE0](*(v2 + 16));
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = (v2 + 32);
    do
    {
      v9 = *v8++;
      MEMORY[0x1E6932DE0](v9);
      --v7;
    }

    while (v7);
  }

  return sub_1E5A2C204();
}

uint64_t sub_1E59A5298(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E5A2C114() & 1) == 0 || (sub_1E595C8C0() & 1) == 0)
  {
    return 0;
  }

  return sub_1E595C8C4();
}

unint64_t sub_1E59A5330()
{
  result = qword_1ECFFF5E0;
  if (!qword_1ECFFF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5E0);
  }

  return result;
}

unint64_t sub_1E59A53A8()
{
  result = qword_1ECFFF5E8;
  if (!qword_1ECFFF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5E8);
  }

  return result;
}

unint64_t sub_1E59A5400()
{
  result = qword_1ECFFF5F0;
  if (!qword_1ECFFF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5F0);
  }

  return result;
}

unint64_t sub_1E59A5458()
{
  result = qword_1ECFFF5F8;
  if (!qword_1ECFFF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF5F8);
  }

  return result;
}

uint64_t sub_1E59A54AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A45E20 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A46C70 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A46C90 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5A2C114();

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

uint64_t CustomPlanView.init(store:index:actionButtonViewBuilder:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a5 = result;
  a5[1] = v10;
  a5[3] = a4;
  a5[4] = a2;
  a5[2] = a3;
  return result;
}

uint64_t CustomPlanView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF600, &qword_1E5A3DED0);
  v36 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v26 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF608, &qword_1E5A3DED8);
  v35 = *(a1 + 16);
  v34 = *(a1 + 24);
  v43 = v35;
  v44 = v34;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  v6 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v54 = MEMORY[0x1E697EBF8];
  v33 = MEMORY[0x1E697E858];
  v51 = swift_getWitnessTable();
  v52 = MEMORY[0x1E697E5D8];
  v7 = swift_getWitnessTable();
  v43 = v6;
  v44 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = v6;
  v44 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_1E5A2A774();
  v8 = sub_1E5A2A6C4();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v26 - v12;
  v13 = *(v2 + 16);
  v55[0] = *v2;
  v55[1] = v13;
  v56 = *(v2 + 32);
  v43 = sub_1E5A2B7E4();
  v44 = v14;
  v45 = sub_1E59A5C50;
  v46 = 0;
  v47 = 0x3FFC71C71C71C71CLL;
  LOWORD(v48) = 0;
  sub_1E5A2B7A4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF610, &qword_1E5A3DEE0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF618, &qword_1E5A3DEE8);
  v17 = sub_1E59A6BD0();
  v25 = sub_1E59A6C88();
  v18 = MEMORY[0x1E6981CD8];
  sub_1E5A2B3A4();
  v38 = v35;
  v39 = v34;
  v40 = v55;
  sub_1E5A2B7E4();
  v43 = v15;
  v44 = v18;
  v45 = v16;
  v46 = v16;
  v47 = v17;
  v48 = MEMORY[0x1E6981CD0];
  v49 = v25;
  v50 = v25;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = v27;
  sub_1E5A2B314();
  (*(v36 + 8))(v5, v20);
  v21 = swift_getWitnessTable();
  v41 = v19;
  v42 = v21;
  swift_getWitnessTable();
  v22 = v28;
  sub_1E58B41DC();
  v23 = *(v32 + 8);
  v23(v10, v8);
  sub_1E58B41DC();
  return (v23)(v22, v8);
}

uint64_t sub_1E59A5C50@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE210, &unk_1E5A3E030);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v45 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v45 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v45 - v11);
  v13 = sub_1E5A2AA24();
  LOBYTE(v52) = 0;
  sub_1E594AFF4(&v66);
  v60 = *&v67[16];
  v61 = *&v67[32];
  v58 = v66;
  v59 = *v67;
  v63[2] = *&v67[16];
  v63[3] = *&v67[32];
  v63[4] = *&v67[48];
  v63[1] = *v67;
  v62 = *&v67[48];
  v63[0] = v66;
  sub_1E58BABA0(&v58, &v64, &qword_1ECFFE218, &unk_1E5A392F0);
  sub_1E58BAD14(v63, &qword_1ECFFE218, &unk_1E5A392F0);
  *(&v51[2] + 7) = v59;
  *(&v51[4] + 7) = v60;
  *(&v51[6] + 7) = v61;
  *(&v51[8] + 7) = v62;
  *(v51 + 7) = v58;
  v50 = v52;
  *v12 = sub_1E5A2B7E4();
  v12[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE220, &qword_1E5A3E040);
  sub_1E59A61E4(v12 + *(v15 + 44));
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE228, &qword_1E5A39300);
  v17 = (v12 + *(v16 + 36));
  v18 = *&v51[13];
  *v17 = *&v51[11];
  v17[1] = v18;
  v17[2] = *&v51[15];
  sub_1E5A2A5F4();
  v20 = v19 * -0.5;
  sub_1E5A2A5F4();
  v22 = (v12 + *(v3 + 44));
  *v22 = v20;
  v22[1] = v21 * -0.5;
  *v9 = sub_1E5A2B7E4();
  v9[1] = v23;
  sub_1E59A61E4(v9 + *(v15 + 44));
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v24 = (v9 + *(v16 + 36));
  v25 = v53;
  *v24 = v52;
  v24[1] = v25;
  v24[2] = v54;
  sub_1E5A2A5F4();
  v27 = v26 * -0.25;
  sub_1E5A2A5F4();
  v29 = (v9 + *(v3 + 44));
  *v29 = v27;
  v29[1] = v28 * 0.5;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v30 + 32) = sub_1E5A2B744();
  *(v30 + 40) = v31;
  sub_1E5A2B434();
  *(v30 + 48) = sub_1E5A2B744();
  *(v30 + 56) = v32;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v33 = v48;
  sub_1E58BABA0(v12, v48, &qword_1ECFFE210, &unk_1E5A3E030);
  v34 = v9;
  v46 = v9;
  v35 = v49;
  sub_1E58BABA0(v34, v49, &qword_1ECFFE210, &unk_1E5A3E030);
  v36 = v55;
  v64 = v13;
  v65[0] = v50;
  v47 = v13;
  *&v65[17] = *&v51[2];
  *&v65[1] = *v51;
  *&v65[65] = *&v51[8];
  *&v65[49] = *&v51[6];
  *&v65[33] = *&v51[4];
  v37 = *(&v51[9] + 7);
  *&v65[80] = *(&v51[9] + 7);
  v38 = *&v65[64];
  *(a1 + 64) = *&v65[48];
  *(a1 + 80) = v38;
  *(a1 + 96) = v37;
  v39 = *v65;
  *a1 = v64;
  *(a1 + 16) = v39;
  v40 = *&v65[32];
  *(a1 + 32) = *&v65[16];
  *(a1 + 48) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6B8, &qword_1E5A3E048);
  sub_1E58BABA0(v33, a1 + v41[12], &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BABA0(v35, a1 + v41[16], &qword_1ECFFE210, &unk_1E5A3E030);
  v42 = a1 + v41[20];
  *v42 = v36;
  v43 = v56;
  *(v42 + 24) = v57;
  *(v42 + 8) = v43;
  sub_1E58BABA0(&v64, &v66, &qword_1ECFFE238, &qword_1E5A39310);

  sub_1E58BAD14(v46, &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BAD14(v12, &qword_1ECFFE210, &unk_1E5A3E030);

  sub_1E58BAD14(v35, &qword_1ECFFE210, &unk_1E5A3E030);
  sub_1E58BAD14(v33, &qword_1ECFFE210, &unk_1E5A3E030);
  *&v67[33] = *&v51[4];
  *&v67[49] = *&v51[6];
  *v68 = *&v51[8];
  *&v67[1] = *v51;
  v66 = v47;
  v67[0] = v50;
  *&v68[15] = *(&v51[9] + 7);
  *&v67[17] = *&v51[2];
  return sub_1E58BAD14(&v66, &qword_1ECFFE238, &qword_1E5A39310);
}

uint64_t sub_1E59A61E4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE240, &qword_1E5A39318);
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - v4;
  v6 = *MEMORY[0x1E697F480];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_1E5A2B8A4();
  sub_1E5A2B894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v8 = swift_allocObject();
  v54 = xmmword_1E5A303B0;
  *(v8 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4C8 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v8 + 32) = sub_1E5A2B744();
  *(v8 + 40) = v9;
  if (qword_1ECFFB4C0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v8 + 48) = sub_1E5A2B744();
  *(v8 + 56) = v10;
  if (qword_1ECFFB4D0 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  *(v8 + 64) = sub_1E5A2B744();
  *(v8 + 72) = v11;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v12 = &v5[*(v1 + 52)];
  v13 = *&v80[67];
  *v12 = *&v80[59];
  *(v12 + 1) = v13;
  *(v12 + 4) = v81;
  *&v5[*(v1 + 56)] = 256;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v14 = swift_allocObject();
  *(v14 + 16) = v54;
  *(v14 + 32) = sub_1E5A2B744();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_1E5A2B744();
  *(v14 + 56) = v16;
  *(v14 + 64) = sub_1E5A2B744();
  *(v14 + 72) = v17;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v51 = v82;
  v18 = v83;
  v19 = v84;
  v50 = v85;
  v20 = v86;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v80[27] = v90;
  *&v80[35] = v91;
  *&v80[43] = v92;
  *&v80[51] = v93;
  *&v80[3] = v87;
  *&v80[11] = v88;
  *&v80[19] = v89;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v21 = swift_allocObject();
  *(v21 + 16) = v54;
  *(v21 + 32) = sub_1E5A2B744();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_1E5A2B744();
  *(v21 + 56) = v23;
  *(v21 + 64) = sub_1E5A2B744();
  *(v21 + 72) = v24;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v25 = v94;
  v26 = v95;
  v27 = v96;
  v28 = v97;
  v29 = v98;
  sub_1E5A2B804();
  sub_1E5A2A764();
  *&v79[54] = v102;
  *&v79[70] = v103;
  *&v79[86] = v104;
  *&v79[102] = v105;
  *&v79[6] = v99;
  *&v79[22] = v100;
  *&v79[38] = v101;
  v30 = v53;
  sub_1E58BABA0(v5, v53, &qword_1ECFFE240, &qword_1E5A39318);
  v31 = v52;
  sub_1E58BABA0(v30, v52, &qword_1ECFFE240, &qword_1E5A39318);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE248, &qword_1E5A39320);
  v33 = (v31 + *(v32 + 48));
  v34 = v51;
  *&v55 = v51;
  *(&v55 + 1) = v18;
  *&v56 = v19;
  v35 = v50;
  *(&v56 + 1) = v50;
  *&v57[0] = v20;
  WORD4(v57[0]) = 256;
  *(v57 + 10) = *v80;
  *(&v57[4] + 10) = *&v80[32];
  *(&v57[5] + 10) = *&v80[40];
  *(&v57[6] + 10) = *&v80[48];
  *(&v57[7] + 1) = *&v80[55];
  *(&v57[1] + 10) = *&v80[8];
  *(&v57[2] + 10) = *&v80[16];
  *(&v57[3] + 10) = *&v80[24];
  v36 = v57[3];
  v33[4] = v57[2];
  v33[5] = v36;
  v37 = v57[1];
  v33[2] = v57[0];
  v33[3] = v37;
  v38 = v57[7];
  v33[8] = v57[6];
  v33[9] = v38;
  v39 = v57[5];
  v33[6] = v57[4];
  v33[7] = v39;
  v40 = v56;
  *v33 = v55;
  v33[1] = v40;
  v41 = (v31 + *(v32 + 64));
  *&v58 = v25;
  *(&v58 + 1) = v26;
  *&v59 = v27;
  *(&v59 + 1) = v28;
  *&v60[0] = v29;
  WORD4(v60[0]) = 256;
  *(&v60[5] + 10) = *&v79[80];
  *(&v60[4] + 10) = *&v79[64];
  *(&v60[6] + 10) = *&v79[96];
  *(&v60[7] + 1) = *&v79[110];
  *(v60 + 10) = *v79;
  *(&v60[1] + 10) = *&v79[16];
  *(&v60[2] + 10) = *&v79[32];
  *(&v60[3] + 10) = *&v79[48];
  v42 = v59;
  *v41 = v58;
  v41[1] = v42;
  v43 = v60[0];
  v44 = v60[1];
  v45 = v60[3];
  v41[4] = v60[2];
  v41[5] = v45;
  v41[2] = v43;
  v41[3] = v44;
  v46 = v60[4];
  v47 = v60[5];
  v48 = v60[7];
  v41[8] = v60[6];
  v41[9] = v48;
  v41[6] = v46;
  v41[7] = v47;
  sub_1E58BABA0(&v55, v70, &qword_1ECFFE250, &qword_1E5A39328);
  sub_1E58BABA0(&v58, v70, &qword_1ECFFE250, &qword_1E5A39328);
  sub_1E58BAD14(v5, &qword_1ECFFE240, &qword_1E5A39318);
  v61[0] = v25;
  v61[1] = v26;
  v61[2] = v27;
  v61[3] = v28;
  v61[4] = v29;
  v62 = 256;
  v67 = *&v79[64];
  v68 = *&v79[80];
  *v69 = *&v79[96];
  *&v69[14] = *&v79[110];
  v63 = *v79;
  v64 = *&v79[16];
  v65 = *&v79[32];
  v66 = *&v79[48];
  sub_1E58BAD14(v61, &qword_1ECFFE250, &qword_1E5A39328);
  v70[0] = v34;
  v70[1] = v18;
  v70[2] = v19;
  v70[3] = v35;
  v70[4] = v20;
  v71 = 256;
  v76 = *&v80[32];
  v77 = *&v80[40];
  *v78 = *&v80[48];
  *&v78[14] = *&v80[55];
  v72 = *v80;
  v73 = *&v80[8];
  v74 = *&v80[16];
  v75 = *&v80[24];
  sub_1E58BAD14(v70, &qword_1ECFFE250, &qword_1E5A39328);
  return sub_1E58BAD14(v30, &qword_1ECFFE240, &qword_1E5A39318);
}

uint64_t sub_1E59A697C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  sub_1E5A2A074();
  v9 = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF618, &qword_1E5A3DEE8) + 36));
  v11 = *(sub_1E5A2A754() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1E5A2A9B4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  *v10 = v9;
  *(v10 + 1) = v9;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  *a2 = v15;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 41) = v7;
}

uint64_t sub_1E59A6AAC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF618, &qword_1E5A3DEE8) + 36));
  v9 = *(sub_1E5A2A754() + 20);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_1E5A2A9B4();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #8.0 }

  *v8 = _Q0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  *a2 = v18;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 41) = v7;
}

unint64_t sub_1E59A6BD0()
{
  result = qword_1ECFFF620;
  if (!qword_1ECFFF620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF610, &qword_1E5A3DEE0);
    sub_1E58CD164(&qword_1ECFFF628, &qword_1ECFFF630, &unk_1E5A3DEF0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF620);
  }

  return result;
}

unint64_t sub_1E59A6C88()
{
  result = qword_1ECFFF638;
  if (!qword_1ECFFF638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF618, &qword_1E5A3DEE8);
    sub_1E59A6BD0();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF638);
  }

  return result;
}

uint64_t sub_1E59A6D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v39 = a1;
  v43 = a4;
  v6 = sub_1E5A2AC84();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF608, &qword_1E5A3DED8);
  v51 = a2;
  v52 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  v33 = sub_1E5A2B864();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E5A2B604();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = sub_1E5A2A6C4();
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = sub_1E5A2A6C4();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v28 = swift_getWitnessTable();
  v49 = v28;
  v50 = MEMORY[0x1E697EBF8];
  v29 = swift_getWitnessTable();
  v47 = v29;
  v48 = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  v51 = v14;
  v52 = v30;
  v31 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  sub_1E5A2AA34();
  v44 = v37;
  v45 = v38;
  v46 = v39;
  sub_1E5A2B5F4();
  sub_1E5A2B7F4();
  sub_1E5A2B2E4();
  (*(v36 + 8))(v10, v8);
  sub_1E5A2B324();
  (*(v35 + 8))(v13, v11);
  v24 = v40;
  sub_1E5A2AC74();
  v25 = v30;
  sub_1E5A2B224();
  (*(v41 + 8))(v24, v42);
  (*(v34 + 8))(v16, v14);
  v51 = v14;
  v52 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1E58B41DC();
  v26 = *(v18 + 8);
  v26(v20, OpaqueTypeMetadata2);
  sub_1E58B41DC();
  return (v26)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1E59A738C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  v7 = sub_1E5A2BA14();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v60 - v14;
  v15 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v61 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a2;
  v85 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v69 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v60 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF608, &qword_1E5A3DED8);
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v74 = a2;
  v75 = a3;
  sub_1E59A7C90(a1, &v60 - v25);
  LOBYTE(a3) = sub_1E5A2AD94();
  sub_1E5A2A424();
  v60 = v22;
  v27 = *(v22 + 36);
  v62 = v26;
  v28 = &v26[v27];
  *v28 = a3;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = *(a1 + 16);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v34 = qword_1EE2D33E0;
  swift_getKeyPath();

  v35 = v34;
  sub_1E5A2B944();

  v36 = sub_1E5A2BB64();
  v33(v36);

  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A303B0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  v38 = qword_1EE2D33E0;
  swift_getKeyPath();

  v39 = v38;
  sub_1E5A2B944();

  v40 = sub_1E5A2BB64();
  v41 = MEMORY[0x1E69E6158];
  *(inited + 48) = v40;
  *(inited + 56) = v42;
  *(inited + 72) = v41;
  *(inited + 80) = 0x6973736572706D69;
  v43 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xEF7865646E496E6FLL;
  *(inited + 96) = 0;
  *(inited + 120) = v43;
  strcpy((inited + 128), "impressionType");
  *(inited + 168) = v41;
  *(inited + 143) = -18;
  *(inited + 144) = 0x6E6F74747562;
  *(inited + 152) = 0xE600000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v44);
  v45 = v68;
  sub_1E5A2B9D4();
  v46 = sub_1E5A2B9E4();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = v71;
  sub_1E5A2B9F4();
  v48 = v69;
  v50 = v74;
  v49 = v75;
  v51 = v77;
  sub_1E5A2B014();
  (*(v72 + 8))(v47, v73);
  sub_1E58BAD14(v45, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v61 + 8))(v51, v50);
  v84 = v50;
  v85 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v66;
  v54 = OpaqueTypeMetadata2;
  sub_1E58B41DC();
  v55 = v64;
  v56 = *(v64 + 8);
  v56(v48, v54);
  v57 = v62;
  v58 = v65;
  sub_1E58BABA0(v62, v65, &qword_1ECFFF608, &qword_1E5A3DED8);
  v82 = 0;
  v83 = 1;
  v84 = v58;
  v85 = &v82;
  (*(v55 + 16))(v48, v53, v54);
  v86 = v48;
  v81[0] = v60;
  v81[1] = MEMORY[0x1E6981840];
  v81[2] = v54;
  v78 = sub_1E59A8D08();
  v79 = MEMORY[0x1E6981838];
  v80 = OpaqueTypeConformance2;
  sub_1E597DC00(&v84, 3uLL, v81);
  v56(v53, v54);
  sub_1E58BAD14(v57, &qword_1ECFFF608, &qword_1E5A3DED8);
  v56(v48, v54);
  return sub_1E58BAD14(v58, &qword_1ECFFF608, &qword_1E5A3DED8);
}

uint64_t sub_1E59A7C90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v133 = a2;
  v143 = sub_1E5A2AEB4();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF668, &qword_1E5A3DFF8);
  MEMORY[0x1EEE9AC00](v150);
  v144 = v114 - v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF670, &qword_1E5A3E000);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = v114 - v5;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF678, &qword_1E5A3E008);
  MEMORY[0x1EEE9AC00](v126);
  v132 = v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v127 = v114 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v131 = v114 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF680, &unk_1E5A3E010);
  MEMORY[0x1EEE9AC00](v149);
  v148 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v147 = v114 - v13;
  v153 = sub_1E5A2A684();
  v14 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v151 = v114 - v17;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF688, &unk_1E5A44C60);
  MEMORY[0x1EEE9AC00](v146);
  v145 = v114 - v18;
  v19 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF690, &qword_1E5A3E020);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v154 = v114 - v27;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v28 = qword_1EE2D33E0;
  swift_getKeyPath();
  v140 = a1;

  v29 = v28;
  sub_1E5A2B944();

  v30 = sub_1E5A2AF64();
  v32 = v31;
  v139 = v24;
  v34 = v33;
  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v35 = sub_1E5A2AFA4();
  v37 = v36;
  v138 = v21;
  v39 = v38;
  v41 = v40;

  sub_1E58B3C9C(v30, v32, v34 & 1);

  v136 = v35;
  *&v161 = v35;
  *(&v161 + 1) = v37;
  v135 = v37;
  LODWORD(v134) = v39 & 1;
  LOBYTE(v162) = v39 & 1;
  v137 = v41;
  *(&v162 + 1) = v41;
  v42 = *MEMORY[0x1E697E6E8];
  v43 = v14[13];
  v44 = v151;
  v45 = v153;
  v43(v151, *MEMORY[0x1E697E6E8], v153);
  v46 = *MEMORY[0x1E697E728];
  v47 = v152;
  v43(v152, *MEMORY[0x1E697E728], v45);
  v48 = sub_1E59A8E44();
  result = sub_1E5A2BA64();
  if (result)
  {
    v121 = v42;
    v122 = v48;
    v50 = v14[4];
    v120 = v14 + 13;
    v51 = v147;
    v50(v147, v44, v45);
    v119 = v43;
    v52 = v149;
    v50((v51 + *(v149 + 48)), v47, v45);
    v53 = v148;
    sub_1E58BABA0(v51, v148, &qword_1ECFFF680, &unk_1E5A3E010);
    v54 = *(v52 + 48);
    v118 = v46;
    v55 = v145;
    v50(v145, v53, v45);
    v56 = v14[1];
    v114[1] = v14 + 1;
    v56(v53 + v54, v45);
    sub_1E59A8E9C(v51, v53);
    v57 = v55 + *(v146 + 36);
    v58 = v53 + *(v52 + 48);
    v117 = v14 + 4;
    v116 = v50;
    v50(v57, v58, v45);
    v115 = v56;
    v56(v53, v45);
    v114[2] = sub_1E58CD164(&qword_1ECFFF6A0, &qword_1ECFFF688, &unk_1E5A44C60, MEMORY[0x1E69E5FB8]);
    sub_1E5A2B164();
    sub_1E58BAD14(v55, &qword_1ECFFF688, &unk_1E5A44C60);
    sub_1E58B3C9C(v136, v135, v134);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v137 = v155;
    v136 = v157;
    v135 = v159;
    v134 = v160;
    v170 = 1;
    v169 = v156;
    v168 = v158;
    sub_1E5A2BA84();
    v59 = qword_1EE2D33E0;
    swift_getKeyPath();

    v60 = v59;
    sub_1E5A2B944();

    v61 = sub_1E5A2AF64();
    v63 = v62;
    LOBYTE(v56) = v64;
    sub_1E5A2AEC4();
    sub_1E5A2AE54();
    sub_1E5A2AEA4();

    v65 = v142;
    v66 = v141;
    v67 = v143;
    (*(v142 + 104))(v141, *MEMORY[0x1E6980EA8], v143);
    sub_1E5A2AEE4();

    (*(v65 + 8))(v66, v67);
    v68 = sub_1E5A2AFA4();
    v70 = v69;
    LOBYTE(v65) = v71;

    sub_1E58B3C9C(v61, v63, v56 & 1);

    LODWORD(v161) = sub_1E5A2ABA4();
    v72 = sub_1E5A2AF84();
    v74 = v73;
    LOBYTE(v63) = v75;
    v77 = v76;
    v78 = v65 & 1;
    v79 = v152;
    sub_1E58B3C9C(v68, v70, v78);

    v80 = *(v150 + 36);
    v81 = *MEMORY[0x1E6981DB8];
    v82 = sub_1E5A2B814();
    v83 = v144;
    v84 = v81;
    v85 = v153;
    (*(*(v82 - 8) + 104))(&v144[v80], v84, v82);
    *v83 = v72;
    *(v83 + 8) = v74;
    *(v83 + 16) = v63 & 1;
    *(v83 + 24) = v77;
    v86 = v151;
    v87 = v119;
    v119(v151, v121, v85);
    v87(v79, v118, v85);
    result = sub_1E5A2BA64();
    if (result)
    {
      v88 = v147;
      v89 = v116;
      v116(v147, v86, v85);
      v90 = v149;
      v89(v88 + *(v149 + 48), v79, v85);
      v91 = v148;
      sub_1E58BABA0(v88, v148, &qword_1ECFFF680, &unk_1E5A3E010);
      v92 = *(v90 + 48);
      v93 = v145;
      v89(v145, v91, v85);
      v94 = v91 + v92;
      v95 = v115;
      v115(v94, v85);
      sub_1E59A8E9C(v88, v91);
      v89(v93 + *(v146 + 36), (v91 + *(v90 + 48)), v85);
      v95(v91, v85);
      sub_1E59A8F0C();
      v96 = v128;
      sub_1E5A2B164();
      sub_1E58BAD14(v93, &qword_1ECFFF688, &unk_1E5A44C60);
      sub_1E58BAD14(v83, &qword_1ECFFF668, &qword_1E5A3DFF8);
      sub_1E5A2B7F4();
      sub_1E5A2A764();
      v97 = v127;
      (*(v129 + 32))(v127, v96, v130);
      v98 = (v97 + *(v126 + 36));
      v99 = v166;
      v98[4] = v165;
      v98[5] = v99;
      v98[6] = v167;
      v100 = v162;
      *v98 = v161;
      v98[1] = v100;
      v101 = v164;
      v98[2] = v163;
      v98[3] = v101;
      v102 = v131;
      sub_1E58A35A8(v97, v131);
      v103 = v124;
      v104 = *(v124 + 16);
      v105 = v123;
      v106 = v125;
      v104(v123, v154, v125);
      LOBYTE(v89) = v170;
      v107 = v169;
      LODWORD(v153) = v168;
      v108 = v132;
      sub_1E58BABA0(v102, v132, &qword_1ECFFF678, &qword_1E5A3E008);
      v109 = v133;
      v104(v133, v105, v106);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6B0, &qword_1E5A3E028);
      v111 = &v109[*(v110 + 48)];
      *v111 = 0;
      v111[8] = v89;
      *(v111 + 2) = v137;
      v111[24] = v107;
      *(v111 + 4) = v136;
      v111[40] = v153;
      v112 = v134;
      *(v111 + 6) = v135;
      *(v111 + 7) = v112;
      sub_1E58BABA0(v108, &v109[*(v110 + 64)], &qword_1ECFFF678, &qword_1E5A3E008);
      sub_1E58BAD14(v102, &qword_1ECFFF678, &qword_1E5A3E008);
      v113 = *(v103 + 8);
      v113(v154, v106);
      sub_1E58BAD14(v108, &qword_1ECFFF678, &qword_1E5A3E008);
      return (v113)(v105, v106);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E59A8CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1E59A8D08()
{
  result = qword_1ECFFF640;
  if (!qword_1ECFFF640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF608, &qword_1E5A3DED8);
    sub_1E59A8D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF640);
  }

  return result;
}

unint64_t sub_1E59A8D94()
{
  result = qword_1ECFFF648;
  if (!qword_1ECFFF648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF650, &qword_1E5A3DFE8);
    sub_1E58CD164(&qword_1ECFFF658, &qword_1ECFFF660, &qword_1E5A3DFF0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF648);
  }

  return result;
}

unint64_t sub_1E59A8E44()
{
  result = qword_1ECFFF698;
  if (!qword_1ECFFF698)
  {
    sub_1E5A2A684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF698);
  }

  return result;
}

uint64_t sub_1E59A8E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF680, &unk_1E5A3E010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E59A8F0C()
{
  result = qword_1ECFFF6A8;
  if (!qword_1ECFFF6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF668, &qword_1E5A3DFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6A8);
  }

  return result;
}

uint64_t sub_1E59A8FB8(int a1)
{
  v2 = type metadata accessor for EditItem(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E5A2B934();

  v6 = &v5[*(v3 + 44)];
  v8 = *v6;
  v7 = *(v6 + 1);

  sub_1E59A9338(v5);
  if (v7)
  {
    v14[1] = a1;
    swift_getKeyPath();
    sub_1E5A2B934();

    v9 = *(v15 + 16) + 1;
    v10 = (v15 + 48);
    while (--v9)
    {
      if (*(v10 - 1) != v8 || v7 != *v10)
      {
        v10 += 9;
        if ((sub_1E5A2C114() & 1) == 0)
        {
          continue;
        }
      }

      v12 = sub_1E59FA5FC();

      return v12 & 1;
    }
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1E59A9188()
{
  v0 = type metadata accessor for EditItem(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  swift_getKeyPath();
  sub_1E5A2B934();

  v6 = v5[v0[6]];
  sub_1E59A9338(v5);
  if (v6 == 7)
  {
    swift_getKeyPath();
    sub_1E5A2B934();

    v7 = v2[v0[10]];
    sub_1E59A9338(v2);
    v8 = v7 == 7;
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  sub_1E5A2B934();

  v9 = *&v2[v0[9] + 8];

  sub_1E59A9338(v2);
  swift_getKeyPath();
  sub_1E5A2B934();

  v10 = v2[v0[7] + 8];
  sub_1E59A9338(v2);
  if (v8)
  {
  }

  else if (v9)
  {

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E59A9338(uint64_t a1)
{
  v2 = type metadata accessor for EditItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E59A93A4()
{
  if (*v0)
  {
    return 0x666C656873;
  }

  else
  {
    return 0x7972656C6C6167;
  }
}

uint64_t sub_1E59A93DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972656C6C6167 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x666C656873 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

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

uint64_t sub_1E59A94B4(uint64_t a1)
{
  v2 = sub_1E59A9948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A94F0(uint64_t a1)
{
  v2 = sub_1E59A9948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59A952C(uint64_t a1)
{
  v2 = sub_1E59A99F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A9568(uint64_t a1)
{
  v2 = sub_1E59A99F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59A95A4(uint64_t a1)
{
  v2 = sub_1E59A999C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A95E0(uint64_t a1)
{
  v2 = sub_1E59A999C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SectionType.hashValue.getter(char a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1 & 1);
  return sub_1E5A2C204();
}

uint64_t SectionType.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6C0, &qword_1E5A3E090);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6C8, &qword_1E5A3E098);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF6D0, &qword_1E5A3E0A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A9948();
  sub_1E5A2C224();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E59A999C();
    sub_1E5A2C024();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E59A99F0();
    sub_1E5A2C024();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1E59A9948()
{
  result = qword_1ECFFF6D8;
  if (!qword_1ECFFF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6D8);
  }

  return result;
}

unint64_t sub_1E59A999C()
{
  result = qword_1ECFFF6E0;
  if (!qword_1ECFFF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6E0);
  }

  return result;
}

unint64_t sub_1E59A99F0()
{
  result = qword_1ECFFF6E8;
  if (!qword_1ECFFF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6E8);
  }

  return result;
}

uint64_t sub_1E59A9A60@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E59A9AAC(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1E59A9AAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF730, &qword_1E5A3E400);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF738, &qword_1E5A3E408);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF740, &qword_1E5A3E410);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A9948();
  v11 = v26;
  sub_1E5A2C214();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1E5A2C004();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1E58BC5B4();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1E5A2BE84();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
    *v19 = &type metadata for SectionType;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
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
    sub_1E59A999C();
    sub_1E5A2BF44();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1E59A99F0();
    sub_1E5A2BF44();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_1E59A9F6C()
{
  result = qword_1ECFFF6F0;
  if (!qword_1ECFFF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6F0);
  }

  return result;
}

unint64_t sub_1E59AA004()
{
  result = qword_1ECFFF6F8;
  if (!qword_1ECFFF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF6F8);
  }

  return result;
}

unint64_t sub_1E59AA05C()
{
  result = qword_1ECFFF700;
  if (!qword_1ECFFF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF700);
  }

  return result;
}

unint64_t sub_1E59AA0B4()
{
  result = qword_1ECFFF708;
  if (!qword_1ECFFF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF708);
  }

  return result;
}

unint64_t sub_1E59AA10C()
{
  result = qword_1ECFFF710;
  if (!qword_1ECFFF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF710);
  }

  return result;
}

unint64_t sub_1E59AA164()
{
  result = qword_1ECFFF718;
  if (!qword_1ECFFF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF718);
  }

  return result;
}

unint64_t sub_1E59AA1BC()
{
  result = qword_1ECFFF720;
  if (!qword_1ECFFF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF720);
  }

  return result;
}

unint64_t sub_1E59AA214()
{
  result = qword_1ECFFF728;
  if (!qword_1ECFFF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF728);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutLocalState.init()@<X0>(uint64_t a1@<X8>)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v3 = *(*(active - 8) + 56);

  return v3(a1, 1, 1, active);
}

uint64_t sub_1E59AA2E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59AA358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59AA3E8(uint64_t a1)
{
  v2 = sub_1E59AA5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59AA424(uint64_t a1)
{
  v2 = sub_1E59AA5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanWorkoutLocalState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF748, &qword_1E5A3E418);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59AA5C4();
  sub_1E5A2C224();
  type metadata accessor for ActiveWorkoutPlanWorkout(0);
  sub_1E590CE9C(&qword_1ECFFD4C0, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
  sub_1E5A2C054();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E59AA5C4()
{
  result = qword_1ECFFF750;
  if (!qword_1ECFFF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF750);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutLocalState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF758, &qword_1E5A3E420);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutLocalState(0);
  MEMORY[0x1EEE9AC00](active - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59AA5C4();
  v13 = v18;
  sub_1E5A2C214();
  if (!v13)
  {
    v14 = v17;
    sub_1E590CE9C(&qword_1ECFFD500, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
    sub_1E5A2BF84();
    (*(v16 + 8))(v8, v6);
    sub_1E59AA358(v5, v11);
    sub_1E59AA8F4(v11, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E59AAF24(v11, type metadata accessor for ActiveWorkoutPlanWorkoutLocalState);
}

uint64_t type metadata accessor for ActiveWorkoutPlanWorkoutLocalState(uint64_t a1)
{
  result = qword_1ECFFF760;
  if (!qword_1ECFFF760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E59AA8F4(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutLocalState(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1E59AA970(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF748, &qword_1E5A3E418);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59AA5C4();
  sub_1E5A2C224();
  type metadata accessor for ActiveWorkoutPlanWorkout(0);
  sub_1E590CE9C(&qword_1ECFFD4C0, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
  sub_1E5A2C054();
  return (*(v3 + 8))(v5, v2);
}

BOOL _s18FitnessWorkoutPlan06ActivebcB10LocalStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v5 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF788, &qword_1E5A3E5E8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_1E59AA2E0(a1, &v19 - v12);
  sub_1E59AA2E0(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, active) != 1)
  {
    sub_1E59AA2E0(v13, v10);
    if (v16(&v13[v15], 1, active) != 1)
    {
      sub_1E5969FD8(&v13[v15], v7);
      v18 = static ActiveWorkoutPlanWorkout.== infix(_:_:)();
      sub_1E59AAF24(v7, type metadata accessor for ActiveWorkoutPlanWorkout);
      sub_1E59AAF24(v10, type metadata accessor for ActiveWorkoutPlanWorkout);
      sub_1E58BAD14(v13, &qword_1ECFFC2A0, &qword_1E5A30640);
      return (v18 & 1) != 0;
    }

    sub_1E59AAF24(v10, type metadata accessor for ActiveWorkoutPlanWorkout);
LABEL_6:
    sub_1E58BAD14(v13, &qword_1ECFFF788, &qword_1E5A3E5E8);
    return 0;
  }

  if (v16(&v13[v15], 1, active) != 1)
  {
    goto LABEL_6;
  }

  sub_1E58BAD14(v13, &qword_1ECFFC2A0, &qword_1E5A30640);
  return 1;
}

void sub_1E59AADA0(uint64_t a1)
{
  sub_1E590CF78(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1E59AAE20()
{
  result = qword_1ECFFF770;
  if (!qword_1ECFFF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF770);
  }

  return result;
}

unint64_t sub_1E59AAE78()
{
  result = qword_1ECFFF778;
  if (!qword_1ECFFF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF778);
  }

  return result;
}

unint64_t sub_1E59AAED0()
{
  result = qword_1ECFFF780;
  if (!qword_1ECFFF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF780);
  }

  return result;
}

uint64_t sub_1E59AAF24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 CreatePersonalizedWorkoutPlanButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t CreatePersonalizedWorkoutPlanButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v88 = a4;
  v81 = a3;
  v86 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC338, &unk_1E5A3E5F0);
  v80 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v74 - v7;
  v84 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v87 = *(v84 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  PersonalizedWorkoutPlanButtonAction = type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction(0);
  MEMORY[0x1EEE9AC00](PersonalizedWorkoutPlanButtonAction - 8);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v4;
  v25 = v4[1];
  v27 = v4[2];
  v26 = v4[3];
  sub_1E59AC360(v88, v23, type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC140, &qword_1E5A3B010);
  result = (*(*(v28 - 8) + 48))(v23, 2, v28);
  if (result)
  {
    if (result != 1)
    {
      result = type metadata accessor for CreatePersonalizedWorkoutPlanButtonState(0);
      v86[*(result + 24) + 1] = 1;
    }
  }

  else
  {
    v76 = v11;
    v77 = v24;
    v78 = v27;
    v88 = v25;
    v31 = v82;
    v30 = v83;
    v32 = v85;
    sub_1E58D6730(v23, v20);
    sub_1E593B564(v20, v17);
    if ((*(v87 + 48))(v17, 1, v84) == 1)
    {
      sub_1E58D67F4(v20);
      return sub_1E58D67F4(v17);
    }

    else
    {
      v84 = v26;
      v75 = v20;
      v33 = v14;
      sub_1E593CD50(v17, v14);
      v34 = v86[*(type metadata accessor for CreatePersonalizedWorkoutPlanButtonState(0) + 36)];
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v36 = v35[16];
      v37 = v35[20];
      v38 = v35[24];
      if (v34 == 1)
      {
        v39 = &v31[v38];
        v89 = 1;
        sub_1E59AB7B4();
        sub_1E5A2BE14();
        sub_1E5A2BC94();
        v40 = *MEMORY[0x1E6999B60];
        v41 = sub_1E5A2B924();
        (*(*(v41 - 8) + 104))(&v31[v36], v40, v41);
        v42 = *MEMORY[0x1E6999B40];
        v43 = sub_1E5A2B914();
        (*(*(v43 - 8) + 104))(&v31[v37], v42, v43);
        v44 = v76;
        sub_1E59AC360(v33, v76, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        v45 = (*(v87 + 80) + 48) & ~*(v87 + 80);
        v46 = v31;
        v47 = swift_allocObject();
        v48 = v78;
        v49 = v88;
        v47[2] = v77;
        v47[3] = v49;
        v50 = v84;
        v47[4] = v48;
        v47[5] = v50;
        sub_1E593CD50(v44, v47 + v45);
        *v39 = &unk_1E5A3E618;
        *(v39 + 1) = v47;
        v51 = v80;
        v52 = v32;
        (*(v80 + 104))(v31, *MEMORY[0x1E6999AD8], v32);
        v53 = v81;
        v54 = *v81;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1E58E73CC(0, v54[2] + 1, 1, v54);
        }

        v55 = v75;
        v57 = v54[2];
        v56 = v54[3];
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v54 = sub_1E58E73CC((v56 > 1), v57 + 1, 1, v54);
        }

        v59 = v33;
      }

      else
      {
        v60 = v30;
        v61 = &v30[v38];
        v90 = 0;
        sub_1E59AB7B4();
        sub_1E5A2BE14();
        sub_1E5A2BC94();
        v62 = *MEMORY[0x1E6999B50];
        v63 = sub_1E5A2B924();
        (*(*(v63 - 8) + 104))(&v60[v36], v62, v63);
        v64 = *MEMORY[0x1E6999B40];
        v65 = sub_1E5A2B914();
        (*(*(v65 - 8) + 104))(&v60[v37], v64, v65);
        v86 = v33;
        v66 = v79;
        sub_1E59AC360(v33, v79, type metadata accessor for PersonalizedWorkoutPlanCandidate);
        v67 = (*(v87 + 80) + 48) & ~*(v87 + 80);
        v46 = v60;
        v68 = swift_allocObject();
        v69 = v78;
        v70 = v88;
        v68[2] = v77;
        v68[3] = v70;
        v71 = v84;
        v68[4] = v69;
        v68[5] = v71;
        sub_1E593CD50(v66, v68 + v67);
        *v61 = &unk_1E5A3E608;
        *(v61 + 1) = v68;
        v51 = v80;
        v52 = v32;
        (*(v80 + 104))(v60, *MEMORY[0x1E6999AD8], v32);
        v53 = v81;
        v54 = *v81;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1E58E73CC(0, v54[2] + 1, 1, v54);
        }

        v55 = v75;
        v57 = v54[2];
        v72 = v54[3];
        v58 = v57 + 1;
        v59 = v86;
        if (v57 >= v72 >> 1)
        {
          v73 = v86;
          v54 = sub_1E58E73CC((v72 > 1), v57 + 1, 1, v54);
          v59 = v73;
        }
      }

      sub_1E59AC910(v59, type metadata accessor for PersonalizedWorkoutPlanCandidate);
      sub_1E58D67F4(v55);
      v54[2] = v58;
      result = (*(v51 + 32))(v54 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v57, v46, v52);
      *v53 = v54;
    }
  }

  return result;
}

unint64_t sub_1E59AB7B4()
{
  result = qword_1ECFFF790;
  if (!qword_1ECFFF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF790);
  }

  return result;
}

uint64_t sub_1E59AB808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v6[6] = swift_task_alloc();
  type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction(0);
  v6[7] = swift_task_alloc();
  sub_1E5A2BC84();
  v6[8] = sub_1E5A2BC74();
  v8 = sub_1E5A2BC54();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E59AB908, v8, v7);
}

uint64_t sub_1E59AB908()
{
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC140, &qword_1E5A3B010);
  (*(*(v2 - 8) + 56))(v1, 2, 2, v2);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFF7B8, &unk_1E5A3E758);
  *v3 = v0;
  v3[1] = sub_1E59ABA0C;
  v5 = *(v0 + 56);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E59ABA0C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  sub_1E59AC910(v2, type metadata accessor for CreatePersonalizedWorkoutPlanButtonAction);
  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E59ABB64, v4, v3);
}

uint64_t sub_1E59ABB64(double a1)
{
  v2 = v1[6];
  v3 = v1[3];
  sub_1E59AC360(v1[5], v2, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_1E59ABCBC;
  v6 = v1[6];

  return v8(v6);
}

uint64_t sub_1E59ABCBC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 104) = v0;

  sub_1E58D67F4(v3);
  v4 = *(v2 + 80);
  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1E59ABE8C;
  }

  else
  {
    v6 = sub_1E59ABE14;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1E59ABE14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59ABE8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59ABF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v6[5] = swift_task_alloc();
  sub_1E5A2BC84();
  v6[6] = sub_1E5A2BC74();
  v8 = sub_1E5A2BC54();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E59ABFD8, v8, v7);
}

uint64_t sub_1E59ABFD8(double a1)
{
  v2 = v1[5];
  v3 = v1[2];
  sub_1E59AC360(v1[4], v2, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_1E59AC130;
  v6 = v1[5];

  return v8(v6);
}

uint64_t sub_1E59AC130()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  sub_1E58D67F4(v3);
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1E59AC2F4;
  }

  else
  {
    v6 = sub_1E59AC288;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1E59AC288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59AC2F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59AC360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59AC3C8(uint64_t a1)
{
  v4 = *(type metadata accessor for PersonalizedWorkoutPlanCandidate(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E58CD5C8;

  return sub_1E59ABF04(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for PersonalizedWorkoutPlanCandidate(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);

  v3 = sub_1E5A29E74();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);

  v5 = v0 + v2 + v1[11];
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v4(v5 + *(v6 + 20), v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1E59AC678(uint64_t a1)
{
  v4 = *(type metadata accessor for PersonalizedWorkoutPlanCandidate(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E58CECB4;

  return sub_1E59AB808(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1E59AC850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E59AC8BC()
{
  result = qword_1ECFFF7B0;
  if (!qword_1ECFFF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF7B0);
  }

  return result;
}

uint64_t sub_1E59AC910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArchivedWorkoutPlansFeature.init(environment:sectionType:fetchItemForPlaceholders:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a1[3];
  *(a8 + 32) = a1[2];
  *(a8 + 48) = v17;
  v18 = a1[5];
  *(a8 + 64) = a1[4];
  *(a8 + 80) = v18;
  v19 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v19;
  *(a8 + 104) = a2 & 1;
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  sub_1E5A2A124();
  swift_getWitnessTable();
  sub_1E5A2A154();
  sub_1E5A2A264();

  sub_1E5A2A254();
  v20 = sub_1E5A2A144();

  *(a8 + 96) = v20;
  return result;
}

uint64_t ArchivedWorkoutPlansFeature.environment.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v26 = v2[2];
  v27 = v4;
  v6 = v2[5];
  v28 = v2[4];
  v5 = v28;
  v29 = v6;
  v8 = v2[1];
  v25[0] = *v2;
  v7 = v25[0];
  v25[1] = v8;
  a2[2] = v26;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  *a2 = v7;
  a2[1] = v8;
  v9 = sub_1E5A2A374();
  v23 = a1[2];
  v10 = sub_1E5A2A314();
  v11 = a1[3];
  v12 = a1[7];
  v13 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v14 = a1[8];
  v15 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v16 = sub_1E58B1C48();
  v17 = sub_1E58B1C9C();
  v18 = sub_1E58B1CF0();
  v19 = a1[9];
  v20 = a1[13];
  v24[0] = v9;
  v24[1] = v23;
  v24[2] = v10;
  v24[3] = &type metadata for WorkoutPlanItemContext;
  v24[4] = v11;
  v24[5] = v12;
  v24[6] = v13;
  v24[7] = v14;
  v24[8] = v15;
  v24[9] = v16;
  v24[10] = v17;
  v24[11] = v18;
  v24[12] = v19;
  v24[13] = v20;
  v21 = type metadata accessor for ArchivedWorkoutPlansEnvironment(0, v24);
  return (*(*(v21 - 8) + 16))(v24, v25, v21);
}

BOOL sub_1E59ACD58(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a2 >> 5;
  if (v4 > 3)
  {
    v11 = a4 & 0xE0;
    v12 = ((a3 ^ a1) & 1) == 0;
    if (v11 != 192)
    {
      v12 = 0;
    }

    v13 = a4 > 0xDFu && ((a3 ^ a1) & 1) == 0;
    if (v4 == 6)
    {
      v13 = v12;
    }

    v14 = ((a3 ^ a1) & 1) == 0;
    if (v11 != 128)
    {
      v14 = 0;
    }

    v15 = v11 == 160 && ((a3 ^ a1) & 1) == 0;
    if (v4 == 4)
    {
      v15 = v14;
    }

    if ((a2 >> 5) <= 5u)
    {
      return v15;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    v5 = a4 & 0xE0;
    v6 = ((a3 ^ a1) & 1) == 0;
    if (v5 != 64)
    {
      v6 = 0;
    }

    v7 = ((a3 ^ a1) & 1) == 0;
    if (v5 != 96)
    {
      v7 = 0;
    }

    if (v4 != 2)
    {
      v6 = v7;
    }

    v8 = ((a3 ^ a1) & 1) == 0;
    if (a4 >= 0x20u)
    {
      v8 = 0;
    }

    v9 = ((a4 ^ a2) & 1) == 0;
    if (a1 != a3)
    {
      v9 = 0;
    }

    if (v5 != 32)
    {
      v9 = 0;
    }

    if (!(a2 >> 5))
    {
      v9 = v8;
    }

    if ((a2 >> 5) <= 1u)
    {
      return v9;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1E59ACE54(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3 >> 5;
  if (v4 > 3)
  {
    if ((a3 >> 5) > 5u)
    {
      if (v4 == 6)
      {
        v5 = 6;
      }

      else
      {
        v5 = 7;
      }
    }

    else if (v4 == 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    goto LABEL_16;
  }

  if ((a3 >> 5) > 1u)
  {
    if (v4 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    goto LABEL_16;
  }

  if (!(a3 >> 5))
  {
    v5 = 0;
LABEL_16:
    MEMORY[0x1E6932DE0](v5);
    v7 = a2 & 1;
    return MEMORY[0x1E6932DE0](v7);
  }

  MEMORY[0x1E6932DE0](1);
  MEMORY[0x1E6932DE0](a2);
  v7 = a3 & 1;
  return MEMORY[0x1E6932DE0](v7);
}

uint64_t sub_1E59ACF14(uint64_t a1, unsigned __int8 a2)
{
  sub_1E5A2C1B4();
  sub_1E59ACE54(v5, a1, a2);
  return sub_1E5A2C204();
}

uint64_t sub_1E59ACFB4(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E59ACE54(v3, *v1, *(v1 + 8));
  return sub_1E5A2C204();
}

uint64_t ArchivedWorkoutPlansFeature.reduce(localState:sharedState:sideEffects:action:)(char *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v268 = a4;
  v265 = a3;
  v266 = a2;
  v258 = a1;
  v7 = sub_1E5A2A024();
  v261 = *(v7 - 8);
  v262 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v259 = &v245 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = v8;
  MEMORY[0x1EEE9AC00](v9);
  WitnessTable = &v245 - v10;
  v12 = a5[2];
  v11 = a5[3];
  v13 = a5[5];
  v14 = a5[7];
  v15 = a5[8];
  v16 = sub_1E58B1C48();
  v17 = sub_1E58B1C9C();
  v18 = sub_1E58B1CF0();
  v19 = a5[9];
  v20 = a5[11];
  v270 = a5;
  v21 = a5[13];
  v276 = v12;
  v277 = v11;
  v279 = v12;
  v280 = &type metadata for WorkoutPlanItemContext;
  v281 = v11;
  v282 = v13;
  v278 = v13;
  v274 = v14;
  v275 = v19;
  v283 = v14;
  v284 = v15;
  v271 = v15;
  v272 = v21;
  v256 = v17;
  v257 = v16;
  v285 = v16;
  v286 = v17;
  v22 = v18;
  v287 = v18;
  v288 = v19;
  v273 = v20;
  v289 = v20;
  v290 = v21;
  v23 = type metadata accessor for ArchivedWorkoutPlansAction(255, &v279);
  v267 = sub_1E5A2B8C4();
  v269 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v264 = &v245 - v24;
  v25 = sub_1E5A2A1F4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v255 = &v245 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v245 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v245 - v32;
  v34 = v5[5];
  v303 = v5[4];
  *v304 = v34;
  *&v304[9] = *(v5 + 89);
  v35 = v5[1];
  v299 = *v5;
  v300 = v35;
  v36 = v5[3];
  v301 = v5[2];
  v302 = v36;
  (*(v37 + 16))(&v245 - v32, v268, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v44 = v259;
    v45 = v262;
    v46 = v261;
    if (!EnumCaseMultiPayload)
    {
      v104 = *v33;
      v105 = WitnessTable;
      MEMORY[0x1E6930C30](*v33, 0);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v266 = v106[12];
      v107 = v106[16];
      v268 = v106[20];
      v108 = v264;
      v258 = &v264[v106[24]];
      v297 = v104;
      v298 = v304[24] | 0x20;
      v109 = v270;
      v110 = v270[4];
      v253 = v107;
      v254 = v110;
      v111 = v270[10];
      v255 = v270[6];
      v256 = v111;
      v257 = v270[12];
      v279 = v276;
      v280 = v277;
      v281 = v110;
      v282 = v278;
      v283 = v255;
      v112 = v274;
      v284 = v274;
      v285 = v271;
      v286 = v275;
      v287 = v111;
      v288 = v273;
      v289 = v257;
      v290 = v272;
      type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier(0, &v279);
      swift_getWitnessTable();
      sub_1E5A2BF24();
      v113 = *MEMORY[0x1E6999B60];
      v114 = sub_1E5A2B924();
      (*(*(v114 - 8) + 104))(&v108[v253], v113, v114);
      v46[2](v44, v105, v45);
      v115 = (*(v46 + 80) + 217) & ~*(v46 + 80);
      v116 = swift_allocObject();
      v117 = v277;
      *(v116 + 16) = v276;
      *(v116 + 24) = v117;
      v118 = v278;
      *(v116 + 32) = v254;
      *(v116 + 40) = v118;
      *(v116 + 48) = v255;
      *(v116 + 56) = v112;
      v119 = v275;
      *(v116 + 64) = v271;
      *(v116 + 72) = v119;
      v120 = v273;
      *(v116 + 80) = v256;
      *(v116 + 88) = v120;
      v121 = v272;
      *(v116 + 96) = v257;
      *(v116 + 104) = v121;
      v122 = *v304;
      *(v116 + 176) = v303;
      *(v116 + 192) = v122;
      *(v116 + 201) = *&v304[9];
      v123 = v300;
      *(v116 + 112) = v299;
      *(v116 + 128) = v123;
      v124 = v302;
      *(v116 + 144) = v301;
      *(v116 + 160) = v124;
      v46[4](v116 + v115, v44, v45);
      v125 = v258;
      *v258 = &unk_1E5A3E7D0;
      *(v125 + 1) = v116;
      (*(*(v109 - 1) + 16))(&v279, &v299, v109);
      sub_1E5A2BC94();
      v126 = *MEMORY[0x1E6999B48];
      v127 = sub_1E5A2B914();
      (*(*(v127 - 8) + 104))(&v108[v268], v126, v127);
      (*(v269 + 104))(v108, *MEMORY[0x1E6999AD8], v267);
      sub_1E5A2BC44();
      sub_1E5A2BC34();
      return (v46[1])(WitnessTable, v45);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v128 = sub_1E5A2A374();
      v129 = sub_1E5A2A314();
      v130 = sub_1E5A2A384();
      v131 = sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
      v132 = sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
      v133 = sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
      v279 = v128;
      v280 = v276;
      v281 = v129;
      v134 = v278;
      v282 = &type metadata for WorkoutPlanItemContext;
      v283 = v277;
      v284 = v278;
      v285 = v130;
      v135 = v273;
      v136 = v274;
      v286 = v274;
      v287 = v131;
      v137 = v272;
      v288 = v271;
      v289 = v132;
      v290 = v257;
      v291 = v256;
      v292 = v22;
      v293 = v275;
      v294 = v273;
      v295 = v133;
      v296 = v272;
      sub_1E5A2A244();
      v138 = sub_1E5A2BD84();
      (*(*(v138 - 8) + 40))(v258, v33, v138);
      v139 = v270[6];
      v140 = v270[10];
      v141 = v270[12];
      v279 = v270[4];
      v280 = v134;
      v281 = v139;
      v282 = v136;
      v283 = v140;
      v284 = v135;
      v285 = v141;
      v286 = v137;
      result = type metadata accessor for ArchivedWorkoutPlansState(0, &v279);
      *(v266 + *(result + 88)) = 3;
      return result;
    }

    v47 = *(v33 + 1);
    v262 = *v33;
    WitnessTable = v47;
    LODWORD(v268) = v33[16];
    v48 = v270;
    v49 = v270[4];
    v50 = v270[6];
    v51 = v270[10];
    v52 = v270[12];
    v53 = v278;
    v279 = v49;
    v280 = v278;
    v55 = v273;
    v54 = v274;
    v281 = v50;
    v282 = v274;
    v283 = v51;
    v284 = v273;
    v56 = v272;
    v285 = v52;
    v286 = v272;
    v57 = type metadata accessor for ArchivedWorkoutPlansState(0, &v279);
    if (*(v266 + *(v57 + 88)) != 3)
    {
      return sub_1E591CB8C(v262, WitnessTable);
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v59 = v58[12];
    v259 = v58[16];
    v266 = v58[20];
    v60 = v53;
    v61 = v264;
    v260 = &v264[v58[24]];
    v261 = v59;
    v297 = v304[24];
    v298 = 96;
    v279 = v276;
    v280 = v277;
    v281 = v49;
    v282 = v60;
    v283 = v50;
    v284 = v54;
    v62 = v271;
    v285 = v271;
    v286 = v275;
    v287 = v51;
    v288 = v55;
    v289 = v52;
    v290 = v56;
    type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier(0, &v279);
    v63 = v55;
    swift_getWitnessTable();
    sub_1E5A2BF24();
    v64 = *MEMORY[0x1E6999B50];
    v65 = sub_1E5A2B924();
    (*(*(v65 - 8) + 104))(&v61[v259], v64, v65);
    v66 = swift_allocObject();
    v67 = v277;
    *(v66 + 16) = v276;
    *(v66 + 24) = v67;
    v68 = v278;
    *(v66 + 32) = v49;
    *(v66 + 40) = v68;
    v70 = v274;
    v69 = v275;
    *(v66 + 48) = v50;
    *(v66 + 56) = v70;
    *(v66 + 64) = v62;
    *(v66 + 72) = v69;
    *(v66 + 80) = v51;
    *(v66 + 88) = v63;
    v71 = v272;
    *(v66 + 96) = v52;
    *(v66 + 104) = v71;
    v72 = *v304;
    *(v66 + 176) = v303;
    *(v66 + 192) = v72;
    *(v66 + 201) = *&v304[9];
    v73 = v300;
    *(v66 + 112) = v299;
    *(v66 + 128) = v73;
    v74 = v302;
    *(v66 + 144) = v301;
    *(v66 + 160) = v74;
    v75 = WitnessTable;
    *(v66 + 224) = v262;
    *(v66 + 232) = v75;
    *(v66 + 240) = v268;
    v76 = v260;
    *v260 = &unk_1E5A3E7C0;
    *(v76 + 1) = v66;
    (*(*(v48 - 1) + 16))(&v279, &v299, v48);
    sub_1E5A2BC94();
    v77 = *MEMORY[0x1E6999B48];
    v78 = sub_1E5A2B914();
    (*(*(v78 - 8) + 104))(&v61[v266], v77, v78);
    (*(v269 + 104))(v61, *MEMORY[0x1E6999AD8], v267);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v39 = v270;
    if (EnumCaseMultiPayload == 3)
    {
      v40 = v270[6];
      v41 = v270[10];
      v42 = v270[12];
      v279 = v270[4];
      v280 = v278;
      v281 = v40;
      v282 = v274;
      v283 = v41;
      v284 = v273;
      v285 = v42;
      v286 = v272;
      result = type metadata accessor for ArchivedWorkoutPlansState(0, &v279);
      *(v266 + *(result + 88)) = 0;
    }

    else
    {
      v142 = *(v26 + 16);
      v260 = (v26 + 16);
      v261 = v142;
      (v142)(v30, v266, v25);
      v279 = v276;
      v143 = v278;
      v280 = &type metadata for WorkoutPlanItemContext;
      v281 = v277;
      v282 = v278;
      v283 = v274;
      v144 = v274;
      v284 = v271;
      v285 = v257;
      v286 = v256;
      v287 = v22;
      v259 = v25;
      v145 = v273;
      v288 = v275;
      v289 = v273;
      v268 = v30;
      v146 = v272;
      v290 = v272;
      v147 = type metadata accessor for ArchivedWorkoutPlansLocalState(0, &v279);
      v148 = v39[4];
      v262 = *&v258[*(v147 + 116)];
      WitnessTable = v148;
      v149 = v39[6];
      v150 = v39[10];
      v151 = v39[12];
      v279 = v148;
      v280 = v143;
      v281 = v149;
      v282 = v144;
      v152 = v144;
      v283 = v150;
      v284 = v145;
      v153 = v150;
      v257 = v150;
      v258 = v151;
      v285 = v151;
      v286 = v146;
      v154 = v151;
      v155 = type metadata accessor for ArchivedWorkoutPlansState(0, &v279);
      *(v266 + *(v155 + 88)) = 2;
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v157 = v156[16];
      v252 = v156[12];
      v253 = v157;
      v254 = v156[20];
      v158 = v156[24];
      v256 = v26;
      v159 = v264;
      v266 = &v264[v158];
      v297 = v304[24];
      v298 = 0;
      v279 = v276;
      v280 = v277;
      v281 = WitnessTable;
      v282 = v143;
      v283 = v149;
      v284 = v152;
      v285 = v271;
      v286 = v275;
      v287 = v153;
      v288 = v145;
      v289 = v154;
      v290 = v146;
      type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier(0, &v279);
      swift_getWitnessTable();
      sub_1E5A2BF24();
      sub_1E5A2BC94();
      v160 = *MEMORY[0x1E6999B60];
      v161 = sub_1E5A2B924();
      (*(*(v161 - 8) + 104))(&v159[v253], v160, v161);
      v162 = *MEMORY[0x1E6999B48];
      v163 = sub_1E5A2B914();
      (*(*(v163 - 8) + 104))(&v254[v159], v162, v163);
      v164 = v255;
      v165 = v259;
      (v261)(v255, v268, v259);
      v166 = v256;
      v167 = (*(v256 + 80) + 232) & ~*(v256 + 80);
      v168 = swift_allocObject();
      v169 = v277;
      *(v168 + 16) = v276;
      *(v168 + 24) = v169;
      v170 = v278;
      *(v168 + 32) = WitnessTable;
      *(v168 + 40) = v170;
      v171 = v274;
      *(v168 + 48) = v149;
      *(v168 + 56) = v171;
      v172 = v275;
      *(v168 + 64) = v271;
      *(v168 + 72) = v172;
      v173 = v273;
      *(v168 + 80) = v257;
      *(v168 + 88) = v173;
      *(v168 + 96) = v258;
      *(v168 + 104) = v146;
      v174 = *v304;
      *(v168 + 176) = v303;
      *(v168 + 192) = v174;
      *(v168 + 201) = *&v304[9];
      v175 = v300;
      *(v168 + 112) = v299;
      *(v168 + 128) = v175;
      v176 = v302;
      *(v168 + 144) = v301;
      *(v168 + 160) = v176;
      *(v168 + 224) = v262;
      (*(v166 + 32))(v168 + v167, v164, v165);
      v177 = v266;
      *v266 = &unk_1E5A3E7E0;
      *(v177 + 8) = v168;
      (*(v269 + 104))(v159, *MEMORY[0x1E6999AD8], v267);
      (*(*(v270 - 1) + 16))(&v279, &v299);
      sub_1E5A2BC44();
      sub_1E5A2BC34();
      return (*(v166 + 8))(v268, v165);
    }

    return result;
  }

  v79 = v270;
  if (EnumCaseMultiPayload == 5)
  {
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v81 = v80[16];
    v258 = v80[12];
    v259 = v81;
    v82 = v80[20];
    v83 = v264;
    v268 = &v264[v80[24]];
    v297 = v304[24];
    v298 = 64;
    v84 = v79[4];
    v260 = v82;
    v261 = v84;
    v85 = v79[10];
    v262 = v79[6];
    WitnessTable = v85;
    v266 = v79[12];
    v279 = v276;
    v280 = v277;
    v86 = v278;
    v281 = v84;
    v282 = v278;
    v87 = v274;
    v88 = v275;
    v283 = v262;
    v284 = v274;
    v89 = v271;
    v90 = v272;
    v285 = v271;
    v286 = v275;
    v91 = v273;
    v287 = v85;
    v288 = v273;
    v289 = v266;
    v290 = v272;
    type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier(0, &v279);
    swift_getWitnessTable();
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    v92 = *MEMORY[0x1E6999B50];
    v93 = sub_1E5A2B924();
    (*(*(v93 - 8) + 104))(&v83[v259], v92, v93);
    v94 = *MEMORY[0x1E6999B48];
    v95 = sub_1E5A2B914();
    (*(*(v95 - 8) + 104))(&v260[v83], v94, v95);
    v96 = swift_allocObject();
    v97 = v277;
    *(v96 + 16) = v276;
    *(v96 + 24) = v97;
    v98 = v262;
    *(v96 + 32) = v261;
    *(v96 + 40) = v86;
    *(v96 + 48) = v98;
    *(v96 + 56) = v87;
    *(v96 + 64) = v89;
    *(v96 + 72) = v88;
    *(v96 + 80) = WitnessTable;
    *(v96 + 88) = v91;
    *(v96 + 96) = v266;
    *(v96 + 104) = v90;
    v99 = *v304;
    *(v96 + 176) = v303;
    *(v96 + 192) = v99;
    *(v96 + 201) = *&v304[9];
    v100 = v300;
    *(v96 + 112) = v299;
    *(v96 + 128) = v100;
    v101 = v302;
    *(v96 + 144) = v301;
    *(v96 + 160) = v101;
    v102 = v268;
    v103 = v269;
    *v268 = &unk_1E5A3E7B0;
    *(v102 + 8) = v96;
    (*(v103 + 104))(v83, *MEMORY[0x1E6999AD8], v267);
    (*(*(v79 - 1) + 16))(&v279, &v299, v79);
LABEL_11:
    sub_1E5A2BC44();
    return sub_1E5A2BC34();
  }

  v178 = v270[4];
  v179 = v270[6];
  v180 = v270[10];
  v181 = v270[12];
  v279 = v178;
  v280 = v278;
  v182 = v273;
  v281 = v179;
  v282 = v274;
  v283 = v180;
  v284 = v273;
  v183 = v181;
  v184 = v272;
  v285 = v181;
  v286 = v272;
  result = type metadata accessor for ArchivedWorkoutPlansState(0, &v279);
  v185 = *(result + 88);
  if (*(v266 + *(result + 104)) != 1 || *(v266 + v185) == 1)
  {
    *(v266 + v185) = 2;
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v187 = v182;
    v188 = v178;
    v252 = v179;
    v253 = v178;
    v189 = v186;
    v256 = v186[16];
    v190 = v179;
    v257 = v186[20];
    v191 = v264;
    v258 = &v264[v186[24]];
    v268 = v304[24];
    v297 = v304[24];
    v298 = -32;
    v193 = v276;
    v192 = v277;
    v279 = v276;
    v280 = v277;
    v281 = v188;
    v282 = v278;
    v283 = v190;
    v284 = v274;
    v285 = v271;
    v286 = v275;
    v287 = v180;
    v288 = v187;
    v251 = v183;
    v289 = v183;
    v290 = v184;
    v266 = type metadata accessor for ArchivedWorkoutPlansFeature.TaskIdentifier(0, &v279);
    WitnessTable = swift_getWitnessTable();
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    LODWORD(v261) = *MEMORY[0x1E6999B60];
    v194 = v261;
    v260 = sub_1E5A2B924();
    v195 = *(v260 - 1);
    v259 = *(v195 + 104);
    v262 = v195 + 104;
    (v259)(&v191[v256], v194, v260);
    v196 = *MEMORY[0x1E6999B40];
    v255 = sub_1E5A2B914();
    v197 = *(v255 - 1);
    v254 = *(v197 + 104);
    v256 = v197 + 104;
    (v254)(&v191[v257], v196, v255);
    v198 = swift_allocObject();
    v198[2] = v193;
    v198[3] = v192;
    v200 = v252;
    v199 = v253;
    v201 = v278;
    v198[4] = v253;
    v198[5] = v201;
    v202 = v274;
    v198[6] = v200;
    v198[7] = v202;
    v203 = v275;
    v198[8] = v271;
    v198[9] = v203;
    v204 = v273;
    v198[10] = v180;
    v198[11] = v204;
    v205 = v272;
    v198[12] = v251;
    v198[13] = v205;
    v206 = v258;
    *v258 = &unk_1E5A3E770;
    *(v206 + 1) = v198;
    LODWORD(v258) = *MEMORY[0x1E6999AD8];
    v207 = *(v269 + 104);
    v269 += 104;
    v257 = v207;
    v207(v191);
    v250 = sub_1E5A2BC44();
    sub_1E5A2BC34();
    v208 = v189[16];
    v209 = v189[20];
    v247 = &v191[v189[24]];
    v248 = v180;
    v297 = v268;
    v298 = 0x80;
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    (v259)(&v191[v208], v261, v260);
    v249 = *MEMORY[0x1E6999B48];
    (v254)(&v191[v209]);
    v210 = swift_allocObject();
    v211 = v277;
    *(v210 + 16) = v276;
    *(v210 + 24) = v211;
    *(v210 + 32) = v199;
    *(v210 + 40) = v201;
    *(v210 + 48) = v200;
    v213 = v274;
    v212 = v275;
    v214 = v271;
    *(v210 + 56) = v274;
    *(v210 + 64) = v214;
    *(v210 + 72) = v212;
    *(v210 + 80) = v180;
    v215 = v272;
    v216 = v251;
    *(v210 + 88) = v273;
    *(v210 + 96) = v216;
    *(v210 + 104) = v215;
    v217 = *v304;
    *(v210 + 176) = v303;
    *(v210 + 192) = v217;
    *(v210 + 201) = *&v304[9];
    v218 = v300;
    *(v210 + 112) = v299;
    *(v210 + 128) = v218;
    v219 = v302;
    *(v210 + 144) = v301;
    *(v210 + 160) = v219;
    v220 = v247;
    *v247 = &unk_1E5A3E780;
    *(v220 + 1) = v210;
    (v257)(v191, v258, v267);
    v221 = *(v270 - 1);
    v246 = *(v221 + 16);
    v247 = (v221 + 16);
    v246(&v279, &v299);
    sub_1E5A2BC34();
    v222 = v189[16];
    v223 = v189[20];
    v245 = &v191[v189[24]];
    v297 = v268;
    v298 = -96;
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    (v259)(&v191[v222], v261, v260);
    (v254)(&v191[v223], v249, v255);
    v224 = swift_allocObject();
    v225 = v277;
    *(v224 + 16) = v276;
    *(v224 + 24) = v225;
    v226 = v278;
    *(v224 + 32) = v253;
    *(v224 + 40) = v226;
    *(v224 + 48) = v252;
    *(v224 + 56) = v213;
    v227 = v275;
    *(v224 + 64) = v214;
    *(v224 + 72) = v227;
    v228 = v272;
    v229 = v273;
    *(v224 + 80) = v248;
    *(v224 + 88) = v229;
    *(v224 + 96) = v216;
    *(v224 + 104) = v228;
    v230 = *v304;
    *(v224 + 176) = v303;
    *(v224 + 192) = v230;
    *(v224 + 201) = *&v304[9];
    v231 = v300;
    *(v224 + 112) = v299;
    *(v224 + 128) = v231;
    v232 = v302;
    *(v224 + 144) = v301;
    *(v224 + 160) = v232;
    v233 = v245;
    *v245 = &unk_1E5A3E790;
    *(v233 + 1) = v224;
    (v257)(v191, v258, v267);
    (v246)(&v279, &v299, v270);
    sub_1E5A2BC34();
    v234 = v189[16];
    v235 = v189[20];
    v236 = &v191[v189[24]];
    v297 = v268;
    v298 = -64;
    sub_1E5A2BF24();
    sub_1E5A2BC94();
    (v259)(&v191[v234], v261, v260);
    (v254)(&v191[v235], v249, v255);
    v237 = swift_allocObject();
    v238 = v277;
    *(v237 + 16) = v276;
    *(v237 + 24) = v238;
    v239 = v278;
    *(v237 + 32) = v253;
    *(v237 + 40) = v239;
    v240 = v274;
    *(v237 + 48) = v252;
    *(v237 + 56) = v240;
    v241 = v275;
    *(v237 + 64) = v271;
    *(v237 + 72) = v241;
    *(v237 + 80) = v248;
    *(v237 + 88) = v229;
    *(v237 + 96) = v251;
    *(v237 + 104) = v228;
    v242 = *v304;
    *(v237 + 176) = v303;
    *(v237 + 192) = v242;
    *(v237 + 201) = *&v304[9];
    v243 = v300;
    *(v237 + 112) = v299;
    *(v237 + 128) = v243;
    v244 = v302;
    *(v237 + 144) = v301;
    *(v237 + 160) = v244;
    *v236 = &unk_1E5A3E7A0;
    *(v236 + 1) = v237;
    (v257)(v191, v258, v267);
    (v246)(&v279, &v299, v270);
    return sub_1E5A2BC34();
  }

  return result;
}