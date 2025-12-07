uint64_t sub_22F3D2324(uint64_t a1)
{
  sub_22F16E154();
  v2 = PFCanAccessLocationWithAuthorizationStatus();
  v3 = sub_22F16E7C4();
  v4 = v3;
  v5 = 0;
  if (((v2 ^ 1) & 1) == 0 && v3)
  {
    v6 = sub_22F16EEC4();
    v7 = *(v6 + 2);
    if (v7)
    {
      v8 = v7 - 1;
      v9 = (v6 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        if (*v9 <= *(a1 + 80))
        {
          v10 = *(a1 + 80);
        }

        if (v10 >= *(a1 + 88))
        {
          v10 = *(a1 + 88);
        }

        v5 = v11 < v10;
        v12 = v11 < v10 || v8-- == 0;
        v9 += 2;
      }

      while (!v12);
    }

    else
    {
      v5 = 0;
    }
  }

  v13 = v5 & sub_22F16D74C();
  v14 = sub_22F16DD60();
  v15 = v14;
  v16 = v13 | !v14;
  if ((v16 | v2 ^ 1))
  {
    v17 = v13 | v16 ^ 1;
  }

  else
  {
    v18 = *(sub_22F16EEC4() + 2);

    if (v18)
    {
      v17 = sub_22F16D74C() || v4 && !v5;
    }

    else
    {
      v17 = 1;
    }
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000003ALL, 0x800000022F79E3E0);
  v35 = v17;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v17)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v19, v20);

  MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F79E420);
  if (v2)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v2)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v21, v22);

  MEMORY[0x231900B10](0xD00000000000001ELL, 0x800000022F79E440);
  if (v5)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v5)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v23, v24);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F79E460);
  if (v15)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v15)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v25, v26);

  v28 = v36;
  v27 = v37;
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
  }

  if (byte_27DAD0FC8 == 1)
  {
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v29 = sub_22F740B90();
    __swift_project_value_buffer(v29, qword_27DAD0E10);

    v30 = sub_22F740B70();
    v31 = sub_22F7415F0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_22F145F20(v28, v27, &v36);
      _os_log_impl(&dword_22F0FC000, v30, v31, "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x2319033A0](v33, -1, -1);
      MEMORY[0x2319033A0](v32, -1, -1);
    }
  }

  else
  {
  }

  return v35 & 1;
}

_BYTE *sub_22F3D26E4(double *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v148 - v11;
  v154 = *(a3 + 16);
  v155 = a3;
  v13 = sub_22F16DA54();
  v14 = 7;
  if (v13)
  {
    v14 = 6;
  }

  v156 = a1;
  v15 = a1[v14];
  sub_22F16D08C();
  v157 = a2;
  sub_22F16CC5C(v9);
  sub_22F73F590();
  v17 = v16;
  v18 = *(v7 + 8);
  v153 = v9;
  v18(v9, v6);
  v152 = v18;
  v150 = v7 + 8;
  v18(v12, v6);
  if (v15 > fabs(v17))
  {
    v162 = 0;
    v163 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000057, 0x800000022F79DFC0);
    sub_22F7413B0();
    MEMORY[0x231900B10](540884512, 0xE400000000000000);
    sub_22F7413B0();
    v19 = v162;
    v20 = v163;
    v21 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
    if (qword_27DAAFE08 != -1)
    {
      swift_once();
    }

    if (byte_27DAD0FC8 == 1)
    {
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v22 = sub_22F740B90();
      __swift_project_value_buffer(v22, qword_27DAD0E10);

      v23 = sub_22F740B70();
      v24 = sub_22F7415F0();

      v25 = os_log_type_enabled(v23, v24);
      v26 = v157;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v162 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_22F145F20(v19, v20, &v162);
        _os_log_impl(&dword_22F0FC000, v23, v24, "%s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        v29 = v28;
        v21 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
        MEMORY[0x2319033A0](v29, -1, -1);
        MEMORY[0x2319033A0](v27, -1, -1);
      }

      v158 = 1;
      goto LABEL_23;
    }

    v158 = 0;
LABEL_22:
    v26 = v157;
    goto LABEL_23;
  }

  v162 = 0;
  v163 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000053, 0x800000022F79E380);
  sub_22F7413B0();
  MEMORY[0x231900B10](540884512, 0xE400000000000000);
  sub_22F7413B0();
  v30 = v162;
  v31 = v163;
  v21 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
  }

  if (byte_27DAD0FC8 != 1)
  {

    v158 = 0;
    v154 = 5;
    goto LABEL_22;
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v32 = sub_22F740B90();
  __swift_project_value_buffer(v32, qword_27DAD0E10);

  v33 = sub_22F740B70();
  v34 = sub_22F7415F0();

  v35 = os_log_type_enabled(v33, v34);
  v26 = v157;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v162 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_22F145F20(v30, v31, &v162);
    _os_log_impl(&dword_22F0FC000, v33, v34, "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x2319033A0](v37, -1, -1);
    v38 = v36;
    v21 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
    MEMORY[0x2319033A0](v38, -1, -1);
  }

  v158 = 1;
  v154 = 5;
LABEL_23:
  v39 = sub_22F3D0764(v156, v26, v155);
  v151 = "mode based on timeout: ";
  if (v39)
  {
    v162 = 0;
    v163 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000035, 0x800000022F79E020);
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v40 = sub_22F742010();
    MEMORY[0x231900B10](v40);

    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F79E360);
    v42 = v162;
    v41 = v163;
    if (*(v21 + 449) == -1)
    {
      if (v158)
      {
LABEL_26:
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v43 = sub_22F740B90();
        __swift_project_value_buffer(v43, qword_27DAD0E10);

        v44 = sub_22F740B70();
        v45 = sub_22F7415F0();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v162 = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_22F145F20(v42, v41, &v162);
          _os_log_impl(&dword_22F0FC000, v44, v45, "%s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          v48 = v47;
          v21 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
          MEMORY[0x2319033A0](v48, -1, -1);
          MEMORY[0x2319033A0](v46, -1, -1);
        }

        v154 = 5;
        goto LABEL_42;
      }
    }

    else
    {
      swift_once();
      if (v158)
      {
        goto LABEL_26;
      }
    }

    v154 = 5;
    goto LABEL_42;
  }

  v162 = 0;
  v163 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000035, 0x800000022F79E020);
  sub_22F73F470();
  sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v49 = sub_22F742010();
  MEMORY[0x231900B10](v49);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F79E060);
  v51 = v162;
  v50 = v163;
  if (*(v21 + 449) != -1)
  {
    swift_once();
    if (v158)
    {
      goto LABEL_33;
    }

LABEL_41:

    goto LABEL_42;
  }

  if (!v158)
  {
    goto LABEL_41;
  }

LABEL_33:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v52 = sub_22F740B90();
  __swift_project_value_buffer(v52, qword_27DAD0E10);

  v53 = sub_22F740B70();
  v54 = sub_22F7415F0();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v162 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_22F145F20(v51, v50, &v162);
    _os_log_impl(&dword_22F0FC000, v53, v54, "%s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    v57 = v56;
    v21 = &OBJC_IVAR___PGPublicEventCriteriaFactory__prohibitedCriteriaByEventCategory;
    MEMORY[0x2319033A0](v57, -1, -1);
    MEMORY[0x2319033A0](v55, -1, -1);
  }

LABEL_42:
  if ((sub_22F3D2324(v156) & 1) == 0)
  {
    v162 = 0;
    v163 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD00000000000003ALL, 0x800000022F79E080);
    sub_22F73F470();
    sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v68 = sub_22F742010();
    MEMORY[0x231900B10](v68);

    MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79E0C0);
    v70 = v162;
    v69 = v163;
    if (*(v21 + 449) == -1)
    {
      if (v158)
      {
LABEL_52:
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v71 = sub_22F740B90();
        __swift_project_value_buffer(v71, qword_27DAD0E10);

        v72 = sub_22F740B70();
        v73 = sub_22F7415F0();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v162 = v75;
          *v74 = 136315138;
          *(v74 + 4) = sub_22F145F20(v70, v69, &v162);
          _os_log_impl(&dword_22F0FC000, v72, v73, "%s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v75);
          v76 = v75;
          v26 = v157;
          MEMORY[0x2319033A0](v76, -1, -1);
          MEMORY[0x2319033A0](v74, -1, -1);
        }

        goto LABEL_61;
      }
    }

    else
    {
      swift_once();
      if (v158)
      {
        goto LABEL_52;
      }
    }

LABEL_61:
    v67 = v154;
    goto LABEL_62;
  }

  v162 = 0;
  v163 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000003ALL, 0x800000022F79E080);
  sub_22F73F470();
  sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v58 = sub_22F742010();
  MEMORY[0x231900B10](v58);

  MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79E340);
  v60 = v162;
  v59 = v163;
  if (*(v21 + 449) != -1)
  {
    swift_once();
    if (v158)
    {
      goto LABEL_45;
    }

LABEL_58:

    v67 = 4;
    goto LABEL_62;
  }

  if (!v158)
  {
    goto LABEL_58;
  }

LABEL_45:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v61 = sub_22F740B90();
  __swift_project_value_buffer(v61, qword_27DAD0E10);

  v62 = sub_22F740B70();
  v63 = sub_22F7415F0();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v162 = v65;
    *v64 = 136315138;
    *(v64 + 4) = sub_22F145F20(v60, v59, &v162);
    _os_log_impl(&dword_22F0FC000, v62, v63, "%s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    v66 = v65;
    v26 = v157;
    MEMORY[0x2319033A0](v66, -1, -1);
    MEMORY[0x2319033A0](v64, -1, -1);
  }

  v67 = 4;
LABEL_62:
  v162 = 0;
  v163 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000035, v151 | 0x8000000000000000);
  sub_22F73F470();
  sub_22F16F480(&qword_27DAB1620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v77 = sub_22F742010();
  MEMORY[0x231900B10](v77);

  MEMORY[0x231900B10](0x6D69742073616820, 0xEF20706D61747365);
  sub_22F16CC5C(v12);
  sub_22F16F480(&qword_2810AC6F8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v78 = sub_22F742010();
  MEMORY[0x231900B10](v78);

  v79 = v152;
  v152(v12, v6);
  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F79E0E0);
  sub_22F16D08C();
  v80 = sub_22F742010();
  MEMORY[0x231900B10](v80);

  v79(v12, v6);
  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79E100);
  sub_22F16CC5C(v12);
  v81 = v153;
  sub_22F16D08C();
  sub_22F73F590();
  v79(v81, v6);
  v79(v12, v6);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000020, 0x800000022F79E120);
  v82 = sub_22F16DD60();
  v83 = !v82;
  if (v82)
  {
    v84 = 1702195828;
  }

  else
  {
    v84 = 0x65736C6166;
  }

  if (v83)
  {
    v85 = 0xE500000000000000;
  }

  else
  {
    v85 = 0xE400000000000000;
  }

  MEMORY[0x231900B10](v84, v85);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79E150);
  v160 = v67;
  v86 = sub_22F742010();
  MEMORY[0x231900B10](v86);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79E170);
  v160 = *(v155 + 16);
  v87 = sub_22F742010();
  MEMORY[0x231900B10](v87);

  v89 = v162;
  v88 = v163;
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
    if (v158)
    {
      goto LABEL_70;
    }

LABEL_76:
    v93 = v67;

    goto LABEL_77;
  }

  if (!v158)
  {
    goto LABEL_76;
  }

LABEL_70:
  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v90 = sub_22F740B90();
  __swift_project_value_buffer(v90, qword_27DAD0E10);

  v91 = sub_22F740B70();
  v92 = sub_22F7415F0();

  v93 = v67;
  if (os_log_type_enabled(v91, v92))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v162 = v95;
    *v94 = 136315138;
    *(v94 + 4) = sub_22F145F20(v89, v88, &v162);
    _os_log_impl(&dword_22F0FC000, v91, v92, "%s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x2319033A0](v95, -1, -1);
    MEMORY[0x2319033A0](v94, -1, -1);
  }

  v26 = v157;
LABEL_77:
  v96 = *(v26 + 32);
  v97 = *(v26 + 40);
  v98 = v156;
  v99 = sub_22F3D2324(v156);
  v100 = sub_22F16E4B0();
  v101 = v100;
  v149 = v100;
  v102 = 0x65736C6166;
  if (v100)
  {
    v103 = 1702195828;
  }

  else
  {
    v103 = 0x65736C6166;
  }

  v155 = v103;
  if (v100)
  {
    v104 = 0xE400000000000000;
  }

  else
  {
    v104 = 0xE500000000000000;
  }

  v154 = v104;
  if (v97)
  {
    v105 = v93 == 4;
  }

  else
  {
    v105 = v93 == 5;
  }

  v148 = v105;
  if (v97)
  {
    v106 = 1702195828;
  }

  else
  {
    v106 = 0x65736C6166;
  }

  v153 = v106;
  if (v97)
  {
    v107 = 0xE400000000000000;
  }

  else
  {
    v107 = 0xE500000000000000;
  }

  v152 = v107;
  if (v93 == 4)
  {
    v102 = 1702195828;
  }

  v151 = v102;
  if (v93 == 4)
  {
    v108 = 0xE400000000000000;
  }

  else
  {
    v108 = 0xE500000000000000;
  }

  v150 = v108;
  v109 = *(v26 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_photosChallengeInferredSuggestsSharing);
  v110 = (v96 & 0xFFFFFFFFFFFFFFFELL) == 4;
  swift_beginAccess();
  v112 = *(v98 + 2);
  v111 = *(v98 + 3);
  type metadata accessor for PGSharedLibrarySimulationResult();
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = v111;
  *(v113 + 32) = v93;
  *(v113 + 40) = v99 & 1;
  *(v113 + 41) = v110;
  v114 = v148;
  *(v113 + 42) = v149;
  *(v113 + 43) = v114;
  v115 = v99 ^ v101;
  v116 = v113;
  *(v113 + 44) = (v115 & 1) == 0;
  if (v109)
  {
    v117 = v93 == 4;
  }

  else
  {
    v117 = v93 == 5;
  }

  if (v109 == 2)
  {
    v117 = 2;
  }

  *(v113 + 45) = v117;
  v160 = 0;
  v161 = 0xE000000000000000;

  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000004CLL, 0x800000022F79E190);
  v159 = v93;
  v118 = sub_22F742010();
  MEMORY[0x231900B10](v118);

  MEMORY[0x231900B10](47, 0xE100000000000000);
  MEMORY[0x231900B10](v151, v150);

  MEMORY[0x231900B10](0xD000000000000044, 0x800000022F79E1E0);
  MEMORY[0x231900B10](v153, v152);

  MEMORY[0x231900B10](0xD000000000000028, 0x800000022F79E230);
  MEMORY[0x231900B10](v155, v154);

  MEMORY[0x231900B10](0x72726F437369202ELL, 0xEE00203D20746365);
  if (v116[43])
  {
    v119 = 1702195828;
  }

  else
  {
    v119 = 0x65736C6166;
  }

  if (v116[43])
  {
    v120 = 0xE400000000000000;
  }

  else
  {
    v120 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v119, v120);

  MEMORY[0x231900B10](0xD00000000000002DLL, 0x800000022F79E260);
  v121 = v116[44];
  if (v121)
  {
    v122 = 1702195828;
  }

  else
  {
    v122 = 0x65736C6166;
  }

  if (v116[44])
  {
    v123 = 0xE400000000000000;
  }

  else
  {
    v123 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v122, v123);

  v124 = v161;
  if (v158)
  {
    v125 = v160;
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v126 = sub_22F740B90();
    __swift_project_value_buffer(v126, qword_27DAD0E10);

    v127 = sub_22F740B70();
    v128 = sub_22F7415F0();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v160 = v130;
      *v129 = 136315138;
      *(v129 + 4) = sub_22F145F20(v125, v124, &v160);
      _os_log_impl(&dword_22F0FC000, v127, v128, "%s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v130);
      MEMORY[0x2319033A0](v130, -1, -1);
      MEMORY[0x2319033A0](v129, -1, -1);
    }
  }

  else
  {
  }

  v131 = v116[45];
  v132 = v157;
  if (v131 == 2)
  {
LABEL_134:
    if ((v121 & 1) == 0)
    {
      if (v158)
      {
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v142 = sub_22F740B90();
        __swift_project_value_buffer(v142, qword_27DAD0E10);
        v143 = sub_22F740B70();
        v144 = sub_22F7415F0();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v160 = v146;
          *v145 = 136315138;
          *(v145 + 4) = sub_22F145F20(0xD000000000000055, 0x800000022F79E290, &v160);
          _os_log_impl(&dword_22F0FC000, v143, v144, "%s", v145, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v146);
          MEMORY[0x2319033A0](v146, -1, -1);
          MEMORY[0x2319033A0](v145, -1, -1);
        }
      }

      goto LABEL_142;
    }

    return v116;
  }

  v160 = 0;
  v161 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000040, 0x800000022F79E2F0);
  if (v131)
  {
    v133 = 1702195828;
  }

  else
  {
    v133 = 0x65736C6166;
  }

  if (v131)
  {
    v134 = 0xE400000000000000;
  }

  else
  {
    v134 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v133, v134);

  v135 = v161;
  if (v158)
  {
    v136 = v160;
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v137 = sub_22F740B90();
    __swift_project_value_buffer(v137, qword_27DAD0E10);

    v138 = sub_22F740B70();
    v139 = sub_22F7415F0();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v160 = v141;
      *v140 = 136315138;
      *(v140 + 4) = sub_22F145F20(v136, v135, &v160);
      _os_log_impl(&dword_22F0FC000, v138, v139, "%s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v141);
      MEMORY[0x2319033A0](v141, -1, -1);
      MEMORY[0x2319033A0](v140, -1, -1);
    }

    v132 = v157;
    goto LABEL_134;
  }

  if ((v121 & 1) == 0)
  {
LABEL_142:
    sub_22F38F63C(v132);
  }

  return v116;
}

unint64_t sub_22F3D4054()
{
  result = qword_27DAB0960;
  if (!qword_27DAB0960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB0960);
  }

  return result;
}

id sub_22F3D40A0(void (*a1)(uint64_t))
{
  [*(v1 + 32) lock];
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return [*(v1 + 32) unlock];
}

void sub_22F3D4140(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = (&v32 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Song(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = v1[1];
  v16 = v1[2];
  v15 = v1[3];
  v17 = v1[4];
  v37 = a1;
  v33 = v12;
  if (!v17)
  {
    v19 = (v16 + 64) >> 6;
    if (v19 <= v15 + 1)
    {
      v20 = v15 + 1;
    }

    else
    {
      v20 = (v16 + 64) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v19)
      {
        (*(v9 + 56))(v7, 1, 1, v8, v10);
        v22 = 0;
        goto LABEL_11;
      }

      v17 = *(v13 + 8 * v18);
      ++v15;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v18 = v15;
LABEL_10:
  v22 = (v17 - 1) & v17;
  sub_22F3DF188(*(v14 + 48) + *(v9 + 72) * (__clz(__rbit64(v17)) | (v18 << 6)), v7, type metadata accessor for Song);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = v18;
LABEL_11:
  *v1 = v14;
  v1[1] = v13;
  v1[2] = v16;
  v1[3] = v21;
  v1[4] = v22;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22F120ADC(v7, &qword_27DAB1250, &qword_22F781A10);
    (*(v35 + 56))(v37, 1, 1, v36);
    return;
  }

  v23 = v7;
  v24 = v33;
  sub_22F3DF250(v23, v33, type metadata accessor for Song);
  v25 = v36;
  v26 = *(v36 + 48);
  v27 = v1[5];
  v28 = v34;
  *v34 = v27;
  sub_22F3DF250(v24, v28 + v26, type metadata accessor for Song);
  v29 = __OFADD__(v27, 1);
  v30 = v27 + 1;
  v31 = v37;
  if (v29)
  {
    goto LABEL_18;
  }

  v1[5] = v30;
  sub_22F1207AC(v28, v31, &qword_27DAB1630, &qword_22F772A70);
  (*(v35 + 56))(v31, 0, 1, v25);
}

void sub_22F3D44B4(__n128 a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    if (sub_22F741D10())
    {
      sub_22F120634(0, &qword_2810A90E0, off_27887B100);
      swift_dynamicCast();
      type metadata accessor for MomentRelevanceData(0);
      swift_dynamicCast();
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v2 = v1[3];
    v3 = v1[4];
    if (!v3)
    {
      v5 = (v1[2] + 64) >> 6;
      if (v5 <= v2 + 1)
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = (v1[2] + 64) >> 6;
      }

      v7 = v6 - 1;
      while (1)
      {
        v4 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v4 >= v5)
        {
          v1[3] = v7;
          v1[4] = 0;
          return;
        }

        v3 = *(v1[1] + 8 * v4);
        ++v2;
        if (v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v4 = v1[3];
LABEL_14:
    v8 = (v3 - 1) & v3;
    v9 = *(*(*v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v3)))));
    v10 = v9;

    v1[3] = v4;
    v1[4] = v8;
    if (v9)
    {
LABEL_15:
      v11 = v1[5];
      if (!__OFADD__(v11, 1))
      {
        v1[5] = v11 + 1;
        return;
      }

      goto LABEL_20;
    }
  }
}

uint64_t sub_22F3D4644()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    v4 = (v0[2] + 64) >> 6;
    if (v4 <= v1 + 1)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = (v0[2] + 64) >> 6;
    }

    v6 = v5 - 1;
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        v8 = 0;
        v0[3] = v6;
        v0[4] = 0;
        return v8;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = v0[3];
LABEL_10:
  v7 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
  v0[3] = v3;
  v0[4] = (v2 - 1) & v2;
  v8 = v0[5];
  if (__OFADD__(v8, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v0[5] = v8 + 1;
  v9 = v7;

  return v8;
}

uint64_t sub_22F3D4720()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    v4 = (v0[2] + 64) >> 6;
    if (v4 <= v1 + 1)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = (v0[2] + 64) >> 6;
    }

    v6 = v5 - 1;
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        v7 = 0;
        v0[3] = v6;
        v0[4] = 0;
        return v7;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = v0[3];
LABEL_10:
  v0[3] = v3;
  v0[4] = (v2 - 1) & v2;
  v7 = v0[5];
  if (__OFADD__(v7, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v0[5] = v7 + 1;

  return v7;
}

void sub_22F3D47EC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4240, &qword_22F78ABB0);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = (&v39 - v4);
  v5 = type metadata accessor for DateAndLocation(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4248, &qword_22F78ABB8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4230, &qword_22F78ABA0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v45 = a1;
  v46 = v19;
  v40 = v15;
  if (!v20)
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        (*(v12 + 56))(v10, 1, 1, v11, v13);
        v25 = 0;
        goto LABEL_11;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v21 = v18;
LABEL_10:
  v25 = (v20 - 1) & v20;
  v26 = __clz(__rbit64(v20)) | (v21 << 6);
  sub_22F3DF188(*(v16 + 48) + *(v42 + 72) * v26, v7, type metadata accessor for DateAndLocation);
  v27 = *(*(v16 + 56) + 8 * v26);
  v28 = v7;
  v29 = *(v11 + 48);
  sub_22F3DF250(v28, v10, type metadata accessor for DateAndLocation);
  *&v10[v29] = v27;
  (*(v12 + 56))(v10, 0, 1, v11);

  v24 = v21;
LABEL_11:
  *v1 = v16;
  v1[1] = v17;
  v1[2] = v46;
  v1[3] = v24;
  v1[4] = v25;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22F120ADC(v10, &qword_27DAB4248, &qword_22F78ABB8);
    (*(v43 + 56))(v45, 1, 1, v44);
    return;
  }

  v30 = v10;
  v31 = v40;
  sub_22F1207AC(v30, v40, &qword_27DAB4230, &qword_22F78ABA0);
  v32 = v44;
  v33 = *(v44 + 48);
  v34 = v1[5];
  v35 = v41;
  *v41 = v34;
  sub_22F1207AC(v31, v35 + v33, &qword_27DAB4230, &qword_22F78ABA0);
  v36 = __OFADD__(v34, 1);
  v37 = v34 + 1;
  v38 = v45;
  if (v36)
  {
    goto LABEL_18;
  }

  v1[5] = v37;
  sub_22F1207AC(v35, v38, &qword_27DAB4240, &qword_22F78ABB0);
  (*(v43 + 56))(v38, 0, 1, v32);
}

uint64_t static MusicForMomentCacher.coarseDateAndLocation(fromEvent:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F73F270();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22F73F9B0();
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v57 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = (*(v18 + 24))(v19, v18);
  if (v20)
  {
    v21 = v20;
    v49 = v4;
    v51 = a2;
    v23 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    (*(v22 + 8))(v23, v22);
    v24 = *(v13 + 48);
    if (v24(v11, 1, v12) == 1)
    {

LABEL_9:
      sub_22F120ADC(v11, &qword_27DAB0920, &qword_22F770B20);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
      return (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
    }

    v48 = v21;
    v45 = *(v13 + 32);
    v46 = v13 + 32;
    v45(v17, v11, v12);
    sub_22F73F970();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
    v28 = sub_22F73F990();
    v47 = v24;
    v29 = v28;
    v30 = *(v28 - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_22F770DF0;
    v34 = v33 + v32;
    v35 = *(v30 + 104);
    v35(v34, *MEMORY[0x277CC9988], v29);
    v35(v34 + v31, *MEMORY[0x277CC9998], v29);
    sub_22F3D97CC(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v36 = v54;
    v37 = v57;
    sub_22F73F860();

    v11 = v53;
    sub_22F73F920();
    (*(v56 + 8))(v36, v49);
    (*(v52 + 8))(v37, v55);
    (*(v13 + 8))(v17, v12);
    if (v47(v11, 1, v12) == 1)
    {

      goto LABEL_9;
    }

    v39 = v50;
    v40 = v45;
    v45(v50, v11, v12);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
    v42 = *(v41 + 48);
    v43 = v51;
    v40(v51, v39, v12);
    *(v43 + v42) = v48;
    return (*(*(v41 - 8) + 56))(v43, 0, 1, v41);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
    v26 = *(*(v25 - 8) + 56);

    return v26(a2, 1, 1, v25);
  }
}

uint64_t sub_22F3D52CC()
{
  v0 = sub_22F740BB0();
  __swift_allocate_value_buffer(v0, qword_2810AA940);
  *__swift_project_value_buffer(v0, qword_2810AA940) = 15;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_22F3D535C()
{
  v7 = sub_22F741640();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22F741630();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22F740C00();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_22F120634(0, &qword_2810A90E8, 0x277D85C78);
  sub_22F740BE0();
  v8 = MEMORY[0x277D84F90];
  sub_22F3DE004(&unk_2810A90F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F16BC6C(&qword_2810A92A8, &qword_27DAB29A8, &unk_22F77BFD0, MEMORY[0x277D83970]);
  sub_22F741970();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_22F741660();
  qword_2810AA928 = result;
  return result;
}

void static MusicForMomentCacher.cacheMusic(forMomentsInPhotoLibrary:progressReporter:completionHandler:)(void *a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v103 = a3;
  v104 = a4;
  v6 = sub_22F740C00();
  MEMORY[0x28223BE20](v6 - 8);
  v100 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v96 = *(v8 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v83 - v11;
  v13 = type metadata accessor for CacherStatusUpdater(0);
  v99 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  v101 = a2;
  v22 = a1;
  v23 = sub_22F7416B0();
  v102 = v24;
  v25 = sub_22F1A26E0(v22);
  v91 = v22;
  v92 = v18;
  v90 = v9;
  v93 = v12;
  v94 = v15;
  v95 = v23;
  v26 = 0xEE00746E656D6F4DLL;
  v27 = v21;
  v28 = 0x726F46636973756DLL;
  v29 = v25;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v30 = v29;
  v31 = sub_22F1ED5B0(v29);

  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEE00746E656D6F4DLL, v27);
  v89 = v30;
  v32 = sub_22F3DC190(v27, v31, v95);
  v33 = v31;
  v35 = v102;
  v34 = v103;
  v87 = v33;
  v88 = v27;
  if ((v32 & 1) == 0)
  {
    sub_22F7416A0();
    v34(1, 0);

    v38 = v88;
LABEL_5:
    sub_22F120ADC(v38, &qword_27DAB1DA0, &unk_22F7771B0);
    return;
  }

  v36 = v92;
  sub_22F13BA9C(v88, v92, &qword_27DAB1DA0, &unk_22F7771B0);
  v37 = type metadata accessor for CacherStatus(0);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
  {
    sub_22F120ADC(v36, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  else
  {
    v40 = *v36;
    v39 = v36[1];

    sub_22F3DF1F0(v36, type metadata accessor for CacherStatus);
    if (v39)
    {
      v28 = v40;
      v26 = v39;
    }
  }

  v41 = v94;
  v43 = v99;
  v42 = v100;
  v44 = v13;
  sub_22F13BA9C(v88, v94, &qword_27DAB1DA0, &unk_22F7771B0);
  v45 = (v41 + *(v13 + 20));
  *v45 = v28;
  v45[1] = v26;
  v46 = v93;
  sub_22F3DF188(v41, v93, type metadata accessor for CacherStatusUpdater);
  v43[7](v46, 0, 1, v44);
  v47 = swift_allocObject();
  v48 = v104;
  *(v47 + 16) = v34;
  *(v47 + 24) = v48;

  v49 = sub_22F7416E0();
  v99 = v50;
  v100 = v49;
  v92 = v51;
  v53 = v52;
  sub_22F740BD0();
  v54 = sub_22F22FB24(v42, 0);
  v85 = v53;
  v86 = v54;
  v55 = v47;
  v56 = v91;
  v57 = sub_22F3DC674(v91);
  v58 = v95;
  v84 = v57;
  v59 = sub_22F1A26E0(v56);
  v60 = v88;
  v61 = v99;
  v62 = v59;
  sub_22F3DC858(v84, v59, v99);
  v64 = v63;
  v65 = *(v63 + 16);
  if (!v65)
  {
    v101 = v55;

    v81 = v102;
    sub_22F7416A0();
    v82 = v85;
    v103(1, 0);

    sub_22F120ADC(v93, &qword_27DAB4208, &unk_22F78AAC8);
    sub_22F3DF1F0(v94, type metadata accessor for CacherStatusUpdater);
    v38 = v60;
    goto LABEL_5;
  }

  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  if (v65 > 0xA)
  {
    v67 = *(type metadata accessor for DateAndLocation(0) - 8);
    sub_22F10B040(v64, v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), 0, 0x15uLL);
    v69 = v68;
    *(v66 + 16) = v68;

    v64 = v69;
  }

  v70 = v97;
  v71 = v98;
  v72 = v96;
  sub_22F13BA9C(v93, v97, &qword_27DAB4208, &unk_22F78AAC8);
  v73 = (*(v72 + 80) + 80) & ~*(v72 + 80);
  v74 = swift_allocObject();
  v75 = v102;
  v74[2] = v102;
  v74[3] = sub_22F3B1774;
  v74[4] = v55;
  v74[5] = v66;
  v74[6] = v62;
  v74[7] = v71;
  v104 = v66;
  v76 = v85;
  v74[8] = v86;
  v74[9] = v76;
  sub_22F1207AC(v70, v74 + v73, &qword_27DAB4208, &unk_22F78AAC8);

  v77 = v75;

  v78 = v62;

  v79 = v76;
  v80 = v92;
  sub_22F3D7F74(v64, v92, sub_22F3DDE8C, v74);

  sub_22F120ADC(v93, &qword_27DAB4208, &unk_22F78AAC8);
  sub_22F3DF1F0(v94, type metadata accessor for CacherStatusUpdater);
  sub_22F120ADC(v88, &qword_27DAB1DA0, &unk_22F7771B0);
}

void static MusicForMomentCacher.cacheMusic(forMomentsInPhotoLibrary:cacherStatusUpdater:maximumNumberOfDatesAndLocationsToProcess:progressReporter:completionHandler:)(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v57 = a6;
  v55 = a2;
  v56 = a5;
  v59 = a3;
  v60 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = sub_22F740C00();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F7416E0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_22F740BD0();
  v22 = sub_22F22FB24(v14, 0);
  if (v6)
  {

    return;
  }

  v23 = v59;
  v51 = v9;
  v52 = v11;
  v53 = v22;
  v24 = v60;
  v25 = sub_22F3DC674(v60);
  v50 = v15;
  v26 = sub_22F1A26E0(v24);
  sub_22F3DC858(v25, v26, v17);
  v60 = v26;
  v28 = *(v27 + 16);
  v49 = v25;
  if (!v28)
  {

    sub_22F7416A0();
    v46 = v50;
    v56(0);
    v47 = v60;
LABEL_10:

    return;
  }

  v29 = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  if (v28 <= v23)
  {
    v36 = v29;
    v35 = v52;
    v59 = v36;
    v34 = v30;
    goto LABEL_9;
  }

  v48 = v30;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v31 = *(type metadata accessor for DateAndLocation(0) - 8);
    sub_22F10B040(v29, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), 0, (2 * v23) | 1);
    v33 = v32;
    v34 = v48;
    *(v48 + 16) = v32;

    v59 = v33;
    v35 = v52;
LABEL_9:
    sub_22F13BA9C(v55, v35, &qword_27DAB4208, &unk_22F78AAC8);
    v37 = (*(v54 + 80) + 80) & ~*(v54 + 80);
    v38 = swift_allocObject();
    v39 = v56;
    v38[2] = a4;
    v38[3] = v39;
    v38[4] = v57;
    v38[5] = v34;
    v40 = v58;
    v38[6] = v60;
    v38[7] = v40;
    v38[8] = v53;
    v38[9] = v21;
    sub_22F1207AC(v35, v38 + v37, &qword_27DAB4208, &unk_22F78AAC8);
    v41 = v59;

    v42 = a4;

    v43 = v60;
    v44 = v60;

    v45 = v21;
    sub_22F3D7F74(v41, v19, sub_22F3DF338, v38);

    v47 = v43;

    v46 = v50;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_22F3D668C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), void (*a5)(uint64_t), char *a6, void *a7, void *a8, void *a9, char *a10, uint64_t a11)
{
  v102 = a8;
  v105 = a7;
  v101 = a6;
  v104 = a5;
  v103 = a4;
  v14 = sub_22F740AD0();
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DateAndLocation(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v25 = &v85 - v24;
  if (a2)
  {
    sub_22F7416A0();
    v103(a2);
  }

  else
  {
    v26 = v105;
    v91 = v18;
    v92 = v17;
    v93 = v16;
    v94 = v14;
    v95 = v20;
    v27 = *(a1 + 16);
    v96 = a3;
    if (v27)
    {
      v28 = a1;
      v100 = v23;
      v29 = v25;
      v101 = a10;
      *&v108[0] = MEMORY[0x277D84FA0];
      v30 = a1 + 64;
      v31 = 1 << *(a1 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & *(a1 + 64);
      v34 = (v31 + 63) >> 6;

      v35 = 0;
      if (v33)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v36 >= v34)
        {
          break;
        }

        v33 = *(v30 + 8 * v36);
        ++v35;
        if (v33)
        {
          v35 = v36;
          do
          {
LABEL_12:
            v33 &= v33 - 1;

            sub_22F2EAA2C(v37);
          }

          while (v33);
          continue;
        }
      }

      v38 = *&v108[0];
      v39 = *(*&v108[0] + 16);
      v99 = a9;
      if (v39)
      {
        v40 = sub_22F10B348(v39, 0);
        v41 = sub_22F11A438(v108, v40 + 4, v39, v38);
        sub_22F0FF590(*&v108[0]);
        if (v41 != v39)
        {
          goto LABEL_29;
        }

        v98 = v40;
      }

      else
      {

        v98 = MEMORY[0x277D84F90];
      }

      static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEE00746E656D6F4DLL, v106);
      sub_22F13BA9C(a11, v29, &qword_27DAB4208, &unk_22F78AAC8);
      v73 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v74 = (v22 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
      v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
      v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
      v78 = swift_allocObject();
      sub_22F1207AC(v29, v78 + v73, &qword_27DAB4208, &unk_22F78AAC8);
      v79 = v105;
      *(v78 + v74) = v105;
      *(v78 + v75) = v28;
      *(v78 + v76) = v102;
      v80 = v96;
      *(v78 + v77) = v96;
      v81 = (v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
      v82 = v104;
      *v81 = v103;
      v81[1] = v82;

      v83 = v79;
      v84 = v80;

      sub_22F2280D8(v98, v106, 29557, 0xE200000000000000, v101, sub_22F3DF09C, v78);

      v108[0] = v106[0];
      v108[1] = v106[1];
      v108[2] = v106[2];
      v109 = v107;
      sub_22F1D210C(v108);
    }

    else
    {
      v42 = v101;
      swift_beginAccess();
      v43 = v42[2];
      v44 = *(v43 + 16);
      v90 = OBJC_IVAR___PGMusicCache_managedObjectContext;

      v89 = v44;
      if (v44)
      {
        v45 = v26;
        v46 = 0;
        v47 = v100 + 1;
        v87 = xmmword_22F78AAB0;
        v48 = v95;
        v49 = v94;
        v50 = v93;
        v88 = v43;
        v86 = v100 + 1;
        while (v46 < *(v43 + 16))
        {
          sub_22F3DF188(v43 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v46, v48, type metadata accessor for DateAndLocation);
          v102 = *(v48 + *(v92 + 20));
          v51 = [objc_opt_self() ignoreProgress];
          sub_22F741740();
          if (qword_2810A8E80 != -1)
          {
            swift_once();
          }

          v52 = qword_2810A8E88;
          sub_22F740AC0();
          v101 = v52;
          sub_22F740A90();
          v53 = *v47;
          (*v47)(v50, v49);
          sub_22F741690();
          v97 = v53;
          v54 = v46;
          v98 = sub_22F7416E0();
          v56 = v55;
          v99 = v57;
          v59 = v58;
          type metadata accessor for Geohash();
          inited = swift_initStackObject();
          *(inited + 16) = 0;
          *(inited + 24) = 0;
          v100 = v51;
          v61 = v102;
          [v102 coordinate];
          v63 = v62;
          [v61 coordinate];
          sub_22F34AF8C(4, v63, v64);
          v66 = v65;
          v68 = v67;
          swift_setDeallocating();

          MEMORY[0x28223BE20](v69);
          *(&v85 - 18) = v45;
          v70 = v98;
          *(&v85 - 17) = 0x6D617A616873;
          *(&v85 - 16) = 0xE600000000000000;
          *(&v85 - 15) = v66;
          v48 = v95;
          *(&v85 - 14) = v68;
          *(&v85 - 13) = v48;
          *(&v85 - 12) = 0;
          *(&v85 - 11) = 0;
          *(&v85 - 5) = v87;
          *(&v85 - 8) = v61;
          *(&v85 - 7) = v70;
          *(&v85 - 6) = MEMORY[0x277D84F90];
          *(&v85 - 10) = 16777472;
          v71 = v56;
          *(&v85 - 4) = v56;
          v72 = v99;
          *(&v85 - 3) = v99;
          *(&v85 - 2) = v59;
          sub_22F7417A0();

          sub_22F741730();
          v50 = v93;
          sub_22F740AC0();
          sub_22F740A90();

          v46 = v54 + 1;
          v49 = v94;
          v47 = v86;
          v97(v50, v94);
          sub_22F3DF1F0(v48, type metadata accessor for DateAndLocation);
          v45 = v105;
          v43 = v88;
          if (v89 == v46)
          {
            goto LABEL_26;
          }
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      else
      {
LABEL_26:

        sub_22F7416A0();
        v103(0);
      }
    }
  }
}

void sub_22F3D70CC(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v110 = a8;
  v108 = a7;
  v129 = a5;
  v130 = a3;
  v119 = a4;
  v109 = a9;
  v128 = sub_22F740AD0();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4230, &qword_22F78ABA0);
  MEMORY[0x28223BE20](v117);
  v116 = &v105 - v12;
  v115 = type metadata accessor for DateAndLocation(0);
  MEMORY[0x28223BE20](v115);
  v120 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4238, &qword_22F78ABA8);
  MEMORY[0x28223BE20](v14 - 8);
  v118 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v105 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v105 - v23;
  v25 = type metadata accessor for CacherStatusUpdater(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v125 = &v105 - v30;
  v31 = type metadata accessor for Song(0);
  v107 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8);
  MEMORY[0x28223BE20](v32);
  v106 = &v105 - v33;
  MEMORY[0x28223BE20](v34);
  v37 = &v105 - v36;
  if (a2)
  {
    v38 = v119;
    sub_22F13BA9C(v130, v21, &qword_27DAB4208, &unk_22F78AAC8);
    if ((*(v26 + 48))(v21, 1, v25) == 1)
    {
      sub_22F120ADC(v21, &qword_27DAB4208, &unk_22F78AAC8);
    }

    else
    {
      sub_22F3DF250(v21, v28, type metadata accessor for CacherStatusUpdater);
      CacherStatusUpdater.writeFailure(to:)(v38);
      sub_22F3DF1F0(v28, type metadata accessor for CacherStatusUpdater);
    }

    sub_22F7416A0();
    v102 = a1;
LABEL_44:
    v110(v102);
    return;
  }

  v124 = v25;
  v105 = v35;
  v114 = v18;
  v39 = *(a1 + 16);
  if (v39)
  {
    v40 = (a1 + 32);
    v41 = MEMORY[0x277D84F98];
    do
    {
      memcpy(v133, v40, sizeof(v133));
      v42 = v133[1];
      v43 = v133[0];
      memcpy(v132, v40, sizeof(v132));
      sub_22F18C4EC(v133, v131);
      sub_22F18C4EC(v133, v131);
      Song.init(_:)(v132);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132[0] = v41;
      sub_22F1307F8(v37, v43, v42, isUniquelyReferenced_nonNull_native);
      sub_22F18C524(v133);
      v41 = v132[0];
      v40 += 296;
      --v39;
    }

    while (v39);
  }

  else
  {
    v41 = MEMORY[0x277D84F98];
  }

  sub_22F13BA9C(v130, v24, &qword_27DAB4208, &unk_22F78AAC8);
  if ((*(v26 + 48))(v24, 1, v124) == 1)
  {
    sub_22F120ADC(v24, &qword_27DAB4208, &unk_22F78AAC8);
    v130 = 0;
    v45 = v120;
    v46 = v114;
  }

  else
  {
    v47 = v125;
    sub_22F3DF250(v24, v125, type metadata accessor for CacherStatusUpdater);
    CacherStatusUpdater.writeSuccess(to:)(v119);
    v45 = v120;
    v46 = v114;
    v130 = 0;
    sub_22F3DF1F0(v47, type metadata accessor for CacherStatusUpdater);
  }

  v48 = -1 << *(v129 + 32);
  v49 = ~v48;
  v50 = v129[8];
  v51 = -v48;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v133[0] = v129;
  v133[1] = (v129 + 8);
  v133[2] = v49;
  v133[3] = 0;
  v133[4] = v52 & v50;
  v133[5] = 0;
  v112 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  ++v126;

  v111 = xmmword_22F78AAB0;
  v113 = v41;
  while (2)
  {
    v53 = v118;
    sub_22F3D47EC(v118);
    sub_22F1207AC(v53, v46, &qword_27DAB4238, &qword_22F78ABA8);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4240, &qword_22F78ABB0);
    if ((*(*(v54 - 8) + 48))(v46, 1, v54) == 1)
    {
      sub_22F0FF590(v133[0]);

      v101 = v130;
      sub_22F7416A0();
      if (v101)
      {

        v102 = 0;
      }

      else
      {
LABEL_46:
        v102 = 0;
      }

      goto LABEL_44;
    }

    v55 = v46 + *(v54 + 48);
    v56 = v116;
    v57 = *(v55 + *(v117 + 48));
    sub_22F3DF250(v55, v116, type metadata accessor for DateAndLocation);
    sub_22F3DF250(v56, v45, type metadata accessor for DateAndLocation);
    v58 = 1 << *(v57 + 32);
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & *(v57 + 56);
    v61 = (v58 + 63) >> 6;

    v62 = 0;
    v129 = MEMORY[0x277D84F90];
    while (v60)
    {
      v63 = v60;
LABEL_28:
      v60 = (v63 - 1) & v63;
      if (*(v41 + 16))
      {
        v65 = (*(v57 + 48) + ((v62 << 10) | (16 * __clz(__rbit64(v63)))));
        v66 = *v65;
        v67 = v65[1];

        v68 = sub_22F1229E8(v66, v67);
        if (v69)
        {
          v70 = *(v107 + 72);
          v71 = v105;
          sub_22F3DF188(*(v41 + 56) + v70 * v68, v105, type metadata accessor for Song);

          sub_22F3DF250(v71, v106, type metadata accessor for Song);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_22F13E558(0, v129[2] + 1, 1, v129);
          }

          v73 = v129[2];
          v72 = v129[3];
          if (v73 >= v72 >> 1)
          {
            v129 = sub_22F13E558((v72 > 1), v73 + 1, 1, v129);
          }

          v74 = v129;
          v129[2] = v73 + 1;
          sub_22F3DF250(v106, v74 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + v73 * v70, type metadata accessor for Song);
          v45 = v120;
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v64 >= v61)
      {
        break;
      }

      v63 = *(v57 + 56 + 8 * v64);
      ++v62;
      if (v63)
      {
        v62 = v64;
        goto LABEL_28;
      }
    }

    v75 = *(v45 + *(v115 + 20));
    v76 = [objc_opt_self() ignoreProgress];
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v77 = qword_2810A8E88;
    v78 = v127;
    sub_22F740AC0();
    sub_22F740A90();
    v79 = *v126;
    (*v126)(v78, v128);
    v80 = v130;
    sub_22F741690();
    if (!v80)
    {
      v121 = v77;
      v122 = v79;
      v123 = sub_22F7416E0();
      v124 = v81;
      v83 = v82;
      v125 = v76;
      v85 = v84;
      type metadata accessor for Geohash();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      [v75 coordinate];
      v88 = v87;
      [v75 coordinate];
      sub_22F34AF8C(4, v88, v89);
      v91 = v90;
      v93 = v92;
      swift_setDeallocating();

      MEMORY[0x28223BE20](v94);
      *(&v105 - 18) = v95;
      *(&v105 - 17) = 0x6D617A616873;
      *(&v105 - 16) = 0xE600000000000000;
      *(&v105 - 15) = v91;
      *(&v105 - 14) = v93;
      *(&v105 - 13) = v45;
      v97 = v123;
      v96 = v124;
      *(&v105 - 12) = 0;
      *(&v105 - 11) = 0;
      *(&v105 - 5) = v111;
      *(&v105 - 8) = v75;
      *(&v105 - 7) = v97;
      *(&v105 - 6) = v129;
      *(&v105 - 10) = 16777472;
      v98 = v83;
      *(&v105 - 4) = v83;
      *(&v105 - 3) = v96;
      v99 = v96;
      *(&v105 - 2) = v85;
      sub_22F7417A0();
      v130 = 0;

      sub_22F741730();
      v100 = v127;
      sub_22F740AC0();
      sub_22F740A90();

      v122(v100, v128);
      v45 = v120;
      sub_22F3DF1F0(v120, type metadata accessor for DateAndLocation);
      v41 = v113;
      v46 = v114;
      continue;
    }

    break;
  }

  v130 = v80;

  sub_22F0FF590(v133[0]);
  sub_22F3DF1F0(v45, type metadata accessor for DateAndLocation);
  sub_22F7416A0();
  v103 = v130;
  v104 = v130;
  v110(v103);
}

uint64_t sub_22F3D7F74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22F740BC0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22F740C00();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810AA920 != -1)
  {
    swift_once();
  }

  v20[1] = qword_2810AA928;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a2;
  v16[6] = v4;
  aBlock[4] = sub_22F3DEF00;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F327D80;
  aBlock[3] = &block_descriptor_56;
  v17 = _Block_copy(aBlock);

  v18 = a2;
  sub_22F740BE0();
  v22 = MEMORY[0x277D84F90];
  sub_22F3DE004(&qword_2810A93D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3D00, &qword_22F78AB80);
  sub_22F16BC6C(&qword_2810A92F8, &qword_27DAB3D00, &qword_22F78AB80, MEMORY[0x277D83970]);
  sub_22F741970();
  MEMORY[0x231901200](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

void sub_22F3D8298(uint64_t a1, void (*a2)(uint64_t, void *, __n128), uint64_t a3, void *a4)
{
  v71 = sub_22F740C30();
  v8 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v62 - v12;
  v87 = sub_22F740AD0();
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DateAndLocation(0);
  v91 = *(v85 - 8);
  v14 = *(v91 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4210, &qword_22F78AB88);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v88 = &v62 - v23;
  v24 = *(a1 + 16);
  if (!v24)
  {
    a2(MEMORY[0x277D84F98], 0, v22);
    return;
  }

  v63 = v8;
  v68 = v10;
  v64 = a3;
  v65 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4218, &unk_22F78AB90);
  v25 = swift_allocObject();
  v26 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v25 + 16) = MEMORY[0x277D84F98];
  v67 = v25 + 16;
  v27 = MEMORY[0x277D84F90];
  *(v25 + 32) = v26;
  *(v25 + 24) = v27;
  v66 = v25 + 24;
  v69 = a4;
  v28 = [a4 progressReportersForParallelOperationsWithCount_];
  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
  v29 = sub_22F741180();

  v89 = dispatch_group_create();
  v30 = 0;
  v31 = *(v91 + 80);
  v32 = a1 + ((v31 + 32) & ~v31);
  v77 = *(v91 + 72);
  v33 = v29 & 0xFFFFFFFFFFFFFF8;
  v91 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 < 0)
  {
    v33 = v29;
  }

  v62 = v33;
  v83 = v29 & 0xC000000000000001;
  v78 = v31;
  v76 = (v31 + 24) & ~v31;
  v75 = (v14 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v90 + 8);
  v72 = v93;
  v80 = v20;
  v81 = v25;
  v79 = v24;
  v82 = v29;
  while (1)
  {
    sub_22F3DF188(v32, v20, type metadata accessor for DateAndLocation);
    if (v29 >> 62)
    {
      break;
    }

    if (v30 == *(v91 + 16))
    {
      goto LABEL_18;
    }

LABEL_7:
    if (v83)
    {
      v34 = MEMORY[0x2319016F0](v30, v29);
    }

    else
    {
      if (v30 >= *(v91 + 16))
      {
        __break(1u);
        sub_22F7411C0();
        sub_22F741220();
        swift_endAccess();
        [*(v25 + 32) unlock];

        goto LABEL_30;
      }

      v34 = *(v29 + 8 * v30 + 32);
    }

    v35 = v34;
    v36 = v88;
    sub_22F3DF250(v20, v88, type metadata accessor for DateAndLocation);
    sub_22F3DF250(v36, v17, type metadata accessor for DateAndLocation);
    sub_22F741690();
    v37 = v89;
    dispatch_group_enter(v89);
    v38 = v84;
    v90 = *&v17[*(v85 + 20)];
    sub_22F3DF188(v17, v84, type metadata accessor for DateAndLocation);
    v39 = v74;
    v40 = swift_allocObject();
    *(v40 + 16) = v25;
    sub_22F3DF250(v38, v40 + v76, type metadata accessor for DateAndLocation);
    *(v40 + v75) = v35;
    *(v40 + v39) = v37;

    v41 = v35;
    v42 = v37;
    sub_22F741740();
    v43 = v17;
    if (qword_2810A8E48 != -1)
    {
      swift_once();
    }

    ++v30;
    v44 = v86;
    sub_22F740AC0();
    sub_22F740A90();
    (*v73)(v44, v87);
    v45 = objc_opt_self();
    v46 = sub_22F73F5B0();
    v47 = swift_allocObject();
    *(v47 + 16) = "ShazamClient Fetch Popular Music";
    *(v47 + 24) = 32;
    *(v47 + 32) = 2;
    *(v47 + 40) = sub_22F3DEF28;
    *(v47 + 48) = v40;
    v93[2] = sub_22F2F99AC;
    v93[3] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v93[0] = sub_22F2F99BC;
    v93[1] = &block_descriptor_37_0;
    v48 = _Block_copy(aBlock);

    [v45 affinityGroupsForLocation:v90 atDate:v46 completionHandler:{v48, v62}];
    _Block_release(v48);

    sub_22F3DF1F0(v43, type metadata accessor for DateAndLocation);
    v32 += v77;
    v17 = v43;
    v20 = v80;
    v25 = v81;
    v29 = v82;
    if (v79 == v30)
    {

      goto LABEL_19;
    }
  }

  if (v30 != sub_22F741A00())
  {
    goto LABEL_7;
  }

LABEL_18:

  sub_22F3DF1F0(v20, type metadata accessor for DateAndLocation);
LABEL_19:
  v49 = (v63 + 8);
  v50 = 7;
  v51 = v71;
  while (1)
  {
    v52 = v68;
    sub_22F740C10();
    if (qword_2810AA938 != -1)
    {
      swift_once();
    }

    v53 = sub_22F740BB0();
    __swift_project_value_buffer(v53, qword_2810AA940);
    v54 = v70;
    sub_22F740C20();
    v55 = *v49;
    (*v49)(v52, v51);
    v56 = sub_22F741610();
    v55(v54, v51);
    if ((v56 & 1) == 0)
    {
      break;
    }

    if (!--v50)
    {
      [*(v25 + 32) lock];
      swift_beginAccess();
      sub_22F3DEFD4();
      v57 = swift_allocError();
      *v58 = 1;
      sub_22F73F360();
      MEMORY[0x231900D00]();
      if (*((*(v25 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v25 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      swift_endAccess();

      [*(v25 + 32) unlock];
      break;
    }

    sub_22F741690();
  }

  sub_22F7416A0();
LABEL_30:
  swift_beginAccess();
  v59 = *(v25 + 16);

  v61 = sub_22F3D91C0(v60);

  (v65)(v59, v61);
}

void sub_22F3D8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v7 = *a1;
  if (*(a1 + 9))
  {
    v8 = *(a1 + 8);
    [*(a2 + 32) lock];
    swift_beginAccess();
    sub_22F3DF028();
    v9 = swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v8 & 1;
    v11 = v7;
    sub_22F73F360();
    MEMORY[0x231900D00]();
    if (*((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    swift_endAccess();

    [*(a2 + 32) unlock];
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    sub_22F3D40A0(sub_22F3DF080);
  }

  sub_22F7416A0();
  dispatch_group_leave(a5);
}

uint64_t sub_22F3D914C(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_22F1332C4(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

id sub_22F3D91C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x2319016F0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v4 = *(a1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = [v4 description];
        v8 = sub_22F740E20();
        v10 = v9;

        MEMORY[0x231900B10](v8, v10);

        MEMORY[0x231900B10](10272, 0xE200000000000000);
        [v5 code];
        v11 = sub_22F742010();
        MEMORY[0x231900B10](v11);

        MEMORY[0x231900B10](41, 0xE100000000000000);
        MEMORY[0x231900B10](8316, 0xE200000000000000);

        ++v3;
        if (v6 == v2)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      if (sub_22F741A00() <= 0)
      {
        break;
      }

      v2 = sub_22F741A00();
      if (!v2)
      {
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E40, &unk_22F78A560);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22F771340;
        *(inited + 32) = sub_22F740E20();
        *(inited + 40) = v13;
        *(inited + 48) = 0;
        *(inited + 56) = 0xE000000000000000;
        v14 = sub_22F14F0AC(inited);
        swift_setDeallocating();
        sub_22F120ADC(inited + 32, &qword_27DAB0E48, &unk_22F7711F0);
        v15 = @"PGErrorDomain";
        sub_22F215428(v14);

        v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v17 = sub_22F740C80();

        v18 = [v16 initWithDomain:v15 code:-1 userInfo:v17];

        return v18;
      }
    }
  }

  return 0;
}

id MusicForMomentCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForMomentCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForMomentCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F3D9588()
{
  sub_22F742170();
  sub_22F73F690();
  sub_22F3DE004(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22F740D50();
  sub_22F741820();
  return sub_22F7421D0();
}

uint64_t sub_22F3D962C(uint64_t a1)
{
  sub_22F73F690();
  sub_22F3DE004(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22F740D50();
  return sub_22F741820();
}

uint64_t sub_22F3D96B8(uint64_t a1)
{
  sub_22F742170();
  sub_22F73F690();
  sub_22F3DE004(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22F740D50();
  sub_22F741820();
  return sub_22F7421D0();
}

uint64_t sub_22F3D9758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22F73F630() & 1) == 0)
  {
    return 0;
  }

  sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
  return sub_22F741810() & 1;
}

uint64_t sub_22F3D97CC(uint64_t a1)
{
  v2 = sub_22F73F990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0668, &unk_22F77A310);
    v9 = sub_22F741AD0();
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
      sub_22F3DE004(&qword_2810AC6D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_22F740D40();
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
          sub_22F3DE004(&unk_2810AC6C0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22F740DE0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22F3D9AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
    v3 = sub_22F741AD0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22F742170();

      sub_22F740D60();
      result = sub_22F7421D0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_22F742040();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22F3D9C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4268, &qword_22F78ABE0);
    v3 = sub_22F741AD0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_22F742170();
      MEMORY[0x231901D30](v10);
      result = sub_22F7421D0();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
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
        *(v17 + 8 * v13) = v10;
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22F3D9D90(void *a1, void *a2)
{
  v178 = a2;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4258, &qword_22F78ABD0);
  v175 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v182 = (&v174 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4260, &qword_22F78ABD8);
  MEMORY[0x28223BE20](v4 - 8);
  v185 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v184 = (&v174 - v7);
  v198 = type metadata accessor for SongSource(0);
  v181 = *(v198 - 1);
  MEMORY[0x28223BE20](v198);
  v187 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v180 = &v174 - v10;
  MEMORY[0x28223BE20](v11);
  v179 = &v174 - v12;
  MEMORY[0x28223BE20](v13);
  v197 = (&v174 - v14);
  MEMORY[0x28223BE20](v15);
  v196 = &v174 - v16;
  v211 = sub_22F73F270();
  v17 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v210 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_22F73F9B0();
  v19 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v208 = (&v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v21 - 8);
  v177 = &v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v195 = &v174 - v24;
  MEMORY[0x28223BE20](v25);
  v220 = (&v174 - v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v174 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = (&v174 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AF8, &qword_22F77F300);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v174 - v34;
  v228 = sub_22F73F690();
  v183 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v176 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v194 = &v174 - v38;
  MEMORY[0x28223BE20](v39);
  v219 = &v174 - v40;
  MEMORY[0x28223BE20](v41);
  v207 = &v174 - v42;
  if (qword_2810A9B18 != -1)
  {
    swift_once();
  }

  v43 = qword_2810B4E18;
  *&v44 = CACurrentMediaTime();
  sub_22F1B560C("MusicForMomentPruneSourcesPerformance", 37, 2u, v44, 0, v43, v232);
  v45 = sub_22F7416D0();
  v189 = v46;
  v190 = v47;
  v233 = MEMORY[0x277D84FA0];
  v48 = [a1 fetchedObjects];
  if (v48)
  {
    v49 = v48;
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v50 = sub_22F741180();

    v51 = v50;
    if (!(v50 >> 62))
    {
LABEL_5:
      result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }
  }

  result = sub_22F741A00();
LABEL_6:
  v191 = v45;
  if (!result)
  {

LABEL_32:
    v109 = v188;
    sub_22F7416A0();
    if (v109)
    {
    }

    else
    {
      v110 = sub_22F1A26E0(v178);
      v111 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_22F770DF0;
      *(v113 + 56) = MEMORY[0x277D837D0];
      v114 = sub_22F153470();
      *(v113 + 64) = v114;
      *(v113 + 32) = 0x696669746E656469;
      *(v113 + 40) = 0xEA00000000007265;
      *(v113 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(v113 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
      *(v113 + 72) = &unk_2843DCC18;
      v115 = sub_22F741560();
      v116 = sub_22F1935BC(v115);
      v211 = v114;
      v117 = v116;

      v118 = sub_22F151E54(v117);

      if (*(v233 + 16) <= *(v118 + 16) >> 3)
      {
        v229 = v118;
        sub_22F3E80E4(v233);

        v120 = v229;
      }

      else
      {
        v119 = sub_22F1E9F0C(v233, v118);

        v120 = v119;
      }

      if (*(v120 + 16))
      {
        v209 = v112;
        v210 = v111;
        v215 = v110;
        v217 = 0;
        v121 = v120 + 56;
        v122 = -1 << *(v120 + 32);
        if (-v122 < 64)
        {
          v123 = ~(-1 << -v122);
        }

        else
        {
          v123 = -1;
        }

        v124 = v123 & *(v120 + 56);
        v204 = OBJC_IVAR___PGMusicCache_managedObjectContext;
        v203 = v122;
        v125 = (63 - v122) >> 6;
        v226 = (v175 + 56);
        v225 = (v175 + 48);
        v216 = (v183 + 48);
        v208 = (v183 + 32);
        v207 = "N %@ && %K IN %@";
        v205 = (v183 + 8);
        v221 = v120;

        v126 = 0;
        v127 = 0;
        v206 = xmmword_22F777170;
        v220 = v121;
        while (1)
        {
          v224 = v124;
          v223 = v127;
          if (!v124)
          {
            if (v125 <= v127 + 1)
            {
              v130 = v127 + 1;
            }

            else
            {
              v130 = v125;
            }

            v131 = v130 - 1;
            v132 = v127;
            while (1)
            {
              v129 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                break;
              }

              if (v129 >= v125)
              {
                v139 = v185;
                v135 = v186;
                (*v226)(v185, 1, 1, v186);
                v227 = 0;
                v129 = v131;
                goto LABEL_57;
              }

              v128 = *(v121 + 8 * v129);
              v132 = (v132 + 1);
              if (v128)
              {
                goto LABEL_55;
              }
            }

            __break(1u);
LABEL_71:

            v173 = v218;

            sub_22F0FF590(v221);

            (*v205)(v176, v228);
            return sub_22F3DF1F0(v187, type metadata accessor for SongSource);
          }

          v128 = v124;
          v129 = v127;
LABEL_55:
          v133 = v180;
          sub_22F3DF188(*(v221 + 48) + *(v181 + 72) * (__clz(__rbit64(v128)) | (v129 << 6)), v180, type metadata accessor for SongSource);
          v134 = v179;
          sub_22F3DF250(v133, v179, type metadata accessor for SongSource);
          v135 = v186;
          v136 = *(v186 + 48);
          v137 = v182;
          *v182 = v126;
          result = sub_22F3DF250(v134, v137 + v136, type metadata accessor for SongSource);
          if (__OFADD__(v126++, 1))
          {
            __break(1u);
            goto LABEL_73;
          }

          v227 = ((v128 - 1) & v128);
          v139 = v185;
          sub_22F1207AC(v137, v185, &qword_27DAB4258, &qword_22F78ABD0);
          (*v226)(v139, 0, 1, v135);
          v45 = v191;
          v121 = v220;
LABEL_57:
          v140 = v184;
          sub_22F1207AC(v139, v184, &qword_27DAB4260, &qword_22F78ABD8);
          v141 = (*v225)(v140, 1, v135);
          v142 = v187;
          if (v141 == 1)
          {
            sub_22F0FF590(v221);

            v171 = v190;
            v172 = v189;
            v110 = v215;
            goto LABEL_69;
          }

          v222 = *v140;
          sub_22F3DF250(v140 + *(v135 + 48), v187, type metadata accessor for SongSource);
          v143 = v142 + v198[9];
          if (*(v143 + 8))
          {
            break;
          }

          v144 = v142 + v198[10];
          if (*(v144 + 8))
          {
            break;
          }

          v145 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v143 longitude:*v144];
          if (!v145)
          {
            break;
          }

          v219 = v145;
          v146 = v177;
          sub_22F13BA9C(v142 + v198[7], v177, &qword_27DAB0920, &qword_22F770B20);
          if ((*v216)(v146, 1, v228) == 1)
          {

            sub_22F3DF1F0(v142, type metadata accessor for SongSource);
            sub_22F120ADC(v146, &qword_27DAB0920, &qword_22F770B20);
LABEL_45:
            v127 = v129;
            v124 = v227;
          }

          else
          {
            (*v208)(v176, v146, v228);
            v147 = *(v142 + 8);
            v218 = *v142;
            v148 = [objc_opt_self() ignoreProgress];
            type metadata accessor for Geohash();
            inited = swift_initStackObject();
            *(inited + 16) = 0;
            *(inited + 24) = 0;
            v150 = v219;
            [v219 coordinate];
            v152 = v151;
            [v150 coordinate];
            sub_22F34AF8C(4, v152, v153);
            v214 = v154;
            v156 = v155;
            swift_setDeallocating();

            v157 = swift_allocObject();
            *(v157 + 16) = v206;
            v158 = MEMORY[0x277D837D0];
            v159 = v211;
            *(v157 + 56) = MEMORY[0x277D837D0];
            *(v157 + 64) = v159;
            *(v157 + 32) = 0x696669746E656469;
            *(v157 + 40) = 0xEA00000000007265;
            *(v157 + 96) = v158;
            *(v157 + 104) = v159;
            *(v157 + 72) = v218;
            *(v157 + 80) = v147;
            *(v157 + 136) = v158;
            *(v157 + 144) = v159;
            *(v157 + 112) = 0x687361686F6567;
            *(v157 + 120) = 0xE700000000000000;
            *(v157 + 176) = v158;
            *(v157 + 184) = v159;
            *(v157 + 152) = v214;
            *(v157 + 160) = v156;
            *(v157 + 216) = v158;
            *(v157 + 224) = v159;
            *(v157 + 192) = 1702125924;
            *(v157 + 200) = 0xE400000000000000;

            v45 = v148;
            v160 = sub_22F73F5B0();
            *(v157 + 256) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
            *(v157 + 264) = sub_22F15FD58();
            *(v157 + 232) = v160;
            v218 = sub_22F741560();
            v161 = v217;
            sub_22F741690();
            if (v161)
            {
              goto LABEL_71;
            }

            v217 = v148;
            v162 = sub_22F7416F0();
            v214 = &v174;
            v163 = v230;
            v164 = v231;
            MEMORY[0x28223BE20](v162);
            *(&v174 - 10) = v218;
            *(&v174 - 9) = v165;
            v213 = v166;
            *(&v174 - 8) = v166;
            *(&v174 - 7) = v167;
            v212 = v167;
            *(&v174 - 48) = 0;
            *(&v174 - 5) = 0;
            *(&v174 - 4) = v168;
            v169 = v168;
            *(&v174 - 3) = v163;
            *(&v174 - 2) = v164;
            sub_22F7417A0();
            v45 = v191;

            v170 = v218;
            result = v222 + 1;
            if (__OFADD__(v222, 1))
            {
              goto LABEL_74;
            }

            sub_22F741680();
            v217 = 0;
            (*v205)(v176, v228);

            sub_22F3DF1F0(v187, type metadata accessor for SongSource);
            v127 = v129;
            v124 = v227;
            v121 = v220;
          }
        }

        sub_22F3DF1F0(v142, type metadata accessor for SongSource);
        goto LABEL_45;
      }

      v171 = v190;
      sub_22F7416A0();
      v172 = v189;
LABEL_69:
      sub_22F1B2BBC(0);
    }
  }

  v212 = result;
  if (result >= 1)
  {
    v53 = 0;
    v224 = v51 & 0xC000000000000001;
    v223 = (v183 + 56);
    v218 = (v183 + 48);
    v217 = (v183 + 32);
    LODWORD(v203) = *MEMORY[0x277CC9988];
    v202 = (v17 + 8);
    v201 = *MEMORY[0x277CC9998];
    v200 = (v19 + 8);
    v214 = (v183 + 8);
    v193 = (v183 + 16);
    v199 = xmmword_22F770DF0;
    v192 = xmmword_22F78AAB0;
    v54 = v212;
    *&v206 = v29;
    v205 = v32;
    v215 = v35;
    v204 = v51;
    while (1)
    {
      if (v224)
      {
        v56 = MEMORY[0x2319016F0](v53, v51);
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v57 = v56;
      v58 = [v57 approximateLocation];
      if (v58)
      {
        v225 = v58;
        v226 = v53;
        v59 = [v57 startDate];
        v227 = v57;
        if (v59)
        {
          v60 = v59;
          sub_22F73F640();

          v61 = 0;
        }

        else
        {
          v61 = 1;
        }

        v62 = v228;
        v221 = *v223;
        (v221)(v29, v61, 1, v228);
        sub_22F1207AC(v29, v32, &qword_27DAB0920, &qword_22F770B20);
        v222 = *v218;
        if (v222(v32, 1, v62) == 1)
        {

          v63 = v227;
          sub_22F120ADC(v32, &qword_27DAB0920, &qword_22F770B20);
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
          (*(*(v64 - 8) + 56))(v35, 1, 1, v64);
        }

        else
        {
          v65 = v228;
          v216 = *v217;
          v216(v219, v32, v228);
          v66 = v208;
          sub_22F73F970();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
          v67 = sub_22F73F990();
          v68 = *(v67 - 8);
          v69 = *(v68 + 72);
          v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
          v71 = swift_allocObject();
          *(v71 + 16) = v199;
          v72 = v71 + v70;
          v73 = *(v68 + 104);
          v73(v72, v203, v67);
          v74 = v72 + v69;
          v75 = v65;
          v76 = v220;
          v73(v74, v201, v67);
          sub_22F3D97CC(v71);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v77 = v210;
          v78 = v219;
          sub_22F73F860();

          sub_22F73F920();

          (*v202)(v77, v211);
          (*v200)(v66, v209);
          v213 = *v214;
          (v213)(v78, v75);
          if (v222(v76, 1, v75) == 1)
          {

            sub_22F120ADC(v220, &qword_27DAB0920, &qword_22F770B20);
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
            v35 = v215;
            (*(*(v79 - 8) + 56))(v215, 1, 1, v79);
            v80 = v216;
          }

          else
          {
            v81 = v194;
            v82 = v228;
            v80 = v216;
            v216(v194, v220, v228);
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
            v84 = *(v83 + 48);
            v35 = v215;
            v80(v215, v81, v82);
            *&v35[v84] = v225;
            (*(*(v83 - 8) + 56))(v35, 0, 1, v83);
          }

          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
          if ((*(*(v85 - 8) + 48))(v35, 1, v85) != 1)
          {
            v86 = *&v35[*(v85 + 48)];
            v87 = v207;
            v80(v207, v35, v228);
            v88 = v195;
            (*v193)(v195, v87, v228);
            (v221)(v88, 0, 1, v228);
            v89 = v197;
            *v197 = 0x6D617A616873;
            v89[1] = 0xE600000000000000;
            v90 = v198;
            v91 = (v89 + v198[11]);
            *v91 = 0;
            v91[1] = 0;
            sub_22F13BA9C(v88, v89 + v90[7], &qword_27DAB0920, &qword_22F770B20);
            *(v89 + v90[12]) = v192;
            type metadata accessor for Geohash();
            v92 = swift_initStackObject();
            *(v92 + 16) = 0;
            *(v92 + 24) = 0;
            v93 = v86;
            [v93 coordinate];
            v95 = v94;
            [v93 coordinate];
            sub_22F34AF8C(4, v95, v96);
            v98 = v97;
            v100 = v99;
            swift_setDeallocating();

            v101 = (v89 + v90[8]);
            *v101 = v98;
            v101[1] = v100;
            [v93 coordinate];
            v102 = v89 + v90[9];
            *v102 = v103;
            v102[8] = 0;
            [v93 coordinate];
            v105 = v104;

            v106 = v228;
            v35 = v215;
            sub_22F120ADC(v88, &qword_27DAB0920, &qword_22F770B20);
            v107 = v89 + v90[10];
            *v107 = v105;
            v107[8] = 0;
            (v221)(v89 + v90[5], 1, 1, v106);
            *(v89 + v90[6]) = 0;
            *(v89 + v90[13]) = 0;
            v108 = v196;
            sub_22F10D88C(v196, v89);

            sub_22F3DF1F0(v108, type metadata accessor for SongSource);
            (v213)(v207, v106);
            v29 = v206;
            v32 = v205;
            v51 = v204;
            v54 = v212;
            v53 = v226;
            goto LABEL_11;
          }

          v29 = v206;
          v32 = v205;
          v51 = v204;
          v54 = v212;
        }

        v53 = v226;
      }

      else
      {

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        (*(*(v55 - 8) + 56))(v35, 1, 1, v55);
      }

      sub_22F120ADC(v35, &qword_27DAB2AF8, &qword_22F77F300);
LABEL_11:
      v53 = (v53 + 1);
      if (v54 == v53)
      {

        v45 = v191;
        goto LABEL_32;
      }
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

void sub_22F3DBCA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4250, &qword_22F78ABC8);
    v3 = sub_22F741AD0();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_22F740E20();
      sub_22F742170();
      v26 = v7;
      sub_22F740D60();
      v8 = sub_22F7421D0();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_22F740E20();
        v17 = v16;
        if (v15 == sub_22F740E20() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_22F742040();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

void _s11PhotosGraph20MusicForMomentCacherC13datePredicateSo11NSPredicateCvgZ_0()
{
  v0 = sub_22F73F690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F7727B0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22F153470();
  *(v10 + 64) = v12;
  *(v10 + 32) = 0x65746144646E65;
  *(v10 + 40) = 0xE700000000000000;
  sub_22F73F680();
  sub_22F73F5A0();
  v13 = *(v1 + 8);
  v13(v6, v0);
  v14 = sub_22F73F5B0();
  v13(v9, v0);
  v15 = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v10 + 96) = v15;
  v16 = sub_22F15FD58();
  *(v10 + 72) = v14;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 104) = v16;
  *(v10 + 112) = 0x7461447472617473;
  *(v10 + 120) = 0xE900000000000065;
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v17 = qword_2810A9170;
  v18 = sub_22F740DF0();
  v19 = [v17 dateFromString_];

  if (v19)
  {
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    sub_22F73F640();

    v20 = sub_22F73F5B0();
    v13(v3, v0);
    *(v10 + 176) = v15;
    *(v10 + 184) = v16;
    *(v10 + 152) = v20;
    sub_22F741560();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22F3DC190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_22F73F690();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for CacherStatus(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v13, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_27DAB1DA0;
    v19 = &unk_22F7771B0;
    v20 = v13;
LABEL_5:
    sub_22F120ADC(v20, v18, v19);
    LOBYTE(v23) = 1;
    return v23 & 1;
  }

  sub_22F3DF250(v13, v17, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v17[*(v14 + 20)], v6, &qword_27DAB0920, &qword_22F770B20);
  v22 = v38;
  v21 = v39;
  if ((*(v38 + 48))(v6, 1, v39) == 1)
  {
    sub_22F3DF1F0(v17, type metadata accessor for CacherStatus);
    v18 = &qword_27DAB0920;
    v19 = &qword_22F770B20;
    v20 = v6;
    goto LABEL_5;
  }

  v25 = v37;
  (*(v22 + 32))(v37, v6, v21);
  sub_22F1E3F74(v43);
  memcpy(v44, v43, 0x121uLL);
  if (sub_22F1EDAB8(v44) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v41, v43, sizeof(v41));
    GEOLocationCoordinate2DMake();
    v23 = *v26;
    v42 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v22 + 8))(v25, v21);
    sub_22F3DF1F0(v17, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(v43, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v41, v43, sizeof(v41));
    GEOLocationCoordinate2DMake();
    v28 = v27;
    v23 = v34;
    sub_22F73F680();
    sub_22F73F590();
    v30 = v29;
    v31 = v25;
    v32 = *(v22 + 8);
    v32(v23, v21);
    LOBYTE(v23) = v35;
    v33 = v40;
    sub_22F7416A0();
    if (!v33)
    {
      LOBYTE(v23) = *(v28 + 80) < v30;
    }

    v32(v31, v21);
    sub_22F3DF1F0(v17, type metadata accessor for CacherStatus);
  }

  return v23 & 1;
}

id sub_22F3DC674(void *a1)
{
  sub_22F741690();
  if (!v1)
  {
    v4 = [a1 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22F771350;
    v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v7 = sub_22F740DF0();
    v8 = [v6 initWithKey:v7 ascending:0];

    *(v5 + 32) = v8;
    v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v10 = sub_22F740DF0();
    v11 = [v9 initWithKey:v10 ascending:0];

    *(v5 + 40) = v11;
    sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
    v12 = sub_22F741160();

    [v4 setSortDescriptors_];

    _s11PhotosGraph20MusicForMomentCacherC13datePredicateSo11NSPredicateCvgZ_0();
    v14 = v13;
    [v4 setPredicate_];

    v2 = [objc_opt_self() fetchMomentsWithOptions_];
    sub_22F7416A0();
  }

  return v2;
}

void sub_22F3DC858(void *a1, uint64_t a2, uint64_t a3)
{
  v152 = type metadata accessor for DateAndLocation(0);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v154 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v153 = &v150 - v8;
  v173 = type metadata accessor for SongSource(0);
  v157 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v161 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v156 = &v150 - v11;
  MEMORY[0x28223BE20](v12);
  v172 = (&v150 - v13);
  MEMORY[0x28223BE20](v14);
  v171 = &v150 - v15;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0D28, &unk_22F772010);
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v186 = &v150 - v16;
  v185 = sub_22F73F270();
  v17 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v184 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_22F73F9B0();
  v205 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v182 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v20 - 8);
  v155 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v168 = &v150 - v23;
  MEMORY[0x28223BE20](v24);
  v181 = &v150 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v150 - v27;
  MEMORY[0x28223BE20](v29);
  v188 = &v150 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AF8, &qword_22F77F300);
  MEMORY[0x28223BE20](v31 - 8);
  v193 = &v150 - v32;
  v198 = sub_22F73F690();
  v165 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v158 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v167 = &v150 - v35;
  MEMORY[0x28223BE20](v36);
  v197 = (&v150 - v37);
  MEMORY[0x28223BE20](v38);
  v191 = &v150 - v39;
  v40 = sub_22F7416D0();
  v42 = v41;
  v44 = v43;
  v207 = MEMORY[0x277D84FA0];
  v45 = [a1 fetchedObjects];
  if (v45)
  {
    v46 = v45;
    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    v47 = sub_22F741180();
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v203 = v47;
  if (v47 >> 62)
  {
    v48 = sub_22F741A00();
    if (v48)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
LABEL_6:
      v192 = v48;
      if (v48 < 1)
      {
        goto LABEL_57;
      }

      v159 = a3;
      v160 = a2;
      v162 = v40;
      v163 = v42;
      v164 = v44;
      v49 = 0;
      v202 = (v203 & 0xC000000000000001);
      v201 = (v165 + 56);
      v195 = (v165 + 32);
      v196 = (v165 + 48);
      v179 = *MEMORY[0x277CC9988];
      v178 = *MEMORY[0x277CC9998];
      v177 = (v17 + 8);
      v176 = (v205 + 8);
      v190 = (v165 + 8);
      v175 = (v165 + 16);
      v187 = MEMORY[0x277D84F90];
      v174 = xmmword_22F770DF0;
      v50 = v198;
      v51 = v188;
      v53 = v192;
      v52 = v193;
      v180 = v28;
      while (1)
      {
        if (v202)
        {
          v55 = MEMORY[0x2319016F0](v49, v203);
        }

        else
        {
          v55 = *(v203 + 8 * v49 + 32);
        }

        v56 = v55;
        v57 = [v56 approximateLocation];
        if (v57)
        {
          v58 = v57;
          v204 = v49;
          v205 = v56;
          v59 = [v56 startDate];
          if (v59)
          {
            v60 = v59;
            sub_22F73F640();

            v61 = 0;
          }

          else
          {
            v61 = 1;
          }

          v199 = *v201;
          (v199)(v28, v61, 1, v50);
          sub_22F1207AC(v28, v51, &qword_27DAB0920, &qword_22F770B20);
          v200 = *v196;
          if ((v200)(v51, 1, v50) == 1)
          {

            v62 = v205;
            sub_22F120ADC(v51, &qword_27DAB0920, &qword_22F770B20);
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
            (*(*(v63 - 8) + 56))(v52, 1, 1, v63);
            v49 = v204;
          }

          else
          {
            v194 = *v195;
            v194(v197, v51, v50);
            v64 = v182;
            sub_22F73F970();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
            v65 = sub_22F73F990();
            v66 = *(v65 - 8);
            v67 = *(v66 + 72);
            v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
            v69 = swift_allocObject();
            *(v69 + 16) = v174;
            v70 = v69 + v68;
            v71 = *(v66 + 104);
            v71(v70, v179, v65);
            v72 = v70 + v67;
            v73 = v198;
            v71(v72, v178, v65);
            sub_22F3D97CC(v69);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v74 = v184;
            v75 = v197;
            sub_22F73F860();

            v76 = v181;
            sub_22F73F920();

            (*v177)(v74, v185);
            (*v176)(v64, v183);
            v189 = *v190;
            v189(v75, v73);
            if ((v200)(v76, 1, v73) == 1)
            {

              sub_22F120ADC(v76, &qword_27DAB0920, &qword_22F770B20);
              v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
              v52 = v193;
              (*(*(v77 - 8) + 56))(v193, 1, 1, v77);
              v78 = v194;
            }

            else
            {
              v79 = v167;
              v80 = v194;
              v194(v167, v76, v73);
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
              v82 = *(v81 + 48);
              v52 = v193;
              v80(v193, v79, v73);
              *(v52 + v82) = v58;
              (*(*(v81 - 8) + 56))(v52, 0, 1, v81);
              v78 = v80;
            }

            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
            v84 = (*(*(v83 - 8) + 48))(v52, 1, v83);
            v53 = v192;
            if (v84 != 1)
            {
              v85 = *(v52 + *(v83 + 48));
              v86 = v191;
              v87 = v198;
              v78(v191, v52, v198);
              v88 = *(v170 + 48);
              v89 = *(v170 + 64);
              v90 = v186;
              *v186 = 0x6D617A616873;
              *(v90 + 1) = 0xE600000000000000;
              v91 = *v175;
              (*v175)(&v90[v88], v86, v87);
              *&v90[v89] = v85;
              v92 = v85;
              v93 = v187;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v93 = sub_22F140310(0, v93[2] + 1, 1, v93);
              }

              v95 = v93[2];
              v94 = v93[3];
              if (v95 >= v94 >> 1)
              {
                v93 = sub_22F140310((v94 > 1), v95 + 1, 1, v93);
              }

              v93[2] = v95 + 1;
              v96 = (*(v169 + 80) + 32) & ~*(v169 + 80);
              v187 = v93;
              sub_22F1207AC(v186, v93 + v96 + *(v169 + 72) * v95, &qword_27DAB0D28, &unk_22F772010);
              v97 = v168;
              v50 = v198;
              v91(v168, v191, v198);
              (v199)(v97, 0, 1, v50);
              v98 = v172;
              *v172 = 0x6D617A616873;
              v98[1] = 0xE600000000000000;
              v99 = v173;
              v100 = (v98 + *(v173 + 44));
              *v100 = 0;
              v100[1] = 0;
              sub_22F13BA9C(v97, v98 + v99[7], &qword_27DAB0920, &qword_22F770B20);
              v101 = (v98 + v99[12]);
              type metadata accessor for Geohash();
              *v101 = 0;
              v101[1] = 0;
              inited = swift_initStackObject();
              *(inited + 16) = 0;
              *(inited + 24) = 0;
              v103 = v92;
              [v103 coordinate];
              v105 = v104;
              [v103 coordinate];
              sub_22F34AF8C(4, v105, v106);
              v108 = v107;
              v110 = v109;
              swift_setDeallocating();

              v111 = (v98 + v99[8]);
              *v111 = v108;
              v111[1] = v110;
              [v103 coordinate];
              v112 = v98 + v99[9];
              *v112 = v113;
              v112[8] = 0;
              [v103 coordinate];
              v115 = v114;

              sub_22F120ADC(v97, &qword_27DAB0920, &qword_22F770B20);
              v116 = v98 + v99[10];
              *v116 = v115;
              v116[8] = 0;
              (v199)(v98 + v99[5], 1, 1, v50);
              *(v98 + v99[6]) = 0;
              *(v98 + v99[13]) = 0;
              v117 = v171;
              sub_22F10D88C(v171, v98);

              sub_22F3DF1F0(v117, type metadata accessor for SongSource);
              v189(v191, v50);
              v28 = v180;
              v51 = v188;
              v53 = v192;
              v52 = v193;
              v49 = v204;
              goto LABEL_10;
            }

            v28 = v180;
            v51 = v188;
            v49 = v204;
            v50 = v198;
          }
        }

        else
        {

          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
          (*(*(v54 - 8) + 56))(v52, 1, 1, v54);
        }

        sub_22F120ADC(v52, &qword_27DAB2AF8, &qword_22F77F300);
LABEL_10:
        if (v53 == ++v49)
        {

          v44 = v164;
          v42 = v163;
          v40 = v162;
          a3 = v159;
          v118 = v187;
          goto LABEL_33;
        }
      }
    }
  }

  v118 = MEMORY[0x277D84F90];
LABEL_33:
  v119 = v166;
  sub_22F7416A0();
  if (v119)
  {

    return;
  }

  v120 = sub_22F1620AC(v118);

  v206 = 3;
  v121 = MusicCache.readSongSources(identifiersDatesAndLocations:locationTolerance:progressReporter:)(v120, &v206, a3);

  v122 = sub_22F151E54(v121);

  sub_22F3E80E4(v122);

  sub_22F7416A0();
  v162 = v40;
  v163 = v42;
  v164 = v44;
  v123 = 0;
  v125 = v207 + 56;
  v124 = *(v207 + 7);
  v205 = v207;
  v126 = 1 << v207[32];
  v127 = -1;
  if (v126 < 64)
  {
    v127 = ~(-1 << v126);
  }

  v128 = v127 & v124;
  v129 = (v126 + 63) >> 6;
  v201 = (v165 + 32);
  v202 = (v165 + 48);
  v200 = (v165 + 8);
  v197 = (v165 + 16);
  v199 = MEMORY[0x277D84F90];
  v130 = &qword_27DAB0920;
  v203 = v129;
  v204 = v207 + 56;
  while (v128)
  {
LABEL_45:
    v132 = __clz(__rbit64(v128));
    v128 &= v128 - 1;
    v133 = v156;
    sub_22F3DF188(*(v205 + 6) + *(v157 + 72) * (v132 | (v123 << 6)), v156, type metadata accessor for SongSource);
    v134 = v133;
    v135 = v161;
    sub_22F3DF250(v134, v161, type metadata accessor for SongSource);
    v136 = v173;
    v137 = v155;
    sub_22F13BA9C(v135 + *(v173 + 28), v155, v130, &qword_22F770B20);
    v138 = v130;
    v139 = v198;
    if ((*v202)(v137, 1, v198) == 1)
    {
      sub_22F3DF1F0(v135, type metadata accessor for SongSource);
      sub_22F120ADC(v137, v138, &qword_22F770B20);
      goto LABEL_39;
    }

    (*v201)(v158, v137, v139);
    v140 = v135 + *(v136 + 36);
    if (*(v140 + 8) & 1) != 0 || (v141 = v135 + *(v136 + 40), (*(v141 + 8)) || (v142 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v140 longitude:*v141], v135 = v161, !v142))
    {
      (*v200)(v158, v198);
      sub_22F3DF1F0(v135, type metadata accessor for SongSource);
LABEL_39:
      v130 = v138;
      v129 = v203;
      v125 = v204;
    }

    else
    {
      v143 = v142;
      v144 = v153;
      (*v197)(v153, v158, v198);
      *(v144 + *(v152 + 20)) = v143;
      sub_22F3DF188(v144, v154, type metadata accessor for DateAndLocation);
      v145 = v199;
      v130 = v138;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_22F1402E8(0, *(v145 + 2) + 1, 1, v145);
      }

      v125 = v204;
      v147 = *(v145 + 2);
      v146 = *(v145 + 3);
      if (v147 >= v146 >> 1)
      {
        v145 = sub_22F1402E8((v146 > 1), v147 + 1, 1, v145);
      }

      sub_22F3DF1F0(v153, type metadata accessor for DateAndLocation);
      (*v200)(v158, v198);
      sub_22F3DF1F0(v161, type metadata accessor for SongSource);
      *(v145 + 2) = v147 + 1;
      v148 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v199 = v145;
      sub_22F3DF250(v154, v145 + v148 + *(v151 + 72) * v147, type metadata accessor for DateAndLocation);
      v129 = v203;
    }
  }

  while (1)
  {
    v131 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      break;
    }

    if (v131 >= v129)
    {

      v149 = v164;
      sub_22F7416A0();

      return;
    }

    v128 = *&v125[8 * v131];
    ++v123;
    if (v128)
    {
      v123 = v131;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t type metadata accessor for DateAndLocation(uint64_t a1)
{
  result = qword_2810AB920;
  if (!qword_2810AB920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F3DDF28(uint64_t a1)
{
  result = sub_22F73F690();
  if (v2 <= 0x3F)
  {
    result = sub_22F120634(319, &qword_27DAB0960, 0x277CE41F8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22F3DE004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F3DE04C(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v94 = a3;
  v7 = sub_22F740C00();
  MEMORY[0x28223BE20](v7 - 8);
  v96 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8);
  v92 = *(v9 - 8);
  v10 = *(v92 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v82 - v12;
  v14 = type metadata accessor for CacherStatusUpdater(0);
  v95 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v82 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  v98 = a4;
  _Block_copy(a4);
  v97 = a2;
  v24 = sub_22F7416B0();
  v99 = v25;
  v100 = v24;
  v26 = sub_22F1A26E0(a1);
  v87 = a1;
  v88 = v19;
  v89 = v13;
  v90 = v16;
  v91 = v23;
  v27 = 0x726F46636973756DLL;
  v28 = v26;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v29 = v28;
  v30 = sub_22F1ED5B0(v28);

  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEE00746E656D6F4DLL, v22);
  v34 = sub_22F3DC190(v22, v30, v100);
  v35 = v22;
  v36 = v30;
  v37 = v99;
  v86 = v36;
  if (v34)
  {
    v38 = v88;
    sub_22F13BA9C(v22, v88, &qword_27DAB1DA0, &unk_22F7771B0);
    v39 = type metadata accessor for CacherStatus(0);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v83 = 0;
    v84 = v29;
    if (v40 == 1)
    {
      sub_22F120ADC(v38, &qword_27DAB1DA0, &unk_22F7771B0);
      v42 = v89;
      v41 = v90;
      v44 = v95;
      v43 = v96;
      v45 = 0xEE00746E656D6F4DLL;
    }

    else
    {
      v46 = v22;
      v48 = *v38;
      v47 = v38[1];

      sub_22F3DF1F0(v38, type metadata accessor for CacherStatus);
      if (v47)
      {
        v27 = v48;
      }

      v45 = 0xEE00746E656D6F4DLL;
      if (v47)
      {
        v45 = v47;
      }

      v35 = v46;
      v42 = v89;
      v41 = v90;
      v44 = v95;
      v43 = v96;
    }

    v85 = v35;
    sub_22F13BA9C(v35, v41, &qword_27DAB1DA0, &unk_22F7771B0);
    v49 = (v41 + *(v14 + 20));
    *v49 = v27;
    v49[1] = v45;
    sub_22F3DF188(v41, v42, type metadata accessor for CacherStatusUpdater);
    v44[7](v42, 0, 1, v14);
    v50 = swift_allocObject();
    *(v50 + 16) = sub_22F1E088C;
    *(v50 + 24) = v91;

    v51 = sub_22F7416E0();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_22F740BD0();
    v58 = v43;
    v59 = v83;
    v60 = sub_22F22FB24(v58, 0);
    if (v59)
    {

      sub_22F120ADC(v42, &qword_27DAB4208, &unk_22F78AAC8);
      sub_22F3DF1F0(v90, type metadata accessor for CacherStatusUpdater);
      sub_22F120ADC(v85, &qword_27DAB1DA0, &unk_22F7771B0);
      sub_22F7416A0();
      v31 = v59;
      v32 = sub_22F73F360();
      (v98)[2](v98, 0, v32);
    }

    else
    {
      v83 = v60;
      v95 = v53;
      v96 = v57;
      v88 = v50;
      v61 = v87;
      v62 = sub_22F3DC674(v87);
      v63 = sub_22F1A26E0(v61);
      sub_22F3DC858(v62, v63, v95);
      v65 = *(v64 + 16);
      if (v65)
      {
        v97 = v62;
        v98 = v51;
        v66 = v64;
        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        v68 = v66;
        if (v65 <= 0xA)
        {
          v72 = v93;
          v73 = v94;
          v74 = v92;
          v87 = v68;
        }

        else
        {
          v69 = *(type metadata accessor for DateAndLocation(0) - 8);
          sub_22F10B040(v66, v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), 0, 0x15uLL);
          v71 = v70;
          *(v67 + 16) = v70;

          v87 = v71;
          v72 = v93;
          v73 = v94;
          v74 = v92;
        }

        sub_22F13BA9C(v89, v72, &qword_27DAB4208, &unk_22F78AAC8);
        v75 = (*(v74 + 80) + 80) & ~*(v74 + 80);
        v76 = swift_allocObject();
        v76[2] = v37;
        v76[3] = sub_22F3DF33C;
        v76[4] = v88;
        v76[5] = v67;
        v82[1] = v67;
        v76[6] = v63;
        v76[7] = v73;
        v77 = v96;
        v76[8] = v83;
        v76[9] = v77;
        sub_22F1207AC(v72, v76 + v75, &qword_27DAB4208, &unk_22F78AAC8);
        v78 = v87;

        v79 = v37;

        v80 = v63;

        v81 = v77;
        sub_22F3D7F74(v78, v55, sub_22F3DF338, v76);

        sub_22F120ADC(v89, &qword_27DAB4208, &unk_22F78AAC8);
        sub_22F3DF1F0(v90, type metadata accessor for CacherStatusUpdater);
        sub_22F120ADC(v85, &qword_27DAB1DA0, &unk_22F7771B0);
      }

      else
      {

        sub_22F7416A0();
        v98[2](v98, 1, 0);

        sub_22F120ADC(v89, &qword_27DAB4208, &unk_22F78AAC8);
        sub_22F3DF1F0(v90, type metadata accessor for CacherStatusUpdater);
        sub_22F120ADC(v85, &qword_27DAB1DA0, &unk_22F7771B0);
      }
    }
  }

  else
  {
    sub_22F7416A0();
    v98[2](v98, 1, 0);

    sub_22F120ADC(v22, &qword_27DAB1DA0, &unk_22F7771B0);
  }
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatusUpdater(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for CacherStatus(0);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {

      v8 = *(v7 + 20);
      v9 = sub_22F73F690();
      v14 = v8;
      v15 = *(v9 - 8);
      v10 = &v5[v8];
      v11 = *(v15 + 48);
      if (!v11(v10, 1, v9))
      {
        (*(v15 + 8))(&v5[v14], v9);
      }

      v12 = *(v7 + 24);
      if (!v11(&v5[v12], 1, v9))
      {
        (*(v15 + 8))(&v5[v12], v9);
      }
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_22F3DEF28(uint64_t a1)
{
  v3 = *(type metadata accessor for DateAndLocation(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_22F3D8F14(a1, v8, v1 + v4, v6, v7);
}

unint64_t sub_22F3DEFD4()
{
  result = qword_27DAB4220;
  if (!qword_27DAB4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4220);
  }

  return result;
}

unint64_t sub_22F3DF028()
{
  result = qword_27DAB4228;
  if (!qword_27DAB4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4228);
  }

  return result;
}

void sub_22F3DF09C(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_22F3D70CC(a1, a2 & 1, (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_22F3DF188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F3DF1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F3DF250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22F3DF2DC()
{
  result = qword_27DAB4270;
  if (!qword_27DAB4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4270);
  }

  return result;
}

void __swiftcall PlaybackInfo.init(dateUTC:hoursUTC:playDurationInMilliseconds:playCount:skipCount:lastEndReason:devices:ignoreForRecommendations:)(PhotosGraph::PlaybackInfo *__return_ptr retstr, Swift::String dateUTC, Swift::OpaquePointer hoursUTC, Swift::Int playDurationInMilliseconds, Swift::Int playCount, Swift::Int skipCount, Swift::String lastEndReason, Swift::OpaquePointer devices, Swift::Bool ignoreForRecommendations)
{
  retstr->dateUTC = dateUTC;
  retstr->hoursUTC = hoursUTC;
  retstr->playDurationInMilliseconds = playDurationInMilliseconds;
  retstr->playCount = playCount;
  retstr->skipCount = skipCount;
  retstr->lastEndReason = lastEndReason;
  retstr->devices = devices;
  retstr->ignoreForRecommendations = ignoreForRecommendations;
}

uint64_t PlaybackInfo.dateUTC.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlaybackInfo.lastEndReason.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_22F3DF3F8(uint64_t a1)
{
  v2 = sub_22F3E017C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3DF434(uint64_t a1)
{
  v2 = sub_22F3E017C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4278, &qword_22F78ACE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v7;
  v8 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v8;
  v9 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v9;
  v13 = *(v1 + 64);
  v12[1] = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3E017C();
  sub_22F742210();
  LOBYTE(v22) = 0;
  v10 = v20;
  sub_22F741F80();
  if (!v10)
  {
    v22 = v19;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
    sub_22F3E01D0(&qword_27DAB1938, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_22F741FE0();
    LOBYTE(v22) = 2;
    sub_22F741FC0();
    LOBYTE(v22) = 3;
    sub_22F741FC0();
    LOBYTE(v22) = 4;
    sub_22F741FC0();
    LOBYTE(v22) = 5;
    sub_22F741F80();
    v22 = v13;
    v21 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22F741FE0();
    LOBYTE(v22) = 7;
    sub_22F741F90();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaybackInfo.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[8];
  sub_22F740D60();
  MEMORY[0x231901D30](*(v3 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = (v3 + 32);
    do
    {
      v9 = *v8++;
      MEMORY[0x231901D30](v9);
      --v7;
    }

    while (v7);
  }

  MEMORY[0x231901D30](v2);
  MEMORY[0x231901D30](v5);
  MEMORY[0x231901D30](v4);
  sub_22F740D60();
  MEMORY[0x231901D30](*(v6 + 16));
  v10 = *(v6 + 16);
  if (v10)
  {
    v11 = v6 + 40;
    do
    {

      sub_22F740D60();

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  return sub_22F742190();
}

uint64_t PlaybackInfo.hashValue.getter()
{
  sub_22F742170();
  PlaybackInfo.hash(into:)(v1);
  return sub_22F7421D0();
}

void PlaybackInfo.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4288, &qword_22F78ACE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3E017C();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    v9 = sub_22F741EB0();
    v11 = v10;
    v30 = a2;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1930, &qword_22F773180);
    LOBYTE(v31) = 1;
    sub_22F3E01D0(&qword_27DAB1948, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    sub_22F741F10();
    v29 = v35[0];
    LOBYTE(v35[0]) = 2;
    v28 = sub_22F741EF0();
    LOBYTE(v35[0]) = 3;
    v13 = sub_22F741EF0();
    LOBYTE(v35[0]) = 4;
    v26 = sub_22F741EF0();
    LOBYTE(v35[0]) = 5;
    v25 = sub_22F741EB0();
    v27 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    LOBYTE(v31) = 6;
    sub_22F1BA494(&qword_2810A92D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22F741F10();
    v24 = v35[0];
    v38 = 7;
    v15 = sub_22F741EC0();
    (*(v6 + 8))(v8, v5);
    v16 = v15 & 1;
    v37 = v15 & 1;
    *&v31 = v12;
    *(&v31 + 1) = v11;
    v17 = v29;
    v18 = v28;
    *&v32 = v29;
    *(&v32 + 1) = v28;
    v19 = v26;
    *&v33 = v13;
    *(&v33 + 1) = v26;
    v20 = v27;
    *v34 = v25;
    *&v34[8] = v27;
    *&v34[16] = v24;
    v34[24] = v16;
    v21 = *v34;
    v22 = v30;
    v30[2] = v33;
    v22[3] = v21;
    *(v22 + 57) = *&v34[9];
    v23 = v32;
    *v22 = v31;
    v22[1] = v23;
    sub_22F13A7E4(&v31, v35);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v35[0] = v12;
    v35[1] = v11;
    v35[2] = v17;
    v35[3] = v18;
    v35[4] = v13;
    v35[5] = v19;
    v35[6] = v25;
    v35[7] = v20;
    v35[8] = v24;
    v36 = v37;
    sub_22F2C760C(v35);
  }
}

uint64_t sub_22F3DFE08()
{
  sub_22F742170();
  PlaybackInfo.hash(into:)(v1);
  return sub_22F7421D0();
}

uint64_t sub_22F3DFE4C(uint64_t a1)
{
  sub_22F742170();
  PlaybackInfo.hash(into:)(v2);
  return sub_22F7421D0();
}

uint64_t PlaybackInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[6];
  v5 = v0[7];
  v14 = v0[8];
  v15 = *(v0 + 72);
  sub_22F741B00();
  MEMORY[0x231900B10](0x6574616422090A7BLL, 0xEF22203A22435455);
  MEMORY[0x231900B10](v1, v2);
  MEMORY[0x231900B10](0xD000000000000011, 0x800000022F79E960);
  v6 = MEMORY[0x231900D40](v3, MEMORY[0x277D83B88]);
  MEMORY[0x231900B10](v6);

  MEMORY[0x231900B10](0xD000000000000023, 0x800000022F79E980);
  v7 = sub_22F742010();
  MEMORY[0x231900B10](v7);

  MEMORY[0x231900B10](0xD000000000000012, 0x800000022F79E9B0);
  v8 = sub_22F742010();
  MEMORY[0x231900B10](v8);

  MEMORY[0x231900B10](0xD000000000000012, 0x800000022F79E9D0);
  v9 = sub_22F742010();
  MEMORY[0x231900B10](v9);

  MEMORY[0x231900B10](0xD000000000000016, 0x800000022F79E9F0);
  MEMORY[0x231900B10](v4, v5);
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F79EA10);
  v10 = MEMORY[0x231900D40](v14, MEMORY[0x277D837D0]);
  MEMORY[0x231900B10](v10);

  MEMORY[0x231900B10](0xD000000000000020, 0x800000022F79EA30);
  if (v15)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v15)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x231900B10](v11, v12);

  MEMORY[0x231900B10](2097818658, 0xE400000000000000);
  return 0;
}

unint64_t sub_22F3E017C()
{
  result = qword_27DAB4280;
  if (!qword_27DAB4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4280);
  }

  return result;
}

uint64_t sub_22F3E01D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1930, &qword_22F773180);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F3E0240()
{
  result = qword_27DAB4290;
  if (!qword_27DAB4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4290);
  }

  return result;
}

unint64_t sub_22F3E02B8()
{
  result = qword_27DAB4298;
  if (!qword_27DAB4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4298);
  }

  return result;
}

unint64_t sub_22F3E0310()
{
  result = qword_27DAB42A0;
  if (!qword_27DAB42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB42A0);
  }

  return result;
}

unint64_t sub_22F3E0368()
{
  result = qword_27DAB42A8;
  if (!qword_27DAB42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB42A8);
  }

  return result;
}

void sub_22F3E03BC(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_22F120634(0, &qword_27DAB42B0, off_27887B148);
  v6 = [a1 graphReference];
  v7 = [v6 concreteGraph];

  if (v7)
  {
    v9 = [swift_getObjCClassFromMetadata(v8) filter];
    v10 = [v7 nodeIdentifiersMatchingFilter:v9 intersectingIdentifiers:a2];

    [v3 initWithGraph:v7 elementIdentifiers:v10];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

double sub_22F3E0538(void *a1)
{
  v1 = [a1 label];
  if (v1)
  {
    v3 = v1;
    v4 = sub_22F740E20();
    v6 = v5;

    sub_22F10BBDC(&v7, v4, v6);
  }

  return result;
}

uint64_t sub_22F3E05AC(void *a1)
{
  v1 = a1;
  v2 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
  if ([a1 memoryCategory] == 27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F7707D0;
    *(inited + 32) = sub_22F740E20();
    *(inited + 40) = v4;
    *(inited + 48) = sub_22F740E20();
    *(inited + 56) = v5;
    *(inited + 64) = sub_22F740E20();
    *(inited + 72) = v6;
    v2 = sub_22F1515F8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v27 = MEMORY[0x277D84FA0];
    v7 = [v1 memoryFeatureNodes];
    v1 = swift_allocObject();
    v1[2] = &v27;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_22F3E1210;
    *(v8 + 24) = v1;
    v25 = sub_22F2D4D54;
    v26 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_22F322D74;
    v24 = &block_descriptor_13_7;
    v9 = _Block_copy(&aBlock);

    [v7 enumerateUsingBlock_];

    _Block_release(v9);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ([v1 v2[66]] == 9)
  {
    v10 = 1;
    return v10 & 1;
  }

  if ([v1 v2[66]] != 16 && objc_msgSend(v1, v2[66]) != 17)
  {
    v10 = 0;
    return v10 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_22F771340;
  *(v11 + 32) = sub_22F740E20();
  *(v11 + 40) = v12;
  v2 = sub_22F1515F8(v11);
  swift_setDeallocating();
  sub_22F1DF3B0(v11 + 32);
  v27 = MEMORY[0x277D84FA0];
  v13 = [v1 memoryFeatureNodes];
  v14 = swift_allocObject();
  *(v14 + 16) = &v27;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22F3E11D8;
  *(v15 + 24) = v14;
  v25 = sub_22F250854;
  v26 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22F322D74;
  v24 = &block_descriptor_57;
  v16 = _Block_copy(&aBlock);

  [v13 enumerateUsingBlock_];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
LABEL_9:
    v18 = v27;

    sub_22F3F2848(v2, v18);
    v20 = v19;

    v10 = v20 ^ 1;
    return v10 & 1;
  }

  __break(1u);
  return result;
}

id sub_22F3E0A10(void *a1, void *a2)
{
  if ([a1 count] == 1)
  {
    v4 = [a1 anyNode];
    if (v4)
    {
      v5 = v4;
      if ([v4 graph])
      {
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v7 = v6;
          v8 = objc_opt_self();
          v9 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
          v10 = [v8 beautifiedLocationNodeStringWithPlaceNode:v5 locationHelper:v9];

          if (!v10)
          {
LABEL_15:

            swift_unknownObjectRelease();
            return 0;
          }

LABEL_14:
          v16 = sub_22F740E20();

          swift_unknownObjectRelease();
          return v16;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  if ([a2 count] == 1)
  {
    result = [a2 anyNode];
    if (!result)
    {
      return result;
    }

    v5 = result;
    if (![result graph])
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v14 = objc_opt_self();
    v15 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
    v10 = [v14 beautifiedLocationNodeStringWithPlaceNode:v5 locationHelper:v15];

    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return 0;
}

id sub_22F3E0C3C(void *a1)
{
  if (PGMemorySourceTypeFromCategory([a1 memoryCategory]) == 1 && (v2 = objc_msgSend(a1, sel_memoryMomentNodes)) != 0)
  {
    v3 = v2;
    v4 = [v2 addressNodes];
    v5 = [v4 stateNodes];
    v6 = [v4 countryNodes];
    v7 = sub_22F3E0A10(v5, v6);
  }

  else if ([a1 memoryCategory] == 19)
  {
    v8 = [a1 memoryFeatureNodes];
    v9 = [v8 graph];

    v10 = [a1 memoryFeatureNodes];
    v11 = [v10 elementIdentifiers];

    sub_22F120634(0, &qword_2810A8F60, off_27887AF78);
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v12)) initWithSubsetInGraph:v9 elementIdentifiers:v11];
    sub_22F120634(0, &qword_2810A8F58, off_27887B028);
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v14)) initWithSubsetInGraph:v9 elementIdentifiers:v11];
    sub_22F120634(0, &qword_2810A8F30, off_27887AFA8);
    v17 = objc_allocWithZone(swift_getObjCClassFromMetadata(v16));
    v18 = v15;
    v19 = [v17 initWithSubsetInGraph:v9 elementIdentifiers:v11];
    v20 = [v18 count];

    if (!v20)
    {
      v21 = [v13 stateNodes];

      v18 = v21;
    }

    v22 = [v19 count];

    if (!v22)
    {
      v23 = [v18 countryNodes];

      v19 = v23;
    }

    v7 = sub_22F3E0A10(v18, v19);

    swift_unknownObjectRelease();
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_22F3E0F14(void *a1)
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MemoryNodeMusicCurationFeatureExtractor - extractMusicCurationFeatures", 70, 2u, 0, 1, qword_2810B4E90, v17);
  v2 = [a1 memoryMomentNodes];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 publicEventNodes];

    v5 = [v4 performerNodes];
    v6 = [v5 performerIdentifiers];

    v7 = sub_22F741420();
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_2810B4D90);

  v9 = sub_22F740B70();
  v10 = sub_22F7415C0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_22F741430();
    v15 = sub_22F145F20(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22F0FC000, v9, v10, "[MemoriesMusic] [FeatureExtraction] (MemoryNodeMusicCurationFeatureExtractor) Extracted performer identifiers: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2319033A0](v12, -1, -1);
    MEMORY[0x2319033A0](v11, -1, -1);
  }

  sub_22F3E05AC(a1);
  sub_22F3E0C3C(a1);
  sub_22F1B2BBC(0);

  return v7;
}

double block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_22F3E1218()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v64 = a3;
  v59 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = v56 - v9;
  v63 = sub_22F73F470();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = v56 - v12;
  v13 = sub_22F73F0B0();
  v71 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB42B8, &qword_22F78AFB8);
  MEMORY[0x28223BE20](v15 - 8);
  *&v65 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v56 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v56 - v21;
  v23 = sub_22F73F150();
  v69 = *(v23 - 8);
  v70 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *a2;
  v26 = *(a2 + 2);
  v60 = *(a2 + 3);
  v80 = v26;
  v77 = a2[2];
  v78 = *(a2 + 6);
  v27 = *v5;
  v28 = v5[1];
  v30 = v5[2];
  v29 = v5[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v30, v29);
  *&v72 = a1;

  v31 = v67;
  sub_22F1AB0EC(&v72);
  if (v31)
  {

    __break(1u);
  }

  else
  {
    v32 = v72;
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;
    sub_22F741B00();

    strcpy(&v72, "/v1/catalog/");
    BYTE13(v72) = 0;
    HIWORD(v72) = -5120;
    MEMORY[0x231900B10](v27, v28);
    MEMORY[0x231900B10](0x2F73676E6F732FLL, 0xE700000000000000);
    v67 = v25;
    MEMORY[0x2318FECD0](v72, *(&v72 + 1));
    v33 = v71;
    v34 = *(v71 + 56);
    v34(v22, 1, 1, v13);
    v68 = v22;
    v56[1] = 0;
    *&v72 = v32;
    if (v64)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F15A2C0();
      sub_22F740DA0();

      v35 = v33;
      v22 = v68;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      v35 = v33;
      sub_22F15A2C0();
      sub_22F740DA0();
    }

    sub_22F73F0A0();

    sub_22F120ADC(v22, &qword_27DAB42B8, &qword_22F78AFB8);
    v34(v19, 0, 1, v13);
    sub_22F3E3AE4(v19, v22);
    v36 = v65;
    sub_22F3E3B54(v22, v65);
    if ((*(v35 + 48))(v36, 1, v13) == 1)
    {
      sub_22F120ADC(v36, &qword_27DAB42B8, &qword_22F78AFB8);
      sub_22F3E3BC4();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
      v38 = v67;
LABEL_11:
      sub_22F120ADC(v22, &qword_27DAB42B8, &qword_22F78AFB8);
      return (*(v69 + 8))(v38, v70);
    }

    v39 = v35;
    v40 = *(v35 + 32);
    v41 = v66;
    v40(v66, v36, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
    v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v43 = swift_allocObject();
    v65 = xmmword_22F771340;
    *(v43 + 16) = xmmword_22F771340;
    v44 = *(v39 + 16);
    v44(v43 + v42, v41, v13);
    v45 = swift_allocObject();
    *(v45 + 16) = v65;
    if (qword_2810AA608 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v13, qword_2810AA610);
    v47.n128_f64[0] = v44(v45 + v42, v46, v13);
    v81 = v43;
    sub_22F145170(v47, v45);
    v72 = v79;
    v73 = v80;
    v74 = v60;
    v75 = v77;
    v76 = v78;
    v48 = sub_22F1F25F0(&v72);
    sub_22F145170(v49, v48);
    v38 = v67;
    sub_22F73F0F0();
    v50 = v61;
    sub_22F73F100();
    v51 = v62;
    v52 = v63;
    if ((*(v62 + 48))(v50, 1, v63) == 1)
    {
      sub_22F120ADC(v50, &qword_27DAB29A0, &unk_22F77BFC0);
      sub_22F3E3BC4();
      swift_allocError();
      *v53 = 0;
      swift_willThrow();
      (*(v71 + 8))(v66, v13);
      v22 = v68;
      goto LABEL_11;
    }

    v55 = v58;
    (*(v51 + 32))(v58, v50, v52);
    (*(v51 + 16))(v57, v55, v52);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v51 + 8))(v55, v52);
    (*(v71 + 8))(v66, v13);
    sub_22F120ADC(v68, &qword_27DAB42B8, &qword_22F78AFB8);
    return (*(v69 + 8))(v38, v70);
  }

  return result;
}

uint64_t sub_22F3E1B88@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v41 - v5;
  v53 = sub_22F73F470();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v41 - v8;
  v9 = sub_22F73F0B0();
  v49 = *(v9 - 8);
  v47 = v49;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22F73F150();
  v52 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a1;
  v14 = *(a1 + 2);
  v48 = *(a1 + 3);
  v62 = v14;
  v59 = a1[2];
  v60 = *(a1 + 6);
  v15 = *v2;
  v16 = v2[1];
  v18 = v2[2];
  v17 = v2[3];
  v19 = v2[5];
  v46 = v2[4];
  v45 = v19;

  sub_22F73F140();
  sub_22F73F130();
  v20 = v18;
  v21 = v11;
  v22 = v9;
  MEMORY[0x2318FECC0](v20, v17);
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  sub_22F741B00();

  strcpy(&v54, "/v1/catalog/");
  BYTE13(v54) = 0;
  HIWORD(v54) = -5120;
  v23 = v16;
  v24 = v47;
  MEMORY[0x231900B10](v15, v23);
  MEMORY[0x231900B10](0x73696C79616C702FLL, 0xEA00000000007374);
  MEMORY[0x2318FECD0](v54, *(&v54 + 1));
  sub_22F73F0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
  v25 = *(v49 + 9);
  v26 = (v24[80] + 32) & ~v24[80];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22F7707D0;
  v28 = v27 + v26;
  v29 = *(v24 + 2);
  v49 = v21;
  v29(v28, v21, v22);
  if (qword_2810AA608 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v22, qword_2810AA610);
  v29(v28 + v25, v30, v22);
  v31 = v28 + 2 * v25;
  if (qword_2810AA630 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v22, qword_2810AA638);
  v29(v31, v32, v22);
  v54 = v61;
  v55 = v62;
  v56 = v48;
  v57 = v59;
  v58 = v60;
  v33 = sub_22F1F25F0(&v54);
  *&v54 = v27;
  sub_22F145170(v34, v33);
  sub_22F73F0F0();
  v35 = v50;
  sub_22F73F100();
  v36 = v51;
  v37 = v53;
  if ((*(v51 + 48))(v35, 1, v53) == 1)
  {
    sub_22F120ADC(v35, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
  }

  else
  {
    v40 = v43;
    (*(v36 + 32))(v43, v35, v37);
    (*(v36 + 16))(v42, v40, v37);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v36 + 8))(v40, v37);
  }

  (*(v24 + 1))(v49, v22);
  return (*(v52 + 8))(v13, v63);
}

uint64_t sub_22F3E21F0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v53 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v50 - v8;
  v59 = sub_22F73F470();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v50 - v11;
  v54 = sub_22F73F0B0();
  v63 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v73 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = sub_22F73F150();
  v61 = *(v19 - 8);
  v62 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *a3;
  v22 = *(a3 + 2);
  v55 = *(a3 + 3);
  v72 = v22;
  v69 = a3[2];
  v70 = *(a3 + 6);
  v23 = *v4;
  v24 = v4[1];
  v26 = v4[2];
  v25 = v4[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v26, v25);
  *&v64 = a1;

  v27 = v58;
  sub_22F1AB0EC(&v64);
  v50 = v27;
  if (v27)
  {

    __break(1u);
  }

  else
  {
    v28 = v64;
    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    sub_22F741B00();

    strcpy(&v64, "/v1/catalog/");
    BYTE13(v64) = 0;
    HIWORD(v64) = -5120;
    MEMORY[0x231900B10](v23, v24);
    MEMORY[0x231900B10](0x737473697472612FLL, 0xE90000000000002FLL);
    MEMORY[0x2318FECD0](v64, *(&v64 + 1));
    *&v64 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    sub_22F740DA0();

    sub_22F73F0A0();

    v29 = v15;
    sub_22F73F0A0();
    *&v64 = v60;
    sub_22F742010();
    v30 = v73;
    sub_22F73F0A0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
    v31 = v63;
    v32 = *(v63 + 72);
    v33 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22F7727B0;
    v35 = v34 + v33;
    v36 = *(v31 + 16);
    v60 = v18;
    v37 = v18;
    v38 = v54;
    v36(v35, v37, v54);
    v58 = v29;
    v36(v35 + v32, v29, v38);
    v36(v35 + 2 * v32, v30, v38);
    v39 = 3 * v32;
    if (qword_2810AA608 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v38, qword_2810AA610);
    v36(v35 + v39, v40, v38);
    v64 = v71;
    v65 = v72;
    v66 = v55;
    v67 = v69;
    v68 = v70;
    v41 = sub_22F1F25F0(&v64);
    *&v64 = v34;
    sub_22F145170(v42, v41);
    sub_22F73F0F0();
    v43 = v56;
    sub_22F73F100();
    v44 = v57;
    v45 = v59;
    if ((*(v57 + 48))(v43, 1, v59) == 1)
    {
      sub_22F120ADC(v43, &qword_27DAB29A0, &unk_22F77BFC0);
      sub_22F3E3BC4();
      swift_allocError();
      *v46 = 0;
      swift_willThrow();
    }

    else
    {
      v49 = v52;
      (*(v44 + 32))(v52, v43, v45);
      (*(v44 + 16))(v51, v49, v45);
      sub_22F73EEA0();
      sub_22F73EE80();
      (*(v44 + 8))(v49, v45);
    }

    v47 = *(v63 + 8);
    v47(v73, v38);
    v47(v58, v38);
    v47(v60, v38);
    return (*(v61 + 8))(v21, v62);
  }

  return result;
}

uint64_t sub_22F3E29C0@<X0>(char *a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v57 = a1;
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v48 - v6;
  v58 = sub_22F73F470();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v9;
  v10 = sub_22F73F0B0();
  v70 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = sub_22F73F150();
  v59 = *(v19 - 8);
  v60 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *a2;
  v22 = *(a2 + 2);
  v52 = *(a2 + 3);
  v69 = v22;
  v66 = a2[2];
  v67 = *(a2 + 6);
  v23 = *(v3 + 16);
  v24 = *(v3 + 24);

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v23, v24);
  v51 = v21;
  MEMORY[0x2318FECD0](0xD000000000000020, 0x800000022F79EB20);
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v25 = qword_2810A9170;
  v26 = sub_22F73F5B0();
  v27 = [v25 stringFromDate_];

  sub_22F740E20();
  sub_22F73F0A0();

  v28 = sub_22F73F5B0();
  v29 = [v25 stringFromDate_];

  sub_22F740E20();
  sub_22F73F0A0();

  sub_22F73F0A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
  v30 = v70;
  v31 = *(v70 + 72);
  v32 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22F7727B0;
  v34 = v33 + v32;
  v35 = *(v30 + 16);
  v57 = v18;
  v35(v34, v18, v10);
  v55 = v15;
  v35(v34 + v31, v15, v10);
  v54 = v12;
  v35(v34 + 2 * v31, v12, v10);
  v36 = 3 * v31;
  if (qword_2810AA608 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v10, qword_2810AA610);
  v35(v34 + v36, v37, v10);
  v61 = v68;
  v62 = v69;
  v63 = v52;
  v64 = v66;
  v65 = v67;
  v38 = sub_22F1F25F0(&v61);
  *&v61 = v33;
  sub_22F145170(v39, v38);
  v40 = v51;
  sub_22F73F0F0();
  v41 = v53;
  sub_22F73F100();
  v42 = v56;
  v43 = v58;
  if ((*(v56 + 48))(v41, 1, v58) == 1)
  {
    sub_22F120ADC(v41, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
  }

  else
  {
    v47 = v49;
    (*(v42 + 32))(v49, v41, v43);
    (*(v42 + 16))(v48, v47, v43);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v42 + 8))(v47, v43);
  }

  v45 = *(v70 + 8);
  v45(v54, v10);
  v45(v55, v10);
  v45(v57, v10);
  return (*(v59 + 8))(v40, v60);
}

uint64_t sub_22F3E3150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a2;
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_22F73F470();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v25 = &v23 - v13;
  v31 = sub_22F73F150();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 24);
  v17 = *v4;
  v16 = v4[1];
  v18 = v4[2];
  v19 = v4[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v18, v19);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_22F741B00();

  strcpy(v30, "/v1/catalog/");
  BYTE5(v30[1]) = 0;
  HIWORD(v30[1]) = -5120;
  MEMORY[0x231900B10](v17, v16);
  MEMORY[0x231900B10](0x73676E6F732FLL, 0xE600000000000000);
  MEMORY[0x2318FECD0](v30[0], v30[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
  sub_22F73F0B0();
  *(swift_allocObject() + 16) = xmmword_22F771340;
  sub_22F73F0A0();
  sub_22F73F0F0();
  sub_22F73F100();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22F120ADC(v8, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  else
  {
    v22 = v25;
    (*(v10 + 32))(v25, v8, v9);
    (*(v10 + 16))(v24, v22, v9);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v10 + 8))(v22, v9);
  }

  return (*(v29 + 8))(v15, v31);
}

uint64_t sub_22F3E35AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a2;
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_22F73F470();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v25 = &v23 - v13;
  v31 = sub_22F73F150();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 + 24);
  v17 = *v4;
  v16 = v4[1];
  v18 = v4[2];
  v19 = v4[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v18, v19);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_22F741B00();

  strcpy(v30, "/v1/catalog/");
  BYTE5(v30[1]) = 0;
  HIWORD(v30[1]) = -5120;
  MEMORY[0x231900B10](v17, v16);
  MEMORY[0x231900B10](0x73696C79616C702FLL, 0xEB000000002F7374);
  MEMORY[0x231900B10](v27, v28);
  MEMORY[0x2318FECD0](v30[0], v30[1]);
  sub_22F73F100();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22F120ADC(v8, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  else
  {
    v22 = v25;
    (*(v10 + 32))(v25, v8, v9);
    (*(v10 + 16))(v24, v22, v9);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v10 + 8))(v22, v9);
  }

  return (*(v29 + 8))(v15, v31);
}

uint64_t MusicKitRequestFactory.userStorefront.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22F3E3990()
{
  v0 = sub_22F73F0B0();
  __swift_allocate_value_buffer(v0, qword_2810AA610);
  __swift_project_value_buffer(v0, qword_2810AA610);
  return sub_22F73F0A0();
}

uint64_t sub_22F3E3A10()
{
  v0 = sub_22F73F0B0();
  __swift_allocate_value_buffer(v0, qword_2810AA638);
  __swift_project_value_buffer(v0, qword_2810AA638);
  return sub_22F73F0A0();
}

uint64_t MusicKitRequestFactory.apiDomain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_22F73F140();
  sub_22F73F130();
  return MEMORY[0x2318FECC0](v1, v2);
}

uint64_t sub_22F3E3AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB42B8, &qword_22F78AFB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3E3B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB42B8, &qword_22F78AFB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F3E3BC4()
{
  result = qword_27DAB42C0;
  if (!qword_27DAB42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB42C0);
  }

  return result;
}

uint64_t sub_22F3E3C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v27 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v31 = sub_22F73F470();
  v10 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26 = &v24 - v13;
  v34 = sub_22F73F150();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a4 + 24);
  v16 = *v5;
  v17 = v5[1];
  v18 = v5[2];
  v19 = v5[3];

  sub_22F73F140();
  sub_22F73F130();
  MEMORY[0x2318FECC0](v18, v19);
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_22F741B00();

  strcpy(v33, "/v1/catalog/");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  MEMORY[0x231900B10](v16, v17);
  MEMORY[0x231900B10](0x6863726165732FLL, 0xE700000000000000);
  MEMORY[0x2318FECD0](v33[0], v33[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E38, &unk_22F7711E0);
  sub_22F73F0B0();
  *(swift_allocObject() + 16) = xmmword_22F7707D0;
  sub_22F73F0A0();
  v33[0] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  sub_22F740DA0();
  sub_22F73F0A0();

  sub_22F73F0A0();
  v20 = v31;
  sub_22F73F0F0();
  sub_22F73F100();
  if ((*(v10 + 48))(v9, 1, v20) == 1)
  {
    sub_22F120ADC(v9, &qword_27DAB29A0, &unk_22F77BFC0);
    sub_22F3E3BC4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  else
  {
    v23 = v26;
    (*(v10 + 32))(v26, v9, v20);
    (*(v10 + 16))(v25, v23, v20);
    sub_22F73EEA0();
    sub_22F73EE80();
    (*(v10 + 8))(v23, v20);
  }

  return (*(v32 + 8))(v15, v34);
}

uint64_t sub_22F3E4114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22F3E415C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22F3E41C8(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, SEL *a5)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    sub_22F120634(0, a2, a3);
    sub_22F11FA28(a4, a2, a3);
    sub_22F741470();
    v6 = v31;
    v10 = v32;
    v12 = v33;
    v11 = v34;
    v13 = v35;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v11 = 0;
  }

  v28 = MEMORY[0x277D84F90];
  while (v6 < 0)
  {
    if (!sub_22F741A40() || (sub_22F120634(0, a2, a3), swift_dynamicCast(), (v19 = v36) == 0))
    {
LABEL_24:
      sub_22F0FF590(v6);
      return;
    }

LABEL_17:
    v20 = [v19 *a5];
    if (v20)
    {
      v21 = v20;
      v27 = sub_22F740E20();
      v23 = v22;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_22F13E1A8(0, *(v28 + 2) + 1, 1, v28);
      }

      v25 = *(v28 + 2);
      v24 = *(v28 + 3);
      if (v25 >= v24 >> 1)
      {
        v28 = sub_22F13E1A8((v24 > 1), v25 + 1, 1, v28);
      }

      *(v28 + 2) = v25 + 1;
      v26 = &v28[16 * v25];
      *(v26 + 4) = v27;
      *(v26 + 5) = v23;
    }

    else
    {
    }
  }

  v17 = v11;
  v18 = v13;
  if (v13)
  {
LABEL_13:
    v13 = (v18 - 1) & v18;
    v19 = *(*(v6 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v18 = *(v10 + 8 * v11);
    ++v17;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t AssetCurationUtilitiesDataSource.characterCurationInfo(for:)(uint64_t a1)
{
  v2 = *v1;
  if (qword_2810A9BA8 != -1)
  {
    swift_once();
  }

  v3 = qword_2810B4E78;
  *&v4 = CACurrentMediaTime();
  sub_22F1B560C("AssetCurationUtilitiesDataSource", 32, 2u, v4, 0, v3, v21);
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v5);
  v7 = sub_22F741410();
  v8 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (v8)
  {
    v9 = sub_22F741420();

    v10 = [v2 meNode];
    AssetCurationUtilitiesDataSource.personRelationshipByUUID(for:meNode:)(v9, v10);
    AssetCurationUtilitiesDataSource.myPetUUIDs(for:meNode:)(v9, v10);

    v20 = v2;
    AssetCurationUtilitiesDataSource.favoritedCharacterUUIDs()();
    sub_22F7403C0();
  }

  else
  {
    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v11 = sub_22F740B90();
    __swift_project_value_buffer(v11, qword_2810B4D60);

    v12 = sub_22F740B70();
    v13 = sub_22F7415E0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = sub_22F741430();
      v18 = sub_22F145F20(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_22F0FC000, v12, v13, "Unable to convert character uuids to local identifiers: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2319033A0](v15, -1, -1);
      MEMORY[0x2319033A0](v14, -1, -1);
    }

    sub_22F7403C0();
  }

  sub_22F1B2BBC(0);
}

uint64_t AssetCurationUtilitiesDataSource.personRelationshipByUUID(for:meNode:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = objc_opt_self();
  v6 = sub_22F741410();
  v7 = [v5 personNodesForLocalIdentifiers:v6 inGraph:v4];

  if (qword_2810A9448 != -1)
  {
    swift_once();
  }

  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_2810B4D60);
  v9 = v7;
  v10 = sub_22F740B70();
  v11 = sub_22F7415F0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = [v9 count];

    _os_log_impl(&dword_22F0FC000, v10, v11, "Attempting to get confirmed relationships for %ld person nodes.", v12, 0xCu);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v24 = MEMORY[0x277D84F98];
  v13 = swift_allocObject();
  *(v13 + 16) = &v24;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22F3E5970;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22F250854;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_58;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  [v9 enumerateNodesUsingBlock:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_22F740B70();
    v20 = sub_22F7415F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      swift_beginAccess();
      *(v21 + 4) = *(v24 + 16);
      _os_log_impl(&dword_22F0FC000, v19, v20, "Found %ld relationships.", v21, 0xCu);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    swift_beginAccess();
    v22 = v24;

    return v22;
  }

  return result;
}

uint64_t AssetCurationUtilitiesDataSource.myPetUUIDs(for:meNode:)(uint64_t a1, id a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84FA0];
  }

  v3 = [a2 collection];
  if (!v3)
  {
    return MEMORY[0x277D84FA0];
  }

  v4 = v3;
  v5 = [v3 ownedPetNodes];
  v6 = [v5 localIdentifiers];

  v7 = sub_22F741420();

  sub_22F1ABBB4(v7, a1);

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v8);
  v10 = sub_22F741410();
  v11 = [ObjCClassFromMetadata uuidsFromLocalIdentifiers_];

  if (!v11)
  {
    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v17 = sub_22F740B90();
    __swift_project_value_buffer(v17, qword_2810B4D60);

    v18 = sub_22F740B70();
    v19 = sub_22F7415E0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      v22 = sub_22F741430();
      v24 = v23;

      v25 = sub_22F145F20(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_22F0FC000, v18, v19, "Unable to convert pet local identifiers to UUIDs for %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2319033A0](v21, -1, -1);
      MEMORY[0x2319033A0](v20, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84FA0];
  }

  v12 = sub_22F741420();

  if (qword_2810A9448 != -1)
  {
    swift_once();
  }

  v13 = sub_22F740B90();
  __swift_project_value_buffer(v13, qword_2810B4D60);

  v14 = sub_22F740B70();
  v15 = sub_22F7415F0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v12 + 16);

    _os_log_impl(&dword_22F0FC000, v14, v15, "Found %ld relevant myPetUUIDs", v16, 0xCu);
    MEMORY[0x2319033A0](v16, -1, -1);
  }

  else
  {
  }

  return v12;
}

uint64_t AssetCurationUtilitiesDataSource.favoritedCharacterUUIDs()()
{
  v1 = *v0;
  v2 = [v1 favoritedPersonNodesIncludingMe_];
  sub_22F120634(0, &qword_27DAB42C8, off_27887B210);
  sub_22F11FA28(&qword_27DAB42D0, &qword_27DAB42C8, off_27887B210);
  v3 = sub_22F741420();

  sub_22F3E41C8(v3, &qword_27DAB42C8, off_27887B210, &qword_27DAB42D0, &selRef_localIdentifier);
  v5 = v4;

  v6 = [objc_opt_self() favoritedPetNodesInGraph_];
  v7 = [v6 localIdentifiers];

  v8 = sub_22F741420();
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v9);
  v24 = v5;

  sub_22F144C4C(v8);
  sub_22F1515F8(v5);

  v11 = sub_22F741410();

  v12 = [ObjCClassFromMetadata uuidsFromLocalIdentifiers_];

  if (v12)
  {

    v13 = sub_22F741420();

    return v13;
  }

  else
  {
    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v15 = sub_22F740B90();
    __swift_project_value_buffer(v15, qword_2810B4D60);

    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x231900D40](v5, MEMORY[0x277D837D0]);
      v22 = v21;

      v23 = sub_22F145F20(v20, v22, &v24);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Unable to convert favorited person/pet local identifiers to UUIDs for %s.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x2319033A0](v19, -1, -1);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84FA0];
  }
}

void sub_22F3E51F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v22 = sub_22F740B90();
    __swift_project_value_buffer(v22, qword_2810B4D60);
    v23 = a1;
    v56 = sub_22F740B70();
    v24 = sub_22F7415E0();

    if (os_log_type_enabled(v56, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57 = v26;
      *v25 = 136315138;
      [v23 identifier];
      v27 = sub_22F741750();
      v29 = sub_22F145F20(v27, v28, &v57);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22F0FC000, v56, v24, "Unable to cast node %s to personNode!", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x2319033A0](v26, -1, -1);
      MEMORY[0x2319033A0](v25, -1, -1);
LABEL_18:

      return;
    }

    goto LABEL_29;
  }

  v13 = v12;
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v14);
  v56 = a1;
  v16 = [v13 localIdentifier];
  v17 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

  if (v17)
  {
    v18 = sub_22F740E20();
    v20 = v19;

    if ([v13 isMeNode])
    {
      v21 = MEMORY[0x277D3C5E8];
LABEL_17:
      v40 = *v21;
      v41 = sub_22F740690();
      v42 = *(v41 - 8);
      (*(v42 + 104))(v11, v40, v41);
      (*(v42 + 56))(v11, 0, 1, v41);
      sub_22F122248(v11, v18, v20);
      goto LABEL_18;
    }

    if (([v13 isMyChild] & 1) != 0 || objc_msgSend(v13, sel_isMyInferredChild))
    {
      v21 = MEMORY[0x277D3C5F0];
      goto LABEL_17;
    }

    if (a4)
    {
      v55 = a4;
      v43 = [v55 relationshipEdgesToPersonNode:v13 matchingQuery:1];
      sub_22F120634(0, &qword_2810A9030, off_27887B328);
      sub_22F11FA28(&qword_2810A9028, &qword_2810A9030, off_27887B328);
      v44 = sub_22F741420();

      sub_22F3E41C8(v44, &qword_2810A9030, off_27887B328, &qword_2810A9028, &selRef_label);
      v46 = v45;

      if (*(v46 + 16))
      {
        v47 = objc_opt_self();
        sub_22F1515F8(v46);

        v48 = sub_22F741410();

        v49 = [v47 reducedRelationshipNameForLabels_];

        sub_22F740E20();
        sub_22F740EA0();

        sub_22F740680();
        sub_22F3E59A0(v11, v8);
        sub_22F122248(v8, v18, v20);

        sub_22F3E5A10(v11);
        return;
      }

      goto LABEL_29;
    }

    if (qword_2810A9448 != -1)
    {
      swift_once();
    }

    v51 = sub_22F740B90();
    __swift_project_value_buffer(v51, qword_2810B4D60);
    v31 = sub_22F740B70();
    v52 = sub_22F7415F0();
    if (os_log_type_enabled(v31, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22F0FC000, v31, v52, "No me node, unable to get confirmed relationships.", v53, 2u);
      MEMORY[0x2319033A0](v53, -1, -1);
    }

    goto LABEL_28;
  }

  if (qword_2810A9448 != -1)
  {
    swift_once();
  }

  v30 = sub_22F740B90();
  __swift_project_value_buffer(v30, qword_2810B4D60);
  v31 = v56;
  v56 = sub_22F740B70();
  v32 = sub_22F7415E0();

  if (!os_log_type_enabled(v56, v32))
  {
LABEL_28:

LABEL_29:
    v54 = v56;

    return;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v57 = v34;
  *v33 = 136315138;
  v35 = [v13 localIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = sub_22F740E20();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v50 = sub_22F145F20(v37, v39, &v57);

  *(v33 + 4) = v50;
  _os_log_impl(&dword_22F0FC000, v56, v32, "Unable to convert person local identifier %s to uuid.", v33, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v34);
  MEMORY[0x2319033A0](v34, -1, -1);
  MEMORY[0x2319033A0](v33, -1, -1);
}

double block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_22F3E59A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3E5A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F3E5A78(uint64_t a1)
{
  v3 = type metadata accessor for Song(0);
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v24 = v1;
  v32 = MEMORY[0x277D84F90];
  sub_22F146454(0, v5, 0);
  v6 = v32;
  v31 = a1 + 56;
  result = sub_22F741980();
  v8 = result;
  v9 = 0;
  v25 = a1 + 64;
  v26 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v31 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v29 = *(a1 + 36);
    v12 = v27;
    sub_22F3E9E34(*(a1 + 48) + *(v28 + 72) * v8, v27, type metadata accessor for Song);
    v13 = v12[1];
    v30 = *v12;

    result = sub_22F3E9E9C(v12, type metadata accessor for Song);
    v32 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_22F146454((v14 > 1), v15 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v30;
    *(v16 + 40) = v13;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v17 = *(v31 + 8 * v11);
    if ((v17 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v8 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (v25 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_22F107D18(v8, v29, 0);
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v8, v29, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v26)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_22F3E5D5C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22F73F360();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void static MusicCacheMusicKitReconciler.run(photoLibrary:progressReporter:completionHandler:)(void *a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v99 = a4;
  v100 = a3;
  v6 = type metadata accessor for CacherStatusUpdater(0);
  v7 = *(v6 - 8);
  v92 = v6;
  v93 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v94 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v80 - v10;
  v11 = sub_22F73F690();
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x28223BE20](v11);
  v91 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  v24 = a2;
  v25 = sub_22F7416B0();
  v27 = v26;
  v28 = sub_22F1A26E0(a1);
  v84 = v24;
  v85 = a1;
  v86 = v20;
  v87 = v8;
  v88 = v17;
  v89 = v23;
  v90 = v27;
  v29 = v28;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v30 = v29;
  v31 = sub_22F1ED5B0(v29);

  sub_22F1E3F74(v104);
  memcpy(v105, v104, 0x121uLL);
  if (sub_22F1EDAB8(v105) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v102, v104, sizeof(v102));
    GEOLocationCoordinate2DMake();
    v103 = *v33;
    v32 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();

    v37 = v100;
    v38 = v32;
    v37(0, v32);
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(v104, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v102, v104, sizeof(v102));
    GEOLocationCoordinate2DMake();
    v35 = *(v34 + 264);
    v36 = v89;
    MusicCache.readCacherStatus(category:)(0x6665526568636163, 0xEC00000068736572, v89);
    v39 = sub_22F3E82EC(v36, v31, v25);
    v40 = v100;
    if (v39)
    {
      v82 = v35;
      v83 = v30;
      v84 = v31;
      v41 = v88;
      sub_22F3E67C4(v85, v88);
      v42 = v96;
      sub_22F3E6B4C(v41, v96);
      if (qword_2810A9478 != -1)
      {
        swift_once();
      }

      v43 = sub_22F740B90();
      __swift_project_value_buffer(v43, qword_2810B4DC0);
      v44 = v97;
      v45 = v98;
      v46 = v91;
      (*(v97 + 16))(v91, v42, v98);
      v47 = sub_22F740B70();
      v48 = sub_22F7415C0();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v86;
      if (v49)
      {
        v51 = swift_slowAlloc();
        v80 = v51;
        v85 = swift_slowAlloc();
        v101 = v85;
        *v51 = 136315138;
        sub_22F1E3D6C();
        v81 = v48;
        v52 = sub_22F742010();
        v54 = v53;
        v91 = *(v44 + 8);
        (v91)(v46, v45);
        v55 = sub_22F145F20(v52, v54, &v101);

        v56 = v80;
        *(v80 + 1) = v55;
        v57 = v56;
        _os_log_impl(&dword_22F0FC000, v47, v81, "[MemoriesMusic] - MusicCacheMusicKitReconciler running with oldestRefreshAttemptDateConsideredFresh: %s.", v56, 0xCu);
        v58 = v85;
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x2319033A0](v58, -1, -1);
        MEMORY[0x2319033A0](v57, -1, -1);
      }

      else
      {

        v91 = *(v44 + 8);
        (v91)(v46, v45);
      }

      v59 = v95;
      sub_22F13BA9C(v89, v50, &qword_27DAB1DA0, &unk_22F7771B0);
      v60 = type metadata accessor for CacherStatus(0);
      if ((*(*(v60 - 8) + 48))(v50, 1, v60) == 1)
      {
        sub_22F120ADC(v50, &qword_27DAB1DA0, &unk_22F7771B0);
        v61 = v87;
        v62 = v93;
        v63 = 0xEC00000068736572;
        v64 = 0x6665526568636163;
      }

      else
      {
        v66 = *v50;
        v65 = v50[1];

        sub_22F3E9E9C(v50, type metadata accessor for CacherStatus);
        v64 = 0x6665526568636163;
        if (v65)
        {
          v64 = v66;
          v63 = v65;
        }

        else
        {
          v63 = 0xEC00000068736572;
        }

        v61 = v87;
        v62 = v93;
      }

      v67 = v89;
      sub_22F13BA9C(v89, v59, &qword_27DAB1DA0, &unk_22F7771B0);
      v68 = (v59 + *(v92 + 20));
      *v68 = v64;
      v68[1] = v63;
      v69 = v94;
      sub_22F3E9E34(v59, v94, type metadata accessor for CacherStatusUpdater);
      v70 = (*(v62 + 80) + 16) & ~*(v62 + 80);
      v71 = (v61 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      sub_22F3E9DCC(v69, v72 + v70, type metadata accessor for CacherStatusUpdater);
      v73 = v83;
      *(v72 + v71) = v83;
      v74 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
      v75 = v99;
      *v74 = v100;
      v74[1] = v75;
      v76 = v73;

      v77 = v96;
      v78 = v90;
      sub_22F3E8B7C(v96, v76, v82, v90, sub_22F3E87C8, v72);

      sub_22F3E9E9C(v59, type metadata accessor for CacherStatusUpdater);
      (v91)(v77, v98);
      sub_22F120ADC(v88, &qword_27DAB0920, &qword_22F770B20);
      v79 = v67;
    }

    else
    {
      sub_22F7416A0();
      v40(1, 0);

      v79 = v89;
    }

    sub_22F120ADC(v79, &qword_27DAB1DA0, &unk_22F7771B0);
  }
}

uint64_t sub_22F3E67C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v28 - v6;
  v8 = [a1 librarySpecificFetchOptions];
  [v8 setFetchLimit_];
  [v8 setIncludePendingMemories_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F771350;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_22F740DF0();
  v12 = [v10 initWithKey:v11 ascending:0];

  *(v9 + 32) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22F740DF0();
  v15 = [v13 initWithKey:v14 ascending:0];

  *(v9 + 40) = v15;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v16 = sub_22F741160();

  [v8 setSortDescriptors_];

  sub_22F120634(0, &unk_2810A8EB0, 0x277CD98D8);
  v18 = [swift_getObjCClassFromMetadata(v17) fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v8];
  v19 = [v18 firstObject];

  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = [v20 creationDate];
      if (v21)
      {
        v22 = v21;
        sub_22F73F640();

        v23 = sub_22F73F690();
        (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
      }

      else
      {

        v27 = sub_22F73F690();
        (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
      }

      return sub_22F168438(v7, a2);
    }
  }

  else
  {
    v19 = v8;
  }

  v24 = sub_22F73F690();
  v25 = *(*(v24 - 8) + 56);

  return v25(a2, 1, 1, v24);
}

uint64_t sub_22F3E6B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_22F13BA9C(a1, v7, &qword_27DAB0920, &qword_22F770B20);
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v11) == 1)
  {
    sub_22F120ADC(v7, &qword_27DAB0920, &qword_22F770B20);
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_22F73F550();
    result = v13(v10, 1, v11);
    if (result != 1)
    {
      return sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    sub_22F73F5A0();
    (*(v12 + 8))(v7, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    return (*(v12 + 32))(a2, v10, v11);
  }

  return result;
}

uint64_t sub_22F3E6D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t))
{
  if (a1)
  {
    CacherStatusUpdater.writeFailure(to:)(a3);
  }

  else
  {
    CacherStatusUpdater.writeSuccess(to:)(a3);
  }

  return a4(a1 == 0, a1);
}

double sub_22F3E6F30(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10)
{
  v135 = a7;
  v138 = a6;
  v177 = a4;
  v158 = a9;
  v159 = sub_22F73F690();
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v16 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for Song(0);
  v180 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v172 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v171 = &v130 - v19;
  MEMORY[0x28223BE20](v20);
  v179 = &v130 - v21;
  MEMORY[0x28223BE20](v22);
  v176 = &v130 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = (&v130 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = &v130 - v28;
  if (a2)
  {
    sub_22F7416A0();
    v158(a1);
  }

  else
  {
    v133 = a10;
    v134 = a8;
    v31 = *(a1 + 16);
    v32 = MEMORY[0x277D84F90];
    v175 = a3;
    if (v31)
    {
      v184 = MEMORY[0x277D84F90];
      sub_22F146514(0, v31, 0);
      v32 = v184;
      v33 = (a1 + 32);
      do
      {
        memcpy(v183, v33, sizeof(v183));
        memcpy(v182, v33, sizeof(v182));
        sub_22F18C4EC(v183, v181);
        Song.init(_:)(v182);
        v184 = v32;
        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          sub_22F146514((v34 > 1), v35 + 1, 1);
          v32 = v184;
        }

        v32[2] = v35 + 1;
        sub_22F3E9DCC(v29, v32 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v35, type metadata accessor for Song);
        v33 += 296;
        --v31;
      }

      while (v31);
    }

    v182[0] = v32;
    v36 = v32[2];
    v37 = v32;
    v38 = MEMORY[0x277D84F90];
    v155 = v16;
    v132 = a5;
    v178 = v37;
    if (v36)
    {
      v183[0] = MEMORY[0x277D84F90];

      sub_22F146454(0, v36, 0);
      v38 = v183[0];
      v39 = v37 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
      v40 = *(v180 + 72);
      do
      {
        sub_22F3E9E34(v39, v26, type metadata accessor for Song);
        v42 = *v26;
        v41 = v26[1];

        sub_22F3E9E9C(v26, type metadata accessor for Song);
        v183[0] = v38;
        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_22F146454((v43 > 1), v44 + 1, 1);
          v38 = v183[0];
        }

        *(v38 + 16) = v44 + 1;
        v45 = v38 + 16 * v44;
        *(v45 + 32) = v42;
        *(v45 + 40) = v41;
        v39 += v40;
        --v36;
      }

      while (v36);

      v16 = v155;
    }

    v46 = sub_22F1515F8(v38);

    v181[0] = v46;

    v48 = sub_22F1515F8(v47);

    if (*(v46 + 16) <= *(v48 + 16) >> 3)
    {
      v183[0] = v48;
      sub_22F3E7FB8(v46);

      v49 = v183[0];
    }

    else
    {
      v49 = sub_22F1E999C(v46, v48);
    }

    if (qword_2810A9478 != -1)
    {
LABEL_54:
      swift_once();
    }

    v50 = sub_22F740B90();
    v51 = __swift_project_value_buffer(v50, qword_2810B4DC0);

    v130 = v51;
    v52 = sub_22F740B70();
    v53 = sub_22F7415C0();
    v54 = os_log_type_enabled(v52, v53);
    v131 = v49;
    if (v54)
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      *(v55 + 4) = v178[2];
      *(v55 + 12) = 2048;
      *(v55 + 14) = *(v49 + 16);

      _os_log_impl(&dword_22F0FC000, v52, v53, "[MemoriesMusic] - MusicCacheMusicKitReconciler updated %ld songs from MusicKit, and %ld stale adamIDs.", v55, 0x16u);
      MEMORY[0x2319033A0](v55, -1, -1);
    }

    else
    {
    }

    sub_22F73F680();
    v56 = v177 + 56;
    v57 = 1 << *(v177 + 32);
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v59 = v58 & *(v177 + 56);
    v60 = (v57 + 63) >> 6;
    v136 = (v157 + 56);
    v137 = (v157 + 16);

    v61 = 0;
    v62 = 0;
    v173 = v60;
    v174 = v56;
LABEL_25:
    v160 = v61;
    v49 = v181[0];
    v63 = v181[0] + 56;
    while (v59)
    {
LABEL_32:
      v65 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v66 = v176;
      v67 = *(v177 + 48);
      v175 = *(v180 + 72);
      sub_22F3E9E34(v67 + v175 * (v65 | (v62 << 6)), v176, type metadata accessor for Song);
      v68 = v66;
      v69 = v179;
      sub_22F3E9DCC(v68, v179, type metadata accessor for Song);
      v71 = *v69;
      v70 = v69[1];
      if (!*(v49 + 16))
      {

LABEL_41:
        v78 = v179;
        v79 = *(v179 + 16);
        v152 = *(v179 + 24);
        v80 = *(v179 + 40);
        v139 = *(v179 + 32);
        v140 = v79;
        v161 = v80;
        v81 = *(v179 + 56);
        v143 = *(v179 + 48);
        v82 = *(v179 + 64);
        v167 = v81;
        v168 = v82;
        v142 = *(v179 + 72);
        v145 = *(v179 + 80);
        v144 = *(v179 + 88);
        LODWORD(v79) = *(v179 + 92);
        v146 = *(v179 + 96);
        v147 = v79;
        v83 = *(v179 + 104);
        v84 = *(v179 + 112);
        v85 = *(v179 + 128);
        v149 = *(v179 + 120);
        v150 = v83;
        v169 = v84;
        v170 = v85;
        v86 = *(v179 + 144);
        v153 = *(v179 + 136);
        v151 = v86;
        v87 = v156;
        v88 = v171;
        sub_22F13BA9C(v179 + *(v156 + 60), v171 + *(v156 + 60), &qword_27DAB0C90, &unk_22F785B70);
        v89 = v78 + v87[26];
        v90 = *v89;
        v165 = *(v89 + 8);
        v166 = v90;
        v91 = *(v89 + 16);
        v163 = *(v89 + 24);
        v164 = v91;
        v162 = *(v89 + 32);
        v141 = *(v89 + 44);
        v148 = *(v89 + 40);
        v154 = v148 | (v141 << 32);
        v92 = v87[16];
        v93 = v16;
        v94 = v159;
        (*v137)(v88 + v92, v93, v159);
        (*v136)(v88 + v92, 0, 1, v94);
        v95 = v87[17];
        v96 = v87[18];
        v97 = v139;
        *(v88 + 16) = v140;
        *(v88 + 32) = v97;
        v99 = v87[19];
        v98 = v87[20];
        *(v88 + 48) = v143;
        *(v88 + 72) = v142;
        v101 = v87[21];
        v100 = v87[22];
        *(v88 + 80) = v145;
        *(v88 + 88) = v144;
        v102 = v87[23];
        *(v88 + 92) = v147;
        *(v88 + 96) = v146;
        v103 = v87[25];
        v104 = v151;
        *(v88 + 104) = v150;
        *(v88 + 120) = v149;
        *v88 = v71;
        *(v88 + 8) = v70;
        *(v88 + 24) = v152;
        *(v88 + 40) = v161;
        *(v88 + 56) = v167;
        *(v88 + 64) = v168;
        *(v88 + 112) = v169;
        *(v88 + 128) = v170;
        *(v88 + 136) = v153;
        *(v88 + 144) = v104;
        v105 = v88 + v87[26];
        *(v105 + 44) = v141;
        v153 = *(v78 + v95);
        v106 = v153;
        v107 = v78 + v96;
        *(v105 + 40) = v148;
        LODWORD(v96) = *(v78 + v96);
        *v105 = v166;
        *(v105 + 8) = v165;
        *(v105 + 16) = v164;
        *(v105 + 24) = v163;
        *(v105 + 32) = v162;
        *(v88 + v87[17]) = v106;
        v108 = v88 + v87[18];
        *v108 = v96;
        v109 = v78 + v99;
        *(v108 + 4) = *(v107 + 4);
        LODWORD(v107) = *(v78 + v99);
        v110 = v88 + v87[19];
        *v110 = v107;
        LOBYTE(v107) = *(v109 + 4);
        v111 = v78 + v98;
        *(v110 + 4) = v107;
        LODWORD(v107) = *(v78 + v98);
        v112 = v88 + v87[20];
        *v112 = v107;
        LOBYTE(v107) = *(v111 + 4);
        v113 = v78 + v101;
        *(v112 + 4) = v107;
        LODWORD(v107) = *(v78 + v101);
        v114 = v88 + v87[21];
        *v114 = v107;
        LOBYTE(v107) = *(v113 + 4);
        v115 = v78 + v100;
        *(v114 + 4) = v107;
        LODWORD(v107) = *(v78 + v100);
        v116 = v88 + v87[22];
        *v116 = v107;
        LOBYTE(v107) = *(v115 + 4);
        v117 = v78 + v102;
        *(v116 + 4) = v107;
        LODWORD(v107) = *(v78 + v102);
        v118 = v88 + v87[23];
        *v118 = v107;
        v119 = (v78 + v103);
        *(v118 + 4) = *(v117 + 4);
        v120 = *v119;
        v121 = v119[1];
        *(v88 + v87[24]) = 0;
        v122 = (v88 + v87[25]);
        *v122 = v120;
        v122[1] = v121;
        sub_22F3E9E34(v88, v172, type metadata accessor for Song);
        swift_beginAccess();

        sub_22F13BB04(v166, v165, v164, v163, v162);

        v123 = v178;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_22F13E558(0, v123[2] + 1, 1, v123);
        }

        v49 = v123[2];
        v124 = v123[3];
        v178 = v123;
        v16 = v155;
        if (v49 >= v124 >> 1)
        {
          v178 = sub_22F13E558((v124 > 1), v49 + 1, 1, v178);
        }

        v125 = v178;
        v178[2] = v49 + 1;
        sub_22F3E9DCC(v172, v125 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + v49 * v175, type metadata accessor for Song);
        v182[0] = v125;
        swift_endAccess();
        sub_22F10BBDC(v183, v71, v70);

        sub_22F3E9E9C(v171, type metadata accessor for Song);
        sub_22F3E9E9C(v179, type metadata accessor for Song);
        v61 = v160 + 1;
        v60 = v173;
        v56 = v174;
        if (__OFADD__(v160, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        goto LABEL_25;
      }

      sub_22F742170();

      sub_22F740D60();
      v72 = sub_22F7421D0();
      v73 = -1 << *(v49 + 32);
      v74 = v72 & ~v73;
      if (((*(v63 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
      {
        goto LABEL_41;
      }

      v75 = ~v73;
      while (1)
      {
        v76 = (*(v49 + 48) + 16 * v74);
        v77 = *v76 == v71 && v76[1] == v70;
        if (v77 || (sub_22F742040() & 1) != 0)
        {
          break;
        }

        v74 = (v74 + 1) & v75;
        if (((*(v63 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      sub_22F3E9E9C(v179, type metadata accessor for Song);

      v60 = v173;
      v56 = v174;
    }

    while (1)
    {
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v64 >= v60)
      {
        break;
      }

      v59 = *(v56 + 8 * v64);
      ++v62;
      if (v59)
      {
        v62 = v64;
        goto LABEL_32;
      }
    }

    v126 = sub_22F740B70();
    v127 = sub_22F7415C0();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 134217984;
      *(v128 + 4) = v160;
      _os_log_impl(&dword_22F0FC000, v126, v127, "[MemoriesMusic] - MusicCacheMusicKitReconciler updated the lastRefreshAttemptDate of %ld songs manually as they were not updated successfully from MusicKit.", v128, 0xCu);
      MEMORY[0x2319033A0](v128, -1, -1);
    }

    MusicCache.update(songs:progressReporter:)(v129);

    MusicCache.removeSongs(withAdamIDs:progressReporter:)(v131);

    sub_22F7416A0();
    v158(0);
    (*(v157 + 8))(v16, v159);
  }

  return result;
}

id MusicCacheMusicKitReconciler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCacheMusicKitReconciler.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicCacheMusicKitReconciler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F3E7DB0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Song(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_22F3E9E34(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for Song);
      sub_22F164544(v9, v5);
      sub_22F3E9E9C(v9, type metadata accessor for Song);
      sub_22F120ADC(v5, &qword_27DAB1250, &qword_22F781A10);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_22F3E7FB8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22F164408(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_22F3E80E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2460, &qword_22F78B130);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SongSource(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_22F3E9E34(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for SongSource);
      sub_22F1647B0(v9, v5);
      sub_22F3E9E9C(v9, type metadata accessor for SongSource);
      sub_22F120ADC(v5, &qword_27DAB2460, &qword_22F78B130);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F3E82EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_22F73F690();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for CacherStatus(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v13, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_27DAB1DA0;
    v19 = &unk_22F7771B0;
    v20 = v13;
LABEL_5:
    sub_22F120ADC(v20, v18, v19);
    LOBYTE(v23) = 1;
    return v23 & 1;
  }

  sub_22F3E9DCC(v13, v17, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v17[*(v14 + 20)], v6, &qword_27DAB0920, &qword_22F770B20);
  v22 = v38;
  v21 = v39;
  if ((*(v38 + 48))(v6, 1, v39) == 1)
  {
    sub_22F3E9E9C(v17, type metadata accessor for CacherStatus);
    v18 = &qword_27DAB0920;
    v19 = &qword_22F770B20;
    v20 = v6;
    goto LABEL_5;
  }

  v25 = v37;
  (*(v22 + 32))(v37, v6, v21);
  sub_22F1E3F74(v42);
  memcpy(v43, v42, 0x121uLL);
  if (sub_22F1EDAB8(v43) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v41, v42, sizeof(v41));
    GEOLocationCoordinate2DMake();
    v23 = *v26;
    v44 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v22 + 8))(v25, v21);
    sub_22F3E9E9C(v17, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(v42, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v41, v42, sizeof(v41));
    GEOLocationCoordinate2DMake();
    v28 = *(v27 + 256);
    v23 = v34;
    sub_22F73F680();
    sub_22F73F590();
    v30 = v29;
    v31 = *(v22 + 8);
    v31(v23, v21);
    LOBYTE(v23) = v35;
    v32 = v40;
    sub_22F7416A0();
    if (!v32)
    {
      LOBYTE(v23) = v28 < v30;
    }

    v31(v25, v21);
    sub_22F3E9E9C(v17, type metadata accessor for CacherStatus);
  }

  return v23 & 1;
}

uint64_t sub_22F3E87C8(uint64_t a1)
{
  v3 = *(type metadata accessor for CacherStatusUpdater(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22F3E6D84(a1, v1 + v4, v6, v7);
}

uint64_t sub_22F3E8874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F7416B0();
  v8 = v7;
  v9 = MusicCache.readSongsWithoutALastRefreshAttemptDate(progressReporter:)(v6);
  if (v3)
  {

    return v4;
  }

  sub_22F39687C(a3, v9);
  sub_22F152EB0(v11, v12, v13);
  v4 = v14;
  result = swift_unknownObjectRelease();
  v33 = v4;
  v15 = *(v4 + 16);
  v16 = __OFSUB__(a3, v15);
  v17 = a3 - v15;
  if (!v16)
  {
    if (v17 < 1)
    {
      sub_22F7416A0();
    }

    else
    {
      v30 = v17;
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22F7707D0;
      v19 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v20 = sub_22F153470();
      *(v18 + 32) = 0xD000000000000016;
      *(v18 + 40) = 0x800000022F790200;
      *(v18 + 96) = v19;
      *(v18 + 104) = v20;
      *(v18 + 64) = v20;
      *(v18 + 72) = 0xD000000000000016;
      *(v18 + 80) = 0x800000022F790200;
      v21 = sub_22F73F5B0();
      *(v18 + 136) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
      *(v18 + 144) = sub_22F15FD58();
      *(v18 + 112) = v21;
      v22 = sub_22F741560();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_22F771EB0;
      v24 = objc_allocWithZone(MEMORY[0x277CCAC98]);
      v25 = sub_22F740DF0();
      v26 = [v24 initWithKey:v25 ascending:1];

      *(v23 + 32) = v26;
      v31[0] = v23;
      v31[1] = v30;
      v32 = 0;
      v27 = v22;
      v28 = sub_22F196B2C(v22, v31, v8);

      v29 = sub_22F151734(v28);

      sub_22F2EA558(v29);

      return v33;
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_22F3E8B7C(void *a1, uint64_t a2, char *a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v165 = a6;
  v168 = a5;
  v173 = a1;
  v174 = a3;
  v172 = sub_22F740AD0();
  v167 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F73EEC0();
  v176 = *(v9 - 8);
  v177 = v9;
  v10 = *(v176 + 64);
  MEMORY[0x28223BE20](v9);
  v170 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v175 = v140 - v12;
  v13 = sub_22F73EEE0();
  v163 = *(v13 - 8);
  v164 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F740C00();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = a4;
  v19 = sub_22F7416E0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a2;
  v27 = a2;
  v28 = v19;
  v29 = v178;
  v30 = sub_22F3E8874(v27, v173, v174);
  v178 = v29;
  if (v29)
  {

    return;
  }

  v173 = v26;
  v174 = v18;
  v157 = v10;
  v158 = v15;
  v166 = v21;
  v152 = v23;
  v153 = v30;
  v150 = v25;
  v151 = v28;
  if (qword_2810A9478 != -1)
  {
LABEL_46:
    swift_once();
  }

  v31 = sub_22F740B90();
  __swift_project_value_buffer(v31, qword_2810B4DC0);
  v32 = v153;

  v33 = sub_22F740B70();
  v34 = sub_22F7415C0();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v178;
  v37 = v169;
  if (v35)
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = *(v32 + 16);

    _os_log_impl(&dword_22F0FC000, v33, v34, "[MemoriesMusic] - MusicCacheMusicKitReconciler attempting to refresh %ld songs.", v38, 0xCu);
    MEMORY[0x2319033A0](v38, -1, -1);
  }

  else
  {
  }

  v39 = v151;
  v40 = v165;
  v41 = v174;
  if (*(v32 + 16))
  {
    sub_22F740BD0();
    v42 = sub_22F22FB24(v41, 0);
    if (v36)
    {

      return;
    }

    v156 = v31;
    v159 = *(v42 + 3);
    v174 = v42;
    v149 = *(v42 + 4);

    v48 = sub_22F3E5A78(v32);
    v178 = 0;
    static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0x6665526568636163, 0xEC00000068736572, &v195);
    v49 = swift_allocObject();
    v49[2] = v48;
    v49[3] = v32;
    v50 = v173;
    v51 = v152;
    v49[4] = v173;
    v49[5] = v51;
    v52 = v150;
    v49[6] = v150;
    v49[7] = v37;
    v49[8] = v168;
    v49[9] = v40;
    v148 = v48;
    v160 = *(v48 + 16);
    if (!v160)
    {
      swift_bridgeObjectRetain_n();
      v78 = v50;
      v79 = v51;
      v80 = v52;
      v81 = v169;
      swift_retain_n();
      v82 = v78;
      v83 = v79;
      v84 = v80;
      v85 = v81;
      v86 = v148;

      sub_22F3E6F30(MEMORY[0x277D84F90], 0, v86, v153, v82, v83, v84, v85, v168, v40);

      v87 = v152;
      v68 = v166;
LABEL_45:

      swift_bridgeObjectRelease_n();
      sub_22F1D210C(&v195);
      return;
    }

    v147 = v49;
    v53 = qword_2810A9B98;
    swift_bridgeObjectRetain_n();
    v54 = v50;
    v55 = v51;
    v56 = v52;
    v57 = v169;
    swift_retain_n();
    v141 = v54;
    v142 = v55;
    v143 = v56;
    v144 = v57;
    v58 = v148;

    if (v53 != -1)
    {
      swift_once();
    }

    v59 = qword_2810B4E70;
    *&v60 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v60, 0, v59, v192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
    v61 = swift_allocObject();
    v62 = 0x277CCA000uLL;
    v63 = &selRef_floatVector;
    v64 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(v61 + 16) = MEMORY[0x277D84F90];
    *(v61 + 24) = v64;
    v161 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
    v65 = swift_allocObject();
    *(v65 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v162 = v65;
    *(v65 + 16) = 0;
    v66 = v65 + 16;
    v67 = v174;
    v68 = v166;
    v69 = v177;
    if (*(v174 + 3) == v159 && *(v174 + 4) == v149 || (sub_22F742040() & 1) != 0)
    {
      Batch = MusicBag.songQueryBatchSize()();
      LODWORD(v159) = 0;
      v71 = v178;
      if (Batch)
      {
LABEL_22:

        sub_22F233C24(0, v160, Batch, v58, Batch);
        v73 = v72;
        v178 = v71;

        if (qword_2810A9440 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v156, qword_2810B4D48);

        v74 = sub_22F740B70();
        v75 = sub_22F7415C0();
        v76 = os_log_type_enabled(v74, v75);
        v140[1] = v66;
        if (v76)
        {
          v77 = swift_slowAlloc();
          *v77 = 134218240;
          *(v77 + 4) = v160;

          *(v77 + 12) = 2048;
          *(v77 + 14) = *(v73 + 16);

          _os_log_impl(&dword_22F0FC000, v74, v75, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v77, 0x16u);
          MEMORY[0x2319033A0](v77, -1, -1);
        }

        else
        {
        }

        v88 = *(v73 + 16);
        v145 = v194;
        v146 = *(&v193 + 1);
        v89 = swift_allocObject();
        v90 = v192[1];
        *(v89 + 16) = v192[0];
        *(v89 + 32) = v90;
        *(v89 + 48) = v193;
        *(v89 + 64) = v194;
        *(v89 + 72) = v68;
        v91 = v147;
        *(v89 + 80) = sub_22F3E9D7C;
        *(v89 + 88) = v91;
        v173 = v73;
        v92 = v161;
        *(v89 + 96) = v162;
        *(v89 + 104) = v92;
        type metadata accessor for CompletionCounter();
        v93 = swift_allocObject();
        v93[2] = sub_22F235BF4;
        v93[3] = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
        v94 = swift_allocObject();
        *(v94 + 32) = 0;
        *(v94 + 16) = 0;
        v169 = v88;
        *(v94 + 24) = v88;
        v160 = v93;
        v93[4] = v94;
        sub_22F73EF30();
        swift_allocObject();

        v95 = v68;

        v96 = sub_22F73EF20();
        if (qword_2810A9168 != -1)
        {
          swift_once();
        }

        v97 = qword_2810A9170;
        v98 = v158;
        *v158 = qword_2810A9170;
        (*(v163 + 104))(v98, *MEMORY[0x277CC86D8], v164);
        v99 = v97;
        v164 = v96;
        sub_22F73EF00();
        v100 = [v95 progressReportersForParallelOperationsWithCount_];
        sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
        v101 = sub_22F741180();

        v163 = v167 + 8;
        v157 += 7;
        v158 = (v176 + 16);
        v187 = v101;
        v188 = 0;
        v155 = &v183;
        v156 = v176 + 32;
        v154 = v176 + 8;
        v189 = v173;
        v190 = 0;
        v191 = 0;
        v102 = v175;
        v103 = v178;
        while (1)
        {
          v104 = sub_22F226D78();
          if (!v104)
          {

            goto LABEL_44;
          }

          v106 = v104;
          v107 = v105;
          v108 = *(v67 + 32);
          v109 = *(v67 + 40);
          v110 = *(v67 + 48);
          v111 = *(v67 + 56);
          v112 = *(v67 + 64);
          v181 = *(v67 + 24);
          v182 = v108;
          v183 = v109;
          v184 = v110;
          v185 = v111;
          v186 = v112;
          v179[0] = v195;
          v179[1] = v196;
          v179[2] = v197;
          v180 = v198;

          MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v107, v179, v159, v102);
          if (v103)
          {
            break;
          }

          v173 = v106;
          v178 = 0;

          v113 = swift_allocObject();
          v115 = v160;
          v114 = v161;
          v113[2] = v164;
          v113[3] = v114;
          v113[4] = v115;
          v169 = v113;
          v113[5] = v162;

          sub_22F741740();
          if (qword_2810A8E30 != -1)
          {
            swift_once();
          }

          v116 = v171;
          sub_22F740AC0();
          sub_22F740A90();
          (*v163)(v116, v172);
          v168 = *(v67 + 72);
          v117 = v176;
          v118 = v170;
          (*(v176 + 16))(v170, v175, v69);
          v119 = (*(v117 + 80) + 16) & ~*(v117 + 80);
          v120 = (v157 + v119) & 0xFFFFFFFFFFFFFFF8;
          v121 = (v120 + 63) & 0xFFFFFFFFFFFFFFF8;
          v167 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
          v122 = (v121 + 39) & 0xFFFFFFFFFFFFFFF8;
          v123 = swift_allocObject();
          (*(v117 + 32))(v123 + v119, v118, v177);
          v124 = v123 + v120;
          v125 = v196;
          *v124 = v195;
          *(v124 + 16) = v125;
          *(v124 + 32) = v197;
          *(v124 + 48) = v198;
          v126 = v173;
          *(v123 + v121) = v174;
          v127 = v123 + v167;
          v128 = v174;
          *v127 = "MusicKitClient HTTP Request";
          *(v127 + 8) = 27;
          *(v127 + 16) = 2;
          *(v123 + v122) = v126;
          v129 = (v123 + ((v122 + 15) & 0xFFFFFFFFFFFFFFF8));
          v130 = v169;
          *v129 = sub_22F235C58;
          v129[1] = v130;
          v131 = swift_allocObject();
          *(v131 + 16) = sub_22F235DC4;
          *(v131 + 24) = v123;
          v185 = sub_22F2915BC;
          v186 = v131;
          v181 = MEMORY[0x277D85DD0];
          v182 = 1107296256;
          v183 = sub_22F2280B0;
          v184 = &block_descriptor_59;
          v132 = _Block_copy(&v181);
          sub_22F1D20B0(&v195, v179);

          v133 = v126;
          v67 = v128;
          v134 = v133;

          v69 = v177;

          dispatch_sync(v168, v132);
          _Block_release(v132);

          v102 = v175;
          (*(v176 + 8))(v175, v69);
          LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

          v68 = v166;
          v103 = v178;
          if (v128)
          {
            __break(1u);
            goto LABEL_46;
          }
        }

        v135 = v162;
        [*(v162 + 24) lock];
        LOBYTE(v62) = 1;
        swift_beginAccess();
        v136 = *(v135 + 16);
        *(v135 + 16) = v103;

        v137 = *(v135 + 24);
        v63 = v103;
        v138 = v103;
        [v137 unlock];
        v67 = v160;
        Batch = v160[4];

        os_unfair_lock_lock((Batch + 32));
        if (*(Batch + 16))
        {
          os_unfair_lock_unlock((Batch + 32));

          goto LABEL_43;
        }

LABEL_42:
        *(Batch + 16) = v62;
        os_unfair_lock_unlock((Batch + 32));

        (*(v67 + 16))(v139);

LABEL_43:

LABEL_44:
        v52 = v150;
        v87 = v152;
        goto LABEL_45;
      }
    }

    else
    {
      Batch = MusicBag.songEquivalentQueryBatchSize()();
      LODWORD(v159) = 1;
      v71 = v178;
      if (Batch)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v43 = sub_22F740B70();
  v44 = sub_22F7415C0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22F0FC000, v43, v44, "[MemoriesMusic] - MusicCacheMusicKitReconciler finishing with no songs to refresh.", v45, 2u);
    v46 = v45;
    v36 = v178;
    MEMORY[0x2319033A0](v46, -1, -1);
  }

  sub_22F7416A0();
  v47 = v166;
  if (!v36)
  {
    v168(0);
  }
}

double block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_22F3E9DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F3E9E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F3E9E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F3E9F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = sub_22F740270();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_22F7404D0();
  v4 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F740A20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v57 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v57 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v57 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v19);
  v59 = &v57 - v20;
  v79 = sub_22F7403B0();
  v21 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v24 = sub_22F73FD40();
  v25 = *(v24 + 16);
  if (v25)
  {
    v58 = v18;
    v27 = *(v21 + 16);
    v26 = v21 + 16;
    v77 = v27;
    v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v57 = v24;
    v29 = v24 + v28;
    v30 = *(v26 + 56);
    v75 = (v26 - 8);
    v76 = v30;
    v74 = (v4 + 88);
    v73 = *MEMORY[0x277D3C4B0];
    v66 = (v4 + 96);
    v67 = (v4 + 8);
    v71 = v8;
    v31 = (v8 + 32);
    v81 = MEMORY[0x277D84F90];
    v68 = v7;
    v32 = v72;
    v78 = v26;
    do
    {
      v33 = v79;
      v77(v23, v29, v79);
      sub_22F7403A0();
      (*v75)(v23, v33);
      v34 = (*v74)(v6, v32);
      if (v34 == v73)
      {
        (*v66)(v6, v32);
        v35 = *v31;
        v36 = v70;
        v37 = v6;
        (*v31)(v70, v6, v7);
        v38 = v7;
        v39 = v69;
        v35(v69, v36, v38);
        v35(v80, v39, v38);
        v40 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_22F14051C(0, v40[2] + 1, 1, v40);
        }

        v42 = v40[2];
        v41 = v40[3];
        v81 = v40;
        v6 = v37;
        if (v42 >= v41 >> 1)
        {
          v81 = sub_22F14051C((v41 > 1), v42 + 1, 1, v81);
        }

        v43 = v81;
        v81[2] = v42 + 1;
        v44 = v43 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v42;
        v7 = v68;
        v35(v44, v80, v68);
        v32 = v72;
      }

      else
      {
        (*v67)(v6, v32);
      }

      v29 += v76;
      --v25;
    }

    while (v25);

    v8 = v71;
    v18 = v58;
    v45 = v81;
    if (v81[2])
    {
      goto LABEL_12;
    }
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_12:
      v46 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v81 = *(v8 + 16);
      (v81)(v18, v45 + v46, v7);

      v47 = v59;
      (*(v8 + 32))(v59, v18, v7);
      sub_22F73FD90();
      sub_22F73FD50();
      v48 = v62;
      v49 = v63;
      *v63 = 0;
      (*(v48 + 104))(v49, *MEMORY[0x277D3C2B8], v64);
      (v81)(v60, v47, v7);
      sub_22F740530();
      (*(v8 + 8))(v47, v7);
      v50 = 0;
      goto LABEL_19;
    }
  }

  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v51 = sub_22F740B90();
  __swift_project_value_buffer(v51, qword_2810B4D00);
  v52 = sub_22F740B70();
  v53 = sub_22F7415E0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22F0FC000, v52, v53, "The query token is not a part of week token", v54, 2u);
    MEMORY[0x2319033A0](v54, -1, -1);
  }

  v50 = 1;
LABEL_19:
  v55 = sub_22F740540();
  return (*(*(v55 - 8) + 56))(v65, v50, 1, v55);
}

char *_s11PhotosGraph32ExtendedTokenCollectionGeneratorC018generatePartOfWeekC6Tokens3forSay0A12Intelligence0hijcD0VGSayAF05QueryD0VG_tF_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAB42D8, &qword_22F78B138);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_22F740540();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v22 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(sub_22F73FDA0() - 8);
  v13 = (v6 + 48);
  v14 = (v6 + 32);
  v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v26 = *(v12 + 72);
  v16 = MEMORY[0x277D84F90];
  v23 = v8;
  v24 = v6;
  v22 = (v6 + 48);
  do
  {
    sub_22F3E9F00(v15, v4);
    if ((*v13)(v4, 1, v5) == 1)
    {
      sub_22F3EA958(v4);
    }

    else
    {
      v17 = *v14;
      v18 = v25;
      (*v14)(v25, v4, v5);
      v17(v8, v18, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_22F13EAB4(0, *(v16 + 2) + 1, 1, v16);
      }

      v20 = *(v16 + 2);
      v19 = *(v16 + 3);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_22F13EAB4((v19 > 1), v20 + 1, 1, v16);
      }

      *(v16 + 2) = v20 + 1;
      v8 = v23;
      v17(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20], v23, v5);
      v13 = v22;
    }

    v15 += v26;
    --v11;
  }

  while (v11);
  return v16;
}

uint64_t sub_22F3EA958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAB42D8, &qword_22F78B138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F3EA9D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_22F3EAA1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22F3EAA78(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 titles];
  v5 = sub_22F741180();

  v6 = [a1 artists];
  v7 = sub_22F741180();

  v8 = [a1 genres];
  v9 = sub_22F741180();

  v10 = [a1 isTrip];
  v11 = [a1 moodsText];
  v12 = sub_22F741180();

  v13 = [a1 length];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v14 == 0;
  *(a2 + 41) = v10;
}

uint64_t BinaryCategoricalEncoder.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BinaryCategoricalEncoder.init(_:)(a1, v3);
  return v2;
}

void *BinaryCategoricalEncoder.init(_:)(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = sub_22F741230();
  sub_22F741280();
  v7 = *(v4 + 88);

  swift_getWitnessTable();
  sub_22F7414A0();
  v8 = sub_22F741460();

  if (v6 == v8)
  {
    v2[2] = a1;
  }

  else
  {

    type metadata accessor for BinaryCategoricalEncoder.Error(0, v5, v7, v9);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    type metadata accessor for BinaryCategoricalEncoder(0, v5, v7, v10);
    swift_deallocPartialClassInstance();
  }

  return v2;
}

double sub_22F3EADE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *v2;
  v23 = a1;
  v4 = *(v22 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v21 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = sub_22F741860();
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  v15 = v2[2];
  sub_22F741230();
  v21[1] = a2;
  sub_22F73FE00();
  v28[1] = v15;
  v16 = v4;
  v17 = sub_22F741280();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x231900C20](v28, v17, WitnessTable);
  v27 = v28[0];
  sub_22F741D90();
  sub_22F741D60();
  v21[2] = WitnessTable;
  v21[3] = v17;
  v19 = sub_22F741D80();
  v24 = TupleTypeMetadata2 - 8;
  v25 = v19;
  while (1)
  {
    sub_22F741D70();
    (*(v9 + 32))(v14, v11, v26);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    (*(v5 + 32))(v7, &v14[*(TupleTypeMetadata2 + 48)], v16);
    v28[0] = v23;
    if (sub_22F7410C0())
    {
      sub_22F73FE80();
    }

    (*(v5 + 8))(v7, v16);
  }

  return result;
}

double sub_22F3EB12C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  sub_22F210E70(v5, v5);
  v6 = *(v5 - 8);
  swift_allocObject();
  v7 = sub_22F7411A0();
  (*(v6 + 16))(v8, a1, v5);
  v9 = sub_22F20F8F4(v7, v5);
  sub_22F3EADE0(v9, a2);

  return result;
}

uint64_t BinaryCategoricalEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of BinaryCategoricalEncoder.transform(_:)()
{
  return (*(*v0 + 112))();
}

{
  return (*(*v0 + 120))();
}

uint64_t sub_22F3EB37C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  sub_22F1E2BE4();
  sub_22F73FC40();
  v8 = v7;
  sub_22F73FC30();
  if (v8 == 0.0 || v12 == 0.0)
  {
    return (*(v4 + 16))(a1, v1, v3);
  }

  if (v8 >= v12)
  {
    sub_22F3ECED0(0, v9, v10, v11);
    sub_22F3ECFD4(qword_27DAB43F0, &unk_22F78B388, v14, v15);
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_22F73FC00();
    sub_22F73FBF0();
    return (*(v4 + 8))(v6, v3);
  }
}

id sub_22F3EB544(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() zerosWithRows:*(a1 + 16) columns:*(a2 + 16)];
  v3 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v4 = v2;
  v5 = sub_22F740DF0();
  v6 = sub_22F741160();
  v7 = sub_22F741160();
  v8 = [v3 initWithName:v5 rowLabels:v6 columnLabels:v7 matrix:v4];

  if (!v8)
  {
    sub_22F3ECE7C();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_22F3EB684(uint64_t a1, void *a2)
{
  v92 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - v8;
  v9 = sub_22F7416B0();
  v11 = v10;
  v12 = a1 + OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider;
  swift_beginAccess();
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v15 = (*(v14 + 1))(v13, v14);
  v17 = v16;
  swift_endAccess();
  if (v17)
  {
    v95 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();

    return v17;
  }

  v90 = v9;
  v18 = [v15 columnLabels];
  if (!v18)
  {
    goto LABEL_28;
  }

  v17 = v18;
  v19 = sub_22F741180();

  v20 = [v92 columnLabels];
  if (!v20)
  {

LABEL_28:
    sub_22F3ECE7C();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    sub_22F21173C(v15);

    return v17;
  }

  v85 = v15;
  v82 = v2;
  v83 = v11;
  v21 = v20;
  v22 = sub_22F741180();

  v17 = sub_22F1515F8(v23);
  v84 = v22;

  v25 = *(v19 + 2);
  v91 = v19;
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v26 = 0;
  v93 = v19 + 32;
  v27 = v17 + 56;
  v28 = MEMORY[0x277D84F90];
  do
  {
    v94 = v28;
    v29 = v26;
    while (1)
    {
      if (v29 >= *(v19 + 2))
      {
        __break(1u);
        goto LABEL_62;
      }

      v26 = (v29 + 1);
      if (*(v17 + 16))
      {
        break;
      }

LABEL_9:
      v29 = v26;
      if (v26 == v25)
      {
        v28 = v94;
        goto LABEL_31;
      }
    }

    v14 = v19;
    v30 = &v93[16 * v29];
    v31 = *v30;
    v3 = *(v30 + 1);
    sub_22F742170();

    sub_22F740D60();
    v32 = sub_22F7421D0();
    v33 = -1 << *(v17 + 32);
    v34 = v32 & ~v33;
    if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
LABEL_8:

      v19 = v14;
      goto LABEL_9;
    }

    v35 = ~v33;
    while (1)
    {
      v36 = (*(v17 + 48) + 16 * v34);
      v37 = *v36 == v31 && v36[1] == v3;
      if (v37 || (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v34 = (v34 + 1) & v35;
      if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v28 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_22F146454(0, *(v28 + 16) + 1, 1);
      v28 = v96;
    }

    v14 = *(v28 + 16);
    v38 = *(v28 + 24);
    if (v14 >= v38 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_22F146454((v38 > 1), v14 + 1, 1);
      v28 = v96;
    }

    *(v28 + 16) = v14 + 1;
    v39 = v28 + 16 * v14;
    *(v39 + 32) = v31;
    *(v39 + 40) = v3;
    v19 = v91;
  }

  while (v26 != v25);
LABEL_31:
  v94 = v28;
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v41 = sub_22F740B90();
  __swift_project_value_buffer(v41, qword_2810B4D90);
  v42 = v94;

  v43 = sub_22F740B70();
  v44 = sub_22F7415D0();

  v45 = os_log_type_enabled(v43, v44);
  v14 = v83;
  v46 = v82;
  if (v45)
  {
    v47 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v95 = v93;
    *v47 = 136315138;
    v48 = MEMORY[0x231900D40](v42, MEMORY[0x277D837D0]);
    v50 = v46;
    v51 = v14;
    v52 = sub_22F145F20(v48, v49, &v95);

    *(v47 + 4) = v52;
    v14 = v51;
    v46 = v50;
    _os_log_impl(&dword_22F0FC000, v43, v44, "songKeywordsInCollection = %s", v47, 0xCu);
    v53 = v93;
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x2319033A0](v53, -1, -1);
    MEMORY[0x2319033A0](v47, -1, -1);
  }

  v54 = v90;
  if (*(v42 + 16))
  {

    v55 = v85;
    sub_22F256030(v85);
    v56 = v55;
    goto LABEL_37;
  }

  v59 = v85;
  v60 = [v85 rowLabels];
  if (!v60)
  {

    sub_22F3ECE7C();
    swift_allocError();
    *v67 = 2;
    swift_willThrow();
    sub_22F21173C(v59);
LABEL_53:

    goto LABEL_54;
  }

  v61 = v60;
  v62 = sub_22F741180();

  v63 = sub_22F3EB544(v62, v84);
  if (v46)
  {
    sub_22F21173C(v85);

    goto LABEL_42;
  }

  v56 = v63;

  v54 = v90;
LABEL_37:
  v57 = [v92 name];
  if (v57)
  {
    v58 = v57;
    sub_22F740E20();

    v54 = v90;
  }

  v64 = sub_22F741550();
  if (v46)
  {
    sub_22F21173C(v85);

    return v17;
  }

  v65 = v64;
  v93 = v56;

  if (!v65)
  {

    v26 = 0;
LABEL_52:

    sub_22F3ECE7C();
    swift_allocError();
    *v68 = 1;
    swift_willThrow();
    sub_22F21173C(v85);

    goto LABEL_53;
  }

  v26 = v65;
  v66 = sub_22F741530();
  if (!v66)
  {

    goto LABEL_52;
  }

  v3 = v66;

  sub_22F7416A0();
  v27 = 0;
  if (*(sub_22F741520() + 16) && (sub_22F1229E8(0xD00000000000001DLL, 0x800000022F78E2A0), (v70 & 1) != 0))
  {
  }

  else
  {

    sub_22F14EB58(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = sub_22F20BA80(v3, v93);
LABEL_62:
  v71 = isUniquelyReferenced_nonNull_native;
  v72 = sub_22F741540();
  if (v27)
  {
    sub_22F21173C(v85);

LABEL_42:
LABEL_54:

    return v17;
  }

  else
  {
    v82 = v71;
    v91 = v3;
    v92 = v72;
    v73 = [v72 vector];
    v74 = [v73 wrapper];

    sub_22F73FBC0();
    sub_22F3EB37C(v88);
    v75 = [v92 labels];
    result = v84;
    if (v75)
    {

      v76 = sub_22F741180();

      v77 = v87;
      v78 = v88;
      v79 = sub_22F73FD10();
      v17 = sub_22F1E200C(v76, v79);

      sub_22F21173C(v85);
      v80 = *(v86 + 8);
      v80(v78, v77);
      v80(v89, v77);
      return v17;
    }

    __break(1u);
  }

  return result;
}