uint64_t sub_24F38B758@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v11 = v7;
      sub_24F4E9558(a2, v9);
      result = sub_24F391D78(v9, a3, type metadata accessor for CardLayoutMetrics);
      *(a3 + *(v11 + 68)) = 0;
      v13 = *(v11 + 120);
LABEL_17:
      *(a3 + v13) = 0x403A000000000000;
      return result;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        v19 = v7;
        swift_once();
        v7 = v19;
      }

      v10 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        v21 = v7;
        swift_once();
        v7 = v21;
      }

      v10 = qword_27F39E658;
    }

LABEL_21:
    v17 = __swift_project_value_buffer(v7, v10);
    sub_24F391C98(v17, v9, type metadata accessor for CardLayoutMetrics);
    return sub_24F391D78(v9, a3, type metadata accessor for CardLayoutMetrics);
  }

  if (!a1)
  {
    if (qword_27F211300 != -1)
    {
      v18 = v7;
      swift_once();
      v7 = v18;
    }

    v10 = qword_27F39E640;
    goto LABEL_21;
  }

  if (a1 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      v20 = v7;
      swift_once();
      v7 = v20;
    }

    v14 = v7;
    v15 = __swift_project_value_buffer(v7, qword_27F39E628);
    sub_24F391C98(v15, v9, type metadata accessor for CardLayoutMetrics);
    result = sub_24F391D78(v9, a3, type metadata accessor for CardLayoutMetrics);
    v16 = (a3 + *(v14 + 48));
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0x4024000000000000;
    v13 = *(v14 + 120);
    goto LABEL_17;
  }

  sub_24F4E9E44(a2, v9);
  return sub_24F391D78(v9, a3, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24F38BA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v31 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240D48, &qword_24F9EC680);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - v5;
  v30 = type metadata accessor for ChallengeCardTextSubtitle(0);
  MEMORY[0x28223BE20](v30);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ChallengeCard(0);
  v14 = *(v13 + 48);
  sub_24F91F5C8();
  if (v15 >= *(a1 + *(v13 + 52)) && (sub_24F91F638(), v16 = sub_24F91F588(), v17 = *(v10 + 8), v17(v12, v9), (v16 & 1) != 0))
  {
    v18 = *(v10 + 16);
    v18(v12, a1 + v14, v9);
    v19 = v28;
    *v8 = v27;
    v8[1] = v19;
    v20 = v30;
    v18(v8 + *(v30 + 20), v12, v9);

    v21 = sub_24F268DBC();
    v17(v12, v9);
    *(v8 + *(v20 + 24)) = v21;
    sub_24F391C98(v8, v6, type metadata accessor for ChallengeCardTextSubtitle);
    swift_storeEnumTagMultiPayload();
    sub_24F390BB4(&qword_27F240D40, type metadata accessor for ChallengeCardTextSubtitle, &unk_24FA22E5C);
    sub_24F924E28();
    return sub_24F391D00(v8, type metadata accessor for ChallengeCardTextSubtitle);
  }

  else
  {
    v32 = v27;
    v33 = v28;
    sub_24E600AEC();

    *v6 = sub_24F925E18();
    *(v6 + 1) = v23;
    v6[16] = v24 & 1;
    *(v6 + 3) = v25;
    swift_storeEnumTagMultiPayload();
    sub_24F390BB4(&qword_27F240D40, type metadata accessor for ChallengeCardTextSubtitle, &unk_24FA22E5C);
    return sub_24F924E28();
  }
}

uint64_t sub_24F38BD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EF8, &qword_24FA2E1F0);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = type metadata accessor for GameIcon(0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0, &unk_24F9EC9D0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v16 = *(a1 + *(_s12GameStoreKit15PrimaryIconViewVMa_0(0) + 20));
  if (v16 == 3)
  {
    swift_storeEnumTagMultiPayload();
    sub_24F392EE0();
    return sub_24F924E28();
  }

  else
  {
    v28[0] = v4;
    v28[1] = a2;
    v18 = sub_24F9289E8();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, a1, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v20 = v7[8];
    *&v9[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
    swift_storeEnumTagMultiPayload();
    v9[v7[5]] = 1;
    v9[v7[6]] = 1;
    v9[v7[7]] = 0;
    if (v16 == 4)
    {

      v21 = -0.174532925;
    }

    else
    {
      v22 = sub_24F92CE08();

      if (v22)
      {
        v21 = -0.174532925;
      }

      else
      {
        v21 = 0.0;
      }
    }

    sub_24F9278A8();
    v24 = v23;
    v26 = v25;
    sub_24F391D78(v9, v12, type metadata accessor for GameIcon);
    v27 = &v12[*(v10 + 36)];
    *v27 = v21;
    *(v27 + 1) = v24;
    *(v27 + 2) = v26;
    sub_24E6009C8(v12, v15, &qword_27F240EE0, &unk_24F9EC9D0);
    sub_24E60169C(v15, v6, &qword_27F240EE0, &unk_24F9EC9D0);
    swift_storeEnumTagMultiPayload();
    sub_24F392EE0();
    sub_24F924E28();
    return sub_24E601704(v15, &qword_27F240EE0, &unk_24F9EC9D0);
  }
}

uint64_t sub_24F38C1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GameIcon(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = v5[10];
  *&v7[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v7[v5[7]] = 1;
  v7[v5[8]] = 1;
  v7[v5[9]] = 0;
  if (*(a1 + *(_s12GameStoreKit15PrimaryIconViewVMa_0(0) + 20)) == 4)
  {

    v11 = -0.174532925;
  }

  else
  {
    v12 = sub_24F92CE08();

    if (v12)
    {
      v11 = -0.174532925;
    }

    else
    {
      v11 = 0.0;
    }
  }

  sub_24F9278A8();
  v14 = v13;
  v16 = v15;
  sub_24F391D78(v7, a2, type metadata accessor for GameIcon);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0, &unk_24F9EC9D0);
  v18 = a2 + *(result + 36);
  *v18 = v11;
  *(v18 + 8) = v14;
  *(v18 + 16) = v16;
  return result;
}

uint64_t sub_24F38C47C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240ED8, &unk_24FA2E1E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0, &unk_24F9EC9D0);
  sub_24E6A4C1C();
  sub_24F391304(&qword_27F240EE8, &qword_27F240ED8, &unk_24FA2E1E0, sub_24F392EE0);
  sub_24F392EE0();
  return sub_24F927568();
}

uint64_t sub_24F38C57C@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  *&v113 = sub_24F9249B8();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ChallengesSlashHeaderView(0);
  MEMORY[0x28223BE20](v109);
  v4 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D50, &qword_24F93E888);
  MEMORY[0x28223BE20](v129);
  v110 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  *&v114 = &v109 - v7;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DA0, &qword_24F9EC830);
  MEMORY[0x28223BE20](v127);
  v128 = &v109 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DA8, &qword_24F9EC838);
  MEMORY[0x28223BE20](v123);
  *&v124 = &v109 - v9;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DB0, &qword_24F9EC840);
  MEMORY[0x28223BE20](v126);
  *&v125 = &v109 - v10;
  *&v121 = sub_24F924848();
  *&v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EndingSoonView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DB8, &qword_24F9EC848);
  MEMORY[0x28223BE20](v15);
  v17 = &v109 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DC0, &qword_24F9EC850);
  MEMORY[0x28223BE20](v115);
  v116 = &v109 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240DC8, &qword_24F9EC858);
  MEMORY[0x28223BE20](v122);
  v117 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v118 = &v109 - v21;
  v22 = type metadata accessor for ChallengeCard(0);
  v23 = *(v22 + 48);
  sub_24F91F5C8();
  v25 = v24;
  v26 = *(v1 + *(v22 + 52));
  v27 = type metadata accessor for LargeVisualView(0);
  v28 = *(v1 + *(v27 + 20));
  if (v25 < v26)
  {
    v29 = *(v12 + 20);
    v30 = sub_24F91F648();
    (*(*(v30 - 8) + 16))(&v14[v29], v1 + v23, v30);
    *v14 = v28;
    sub_24F927618();
    sub_24F9242E8();
    sub_24F391D78(v14, v17, type metadata accessor for EndingSoonView);
    v31 = &v17[*(v15 + 36)];
    v32 = v137;
    *(v31 + 4) = v136;
    *(v31 + 5) = v32;
    *(v31 + 6) = v138;
    v33 = *v135;
    *v31 = v134;
    *(v31 + 1) = v33;
    v34 = *&v135[32];
    *(v31 + 2) = *&v135[16];
    *(v31 + 3) = v34;
    v35 = (v1 + *(v27 + 24));
    v36 = *v35;
    v37 = *(v35 + 8);

    v38 = v36;
    if ((v37 & 1) == 0)
    {
      sub_24F92BDC8();
      v39 = sub_24F9257A8();
      sub_24F921FD8();

      v40 = v119;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v120 + 8))(v40, v121);
      v38 = v131[0];
    }

    swift_getKeyPath();
    v131[0] = v38;
    sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v41 = *(v38 + 32);
    v114 = *(v38 + 16);
    v113 = v41;

    v42 = sub_24F925808();
    v43 = v116;
    sub_24E6009C8(v17, v116, &qword_27F240DB8, &qword_24F9EC848);
    v44 = v43 + *(v115 + 36);
    *v44 = v42;
    *(v44 + 24) = v113;
    *(v44 + 8) = v114;
    *(v44 + 40) = 0;

    if ((v37 & 1) == 0)
    {
      sub_24F92BDC8();
      v45 = sub_24F9257A8();
      sub_24F921FD8();

      v46 = v119;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v120 + 8))(v46, v121);
      v36 = v131[0];
    }

    swift_getKeyPath();
    v131[0] = v36;
    sub_24F91FD88();

    v47 = *(v36 + 16);

    if (v28 < 4 || v28 == 4)
    {
      v48 = sub_24F92CE08();

      if ((v48 & 1) == 0)
      {
        v49 = sub_24F925868();
LABEL_21:
        v57 = sub_24EA91914(v49, v47);
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v64 = sub_24F925808();
        LOBYTE(v131[0]) = 0;
        v65 = sub_24F927618();
        v67 = v66;
        v68 = v117;
        sub_24E6009C8(v43, v117, &qword_27F240DC0, &qword_24F9EC850);
        v69 = v68 + *(v122 + 36);
        *v69 = 257;
        *(v69 + 2) = 1;
        *(v69 + 8) = v64;
        *(v69 + 16) = v57;
        *(v69 + 24) = v59;
        *(v69 + 32) = v61;
        *(v69 + 40) = v63;
        *(v69 + 48) = 0;
        *(v69 + 56) = v65;
        *(v69 + 64) = v67;
        v70 = &qword_27F240DC8;
        v71 = &qword_24F9EC858;
        v72 = v118;
        sub_24E6009C8(v68, v118, &qword_27F240DC8, &qword_24F9EC858);
        sub_24E60169C(v72, v124, &qword_27F240DC8, &qword_24F9EC858);
        swift_storeEnumTagMultiPayload();
        sub_24F3926B0();
        sub_24F3928B0();
        v73 = v125;
        sub_24F924E28();
        sub_24E60169C(v73, v128, &qword_27F240DB0, &qword_24F9EC840);
        swift_storeEnumTagMultiPayload();
        sub_24F392624();
        sub_24E63DC08();
        sub_24F924E28();
        sub_24E601704(v73, &qword_27F240DB0, &qword_24F9EC840);
        v74 = v72;
        return sub_24E601704(v74, v70, v71);
      }
    }

    else
    {
    }

    v49 = sub_24F925808();
    goto LABEL_21;
  }

  if (*(v1 + *(v27 + 20)) >= 4u && v28 != 4)
  {

    goto LABEL_23;
  }

  v50 = sub_24F92CE08();

  if (v50)
  {
LABEL_23:
    v75 = sub_24F637D70(0, v51);
    v77 = v76;
    v79 = v78;

    v80 = (v1 + *(v27 + 24));
    v81 = *v80;
    if (*(v80 + 8) == 1)
    {
      v133 = *v80;
    }

    else
    {

      sub_24F92BDC8();
      v82 = sub_24F9257A8();
      sub_24F921FD8();

      v83 = v119;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v120 + 8))(v83, v121);
      v81 = v133;
    }

    swift_getKeyPath();
    *&v134 = v81;
    sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v84 = *(v81 + 32);
    v121 = *(v81 + 16);
    v120 = v84;

    KeyPath = swift_getKeyPath();
    type metadata accessor for HeroSafeAreaMetrics(0);
    sub_24F390BB4(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
    v86 = sub_24F923598();
    *&v134 = v75;
    *(&v134 + 1) = v77;
    *v135 = v79 & 1;
    *&v135[24] = v120;
    *&v135[8] = v121;
    *&v135[40] = KeyPath;
    LOBYTE(v136) = 0;
    *(&v136 + 1) = v86;
    LOBYTE(v137) = v87 & 1;
    v88 = v124;
    *(v124 + 80) = v87 & 1;
    v89 = *&v135[32];
    v88[2] = *&v135[16];
    v88[3] = v89;
    v88[4] = v136;
    v90 = *v135;
    *v88 = v134;
    v88[1] = v90;
    swift_storeEnumTagMultiPayload();
    sub_24F39290C(&v134, v131);
    sub_24F3926B0();
    sub_24F3928B0();
    v91 = v125;
    sub_24F924E28();
    v70 = &qword_27F240DB0;
    v71 = &qword_24F9EC840;
    sub_24E60169C(v91, v128, &qword_27F240DB0, &qword_24F9EC840);
    swift_storeEnumTagMultiPayload();
    sub_24F392624();
    sub_24E63DC08();
    sub_24F924E28();
    sub_24F392968(&v134);
    v74 = v91;
    return sub_24E601704(v74, v70, v71);
  }

  v52 = sub_24F637D70(0, v51);
  v54 = v53;
  v56 = v55;

  if (v28 >= 4)
  {

    v93 = 0;
  }

  else
  {
    v92 = sub_24F92CE08();

    v93 = ~v92 & 1;
  }

  v94 = (v1 + *(v27 + 24));
  v95 = *v94;
  v96 = *(v94 + 8);

  if ((v96 & 1) == 0)
  {
    sub_24F92BDC8();
    v97 = sub_24F9257A8();
    sub_24F921FD8();

    v98 = v119;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v120 + 8))(v98, v121);
    v95 = v134;
  }

  swift_getKeyPath();
  *&v134 = v95;
  sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v99 = *(v95 + 32);
  v125 = *(v95 + 16);
  v124 = v99;

  v131[0] = sub_24E608A90(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D80, &unk_24F93E8E0);
  sub_24F926F28();
  v100 = *(&v134 + 1);
  *(v4 + 11) = v134;
  *(v4 + 12) = v100;
  v131[1] = 0;
  v131[0] = 0;
  v132 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88, &qword_24F9EC890);
  sub_24F926F28();
  v101 = v135[0];
  v102 = *&v135[8];
  *(v4 + 104) = v134;
  v4[120] = v101;
  *(v4 + 16) = v102;
  v103 = v109;
  v104 = *(v109 + 40);
  *&v4[v104] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *&v4[v103[11]] = 0x4031000000000000;
  *&v4[v103[12]] = 0x4020000000000000;
  v105 = &v4[v103[13]];
  *v105 = 0xD000000000000017;
  *(v105 + 1) = 0x800000024FA453F0;
  *v4 = v52;
  *(v4 + 1) = v93;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = v54;
  v4[48] = v56 & 1;
  *(v4 + 72) = v124;
  *(v4 + 56) = v125;
  (*(v112 + 104))(v111, *MEMORY[0x277CE00F0], v113);
  v106 = v110;
  sub_24F924E68();
  sub_24F924E48();
  sub_24F924E58();
  sub_24F391D78(v4, v106, type metadata accessor for ChallengesSlashHeaderView);
  v70 = &qword_27F214D50;
  v71 = &qword_24F93E888;
  v107 = v114;
  sub_24E6009C8(v106, v114, &qword_27F214D50, &qword_24F93E888);
  sub_24E60169C(v107, v128, &qword_27F214D50, &qword_24F93E888);
  swift_storeEnumTagMultiPayload();
  sub_24F392624();
  sub_24E63DC08();
  sub_24F924E28();
  v74 = v107;
  return sub_24E601704(v74, v70, v71);
}

uint64_t sub_24F38D8F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E10, &qword_24F9EC900);
  MEMORY[0x28223BE20](v102);
  v109 = (&v101 - v4);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E18, &qword_24F9EC908);
  MEMORY[0x28223BE20](v103);
  v107 = &v101 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E20, &qword_24F9EC910);
  *&v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v106 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v101 - v8;
  v9 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  *&v101 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v104 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E28, &qword_24F9EC918);
  MEMORY[0x28223BE20](v119);
  *&v113 = &v101 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E30, &qword_24F9EC920);
  MEMORY[0x28223BE20](v117);
  v118 = &v101 - v12;
  v112 = sub_24F924848();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E38, &qword_24F9EC928);
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  *&v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E40, &qword_24F9EC930);
  MEMORY[0x28223BE20](v108);
  v18 = &v101 - v17;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E48, &qword_24F9EC938);
  MEMORY[0x28223BE20](v116);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v101 - v22;
  v24 = type metadata accessor for ChallengeCard(0);
  v25 = v24[12];
  sub_24F91F5C8();
  if (v26 >= *(v1 + v24[13]))
  {
    v48 = (v1 + v24[11]);
    v49 = v48[1];
    if (v49 < 0 || (v50 = *v48, v49 >= *(v50 + 16)))
    {
      v80 = v113;
      (*(v114 + 56))(v113, 1, 1, v115);
    }

    else
    {
      v51 = v104;
      sub_24F391C98(v50 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v49, v104, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v52 = sub_24F9249A8();
      v53 = v109;
      *v109 = v52;
      v53[1] = 0;
      *(v53 + 16) = 1;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EA8, &qword_24F9EC950);
      sub_24F38E99C(v51, v53 + *(v54 + 44));
      v55 = sub_24F925808();
      sub_24F923318();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v64 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240E90, &qword_24F9EC940) + 36);
      *v64 = v55;
      *(v64 + 1) = v57;
      *(v64 + 2) = v59;
      *(v64 + 3) = v61;
      *(v64 + 4) = v63;
      v64[40] = 0;
      v65 = v2 + *(type metadata accessor for PortraitVisualView(0) + 24);
      v66 = *v65;
      v67 = *(v65 + 8);

      v68 = v66;
      if ((v67 & 1) == 0)
      {
        sub_24F92BDC8();
        v69 = sub_24F9257A8();
        sub_24F921FD8();

        v70 = v110;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v111 + 8))(v70, v112);
        v68 = v124;
      }

      swift_getKeyPath();
      *&v124 = v68;
      sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      sub_24F91FD88();

      v71 = *(v68 + 32);
      v108 = *(v68 + 16);
      v101 = v71;

      v72 = sub_24F925808();
      v73 = v109;
      v74 = v109 + *(v102 + 36);
      *v74 = v72;
      *(v74 + 24) = v101;
      *(v74 + 8) = v108;
      v74[40] = 0;
      sub_24F927618();
      sub_24F9242E8();
      v75 = v107;
      sub_24E6009C8(v73, v107, &qword_27F240E10, &qword_24F9EC900);
      v76 = (v75 + *(v103 + 36));
      v77 = v129;
      v76[4] = v128;
      v76[5] = v77;
      v76[6] = v130;
      v78 = v125;
      *v76 = v124;
      v76[1] = v78;
      v79 = v127;
      v76[2] = v126;
      v76[3] = v79;
      if (v67)
      {
        *&v120[0] = v66;
      }

      else
      {

        sub_24F92BDC8();
        v81 = sub_24F9257A8();
        sub_24F921FD8();

        v82 = v110;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v111 + 8))(v82, v112);
        v66 = *&v120[0];
      }

      v80 = v113;
      swift_getKeyPath();
      v122 = v66;
      sub_24F91FD88();

      v83 = *(v66 + 16);

      v84 = sub_24F925868();
      v85 = sub_24EA91914(v84, v83);
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v92 = sub_24F925808();
      v123 = 0;
      v93 = sub_24F927618();
      v95 = v94;
      v96 = v75;
      v97 = v106;
      sub_24E6009C8(v96, v106, &qword_27F240E18, &qword_24F9EC908);
      v98 = v115;
      v99 = v97 + *(v115 + 36);
      *v99 = 1;
      *(v99 + 2) = 0;
      *(v99 + 8) = v92;
      *(v99 + 16) = v85;
      *(v99 + 24) = v87;
      *(v99 + 32) = v89;
      *(v99 + 40) = v91;
      *(v99 + 48) = 0;
      *(v99 + 49) = v122;
      *(v99 + 52) = *(&v122 + 3);
      *(v99 + 56) = v93;
      *(v99 + 64) = v95;
      v100 = v105;
      sub_24E6009C8(v97, v105, &qword_27F240E20, &qword_24F9EC910);
      sub_24E6009C8(v100, v80, &qword_27F240E20, &qword_24F9EC910);
      (*(v114 + 56))(v80, 0, 1, v98);
      sub_24F391D00(v51, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
    }

    sub_24E60169C(v80, v118, &qword_27F240E28, &qword_24F9EC918);
    swift_storeEnumTagMultiPayload();
    sub_24F3929BC();
    sub_24F392BBC();
    sub_24F924E28();
    return sub_24E601704(v80, &qword_27F240E28, &qword_24F9EC918);
  }

  else
  {
    v115 = a1;
    v27 = type metadata accessor for PortraitVisualView(0);
    v28 = *(v2 + *(v27 + 20));
    v29 = *(type metadata accessor for EndingSoonView(0) + 20);
    v30 = sub_24F91F648();
    (*(*(v30 - 8) + 16))(&v16[v29], v2 + v25, v30);
    *v16 = v28;
    v31 = v2 + *(v27 + 24);
    v32 = *v31;
    LOBYTE(v27) = *(v31 + 8);

    if ((v27 & 1) == 0)
    {
      sub_24F92BDC8();
      v33 = sub_24F9257A8();
      sub_24F921FD8();

      v34 = v110;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v111 + 8))(v34, v112);
      v32 = v124;
    }

    swift_getKeyPath();
    *&v124 = v32;
    sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v35 = *(v32 + 32);
    v114 = *(v32 + 16);
    v113 = v35;

    v36 = sub_24F925808();
    v37 = &v16[*(v14 + 36)];
    *v37 = v36;
    *(v37 + 24) = v113;
    *(v37 + 8) = v114;
    v37[40] = 0;
    sub_24F927618();
    sub_24F9242E8();
    sub_24E6009C8(v16, v18, &qword_27F240E38, &qword_24F9EC928);
    v38 = &v18[*(v108 + 36)];
    v39 = v129;
    *(v38 + 4) = v128;
    *(v38 + 5) = v39;
    *(v38 + 6) = v130;
    v40 = v125;
    *v38 = v124;
    *(v38 + 1) = v40;
    v41 = v127;
    *(v38 + 2) = v126;
    *(v38 + 3) = v41;
    v42 = sub_24F927618();
    v44 = v43;
    sub_24F38E754(v2, v120);
    sub_24E6009C8(v18, v20, &qword_27F240E40, &qword_24F9EC930);
    v45 = &v20[*(v116 + 36)];
    v46 = v120[1];
    *v45 = v120[0];
    *(v45 + 1) = v46;
    *(v45 + 2) = v120[2];
    *(v45 + 6) = v121;
    *(v45 + 7) = v42;
    *(v45 + 8) = v44;
    sub_24E6009C8(v20, v23, &qword_27F240E48, &qword_24F9EC938);
    sub_24E60169C(v23, v118, &qword_27F240E48, &qword_24F9EC938);
    swift_storeEnumTagMultiPayload();
    sub_24F3929BC();
    sub_24F392BBC();
    sub_24F924E28();
    return sub_24E601704(v23, &qword_27F240E48, &qword_24F9EC938);
  }
}

void sub_24F38E754(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for PortraitVisualView(0) + 24));
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v22 = *v8;
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v9 = v22;
  }

  swift_getKeyPath();
  v21 = v9;
  sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v11 = *(v9 + 16);

  v12 = sub_24F925868();
  v13 = sub_24EA91914(v12, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_24F925808();
  *a2 = 1;
  *(a2 + 2) = 1;
  *(a2 + 8) = v20;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = 0;
}

uint64_t sub_24F38E99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D8, &qword_24F939730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  sub_24F391C98(a1, v16, type metadata accessor for PlayerAvatar);
  LOBYTE(v34[0]) = 7;
  sub_24F8319B8(v16, v34, v22);
  if (*(a1 + *(type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0) + 20) + 8))
  {
    goto LABEL_6;
  }

  if (qword_27F2117F8 != -1)
  {
    swift_once();
  }

  v23 = qword_27F39F008;
  v24 = sub_24F92BB08();
  v25 = [v23 stringForObjectValue_];

  if (!v25)
  {
LABEL_6:
    v29 = 1;
  }

  else
  {
    v26 = sub_24F92B0D8();
    v33 = a2;
    v28 = v27;

    v34[0] = v26;
    v34[1] = v28;
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    sub_24F9268B8();
    a2 = v33;

    (*(v5 + 32))(v13, v7, v4);
    v29 = 0;
  }

  (*(v5 + 56))(v13, v29, 1, v4);
  sub_24F391C98(v22, v19, type metadata accessor for PlayerAvatarView);
  sub_24E60169C(v13, v10, &qword_27F2128D8, &qword_24F939730);
  sub_24F391C98(v19, a2, type metadata accessor for PlayerAvatarView);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EB0, &qword_24F9EC958);
  sub_24E60169C(v10, a2 + *(v30 + 48), &qword_27F2128D8, &qword_24F939730);
  sub_24E601704(v13, &qword_27F2128D8, &qword_24F939730);
  sub_24F391D00(v22, type metadata accessor for PlayerAvatarView);
  sub_24E601704(v10, &qword_27F2128D8, &qword_24F939730);
  return sub_24F391D00(v19, type metadata accessor for PlayerAvatarView);
}

double sub_24F38EDBC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v4);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlayerAvatar(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550, &unk_24F9EC960);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v18 - 8);
  v59 = &v54 - v19;
  v66 = type metadata accessor for PlayerGroupView(0);
  MEMORY[0x28223BE20](v66);
  v68 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EB8, &unk_24F9EC970);
  MEMORY[0x28223BE20](v65);
  v67 = &v54 - v21;
  v22 = type metadata accessor for ChallengeCard(0);
  v23 = *(v2 + *(v22 + 44));
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v54 = v22;
    v55 = v8;
    v56 = v4;
    v57 = v2;
    v58 = a1;
    v69 = MEMORY[0x277D84F90];
    sub_24F457BF8(0, v24, 0);
    v25 = v69;
    v26 = v23 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v27 = *(v61 + 72);
    do
    {
      sub_24F391C98(v26, v11, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      sub_24F391D78(v11, v15, type metadata accessor for PlayerAvatar);
      v69 = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_24F457BF8((v28 > 1), v29 + 1, 1);
        v25 = v69;
      }

      *(v25 + 16) = v29 + 1;
      sub_24F391D78(v15, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, type metadata accessor for PlayerAvatar);
      v26 += v27;
      --v24;
    }

    while (v24);
    v2 = v57;
    a1 = v58;
    v8 = v55;
    v4 = v56;
    v22 = v54;
  }

  v30 = v2 + *(v22 + 32);
  v31 = type metadata accessor for CommonCardAttributes(0);
  v32 = v62;
  sub_24E60169C(v30 + *(v31 + 68), v62, &qword_27F21F550, &unk_24F9EC960);
  if ((*(v63 + 48))(v32, 1, v64) == 1)
  {
    v33 = &qword_27F21F550;
    v34 = &unk_24F9EC960;
    v35 = v32;
  }

  else
  {
    sub_24F391C98(v32, v8, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    v36 = v60;
    sub_24F391D78(v8, v60, type metadata accessor for JSColor);
    if (qword_27F20FEE0 != -1)
    {
      swift_once();
    }

    v37 = *(v36 + *(v4 + 24));
    v38 = v59;
    ColorGrouping.colorGroup(for:)(v37);
    sub_24F391D00(v36, type metadata accessor for JSColor);
    sub_24F391D00(v32, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    v39 = type metadata accessor for ColorGroup(0);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) != 1)
    {
      v40 = *(v38 + *(v39 + 28));

      sub_24F391D00(v38, type metadata accessor for ColorGroup);
      goto LABEL_15;
    }

    v33 = &qword_27F2190D8;
    v34 = &unk_24F94BD70;
    v35 = v38;
  }

  sub_24E601704(v35, v33, v34);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v40 = sub_24F926D08();

LABEL_15:
  v41 = v66;
  v42 = *(v66 + 24);
  v43 = *MEMORY[0x277CE13D8];
  v44 = sub_24F927748();
  v45 = v68;
  (*(*(v44 - 8) + 104))(&v68[v42], v43, v44);
  *(v45 + *(v41 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
  *(v45 + *(v41 + 32)) = 7;
  *v45 = v25;
  v45[1] = v40;
  v46 = sub_24F9275D8();
  v48 = v47;
  v49 = v67;
  v50 = &v67[*(v65 + 36)];
  sub_24F38F53C(v2, v50);
  v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EC0, &unk_24FA2E1A0) + 36));
  *v51 = v46;
  v51[1] = v48;
  sub_24F391D78(v45, v49, type metadata accessor for PlayerGroupView);
  LOBYTE(v46) = sub_24F925808();
  sub_24E6009C8(v49, a1, &qword_27F240EB8, &unk_24F9EC970);
  v52 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EC8, &qword_24F9EC980) + 36);
  *v52 = v46;
  result = 0.0;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  *(v52 + 40) = 1;
  return result;
}

uint64_t sub_24F38F53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for ChallengeCard(0) + 36);
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2, a1 + v8, v9);
  (*(v10 + 56))(a2, 0, 1, v9);
  v11 = type metadata accessor for GameIcon(0);
  v12 = v11[8];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v11[5]) = 1;
  *(a2 + v11[6]) = 1;
  *(a2 + v11[7]) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460) + 36));
  v14 = v38;
  *v13 = v37;
  v13[1] = v14;
  v13[2] = v39;
  sub_24F9278A8();
  v16 = v15;
  v18 = v17;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1C0, &qword_24F950530) + 36));
  *v19 = 0x3FC657184AE74487;
  v19[1] = v16;
  v19[2] = v18;
  v20 = (a1 + *(type metadata accessor for CompactVisualView(0) + 20));
  v21 = *v20;
  LOBYTE(v11) = *(v20 + 8);

  if ((v11 & 1) == 0)
  {
    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v21 = v36;
  }

  swift_getKeyPath();
  v36 = v21;
  sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v23 = *(v21 + 16);

  v24 = sub_24F925868();
  v25 = sub_24EA91914(v24, v23);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240ED0, &unk_24F9EC9C0);
  v34 = a2 + *(result + 36);
  *v34 = v32;
  *(v34 + 8) = v25;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v31;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_24F38F8F4@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = &v98 - v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E298, &qword_24F9ECA70);
  MEMORY[0x28223BE20](v103);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = &v98 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F70, &qword_24F9ECA78);
  MEMORY[0x28223BE20](v99);
  v101 = &v98 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F78, &qword_24F9ECA80);
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v108 = &v98 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F80, &qword_24F9ECA88);
  MEMORY[0x28223BE20](v107);
  v111 = &v98 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F88, &qword_24F9ECA90);
  MEMORY[0x28223BE20](v105);
  v109 = &v98 - v11;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F90, &qword_24F9ECA98);
  v116 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v106 = &v98 - v12;
  v123 = sub_24F91F648();
  v127 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F98, &qword_24F9ECAA0);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v125 = &v98 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240FA0, &qword_24F9ECAA8);
  MEMORY[0x28223BE20](v119);
  v19 = &v98 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240FA8, &qword_24F9ECAB0);
  MEMORY[0x28223BE20](v121);
  v120 = &v98 - v20;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240FB0, &qword_24F9ECAB8);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v98 - v23;
  if (qword_27F2114B8 != -1)
  {
    swift_once();
  }

  v129 = qword_27F39EA38;
  v130 = unk_27F39EA40;
  sub_24E600AEC();

  v25 = sub_24F925E18();
  v27 = v26;
  v29 = v28;
  v124 = a1;
  v30 = *a1;
  v128 = v24;
  v98 = v30;
  if (v30 > 2)
  {
    if (v30 == 4)
    {
      sub_24F925888();
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v30)
  {
    if (v30 != 1)
    {
      sub_24F925898();
      goto LABEL_11;
    }

LABEL_9:
    sub_24F9258F8();
    goto LABEL_11;
  }

  sub_24F9258D8();
LABEL_11:
  v31 = sub_24F925C98();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_24E600B40(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = v35 & 1;
  v136 = v35 & 1;
  v135 = 0;
  v41 = sub_24F9251C8();
  v42 = *(v119 + 36);
  v43 = *MEMORY[0x277CE13B8];
  v44 = sub_24F927748();
  (*(*(v44 - 8) + 104))(&v19[v42], v43, v44);
  *v19 = v31;
  *(v19 + 1) = v33;
  v19[16] = v40;
  *(v19 + 3) = v37;
  *(v19 + 4) = KeyPath;
  v45 = 1;
  *(v19 + 5) = 1;
  v19[48] = 0;
  *(v19 + 7) = v39;
  *(v19 + 8) = 0x3FD3333333333333;
  *(v19 + 18) = v41;
  v46 = swift_getKeyPath();
  v47 = v120;
  sub_24E6009C8(v19, v120, &qword_27F240FA0, &qword_24F9ECAA8);
  v48 = &v47[*(v121 + 36)];
  *v48 = v46;
  *(v48 + 1) = 1;
  v48[16] = 0;
  sub_24F393510();
  v49 = v128;
  sub_24F9268B8();
  sub_24E601704(v47, &qword_27F240FA8, &qword_24F9ECAB0);
  v50 = v122;
  sub_24F91F638();
  v51 = *(type metadata accessor for EndingSoonView(0) + 20);
  v52 = v124;
  LOBYTE(v46) = sub_24F91F598();
  v53 = *(v127 + 8);
  v54 = v123;
  v53(v50, v123);
  if ((v46 & 1) == 0)
  {
LABEL_14:
    v89 = v125;
    (*(v116 + 56))(v125, v45, 1, v126);
    v90 = v114;
    v91 = *(v114 + 16);
    v92 = v113;
    v93 = v115;
    v91(v113, v49, v115);
    v94 = v117;
    sub_24E60169C(v89, v117, &qword_27F240F98, &qword_24F9ECAA0);
    v95 = v118;
    v91(v118, v92, v93);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240FD8, &unk_24F9ECB00);
    sub_24E60169C(v94, &v95[*(v96 + 48)], &qword_27F240F98, &qword_24F9ECAA0);
    sub_24E601704(v89, &qword_27F240F98, &qword_24F9ECAA0);
    v97 = *(v90 + 8);
    v97(v128, v93);
    sub_24E601704(v94, &qword_27F240F98, &qword_24F9ECAA0);
    return (v97)(v92, v93);
  }

  sub_24F91F638();
  sub_24F390BB4(&qword_27F2363D0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_24F92AF98();
  if (result)
  {
    v120 = v53;
    v121 = v98;
    v56 = v127;
    v57 = *(v127 + 32);
    v58 = v100;
    v57(v100, v50, v54);
    v59 = v103;
    (*(v56 + 16))(v58 + *(v103 + 48), &v52[v51], v54);
    v60 = v102;
    sub_24E60169C(v58, v102, &qword_27F23E298, &qword_24F9ECA70);
    v61 = *(v59 + 48);
    v62 = v101;
    v57(v101, v60, v54);
    v63 = v60 + v61;
    v64 = v120;
    (v120)(v63, v54);
    sub_24E6009C8(v58, v60, &qword_27F23E298, &qword_24F9ECA70);
    v57(&v62[*(v99 + 36)], (v60 + *(v59 + 48)), v54);
    (v64)(v60, v54);
    (*(v56 + 56))(v104, 1, 1, v54);
    v65 = sub_24F925C28();
    v67 = v66;
    v69 = v68;
    v70 = dbl_24F9ECB70[v121];
    v71 = sub_24F92B098();
    CTFontCreateWithNameAndOptions(v71, v70, 0, 0x20000uLL);

    sub_24F925A78();
    sub_24F9258C8();

    v72 = sub_24F925C98();
    v74 = v73;
    LOBYTE(v59) = v75;
    v77 = v76;

    sub_24E600B40(v65, v67, v69 & 1);

    v78 = swift_getKeyPath();
    v129 = v72;
    v130 = v74;
    v131 = v59 & 1;
    v132 = v77;
    v133 = v78;
    v134 = 0x3FD3333333333333;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221AA8, &unk_24F967BB0);
    sub_24E916920();
    v79 = v108;
    sub_24F9268B8();
    v80 = v72;
    v49 = v128;
    sub_24E600B40(v80, v74, v59 & 1);

    v81 = swift_getKeyPath();
    v82 = v111;
    (*(v110 + 32))(v111, v79, v112);
    v83 = v82 + *(v107 + 36);
    *v83 = v81;
    *(v83 + 8) = 1;
    *(v83 + 16) = 0;
    v84 = v109;
    v85 = &v109[*(v105 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A8, &qword_24F9ECB10);
    sub_24F924378();
    *v85 = swift_getKeyPath();
    sub_24E6009C8(v82, v84, &qword_27F240F80, &qword_24F9ECA88);
    v86 = v106;
    sub_24E6009C8(v84, v106, &qword_27F240F88, &qword_24F9ECA90);
    v87 = v125;
    v88 = (v86 + *(v126 + 36));
    *v88 = sub_24F390694;
    v88[1] = 0;
    sub_24E6009C8(v86, v87, &qword_27F240F90, &qword_24F9ECA98);
    v45 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double sub_24F3906BC@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0xC000000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F60, &qword_24F9ECA58);
  sub_24F38F8F4(v2, (a2 + *(v4 + 44)));
  v5 = sub_24F9257F8();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240F68, &unk_24F9ECA60) + 36);
  *v6 = v5;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

uint64_t sub_24F3907D0(uint64_t a1)
{
  v2 = sub_24F924398();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924648();
}

unint64_t sub_24F390898()
{
  result = qword_27F240C08;
  if (!qword_27F240C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BC0, &unk_24F9EC578);
    sub_24F390924();
    sub_24F391190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C08);
  }

  return result;
}

unint64_t sub_24F390924()
{
  result = qword_27F240C10;
  if (!qword_27F240C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BB8, &qword_24F9EC570);
    sub_24F3909B0();
    sub_24F390EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C10);
  }

  return result;
}

unint64_t sub_24F3909B0()
{
  result = qword_27F240C18;
  if (!qword_27F240C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BB0, &qword_24F9EC568);
    sub_24F390A3C();
    sub_24F390CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C18);
  }

  return result;
}

unint64_t sub_24F390A3C()
{
  result = qword_27F240C20;
  if (!qword_27F240C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BF0, &qword_24F9EC5B0);
    sub_24F390AC8();
    sub_24F390BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C20);
  }

  return result;
}

unint64_t sub_24F390AC8()
{
  result = qword_27F240C28;
  if (!qword_27F240C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BE8, &qword_24F9EC5A8);
    sub_24F390BB4(&qword_27F240C30, type metadata accessor for LargeVisualView, &unk_24F9EC7D4);
    sub_24F390BB4(&qword_27F240C38, type metadata accessor for PortraitVisualView, &unk_24F9EC784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C28);
  }

  return result;
}

uint64_t sub_24F390BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F390BFC()
{
  result = qword_27F240C40;
  if (!qword_27F240C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BD0, &qword_24F9EC590);
    sub_24F390BB4(&qword_27F240C48, type metadata accessor for CompactVisualView, &unk_24F9EC734);
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C40);
  }

  return result;
}

unint64_t sub_24F390CB8()
{
  result = qword_27F240C50;
  if (!qword_27F240C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B88, &qword_24F9EC540);
    sub_24F390D44();
    sub_24F390DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C50);
  }

  return result;
}

unint64_t sub_24F390D44()
{
  result = qword_27F240C58;
  if (!qword_27F240C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B80, &unk_24F9EC530);
    sub_24E63CB8C();
    sub_24E680290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C58);
  }

  return result;
}

unint64_t sub_24F390DD0()
{
  result = qword_27F240C60;
  if (!qword_27F240C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B68, &qword_24F9EC518);
    sub_24F390BB4(&qword_27F240C68, _s12GameStoreKit15PrimaryIconViewVMa_0, &unk_24F9EC6E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C60);
  }

  return result;
}

unint64_t sub_24F390EAC()
{
  result = qword_27F240C70;
  if (!qword_27F240C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B60, &unk_24F9EC4E0);
    sub_24E725C2C();
    sub_24F390F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C70);
  }

  return result;
}

unint64_t sub_24F390F38()
{
  result = qword_27F240C78;
  if (!qword_27F240C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B50, &qword_24F9EC4D0);
    sub_24F390FC4();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C78);
  }

  return result;
}

unint64_t sub_24F390FC4()
{
  result = qword_27F240C80;
  if (!qword_27F240C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B48, &qword_24F9EC4C8);
    sub_24E6C08EC();
    sub_24F391050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C80);
  }

  return result;
}

unint64_t sub_24F391050()
{
  result = qword_27F240C88;
  if (!qword_27F240C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B30, &qword_24F9EC4B0);
    sub_24F3910D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C88);
  }

  return result;
}

unint64_t sub_24F3910D4()
{
  result = qword_27F240C90;
  if (!qword_27F240C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B28, &qword_24F9EC4A8);
    sub_24E701970();
    sub_24F390BB4(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView, &unk_24F99E508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C90);
  }

  return result;
}

unint64_t sub_24F391190()
{
  result = qword_27F240C98;
  if (!qword_27F240C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B00, &unk_24F9EC480);
    sub_24F39121C();
    sub_24F39143C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240C98);
  }

  return result;
}

unint64_t sub_24F39121C()
{
  result = qword_27F240CA0;
  if (!qword_27F240CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AF8, &qword_24F9EC478);
    sub_24F391304(&qword_27F240CA8, &qword_27F240B18, &qword_24F9EC498, sub_24F391388);
    sub_24F390BB4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CA0);
  }

  return result;
}

uint64_t sub_24F391304(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F391388()
{
  result = qword_27F240CB0;
  if (!qword_27F240CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240B08, &qword_24FA2DCF0);
    sub_24F390BB4(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CB0);
  }

  return result;
}

unint64_t sub_24F39143C()
{
  result = qword_27F240CB8;
  if (!qword_27F240CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AB8, &qword_24F9EC438);
    sub_24F3914C8();
    sub_24F39169C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CB8);
  }

  return result;
}

unint64_t sub_24F3914C8()
{
  result = qword_27F240CC0;
  if (!qword_27F240CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AE0, &qword_24F9EC460);
    sub_24E701970();
    sub_24F391554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CC0);
  }

  return result;
}

unint64_t sub_24F391554()
{
  result = qword_27F240CC8;
  if (!qword_27F240CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AD0, &qword_24F9EC450);
    sub_24F3915E0();
    sub_24E63D150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CC8);
  }

  return result;
}

unint64_t sub_24F3915E0()
{
  result = qword_27F240CD0;
  if (!qword_27F240CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AC8, &qword_24F9EC448);
    sub_24F390BB4(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CD0);
  }

  return result;
}

unint64_t sub_24F39169C()
{
  result = qword_27F240CD8;
  if (!qword_27F240CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AA8, &qword_24F9EC428);
    sub_24F391728();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CD8);
  }

  return result;
}

unint64_t sub_24F391728()
{
  result = qword_27F240CE0;
  if (!qword_27F240CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240A88, &qword_24F9EC408);
    sub_24F3917E4();
    sub_24F390BB4(&qword_27F21A0F8, type metadata accessor for ChallengeCardCapsuleSubtitle, &unk_24F958E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CE0);
  }

  return result;
}

unint64_t sub_24F3917E4()
{
  result = qword_27F240CE8;
  if (!qword_27F240CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240AA0, &qword_24F9EC420);
    sub_24F391868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CE8);
  }

  return result;
}

unint64_t sub_24F391868()
{
  result = qword_27F240CF0;
  if (!qword_27F240CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240A98, &qword_24F9EC418);
    sub_24F391920();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CF0);
  }

  return result;
}

unint64_t sub_24F391920()
{
  result = qword_27F240CF8;
  if (!qword_27F240CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240D00, &qword_24F9EC5D0);
    sub_24F3919AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240CF8);
  }

  return result;
}

unint64_t sub_24F3919AC()
{
  result = qword_27F240D08;
  if (!qword_27F240D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240D10, &qword_24F9EC5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240A90, &qword_24F9EC410);
    sub_24F391AA0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F217388, &qword_27F217390, &unk_24F9454F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D08);
  }

  return result;
}

unint64_t sub_24F391AA0()
{
  result = qword_27F240D18;
  if (!qword_27F240D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240A90, &qword_24F9EC410);
    sub_24F391B58();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D18);
  }

  return result;
}

unint64_t sub_24F391B58()
{
  result = qword_27F240D20;
  if (!qword_27F240D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240D28, &qword_24F9EC5E0);
    sub_24F391BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D20);
  }

  return result;
}

unint64_t sub_24F391BDC()
{
  result = qword_27F240D30;
  if (!qword_27F240D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240D38, &qword_24F9EC5E8);
    sub_24F390BB4(&qword_27F240D40, type metadata accessor for ChallengeCardTextSubtitle, &unk_24FA22E5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D30);
  }

  return result;
}

uint64_t sub_24F391C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F391D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F391D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F391DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F391EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_24F391F78(uint64_t a1)
{
  result = sub_24F9289E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F392000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F3920D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_24F39218C(uint64_t a1)
{
  type metadata accessor for ChallengeCard(319);
  if (v1 <= 0x3F)
  {
    sub_24E7268F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_28Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

void sub_24F3923E4(uint64_t a1)
{
  type metadata accessor for ChallengeCard(319);
  if (v1 <= 0x3F)
  {
    sub_24E7268F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F392474()
{
  result = qword_27F240D90;
  if (!qword_27F240D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240C00, &unk_24F9EC5C0);
    sub_24F3924F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D90);
  }

  return result;
}

unint64_t sub_24F3924F8()
{
  result = qword_27F240D98;
  if (!qword_27F240D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240BF8, &qword_24F9EC5B8);
    sub_24F390898();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240D98);
  }

  return result;
}

unint64_t sub_24F392624()
{
  result = qword_27F240DD0;
  if (!qword_27F240DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240DB0, &qword_24F9EC840);
    sub_24F3926B0();
    sub_24F3928B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240DD0);
  }

  return result;
}

unint64_t sub_24F3926B0()
{
  result = qword_27F240DD8;
  if (!qword_27F240DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240DC8, &qword_24F9EC858);
    sub_24F392768();
    sub_24E602068(&qword_27F240DF8, &qword_27F240E00, &qword_24F9EC8D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240DD8);
  }

  return result;
}

unint64_t sub_24F392768()
{
  result = qword_27F240DE0;
  if (!qword_27F240DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240DC0, &qword_24F9EC850);
    sub_24F3927F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240DE0);
  }

  return result;
}

unint64_t sub_24F3927F4()
{
  result = qword_27F240DE8;
  if (!qword_27F240DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240DB8, &qword_24F9EC848);
    sub_24F390BB4(&qword_27F240DF0, type metadata accessor for EndingSoonView, &unk_24F9ECA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240DE8);
  }

  return result;
}

unint64_t sub_24F3928B0()
{
  result = qword_27F240E08;
  if (!qword_27F240E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E08);
  }

  return result;
}

unint64_t sub_24F3929BC()
{
  result = qword_27F240E50;
  if (!qword_27F240E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E48, &qword_24F9EC938);
    sub_24F392A74();
    sub_24E602068(&qword_27F240DF8, &qword_27F240E00, &qword_24F9EC8D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E50);
  }

  return result;
}

unint64_t sub_24F392A74()
{
  result = qword_27F240E58;
  if (!qword_27F240E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E40, &qword_24F9EC930);
    sub_24F392B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E58);
  }

  return result;
}

unint64_t sub_24F392B00()
{
  result = qword_27F240E60;
  if (!qword_27F240E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E38, &qword_24F9EC928);
    sub_24F390BB4(&qword_27F240DF0, type metadata accessor for EndingSoonView, &unk_24F9ECA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E60);
  }

  return result;
}

unint64_t sub_24F392BBC()
{
  result = qword_27F240E68;
  if (!qword_27F240E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E28, &qword_24F9EC918);
    sub_24F392C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E68);
  }

  return result;
}

unint64_t sub_24F392C40()
{
  result = qword_27F240E70;
  if (!qword_27F240E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E20, &qword_24F9EC910);
    sub_24F392CF8();
    sub_24E602068(&qword_27F240DF8, &qword_27F240E00, &qword_24F9EC8D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E70);
  }

  return result;
}

unint64_t sub_24F392CF8()
{
  result = qword_27F240E78;
  if (!qword_27F240E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E18, &qword_24F9EC908);
    sub_24F392D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E78);
  }

  return result;
}

unint64_t sub_24F392D84()
{
  result = qword_27F240E80;
  if (!qword_27F240E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E10, &qword_24F9EC900);
    sub_24F392E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E80);
  }

  return result;
}

unint64_t sub_24F392E10()
{
  result = qword_27F240E88;
  if (!qword_27F240E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240E90, &qword_24F9EC940);
    sub_24E602068(&qword_27F240E98, &qword_27F240EA0, &qword_24F9EC948, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240E88);
  }

  return result;
}

unint64_t sub_24F392EE0()
{
  result = qword_27F240EF0;
  if (!qword_27F240EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240EE0, &unk_24F9EC9D0);
    sub_24F390BB4(&qword_27F216790, type metadata accessor for GameIcon, &protocol conformance descriptor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240EF0);
  }

  return result;
}

uint64_t sub_24F392FB0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24F393068(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F393108(uint64_t a1)
{
  result = sub_24F91F648();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F393188()
{
  result = qword_27F240F10;
  if (!qword_27F240F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240F18, &qword_24F9EC9F0);
    sub_24F392624();
    sub_24E63DC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F10);
  }

  return result;
}

unint64_t sub_24F393218()
{
  result = qword_27F240F20;
  if (!qword_27F240F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240F28, &qword_24F9EC9F8);
    sub_24F3929BC();
    sub_24F392BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F20);
  }

  return result;
}

unint64_t sub_24F3932A8()
{
  result = qword_27F240F30;
  if (!qword_27F240F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240EC8, &qword_24F9EC980);
    sub_24F393334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F30);
  }

  return result;
}

unint64_t sub_24F393334()
{
  result = qword_27F240F38;
  if (!qword_27F240F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240EB8, &unk_24F9EC970);
    sub_24F390BB4(&qword_27F240F40, type metadata accessor for PlayerGroupView, &unk_24F9F39E8);
    sub_24E602068(&qword_27F240F48, &qword_27F240EC0, &unk_24FA2E1A0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F38);
  }

  return result;
}

unint64_t sub_24F393420()
{
  result = qword_27F240F50;
  if (!qword_27F240F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240F58, &qword_24F9ECA00);
    sub_24E6A4C1C();
    sub_24F391304(&qword_27F240EE8, &qword_27F240ED8, &unk_24FA2E1E0, sub_24F392EE0);
    sub_24F392EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240F50);
  }

  return result;
}

unint64_t sub_24F393510()
{
  result = qword_27F240FB8;
  if (!qword_27F240FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240FA8, &qword_24F9ECAB0);
    sub_24F3935C8();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240FB8);
  }

  return result;
}

unint64_t sub_24F3935C8()
{
  result = qword_27F240FC0;
  if (!qword_27F240FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240FA0, &qword_24F9ECAA8);
    sub_24F393654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240FC0);
  }

  return result;
}

unint64_t sub_24F393654()
{
  result = qword_27F240FC8;
  if (!qword_27F240FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240FD0, &unk_24F9ECAF0);
    sub_24E7C78A0();
    sub_24E602068(&qword_27F217388, &qword_27F217390, &unk_24F9454F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240FC8);
  }

  return result;
}

unint64_t sub_24F393738()
{
  result = qword_27F240FE0;
  if (!qword_27F240FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240F68, &unk_24F9ECA60);
    sub_24E602068(&qword_27F240FE8, &qword_27F240FF0, &qword_24F9ECB48, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240FE0);
  }

  return result;
}

Swift::Bool __swiftcall NSUserDefaults.isEnabled(debugSetting:)(GameStoreKit::BoolSettingKey debugSetting)
{
  BoolSettingKey.rawValue.getter();
  v2 = sub_24F92B098();

  v3 = [v1 BOOLForKey_];

  return v3;
}

Swift::OpaquePointer_optional __swiftcall NSUserDefaults.options(for:)(GameStoreKit::OptionSettingKey a1)
{
  v2 = sub_24F92B098();

  v3 = [v1 arrayForKey_];

  if (v3)
  {
    v5 = sub_24F92B5A8();

    v6 = sub_24E9E2340(v5);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  result.value._rawValue = v7;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall NSUserDefaults.enable(debugSetting:)(GameStoreKit::BoolSettingKey debugSetting)
{
  v2 = sub_24F92B768();
  BoolSettingKey.rawValue.getter();
  v3 = sub_24F92B098();

  [v1 setValue:v2 forKey:v3];
}

Swift::Void __swiftcall NSUserDefaults.disable(debugSetting:)(GameStoreKit::BoolSettingKey debugSetting)
{
  BoolSettingKey.rawValue.getter();
  v2 = sub_24F92B098();

  [v1 removeObjectForKey_];
}

Swift::Void __swiftcall NSUserDefaults.resetToDefault()()
{
  v1 = v0;
  v2 = 0;
  do
  {
    ++v2;
    BoolSettingKey.rawValue.getter();
    v3 = sub_24F92B098();

    [v0 removeObjectForKey_];
  }

  while (v2 != 43);
  v4 = 0;
  do
  {
    ++v4;
    v5 = sub_24F92B098();

    [v1 removeObjectForKey_];
  }

  while (v4 != 8);
  v6 = sub_24F92B098();
  [v1 removeObjectForKey_];

  v7 = sub_24F92B098();
  [v1 removeObjectForKey_];
}

Swift::Void __swiftcall NSUserDefaults.registerGamesDefaults()()
{
  v1 = v0;
  v48 = MEMORY[0x277D84F90];
  sub_24F458E28(0, 43, 0);
  v2 = 0;
  v3 = v48;
  do
  {
    v4 = byte_2861BEEF0[v2 + 32];
    v5 = BoolSettingKey.rawValue.getter();
    v48 = v3;
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    if (v8 >= v7 >> 1)
    {
      v46 = v5;
      v10 = v1;
      v11 = v6;
      sub_24F458E28((v7 > 1), v8 + 1, 1);
      v6 = v11;
      v1 = v10;
      v5 = v46;
    }

    ++v2;
    v3 = v48;
    *(v48 + 16) = v8 + 1;
    v9 = v3 + 24 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    *(v9 + 48) = (v4 < 0x2A) & (0x22017800202uLL >> v4);
  }

  while (v2 != 43);
  v12 = sub_24E8E8F28(v3);

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8, &unk_24F93ADA0);
    v13 = sub_24F92CB58();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v48 = v13;
  sub_24F39434C(v12, 1, &v48);

  v14 = sub_24F92AE28();

  [v1 registerDefaults_];

  v15 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  sub_24F458E08(0, 8, 0);
  v16 = v15;
  v17 = 0;
  v18 = v48;
  v19 = "reviewSummaryText";
  v20 = "oreKit.playTogetherSparseCount";
  v21 = "oreKit.homeContentLimit";
  v22 = "oreKit.bagV3OfflineMaxAge";
  v23 = "oreKit.playTogetherContentLimit";
  do
  {
    v24 = byte_2861BEF40[v17 + 32];
    v25 = 0xD000000000000036;
    v26 = 0xD000000000000027;
    if (v24 == 6)
    {
      v27 = v20;
    }

    else
    {
      v26 = 0xD000000000000026;
      v27 = v21;
    }

    v28 = 0xD00000000000002FLL;
    if (v24 == 4)
    {
      v29 = v22;
    }

    else
    {
      v28 = 0xD00000000000002ELL;
      v29 = v23;
    }

    if (byte_2861BEF40[v17 + 32] <= 5u)
    {
      v26 = v28;
      v27 = v29;
    }

    v30 = 0xD000000000000029;
    if (v24 == 2)
    {
      v30 = 0xD000000000000022;
      v31 = "oreKit.debugOverlay";
    }

    else
    {
      v31 = "oreKit.bagV3MaxAge";
    }

    if (byte_2861BEF40[v17 + 32])
    {
      v25 = 0xD000000000000023;
      v32 = "scriptionStateOverride";
    }

    else
    {
      v32 = v19;
    }

    if (byte_2861BEF40[v17 + 32] <= 1u)
    {
      v33 = v32;
    }

    else
    {
      v25 = v30;
      v33 = v31;
    }

    if (byte_2861BEF40[v17 + 32] <= 3u)
    {
      v34 = v25;
    }

    else
    {
      v34 = v26;
    }

    if (byte_2861BEF40[v17 + 32] <= 3u)
    {
      v35 = v33;
    }

    else
    {
      v35 = v27;
    }

    v48 = v18;
    v37 = *(v18 + 16);
    v36 = *(v18 + 24);
    if (v37 >= v36 >> 1)
    {
      v42 = v22;
      v43 = v21;
      v41 = v23;
      v44 = v20;
      v45 = v19;
      sub_24F458E08((v36 > 1), v37 + 1, 1);
      v23 = v41;
      v22 = v42;
      v21 = v43;
      v20 = v44;
      v19 = v45;
      v16 = MEMORY[0x277D84F90];
      v18 = v48;
    }

    ++v17;
    *(v18 + 16) = v37 + 1;
    v38 = (v18 + 24 * v37);
    v38[4] = v34;
    v38[5] = v35 | 0x8000000000000000;
    v38[6] = v16;
  }

  while (v17 != 8);
  v39 = sub_24E8E9070(v18);

  if (*(v39 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8, &unk_24F93ADA0);
    v40 = sub_24F92CB58();
  }

  else
  {
    v40 = MEMORY[0x277D84F98];
  }

  v48 = v40;
  sub_24F39434C(v39, 1, &v48);

  v47 = sub_24F92AE28();

  [v1 registerDefaults_];
}

id sub_24F39418C()
{
  v1 = *v0;
  BoolSettingKey.rawValue.getter();
  v2 = sub_24F92B098();

  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_24F394200()
{
  v1 = *v0;
  v2 = sub_24F92B768();
  BoolSettingKey.rawValue.getter();
  v3 = sub_24F92B098();

  [v1 setValue:v2 forKey:v3];
}

void sub_24F394290()
{
  v1 = *v0;
  BoolSettingKey.rawValue.getter();
  v2 = sub_24F92B098();

  [v1 removeObjectForKey_];
}

unint64_t sub_24F39434C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_24EA20328(result + 32, &v37);
  v8 = v37;
  v7 = v38;
  sub_24E612B0C(v39, v36);
  v9 = *a3;
  result = sub_24E76D644(v8, v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v9[3] < v14)
  {
    sub_24E89873C(v14, v5 & 1);
    result = sub_24E76D644(v8, v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_24F92CF88();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    v21 = (v17[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    result = sub_24E612B0C(v36, (v17[7] + 32 * result));
    v22 = v17[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v23;
    v5 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_24E8AD8E4();
  result = v20;
  v17 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = result;

  v19 = (v17[7] + 32 * v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  result = sub_24E612B0C(v36, v19);
  v5 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 80;
    v3 = 1;
    while (1)
    {
      sub_24EA20328(v6, &v37);
      v8 = v37;
      v7 = v38;
      sub_24E612B0C(v39, v36);
      v26 = *a3;
      result = sub_24E76D644(v8, v7);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_23;
      }

      v15 = v27;
      if (v26[3] < v30)
      {
        sub_24E89873C(v30, 1);
        result = sub_24E76D644(v8, v7);
        if ((v15 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      v32 = *a3;
      if (v15)
      {
        v24 = result;

        v25 = (v32[7] + 32 * v24);
        __swift_destroy_boxed_opaque_existential_1(v25);
        result = sub_24E612B0C(v36, v25);
      }

      else
      {
        v32[(result >> 6) + 8] |= 1 << result;
        v33 = (v32[6] + 16 * result);
        *v33 = v8;
        v33[1] = v7;
        result = sub_24E612B0C(v36, (v32[7] + 32 * result));
        v34 = v32[2];
        v13 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v32[2] = v35;
      }

      v6 += 48;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_24F394678(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Game(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F3947B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Game(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardEntriesShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F240FF8;
  if (!qword_27F240FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F394920(uint64_t a1)
{
  sub_24F3949F0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Game(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F3949F0(uint64_t a1)
{
  if (!qword_27F22B398)
  {
    type metadata accessor for LeaderboardEntry(255);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22B398);
    }
  }
}

unint64_t sub_24F394A48@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F979FB0;
  *(inited + 32) = 0x73656972746E65;
  v4 = 0xE700000000000000;
  *(inited + 40) = 0xE700000000000000;
  v5 = *v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78, &qword_24F9ECD00);
  v6 = sub_24F395B14(&qword_27F241030, &qword_27F241038, &protocol conformance descriptor for LeaderboardEntry, MEMORY[0x277D22590]);
  *(inited + 48) = v5;
  *(inited + 80) = v6;
  *(inited + 88) = 0x6B6E615278616DLL;
  *(inited + 96) = 0xE700000000000000;
  v7 = v1[1];
  *(inited + 128) = MEMORY[0x277D83B88];
  v8 = sub_24E65901C();
  *(inited + 104) = v7;
  *(inited + 136) = v8;
  *(inited + 144) = 0x6353726579616C70;
  *(inited + 152) = 0xEB0000000065706FLL;
  v9 = 0x4F73646E65697266;
  if (*(v1 + 16))
  {
    v9 = 0x6C61626F6C67;
  }

  v10 = 0xEB00000000796C6ELL;
  v11 = MEMORY[0x277D837D0];
  if (*(v1 + 16))
  {
    v10 = 0xE600000000000000;
  }

  v12 = MEMORY[0x277D22580];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v12;
  *(inited + 160) = v9;
  *(inited + 168) = v10;
  *(inited + 200) = 0x706F6353656D6974;
  *(inited + 208) = 0xE900000000000065;
  if (*(v1 + 17))
  {
    if (*(v1 + 17) == 1)
    {
      v4 = 0xE400000000000000;
      v13 = 1801807223;
    }

    else
    {
      v13 = 0x656D69546C6C61;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v13 = 0x7961646F74;
  }

  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 216) = v13;
  *(inited + 224) = v4;
  *(inited + 256) = 0x616C506C61636F6CLL;
  *(inited + 264) = 0xEB00000000726579;
  v14 = type metadata accessor for LeaderboardEntriesShelfConstructionIntent(0);
  v15 = v14[8];
  *(inited + 296) = type metadata accessor for Player(0);
  *(inited + 304) = sub_24F395BB0(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24F395BF8(v1 + v15, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 312) = 1701667175;
  *(inited + 320) = 0xE400000000000000;
  v17 = v14[9];
  *(inited + 352) = type metadata accessor for Game(0);
  *(inited + 360) = sub_24F395BB0(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v18 = __swift_allocate_boxed_opaque_existential_1((inited + 328));
  sub_24F395BF8(v1 + v17, v18, type metadata accessor for Game);
  *(inited + 368) = 0x444965676170;
  *(inited + 376) = 0xE600000000000000;
  v19 = (v1 + v14[10]);
  v20 = *v19;
  v21 = v19[1];
  *(inited + 408) = v11;
  *(inited + 416) = v12;
  *(inited + 384) = v20;
  *(inited + 392) = v21;
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x800000024FA46670;
  LOBYTE(v19) = *(v1 + v14[11]);
  v22 = MEMORY[0x277D22598];
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 472) = v22;
  *(inited + 440) = v19;

  v23 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v24 = sub_24E80FFAC(v23);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v24;
  return result;
}

uint64_t sub_24F394E54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241020, &unk_24F9ECD08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F395A60();
  sub_24F92D128();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78, &qword_24F9ECD00);
  sub_24F395B14(&qword_27F241028, &qword_27F21C1C8, &protocol conformance descriptor for LeaderboardEntry, MEMORY[0x277D83948]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CD38();
    LOBYTE(v11) = *(v3 + 16);
    HIBYTE(v10) = 2;
    sub_24F33239C();
    sub_24F92CD48();
    LOBYTE(v11) = *(v3 + 17);
    HIBYTE(v10) = 3;
    sub_24F3323F0();
    sub_24F92CD48();
    type metadata accessor for LeaderboardEntriesShelfConstructionIntent(0);
    LOBYTE(v11) = 4;
    type metadata accessor for Player(0);
    sub_24F395BB0(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    LOBYTE(v11) = 5;
    type metadata accessor for Game(0);
    sub_24F395BB0(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CD48();
    LOBYTE(v11) = 6;
    sub_24F92CD08();
    LOBYTE(v11) = 7;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F3951EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241008, &qword_24F9ECCF8);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = v24 - v8;
  v10 = type metadata accessor for LeaderboardEntriesShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F395A60();
  v28 = v9;
  v14 = v30;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v24[0] = v4;
  v24[1] = v5;
  v30 = v7;
  v15 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78, &qword_24F9ECD00);
  v32 = 0;
  sub_24F395B14(&qword_27F241018, &qword_27F21C190, &protocol conformance descriptor for LeaderboardEntry, MEMORY[0x277D83978]);
  v16 = v29;
  v17 = v28;
  sub_24F92CC68();
  *v12 = v33;
  LOBYTE(v33) = 1;
  *(v12 + 1) = sub_24F92CC58();
  v32 = 2;
  sub_24F33222C();
  sub_24F92CC68();
  v12[16] = v33;
  v32 = 3;
  sub_24F332280();
  sub_24F92CC68();
  v12[17] = v33;
  LOBYTE(v33) = 4;
  sub_24F395BB0(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v18 = v30;
  sub_24F92CC68();
  sub_24E6B2600(v18, &v12[v10[8]], type metadata accessor for Player);
  LOBYTE(v33) = 5;
  sub_24F395BB0(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v19 = v24[0];
  sub_24F92CC68();
  sub_24E6B2600(v19, &v12[v10[9]], type metadata accessor for Game);
  LOBYTE(v33) = 6;
  v20 = sub_24F92CC28();
  v21 = &v12[v10[10]];
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v33) = 7;
  LOBYTE(v19) = sub_24F92CC38();
  (*(v15 + 8))(v17, v16);
  v12[v10[11]] = v19 & 1;
  sub_24F395BF8(v12, v25, type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24F395AB4(v12, type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
}

unint64_t sub_24F395850()
{
  v1 = *v0;
  v2 = 0x73656972746E65;
  v3 = 0x444965676170;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x616C506C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 1701667175;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6353726579616C70;
  if (v1 != 2)
  {
    v5 = 0x706F6353656D6974;
  }

  if (*v0)
  {
    v2 = 0x6B6E615278616DLL;
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

uint64_t sub_24F395958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F395D78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F395980(uint64_t a1)
{
  v2 = sub_24F395A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3959BC(uint64_t a1)
{
  v2 = sub_24F395A60();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F395A60()
{
  result = qword_27F241010;
  if (!qword_27F241010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241010);
  }

  return result;
}

uint64_t sub_24F395AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F395B14(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239F78, &qword_24F9ECD00);
    sub_24F395BB0(a2, type metadata accessor for LeaderboardEntry, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F395BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F395BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F395C74()
{
  result = qword_27F241040;
  if (!qword_27F241040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241040);
  }

  return result;
}

unint64_t sub_24F395CCC()
{
  result = qword_27F241048;
  if (!qword_27F241048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241048);
  }

  return result;
}

unint64_t sub_24F395D24()
{
  result = qword_27F241050;
  if (!qword_27F241050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241050);
  }

  return result;
}

uint64_t sub_24F395D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6E615278616DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353726579616C70 && a2 == 0xEB0000000065706FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706F6353656D6974 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F396020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F396068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F3960F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241070, &qword_24F9ECED0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v43 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241078, &unk_24F9ECED8);
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v43 - v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v43 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = *(a1 + 104) & ~(*(a1 + 104) >> 63);
  v55 = 0;
  v56 = v19;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
  sub_24E62A6CC();
  v52 = v18;
  result = sub_24F927228();
  v21 = *(a1 + 8);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v57 = 0;
    v58 = v21;
    swift_getKeyPath();
    v22 = swift_allocObject();
    v50 = v5;
    v23 = *(a1 + 112);
    *(v22 + 112) = *(a1 + 96);
    *(v22 + 128) = v23;
    *(v22 + 144) = *(a1 + 128);
    v24 = *(a1 + 48);
    *(v22 + 48) = *(a1 + 32);
    *(v22 + 64) = v24;
    v25 = *(a1 + 80);
    *(v22 + 80) = *(a1 + 64);
    *(v22 + 96) = v25;
    v26 = *(a1 + 16);
    *(v22 + 16) = *a1;
    *(v22 + 32) = v26;
    sub_24F398040(a1, &v55);
    v45 = v7;
    v49 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241080, &qword_24F9ECF08);
    v44 = v10;
    v46 = a2;
    sub_24E602068(&qword_27F241088, &qword_27F241080, &qword_24F9ECF08, MEMORY[0x277CE14C0]);
    v27 = v54;
    sub_24F927228();
    v28 = *(a1 + 120) & ~(*(a1 + 120) >> 63);
    v55 = 0;
    v56 = v28;
    swift_getKeyPath();
    v29 = v51;
    sub_24F927228();
    v30 = *(v10 + 16);
    v31 = v53;
    v32 = v47;
    v30(v53, v52, v47);
    v33 = *(v50 + 16);
    v34 = v45;
    v33(v45, v27, v49);
    v35 = v48;
    v30(v48, v29, v32);
    v36 = v46;
    v30(v46, v31, v32);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241090, &qword_24F9ECF10);
    v38 = &v36[*(v37 + 48)];
    v39 = v36;
    v40 = v49;
    v33(v38, v34, v49);
    v30(&v39[*(v37 + 64)], v35, v32);
    v41 = *(v44 + 8);
    v41(v51, v32);
    v42 = *(v50 + 8);
    v42(v54, v40);
    v41(v52, v32);
    v41(v35, v32);
    v42(v34, v40);
    return (v41)(v53, v32);
  }

  return result;
}

void sub_24F3966A4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241098, &qword_24F9ECF18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = *a1;
  *v11 = sub_24F9249A8();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410A0, &qword_24F9ECF20);
  sub_24F396830(v12, a2, &v11[*(v13 + 44)]);
  v14 = a2[1];
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v12 >= v16;
    v18 = v12 < v16;
    sub_24E60169C(v11, v8, &qword_27F241098, &qword_24F9ECF18);
    sub_24E60169C(v8, a3, &qword_27F241098, &qword_24F9ECF18);
    v19 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410A8, &qword_24F9ECF28) + 48);
    *v19 = 0;
    *(v19 + 8) = v18;
    *(v19 + 9) = v17;
    sub_24E601704(v11, &qword_27F241098, &qword_24F9ECF18);
    sub_24E601704(v8, &qword_27F241098, &qword_24F9ECF18);
  }
}

void sub_24F396830(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410B0, &qword_24F9ECF30);
  v60 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241078, &unk_24F9ECED8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v16);
  v22 = &v49 - v21;
  v23 = *a2;
  v24 = a1 * *a2;
  if ((a1 * *a2) >> 64 != v24 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v57 = v15;
  v58 = v20;
  v59 = v19;
  v50 = v17;
  v55 = v10;
  v51 = v18;
  v52 = a3;
  v26 = a2[14] & ~(a2[14] >> 63);
  v61 = 0;
  v62 = v26;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
  sub_24E62A6CC();
  v56 = v22;
  sub_24F927228();
  if (v25 >= v24)
  {
    v63 = v24;
    v64 = v25;
    swift_getKeyPath();
    v27 = swift_allocObject();
    v28 = *(a2 + 7);
    *(v27 + 112) = *(a2 + 6);
    *(v27 + 128) = v28;
    v29 = a2[16];
    v30 = *(a2 + 3);
    *(v27 + 48) = *(a2 + 2);
    *(v27 + 64) = v30;
    v31 = *(a2 + 5);
    *(v27 + 80) = *(a2 + 4);
    *(v27 + 96) = v31;
    v32 = *(a2 + 1);
    *(v27 + 16) = *a2;
    *(v27 + 32) = v32;
    *(v27 + 144) = v29;
    *(v27 + 152) = v25;
    sub_24F398040(a2, &v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410B8, &qword_24F9ECF38);
    v54 = v7;
    sub_24E602068(&qword_27F2410C0, &qword_27F2410B8, &qword_24F9ECF38, MEMORY[0x277CE14C0]);
    v33 = v55;
    sub_24F927228();
    v34 = a2[16] & ~(a2[16] >> 63);
    v61 = 0;
    v62 = v34;
    swift_getKeyPath();
    v35 = v57;
    sub_24F927228();
    v36 = v51;
    v37 = *(v51 + 16);
    v38 = v59;
    v39 = v50;
    v37(v59, v56, v50);
    v40 = *(v60 + 16);
    v41 = v54;
    v42 = v33;
    v43 = v53;
    v40(v54, v42, v53);
    v37(v58, v35, v39);
    v44 = v52;
    v37(v52, v38, v39);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410C8, &qword_24F9ECF40);
    v40((v44 + *(v45 + 48)), v41, v43);
    v46 = v58;
    v37(v44 + *(v45 + 64), v58, v39);
    v47 = *(v36 + 8);
    v47(v57, v39);
    v48 = *(v60 + 8);
    v48(v55, v43);
    v47(v56, v39);
    v47(v46, v39);
    v48(v54, v43);
    v47(v59, v39);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_24F396E00(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410D0, &qword_24F9ECF48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = *a1;
  sub_24F396F60(v12, &v17 - v10);
  v13 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = v12 >= v13;
    v15 = v12 < v13;
    sub_24E60169C(v11, v8, &qword_27F2410D0, &qword_24F9ECF48);
    sub_24E60169C(v8, a3, &qword_27F2410D0, &qword_24F9ECF48);
    v16 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410D8, &qword_24F9ECF50) + 48);
    *v16 = 0;
    *(v16 + 8) = v15;
    *(v16 + 9) = v14;
    sub_24E601704(v11, &qword_27F2410D0, &qword_24F9ECF48);
    sub_24E601704(v8, &qword_27F2410D0, &qword_24F9ECF48);
  }
}

void sub_24F396F60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410E0, &qword_24F9ECF58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v114 = v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410E8, &qword_24F9ECF60);
  MEMORY[0x28223BE20](v7);
  v122 = v105 - v8;
  v9 = sub_24F929888();
  v117 = *(v9 - 8);
  v118 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v113 = (v105 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = v105 - v15;
  MEMORY[0x28223BE20](v17);
  *&v115 = v105 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = (v105 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410F0, &qword_24F9ECF68);
  v112 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  *&v116 = v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2410F8, &unk_24F9ECF70);
  MEMORY[0x28223BE20](v24);
  v27 = v105 - v26;
  v28 = *(v2 + 16);
  v29 = *(v28 + 16);
  v120 = v22;
  v121 = v30;
  v119 = v7;
  if (v29 > a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v111 = v27;
      v113 = v25;
      sub_24E615E00(v28 + 40 * a1 + 32, &v130);
      sub_24E615E00(&v130, &v133);
      type metadata accessor for GSKComponentContentBuilder(0);
      sub_24F3981B0();
      *&v132 = sub_24F923598();
      BYTE8(v132) = v31 & 1;
      v32 = *(v2 + 56);
      if (v32)
      {
        v33 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        v36 = 1;
      }

      else
      {
        v33 = *(v2 + 48);
        v36 = *(v2 + 40);
        v35 = *(v2 + 24);
        v34 = *(v2 + 32);
      }

      v114 = v4;
      v67 = *(v2 + 96);
      v110 = v21;
      if (v67)
      {
        v68 = 0.0;
        v69 = 0.0;
        LOBYTE(v70) = 1;
      }

      else
      {
        v68 = *(v2 + 88);
        v70 = *(v2 + 80);
        v69 = *(v2 + 72);
      }

      if (v32)
      {
        v71 = -INFINITY;
      }

      else
      {
        v71 = v35;
      }

      v108 = v34;
      v109 = v33;
      LODWORD(v107) = v36;
      if (v36)
      {
        v72 = v71;
      }

      else
      {
        v72 = v34;
      }

      if (v32)
      {
        v73 = v72;
      }

      else
      {
        v73 = v33;
      }

      v74 = sub_24F927618();
      if (v71 > v72 || v72 > v73)
      {
        goto LABEL_50;
      }

      v76 = v69;
      if (v70)
      {
        v76 = v71;
      }

      v77 = v68;
      if (v67)
      {
        v77 = v76;
      }

      if (v71 > v76 || v76 > v77)
      {
LABEL_50:
        v105[0] = v75;
        v105[1] = v74;
        sub_24F92BDC8();
        v78 = sub_24F9257A8();
        v106 = *&a1;
        v79 = v16;
        v80 = v78;
        sub_24F921FD8();

        v16 = v79;
        *&a1 = v106;
      }

      sub_24F9242E8();
      *v126 = v132;
      *&v126[16] = v133;
      *&v126[32] = v134;
      *&v126[48] = v135;
      sub_24F54D1AC(&v130, a1, *&v116);
      sub_24E601704(v126, &qword_27F21C5F8, &qword_24F955EE8);
      __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
      *&v126[24] = MEMORY[0x277D84030];
      *v126 = swift_allocObject();
      sub_24F928D68();
      v132 = 0u;
      v133 = 0u;
      sub_24F929878();
      sub_24E601704(&v132, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v126, &qword_27F2129B0, &unk_24F945320);
      *&v126[24] = MEMORY[0x277D83B88];
      *v126 = a1;
      sub_24F929868();
      v81 = v118;
      v82 = *(v117 + 8);
      v82(v16, v118);
      sub_24E601704(v126, &qword_27F2129B0, &unk_24F945320);
      __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
      sub_24F928D78();
      sub_24E7538CC(v126, &v124);
      if (*(&v125 + 1))
      {
        sub_24E612C80(&v124, &v132);
        __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
        *&v124 = swift_getDynamicType();
        *(&v124 + 1) = v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2161F8, &unk_24F9ECFA0);
        v83 = sub_24F92B188();
        v85 = v84;
        __swift_destroy_boxed_opaque_existential_1(&v132);
        sub_24E601704(v126, qword_27F21B590, &unk_24F93BE30);
        v86 = MEMORY[0x277D837D0];
      }

      else
      {
        sub_24E601704(v126, qword_27F21B590, &unk_24F93BE30);
        sub_24E601704(&v124, qword_27F21B590, &unk_24F93BE30);
        v83 = 0;
        v85 = 0;
        v86 = 0;
        *&v126[16] = 0;
      }

      v87 = v110;
      *v126 = v83;
      *&v126[8] = v85;
      *&v126[24] = v86;
      v88 = v115;
      sub_24F929868();
      v82(*&v88, v81);
      sub_24E601704(v126, &qword_27F2129B0, &unk_24F945320);
      v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238968, &qword_24F9C54C0);
      v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238970, &unk_24F9ECF90);
      v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5F8, &qword_24F955EE8);
      v92 = sub_24E7916EC();
      *v126 = v91;
      *&v126[8] = v92;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v94 = sub_24F09B638();
      v95 = sub_24F3980BC();
      *v126 = v89;
      *&v126[8] = &type metadata for IsDebugImpressionIndexOverlayEnabled;
      *&v126[16] = v90;
      *&v126[24] = OpaqueTypeConformance2;
      *&v126[32] = v94;
      *&v126[40] = v95;
      v96 = swift_getOpaqueTypeConformance2();
      v97 = v87;
      v98 = v111;
      v99 = v120;
      v100 = *&v116;
      sub_24F925EE8();
      v82(v97, v81);
      (*(v112 + 8))(v100, v99);
      v101 = v113;
      v102 = v121;
      (v113[2])(v122, v98, v121);
      swift_storeEnumTagMultiPayload();
      *v126 = v99;
      *&v126[8] = v96;
      swift_getOpaqueTypeConformance2();
      v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0D8, &unk_24F9ECF80);
      v104 = sub_24EB8ECCC();
      *v126 = v103;
      *&v126[8] = v104;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      v101[1](v98, v102);
      __swift_destroy_boxed_opaque_existential_1(&v130);
    }

    return;
  }

  v37 = *(v2 + 56);
  if (v37)
  {
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    LOBYTE(v41) = 1;
    v42 = *(v2 + 96);
    if ((v42 & 1) == 0)
    {
LABEL_7:
      v43 = *(v2 + 88);
      LODWORD(v112) = *(v2 + 80);
      v115 = *(v2 + 72);
      v116 = *&v43;
      goto LABEL_10;
    }
  }

  else
  {
    v38 = *(v2 + 48);
    v41 = *(v2 + 40);
    v40 = *(v2 + 24);
    v39 = *(v2 + 32);
    v42 = *(v2 + 96);
    if ((v42 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v115 = 0.0;
  v116 = 0.0;
  LODWORD(v112) = 1;
LABEL_10:
  v109 = *&v11;
  v110 = v5;
  v111 = v16;
  v107 = v40;
  v108 = v39;
  if (v37)
  {
    v44 = -INFINITY;
  }

  else
  {
    v44 = v40;
  }

  if (v41)
  {
    v45 = v44;
  }

  else
  {
    v45 = v39;
  }

  v106 = v38;
  if (v37)
  {
    v46 = v45;
  }

  else
  {
    v46 = v38;
  }

  sub_24F927618();
  if (v44 > v45 || v45 > v46)
  {
    goto LABEL_27;
  }

  v47 = v115;
  v48 = v116;
  if (v112)
  {
    v47 = v44;
  }

  if (v42)
  {
    v48 = v47;
  }

  if (v44 > v47 || v47 > v48)
  {
LABEL_27:
    sub_24F92BDC8();
    v49 = sub_24F9257A8();
    sub_24F921FD8();
  }

  sub_24F9242E8();
  *&v128[55] = v135;
  *&v128[71] = v136;
  *&v128[87] = v137;
  *&v128[103] = v138;
  *&v128[7] = v132;
  *&v128[23] = v133;
  *&v128[39] = v134;
  *&v126[73] = *&v128[64];
  *&v126[89] = *&v128[80];
  v127[0] = *&v128[96];
  *&v126[25] = *&v128[16];
  *&v126[41] = *&v128[32];
  *&v126[57] = *&v128[48];
  v129 = 1;
  *v126 = 0;
  v126[8] = 1;
  *(v127 + 15) = *(&v138 + 1);
  *&v126[9] = *v128;
  v130 = 0u;
  v131 = 0u;
  v124 = 0u;
  v125 = 0u;
  v50 = v109;
  sub_24F929878();
  sub_24E601704(&v124, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v130, &qword_27F2129B0, &unk_24F945320);
  *(&v131 + 1) = MEMORY[0x277D83B88];
  *&v130 = a1;
  v51 = v113;
  sub_24F929868();
  v52 = v118;
  v53 = *(v117 + 8);
  v53(*&v50, v118);
  sub_24E601704(&v130, &qword_27F2129B0, &unk_24F945320);
  *(&v131 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v130) = 1;
  v54 = v4;
  v55 = v111;
  sub_24F929868();
  v53(v51, v52);
  sub_24E601704(&v130, &qword_27F2129B0, &unk_24F945320);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0D8, &unk_24F9ECF80);
  v56 = sub_24EB8ECCC();
  v57 = v114;
  sub_24F925EE8();
  v53(v55, v52);
  v58 = v110;
  v110[2](v122, v57, v54);
  swift_storeEnumTagMultiPayload();
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238968, &qword_24F9C54C0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238970, &unk_24F9ECF90);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5F8, &qword_24F955EE8);
  v62 = sub_24E7916EC();
  *v126 = v61;
  *&v126[8] = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_24F09B638();
  v65 = sub_24F3980BC();
  *v126 = v59;
  *&v126[8] = &type metadata for IsDebugImpressionIndexOverlayEnabled;
  *&v126[16] = v60;
  *&v126[24] = v63;
  *&v126[32] = v64;
  *&v126[40] = v65;
  v66 = swift_getOpaqueTypeConformance2();
  *v126 = v120;
  *&v126[8] = v66;
  swift_getOpaqueTypeConformance2();
  *v126 = v117;
  *&v126[8] = v56;
  swift_getOpaqueTypeConformance2();
  sub_24F924E28();
  (v58[1])(v57, v54);
}

uint64_t sub_24F397E18()
{
  v1 = sub_24F925508();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241058, &qword_24F9ECEC0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - v6;
  v8 = *(v0 + 112);
  v14[6] = *(v0 + 96);
  v14[7] = v8;
  v15 = *(v0 + 128);
  v9 = *(v0 + 48);
  v14[2] = *(v0 + 32);
  v14[3] = v9;
  v10 = *(v0 + 80);
  v14[4] = *(v0 + 64);
  v14[5] = v10;
  v11 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v11;
  *v7 = sub_24F924C88();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241060, &qword_24F9ECEC8);
  sub_24F3960F4(v14, &v7[*(v12 + 44)]);
  sub_24F9254F8();
  sub_24E602068(&qword_27F241068, &qword_27F241058, &qword_24F9ECEC0, MEMORY[0x277CE1198]);
  sub_24F926678();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F241058, &qword_24F9ECEC0);
}

uint64_t sub_24F398000()
{

  return swift_deallocObject();
}

uint64_t sub_24F398078()
{

  return swift_deallocObject();
}

unint64_t sub_24F3980BC()
{
  result = qword_27F241100;
  if (!qword_27F241100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238970, &unk_24F9ECF90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21C5F8, &qword_24F955EE8);
    sub_24E7916EC();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387B8, &qword_27F2387A8, &qword_24F9CFD50, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241100);
  }

  return result;
}

unint64_t sub_24F3981B0()
{
  result = qword_27F21C648;
  if (!qword_27F21C648)
  {
    type metadata accessor for GSKComponentContentBuilder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21C648);
  }

  return result;
}

uint64_t sub_24F398208()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F398240()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241058, &qword_24F9ECEC0);
  sub_24E602068(&qword_27F241068, &qword_27F241058, &qword_24F9ECEC0, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F3982F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F3983BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for GamesRecentlyPlayedDataIntent(uint64_t a1)
{
  result = qword_27F241108;
  if (!qword_27F241108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F3984C0(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F398550(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0x800000024FA42FF0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 7105633;
  }

  if (*a2)
  {
    v6 = 0x800000024FA42FF0;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F3985F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F398674(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F3986E0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F39875C@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24F3987BC(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FA42FF0;
  v3 = 7105633;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_24F39885C()
{
  result = qword_27F241118;
  if (!qword_27F241118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241118);
  }

  return result;
}

uint64_t sub_24F3988B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241120, &qword_24F9ED118);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for GamesRecentlyPlayedDataIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F398D3C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v14 = v19;
  v15 = v12;
  v26 = 0;
  sub_24EC9948C();
  v16 = v20;
  sub_24F92CC68();
  sub_24E61C0A8(v6, v15);
  v25 = 1;
  *(v15 + v10[5]) = sub_24F92CC58();
  v24 = 2;
  *(v15 + v10[6]) = sub_24F92CC58();
  v22 = 3;
  sub_24F398D90();
  sub_24F92CC68();
  (*(v14 + 8))(v9, v16);
  *(v15 + v10[7]) = v23;
  sub_24F398DE4(v15, v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_24F398E48(v15, type metadata accessor for GamesRecentlyPlayedDataIntent);
}

uint64_t sub_24F398BF0()
{
  v1 = 0x726579616C70;
  v2 = 0x65674178616DLL;
  if (*v0 != 2)
  {
    v2 = 0x7265746C6966;
  }

  if (*v0)
  {
    v1 = 0x6C7573655278616DLL;
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

uint64_t sub_24F398C64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F399014(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F398C8C(uint64_t a1)
{
  v2 = sub_24F398D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F398CC8(uint64_t a1)
{
  v2 = sub_24F398D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F398D3C()
{
  result = qword_27F241128;
  if (!qword_27F241128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241128);
  }

  return result;
}

unint64_t sub_24F398D90()
{
  result = qword_27F241130;
  if (!qword_27F241130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241130);
  }

  return result;
}

uint64_t sub_24F398DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesRecentlyPlayedDataIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F398E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F398EA8()
{
  result = qword_27F241138;
  if (!qword_27F241138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241138);
  }

  return result;
}

unint64_t sub_24F398F10()
{
  result = qword_27F241140;
  if (!qword_27F241140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241140);
  }

  return result;
}

unint64_t sub_24F398F68()
{
  result = qword_27F241148;
  if (!qword_27F241148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241148);
  }

  return result;
}

unint64_t sub_24F398FC0()
{
  result = qword_27F241150;
  if (!qword_27F241150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241150);
  }

  return result;
}

uint64_t sub_24F399014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C7573655278616DLL && a2 == 0xEA00000000007374 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F399184@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  v4 = v1[1];
  v17 = *v1;
  *(inited + 48) = v17;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xEB00000000444965;
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 88) = 0x656D614E656D6167;
  *(inited + 96) = 0xE800000000000000;
  v16 = v4;
  *(inited + 128) = v5;
  *(inited + 136) = v6;
  *(inited + 104) = v4;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x800000024FA747F0;
  v18 = *(v1 + 4);
  v7 = v18;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(inited + 184) = v8;
  v9 = sub_24E61B71C(&qword_27F213798, v6, MEMORY[0x277D22590]);
  *(inited + 160) = v7;
  *(inited + 192) = v9;
  *(inited + 200) = 0xD000000000000016;
  v15 = *(v1 + 5);
  v10 = v15;
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 208) = 0x800000024FA6F180;
  *(inited + 216) = v10;
  sub_24E614DB0(&v17, v14);
  sub_24E614DB0(&v16, v14);
  sub_24F399B08(&v18, v14);
  sub_24F399B08(&v15, v14);
  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24F39939C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241168, &unk_24F9ED388);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F399AB4();
  sub_24F92D128();
  LOBYTE(v11) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_24F92CD08();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24F92CD48();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F3995E8()
{
  v1 = 0x676E656C6C616863;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x656D614E656D6167;
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

uint64_t sub_24F399670@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F399C90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F399698(uint64_t a1)
{
  v2 = sub_24F399AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3996D4(uint64_t a1)
{
  v2 = sub_24F399AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F399730@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_24F3997A4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_24F3997A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241158, &unk_24F9ED378);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F399AB4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v26) = 0;
  v9 = sub_24F92CC28();
  v24 = v10;
  LOBYTE(v26) = 1;
  v11 = sub_24F92CC28();
  v23 = v12;
  v20 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v25 = 2;
  v21 = sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v22 = v13;
  sub_24F92CC68();
  v19 = v26;
  v25 = 3;
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v14 = v26;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v24;
  *a2 = v9;
  a2[1] = v16;
  v17 = v23;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v14;
  return result;
}

unint64_t sub_24F399AB4()
{
  result = qword_27F241160;
  if (!qword_27F241160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241160);
  }

  return result;
}

uint64_t sub_24F399B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F399B8C()
{
  result = qword_27F241170;
  if (!qword_27F241170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241170);
  }

  return result;
}

unint64_t sub_24F399BE4()
{
  result = qword_27F241178;
  if (!qword_27F241178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241178);
  }

  return result;
}

unint64_t sub_24F399C3C()
{
  result = qword_27F241180;
  if (!qword_27F241180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241180);
  }

  return result;
}

uint64_t sub_24F399C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA747F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA6F180 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t GameRecordingsDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F399E58()
{
  if (*v0)
  {
    return 0x646E7542656D6167;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24F399EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E7542656D6167 && a2 == 0xED0000734449656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F399F84(uint64_t a1)
{
  v2 = sub_24F39A1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F399FC0(uint64_t a1)
{
  v2 = sub_24F39A1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameRecordingsDataIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241188, &unk_24F9ED4D0);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39A1C8();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_24F39A1C8()
{
  result = qword_27F241190;
  if (!qword_27F241190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241190);
  }

  return result;
}

uint64_t GameRecordingsDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241198, &qword_24F9ED4E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39A1C8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v16 = 1;
  sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F39A4D8()
{
  result = qword_27F2411A0;
  if (!qword_27F2411A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411A0);
  }

  return result;
}

unint64_t sub_24F39A530()
{
  result = qword_27F2411A8;
  if (!qword_27F2411A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411A8);
  }

  return result;
}

unint64_t sub_24F39A588()
{
  result = qword_27F2411B0;
  if (!qword_27F2411B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411B0);
  }

  return result;
}

uint64_t sub_24F39A5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x46776F4E79616C70 && a2 == 0xEB00000000646565)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F39A688(uint64_t a1)
{
  v2 = sub_24F39AEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F39A6C4(uint64_t a1)
{
  v2 = sub_24F39AEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F39A700(uint64_t a1)
{
  v2 = sub_24F39AEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F39A73C(uint64_t a1)
{
  v2 = sub_24F39AEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F39A790(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2411E0, &qword_24F9ED840);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2411E8, &qword_24F9ED848);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39AEA0();
  sub_24F92D128();
  sub_24F39AEF4();
  sub_24F92CC98();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t AMSEngagementEnqueueResult.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24F92C188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  v4 = sub_24F92CF68();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_24F39AA28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24F92C188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  v4 = sub_24F92CF68();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_24F39AB00()
{
  result = qword_27F2411B8;
  if (!qword_27F2411B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411B8);
  }

  return result;
}

uint64_t sub_24F39AB54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2411C0, &qword_24F9ED828);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2411C8, &unk_24F9ED830);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39AEA0();
  sub_24F92D108();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_24F92CC78();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_24E643448() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_24F92C918();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v16 = &type metadata for OnDevicePersonalizationRequest;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_24F39AEF4();
  sub_24F92CBA8();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

unint64_t sub_24F39AEA0()
{
  result = qword_27F2411D0;
  if (!qword_27F2411D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411D0);
  }

  return result;
}

unint64_t sub_24F39AEF4()
{
  result = qword_27F2411D8;
  if (!qword_27F2411D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411D8);
  }

  return result;
}

unint64_t sub_24F39AF6C()
{
  result = qword_27F2411F0;
  if (!qword_27F2411F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411F0);
  }

  return result;
}

unint64_t sub_24F39AFC4()
{
  result = qword_27F2411F8;
  if (!qword_27F2411F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2411F8);
  }

  return result;
}

unint64_t sub_24F39B01C()
{
  result = qword_27F241200;
  if (!qword_27F241200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241200);
  }

  return result;
}

unint64_t sub_24F39B074()
{
  result = qword_27F241208;
  if (!qword_27F241208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241208);
  }

  return result;
}

unint64_t sub_24F39B0CC()
{
  result = qword_27F241210;
  if (!qword_27F241210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241210);
  }

  return result;
}

uint64_t sub_24F39B134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F39B204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameLockupDetailsStackView(uint64_t a1)
{
  result = qword_27F241218;
  if (!qword_27F241218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F39B300(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24F39B3E0(319);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F39B3E0(uint64_t a1)
{
  if (!qword_27F216990)
  {
    type metadata accessor for DescriptionLabelConfig(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F216990);
    }
  }
}

__n128 sub_24F39B454@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241228, &qword_24F9EDAA0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241230, &qword_24F9EDAA8);
  sub_24F39B5F8(v2, &v7[*(v8 + 44)]);
  KeyPath = swift_getKeyPath();
  v10 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241238, &qword_24F9EDAE0) + 36)];
  *v10 = KeyPath;
  v10[8] = 0;
  v11 = swift_getKeyPath();
  v12 = &v7[*(v5 + 44)];
  *v12 = v11;
  *(v12 + 1) = 2;
  v12[16] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24F39D1A0(v7, a1);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241240, &qword_24F9EDB18) + 36);
  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  result = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_24F39B5F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241248, &qword_24F9EDB20);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v131 = (&v127 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
  MEMORY[0x28223BE20](v4 - 8);
  v142 = &v127 - v5;
  v141 = type metadata accessor for DescriptionLabelConfig(0);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v130 = (&v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241250, &qword_24F9EDB28);
  MEMORY[0x28223BE20](v7 - 8);
  v147 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v127 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v11);
  v135 = &v127 - v12;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217370, &qword_24F9454E0);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v136 = &v127 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241258, &qword_24F9EDB30);
  MEMORY[0x28223BE20](v14 - 8);
  v144 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v159 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241260, &unk_24F9EDB38);
  MEMORY[0x28223BE20](v18 - 8);
  v143 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v156 = (&v127 - v21);
  v22 = sub_24F9297D8();
  v151 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24F929888();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B0, &qword_24F93D590);
  MEMORY[0x28223BE20](v133);
  v134 = &v127 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241268, &qword_24F9EDB48);
  v137 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v132 = &v127 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241270, &qword_24F9EDB50);
  MEMORY[0x28223BE20](v32 - 8);
  v155 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v34);
  v158 = &v127 - v36;
  v37 = a1;
  v38 = a1[1];
  v154 = v11;
  v153 = v22;
  v152 = v25;
  v150 = v26;
  v149 = v24;
  if (v38)
  {
    *&v163 = *v37;
    *(&v163 + 1) = v38;
    sub_24E600AEC();

    v39 = sub_24F925E18();
    v41 = v40;
    v43 = v42;
    type metadata accessor for GameLockupDetailsStackView(0);
    v44 = sub_24F925C98();
    v129 = v37;
    v45 = v44;
    v47 = v46;
    v128 = v30;
    v49 = v48;
    v51 = v50;
    sub_24E600B40(v39, v41, v43 & 1);

    *&v163 = v45;
    *(&v163 + 1) = v47;
    LOBYTE(v39) = v49 & 1;
    LOBYTE(v164) = v49 & 1;
    *(&v164 + 1) = v51;
    v52 = v134;
    sub_24F9268B8();
    v53 = v45;
    v37 = v129;
    v54 = v150;
    v55 = v151;
    sub_24E600B40(v53, v47, v39);

    LODWORD(v39) = sub_24F9251C8();
    v56 = (v52 + *(v133 + 36));
    v57 = *(v154 + 36);
    v58 = *MEMORY[0x277CE13B8];
    v59 = sub_24F927748();
    v60 = v56 + v57;
    v61 = v149;
    (*(*(v59 - 8) + 104))(v60, v58, v59);
    *v56 = v39;
    v62 = v153;
    (*(v55 + 104))(v61, *MEMORY[0x277D22068], v153);
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    sub_24F929818();
    sub_24E601704(&v161, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v163, &qword_27F2129B0, &unk_24F945320);
    (*(v55 + 8))(v61, v62);
    sub_24F39D2D8();
    v63 = v132;
    sub_24F925EE8();
    (*(v54 + 8))(v28, v152);
    sub_24E601704(v52, &qword_27F2146B0, &qword_24F93D590);
    v64 = v137;
    v65 = v158;
    v66 = v128;
    (*(v137 + 4))(v158, v63, v128);
    (*(v64 + 7))(v65, 0, 1, v66);
  }

  else
  {
    (*(v137 + 7))(v158, 1, 1, v30, v35);
  }

  v67 = sub_24F9249A8();
  v68 = v156;
  *v156 = v67;
  v68[1] = 0x4010000000000000;
  *(v68 + 16) = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241278, &qword_24F9EDB58);
  sub_24F39C6F4(v37, v68 + *(v69 + 44));
  v70 = v37[5];
  if (v70)
  {
    *&v163 = v37[4];
    *(&v163 + 1) = v70;
    sub_24E600AEC();

    v71 = sub_24F925E18();
    v73 = v72;
    v75 = v74;
    v137 = v28;
    type metadata accessor for GameLockupDetailsStackView(0);
    v76 = sub_24F925C98();
    v78 = v77;
    v80 = v79;
    sub_24E600B40(v71, v73, v75 & 1);

    LODWORD(v71) = sub_24F9251C8();
    v81 = *(v154 + 36);
    v82 = *MEMORY[0x277CE13B8];
    v83 = sub_24F927748();
    v84 = v135;
    (*(*(v83 - 8) + 104))(&v135[v81], v82, v83);
    *v84 = v71;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v85 = sub_24F925C58();
    v87 = v86;
    v88 = v37;
    v90 = v89;
    v92 = v91;
    v134 = v91;
    sub_24E600B40(v76, v78, v80 & 1);

    sub_24E601704(v84, &qword_27F213F10, &unk_24F93BE10);
    *&v163 = v85;
    *(&v163 + 1) = v87;
    LOBYTE(v78) = v90 & 1;
    v37 = v88;
    LOBYTE(v164) = v78;
    *(&v164 + 1) = v92;
    v93 = v151;
    v94 = v149;
    v95 = v153;
    (*(v151 + 104))(v149, *MEMORY[0x277D22070], v153);
    v161 = 0u;
    v162 = 0u;
    memset(v160, 0, sizeof(v160));
    v96 = v137;
    sub_24F929818();
    sub_24E601704(v160, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v161, &qword_27F2129B0, &unk_24F945320);
    (*(v93 + 8))(v94, v95);
    v97 = v136;
    sub_24F925EE8();
    (*(v150 + 8))(v96, v152);
    sub_24E600B40(v85, v87, v78);

    v98 = v138;
    v99 = v159;
    v100 = v139;
    (*(v138 + 32))(v159, v97, v139);
    v101 = 0;
  }

  else
  {
    v101 = 1;
    v99 = v159;
    v100 = v139;
    v98 = v138;
  }

  (*(v98 + 56))(v99, v101, 1, v100);
  v102 = type metadata accessor for GameLockupDetailsStackView(0);
  v103 = v142;
  sub_24E60169C(v37 + *(v102 + 28), v142, &qword_27F216968, &unk_24F9EDA20);
  if ((*(v140 + 48))(v103, 1, v141) == 1)
  {
    sub_24E601704(v103, &qword_27F216968, &unk_24F9EDA20);
    v104 = v157;
    (*(v145 + 56))(v157, 1, 1, v146);
  }

  else
  {
    v105 = v130;
    sub_24F39D210(v103, v130);
    v106 = sub_24F9249A8();
    v107 = v131;
    *v131 = v106;
    *(v107 + 8) = 0x4010000000000000;
    *(v107 + 16) = 0;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7C0, &qword_24F9566B0);
    sub_24F39CE68(v105, v107 + *(v108 + 44));
    v109 = *(v37 + *(v102 + 44));
    KeyPath = swift_getKeyPath();
    v111 = (v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7A8, &unk_24F9EDBA0) + 36));
    *v111 = KeyPath;
    v111[1] = v109;

    LODWORD(v109) = sub_24F9251C8();
    v112 = v146;
    v113 = (v107 + *(v146 + 36));
    v114 = *(v154 + 36);
    v115 = *MEMORY[0x277CE13B8];
    v116 = sub_24F927748();
    (*(*(v116 - 8) + 104))(&v113[v114], v115, v116);
    *v113 = v109;
    v104 = v157;
    sub_24E6009C8(v107, v157, &qword_27F241248, &qword_24F9EDB20);
    (*(v145 + 56))(v104, 0, 1, v112);
    sub_24F39D27C(v105);
  }

  v117 = v155;
  sub_24E60169C(v158, v155, &qword_27F241270, &qword_24F9EDB50);
  v118 = v156;
  v119 = v143;
  sub_24E60169C(v156, v143, &qword_27F241260, &unk_24F9EDB38);
  v120 = v144;
  sub_24E60169C(v159, v144, &qword_27F241258, &qword_24F9EDB30);
  v121 = v104;
  v122 = v147;
  sub_24E60169C(v121, v147, &qword_27F241250, &qword_24F9EDB28);
  v123 = v148;
  sub_24E60169C(v117, v148, &qword_27F241270, &qword_24F9EDB50);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241280, &unk_24F9EDB60);
  sub_24E60169C(v119, v123 + v124[12], &qword_27F241260, &unk_24F9EDB38);
  sub_24E60169C(v120, v123 + v124[16], &qword_27F241258, &qword_24F9EDB30);
  sub_24E60169C(v122, v123 + v124[20], &qword_27F241250, &qword_24F9EDB28);
  v125 = v123 + v124[24];
  *v125 = 0;
  *(v125 + 8) = 256;
  sub_24E601704(v157, &qword_27F241250, &qword_24F9EDB28);
  sub_24E601704(v159, &qword_27F241258, &qword_24F9EDB30);
  sub_24E601704(v118, &qword_27F241260, &unk_24F9EDB38);
  sub_24E601704(v158, &qword_27F241270, &qword_24F9EDB50);
  sub_24E601704(v122, &qword_27F241250, &qword_24F9EDB28);
  sub_24E601704(v120, &qword_27F241258, &qword_24F9EDB30);
  sub_24E601704(v119, &qword_27F241260, &unk_24F9EDB38);
  return sub_24E601704(v155, &qword_27F241270, &qword_24F9EDB50);
}

uint64_t sub_24F39C6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9297D8();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929888();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8, &qword_24F94DAB0);
  MEMORY[0x28223BE20](v65);
  v66 = &v63 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241290, &qword_24F9EDBF0);
  MEMORY[0x28223BE20](v68);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241298, &qword_24F9EDBF8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2412A0, &qword_24F9EDC00);
  MEMORY[0x28223BE20](v16 - 8);
  v67 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v63 - v19;
  if (*(a1 + *(type metadata accessor for GameLockupDetailsStackView(0) + 36) + 8))
  {

    v63 = sub_24F926E48();
    v20 = sub_24F9251C8();
    v21 = v4;
    v22 = a2;
    v23 = &v15[*(v12 + 36)];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50);
    v64 = a1;
    v25 = *(v24 + 28);
    v26 = *MEMORY[0x277CE1050];
    v27 = sub_24F926E78();
    (*(*(v27 - 8) + 104))(v23 + v25, v26, v27);
    *v23 = swift_getKeyPath();
    a2 = v22;
    v4 = v21;
    *v15 = v63;
    *(v15 + 2) = v20;
    v28 = v76;
    sub_24E6009C8(v15, v76, &qword_27F241298, &qword_24F9EDBF8);
    v29 = v28;
    a1 = v64;
    (*(v13 + 56))(v29, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v76, 1, 1, v12);
  }

  v30 = *(a1 + 24);
  *&v78 = *(a1 + 16);
  *(&v78 + 1) = v30;
  sub_24E600AEC();

  v31 = sub_24F925E18();
  v33 = v32;
  v35 = v34;
  v36 = sub_24F925C98();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_24E600B40(v31, v33, v35 & 1);

  *&v78 = v36;
  *(&v78 + 1) = v38;
  LOBYTE(v79) = v40 & 1;
  *(&v79 + 1) = v42;
  v43 = v66;
  sub_24F9268B8();
  sub_24E600B40(v36, v38, v40 & 1);

  v44 = sub_24F925198();
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60) + 36)) = v44;
  v45 = *(v65 + 36);
  v46 = *MEMORY[0x277CE13B8];
  v47 = sub_24F927748();
  (*(*(v47 - 8) + 104))(v43 + v45, v46, v47);
  v48 = v73;
  v49 = v70;
  (*(v73 + 104))(v70, *MEMORY[0x277D22050], v4);
  v78 = 0u;
  v79 = 0u;
  memset(v77, 0, sizeof(v77));
  v50 = v69;
  sub_24F929818();
  sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v78, &qword_27F2129B0, &unk_24F945320);
  (*(v48 + 8))(v49, v4);
  sub_24E7261F0();
  v51 = v74;
  sub_24F925EE8();
  (*(v71 + 8))(v50, v72);
  sub_24E601704(v43, &qword_27F21A1A8, &qword_24F94DAB0);
  v52 = sub_24F925828();
  sub_24F923318();
  v53 = v67;
  v54 = v51 + *(v68 + 36);
  *v54 = v52;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56;
  *(v54 + 24) = v57;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  v59 = v76;
  sub_24E60169C(v76, v53, &qword_27F2412A0, &qword_24F9EDC00);
  v60 = v75;
  sub_24E60169C(v51, v75, &qword_27F241290, &qword_24F9EDBF0);
  sub_24E60169C(v53, a2, &qword_27F2412A0, &qword_24F9EDC00);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2412A8, &qword_24F9EDC08);
  sub_24E60169C(v60, a2 + *(v61 + 48), &qword_27F241290, &qword_24F9EDBF0);
  sub_24E601704(v51, &qword_27F241290, &qword_24F9EDBF0);
  sub_24E601704(v59, &qword_27F2412A0, &qword_24F9EDC00);
  sub_24E601704(v60, &qword_27F241290, &qword_24F9EDBF0);
  return sub_24E601704(v53, &qword_27F2412A0, &qword_24F9EDC00);
}

uint64_t sub_24F39CE68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v31 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171D8, &qword_24F9EDBB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  if (a1[3])
  {

    v32 = sub_24F926E48();
    v14 = (v7 + *(v4 + 36));
    v15 = a2;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
    v17 = *MEMORY[0x277CE1050];
    v18 = sub_24F926E78();
    v19 = v14 + v16;
    a2 = v15;
    (*(*(v18 - 8) + 104))(v19, v17, v18);
    *v14 = swift_getKeyPath();
    *v7 = v32;
    sub_24E6009C8(v7, v13, &qword_27F22DF20, &qword_24F93CB70);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v31 - v12, 1, 1, v4);
  }

  v20 = *a1;
  v21 = a1[1];
  v33 = v20;
  v34 = v21;
  sub_24E600AEC();

  v22 = sub_24F925E18();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24E60169C(v13, v10, &qword_27F2171D8, &qword_24F9EDBB0);
  sub_24E60169C(v10, a2, &qword_27F2171D8, &qword_24F9EDBB0);
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C7E8, &unk_24F956700) + 48);
  *v29 = v22;
  *(v29 + 8) = v24;
  *(v29 + 16) = v26 & 1;
  *(v29 + 24) = v28;
  sub_24E5FD138(v22, v24, v26 & 1);

  sub_24E601704(v13, &qword_27F2171D8, &qword_24F9EDBB0);
  sub_24E600B40(v22, v24, v26 & 1);

  return sub_24E601704(v10, &qword_27F2171D8, &qword_24F9EDBB0);
}

uint64_t sub_24F39D1A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241228, &qword_24F9EDAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F39D210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionLabelConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F39D27C(uint64_t a1)
{
  v2 = type metadata accessor for DescriptionLabelConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F39D2D8()
{
  result = qword_27F241288;
  if (!qword_27F241288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146B0, &qword_24F93D590);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241288);
  }

  return result;
}

unint64_t sub_24F39D3CC()
{
  result = qword_27F2412B0;
  if (!qword_27F2412B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241240, &qword_24F9EDB18);
    sub_24F39D458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2412B0);
  }

  return result;
}

unint64_t sub_24F39D458()
{
  result = qword_27F2412B8;
  if (!qword_27F2412B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241228, &qword_24F9EDAA0);
    sub_24F39D510();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2412B8);
  }

  return result;
}

unint64_t sub_24F39D510()
{
  result = qword_27F2412C0;
  if (!qword_27F2412C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241238, &qword_24F9EDAE0);
    sub_24F39D5C8();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2412C0);
  }

  return result;
}

unint64_t sub_24F39D5C8()
{
  result = qword_27F2412C8;
  if (!qword_27F2412C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2412D0, &qword_24F9EDC10);
    sub_24E602068(&qword_27F2412D8, &qword_27F2412E0, &qword_24F9EDC18, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2412C8);
  }

  return result;
}

uint64_t sub_24F39D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F39D780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AcceptChallengeAction(uint64_t a1)
{
  result = qword_27F2412E8;
  if (!qword_27F2412E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F39D870(uint64_t a1)
{
  sub_24F39D978(319, &qword_27F2182B8, MEMORY[0x277D21AA0]);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24F39D978(319, &qword_27F21BF30, MEMORY[0x277D21FC8]);
      if (v3 <= 0x3F)
      {
        sub_24F928AD8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F39D978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_24E678D94();
    v7 = a3(a1, &type metadata for ActionKinds, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24F39D9DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241308, &qword_24F9EDCC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39E618();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    sub_24E602068(&qword_27F218310, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AA8]);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CD48();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE0]);
    sub_24F92CD48();
    type metadata accessor for AcceptChallengeAction(0);
    v8[8] = 7;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F39DD68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_24F928AD8();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2412F8, &unk_24F9EDCB0);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AcceptChallengeAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 168) = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *(v11 + 184) = 0u;
  *(v11 + 25) = 0;
  v12 = (v11 + 168);
  sub_24E61DA68(&v36, (v11 + 168), qword_27F21B590, &unk_24F93BE30);
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F39E618();
  v33 = v8;
  v14 = v34;
  sub_24F92D108();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_24E601704(v12, &qword_27F213EA8, &unk_24F93D030);
  }

  else
  {
    v27 = v9;
    v28 = v3;
    v34 = v5;
    v16 = v31;
    v15 = v32;
    LOBYTE(v36) = 0;
    *v11 = sub_24F92CC28();
    *(v11 + 1) = v17;
    LOBYTE(v36) = 1;
    *(v11 + 2) = sub_24F92CC28();
    *(v11 + 3) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    v39 = 2;
    sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
    sub_24F92CC68();
    v19 = v37;
    *(v11 + 2) = v36;
    *(v11 + 3) = v19;
    *(v11 + 8) = v38;
    LOBYTE(v36) = 3;
    v26 = 0;
    *(v11 + 9) = sub_24F92CBC8();
    *(v11 + 10) = v20;
    v39 = 4;
    sub_24F92CC68();
    v21 = v37;
    *(v11 + 88) = v36;
    *(v11 + 104) = v21;
    *(v11 + 15) = v38;
    v39 = 5;
    sub_24F92CC68();
    v22 = v37;
    *(v11 + 8) = v36;
    *(v11 + 9) = v22;
    *(v11 + 20) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    v39 = 6;
    sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE8]);
    sub_24F92CC68();
    sub_24E61DA68(&v36, v12, &qword_27F213EA8, &unk_24F93D030);
    LOBYTE(v36) = 7;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    v23 = v34;
    v24 = v28;
    sub_24F92CC68();
    (*(v16 + 8))(v33, v15);
    (*(v29 + 32))(&v11[*(v27 + 44)], v23, v24);
    sub_24F39E66C(v11, v30);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_24F39E6D0(v11);
  }
}

uint64_t sub_24F39E41C()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  v3 = 0x65756E69746E6F63;
  if (v1 != 6)
  {
    v3 = 0x654D6E6F69746361;
  }

  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v1 != 2)
  {
    v5 = 0x6F43657469766E69;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
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

uint64_t sub_24F39E548@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F39E844(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F39E570(uint64_t a1)
{
  v2 = sub_24F39E618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F39E5AC(uint64_t a1)
{
  v2 = sub_24F39E618();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F39E618()
{
  result = qword_27F241300;
  if (!qword_27F241300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241300);
  }

  return result;
}

uint64_t sub_24F39E66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptChallengeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F39E6D0(uint64_t a1)
{
  v2 = type metadata accessor for AcceptChallengeAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F39E740()
{
  result = qword_27F241310;
  if (!qword_27F241310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241310);
  }

  return result;
}

unint64_t sub_24F39E798()
{
  result = qword_27F241318;
  if (!qword_27F241318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241318);
  }

  return result;
}

unint64_t sub_24F39E7F0()
{
  result = qword_27F241320;
  if (!qword_27F241320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241320);
  }

  return result;
}

uint64_t sub_24F39E844(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA74810 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657469766E69 && a2 == 0xEA00000000006564 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA74830 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA74850 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F39EB00@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &Seconds - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &Seconds - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &Seconds - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v16 = type metadata accessor for GSKVideo(0);
  sub_24E60169C(v3 + *(v16 + 36) + v15, v10, &qword_27F21EB88, &unk_24F95FAF0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
    v18 = v14;
    if (!v17)
    {
      (*(v12 + 8))(v14, v11);
      goto LABEL_15;
    }

    v19 = v11;
    if (a1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 10;
    }

    if (a2)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    v22 = v17;
    v23 = [v22 currentItem];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 asset];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140, &qword_24F9CCED0);
      sub_24F91FDE8();
      sub_24F92C1B8();

      if (!v68)
      {
        [v24 duration];
        Seconds = CMTimeGetSeconds(&time);
        [v24 currentTime];
        v29 = CMTimeGetSeconds(&time);

        v26 = 0;
        v62 = *&v29;
LABEL_17:
        v30 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
        v31 = sub_24F928688();
        v32 = MEMORY[0x277D837D0];
        v68 = MEMORY[0x277D837D0];
        time.value = 0x616964656DLL;
        *&time.timescale = 0xE500000000000000;
        sub_24E612B0C(&time, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v31;
        sub_24E81C1D4(v66, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
        v34 = v69;
        v68 = v32;
        time.value = 1886352499;
        *&time.timescale = 0xE400000000000000;
        sub_24E612B0C(&time, v66);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v34;
        sub_24E81C1D4(v66, 0x79546E6F69746361, 0xEA00000000006570, v35);
        v36 = v69;
        LOBYTE(v66[0]) = v21;
        v37 = MediaMetricsEvent.ActionDetails.rawValue.getter();
        v68 = v32;
        time.value = v37;
        *&time.timescale = v38;
        sub_24E612B0C(&time, v66);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v65 = v36;
        sub_24E81C1D4(v66, 0x65446E6F69746361, 0xED0000736C696174, v39);
        v69 = v65;
        sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
        sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
        v40 = v63;
        sub_24E60169C(v22 + v30, v63, &qword_27F228530, &unk_24F93C6E0);
        v41 = sub_24F91F4A8();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v40, 1, v41) == 1)
        {
          sub_24E601704(v40, &qword_27F228530, &unk_24F93C6E0);
          sub_24E98EF1C(7107189, 0xE300000000000000, &time);
          sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
        }

        else
        {
          v43 = sub_24F91F398();
          v68 = v32;
          time.value = v43;
          *&time.timescale = v44;
          (*(v42 + 8))(v40, v41);
          sub_24E612B0C(&time, v66);
          v45 = v69;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v65 = v45;
          sub_24E81C1D4(v66, 7107189, 0xE300000000000000, v46);
          v69 = v65;
        }

        v47 = v22;
        v11 = v19;
        if ((v26 & 1) == 0)
        {
          v48 = sub_24E99058C(Seconds, 0);
          if (v48)
          {
            v49 = v48;
            v68 = sub_24E9421D0();
            time.value = v49;
            sub_24E612B0C(&time, v66);
            v50 = v69;
            v51 = swift_isUniquelyReferenced_nonNull_native();
            v65 = v50;
            sub_24E81C1D4(v66, 0x6E6F697461727564, 0xE800000000000000, v51);
            v69 = v65;
          }

          else
          {
            sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
            sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
          }

          v52 = sub_24E99058C(v62, 0);
          if (v52)
          {
            v53 = v52;
            v68 = sub_24E9421D0();
            time.value = v53;
            sub_24E612B0C(&time, v66);
            v54 = v69;
            v55 = swift_isUniquelyReferenced_nonNull_native();
            v65 = v54;
            sub_24E81C1D4(v66, 0x6E6F697469736F70, 0xE800000000000000, v55);
            v69 = v65;
          }

          else
          {
            sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
            sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
          }
        }

        v56 = v69;
        sub_24F928648();
        sub_24F928638();
        if (*(v56 + 16))
        {
          v57 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
          if (v58)
          {
            sub_24E643A9C(*(v56 + 56) + 32 * v57, &time);
            if (swift_dynamicCast())
            {
              v59 = HIBYTE(*(&v66[0] + 1)) & 0xFLL;
              if ((*(&v66[0] + 1) & 0x2000000000000000) == 0)
              {
                v59 = *&v66[0] & 0xFFFFFFFFFFFFLL;
              }

              if (v59)
              {
                v28 = v64;
LABEL_36:
                sub_24F928658();

                (*(v12 + 8))(v18, v19);
                v27 = 0;
                return (*(v12 + 56))(v28, v27, 1, v11);
              }
            }
          }
        }

        v28 = v64;
        goto LABEL_36;
      }

      sub_24F146A58(time.value, *&time.timescale, time.epoch, v68);
    }

    Seconds = 0;
    v62 = 0;
    v26 = 1;
    goto LABEL_17;
  }

  sub_24E601704(v10, &qword_27F21EB88, &unk_24F95FAF0);
LABEL_15:
  v27 = 1;
  v28 = v64;
  return (*(v12 + 56))(v28, v27, 1, v11);
}

uint64_t sub_24F39F378@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_24F928698();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v15 = type metadata accessor for GSKVideo(0);
  sub_24E60169C(v2 + *(v15 + 36) + v14, v9, &qword_27F21EB88, &unk_24F95FAF0);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
    if (!v16)
    {
      (*(v11 + 8))(v13, v10);
      goto LABEL_9;
    }

    v56 = v16;
    v17 = [v56 currentItem];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 asset];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140, &qword_24F9CCED0);
      sub_24F91FDE8();
      sub_24F92C1B8();

      if (!v61)
      {
        [v18 duration];
        Seconds = CMTimeGetSeconds(&time);
        [v18 currentTime];
        v22 = CMTimeGetSeconds(&time);

        v55 = 0;
        v54 = *&v22;
LABEL_11:
        v23 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
        v24 = sub_24F928688();
        v25 = MEMORY[0x277D837D0];
        v61 = MEMORY[0x277D837D0];
        time.value = 0x616964656DLL;
        *&time.timescale = 0xE500000000000000;
        sub_24E612B0C(&time, v59);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v24;
        sub_24E81C1D4(v59, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
        v27 = v62;
        v61 = v25;
        time.value = 2036427888;
        *&time.timescale = 0xE400000000000000;
        sub_24E612B0C(&time, v59);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v27;
        sub_24E81C1D4(v59, 0x79546E6F69746361, 0xEA00000000006570, v28);
        v29 = v58;
        v62 = v58;
        if (a1)
        {
          sub_24E98EF1C(0x65446E6F69746361, 0xED0000736C696174, &time);
          sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
        }

        else
        {
          v61 = v25;
          time.value = 0x79616C706F747561;
          *&time.timescale = 0xE800000000000000;
          sub_24E612B0C(&time, v59);
          v30 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v29;
          sub_24E81C1D4(v59, 0x65446E6F69746361, 0xED0000736C696174, v30);
          v62 = v58;
        }

        sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
        sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
        v31 = &v56[v23];
        v32 = v56;
        sub_24E60169C(v31, v6, &qword_27F228530, &unk_24F93C6E0);
        v33 = sub_24F91F4A8();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v6, 1, v33) == 1)
        {
          sub_24E601704(v6, &qword_27F228530, &unk_24F93C6E0);
          sub_24E98EF1C(7107189, 0xE300000000000000, &time);
          sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
          if (v55)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v35 = sub_24F91F398();
          v61 = v25;
          time.value = v35;
          *&time.timescale = v36;
          (*(v34 + 8))(v6, v33);
          sub_24E612B0C(&time, v59);
          v37 = v62;
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v37;
          sub_24E81C1D4(v59, 7107189, 0xE300000000000000, v38);
          v62 = v58;
          if (v55)
          {
            goto LABEL_24;
          }
        }

        v39 = sub_24E99058C(Seconds, 0);
        if (v39)
        {
          v40 = v39;
          v61 = sub_24E9421D0();
          time.value = v40;
          sub_24E612B0C(&time, v59);
          v41 = v62;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v41;
          sub_24E81C1D4(v59, 0x6E6F697461727564, 0xE800000000000000, v42);
          v62 = v58;
        }

        else
        {
          sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
          sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
        }

        v43 = sub_24E99058C(v54, 0);
        if (v43)
        {
          v44 = v43;
          v61 = sub_24E9421D0();
          time.value = v44;
          sub_24E612B0C(&time, v59);
          v45 = v62;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v45;
          sub_24E81C1D4(v59, 0x6E6F697469736F70, 0xE800000000000000, v46);
          v62 = v58;
        }

        else
        {
          sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
          sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
        }

LABEL_24:
        v47 = v62;
        sub_24F928648();
        sub_24F928638();
        if (*(v47 + 16))
        {
          v48 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
          if (v49)
          {
            sub_24E643A9C(*(v47 + 56) + 32 * v48, &time);
            if (swift_dynamicCast())
            {
              v50 = HIBYTE(*(&v59[0] + 1)) & 0xFLL;
              if ((*(&v59[0] + 1) & 0x2000000000000000) == 0)
              {
                v50 = *&v59[0] & 0xFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                v21 = v57;
LABEL_33:
                sub_24F928658();

                (*(v11 + 8))(v13, v10);
                v20 = 0;
                return (*(v11 + 56))(v21, v20, 1, v10);
              }
            }
          }
        }

        v21 = v57;
        goto LABEL_33;
      }

      sub_24F146A58(time.value, *&time.timescale, time.epoch, v61);
    }

    Seconds = 0;
    v54 = 0;
    v55 = 1;
    goto LABEL_11;
  }

  sub_24E601704(v9, &qword_27F21EB88, &unk_24F95FAF0);
LABEL_9:
  v20 = 1;
  v21 = v57;
  return (*(v11 + 56))(v21, v20, 1, v10);
}

uint64_t sub_24F39FC20@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_24F928698();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v14 = type metadata accessor for GSKVideo(0);
  sub_24E60169C(v1 + *(v14 + 36) + v13, v8, &qword_27F21EB88, &unk_24F95FAF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F21EB88, &unk_24F95FAF0);
LABEL_9:
    v20 = 1;
    return (*(v10 + 56))(a1, v20, 1, v9);
  }

  (*(v10 + 32))(v12, v8, v9);
  v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v15)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_9;
  }

  v52 = v15;
  v16 = [v52 currentItem];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140, &qword_24F9CCED0);
  sub_24F91FDE8();
  sub_24F92C1B8();

  if (v56)
  {
    sub_24F146A58(time.value, *&time.timescale, time.epoch, v56);

LABEL_7:
    Seconds = 0;
    v51 = 0;
    v19 = 1;
    goto LABEL_11;
  }

  [v17 duration];
  Seconds = CMTimeGetSeconds(&time);
  [v17 currentTime];
  v21 = CMTimeGetSeconds(&time);

  v19 = 0;
  v51 = *&v21;
LABEL_11:
  v22 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v23 = sub_24F928688();
  v24 = MEMORY[0x277D837D0];
  v56 = MEMORY[0x277D837D0];
  time.value = 0x616964656DLL;
  *&time.timescale = 0xE500000000000000;
  sub_24E612B0C(&time, v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v23;
  sub_24E81C1D4(v54, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v26 = v57;
  v56 = v24;
  time.value = 1801807219;
  *&time.timescale = 0xE400000000000000;
  sub_24E612B0C(&time, v54);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v26;
  sub_24E81C1D4(v54, 0x79546E6F69746361, 0xEA00000000006570, v27);
  v28 = v57;
  v56 = v24;
  time.value = 0x726174736F747561;
  *&time.timescale = 0xE900000000000074;
  sub_24E612B0C(&time, v54);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v28;
  sub_24E81C1D4(v54, 0x65446E6F69746361, 0xED0000736C696174, v29);
  v57 = v53;
  sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
  sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
  sub_24E60169C(v52 + v22, v5, &qword_27F228530, &unk_24F93C6E0);
  v30 = sub_24F91F4A8();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v5, 1, v30) != 1)
  {
    v32 = sub_24F91F398();
    v56 = v24;
    time.value = v32;
    *&time.timescale = v33;
    (*(v31 + 8))(v5, v30);
    sub_24E612B0C(&time, v54);
    v34 = v57;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v34;
    sub_24E81C1D4(v54, 7107189, 0xE300000000000000, v35);
    v57 = v53;
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_15:
    v36 = sub_24E99058C(Seconds, 0);
    if (v36)
    {
      v37 = v36;
      v56 = sub_24E9421D0();
      time.value = v37;
      sub_24E612B0C(&time, v54);
      v38 = v57;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v38;
      sub_24E81C1D4(v54, 0x6E6F697461727564, 0xE800000000000000, v39);
      v57 = v53;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    }

    v40 = sub_24E99058C(v51, 0);
    if (v40)
    {
      v41 = v40;
      v56 = sub_24E9421D0();
      time.value = v41;
      sub_24E612B0C(&time, v54);
      v42 = v57;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v42;
      sub_24E81C1D4(v54, 0x6E6F697469736F70, 0xE800000000000000, v43);
      v57 = v53;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
    }

    goto LABEL_21;
  }

  sub_24E601704(v5, &qword_27F228530, &unk_24F93C6E0);
  sub_24E98EF1C(7107189, 0xE300000000000000, &time);
  sub_24E601704(&time, &qword_27F2129B0, &unk_24F945320);
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_21:
  v44 = v57;
  sub_24F928648();
  sub_24F928638();
  if (*(v44 + 16))
  {
    v45 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v46)
    {
      sub_24E643A9C(*(v44 + 56) + 32 * v45, &time);
      if (swift_dynamicCast())
      {
        v47 = HIBYTE(*(&v54[0] + 1)) & 0xFLL;
        if ((*(&v54[0] + 1) & 0x2000000000000000) == 0)
        {
          v47 = *&v54[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v47)
        {
        }
      }
    }
  }

  sub_24F928658();

  (*(v10 + 8))(v12, v9);
  v20 = 0;
  return (*(v10 + 56))(a1, v20, 1, v9);
}

uint64_t sub_24F3A0470(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v63 - v6;
  v8 = sub_24F929158();
  v70 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_24F928698();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v66 = *a1;
  v67 = *a2;
  v19 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v20 = type metadata accessor for GSKVideo(0);
  v21 = v2;
  sub_24E60169C(v2 + *(v20 + 40) + v19, v12, &qword_27F21EB88, &unk_24F95FAF0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_24E601704(v12, &qword_27F21EB88, &unk_24F95FAF0);
  }

  (*(v14 + 32))(v18, v12, v13);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_metricsPipeline, v7, &qword_27F21C570, "Ю ");
  v23 = v70;
  if ((*(v70 + 48))(v7, 1, v8) == 1)
  {
    (*(v14 + 8))(v18, v13);
    return sub_24E601704(v7, &qword_27F21C570, "Ю ");
  }

  v24 = v69;
  (*(v23 + 32))(v69, v7, v8);
  v25 = *(v21 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v25)
  {
    (*(v23 + 8))(v24, v8);
    return (*(v14 + 8))(v18, v13);
  }

  v26 = v18;
  v65 = v14;
  v64 = v13;
  v27 = v25;
  v28 = [v27 currentItem];
  if (!v28)
  {
    goto LABEL_9;
  }

  v29 = v28;
  v30 = [v28 asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140, &qword_24F9CCED0);
  sub_24F91FDE8();
  sub_24F92C1B8();

  if (v74)
  {
    sub_24F146A58(time.value, *&time.timescale, time.epoch, v74);

LABEL_9:
    v31 = 0;
    v32 = 1;
    goto LABEL_12;
  }

  [v29 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v32 = 0;
  v31 = *&Seconds;
LABEL_12:
  v34 = sub_24F928688();
  v35 = MEMORY[0x277D837D0];
  v74 = MEMORY[0x277D837D0];
  v36 = 0xE500000000000000;
  time.value = 0x6B63696C63;
  *&time.timescale = 0xE500000000000000;
  sub_24E612B0C(&time, v72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v34;
  sub_24E81C1D4(v72, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v38 = v71;
  v74 = v35;
  time.value = 0x6E6F74747562;
  *&time.timescale = 0xE600000000000000;
  sub_24E612B0C(&time, v72);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v38;
  sub_24E81C1D4(v72, 0x7954746567726174, 0xEA00000000006570, v39);
  v40 = v71;
  if (v66 <= 1)
  {
    if (v66)
    {
      v41 = 0x6573756170;
    }

    else
    {
      v36 = 0xE400000000000000;
      v41 = 2036427888;
    }
  }

  else if (v66 == 2)
  {
    v36 = 0xE400000000000000;
    v41 = 1702131053;
  }

  else if (v66 == 3)
  {
    v36 = 0xEA00000000006E65;
    v41 = 0x657263736C6C7566;
  }

  else
  {
    v36 = 0xE600000000000000;
    v41 = 0x656E696C6E69;
  }

  v74 = v35;
  time.value = v41;
  *&time.timescale = v36;
  sub_24E612B0C(&time, v72);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v40;
  sub_24E81C1D4(v72, 0x6449746567726174, 0xE800000000000000, v42);
  v43 = v71;
  if (v67 > 2)
  {
    if (v67 == 3)
    {
      v44 = 0xE600000000000000;
      v45 = 0x6574756D6E75;
    }

    else if (v67 == 4)
    {
      v44 = 0xEF6E65657263736CLL;
      v45 = 0x6C75467265746E65;
    }

    else
    {
      v44 = 0xEE006E6565726373;
      v45 = 0x6C6C754674697865;
    }
  }

  else if (v67)
  {
    if (v67 == 1)
    {
      v44 = 0xE500000000000000;
      v45 = 0x6573756170;
    }

    else
    {
      v44 = 0xE400000000000000;
      v45 = 1702131053;
    }
  }

  else
  {
    v44 = 0xE400000000000000;
    v45 = 2036427888;
  }

  v74 = v35;
  time.value = v45;
  *&time.timescale = v44;
  sub_24E612B0C(&time, v72);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v43;
  sub_24E81C1D4(v72, 0x79546E6F69746361, 0xEA00000000006570, v46);
  v47 = v71;
  v74 = v35;
  time.value = 0x656E696C6E69;
  *&time.timescale = 0xE600000000000000;
  sub_24E612B0C(&time, v72);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v47;
  sub_24E81C1D4(v72, 0x6F436E6F69746361, 0xED0000747865746ELL, v48);
  v49 = v71;
  if ((v32 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223198, &qword_24F96D8B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x6E6F697469736F70;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = sub_24E99058C(v31, 0);
    v51 = sub_24E609EA4(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F2231A0, &qword_24F96D8C0);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231A8, &qword_24F96D8C8);
    time.value = v51;
    sub_24E612B0C(&time, v72);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v49;
    sub_24E81C1D4(v72, 0x65446E6F69746361, 0xED0000736C696174, v52);
    v49 = v71;
  }

  v53 = v8;
  v54 = v64;
  sub_24F928648();
  sub_24F928638();
  v55 = v65;
  if (!*(v49 + 16))
  {
    goto LABEL_42;
  }

  v56 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
  if ((v57 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_24E643A9C(*(v49 + 56) + 32 * v56, &time);
  if (!swift_dynamicCast())
  {
    goto LABEL_42;
  }

  v58 = HIBYTE(*(&v72[0] + 1)) & 0xFLL;
  if ((*(&v72[0] + 1) & 0x2000000000000000) == 0)
  {
    v58 = *&v72[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {

LABEL_42:
    v59 = v68;
    goto LABEL_43;
  }

  v59 = v68;
LABEL_43:
  sub_24F928658();
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v60 = sub_24F929AB8();
  __swift_project_value_buffer(v60, qword_27F22E3B8);
  v61 = v69;
  sub_24F929138();

  v62 = *(v55 + 8);
  v62(v59, v54);
  (*(v70 + 8))(v61, v53);
  return (v62)(v26, v54);
}

void sub_24F3A0E9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24E69A5C4(0, qword_27F241338, 0x277D0C070);
  v5 = sub_24F92B5A8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24F3A0F4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, &qword_27F241328, 0x277D0C118);
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t ChallengeableLeaderboardsDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E67D094;

  return sub_24F3A2BE0(a1);
}

void sub_24F3A109C(uint64_t a1, void *a2, void *a3, int a4)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() proxyForLocalPlayer];
  v20 = [v12 gameStatService];

  v13 = [a2 gameDescriptor];
  v14 = [a3 internal];
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = v15 + v9;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, v11, v7);
  *(v17 + v16) = v21;
  *(v17 + (v16 & 0xFFFFFFFFFFFFFFF8) + 8) = a2;
  aBlock[4] = sub_24F3A381C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F3A0F4C;
  aBlock[3] = &block_descriptor_146;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  [v20 getLeaderboardsForGameDescriptor:v13 player:v14 leaderboardIDs:0 setIdentifier:0 handler:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

double sub_24F3A1318(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v23 - v15;
  if (a2)
  {
    v23[1] = a2;
    v17 = a2;
    sub_24F92B788();
  }

  else
  {
    v19 = sub_24F92B858();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    (*(v11 + 16))(v13, a3, v10);
    v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = a1;
    *(v21 + 40) = a4 & 1;
    *(v21 + 48) = a5;
    (*(v11 + 32))(v21 + v20, v13, v10);

    v22 = a5;
    sub_24EA998B8(0, 0, v16, &unk_24F9EDE80, v21);
  }

  return result;
}

uint64_t sub_24F3A1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 144) = a5;
  *(v7 + 48) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  *(v7 + 72) = swift_task_alloc();
  v8 = type metadata accessor for Leaderboard(0);
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F3A1668, 0, 0);
}

uint64_t sub_24F3A1668()
{
  v62 = v0;
  v1 = *(v0 + 6);
  if (!v1)
  {
    v2 = 0;
    v3 = 0;
    goto LABEL_19;
  }

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = 0xE000000000000000;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_19:
    if (qword_27F2113B8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

  v2 = sub_24F92C738();
  v3 = 0xE000000000000000;
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_4:
  v4 = 0;
  v5 = *(v0 + 6);
  v57 = v5 & 0xFFFFFFFFFFFFFF8;
  v59 = v5 & 0xC000000000000001;
  v0 = "board(bundleID:)";
  while (1)
  {
    if (v59)
    {
      v6 = MEMORY[0x253052270](v4, v1);
    }

    else
    {
      if (v4 >= *(v57 + 16))
      {
        goto LABEL_56;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v3 = v6;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_24F92C888();

    v60 = 540689481;
    v61 = 0xE400000000000000;
    v8 = [v3 baseLeaderboardID];
    v9 = sub_24F92B0D8();
    v11 = v10;

    MEMORY[0x253050C20](v9, v11);

    MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA748D0);
    v12 = [v3 supportsChallenges];
    v13 = v12 == 0;
    if (v12)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    MEMORY[0x253050C20](v14, v15);

    MEMORY[0x253050C20](10, 0xE100000000000000);
    MEMORY[0x253050C20](v60, v61);

    ++v4;
    if (v7 == v2)
    {
      v2 = 0;
      v3 = 0xE000000000000000;
      v0 = v56;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_20:
  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E778);

  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v60 = v20;
    *v19 = 136315138;
    if (v3)
    {
      v21 = v2;
    }

    else
    {
      v21 = 0x656461654C206F4ELL;
    }

    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v2 = 0xEE006472616F6272;
    }

    v22 = sub_24E7620D4(v21, v2, &v60);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_24E5DD000, v17, v18, "ChallengeableLeaderboardsDataIntentImplementation loaded leaderbaords: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2530542D0](v20, -1, -1);
    MEMORY[0x2530542D0](v19, -1, -1);
  }

  else
  {
  }

  if (v0[144] == 1)
  {
    v23 = [*(v0 + 7) bundleIdentifier];
    v24 = sub_24F92B0D8();
    v26 = v25;

    *(v0 + 15) = v26;
    v27 = swift_task_alloc();
    *(v0 + 16) = v27;
    *(v27 + 16) = v24;
    *(v27 + 24) = v26;
    v28 = swift_task_alloc();
    *(v0 + 17) = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
    *v28 = v0;
    v28[1] = sub_24F3A1DBC;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000020, 0x800000024FA748A0, sub_24F3A3B48, v27, v29);
  }

  v3 = *(v0 + 6);
  if (v3)
  {
    v30 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v31 = sub_24F92C738();
      if (v31)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_36:
        v32 = 0;
        v33 = *(v0 + 11);
        v58 = *(v0 + 10);
        v34 = (v33 + 56);
        v54 = v33;
        v55 = (v33 + 48);
        v35 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x253052270](v32, v3);
          }

          else
          {
            if (v32 >= *(v30 + 16))
            {
              goto LABEL_58;
            }

            v40 = *(v3 + 8 * v32 + 32);
          }

          v41 = v40;
          v2 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_57;
          }

          v42 = v31;
          v43 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
          if (v43)
          {
            v44 = *(v0 + 12);
            sub_24F6BA118(v43, v44);

            v45 = *(v0 + 12);
            if (*(v44 + *(v58 + 36)))
            {
              sub_24E90FDA8(v45, *(v0 + 9));
              v46 = 0;
            }

            else
            {
              sub_24F3A3AEC(v45);
              v46 = 1;
            }

            v48 = *(v0 + 9);
            v47 = *(v0 + 10);
            (*v34)(v48, v46, 1, v47);
            if ((*v55)(v48, 1, v47) != 1)
            {
              sub_24E90FDA8(*(v0 + 9), *(v0 + 13));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = sub_24E618218(0, v35[2] + 1, 1, v35);
              }

              v50 = v35[2];
              v49 = v35[3];
              if (v50 >= v49 >> 1)
              {
                v35 = sub_24E618218((v49 > 1), v50 + 1, 1, v35);
              }

              v51 = *(v0 + 13);
              v35[2] = v50 + 1;
              sub_24E90FDA8(v51, v35 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v50);
              goto LABEL_39;
            }
          }

          else
          {
            v36 = *(v0 + 10);
            v37 = v30;
            v38 = *(v56 + 72);

            v39 = v38;
            v30 = v37;
            v0 = v56;
            (*v34)(v39, 1, 1, v36);
          }

          sub_24E601704(*(v0 + 9), &qword_27F212890, &qword_24F939670);
LABEL_39:
          v31 = v42;
          ++v32;
          if (v2 == v42)
          {
            goto LABEL_64;
          }
        }
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_64:
  *(v0 + 4) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  sub_24F92B798();

  v52 = *(v0 + 1);

  return v52();
}

uint64_t sub_24F3A1DBC()
{

  if (v0)
  {

    v1 = sub_24F3A2450;
  }

  else
  {

    v1 = sub_24F3A1F28;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F3A1F28()
{
  v1 = v0[3];
  v2 = v0[6];
  v48 = v2;
  if (!v1)
  {
    if (!v2)
    {
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  if (!v2)
  {

    goto LABEL_55;
  }

  v3 = v0[2];
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_30:

    goto LABEL_31;
  }

LABEL_29:
  v4 = sub_24F92C738();
  if (!v4)
  {
    goto LABEL_30;
  }

LABEL_5:
  v5 = 0;
  v6 = v0[6];
  v49 = v6 & 0xFFFFFFFFFFFFFF8;
  v51 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v51)
    {
      v7 = MEMORY[0x253052270](v5, v2);
    }

    else
    {
      if (v5 >= *(v49 + 16))
      {
        goto LABEL_28;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = [v7 baseLeaderboardID];
    v11 = sub_24F92B0D8();
    v13 = v12;

    if (v11 == v3 && v1 == v13)
    {
      break;
    }

    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_22;
    }

    ++v5;
    v2 = v48;
    if (v9 == v4)
    {
      goto LABEL_30;
    }
  }

LABEL_22:

  v16 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
  v2 = v48;
  if (v16)
  {
    v17 = v0[14];
    v18 = v0[10];
    v19 = v16;
    sub_24F6BA118(v19, v17);
    v20 = *(v17 + *(v18 + 36));
    v21 = v0[14];
    if (v20)
    {
      v22 = v0[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139E8, &qword_24F93B5A0);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24F93DE60;
      sub_24E7E048C(v21, v24 + v23);
      v0[5] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
      sub_24F92B798();

      sub_24F3A3AEC(v21);
      goto LABEL_57;
    }

    sub_24F3A3AEC(v0[14]);
  }

  else
  {
  }

LABEL_31:
  if (v2 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v26 = 0;
    v46 = v0[11];
    v47 = v0[10];
    v50 = v2 & 0xFFFFFFFFFFFFFF8;
    v52 = v2 & 0xC000000000000001;
    v27 = (v46 + 56);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v52)
      {
        v32 = MEMORY[0x253052270](v26, v2);
      }

      else
      {
        if (v26 >= *(v50 + 16))
        {
          goto LABEL_53;
        }

        v32 = *(v2 + 8 * v26 + 32);
      }

      v33 = v32;
      v34 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v35 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
      if (v35)
      {
        v36 = v0[12];
        sub_24F6BA118(v35, v36);

        v37 = v0[12];
        if (*(v36 + *(v47 + 36)))
        {
          sub_24E90FDA8(v37, v0[9]);
          v38 = 0;
        }

        else
        {
          sub_24F3A3AEC(v37);
          v38 = 1;
        }

        v40 = v0[9];
        v39 = v0[10];
        (*v27)(v40, v38, 1, v39);
        if ((*(v46 + 48))(v40, 1, v39) != 1)
        {
          sub_24E90FDA8(v0[9], v0[13]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_24E618218(0, v28[2] + 1, 1, v28);
          }

          v42 = v28[2];
          v41 = v28[3];
          if (v42 >= v41 >> 1)
          {
            v28 = sub_24E618218((v41 > 1), v42 + 1, 1, v28);
          }

          v43 = v0[13];
          v28[2] = v42 + 1;
          sub_24E90FDA8(v43, v28 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v42);
          goto LABEL_36;
        }
      }

      else
      {
        v30 = v0[9];
        v29 = v0[10];

        v31 = v30;
        v2 = v48;
        (*v27)(v31, 1, 1, v29);
      }

      sub_24E601704(v0[9], &qword_27F212890, &qword_24F939670);
LABEL_36:
      ++v26;
      if (v34 == i)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_55:
  v28 = MEMORY[0x277D84F90];
LABEL_56:
  v0[4] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  sub_24F92B798();
LABEL_57:

  v44 = v0[1];

  return v44();
}

uint64_t sub_24F3A2450()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v4 = 0;
      v5 = v0[11];
      v6 = v1 & 0xC000000000000001;
      v34 = (v5 + 56);
      v30 = v5;
      v31 = (v5 + 48);
      v32 = v0[10];
      v7 = MEMORY[0x277D84F90];
      v8 = 0x277D0C000uLL;
      while (1)
      {
        if (v6)
        {
          v17 = MEMORY[0x253052270](v4, v1);
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_24;
          }

          v17 = *(v1 + 8 * v4 + 32);
        }

        v18 = v17;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v35 = v4 + 1;
        v19 = [objc_allocWithZone(*(v8 + 160)) initWithInternalRepresentation_];
        if (v19)
        {
          v20 = v0[12];
          sub_24F6BA118(v19, v20);

          v21 = v0[12];
          if (*(v20 + *(v32 + 36)))
          {
            sub_24E90FDA8(v21, v0[9]);
            v22 = 0;
          }

          else
          {
            sub_24F3A3AEC(v21);
            v22 = 1;
          }

          v24 = v0[9];
          v23 = v0[10];
          (*v34)(v24, v22, 1, v23);
          if ((*v31)(v24, 1, v23) != 1)
          {
            sub_24E90FDA8(v0[9], v0[13]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_24E618218(0, v7[2] + 1, 1, v7);
            }

            v26 = v7[2];
            v25 = v7[3];
            if (v26 >= v25 >> 1)
            {
              v7 = sub_24E618218((v25 > 1), v26 + 1, 1, v7);
            }

            v27 = v0[13];
            v7[2] = v26 + 1;
            sub_24E90FDA8(v27, v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26);
            goto LABEL_7;
          }
        }

        else
        {
          v33 = v0[10];
          v9 = v8;
          v10 = v6;
          v11 = v7;
          v12 = i;
          v13 = v1;
          v14 = v2;
          v15 = v0[9];

          v16 = v15;
          v2 = v14;
          v1 = v13;
          i = v12;
          v7 = v11;
          v6 = v10;
          v8 = v9;
          (*v34)(v16, 1, 1, v33);
        }

        sub_24E601704(v0[9], &qword_27F212890, &qword_24F939670);
LABEL_7:
        ++v4;
        if (v35 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_27:
  v0[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  sub_24F92B798();

  v28 = v0[1];

  return v28();
}

void sub_24F3A2788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330, &unk_24F9EDE90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 gameServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_24F92B588();

  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  aBlock[4] = sub_24F3A3BE4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F3A0E9C;
  aBlock[3] = &block_descriptor_23_0;
  v16 = _Block_copy(aBlock);

  [v11 getGameStatsForPlayer:0 bundleIDs:v13 handler:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

unint64_t sub_24F3A2A00(unint64_t result, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330, &unk_24F9EDE90);
    return sub_24F92B788();
  }

  if (result >> 62)
  {
    v6 = result;
    v7 = sub_24F92C738();
    result = v6;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330, &unk_24F9EDE90);
    return sub_24F92B798();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](0, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_8:
    v4 = v3;
    v5 = [v3 defaultLeaderboardIdentifier];

    sub_24F92B0D8();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F3A2B30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return sub_24F3A2BE0(a2);
}

uint64_t sub_24F3A2BE0(uint64_t a1)
{
  *(v1 + 40) = *a1;
  *(v1 + 48) = *(a1 + 8);
  *(v1 + 64) = *(a1 + 24);
  *(v1 + 168) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_24F3A2C1C, 0, 0);
}

uint64_t sub_24F3A2C1C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8, 0x277D0C170);
  *v4 = v0;
  v4[1] = sub_24F3A2D28;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24F3A2D28()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24F3A30B8;
  }

  else
  {

    v2 = sub_24F3A2E44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3A2E44()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v0[12] = v3;
  v4 = [v3 internal];
  v0[13] = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];

  v5 = swift_task_alloc();
  v0[14] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v7 = sub_24E69A5C4(0, &qword_27F21C808, 0x277D0C048);
  *v6 = v0;
  v6[1] = sub_24F3A2F9C;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v5, v7);
}

uint64_t sub_24F3A2F9C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24F3A3358;
  }

  else
  {

    v2 = sub_24F3A311C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3A30B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3A311C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 168);
  v3 = *(v0 + 24);
  *(v0 + 136) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B440, &qword_24F951190);
  *v5 = v0;
  v5[1] = sub_24F3A323C;

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD00000000000002CLL, 0x800000024FA74870, sub_24F3A3768, v4, v6);
}

uint64_t sub_24F3A323C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24F3A35A0;
  }

  else
  {

    v2 = sub_24F3A33C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3A3358()
{
  v1 = v0[13];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F3A33C8()
{
  v1 = *(v0 + 32);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  if (v5)
  {
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v8;

    *(v9 + 8) = 2048;
    *(v9 + 10) = *(v1 + 16);

    _os_log_impl(&dword_24E5DD000, v3, v4, "ChallengeableLeaderboardsDataIntentImplementation fetched, prefer default %{BOOL}d, %ld leaderboards", v9, 0x12u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_24F3A35A0()
{

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeableLeaderboardsDataIntentImplementation error fetching leaderboards: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[17];
  v13 = v0[12];
  v12 = v0[13];

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_24F3A3774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24F3A381C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_24F3A1318(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F3A38F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F3A39D0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808, &qword_24F9728F8) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F3A1550(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24F3A3AEC(uint64_t a1)
{
  v2 = type metadata accessor for Leaderboard(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F3A3B50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330, &unk_24F9EDE90);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_24F3A3BE4(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330, &unk_24F9EDE90);

  return sub_24F3A2A00(a1, a2);
}

uint64_t sub_24F3A3C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_24F3A3FC8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_24E70E058(v8);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
  }

  else
  {
    v24 = a2;
    sub_24F91F3E8();
    v17 = *(v10 + 8);
    v17(v8, v9);
    (*(v10 + 32))(v15, v12, v9);
    v18 = sub_24F91F4B8();
    v20 = v19;
    sub_24F91E9B8();
    swift_allocObject();
    sub_24F91E9A8();
    sub_24F3A4A40();
    sub_24F91E998();

    v21 = v25;
    v22 = v26;
    v23 = v27;
    if (v25 == a1 && v26 == v24 || (sub_24F92CE08() & 1) != 0)
    {
      v17(v15, v9);
      result = sub_24E627880(v18, v20);
      *a3 = v21;
      a3[1] = v22;
      a3[2] = v23;
    }

    else
    {
      sub_24F3A4148();
      sub_24E627880(v18, v20);
      sub_24EAD7A84(v21, v22);
      result = (v17)(v15, v9);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }
  }

  return result;
}

uint64_t sub_24F3A3FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:13 inDomains:1];

  v4 = sub_24F91F4A8();
  v5 = sub_24F92B5A8();

  if (*(v5 + 16))
  {
    v10 = *(v4 - 8);
    (*(v10 + 16))(a1, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v4);

    v6 = v10;
    v7 = 0;
  }

  else
  {

    v6 = *(v4 - 8);
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a1, v7, 1, v4);
}

uint64_t sub_24F3A4148()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18[-v1];
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  sub_24F3A3FC8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24E70E058(v2);
  }

  sub_24F91F3E8();
  v11 = *(v4 + 8);
  v11(v2, v3);
  (*(v4 + 32))(v9, v6, v3);
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_24F91F3B8();
  v19[0] = 0;
  v14 = [v12 removeItemAtURL:v13 error:v19];

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    v17 = sub_24F91F278();

    swift_willThrow();
  }

  return (v11)(v9, v3);
}

uint64_t sub_24F3A43CC(uint64_t *a1)
{
  v2 = sub_24F928AE8();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = *a1;
  v14 = a1[1];
  sub_24F3A3C78(*a1, v14, &v51);
  v15 = v52;
  v47 = v12;
  if (v52)
  {
    v16 = v53;
    v13 = v51;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
    v15 = v14;
  }

  v54 = v13;
  v55 = v15;
  v56 = v16;
  v18 = a1[3];
  v17 = a1[4];
  v19 = a1[2];
  v20 = *(v16 + 2);
  if (v20)
  {
    v21 = 0;
    v22 = v16 + 40;
    while (1)
    {
      v23 = *(v22 - 1) == v19 && *v22 == v18;
      if (v23 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      ++v21;
      v22 += 2;
      if (v20 == v21)
      {
        goto LABEL_14;
      }
    }

    sub_24EA0E6F4(v21);

    v16 = v56;
  }

LABEL_14:
  v24 = *(v16 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v24 >= *(v16 + 3) >> 1)
  {
    v16 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v24 + 1, 1, v16);
    v56 = v16;
  }

  sub_24EDAB2A8(0, 0, 1, v19, v18);

  v26 = sub_24E6B7D68(v17, v16);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if ((v31 & 1) == 0)
  {

LABEL_19:
    sub_24E6B8D5C(v26, v28, v30, v32);
    v34 = v33;

    v35 = v47;
    goto LABEL_26;
  }

  sub_24F92CEF8();
  swift_unknownObjectRetain_n();

  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x277D84F90];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v32 >> 1, v30))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v37 != (v32 >> 1) - v30)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v34 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v35 = v47;
  if (v34)
  {
    goto LABEL_27;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_26:
  swift_unknownObjectRelease();
LABEL_27:
  v56 = v34;
  v51 = v54;
  v52 = v55;
  v53 = v34;
  sub_24F3A3FC8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E70E058(v6);
    v38 = v50;
  }

  else
  {
    v39 = v46;
    sub_24F91F3E8();
    v40 = *(v8 + 8);
    v40(v6, v7);
    (*(v8 + 32))(v35, v39, v7);
    sub_24F91E9E8();
    swift_allocObject();
    sub_24F91E9D8();
    sub_24F3A49EC();
    v41 = sub_24F91E9C8();
    v43 = v42;

    sub_24F91F4F8();
    v38 = v50;
    v40(v35, v7);
    sub_24E627880(v41, v43);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v49 + 104))(v48, *MEMORY[0x277D21CA8], v38);
  v44 = sub_24F92A988();

  return v44;
}

unint64_t sub_24F3A497C()
{
  result = qword_27F216380;
  if (!qword_27F216380)
  {
    type metadata accessor for SaveRecentSearchAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216380);
  }

  return result;
}

unint64_t sub_24F3A49EC()
{
  result = qword_27F2413C0;
  if (!qword_27F2413C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2413C0);
  }

  return result;
}

unint64_t sub_24F3A4A40()
{
  result = qword_27F2413C8;
  if (!qword_27F2413C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2413C8);
  }

  return result;
}

uint64_t FlowAction.__allocating_init(id:actionMetrics:destination:presentation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v41 = a4;
  v40 = sub_24F91F6B8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = *a3;
  v44 = a1;
  sub_24E60169C(a1, v52, &qword_27F235830, &qword_24F93B8C0);
  v17 = sub_24F91F4A8();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v51[3] = &type metadata for FlowDestination;
  v51[0] = v16;
  v18 = *(v10 + 16);
  v43 = a2;
  v18(v12, a2, v9);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v20 = v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = (v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
  sub_24E60169C(v15, v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v22 = (v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v22 = 0;
  v22[1] = 0;
  v23 = v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v23 = xmmword_24F9406F0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 16) = 0;
  *(v23 + 40) = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v24 = (v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  v25 = v42;
  *v24 = v41;
  v24[1] = v25;
  sub_24E60169C(v52, v50, &qword_27F235830, &qword_24F93B8C0);
  v18((v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v12, v9);
  v26 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v27 = sub_24F929608();
  (*(*(v27 - 8) + 56))(v19 + v26, 1, 1, v27);
  v28 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v28 = 0u;
  v28[1] = 0u;
  v29 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v50, &v47, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v48 + 1))
  {
    v30 = v48;
    *v29 = v47;
    *(v29 + 16) = v30;
    *(v29 + 32) = v49;
  }

  else
  {
    v31 = v38;
    sub_24F91F6A8();
    v32 = sub_24F91F668();
    v34 = v33;
    (*(v39 + 8))(v31, v40);
    v45 = v32;
    v46 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v47, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v50, &qword_27F235830, &qword_24F93B8C0);
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;

  FlowAction.setPageData(_:)(v51);

  v35 = *(v10 + 8);
  v35(v43, v9);
  sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  v35(v12, v9);
  sub_24E601704(v15, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v51, &qword_27F2129B0, &unk_24F945320);
  return v19;
}

uint64_t sub_24F3A55A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_24E65864C(a2, v5);
}

void PagePresentationContext.PreviousPage.jsRepresentation(in:)(void *a1@<X8>)
{
  v1 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v1;
  *a1 = 0xD000000000000010;
  a1[1] = 0x800000024FA429D0;
}

uint64_t PagePresentationContext.PreviousPage.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24F92CB88();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24F3A56A4()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F3A5718()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F3A576C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

void sub_24F3A5890(void *a1@<X8>)
{
  v1 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v1;
  *a1 = 0xD000000000000010;
  a1[1] = 0x800000024FA429D0;
}

unint64_t PagePresentationContext.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  strcpy((inited + 32), "previousPage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2414C0, &qword_24F9EDF18);
  *(inited + 80) = sub_24F3A59C0();
  *(inited + 48) = v3;
  v5 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_24F3A59C0()
{
  result = qword_27F2414C8;
  if (!qword_27F2414C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2414C0, &qword_24F9EDF18);
    sub_24F3A5A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414C8);
  }

  return result;
}

unint64_t sub_24F3A5A44()
{
  result = qword_27F2414D0;
  if (!qword_27F2414D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414D0);
  }

  return result;
}

uint64_t sub_24F3A5AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73756F6976657270 && a2 == 0xEC00000065676150)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F3A5B44(uint64_t a1)
{
  v2 = sub_24F3A5FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3A5B80(uint64_t a1)
{
  v2 = sub_24F3A5FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PagePresentationContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2414D8, &qword_24F9EDF20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3A5FA0();
  sub_24F92D128();
  v10 = v7;
  sub_24F3A5FF4();
  sub_24F92CCF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PagePresentationContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2414F0, &qword_24F9EDF28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3A5FA0();
  sub_24F92D108();
  if (!v2)
  {
    sub_24F3A6048();
    sub_24F92CC18();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F3A5EA4@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  strcpy((inited + 32), "previousPage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2414C0, &qword_24F9EDF18);
  *(inited + 80) = sub_24F3A59C0();
  *(inited + 48) = v3;
  v5 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_24F3A5FA0()
{
  result = qword_27F2414E0;
  if (!qword_27F2414E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414E0);
  }

  return result;
}

unint64_t sub_24F3A5FF4()
{
  result = qword_27F2414E8;
  if (!qword_27F2414E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414E8);
  }

  return result;
}

unint64_t sub_24F3A6048()
{
  result = qword_27F2414F8;
  if (!qword_27F2414F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414F8);
  }

  return result;
}

unint64_t sub_24F3A60A0()
{
  result = qword_27F241500;
  if (!qword_27F241500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PagePresentationContext(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for PagePresentationContext(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t sub_24F3A622C()
{
  result = qword_27F241508;
  if (!qword_27F241508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241508);
  }

  return result;
}

unint64_t sub_24F3A6284()
{
  result = qword_27F241510;
  if (!qword_27F241510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241510);
  }

  return result;
}

unint64_t sub_24F3A62DC()
{
  result = qword_27F241518;
  if (!qword_27F241518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241518);
  }

  return result;
}

unint64_t sub_24F3A6330()
{
  result = qword_27F241520[0];
  if (!qword_27F241520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F241520);
  }

  return result;
}

uint64_t sub_24F3A6384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v13 = type metadata accessor for CardExtraLargeView(0, a4, a5, a6);
  (*(*(a4 - 8) + 32))(a7 + *(v13 + 44), a2, a4);
  v14 = *(v13 + 48);
  v15 = sub_24F923E98();
  (*(*(v15 - 8) + 32))(a7 + v14, a3, v15);
  return sub_24F3A659C(sub_24E8CA6B0, 0);
}

__n128 sub_24F3A64C8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_24F3A659C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for CardSafeArea(0);

  return sub_24F9233C8();
}

void sub_24F3A6620(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  v8 = a1[3];
  v9 = a1[4];
  v86 = a1[2];
  v7 = v86;
  type metadata accessor for CardExtraLargeView.TopAccessory(255, v86, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720, qword_24F9A8F70);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  v76 = v8;
  v77 = v9;
  type metadata accessor for CardExtraLargeView.Footer(255, v7, v8, v9);
  sub_24F924038();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  v85 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24F927018();
  v87 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v79 = v56 - v11;
  type metadata accessor for CardHeightViewModifier(255);
  v73 = v10;
  v12 = sub_24F924038();
  v88 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v83 = v56 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40, &qword_24F984790);
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  swift_getTupleTypeMetadata2();
  v80 = sub_24F927808();
  v81 = swift_getWitnessTable();
  sub_24F924E08();
  v75 = v12;
  v14 = sub_24F924038();
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v78 = v56 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040, &unk_24F940690);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0, &unk_24F967B30);
  v16 = sub_24F924038();
  v17 = swift_getWitnessTable();
  v72 = v17;
  v18 = sub_24F3AD224(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier, &unk_24FA033B0);
  v116 = v17;
  v117 = v18;
  v19 = swift_getWitnessTable();
  v74 = v19;
  v20 = swift_getWitnessTable();
  v114 = v19;
  v115 = v20;
  v21 = v14;
  v22 = swift_getWitnessTable();
  v23 = sub_24E6A4C1C();
  v24 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
  v112 = v22;
  v113 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_24E602068(&qword_27F217098, &qword_27F2170A0, &unk_24F967B30, &unk_24FA0D448);
  v110 = v25;
  v111 = v26;
  v27 = swift_getWitnessTable();
  v104 = v21;
  v105 = &type metadata for GameOverlayViewPredicate;
  v65 = v21;
  v106 = v16;
  v107 = v22;
  v64 = v22;
  v108 = v23;
  v109 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v67 = v56 - v28;
  v29 = sub_24F924038();
  v71 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v66 = v56 - v30;
  v104 = v21;
  v105 = &type metadata for GameOverlayViewPredicate;
  v106 = v16;
  v107 = v22;
  v108 = v23;
  v109 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeConformance2;
  v32 = sub_24E6BC1C8();
  v102 = OpaqueTypeConformance2;
  v103 = v32;
  v33 = swift_getWitnessTable();
  v104 = v29;
  v105 = v33;
  v56[1] = v29;
  v34 = v33;
  v56[3] = v33;
  v35 = swift_getOpaqueTypeMetadata2();
  v60 = v35;
  v68 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v56[4] = v56 - v36;
  v37 = type metadata accessor for CardSafeArea(255);
  v59 = v37;
  v104 = v29;
  v105 = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v58 = v38;
  v57 = sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  v104 = v35;
  v105 = v37;
  v106 = v38;
  v107 = v57;
  v61 = MEMORY[0x277CE0C50];
  v39 = swift_getOpaqueTypeMetadata2();
  v63 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v56[0] = v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v56[2] = v56 - v42;
  v43 = v86;
  v44 = v76;
  v98 = v86;
  v99 = v76;
  v45 = v77;
  v46 = v90;
  v100 = v77;
  v101 = v90;
  sub_24F9249A8();
  v47 = v79;
  sub_24F927008();
  v48 = *(v93 + 12);
  v85 = *(v93 + 11);
  v49 = v89;
  (*(v45 + 56))(v46 + v85, 4, v46 + v48, v44, v45);
  v50 = v91;
  sub_24E8D2DD8(v49, v91);
  sub_24F3AC968(v49, type metadata accessor for CardLayoutMetrics);
  v51 = v83;
  v52 = v73;
  sub_24F4E8DBC(v50, v73, v72, v83);
  sub_24F3AC968(v50, type metadata accessor for CardLayoutMetrics.CardHeight);
  (*(v87 + 8))(v47, v52);
  v94 = v43;
  v95 = v44;
  v96 = v45;
  v97 = v46;
  sub_24F927618();
  v53 = v78;
  v54 = v75;
  sub_24F926088();
  (*(v88 + 8))(v51, v54);
  v55 = v65;
  sub_24E739274(v65);
  (*(v82 + 8))(v53, v55);
  sub_24E739404();
}