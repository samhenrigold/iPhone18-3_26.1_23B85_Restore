uint64_t sub_29DF8C308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29DF8C320(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for OvulationConfirmationFailureUserData(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DF8C37C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29DF8C3D8(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v114 = a4;
  v144 = a3;
  v113 = a2;
  v108 = a1;
  v137 = *v4;
  v5 = sub_29E2C0514();
  v135 = *(v5 - 8);
  v136 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v109 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BD624();
  v142 = *(v7 - 8);
  v143 = v7;
  v131 = *(v142 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v130 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF8F124(0, &qword_2A1A5EA28, sub_29DF8F05C, v8);
  v11 = *(v10 - 8);
  v132 = v10;
  v133 = v11;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v127 = v96 - v13;
  sub_29DF8F104(0, v12);
  v140 = v14;
  v134 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v129 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for HKBiologicalSex;
  sub_29DF8EF0C(0, &unk_2A1A61E30, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8AF0]);
  v125 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v122 = v96 - v17;
  v18 = MEMORY[0x29EDB8AF0];
  sub_29DF8F404(0, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8AF0]);
  v124 = v19;
  v20 = MEMORY[0x2A1C7C4A8](v19);
  v119 = v96 - v21;
  sub_29DF8EE0C(0, v20);
  v126 = v22;
  v23 = MEMORY[0x2A1C7C4A8](v22);
  v120 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF8F1D0(0, &unk_2A1A5E3F0, MEMORY[0x29EDB8AF0], v23);
  v110 = v25;
  v111 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v107 = v96 - v26;
  sub_29DEBAF74(0);
  v121 = v27;
  MEMORY[0x2A1C7C4A8](v27);
  v106 = v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF8F404(0, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, v18);
  v102 = v29;
  v103 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v100 = v96 - v30;
  sub_29DEBB070(0);
  v104 = v31;
  v105 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v99 = v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB174(0);
  v117 = v33;
  MEMORY[0x2A1C7C4A8](v33);
  v101 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF8ECD0(0);
  v115 = v35;
  v116 = *(v35 - 8);
  v36 = MEMORY[0x2A1C7C4A8](v35);
  v112 = v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF8EC3C(0, v36);
  v139 = v38;
  v128 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v138 = v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_29E2BD564();
  v40 = *(v118 - 1);
  MEMORY[0x2A1C7C4A8](v118);
  v42 = v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_29E2BE194();
  v43 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97);
  v45 = v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_29E2BD594();
  v46 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v48 = v96 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96[1] = sub_29E2BD274();
  sub_29DF8EF0C(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v49 = sub_29E2BD234();
  v50 = *(v49 - 8);
  v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_29E2CAB20;
  v53 = v52 + v51;
  v54 = v141;
  (*(v50 + 104))(v53, *MEMORY[0x29EDC3790], v49);
  sub_29E110B7C(v45);
  sub_29E2BE184();
  (*(v43 + 8))(v45, v97);
  (*(v40 + 104))(v42, *MEMORY[0x29EDC3898], v118);
  sub_29E2BD574();
  (*(v46 + 32))(v54 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingTileGeneratorPipeline_domain, v48, v98);
  v55 = v113;
  *(v54 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingTileGeneratorPipeline_analysisChangeDetector) = v113;
  *(v54 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingTileGeneratorPipeline_onboardingChangeDetector) = v144;
  v56 = v114;
  *(v54 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingTileGeneratorPipeline_userCharacteristicsChangeDetector) = v114;
  v57 = v55;
  swift_beginAccess();
  v58 = MEMORY[0x29EDB8B00];
  sub_29DF8F404(0, &qword_2A1A5E3D0, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8B00]);
  v118 = v57;

  v59 = v56;
  v60 = v100;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DF8EF70(&qword_2A1A5E410, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, v61);
  v62 = v99;
  v63 = v102;
  sub_29E2C1304();
  (*(v103 + 8))(v60, v63);
  sub_29DF8EF0C(0, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
  sub_29DF8F454(&qword_2A1A5E810, sub_29DEBB070, MEMORY[0x29EDB8968]);
  v64 = v104;
  sub_29E2C12A4();
  (*(v105 + 8))(v62, v64);
  swift_beginAccess();
  sub_29DF8F1D0(0, &qword_2A1A5E3C0, MEMORY[0x29EDB8B00], v65);
  v66 = v107;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBAFFC();
  v67 = v110;
  sub_29E2C1284();
  (*(v111 + 8))(v66, v67);
  swift_beginAccess();
  sub_29DF8F404(0, &qword_2A1A61E28, &type metadata for UserCharacteristics.Age, v58);
  sub_29E2C11E4();
  swift_endAccess();
  swift_beginAccess();
  sub_29DF8EF0C(0, &qword_2A1A61E20, v123, MEMORY[0x29EDB8B00]);
  v123 = v59;
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DF8EF70(&qword_2A1A61E50, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, v68);
  sub_29DF8EFD4();
  sub_29E2C0E54();
  v69 = MEMORY[0x29EDB8908];
  sub_29DF8F454(&qword_2A1A5E998, sub_29DEBB174, MEMORY[0x29EDB8908]);
  sub_29DF8F454(&qword_2A1A5EB70, sub_29DEBAF74, MEMORY[0x29EDB88A0]);
  sub_29DF8F454(&unk_2A1A5EC68, sub_29DF8EE0C, MEMORY[0x29EDB8870]);
  v70 = v112;
  sub_29E2C0E84();
  sub_29E2BD5F4();
  v71 = v115;
  sub_29E2C0E64();
  (*(v116 + 8))(v70, v71);
  v72 = swift_allocObject();
  *(v72 + 16) = v137;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_29DF8F254;
  *(v73 + 24) = v72;
  sub_29DF8F05C(0);
  sub_29DF8F454(&qword_2A1A5E888, sub_29DF8EC3C, MEMORY[0x29EDB8958]);
  v74 = v127;
  sub_29E2C12A4();

  v75 = v142;
  v76 = v143;
  v77 = v130;
  v78 = v108;
  (*(v142 + 16))(v130, v108, v143);
  v79 = v75;
  v80 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v81 = swift_allocObject();
  (*(v79 + 32))(v81 + v80, v77, v76);
  v82 = swift_allocObject();
  *(v82 + 16) = sub_29DF8F308;
  *(v82 + 24) = v81;
  sub_29DEBACC0();
  v83 = v129;
  v84 = v132;
  sub_29E2C0F14();

  (*(v133 + 8))(v74, v84);
  sub_29DF8F454(&qword_2A1A5EA38, sub_29DF8F104, v69);
  v85 = v83;
  *(v54 + 16) = sub_29E2C1244();
  v86 = v109;
  sub_29E2C04B4();
  v87 = v86;
  v88 = sub_29E2C0504();
  v89 = sub_29E2C3A34();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v145 = v91;
    *v90 = 136446210;
    v92 = sub_29E2C4AE4();
    v94 = sub_29DFAA104(v92, v93, &v145);

    *(v90 + 4) = v94;
    _os_log_impl(&dword_29DE74000, v88, v89, "[%{public}s] Initializing", v90, 0xCu);
    sub_29DE93B3C(v91);
    MEMORY[0x29ED82140](v91, -1, -1);
    MEMORY[0x29ED82140](v90, -1, -1);
  }

  (*(v142 + 8))(v78, v143);
  (*(v135 + 8))(v87, v136);
  (*(v134 + 8))(v85, v140);
  (*(v128 + 8))(v138, v139);
  return v141;
}

id sub_29DF8D6C0(uint64_t a1, void *a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v59 = a1;
  v11 = sub_29E2C0514();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v54 - v15;
  v17 = sub_29E2BD6E4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x29EDC3910];
  v57 = *(v18 + 104);
  v58 = v23;
  v57(v21, v22, v19);
  v60 = a2;
  if (!a2)
  {
    v24 = 0;
    goto LABEL_5;
  }

  if (a3)
  {
    v24 = v60;
    v25 = v60;
LABEL_5:
    v27 = v58;
    v26 = v59;
    goto LABEL_17;
  }

  v28 = a4 - 56;
  if (a6 != 1 || (a5 & 1) != 0 || v28 < 0xFFFFFFFFFFFFFFD4)
  {
    if (a6 == 2 || (a5 & 1) == 0 && v28 <= 0xFFFFFFFFFFFFFFD3)
    {
      v43 = *(v18 + 8);
      v24 = v60;
      v44 = v60;
      v27 = v58;
      v43(v21, v58);
      (v57)(v21, *MEMORY[0x29EDC3900], v27);
      v26 = v59;
      goto LABEL_17;
    }

    v24 = v60;
    v46 = v60;
    sub_29E2C04B4();
    v47 = sub_29E2C0504();
    v48 = sub_29E2C3A34();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61[0] = v50;
      *v49 = 136446466;
      v51 = sub_29E2C4AE4();
      v53 = sub_29DFAA104(v51, v52, v61);

      *(v49 + 4) = v53;
      v24 = v60;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_29DFAA104(0xD000000000000055, 0x800000029E2F4FB0, v61);
      _os_log_impl(&dword_29DE74000, v47, v48, "[%{public}s).%{public}s] Some health profile information missing", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v50, -1, -1);
      MEMORY[0x29ED82140](v49, -1, -1);
    }

    (*(v55 + 8))(v13, v56);
    v27 = v58;
    (*(v18 + 8))(v21, v58);
    v41 = v59;
    v42 = MEMORY[0x29EDC3900];
  }

  else
  {
    v24 = v60;
    v29 = v60;
    sub_29E2C04B4();
    v30 = sub_29E2C0504();
    v31 = sub_29E2C3A34();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62 = v33;
      *v32 = 136446722;
      v34 = sub_29E2C4AE4();
      v36 = sub_29DFAA104(v34, v35, &v62);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_29DFAA104(0xD000000000000055, 0x800000029E2F4FB0, &v62);
      *(v32 + 22) = 2080;
      v61[0] = 0xD00000000000001BLL;
      v61[1] = 0x800000029E2F5010;
      v37 = sub_29E2C3464();
      v39 = sub_29DFAA104(v37, v38, &v62);

      *(v32 + 24) = v39;
      _os_log_impl(&dword_29DE74000, v30, v31, "[%{public}s).%{public}s] (shownWithHighPriority) %s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v33, -1, -1);
      v40 = v32;
      v24 = v60;
      MEMORY[0x29ED82140](v40, -1, -1);
    }

    (*(v55 + 8))(v16, v56);
    v27 = v58;
    (*(v18 + 8))(v21, v58);
    v41 = v59;
    v42 = MEMORY[0x29EDC3908];
  }

  (v57)(v21, *v42, v27);
  v26 = v41;
LABEL_17:
  (*(v18 + 32))(v26, v21, v27);
  return v24;
}

uint64_t sub_29DF8DC5C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v87 = a3;
  v76 = a2;
  v88 = a1;
  v90 = a4;
  sub_29DEBB5B4(0);
  v72 = v4;
  v71 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v70 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v80 = &v70 - v9;
  sub_29DEBB680(0);
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v77 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_29E2BD6E4();
  v85 = *(v95 - 8);
  MEMORY[0x2A1C7C4A8](v95);
  v93 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BD564();
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29E2BE194();
  v16 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BD594();
  v96 = *(v19 - 8);
  v97 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_29E2BD624();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v75 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x2A1C7C4A8](v25);
  v94 = v23;
  v27 = *(v23 + 16);
  v86 = &v70 - v28;
  v89 = v29;
  v74 = v27;
  v27(v26);
  v81 = sub_29E2BD274();
  sub_29DF8EF0C(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v30 = sub_29E2BD234();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29E2CAB20;
  v34 = v33 + v32;
  v35 = v93;
  (*(v31 + 104))(v34, *MEMORY[0x29EDC3790], v30);
  sub_29E110B7C(v18);
  sub_29E2BE184();
  (*(v16 + 8))(v18, v82);
  (*(v83 + 104))(v15, *MEMORY[0x29EDC3898], v84);
  v36 = v85;
  sub_29E2BD574();
  (*(v36 + 16))(v35, v87, v95);
  v37 = type metadata accessor for MenstrualCyclesOnboardingGenerator(0);
  v38 = v90;
  v90[3] = v37;
  v38[4] = sub_29DF8F454(&qword_2A1A62460, type metadata accessor for MenstrualCyclesOnboardingGenerator, &unk_29E2D583C);
  v39 = sub_29DEBB7E8(v38);
  v40 = *(v96 + 16);
  v41 = v39 + *(v37 + 20);
  v90 = v21;
  v40(v41, v21, v97);
  if (v88)
  {
    v42 = v88;
    v43 = v86;
    v88 = v42;
    v87 = sub_29DF9033C(v86, v42, v76 & 1, v35);
    v98[0] = v87;
    v44 = v75;
    v45 = v89;
    (v74)(v75, v43, v89);
    v46 = v94;
    v47 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v48 = (v24 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v46 + 32))(v49 + v47, v44, v45);
    v50 = (v49 + v48);
    *v50 = 0xD000000000000021;
    v50[1] = 0x800000029E2F4F80;
    sub_29DEBB750(0);
    sub_29DF8F404(0, &qword_2A1A61DD8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29DF8F454(&qword_2A1A61E90, sub_29DEBB750, MEMORY[0x29EDB8A00]);
    v51 = v77;
    sub_29E2C12A4();

    sub_29DF8F454(&qword_2A1A61F10, sub_29DEBB680, MEMORY[0x29EDB8908]);
    v52 = v79;
    v53 = sub_29E2C1274();
    (*(v78 + 8))(v51, v52);
    *v39 = v53;
    v54 = v80;
    sub_29E2C04B4();
    v55 = sub_29E2C0504();
    v56 = sub_29E2C3A34();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v98[0] = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_29DFAA104(0xD000000000000022, 0x800000029E2F4F50, v98);
      _os_log_impl(&dword_29DE74000, v55, v56, "[%{public}s] Initialized", v57, 0xCu);
      sub_29DE93B3C(v58);
      MEMORY[0x29ED82140](v58, -1, -1);
      MEMORY[0x29ED82140](v57, -1, -1);
    }

    (*(v36 + 8))(v93, v95);
    (*(v96 + 8))(v90, v97);
    (*(v94 + 8))(v43, v45);
  }

  else
  {
    v59 = v86;
    v60 = v94;
    v61 = v89;
    v98[0] = MEMORY[0x29EDCA190];
    sub_29DF8F404(0, &qword_2A1A61DD8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v62 = v70;
    sub_29E2C1164();
    sub_29DF8F454(&qword_2A1A5E518, sub_29DEBB5B4, MEMORY[0x29EDB8AB8]);
    v63 = v72;
    v64 = sub_29E2C1274();
    (*(v71 + 8))(v62, v63);
    *v39 = v64;
    v54 = v73;
    sub_29E2C04B4();
    v65 = sub_29E2C0504();
    v66 = sub_29E2C3A34();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v98[0] = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_29DFAA104(0xD000000000000022, 0x800000029E2F4F50, v98);
      _os_log_impl(&dword_29DE74000, v65, v66, "[%{public}s] Initialized with nil analysis, submitting no feed item changes", v67, 0xCu);
      sub_29DE93B3C(v68);
      MEMORY[0x29ED82140](v68, -1, -1);
      MEMORY[0x29ED82140](v67, -1, -1);
    }

    (*(v36 + 8))(v35, v95);
    (*(v96 + 8))(v90, v97);
    (*(v60 + 8))(v59, v61);
  }

  return (*(v91 + 8))(v54, v92);
}

void *sub_29DF8E818()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Deallocated", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingTileGeneratorPipeline_domain;
  v14 = sub_29E2BD594();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);

  return v1;
}

uint64_t sub_29DF8EA64()
{
  sub_29DF8E818();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MenstrualCyclesOnboardingTileGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A62350;
  if (!qword_2A1A62350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29DF8EB10(uint64_t a1)
{
  result = sub_29E2BD594();
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

uint64_t sub_29DF8EBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingTileGeneratorPipeline_domain;
  v5 = sub_29E2BD594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29DF8EC3C(uint64_t a1, __n128 a2)
{
  if (!qword_2A1A5E880)
  {
    sub_29DF8ECD0(255);
    sub_29DF8F454(&qword_2A1A5EBF8, sub_29DF8ECD0, MEMORY[0x29EDB8878]);
    v2 = sub_29E2C0F64();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A5E880);
    }
  }
}

void sub_29DF8ECD0(uint64_t a1)
{
  if (!qword_2A1A5EBF0)
  {
    sub_29DEBB174(255);
    sub_29DEBAF74(255);
    sub_29DF8EE0C(255, v1);
    sub_29DF8F454(&qword_2A1A5E998, sub_29DEBB174, MEMORY[0x29EDB8908]);
    sub_29DF8F454(&qword_2A1A5EB70, sub_29DEBAF74, MEMORY[0x29EDB88A0]);
    sub_29DF8F454(&unk_2A1A5EC68, sub_29DF8EE0C, MEMORY[0x29EDB8870]);
    v2 = sub_29E2C0E74();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A5EBF0);
    }
  }
}

void sub_29DF8EE0C(uint64_t a1, __n128 a2)
{
  if (!qword_2A1A5EC60)
  {
    sub_29DF8F404(255, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, MEMORY[0x29EDB8AF0]);
    sub_29DF8EF0C(255, &unk_2A1A61E30, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8AF0]);
    sub_29DF8EF70(&qword_2A1A61E50, &qword_2A1A61E48, &type metadata for UserCharacteristics.Age, v2);
    sub_29DF8EFD4();
    v3 = sub_29E2C0E44();
    if (!v4)
    {
      atomic_store(v3, &qword_2A1A5EC60);
    }
  }
}

void sub_29DF8EF0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DF8EF70(unint64_t *a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  result = *a1;
  if (!result)
  {
    sub_29DF8F404(255, a2, a3, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29DF8EFD4()
{
  result = qword_2A1A61E40;
  if (!qword_2A1A61E40)
  {
    sub_29DF8EF0C(255, &unk_2A1A61E30, type metadata accessor for HKBiologicalSex, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61E40);
  }

  return result;
}

void sub_29DF8F05C(uint64_t a1)
{
  if (!qword_2A1A5E260)
  {
    sub_29DF8EF0C(255, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
    sub_29E2BD6E4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1A5E260);
    }
  }
}

void sub_29DF8F124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  if (!*a2)
  {
    sub_29DF8EC3C(255, a4);
    a3(255);
    sub_29DF8F454(&qword_2A1A5E888, sub_29DF8EC3C, MEMORY[0x29EDB8958]);
    v6 = sub_29E2C0F24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29DF8F1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    sub_29DF8F404(255, &qword_2A1A5E2F8, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
    v8 = a3(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DF8F280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = a1[4];
  sub_29DF8F05C(0);
  result = v4(a2 + *(v10 + 64), v5, v6, v7, v8, v9);
  *a2 = result;
  *(a2 + 8) = v12 & 1;
  return result;
}

uint64_t sub_29DF8F308@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_29E2BD624();

  return sub_29DF8DC5C(a1, a2, a3, a4);
}

uint64_t sub_29DF8F3A0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = a1[8];
  sub_29DF8F05C(0);
  return v3(v4, v5, &a1[*(v6 + 64)]);
}

void sub_29DF8F404(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29DF8F454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF8F49C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E2BD624() - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_29E02BA9C(a1, v7, v8, a2);
}

uint64_t sub_29DF8F54C(__n128 a1)
{
  type metadata accessor for MenstrualCyclesOnboardingUserData(0);
  sub_29DF9117C(&qword_2A1A61398, type metadata accessor for MenstrualCyclesOnboardingUserData, &unk_29E2D869C);
  return sub_29E2BC2C4();
}

uint64_t sub_29DF8FAA4()
{
  type metadata accessor for AddPregnancyHelpTileActionHandler.Model(0);
  sub_29DF9117C(&qword_2A1819A78, type metadata accessor for AddPregnancyHelpTileActionHandler.Model, &unk_29E2D75E0);
  return sub_29E2BC2C4();
}

uint64_t sub_29DF8FC88()
{
  type metadata accessor for SleepingWristTemperatureHelpTileConfiguration(0);
  sub_29DF9117C(&qword_2A1819A80, type metadata accessor for SleepingWristTemperatureHelpTileConfiguration, &unk_29E2D3F38);
  return sub_29E2BC2C4();
}

uint64_t sub_29DF8FE7C(unint64_t a1, unint64_t a2)
{
  sub_29DE9408C(0, &qword_2A1A61DB0, 0x29EDBACB8);
  if (a2 >> 62)
  {
    v4 = sub_29E2C4774();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29E2C4584();
    v6 = 0xD000000000000046;
    v5 = 0x800000029E2F5080;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29E2C4584();
  v5 = 0x800000029E2F5030;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED7FCC0](v6, v5);
  v8 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v8);

  MEMORY[0x29ED7FCC0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v9);

  result = sub_29E2C4734();
  __break(1u);
  return result;
}

void sub_29DF90058(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29E2C4484())
    {
LABEL_3:
      sub_29DF22434(0);
      v3 = sub_29E2C4554();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29E2C4484();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_29DF8FE7C(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29E2C40C4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29DE9408C(0, &qword_2A1A61DB0, 0x29EDBACB8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29E2C40D4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_29E2C40C4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29DE9408C(0, &qword_2A1A61DB0, 0x29EDBACB8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29E2C40D4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_29DF9033C(void *a1, void *a2, char a3, uint64_t a4)
{
  v94 = a4;
  v98 = a2;
  v95 = a1;
  sub_29DF18BBC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v99 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v96 = &v79 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v102 = &v79 - v15;
  v93 = sub_29E2BD6E4();
  v91 = *(v93 - 8);
  MEMORY[0x2A1C7C4A8](v93);
  v89 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29E2BD794();
  v90 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_29E2BDEF4();
  v87 = *(v88 - 8);
  MEMORY[0x2A1C7C4A8](v88);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2BD4C4();
  v100 = *(v21 - 8);
  v101 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v103 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v104 = &v79 - v24;
  v25 = sub_29E2C0514();
  v26 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v86 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v85 = &v79 - v29;
  MEMORY[0x2A1C7C4A8](v30);
  v32 = &v79 - v31;
  v33 = type metadata accessor for MenstrualCyclesOnboardingUserData(0);
  MEMORY[0x2A1C7C4A8](v33 - 8);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v79 = v9;
    v80 = v7;
    sub_29DE9408C(0, &qword_2A1A61DC0, 0x29EDC3358);
    v36 = v98;
    sub_29E2C2ED4();
    sub_29E2BC2E4();
    swift_allocObject();
    sub_29E2BC2D4();
    sub_29E2C04B4();
    v38 = sub_29DF8F54C(v37);
    v97 = v39;
    v98 = v38;

    v41 = *(v26 + 8);
    v40 = v26 + 8;
    v84 = v25;
    v82 = v41;
    v41(v32, v25);
    sub_29DF911D8(v35, type metadata accessor for MenstrualCyclesOnboardingUserData);
    sub_29DF28510(0xD000000000000021, 0x800000029E2F4F80, v20);
    v42 = sub_29E2BD274();
    if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
    {
      sub_29DF90058(MEMORY[0x29EDCA190]);
    }

    v83 = v40;
    v81 = v6;
    type metadata accessor for MenstrualCyclesOnboardingTileActionHandler(0);
    sub_29DF9117C(&qword_2A1A61190, type metadata accessor for MenstrualCyclesOnboardingTileActionHandler, &unk_29E2DCA68);
    v43 = v104;
    sub_29E2BD2C4();

    (*(v87 + 8))(v20, v88);
    sub_29DF911C4(v98, v97);
    sub_29E2BD424();
    (*(v91 + 16))(v89, v94, v93);
    sub_29E2BD7A4();
    v44 = v92;
    sub_29E2BD314();
    v45 = v18;
    v46 = v43;
    (*(v90 + 8))(v45, v44);
    sub_29DF913BC(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CAB20;
    *(inited + 32) = sub_29E2BD664();
    *(inited + 40) = v48;
    v49 = sub_29E2BD494();
    sub_29DECE164(inited);
    swift_setDeallocating();
    sub_29DECE1D4(inited + 32);
    v49(v105, 0);
    v50 = *MEMORY[0x29EDC32A0];
    sub_29E2BD5A4();
    sub_29DE966D4(v105, v105[3]);
    v51 = sub_29E2BD4E4();
    v52 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:4 domainName:v50 healthStore:v51];

    sub_29DE93B3C(v105);
    v53 = v96;
    v95 = v52;
    sub_29E248334();
    v55 = v102;
    sub_29DEB4EA4(v53, v102);
    v56 = v80;
    v57 = v79;
    v59 = v100;
    v58 = v101;
    v60 = v84;
    v61 = v99;
    sub_29DEAA194(v55, v99);
    v62 = sub_29E2BCBB4();
    v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
    sub_29DF911D8(v61, sub_29DEB3B00);
    v64 = v103;
    if (v63 != 1)
    {
      v65 = v85;
      sub_29E2C04B4();
      v66 = sub_29E2C0504();
      v67 = sub_29E2C3A34();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v105[0] = v69;
        *v68 = 136446210;
        *(v68 + 4) = sub_29DFAA104(0xD000000000000022, 0x800000029E2D57E0, v105);
        _os_log_impl(&dword_29DE74000, v66, v67, "[%{public}s] Cycle tracking onboarding tile was previously dismissed. Hiding onboarding from discover.", v68, 0xCu);
        sub_29DE93B3C(v69);
        v70 = v69;
        v64 = v103;
        MEMORY[0x29ED82140](v70, -1, -1);
        MEMORY[0x29ED82140](v68, -1, -1);

        v71 = v65;
        v72 = v84;
      }

      else
      {

        v71 = v65;
        v72 = v60;
      }

      v82(v71, v72);
      v46 = v104;
    }

    sub_29E2BD344();
    (*(v59 + 16))(v64, v46, v58);
    v73 = sub_29E143AD8(0, 1, 1, MEMORY[0x29EDCA190]);
    v75 = v73[2];
    v74 = v73[3];
    if (v75 >= v74 >> 1)
    {
      v73 = sub_29E143AD8((v74 > 1), v75 + 1, 1, v73);
    }

    v73[2] = v75 + 1;
    (*(v59 + 32))(v73 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v75, v64, v58);
    v105[0] = v73;
    sub_29DF18BF0(0);
    sub_29E2C1164();
    sub_29DF9117C(&qword_2A1A61E70, sub_29DF18BBC, MEMORY[0x29EDB8AB8]);
    v76 = v81;
    v54 = sub_29E2C1274();

    v77 = sub_29DF1DD38(v98, v97);
    (*(v56 + 8))(v57, v76, v77);
    sub_29DF911D8(v55, sub_29DEB3B00);
    (*(v59 + 8))(v46, v58);
  }

  else
  {
    v105[0] = MEMORY[0x29EDCA190];
    sub_29DF18BF0(0);
    sub_29E2C1164();
    sub_29DF9117C(&qword_2A1A61E70, sub_29DF18BBC, MEMORY[0x29EDB8AB8]);
    v54 = sub_29E2C1274();
    (*(v7 + 8))(v9, v6);
  }

  return v54;
}

uint64_t sub_29DF9117C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF911C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29DF1DE4C(result, a2);
  }

  return result;
}

uint64_t sub_29DF911D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MenstrualCyclesOnboardingGenerator(uint64_t a1)
{
  result = qword_2A1A62450;
  if (!qword_2A1A62450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF912AC(uint64_t a1)
{
  sub_29DF91330(319);
  if (v1 <= 0x3F)
  {
    sub_29E2BD594();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29DF91330(uint64_t a1)
{
  if (!qword_2A1A61E78)
  {
    sub_29DF913BC(255, &qword_2A1A61DD8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v1 = sub_29E2C1024();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A61E78);
    }
  }
}

void sub_29DF913BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29DF9140C()
{
  result = qword_2A1819A88;
  if (!qword_2A1819A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819A88);
  }

  return result;
}

id sub_29DF91460()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v0 action:sel_doneAndDismiss];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29DF91550()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreType];
  sub_29E0FA190(v2);
  sub_29DF91BB8(0);
  v4 = objc_allocWithZone(v3);
  sub_29E2BF404();
  sub_29E2BF404();
  v5 = sub_29E2C1C34();
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  [v1 addChildViewController_];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v5 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v10 addSubview_];

  v13 = [v5 view];
  if (v13)
  {
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_29DE99B54();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29E2CE070;
    v15 = [v13 topAnchor];
    v16 = [v1 view];
    if (!v16)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v17 = v16;
    v18 = [v16 topAnchor];

    v19 = [v15 constraintEqualToAnchor_];
    *(v14 + 32) = v19;
    v20 = [v13 leadingAnchor];
    v21 = [v1 view];
    if (!v21)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v22 = v21;
    v23 = [v21 leadingAnchor];

    v24 = [v20 constraintEqualToAnchor_];
    *(v14 + 40) = v24;
    v25 = [v13 trailingAnchor];
    v26 = [v1 view];
    if (!v26)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v27 = v26;
    v28 = [v26 trailingAnchor];

    v29 = [v25 constraintEqualToAnchor_];
    *(v14 + 48) = v29;
    v30 = [v13 bottomAnchor];
    v31 = [v1 view];
    if (!v31)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v32 = v31;
    v33 = objc_opt_self();
    v34 = [v32 bottomAnchor];

    v35 = [v30 constraintEqualToAnchor_];
    *(v14 + 56) = v35;
    sub_29DEB8834();
    v36 = sub_29E2C3604();

    [v33 activateConstraints_];
  }

  [v5 didMoveToParentViewController_];
  v37 = v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_presentedModally];
  if (v37 == 2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v37)
  {
    v38 = [v1 navigationItem];
    v39 = sub_29DF91460();
    [v38 setRightBarButtonItem_];
  }

  sub_29E0FA190(v2);

  v40 = sub_29E2C33A4();

  [v1 setTitle_];
}

id sub_29DF91AE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LearnMoreViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29DF91B64()
{
  result = qword_2A1819AB0;
  if (!qword_2A1819AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819AB0);
  }

  return result;
}

void sub_29DF91BB8(uint64_t a1)
{
  if (!qword_2A1819AB8)
  {
    sub_29DF91C14();
    v1 = sub_29E2C1C44();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819AB8);
    }
  }
}

unint64_t sub_29DF91C14()
{
  result = qword_2A1819AC0;
  if (!qword_2A1819AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819AC0);
  }

  return result;
}

uint64_t type metadata accessor for DeviationsFactorsCompoundDataSource(uint64_t a1)
{
  result = qword_2A1819AD0;
  if (!qword_2A1819AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF91CB4(uint64_t a1)
{
  sub_29DF687B4();
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29DF91D4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29DF91DC0()
{
  sub_29DF687B4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_2A1819AC8;
  v24 = 0;
  sub_29E2C11D4();
  v7 = *(v3 + 32);
  v22 = v0;
  v7(v0 + v6, v5, v2);
  v25 = MEMORY[0x29EDCA190];
  sub_29E2C4634();
  sub_29DE9408C(0, &qword_2A1819AF8, 0x29EDCA970);
  type metadata accessor for CycleFactorSectionDataSource(0);
  v8 = 0;
  do
  {
    v9 = v8 + 1;
    v10 = byte_2A24AE408[v8 + 32];
    swift_allocObject();
    v11 = sub_29E279EF0(v10, 1);
    type metadata accessor for ExpandableDataSource(0);
    v12 = swift_allocObject();
    v13 = sub_29E2C42E4();
    v14 = objc_allocWithZone(MEMORY[0x29EDBAE40]);
    v15 = sub_29E2C33A4();
    v16 = [v14 initWithName:v15 loggingCategory:v13];

    v12[2] = v16;
    *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20ExpandableDataSource_wrappedSource) = v11;
    swift_beginAccess();
    v23 = 0;

    sub_29E2C11D4();
    swift_endAccess();

    v17 = sub_29E2BEC04();
    v19 = v18;

    v12[3] = v17;
    v12[4] = v19;

    v20 = sub_29E2BEC44();

    [v20 registerObserver_];

    sub_29E2C4614();
    sub_29E2C4644();
    sub_29E2C4654();
    sub_29E2C4624();
    v8 = v9;
  }

  while (v9 != 4);
  sub_29E13D6EC(v25);

  return sub_29E2BF154();
}

void sub_29DF920C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_29DF941C4(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v66 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = v54 - v9;
  sub_29DF941C4(0, &qword_2A1819AE0, sub_29DF9413C);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = v54 - v12;
  v14 = sub_29E2BCFB4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = v54 - v19;
  sub_29DF92C88(a2, v13);
  sub_29DF9413C(0);
  v22 = v21;
  if ((*(*(v21 - 8) + 48))(v13, 1, v21) == 1)
  {
    sub_29DF94260(v13, &qword_2A1819AE0, sub_29DF9413C);
    return;
  }

  v57 = v17;
  v23 = *v13;
  v24 = *(v13 + 1);
  (*(v15 + 32))(v20, &v13[*(v22 + 64)], v14);
  v25 = *(a1 + 33);
  if (v25 < 2)
  {
    sub_29E278A18(v20);
    v26 = (sub_29E2BF0C4() + 16);
    if (*v26)
    {
      v27 = v26[2 * *v26];
      swift_unknownObjectRetain();

      if (object_getClass(v27) == _TtC24MenstrualCyclesAppPlugin20ExpandableDataSource && v27 && (type metadata accessor for CycleFactorSectionDataSource(0), swift_dynamicCastClass()))
      {

        sub_29E279464();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    sub_29E278DDC(v10);
    sub_29DF94260(v10, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    sub_29E0D8F18((v69 & 1) == 0);
    goto LABEL_66;
  }

  v64 = v24;
  v67 = v23;
  if (v25 == 2)
  {
    if (sub_29E2BCFA4())
    {
      v28 = sub_29E2BCFA4();

      v29 = sub_29E2BEC64();

      v30 = *(v29 + 16);

      if (v30 > v28)
      {

        sub_29E2BEC34();
      }
    }

    else
    {
      type metadata accessor for ExpandableDataSource(0);
      sub_29DF94218(&qword_2A1819AE8, type metadata accessor for ExpandableDataSource, &unk_29E2DDFC4);
      if (sub_29E2BE6F4() >= 3)
      {
        do
        {

          v49 = sub_29E2BEC64();

          v50 = *(v49 + 16);

          if (v50 >= 2)
          {

            sub_29E2BEC34();
          }
        }

        while (sub_29E2BE6F4() > 2);
      }

      sub_29E278A18(v20);
      v51 = (sub_29E2BF0C4() + 16);
      if (*v51)
      {
        v52 = v51[2 * *v51];
        swift_unknownObjectRetain();

        v53 = object_getClass(v52) != _TtC24MenstrualCyclesAppPlugin20ExpandableDataSource || v52 == 0;
        if (v53 || (type metadata accessor for CycleFactorSectionDataSource(0), !swift_dynamicCastClass()))
        {
          swift_unknownObjectRelease();
        }

        else
        {

          sub_29E279464();
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_29E2C1214();

      sub_29E0D8F18((v69 & 1) == 0);
      sub_29E278DDC(v10);
      v31 = sub_29DF94260(v10, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    }

    goto LABEL_66;
  }

  sub_29E278A18(v20);
  v32 = sub_29E2BF0C4();
  v33 = v32;
  v34 = *(v32 + 16);
  if (!v34)
  {

LABEL_66:
    sub_29DF93B48(v31);

    (*(v15 + 8))(v20, v14);
    return;
  }

  v58 = v14;
  v54[1] = v3;
  v35 = v15;
  v36 = 0;
  v37 = v32 + 32;
  v56 = (v35 + 56);
  v54[0] = v35;
  v55 = (v35 + 8);
  v38 = v66;
  v61 = v32;
  v62 = v20;
  v59 = v32 + 32;
  v60 = v34;
  while (v36 < *(v33 + 16))
  {
    v39 = *(v37 + 16 * v36);
    if (object_getClass(v39) != _TtC24MenstrualCyclesAppPlugin20ExpandableDataSource || v39 == 0)
    {
      goto LABEL_18;
    }

    type metadata accessor for ExpandableDataSource(0);
    sub_29DF94218(&qword_2A1819AE8, type metadata accessor for ExpandableDataSource, &unk_29E2DDFC4);
    swift_unknownObjectRetain();
    if (sub_29E2BE6F4() >= 3)
    {
      do
      {

        v41 = sub_29E2BEC64();

        v42 = *(v41 + 16);

        if (v42 >= 2)
        {

          sub_29E2BEC34();
        }
      }

      while (sub_29E2BE6F4() > 2);
    }

    v65 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20ExpandableDataSource_wrappedSource;
    v63 = type metadata accessor for CycleFactorSectionDataSource(0);
    v43 = swift_dynamicCastClass();
    if (v43)
    {

      sub_29E278DDC(v38);
    }

    else
    {
      (*v56)(v38, 1, 1, v58);
    }

    sub_29DF94260(v38, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    v44 = v69;
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = 0;
    swift_unknownObjectRetain();
    sub_29E2C1224();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    if (v44 != v69)
    {
      sub_29E2BED34();

      sub_29E2BE6D4();

      sub_29E2BE6B4();
    }

    v38 = v66;
    if (v39[3] == *(v67 + 24) && v39[4] == *(v67 + 32))
    {
      swift_unknownObjectRelease();

      v20 = v62;
    }

    else
    {
      v45 = sub_29E2C4914();
      v20 = v62;
      if (v45)
      {
        swift_unknownObjectRelease();
      }

      else if (v43)
      {

        v46 = v57;
        MEMORY[0x29ED79720](0, 0);
        sub_29E2BE764();
        sub_29DF942BC(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], 1);
        if (swift_dynamicCast())
        {
          v47 = v68;

          v37 = v59;
          if (v47)
          {
            v48 = v57;
            sub_29E278A18(v57);
            swift_unknownObjectRelease();

            (*v55)(v48, v58);
          }

          else
          {
            swift_unknownObjectRelease();

            (*v55)(v57, v58);
          }

          v34 = v60;
          v33 = v61;
          goto LABEL_18;
        }

        swift_unknownObjectRelease();

        (*v55)(v46, v58);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v34 = v60;
    v33 = v61;
    v37 = v59;
LABEL_18:
    if (++v36 == v34)
    {

      v14 = v58;
      v15 = v54[0];
      goto LABEL_66;
    }
  }

  __break(1u);
}

uint64_t sub_29DF92C88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v53 = *v2;
  v4 = sub_29E2C0514();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v50 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v50 - v13;
  v15 = sub_29E2BF0F4();
  v52 = v16;
  v17 = v15;
  v18 = *(v7 + 32);
  v58 = v14;
  v18(v14, v11, v6);
  v19 = object_getClass(v17) != _TtC24MenstrualCyclesAppPlugin20ExpandableDataSource || v17 == 0;
  v20 = v6;
  if (v19 || (type metadata accessor for CycleFactorSectionDataSource(0), (v21 = swift_dynamicCastClass()) == 0))
  {
    v29 = v55;
    sub_29E2C04B4();
    v30 = v54;
    (*(v7 + 16))(v54, a1, v6);
    swift_unknownObjectRetain();
    v31 = sub_29E2C0504();
    v32 = sub_29E2C3A14();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v7;
      v34 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v62[0] = v51;
      *v34 = 136446722;
      v35 = sub_29E2C4AE4();
      v37 = v20;
      v38 = sub_29DFAA104(v35, v36, v62);

      *(v34 + 4) = v38;
      LODWORD(v53) = v32;
      *(v34 + 12) = 2080;
      v60 = v17;
      v61 = v52;
      sub_29DF942BC(0, &qword_2A181DB40, MEMORY[0x29EDC2040], 0);
      swift_unknownObjectRetain();
      v39 = sub_29E2C3424();
      v41 = sub_29DFAA104(v39, v40, v62);

      *(v34 + 14) = v41;
      *(v34 + 22) = 2080;
      sub_29DF94218(&unk_2A181F8A0, MEMORY[0x29EDB9D70], MEMORY[0x29EDB9D90]);
      v42 = sub_29E2C48D4();
      v44 = v43;
      v45 = *(v33 + 8);
      v45(v30, v37);
      v46 = sub_29DFAA104(v42, v44, v62);

      *(v34 + 24) = v46;
      _os_log_impl(&dword_29DE74000, v31, v53, "[%{public}s] failed converting dataSource %s at indexPath %s into ExpandableDataSource and CycleFactorSectionDataSource", v34, 0x20u);
      v47 = v51;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v47, -1, -1);
      MEMORY[0x29ED82140](v34, -1, -1);
      swift_unknownObjectRelease();

      (*(v56 + 8))(v29, v57);
      v45(v58, v37);
    }

    else
    {
      swift_unknownObjectRelease();

      v48 = *(v7 + 8);
      v48(v30, v6);
      (*(v56 + 8))(v29, v57);
      v48(v58, v6);
    }

    sub_29DF9413C(0);
    return (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
  }

  else
  {
    v22 = v21;
    sub_29DF9413C(0);
    v24 = v23;
    v25 = *(v23 + 64);
    v26 = v58;
    v27 = v59;
    *v59 = v17;
    *(v27 + 1) = v22;
    v18(&v27[v25], v26, v6);
    (*(*(v24 - 8) + 56))(v27, 0, 1, v24);
  }
}

uint64_t sub_29DF93268(uint64_t a1)
{
  v2 = sub_29E2BEBB4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF941C4(0, &qword_2A1819AE0, sub_29DF9413C);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_29E2BCFB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF92C88(a1, v8);
  sub_29DF9413C(0);
  v14 = v13;
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_29DF94260(v8, &qword_2A1819AE0, sub_29DF9413C);
  }

  (*(v10 + 32))(v12, &v8[*(v14 + 64)], v9);
  sub_29E27A410(2, 1, v5);
  sub_29E2BCFA4();
  sub_29E2BECF4();

  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_29DF93508(uint64_t a1)
{
  sub_29DF941C4(0, &qword_2A1819AE0, sub_29DF9413C);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = &v19 - v11;
  MEMORY[0x29ED79720](0, a1, v10);
  sub_29DF92C88(v12, v4);
  sub_29DF9413C(0);
  v14 = v13;
  if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
  {
    (*(v6 + 8))(v12, v5);
    sub_29DF94260(v4, &qword_2A1819AE0, sub_29DF9413C);
    return 0;
  }

  else
  {

    (*(v6 + 32))(v8, &v4[*(v14 + 64)], v5);
    v16 = sub_29E2BCFA4();
    v17 = sub_29E279CEC(v16);

    v18 = *(v6 + 8);
    v18(v8, v5);
    v18(v12, v5);
    return v17;
  }
}

void sub_29DF93768(uint64_t a1)
{
  v1 = sub_29E2BF0C4();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {

    return;
  }

  v4 = 0;
  v5 = v1 + 32;
  v6 = MEMORY[0x29EDCA190];
  v31 = *(v1 + 16);
  v32 = v1;
  v33 = v1 + 32;
  while (v4 < *(v2 + 16))
  {
    v7 = *(v5 + 16 * v4);
    if (object_getClass(v7) != _TtC24MenstrualCyclesAppPlugin20ExpandableDataSource || v7 == 0)
    {
      goto LABEL_4;
    }

    type metadata accessor for CycleFactorSectionDataSource(0);
    if (swift_dynamicCastClass())
    {
      swift_retain_n();
      swift_unknownObjectRetain();
      sub_29E059FD8(MEMORY[0x29EDCA190]);
      v10 = v9;
    }

    else
    {
      swift_unknownObjectRetain();
      v10 = MEMORY[0x29EDCA190];
    }

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = sub_29E2C4484();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v6 >> 62;
    if (v6 >> 62)
    {
      v14 = sub_29E2C4484();
    }

    else
    {
      v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = v12;
    v15 = __OFADD__(v14, v12);
    v16 = v14 + v12;
    if (v15)
    {
      goto LABEL_45;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        v17 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_29E2C4484();
      goto LABEL_24;
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_24:
    v6 = sub_29E2C45B4();
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v35 = v6;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v11)
    {
      v21 = v17;
      v22 = sub_29E2C4484();
      v17 = v21;
      v20 = v22;
      if (v22)
      {
LABEL_29:
        if (((v19 >> 1) - v18) < v36)
        {
          goto LABEL_47;
        }

        v23 = v17 + 8 * v18 + 32;
        v34 = v17;
        if (v11)
        {
          if (v20 < 1)
          {
            goto LABEL_49;
          }

          sub_29DEE9894(0);
          sub_29DF94218(&qword_2A1819AF0, sub_29DEE9894, MEMORY[0x29EDC9A88]);
          for (i = 0; i != v20; ++i)
          {
            v26 = sub_29E14DAFC(v37, i, v10);
            v28 = *v27;
            (v26)(v37, 0);
            *(v23 + 8 * i) = v28;
          }

          swift_unknownObjectRelease();

          v3 = v31;
          v2 = v32;
          v24 = v36;
        }

        else
        {
          sub_29DE9408C(0, &qword_2A1A61D50, 0x29EDBAA60);
          v24 = v36;
          swift_arrayInitWithCopy();

          swift_unknownObjectRelease();
        }

        v5 = v33;
        v6 = v35;
        if (v24 > 0)
        {
          v29 = *(v34 + 16);
          v15 = __OFADD__(v29, v24);
          v30 = v29 + v24;
          if (v15)
          {
            goto LABEL_48;
          }

          *(v34 + 16) = v30;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_29;
      }
    }

    swift_unknownObjectRelease();
    v6 = v35;
    if (v36 > 0)
    {
      goto LABEL_46;
    }

LABEL_4:
    if (++v4 == v3)
    {

      return;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

__objc2_class *sub_29DF93B48(uint64_t a1)
{
  result = sub_29E2BF0C4();
  v2 = result;
  cache = result->cache;
  if (cache)
  {
    v4 = 0;
    v5 = 32;
    while (v4 < v2->cache)
    {
      v6 = *(&v2->isa + v5);
      result = object_getClass(v6);
      if (result == _TtC24MenstrualCyclesAppPlugin20ExpandableDataSource && v6 != 0)
      {
        type metadata accessor for ExpandableDataSource(0);
        sub_29DF94218(&qword_2A1819AE8, type metadata accessor for ExpandableDataSource, &unk_29E2DDFC4);
        swift_unknownObjectRetain();
        sub_29E2BE784();
        if (v10)
        {
          sub_29DF942BC(0, &qword_2A1819BD0, MEMORY[0x29EDC18F8], 1);
          if (swift_dynamicCast())
          {

            if (v8 == 1)
            {

              swift_getKeyPath();
              swift_getKeyPath();
              v9[0] = 1;

              sub_29E2C1224();
              return swift_unknownObjectRelease();
            }
          }

          result = swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          result = sub_29DF94318(v9);
        }
      }

      ++v4;
      v5 += 16;
      if (cache == v4)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    v9[0] = 0;

    return sub_29E2C1224();
  }

  return result;
}

uint64_t sub_29DF93DB8()
{
  v1 = qword_2A1819AC8;
  sub_29DF687B4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_29DF93E20()
{
  v0 = sub_29E2BF144();
  v1 = qword_2A1819AC8;
  sub_29DF687B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_29DF93ED0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a2 = v3;
}

uint64_t sub_29DF93F50(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

void sub_29DF93FC4(void *a1)
{
  type metadata accessor for OnboardingDataTypeLoggingCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_29E2C33A4();
  [a1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v3];

  type metadata accessor for DatePickerTableViewCell();
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_29E2C33A4();
  [a1 registerClass:v4 forCellReuseIdentifier:v5];

  type metadata accessor for PickerSelectLoggingCell();
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_29E2C33A4();
  [a1 registerClass:v6 forCellReuseIdentifier:v7];

  type metadata accessor for MenstrualCyclesHeaderFooterView();
  v8 = swift_getObjCClassFromMetadata();
  v9 = sub_29E2C33A4();
  [a1 registerClass:v8 forHeaderFooterViewReuseIdentifier:v9];
}

void sub_29DF9413C(uint64_t a1)
{
  if (!qword_2A181DFC0)
  {
    type metadata accessor for ExpandableDataSource(255);
    type metadata accessor for CycleFactorSectionDataSource(255);
    sub_29E2BCFB4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181DFC0);
    }
  }
}

void sub_29DF941C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29DF94218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DF94260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DF941C4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DF942BC(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29DF94318(uint64_t a1)
{
  sub_29DF94374(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DF94374(uint64_t a1)
{
  if (!qword_2A181F8C0)
  {
    sub_29DF942BC(255, &qword_2A1819BD0, MEMORY[0x29EDC18F8], 1);
    v1 = sub_29E2C4304();
    if (!v2)
    {
      atomic_store(v1, &qword_2A181F8C0);
    }
  }
}

uint64_t sub_29DF943F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](0xD000000000000051, 0x800000029E2F53F0);
  MEMORY[0x29ED7FCC0](v1, v2);
  return 0;
}

uint64_t sub_29DF9448C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v2 = MEMORY[0x29EDC3250];
    v3 = MEMORY[0x29EDC3228];
    if (a1 != 2)
    {
      v3 = MEMORY[0x29EDC3258];
    }

    if (a1)
    {
      v2 = MEMORY[0x29EDC3230];
    }

    if (a1 <= 1u)
    {
      v1 = v2;
    }

    else
    {
      v1 = v3;
    }

    return HKMCDisplayTypeIdentifier.editableReportTitle.getter(*v1);
  }

  if (a1 <= 5u)
  {
    v1 = MEMORY[0x29EDC3260];
    if (a1 != 4)
    {
      v1 = MEMORY[0x29EDC3268];
    }

    return HKMCDisplayTypeIdentifier.editableReportTitle.getter(*v1);
  }

  if (a1 == 6)
  {
    v1 = MEMORY[0x29EDC3270];
    return HKMCDisplayTypeIdentifier.editableReportTitle.getter(*v1);
  }

  if (a1 == 7)
  {
    v1 = MEMORY[0x29EDC3238];
    return HKMCDisplayTypeIdentifier.editableReportTitle.getter(*v1);
  }

  return 0;
}

uint64_t sub_29DF94548(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20[-v8];
  v10 = 1 << a1;
  if (((1 << a1) & 0xF9) != 0)
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1A67F80;
    sub_29E2BCC74();
    v6 = sub_29E2C3414();
    v12 = *(v4 + 8);
    v4 += 8;
    v12(v9, v3);
    sub_29DEB19DC(0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_29E2CAB20;
    result = sub_29DF9448C(a1);
    if (v14)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if ((v10 & 6) == 0)
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v19 = qword_2A1A67F80;
    sub_29E2BCC74();
    v18 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
    return v18;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  sub_29DEB19DC(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CAB20;
  result = sub_29DF9448C(a1);
  if (v14)
  {
LABEL_10:
    v16 = result;
    v17 = v14;
    *(v3 + 56) = MEMORY[0x29EDC99B0];
    *(v3 + 64) = sub_29DEB1A44();
    *(v3 + 32) = v16;
    *(v3 + 40) = v17;
    v18 = sub_29E2C3404();

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_29DF94998(char a1)
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v12[-v7];
  sub_29E2C3314();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v3 + 8))(v8, v2);
  return v10;
}

unint64_t sub_29DF94BD8()
{
  result = qword_2A1819B00;
  if (!qword_2A1819B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819B00);
  }

  return result;
}

uint64_t sub_29DF94C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a3;
  sub_29DF95124(0);
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v44 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BD624();
  v35 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF95210(0);
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v38 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v11 + 16);
  v39(v14, v47, a2, v17);
  (*(v8 + 16))(v10, v40, v7);
  v19 = *(v11 + 80);
  v20 = (v19 + 32) & ~v19;
  v40 = v20 + v12;
  v37 = v19 | 7;
  v21 = (v20 + v12 + *(v8 + 80)) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = a2;
  *(v22 + 24) = v23;
  v36 = *(v11 + 32);
  v36(v22 + v20, v14, a2);
  (*(v8 + 32))(v22 + v21, v10, v35);
  sub_29DF952A4(0);
  v24 = MEMORY[0x29EDB8A00];
  sub_29DF961C4(&qword_2A1A5E738, sub_29DF952A4, MEMORY[0x29EDB8A00]);
  v25 = v38;
  sub_29E2C11B4();
  (v39)(v14, v47, a2);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = v23;
  v36(v26 + v20, v14, a2);
  sub_29E2C1004();
  sub_29DF691DC(0);
  sub_29DF961C4(&qword_2A1A5E460, sub_29DF95210, MEMORY[0x29EDB8AE8]);
  sub_29DF961C4(&qword_2A1A5E728, sub_29DF691DC, v24);
  v27 = v44;
  v28 = v42;
  v29 = v25;
  sub_29E2C13C4();

  sub_29DF961C4(&qword_2A1A5E7D0, sub_29DF95124, MEMORY[0x29EDB89A8]);
  v30 = v45;
  v31 = v27;
  v32 = sub_29E2C1274();
  (*(v46 + 8))(v31, v30);
  (*(v43 + 8))(v29, v28);
  return v32;
}

void sub_29DF95124(uint64_t a1)
{
  if (!qword_2A1A5E7C8)
  {
    sub_29DF691DC(255);
    sub_29DF95210(255);
    sub_29DF961C4(&qword_2A1A5E728, sub_29DF691DC, MEMORY[0x29EDB8A00]);
    sub_29DF961C4(&qword_2A1A5E460, sub_29DF95210, MEMORY[0x29EDB8AE8]);
    v1 = sub_29E2C0F94();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E7C8);
    }
  }
}

void sub_29DF95210(uint64_t a1)
{
  if (!qword_2A1A5E458)
  {
    sub_29DF952A4(255);
    sub_29DF961C4(&qword_2A1A5E738, sub_29DF952A4, MEMORY[0x29EDB8A00]);
    v1 = sub_29E2C11C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E458);
    }
  }
}

uint64_t sub_29DF9530C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v26[11] = a1;
  v26[12] = a3;
  v27 = a4;
  v28 = a2;
  sub_29DF96084(0);
  v26[6] = *(v4 - 8);
  v26[7] = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v26[5] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C0514();
  v26[9] = *(v6 - 8);
  v26[10] = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v26[8] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BFC94();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF952D8(0);
  MEMORY[0x2A1C7C4A8](v12);
  v26[3] = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v26 - v15;
  sub_29DF9612C(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v26[4] = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v23 = v26 - v22;
  sub_29E2BFCB4();
  (*(v9 + 32))(v16, v11, v8);
  (*(v9 + 56))(v16, 0, 1, v8);
  sub_29E2C1164();
  sub_29DF961C4(&qword_2A1A5E540, sub_29DF9612C, MEMORY[0x29EDB8AB8]);
  v24 = sub_29E2C1274();
  result = (*(v19 + 8))(v23, v18);
  *v27 = v24;
  return result;
}

uint64_t sub_29DF95958@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(sub_29E2BD624() - 8);
  v8 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_29DF9530C(v8, v3, v4, a1);
}

uint64_t sub_29DF95A38@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v22 = a4;
  sub_29DF95DF4(0);
  v6 = v5;
  v21 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF952D8(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BFC94();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF95FC4(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29DF96028(v11);
    result = sub_29E2BFCC4();
    v17 = result;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v23 = sub_29E2BFCC4();
    sub_29DF96160(0, &qword_2A1A5E020, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9E90]);
    v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29E2CAB20;
    (*(v13 + 16))(v19 + v18, v15, v12);
    sub_29DF691DC(0);
    sub_29DF961C4(&qword_2A1A5E728, sub_29DF691DC, MEMORY[0x29EDB8A00]);
    sub_29E2C1334();

    sub_29DF961C4(&qword_2A1A5EB08, sub_29DF95DF4, MEMORY[0x29EDB88B0]);
    v17 = sub_29E2C1274();
    (*(v21 + 8))(v8, v6);
    result = (*(v13 + 8))(v15, v12);
  }

  *v22 = v17;
  return result;
}

void sub_29DF95DF4(uint64_t a1)
{
  if (!qword_2A1A5EB00)
  {
    sub_29DF95EE0(255);
    sub_29DF691DC(255);
    sub_29DF961C4(&qword_2A1A5E768, sub_29DF95EE0, MEMORY[0x29EDB89C0]);
    sub_29DF961C4(&qword_2A1A5E728, sub_29DF691DC, MEMORY[0x29EDB8A00]);
    v1 = sub_29E2C0EE4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5EB00);
    }
  }
}

void sub_29DF95EE0(uint64_t a1)
{
  if (!qword_2A1A5E760)
  {
    sub_29DF95F90(255);
    sub_29DF961C4(&qword_2A1A5E328, sub_29DF95F90, MEMORY[0x29EDC9A70]);
    v1 = sub_29E2C0FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E760);
    }
  }
}

uint64_t sub_29DF95FC4(uint64_t a1, uint64_t a2)
{
  sub_29DF952D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DF96028(uint64_t a1)
{
  sub_29DF952D8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DF960B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DF96160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DF961C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for LastMenstrualPeriodDatePickerRow(uint64_t a1)
{
  result = qword_2A1819B10;
  if (!qword_2A1819B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF96280(uint64_t a1)
{
  sub_29DEA8E38(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  if (v1 <= 0x3F)
  {
    sub_29E2BEFA4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29DF96358@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  MenstrualPeriodDatePickerRow = type metadata accessor for LastMenstrualPeriodDatePickerRow(0);
  v5 = MenstrualPeriodDatePickerRow - 8;
  v29 = *(MenstrualPeriodDatePickerRow - 8);
  v6 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](MenstrualPeriodDatePickerRow);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v27 - v10;
  v12 = (v1 + *(v5 + 32));
  v13 = *v12;
  v27 = v12[1];
  v28 = v13;
  sub_29E2BF404();
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v9 + 8))(v11, v8);
  v14 = v30;
  v15 = v31;
  LOBYTE(v11) = v32;
  v16 = *(v5 + 28);
  sub_29DEA8ABC(0);
  v18 = v17;
  v19 = *(v17 + 44);
  v20 = sub_29E2BEFA4();
  (*(*(v20 - 8) + 16))(a1 + v19, v2 + v16, v20);
  sub_29DF96BDC(v2, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LastMenstrualPeriodDatePickerRow);
  v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v22 = swift_allocObject();
  result = sub_29DF96B08(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v24 = v27;
  *a1 = v28;
  *(a1 + 8) = v24;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v11;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v25 = (a1 + *(v18 + 48));
  *v25 = 0xD000000000000026;
  v25[1] = 0x800000029E2F5470;
  v26 = (a1 + *(v18 + 52));
  *v26 = sub_29DF96B6C;
  v26[1] = v22;
  return result;
}

__n128 sub_29DF9661C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_29E2C1CA4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCBB4();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8D5C(0);
  v32 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEA8E38(0, &qword_2A1817D30, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  sub_29DEA8E38(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v31 - v14;
  sub_29DEA8B80();
  v36 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a1 + *(type metadata accessor for LastMenstrualPeriodDatePickerRow(0) + 24));
  v21 = v20[1];
  *&v40 = *v20;
  *(&v40 + 1) = v21;
  sub_29E2BF404();
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v13 + 8))(v15, v12);
  sub_29E2C2A24();
  v22 = *(v39 + 16);

  if (v22 == 1)
  {
    v23 = v33;
    sub_29E2BCBA4();
    sub_29E0B0D98(v23, v9);
    (*(v34 + 8))(v23, v35);
  }

  else
  {
    if (qword_2A1816FD0 != -1)
    {
      swift_once();
    }

    v24 = sub_29DEA8E9C(v32, qword_2A1840FB0);
    sub_29DF96BDC(v24, v9, sub_29DEA8D5C);
  }

  sub_29E2C1C94();
  sub_29DE9DE68();
  sub_29E2C1404();
  sub_29E2C2AB4();
  sub_29E2C17D4();
  v25 = v38;
  (*(v17 + 32))(v38, v19, v36);
  sub_29DEA8B20(0);
  v27 = v25 + *(v26 + 36);
  v28 = v45;
  *(v27 + 64) = v44;
  *(v27 + 80) = v28;
  *(v27 + 96) = v46;
  v29 = v41;
  *v27 = v40;
  *(v27 + 16) = v29;
  result = v43;
  *(v27 + 32) = v42;
  *(v27 + 48) = result;
  return result;
}

uint64_t sub_29DF96B08(uint64_t a1, uint64_t a2)
{
  MenstrualPeriodDatePickerRow = type metadata accessor for LastMenstrualPeriodDatePickerRow(0);
  (*(*(MenstrualPeriodDatePickerRow - 8) + 32))(a2, a1, MenstrualPeriodDatePickerRow);
  return a2;
}

double sub_29DF96B6C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LastMenstrualPeriodDatePickerRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_29DF9661C(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_29DF96BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF96C44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29DF96C8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29DF96D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E2C0514();
  v43 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C2B34();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2C2B54();
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 2) < 3)
  {
    v20 = v16;
    v21 = v17;
    sub_29DEB1E60();
    v22 = sub_29E2C3CF4();
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v50 = sub_29DF97B00;
    v51 = v23;
    aBlock = MEMORY[0x29EDCA5F8];
    v47 = 1107296256;
    v48 = sub_29DF49BB8;
    v49 = &unk_2A24B5F30;
    v24 = _Block_copy(&aBlock);

    sub_29E2C2B44();
    aBlock = MEMORY[0x29EDCA190];
    sub_29DF0141C(&qword_2A1A626F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    sub_29DF013C4(0);
    sub_29DF0141C(&qword_2A1A626D0, sub_29DF013C4, MEMORY[0x29EDC9A70]);
    sub_29E2C43F4();
    MEMORY[0x29ED804D0](0, v19, v14, v24);
    _Block_release(v24);

    (*(v12 + 8))(v14, v11);
    return (*(v21 + 8))(v19, v20);
  }

  v42 = v12;
  if (a1 == 1)
  {
    v26 = v16;
    v27 = v17;
    sub_29DEB1E60();
    v28 = sub_29E2C3CF4();
    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    v50 = sub_29DF97ABC;
    v51 = v32;
    aBlock = MEMORY[0x29EDCA5F8];
    v47 = 1107296256;
    v31 = &unk_2A24B5EE0;
    goto LABEL_7;
  }

  if (!a1)
  {
    v26 = v16;
    v27 = v17;
    sub_29DEB1E60();
    v28 = sub_29E2C3CF4();
    sub_29DF97B2C(a2, v44);
    v29 = swift_allocObject();
    v30 = v44[1];
    *(v29 + 16) = v44[0];
    *(v29 + 32) = v30;
    *(v29 + 48) = v45;
    *(v29 + 56) = a3;
    *(v29 + 64) = a4;
    v50 = sub_29DF97B64;
    v51 = v29;
    aBlock = MEMORY[0x29EDCA5F8];
    v47 = 1107296256;
    v31 = &unk_2A24B5F80;
LABEL_7:
    v48 = sub_29DF49BB8;
    v49 = v31;
    v33 = _Block_copy(&aBlock);

    sub_29E2C2B44();
    aBlock = MEMORY[0x29EDCA190];
    sub_29DF0141C(&qword_2A1A626F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    sub_29DF013C4(0);
    sub_29DF0141C(&qword_2A1A626D0, sub_29DF013C4, MEMORY[0x29EDC9A70]);
    sub_29E2C43F4();
    MEMORY[0x29ED804D0](0, v19, v14, v33);
    _Block_release(v33);

    (*(v42 + 8))(v14, v11);
    return (*(v27 + 8))(v19, v26);
  }

  sub_29E2C04B4();
  v34 = sub_29E2C0504();
  v35 = sub_29E2C3A14();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v36 = 136315394;
    *&v44[0] = &type metadata for NotificationAuthorizationManager;
    sub_29DF97A74();
    v38 = sub_29E2C3464();
    v40 = sub_29DFAA104(v38, v39, &aBlock);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2048;
    *(v36 + 14) = a1;
    _os_log_impl(&dword_29DE74000, v34, v35, "[%s] Unknown UNAuthorizationStatus %ld", v36, 0x16u);
    sub_29DE93B3C(v37);
    MEMORY[0x29ED82140](v37, -1, -1);
    MEMORY[0x29ED82140](v36, -1, -1);
  }

  return (*(v43 + 8))(v10, v8);
}

double sub_29DF9740C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29DE966D4(a1, a1[3]);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_29E2BD164();

  return result;
}

uint64_t sub_29DF974A0(uint64_t a1)
{
  v1 = a1;
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v15[-v8];
  v10 = sub_29E2C3364();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  sub_29DF9783C(v1);
  if (v11)
  {
    sub_29E2C3354();
    sub_29E2C3344();
    sub_29E2C3334();

    sub_29E2C3344();
    sub_29E2C3374();
  }

  else
  {
    sub_29E2C3314();
  }

  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  v13 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v13;
}

uint64_t sub_29DF97758()
{
  v0 = sub_29E2BDE04();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1718], v0, v2);
  sub_29E2BDDF4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_29DF9783C(unsigned __int8 a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v14[-v8];
  v10 = a1;
  if (a1 == 10 || (v11 = 0, v10 == 5))
  {
    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v12 = qword_2A1A67F80;
    sub_29E2BCC74();
    v11 = sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
  }

  return v11;
}

unint64_t sub_29DF97A74()
{
  result = qword_2A1819B20;
  if (!qword_2A1819B20)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1819B20);
  }

  return result;
}

uint64_t sub_29DF97AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29DF97B70(char a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return (*(v1 + 16))(v2);
}

id sub_29DF97BA4(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v26 - v8;
  v27 = sub_29DF974A0(a1);
  sub_29E2C3314();
  v30 = v4;
  v10 = *(v4 + 16);
  v28 = v4 + 16;
  v29 = v10;
  v10(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v32 = "EDING_ALERT_MESSAGE";
  v11 = qword_2A1A67F80;
  v12 = qword_2A1A67F80;
  v31 = v11;
  v13 = v12;
  sub_29E2BCC74();
  v14 = v13;
  sub_29E2C3414();
  v30 = *(v30 + 8);
  (v30)(v9, v3);
  v15 = sub_29E2C33A4();

  v16 = sub_29E2C33A4();

  v27 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

  sub_29E2C3314();
  v17 = v29;
  v29(v6, v9, v3);
  sub_29E2BCC74();
  sub_29E2C3414();
  (v30)(v9, v3);
  v18 = sub_29E2C33A4();

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v18 style:1 handler:0];

  v21 = v27;
  [v27 addAction_];

  sub_29E2C3314();
  v17(v6, v9, v3);
  sub_29E2BCC74();
  sub_29E2C3414();
  (v30)(v9, v3);
  v22 = sub_29E2C33A4();

  aBlock[4] = sub_29DF97758;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF6E81C;
  aBlock[3] = &unk_2A24B5FD0;
  v23 = _Block_copy(aBlock);

  v24 = [v19 actionWithTitle:v22 style:0 handler:v23];
  _Block_release(v23);

  [v21 addAction_];
  return v21;
}

uint64_t sub_29DF980B0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 56);
  if (v2)
  {
    v3 = [v2 state] != 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v0 + 80) & v3 & v1 & 1) == 0;

  return sub_29E001D60(v4);
}

double sub_29DF98118()
{
  swift_unknownObjectRelease();

  sub_29DE93B3C((v0 + 96));
  sub_29DE93B3C((v0 + 136));
  sub_29DE93B3C((v0 + 176));

  return result;
}

uint64_t sub_29DF98180()
{
  [*(v0 + 48) unregisterObserver_];
  [*(*sub_29DE966D4((v0 + 176) *(v0 + 200)) + 16)];

  swift_unknownObjectRelease();

  sub_29DE93B3C((v0 + 96));
  sub_29DE93B3C((v0 + 136));
  sub_29DE93B3C((v0 + 176));

  return v0;
}

uint64_t sub_29DF98234()
{
  sub_29DF98180();

  return swift_deallocClassInstance();
}

uint64_t sub_29DF9828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_29E2C3714();
  v5[4] = sub_29E2C3704();
  v7 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29DF98324, v7, v6);
}

uint64_t sub_29DF98324()
{
  v1 = v0[3];

  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = v0[2];
    sub_29DE9408C(0, &unk_2A1A5E190, 0x29EDBAC30);
    v4 = v3;
    v5 = v2;
    v6 = sub_29E2C40D4();

    if (v6)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + 56);
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[2];
  *(v1 + 56) = v8;

  v9 = v8;
  sub_29DF980B0();
LABEL_6:
  v10 = v0[1];

  return v10();
}

uint64_t sub_29DF98578(char a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446466;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, &v19);
    v18 = v4;
    v15 = a1;
    v16 = v14;

    *(v10 + 4) = v16;
    a1 = v15;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v15 & 1;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] shouldShowCycleTrackingEducationTileUpdated %{BOOL}d", v10, 0x12u);
    sub_29DE93B3C(v11);
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);

    (*(v5 + 8))(v7, v18);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  *(v2 + 216) = a1 & 1;
  return sub_29DF980B0();
}

void sub_29DF98810(uint64_t a1, void *a2)
{
  v4 = v2[28];
  v5 = v2[9];
  v6 = v2[15];
  v7 = v2[16];
  v8 = sub_29DE966D4(v2 + 12, v6);
  v9 = v5;

  sub_29DF4D268(v5, v8, a2, v2, &off_2A24B6008, v4, v6, v7);
}

id sub_29DF988C0(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Completed onboarding! Setting shouldShowTile to false", v11, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    v16 = v11;
    a1 = v18;
    MEMORY[0x29ED82140](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_29DE966D4((v2 + 176), *(v2 + 200));
  return [a1 dismissViewControllerAnimated:1 completion:{0, sub_29E22AF8C(0)}];
}

uint64_t sub_29DF98B04()
{

  sub_29DE93B3C((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_29DF98B88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

uint64_t sub_29DF98BEC()
{
  type metadata accessor for CycleTrackingFinishSetupTileCell();
  sub_29DF999CC(&qword_2A1819BA8, 255, type metadata accessor for CycleTrackingFinishSetupTileCell, &unk_29E2D9A60);
  return sub_29E2C3B74();
}

uint64_t sub_29DF98C60(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29E2C0AB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0B44();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC7848], v3, v9);
  sub_29E2C0AE4();
  v12 = [objc_opt_self() systemBackgroundColor];
  sub_29E2C0B14();
  sub_29DE9408C(0, &qword_2A1819BB0, 0x29EDC0BA8);
  v13 = sub_29E2C3F34();
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_29DF98F5C(char a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = v4;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446466;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = a1 & 1;
    v23 = a1 & 1;
    v17 = sub_29E2C3464();
    v19 = sub_29DFAA104(v17, v18, &v24);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Received availability update to: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v12, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v5 + 8))(v7, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    v16 = a1 & 1;
  }

  *(v2 + 80) = v16;
  return sub_29DF980B0();
}

uint64_t sub_29DF991B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29DF9828C(a1, v4, v5, v7, v6);
}

void *sub_29DF99270(void *a1, char a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v67 = sub_29E2BEBB4();
  v60 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a8 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v61 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29E2BCC24();
  v65 = *(v68 - 8);
  MEMORY[0x2A1C7C4A8](v68);
  v62 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a9;
  v71[3] = a8;
  v71[4] = a9;
  v21 = sub_29DEBB7E8(v71);
  v59 = v17;
  v22 = *(v17 + 32);
  v58 = v21;
  v64 = a8;
  v22(v21, a4, a8);
  v23 = swift_allocObject();
  *(v23 + 64) = a1;
  *(v23 + 72) = 0;
  *(v23 + 216) = 2;
  *(v23 + 56) = 0;
  *(v23 + 80) = a2;
  *(v23 + 88) = a3;
  sub_29DE9DC34(v71, v23 + 96);
  v69 = a5;
  sub_29DE9DC34(a5, v23 + 136);
  if (a6)
  {
    v24 = a1;
    v25 = a3;
    v26 = a6;
  }

  else
  {
    v27 = objc_allocWithZone(MEMORY[0x29EDC33E0]);
    v28 = a1;
    v26 = [v27 initWithHealthStore_];
  }

  *(v23 + 48) = v26;
  v29 = type metadata accessor for CycleTrackingEducationPromptStore();
  v30 = swift_allocObject();
  v31 = a3;
  swift_unknownObjectRetain();
  v32 = HKLogMenstrualCyclesCategory();
  v33 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v34 = sub_29E2C33A4();
  v35 = [v33 initWithName:v34 loggingCategory:v32];

  v30[2] = v35;
  v30[4] = v31;
  v36 = *MEMORY[0x29EDC32A0];
  v37 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v38 = v31;
  v39 = [v37 initWithCategory:2 domainName:v36 healthStore:v38];
  v30[3] = v39;
  [v39 startObservation_];

  *(v23 + 200) = v29;
  *(v23 + 208) = &off_2A24BFE78;
  *(v23 + 176) = v30;
  v40 = *(v23 + 88);
  type metadata accessor for MenstrualCyclesOnboardingPresentationHandler();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 32) = v40;
  *(v41 + 40) = 0;
  *(v41 + 48) = 2560;
  sub_29E2BE084();
  swift_allocObject();
  v42 = v40;
  *(v41 + 24) = sub_29E2BE064();
  *(v23 + 224) = v41;
  v43 = MEMORY[0x29EDC9E90];
  sub_29DF99968(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v44 = v60;
  v45 = swift_allocObject();
  v57 = xmmword_29E2CAB20;
  *(v45 + 16) = xmmword_29E2CAB20;
  v46 = v62;
  sub_29E2BCC14();
  sub_29E2BCBD4();
  v65 = *(v65 + 8);
  (v65)(v46, v68);
  sub_29E2BEBA4();
  v48 = sub_29E0018F0(v45, 1, v47);
  v49 = type metadata accessor for CycleTrackingFinishSetupItem();
  sub_29DE9DC34(v69, v70);
  v50 = v61;
  v51 = v64;
  (*(v59 + 16))(v61, v58, v64);
  swift_retain_n();
  v52 = v38;
  v53 = sub_29E038374(v52, v50, v70, v49, v51, v63);
  v53[14] = &off_2A24B6040;
  swift_unknownObjectWeakAssign();

  sub_29E2BE5F4();

  sub_29DF99968(0, &unk_2A181B3C0, sub_29DEA7E2C, v43);
  v54 = swift_allocObject();
  *(v54 + 16) = v57;
  *(v54 + 56) = v49;
  *(v54 + 64) = sub_29DF999CC(&qword_2A1819BD8, 255, type metadata accessor for CycleTrackingFinishSetupItem, &unk_29E2D9990);
  *(v54 + 32) = v53;

  sub_29E2BCC14();
  sub_29E2BCBD4();
  (v65)(v46, v68);
  v55 = v66;
  sub_29E2BEBA4();
  sub_29E2BECC4();

  (*(v44 + 8))(v55, v67);
  [v48[6] registerObserver:v48 isUserInitiated:1];
  sub_29DE966D4(v48 + 22, v48[25]);
  *(v48 + 216) = sub_29E22B454();
  [*(*sub_29DE966D4(v48 + 22 v48[25]) + 16)];

  sub_29DE93B3C(v69);
  sub_29DE93B3C(v71);
  return v48;
}

void sub_29DF99968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DF999CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DF99AC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = 0xE000000000000000;
  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](60, 0xE100000000000000);
  swift_getObjectType();
  v5 = sub_29E2C4AE4();
  MEMORY[0x29ED7FCC0](v5);

  MEMORY[0x29ED7FCC0](32, 0xE100000000000000);
  sub_29E2C4664();
  MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2F58B0);
  v6 = [a1 reuseIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v4 = v9;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x29ED7FCC0](v8, v4);

  result = MEMORY[0x29ED7FCC0](62, 0xE100000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

void sub_29DF99C1C(id a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v86 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v79 - v11;
  if (HKShowSensitiveLogItems())
  {
    v84 = v8;
    v85 = v7;
    sub_29E2C04B4();
    v13 = v3;
    v14 = a2;
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A04();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v81 = ObjectType;
      v18 = v17;
      v80 = swift_slowAlloc();
      *&v87.a = v80;
      *v18 = 136446466;
      v19 = v13;
      v20 = [v19 description];
      v82 = a2;
      v21 = v20;
      v22 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v83 = a1;
      v23 = v22;
      v25 = v24;

      v26 = sub_29DFAA104(v23, v25, &v87);

      *(v18 + 4) = v26;
      *(v18 + 12) = 2082;
      v27 = v14;
      v28 = [v27 description];
      v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v31 = v30;

      v32 = v29;
      a1 = v83;
      v33 = sub_29DFAA104(v32, v31, &v87);
      a2 = v82;

      *(v18 + 14) = v33;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%{public}s] Adding logging card: %{public}s", v18, 0x16u);
      v34 = v80;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v34, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    v8 = v84;
    v7 = v85;
    (*(v84 + 8))(v12, v85);
  }

  v35 = [v3 traitCollection];
  v36 = [v35 horizontalSizeClass];

  v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shouldEnableFadingTransitions] = v36 == 1;
  v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController;
  v38 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController];
  if (v38)
  {
    v39 = v38 == a2;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    v55 = *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shadowView];
    sub_29DF9AB84();
    v87.a = 1.0;
    v87.b = 0.0;
    v87.c = 0.0;
    v87.d = 1.0;
    v87.tx = 0.0;
    v87.ty = 0.0;
    [v55 setTransform_];
    [v55 setFrame_];
    CGAffineTransformMakeScale(&v87, *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel], *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel]);
    [v55 setTransform_];
  }

  else if (!v38)
  {
    v40 = [a2 parentViewController];
    v83 = a1;
    if (v40 && (v41 = v40, v40, v41 == a1))
    {
      sub_29E2C04B4();
      v56 = v3;
      v57 = a2;
      v58 = sub_29E2C0504();
      v59 = sub_29E2C3A04();
      v80 = v57;

      LODWORD(v81) = v59;
      v60 = v59;
      v61 = v58;
      if (os_log_type_enabled(v58, v60))
      {
        v62 = swift_slowAlloc();
        v84 = v8;
        v63 = v62;
        v79 = swift_slowAlloc();
        *&v87.a = v79;
        *v63 = 136446466;
        v64 = v56;
        v65 = [v64 description];
        v82 = a2;
        v66 = v65;
        v67 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v85 = v7;
        v69 = v68;

        v70 = sub_29DFAA104(v67, v69, &v87);

        *(v63 + 4) = v70;
        *(v63 + 12) = 2082;
        v71 = v80;
        v72 = [v71 description];
        v73 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v75 = v74;

        v76 = v73;
        a2 = v82;
        v77 = sub_29DFAA104(v76, v75, &v87);

        *(v63 + 14) = v77;
        _os_log_impl(&dword_29DE74000, v61, v81, "[%{public}s] Logging card already has a parent: %{public}s", v63, 0x16u);
        v78 = v79;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v78, -1, -1);
        MEMORY[0x29ED82140](v63, -1, -1);

        (*(v84 + 8))(v86, v85);
      }

      else
      {

        (*(v8 + 8))(v86, v7);
      }

      v42 = 1;
    }

    else
    {
      [a1 addChildViewController_];
      v42 = 0;
    }

    v43 = *&v3[v37];
    *&v3[v37] = a2;
    v44 = a2;

    v45 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shadowView;
    [*&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shadowView] setAutoresizingMask_];
    v46 = [v3 contentView];
    [v46 addSubview_];

    v47 = *&v3[v45];
    v48 = [v44 view];
    if (v48)
    {
      v49 = v48;
      v50 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17RoundedShadowView_roundedView;
      [*&v47[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17RoundedShadowView_roundedView] addSubview_];
      MEMORY[0x29ED807E0](*&v47[v50]);

      if ((v42 & 1) == 0)
      {
        [v44 didMoveToParentViewController_];
      }

      v51 = *&v3[v45];
      sub_29DF9AB84();
      v87.a = 1.0;
      v87.b = 0.0;
      v87.c = 0.0;
      v87.d = 1.0;
      v87.tx = 0.0;
      v87.ty = 0.0;
      [v51 setTransform_];
      [v51 setFrame_];
      CGAffineTransformMakeScale(&v87, *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel], *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel]);
      [v51 setTransform_];

      sub_29DEAC750(0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_29E2CAB20;
      v53 = sub_29E2C08C4();
      v54 = MEMORY[0x29EDC7810];
      *(v52 + 32) = v53;
      *(v52 + 40) = v54;
      sub_29E2C4034();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_29DF9A3E4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v84 - v9;
  *&v12 = MEMORY[0x2A1C7C4A8](v11).n128_u64[0];
  v14 = &v84 - v13;
  v91.receiver = v2;
  v91.super_class = ObjectType;
  objc_msgSendSuper2(&v91, sel_applyLayoutAttributes_, a1, v12);
  sub_29E2C04B4();
  v15 = v2;
  v16 = sub_29E2C0504();
  v17 = sub_29E2C3A04();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v87 = v10;
    v19 = v18;
    v85 = swift_slowAlloc();
    *&v90.a = v85;
    *v19 = 136446210;
    v20 = v15;
    v88 = v6;
    v21 = v20;
    v22 = [v20 description];
    v23 = v5;
    v24 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v86 = v15;
    v25 = a1;
    v27 = v26;

    v6 = v88;
    v28 = v24;
    v5 = v23;
    v29 = sub_29DFAA104(v28, v27, &v90);
    a1 = v25;
    v15 = v86;

    *(v19 + 4) = v29;
    _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Applying the layout attributes in the cell", v19, 0xCu);
    v30 = v85;
    sub_29DE93B3C(v85);
    MEMORY[0x29ED82140](v30, -1, -1);
    v31 = v19;
    v10 = v87;
    MEMORY[0x29ED82140](v31, -1, -1);

    v32 = *(v6 + 1);
    v32(v14, v23);
  }

  else
  {

    v32 = *(v6 + 1);
    v32(v14, v5);
  }

  type metadata accessor for LoggingCardCarouselLayoutAttributes();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    goto LABEL_10;
  }

  v36 = *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel];
  v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_xTranslationFactor;
  v35 = *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_xTranslationFactor];
  v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_alphaValue;
  v34 = *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_alphaValue];
  v39 = *(v33 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_zoomLevel);
  *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel] = v39;
  v40 = *(v33 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_xTranslationFactor);
  *&v15[v37] = v40;
  v41 = *(v33 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35LoggingCardCarouselLayoutAttributes_alphaValue);
  *&v15[v38] = v41;
  if (vabdd_f64(v36, v39) > 0.001)
  {
    goto LABEL_10;
  }

  v35 = vabdd_f64(v35, v40);
  if (v35 > 0.001)
  {
    goto LABEL_10;
  }

  v34 = vabdd_f64(v34, v41);
  if (v34 > 0.001)
  {
    goto LABEL_10;
  }

  v42 = objc_opt_self();
  v43 = a1;
  v44 = [v42 sharedBehavior];
  if (!v44)
  {
    __break(1u);
    return;
  }

  v45 = v44;
  v46 = [v44 isiPad];

  if (v46)
  {
LABEL_10:
    v47 = *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController];
    if (v47 && (v48 = [v47 view]) != 0)
    {
      v49 = v48;
      v50 = [v48 superview];
      if (v50)
      {
        v51 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shadowView;
        v52 = *(*&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shadowView] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17RoundedShadowView_roundedView);
        v53 = v50;

        if (v53 == v52)
        {
          v83 = *&v15[v51];
          sub_29DF9AB84();
          v90.a = 1.0;
          v90.b = 0.0;
          v90.c = 0.0;
          v90.d = 1.0;
          v90.tx = 0.0;
          v90.ty = 0.0;
          [v83 setTransform_];
          [v83 setFrame_];
          CGAffineTransformMakeScale(&v90, *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel], *&v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel]);
          [v83 setTransform_];

          return;
        }
      }

      v89 = v5;
      sub_29E2C04B4();
      v54 = v15;
      v55 = sub_29E2C0504();
      v56 = sub_29E2C3A04();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v90.a = v58;
        *v57 = 136446210;
        v59 = v54;
        v60 = [v59 description];
        v87 = v10;
        v88 = v6;
        v61 = v60;
        v62 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v63 = v32;
        v65 = v64;

        v66 = sub_29DFAA104(v62, v65, &v90);

        *(v57 + 4) = v66;
        _os_log_impl(&dword_29DE74000, v55, v56, "[%{public}s] We skipped modifying someone else's subview. Good for us!", v57, 0xCu);
        sub_29DE93B3C(v58);
        MEMORY[0x29ED82140](v58, -1, -1);
        MEMORY[0x29ED82140](v57, -1, -1);

        v63(v87, v89);
        return;
      }

      v81 = v10;
      v82 = v89;
    }

    else
    {
      v67 = v89;
      sub_29E2C04B4();
      v68 = v15;
      v69 = sub_29E2C0504();
      v70 = sub_29E2C3A04();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v90.a = v72;
        *v71 = 136446210;
        v73 = v68;
        v74 = [v73 description];
        v88 = v32;
        v75 = v5;
        v76 = v74;
        v77 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v79 = v78;

        v80 = sub_29DFAA104(v77, v79, &v90);

        *(v71 + 4) = v80;
        _os_log_impl(&dword_29DE74000, v69, v70, "[%{public}s] Applying layout attributes before we have a view controller set", v71, 0xCu);
        sub_29DE93B3C(v72);
        MEMORY[0x29ED82140](v72, -1, -1);
        MEMORY[0x29ED82140](v71, -1, -1);

        v88(v89, v75);
        return;
      }

      v81 = v67;
      v82 = v5;
    }

    v32(v81, v82);
  }
}

void sub_29DF9AB84()
{
  v1 = 0.35;
  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_alphaValue) > 0.35)
  {
    v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_alphaValue);
  }

  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shouldEnableFadingTransitions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_alphaValue);
  }

  else
  {
    v2 = v1;
  }

  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController;
  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController);
  if (v4)
  {
    [*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView) setAlpha_];
    v5 = *(v0 + v3);
    if (v5)
    {
      [*(*(v5 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_headerView) + qword_2A1818CE8) setAlpha_];
      v6 = *(v0 + v3);
      if (v6)
      {
        v7 = v6;
        v8 = v0;
        v9 = sub_29DEBEA8C();

        [v9 setAlpha_];
        if (*(v8 + v3))
        {
          type metadata accessor for LoggingCardInfoButtonHeaderView(0);
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v11 = *(v10 + qword_2A1818D00);

            [v11 setAlpha_];
          }
        }
      }
    }
  }
}

double sub_29DF9ACF0(void *a1)
{
  [v1 bounds];
  Width = CGRectGetWidth(v10);
  [v1 bounds];
  [a1 setFrame_];
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_xTranslationFactor;
  v5 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_xTranslationFactor];
  [v1 bounds];
  v6 = CGRectGetWidth(v12);
  if (v5 >= 0.0)
  {
    v8 = v6 * *&v1[v4];
  }

  else
  {
    [a1 bounds];
    v7 = v6 - CGRectGetWidth(v13);
    [v1 bounds];
    v8 = v7 + CGRectGetWidth(v14) * *&v1[v4];
  }

  [v1 bounds];
  CGRectGetWidth(v15);
  [v1 bounds];
  CGRectGetHeight(v16);
  return v8;
}

id sub_29DF9AE00(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_xTranslationFactor] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_alphaValue] = 0x3FF0000000000000;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shadowView;
  type metadata accessor for RoundedShadowView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shouldEnableFadingTransitions] = 1;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_29DF9AF0C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_zoomLevel] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_xTranslationFactor] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_alphaValue] = 0x3FF0000000000000;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shadowView;
  type metadata accessor for RoundedShadowView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shouldEnableFadingTransitions] = 1;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_29DF9B080(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_shouldEnableFadingTransitions) = v3 == 1;
}

uint64_t sub_29DF9B104(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v11 = &v16 - v10;
  (*(v5 + 16))(&v16 - v10, a1, v4, v9);
  v12 = [v2 startOfDayMidnight];
  sub_29E2BCB44();

  LOBYTE(v12) = sub_29E2BCB24();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(v11, v4);
    return 0;
  }

  else
  {
    v15 = [v2 endOfDayMidnight];
    sub_29E2BCB44();

    LOBYTE(v15) = sub_29E2BCB24();
    v13(v7, v4);
    v13(v11, v4);
    if (v15)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t type metadata accessor for PregnancyTimePeriodInputCell(uint64_t a1)
{
  result = qword_2A1819C10;
  if (!qword_2A1819C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DF9B34C(uint64_t a1)
{
  sub_29DF9DCA0(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29DF9B40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v105 = a2;
  sub_29DF9DA20(0, a3);
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF9D884(0);
  v104 = v7;
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF9D508(0, v8);
  v91 = *(v11 - 8);
  v92 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF9D468(0);
  v15 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x29EDBC7E8];
  sub_29DF9D0A0(0, &qword_2A1819D18, sub_29DF9D058, sub_29DF9D884, MEMORY[0x29EDBC7E8]);
  v102 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v103 = &v90 - v20;
  sub_29DF9D0A0(0, &qword_2A1819D20, sub_29DF9D124, sub_29DF9D468, v18);
  v96 = v21;
  v22 = MEMORY[0x2A1C7C4A8](v21);
  v97 = &v90 - v23;
  sub_29DF9D058(0, v22);
  v101 = v24;
  MEMORY[0x2A1C7C4A8](v24);
  v98 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E2C1BB4();
  v99 = *(v26 - 8);
  v100 = v26;
  v27 = MEMORY[0x2A1C7C4A8](v26);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF9D1C4(0, v27);
  v31 = v30;
  v90 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF9D124(0);
  v95 = v34;
  MEMORY[0x2A1C7C4A8](v34);
  v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PregnancyTimePeriodInputCell(0);
  if (*(a1 + *(v37 + 20)))
  {
    if (*(a1 + *(v37 + 20)) == 1)
    {
      sub_29E192BC4(1u);
      sub_29DF9DCA0(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_29E2CAB20;
      sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
      v94 = v15;
      sub_29E2C2A24();
      v39 = v106;
      swift_getKeyPath();
      v106 = v39;
      sub_29DF9D420(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
      sub_29E2BCFE4();

      v40 = *(v39 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeDays);

      v41 = MEMORY[0x29EDC9C10];
      *(v38 + 56) = MEMORY[0x29EDC9BA8];
      *(v38 + 64) = v41;
      *(v38 + 32) = v40;
      v42 = sub_29E2C33B4();
      v44 = v43;

      v106 = v42;
      v107 = v44;
      MEMORY[0x2A1C7C4A8](v45);
      *(&v90 - 2) = a1;
      sub_29DF9D5B8(0);
      sub_29DF9D420(&qword_2A1819CC8, sub_29DF9D5B8, MEMORY[0x29EDBC280]);
      sub_29DE9DE68();
      sub_29E2C21F4();
      sub_29E2C1BA4();
      sub_29DF9D420(&qword_2A1819CD0, sub_29DF9D508, MEMORY[0x29EDBC0F8]);
      sub_29DF9D420(&qword_2A1819C80, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
      v46 = v92;
      v47 = v100;
      sub_29E2C2374();
      (*(v99 + 8))(v29, v47);
      v48 = [objc_opt_self() labelColor];
      v49 = sub_29E2C2654();
      (*(v91 + 8))(v13, v46);
      KeyPath = swift_getKeyPath();
      v51 = &v17[*(v94 + 36)];
      *v51 = KeyPath;
      v51[1] = v49;
      sub_29DF9E1B4(v17, v97, sub_29DF9D468);
      swift_storeEnumTagMultiPayload();
      sub_29DF9DD8C();
      sub_29DF9DEEC();
      v52 = v98;
      sub_29E2C1C74();
      sub_29DF9E1B4(v52, v103, sub_29DF9D058);
      swift_storeEnumTagMultiPayload();
      sub_29DF9DD0C(v53);
      sub_29DF9E04C();
      sub_29E2C1C74();
      sub_29DF9E21C(v52, sub_29DF9D058);
      v54 = sub_29DF9D468;
      v55 = v17;
    }

    else
    {
      sub_29E192BC4(2u);
      sub_29DF9DCA0(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_29E2CAB20;
      sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
      sub_29E2C2A24();
      v73 = v106;
      swift_getKeyPath();
      v106 = v73;
      sub_29DF9D420(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
      sub_29E2BCFE4();

      v74 = *(v73 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks);

      v75 = MEMORY[0x29EDC9C10];
      *(v72 + 56) = MEMORY[0x29EDC9BA8];
      *(v72 + 64) = v75;
      *(v72 + 32) = v74;
      v76 = sub_29E2C33B4();
      v78 = v77;

      v106 = v76;
      v107 = v78;
      MEMORY[0x2A1C7C4A8](v79);
      *(&v90 - 2) = a1;
      sub_29DF9DAF8(0, &qword_2A1819CF0, sub_29DF9DBA8, &qword_2A1819D00, sub_29DF9DBA8);
      sub_29DF9D3CC(&qword_2A1819D08, &qword_2A1819CF0, sub_29DF9DBA8, &qword_2A1819D00, v80);
      sub_29DE9DE68();
      sub_29E2C21F4();
      sub_29E2C1BA4();
      sub_29DF9D420(&qword_2A1819D10, sub_29DF9DA20, MEMORY[0x29EDBC0F8]);
      sub_29DF9D420(&qword_2A1819C80, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
      v81 = v94;
      v82 = v100;
      sub_29E2C2374();
      (*(v99 + 8))(v29, v82);
      v83 = [objc_opt_self() labelColor];
      v84 = sub_29E2C2654();
      (*(v93 + 8))(v6, v81);
      v85 = swift_getKeyPath();
      v86 = v103;
      v87 = &v10[*(v104 + 36)];
      *v87 = v85;
      v87[1] = v84;
      sub_29DF9E1B4(v10, v86, sub_29DF9D884);
      swift_storeEnumTagMultiPayload();
      sub_29DF9DD0C(v88);
      sub_29DF9E04C();
      sub_29E2C1C74();
      v54 = sub_29DF9D884;
      v55 = v10;
    }
  }

  else
  {
    v93 = sub_29E192BC4(0);
    sub_29DF9DCA0(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_29E2CAB20;
    sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    v94 = v15;
    sub_29E2C2A24();
    v57 = v106;
    swift_getKeyPath();
    v106 = v57;
    sub_29DF9D420(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
    sub_29E2BCFE4();

    v58 = *(v57 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__embryonicAgeDays);

    v59 = MEMORY[0x29EDC9C10];
    *(v56 + 56) = MEMORY[0x29EDC9BA8];
    *(v56 + 64) = v59;
    *(v56 + 32) = v58;
    v60 = sub_29E2C33B4();
    v62 = v61;

    v106 = v60;
    v107 = v62;
    MEMORY[0x2A1C7C4A8](v63);
    *(&v90 - 2) = a1;
    sub_29DF9DAF8(0, &qword_2A1819C50, sub_29DF9D29C, &qword_2A1819C68, sub_29DF9D29C);
    sub_29DF9D3CC(&qword_2A1819C70, &qword_2A1819C50, sub_29DF9D29C, &qword_2A1819C68, v64);
    sub_29DE9DE68();
    sub_29E2C21F4();
    sub_29E2C1BA4();
    sub_29DF9D420(&qword_2A1819C78, sub_29DF9D1C4, MEMORY[0x29EDBC0F8]);
    sub_29DF9D420(&qword_2A1819C80, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
    v65 = v100;
    sub_29E2C2374();
    (*(v99 + 8))(v29, v65);
    v66 = [objc_opt_self() labelColor];
    v67 = sub_29E2C2654();
    (*(v90 + 8))(v33, v31);
    v68 = swift_getKeyPath();
    v69 = &v36[*(v95 + 36)];
    *v69 = v68;
    v69[1] = v67;
    sub_29DF9E1B4(v36, v97, sub_29DF9D124);
    swift_storeEnumTagMultiPayload();
    sub_29DF9DD8C();
    sub_29DF9DEEC();
    v70 = v98;
    sub_29E2C1C74();
    sub_29DF9E1B4(v70, v103, sub_29DF9D058);
    swift_storeEnumTagMultiPayload();
    sub_29DF9DD0C(v71);
    sub_29DF9E04C();
    sub_29E2C1C74();
    sub_29DF9E21C(v70, sub_29DF9D058);
    v54 = sub_29DF9D124;
    v55 = v36;
  }

  return sub_29DF9E21C(v55, v54);
}

uint64_t sub_29DF9C4B4(uint64_t a1)
{
  sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PregnancyTimePeriodInputCell(0);
  v14 = sub_29E192DDC(*(a1 + *(v7 + 20)));
  v15 = v8;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v4 + 8))(v6, v3);
  v10 = v12;
  v11 = v13;
  sub_29DF9D29C(0);
  sub_29DF9DC34(&qword_2A1819C68, sub_29DF9D29C);
  sub_29DE9DE68();
  return sub_29E2C28A4();
}

uint64_t sub_29DF9C688()
{
  v5 = &unk_2A24AED90;
  KeyPath = swift_getKeyPath();
  sub_29DF9D73C(0, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
  v2 = v1;
  v3 = sub_29DF9D350();
  return sub_29E2C29A4(&v5, KeyPath, sub_29DF9E3F8, 0, v2, MEMORY[0x29EDBCA18], v3, MEMORY[0x29EDC9BB8], MEMORY[0x29EDBCA10]);
}

uint64_t sub_29DF9C754(uint64_t a1)
{
  sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v10[-v5];
  v7 = type metadata accessor for PregnancyTimePeriodInputCell(0);
  v16 = sub_29E192DDC(*(a1 + *(v7 + 20)));
  v17 = v8;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v4 + 8))(v6, v3);
  v12 = v14;
  v13 = v15;
  v11 = a1;
  sub_29DF9D64C(0);
  sub_29DF9D80C();
  sub_29DE9DE68();
  return sub_29E2C28A4();
}

uint64_t sub_29DF9C91C()
{
  sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  swift_getKeyPath();
  sub_29DF9D420(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  v0 = *(v11[0] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel___gestationalAgeWeeks);

  if (qword_2A1816FD8 != -1)
  {
    swift_once();
  }

  v1 = v0 != qword_2A1840FC8 && v0 == 0;
  v2 = 6;
  if (v0 == qword_2A1840FC8)
  {
    v2 = 0;
  }

  v11[0] = v1;
  v11[1] = v2;
  KeyPath = swift_getKeyPath();
  sub_29DF9D6E4();
  v5 = v4;
  sub_29DED98BC(0);
  v7 = v6;
  v8 = sub_29DF9D78C();
  v9 = sub_29DED9B74();
  return sub_29E2C29A4(v11, KeyPath, sub_29DF9CAE4, 0, v5, v7, v8, MEMORY[0x29EDC9BB8], v9);
}

uint64_t sub_29DF9CAE4@<X0>(uint64_t a1@<X8>)
{
  sub_29DEA68FC();
  sub_29E2C43C4();
  sub_29DE9DE68();
  v2 = sub_29E2C2294();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_29DF9CB8C(uint64_t a1)
{
  sub_29DF9DCA0(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v10 - v5;
  v7 = type metadata accessor for PregnancyTimePeriodInputCell(0);
  v14 = sub_29E192DDC(*(a1 + *(v7 + 20)));
  v15 = v8;
  sub_29E2C2A34();
  swift_getKeyPath();
  sub_29E2C2A54();

  (*(v4 + 8))(v6, v3);
  v10 = v12;
  v11 = v13;
  sub_29DF9DBA8(0);
  sub_29DF9DC34(&qword_2A1819D00, sub_29DF9DBA8);
  sub_29DE9DE68();
  return sub_29E2C28A4();
}

void sub_29DF9CD60(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_29DF9D420(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel, &unk_29E2DA0F0);
  sub_29E2BCFE4();

  *a4 = *(v6 + *a3);
}

uint64_t sub_29DF9CE14()
{
  if (qword_2A1816FE0 != -1)
  {
    swift_once();
  }

  v5 = xmmword_2A1840FD0;
  KeyPath = swift_getKeyPath();
  sub_29DF9D6E4();
  v2 = v1;
  v3 = sub_29DF9D78C();
  return sub_29E2C29A4(&v5, KeyPath, sub_29DF9E3F8, 0, v2, MEMORY[0x29EDBCA18], v3, MEMORY[0x29EDC9BB8], MEMORY[0x29EDBCA10]);
}

uint64_t sub_29DF9CEF0@<X0>(uint64_t a1@<X8>)
{
  sub_29DEA68FC();
  sub_29E2C43C4();
  sub_29DE9DE68();
  result = sub_29E2C2294();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29DF9CF64@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_29E2C1AA4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_29DF9CFAC(0, v4);
  return sub_29DF9B40C(v2, a2 + *(v5 + 44), v6);
}

void sub_29DF9CFAC(uint64_t a1, __n128 a2)
{
  if (!qword_2A1819C20)
  {
    sub_29DF9D0A0(255, &qword_2A1819C28, sub_29DF9D058, sub_29DF9D884, MEMORY[0x29EDBC7F0]);
    v2 = sub_29E2C15D4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1819C20);
    }
  }
}

void sub_29DF9D0A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29DF9D124(uint64_t a1)
{
  if (!qword_2A1819C38)
  {
    sub_29DF9D924(255, &qword_2A1819C40, sub_29DF9D1C4, &qword_2A1819C78, sub_29DF9D1C4);
    sub_29DED9940(255);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819C38);
    }
  }
}

void sub_29DF9D1C4(uint64_t a1, __n128 a2)
{
  if (!qword_2A1819C48)
  {
    sub_29DF9DAF8(255, &qword_2A1819C50, sub_29DF9D29C, &qword_2A1819C68, sub_29DF9D29C);
    sub_29DF9D3CC(&qword_2A1819C70, &qword_2A1819C50, sub_29DF9D29C, &qword_2A1819C68, v2);
    v3 = sub_29E2C21E4();
    if (!v4)
    {
      atomic_store(v3, &qword_2A1819C48);
    }
  }
}

void sub_29DF9D29C(uint64_t a1)
{
  if (!qword_2A1819C58)
  {
    sub_29DF9D73C(255, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29DF9D350();
    v1 = sub_29E2C29C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819C58);
    }
  }
}

unint64_t sub_29DF9D350()
{
  result = qword_2A1819C60;
  if (!qword_2A1819C60)
  {
    sub_29DF9D73C(255, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819C60);
  }

  return result;
}

uint64_t sub_29DF9D3CC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_29DF9DAF8(255, a2, a3, a4, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DF9D420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29DF9D468(uint64_t a1)
{
  if (!qword_2A1819C88)
  {
    sub_29DF9D924(255, &qword_2A1819C90, sub_29DF9D508, &qword_2A1819CD0, sub_29DF9D508);
    sub_29DED9940(255);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819C88);
    }
  }
}

void sub_29DF9D508(uint64_t a1, __n128 a2)
{
  if (!qword_2A1819C98)
  {
    sub_29DF9D5B8(255);
    sub_29DF9D420(&qword_2A1819CC8, sub_29DF9D5B8, MEMORY[0x29EDBC280]);
    v2 = sub_29E2C21E4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1819C98);
    }
  }
}

void sub_29DF9D5B8(uint64_t a1)
{
  if (!qword_2A1819CA0)
  {
    sub_29DF9D64C(255);
    sub_29DF9D80C();
    v1 = sub_29E2C28B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819CA0);
    }
  }
}

void sub_29DF9D64C(uint64_t a1)
{
  if (!qword_2A1819CA8)
  {
    sub_29DF9D6E4();
    sub_29DED98BC(255);
    sub_29DF9D78C();
    v1 = sub_29E2C29C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819CA8);
    }
  }
}

void sub_29DF9D6E4()
{
  if (!qword_2A1819CB0)
  {
    v0 = sub_29E2C32E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1819CB0);
    }
  }
}

void sub_29DF9D73C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29DF9D78C()
{
  result = qword_2A1819CB8;
  if (!qword_2A1819CB8)
  {
    sub_29DF9D6E4();
    sub_29DEDBA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819CB8);
  }

  return result;
}

unint64_t sub_29DF9D80C()
{
  result = qword_2A1819CC0;
  if (!qword_2A1819CC0)
  {
    sub_29DF9D64C(255);
    sub_29DED9B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819CC0);
  }

  return result;
}

void sub_29DF9D884(uint64_t a1)
{
  if (!qword_2A1819CD8)
  {
    sub_29DF9D924(255, &qword_2A1819CE0, sub_29DF9DA20, &qword_2A1819D10, sub_29DF9DA20);
    sub_29DED9940(255);
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819CD8);
    }
  }
}

void sub_29DF9D924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E2C1BB4();
    sub_29DF9D420(a4, a5, MEMORY[0x29EDBC0F8]);
    sub_29DF9D420(&qword_2A1819C80, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29DF9DA20(uint64_t a1, __n128 a2)
{
  if (!qword_2A1819CE8)
  {
    sub_29DF9DAF8(255, &qword_2A1819CF0, sub_29DF9DBA8, &qword_2A1819D00, sub_29DF9DBA8);
    sub_29DF9D3CC(&qword_2A1819D08, &qword_2A1819CF0, sub_29DF9DBA8, &qword_2A1819D00, v2);
    v3 = sub_29E2C21E4();
    if (!v4)
    {
      atomic_store(v3, &qword_2A1819CE8);
    }
  }
}

void sub_29DF9DAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29DF9DC34(a4, a5);
    v8 = sub_29E2C28B4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DF9DBA8(uint64_t a1)
{
  if (!qword_2A1819CF8)
  {
    sub_29DF9D6E4();
    sub_29DF9D78C();
    v1 = sub_29E2C29C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819CF8);
    }
  }
}

uint64_t sub_29DF9DC34(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_29DF9DCA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29DF9DD0C(__n128 a1)
{
  result = qword_2A1819D28;
  if (!qword_2A1819D28)
  {
    sub_29DF9D058(255, a1);
    sub_29DF9DD8C();
    sub_29DF9DEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819D28);
  }

  return result;
}

unint64_t sub_29DF9DD8C()
{
  result = qword_2A1819D30;
  if (!qword_2A1819D30)
  {
    sub_29DF9D124(255);
    sub_29DF9D1C4(255, v1);
    sub_29E2C1BB4();
    sub_29DF9D420(&qword_2A1819C78, sub_29DF9D1C4, MEMORY[0x29EDBC0F8]);
    sub_29DF9D420(&qword_2A1819C80, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
    swift_getOpaqueTypeConformance2();
    sub_29DF9D420(&qword_2A1818520, sub_29DED9940, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819D30);
  }

  return result;
}

unint64_t sub_29DF9DEEC()
{
  result = qword_2A1819D38;
  if (!qword_2A1819D38)
  {
    sub_29DF9D468(255);
    sub_29DF9D508(255, v1);
    sub_29E2C1BB4();
    sub_29DF9D420(&qword_2A1819CD0, sub_29DF9D508, MEMORY[0x29EDBC0F8]);
    sub_29DF9D420(&qword_2A1819C80, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
    swift_getOpaqueTypeConformance2();
    sub_29DF9D420(&qword_2A1818520, sub_29DED9940, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819D38);
  }

  return result;
}

unint64_t sub_29DF9E04C()
{
  result = qword_2A1819D40;
  if (!qword_2A1819D40)
  {
    sub_29DF9D884(255);
    sub_29DF9DA20(255, v1);
    sub_29E2C1BB4();
    sub_29DF9D420(&qword_2A1819D10, sub_29DF9DA20, MEMORY[0x29EDBC0F8]);
    sub_29DF9D420(&qword_2A1819C80, MEMORY[0x29EDBBFE0], MEMORY[0x29EDBBFD8]);
    swift_getOpaqueTypeConformance2();
    sub_29DF9D420(&qword_2A1818520, sub_29DED9940, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819D40);
  }

  return result;
}

uint64_t sub_29DF9E1B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DF9E21C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DF9E28C(uint64_t a1)
{
  if (!qword_2A1819D50)
  {
    sub_29DF9D0A0(255, &qword_2A1819C28, sub_29DF9D058, sub_29DF9D884, MEMORY[0x29EDBC7F0]);
    sub_29DF9E334();
    v1 = sub_29E2C2884();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819D50);
    }
  }
}

unint64_t sub_29DF9E334()
{
  result = qword_2A1819D58;
  if (!qword_2A1819D58)
  {
    sub_29DF9D0A0(255, &qword_2A1819C28, sub_29DF9D058, sub_29DF9D884, MEMORY[0x29EDBC7F0]);
    sub_29DF9DD0C(v1);
    sub_29DF9E04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819D58);
  }

  return result;
}

uint64_t sub_29DF9E3FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  v94 = v4;
  v95 = v5;
  MEMORY[0x2A1C7C4A8](v4);
  v92 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v89 - v8;
  MEMORY[0x2A1C7C4A8](v10);
  v90 = &v89 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v89 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v91 = &v89 - v16;
  v17 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context];
  result = swift_beginAccess();
  v19 = *(v17 + 3);
  if (!v19)
  {
    __break(1u);
    goto LABEL_29;
  }

  v20 = sub_29DE966D4(v17, *(v17 + 3));
  v21 = *(v19 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v22);
  v93 = sub_29E2BF4C4();
  v26 = v25;
  (*(v21 + 8))(v24, v19);
  if (v26 >> 60 != 15)
  {
    sub_29DFA0308(a1, v97, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808]);
    if (v98)
    {
      sub_29DE966D4(v97, v98);
      v35 = sub_29E2BF4C4();
      v37 = v36;
      sub_29DE93B3C(v97);
      v38 = v94;
      if (v37 >> 60 != 15)
      {
        if (sub_29DFA00E4(v35, v37, v93, v26))
        {
          v39 = v91;
          sub_29E2C04B4();
          v40 = v2;
          v41 = sub_29E2C0504();
          v42 = sub_29E2C3A34();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v97[0] = v44;
            *v43 = 136446210;
            ObjectType = swift_getObjectType();
            sub_29DF9FBD0();
            v45 = sub_29E2C3424();
            v47 = v38;
            v48 = sub_29DFAA104(v45, v46, v97);

            *(v43 + 4) = v48;
            _os_log_impl(&dword_29DE74000, v41, v42, "[%{public}s] Received identical userData", v43, 0xCu);
            sub_29DE93B3C(v44);
            MEMORY[0x29ED82140](v44, -1, -1);
            MEMORY[0x29ED82140](v43, -1, -1);
            sub_29DF1DD38(v35, v37);
            sub_29DF1DD38(v93, v26);

            return (*(v95 + 8))(v91, v47);
          }

          else
          {
            sub_29DF1DD38(v35, v37);
            sub_29DF1DD38(v93, v26);

            return (*(v95 + 8))(v39, v38);
          }
        }

        sub_29DF1DD38(v35, v37);
      }
    }

    else
    {
      sub_29DEF95F0(v97, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808]);
      v38 = v94;
    }

    sub_29E2C04B4();
    v49 = v2;
    v50 = sub_29E2C0504();
    v51 = sub_29E2C3A34();

    v52 = os_log_type_enabled(v50, v51);
    v91 = v49;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v97[0] = v54;
      *v53 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DF9FBD0();
      v55 = sub_29E2C3424();
      v57 = v38;
      v58 = v26;
      v59 = sub_29DFAA104(v55, v56, v97);

      *(v53 + 4) = v59;
      v26 = v58;
      v38 = v57;
      _os_log_impl(&dword_29DE74000, v50, v51, "[%{public}s] Received userData from context", v53, 0xCu);
      sub_29DE93B3C(v54);
      MEMORY[0x29ED82140](v54, -1, -1);
      MEMORY[0x29ED82140](v53, -1, -1);

      v60 = *(v95 + 8);
      v60(v14, v57);
    }

    else
    {

      v60 = *(v95 + 8);
      v60(v14, v38);
    }

    sub_29DE9408C(0, &qword_2A1A61A18, 0x29EDBA000);
    sub_29DF9FC14(0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_29E2CAB20;
    *(v61 + 32) = sub_29DE9408C(0, &qword_2A1A5E0A0, 0x29EDC3370);
    sub_29E2C3CC4();

    v62 = v91;
    if (v98)
    {
      result = swift_dynamicCast();
      if (result)
      {
        v63 = *(v17 + 3);
        if (!v63)
        {
LABEL_30:
          __break(1u);
          return result;
        }

        v64 = ObjectType;
        v65 = sub_29DE966D4(v17, *(v17 + 3));
        v66 = *(v63 - 8);
        v67 = MEMORY[0x2A1C7C4A8](v65);
        v69 = &v89 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v66 + 16))(v69, v67);
        v70 = sub_29E2BF484();
        (*(v66 + 8))(v69, v63);
        v71 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
        type metadata accessor for LastMenstrualPeriodViewModel(0);
        swift_allocObject();
        v72 = v64;
        v73 = sub_29E0CA8E4(v72, v70, v71);

        sub_29E079C74(v73);
        result = sub_29DFA0308(v17, v97, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808]);
        if (v98)
        {
          MenstrualPeriodViewControllerEventHandler = type metadata accessor for LastMenstrualPeriodViewControllerEventHandler();
          swift_allocObject();
          v75 = v62;
          v76 = sub_29DFDA37C(v97, v75);

          v98 = MenstrualPeriodViewControllerEventHandler;
          v99 = &off_2A24B6F80;
          sub_29DF1DD38(v93, v26);
          v97[0] = v76;
          v77 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_eventHandler;
          swift_beginAccess();
          sub_29DFA024C(v97, &v75[v77]);
          return swift_endAccess();
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      sub_29DEC0CB4(v97);
    }

    sub_29E079C74(0);
    v78 = v90;
    sub_29E2C04B4();
    v79 = v62;
    v80 = sub_29E2C0504();
    v81 = sub_29E2C3A14();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = v60;
      v84 = swift_slowAlloc();
      v97[0] = v84;
      *v82 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DF9FBD0();
      v85 = sub_29E2C3424();
      v87 = v78;
      v88 = sub_29DFAA104(v85, v86, v97);

      *(v82 + 4) = v88;
      _os_log_impl(&dword_29DE74000, v80, v81, "[%{public}s] context.userData did not contain Cycle", v82, 0xCu);
      sub_29DE93B3C(v84);
      MEMORY[0x29ED82140](v84, -1, -1);
      MEMORY[0x29ED82140](v82, -1, -1);
      sub_29DF1DD38(v93, v26);

      return v83(v87, v38);
    }

    else
    {
      sub_29DF1DD38(v93, v26);

      return (v60)(v78, v38);
    }
  }

  sub_29E079C74(0);
  sub_29E2C04B4();
  v27 = v2;
  v28 = sub_29E2C0504();
  v29 = sub_29E2C3A14();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v97[0] = v31;
    *v30 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29DF9FBD0();
    v32 = sub_29E2C3424();
    v34 = sub_29DFAA104(v32, v33, v97);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] context.userData is missing", v30, 0xCu);
    sub_29DE93B3C(v31);
    MEMORY[0x29ED82140](v31, -1, -1);
    MEMORY[0x29ED82140](v30, -1, -1);
  }

  return (*(v95 + 8))(v9, v94);
}

void (*sub_29DF9F0AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_29DFA0308(v1 + v5, v4, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808]);
  return sub_29DF9F15C;
}

void sub_29DF9F15C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  v5 = MEMORY[0x29EDC2808];
  if (a2)
  {
    sub_29DFA0308(*a1, v2 + 40, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808]);
    sub_29DFA0308(v3 + v4, v2 + 80, &qword_2A1A61B90, &qword_2A1A61B98, v5);
    swift_beginAccess();
    sub_29DF45B18(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29DF9E3FC(v2 + 80);
    sub_29DEF95F0(v2 + 80, &qword_2A1A61B90, &qword_2A1A61B98, v5);
  }

  else
  {
    sub_29DFA0308(v3 + v4, v2 + 40, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808]);
    swift_beginAccess();
    sub_29DF45B18(v2, v3 + v4);
    swift_endAccess();
    sub_29DF9E3FC(v2 + 40);
  }

  sub_29DEF95F0(v2 + 40, &qword_2A1A61B90, &qword_2A1A61B98, v5);
  sub_29DEF95F0(v2, &qword_2A1A61B90, &qword_2A1A61B98, v5);

  free(v2);
}

uint64_t sub_29DF9F4C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
  swift_beginAccess();
  return sub_29DFA0308(v1 + v3, a1, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808]);
}

uint64_t sub_29DF9F538(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LastMenstrualPeriodTileViewController_context;
  swift_beginAccess();
  v4 = MEMORY[0x29EDC2808];
  sub_29DFA0308(v1 + v3, v6, &qword_2A1A61B90, &qword_2A1A61B98, MEMORY[0x29EDC2808]);
  swift_beginAccess();
  sub_29DF45B18(a1, v1 + v3);
  swift_endAccess();
  sub_29DF9E3FC(v6);
  sub_29DEF95F0(a1, &qword_2A1A61B90, &qword_2A1A61B98, v4);
  return sub_29DEF95F0(v6, &qword_2A1A61B90, &qword_2A1A61B98, v4);
}

void (*sub_29DF9F614(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29DF9F0AC(v2);
  return sub_29DF61DA4;
}

uint64_t sub_29DF9F688(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_29E2BFB94();
}

uint64_t sub_29DF9F6C4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_29E2BFB84();
}

void sub_29DF9F700()
{
  swift_getObjectType();

  JUMPOUT(0x29ED7C370);
}

uint64_t sub_29DF9F73C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_29E2BFBB4();
}

uint64_t sub_29DF9F7E8(uint64_t a1)
{
  v2 = sub_29DFA02C8(&unk_2A1819D90, &unk_29E2D61C8);

  return MEMORY[0x2A1C62C70](a1, v2);
}

uint64_t sub_29DF9F850()
{
  if (*(*v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel))
  {
    return sub_29E0CAD08();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29DF9F890()
{
  v1 = sub_29E2BCC94();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCEA4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_eventHandler;
  swift_beginAccess();
  sub_29DFA0308(v0 + v9, v17, &qword_2A1819D80, &qword_2A1819D88, &protocol descriptor for LastMenstrualPeriodEventHandler);
  if (!v18)
  {
    return sub_29DEF95F0(v17, &qword_2A1819D80, &qword_2A1819D88, &protocol descriptor for LastMenstrualPeriodEventHandler);
  }

  sub_29DE9DC34(v17, v16);
  sub_29DEF95F0(v17, &qword_2A1819D80, &qword_2A1819D88, &protocol descriptor for LastMenstrualPeriodEventHandler);
  v10 = *sub_29DE966D4(v16, v16[3]);
  (*(v2 + 104))(v4, *MEMORY[0x29EDB9C78], v1);
  sub_29E2BCCA4();
  (*(v2 + 8))(v4, v1);
  v11 = sub_29E2BCD84();
  (*(v6 + 8))(v8, v5);
  v12 = HKMCTodayIndex();

  v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  [*(v10 + 24) setLastMenstrualPeriodDismissalDay_];

  return sub_29DE93B3C(v16);
}

uint64_t sub_29DF9FB2C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_29E2BF454();
}

unint64_t sub_29DF9FBD0()
{
  result = qword_2A1819D78;
  if (!qword_2A1819D78)
  {
    type metadata accessor for LastMenstrualPeriodTileViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1819D78);
  }

  return result;
}

void sub_29DF9FC14(uint64_t a1)
{
  if (!qword_2A1A619A0)
  {
    sub_29DF80C48();
    v1 = sub_29E2C48E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A619A0);
    }
  }
}

uint64_t sub_29DF9FC6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_29E2BC4E4();
    if (v10)
    {
      v11 = sub_29E2BC504();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_29E2BC4F4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_29E2BC4E4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_29E2BC504();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_29E2BC4F4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_29DF9FE9C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x29EDCA608];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_29DFA002C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_29DEB5BF8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_29DF9FC6C(v13, a3, a4, &v12);
  v10 = v4;
  sub_29DEB5BF8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_29DFA002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_29E2BC4E4();
  v11 = result;
  if (result)
  {
    result = sub_29E2BC504();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_29E2BC4F4();
  sub_29DF9FC6C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_29DFA00E4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_29DF1DE4C(a3, a4);
          return sub_29DF9FE9C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_29DFA024C(uint64_t a1, uint64_t a2)
{
  sub_29DEF964C(0, &qword_2A1819D80, &qword_2A1819D88, &protocol descriptor for LastMenstrualPeriodEventHandler);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFA02C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LastMenstrualPeriodTileViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DFA0308(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_29DEF964C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

id sub_29DFA0378(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_footerTextView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x29EDC7D60]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_headerSeparator;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  v6 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_highlightedText];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_tapCompletion];
  *v7 = nullsub_1;
  v7[1] = 0;
  if (a2)
  {
    v8 = sub_29E2C33A4();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for FootnoteFooterView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithReuseIdentifier_, v8);

  v10 = v9;
  sub_29DFA0610();

  return v10;
}

void sub_29DFA0610()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v68 = sub_29E2BE814();
  v2 = *(v68 - 8);
  *&v3 = MEMORY[0x2A1C7C4A8](v68).n128_u64[0];
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 contentView];
  v7 = objc_opt_self();
  v8 = [v7 systemBackgroundColor];
  [v6 setBackgroundColor_];

  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_headerSeparator;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_headerSeparator] setSeparatorThickness_];
  v10 = *&v1[v9];
  v11 = [v7 opaqueSeparatorColor];
  [v10 setColor_];

  sub_29DFA0EA4();
  v12 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_footerTextView];
  [v12 setEditable_];
  [v12 setDelegate_];
  v13 = [v7 clearColor];
  [v12 setBackgroundColor_];

  [v12 setScrollEnabled_];
  v14 = [v12 textContainer];
  [v14 setLineFragmentPadding_];

  v65 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v66 = v9;
  [*&v1[v9] setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [v1 contentView];
  [v15 addSubview_];

  v16 = [v1 contentView];
  [v16 addSubview_];

  v17 = [v1 contentView];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v18 = *(v2 + 8);
  v19 = v68;
  v18(v5, v68);
  [v17 directionalLayoutMargins];
  [v17 setDirectionalLayoutMargins_];

  v20 = [v1 contentView];
  sub_29E2BE804();
  sub_29E2BE7A4();
  v18(v5, v19);
  [v20 directionalLayoutMargins];
  [v20 setDirectionalLayoutMargins_];

  sub_29DE99B54();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E2CDBD0;
  v22 = v66;
  v23 = [*&v1[v66] leadingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v21 + 32) = v26;
  v27 = [*&v1[v22] topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 &selRef_hkmc_menstruationColor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v21 + 40) = v30;
  v31 = [v1 contentView];
  v32 = [v31 trailingAnchor];

  v33 = [*&v1[v22] &selRef_bounds + 4];
  v34 = [v32 constraintEqualToAnchor_];

  *(v21 + 48) = v34;
  v35 = objc_opt_self();
  v67 = v35;
  v68 = sub_29DE9408C(0, &qword_2A1A61A10, 0x29EDBA008);
  v36 = sub_29E2C3604();

  [v35 activateConstraints_];

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29E2CE070;
  v38 = v65;
  v39 = [v65 leadingAnchor];
  v40 = [v1 contentView];
  v41 = [v40 leadingAnchor];

  v42 = [v1 &selRef_systemFontOfSize_weight_];
  [v42 directionalLayoutMargins];
  v44 = v43;

  v45 = [v39 constraintEqualToAnchor:v41 constant:v44];
  *(v37 + 32) = v45;
  v46 = [v38 topAnchor];
  v47 = [*&v1[v22] topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:6.0];

  *(v37 + 40) = v48;
  v49 = [v1 &selRef_systemFontOfSize_weight_];
  v50 = [v49 trailingAnchor];

  v51 = [v38 trailingAnchor];
  v52 = [v1 &selRef_systemFontOfSize_weight_];
  [v52 directionalLayoutMargins];
  v54 = v53;

  v55 = [v50 constraintEqualToAnchor:v51 constant:v54];
  *(v37 + 48) = v55;
  v56 = [v1 &selRef_systemFontOfSize_weight_];
  v57 = [v56 bottomAnchor];

  v58 = [v38 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:6.0];

  *(v37 + 56) = v59;
  v60 = sub_29E2C3604();

  [v67 activateConstraints_];

  sub_29DEBEA38(0, &qword_2A1817FF0, sub_29DEA6B18);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_29E2CAB20;
  v62 = sub_29E2C0B54();
  v63 = MEMORY[0x29EDC7870];
  *(v61 + 32) = v62;
  *(v61 + 40) = v63;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

void sub_29DFA0EA4()
{
  v1 = v0;
  v2 = sub_29DE9408C(0, &unk_2A1A61A00, 0x29EDC76B0);
  v34 = sub_29E2C3FD4();
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_footerTextView);
  v4 = [v3 text];
  if (v4)
  {
    v33 = v3;
    v5 = v4;
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

    sub_29DEBEA38(0, &qword_2A1817FD0, sub_29DEA0430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CD7A0;
    v7 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    *(inited + 40) = v34;
    v8 = *MEMORY[0x29EDC7640];
    *(inited + 64) = v2;
    *(inited + 72) = v8;
    v9 = objc_opt_self();
    v10 = v7;
    v35 = v34;
    v30 = v8;
    v32 = v9;
    v11 = [v9 secondaryLabelColor];
    v31 = sub_29DE9408C(0, &qword_2A1817FE0, 0x29EDC7A00);
    *(inited + 104) = v31;
    *(inited + 80) = v11;
    sub_29E185054(inited);
    swift_setDeallocating();
    sub_29DEA0430(0);
    swift_arrayDestroy();
    v12 = objc_allocWithZone(MEMORY[0x29EDBA038]);
    v13 = sub_29E2C33A4();
    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v14 = sub_29E2C31F4();

    v15 = [v12 initWithString:v13 attributes:v14];

    if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_highlightedText + 8))
    {
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_29E2CD7A0;
      *(v16 + 32) = v30;
      v17 = v30;
      sub_29E2BF404();
      *(v16 + 40) = [v32 hk_appKeyColor];
      v18 = *MEMORY[0x29EDC7648];
      v19 = MEMORY[0x29EDC99B0];
      *(v16 + 64) = v31;
      *(v16 + 72) = v18;
      *(v16 + 104) = v19;
      *(v16 + 80) = 0x2F2F3A706174;
      *(v16 + 88) = 0xE600000000000000;
      v20 = v18;
      sub_29E185054(v16);
      swift_setDeallocating();
      swift_arrayDestroy();
      v21 = sub_29E2C31F4();

      v22 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
      v23 = sub_29E2C33A4();

      v24 = [v22 initWithString_];

      v25 = sub_29E2C33A4();

      v26 = [v24 rangeOfString_];
      v28 = v27;

      [v15 addAttributes:v21 range:{v26, v28}];
    }

    else
    {
    }

    v29 = v15;
    [v33 setAttributedText_];
  }

  else
  {
  }
}

id sub_29DFA12F0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FootnoteFooterView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29DFA13E0()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_footerTextView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x29EDC7D60]) init];
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_headerSeparator;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x29EDC4820]) initWithFrame_];
  v3 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_highlightedText);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_tapCompletion);
  *v4 = nullsub_1;
  v4[1] = 0;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29DFA14C8(uint64_t a1, id a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_29E2BC8E4();
  if (v8)
  {
    if (v7 == 7364980 && v8 == 0xE300000000000000)
    {
    }

    else
    {
      v9 = sub_29E2C4914();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = [*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_footerTextView) text];
    if (v10)
    {
      v11 = v10;
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

      if (*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_highlightedText + 8))
      {
        v12 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
        sub_29E2BF404();
        v13 = sub_29E2C33A4();

        v14 = [v12 initWithString_];

        v15 = sub_29E2C33A4();

        v16 = [v14 rangeOfString_];
        v18 = v17;

        if (v16 == a2 && v18 == a3)
        {
          v20 = *(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FootnoteFooterView_tapCompletion);

          v20(v21);
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_29DFA16C8(uint64_t a1)
{
  result = sub_29E2BD624();
  if (v2 <= 0x3F)
  {
    result = sub_29DFA178C();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MenstrualCyclesAnalysisChangeDetector(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for SleepMeasurementsConfigurationProvider(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_29DFA178C()
{
  result = qword_2A1A61590;
  if (!qword_2A1A61590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A61590);
  }

  return result;
}

uint64_t sub_29DFA18DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29DFA1924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29DFA1988()
{
  v1 = v0;
  sub_29DFA3DD4(0, &qword_2A1A5E408, MEMORY[0x29EDB8AF0]);
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v45 - v4;
  sub_29DEBB070(0);
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBB174(0);
  v60 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA3830(0);
  v46 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA3A9C(0);
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA3C94(0);
  v56 = v20;
  v58 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v50 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA3D28(0);
  v57 = v22;
  v59 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v51 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SleepOnboardingTileGenerator(0);
  v25 = (v0 + v24[6]);
  v26 = v25[3];
  v27 = v25[4];
  sub_29DE966D4(v25, v26);
  v28 = v24[5];
  v62 = sub_29DF94C2C(v1 + v28, v26, v27);
  v29 = (v1 + v24[7]);
  v30 = v29[3];
  v31 = v29[4];
  sub_29DE966D4(v29, v30);
  v32 = sub_29DF94C2C(v1 + v28, v30, v31);
  v33 = *(v1 + v24[9]);
  v61 = v32;
  (*(v13 + 16))(v15, v33 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_configurationPublisher, v46);
  swift_beginAccess();
  sub_29DFA3DD4(0, &qword_2A1A5E3D0, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBB0F8();
  v34 = v48;
  sub_29E2C1304();
  (*(v49 + 8))(v5, v34);
  sub_29DFA1924(0, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
  sub_29DFA18DC(&qword_2A1A5E810, sub_29DEBB070, MEMORY[0x29EDB8968]);
  v35 = v52;
  sub_29E2C12A4();
  (*(v53 + 8))(v9, v35);
  v36 = MEMORY[0x29EDC2D78];
  sub_29DFA3BE0(0, &qword_2A1A5E720, MEMORY[0x29EDC2D78]);
  sub_29DFA3C44(&qword_2A1A5E728, &qword_2A1A5E720, v36);
  sub_29DFA18DC(&qword_2A1A5EB20, sub_29DFA3830, MEMORY[0x29EDB88B0]);
  v37 = MEMORY[0x29EDB8908];
  sub_29DFA18DC(&qword_2A1A5E998, sub_29DEBB174, MEMORY[0x29EDB8908]);
  sub_29E2C0EB4();
  sub_29E2BD5F4();
  v38 = v50;
  v39 = v54;
  sub_29E2C0E94();
  (*(v55 + 8))(v19, v39);
  type metadata accessor for SleepOnboardingTileGenerator.Change(0);
  sub_29DFA18DC(&qword_2A1A5E868, sub_29DFA3C94, MEMORY[0x29EDB8958]);
  v40 = v51;
  v41 = v56;
  sub_29E2C12A4();
  (*(v58 + 8))(v38, v41);
  sub_29DFA18DC(&unk_2A1A5EA00, sub_29DFA3D28, v37);
  v42 = v57;
  v43 = sub_29E2C1274();
  (*(v59 + 8))(v40, v42);
  return v43;
}

id sub_29DFA2130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29DFA3E28(0);
  v5 = v4[12];
  v6 = (a1 + v4[16]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v15 = *(a1 + v4[20]);
  v10 = sub_29E2BFC94();
  v11 = *(*(v10 - 8) + 16);
  v11(a2, a1, v10);
  v12 = type metadata accessor for SleepOnboardingTileGenerator.Change(0);
  v11(a2 + v12[5], a1 + v5, v10);
  v13 = (a2 + v12[6]);
  *v13 = v7;
  v13[1] = v8;
  v13[2] = v9;
  *(a2 + v12[7]) = v15;

  return v15;
}

char *sub_29DFA2240(uint64_t a1)
{
  v1 = sub_29E2BD4C4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF1D934(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v19 - v10;
  sub_29DFA1924(0, &qword_2A1A5E030, sub_29DF1D934, MEMORY[0x29EDC9E90]);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_29DFA2558(v13 + v12);
  sub_29DFA3470(v13 + v12, v11);
  sub_29DFA34D4(v11, v8);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    sub_29DFA37D0(v8, sub_29DF1D934);
    v14 = MEMORY[0x29EDCA190];
  }

  else
  {
    v15 = *(v2 + 32);
    v15(v4, v8, v1);
    v14 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_29E143AD8(0, *(v14 + 2) + 1, 1, v14);
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_29E143AD8((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    v15(&v14[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17], v4, v1);
  }

  swift_setDeallocating();
  sub_29DFA37D0(v13 + v12, sub_29DF1D934);
  swift_deallocClassInstance();
  return v14;
}

uint64_t sub_29DFA2558@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2C0514();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BD4C4();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA379C(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BDEF4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29DFA2A44();
  sub_29DFA2C28(v14 & 0x30101010101, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29DFA37D0(v9, sub_29DFA379C);
    v15 = 1;
    v17 = v36;
    v16 = v37;
  }

  else
  {
    v29 = v10;
    v30 = v14 >> 40;
    (*(v11 + 32))(v13, v9, v10);
    type metadata accessor for SleepOnboardingTileGenerator(0);
    v18 = sub_29E2BD5D4();
    if (MEMORY[0x29EDCA190] >> 62 && sub_29E2C4484())
    {
      sub_29DE927B8(MEMORY[0x29EDCA190]);
    }

    v32 = a1;
    type metadata accessor for SleepOnboardingTileViewActionHandler(0);
    sub_29DFA18DC(&qword_2A1819DC0, type metadata accessor for SleepOnboardingTileViewActionHandler, &unk_29E2E72D0);
    v31 = v13;
    sub_29E2BD2C4();

    v19 = v30;
    if (v30 != 3)
    {
      v20 = v33;
      sub_29E2C04B4();
      sub_29E2BC2E4();
      swift_allocObject();
      v21 = sub_29E2BC2D4();
      sub_29DF8F738(v21, v20, v19);

      (*(v34 + 8))(v20, v35);
    }

    v22 = v29;
    sub_29E2BD424();
    v23 = sub_29E2BD664();
    v25 = v24;
    v26 = sub_29E2BD494();
    sub_29E146428(v39, v23, v25);

    v26(v38, 0);
    sub_29E2BD344();
    (*(v11 + 8))(v31, v22);
    v17 = v36;
    v16 = v37;
    a1 = v32;
    (*(v36 + 32))(v32, v6, v37);
    v15 = 0;
  }

  return (*(v17 + 56))(a1, v15, 1, v16);
}

uint64_t sub_29DFA2A44()
{
  v1 = v0;
  v2 = type metadata accessor for SleepOnboardingTileGenerator.Change(0);
  v3 = *(v0 + *(v2 + 28));
  v4 = sub_29DFA3538();
  v5 = [v4 menstruationProjectionsEnabled];

  v6 = 0;
  if (v5)
  {
    if (v3)
    {
      v7 = sub_29DF3FACC();
    }

    else
    {
      v7 = MEMORY[0x29EDCA1A0];
    }

    v8 = sub_29E0922B0(0, v7);

    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = 256;
    }
  }

  v9 = sub_29DFA3538();
  v10 = [v9 fertileWindowProjectionsEnabled];

  if (v10)
  {
    if (v3)
    {
      v11 = sub_29DF3FACC();
    }

    else
    {
      v11 = MEMORY[0x29EDCA1A0];
    }

    v13 = sub_29E0922B0(1u, v11);

    if (v13)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0x10000;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = sub_29E2BFCA4();
  v15 = [v14 areAllRequirementsSatisfied];

  v16 = sub_29E2BFCA4();
  v17 = [v16 areAllRequirementsSatisfied];

  v18 = (v1 + *(v2 + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2] == 0;
  v22 = 0x20000000000;
  if (!v21)
  {
    v22 = 0x30000000000;
  }

  if (!v20)
  {
    v22 = 0x10000000000;
  }

  if (!v19)
  {
    v22 = 0;
  }

  v23 = 0x100000000;
  if (!v17)
  {
    v23 = 0;
  }

  v24 = 0x1000000;
  if (!v15)
  {
    v24 = 0;
  }

  if (v3)
  {
    v25 = v6 + 1;
  }

  else
  {
    v25 = v6;
  }

  return v25 | v12 | v24 | v23 | v22;
}

uint64_t sub_29DFA2C28@<X0>(unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_29E2BDE44();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  if ((~a3 & 0x101000000) != 0 || (a3 & 1) == 0 || (a3 & 0x10100) == 0 || (v9 = a3 >> 40, BYTE5(a3) == 3))
  {
    v10 = sub_29E2BDEF4();
    v11 = *(*(v10 - 8) + 56);

    return v11(a4, 1, 1, v10);
  }

  else
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v13 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    v14 = qword_2A1A62788;
    sub_29E2BF404();
    if (v14 != -1)
    {
      swift_once();
    }

    v15 = v13;
    sub_29E2BDE34();
    sub_29E2C3394();
    sub_29E2BCC74();
    sub_29E2C3414();
    sub_29DFC8078(v9);
    sub_29E2BDEE4();
    v16 = sub_29E2BDEF4();
    return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
  }
}

uint64_t sub_29DFA3004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_29E2BD624();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29DFA3080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29DFA1988();
  *a1 = result;
  return result;
}

uint64_t sub_29DFA30A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29DFA18DC(&qword_2A1A609D8, type metadata accessor for SleepOnboardingTileGenerator, &unk_29E2D6358);

  return MEMORY[0x2A1C65578](a1, a2, v4);
}

uint64_t sub_29DFA3174(uint64_t a1)
{
  v2 = sub_29DFA18DC(qword_2A1A609E0, type metadata accessor for SleepOnboardingTileGenerator, &unk_29E2D62F0);

  return MEMORY[0x2A1C65560](a1, v2);
}

uint64_t sub_29DFA31E0@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = sub_29E2BD564();
  v1 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BE194();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_29E2BD5D4();
  sub_29DFA1924(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29E2BD234();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E2CAB20;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x29EDC3790], v8);
  sub_29E110B7C(v7);
  sub_29E2BE184();
  (*(v5 + 8))(v7, v4);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC3898], v14);
  return sub_29E2BD574();
}

uint64_t sub_29DFA3470(uint64_t a1, uint64_t a2)
{
  sub_29DF1D934(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFA34D4(uint64_t a1, uint64_t a2)
{
  sub_29DF1D934(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_29DFA3538()
{
  v1 = v0;
  v2 = sub_29E2BFC74();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BFC94();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x29EDC2D70])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v11 = sub_29E2BFC64();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_29E1853E0(MEMORY[0x29EDCA190]);
    v12 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
    v13 = sub_29E2C31F4();

    v11 = [v12 initWithDictionary_];

    (*(v7 + 8))(v10, v6);
  }

  return v11;
}

uint64_t sub_29DFA37D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DFA3830(uint64_t a1)
{
  if (!qword_2A1A5EB10)
  {
    sub_29DFA393C(255);
    v1 = MEMORY[0x29EDB8A48];
    sub_29DFA3A34(255, &qword_2A1A5E5C8, MEMORY[0x29EDB8A48]);
    sub_29DFA18DC(&qword_2A1A5E430, sub_29DFA393C, MEMORY[0x29EDB8AE8]);
    sub_29DFA39F0(&qword_2A1A5E5D0, &qword_2A1A5E5C8, v1, MEMORY[0x29EDB8A58]);
    v2 = sub_29E2C0EE4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A5EB10);
    }
  }
}

void sub_29DFA393C(uint64_t a1)
{
  if (!qword_2A1A5E420)
  {
    v1 = MEMORY[0x29EDB8AD0];
    sub_29DFA3A34(255, &qword_2A1A5E4A8, MEMORY[0x29EDB8AD0]);
    sub_29DFA39F0(&qword_2A1A5E4B0, &qword_2A1A5E4A8, v1, MEMORY[0x29EDB8AD8]);
    v2 = sub_29E2C11C4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A5E420);
    }
  }
}

uint64_t sub_29DFA39F0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29DFA3A34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29DFA3A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SleepMeasurementsConfiguration, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DFA3A9C(uint64_t a1)
{
  if (!qword_2A1A5EBC0)
  {
    v1 = MEMORY[0x29EDC2D78];
    sub_29DFA3BE0(255, &qword_2A1A5E720, MEMORY[0x29EDC2D78]);
    sub_29DFA3830(255);
    sub_29DEBB174(255);
    sub_29DFA3C44(&qword_2A1A5E728, &qword_2A1A5E720, v1);
    sub_29DFA18DC(&qword_2A1A5EB20, sub_29DFA3830, MEMORY[0x29EDB88B0]);
    sub_29DFA18DC(&qword_2A1A5E998, sub_29DEBB174, MEMORY[0x29EDB8908]);
    v2 = sub_29E2C0EA4();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1A5EBC0);
    }
  }
}

void sub_29DFA3BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29DFA3C44(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29DFA3BE0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29DFA3C94(uint64_t a1)
{
  if (!qword_2A1A5E860)
  {
    sub_29DFA3A9C(255);
    sub_29DFA18DC(&unk_2A1A5EBC8, sub_29DFA3A9C, MEMORY[0x29EDB8880]);
    v1 = sub_29E2C0F64();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E860);
    }
  }
}

void sub_29DFA3D28(uint64_t a1)
{
  if (!qword_2A1A5E9F8)
  {
    sub_29DFA3C94(255);
    type metadata accessor for SleepOnboardingTileGenerator.Change(255);
    sub_29DFA18DC(&qword_2A1A5E868, sub_29DFA3C94, MEMORY[0x29EDB8958]);
    v1 = sub_29E2C0F24();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5E9F8);
    }
  }
}

void sub_29DFA3DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for HKMCAnalysisResult);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DFA3E28(uint64_t a1)
{
  if (!qword_2A1A615B8)
  {
    sub_29E2BFC94();
    sub_29DFA1924(255, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A615B8);
    }
  }
}

void sub_29DFA3F08(uint64_t a1)
{
  sub_29E2BFC94();
  if (v1 <= 0x3F)
  {
    sub_29DFA1924(319, &qword_2A1A5E270, sub_29DEBAF28, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CycleDeviationsTileActionHandler(uint64_t a1)
{
  result = qword_2A1819DD8;
  if (!qword_2A1819DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DFA4018(uint64_t a1)
{
  sub_29DFA6A28(319, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_29DFA40D8(__n128 a1)
{
  v2 = sub_29E2BF6C4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_2A1819DC8;
  v7 = *(v1 + qword_2A1819DC8);
  if (v7)
  {
    v8 = *(v1 + qword_2A1819DC8);
  }

  else
  {
    v9 = v1;
    sub_29E2BF414();
    sub_29E2BF694();
    (*(v3 + 8))(v5, v2);
    v10 = sub_29E2BE8F4();

    v11 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

    v12 = *(v9 + v6);
    *(v9 + v6) = v11;
    v8 = v11;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

void sub_29DFA421C()
{
  v52 = *v0;
  v1 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v60 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29E2BCC94();
  v55 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C31A4();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BF6C4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v51 = &v47 - v13;
  v14 = sub_29E2BE2A4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v63 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v47 - v18;
  v20 = sub_29E2C0514();
  v61 = *(v20 - 8);
  v62 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();

  v23 = sub_29E2C0504();
  v24 = sub_29E2C3A34();

  v50 = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v64 = v49;
    *v25 = 136446466;
    v26 = sub_29E2C4AE4();
    v48 = v23;
    v28 = sub_29DFAA104(v26, v27, &v64);
    v52 = v15;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = v51;
    sub_29E2BF414();
    sub_29E2BF684();
    (*(v9 + 8))(v30, v8);
    sub_29DFA6D7C(&qword_2A1818200, MEMORY[0x29EDC1D90], MEMORY[0x29EDC1DA0]);
    v31 = sub_29E2C48D4();
    v33 = v32;
    (*(v52 + 8))(v19, v14);
    v34 = sub_29DFAA104(v31, v33, &v64);
    v15 = v52;

    *(v25 + 14) = v34;
    v23 = v48;
    _os_log_impl(&dword_29DE74000, v48, v50, "[%{public}s] Dismissing tile from %s", v25, 0x16u);
    v35 = v49;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v35, -1, -1);
    MEMORY[0x29ED82140](v25, -1, -1);
  }

  (*(v61 + 8))(v22, v62);
  sub_29E2BF414();
  v36 = v63;
  sub_29E2BF684();
  (*(v9 + 8))(v11, v8);
  v37 = (*(v15 + 88))(v36, v14);
  v38 = *MEMORY[0x29EDC1D60];
  (*(v15 + 8))(v36, v14);
  if (v37 == v38)
  {
    v40 = v54;
    v39 = v55;
    v41 = v57;
    (*(v55 + 104))(v54, *MEMORY[0x29EDB9C78], v57);
    sub_29E2BCCA4();
    (*(v39 + 8))(v40, v41);
    sub_29E2BCBA4();
    v42 = v56;
    sub_29E2C3144();
    v44 = sub_29DFA40D8(v43);
    v45 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    [v44 setUnconfirmedDeviationDismissalDay_];

    (*(v58 + 8))(v42, v59);
    v46 = 4;
  }

  else
  {
    v46 = 3;
  }

  sub_29DFA5B14(v46, 7);
}

uint64_t sub_29DFA4950()
{
  v76 = *v0;
  v1 = sub_29E2C0514();
  v77 = *(v1 - 8);
  v78 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v75 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v74 = &v69 - v4;
  MEMORY[0x2A1C7C4A8](v5);
  v71 = &v69 - v6;
  sub_29DFA6A28(0, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v69 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v70 = &v69 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v69 - v16;
  MEMORY[0x2A1C7C4A8](v18);
  v73 = &v69 - v19;
  v20 = sub_29E2BF6C4();
  v21 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v72 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v69 - v24;
  sub_29E2BF414();
  v26 = sub_29E2BF6A4();
  v27 = v25;
  v29 = v28;
  (*(v21 + 8))(v27, v20);
  if (v29 >> 60 == 15)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    v30 = qword_2A1819DD0;
    swift_beginAccess();
    sub_29DFA6C98(v9, v0 + v30);
    swift_endAccess();
    v31 = v75;
    sub_29E2C04B4();

    v32 = sub_29E2C0504();
    v33 = sub_29E2C3A34();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v79[0] = v35;
      *v34 = 136446466;
      v36 = sub_29E2C4AE4();
      v38 = sub_29DFAA104(v36, v37, v79);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      sub_29E2BF414();
      v39 = sub_29E2C3424();
      v41 = sub_29DFAA104(v39, v40, v79);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_29DE74000, v32, v33, "[%{public}s] Context contains nil user data: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v35, -1, -1);
      MEMORY[0x29ED82140](v34, -1, -1);
    }

    return (*(v77 + 8))(v31, v78);
  }

  else
  {
    sub_29E2BC2B4();
    swift_allocObject();
    sub_29DF1DE4C(v26, v29);
    sub_29E2BC2A4();
    sub_29DFA6D7C(&qword_2A1818E28, type metadata accessor for MenstrualCyclesDeviationUserData, &unk_29E2DD2EC);
    sub_29E2BC294();

    v42.n128_f64[0] = sub_29DF1DD38(v26, v29);
    v43 = v73;
    sub_29DFA6BD8(v17, v73, v42);
    sub_29DFA6D18(v43, v9, v44);
    (*(v11 + 56))(v9, 0, 1, v10);
    v45 = qword_2A1819DD0;
    swift_beginAccess();
    sub_29DFA6C98(v9, v0 + v45);
    swift_endAccess();
    v46 = v71;
    sub_29E2C04B4();
    v47 = v70;
    sub_29DFA6D18(v43, v70, v48);
    v49 = sub_29E2C0504();
    v50 = sub_29E2C3A34();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v79[0] = v52;
      *v51 = 136446466;
      v53 = sub_29E2C4AE4();
      v76 = v29;
      v55 = sub_29DFAA104(v53, v54, v79);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      sub_29DFA6D18(v47, v69, v56);
      v57 = sub_29E2C3464();
      v59 = v58;
      sub_29DFA6C3C(v47, v60);
      v61 = sub_29DFAA104(v57, v59, v79);
      v62 = v46;
      v63 = v61;

      *(v51 + 14) = v63;
      _os_log_impl(&dword_29DE74000, v49, v50, "[%{public}s] Updating user data to %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v52, -1, -1);
      MEMORY[0x29ED82140](v51, -1, -1);

      v64 = sub_29DF1DD38(v26, v76);
      v65.n128_f64[0] = (*(v77 + 8))(v62, v78, v64);
      return sub_29DFA6C3C(v73, v65);
    }

    else
    {

      v67.n128_f64[0] = sub_29DF1DD38(v26, v29);
      sub_29DFA6C3C(v47, v67);
      v68.n128_f64[0] = (*(v77 + 8))(v46, v78);
      return sub_29DFA6C3C(v43, v68);
    }
  }
}

uint64_t sub_29DFA52DC()
{
  v1 = v0;
  v67 = *v0;
  v2 = sub_29E2BE2A4();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v61 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BF6C4();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C0514();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v60 = &v60 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v66 = &v60 - v13;
  sub_29DFA6A28(0, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v60 - v15;
  v17 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA4950();
  v21 = qword_2A1819DD0;
  swift_beginAccess();
  sub_29DFA6AE4(v1 + v21, v16, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_29DFA6BD8(v16, v20, v22);
    sub_29DFA6A7C(0);
    v31 = sub_29E2C2EE4();
    if (v31 >> 62)
    {
      v51 = sub_29E2C4484();

      if (v51)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v32)
      {
LABEL_7:
        v33 = v66;
        sub_29E2C04B4();
        v34 = sub_29E2C0504();
        v35 = sub_29E2C3A34();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v71 = v37;
          *v36 = 136446210;
          v38 = sub_29E2C4AE4();
          v40 = sub_29DFAA104(v38, v39, &v71);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_29DE74000, v34, v35, "[%{public}s] Preparing to display logging confirmation flow", v36, 0xCu);
          sub_29DE93B3C(v37);
          MEMORY[0x29ED82140](v37, -1, -1);
          MEMORY[0x29ED82140](v36, -1, -1);

          (*(v68 + 8))(v66, v69);
        }

        else
        {

          (*(v68 + 8))(v33, v69);
        }

        sub_29DFA5B14(5, 7);
        sub_29E2BF414();
        sub_29E2BF694();
        v41 = v63;
        v42 = *(v62 + 8);
        v42(v6, v63);
        v43 = sub_29E2BE8F4();

        v44 = type metadata accessor for DeviationsConfirmationNavigationController();
        v45 = objc_allocWithZone(v44);
        *&v45[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42DeviationsConfirmationNavigationController____lazy_storage___coordinator] = 0;
        *&v45[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42DeviationsConfirmationNavigationController_healthStore] = v43;
        v70.receiver = v45;
        v70.super_class = v44;
        v46 = objc_msgSendSuper2(&v70, sel_initWithNibName_bundle_, 0, 0);
        v47 = sub_29E2C2EE4();
        sub_29E2BF414();
        v48 = v61;
        sub_29E2BF684();
        v42(v6, v41);
        sub_29DEE20EC();
        sub_29DEE23B0(v47, 0, v48, 1);

        (*(v64 + 8))(v48, v65);
        sub_29E2BF414();
        v49 = sub_29E2BF6B4();
        v42(v6, v41);
        [v49 showViewController:v46 sender:0];

        return sub_29DFA6C3C(v20, v50);
      }
    }

    v52 = v60;
    sub_29E2C04B4();
    v53 = sub_29E2C0504();
    v54 = sub_29E2C3A14();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71 = v56;
      *v55 = 136446210;
      v57 = sub_29E2C4AE4();
      v59 = sub_29DFAA104(v57, v58, &v71);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_29DE74000, v53, v54, "[%{public}s] Attempted to show logging confirmation flow without any deviations in userData", v55, 0xCu);
      sub_29DE93B3C(v56);
      MEMORY[0x29ED82140](v56, -1, -1);
      MEMORY[0x29ED82140](v55, -1, -1);
    }

    v50.n128_f64[0] = (*(v68 + 8))(v52, v69);
    return sub_29DFA6C3C(v20, v50);
  }

  sub_29DFA6B50(v16, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
  sub_29E2C04B4();
  v23 = sub_29E2C0504();
  v24 = sub_29E2C3A14();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v71 = v26;
    *v25 = 136446210;
    v27 = sub_29E2C4AE4();
    v29 = sub_29DFAA104(v27, v28, &v71);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_29DE74000, v23, v24, "[%{public}s] Attempted to show logging confirmation flow without userData", v25, 0xCu);
    sub_29DE93B3C(v26);
    MEMORY[0x29ED82140](v26, -1, -1);
    MEMORY[0x29ED82140](v25, -1, -1);
  }

  return (*(v68 + 8))(v9, v69);
}

void sub_29DFA5B14(int a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v56 = a1;
  v59 = *v2;
  v4 = sub_29E2C0514();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA6A28(0, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v54 = &v51 - v10;
  v11 = sub_29E2BF6C4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = (&v51 - v16);
  sub_29DFA6A28(0, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v20 = &v51 - v19;
  v21 = qword_2A1819DD0;
  swift_beginAccess();
  sub_29DFA6AE4(v3 + v21, v20, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
  v22 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22))
  {
    sub_29DFA6B50(v20, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
    sub_29E2C04B4();
    v23 = sub_29E2C0504();
    v24 = sub_29E2C3A14();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = sub_29E2C4AE4();
      v29 = sub_29DFAA104(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_29DE74000, v23, v24, "[%{public}s] Tried to submit analytics event without userData", v25, 0xCu);
      sub_29DE93B3C(v26);
      MEMORY[0x29ED82140](v26, -1, -1);
      MEMORY[0x29ED82140](v25, -1, -1);
    }

    v57[1](v6, v58);
  }

  else
  {
    v30 = v53;
    sub_29DFA6A7C(0);
    v51 = sub_29E2C2EE4();
    sub_29DFA6B50(v20, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
    v31 = HKLogMenstrualCyclesCategory();
    sub_29E2BF414();
    sub_29E2BF694();
    v32 = *(v12 + 8);
    v57 = v17;
    v32(v17, v11);
    v33 = sub_29E2BE8F4();

    v52 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v31 healthDataSource:v33];

    sub_29E2BF414();
    v34 = v54;
    sub_29E2BF684();
    v58 = v11;
    v32(v14, v11);
    v35 = sub_29E2BE2A4();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v34, 0, 1, v35);
    v37 = v55;
    sub_29DFA6AE4(v34, v55, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
    v38 = v34;
    if ((*(v36 + 48))(v37, 1, v35) == 1)
    {
      sub_29DFA6B50(v37, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
      v39 = 0;
    }

    else
    {
      v39 = sub_29E253904();
      (*(v36 + 8))(v37, v35);
    }

    v40 = swift_allocObject();
    type metadata accessor for CycleDeviationAnalyticsEvent();
    v41 = swift_allocObject();
    *(v41 + 16) = 0xD00000000000002BLL;
    *(v41 + 24) = 0x800000029E2EEF20;
    *(v41 + 40) = 7;
    sub_29DE9408C(0, &qword_2A1A5E0B0, 0x29EDBA070);
    *(v41 + 64) = sub_29E2C40B4();
    *(v41 + 72) = sub_29E2C40B4();
    *(v41 + 80) = sub_29E2C40B4();
    v42 = sub_29E2C40B4();
    sub_29DFA6B50(v38, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);
    *(v41 + 88) = v42;
    *(v41 + 32) = v56;
    v43 = *(v41 + 40);
    *(v41 + 40) = v30;
    sub_29DEE8B58(v43);
    *(v41 + 56) = v39;
    *(v41 + 48) = v51;
    *(v41 + 57) = 0;
    *(v40 + 16) = v41;
    sub_29DEE8B78(v30);
    v44 = v57;
    sub_29E2BF414();
    sub_29E2BF694();
    v32(v44, v58);
    v45 = sub_29E2BE8F4();

    v46 = [objc_allocWithZone(MEMORY[0x29EDBAB40]) initWithHealthStore_];

    v47 = swift_allocObject();
    v48 = v52;
    v47[2] = v40;
    v47[3] = v48;
    v47[4] = v59;
    aBlock[4] = sub_29DFA6BAC;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DEE7478;
    aBlock[3] = &unk_2A24B60C8;
    v49 = _Block_copy(aBlock);

    v50 = v48;

    [v46 numberOfDeviceContextsPerDeviceType_];
    _Block_release(v49);
  }
}

uint64_t sub_29DFA631C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  sub_29DFA6D7C(qword_2A1819E00, type metadata accessor for CycleDeviationsTileActionHandler, &unk_29E2D64B4);
  swift_unknownObjectRetain();
  v8 = sub_29E2BDE54();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(a3 + 16) = v8;
  swift_unknownObjectRelease();
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v12[4] = sub_29DFA6BD0;
  v12[5] = v9;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29DFE9648;
  v12[3] = &unk_2A24B6118;
  v10 = _Block_copy(v12);
  swift_unknownObjectRetain();

  [a4 submitEvent:v8 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_29DFA64B4(char a1, void *a2, uint64_t a3)
{
  v5 = sub_29E2C0514();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04E4();
    v9 = a2;
    v10 = sub_29E2C0504();
    v11 = sub_29E2C3A14();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446466;
      v14 = sub_29E2C4AE4();
      v16 = sub_29DFAA104(v14, v15, &v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v21 = a2;
      v17 = a2;
      sub_29DFA6A28(0, &qword_2A1A5DFD0, sub_29DE96670);
      v18 = sub_29E2C3434();
      v20 = sub_29DFAA104(v18, v19, &v22);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Error submitting analytics event: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v13, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_29DFA66E8(uint64_t a1, __n128 a2)
{
  v3 = sub_29E2BF6C4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + qword_2A1819DC8) = 0;
  v8 = qword_2A1819DD0;
  v9 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  (*(v4 + 16))(v6, a1, v3);
  v10 = sub_29E2BF424();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_29DFA6894()
{
  v0 = sub_29E2BF434();
  v1 = *(v0 + qword_2A1819DC8);

  sub_29DFA6B50(v0 + qword_2A1819DD0, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);

  return swift_deallocClassInstance();
}

void sub_29DFA6958()
{
  type metadata accessor for CycleDeviationsTileActionHandler(0);
  sub_29E2BF864();

  sub_29DFA421C();
}

void sub_29DFA6A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DFA6A7C(uint64_t a1)
{
  if (!qword_2A1818E30)
  {
    sub_29DE9408C(255, &qword_2A1A5E118, 0x29EDC33F8);
    v1 = sub_29E2C2EF4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1818E30);
    }
  }
}

uint64_t sub_29DFA6AE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29DFA6A28(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29DFA6B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DFA6A28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29DFA6BB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29DFA6BD8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DFA6C3C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DFA6C98(uint64_t a1, uint64_t a2)
{
  sub_29DFA6A28(0, &qword_2A1A61410, type metadata accessor for MenstrualCyclesDeviationUserData);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DFA6D18(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MenstrualCyclesDeviationUserData(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DFA6D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29DFA6DDC(uint64_t a1)
{
  sub_29DFA94FC(319, &qword_2A1819E88, MEMORY[0x29EDBCB00]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29DFA6E88(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 16) & ~v6);
    }

    v18 = *(v17 + 8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_29DFA6FD8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);

        return v19((v18 + v8 + 16) & ~v8);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v18 = a2 & 0x7FFFFFFF;
        v18[1] = 0;
      }

      else
      {
        v18[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_29DFA722C@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v2 = sub_29E2BC654();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v37 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BC664();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v34 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BC684();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v33 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA9460(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v31 - v9;
  v32 = sub_29E2BC6A4();
  v11 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = v31 - v15;
  v17 = *v1;
  v31[0] = v1[1];
  v31[1] = v17;
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v21 = v1[5];
  sub_29DFA9460(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E2CAB20;
  v41 = 91;
  v42 = 0xE100000000000000;
  MEMORY[0x29ED7FCC0](v19, v18);
  MEMORY[0x29ED7FCC0](10333, 0xE200000000000000);
  MEMORY[0x29ED7FCC0](v20, v21);
  MEMORY[0x29ED7FCC0](41, 0xE100000000000000);
  v23 = v41;
  v24 = v42;
  *(v22 + 56) = MEMORY[0x29EDC99B0];
  *(v22 + 64) = sub_29DEB1A44();
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  sub_29E2C3404();
  v25 = sub_29E2BC904();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  (*(v35 + 104))(v34, *MEMORY[0x29EDB9A10], v36);
  (*(v38 + 104))(v37, *MEMORY[0x29EDB9A08], v39);
  sub_29E2BC674();
  sub_29E2BC694();
  (*(v11 + 32))(v16, v13, v32);
  result = sub_29E2C2284();
  v27 = v40;
  *v40 = result;
  v27[1] = v28;
  *(v27 + 16) = v29 & 1;
  v27[3] = v30;
  return result;
}

uint64_t sub_29DFA76F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_29E2BC654();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BC664();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BC684();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DFA9460(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_29E2BC6A4();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v38 - v16;
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  sub_29DFA9460(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E2CAB20;
  v48 = 91;
  v49 = 0xE100000000000000;
  MEMORY[0x29ED7FCC0](v18, v19);
  MEMORY[0x29ED7FCC0](10333, 0xE200000000000000);
  MEMORY[0x29ED7FCC0](0x312F2F3A6B6E696CLL, 0xE800000000000000);
  MEMORY[0x29ED7FCC0](41, 0xE100000000000000);
  v21 = v48;
  v22 = v49;
  *(v20 + 56) = MEMORY[0x29EDC99B0];
  *(v20 + 64) = sub_29DEB1A44();
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  sub_29E2C3404();
  v23 = sub_29E2BC904();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  (*(v42 + 104))(v41, *MEMORY[0x29EDB9A10], v43);
  (*(v45 + 104))(v44, *MEMORY[0x29EDB9A08], v46);
  sub_29E2BC674();
  sub_29E2BC694();
  (*(v38 + 32))(v17, v14, v39);
  v24 = sub_29E2C2284();
  v26 = v25;
  LOBYTE(v20) = v27;
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  v32 = *(v2 + 16);
  *(v31 + 16) = *v2;
  *(v31 + 32) = v32;
  v33 = *(v2 + 32);
  *(v31 + 48) = v33;
  *(v31 + 64) = *(v2 + 48);
  sub_29DFA93D0(0, v33);
  v35 = v47;
  v36 = (v47 + *(v34 + 36));
  sub_29DFA9460(0, &qword_2A1819ED0, MEMORY[0x29EDBC3F8], MEMORY[0x29EDBC938]);
  sub_29DFA94C4(v2, &v48);
  result = sub_29E2C15B4();
  *v36 = KeyPath;
  *v35 = v24;
  *(v35 + 8) = v26;
  *(v35 + 16) = v20 & 1;
  *(v35 + 24) = v29;
  return result;
}

uint64_t sub_29DFA7C50(uint64_t a1)
{
  v2 = sub_29E2C15C4();
  v3 = MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_29E2C19C4();
}

uint64_t sub_29DFA7D18(uint64_t a1, uint64_t a2)
{
  sub_29DFA94FC(0, &qword_2A1819278, MEMORY[0x29EDBCB78]);
  sub_29E2C2924();
  return sub_29E2C15A4();
}

uint64_t sub_29DFA7DD8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a1;
  v79 = a2;
  v3 = a1 - 8;
  v77 = *(a1 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v75 = v4;
  v76 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_29E2C3384();
  v61 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v59 - v10;
  sub_29DFA8D28(0);
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v72 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 24);
  sub_29DFA8D88(255);
  v17 = v16;
  v18 = *(v3 + 32);
  sub_29DFA8E3C(255);
  v20 = v19;
  v21 = sub_29DFA8EDC(&qword_2A1819EB0, sub_29DFA8E3C, MEMORY[0x29EDBBEC0]);
  v80 = v20;
  v81 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = v15;
  v81 = v17;
  v82 = v18;
  v83 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v73 = v15;
  v80 = v15;
  v81 = v17;
  v71 = v18;
  v82 = v18;
  v83 = OpaqueTypeConformance2;
  v23 = v8;
  v24 = v61;
  swift_getOpaqueTypeConformance2();
  v25 = sub_29E2C1644();
  v26 = sub_29DFA8F24();
  WitnessTable = swift_getWitnessTable();
  v74 = v13;
  v80 = v13;
  v81 = v25;
  v66 = v25;
  v68 = v26;
  v82 = v26;
  v83 = WitnessTable;
  v28 = v62;
  v64 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  v70 = OpaqueTypeMetadata2;
  MEMORY[0x2A1C7C4A8](OpaqueTypeMetadata2);
  v65 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v67 = &v59 - v32;
  v33 = *(v2 + 24);
  v60 = *(v2 + 16);
  sub_29E2BF404();
  sub_29E2C3314();
  (*(v24 + 16))(v23, v11, v28);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v34 = qword_2A1A67F80;
  sub_29E2BCC74();
  v35 = sub_29E2C3414();
  v37 = v36;
  (*(v24 + 8))(v11, v28);
  v39 = *(v2 + 8);
  LOBYTE(v87) = *v2;
  v38 = v87;
  v88 = v39;
  sub_29DFA94FC(0, &qword_2A1819E88, MEMORY[0x29EDBCB00]);
  sub_29E2C27F4();
  v40 = v80;
  v41 = v81;
  v42 = v82;
  v80 = v60;
  v81 = v33;
  v82 = v35;
  v83 = v37;
  v84 = v40;
  v85 = v41;
  v86 = v42;
  v43 = v78;
  v44 = (v2 + *(v78 + 44));
  v45 = v44[1];
  v87 = *v44;
  v88 = v45;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6F4D6E7261654C2ELL, 0xEA00000000006572);
  sub_29DFA8FD4();
  v46 = v72;
  sub_29E2C23B4();

  LOBYTE(v87) = v38;
  v88 = v39;
  sub_29E2C27F4();
  v47 = v76;
  v48 = v77;
  (*(v77 + 16))(v76, v2, v43);
  v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v50 = swift_allocObject();
  v51 = v71;
  *(v50 + 16) = v73;
  *(v50 + 24) = v51;
  (*(v48 + 32))(v50 + v49, v47, v43);
  swift_checkMetadataState();
  v52 = v65;
  sub_29E2C2554();

  sub_29DFA90B4(v46);
  v54 = v69;
  v53 = v70;
  v55 = *(v69 + 16);
  v56 = v67;
  v55(v67, v52, v70);
  v57 = *(v54 + 8);
  v57(v52, v53);
  v55(v79, v56, v53);
  return (v57)(v56, v53);
}

uint64_t sub_29DFA8548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_29DFA8D88(255);
  v9 = v8;
  sub_29DFA8E3C(255);
  sub_29DFA8EDC(&qword_2A1819EB0, sub_29DFA8E3C, MEMORY[0x29EDBBEC0]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v25 = a2;
  v26 = v9;
  v27 = a3;
  v28 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_29E2C1644();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v21[-v16];
  v22 = a2;
  v23 = a3;
  v24 = a1;
  sub_29E2C1634();
  swift_getWitnessTable();
  v18 = *(v12 + 16);
  v18(v17, v14, v11);
  v19 = *(v12 + 8);
  v19(v14, v11);
  v18(a4, v17, v11);
  return (v19)(v17, v11);
}

uint64_t sub_29DFA87B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v21 = a4;
  sub_29DFA8D88(255);
  v8 = v7;
  sub_29DFA8E3C(255);
  sub_29DFA8EDC(&qword_2A1819EB0, sub_29DFA8E3C, MEMORY[0x29EDBBEC0]);
  v25 = a2;
  v26 = v8;
  v27 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x2A1C7C4A8](OpaqueTypeMetadata2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v20 - v14;
  type metadata accessor for LearnMoreFooterText(0, a2, a3, v16);
  v22 = a2;
  v23 = a3;
  v24 = a1;
  swift_checkMetadataState();
  sub_29E2C2574();
  v17 = *(v10 + 16);
  v17(v15, v12, OpaqueTypeMetadata2);
  v18 = *(v10 + 8);
  v18(v12, OpaqueTypeMetadata2);
  v17(v21, v15, OpaqueTypeMetadata2);
  return (v18)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_29DFA89F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2C1D14();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  sub_29DFA8E3C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2C1CD4();
  v15 = a2;
  v16 = a3;
  v17 = a1;
  sub_29E2C2BE4();
  sub_29DFA8EDC(&qword_2A1819EA8, MEMORY[0x29EDC4318], MEMORY[0x29EDC4310]);
  sub_29E2C14E4();
  v12 = sub_29DFA8EDC(&qword_2A1819EB0, sub_29DFA8E3C, MEMORY[0x29EDBBEC0]);
  MEMORY[0x29ED7E530](v11, v8, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_29DFA8BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LearnMoreFooterText(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_29E2C2BB4();
}

void sub_29DFA8D28(uint64_t a1)
{
  if (!qword_2A1819E90)
  {
    sub_29E2C1F54();
    v1 = sub_29E2C1744();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819E90);
    }
  }
}

void sub_29DFA8D88(uint64_t a1)
{
  if (!qword_2A1819E98)
  {
    sub_29DFA8E3C(255);
    sub_29DFA8EDC(&qword_2A1819EB0, sub_29DFA8E3C, MEMORY[0x29EDBBEC0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1819E98);
    }
  }
}

void sub_29DFA8E3C(uint64_t a1)
{
  if (!qword_2A1819EA0)
  {
    sub_29E2C2BE4();
    sub_29DFA8EDC(&qword_2A1819EA8, MEMORY[0x29EDC4318], MEMORY[0x29EDC4310]);
    v1 = sub_29E2C14F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819EA0);
    }
  }
}

uint64_t sub_29DFA8EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29DFA8F24()
{
  result = qword_2A1819EB8;
  if (!qword_2A1819EB8)
  {
    sub_29DFA8D28(255);
    sub_29DFA8FD4();
    sub_29DFA8EDC(&qword_2A1819290, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819EB8);
  }

  return result;
}

unint64_t sub_29DFA8FD4()
{
  result = qword_2A1819EC0;
  if (!qword_2A1819EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819EC0);
  }

  return result;
}

uint64_t sub_29DFA9028@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for LearnMoreFooterText(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_29DFA8548(v7, v4, v5, a2);
}

uint64_t sub_29DFA90B4(uint64_t a1)
{
  sub_29DFA8D28(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29DFA9134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for LearnMoreFooterText(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[12], v5);

  return MEMORY[0x2A1C733A0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_29DFA923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LearnMoreFooterText(0, *(v4 + 16), *(v4 + 24), a4);
  sub_29DFA94FC(0, &qword_2A1819E88, MEMORY[0x29EDBCB00]);
  return sub_29E2C27E4();
}

__n128 sub_29DFA92E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_29DFA9304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_29DFA934C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29DFA93D0(uint64_t a1, __n128 a2)
{
  if (!qword_2A1819EC8)
  {
    sub_29DFA9460(255, &qword_2A1819ED0, MEMORY[0x29EDBC3F8], MEMORY[0x29EDBC938]);
    v2 = sub_29E2C1744();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1819EC8);
    }
  }
}

void sub_29DFA9460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29DFA94FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29DFA9550(__n128 a1)
{
  result = qword_2A1819ED8;
  if (!qword_2A1819ED8)
  {
    sub_29DFA93D0(255, a1);
    sub_29DFA95D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819ED8);
  }

  return result;
}

unint64_t sub_29DFA95D0()
{
  result = qword_2A1819EE0;
  if (!qword_2A1819EE0)
  {
    sub_29DFA9460(255, &qword_2A1819ED0, MEMORY[0x29EDBC3F8], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819EE0);
  }

  return result;
}

id static PregnancyDataTypeDetailConfigurationProvider.configuration(mode:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BF944();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29E2BF954();
  v34 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v35 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_29E2BF1F4();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29E2BF204();
  v7 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C0514();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v14 = sub_29E2C0504();
    v15 = sub_29E2C39F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v48 = v10;
      v17 = v16;
      v18 = swift_slowAlloc();
      v45[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_29DFAA104(0xD00000000000002CLL, 0x800000029E2D66D0, v45);
      _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Creating Pregnancy data type room", v17, 0xCu);
      sub_29DE93B3C(v18);
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);

      (*(v11 + 8))(v13, v48);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }
  }

  v43 = objc_opt_self();
  result = [v43 pregnancyType];
  if (result)
  {
    v20 = result;
    sub_29E2BF214();

    v46 = &_s23AllPregnanciesComponentVN;
    v47 = sub_29DFA9CD0();
    v45[0] = 0;
    sub_29E2BF224();
    v33 = *MEMORY[0x29EDC2620];
    v48 = a1;
    v32 = *(v7 + 104);
    v21 = v9;
    v22 = v9;
    v23 = v44;
    v32(v22);
    sub_29E2BF354();
    sub_29E2BF7F4();

    v24 = *(v7 + 8);
    v24(v21, v23);
    sub_29DE93B3C(v45);
    v46 = &_s21AddPregnancyComponentVN;
    v47 = sub_29DFA9D24();
    sub_29E2BF224();
    (v32)(v21, v33, v23);
    sub_29E2BF7F4();

    v24(v21, v23);
    sub_29DE93B3C(v45);
    result = [v43 pregnancyType];
    if (result)
    {
      v25 = v34;
      v26 = v35;
      *v35 = result;
      (*(v25 + 104))(v26, *MEMORY[0x29EDC2B00], v36);
      (*(v38 + 104))(v37, *MEMORY[0x29EDC2AF0], v39);
      v27 = v40;
      sub_29E2BF1E4();
      sub_29E2BF244();
      v28 = v42;
      v46 = v42;
      v47 = sub_29DFAA750(&qword_2A1819F00, MEMORY[0x29EDC2610], MEMORY[0x29EDC2608]);
      v29 = sub_29DEBB7E8(v45);
      v30 = v41;
      (*(v41 + 16))(v29, v27, v28);
      sub_29E2BF804();

      (*(v30 + 8))(v27, v28);
      return sub_29DFA9D78(v45);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_29DFA9CD0()
{
  result = qword_2A1819EF0;
  if (!qword_2A1819EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819EF0);
  }

  return result;
}

unint64_t sub_29DFA9D24()
{
  result = qword_2A1819EF8;
  if (!qword_2A1819EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819EF8);
  }

  return result;
}

uint64_t sub_29DFA9D78(uint64_t a1)
{
  sub_29DFA9DD4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DFA9DD4(uint64_t a1)
{
  if (!qword_2A1819F08)
  {
    sub_29DECF2D8();
    v1 = sub_29E2C4304();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1819F08);
    }
  }
}

uint64_t sub_29DFA9E4C(__n128 a1, uint64_t a2, uint64_t a3)
{
  if (sub_29E2BF334() == 1)
  {
    v4 = sub_29E2BF314();
    type metadata accessor for AllPregnanciesDataSource();
    v5 = swift_allocObject();
    v5[8] = 0;
    v5[9] = v4;
    v6 = MEMORY[0x29EDCA190];
    v5[6] = MEMORY[0x29EDCA190];
    v5[7] = v6;
    v5[10] = a3;
    swift_unknownObjectRetain();
    v7 = v4;
    sub_29E0018F0(v6, 1, v8);
    sub_29E13F998();

    sub_29DFAA750(&qword_2A1819F18, type metadata accessor for AllPregnanciesDataSource, &unk_29E2D8818);
    sub_29E2BE4C4();

    sub_29E2BE494();

    sub_29E2BE3B4();

    sub_29E2BE4A4();
  }

  else
  {
    sub_29E2BE3B4();
    swift_allocObject();
    sub_29E2BE3A4();
    sub_29E2BE4C4();

    sub_29E2BE494();

    type metadata accessor for AllPregnanciesDataSource();
    sub_29DFAA750(&qword_2A1819F18, type metadata accessor for AllPregnanciesDataSource, &unk_29E2D8818);

    sub_29E2BE4B4();
  }

  sub_29DFAA798(0);
  sub_29DFAA750(&qword_2A1819F28, sub_29DFAA798, MEMORY[0x29EDC22A8]);

  v9 = sub_29E2BE494();

  return v9;
}

unint64_t sub_29DFAA104(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_29E2BF404();
  v6 = sub_29DFAA1D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29DEA6E90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29DE93B3C(v11);
  return v7;
}

unint64_t sub_29DFAA1D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29DFAA2DC(a5, a6);
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
    result = sub_29E2C4604();
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

void *sub_29DFAA2DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_29DFAA328(a1, a2);
  sub_29DFAA458(&unk_2A24ADCB0);
  return v3;
}

void *sub_29DFAA328(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29DF26968(v5, 0);
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

  result = sub_29E2C4604();
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
        v10 = sub_29E2C3504();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29DF26968(v10, 0);
        result = sub_29E2C4574();
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

void sub_29DFAA458(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29DFAA544(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_29DFAA544(char *result, int64_t a2, char a3, char *a4)
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
    sub_29DFAAB48();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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