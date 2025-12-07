uint64_t RegularViewPlansBannerView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E58D2CB8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t RegularViewPlansBannerView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = sub_1E5A2A934();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA80, &unk_1E5A3F380);
  sub_1E59D2868(v4, v5, v6, a2 + *(v7 + 44));
  v8 = sub_1E5A2B7E4();
  v10 = v9;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v11 + 32) = sub_1E5A2B744();
  *(v11 + 40) = v12;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v11 + 48) = sub_1E5A2B744();
  *(v11 + 56) = v13;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA88, &qword_1E5A3F390) + 36);
  *v14 = v22;
  *(v14 + 24) = v24;
  *(v14 + 8) = v23;
  *(v14 + 40) = v8;
  *(v14 + 48) = v10;
  sub_1E5A2A094();
  v16 = v15;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA90, &unk_1E5A3F398) + 36));
  v18 = *(sub_1E5A2A754() + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E5A2A9B4();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  *v17 = v16;
  *(v17 + 1) = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170);
  *&v17[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1E59D2868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a2;
  v34 = a4;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAC8, &qword_1E5A3F4A0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = sub_1E5A2B4B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAD0, &qword_1E5A3F4A8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  type metadata accessor for WorkoutPlansBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1E5A2B4F4();
  (*(v12 + 104))(v14, *MEMORY[0x1E6981630], v11);
  v23 = sub_1E5A2B4E4();

  (*(v12 + 8))(v14, v11);
  v35 = v23;
  v36 = 0x3FFC71C71C71C71CLL;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAD8, &qword_1E5A3F4B0);
  sub_1E59D2DF8();
  sub_1E5A2B214();

  *v10 = sub_1E5A2AA34();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAE8, &qword_1E5A3F4B8);
  sub_1E59D2E7C(v31, v33, v32 & 1, &v10[*(v24 + 44)]);
  v25 = sub_1E5A2AD94();
  v26 = &v10[*(v5 + 44)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_1E58BABA0(v20, v17, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  sub_1E58A54C8(v10, v7);
  v27 = v34;
  sub_1E58BABA0(v17, v34, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAF0, &unk_1E5A3F4C0);
  sub_1E58A54C8(v7, v27 + *(v28 + 48));
  sub_1E58A5538(v10);
  sub_1E58BAD14(v20, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  sub_1E58A5538(v7);
  return sub_1E58BAD14(v17, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
}

unint64_t sub_1E59D2C5C()
{
  result = qword_1ECFFFA98;
  if (!qword_1ECFFFA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFA90, &unk_1E5A3F398);
    sub_1E59D2D14();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFA98);
  }

  return result;
}

unint64_t sub_1E59D2D14()
{
  result = qword_1ECFFFAA0;
  if (!qword_1ECFFFAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFA88, &qword_1E5A3F390);
    sub_1E58CD164(&qword_1ECFFFAA8, &qword_1ECFFFAB0, &qword_1E5A3F490, MEMORY[0x1E69817F8]);
    sub_1E58CD164(&qword_1ECFFFAB8, &qword_1ECFFFAC0, &qword_1E5A3F498, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFAA0);
  }

  return result;
}

unint64_t sub_1E59D2DF8()
{
  result = qword_1ECFFFAE0;
  if (!qword_1ECFFFAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFAD8, &qword_1E5A3F4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFAE0);
  }

  return result;
}

uint64_t sub_1E59D2E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v94 = a1;
  v95 = a2;
  v122 = a4;
  v5 = sub_1E5A2BA14();
  v120 = *(v5 - 8);
  v121 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v119 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v116 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v112 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v129 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = &v93 - v16;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF68, &unk_1E5A3C4E0);
  v106 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v103 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAF8, &unk_1E5A43CB0);
  v113 = *(v18 - 8);
  v114 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v93 - v19;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB00, &unk_1E5A3F4D0);
  v118 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v117 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v93 - v22;
  v125 = sub_1E5A2AEB4();
  v105 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v104 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E5A2A9E4();
  v109 = *(v24 - 8);
  v110 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB08, &unk_1E5A43CC0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v130 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v93 - v30;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB10, &qword_1E5A3F4E0);
  v32 = sub_1E58CD164(&qword_1ECFFFB18, &qword_1ECFFFB10, &qword_1E5A3F4E0, MEMORY[0x1E6999B78]);
  v123 = a3 & 1;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v33 = sub_1E5A2AFA4();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v146 = v33;
  v147 = v35;
  LOBYTE(v148) = v37 & 1;
  v149 = v39;
  sub_1E5A2A9D4();
  v126 = v31;
  sub_1E5A2B264();
  (*(v109 + 8))(v26, v110);
  sub_1E58B3C9C(v33, v35, v37 & 1);

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v109 = v142;
  v110 = v140;
  v107 = v145;
  v108 = v144;
  v154 = 1;
  v153 = v141;
  v152 = v143;
  v41 = v94;
  v40 = v95;
  v101 = v32;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2AE04();
  v43 = v104;
  v42 = v105;
  v44 = v125;
  (*(v105 + 104))(v104, *MEMORY[0x1E6980EA8], v125);
  sub_1E5A2AEE4();

  (*(v42 + 8))(v43, v44);
  v45 = sub_1E5A2AFA4();
  v47 = v46;
  LOBYTE(v44) = v48;

  LODWORD(v146) = sub_1E5A2ABA4();
  v49 = sub_1E5A2AF84();
  v104 = v50;
  v105 = v49;
  v102 = v51;
  v125 = v52;
  sub_1E58B3C9C(v45, v47, v44 & 1);

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v99 = v148;
  v100 = v146;
  v97 = v151;
  v98 = v150;
  v157 = 1;
  v156 = v147;
  v155 = v149;
  v53 = swift_allocObject();
  *(v53 + 16) = v41;
  *(v53 + 24) = v40;
  v54 = v123;
  *(v53 + 32) = v123;
  v133 = v41;
  v134 = v40;
  v135 = v54;
  sub_1E596AC08(v41, v40);
  v55 = v103;
  sub_1E5A2B574();
  v56 = sub_1E58CD164(&qword_1ECFFFB20, &qword_1ECFFEF68, &unk_1E5A3C4E0, MEMORY[0x1E697D680]);
  v57 = sub_1E59D4040();
  v58 = v127;
  v96 = v56;
  sub_1E5A2B0B4();
  (*(v106 + 8))(v55, v58);
  sub_1E5A2B9A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A3C8E0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v60 = qword_1EE2D33E0;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  v61 = sub_1E5A2BB64();
  v62 = MEMORY[0x1E69E6158];
  *(inited + 48) = v61;
  *(inited + 56) = v63;
  *(inited + 72) = v62;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x6E6F74747562;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v62;
  *(inited + 128) = 0x6973736572706D69;
  v64 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = 0;
  *(inited + 168) = v64;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v65 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v65);
  v66 = v115;
  sub_1E5A2B9D4();
  v67 = sub_1E5A2B9E4();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = v119;
  sub_1E5A2B9F4();
  v136 = v127;
  v137 = &type metadata for CustomPlanBannerButtonStyle;
  v138 = v96;
  v139 = v57;
  swift_getOpaqueTypeConformance2();
  v69 = v131;
  v70 = v114;
  v71 = v128;
  sub_1E5A2B014();
  (*(v120 + 8))(v68, v121);
  sub_1E58BAD14(v66, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v113 + 8))(v71, v70);
  v72 = v130;
  sub_1E58BABA0(v126, v130, &qword_1ECFFFB08, &unk_1E5A43CC0);
  LOBYTE(v70) = v154;
  v73 = v153;
  v74 = v152;
  LODWORD(v127) = v157;
  LODWORD(v128) = v156;
  LODWORD(v129) = v155;
  v76 = v117;
  v75 = v118;
  v77 = *(v118 + 16);
  v77(v117, v69, v132);
  v78 = v72;
  v79 = v122;
  sub_1E58BABA0(v78, v122, &qword_1ECFFFB08, &unk_1E5A43CC0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB30, &unk_1E5A43D40);
  v81 = v79 + v80[12];
  *v81 = 0;
  *(v81 + 8) = v70;
  v82 = v109;
  *(v81 + 16) = v110;
  *(v81 + 24) = v73;
  *(v81 + 32) = v82;
  *(v81 + 40) = v74;
  v83 = v107;
  *(v81 + 48) = v108;
  *(v81 + 56) = v83;
  v84 = v79 + v80[16];
  v86 = v104;
  v85 = v105;
  *v84 = v105;
  *(v84 + 8) = v86;
  LOBYTE(v70) = v102 & 1;
  *(v84 + 16) = v102 & 1;
  *(v84 + 24) = v125;
  v87 = v79 + v80[20];
  *v87 = 0;
  *(v87 + 8) = v127;
  *(v87 + 16) = v100;
  *(v87 + 24) = v128;
  *(v87 + 32) = v99;
  *(v87 + 40) = v129;
  v88 = v97;
  *(v87 + 48) = v98;
  *(v87 + 56) = v88;
  v89 = v79 + v80[24];
  v90 = v132;
  v77(v89, v76, v132);
  sub_1E594C9E8(v85, v86, v70);
  v91 = *(v75 + 8);

  v91(v131, v90);
  sub_1E58BAD14(v126, &qword_1ECFFFB08, &unk_1E5A43CC0);
  v91(v76, v90);
  sub_1E58B3C9C(v85, v86, v70);

  return sub_1E58BAD14(v130, &qword_1ECFFFB08, &unk_1E5A43CC0);
}

uint64_t sub_1E59D3D78(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB10, &qword_1E5A3F4E0);
  sub_1E58CD164(&qword_1ECFFFB18, &qword_1ECFFFB10, &qword_1E5A3F4E0, MEMORY[0x1E6999B78]);
  sub_1E5A2A4F4();
  sub_1E5A2B954();
}

uint64_t sub_1E59D3E38@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2D33E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB10, &qword_1E5A3F4E0);
  sub_1E58CD164(&qword_1ECFFFB18, &qword_1ECFFFB10, &qword_1E5A3F4E0, MEMORY[0x1E6999B78]);
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

unint64_t sub_1E59D4040()
{
  result = qword_1ECFFFB28;
  if (!qword_1ECFFFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFB28);
  }

  return result;
}

unint64_t sub_1E59D40A8()
{
  result = qword_1ECFFFB38;
  if (!qword_1ECFFFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFB38);
  }

  return result;
}

unint64_t sub_1E59D4100()
{
  result = qword_1ECFFFB40;
  if (!qword_1ECFFFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFB40);
  }

  return result;
}

unint64_t sub_1E59D4158()
{
  result = qword_1ECFFFB48;
  if (!qword_1ECFFFB48)
  {
    type metadata accessor for WorkoutPlansState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFB48);
  }

  return result;
}

uint64_t WorkoutPlanCreationLocalState.init(identifier:modalityPreferences:recommendationMetrics:selectedWeekCount:shouldStartOnScheduleReview:variation:weekCounts:workoutPlanSchedule:workoutPlanTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a6;
  v48 = a5;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v43 = a1;
  v50 = a7;
  v51 = a11;
  v49 = a10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - v14;
  v44 = *a8;
  v16 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v17(a9, 1, 1, v16);
  v18 = type metadata accessor for EditItem(0);
  v19 = v18[6];
  v20 = &a9[v18[5]];
  v21 = v18[8];
  v22 = &a9[v18[7]];
  v23 = v18[10];
  v24 = &a9[v18[9]];
  sub_1E59D7620(v15, a9, &qword_1ECFFB790, &qword_1E5A2D620);
  *v20 = 0;
  v20[8] = 1;
  a9[v19] = 7;
  *v22 = 0;
  v22[8] = 1;
  *&a9[v21] = 0;
  *v24 = 0;
  *(v24 + 1) = 0;
  a9[v23] = 7;
  v25 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  a9[v25[5]] = 2;
  v26 = MEMORY[0x1E69E7CD0];
  v27 = &a9[v25[6]];
  *v27 = MEMORY[0x1E69E7CD0];
  *(v27 + 1) = v26;
  *(v27 + 2) = v26;
  *(v27 + 3) = v26;
  *(v27 + 4) = v26;
  *(v27 + 5) = v26;
  *(v27 + 6) = v26;
  *(v27 + 7) = v26;
  a9[v25[8]] = 0;
  a9[v25[9]] = 0;
  a9[v25[10]] = 0;
  v28 = &a9[v25[11]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = v25[12];
  v30 = MEMORY[0x1E69E7CC0];
  *&a9[v29] = sub_1E590E64C(MEMORY[0x1E69E7CC0]);
  a9[v25[13]] = 1;
  v31 = v25[14];
  *&a9[v31] = sub_1E590E64C(v30);
  v32 = v25[16];
  v33 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  (*(*(v33 - 8) + 56))(&a9[v32], 1, 1, v33);
  *&a9[v25[17]] = 5;
  *&a9[v25[18]] = v30;
  *&a9[v25[19]] = v26;
  a9[v25[20]] = 0;
  *&a9[v25[21]] = 30;
  v34 = v25[23];
  *&a9[v34] = sub_1E59E32B8(&unk_1F5F5BA38);
  a9[v25[24]] = 0;
  *&a9[v25[27]] = v30;
  v35 = v25[28];
  *&a9[v35] = 0;
  v36 = &a9[v25[29]];
  *v36 = 0;
  *(v36 + 1) = 0;
  *(v36 + 2) = 0;
  v36[24] = 1;
  v37 = &a9[v25[30]];
  v38 = v25[7];
  v39 = sub_1E5A29E74();
  (*(*(v39 - 8) + 32))(&a9[v38], v43, v39);
  v40 = v46;
  *&a9[v25[15]] = v45;
  sub_1E59D7620(v40, &a9[v32], &qword_1ECFFD900, &qword_1E5A39BB0);
  *&a9[v25[22]] = v47;
  a9[v25[25]] = v48;
  *&a9[v25[26]] = v50;

  *&a9[v35] = v44;
  a9[v25[31]] = v52;
  v42 = v51;
  *v37 = v49;
  *(v37 + 1) = v42;
  return result;
}

uint64_t type metadata accessor for WorkoutPlanCreationLocalState(uint64_t a1)
{
  result = qword_1ECFFFBC0;
  if (!qword_1ECFFFBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanCreationLocalState.currentPage.setter(char a1)
{
  result = type metadata accessor for WorkoutPlanCreationLocalState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t WorkoutPlanCreationLocalState.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 28);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlanCreationLocalState.modalityPreferences.getter()
{
  type metadata accessor for WorkoutPlanCreationLocalState(0);
}

uint64_t WorkoutPlanCreationLocalState.modalityPreferences.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 60);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WorkoutPlanCreationLocalState.recommendationMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 64);

  return sub_1E59541FC(v3, a1);
}

uint64_t WorkoutPlanCreationLocalState.modalities.getter()
{
  type metadata accessor for WorkoutPlanCreationLocalState(0);
}

uint64_t WorkoutPlanCreationLocalState.modalities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WorkoutPlanCreationLocalState.selectedModalityIdentifiers.getter()
{
  type metadata accessor for WorkoutPlanCreationLocalState(0);
}

uint64_t WorkoutPlanCreationLocalState.selectedModalityIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 76);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WorkoutPlanCreationLocalState.selectedWeekdays.getter()
{
  type metadata accessor for WorkoutPlanCreationLocalState(0);
}

uint64_t WorkoutPlanCreationLocalState.selectedWeekdays.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 92);

  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1E59D4AC4(char a1)
{
  result = 0x45746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x50746E6572727563;
      break;
    case 2:
      result = 0x704F7265746C6966;
      break;
    case 3:
      result = 0x696669746E656469;
      break;
    case 4:
    case 25:
    case 27:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x5364696C61567369;
      break;
    case 7:
      result = 0x73654D726F727265;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0x7461745364616F6CLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
    case 24:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x6974696C61646F6DLL;
      break;
    case 15:
    case 21:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
    case 26:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x6E756F436B656577;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E59D4DF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59D8160(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59D4E2C(uint64_t a1)
{
  v2 = sub_1E59D76EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59D4E68(uint64_t a1)
{
  v2 = sub_1E59D76EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationLocalState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB50, &qword_1E5A3F600);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59D76EC();
  sub_1E5A2C224();
  LOBYTE(v32[0]) = 0;
  type metadata accessor for EditItem(0);
  sub_1E59D7998(&qword_1ECFFFB60, type metadata accessor for EditItem, &protocol conformance descriptor for EditItem);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutPlanCreationLocalState(0);
    v36 = *(v3 + v9[5]);
    v35 = 1;
    sub_1E58C2CE0();
    sub_1E5A2C0B4();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v32[0] = *v10;
    v32[1] = v11;
    v12 = v10[3];
    v14 = *v10;
    v13 = v10[1];
    v32[2] = v10[2];
    v32[3] = v12;
    v28 = v14;
    v29 = v13;
    v15 = v10[3];
    v30 = v10[2];
    v31 = v15;
    v34 = 2;
    sub_1E5931DC4(v32, v27);
    sub_1E59D7740();
    sub_1E5A2C0B4();
    v27[0] = v28;
    v27[1] = v29;
    v27[2] = v30;
    v27[3] = v31;
    sub_1E58F011C(v27);
    LOBYTE(v24) = 3;
    sub_1E5A29E74();
    sub_1E59D7998(&qword_1ECFFC7F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1E5A2C0B4();
    LOBYTE(v24) = 4;
    sub_1E5A2C074();
    LOBYTE(v24) = 5;
    sub_1E5A2C074();
    LOBYTE(v24) = 6;
    sub_1E5A2C074();
    LOBYTE(v24) = 7;
    sub_1E5A2C034();
    *&v24 = *(v3 + v9[12]);
    v33 = 8;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB70, &qword_1E5A3F608);
    sub_1E59D78C0(&qword_1ECFFFB78, sub_1E58C2C38, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    v23 = v16;
    sub_1E5A2C0B4();
    LOBYTE(v24) = *(v3 + v9[13]);
    v33 = 9;
    sub_1E59D7794();
    sub_1E5A2C0B4();
    *&v24 = *(v3 + v9[14]);
    v33 = 10;
    sub_1E5A2C0B4();
    *&v24 = *(v3 + v9[15]);
    v33 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA40, &qword_1E5A3F0F0);
    sub_1E59D77E8(&qword_1ECFFFA48, sub_1E59A2730, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1E5A2C0B4();
    LOBYTE(v24) = 12;
    type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
    sub_1E59D7998(&qword_1ECFFE450, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2C054();
    LOBYTE(v24) = 13;
    sub_1E5A2C094();
    *&v24 = *(v3 + v9[18]);
    v33 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
    sub_1E59D79E0(&qword_1ECFFFB88, sub_1E58C31B8, MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
    *&v24 = *(v3 + v9[19]);
    v33 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
    sub_1E58B4A18(&qword_1ECFFB5A8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1E5A2C0B4();
    LOBYTE(v24) = *(v3 + v9[20]);
    v33 = 16;
    sub_1E58C3308();
    sub_1E5A2C0B4();
    LOBYTE(v24) = 17;
    sub_1E5A2C094();
    LOBYTE(v24) = 18;
    sub_1E5A2C094();
    *&v24 = *(v3 + v9[23]);
    v33 = 19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE458, &qword_1E5A39BC8);
    sub_1E5954314(&qword_1ECFFE460, sub_1E58C2944, MEMORY[0x1E69E64F0]);
    sub_1E5A2C0B4();
    LOBYTE(v24) = 20;
    sub_1E5A2C074();
    LOBYTE(v24) = 21;
    sub_1E5A2C074();
    *&v24 = *(v3 + v9[26]);
    v33 = 22;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
    sub_1E59A4EFC(&qword_1ECFFF5B0, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    v23 = v17;
    sub_1E5A2C0B4();
    *&v24 = *(v3 + v9[27]);
    v33 = 23;
    sub_1E5A2C0B4();
    *&v24 = *(v3 + v9[28]);
    v33 = 24;
    sub_1E58C2B90();

    sub_1E5A2C054();

    v18 = (v3 + v9[29]);
    v19 = *(v18 + 2);
    v20 = *(v18 + 24);
    v24 = *v18;
    v25 = v19;
    v26 = v20;
    v33 = 25;
    sub_1E58C2AE8();
    sub_1E5A2C054();
    LOBYTE(v24) = 26;
    sub_1E5A2C034();
    LOBYTE(v24) = *(v3 + v9[31]);
    v33 = 27;
    sub_1E58F8F9C();
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutPlanCreationLocalState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v66 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v63 - v3;
  v72 = sub_1E5A29E74();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditItem(0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB90, &qword_1E5A3F618);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v83 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 1, 1, v14);
  v15(v13, 1, 1, v14);
  v16 = v5[6];
  v17 = &v13[v5[5]];
  v18 = v5[8];
  v19 = &v13[v5[7]];
  v74 = v5;
  v20 = v5[9];
  v21 = v5[10];
  v22 = &v13[v20];
  sub_1E59D7620(v10, v13, &qword_1ECFFB790, &qword_1E5A2D620);
  *v17 = 0;
  v17[8] = 1;
  v13[v16] = 7;
  v23 = v73;
  *v19 = 0;
  v19[8] = 1;
  *&v13[v18] = 0;
  *v22 = 0;
  *(v22 + 1) = 0;
  v13[v21] = 7;
  v24 = &v13[v11[6]];
  v25 = MEMORY[0x1E69E7CD0];
  *v24 = MEMORY[0x1E69E7CD0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v25;
  *(v24 + 3) = v25;
  *(v24 + 4) = v25;
  *(v24 + 5) = v25;
  *(v24 + 6) = v25;
  *(v24 + 7) = v25;
  v26 = MEMORY[0x1E69E7CC0];
  v82 = sub_1E590E64C(MEMORY[0x1E69E7CC0]);
  v80 = sub_1E590E64C(v26);
  v27 = v11[16];
  v28 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v29 = *(*(v28 - 8) + 56);
  v79 = v27;
  v29(&v13[v27], 1, 1, v28);
  v77 = sub_1E59E32B8(&unk_1F5F5BC98);
  v78 = v11[28];
  *&v13[v78] = 0;
  v84 = v11;
  v30 = v11[29];
  v81 = v13;
  v31 = &v13[v30];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  v31[24] = 1;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1E59D76EC();
  v32 = v76;
  sub_1E5A2C214();
  if (v32)
  {
    v76 = 0;
    v75 = MEMORY[0x1E69E7CD0];
    v74 = MEMORY[0x1E69E7CC0];
    v34 = v81;
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1E59D8A0C(v34, type metadata accessor for EditItem);
    v35 = *(v24 + 1);
    v93 = *v24;
    v94 = v35;
    v36 = *(v24 + 3);
    v95 = *(v24 + 2);
    v96 = v36;
    sub_1E58F011C(&v93);

    sub_1E58BAD14(v34 + v79, &qword_1ECFFD900, &qword_1E5A39BB0);
  }

  else
  {
    v33 = v68;
    v65 = v28;
    LOBYTE(v93) = 0;
    sub_1E59D7998(&qword_1ECFFFB98, type metadata accessor for EditItem, &protocol conformance descriptor for EditItem);
    sub_1E5A2BFE4();
    v64 = v31;
    v37 = v81;
    sub_1E59D7688(v75, v81);
    LOBYTE(v92[0]) = 1;
    sub_1E58C76C8();
    sub_1E5A2BFE4();
    *(v37 + v84[5]) = v93;
    v98 = 2;
    sub_1E59D786C();
    sub_1E5A2BFE4();
    v88 = v93;
    v89 = v94;
    v90 = v95;
    v91 = v96;
    v38 = *(v24 + 1);
    v92[0] = *v24;
    v92[1] = v38;
    v39 = *(v24 + 3);
    v92[2] = *(v24 + 2);
    v92[3] = v39;
    sub_1E58F011C(v92);
    v40 = v89;
    *v24 = v88;
    *(v24 + 1) = v40;
    v41 = v91;
    *(v24 + 2) = v90;
    *(v24 + 3) = v41;
    LOBYTE(v85) = 3;
    sub_1E59D7998(&qword_1ECFFC818, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v42 = v72;
    sub_1E5A2BFE4();
    v43 = v84;
    (*(v71 + 32))(v37 + v84[7], v33, v42);
    LOBYTE(v85) = 4;
    *(v37 + v43[8]) = sub_1E5A2BFA4() & 1;
    LOBYTE(v85) = 5;
    *(v37 + v43[9]) = sub_1E5A2BFA4() & 1;
    LOBYTE(v85) = 6;
    *(v37 + v43[10]) = sub_1E5A2BFA4() & 1;
    LOBYTE(v85) = 7;
    v44 = sub_1E5A2BF64();
    v45 = (v37 + v84[11]);
    *v45 = v44;
    v45[1] = v46;
    v76 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB70, &qword_1E5A3F608);
    v97 = 8;
    sub_1E59D78C0(&qword_1ECFFFBA8, sub_1E58C7674, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1E5A2BFE4();

    v47 = v84[12];
    v82 = v85;
    *(v37 + v47) = v85;
    v97 = 9;
    sub_1E59D7944();
    sub_1E5A2BFE4();
    v81[v84[13]] = v85;
    v97 = 10;
    sub_1E5A2BFE4();

    v48 = v84[14];
    v80 = v85;
    *&v81[v48] = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFA40, &qword_1E5A3F0F0);
    v97 = 11;
    sub_1E59D77E8(&qword_1ECFFFA58, sub_1E59A2EDC, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1E5A2BFE4();
    *&v81[v84[15]] = v85;
    LOBYTE(v85) = 12;
    sub_1E59D7998(&qword_1ECFFE480, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics, &protocol conformance descriptor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2BF84();
    sub_1E59D7620(v67, &v81[v79], &qword_1ECFFD900, &qword_1E5A39BB0);
    LOBYTE(v85) = 13;
    *&v81[v84[17]] = sub_1E5A2BFC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
    v97 = 14;
    sub_1E59D79E0(&qword_1ECFFFBB8, sub_1E58C7914, MEMORY[0x1E69E6330]);
    sub_1E5A2BFE4();
    v49 = v84[18];
    v74 = v85;
    *&v81[v49] = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
    v97 = 15;
    sub_1E58B4A18(&qword_1ECFFB5B8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1E5A2BFE4();
    v50 = v84[19];
    v75 = v85;
    *&v81[v50] = v85;
    v97 = 16;
    sub_1E58C7968();
    sub_1E5A2BFE4();
    v81[v84[20]] = v85;
    LOBYTE(v85) = 17;
    *&v81[v84[21]] = sub_1E5A2BFC4();
    LOBYTE(v85) = 18;
    *&v81[v84[22]] = sub_1E5A2BFC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE458, &qword_1E5A39BC8);
    v97 = 19;
    sub_1E5954314(&qword_1ECFFE488, sub_1E58C7514, MEMORY[0x1E69E6510]);
    sub_1E5A2BFE4();

    v51 = v84[23];
    v77 = v85;
    *&v81[v51] = v85;
    LOBYTE(v85) = 20;
    v81[v84[24]] = sub_1E5A2BFA4() & 1;
    LOBYTE(v85) = 21;
    v81[v84[25]] = sub_1E5A2BFA4() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
    v97 = 22;
    sub_1E59A4EFC(&qword_1ECFFF5D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    sub_1E5A2BFE4();
    *&v81[v84[26]] = v85;
    v97 = 23;
    sub_1E5A2BFE4();
    *&v81[v84[27]] = v85;
    v97 = 24;
    sub_1E58C7620();
    sub_1E5A2BF84();
    v52 = v85;
    v53 = v81;
    v54 = v78;

    *(v53 + v54) = v52;
    v97 = 25;
    sub_1E58C75CC();
    sub_1E5A2BF84();
    v55 = v86;
    v56 = v87;
    v57 = v64;
    *v64 = v85;
    *(v57 + 2) = v55;
    v57[24] = v56;
    LOBYTE(v85) = 26;
    v58 = sub_1E5A2BF64();
    v59 = &v81[v84[30]];
    *v59 = v58;
    v59[1] = v60;
    v97 = 27;
    sub_1E58F98EC();
    sub_1E5A2BFE4();
    (*(v69 + 8))(v83, v70);
    v61 = v81;
    v81[v84[31]] = v85;
    sub_1E59D7A58(v61, v66, type metadata accessor for WorkoutPlanCreationLocalState);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return sub_1E59D8A0C(v61, type metadata accessor for WorkoutPlanCreationLocalState);
  }
}

BOOL _s18FitnessWorkoutPlan0bC18CreationLocalStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v54 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4D0, &unk_1E5A3DBC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  if (!_s18FitnessWorkoutPlan8EditItemV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v14 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v15 = v14;
  v55 = v5;
  v16 = (a1 + *(v14 + 24));
  v17 = v16[1];
  v65[0] = *v16;
  v65[1] = v17;
  v18 = v16[3];
  v20 = *v16;
  v19 = v16[1];
  v65[2] = v16[2];
  v65[3] = v18;
  v21 = v16[3];
  v63 = v16[2];
  v64 = v21;
  v61 = v20;
  v62 = v19;
  v22 = (a2 + *(v14 + 24));
  v23 = v22[1];
  v24 = v22[3];
  v67 = v22[2];
  v68 = v24;
  v25 = v22[1];
  v66[0] = *v22;
  v66[1] = v25;
  v57 = v66[0];
  v58 = v23;
  v26 = v22[3];
  v59 = v67;
  v60 = v26;
  sub_1E5931DC4(v65, v56);
  sub_1E5931DC4(v66, v56);
  v27 = static WorkoutPlanFilterOptions.== infix(_:_:)();
  v69[0] = v57;
  v69[1] = v58;
  v69[2] = v59;
  v69[3] = v60;
  sub_1E58F011C(v69);
  v70[0] = v61;
  v70[1] = v62;
  v70[2] = v63;
  v70[3] = v64;
  sub_1E58F011C(v70);
  if ((v27 & 1) == 0 || (sub_1E5A29E54() & 1) == 0 || *(a1 + v15[8]) != *(a2 + v15[8]) || *(a1 + v15[9]) != *(a2 + v15[9]) || *(a1 + v15[10]) != *(a2 + v15[10]))
  {
    return 0;
  }

  v29 = v15[11];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1E5A2C114() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  if ((sub_1E599CBAC(*(a1 + v15[12]), *(a2 + v15[12])) & 1) == 0 || *(a1 + v15[13]) != *(a2 + v15[13]) || (sub_1E599CBAC(*(a1 + v15[14]), *(a2 + v15[14])) & 1) == 0 || (sub_1E599CDF4(*(a1 + v15[15]), *(a2 + v15[15])) & 1) == 0)
  {
    return 0;
  }

  v34 = v15[16];
  v35 = *(v11 + 48);
  sub_1E59541FC(a1 + v34, v13);
  v54 = v35;
  sub_1E59541FC(a2 + v34, &v13[v35]);
  v36 = *(v55 + 48);
  if (v36(v13, 1, v4) == 1)
  {
    if (v36(&v13[v54], 1, v4) == 1)
    {
      sub_1E58BAD14(v13, &qword_1ECFFD900, &qword_1E5A39BB0);
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  sub_1E59541FC(v13, v10);
  if (v36(&v13[v54], 1, v4) == 1)
  {
    sub_1E59D8A0C(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
LABEL_40:
    v42 = &qword_1ECFFE4D0;
    v43 = &unk_1E5A3DBC0;
LABEL_46:
    sub_1E58BAD14(v13, v42, v43);
    return 0;
  }

  sub_1E59A3720(&v13[v54], v7);
  if (*v10 != *v7 || (sub_1E5A29E54() & 1) == 0)
  {
    sub_1E59D8A0C(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E59D8A0C(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
    v42 = &qword_1ECFFD900;
    v43 = &qword_1E5A39BB0;
    goto LABEL_46;
  }

  v44 = sub_1E595AC4C(*(v10 + *(v4 + 24)), *(v7 + *(v4 + 24)));
  sub_1E59D8A0C(v7, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  sub_1E59D8A0C(v10, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  sub_1E58BAD14(v13, &qword_1ECFFD900, &qword_1E5A39BB0);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if (*(a1 + v15[17]) != *(a2 + v15[17]) || (sub_1E595AD48(*(a1 + v15[18]), *(a2 + v15[18])) & 1) == 0 || (sub_1E58B61B8(*(a1 + v15[19]), *(a2 + v15[19])) & 1) == 0 || *(a1 + v15[20]) != *(a2 + v15[20]) || *(a1 + v15[21]) != *(a2 + v15[21]) || *(a1 + v15[22]) != *(a2 + v15[22]) || (sub_1E58BAD74() & 1) == 0 || *(a1 + v15[24]) != *(a2 + v15[24]) || *(a1 + v15[25]) != *(a2 + v15[25]) || (sub_1E595C8C0() & 1) == 0 || (sub_1E595C8C0() & 1) == 0)
  {
    return 0;
  }

  v37 = v15[28];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (!v38)
  {
    if (!v39)
    {

      goto LABEL_50;
    }

LABEL_48:

    return 0;
  }

  if (!v39)
  {
    goto LABEL_48;
  }

  swift_bridgeObjectRetain_n();

  sub_1E599C6C0(v38, v39);
  v41 = v40;
  swift_bridgeObjectRelease_n();

  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v45 = v15[29];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 24);
  v48 = a2 + v45;
  if (v47)
  {
    if ((*(v48 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(v48 + 24) & 1) != 0 || *v46 != *v48 || v46[1] != *(v48 + 8) || v46[2] != *(v48 + 16))
  {
    return 0;
  }

  v49 = v15[30];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (!v51)
  {
    if (!v53)
    {
      return *(a1 + v15[31]) == *(a2 + v15[31]);
    }

    return 0;
  }

  if (!v53 || (*v50 != *v52 || v51 != v53) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v15[31]) == *(a2 + v15[31]);
}

uint64_t sub_1E59D7620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E59D7688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E59D76EC()
{
  result = qword_1ECFFFB58;
  if (!qword_1ECFFFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFB58);
  }

  return result;
}

unint64_t sub_1E59D7740()
{
  result = qword_1ECFFFB68;
  if (!qword_1ECFFFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFB68);
  }

  return result;
}

unint64_t sub_1E59D7794()
{
  result = qword_1ECFFFB80;
  if (!qword_1ECFFFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFB80);
  }

  return result;
}

uint64_t sub_1E59D77E8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFA40, &qword_1E5A3F0F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E59D786C()
{
  result = qword_1ECFFFBA0;
  if (!qword_1ECFFFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFBA0);
  }

  return result;
}

uint64_t sub_1E59D78C0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFB70, &qword_1E5A3F608);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E59D7944()
{
  result = qword_1ECFFFBB0;
  if (!qword_1ECFFFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFBB0);
  }

  return result;
}

uint64_t sub_1E59D7998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E59D79E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E59D7A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1E59D7AE8(uint64_t a1)
{
  type metadata accessor for EditItem(319);
  if (v1 <= 0x3F)
  {
    sub_1E5A29E74();
    if (v2 <= 0x3F)
    {
      sub_1E59D7EB8(319, &qword_1EE2CFA60, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E59D7DAC(319, &qword_1ECFFFBD0, &type metadata for WorkoutPlanFilterResult);
        if (v4 <= 0x3F)
        {
          sub_1E59D7DAC(319, &qword_1EE2CFA68, &type metadata for WorkoutPlanModalityPreference);
          if (v5 <= 0x3F)
          {
            sub_1E5898B54(319);
            if (v6 <= 0x3F)
            {
              sub_1E59D7EB8(319, &qword_1ECFFFBD8, &type metadata for WorkoutPlanModality, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1E59D7E04();
                if (v8 <= 0x3F)
                {
                  sub_1E59D7E5C(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1E59D7EB8(319, &qword_1EE2CFA38, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
                    if (v10 <= 0x3F)
                    {
                      sub_1E59D7EB8(319, &qword_1ECFFFBE8, &type metadata for WorkoutPlanSchedule, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        sub_1E59D7EB8(319, &qword_1ECFFFBF0, &type metadata for CalendarDay, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E59D7DAC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E5A2BA24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E59D7E04()
{
  if (!qword_1ECFFFBE0)
  {
    v0 = sub_1E5A2BD24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFFBE0);
    }
  }
}

void sub_1E59D7E5C(uint64_t a1)
{
  if (!qword_1ECFFE4B0)
  {
    sub_1E58D1B2C();
    v1 = sub_1E5A2BD24();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFE4B0);
    }
  }
}

void sub_1E59D7EB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for WorkoutPlanCreationLocalState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanCreationLocalState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E59D805C()
{
  result = qword_1ECFFFBF8;
  if (!qword_1ECFFFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFBF8);
  }

  return result;
}

unint64_t sub_1E59D80B4()
{
  result = qword_1ECFFFC00;
  if (!qword_1ECFFFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC00);
  }

  return result;
}

unint64_t sub_1E59D810C()
{
  result = qword_1ECFFFC08;
  if (!qword_1ECFFFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC08);
  }

  return result;
}

uint64_t sub_1E59D8160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x45746E6572727563 && a2 == 0xEF6D657449746964;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50746E6572727563 && a2 == 0xEB00000000656761 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xED0000736E6F6974 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A46F70 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E5A46F90 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5364696C61567369 && a2 == 0xEF656C7564656863 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_1E5A2C114() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E5A46FB0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5A46FD0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A46C30 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5A468F0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5A46FF0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_1E5A2C114() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E5A47010 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5A47030 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A47050 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A47070 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A47090 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A470B0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E5A470D0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6E756F436B656577 && a2 == 0xEA00000000007374 || (sub_1E5A2C114() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A470F0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5A47110 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A47130 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5A47150 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A47170 == a2)
  {

    return 27;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 27;
    }

    else
    {
      return 28;
    }
  }
}

uint64_t sub_1E59D8A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutPlanTheme.init(identifier:name:sortOrder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t WorkoutPlanTheme.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutPlanTheme.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E59D8AF8()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6564724F74726F73;
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

uint64_t sub_1E59D8B54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59D966C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59D8B7C(uint64_t a1)
{
  v2 = sub_1E59D8F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59D8BB8(uint64_t a1)
{
  v2 = sub_1E59D8F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static WorkoutPlanTheme.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1E5A2C114()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1E5A2C114()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1E59D8CE4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1E5A2C114()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1E5A2C114()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t WorkoutPlanTheme.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFC10, &qword_1E5A3F820);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59D8F44();
  sub_1E5A2C224();
  v14 = 0;
  v8 = v10[3];
  sub_1E5A2C064();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E5A2C064();
  v12 = 2;
  sub_1E5A2C0C4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E59D8F44()
{
  result = qword_1ECFFFC18;
  if (!qword_1ECFFFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC18);
  }

  return result;
}

uint64_t WorkoutPlanTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFC20, &qword_1E5A3F828);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59D8F44();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_1E5A2BF94();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v17 = sub_1E5A2BF94();
  v18 = v12;
  v20 = 2;
  v13 = sub_1E5A2BFF4();
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanTheme.hash(into:)(uint64_t a1)
{
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C1E4();
}

uint64_t WorkoutPlanTheme.hashValue.getter()
{
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  sub_1E5A2C1E4();
  return sub_1E5A2C204();
}

uint64_t sub_1E59D9300()
{
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  sub_1E5A2C1E4();
  return sub_1E5A2C204();
}

uint64_t sub_1E59D9380(uint64_t a1)
{
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C1E4();
}

uint64_t sub_1E59D93D4(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  sub_1E5A2C1E4();
  return sub_1E5A2C204();
}

unint64_t sub_1E59D9450()
{
  result = qword_1ECFFFC28;
  if (!qword_1ECFFFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC28);
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E59D94B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_1E59D9500(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E59D9568()
{
  result = qword_1ECFFFC30;
  if (!qword_1ECFFFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC30);
  }

  return result;
}

unint64_t sub_1E59D95C0()
{
  result = qword_1ECFFFC38;
  if (!qword_1ECFFFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC38);
  }

  return result;
}

unint64_t sub_1E59D9618()
{
  result = qword_1ECFFFC40;
  if (!qword_1ECFFFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC40);
  }

  return result;
}

uint64_t sub_1E59D966C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072)
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

void __swiftcall WorkoutPlanFilterConfiguration.init(activityType:orderedSkillLevels:skillLevelTitle:skillLevelTranslations:skillLevelWildcardTitle:)(FitnessWorkoutPlan::WorkoutPlanFilterConfiguration *__return_ptr retstr, Swift::UInt activityType, Swift::OpaquePointer orderedSkillLevels, Swift::String_optional skillLevelTitle, Swift::OpaquePointer skillLevelTranslations, Swift::String_optional skillLevelWildcardTitle)
{
  retstr->activityType = activityType;
  retstr->orderedSkillLevels = orderedSkillLevels;
  retstr->skillLevelTitle = skillLevelTitle;
  retstr->skillLevelWildcardTitle = skillLevelWildcardTitle;
  retstr->skillLevelTranslations = skillLevelTranslations;
}

uint64_t WorkoutPlanFilterConfiguration.skillLevelTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutPlanFilterConfiguration.skillLevelWildcardTitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t sub_1E59D9828()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x76654C6C6C696B73;
  v4 = 0xD000000000000017;
  if (v1 == 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E59D98E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59DA650(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59D9910(uint64_t a1)
{
  v2 = sub_1E59D9C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59D994C(uint64_t a1)
{
  v2 = sub_1E59D9C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanFilterConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFC48, &unk_1E5A3FAD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v10 = v1[5];
  v14 = v1[4];
  v15 = v9;
  v13[1] = v1[6];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59D9C34();
  sub_1E5A2C224();
  LOBYTE(v19) = 0;
  sub_1E5A2C0A4();
  if (!v2)
  {
    v11 = v14;
    v19 = v17;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
    sub_1E58C7B54(&qword_1ECFFB980, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1E5A2C0B4();
    LOBYTE(v19) = 2;
    sub_1E5A2C034();
    v19 = v11;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFC58, &qword_1E5A3FAE0);
    sub_1E59DA038(&qword_1ECFFFC60, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1E5A2C0B4();
    LOBYTE(v19) = 4;
    sub_1E5A2C034();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E59D9C34()
{
  result = qword_1ECFFFC50;
  if (!qword_1ECFFFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC50);
  }

  return result;
}

uint64_t WorkoutPlanFilterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFC68, &qword_1E5A3FAE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59D9C34();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v24) = 0;
  v9 = sub_1E5A2BFD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB988, &qword_1E5A3A470);
  v23 = 1;
  sub_1E58C7B54(&qword_1ECFFBB48, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  v22 = v24;
  LOBYTE(v24) = 2;
  v20 = sub_1E5A2BF64();
  v21 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFC58, &qword_1E5A3FAE0);
  v23 = 3;
  sub_1E59DA038(&qword_1ECFFFC70, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1E5A2BFE4();
  v19 = v24;
  LOBYTE(v24) = 4;
  v11 = sub_1E5A2BF64();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  v14 = v22;
  *a2 = v9;
  a2[1] = v14;
  v16 = v19;
  a2[2] = v20;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v11;
  a2[6] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E59DA038(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFC58, &qword_1E5A3FAE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutPlanFilterConfiguration.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[6];
  MEMORY[0x1E6932DE0](*v1);
  MEMORY[0x1E6932DE0](*(v3 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v3 + 40;
    do
    {

      sub_1E5A2BB74();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  sub_1E5A2C1D4();
  if (v4)
  {
    sub_1E5A2BB74();
  }

  sub_1E58FA0B0(a1, v5);
  if (!v6)
  {
    return sub_1E5A2C1D4();
  }

  sub_1E5A2C1D4();

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanFilterConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  v7 = *(v0 + 40);
  sub_1E5A2C1B4();
  WorkoutPlanFilterConfiguration.hash(into:)(v4);
  return sub_1E5A2C204();
}

uint64_t sub_1E59DA268()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = *(v0 + 16);
  v6 = v2;
  v7 = *(v0 + 40);
  sub_1E5A2C1B4();
  WorkoutPlanFilterConfiguration.hash(into:)(v4);
  return sub_1E5A2C204();
}

uint64_t sub_1E59DA2D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = *(v1 + 16);
  v7 = v3;
  v8 = *(v1 + 40);
  sub_1E5A2C1B4();
  WorkoutPlanFilterConfiguration.hash(into:)(v5);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC19FilterConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v7 = a2[3];
  v6 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  v10 = a2[2];
  v11 = a1[2];
  if ((sub_1E595B21C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v11 != v10 || v3 != v7) && (sub_1E5A2C114() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (sub_1E599CA08(v2, v6))
  {
    if (v5)
    {
      if (v8 && (v4 == v9 && v5 == v8 || (sub_1E5A2C114() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E59DA440()
{
  result = qword_1ECFFFC78;
  if (!qword_1ECFFFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC78);
  }

  return result;
}

uint64_t sub_1E59DA494(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E59DA4DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1E59DA54C()
{
  result = qword_1ECFFFC80;
  if (!qword_1ECFFFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC80);
  }

  return result;
}

unint64_t sub_1E59DA5A4()
{
  result = qword_1ECFFFC88;
  if (!qword_1ECFFFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC88);
  }

  return result;
}

unint64_t sub_1E59DA5FC()
{
  result = qword_1ECFFFC90;
  if (!qword_1ECFFFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFC90);
  }

  return result;
}

uint64_t sub_1E59DA650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A47190 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEF656C7469546C65 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5A471B0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5A471D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t WorkoutPlanCreationState.init(activeWorkoutPlan:isSubscribed:locale:sizeClass:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1E59DA8B4(a1, a5);
  v9 = type metadata accessor for WorkoutPlanCreationState(0);
  *(a5 + v9[5]) = a2;
  v10 = v9[6];
  v11 = sub_1E5A29EB4();
  result = (*(*(v11 - 8) + 32))(a5 + v10, a3, v11);
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t sub_1E59DA8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WorkoutPlanCreationState(uint64_t a1)
{
  result = qword_1ECFFFCD0;
  if (!qword_1ECFFFCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E59DA97C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59DA9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutPlanCreationState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationState(0) + 24);
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1E59DAB48()
{
  v1 = 0x7263736275537369;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x73616C43657A6973;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E59DABD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59DB988(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59DABF8(uint64_t a1)
{
  v2 = sub_1E59DAEDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59DAC34(uint64_t a1)
{
  v2 = sub_1E59DAEDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFC98, &qword_1E5A3FD48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59DAEDC();
  sub_1E5A2C224();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  sub_1E59DB3D0(&qword_1ECFFFCA8, MEMORY[0x1E6999B20]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v9 = type metadata accessor for WorkoutPlanCreationState(0);
    v11[14] = 1;
    sub_1E5A2C074();
    v11[13] = 2;
    sub_1E5A29EB4();
    sub_1E59DB828(&qword_1ECFFCDF0, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5A2C0B4();
    v11[12] = *(v3 + *(v9 + 28));
    v11[11] = 3;
    sub_1E58FDD58();
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E59DAEDC()
{
  result = qword_1ECFFFCA0;
  if (!qword_1ECFFFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFCA0);
  }

  return result;
}

uint64_t WorkoutPlanCreationState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_1E5A29EB4();
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFCC0, &qword_1E5A3FD50);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v21 - v8;
  v10 = type metadata accessor for WorkoutPlanCreationState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E59DAEDC();
  v26 = v9;
  v14 = v27;
  sub_1E5A2C214();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v27 = v4;
  v15 = v23;
  v16 = v24;
  v17 = v12;
  v33 = 0;
  sub_1E59DB3D0(&qword_1ECFFFCC8, MEMORY[0x1E6999B30]);
  sub_1E5A2BFE4();
  sub_1E59DA8B4(v7, v12);
  v32 = 1;
  v18 = v10;
  *(v17 + *(v10 + 20)) = sub_1E5A2BFA4() & 1;
  v31 = 2;
  sub_1E59DB828(&qword_1ECFFCE18, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v19 = v27;
  sub_1E5A2BFE4();
  (*(v22 + 32))(v17 + *(v18 + 24), v19, v16);
  v29 = 3;
  sub_1E58FE530();
  sub_1E5A2BFE4();
  (*(v15 + 8))(v26, v25);
  *(v17 + *(v18 + 28)) = v30;
  sub_1E59DB50C(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1E59DB570(v17);
}

uint64_t sub_1E59DB3D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
    sub_1E59DB828(&qword_1ECFFFCB0, type metadata accessor for WorkoutPlan, &protocol conformance descriptor for WorkoutPlan);
    sub_1E59DB828(&qword_1ECFFFCB8, type metadata accessor for WorkoutPlan, &protocol conformance descriptor for WorkoutPlan);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E59DB4A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E59DB50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCreationState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59DB570(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s18FitnessWorkoutPlan0bC13CreationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WorkoutPlan(0);
  sub_1E59DB828(&qword_1ECFFCBC0, type metadata accessor for WorkoutPlan, &protocol conformance descriptor for WorkoutPlan);
  if (sub_1E5A2B8F4() & 1) != 0 && (v4 = type metadata accessor for WorkoutPlanCreationState(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, (MEMORY[0x1E6930AC0](a1 + *(v4 + 24), a2 + *(v4 + 24))))
  {
    return *(a1 + *(v5 + 28)) == *(a2 + *(v5 + 28));
  }

  else
  {
    return 0;
  }
}

void sub_1E59DB700(uint64_t a1)
{
  sub_1E59DB794(319);
  if (v1 <= 0x3F)
  {
    sub_1E5A29EB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E59DB794(uint64_t a1)
{
  if (!qword_1ECFFFCE0)
  {
    type metadata accessor for WorkoutPlan(255);
    sub_1E59DB828(&qword_1ECFFCBC0, type metadata accessor for WorkoutPlan, &protocol conformance descriptor for WorkoutPlan);
    v1 = sub_1E5A2B904();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECFFFCE0);
    }
  }
}

uint64_t sub_1E59DB828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E59DB884()
{
  result = qword_1ECFFFCE8;
  if (!qword_1ECFFFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFCE8);
  }

  return result;
}

unint64_t sub_1E59DB8DC()
{
  result = qword_1ECFFFCF0;
  if (!qword_1ECFFFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFCF0);
  }

  return result;
}

unint64_t sub_1E59DB934()
{
  result = qword_1ECFFFCF8;
  if (!qword_1ECFFFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFCF8);
  }

  return result;
}

uint64_t sub_1E59DB988(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5A471F0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t SkillLevelSelectionView.init(store:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E59DBB90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EditItem(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v8 = &v6[*(v4 + 44)];
  v10 = *v8;
  v9 = *(v8 + 1);

  result = sub_1E58F00BC(v6, type metadata accessor for EditItem);
  if (v9)
  {
    v56 = v9;
    v43 = a1;
    swift_getKeyPath();

    sub_1E5A2B934();

    v62[0] = v58;
    v62[1] = v59;
    v62[2] = v60;
    v62[3] = v61;
    v12 = *(&v59 + 1);

    sub_1E58F011C(v62);
    v13 = v12 + 56;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 56);
    v17 = (v14 + 63) >> 6;
    v50 = v12;

    v18 = 0;
    v46 = v17;
    v48 = v7;
    v47 = v12 + 56;
    while (2)
    {
      if (v16)
      {
        v19 = v18;
LABEL_12:
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = (*(v50 + 48) + 56 * (v20 | (v19 << 6)));
        v22 = v21[1];
        v49 = *v21;
        v23 = v21[3];
        v45 = v21[2];
        v24 = v21[4];
        v44 = v21[5];
        v25 = v21[6];
        swift_getKeyPath();
        v52 = v25;

        v55 = v22;

        v54 = v23;

        v53 = v24;

        sub_1E5A2B934();

        v26 = *(v57 + 16) + 1;
        v51 = v57;
        v27 = (v57 + 48);
        v28 = v56;
        v29 = v10;
        do
        {
          if (!--v26)
          {
            goto LABEL_5;
          }

          v30 = *(v27 - 2);
          if (*(v27 - 1) == v29 && v28 == *v27)
          {
            break;
          }

          v27 += 9;
          v32 = sub_1E5A2C114();
          v29 = v10;
          v28 = v56;
        }

        while ((v32 & 1) == 0);

        if (!*(v30 + 16))
        {
LABEL_5:

LABEL_6:

          v18 = v19;
          v13 = v47;
          v17 = v46;
          continue;
        }

        v33 = *(v30 + 32);

        v34 = v49;
        v36 = v54;
        v35 = v55;
        v37 = v53;
        if (v49 != v33)
        {

          goto LABEL_6;
        }

        v39 = v52;

        v40 = v43;
        *v43 = v34;
        v40[1] = v35;
        v40[2] = v45;
        v40[3] = v36;
        v41 = v44;
        v40[4] = v37;
        v40[5] = v41;
        v40[6] = v39;
      }

      else
      {
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v19 >= v17)
          {

            v38 = v43;
            v43[6] = 0;
            v38[1] = 0u;
            v38[2] = 0u;
            *v38 = 0u;
            return result;
          }

          v16 = *(v13 + 8 * v19);
          ++v18;
          if (v16)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      break;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1E59DC02C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for EditItem(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *a1;
  v13 = a1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v14 = *&v11[*(v6 + 40)];

  sub_1E58F00BC(v11, type metadata accessor for EditItem);
  if (v14)
  {
    if (*(v14 + 16))
    {
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](2);
      sub_1E5A2BB74();
      v15 = sub_1E5A2C204();
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        v19 = *(v14 + 48);
        while (1)
        {
          v20 = v19 + 24 * v17;
          if (*(v20 + 16) == 2)
          {
            v21 = *v20 == v12 && *(v20 + 8) == v13;
            if (v21 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }
          }

          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_25:

        return 1;
      }
    }

LABEL_26:

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  sub_1E58EFFE4(v8, v4);
  sub_1E58F00BC(v8, type metadata accessor for EditItem);
  v22 = type metadata accessor for WorkoutPlanScheduledItem(0);
  if ((*(*(v22 - 8) + 48))(v4, 1, v22) != 1)
  {
    v23 = *(v4 + 1);

    sub_1E58F00BC(v4, type metadata accessor for WorkoutPlanScheduledItem);
    if (*(v23 + 16))
    {
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](2);
      sub_1E5A2BB74();
      v24 = sub_1E5A2C204();
      v25 = -1 << *(v23 + 32);
      v26 = v24 & ~v25;
      if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        v28 = *(v23 + 48);
        while (1)
        {
          v29 = v28 + 24 * v26;
          if (*(v29 + 16) == 2)
          {
            v30 = *v29 == v12 && *(v29 + 8) == v13;
            if (v30 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_25;
            }
          }

          v26 = (v26 + 1) & v27;
          if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_26;
  }

  sub_1E58BAD14(v4, &qword_1ECFFB790, &qword_1E5A2D620);
  return 0;
}

uint64_t sub_1E59DC408(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v43 - v3;
  v4 = type metadata accessor for EditItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = *a1;
  v14 = a1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v15 = &v12[*(v4 + 36)];
  v17 = *v15;
  v16 = v15[1];

  sub_1E58F00BC(v12, type metadata accessor for EditItem);
  if (!v16)
  {
LABEL_8:
    swift_getKeyPath();

    sub_1E5A2B934();

    v25 = *&v9[*(v4 + 32)];

    result = sub_1E58F00BC(v9, type metadata accessor for EditItem);
    if (!v25)
    {
      swift_getKeyPath();

      sub_1E5A2B934();

      v27 = v43;
      sub_1E58EFFE4(v6, v43);
      sub_1E58F00BC(v6, type metadata accessor for EditItem);
      v28 = type metadata accessor for WorkoutPlanScheduledItem(0);
      if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
      {
        sub_1E58BAD14(v27, &qword_1ECFFB790, &qword_1E5A2D620);
        return 0;
      }

      v25 = *(v27 + 8);

      result = sub_1E58F00BC(v27, type metadata accessor for WorkoutPlanScheduledItem);
    }

    v29 = 0;
    v30 = v25 + 56;
    v31 = 1 << *(v25 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v25 + 56);
    do
    {
      if (!v33)
      {
        while (1)
        {
          v34 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
            return result;
          }

          if (v34 >= ((v31 + 63) >> 6))
          {
            break;
          }

          v33 = *(v30 + 8 * v34);
          ++v29;
          if (v33)
          {
            v29 = v34;
            goto LABEL_21;
          }
        }

        v24 = 0;
        if (!*(v25 + 16))
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v34 = v29;
LABEL_21:
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
    }

    while (*(*(v25 + 48) + 24 * (v35 | (v34 << 6)) + 16) != 2);
    v24 = 1;
    if (!*(v25 + 16))
    {
      goto LABEL_36;
    }

LABEL_25:
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](2);
    sub_1E5A2BB74();
    v36 = sub_1E5A2C204();
    v37 = -1 << *(v25 + 32);
    v38 = v36 & ~v37;
    if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
LABEL_36:

      return v24;
    }

    v39 = ~v37;
    v40 = *(v25 + 48);
    while (1)
    {
      v41 = v40 + 24 * v38;
      if (*(v41 + 16) == 2)
      {
        v42 = *v41 == v13 && *(v41 + 8) == v14;
        if (v42 || (sub_1E5A2C114() & 1) != 0)
        {
          break;
        }
      }

      v38 = (v38 + 1) & v39;
      if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v18 = v44;
  if (!*(v44 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_1E58EF508(v17, v16);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + (v19 << 6) + 40);

  v23 = sub_1E59E8F3C(v13, v14, v22);

  if (v23)
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1E59DC928(uint64_t a1)
{
  v4 = v1[1];
  v86 = *v1;
  v87 = v4;
  sub_1E59DBB90(&v79);
  v5 = v80;
  if (!v80)
  {
    swift_getKeyPath();

    sub_1E5A2B934();

    v71 = v75;
    v72 = v76;
    v73 = v77;
    v74 = v78;
    v26 = *(&v77 + 1);

    sub_1E58F011C(&v71);

    v2 = 0;
    v27 = sub_1E59E1198(v26, a1);

    v28 = v27[2];
    if (v28)
    {
      v29 = sub_1E5A20810(v27[2], 0);
      v30 = sub_1E5A22F44(&v75, (v29 + 4), v28, v27);
      v31 = v75;

      sub_1E58D26C0(v31);
      if (v30 != v28)
      {
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    *&v75 = v29;
    sub_1E59DF9B8(&v75);

    return v75;
  }

  v70 = a1;
  v58 = v81;
  v59 = v79;
  v56 = v83;
  v57 = v82;
  v54 = v85;
  v55 = v84;
  v62 = *(v80 + 16);
  if (!v62)
  {
LABEL_33:
    v63 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v6 = 0;
  v63 = MEMORY[0x1E69E7CC0];
  v61 = v80 + 32;
  v60 = v80;
LABEL_6:
  while (2)
  {
    if (v6 >= *(v5 + 16))
    {
      goto LABEL_62;
    }

    v7 = (v61 + 16 * v6);
    v8 = v7[1];
    v66 = *v7;
    v64 = v6 + 1;
    swift_getKeyPath();
    v68 = v8;

    sub_1E5A2B934();

    v71 = v75;
    v72 = v76;
    v73 = v77;
    v74 = v78;
    v9 = *(&v77 + 1);

    sub_1E58F011C(&v71);
    v2 = 0;
    v10 = 1 << *(v9 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v9 + 56);
    v13 = (v10 + 63) >> 6;
    while (1)
    {
      do
      {
        if (!v12)
        {
          while (1)
          {
            v14 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v14 >= v13)
            {
              break;
            }

            v12 = *(v9 + 56 + 8 * v14);
            ++v2;
            if (v12)
            {
              v2 = v14;
              goto LABEL_16;
            }
          }

          v6 = v64;
          v5 = v60;
          if (v64 == v62)
          {
            goto LABEL_34;
          }

          goto LABEL_6;
        }

LABEL_16:
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = (*(v9 + 48) + 48 * (v15 | (v2 << 6)));
        v17 = v16[3];
      }

      while (!v17);
      v18 = *v16;
      v19 = v16[1];
      v20 = v16[2];
      v21 = v16[5];
      v65 = v16[4];
      if (v20 == v66 && v17 == v68)
      {
        break;
      }

      if (sub_1E5A2C114())
      {
        v66 = v20;
        v2 = v17;
        goto LABEL_24;
      }
    }

    v2 = v68;
LABEL_24:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_1E58E73F0(0, *(v63 + 2) + 1, 1, v63);
    }

    v24 = *(v63 + 2);
    v23 = *(v63 + 3);
    if (v24 >= v23 >> 1)
    {
      v63 = sub_1E58E73F0((v23 > 1), v24 + 1, 1, v63);
    }

    *(v63 + 2) = v24 + 1;
    v25 = &v63[48 * v24];
    *(v25 + 4) = v18;
    *(v25 + 5) = v19;
    *(v25 + 6) = v66;
    *(v25 + 7) = v2;
    *(v25 + 8) = v65;
    *(v25 + 9) = v21;
    v6 = v64;
    v5 = v60;
    if (v64 != v62)
    {
      continue;
    }

    break;
  }

LABEL_34:
  sub_1E59DF400(v59, v5, v58, v57, v56, v55, v54);
  v32 = v63;
  v67 = *(v63 + 2);
  if (!v67)
  {
    v36 = MEMORY[0x1E69E7CC0];

    return v36;
  }

  v33 = 0;
  v34 = v70;
  v35 = v70 + 56;
  v36 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v37 = v33;
  while (v37 < *(v32 + 2))
  {
    v33 = v37 + 1;
    if (*(v34 + 16))
    {
      v38 = &v63[48 * v37 + 32];
      v40 = *v38;
      v39 = *(v38 + 8);
      v2 = *(v38 + 16);
      v69 = *(v38 + 24);
      v41 = *(v38 + 40);
      v42 = v34;
      sub_1E5A2C1B4();

      swift_bridgeObjectRetain_n();
      sub_1E5A2BB74();
      v43 = sub_1E5A2C204();
      v44 = -1 << *(v42 + 32);
      v45 = v43 & ~v44;
      if ((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = (*(v70 + 48) + 16 * v45);
          v48 = *v47 == v40 && v47[1] == v39;
          if (v48 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v35 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v75 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E590DF28(0, *(v36 + 16) + 1, 1);
          v36 = v75;
        }

        v34 = v70;
        v51 = *(v36 + 16);
        v50 = *(v36 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1E590DF28((v50 > 1), v51 + 1, 1);
          v34 = v70;
          v36 = v75;
        }

        *(v36 + 16) = v51 + 1;
        v52 = v36 + 48 * v51;
        *(v52 + 32) = v40;
        *(v52 + 40) = v39;
        *(v52 + 48) = v2;
        *(v52 + 56) = v69;
        *(v52 + 72) = v41;
        v32 = v63;
        if (v33 == v67)
        {
LABEL_55:

          return v36;
        }

        goto LABEL_36;
      }

LABEL_37:

      swift_bridgeObjectRelease_n();
      v34 = v70;
      v32 = v63;
    }

    v37 = v33;
    if (v33 == v67)
    {
      goto LABEL_55;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  MEMORY[0x1E69331F0](v2);

  __break(1u);
  return result;
}

void sub_1E59DCF98(uint64_t a1)
{
  v2 = sub_1E5A2B764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E5A2B774();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ceil(*(a1 + 16) * 0.5);
  if (v9 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = v9;
    *v5 = xmmword_1E5A317E0;
    (*(v3 + 104))(v5, *MEMORY[0x1E697D748], v2);
    sub_1E5A2B784();
    sub_1E59E9100(v8, v10);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1E59DD140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *v2;
  v11 = v2[1];
  v20 = *v2;
  v21 = v11;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  if (sub_1E59DC408(&v14))
  {
    result = sub_1E5A2B454();
  }

  else
  {
    v20 = v10;
    v21 = v11;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    if (sub_1E59DC02C(&v14))
    {
      result = sub_1E5A2B404();
    }

    else
    {
      result = sub_1E5A2B424();
    }
  }

  v13 = MEMORY[0x1E6981568];
  a2[3] = MEMORY[0x1E69815C0];
  a2[4] = v13;
  *a2 = result;
  return result;
}

double sub_1E59DD204@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = v2[1];
  v66 = *v2;
  v67 = v9;
  sub_1E59DBB90(&v71);
  v10 = *(&v71 + 1);
  if (!*(&v71 + 1))
  {
    goto LABEL_9;
  }

  *&v64 = v4;
  *(&v64 + 1) = v3;
  v11 = v71;
  v12 = *(&v72 + 1);
  v13 = v72;
  v15 = v73;
  v14 = v74;
  v16 = v75;
  if (!v5 || !*(v73 + 16))
  {
    v37 = *(&v71 + 1);
    v36 = v71;
    v38 = v72;
    v39 = v73;
LABEL_8:
    sub_1E59DF400(v36, v37, v38, v12, v39, v14, v16);
    v3 = *(&v64 + 1);
    v4 = v64;
LABEL_9:
    *&v71 = v4;
    *(&v71 + 1) = v3;
    *&v72 = v6;
    *(&v72 + 1) = v5;
    v73 = v8;
    v74 = v7;
    sub_1E59DD140(&v71, &v66);
    __swift_project_boxed_opaque_existential_1(&v66, v69);
    *&v71 = v8;
    *(&v71 + 1) = v7;
    sub_1E58D1C80();

    v40 = sub_1E5A2AFD4();
    v42 = v41;
    v44 = v43;
    sub_1E5A2AED4();
    sub_1E5A2AE24();

    v45 = sub_1E5A2AFA4();
    v47 = v46;
    v49 = v48;

    sub_1E58B3C9C(v40, v42, v44 & 1);

    v50 = sub_1E5A2AF84();
    v52 = v51;
    LOBYTE(v42) = v53;
    v55 = v54;
    sub_1E58B3C9C(v45, v47, v49 & 1);

    __swift_destroy_boxed_opaque_existential_1(&v66);
    v66 = v50;
    v67 = v52;
    v68 = v42 & 1;
    v69 = v55;
    LOBYTE(v70) = 1;
    goto LABEL_10;
  }

  v61 = *(&v72 + 1);
  v62 = v74;
  v63 = v75;
  v17 = sub_1E58EF508(v6, v5);
  if ((v18 & 1) == 0)
  {
    v36 = v11;
    v37 = v10;
    v38 = v13;
    v12 = v61;
    v14 = v62;
    v39 = v15;
    v16 = v63;
    goto LABEL_8;
  }

  v19 = (*(v15 + 56) + 16 * v17);
  v59 = v19[1];
  v60 = *v19;

  sub_1E59DF400(v11, v10, v13, v61, v15, v62, v63);
  v71 = v64;
  *&v72 = v6;
  *(&v72 + 1) = v5;
  v73 = v8;
  v74 = v7;
  sub_1E59DD140(&v71, &v66);
  __swift_project_boxed_opaque_existential_1(&v66, v69);
  *&v71 = v60;
  *(&v71 + 1) = v59;
  sub_1E58D1C80();
  v20 = sub_1E5A2AFD4();
  v22 = v21;
  v24 = v23;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v25 = sub_1E5A2AFA4();
  v27 = v26;
  v29 = v28;

  sub_1E58B3C9C(v20, v22, v24 & 1);

  v30 = sub_1E5A2AF84();
  v32 = v31;
  LOBYTE(v22) = v33;
  v35 = v34;
  sub_1E58B3C9C(v25, v27, v29 & 1);

  __swift_destroy_boxed_opaque_existential_1(&v66);
  v66 = v30;
  v67 = v32;
  v68 = v22 & 1;
  v69 = v35;
  LOBYTE(v70) = 0;
LABEL_10:
  sub_1E5A2AA74();
  result = *&v71;
  v57 = v72;
  v58 = v73;
  *a2 = v71;
  *(a2 + 16) = v57;
  *(a2 + 32) = v58;
  return result;
}

uint64_t SkillLevelSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v49);
  v56 = v43 - v2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD00, &qword_1E5A3FF20);
  MEMORY[0x1EEE9AC00](v51);
  v4 = v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD08, &qword_1E5A3FF28);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = v43 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD10, &qword_1E5A3FF30);
  MEMORY[0x1EEE9AC00](v54);
  v55 = v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD18, &qword_1E5A3FF38);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v43 - v10;
  v11 = type metadata accessor for EditItem(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  swift_getKeyPath();

  sub_1E5A2B934();

  v16 = &v14[*(v12 + 44)];
  v17 = *v16;
  v18 = v16[1];

  sub_1E58F00BC(v14, type metadata accessor for EditItem);
  if (!v18)
  {
    return (*(v9 + 56))(v57, 1, 1, v8);
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v19 = v62;
  if (!*(v62 + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_1E58EF508(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

    return (*(v9 + 56))(v57, 1, 1, v8);
  }

  v47 = *(*(v19 + 56) + (v20 << 6) + 40);

  v43[1] = v43;
  MEMORY[0x1EEE9AC00](v23);
  v46 = &v37;
  v40 = v15;
  sub_1E59DEBE4(&v62);
  v24 = v64;
  v44 = v63;
  v45 = v62;
  v41 = sub_1E5A2B7F4();
  v42 = v25;
  LOBYTE(v40) = 1;
  v39 = 0;
  LOBYTE(v38) = 1;
  v37 = 0;
  sub_1E5A2A764();
  v61 = v24;
  *&v60[71] = *&v71[87];
  *&v60[55] = *&v71[71];
  *&v60[103] = v72;
  *&v60[87] = *&v71[103];
  *&v60[23] = *&v71[39];
  *&v60[7] = *&v71[23];
  *&v60[39] = *&v71[55];
  v62 = v45;
  v63 = v44;
  v64 = v24;
  v69 = *&v60[64];
  v70 = *&v60[80];
  *v71 = *&v60[96];
  *&v71[15] = *(&v72 + 1);
  v65 = *v60;
  v66 = *&v60[16];
  v67 = *&v60[32];
  v68 = *&v60[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD20, &qword_1E5A3FF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD28, &qword_1E5A3FF88);
  sub_1E59DEE98();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD58, &qword_1E5A3FFA0);
  v27 = sub_1E58CD164(&qword_1ECFFFD60, &qword_1ECFFFD58, &qword_1E5A3FFA0, MEMORY[0x1E697BE60]);
  v58 = v26;
  v59 = v27;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B714();

  *&v4[*(v51 + 36)] = 256;
  sub_1E5A2ADF4();
  sub_1E59DF024();
  v28 = v50;
  sub_1E5A2B134();
  sub_1E58BAD14(v4, &qword_1ECFFFD00, &qword_1E5A3FF20);
  v58 = sub_1E5A2B414();
  v29 = sub_1E5A2B634();
  v30 = v55;
  (*(v52 + 32))(v55, v28, v53);
  *(v30 + *(v54 + 36)) = v29;
  v31 = *MEMORY[0x1E697E728];
  v32 = sub_1E5A2A684();
  v33 = v56;
  (*(*(v32 - 8) + 104))(v56, v31, v32);
  sub_1E5904640(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E59DF1C0();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    v35 = v48;
    sub_1E5A2B164();
    sub_1E58BAD14(v33, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58BAD14(v30, &qword_1ECFFFD10, &qword_1E5A3FF30);
    v36 = v57;
    (*(v9 + 32))(v57, v35, v8);
    return (*(v9 + 56))(v36, 0, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E59DDD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = sub_1E5A2AAC4();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD58, &qword_1E5A3FFA0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  sub_1E5A2AD64();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD98, &qword_1E5A400B0);
  sub_1E59DF470();
  sub_1E5A2A4C4();
  sub_1E5A2AAB4();
  LOBYTE(a2) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a2)
  {
    sub_1E5A2AD74();
  }

  sub_1E58CD164(&qword_1ECFFFD60, &qword_1ECFFFD58, &qword_1E5A3FFA0, MEMORY[0x1E697BE60]);
  sub_1E5A2B234();
  (*(v6 + 8))(v8, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E59DDFF4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1E59DC928(a3);
  sub_1E59DCF98(v7);

  sub_1E5A2A934();
  sub_1E5904640(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1E5A2C264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFDB8, &qword_1E5A400C0);
  sub_1E59DF534();
  sub_1E5A2B824();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD98, &qword_1E5A400B0);
  *(a4 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1E59DE19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E59DC928(a3);
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFDE8, &qword_1E5A40100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFDF0, &qword_1E5A40108);
  sub_1E58CD164(&qword_1ECFFFDF8, &qword_1ECFFFDE8, &qword_1E5A40100, MEMORY[0x1E69E6338]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFDC8, &qword_1E5A400C8);
  sub_1E59DF610();
  sub_1E58EFCE8();
  swift_getOpaqueTypeConformance2();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E59DE324(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFDC8, &qword_1E5A400C8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v22 = a1[2];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  *(v10 + 64) = a1[2];
  v14 = a2;
  v15 = a3;
  v16 = &v20;

  sub_1E59DF6E8(&v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE00, &qword_1E5A40110);
  sub_1E59DF744();
  sub_1E5A2B574();
  v17 = a2;
  v18 = a3;
  v19[0] = v20;
  v19[1] = v21;
  v19[2] = v22;
  v8[*(v6 + 36)] = (sub_1E59DC408(v19) & 1) == 0;
  sub_1E59DF610();
  sub_1E58EFCE8();
  sub_1E5A2B0C4();
  return sub_1E58BAD14(v8, &qword_1ECFFFDC8, &qword_1E5A400C8);
}

uint64_t sub_1E59DE4F8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  v12 = a3[1];
  v13 = v4;
  v5 = *(a3 + 4);
  v6 = *(a3 + 5);
  v7 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[48] = 1;
  *v9 = 7;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  v9[32] = 1;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  v10 = v12;
  *(v9 + 104) = v13;
  *(v9 + 120) = v10;
  *(v9 + 17) = v5;
  *(v9 + 18) = v6;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 46) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E59DF6E8(a3, v14);
  sub_1E5A2B954();
  return sub_1E58F00BC(v9, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E59DE614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v40 = a1;
  v45 = a4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE30, &qword_1E5A40150);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = v36 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE28, &unk_1E5A40120) - 8;
  MEMORY[0x1EEE9AC00](v39);
  v46 = v36 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE18, &qword_1E5A40118) - 8;
  MEMORY[0x1EEE9AC00](v42);
  v38 = v36 - v10;
  v47 = a1;
  v48 = a2;
  v37 = a3;
  v11 = a3[1];
  v52 = *a3;
  v53 = v11;
  v54 = a3[2];
  sub_1E59DD204(&v52, &v49);
  v12 = v49;
  v13 = v50;
  v52 = v49;
  v53 = v50;
  LOBYTE(v54) = v51;
  v36[1] = sub_1E5A2AD64();
  sub_1E5A2B7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFD50, &qword_1E5A3FF98);
  sub_1E59DEFA8();
  sub_1E5A2B274();
  sub_1E59DF97C(v12, *(&v12 + 1), v13, *(&v13 + 1));
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  v14 = v46;
  (*(v43 + 32))(v46, v8, v44);
  v15 = (v14 + *(v39 + 44));
  v16 = v57;
  v17 = v58;
  v15[4] = v56;
  v15[5] = v16;
  v15[6] = v17;
  v18 = v53;
  *v15 = v52;
  v15[1] = v18;
  v19 = v55;
  v15[2] = v54;
  v15[3] = v19;
  v44 = sub_1E5A2B7E4();
  v21 = v20;
  v22 = v38;
  v23 = &v38[*(v42 + 44)];
  sub_1E59DEAD8(v40, v41, v37, &v49);
  v24 = v49;
  v25 = BYTE8(v49);
  v26 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC780, &unk_1E5A342F0) + 36)];
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_1E5A2A9B4();
  v29 = *(*(v28 - 8) + 104);
  v29(v26, v27, v28);
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)] = 256;
  *v23 = v24;
  v23[8] = v25;
  v30 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC760, &qword_1E5A342C0) + 36)];
  *v30 = v44;
  v30[1] = v21;
  v31 = v22;
  sub_1E58F0054(v46, v22, &qword_1ECFFFE28, &unk_1E5A40120);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE00, &qword_1E5A40110);
  v33 = v45;
  v34 = v45 + *(v32 + 36);
  v29(v34, v27, v28);
  *(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC770, &unk_1E5A319A0) + 36)) = 0;
  return sub_1E58F0054(v31, v33, &qword_1ECFFFE18, &qword_1E5A40118);
}

uint64_t sub_1E59DEAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a1;
  v10 = a2;
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  v8[2] = a3[2];
  if (sub_1E59DC02C(v8))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED026498;
    LOBYTE(v10) = 0;
  }

  else
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED0264A8;
    LOBYTE(v10) = 1;
  }

  result = sub_1E5A2AA74();
  v7 = BYTE8(v8[0]);
  *a4 = *&v8[0];
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1E59DEBE4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1E59DBB90(&v19);
  v6 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v18 = a3;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = v22;
    v11 = v23;
    if (*(&v20 + 1))
    {

      sub_1E59DF400(v7, v6, v8, *(&v8 + 1), v9, v10, v11);
      v19 = v8;
      sub_1E58D1C80();
      sub_1E5A2AFD4();
      result = sub_1E5A2AA74();
      v13 = v19;
      v14 = v20;
      v15 = v21;
      a3 = v18;
      goto LABEL_8;
    }

    sub_1E59DF400(v19, *(&v19 + 1), v20, 0, v21, v22, v23);
    a3 = v18;
  }

  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2D33E0;
  swift_getKeyPath();
  v17 = v16;
  sub_1E5A2B944();

  sub_1E5A2AF64();
  result = sub_1E5A2AA74();
  v13 = v19;
  v14 = v20;
  v15 = v21;
LABEL_8:
  *a3 = v13;
  *(a3 + 16) = v14;
  *(a3 + 32) = v15;
  return result;
}

unint64_t sub_1E59DEE98()
{
  result = qword_1ECFFFD30;
  if (!qword_1ECFFFD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD20, &qword_1E5A3FF80);
    sub_1E59DEF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFD30);
  }

  return result;
}

unint64_t sub_1E59DEF24()
{
  result = qword_1ECFFFD38;
  if (!qword_1ECFFFD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD40, &qword_1E5A3FF90);
    sub_1E59DEFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFD38);
  }

  return result;
}

unint64_t sub_1E59DEFA8()
{
  result = qword_1ECFFFD48;
  if (!qword_1ECFFFD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD50, &qword_1E5A3FF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFD48);
  }

  return result;
}

unint64_t sub_1E59DF024()
{
  result = qword_1ECFFFD68;
  if (!qword_1ECFFFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD00, &qword_1E5A3FF20);
    sub_1E59DF0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFD68);
  }

  return result;
}

unint64_t sub_1E59DF0B0()
{
  result = qword_1ECFFFD70;
  if (!qword_1ECFFFD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD78, &unk_1E5A3FFA8);
    sub_1E59DEE98();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD58, &qword_1E5A3FFA0);
    sub_1E58CD164(&qword_1ECFFFD60, &qword_1ECFFFD58, &qword_1E5A3FFA0, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFD70);
  }

  return result;
}

unint64_t sub_1E59DF1C0()
{
  result = qword_1ECFFFD80;
  if (!qword_1ECFFFD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD10, &qword_1E5A3FF30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD00, &qword_1E5A3FF20);
    sub_1E59DF024();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFD80);
  }

  return result;
}

unint64_t sub_1E59DF2E0()
{
  result = qword_1ECFFFD88;
  if (!qword_1ECFFFD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD90, &qword_1E5A40048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD10, &qword_1E5A3FF30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E59DF1C0();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFD88);
  }

  return result;
}

void sub_1E59DF400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

unint64_t sub_1E59DF470()
{
  result = qword_1ECFFFDA0;
  if (!qword_1ECFFFDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD98, &qword_1E5A400B0);
    sub_1E58CD164(&qword_1ECFFFDA8, &qword_1ECFFFDB0, &qword_1E5A400B8, MEMORY[0x1E697D7A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFDA0);
  }

  return result;
}

unint64_t sub_1E59DF534()
{
  result = qword_1ECFFFDC0;
  if (!qword_1ECFFFDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFDB8, &qword_1E5A400C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFDC8, &qword_1E5A400C8);
    sub_1E59DF610();
    sub_1E58EFCE8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFDC0);
  }

  return result;
}

unint64_t sub_1E59DF610()
{
  result = qword_1ECFFFDD0;
  if (!qword_1ECFFFDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFDC8, &qword_1E5A400C8);
    sub_1E58CD164(&qword_1ECFFFDD8, &qword_1ECFFFDE0, &qword_1E5A400D0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFDD0);
  }

  return result;
}

unint64_t sub_1E59DF744()
{
  result = qword_1ECFFFE08;
  if (!qword_1ECFFFE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFE00, &qword_1E5A40110);
    sub_1E59DF7FC();
    sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE08);
  }

  return result;
}

unint64_t sub_1E59DF7FC()
{
  result = qword_1ECFFFE10;
  if (!qword_1ECFFFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFE18, &qword_1E5A40118);
    sub_1E59DF8B4();
    sub_1E58CD164(&qword_1ECFFC758, &qword_1ECFFC760, &qword_1E5A342C0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE10);
  }

  return result;
}

unint64_t sub_1E59DF8B4()
{
  result = qword_1ECFFFE20;
  if (!qword_1ECFFFE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFE28, &unk_1E5A40120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFD50, &qword_1E5A3FF98);
    sub_1E59DEFA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE20);
  }

  return result;
}

uint64_t sub_1E59DF97C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1E58B3C9C(a1, a2, a3 & 1);
}

uint64_t sub_1E59DF9B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A227C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E59DFA24(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E59DFA24(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E59DFC08(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E59DFB1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E59DFB1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 48 * v4;
    result = *(v9 + 32);
    v10 = *(v9 + 40);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 32) && v10 == *(v12 + 40);
      if (v13 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      result = *(v12 + 80);
      v10 = *(v12 + 88);
      v16 = *(v12 + 64);
      v17 = *(v12 + 16);
      *(v12 + 48) = *v12;
      *(v12 + 64) = v17;
      *(v12 + 80) = *(v12 + 32);
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 32) = result;
      *(v12 + 40) = v10;
      v12 -= 48;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E59DFC08(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v104 = *v104;
    if (!v104)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1E5A21290(v8);
      v8 = result;
    }

    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v98 = &v8[16 * v96];
        v5 = *v98;
        v99 = &v95[2 * v96];
        v100 = v99[1];
        sub_1E59E0218((v97 + 48 * *v98), (v97 + 48 * *v99), (v97 + 48 * v100), v104);
        if (v4)
        {
        }

        if (v100 < v5)
        {
          goto LABEL_129;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_130;
        }

        *v98 = v5;
        *(v98 + 1) = v100;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_131;
        }

        v96 = *v95 - 1;
        result = memmove(v99, v99 + 2, 16 * v101);
        *v95 = v96;
        v5 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 48 * v7;
      result = *(v11 + 32);
      v12 = *(v11 + 40);
      v13 = *v5 + 48 * v9;
      if (result == *(v13 + 32) && v12 == *(v13 + 40))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1E5A2C114();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 48 * v9 + 136);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 7) && *v16 == *(v16 - 6))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E5A2C114();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 6;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 48 * v7 - 16;
          v19 = 48 * v9 + 40;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v31 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v31 + v19);
              v23 = v31 + v18;
              v24 = *(v22 - 5);
              v25 = *(v22 - 4);
              v26 = *(v22 - 1);
              v27 = *v22;
              v28 = *(v22 - 3);
              v30 = *(v23 - 16);
              v29 = *v23;
              *(v22 - 5) = *(v23 - 32);
              *(v22 - 3) = v30;
              *(v22 - 1) = v29;
              *(v23 - 32) = v24;
              *(v23 - 24) = v25;
              *(v23 - 16) = v28;
              *v23 = v26;
              *(v23 + 8) = v27;
            }

            ++v21;
            v18 -= 48;
            v19 += 48;
          }

          while (v21 < v20);
        }
      }
    }

    v32 = v5[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = v9 + a4;
        }

        if (v33 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_1E58E6258((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_74:
          if (v57)
          {
            goto LABEL_120;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_127;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_88:
        if (v75)
        {
          goto LABEL_122;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_95:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        sub_1E59E0218((*v5 + 48 * v92), (*v5 + 48 * *&v8[16 * v53 + 32]), (*v5 + 48 * v93), v52);
        if (v4)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        result = sub_1E5A21204(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v34 = *v5;
  v35 = *v5 + 48 * v7 - 48;
  v102 = v9;
  v36 = v9 - v7;
LABEL_43:
  v37 = v34 + 48 * v7;
  v38 = *(v37 + 32);
  v39 = *(v37 + 40);
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = v38 == *(v41 + 32) && v39 == *(v41 + 40);
    if (v42 || (result = sub_1E5A2C114(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v35 += 48;
      --v36;
      if (v7 != v33)
      {
        goto LABEL_43;
      }

      v7 = v33;
      v5 = a3;
      v9 = v102;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v43 = *(v41 + 48);
    v44 = *(v41 + 56);
    v38 = *(v41 + 80);
    v39 = *(v41 + 88);
    v45 = *(v41 + 64);
    v46 = *(v41 + 16);
    *(v41 + 48) = *v41;
    *(v41 + 64) = v46;
    *(v41 + 80) = *(v41 + 32);
    *v41 = v43;
    *(v41 + 8) = v44;
    *(v41 + 16) = v45;
    *(v41 + 32) = v38;
    *(v41 + 40) = v39;
    v41 -= 48;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1E59E0218(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 4) == *(v4 + 4) && *(v6 + 5) == *(v4 + 5);
      if (!v16 && (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v16 = v7 == v4;
      v4 += 48;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v16 = v7 == v6;
    v6 += 48;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_24:
    v5 -= 48;
    do
    {
      v17 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v17 && (sub_1E5A2C114() & 1) != 0)
      {
        v21 = v6 - 48;
        if (v5 + 48 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 48, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v18 = v12 - 48;
      if (v5 + 48 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 48;
      v12 -= 48;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

unint64_t *sub_1E59E0478(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1E59E0F44(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E59E0514(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE50, &qword_1E5A40178);
  result = sub_1E5A2BE44();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v34 = v4;
  while (v9)
  {
    v12 = v8;
    v13 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_17:
    v16 = *(v4 + 48) + 40 * (v13 | (v10 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = v12;
    sub_1E5A2C1B4();

    v36 = v17;
    sub_1E5A2BB74();
    sub_1E5A2BB74();
    sub_1E5A2C1E4();
    result = sub_1E5A2C204();
    v8 = v22;
    v23 = -1 << *(v22 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v22 + 48) + 40 * v26;
    *v31 = v36;
    *(v31 + 8) = v18;
    *(v31 + 16) = v20;
    *(v31 + 24) = v19;
    *(v31 + 32) = v21;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v9 = v35;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v10;
  while (1)
  {
    v10 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v10];
    ++v14;
    if (v15)
    {
      v12 = v8;
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E59E07C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD920, &qword_1E5A364E0);
  result = sub_1E5A2BE44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v19);

    sub_1E5A2BB74();
    result = sub_1E5A2C204();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 48) + 24 * v23;
    *v28 = v18;
    *(v28 + 8) = v17;
    *(v28 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v10 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E59E0A24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1E5A2BE44();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v33 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v34 = (v12 - 1) & v12;
LABEL_17:
    v18 = (*(v6 + 48) + 32 * (v15 | (v13 << 6)));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E5A2BB74();
    result = sub_1E5A2C204();
    v23 = -1 << *(v11 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v14 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v11 + 48) + 32 * v26);
    *v31 = v19;
    v31[1] = v20;
    v31[2] = v21;
    v31[3] = v22;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v33;
    v12 = v34;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v34 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E59E0C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x1E69E7CD0];
LABEL_31:

    return v10;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE38, &qword_1E5A40158);
  result = sub_1E5A2BE44();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v34 = v4;
  v35 = result;
  while (v9)
  {
    v13 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_15:
    v16 = (*(v4 + 48) + 48 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    v21 = v16[5];
    v38 = v16[4];
    sub_1E5A2C1B4();

    v37 = v18;
    sub_1E5A2BB74();
    if (v19)
    {
      sub_1E5A2C1D4();
      v22 = v20;
      sub_1E5A2BB74();
    }

    else
    {
      v22 = v20;
      sub_1E5A2C1D4();
    }

    sub_1E5A2BB74();
    result = sub_1E5A2C204();
    v8 = v35;
    v23 = -1 << *(v35 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_28;
        }
      }

      goto LABEL_34;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v35 + 48) + 48 * v26);
    *v31 = v17;
    v31[1] = v37;
    v31[2] = v22;
    v31[3] = v19;
    v31[4] = v38;
    v31[5] = v21;
    ++*(v35 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v34;
    v9 = v36;
    if (!v5)
    {
LABEL_30:
      v10 = v8;
      goto LABEL_31;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_30;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t *sub_1E59E0F44(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 48 * v26);
      v15 = *v14;
      v16 = v14[1];
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      v17 = sub_1E5A2C204();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v15 && v21[1] == v16;
          if (v22 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_1E59E0C74(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1E59E1198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v44 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35[0] = v3;
    v35[1] = v35;
    v36 = v8;
    MEMORY[0x1EEE9AC00](v10);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v40 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v3 = v13 & *(v5 + 56);
    v14 = (v12 + 63) >> 6;
    v43 = a2 + 56;
    v38 = v5;
    while (v3)
    {
      v15 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v19 = *(v5 + 48);
        v39 = v18;
        v20 = (v19 + 48 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[5];
        v24 = v20[3];
        sub_1E5A2C1B4();
        v42 = v24;

        v41 = v23;

        sub_1E5A2BB74();
        v25 = sub_1E5A2C204();
        v26 = -1 << *(a2 + 32);
        v9 = v25 & ~v26;
        if ((*(v43 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v27 = ~v26;
          while (1)
          {
            v28 = (*(a2 + 48) + 16 * v9);
            v29 = *v28 == v21 && v28[1] == v22;
            if (v29 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v27;
            if (((*(v43 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v5 = v38;
          *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
          if (__OFADD__(v40++, 1))
          {
            __break(1u);
LABEL_27:
            v31 = sub_1E59E0C74(v37, v36, v40, v5);

            return v31;
          }
        }

        else
        {
LABEL_6:

          v5 = v38;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v14)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v3 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v34 = sub_1E59E0478(v33, v8, v5, a2);

  MEMORY[0x1E6933430](v33, -1, -1);

  return v34;
}

uint64_t sub_1E59E1534(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746867696C746FLL;
  v3 = 0x7053747369747261;
  v4 = a1;
  v5 = 0x576D6172676F7270;
  v6 = 0xEE0074756F6B726FLL;
  if (a1 != 6)
  {
    v5 = 0x6967736B6E616874;
    v6 = 0xEC000000676E6976;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7261655977656ELL;
  if (a1 != 4)
  {
    v8 = 0x6564697270;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x796164696C6F68;
  if (a1 != 2)
  {
    v10 = 0x77654E72616E756CLL;
    v9 = 0xEC00000072616559;
  }

  v11 = 0x6565776F6C6C6168;
  v12 = 0xE90000000000006ELL;
  if (!a1)
  {
    v11 = 0x7053747369747261;
    v12 = 0xEF746867696C746FLL;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE0074756F6B726FLL;
        if (v13 != 0x576D6172676F7270)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEC000000676E6976;
        if (v13 != 0x6967736B6E616874)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x7261655977656ELL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x6564697270)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x796164696C6F68)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x77654E72616E756CLL;
      v2 = 0xEC00000072616559;
    }

    else if (a2)
    {
      v2 = 0xE90000000000006ELL;
      if (v13 != 0x6565776F6C6C6168)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_1E5A2C114();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t CalendarDay.init(date:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v28 = sub_1E5A29C54();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE58, &qword_1E5A40180);
  v8 = sub_1E5A29FC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E5A303B0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A68], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A78], v8);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A48], v8);
  sub_1E59E21BC(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E5A29F24();

  result = sub_1E5A29C24();
  if (v16)
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = result;
  result = sub_1E5A29C34();
  if (v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  result = sub_1E5A29C14();
  if ((v20 & 1) == 0)
  {
    v21 = result;
    v22 = sub_1E5A29FE4();
    (*(*(v22 - 8) + 8))(a2, v22);
    v23 = sub_1E5A29E34();
    (*(*(v23 - 8) + 8))(a1, v23);
    result = (*(v26 + 8))(v7, v28);
    v24 = v27;
    *v27 = v17;
    v24[1] = v19;
    v24[2] = v21;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

FitnessWorkoutPlan::CalendarDay __swiftcall CalendarDay.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  *v3 = year;
  v3[1] = month;
  v3[2] = day;
  result.day = day;
  result.month = month;
  result.year = year;
  return result;
}

uint64_t sub_1E59E1B24()
{
  v1 = 0x68746E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 7954788;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1918985593;
  }
}

uint64_t sub_1E59E1B6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59E33F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E59E1B94(uint64_t a1)
{
  v2 = sub_1E59E3508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E1BD0(uint64_t a1)
{
  v2 = sub_1E59E3508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalendarDay.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE60, &qword_1E5A40188);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E3508();
  sub_1E5A2C224();
  v13 = 0;
  sub_1E5A2C094();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_1E5A2C094();
  v11 = 2;
  sub_1E5A2C094();
  return (*(v5 + 8))(v7, v4);
}

uint64_t CalendarDay.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE70, &qword_1E5A40190);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E3508();
  sub_1E5A2C214();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_1E5A2BFC4();
    v16 = 1;
    v14 = sub_1E5A2BFC4();
    v15 = 2;
    v11 = sub_1E5A2BFC4();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CalendarDay.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1E6932DE0](*v0);
  MEMORY[0x1E6932DE0](v1);
  return MEMORY[0x1E6932DE0](v2);
}

uint64_t CalendarDay.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E59E20A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  return sub_1E5A2C204();
}

uint64_t sub_1E59E210C()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1E6932DE0](*v0);
  MEMORY[0x1E6932DE0](v1);
  return MEMORY[0x1E6932DE0](v2);
}

uint64_t sub_1E59E2154(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v2);
  MEMORY[0x1E6932DE0](v3);
  MEMORY[0x1E6932DE0](v4);
  return sub_1E5A2C204();
}

uint64_t sub_1E59E21BC(uint64_t a1)
{
  v2 = sub_1E5A29FC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFE98, &qword_1E5A40400);
    v9 = sub_1E5A2BE44();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E59E36D8(&qword_1ECFFFEA0, MEMORY[0x1E6969AD8]);
      v16 = sub_1E5A2BA34();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1E59E36D8(&qword_1ECFFFEA8, MEMORY[0x1E6969AE0]);
          v23 = sub_1E5A2BA74();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E59E24B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F8, &unk_1E5A403F0);
    v3 = sub_1E5A2BE44();
    v4 = 0;
    v5 = v3 + 56;
    v75 = v1;
    v76 = a1 + 32;
    v86 = v3;
    while (1)
    {
      v6 = v76 + 48 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v89 = *(v6 + 16);
      v90 = *(v6 + 24);
      v91 = *(v6 + 32);
      v9 = *(v6 + 40);
      sub_1E5A2C1B4();
      v88 = v9;
      v85 = v4;
      if (v9 <= 3)
      {
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v10 = 2;
          }

          else
          {
            v10 = 3;
          }
        }

        else
        {
          if (v9)
          {
            MEMORY[0x1E6932DE0](1);
            if ((*&v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v11 = v8;
            }

            else
            {
              v11 = 0.0;
            }

            MEMORY[0x1E6932E10](*&v11);

            sub_1E5A2BB74();
            if ((*&v90 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v12 = v90;
            }

            else
            {
              v12 = 0.0;
            }

            MEMORY[0x1E6932E10](*&v12);
            if ((*&v91 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v13 = v91;
            }

            else
            {
              v13 = 0.0;
            }

            MEMORY[0x1E6932E10](*&v13);
            goto LABEL_34;
          }

          v10 = 0;
        }

        goto LABEL_33;
      }

      if (v9 <= 5)
      {
        if (v9 == 4)
        {
          v10 = 4;
        }

        else
        {
          v10 = 5;
        }

        goto LABEL_33;
      }

      if (v9 == 6)
      {
        break;
      }

      if (v9 == 7)
      {
        v10 = 7;
LABEL_33:
        MEMORY[0x1E6932DE0](v10);

        sub_1E5A2BB74();
        goto LABEL_34;
      }

      MEMORY[0x1E6932DE0](8);
      sub_1E5A2BB74();

LABEL_34:
      result = sub_1E5A2C204();
      v15 = -1 << *(v3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = *(v5 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if (((1 << v16) & v18) == 0)
      {
        v20 = v89;
        LOBYTE(v21) = v9;
LABEL_169:
        *(v5 + 8 * v17) = v18 | v19;
        v71 = *(v3 + 48) + 48 * v16;
        *v71 = v8;
        *(v71 + 8) = v7;
        *(v71 + 16) = v20;
        *(v71 + 24) = v90;
        *(v71 + 32) = v91;
        *(v71 + 40) = v21;
        v72 = *(v3 + 16);
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (!v73)
        {
          *(v3 + 16) = v74;
          goto LABEL_6;
        }

        __break(1u);
        return result;
      }

      v87 = ~v15;
      v20 = v89;
      v21 = v9;
      while (1)
      {
        v27 = *(v3 + 48) + 48 * v16;
        v29 = *v27;
        v28 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = *(v27 + 24);
        v32 = *(v27 + 32);
        v33 = *(v27 + 40);
        v92[0] = v29;
        v92[1] = v28;
        v92[2] = v30;
        v92[3] = v31;
        v92[4] = v32;
        v93 = v33;
        v94 = v8;
        v95 = v7;
        v96 = v20;
        v97 = v90;
        v98 = v91;
        v99 = v21;
        if (v33 > 3)
        {
          if (v33 <= 5)
          {
            if (v33 == 4)
            {
              if (v21 == 4)
              {
                if (v29 == *&v8 && v28 == v7)
                {
                  goto LABEL_3;
                }

                v39 = v20;
                v79 = sub_1E5A2C114();
                sub_1E58BACE0(*&v8, v7, v39, *&v90, *&v91, 4u);
                sub_1E58BACE0(v29, v28, v30, v31, v32, 4u);
                result = sub_1E58F7160(v92);
                if (v79)
                {
                  sub_1E58BACAC(*&v8, v7, v89, *&v90, *&v91, 4u);
                  goto LABEL_5;
                }

                goto LABEL_38;
              }

              sub_1E58BACE0(*&v8, v7, v20, *&v90, *&v91, v21);
              v22 = v29;
              v23 = v28;
              v24 = v30;
              v25 = v31;
              v26 = v32;
              LOBYTE(v21) = 4;
            }

            else
            {
              if (v21 == 5)
              {
                if (v29 == *&v8 && v28 == v7)
                {
                  goto LABEL_3;
                }

                v49 = v20;
                v83 = sub_1E5A2C114();
                sub_1E58BACE0(*&v8, v7, v49, *&v90, *&v91, 5u);
                sub_1E58BACE0(v29, v28, v30, v31, v32, 5u);
                result = sub_1E58F7160(v92);
                if (v83)
                {
                  sub_1E58BACAC(*&v8, v7, v89, *&v90, *&v91, 5u);
                  goto LABEL_5;
                }

                goto LABEL_38;
              }

              sub_1E58BACE0(*&v8, v7, v20, *&v90, *&v91, v21);
              v22 = v29;
              v23 = v28;
              v24 = v30;
              v25 = v31;
              v26 = v32;
              LOBYTE(v21) = 5;
            }
          }

          else if (v33 == 6)
          {
            if (v21 == 6)
            {
              if (v29 == *&v8 && v28 == v7)
              {
                goto LABEL_3;
              }

              v41 = v20;
              v80 = sub_1E5A2C114();
              sub_1E58BACE0(*&v8, v7, v41, *&v90, *&v91, 6u);
              sub_1E58BACE0(v29, v28, v30, v31, v32, 6u);
              result = sub_1E58F7160(v92);
              if (v80)
              {
                sub_1E58BACAC(*&v8, v7, v89, *&v90, *&v91, 6u);
                goto LABEL_5;
              }

              goto LABEL_38;
            }

            sub_1E58BACE0(*&v8, v7, v20, *&v90, *&v91, v21);
            v22 = v29;
            v23 = v28;
            v24 = v30;
            v25 = v31;
            v26 = v32;
            LOBYTE(v21) = 6;
          }

          else if (v33 == 7)
          {
            if (v21 == 7)
            {
              if (v29 == *&v8 && v28 == v7)
              {
                goto LABEL_3;
              }

              v35 = v20;
              v77 = sub_1E5A2C114();
              sub_1E58BACE0(*&v8, v7, v35, *&v90, *&v91, 7u);
              sub_1E58BACE0(v29, v28, v30, v31, v32, 7u);
              result = sub_1E58F7160(v92);
              if (v77)
              {
                sub_1E58BACAC(*&v8, v7, v89, *&v90, *&v91, 7u);
                goto LABEL_5;
              }

              goto LABEL_38;
            }

            sub_1E58BACE0(*&v8, v7, v20, *&v90, *&v91, v21);
            v22 = v29;
            v23 = v28;
            v24 = v30;
            v25 = v31;
            v26 = v32;
            LOBYTE(v21) = 7;
          }

          else
          {
            if (v21 == 8)
            {
              if (v29 > 3u)
              {
                if (v29 <= 5u)
                {
                  if (v29 == 4)
                  {
                    v47 = 0xE700000000000000;
                    v46 = 0x7261655977656ELL;
                  }

                  else
                  {
                    v47 = 0xE500000000000000;
                    v46 = 0x6564697270;
                  }

                  goto LABEL_137;
                }

                if (v29 == 6)
                {
                  v46 = 0x576D6172676F7270;
                  v47 = 0xEE0074756F6B726FLL;
                  goto LABEL_137;
                }

                v46 = 0x6967736B6E616874;
                v59 = 1735289206;
              }

              else
              {
                if (v29 <= 1u)
                {
                  v46 = 0x7053747369747261;
                  v47 = 0xEF746867696C746FLL;
                  if (v29)
                  {
                    v46 = 0x6565776F6C6C6168;
                    v47 = 0xE90000000000006ELL;
                  }

                  goto LABEL_137;
                }

                if (v29 == 2)
                {
                  v47 = 0xE700000000000000;
                  v46 = 0x796164696C6F68;
LABEL_137:
                  v60 = 0x6967736B6E616874;
                  if (LOBYTE(v8) == 6)
                  {
                    v60 = 0x576D6172676F7270;
                  }

                  v61 = 0xEE0074756F6B726FLL;
                  if (LOBYTE(v8) != 6)
                  {
                    v61 = 0xEC000000676E6976;
                  }

                  v62 = 0x7261655977656ELL;
                  if (LOBYTE(v8) != 4)
                  {
                    v62 = 0x6564697270;
                  }

                  v63 = 0xE500000000000000;
                  if (LOBYTE(v8) == 4)
                  {
                    v63 = 0xE700000000000000;
                  }

                  if (LOBYTE(v8) <= 5u)
                  {
                    v60 = v62;
                    v61 = v63;
                  }

                  v64 = 0x77654E72616E756CLL;
                  if (LOBYTE(v8) == 2)
                  {
                    v64 = 0x796164696C6F68;
                  }

                  v65 = 0xEC00000072616559;
                  if (LOBYTE(v8) == 2)
                  {
                    v65 = 0xE700000000000000;
                  }

                  v66 = 0x7053747369747261;
                  if (LOBYTE(v8))
                  {
                    v66 = 0x6565776F6C6C6168;
                  }

                  v67 = 0xEF746867696C746FLL;
                  if (LOBYTE(v8))
                  {
                    v67 = 0xE90000000000006ELL;
                  }

                  if (LOBYTE(v8) <= 1u)
                  {
                    v64 = v66;
                    v65 = v67;
                  }

                  if (LOBYTE(v8) <= 3u)
                  {
                    v68 = v64;
                  }

                  else
                  {
                    v68 = v60;
                  }

                  if (LOBYTE(v8) <= 3u)
                  {
                    v69 = v65;
                  }

                  else
                  {
                    v69 = v61;
                  }

                  if (v46 == v68 && v47 == v69)
                  {

                    goto LABEL_4;
                  }

                  v70 = sub_1E5A2C114();

                  result = sub_1E58F7160(v92);
                  if (v70)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_38;
                }

                v46 = 0x77654E72616E756CLL;
                v59 = 1918985561;
              }

              v47 = v59 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              goto LABEL_137;
            }

            v22 = *&v8;
            v23 = v7;
            v24 = v20;
            v25 = *&v90;
            v26 = *&v91;
          }

          goto LABEL_37;
        }

        if (v33 > 1)
        {
          if (v33 == 2)
          {
            if (v21 == 2)
            {
              if (v29 == *&v8 && v28 == v7)
              {
                goto LABEL_3;
              }

              v37 = v20;
              v78 = sub_1E5A2C114();
              sub_1E58BACE0(*&v8, v7, v37, *&v90, *&v91, 2u);
              sub_1E58BACE0(v29, v28, v30, v31, v32, 2u);
              result = sub_1E58F7160(v92);
              if (v78)
              {
                sub_1E58BACAC(*&v8, v7, v89, *&v90, *&v91, 2u);
                goto LABEL_5;
              }

              goto LABEL_38;
            }

            sub_1E58BACE0(*&v8, v7, v20, *&v90, *&v91, v21);
            v22 = v29;
            v23 = v28;
            v24 = v30;
            v25 = v31;
            v26 = v32;
            LOBYTE(v21) = 2;
          }

          else
          {
            if (v21 == 3)
            {
              if (v29 == *&v8 && v28 == v7)
              {
LABEL_3:

LABEL_4:
                sub_1E58F7160(v92);
LABEL_5:
                v1 = v75;
                v3 = v86;
                goto LABEL_6;
              }

              v45 = v20;
              v82 = sub_1E5A2C114();
              sub_1E58BACE0(*&v8, v7, v45, *&v90, *&v91, 3u);
              sub_1E58BACE0(v29, v28, v30, v31, v32, 3u);
              result = sub_1E58F7160(v92);
              if (v82)
              {
                sub_1E58BACAC(*&v8, v7, v89, *&v90, *&v91, 3u);
                goto LABEL_5;
              }

              goto LABEL_38;
            }

            sub_1E58BACE0(*&v8, v7, v20, *&v90, *&v91, v21);
            v22 = v29;
            v23 = v28;
            v24 = v30;
            v25 = v31;
            v26 = v32;
            LOBYTE(v21) = 3;
          }

          goto LABEL_37;
        }

        if (!v33)
        {
          break;
        }

        if (v21 != 1)
        {
          v50 = *&v8;
          v51 = v7;
          v52 = v20;
          v53 = *&v90;
          v54 = *&v91;
          goto LABEL_121;
        }

        if (*&v29 != v8)
        {
          v50 = *&v8;
          v51 = v7;
          v52 = v20;
          v53 = *&v90;
          v54 = *&v91;
          LOBYTE(v21) = 1;
LABEL_121:
          sub_1E58BACE0(v50, v51, v52, v53, v54, v21);
          v22 = v29;
          v23 = v28;
          v24 = v30;
          v25 = v31;
          v26 = v32;
          LOBYTE(v21) = 1;
LABEL_37:
          sub_1E58BACE0(v22, v23, v24, v25, v26, v21);
          result = sub_1E58F7160(v92);
          goto LABEL_38;
        }

        if (v28 == v7 && v30 == v20)
        {
          v57 = v20;
          sub_1E58BACE0(*&v8, v7, v20, *&v90, *&v91, 1u);
          sub_1E58BACE0(v29, v7, v57, v31, v32, 1u);
          result = sub_1E58F7160(v92);
LABEL_123:
          if (*&v31 == v90 && *&v32 == v91)
          {
            sub_1E58BACAC(*&v8, v7, v89, *&v90, *&v91, 1u);
            goto LABEL_5;
          }

          goto LABEL_38;
        }

        v43 = v20;
        v81 = sub_1E5A2C114();
        sub_1E58BACE0(*&v8, v7, v43, *&v90, *&v91, 1u);
        sub_1E58BACE0(v29, v28, v30, v31, v32, 1u);
        result = sub_1E58F7160(v92);
        if (v81)
        {
          goto LABEL_123;
        }

LABEL_38:
        v3 = v86;
        v16 = (v16 + 1) & v87;
        v17 = v16 >> 6;
        v19 = 1 << v16;
        v20 = v89;
        v21 = v88;
        if ((*(v5 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          v18 = *(v5 + 8 * v17);
          v1 = v75;
          goto LABEL_169;
        }
      }

      if (v21)
      {
        sub_1E58BACE0(*&v8, v7, v20, *&v90, *&v91, v21);
        v22 = v29;
        v23 = v28;
        v24 = v30;
        v25 = v31;
        v26 = v32;
        LOBYTE(v21) = 0;
        goto LABEL_37;
      }

      if (v29 != *&v8 || v28 != v7)
      {
        v56 = v20;
        v84 = sub_1E5A2C114();
        sub_1E58BACE0(*&v8, v7, v56, *&v90, *&v91, 0);
        sub_1E58BACE0(v29, v28, v30, v31, v32, 0);
        result = sub_1E58F7160(v92);
        if (v84)
        {
          sub_1E58BACAC(*&v8, v7, v89, *&v90, *&v91, 0);
          goto LABEL_5;
        }

        goto LABEL_38;
      }

      sub_1E58F7160(v92);
      v1 = v75;
LABEL_6:
      v4 = v85 + 1;
      if (v85 + 1 == v1)
      {
        return v3;
      }
    }

    v10 = 6;
    goto LABEL_33;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E59E32B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD918, &qword_1E5A364D8);
    v3 = sub_1E5A2BE44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v10);
      result = sub_1E5A2C204();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E59E33F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000)
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

unint64_t sub_1E59E3508()
{
  result = qword_1ECFFFE68;
  if (!qword_1ECFFFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE68);
  }

  return result;
}

unint64_t sub_1E59E355C()
{
  result = qword_1ECFFFE78;
  if (!qword_1ECFFFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE78);
  }

  return result;
}

unint64_t sub_1E59E35D4()
{
  result = qword_1ECFFFE80;
  if (!qword_1ECFFFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE80);
  }

  return result;
}

unint64_t sub_1E59E362C()
{
  result = qword_1ECFFFE88;
  if (!qword_1ECFFFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE88);
  }

  return result;
}

unint64_t sub_1E59E3684()
{
  result = qword_1ECFFFE90;
  if (!qword_1ECFFFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFE90);
  }

  return result;
}

uint64_t sub_1E59E36D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5A29FC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TVPersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(0, a6, a7, a4);
  v15 = v14[9];
  v16 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = &a8[v14[12]];
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton(0, a6, a7, v18);
  swift_getWitnessTable();
  sub_1E5A2A444();
  *v17 = v23;
  *(v17 + 1) = v24;
  v17[16] = v25;
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330, MEMORY[0x1E6999B78]);
  *a8 = sub_1E5A2A654();
  *(a8 + 1) = v19;
  result = sub_1E59E38FC(a2, &a8[v15]);
  *&a8[v14[10]] = a3;
  v21 = &a8[v14[11]];
  *v21 = a4;
  *(v21 + 1) = a5;
  return result;
}

uint64_t sub_1E59E38FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59E396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1E5A2BD84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A454();
  sub_1E5A2A434();
  return v5;
}

uint64_t sub_1E59E3A34(uint64_t a1)
{
  v3 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E5A2BAF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24[-v7];
  sub_1E593B564(v1 + *(a1 + 36), &v24[-v7]);
  v9 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1E58BAD14(v8, &qword_1ECFFC120, &qword_1E5A2FF10);
    return 0;
  }

  v11 = *&v8[*(v9 + 28)];

  sub_1E59E7350(v8, type metadata accessor for PersonalizedWorkoutPlanCandidate);

  v13 = sub_1E591BB44(v12);

  v14 = sub_1E591C344(v13);
  if (v15)
  {

    v16 = 0;
  }

  else
  {
    v16 = v14;
    v17 = sub_1E591C3F8(v13);
    v19 = v18;

    if (v19)
    {
      v16 = 0;
    }

    else
    {
      if (v17 < v16)
      {
        __break(1u);
        return result;
      }

      if (v16 != v17)
      {
        sub_1E5A2BAE4();
        sub_1E5A2BAD4();
        v23 = *(v11 + 16);

        v25 = v23;
        sub_1E5A2BAB4();
        sub_1E5A2BAD4();
        v25 = v16;
        sub_1E5A2BAB4();
        sub_1E5A2BAD4();
        v25 = v17;
        goto LABEL_10;
      }
    }
  }

  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  v20 = *(v11 + 16);

  v25 = v20;
  sub_1E5A2BAB4();
  sub_1E5A2BAD4();
  v25 = v16;
LABEL_10:
  sub_1E5A2BAB4();
  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE2D33E0;
  swift_getKeyPath();

  v22 = v21;
  sub_1E5A2B944();

  return sub_1E5A2BB64();
}

uint64_t TVPersonalizedWorkoutPlanCandidateView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v75 = sub_1E5A2A754();
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E5A2ACC4();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFFEB0, &qword_1E5A40408);
  v5 = MEMORY[0x1E6981148];
  v93 = MEMORY[0x1E6981148];
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v95 = v5;
  v96 = v94;
  v97 = v5;
  v98 = MEMORY[0x1E6981840];
  v69 = a1;
  v68 = *(a1 + 16);
  v6 = v68;
  v7 = sub_1E5A2A6C4();
  v8 = v6;
  v9 = *(a1 + 24);
  v67 = v9;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton(255, v8, v9, v10);
  v11 = sub_1E5A2BD84();
  v91 = v9;
  v92 = MEMORY[0x1E697E040];
  v74 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v86 = v7;
  v87 = v11;
  v88 = WitnessTable;
  v89 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = v7;
  v87 = v11;
  v88 = WitnessTable;
  v89 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = OpaqueTypeMetadata2;
  v87 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v99 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v16 = sub_1E5A2B624();
  v64 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = swift_getWitnessTable();
  v56 = v19;
  v85 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v93 = v16;
  v94 = v11;
  v95 = v19;
  v96 = v55;
  v61 = MEMORY[0x1E697CE68];
  v57 = swift_getOpaqueTypeMetadata2();
  v62 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v21 = &v54 - v20;
  v60 = sub_1E5A2A6C4();
  v65 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v54 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  v59 = sub_1E5A2A6C4();
  v66 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v63 = &v54 - v25;
  sub_1E5A2B7B4();
  v78 = v68;
  v79 = v67;
  v80 = v70;
  v26 = v18;
  sub_1E5A2B614();
  v93 = sub_1E59E396C(v69, v27, v28, v29);
  v94 = v30;
  LOBYTE(v95) = v31 & 1;
  LOBYTE(v86) = 0;
  v32 = v71;
  sub_1E5A2ACB4();
  v33 = swift_checkMetadataState();
  v34 = v21;
  v35 = v56;
  v36 = v55;
  MEMORY[0x1E6931D40](&v93, &v86, v32, v16, v33, v56, v55);
  (*(v72 + 8))(v32, v73);

  (*(v64 + 8))(v26, v16);
  v93 = v16;
  v94 = v33;
  v95 = v35;
  v96 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v54;
  v39 = v57;
  sub_1E5A2B0A4();
  (*(v62 + 8))(v34, v39);
  sub_1E5A2A0A4();
  v41 = v40;
  v42 = *(v75 + 20);
  v43 = *MEMORY[0x1E697F468];
  v44 = sub_1E5A2A9B4();
  v45 = v76;
  (*(*(v44 - 8) + 104))(&v76[v42], v43, v44);
  *v45 = v41;
  v45[1] = v41;
  v83 = v37;
  v84 = MEMORY[0x1E697F568];
  v46 = v60;
  v47 = swift_getWitnessTable();
  sub_1E594AA70();
  v48 = v58;
  sub_1E5A2B3C4();
  sub_1E59E7350(v45, MEMORY[0x1E697EAF0]);
  (*(v65 + 8))(v38, v46);
  v49 = sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  v81 = v47;
  v82 = v49;
  v50 = v59;
  swift_getWitnessTable();
  v51 = v63;
  sub_1E58B41DC();
  v52 = *(v66 + 8);
  v52(v48, v50);
  sub_1E58B41DC();
  return (v52)(v51, v50);
}

uint64_t sub_1E59E48B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v77 = a4;
  v6 = MEMORY[0x1E6981148];
  v91 = MEMORY[0x1E6981148];
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  v93 = v6;
  v94 = v92;
  v95 = v6;
  v96 = MEMORY[0x1E6981840];
  sub_1E5A2A6C4();
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton(255, a2, a3, v7);
  sub_1E5A2BD84();
  v89 = a3;
  v90 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v86 = WitnessTable;
  v87 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v97 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  v72 = sub_1E5A2B864();
  v70 = swift_getWitnessTable();
  v9 = sub_1E5A2B604();
  v73 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v57 - v10;
  v62 = v11;
  v68 = sub_1E5A2A6C4();
  v74 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v76 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v57 - v14;
  v59 = sub_1E5A2A734();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFB8, &qword_1E5A40538);
  v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v18 = &v57 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFC0, &qword_1E5A40540);
  MEMORY[0x1EEE9AC00](v65);
  v20 = &v57 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFC8, &qword_1E5A40548);
  MEMORY[0x1EEE9AC00](v61);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFD0, &qword_1E5A40550);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v57 - v27;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFFEB0, &qword_1E5A40408);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v78 = &v57 - v31;
  v63 = a2;
  v64 = a3;
  v33 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(0, a2, a3, v32);
  sub_1E593B564(v79 + *(v33 + 36), v28);
  v34 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  if ((*(*(v34 - 8) + 48))(v28, 1, v34) == 1)
  {
    sub_1E58BAD14(v28, &qword_1ECFFC120, &qword_1E5A2FF10);
    sub_1E5A2A724();
    v35 = sub_1E59E7078();
    v36 = MEMORY[0x1E6981EF8];
    sub_1E5A2B394();
    (*(v58 + 8))(v16, v59);
    v37 = v60;
    v38 = v66;
    (*(v60 + 16))(v20, v18, v66);
    swift_storeEnumTagMultiPayload();
    sub_1E59E70CC();
    v91 = v36;
    v92 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1E5A2AA74();
    sub_1E58BABA0(v22, v25, &qword_1ECFFFFC8, &qword_1E5A40548);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFE8, &unk_1E5A40558);
    sub_1E59E7120();
    sub_1E59E7200();
    sub_1E5A2AA74();
    sub_1E58BAD14(v22, &qword_1ECFFFFC8, &qword_1E5A40548);
    (*(v37 + 8))(v18, v38);
  }

  else
  {
    v39 = v28[*(v34 + 44)];
    sub_1E59E7350(v28, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    if (v39)
    {
      if (v39 != 1)
      {
        swift_storeEnumTagMultiPayload();
        sub_1E59E70CC();
        v40 = sub_1E59E7078();
        v91 = MEMORY[0x1E6981EF8];
        v92 = v40;
        swift_getOpaqueTypeConformance2();
        sub_1E5A2AA74();
        sub_1E58BABA0(v22, v25, &qword_1ECFFFFC8, &qword_1E5A40548);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFE8, &unk_1E5A40558);
        sub_1E59E7120();
        sub_1E59E7200();
        sub_1E5A2AA74();
        sub_1E58BAD14(v22, &qword_1ECFFFFC8, &qword_1E5A40548);
        goto LABEL_9;
      }

      LOBYTE(OpaqueTypeMetadata2) = 1;
    }

    else
    {
      LOBYTE(OpaqueTypeMetadata2) = 0;
    }

    sub_1E59E71AC();
    sub_1E5A2AA74();
    *v25 = v91;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFFE8, &unk_1E5A40558);
    sub_1E59E7120();
    sub_1E59E7200();
    sub_1E5A2AA74();
  }

LABEL_9:
  v41 = v64;
  v42 = v79;
  v43 = v63;
  v44 = v62;
  v45 = sub_1E5A2AA34();
  MEMORY[0x1EEE9AC00](v45);
  *(&v57 - 4) = v43;
  *(&v57 - 3) = v41;
  *(&v57 - 2) = v42;
  v46 = v71;
  sub_1E5A2B5F4();
  v47 = swift_getWitnessTable();
  v48 = v76;
  sub_1E5A2B324();
  (*(v73 + 8))(v46, v44);
  v82 = v47;
  v83 = MEMORY[0x1E697E5D8];
  v49 = v68;
  v50 = swift_getWitnessTable();
  v51 = v75;
  sub_1E58B41DC();
  v52 = v74;
  v53 = *(v74 + 8);
  v53(v48, v49);
  v54 = v78;
  v55 = v69;
  sub_1E58BABA0(v78, v69, qword_1ECFFFEB0, &qword_1E5A40408);
  v91 = v55;
  (*(v52 + 16))(v48, v51, v49);
  v92 = v48;
  OpaqueTypeMetadata2 = v67;
  OpaqueTypeConformance2 = v49;
  v80 = sub_1E59E72C4();
  v81 = v50;
  sub_1E597DC00(&v91, 2uLL, &OpaqueTypeMetadata2);
  v53(v51, v49);
  sub_1E58BAD14(v54, qword_1ECFFFEB0, &qword_1E5A40408);
  v53(v48, v49);
  return sub_1E58BAD14(v55, qword_1ECFFFEB0, &qword_1E5A40408);
}

id sub_1E59E5574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v240 = a1;
  v230 = a4;
  v6 = sub_1E5A2BA14();
  v195 = *(v6 - 8);
  v196 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v194 = &v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v192 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v225 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v193 = &v185 - v13;
  v14 = sub_1E5A2A6C4();
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton(255, a2, a3, v15);
  v16 = sub_1E5A2BD84();
  v315 = a3;
  v316 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v314 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v288 = v14;
  v289 = v16;
  v290 = WitnessTable;
  v291 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v288 = v14;
  v289 = v16;
  v221 = v16;
  v222 = WitnessTable;
  v290 = WitnessTable;
  v291 = v18;
  v220 = v18;
  v20 = v240;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v288 = OpaqueTypeMetadata2;
  v289 = OpaqueTypeConformance2;
  v239 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeMetadata2();
  v191 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v190 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v188 = &v185 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v189 = &v185 - v27;
  v28 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v219 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v231 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v213 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = swift_checkMetadataState();
  v216 = *(v34 - 8);
  v217 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v215 = &v185 - v35;
  v36 = swift_checkMetadataState();
  v226 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v218 = &v185 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v187 = &v185 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v186 = &v185 - v41;
  v42 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v232 = &v185 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v22;
  v45 = sub_1E5A2AA84();
  v228 = *(v45 - 8);
  v229 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v238 = &v185 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v236 = &v185 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v212 = &v185 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v211 = &v185 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v185 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v185 - v57;
  v223 = a3;
  v224 = a2;
  v235 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(0, a2, a3, v59);
  v241 = v235[9];
  sub_1E593B564(&v241[v20], v58);
  v185 = v43;
  v60 = v43 + 48;
  v234 = *(v43 + 48);
  v61 = (v234)(v58, 1, v42);
  v242 = v42;
  v62 = v20;
  if (v61 == 1)
  {
    sub_1E58BAD14(v58, &qword_1ECFFC120, &qword_1E5A2FF10);
    v63 = 0;
    v64 = 0xE000000000000000;
  }

  else
  {
    v65 = &v58[*(v42 + 20)];
    v63 = *v65;
    v64 = v65[1];

    sub_1E59E7350(v58, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  }

  v237 = v36;
  v288 = v63;
  v289 = v64;
  v66 = sub_1E58D1C80();
  v67 = sub_1E5A2AFD4();
  v69 = v68;
  v71 = v70;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    v233 = v66;
    sub_1E5A2AF34();
    v73 = sub_1E5A2AFA4();
    v246 = v74;
    v247 = v73;
    v210 = v75;
    v248 = v76;

    sub_1E58B3C9C(v67, v69, v71 & 1);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v206 = v317;
    v207 = v319;
    v208 = v322;
    v209 = v321;
    v313 = 1;
    v311 = v318;
    v309 = v320;
    sub_1E593B564(&v241[v62], v55);
    v77 = v242;
    v78 = (v234)(v55, 1, v242);
    v197 = v60;
    if (v78 == 1)
    {
      sub_1E58BAD14(v55, &qword_1ECFFC120, &qword_1E5A2FF10);
      v79 = 0;
      v80 = 0xE000000000000000;
    }

    else
    {
      v81 = &v55[v77[6]];
      v79 = *v81;
      v80 = v81[1];

      sub_1E59E7350(v55, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    }

    v82 = v235;
    v288 = v79;
    v289 = v80;
    v83 = sub_1E5A2AFD4();
    v85 = v84;
    v87 = v86;
    LODWORD(v288) = sub_1E5A2AB84();
    v88 = sub_1E5A2AF84();
    v243 = v89;
    v244 = v88;
    v204 = v90;
    v245 = v91;
    sub_1E58B3C9C(v83, v85, v87 & 1);

    sub_1E5A2B7E4();
    sub_1E5A2A5B4();
    v199 = v323;
    v200 = v325;
    v201 = v328;
    v202 = v327;
    v307 = 1;
    v305 = v324;
    v303 = v326;
    v288 = sub_1E59E3A34(v82);
    v289 = v92;
    v93 = sub_1E5A2AFD4();
    v95 = v94;
    v97 = v96;
    sub_1E5A2AED4();
    v98 = sub_1E5A2AFA4();
    v100 = v99;
    v102 = v101;

    sub_1E58B3C9C(v93, v95, v97 & 1);

    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v288 = qword_1ED026498;

    v203 = sub_1E5A2AF84();
    v233 = v103;
    v198 = v104;
    v205 = v105;
    sub_1E58B3C9C(v98, v100, v102 & 1);

    v106 = v240;
    v107 = v211;
    sub_1E593B564(&v241[v240], v211);
    v108 = v242;
    v109 = (v234)(v107, 1, v242);
    v110 = v232;
    v111 = v212;
    if (v109 == 1)
    {
      sub_1E58BAD14(v107, &qword_1ECFFC120, &qword_1E5A2FF10);
      v112 = v235;
      v113 = v235[10];
      v114 = (v106 + v235[11]);
      v116 = *v114;
      v115 = v114[1];
      v242 = v116;
      v234 = v115;
      v117 = *(v106 + v113);
      sub_1E5A2BA84();
      if (qword_1EE2CFA28 != -1)
      {
        swift_once();
      }

      v118 = qword_1EE2D33E0;
      swift_getKeyPath();

      v119 = v118;
      sub_1E5A2B944();

      v120 = sub_1E5A2BB64();
      v121 = v213;
      (v242)(&v241[v106], v117, v120, v122);

      sub_1E5A2B7E4();
      v123 = v215;
      v124 = v224;
      sub_1E5A2B2D4();
      (*(v214 + 8))(v121, v124);
      v288 = sub_1E59E396C(v112, v125, v126, v127);
      v289 = v128;
      LOBYTE(v290) = v129 & 1;
      LOBYTE(v273) = 0;
      swift_checkMetadataState();
      v130 = v187;
      v131 = v217;
      sub_1E5A2B304();

      (*(v216 + 8))(v123, v131);
      v132 = v186;
      v133 = v237;
      v134 = v239;
      sub_1E58B41DC();
      v135 = *(v226 + 8);
      v135(v130, v133);
      sub_1E58B41DC();
      v288 = v133;
      v289 = v134;
      v136 = swift_getOpaqueTypeConformance2();
      sub_1E595ECB8(v130, v227, v133, v136, v134);
      v135(v130, v133);
      v135(v132, v133);
    }

    else
    {
      sub_1E593CD50(v107, v232);
      v137 = v235;
      v138 = (v106 + v235[11]);
      v140 = *v138;
      v139 = v138[1];
      v241 = v140;
      v234 = v139;
      sub_1E59D2018(v110, v111);
      (*(v185 + 56))(v111, 0, 1, v108);
      v211 = *(v106 + *(v137 + 40));
      sub_1E5A2BA84();
      if (qword_1EE2CFA28 != -1)
      {
        swift_once();
      }

      v141 = qword_1EE2D33E0;
      swift_getKeyPath();

      v142 = v141;
      sub_1E5A2B944();

      v143 = sub_1E5A2BB64();
      v144 = v213;
      (v241)(v111, v211, v143, v145);

      sub_1E58BAD14(v111, &qword_1ECFFC120, &qword_1E5A2FF10);
      sub_1E5A2B7E4();
      v146 = v215;
      v147 = v224;
      sub_1E5A2B2D4();
      (*(v214 + 8))(v144, v147);
      v288 = sub_1E59E396C(v137, v148, v149, v150);
      v289 = v151;
      LOBYTE(v290) = v152 & 1;
      LOBYTE(v273) = 0;
      swift_checkMetadataState();
      v153 = v217;
      sub_1E5A2B304();

      (*(v216 + 8))(v146, v153);
      sub_1E5A2B9B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E5A303B0;
      *(inited + 32) = 1701667182;
      *(inited + 40) = 0xE400000000000000;
      sub_1E5A2BA84();
      v155 = qword_1EE2D33E0;
      swift_getKeyPath();

      v156 = v155;
      sub_1E5A2B944();

      *(inited + 48) = sub_1E5A2BB64();
      *(inited + 56) = v157;
      v158 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 80) = 0x6973736572706D69;
      v159 = MEMORY[0x1E69E6530];
      *(inited + 88) = 0xEF7865646E496E6FLL;
      *(inited + 96) = 0;
      *(inited + 120) = v159;
      strcpy((inited + 128), "impressionType");
      *(inited + 168) = v158;
      *(inited + 143) = -18;
      *(inited + 144) = 0x6E6F74747562;
      *(inited + 152) = 0xE600000000000000;
      sub_1E590DF48(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
      swift_arrayDestroy();
      sub_1E5A2B984();
      v160 = MEMORY[0x1E69E7CC0];
      sub_1E590DF48(MEMORY[0x1E69E7CC0]);
      sub_1E590DF48(v160);
      v161 = v193;
      sub_1E5A2B9D4();
      v162 = sub_1E5A2B9E4();
      (*(*(v162 - 8) + 56))(v161, 0, 1, v162);
      v163 = v194;
      sub_1E5A2B9F4();
      v164 = v188;
      v165 = v237;
      v166 = v239;
      v167 = v218;
      sub_1E5A2B014();
      (*(v195 + 8))(v163, v196);
      sub_1E58BAD14(v161, &qword_1ECFFB550, &qword_1E5A304B0);
      (*(v226 + 8))(v167, v165);
      v288 = v165;
      v289 = v166;
      v168 = v166;
      v169 = swift_getOpaqueTypeConformance2();
      v170 = v189;
      v171 = v227;
      sub_1E58B41DC();
      v172 = *(v191 + 8);
      v172(v164, v171);
      v173 = v190;
      sub_1E58B41DC();
      sub_1E595EBC0(v173, v171, v165, v169, v168);
      v172(v173, v171);
      v172(v170, v171);
      sub_1E59E7350(v232, type metadata accessor for PersonalizedWorkoutPlanCandidate);
    }

    v297 = v247;
    v298 = v246;
    LODWORD(v241) = v210 & 1;
    v299 = v210 & 1;
    v300 = v248;
    v301[0] = &v297;
    LOBYTE(v289) = v313;
    *(&v289 + 1) = *v312;
    HIDWORD(v289) = *&v312[3];
    v290 = v206;
    LOBYTE(v291) = v311;
    *(&v291 + 1) = *v310;
    HIDWORD(v291) = *&v310[3];
    v292 = v207;
    v293 = v309;
    *&v294[3] = *&v308[3];
    *v294 = *v308;
    v295 = v209;
    v296 = v208;
    v284 = v244;
    v285 = v243;
    LODWORD(v242) = v204 & 1;
    v286 = v204 & 1;
    v287 = v245;
    v288 = 0;
    v301[1] = &v288;
    v301[2] = &v284;
    v274 = v307;
    *v275 = *v306;
    *&v275[3] = *&v306[3];
    v276 = v199;
    v277 = v305;
    *v278 = *v304;
    *&v278[3] = *&v304[3];
    v279 = v200;
    v280 = v303;
    *&v281[3] = *&v302[3];
    *v281 = *v302;
    v282 = v202;
    v283 = v201;
    v174 = v203;
    v175 = v233;
    v269 = v203;
    v270 = v233;
    LODWORD(v240) = v198 & 1;
    v271 = v198 & 1;
    v272 = v205;
    v273 = 0;
    v301[3] = &v273;
    v301[4] = &v269;
    v267 = 0;
    v268 = 1;
    v301[5] = &v267;
    v177 = v228;
    v176 = v229;
    v178 = v238;
    v179 = v236;
    (*(v228 + 16))(v238, v236, v229);
    v301[6] = v178;
    sub_1E594C9E8(v247, v246, v241);

    sub_1E594C9E8(v244, v243, v242);

    v180 = v175;
    LOBYTE(v175) = v240;
    sub_1E594C9E8(v174, v180, v240);

    v181 = MEMORY[0x1E6981148];
    v260 = MEMORY[0x1E6981148];
    v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
    v262 = v181;
    v263 = v261;
    v264 = v181;
    v265 = MEMORY[0x1E6981840];
    v266 = v176;
    v182 = MEMORY[0x1E6981138];
    v253 = MEMORY[0x1E6981138];
    v254 = sub_1E594C9F8();
    v255 = v182;
    v256 = v254;
    v257 = v182;
    v258 = MEMORY[0x1E6981838];
    v183 = v239;
    v251 = v237;
    v252 = v239;
    v249 = swift_getOpaqueTypeConformance2();
    v250 = v183;
    v259 = swift_getWitnessTable();
    sub_1E597DC00(v301, 7uLL, &v260);
    sub_1E58B3C9C(v174, v233, v175);

    sub_1E58B3C9C(v244, v243, v242);

    sub_1E58B3C9C(v247, v246, v241);

    v184 = *(v177 + 8);
    v184(v179, v176);
    v184(v238, v176);
    sub_1E58B3C9C(v269, v270, v271);

    sub_1E58B3C9C(v284, v285, v286);

    sub_1E58B3C9C(v297, v298, v299);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E59E6E14(uint64_t a1)
{
  sub_1E59E6F68(319);
  if (v2 <= 0x3F)
  {
    sub_1E593C91C(319);
    if (v3 <= 0x3F)
    {
      sub_1E59E700C();
      if (v5 <= 0x3F)
      {
        type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton(255, *(a1 + 16), *(a1 + 24), v4);
        sub_1E5A2BD84();
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_1E5A2A454();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E59E6F68(uint64_t a1)
{
  if (!qword_1EE2CFB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE258, &unk_1E5A39330);
    sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330, MEMORY[0x1E6999B78]);
    v1 = sub_1E5A2A664();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2CFB20);
    }
  }
}

unint64_t sub_1E59E700C()
{
  result = qword_1EE2CFA20;
  if (!qword_1EE2CFA20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2CFA20);
  }

  return result;
}

unint64_t sub_1E59E7078()
{
  result = qword_1ECFFFFD8;
  if (!qword_1ECFFFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFFD8);
  }

  return result;
}

unint64_t sub_1E59E70CC()
{
  result = qword_1ECFFFFE0;
  if (!qword_1ECFFFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFFE0);
  }

  return result;
}

unint64_t sub_1E59E7120()
{
  result = qword_1ECFFFFF0;
  if (!qword_1ECFFFFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFFE8, &unk_1E5A40558);
    sub_1E59E71AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFFF0);
  }

  return result;
}

unint64_t sub_1E59E71AC()
{
  result = qword_1ECFFFFF8;
  if (!qword_1ECFFFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFFFF8);
  }

  return result;
}

unint64_t sub_1E59E7200()
{
  result = qword_1ED000000;
  if (!qword_1ED000000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFFFC8, &qword_1E5A40548);
    sub_1E59E70CC();
    sub_1E59E7078();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000000);
  }

  return result;
}

unint64_t sub_1E59E72C4()
{
  result = qword_1ED000008;
  if (!qword_1ED000008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFFEB0, &qword_1E5A40408);
    sub_1E59E7120();
    sub_1E59E7200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000008);
  }

  return result;
}

uint64_t sub_1E59E7350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FitnessWorkoutPlan::CreateWorkoutPlanHandoffAlertState __swiftcall CreateWorkoutPlanHandoffAlertState.init(iconState:isPresentingAlert:)(FitnessWorkoutPlan::HandoffAlertIconState iconState, Swift::Bool isPresentingAlert)
{
  *v2 = iconState & 1;
  v2[1] = isPresentingAlert;
  result.iconState = iconState;
  return result;
}

uint64_t sub_1E59E744C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x746174536E6F6369;
  }
}

uint64_t sub_1E59E7490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746174536E6F6369 && a2 == 0xE900000000000065;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5A47250 == a2)
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

uint64_t sub_1E59E757C(uint64_t a1)
{
  v2 = sub_1E59E7984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E75B8(uint64_t a1)
{
  v2 = sub_1E59E7984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreateWorkoutPlanHandoffAlertState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000010, &qword_1E5A40590);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E7984();
  sub_1E5A2C224();
  v14 = v8;
  v13 = 0;
  sub_1E59E79D8();
  sub_1E5A2C0B4();
  if (!v2)
  {
    v12 = 1;
    sub_1E5A2C074();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CreateWorkoutPlanHandoffAlertState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000028, &qword_1E5A40598);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E7984();
  sub_1E5A2C214();
  if (!v2)
  {
    v14 = 0;
    sub_1E59E7A2C();
    sub_1E5A2BFE4();
    v9 = v15;
    v13 = 1;
    v11 = sub_1E5A2BFA4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E59E7984()
{
  result = qword_1ED000018;
  if (!qword_1ED000018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000018);
  }

  return result;
}

unint64_t sub_1E59E79D8()
{
  result = qword_1ED000020;
  if (!qword_1ED000020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000020);
  }

  return result;
}

unint64_t sub_1E59E7A2C()
{
  result = qword_1ED000030;
  if (!qword_1ED000030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreateWorkoutPlanHandoffAlertState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for CreateWorkoutPlanHandoffAlertState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1E59E7C00()
{
  result = qword_1ED000038;
  if (!qword_1ED000038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000038);
  }

  return result;
}

unint64_t sub_1E59E7C58()
{
  result = qword_1ED000040;
  if (!qword_1ED000040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000040);
  }

  return result;
}

unint64_t sub_1E59E7CB0()
{
  result = qword_1ED000048;
  if (!qword_1ED000048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000048);
  }

  return result;
}

uint64_t WorkoutPlanItemContext.identifier.getter()
{
  v1 = *v0;
  sub_1E58B413C(*v0, v0[1]);
  return v1;
}

uint64_t sub_1E59E7D48()
{
  if (*v0)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_1E59E7D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
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

uint64_t sub_1E59E7E64(uint64_t a1)
{
  v2 = sub_1E59E8A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E7EA0(uint64_t a1)
{
  v2 = sub_1E59E8A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59E7EDC(uint64_t a1)
{
  v2 = sub_1E59E8B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E7F18(uint64_t a1)
{
  v2 = sub_1E59E8B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59E7F54(uint64_t a1)
{
  v2 = sub_1E59E8AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59E7F90(uint64_t a1)
{
  v2 = sub_1E59E8AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000050, &qword_1E5A40780);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000058, &qword_1E5A40788);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000060, &qword_1E5A40790);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59E8A74();
  sub_1E5A2C224();
  if (v13)
  {
    v26 = 1;
    sub_1E59E8AC8();
    v14 = v20;
    sub_1E5A2C024();
    v15 = v22;
    sub_1E5A2C064();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_1E59E8B1C();
    sub_1E5A2C024();
    v16 = v19;
    sub_1E5A2C064();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t WorkoutPlanItemContext.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E6932DE0](*(v1 + 16));

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanItemContext.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t WorkoutPlanItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000080, &qword_1E5A40798);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000088, &qword_1E5A407A0);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000090, &unk_1E5A407A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E59E8A74();
  v13 = v34;
  sub_1E5A2C214();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_1E5A2C004();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_1E58BC5B4();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_1E5A2BE84();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0);
      *v26 = &type metadata for WorkoutPlanItemContext;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_1E59E8AC8();
        sub_1E5A2BF44();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_1E5A2BF94();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_1E59E8B1C();
        v28 = v7;
        sub_1E5A2BF44();
        v19 = v33;
        v18 = v34;
        v21 = sub_1E5A2BF94();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t _s18FitnessWorkoutPlan0bC11ItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_1E58B413C(*a2, *(a2 + 8));
    sub_1E58B413C(v3, v2);
    sub_1E591CB8C(v3, v2);
    sub_1E591CB8C(v5, v4);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_1E5A2C114();
    sub_1E58B413C(v5, v4);
    sub_1E58B413C(v3, v2);
    sub_1E591CB8C(v3, v2);
    sub_1E591CB8C(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_1E58B413C(v6, v7);
  sub_1E58B413C(v3, v2);
  sub_1E591CB8C(v3, v2);
  sub_1E591CB8C(v3, v2);
  return 1;
}

unint64_t sub_1E59E8A74()
{
  result = qword_1ED000068;
  if (!qword_1ED000068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000068);
  }

  return result;
}

unint64_t sub_1E59E8AC8()
{
  result = qword_1ED000070;
  if (!qword_1ED000070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000070);
  }

  return result;
}

unint64_t sub_1E59E8B1C()
{
  result = qword_1ED000078;
  if (!qword_1ED000078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000078);
  }

  return result;
}

unint64_t sub_1E59E8B74()
{
  result = qword_1ED000098;
  if (!qword_1ED000098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000098);
  }

  return result;
}

unint64_t sub_1E59E8C14()
{
  result = qword_1ED0000A0;
  if (!qword_1ED0000A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000A0);
  }

  return result;
}

unint64_t sub_1E59E8C6C()
{
  result = qword_1ED0000A8;
  if (!qword_1ED0000A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000A8);
  }

  return result;
}

unint64_t sub_1E59E8CC4()
{
  result = qword_1ED0000B0;
  if (!qword_1ED0000B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000B0);
  }

  return result;
}

unint64_t sub_1E59E8D1C()
{
  result = qword_1ED0000B8;
  if (!qword_1ED0000B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000B8);
  }

  return result;
}

unint64_t sub_1E59E8D74()
{
  result = qword_1ED0000C0;
  if (!qword_1ED0000C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000C0);
  }

  return result;
}

unint64_t sub_1E59E8DCC()
{
  result = qword_1ED0000C8;
  if (!qword_1ED0000C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000C8);
  }

  return result;
}

unint64_t sub_1E59E8E24()
{
  result = qword_1ED0000D0;
  if (!qword_1ED0000D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000D0);
  }

  return result;
}

unint64_t sub_1E59E8E7C()
{
  result = qword_1ED0000D8;
  if (!qword_1ED0000D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0000D8);
  }

  return result;
}