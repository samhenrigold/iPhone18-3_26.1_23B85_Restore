void sub_1CF8C8380(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned int a6, uint64_t a7, void (*a8)(void, void *), uint64_t a9, void *a10, uint64_t a11)
{
  v60 = a8;
  v62 = a6;
  v63 = a5;
  v17 = sub_1CF9E5CF8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a2 + 16);
  v64 = v18;
  v65 = v11;
  v61 = a1;
  v58 = a3;
  v59 = a4;
  if (v21 == 1)
  {
    v55 = a7;
    v22 = a1[3];
    v57 = a1[4];
    v56 = __swift_project_boxed_opaque_existential_1(a1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1CF9FA450;
    v24 = [a4 identifier];
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v26 = v25;
    (*(v18 + 8))(v20, v17);
    v27 = v26 * 1000000000.0;
    if (COERCE__INT64(fabs(v26 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v27 <= -9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v27 >= 9.22337204e18)
    {
LABEL_18:
      __break(1u);
      return;
    }

    *(v23 + 48) = xmmword_1CFA17AD0;
    v28 = v68;
    *(v23 + 115) = v67;
    v66 = 1;
    *(v23 + 32) = v24;
    *(v23 + 40) = 256;
    *(v23 + 64) = v27;
    *(v23 + 114) = 0;
    *(v23 + 131) = v28;
    *(v23 + 147) = 9;
    v29 = v65;
    sub_1CF92E0C4(MEMORY[0x1E69E7CC0], v23, v56, v22, v57);
    v23, v30, v31, v32, v33, v34, v35, v36;
    if (v29)
    {
      return;
    }

    v56 = v20;
    v57 = v17;
    v65 = 0;
    a7 = v55;
  }

  else
  {
    v56 = v20;
    v57 = v17;
  }

  v37 = *(v58 + 16);
  sub_1CF9042A4(a7);
  v38 = a7;
  v40 = v39;

  v41 = v59;
  v42 = v63;
  v43 = v62;
  v59 = v37;
  sub_1CF5DB108(v63, v62, v38, v40, v37, v60, a9, a10, a11, v41);

  v45 = v61[3];
  v44 = v61[4];
  v46 = __swift_project_boxed_opaque_existential_1(v61, v45);
  v47 = sub_1CF9042A4(v38);
  v49 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v50 = swift_allocObject();
  *(v50 + 152) = v43;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 1;
  *(v50 + 56) = 0u;
  *(v50 + 72) = 0u;
  *(v50 + 88) = 0;
  *(v50 + 120) = v47;
  *(v50 + 128) = v49;
  *(v50 + 136) = 0;
  *(v50 + 144) = v42;
  *(v50 + 96) = xmmword_1CFA04E20;
  *(v50 + 112) = 0;
  v51 = v56;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v53 = v52;
  (*(v64 + 8))(v51, v57);
  v54 = v53 * 1000000000.0;
  if (COERCE__INT64(fabs(v53 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v54 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1CF5215C0(v50, v54, v46, v45, v44);
}

void sub_1CF8C87C4(int a1, id a2, void (*a3)(void, id), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v11 = a2;
  v12 = sub_1CF9E57E8();
  v13 = [v12 domain];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v18;
  if (v14 == v17 && v16 == v18)
  {
    v16, v18, v19, v20, v21, v22, v23, v24;
    v25, v42, v43, v44, v45, v46, v47, v48;
  }

  else
  {
    v27 = sub_1CF9E8048();
    v16, v28, v29, v30, v31, v32, v33, v34;
    v25, v35, v36, v37, v38, v39, v40, v41;
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v49 = [v12 code];
  if (v49 == *MEMORY[0x1E69671C8] || [v12 code] == -1004)
  {

LABEL_12:
    (a5)(a7, 0, a3, a4, a5, a6);
    return;
  }

LABEL_13:
  v50 = a2;
  a3(0, a2);
}

void sub_1CF8C8968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, const void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v146 = a1;
  v147 = a7;
  LODWORD(v149) = a6;
  v131 = a4;
  v132 = a5;
  v129 = a3;
  v130 = a2;
  v135 = a12;
  v134 = a11;
  v152 = a10;
  v133 = a9;
  v16 = sub_1CF9E63D8();
  v126 = *(v16 - 8);
  v127 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v145 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v153 = &v124 - v21;
  v22 = sub_1CF9E6068();
  v137 = *(v22 - 8);
  v138 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v140 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v136 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v148 = &v124 - v27;
  v139 = type metadata accessor for Signpost(0);
  v141 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v144 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v142 = v31;
  v143 = (&v124 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v150 = &v124 - v33;
  v34 = sub_1CF9E5A58();
  v128 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a1[2];
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = a3;
  (*(v35 + 16))(v37, a8, v34);
  v39 = (*(v35 + 80) + 568) & ~*(v35 + 80);
  v40 = (v36 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v147;
  v47 = v131;
  v46 = v132;
  *(v44 + 16) = v146;
  *(v44 + 24) = v47;
  *(v44 + 32) = v46;
  *(v44 + 40) = v149;
  memcpy((v44 + 48), v45, 0x208uLL);
  (*(v35 + 32))(v44 + v39, v37, v128);
  v48 = (v44 + v40);
  v49 = v129;
  *v48 = v130;
  v48[1] = v49;
  v50 = v133;
  *(v44 + v41) = v133;
  v51 = (v44 + v42);
  v53 = v134;
  v52 = v135;
  *v51 = v152;
  v51[1] = v53;
  v149 = v44;
  *(v44 + v43) = v52;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1CF90325C;
  *(v54 + 24) = v38;
  v152 = v54;
  swift_retain_n();

  sub_1CEFCCBDC(v147, v154, &unk_1EC4BFC90, &unk_1CFA053E0);
  v55 = v50;

  sub_1CEFD09A0(v52);
  v147 = v38;

  v146 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v56 = qword_1EDEBBE40;
  v58 = v137;
  v57 = v138;
  v59 = v148;
  (*(v137 + 56))(v148, 1, 1, v138);
  strcpy(v154, "async batch ");
  BYTE5(v154[1]) = 0;
  HIWORD(v154[1]) = -5120;
  v60 = sub_1CF9E7988();
  v62 = v61;
  MEMORY[0x1D3868CC0](v60);
  v62, v63, v64, v65, v66, v67, v68, v69;
  v70 = v154[1];
  v135 = v154[0];
  v71 = v59;
  v72 = v136;
  sub_1CEFCCBDC(v71, v136, &unk_1EC4BED20, &unk_1CFA00700);
  v73 = *(v58 + 48);
  if (v73(v72, 1, v57) == 1)
  {
    v74 = v56;
    v75 = v140;
    sub_1CF9E6048();
    if (v73(v72, 1, v57) != 1)
    {
      sub_1CEFCCC44(v72, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v75 = v140;
    (*(v58 + 32))(v140, v72, v57);
  }

  v76 = v150;
  (*(v58 + 16))(v150, v75, v57);
  v77 = v139;
  *(v76 + *(v139 + 20)) = v56;
  v78 = v76 + *(v77 + 24);
  *v78 = "DB queue wait";
  *(v78 + 8) = 13;
  *(v78 + 16) = 2;
  v79 = v56;
  v80 = v75;
  v81 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1CF9FA450;
  *(v82 + 56) = MEMORY[0x1E69E6158];
  *(v82 + 64) = sub_1CEFD51C4();
  *(v82 + 32) = v135;
  *(v82 + 40) = v70;
  sub_1CF9E6028(v81, &dword_1CEFC7000, v79, "DB queue wait", 13, 2, v76, "%s", 2);
  v82, v83, v84, v85, v86, v87, v88, v89;
  (*(v58 + 8))(v80, v57);
  sub_1CEFCCC44(v148, &unk_1EC4BED20, &unk_1CFA00700);
  v140 = v151[21];
  v148 = v151[8];
  v90 = sub_1CF9E6448();
  v138 = *(v90 - 8);
  v139 = v90;
  (*(v138 + 56))(v153, 1, 1, v90);
  v91 = v143;
  sub_1CEFDA34C(v76, v143, type metadata accessor for Signpost);
  v92 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v93 = (v142 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v142 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v91, v94 + v92, type metadata accessor for Signpost);
  v95 = (v94 + v93);
  v143 = sub_1CF902CCC;
  v96 = v152;
  *v95 = sub_1CF902CCC;
  v95[1] = v96;
  v97 = v144;
  sub_1CEFDA34C(v76, v144, type metadata accessor for Signpost);
  v98 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v99 + 25) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v100 + 23) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  sub_1CEFDA0C4(v97, v102 + v92, v142);
  v103 = (v102 + v93);
  v104 = v138;
  *v103 = sub_1CF045408;
  v103[1] = 0;
  *(v102 + v98) = v151;
  v105 = v102 + v99;
  *v105 = "resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)";
  *(v105 + 8) = 66;
  *(v105 + 16) = 2;
  v106 = (v102 + v100);
  v107 = v152;
  *v106 = v143;
  v106[1] = v107;
  v108 = (v102 + v101);
  v109 = v149;
  *v108 = sub_1CF8FB3B0;
  v108[1] = v109;
  v110 = swift_allocObject();
  v110[2] = sub_1CF903308;
  v110[3] = v94;
  v111 = v140;
  v110[4] = v140;
  swift_retain_n();

  v112 = v111;

  v113 = fpfs_current_log();
  v151 = *(v112 + 2);
  v114 = v145;
  sub_1CEFCCBDC(v153, v145, &unk_1EC4BE370, qword_1CFA01B30);
  v115 = v139;
  if ((*(v104 + 48))(v114, 1) == 1)
  {
    sub_1CEFCCC44(v114, &unk_1EC4BE370, qword_1CFA01B30);
    v116 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v117 = v125;
    sub_1CF9E6438();
    (*(v104 + 8))(v114, v115);
    v116 = sub_1CF9E63C8();
    (*(v126 + 8))(v117, v127);
  }

  v118 = swift_allocObject();
  v118[2] = v113;
  v118[3] = sub_1CF4858EC;
  v118[4] = v102;
  v157 = sub_1CF2BA17C;
  v158 = v118;
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 1107296256;
  v155 = sub_1CEFCA444;
  v156 = &block_descriptor_2683;
  v119 = _Block_copy(v154);
  v120 = v113;

  v157 = sub_1CF2BA180;
  v158 = v110;
  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 1107296256;
  v155 = sub_1CEFCA444;
  v156 = &block_descriptor_2686;
  v121 = _Block_copy(v154);

  fp_task_tracker_async_and_qos(v151, v148, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v116, v119, v121);
  _Block_release(v121);
  _Block_release(v119);

  sub_1CEFCCC44(v153, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v150, type metadata accessor for Signpost);
  v122 = v146;
  v123 = fpfs_adopt_log();
}

void sub_1CF8C961C(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v115 = a8;
  v119 = a7;
  v110 = a6;
  LODWORD(v122) = a5;
  v121 = a4;
  v118 = a3;
  v15 = sub_1CF9E63D8();
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v117 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v98 - v20;
  v21 = sub_1CF9E5A58();
  v123 = *(v21 - 8);
  v124 = v21;
  v22 = *(v123 + 8);
  MEMORY[0x1EEE9AC00](v21);
  v116 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v98 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v98 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v111 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v98 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v33 = __swift_project_boxed_opaque_existential_1(a1, v31);
  v34 = a2;
  v35 = *(a2 + 16);
  v36 = v126;
  sub_1CF5AD9F8(v33, v31, v32);
  if (!v36)
  {
    v105 = v28;
    v104 = v30;
    v106 = v27;
    v108 = v35;
    v109 = v34;
    v126 = 0;
    v37 = swift_allocObject();
    v38 = v118;
    *(v37 + 16) = v118;
    if (v38 != 1)
    {
      goto LABEL_13;
    }

    v39 = a1[3];
    v40 = a1[4];
    v41 = __swift_project_boxed_opaque_existential_1(a1, v39);
    v42 = v108[4];
    aBlock = v121;
    LOBYTE(v128) = v122;
    v43 = *(*v42 + 240);
    v44 = *(v40 + 8);

    v45 = v106;
    v46 = v41;
    v47 = v126;
    v43(&aBlock, 1, v46, v39, v44);
    v126 = v47;
    if (v47)
    {

LABEL_21:

      return;
    }

    v48 = (*(v111 + 48))(v45, 1, v105);
    v49 = v120;
    if (v48 == 1)
    {
      v50 = &qword_1EC4C1B40;
      v51 = &unk_1CF9FCB70;
      v52 = v45;
LABEL_15:
      sub_1CEFCCC44(v52, v50, v51);
      v60 = v119;
      goto LABEL_16;
    }

    v53 = v104;
    sub_1CEFE55D0(v45, v104, &unk_1EC4BE360, &qword_1CF9FE650);
    if (!*(v110 + 312))
    {
      v50 = &unk_1EC4BE360;
      v51 = &qword_1CF9FE650;
      v52 = v53;
      goto LABEL_15;
    }

    v118 = *(v110 + 264);
    v54 = *(v110 + 256);
    v55 = *(v110 + 272);
    v56 = *(v110 + 248);
    v57 = *(v53 + 32);
    v58 = *(v53 + 40);
    v111 = *(v53 + 48);
    v59 = *(v53 + 56);
    sub_1CEFCCC44(v53, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v57 == v56)
    {
      v60 = v119;
      v49 = v120;
      if (v58 == v54)
      {
        v62 = v123;
        v61 = v124;
        if (v59)
        {
          if (v55)
          {
LABEL_25:
            *(v37 + 16) = 0;
          }
        }

        else if ((v55 & 1) == 0 && v111 == v118)
        {
          goto LABEL_25;
        }

LABEL_17:
        v111 = a13;
        v110 = a12;
        v100 = a11;
        v106 = a10;
        v105 = a9;
        v118 = *(v108[4] + 16);
        type metadata accessor for VFSFileTree(0);
        v108 = swift_dynamicCastClassUnconditional();
        v104 = *(v37 + 16);
        v63 = *(v62 + 2);
        v102 = v62 + 16;
        v103 = v63;
        v63(v49, v60, v61);
        v64 = v62[80];
        v65 = (v64 + 40) & ~v64;
        v101 = v22 + 7;
        v98 = (v22 + 7 + v65) & 0xFFFFFFFFFFFFFFF8;
        v66 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
        v107 = v37;
        v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
        v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
        v69 = swift_allocObject();
        v70 = v105;
        v69[2] = v115;
        v69[3] = v70;
        v69[4] = v106;
        v71 = *(v62 + 4);
        v123 = v62 + 32;
        v99 = v71;
        v71(v69 + v65, v120, v124);
        *(v69 + v98) = v109;
        *(v69 + v66) = v37;
        v72 = (v69 + v67);
        v73 = v110;
        *v72 = v100;
        v72[1] = v73;
        *(v69 + v68) = v111;
        v74 = v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v74 = v121;
        v74[8] = v122;
        v75 = v108[27];
        v100 = v108[28];
        v120 = v75;
        v115 = sub_1CF9E6448();
        v76 = *(v115 - 8);
        (*(v76 + 56))(v125, 1, 1, v115);
        v77 = swift_allocObject();
        *(v77 + 16) = sub_1CF8FB498;
        *(v77 + 24) = v69;
        v78 = v116;
        v79 = v124;
        v103(v116, v119, v124);
        v80 = (v64 + 56) & ~v64;
        v81 = (v101 + v80) & 0xFFFFFFFFFFFFFFF8;
        v82 = swift_allocObject();
        v83 = v121;
        *(v82 + 16) = v108;
        *(v82 + 24) = v83;
        *(v82 + 32) = v122;
        *(v82 + 40) = sub_1CF8FB498;
        *(v82 + 48) = v69;
        v84 = v76;
        v99(v82 + v80, v78, v79);
        *(v82 + v81) = v104;
        v85 = swift_allocObject();
        v85[2] = sub_1CF90324C;
        v85[3] = v77;
        v86 = v100;
        v85[4] = v100;
        swift_retain_n();
        v121 = v69;
        swift_retain_n();

        v87 = v106;

        sub_1CEFD09A0(v111);
        v123 = v120;
        v124 = v77;
        v88 = v115;

        v89 = fpfs_current_log();
        v122 = *(v86 + 16);
        v90 = v117;
        sub_1CEFCCBDC(v125, v117, &unk_1EC4BE370, qword_1CFA01B30);
        if ((*(v84 + 48))(v90, 1, v88) == 1)
        {
          sub_1CEFCCC44(v90, &unk_1EC4BE370, qword_1CFA01B30);
          v91 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v92 = v112;
          sub_1CF9E6438();
          (*(v84 + 8))(v90, v88);
          v91 = sub_1CF9E63C8();
          (*(v113 + 8))(v92, v114);
        }

        v93 = swift_allocObject();
        v93[2] = v89;
        v93[3] = sub_1CF902D94;
        v93[4] = v82;
        v131 = sub_1CF2BA17C;
        v132 = v93;
        aBlock = MEMORY[0x1E69E9820];
        v128 = 1107296256;
        v129 = sub_1CEFCA444;
        v130 = &block_descriptor_2709;
        v94 = _Block_copy(&aBlock);
        v95 = v89;

        v131 = sub_1CF2BA180;
        v132 = v85;
        aBlock = MEMORY[0x1E69E9820];
        v128 = 1107296256;
        v129 = sub_1CEFCA444;
        v130 = &block_descriptor_2712;
        v96 = _Block_copy(&aBlock);

        v97 = v123;
        fp_task_tracker_async_and_qos(v122, v123, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v91, v94, v96);

        _Block_release(v96);
        _Block_release(v94);

        sub_1CEFCCC44(v125, &unk_1EC4BE370, qword_1CFA01B30);

        goto LABEL_21;
      }
    }

    else
    {
LABEL_13:
      v60 = v119;
      v49 = v120;
    }

LABEL_16:
    v62 = v123;
    v61 = v124;
    goto LABEL_17;
  }
}

void sub_1CF8CA160(void *a1, void (*a2)(void, uint64_t), void *a3, void *a4, char *a5, void *a6, uint64_t (*a7)(uint64_t a1, uint64_t a2), uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, char a12)
{
  v146 = a8;
  v147 = a7;
  v148 = a6;
  v149 = a5;
  v151 = a3;
  v152 = a4;
  v150 = a2;
  v13 = sub_1CF9E63D8();
  v145 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v130 - v20;
  v22 = sub_1CF9E6068();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v130 - v30;
  v32 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  if (a1)
  {
    v41 = v152;
    v42 = v150;
    v43 = a1;
    LODWORD(aBlock) = sub_1CF9E5328();
    sub_1CF196978();
    if (sub_1CF9E5658())
    {
      v44 = [v41 identifier];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      v45 = swift_allocError();
      *v46 = v44;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      *(v46 + 24) = 1;
      *(v46 + 32) = 0u;
      *(v46 + 48) = 0u;
      *(v46 + 64) = 0;
      *(v46 + 72) = a1;
      *(v46 + 80) = 0;
      *(v46 + 88) = 0;
      v47 = a1;
      v42(0, v45);
      v48 = v45;
    }

    else
    {
      v78 = a1;
      LODWORD(aBlock) = sub_1CF9E5368();
      v79 = sub_1CF9E5658();

      if (v79)
      {
        v80 = sub_1CF9E5928();
        v81 = FPFileNotPausedError();

        v42(0, v81);
LABEL_18:

        return;
      }

      v129 = a1;
      v42(0, a1);
      v48 = a1;
    }

    goto LABEL_18;
  }

  v133 = v36;
  v134 = v28;
  v135 = v35;
  v142 = v31;
  v132 = v22;
  v136 = v25;
  v137 = v40;
  v138 = v39;
  v139 = v23;
  v140 = v38;
  v141 = v18;
  v130 = v15;
  v131 = v13;
  v144 = &v130 - v37;
  v149 = v21;
  v49 = v148;
  v50 = v148[2];
  v51 = swift_allocObject();
  v53 = v150;
  v52 = v151;
  *(v51 + 16) = v150;
  *(v51 + 24) = v52;
  v54 = swift_allocObject();
  v55 = v146;
  *(v54 + 16) = v147;
  *(v54 + 24) = v55;
  *(v54 + 32) = a9;
  *(v54 + 40) = v53;
  v56 = v152;
  *(v54 + 48) = v52;
  *(v54 + 56) = v56;
  *(v54 + 64) = v49;
  *(v54 + 72) = a10;
  *(v54 + 80) = a11;
  v146 = v54;
  *(v54 + 88) = a12;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1CF90325C;
  *(v57 + 24) = v51;
  v150 = v57;
  v143 = v50;
  swift_retain_n();

  v58 = v56;

  sub_1CEFD09A0(a10);
  v152 = v51;

  v151 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v59 = qword_1EDEBBE40;
  v60 = v139;
  v61 = v142;
  v62 = v132;
  (*(v139 + 56))(v142, 1, 1, v132);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v63 = sub_1CF9E7988();
  v65 = v64;
  MEMORY[0x1D3868CC0](v63);
  v65, v66, v67, v68, v69, v70, v71, v72;
  v148 = *(&aBlock + 1);
  v73 = aBlock;
  v74 = v134;
  sub_1CEFCCBDC(v61, v134, &unk_1EC4BED20, &unk_1CFA00700);
  v75 = *(v60 + 48);
  if (v75(v74, 1, v62) == 1)
  {
    v76 = v59;
    v77 = v136;
    sub_1CF9E6048();
    if (v75(v74, 1, v62) != 1)
    {
      sub_1CEFCCC44(v74, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v77 = v136;
    (*(v60 + 32))(v136, v74, v62);
  }

  v82 = v144;
  (*(v60 + 16))(v144, v77, v62);
  v83 = v135;
  *(v82 + *(v135 + 20)) = v59;
  v84 = v82 + *(v83 + 24);
  *v84 = "DB queue wait";
  *(v84 + 8) = 13;
  *(v84 + 16) = 2;
  v85 = v59;
  v86 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1CF9FA450;
  *(v87 + 56) = MEMORY[0x1E69E6158];
  *(v87 + 64) = sub_1CEFD51C4();
  v88 = v148;
  *(v87 + 32) = v73;
  *(v87 + 40) = v88;
  sub_1CF9E6028(v86, &dword_1CEFC7000, v85, "DB queue wait", 13, 2, v82, "%s", 2);
  v87, v89, v90, v91, v92, v93, v94, v95;
  (*(v60 + 8))(v77, v62);
  sub_1CEFCCC44(v142, &unk_1EC4BED20, &unk_1CFA00700);
  v142 = *(v143 + 168);
  v148 = *(v143 + 64);
  v139 = sub_1CF9E6448();
  v136 = *(v139 - 8);
  v136[7](v149, 1, 1, v139);
  v96 = v138;
  sub_1CEFDA34C(v82, v138, type metadata accessor for Signpost);
  v97 = (*(v137 + 80) + 16) & ~*(v137 + 80);
  v98 = (v133 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  sub_1CEFDA0C4(v96, v99 + v97, type metadata accessor for Signpost);
  v100 = (v99 + v98);
  v147 = sub_1CF902CCC;
  v101 = v150;
  *v100 = sub_1CF902CCC;
  v100[1] = v101;
  v102 = v140;
  sub_1CEFDA34C(v82, v140, type metadata accessor for Signpost);
  v103 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 25) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  v107 = v136;
  sub_1CEFDA0C4(v102, v106 + v97, type metadata accessor for Signpost);
  v108 = (v106 + v98);
  *v108 = sub_1CF045408;
  v108[1] = 0;
  *(v106 + v103) = v143;
  v109 = v106 + v104;
  *v109 = "resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)";
  *(v109 + 8) = 66;
  *(v109 + 16) = 2;
  v110 = (v106 + v105);
  v111 = v146;
  v112 = v150;
  *v110 = v147;
  v110[1] = v112;
  v113 = v106;
  v114 = (v106 + ((v105 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v114 = sub_1CF8FB6F0;
  v114[1] = v111;
  v115 = swift_allocObject();
  v115[2] = sub_1CF903308;
  v115[3] = v99;
  v116 = v142;
  v115[4] = v142;
  swift_retain_n();

  v147 = v99;
  v117 = v139;

  v118 = fpfs_current_log();
  v119 = *(v116 + 16);
  v120 = v141;
  sub_1CEFCCBDC(v149, v141, &unk_1EC4BE370, qword_1CFA01B30);
  if ((v107[6])(v120, 1, v117) == 1)
  {
    sub_1CEFCCC44(v120, &unk_1EC4BE370, qword_1CFA01B30);
    v121 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v122 = v130;
    sub_1CF9E6438();
    (v107[1])(v120, v117);
    v121 = sub_1CF9E63C8();
    (*(v145 + 8))(v122, v131);
  }

  v123 = swift_allocObject();
  v123[2] = v118;
  v123[3] = sub_1CF4858EC;
  v123[4] = v113;
  v156 = sub_1CF2BA17C;
  v157 = v123;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v154 = sub_1CEFCA444;
  v155 = &block_descriptor_2742;
  v124 = _Block_copy(&aBlock);
  v125 = v118;

  v156 = sub_1CF2BA180;
  v157 = v115;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v154 = sub_1CEFCA444;
  v155 = &block_descriptor_2745;
  v126 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v119, v148, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v121, v124, v126);
  _Block_release(v126);
  _Block_release(v124);

  sub_1CEFCCC44(v149, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v144, type metadata accessor for Signpost);
  v127 = v151;
  v128 = fpfs_adopt_log();
}

void sub_1CF8CAEF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a1;
  v55 = a11;
  v56 = a10;
  v18 = sub_1CF9E5CF8();
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = a7;
  swift_beginAccess();
  v21 = *(a2 + 16);
  v54 = a8;
  v22 = *(a8 + 16);

  v23 = a7;
  if (v21 == 1)
  {
    v24 = v55;
    v25 = v56;
    v26 = [v23 identifier];
    if (((a9 >> 58) & 0x3C | (a9 >> 1) & 3) == 0x1E)
    {
      v27 = *((a9 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v27);
      v28 = *((a9 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v29 = v28;
    }

    else
    {
      v44 = swift_allocObject();
      *(v44 + 16) = a9;
      v45 = swift_allocObject();
      *(v45 + 16) = a9;
      v29 = v45 | 0x7000000000000004;
      v27 = (v44 | 0x7000000000000004);
      sub_1CEFD09A0(a9);
      v28 = a9;
    }

    sub_1CEFD09A0(v28);
    sub_1CF904278(v29);
    v47 = v46;
    sub_1CEFD0A98(v29);
    sub_1CEFD09A0(a9);

    v48 = v54;

    sub_1CF5DC880(v26, v27, v47, v22, sub_1CF8FB730, v20, v48, v25, v24, a9);
    sub_1CEFD0A98(a9);

    sub_1CEFD0A98(v27);

    goto LABEL_10;
  }

  sub_1CF9042A4(a9);
  v31 = v30;

  v32 = v56;
  v33 = v55;
  sub_1CF5DBC6C(v56, v55, a9, v31, v22, sub_1CF8FB730, v20);

  v34 = v50[3];
  v54 = v50[4];
  v35 = __swift_project_boxed_opaque_existential_1(v50, v34);
  v36 = sub_1CF9042A4(a9);
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v39 = swift_allocObject();
  *(v39 + 152) = v33;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 1;
  *(v39 + 56) = 0u;
  *(v39 + 72) = 0u;
  *(v39 + 88) = 0;
  *(v39 + 120) = v36;
  *(v39 + 128) = v38;
  *(v39 + 136) = 0;
  *(v39 + 144) = v32;
  *(v39 + 96) = xmmword_1CFA04E20;
  *(v39 + 112) = 0;
  v40 = v51;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v42 = v41;
  (*(v52 + 8))(v40, v53);
  v43 = v42 * 1000000000.0;
  if (COERCE__INT64(fabs(v42 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v43 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v43 < 9.22337204e18)
  {
    sub_1CF5215C0(v39, v43, v35, v34, v54);

LABEL_10:

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1CF8CB340(void *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v9 = a7;
  v10 = a5;
  swift_beginAccess();
  if (!*(a2 + 16))
  {
    _s3__C4CodeOMa_1(0);
    v13 = a1;
    sub_1CEFCCCA4(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    if ((sub_1CF9E5658() & 1) == 0)
    {
      v14 = a1;
      a3(0, a1);

      goto LABEL_8;
    }

    a5 = v10;
    a7 = v9;
LABEL_6:
    (a5)(a7, 0, a3, a4);
    return;
  }

  v12 = a1;
  a3(0, a1);
LABEL_8:
}

void sub_1CF8CB498(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unint64_t a8)
{
  v16 = sub_1CF9E5CF8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v39 = v18;
    sub_1CEFCCBDC(a1, &v40, &unk_1EC4C1B30, &qword_1CFA05300);
    if (!v41)
    {
      sub_1CEFCCC44(&v40, &unk_1EC4C1B30, &qword_1CFA05300);
      sub_1CF24CD3C();
      v33 = swift_allocError();
      *v34 = 4;
      *(v34 + 8) = 0u;
      *(v34 + 24) = 0u;
      *(v34 + 40) = 0;
      *(v34 + 48) = 9;
      a3();

      return;
    }

    sub_1CF054EA0(&v40, v42);
    v22 = *(a5 + 16);
    sub_1CF9042A4(a8);
    v24 = v23;

    v38 = a3;
    sub_1CF5DC6A8(a6, a7, a8, v24, v22, a3, a4);

    v25 = v43;
    v37 = v44;
    v36 = __swift_project_boxed_opaque_existential_1(v42, v43);
    v26 = sub_1CF9042A4(a8);
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v29 = swift_allocObject();
    *(v29 + 152) = a7;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    *(v29 + 48) = 1;
    *(v29 + 56) = 0u;
    *(v29 + 72) = 0u;
    *(v29 + 88) = 0;
    *(v29 + 120) = v26;
    *(v29 + 128) = v28;
    *(v29 + 136) = 0;
    *(v29 + 144) = a6;
    *(v29 + 96) = xmmword_1CFA04E20;
    *(v29 + 112) = 0;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v31 = v30;
    (*(v17 + 8))(v20, v39);
    v32 = v31 * 1000000000.0;
    if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        sub_1CF5215C0(v29, v32, v36, v25, v37);

        __swift_destroy_boxed_opaque_existential_1(v42);
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v21 = a2;
  (a3)(a2);
}

double FPDDomainFPFSBackend.fetchLatestVersion(for:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v23 = a3;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
  v22 = swift_allocBox();
  v12 = v11;
  v13 = *(v10 + 48);
  v14 = *(v7 + 16);
  v14(v11, a1, v6);
  *(v12 + v13) = a2;
  v14(v9, a1, v6);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 2) = v23;
  *(v16 + 3) = v17;
  v18 = v25;
  *(v16 + 4) = v25;
  (*(v7 + 32))(&v16[v15], v9, v6);
  v19 = a2;

  v20 = v18;
  sub_1CF84D640(a1, 0, v22 | 0xA000000000000000, sub_1CF8F375C, v16);

  return result;
}

uint64_t sub_1CF8CBCB0(void *a1, uint64_t a2, uint64_t (*a3)(void, void, void, uint64_t, __n128), uint64_t a4, void *a5, uint64_t a6)
{
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  if (!a1)
  {
    return a3(0, 0, 0, a2, v15);
  }

  v26 = a5;
  v16 = a1;
  v17 = sub_1CEFD4E9C([v16 identifier]);
  swift_beginAccess();
  if (*(v17 + 41) == 1)
  {

    return a3(0, 0, 0, a2, v15);
  }

  v25 = *(v17 + 40);
  v24 = *(v17 + 32);

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v13 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  v20 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = v24;
  *(v21 + 40) = v25;
  v22 = v26;
  *(v21 + 48) = v16;
  *(v21 + 56) = v22;
  (*(v13 + 32))(v21 + v20, &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  swift_retain_n();
  v23 = v16;

  sub_1CF8EFB34("fetchLatestVersion(for:request:completionHandler:)", 50, 2, sub_1CF8FA5EC, v21, v22, sub_1CF8FA5E8, v19);
}

double sub_1CF8CBF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7, uint64_t a8)
{
  v31 = a6;
  v32 = a8;
  v35 = a7;
  v34 = a5;
  v33 = a4;
  v30 = a3;
  v29 = sub_1CF9E5A58();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = sub_1CF902D2C;
  v16[3] = v14;
  v16[4] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF8FA6B0;
  *(v17 + 24) = v16;
  v28 = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF8FA6D0;
  *(v18 + 24) = v17;
  v19 = v29;
  (*(v11 + 16))(v13, v32, v29);
  v20 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v33;
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;
  *(v21 + 32) = v34;
  *(v21 + 40) = sub_1CF8FA6D0;
  *(v21 + 48) = v17;
  v23 = v31;
  v24 = v35;
  *(v21 + 56) = v31;
  *(v21 + 64) = v24;
  (*(v11 + 32))(v21 + v20, v13, v19);
  swift_retain_n();

  v25 = v23;
  v26 = v24;
  sub_1CF7AAF88("fetchLatestVersion(for:request:completionHandler:)", 50, 2, 2, sub_1CF8FA714, v18, sub_1CF8FA74C, v21);

  return result;
}

void sub_1CF8CC1E8(void *a1, uint64_t a2, unint64_t a3, int a4, void (*a5)(void, void, void, id), uint64_t a6, void *a7, char *a8, uint64_t a9)
{
  v229 = a8;
  v233 = a7;
  v234 = a6;
  v235 = a5;
  LODWORD(v238) = a4;
  v237 = a3;
  v247 = *MEMORY[0x1E69E9840];
  v11 = sub_1CF9E53C8();
  v227 = *(v11 - 1);
  v228 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v226 = v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5A58();
  v224 = *(v13 - 8);
  v225 = v13;
  v14 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v222 = v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v220 = v215 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v223 = v215 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v232 = (v215 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v22 = *(v21 - 1);
  v230 = v21;
  v231 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v221 = v215 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v215 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v215 - v28;
  v31 = a1[3];
  v30 = a1[4];
  v236 = a1;
  v32 = __swift_project_boxed_opaque_existential_1(a1, v31);
  v33 = *(a2 + 16);
  v244 = v237;
  v245 = v238;

  v34 = v32;
  v35 = v239;
  sub_1CF68DDB0(&v244, v34, v31, v30, v246);
  if (v35)
  {

    return;
  }

  v36 = v236;
  v219 = v23;
  v237 = v14;
  v238 = v26;
  v239 = v29;

  memcpy(v242, v246, sizeof(v242));
  memcpy(v243, v246, sizeof(v243));
  if (sub_1CF08B99C(v243) == 1)
  {
    goto LABEL_7;
  }

  v37 = v243[31];
  if (!v243[31])
  {
    sub_1CEFCCC44(v242, &unk_1EC4BFC20, &unk_1CFA0A290);
LABEL_7:
    v45 = v233;
LABEL_8:
    v46 = [v45 identifier];
    v47 = FPItemNotFoundError();

    v235(0, 0, 0, v47);
    return;
  }

  v38 = v36;
  v39 = v36[3];
  v218 = v38[4];
  v40 = __swift_project_boxed_opaque_existential_1(v38, v39);
  v41 = *(v33 + 40);
  v241[0] = v37;
  v42 = *(*v41 + 240);
  v43 = v37;

  v44 = v232;
  v42(v241, 1, v40, v39, v218);

  v48 = v43;
  v49 = (*(v231 + 48))(v44, 1, v230);
  v50 = v233;
  if (v49 == 1)
  {

    sub_1CEFCCC44(v242, &unk_1EC4BFC20, &unk_1CFA0A290);
    v51 = &unk_1EC4BFBB0;
    v52 = &qword_1CF9FCB90;
    v53 = v44;
LABEL_13:
    sub_1CEFCCC44(v53, v51, v52);
    v45 = v50;
    goto LABEL_8;
  }

  v54 = v239;
  sub_1CEFE55D0(v44, v239, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  if (v243[37] == 1)
  {
    sub_1CEFCCC44(v242, &unk_1EC4BFC20, &unk_1CFA0A290);

    v51 = &unk_1EC4BFBD0;
    v52 = &unk_1CF9FCBC0;
    v53 = v54;
    goto LABEL_13;
  }

  if (LOBYTE(v243[57]) == 1)
  {
    v240 = 22;
    sub_1CEFCCBDC(&v243[35], v241, &unk_1EC4BF2D0, &unk_1CF9FEF20);
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v55 = v226;
    v56 = v228;
    sub_1CF9E57D8();
    v57 = sub_1CF9E53A8();
    (v227)[1](v55, v56);
    v235(0, 0, 0, v57);

    sub_1CEFCCC44(&v243[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);
    sub_1CEFCCC44(v242, &unk_1EC4BFC20, &unk_1CFA0A290);
    sub_1CEFCCC44(v54, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    return;
  }

  v230 = v48;
  v236 = v243[36];
  v233 = v243[38];
  v232 = v243[39];
  v217 = v243[41];
  v226 = v243[42];
  v227 = v243[35];
  v58 = v54[2];
  v59 = v54[3];
  v60 = v54[5];
  v61 = v54[6];
  v62 = v54[8];
  v63 = v54[9];
  sub_1CEFCCBDC(&v243[35], v241, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  sub_1CEFE42D4(v58, v59);
  sub_1CEFE42D4(v60, v61);
  v228 = v58;
  v64 = sub_1CF9E5B48();
  v65 = sub_1CF9E5B48();
  v218 = 0;
  v215[1] = v62;
  v216 = v63;
  if (v63)
  {
    v63 = sub_1CF9E6888();
  }

  v66 = objc_opt_self();
  v67 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v64 metadataVersion:v65 lastEditorDeviceName:v63];

  sub_1CEFE4714(v60, v61);
  sub_1CEFE4714(v228, v59);
  v68 = *&v229[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v228 = v66;
  v69 = [v66 etagForVersion:v67 providerDomainID:v68];

  v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v72 = v71;

  v73 = v227;
  sub_1CEFE42D4(v227, v236);
  sub_1CEFE42D4(v233, v232);
  v74 = sub_1CF9E5B48();
  v75 = sub_1CF9E5B48();
  if (v226)
  {
    v76 = sub_1CF9E6888();
  }

  else
  {
    v76 = 0;
  }

  v77 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v74 metadataVersion:v75 lastEditorDeviceName:v76];

  sub_1CEFE4714(v233, v232);
  sub_1CEFE4714(v73, v236);
  v78 = [v228 etagForVersion:v77 providerDomainID:v68];

  v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v81 = v80;

  if (v79 == v70 && v81 == v72)
  {
    v81, v82, v83, v84, v85, v86, v87, v88;
    v72, v89, v90, v91, v92, v93, v94, v95;
    v96 = v239;
    v235(0, 0, 0, 0);
LABEL_26:

    sub_1CEFCCC44(&v243[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);
    sub_1CEFCCC44(v242, &unk_1EC4BFC20, &unk_1CFA0A290);
    v112 = v96;
LABEL_41:
    sub_1CEFCCC44(v112, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    return;
  }

  v97 = sub_1CF9E8048();
  v81, v98, v99, v100, v101, v102, v103, v104;
  v72, v105, v106, v107, v108, v109, v110, v111;
  v96 = v239;
  if (v97)
  {
    v235(0, 0, 0, 0);
    goto LABEL_26;
  }

  v113 = objc_allocWithZone(MEMORY[0x1E69673A0]);
  v233 = [v113 initWithProviderDomainID:v68 itemIdentifier:v230];
  type metadata accessor for GSRemoteVersionsManager();
  v114 = swift_allocObject();
  v115 = [objc_allocWithZone(FPGSStorageManager) init];
  v236 = v114;
  v114[2] = v115;
  v116 = v96[2];
  v117 = v96[3];
  v118 = v96[5];
  v119 = v96[6];
  sub_1CEFE42D4(v116, v117);
  sub_1CEFE42D4(v118, v119);
  v120 = sub_1CF9E5B48();
  v121 = sub_1CF9E5B48();
  if (v216)
  {
    v122 = sub_1CF9E6888();
  }

  else
  {
    v122 = 0;
  }

  v232 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v120 metadataVersion:v121 lastEditorDeviceName:v122];

  sub_1CEFE4714(v118, v119);
  sub_1CEFE4714(v116, v117);
  v123 = v233;
  sub_1CF9E5878();
  v125 = v124;
  v126 = sub_1CF9E6888();
  v125, v127, v128, v129, v130, v131, v132, v133;
  v134 = v232;
  v135 = [v228 versionFaultName:v232 identifier:v123 ext:v126];

  v233 = v123;
  v136 = v135;
  if (!v135)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v138 = v137;
    v136 = sub_1CF9E6888();
    v138, v139, v140, v141, v142, v143, v144, v145;
  }

  v146 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v232 = v147;
  v148 = *MEMORY[0x1E69A0798];
  v149 = *(v224 + 16);
  v149(v223, a9, v225);
  sub_1CEFCCBDC(v239, v238, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v150 = v236[2];
  v151 = v148;
  v152 = sub_1CF9E5928();
  v241[0] = 0;
  v153 = [v150 permanentStorageForItemAtURL:v152 allocateIfNone:0 error:v241];

  v154 = v241[0];
  if (!v153)
  {
    v228 = v146;
    v178 = v241[0];

    v179 = sub_1CF9E57F8();
    v227 = v179;
    swift_willThrow();
LABEL_39:
    v218 = 0;
    v182 = v238;
    v183 = swift_allocObject();
    v226 = v183;
    v184 = v234;
    *(v183 + 16) = v235;
    *(v183 + 24) = v184;
    v149(v222, v223, v225);
    sub_1CEFCCBDC(v182, v221, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v185 = v224;
    v186 = (*(v224 + 80) + 48) & ~*(v224 + 80);
    v237 = (v237 + v186 + 7) & 0xFFFFFFFFFFFFFFF8;
    v187 = (v237 + 15) & 0xFFFFFFFFFFFFFFF8;
    v188 = (*(v231 + 80) + v187 + 8) & ~*(v231 + 80);
    v189 = (v219 + v188 + 7) & 0xFFFFFFFFFFFFFFF8;
    v190 = swift_allocObject();
    v191 = v230;
    v192 = v235;
    *(v190 + 2) = v230;
    *(v190 + 3) = v192;
    v193 = v233;
    *(v190 + 4) = v184;
    *(v190 + 5) = v193;
    (*(v185 + 32))(&v190[v186], v222, v225);
    v194 = v229;
    v195 = v236;
    *&v190[v237] = v229;
    *&v190[v187] = v195;
    sub_1CEFE55D0(v221, &v190[v188], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v196 = &v190[v189];
    v197 = v232;
    *v196 = v228;
    *(v196 + 1) = v197;
    swift_retain_n();
    v160 = v191;
    v177 = v233;
    v198 = v226;

    v199 = v194;
    v174 = v223;
    v200 = v199;

    sub_1CF8EFB34("fetchLatestVersion(for:request:completionHandler:)", 50, 2, sub_1CF8FA810, v190, v200, sub_1CF902D2C, v198);

    sub_1CEFCCC44(&v243[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);

    v169 = v238;

    sub_1CEFCCC44(v242, &unk_1EC4BFC20, &unk_1CFA0A290);
    v175 = v224;
LABEL_40:

    sub_1CEFCCC44(v169, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(v175 + 8))(v174, v225);
    v112 = v239;
    goto LABEL_41;
  }

  v241[0] = 0;
  v155 = v154;
  v156 = [v153 additionWithName:v136 inNameSpace:v151 error:v241];

  v157 = v241[0];
  if (!v156)
  {
    v228 = v146;
    v180 = v241[0];
    v181 = sub_1CF9E57F8();

    v227 = v181;
    swift_willThrow();

    goto LABEL_39;
  }

  v158 = v156;
  v159 = v157;
  v160 = v158;
  v161 = [v158 url];
  v169 = v238;
  if (v161)
  {
    v170 = v161;
    v232, v162, v163, v164, v165, v166, v167, v168;
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    v171 = v220;
    sub_1CF9E59D8();

    v172 = v218;
    v173 = sub_1CF02BFF8(v171, 1);
    v174 = v223;
    v175 = v224;
    if (v172)
    {
      v176 = v172;
      v235(0, 0, 0, v172);
      sub_1CEFCCC44(&v243[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);

      v177 = v158;

      sub_1CEFCCC44(v242, &unk_1EC4BFC20, &unk_1CFA0A290);
      v218 = 0;
      v160 = v233;
    }

    else
    {
      v201 = v173;
      v218 = 0;
      v202 = [v158 name];
      if (v202)
      {
        v203 = v202;
        v204 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v206 = v205;
      }

      else
      {
        v204 = 0;
        v206 = 0;
      }

      v207 = v201;
      v235(v204, v206, v201, 0);
      sub_1CEFCCC44(&v243[35], &unk_1EC4BF2D0, &unk_1CF9FEF20);

      v206, v208, v209, v210, v211, v212, v213, v214;
      sub_1CEFCCC44(v242, &unk_1EC4BFC20, &unk_1CFA0A290);

      v177 = v207;
      v175 = v224;
      v169 = v238;
    }

    goto LABEL_40;
  }

  __break(1u);
}

void sub_1CF8CD304(uint64_t a1, void *a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v114 = a8;
  materialization_alignment = a7;
  v109 = a6;
  v111 = a5;
  v102[1] = a4;
  v130 = a3;
  v112 = a2;
  v107 = a1;
  v116 = a11;
  v115 = a10;
  v106 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v119 = v102 - v14;
  v125 = sub_1CF9E63D8();
  v132 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v120 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v124 = v102 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v117 = v102 - v19;
  v20 = sub_1CF9E6448();
  v122 = *(v20 - 8);
  v123 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v118 = v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v129 = v102 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v121 = v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v131 = v102 - v27;
  v128 = sub_1CF9E6118();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v110 = v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v108 = *(v29 - 8);
  v30 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = v102 - v31;
  v105 = v102 - v31;
  v33 = sub_1CF9E5A58();
  v103 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v104 = v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *(*(*(a1 + 16) + 40) + 16);
  type metadata accessor for FPFileTree(0);
  v127 = swift_dynamicCastClassUnconditional();
  (*(v34 + 16))(v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v109, v33);
  sub_1CEFCCBDC(v106, v32, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v36 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v37 = (v35 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v108 + 80) + v40 + 8) & ~*(v108 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = v130;
  *(v42 + 3) = a4;
  v43 = v111;
  *(v42 + 4) = v111;
  (*(v34 + 32))(&v42[v36], v104, v103);
  *&v42[v37] = v107;
  v44 = v112;
  *&v42[v38] = v112;
  v45 = materialization_alignment;
  *&v42[v39] = materialization_alignment;
  *&v42[v40] = v114;
  sub_1CEFE55D0(v105, &v42[v41], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v130 = v42;
  v46 = &v42[(v30 + v41 + 7) & 0xFFFFFFFFFFFFFFF8];
  v47 = v116;
  *v46 = v115;
  v46[1] = v47;

  v48 = v43;

  v49 = v44;
  v50 = v45;
  v51 = v110;

  v52 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v53 = sub_1CF9E6108();
  v54 = sub_1CF9E7288();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_1CEFD0DF0(7104878, 0xE300000000000000, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v53, v54, "⚔️  Fetching version %s...", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1D386CDC0](v56, -1, -1);
    MEMORY[0x1D386CDC0](v55, -1, -1);
  }

  (v126[1])(v51, v128);
  v57 = swift_allocObject();
  v58 = v130;
  v57[2] = sub_1CF8FA950;
  v57[3] = v58;
  v59 = v127;
  v57[4] = v49;
  v57[5] = v59;
  v57[6] = 7104878;
  v57[7] = 0xE300000000000000;
  v60 = swift_allocObject();
  *(v60 + 16) = nullsub_1;
  *(v60 + 24) = 0;
  v61 = swift_allocObject();
  v61[2] = v59;
  v61[3] = v60;
  v61[4] = sub_1CF2F5CBC;
  v61[5] = v57;
  v126 = v61;

  v62 = v49;

  v128 = v60;

  v114 = v57;

  materialization_alignment = fpfs_get_materialization_alignment();
  v63 = *(v59 + 160);
  v115 = *(v59 + 168);
  v116 = v63;
  sub_1CF9E6418();
  qos_class_self();
  v64 = v119;
  sub_1CF9E63B8();
  v65 = v132;
  v66 = *(v132 + 48);
  v67 = v125;
  v68 = v66(v64, 1, v125);
  v69 = v124;
  if (v68 == 1)
  {
    (*(v65 + 104))(v117, *MEMORY[0x1E69E7FA0], v67);
    if (v66(v64, 1, v67) != 1)
    {
      sub_1CEFCCC44(v64, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v65 + 32))(v117, v64, v67);
  }

  v70 = v118;
  sub_1CF9E6428();
  sub_1CF9E6438();
  v71 = sub_1CF9E63C8();
  v72 = *(v65 + 8);
  v132 = v65 + 8;
  v72(v69, v67);
  v73 = v120;
  v74 = v129;
  sub_1CF9E6438();
  v75 = sub_1CF9E63C8();
  v120 = v72;
  v72(v73, v67);
  v76 = v122;
  v77 = *(v122 + 8);
  if (v71 >= v75)
  {
    v78 = v70;
  }

  else
  {
    v78 = v74;
  }

  if (v71 >= v75)
  {
    v79 = v74;
  }

  else
  {
    v79 = v70;
  }

  v80 = v123;
  v129 = *(v122 + 8);
  v77(v78, v123);
  v81 = v131;
  (*(v76 + 32))(v131, v79, v80);
  (*(v76 + 56))(v81, 0, 1, v80);
  v82 = swift_allocObject();
  *(v82 + 16) = v127;
  *(v82 + 24) = 0;
  *(v82 + 32) = v62;
  *(v82 + 40) = 8;
  *(v82 + 48) = 0u;
  *(v82 + 64) = 0u;
  *(v82 + 80) = 1;
  *(v82 + 88) = 0u;
  *(v82 + 104) = 0u;
  *(v82 + 120) = 0;
  *(v82 + 128) = sub_1CF2F5AE8;
  v83 = v62;
  v84 = v126;
  *(v82 + 136) = v126;
  *(v82 + 144) = 0;
  v85 = materialization_alignment;
  *(v82 + 152) = 0;
  *(v82 + 160) = v85;
  *(v82 + 168) = v128;
  v86 = swift_allocObject();
  v86[2] = sub_1CF2F5AE8;
  v86[3] = v84;
  v87 = v115;
  v86[4] = v115;
  swift_retain_n();

  v88 = v83;

  v89 = fpfs_current_log();
  v90 = *(v87 + 16);
  v91 = *(v76 + 48);
  v92 = v91(v81, 1, v80);
  v93 = v81;
  v94 = v121;
  sub_1CEFCCBDC(v93, v121, &unk_1EC4BE370, qword_1CFA01B30);
  if (v91(v94, 1, v80) == 1)
  {
    sub_1CEFCCC44(v94, &unk_1EC4BE370, qword_1CFA01B30);
    v95 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v96 = v124;
    sub_1CF9E6438();
    (v129)(v94, v80);
    v95 = sub_1CF9E63C8();
    (v120)(v96, v125);
  }

  if (v92 == 1)
  {
    v97 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v97 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v98 = swift_allocObject();
  v98[2] = v89;
  v98[3] = sub_1CF2F5AF4;
  v98[4] = v82;
  v138 = sub_1CF2BA17C;
  v139 = v98;
  aBlock = MEMORY[0x1E69E9820];
  v135 = 1107296256;
  v136 = sub_1CEFCA444;
  v137 = &block_descriptor_2475;
  v99 = _Block_copy(&aBlock);
  v100 = v89;

  v138 = sub_1CF2F55E4;
  v139 = v86;
  aBlock = MEMORY[0x1E69E9820];
  v135 = 1107296256;
  v136 = sub_1CEFCA444;
  v137 = &block_descriptor_2478;
  v101 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v90, v116, v97, v95, v99, v101);

  _Block_release(v101);
  _Block_release(v99);

  sub_1CEFCCC44(v131, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF8CE080(uint64_t a1, void (*a2)(void, void, void, void *), void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v153 = a8;
  v145 = a7;
  v146 = a6;
  v152 = a5;
  v156 = a4;
  v154 = a3;
  v14 = sub_1CF9E63D8();
  v133 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v147 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v123 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v140 = *(v21 - 8);
  v141 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v151 = &v123 - v22;
  v143 = sub_1CF9E5A58();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v150 = (&v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v149 = &v123 - v25;
  v134 = type metadata accessor for StagedRemoteVersion(0);
  v135 = *(v134 - 8);
  v26 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v144 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v123 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v123 - v31);
  sub_1CEFCCBDC(a1, &v123 - v31, &unk_1EC4C5A90, &qword_1CFA01BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    v34 = v33;
    a2(0, 0, 0, v33);
  }

  else
  {
    v132 = a2;
    v124 = v16;
    v125 = v14;
    v130 = a10;
    sub_1CEFDA0C4(v32, v29, type metadata accessor for StagedRemoteVersion);
    v148 = v29;
    v126 = *v29;
    sub_1CF06BC9C(&v170);
    v35 = v170;
    v36 = v171;
    v37 = v172;
    v38 = v173;
    v39 = v174;
    sub_1CEFE42D4(v170, v171);
    sub_1CEFE42D4(v37, v38);
    v40 = sub_1CF9E5B48();
    v41 = sub_1CF9E5B48();
    if (v39)
    {
      v39 = sub_1CF9E6888();
    }

    v131 = a12;
    v129 = a11;
    v136 = a9;
    v42 = objc_opt_self();
    v43 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v40 metadataVersion:v41 lastEditorDeviceName:v39];

    sub_1CEFE4714(v37, v38);
    sub_1CEFE4714(v35, v36);
    sub_1CEFCCC44(&v170, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CF9E5878();
    v45 = v44;
    v46 = sub_1CF9E6888();
    v45, v47, v48, v49, v50, v51, v52, v53;
    v54 = [v42 versionFaultName:v43 identifier:v156 ext:v46];

    v128 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v127 = v55;

    v156 = swift_allocObject();
    *(v156 + 16) = 0;
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_1CF9F4E20;
    v56 = *(*(*(v146 + 16) + 40) + 16);
    type metadata accessor for FPFileTree(0);
    v139 = swift_dynamicCastClassUnconditional();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_1CFA00250;
    v146 = v56;

    sub_1CF06BC9C(&v165);
    v57 = v165;
    v58 = v166;
    v59 = v167;
    v60 = v168;
    v61 = v169;
    sub_1CEFE42D4(v165, v166);
    sub_1CEFE42D4(v59, v60);
    v62 = sub_1CF9E5B48();
    v63 = sub_1CF9E5B48();
    if (v61)
    {
      v64 = sub_1CF9E6888();
    }

    else
    {
      v64 = 0;
    }

    v65 = *(v134 + 20);
    v66 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v62 metadataVersion:v63 lastEditorDeviceName:v64];

    sub_1CEFE4714(v59, v60);
    sub_1CEFE4714(v57, v58);
    sub_1CEFCCC44(&v165, &unk_1EC4BF250, &unk_1CFA01B50);
    *(v138 + 32) = v66;
    v67 = v148;
    v68 = v144;
    sub_1CEFDA34C(v148, v144, type metadata accessor for StagedRemoteVersion);
    v69 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v70 = (v26 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    sub_1CEFDA0C4(v68, v72 + v69, type metadata accessor for StagedRemoteVersion);
    *(v72 + v70) = v153;
    *(v72 + v71) = v156;
    v144 = v72;
    *(v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8)) = v155;
    v73 = v142;
    v74 = *(v142 + 16);
    v75 = v143;
    v74(v149, v152, v143);
    v74(v150, v67 + v65, v75);
    sub_1CEFCCBDC(v130, v151, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v76 = *(v73 + 80);
    v77 = (v76 + 24) & ~v76;
    v78 = (v137 + 7 + v77) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v76 + v78 + 16) & ~v76;
    v152 = (v137 + 7 + v79) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = (*(v140 + 80) + v80 + 8) & ~*(v140 + 80);
    v82 = (v141 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v141 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    *(v83 + 16) = v136;
    v84 = *(v73 + 32);
    v84(v83 + v77, v149, v75);
    v85 = (v83 + v78);
    v86 = v127;
    *v85 = v128;
    v85[1] = v86;
    v84(v83 + v79, v150, v75);
    *(v83 + v152) = v156;
    *(v83 + v80) = v155;
    sub_1CEFE55D0(v151, v83 + v81, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v87 = (v83 + v82);
    v88 = v154;
    *v87 = v132;
    v87[1] = v88;
    v152 = v83;
    v89 = (v83 + v141);
    v90 = v131;
    *v89 = v129;
    v89[1] = v90;
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_retain_n();
    swift_retain_n();
    v92 = v153;

    if (Strong)
    {
      v93 = [Strong session];
    }

    else
    {
      v93 = 0;
    }

    v94 = type metadata accessor for FPFileTreeLifetimeExtender();
    v95 = objc_allocWithZone(v94);
    *&v95[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState] = 0;
    v96 = v145;
    *&v95[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier] = v145;
    v97 = objc_opt_self();
    v154 = v96;
    v98 = [v97 requestForSelf];
    *&v95[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] = v98;
    v99 = [objc_opt_self() defaultStore];
    if ([v99 hasUpcallExecutionTimeLimits])
    {
      goto LABEL_15;
    }

    if (qword_1EC4BCCF0 != -1)
    {
      swift_once();
    }

    v100 = -1.0;
    if (byte_1EC4BF020 == 1)
    {
LABEL_15:
      [v99 upcallExecutionTimeLimitBase];
      v100 = v101;
    }

    *&v95[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeout] = v100;
    v164.receiver = v95;
    v164.super_class = v94;
    v102 = objc_msgSendSuper2(&v164, sel_init);
    if (v93)
    {
      [v93 registerLifetimeExtensionForObject_];
    }

    v103 = v139;
    v104 = *(v139 + 168);
    v153 = *(v139 + 160);
    v105 = sub_1CF9E6448();
    v150 = *(v105 - 8);
    v150[7](v157, 1, 1, v105);
    v106 = swift_allocObject();
    v107 = v152;
    *(v106 + 16) = sub_1CF8FABC0;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v144;
    *(v108 + 16) = sub_1CF8FAAB0;
    *(v108 + 24) = v109;
    *(v108 + 32) = v103;
    v110 = v154;
    v111 = v138;
    *(v108 + 40) = v154;
    *(v108 + 48) = v111;
    *(v108 + 56) = vdupq_n_s64(0x4090000000000000uLL);
    *(v108 + 72) = v93;
    *(v108 + 80) = v102;
    *(v108 + 88) = sub_1CF8FABC0;
    *(v108 + 96) = v107;
    v112 = swift_allocObject();
    v112[2] = sub_1CF90324C;
    v112[3] = v106;
    v112[4] = v104;
    v113 = v150;
    swift_retain_n();

    v114 = v110;

    swift_unknownObjectRetain();
    v154 = v102;

    v115 = fpfs_current_log();
    v151 = *(v104 + 16);
    v116 = v147;
    sub_1CEFCCBDC(v157, v147, &unk_1EC4BE370, qword_1CFA01B30);
    if ((v113[6])(v116, 1, v105) == 1)
    {
      sub_1CEFCCC44(v116, &unk_1EC4BE370, qword_1CFA01B30);
      v117 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v118 = v124;
      sub_1CF9E6438();
      (v113[1])(v116, v105);
      v117 = sub_1CF9E63C8();
      (*(v133 + 8))(v118, v125);
    }

    v119 = swift_allocObject();
    v119[2] = v115;
    v119[3] = sub_1CF8FAD38;
    v119[4] = v108;
    v162 = sub_1CF2BA17C;
    v163 = v119;
    aBlock = MEMORY[0x1E69E9820];
    v159 = 1107296256;
    v160 = sub_1CEFCA444;
    v161 = &block_descriptor_2508;
    v120 = _Block_copy(&aBlock);
    v121 = v115;

    v162 = sub_1CF2BA180;
    v163 = v112;
    aBlock = MEMORY[0x1E69E9820];
    v159 = 1107296256;
    v160 = sub_1CEFCA444;
    v161 = &block_descriptor_2511;
    v122 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v151, v153, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v117, v120, v122);
    _Block_release(v122);
    _Block_release(v120);
    swift_unknownObjectRelease();

    sub_1CEFD5338(v148, type metadata accessor for StagedRemoteVersion);
    sub_1CEFCCC44(v157, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

uint64_t sub_1CF8CF150(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5, objc_class **a6, _DWORD *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v85 = a7;
  v86 = a2;
  v15 = sub_1CF9E5A58();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StagedRemoteVersion(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v80 - v23;
  v25 = sub_1CF9E6118();
  v87 = *(v25 - 8);
  v88 = v25;
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - v28;
  if (a8)
  {
    v30 = a8;
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(a9, v24, type metadata accessor for StagedRemoteVersion);
    v32 = a8;
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72A8();

    if (os_log_type_enabled(v33, v34))
    {
      v82 = v29;
      LODWORD(v84) = v34;
      v86 = v33;
      v35 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = v35;
      *v35 = 138412546;
      sub_1CF06BC9C(&v91);
      v36 = v91;
      v37 = v92;
      v39 = v93;
      v38 = v94;
      v40 = v95;
      sub_1CEFE42D4(v91, v92);
      sub_1CEFE42D4(v39, v38);
      v41 = sub_1CF9E5B48();
      v42 = sub_1CF9E5B48();
      if (v40)
      {
        v40 = sub_1CF9E6888();
      }

      v43 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v41 metadataVersion:v42 lastEditorDeviceName:v40];

      sub_1CEFE4714(v39, v38);
      sub_1CEFE4714(v36, v37);
      sub_1CEFCCC44(&v91, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CEFD5338(v24, type metadata accessor for StagedRemoteVersion);
      v44 = v85;
      *(v85 + 1) = v43;
      v45 = v83;
      *v83 = v43;
      *(v44 + 6) = 2112;
      swift_getErrorValue();
      v46 = Error.prettyDescription.getter(v89, v90);
      *(v44 + 14) = v46;
      v45[1] = v46;
      v47 = v86;
      _os_log_impl(&dword_1CEFC7000, v86, v84, "failed to fetch thumbnail for version %@: %@", v44, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);

      return (*(v87 + 8))(v82, v88);
    }

    v61 = v24;
LABEL_16:
    sub_1CEFD5338(v61, type metadata accessor for StagedRemoteVersion);
    return (*(v87 + 8))(v29, v88);
  }

  v80 = v15;
  v81 = v16;
  v82 = v21;
  v84 = v27;
  v83 = a6;
  sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
  v49 = sub_1CF93CF34();
  v50 = v86;
  v51 = sub_1CF9E7568();

  if (v51)
  {
    if (a3)
    {
      v52 = a3;
      v53 = [v52 url];
      sub_1CF9E59D8();

      MEMORY[0x1EEE9AC00](v54);
      *(&v80 - 2) = v18;
      *(&v80 - 1) = a10;
      sub_1CF9E59B8();

      (v81[1].isa)(v18, v80);
    }

    swift_beginAccess();
    v55 = *(a11 + 16);
    *(a11 + 16) = a3;
    v56 = a3;

    swift_beginAccess();
    v57 = *(a12 + 16);
    v58 = *(a12 + 24);
    v59 = v83;
    v60 = v85;
    *(a12 + 16) = v83;
    *(a12 + 24) = v60;
    sub_1CEFF05F4(v59, v60);
    return sub_1CEFE48D8(v57, v58);
  }

  else
  {
    v62 = fpfs_current_or_default_log();
    v29 = v84;
    sub_1CF9E6128();
    v63 = v82;
    sub_1CEFDA34C(a9, v82, type metadata accessor for StagedRemoteVersion);
    v64 = v50;
    v65 = sub_1CF9E6108();
    v66 = sub_1CF9E72A8();

    if (!os_log_type_enabled(v65, v66))
    {

      v61 = v63;
      goto LABEL_16;
    }

    v81 = v65;
    LODWORD(v85) = v66;
    v67 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v86 = v67;
    LODWORD(v67->isa) = 138412546;
    sub_1CF06BC9C(&v91);
    v68 = v91;
    v69 = v92;
    v71 = v93;
    v70 = v94;
    v72 = v95;
    sub_1CEFE42D4(v91, v92);
    sub_1CEFE42D4(v71, v70);
    v73 = sub_1CF9E5B48();
    v74 = sub_1CF9E5B48();
    if (v72)
    {
      v72 = sub_1CF9E6888();
    }

    v75 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v73 metadataVersion:v74 lastEditorDeviceName:v72];

    sub_1CEFE4714(v71, v70);
    sub_1CEFE4714(v68, v69);
    sub_1CEFCCC44(&v91, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CEFD5338(v63, type metadata accessor for StagedRemoteVersion);
    v76 = v86;
    *(&v86->isa + 4) = v75;
    WORD2(v76[1].isa) = 2112;
    *(&v76[1].isa + 6) = v64;
    v77 = v83;
    *v83 = v75;
    v77[1] = v64;
    v78 = v64;
    v79 = v81;
    _os_log_impl(&dword_1CEFC7000, v81, v85, "version mismatch for thumbnail %@ != %@", v76, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v77, -1, -1);
    MEMORY[0x1D386CDC0](v76, -1, -1);

    return (*(v87 + 8))(v84, v88);
  }
}

uint64_t sub_1CF8CF9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, id, id), uint64_t a11, void *a12, _TtC18FileProviderDaemon8FSTester *a13)
{
  v276 = a6;
  v281 = a5;
  v282 = a4;
  v290 = a3;
  v297 = a13;
  v295 = a12;
  v296 = a11;
  v294 = a10;
  v309 = *MEMORY[0x1E69E9840];
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  MEMORY[0x1EEE9AC00](v279);
  v280 = (&v268 - v16);
  v17 = sub_1CF9E5A58();
  v18 = *(v17 - 1);
  v298 = v17;
  v299 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v20);
  v272 = &v268 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v271 = &v268 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v268 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v274 = &v268 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v286 = (&v268 - v30);
  v31 = sub_1CF9E6118();
  v288 = *(v31 - 8);
  v289 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v283 = &v268 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v270 = &v268 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v268 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v273 = &v268 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v268 - v41;
  v292 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
  v275 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v291 = v43;
  swift_beginAccess();
  v44 = *(a7 + 16);
  v278 = &v268 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = v26;
  if (v44)
  {
    v45 = [v44 url];
    sub_1CF9E59D8();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = *(v299 + 56);
  v293 = v42;
  v47(v42, v46, 1, v298);
  swift_beginAccess();
  v48 = *(a8 + 16);
  v49 = *(a8 + 24);
  v50 = a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  v51 = *(v50 + *(type metadata accessor for ItemMetadata(0) + 52));
  v52 = swift_allocObject();
  v53 = v295;
  v52[2] = v294;
  v54 = v297;
  v52[3] = v296;
  v52[4] = v53;
  v287 = v52;
  v52[5] = v54;
  v55 = *(a2 + 16);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v284 = v48;
  v285 = v49;
  sub_1CEFF05F4(v48, v49);
  v56 = v290;
  v57 = sub_1CF9E5928();
  *&v303 = 0;
  v58 = [v55 permanentStorageForItemAtURL:v57 allocateIfNone:1 error:&v303];

  if (!v58)
  {
    v149 = v303;
    v150 = sub_1CF9E57F8();

    swift_willThrow();
    v129 = v298;
    v130 = v299;
LABEL_22:
    v152 = v283;
    goto LABEL_23;
  }

  v277 = v58;
  v59 = v303;
  sub_1CF9E58E8();
  v61 = v60;
  v62 = sub_1CF9E6888();
  v61, v63, v64, v65, v66, v67, v68, v69;
  v70 = [v62 fp:v51 displayNameFromFilenameWithHiddenPathExtension:0 isFolder:?];

  v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v73 = v72;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFA001F0;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v75;
  v76 = sub_1CF9E58E8();
  v77 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v76;
  *(inited + 56) = v78;
  *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 88) = v79;
  *(inited + 120) = v77;
  v80 = v281;
  *(inited + 96) = v282;
  *(inited + 104) = v80;
  *(inited + 128) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 136) = v81;
  *(inited + 168) = v77;
  *(inited + 144) = v71;
  *(inited + 152) = v73;
  v82 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v83 = MEMORY[0x1E69E6370];
  *(inited + 176) = v82;
  *(inited + 184) = v84;
  *(inited + 216) = v83;
  *(inited + 192) = 1;
  *(inited + 224) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 232) = v85;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
  *(inited + 240) = v292;
  *(inited + 272) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 280) = v86;
  *(inited + 312) = v77;
  v87 = v291;
  *(inited + 288) = v275;
  *(inited + 296) = v87;

  v88 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v89 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v91 = v90;
  v92 = MEMORY[0x1E69E76D8];
  v305 = MEMORY[0x1E69E76D8];
  *&v303 = 9;
  sub_1CEFE9EB8(&v303, v308);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v300 = v88;
  sub_1CF1D154C(v308, v89, v91, isUniquelyReferenced_nonNull_native);
  v91, v94, v95, v96, v97, v98, v99, v100;
  v101 = v300;
  v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v104 = v103;
  v305 = v92;
  *&v303 = 1;
  sub_1CEFE9EB8(&v303, v308);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v300 = v101;
  sub_1CF1D154C(v308, v102, v104, v105);
  v104, v106, v107, v108, v109, v110, v111, v112;
  v113 = v300;
  v114 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v115 = sub_1CF9E6108();
  v116 = sub_1CF9E7288();
  v80, v117, v118, v119, v120, v121, v122, v123;
  if (os_log_type_enabled(v115, v116))
  {
    v124 = v113;
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *&v303 = v126;
    *v125 = 136315138;
    *(v125 + 4) = sub_1CEFD0DF0(v282, v80, &v303);
    _os_log_impl(&dword_1CEFC7000, v115, v116, "⚔️  Putting remote version %s into Genstore...", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x1D386CDC0](v126, -1, -1);
    v127 = v125;
    v113 = v124;
    MEMORY[0x1D386CDC0](v127, -1, -1);
  }

  v275 = *(v288 + 8);
  v275(v37, v289);
  v128 = v293;
  v129 = v298;
  v130 = v299;
  v131 = sub_1CF9E5928();
  sub_1CF7BA9CC(v113);
  v133 = v132;
  v134 = v113;
  v135 = sub_1CF9E6618();
  v133, v136, v137, v138, v139, v140, v141, v142;
  *&v303 = 0;
  v143 = v277;
  v144 = [v277 prepareAdditionCreationWithItemAtURL:v131 byMoving:1 creationInfo:v135 error:&v303];

  v145 = v303;
  if (v144)
  {
    v276 = v134;
    sub_1CF9E59D8();
    v146 = v145;

    v147 = v273;
    sub_1CEFCCBDC(v128, v273, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((*(v130 + 48))(v147, 1, v129) == 1)
    {
      v298 = v19;
      v148 = v129;
      sub_1CEFCCC44(v147, &unk_1EC4BE310, qword_1CF9FCBE0);
      v56 = v290;
LABEL_20:
      v191 = v276;
      v192 = v286;
      v295 = sub_1CF9E5928();
      sub_1CF7BA9CC(v191);
      v194 = v193;

      v294 = sub_1CF9E6618();
      v194, v195, v196, v197, v198, v199, v200, v201;
      v202 = *(v130 + 16);
      v203 = v271;
      v204 = v56;
      v205 = v148;
      v202(v271, v204, v148);
      v206 = v272;
      v202(v272, v192, v148);
      v207 = *(v130 + 80);
      v208 = (v207 + 32) & ~v207;
      v209 = (v298 + v207 + v208) & ~v207;
      v210 = swift_allocObject();
      v211 = v287;
      *(v210 + 16) = sub_1CF8FAD3C;
      *(v210 + 24) = v211;
      v212 = *(v130 + 32);
      v212(v210 + v208, v203, v205);
      v212(v210 + v209, v206, v205);
      v306 = sub_1CF2FC6C0;
      v307 = v210;
      *&v303 = MEMORY[0x1E69E9820];
      *(&v303 + 1) = 1107296256;
      v304 = sub_1CEFF99E0;
      v305 = &block_descriptor_2520;
      v213 = _Block_copy(&v303);

      v214 = v277;
      v216 = v294;
      v215 = v295;
      [v277 createAdditionStagedAtURL:v295 creationInfo:v294 completionHandler:v213];
      _Block_release(v213);

      (*(v299 + 8))(v286, v205);
      v217 = v297;
      v218 = v293;
      goto LABEL_27;
    }

    v153 = v274;
    (*(v130 + 32))(v274, v147, v129);
    v154 = fpfs_current_or_default_log();
    v155 = v270;
    sub_1CF9E6128();
    v156 = v269;
    (*(v130 + 16))(v269, v153, v129);
    v157 = v281;

    v158 = sub_1CF9E6108();
    v159 = sub_1CF9E7288();
    v157, v160, v161, v162, v163, v164, v165, v166;
    if (os_log_type_enabled(v158, v159))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      *&v303 = v168;
      *v167 = 136315394;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      LODWORD(v273) = v159;
      v169 = sub_1CF9E7F98();
      v171 = v170;
      v172 = *(v299 + 8);
      v172(v156, v298);
      v173 = sub_1CEFD0DF0(v169, v171, &v303);
      v174 = v171;
      v129 = v298;
      v174, v175, v176, v177, v178, v179, v180, v181;
      *(v167 + 4) = v173;
      *(v167 + 12) = 2080;
      v182 = v157;
      v183 = v172;
      *(v167 + 14) = sub_1CEFD0DF0(v282, v182, &v303);
      _os_log_impl(&dword_1CEFC7000, v158, v273, "⚔️  associate thumbnail %s for loser %s", v167, 0x16u);
      swift_arrayDestroy();
      v184 = v168;
      v130 = v299;
      MEMORY[0x1D386CDC0](v184, -1, -1);
      MEMORY[0x1D386CDC0](v167, -1, -1);

      v185 = v270;
    }

    else
    {

      v183 = *(v130 + 8);
      v183(v156, v129);
      v185 = v155;
    }

    v275(v185, v289);
    v186 = sub_1CF9E5928();
    v187 = sub_1CF9E5928();
    v56 = v290;
    if (v285 >> 60 == 15)
    {
      v188 = 0;
    }

    else
    {
      v188 = sub_1CF9E5B48();
    }

    *&v303 = 0;
    v189 = [v186 fp:v187 associateThumbnailToVersionAtURL:v188 thumbnailMetadata:&v303 error:?];

    if (v189)
    {
      v298 = v19;
      v190 = v303;
      v148 = v129;
      v183(v274, v129);
      goto LABEL_20;
    }

    v219 = v303;

    v150 = sub_1CF9E57F8();

    swift_willThrow();
    v183(v274, v129);
    v183(v286, v129);
    goto LABEL_22;
  }

  v151 = v303;

  v150 = sub_1CF9E57F8();

  swift_willThrow();
  v152 = v283;
  v56 = v290;
LABEL_23:
  v220 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v221 = v278;
  (*(v130 + 16))(v278, v56, v129);
  v222 = v150;
  v223 = sub_1CF9E6108();
  v224 = sub_1CF9E72A8();

  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    LODWORD(v290) = v224;
    v226 = v225;
    v286 = swift_slowAlloc();
    v298 = swift_slowAlloc();
    *&v303 = v298;
    *v226 = 136446466;
    v227 = sub_1CF9E5928();
    v228 = v129;
    v229 = [v227 fp_shortDescription];

    v230 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v232 = v231;

    (*(v130 + 8))(v221, v228);
    v233 = sub_1CEFD0DF0(v230, v232, &v303);
    v232, v234, v235, v236, v237, v238, v239, v240;
    *(v226 + 4) = v233;
    *(v226 + 12) = 2112;
    swift_getErrorValue();
    v241 = Error.prettyDescription.getter(v301, v302);
    *(v226 + 14) = v241;
    v242 = v286;
    *v286 = v241;
    _os_log_impl(&dword_1CEFC7000, v223, v290, "failed to add version to %{public}s: %@", v226, 0x16u);
    sub_1CEFCCC44(v242, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v242, -1, -1);
    v243 = v298;
    __swift_destroy_boxed_opaque_existential_1(v298);
    MEMORY[0x1D386CDC0](v243, -1, -1);
    MEMORY[0x1D386CDC0](v226, -1, -1);

    (*(v288 + 8))(v283, v289);
  }

  else
  {

    (*(v130 + 8))(v221, v129);
    (*(v288 + 8))(v152, v289);
  }

  v217 = v297;
  v218 = v293;
  v244 = v280;
  *v280 = v150;
  swift_storeEnumTagMultiPayload();
  v245 = v150;
  sub_1CF8D0B74(v244, v294, v296, v295, v217);

  sub_1CEFCCC44(v244, &qword_1EC4BF008, &unk_1CFA01CB0);
LABEL_27:

  v217, v246, v247, v248, v249, v250, v251, v252;

  sub_1CEFE48D8(v284, v285);
  v292, v253, v254, v255, v256, v257, v258, v259;
  v291, v260, v261, v262, v263, v264, v265, v266;
  return sub_1CEFCCC44(v218, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF8D0B74(uint64_t a1, void (*a2)(uint64_t, uint64_t, id, id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v26 = a2;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v24 - v14);
  sub_1CEFCCBDC(a1, &v24 - v14, &qword_1EC4BF008, &unk_1CFA01CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    v17 = *v15;
    v26(0, 0, 0, v16);
  }

  else
  {
    v18 = v26;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF010, &unk_1CFA01890);
    (*(v7 + 32))(v12, v15 + *(v19 + 48), v6);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    (*(v7 + 16))(v9, v12, v6);
    v20 = (v7 + 8);
    v21 = sub_1CF02BFF8(v9, 1);
    v22 = v21;
    v18(v24, v25, v21, 0);

    v23 = *v20;
    (*v20)(v12, v6);
    v23(v15, v6);
  }
}

void sub_1CF8D10C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_1CF9E6888();
    if (a4)
    {
LABEL_3:
      v9 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, v8, a3);
}

uint64_t FPDDomainFPFSBackend.uploadLocalVersionOfItem(at:policy:request:completionHandler:)(uint64_t a1, void *a2, void *a3, void (*a4)(id), uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(v11 + 48);
  v16 = *(v11 + 64);
  v17 = sub_1CF9E5A58();
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  *(v14 + v15) = a2;
  *(v14 + v16) = a3;

  v18 = v5;

  v19 = a3;
  sub_1CF8F10A4(a1, 1, v12 | 0xA000000000000004, v18, a4, a5, v18, a2, v12 | 0xA000000000000004);
}

void sub_1CF8D1290(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = a1;
    v13[5] = a6;
    v13[6] = a7;
    v14 = a1;
    swift_retain_n();
    v15 = v14;
    sub_1CEFD09A0(a7);
    sub_1CEFD4024("uploadLocalVersionOfItem(at:policy:request:completionHandler:)", 62, 2, sub_1CF90324C, v12, sub_1CF90330C, v13);
  }

  else
  {
    a3(a2);
  }
}

double sub_1CF8D13D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v12;

  v14 = sub_1CEFD4E9C([a4 identifier]);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF5523F4;
  *(v15 + 24) = v13;
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a1;
  v16[4] = a6;
  v16[5] = sub_1CF5523F4;
  v16[6] = v13;
  v16[7] = a5;
  swift_retain_n();

  sub_1CEFD09A0(a6);
  sub_1CF7AAF88("forceUpload(for:policy:userRequest:completionHandler:)", 54, 2, 2, sub_1CF90324C, v15, sub_1CF8F9EDC, v16);

  return result;
}

double FPDDomainFPFSBackend.getNumberOfNonMaterializedFiles(withCompletionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF903484;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v6[2] = sub_1CF903484;
  v6[3] = v4;
  v6[4] = a1;
  v6[5] = a2;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFD4024("getNumberOfNonMaterializedFiles(withCompletionHandler:)", 55, 2, sub_1CF90324C, v5, sub_1CF8F3760, v6);

  return result;
}

double sub_1CF8D1890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a4;
  v11[4] = a5;

  sub_1CF7AAF88("getNumberOfNonMaterializedFiles(withCompletionHandler:)", 55, 2, 2, sub_1CF90324C, v10, sub_1CF8F9E5C, v11);

  return result;
}

void sub_1CF8D1994(void *a1, uint64_t a2, void (*a3)(id, void, __n128))
{
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();

  v6 = sub_1CF4B10C8(v5);

  if (!v3)
  {
    (a3)(v6, 0);
  }
}

double sub_1CF8D1BF0(void *a1, uint64_t a2, void (*a3)(void *, id), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = swift_allocObject();
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;
      v18 = a1;

      if (sub_1CEFF96D0(v18))
      {
        v19 = sub_1CF9E6F08();
        (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
        v20 = swift_allocObject();
        v20[2] = 0;
        v20[3] = 0;
        v20[4] = v18;
        v20[5] = v16;
        v20[6] = a6;
        v20[7] = sub_1CF024AE4;
        v20[8] = v17;
        sub_1CEFD09A0(a6);
        sub_1CF6FCFEC(0, 0, v14, &unk_1CFA181B0, v20);
      }

      else
      {

        a3(a1, 0);
      }
    }

    else
    {
      v22 = a1;
      v23 = FPDomainUnavailableError();
      a3(0, v23);
    }
  }

  else
  {
    (a3)(0, a2, v12);
  }

  return result;
}

double FPDDomainFPFSBackend.disableDBQueryStatistics(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("disableDBQueryStatistics(completionHandler:)", 44, 2, sub_1CF90324C, v4, sub_1CF8F376C, v5);

  return result;
}

uint64_t sub_1CF8D1EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(*(a1 + 16) + qword_1EDEBBDB0);
  v4 = OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = 0;
  v5, v6, v7, v8, v9, v10, v11, v12;
  return a2(0);
}

double FPDDomainFPFSBackend.resetDBQueryStatistics(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("resetDBQueryStatistics(completionHandler:)", 42, 2, sub_1CF90324C, v4, sub_1CF8F3774, v5);

  return result;
}

uint64_t sub_1CF8D2188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(*(a1 + 16) + qword_1EDEBBDB0);
  v4 = sub_1CF4E308C(MEMORY[0x1E69E7CC0]);
  v5 = OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = v4;

  v6, v7, v8, v9, v10, v11, v12, v13;
  return a2(0);
}

double FPDDomainFPFSBackend.getDBQueryStatistics(withQueryPlan:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CF8F377C;
  *(v8 + 24) = v6;
  swift_retain_n();

  sub_1CEFD4024("getDBQueryStatistics(withQueryPlan:completionHandler:)", 54, 2, sub_1CF8F37B4, v8, sub_1CF8F37A8, v7);

  return result;
}

double sub_1CF8D2484(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a4;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF903260;
  *(v10 + 24) = v8;
  swift_retain_n();

  sub_1CF7AAF88("getDBQueryStatistics(withQueryPlan:completionHandler:)", 54, 2, 2, sub_1CF7BA950, v10, sub_1CF8F9E38, v9);

  return result;
}

void sub_1CF8D25C0(uint64_t a1, uint64_t a2, char a3, void (*a4)(_TtC18FileProviderDaemon8FSTester *, id))
{
  v6 = *(*(a2 + 16) + qword_1EDEBBDB0);
  sub_1CF32A694(a3);
  v8 = v7;

  if (v8)
  {
    a4(v8, 0);
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v16 = FPNotSupportedError();
    a4(0, v16);
  }
}

void sub_1CF8D27F4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, &qword_1EC4C4C08, 0x1E6967400);
    v5 = sub_1CF9E6618();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

double FPDDomainFPFSBackend.enumerateSearchResult(forRequest:lifetimeExtender:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v4;

  v11 = a1;
  swift_unknownObjectRetain();
  sub_1CEFD4024("enumerateSearchResult(forRequest:lifetimeExtender:completionHandler:)", 69, 2, nullsub_1, 0, sub_1CF8F37B8, v9);

  return result;
}

void sub_1CF8D2984(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, void *a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [objc_opt_self() defaultStore];
    v13 = [v12 searchOnServerMaxNumberOfResults];

    v14 = [a5 maximumNumberOfResultsPerPage];
    if (v14 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = [a5 query];
    if (!v16)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;
      v16 = sub_1CF9E6888();
      v18, v19, v20, v21, v22, v23, v24, v25;
    }

    v26 = [a5 desiredNumberOfResults];
    v27 = [objc_allocWithZone(MEMORY[0x1E6967418]) initWithQuery:v16 desiredNumberOfResults:v26 maximumNumberOfResultsPerPage:v15];

    v28 = [v11 extensionBackend];
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF03FCFC;
    aBlock[3] = &block_descriptor_2246;
    v29 = _Block_copy(aBlock);

    [v28 enumerateSearchResultForRequest:v27 lifetimeExtender:a6 completionHandler:v29];
    _Block_release(v29);

    swift_unknownObjectRelease();
  }

  else
  {
    v30 = FPDomainUnavailableError();
    a3(0, v30);
  }
}

uint64_t sub_1CF8D2BB8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

double FPDDomainFPFSBackend.triggerDatabaseError(_:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a1;
  swift_retain_n();
  v10 = v4;
  v11 = a1;
  sub_1CEFD4024("triggerDatabaseError(_:request:completionHandler:)", 50, 2, sub_1CF90324C, v8, sub_1CF8F37D0, v9);

  return result;
}

void sub_1CF8D2E6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v110 = a5;
  v98 = sub_1CF9E63D8();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v95 - v13;
  v99 = sub_1CF9E6068();
  v14 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v103 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v95 - v20;
  v101 = type metadata accessor for Signpost(0);
  v104 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v106 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v105 = (&v95 - v24);
  v100 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v95 - v27;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = *(a1 + 16);
  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = v28;
  v30[4] = a2;
  v30[5] = a3;
  v30[6] = a4;
  v31 = swift_allocObject();
  v109 = v31;
  v32 = v110;
  *(v31 + 16) = v28;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1CF8F9DC0;
  *(v33 + 24) = v30;
  v113 = v33;
  v111 = v28;
  v112 = v29;
  swift_retain_n();

  v34 = a2;

  v35 = v32;
  v110 = v30;

  v108 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDEBBE40;
  v37 = v99;
  (*(v14 + 56))(v21, 1, 1, v99);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v38 = sub_1CF9E7988();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  v48 = aBlock;
  v102 = v21;
  sub_1CEFCCBDC(v21, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v49 = *(v14 + 48);
  if (v49(v18, 1, v37) == 1)
  {
    v50 = v36;
    v51 = v103;
    sub_1CF9E6048();
    if (v49(v18, 1, v37) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v51 = v103;
    (*(v14 + 32))(v103, v18, v37);
  }

  v52 = v114;
  (*(v14 + 16))(v114, v51, v37);
  v53 = v101;
  *(v52 + *(v101 + 20)) = v36;
  v54 = v52 + *(v53 + 24);
  *v54 = "DB queue wait";
  *(v54 + 8) = 13;
  *(v54 + 16) = 2;
  v55 = v36;
  v56 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CF9FA450;
  *(v57 + 56) = MEMORY[0x1E69E6158];
  *(v57 + 64) = sub_1CEFD51C4();
  *(v57 + 32) = v48;
  sub_1CF9E6028(v56, &dword_1CEFC7000, v55, "DB queue wait", 13, 2, v52, "%s", 2);
  v57, v58, v59, v60, v61, v62, v63, v64;
  (*(v14 + 8))(v51, v37);
  sub_1CEFCCC44(v102, &unk_1EC4BED20, &unk_1CFA00700);
  v102 = *(v112 + 168);
  v103 = *(v112 + 64);
  v101 = sub_1CF9E6448();
  v99 = *(v101 - 8);
  (*(v99 + 56))(v115, 1, 1, v101);
  v65 = v105;
  sub_1CEFDA34C(v52, v105, type metadata accessor for Signpost);
  v66 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v67 = (v100 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v104 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v65, v68 + v66, type metadata accessor for Signpost);
  v69 = (v68 + v67);
  v105 = sub_1CF4814BC;
  v70 = v113;
  *v69 = sub_1CF4814BC;
  v69[1] = v70;
  v71 = v106;
  sub_1CEFDA34C(v52, v106, type metadata accessor for Signpost);
  v72 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 25) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  sub_1CEFDA0C4(v71, v75 + v66, v104);
  v76 = (v75 + v67);
  v77 = v99;
  *v76 = sub_1CF045408;
  v76[1] = 0;
  *(v75 + v72) = v112;
  v78 = v75 + v73;
  *v78 = "triggerDatabaseError(_:request:completionHandler:)";
  *(v78 + 8) = 50;
  *(v78 + 16) = 2;
  v79 = (v75 + v74);
  *v79 = v105;
  v79[1] = v70;
  v80 = (v75 + ((v74 + 23) & 0xFFFFFFFFFFFFFFF8));
  v81 = v109;
  *v80 = sub_1CF8F9DD8;
  v80[1] = v81;
  v82 = swift_allocObject();
  v82[2] = sub_1CF903308;
  v82[3] = v68;
  v83 = v102;
  v82[4] = v102;
  swift_retain_n();

  v112 = v68;
  v84 = v101;

  v85 = fpfs_current_log();
  v106 = *(v83 + 16);
  v86 = v107;
  sub_1CEFCCBDC(v115, v107, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v77 + 48))(v86, 1, v84) == 1)
  {
    sub_1CEFCCC44(v86, &unk_1EC4BE370, qword_1CFA01B30);
    v87 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v88 = v96;
    sub_1CF9E6438();
    (*(v77 + 8))(v86, v84);
    v87 = sub_1CF9E63C8();
    (*(v97 + 8))(v88, v98);
  }

  v89 = swift_allocObject();
  v89[2] = v85;
  v89[3] = sub_1CF4858EC;
  v89[4] = v75;
  v119 = sub_1CF2BA17C;
  v120 = v89;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v117 = sub_1CEFCA444;
  v118 = &block_descriptor_2231;
  v90 = _Block_copy(&aBlock);
  v91 = v85;

  v119 = sub_1CF2BA180;
  v120 = v82;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v117 = sub_1CEFCA444;
  v118 = &block_descriptor_2234;
  v92 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v106, v103, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v87, v90, v92);
  _Block_release(v92);
  _Block_release(v90);

  sub_1CEFCCC44(v115, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v114, type metadata accessor for Signpost);
  v93 = v108;
  v94 = fpfs_adopt_log();
}

double sub_1CF8D3A14(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a2 + 16) + 64);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v13 = v11;

  v14 = a4;

  v15 = a1;
  sub_1CF01001C(0, "triggerDatabaseError(_:request:completionHandler:)", 50, 2, sub_1CF8F9DF4, v12);

  return result;
}

void sub_1CF8D3AF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E63A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E6448();
  v14 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v19 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    aBlock[4] = sub_1CF8F9E0C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_2243;
    v18 = _Block_copy(aBlock);

    sub_1CF9E63F8();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v16, v13, v18);
    _Block_release(v18);
    (*(v11 + 8))(v13, v10);
    (*(v14 + 8))(v16, v20);
  }

  else
  {
    a3(a5);
  }
}

id sub_1CF8D3E0C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  swift_willThrow();
  return a3;
}

double FPDDomainFPFSBackend.sendDiagnosticsFromFPCK(forItemIDs:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1CF9E6F08();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;
  sub_1CEFE42D4(a1, a2);
  sub_1CF6FCFEC(0, 0, v7, &unk_1CFA17B58, v9);

  return result;
}

uint64_t sub_1CF8D40EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_1CF9E6118();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF8D41BC, 0, 0);
}

uint64_t sub_1CF8D41BC(uint64_t a1)
{
  v2 = *(v1[7] + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
  v1[14] = v2;
  if (v2)
  {
    sub_1CF9E5688();
    swift_allocObject();

    sub_1CF9E5678();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    sub_1CF1E1244();
    sub_1CF9E5668();

    v11 = v1[5];
    v1[15] = v11;
    v12 = swift_task_alloc();
    v1[16] = v12;
    *v12 = v1;
    v12[1] = sub_1CF8D4550;

    return sub_1CF7F8760(v11, 0, 0, 0, 0x2000000);
  }

  else
  {
    v3 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v4 = sub_1CF9E6108();
    v5 = sub_1CF9E7288();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v1[13];
    v8 = v1[10];
    v9 = v1[11];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CEFC7000, v4, v5, "Couldn't send TTR, fpDiagnosticsManager resolved to nil", v10, 2u);
      MEMORY[0x1D386CDC0](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_1CF8D4550()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  *(v2 + 120), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v10 = sub_1CF8D46F4;
  }

  else
  {
    v10 = sub_1CF8D4684;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1CF8D4684()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF8D46F4(uint64_t a1)
{
  v2 = v1[17];
  v3 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v4 = v2;
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E7288();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_getErrorValue();
    v9 = Error.prettyDescription.getter(v1[3], v1[4]);
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "Error starting TTR: %@", v7, 0xCu);
    sub_1CEFCCC44(v8, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v8, -1, -1);
    MEMORY[0x1D386CDC0](v7, -1, -1);
  }

  else
  {
  }

  (*(v1[11] + 8))(v1[12], v1[10]);

  v10 = v1[1];

  return v10();
}

uint64_t sub_1CF8D49E8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  sub_1CF9E5248();
  v2[11] = swift_task_alloc();
  v3 = sub_1CF9E5268();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_1CF9E5A58();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = sub_1CF9E6118();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = type metadata accessor for VFSItem(0);
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF8D4C38, 0, 0);
}

uint64_t sub_1CF8D4C38()
{
  v65 = v0;
  if (objc_sync_enter(*(v0 + 80)))
  {
    v1 = sub_1CF1C546C;
    v2 = 343;
    goto LABEL_5;
  }

  v3 = *(v0 + 80);
  v4 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  if (objc_sync_exit(v3))
  {
    v1 = sub_1CF1C5468;
    v2 = 347;
LABEL_5:
    v5 = *(v0 + 80);
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;

    fp_preconditionFailure(_:file:line:)(v1, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, v2);
  }

  if (!v4)
  {
    v7 = *(v0 + 80);
    *(swift_task_alloc() + 16) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60);
    sub_1CF9E7398();

    v4 = *(v0 + 64);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  *(v0 + 216) = v4;
  v8 = *(*(v0 + 80) + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
  *(v0 + 224) = v8;
  if (!v8)
  {

LABEL_15:
    v39 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v40 = sub_1CF9E6108();
    v41 = sub_1CF9E72A8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1CEFC7000, v40, v41, "Couldn't trigger full feedback flow, fpfs nil", v42, 2u);
      MEMORY[0x1D386CDC0](v42, -1, -1);
    }

    v44 = *(v0 + 152);
    v43 = *(v0 + 160);
    v45 = *(v0 + 144);
    v47 = *(v0 + 104);
    v46 = *(v0 + 112);
    v48 = *(v0 + 96);

    (*(v44 + 8))(v43, v45);
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v47 + 8))(v46, v48);
    swift_willThrow();
    goto LABEL_23;
  }

  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 72);

  sub_1CF010CE0(v13, 1, 1, 0, v9);
  sub_1CEFCCBDC(v9, v10, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v17 = *(v0 + 72);
    sub_1CEFCCC44(*(v0 + 200), &unk_1EC4BEC00, &unk_1CF9FCB60);
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v15 + 16))(v14, v17, v16);
    v19 = sub_1CF9E6108();
    v63 = sub_1CF9E72A8();
    v20 = os_log_type_enabled(v19, v63);
    v21 = *(v0 + 168);
    v22 = *(v0 + 144);
    v23 = *(v0 + 152);
    v25 = *(v0 + 128);
    v24 = *(v0 + 136);
    v26 = *(v0 + 120);
    if (v20)
    {
      log = v19;
      v27 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64 = v61;
      *v27 = 136315138;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v59 = v22;
      v60 = v21;
      v28 = sub_1CF9E7F98();
      v30 = v29;
      (*(v25 + 8))(v24, v26);
      v31 = sub_1CEFD0DF0(v28, v30, &v64);
      v30, v32, v33, v34, v35, v36, v37, v38;
      *(v27 + 4) = v31;
      _os_log_impl(&dword_1CEFC7000, log, v63, "Failed to find VFSItem for domain, from URL: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);

      (*(v23 + 8))(v60, v59);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
      (*(v23 + 8))(v21, v22);
    }

    v54 = *(v0 + 208);
    v56 = *(v0 + 104);
    v55 = *(v0 + 112);
    v57 = *(v0 + 96);
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v56 + 8))(v55, v57);
    swift_willThrow();

    sub_1CEFCCC44(v54, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_23:

    v58 = *(v0 + 8);

    return v58();
  }

  v49 = *(v0 + 192);
  sub_1CEFDA0C4(*(v0 + 200), v49, type metadata accessor for VFSItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
  inited = swift_initStackObject();
  *(v0 + 232) = inited;
  *(inited + 16) = xmmword_1CF9FA450;
  v51 = *(v49 + 8);
  *(inited + 32) = *v49;
  *(inited + 40) = v51;
  *(inited + 41) = 0;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  *v52 = v0;
  v52[1] = sub_1CF8D53B4;

  return sub_1CF7F8760(inited, 0, 0, 0, 0x2000000);
}

uint64_t sub_1CF8D53B4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 232);
  swift_setDeallocating();
  sub_1CEFCCC44(v3 + 32, &unk_1EC4BFC10, &qword_1CF9FE510);
  if (v0)
  {
    v4 = sub_1CF8D561C;
  }

  else
  {
    v4 = sub_1CF8D5504;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CF8D5504()
{
  v1 = v0[26];
  v2 = v0[24];

  sub_1CEFD5338(v2, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v1, &unk_1EC4BEC00, &unk_1CF9FCB60);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CF8D561C()
{
  v1 = v0[26];
  v2 = v0[24];

  sub_1CEFD5338(v2, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v1, &unk_1EC4BEC00, &unk_1CF9FCB60);

  v3 = v0[1];

  return v3();
}

double FPDDomainFPFSBackend.requestDiagnosticCollectionForItem(with:errorReason:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;
  swift_retain_n();
  v11 = v4;
  v12 = a1;
  v13 = a2;
  sub_1CEFD4024("requestDiagnosticCollectionForItem(with:errorReason:completionHandler:)", 71, 2, sub_1CF90324C, v9, sub_1CF8F38A4, v10);

  return result;
}

void sub_1CF8D5834(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  v8 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = a1;
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = v8;
    v13[7] = a6;
    swift_retain_n();
    swift_retain_n();
    v14 = a5;

    v15 = a6;
    sub_1CF7AAF88("requestDiagnosticCollectionForItem(with:errorReason:completionHandler:)", 71, 2, 2, sub_1CF90324C, v12, sub_1CF8F9C94, v13);
  }

  else
  {
    v16 = FPNotSupportedError();
    a3();
  }
}

double sub_1CF8D59CC(void *a1, void *a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, void *a7)
{
  v36 = a6;
  v37 = a7;
  v38 = a4;
  v39 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1CEFD4E9C([a2 identifier]);
  v16 = v46;
  sub_1CF554678(*(a3 + 16), 0, v15, v13, v14, v44);

  if (!v16)
  {
    v34 = a2;
    v35 = v12;
    v18 = v44[0];
    v19 = LOBYTE(v44[1]);
    v20 = BYTE1(v44[1]);
    v21 = a1[3];
    v46 = a1[4];
    v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
    v23 = v20;
    v24 = v19;
    v25 = v18;
    v41 = v18;
    v42 = v24;
    v43 = v23;

    sub_1CF68DB40(&v41, v22, v21, v46, v44);

    memcpy(v40, v44, sizeof(v40));
    if (sub_1CF08B99C(v40) == 1)
    {
      v26 = [v34 identifier];
      v27 = FPItemNotFoundError();

      v38(v27);
      sub_1CEFD0994(v25, v24, v23);
    }

    else
    {
      memcpy(v45, v40, sizeof(v45));
      v28 = sub_1CF9E6F08();
      v29 = v35;
      (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      v31 = v37;
      *(v30 + 32) = v36;
      *(v30 + 40) = v25;
      *(v30 + 48) = v24;
      *(v30 + 49) = v23;
      *(v30 + 56) = v31;
      memcpy((v30 + 64), v45, 0x208uLL);
      v32 = v39;
      *(v30 + 584) = v38;
      *(v30 + 592) = v32;

      v33 = v31;

      sub_1CF81241C(0, 0, v29, &unk_1CFA18120, v30);
    }
  }

  return result;
}

uint64_t sub_1CF8D5CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v10;
  *(v8 + 56) = v11;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 80) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1CF8D5CF4, 0, 0);
}

uint64_t sub_1CF8D5CF4()
{
  v1 = *(v0 + 80);
  v2 = sub_1CF38B634();
  v4 = v3;
  *(v0 + 64) = v3;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1CF8D5DD4;
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  return sub_1CF7F92B0(v7, v1 & 0x1FF, v6, v2, v4);
}

uint64_t sub_1CF8D5DD4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;

  v2, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {
    v11 = *(v3 + 8);

    return v11();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CF8D5F20, 0, 0);
  }
}

uint64_t sub_1CF8D5F20()
{
  (*(v0 + 48))(0);
  v1 = *(v0 + 8);

  return v1();
}

double FPDDomainFPFSBackend.triggerFeedbackApprovalRequest(forItemURL:domain:uiOnly:completionHandler:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v27 = a4;
  v25 = a3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24[-v13];
  v15 = sub_1CF9E6F08();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v25;
  *(v18 + 40) = v5;
  (*(v9 + 32))(v18 + v16, v11, v8);
  v19 = (v18 + v17);
  v20 = v26;
  *v19 = v27;
  v19[1] = a5;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v21 = v5;

  v22 = v20;
  sub_1CF6FCFEC(0, 0, v14, &unk_1CFA17B68, v18);

  return result;
}

uint64_t sub_1CF8D6330(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v10;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 16) = a5;
  *(v8 + 96) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CF8D6364, 0, 0);
}

uint64_t sub_1CF8D6364()
{
  if (*(v0 + 96) == 1)
  {
    v1 = [*(v0 + 48) provider];
    if (v1)
    {
      v2 = *(v0 + 48);
      v3 = v1;
      v4 = [v1 descriptor];

      v5 = [v4 localizedName];
      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v8 = v7;

      v9 = [v2 providerDomainID];
      type metadata accessor for FPFeedbackUIManager();
      v10 = swift_allocObject();
      *(v0 + 56) = v10;
      v10[2] = v6;
      v10[3] = v8;
      v10[4] = v9;
      v11 = sub_1CF9E58E8();
      v13 = v12;
      *(v0 + 64) = v12;
      v14 = swift_task_alloc();
      *(v0 + 72) = v14;
      *v14 = v0;
      v14[1] = sub_1CF8D659C;

      return sub_1CF36E168(v11, v13, 0);
    }

    else
    {
      (*(v0 + 32))();
      v18 = *(v0 + 8);

      return v18();
    }
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1CF8D6738;
    v17 = *(v0 + 24);

    return sub_1CF8D49E8(v17);
  }
}

uint64_t sub_1CF8D659C(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 97) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return MEMORY[0x1EEE6DFA0](sub_1CF8D66BC, 0, 0);
}

uint64_t sub_1CF8D66BC()
{
  (*(v0 + 32))(*(v0 + 97) == 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF8D6738()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1CF8D68B4;
  }

  else
  {
    v2 = sub_1CF8D684C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CF8D684C()
{
  (*(v0 + 32))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF8D68B4()
{
  v1 = *(v0 + 88);
  (*(v0 + 32))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t FPDDomainFPFSBackend.launchFeedback(for:itemIdentifier:triggeringError:when:useDiagnostic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1CF0262EC;

  return sub_1CF8F5B44(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1CF8D6EA8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, void *a7)
{
  v7[3] = a3;
  v7[4] = a7;
  v7[2] = a1;
  v13 = sub_1CF9E5CF8();
  v7[5] = v13;
  v7[6] = *(v13 - 8);
  v14 = swift_task_alloc();
  v7[7] = v14;
  v7[8] = _Block_copy(a6);
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;
  v7[9] = v16;
  sub_1CF9E5CB8();
  v18 = a1;
  v19 = a3;
  v20 = a7;
  v21 = swift_task_alloc();
  v7[10] = v21;
  *v21 = v7;
  v21[1] = sub_1CF8D7044;

  return sub_1CF8F5B44(v18, v15, v17, v19, v14, a5);
}

uint64_t sub_1CF8D7044()
{
  v1 = *v0;
  v2 = *v0;
  v21 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v8 = *(*v0 + 16);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);

  v21, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v1 + 64);
  if (v22)
  {
    v18 = sub_1CF9E57E8();

    (*(v17 + 16))(v17, v18);
  }

  else
  {
    (*(v17 + 16))(*(v1 + 64), 0);
  }

  _Block_release(*(v2 + 64));

  v19 = *(v9 + 8);

  return v19();
}

void FPDDomainFPFSBackend.getSavedDiagnostics(_:)(void (*a1)(void, id))
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v13 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v12 + v13, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CEFCCC44(v4, &unk_1EC4BE310, qword_1CF9FCBE0);
    v14 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    v19(0, v14);
  }

  else
  {
    v15 = v19;
    (*(v6 + 32))(v11, v4, v5);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    (*(v6 + 16))(v8, v11, v5);
    v16 = sub_1CF02BFF8(v8, 0);
    v17 = v16;
    v15(v16, 0);

    (*(v6 + 8))(v11, v5);
  }
}

double FPDDomainFPFSBackend.clearDiagnosticState(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  swift_retain_n();
  v7 = v2;
  sub_1CEFD4024("clearDiagnosticState(_:)", 24, 2, sub_1CF90324C, v5, sub_1CF8F6210, v6);

  return result;
}

void sub_1CF8D76D0(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager);
  if (v11)
  {
    v12 = sub_1CF9E6F08();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;
    v13[5] = a3;
    v13[6] = a4;

    sub_1CF6FCFEC(0, 0, v10, &unk_1CFA18108, v13);
  }

  else
  {
    a3(0, v8);
  }
}

uint64_t sub_1CF8D7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CEFCCCEC(&unk_1EC4BFC00, &qword_1EC4BFBF8, &unk_1CFA05340, &unk_1CFA00D38);
  v8 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF8D78E8, v8, v7);
}

uint64_t sub_1CF8D78E8()
{
  v1 = *(*(v0 + 40) + 40);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  (*(v3 + 24))(*(v1 + 56), *(v1 + 64), v2, v3);
  *(v0 + 64) = 0;
  v4 = sub_1CF4E3F84(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v5 = *(v1 + 80);
  *(v1 + 80) = v4;
  v5, v6, v7, v8, v9, v10, v11, v12;
  *(v1 + 72) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1CF8D79E8, 0, 0);
}

uint64_t sub_1CF8D79E8()
{
  (*(v0 + 48))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF8D7A50()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v1;
  v2(v1);

  (v0[6])(0);
  v4 = v0[1];

  return v4();
}

void sub_1CF8D7C30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v92 = a4;
  v90 = a2;
  v91 = a3;
  v93 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v89);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v88 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v88 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE740, &qword_1CFA05940);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  sub_1CEFCCBDC(v93, &v88 - v16, &qword_1EC4BE740, &qword_1CFA05940);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFE55D0(v17, v14, &qword_1EC4BFC88, &qword_1CFA053D8);
    sub_1CEFCCBDC(v14, v11, &qword_1EC4BFC88, &qword_1CFA053D8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
      {
        v11[3], v37, v38, v39, v40, v41, v42, v43;
        goto LABEL_25;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920);
        *(v11 + *(v77 + 48) + 8), v78, v79, v80, v81, v82, v83, v84;
        v53 = v11;
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
        v45 = *(v44 + 48);
        *(v11 + *(v44 + 80) + 8), v46, v47, v48, v49, v50, v51, v52;
        sub_1CEFCCC44(v11 + v45, &unk_1EC4BE360, &qword_1CF9FE650);
        v53 = v11;
LABEL_19:
        sub_1CEFCCC44(v53, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_25:
        sub_1CF821E78(v14, v91, v92);
        v85 = &qword_1EC4BFC88;
        v86 = &qword_1CFA053D8;
        v87 = v14;
        goto LABEL_26;
      }
    }

    sub_1CEFCCC44(v14, &qword_1EC4BFC88, &qword_1CFA053D8);
    v11[3], v62, v63, v64, v65, v66, v67, v68;
    return;
  }

  sub_1CEFE55D0(v17, v8, &qword_1EC4BFC80, &qword_1CFA053D0);
  sub_1CEFCCBDC(v8, v5, &qword_1EC4BFC80, &qword_1CFA053D0);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      sub_1CEFCCC44(v8, &qword_1EC4BFC80, &qword_1CFA053D0);
      v61 = *(v5 + 2);
      goto LABEL_21;
    }

    if (v18 != 4)
    {
      *(v5 + 2), v19, v20, v21, v22, v23, v24, v25;

      goto LABEL_23;
    }

LABEL_12:
    sub_1CEFCCC44(v8, &qword_1EC4BFC80, &qword_1CFA053D0);
    v61 = *(v5 + 3);
LABEL_21:
    v61, v54, v55, v56, v57, v58, v59, v60;

    return;
  }

  if (!v18)
  {
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980);
    *&v5[*(v69 + 48) + 8], v70, v71, v72, v73, v74, v75, v76;
    v35 = v5;
    goto LABEL_17;
  }

  if (v18 != 1)
  {
    goto LABEL_12;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
  v27 = *(v26 + 48);
  *&v5[*(v26 + 80) + 8], v28, v29, v30, v31, v32, v33, v34;
  sub_1CEFCCC44(&v5[v27], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v35 = v5;
LABEL_17:
  sub_1CEFCCC44(v35, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_23:
  sub_1CF8228C8(v8, v91, v92);
  v85 = &qword_1EC4BFC80;
  v86 = &qword_1CFA053D0;
  v87 = v8;
LABEL_26:
  sub_1CEFCCC44(v87, v85, v86);
}

void sub_1CF8D80FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v92 = a4;
  v90 = a2;
  v91 = a3;
  v93 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  MEMORY[0x1EEE9AC00](v89);
  v5 = (&v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v88 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v88 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA0, &unk_1CFA05930);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  sub_1CEFCCBDC(v93, &v88 - v16, &qword_1EC4C4EA0, &unk_1CFA05930);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFE55D0(v17, v14, &qword_1EC4BFC80, &qword_1CFA053D0);
    sub_1CEFCCBDC(v14, v11, &qword_1EC4BFC80, &qword_1CFA053D0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1CEFCCC44(v14, &qword_1EC4BFC80, &qword_1CFA053D0);
        v68 = *(v11 + 2);
        goto LABEL_21;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *(v11 + 2), v37, v38, v39, v40, v41, v42, v43;

        goto LABEL_25;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980);
        *&v11[*(v77 + 48) + 8], v78, v79, v80, v81, v82, v83, v84;
        v53 = v11;
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
        v45 = *(v44 + 48);
        *&v11[*(v44 + 80) + 8], v46, v47, v48, v49, v50, v51, v52;
        sub_1CEFCCC44(&v11[v45], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v53 = v11;
LABEL_19:
        sub_1CEFCCC44(v53, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_25:
        sub_1CF8228C8(v14, v91, v92);
        v85 = &qword_1EC4BFC80;
        v86 = &qword_1CFA053D0;
        v87 = v14;
        goto LABEL_26;
      }
    }

    sub_1CEFCCC44(v14, &qword_1EC4BFC80, &qword_1CFA053D0);
    v68 = *(v11 + 3);
LABEL_21:
    v68, v61, v62, v63, v64, v65, v66, v67;

    return;
  }

  sub_1CEFE55D0(v17, v8, &qword_1EC4BFC88, &qword_1CFA053D8);
  sub_1CEFCCBDC(v8, v5, &qword_1EC4BFC88, &qword_1CFA053D8);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 > 2)
  {
    if (v18 != 3 && v18 != 4)
    {
      v5[3], v19, v20, v21, v22, v23, v24, v25;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (!v18)
  {
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920);
    *(v5 + *(v69 + 48) + 8), v70, v71, v72, v73, v74, v75, v76;
    v35 = v5;
    goto LABEL_17;
  }

  if (v18 != 1)
  {
LABEL_12:
    sub_1CEFCCC44(v8, &qword_1EC4BFC88, &qword_1CFA053D8);
    v5[3], v54, v55, v56, v57, v58, v59, v60;
    return;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
  v27 = *(v26 + 48);
  *(v5 + *(v26 + 80) + 8), v28, v29, v30, v31, v32, v33, v34;
  sub_1CEFCCC44(v5 + v27, &unk_1EC4BE360, &qword_1CF9FE650);
  v35 = v5;
LABEL_17:
  sub_1CEFCCC44(v35, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_23:
  sub_1CF821E78(v8, v91, v92);
  v85 = &qword_1EC4BFC88;
  v86 = &qword_1CFA053D8;
  v87 = v8;
LABEL_26:
  sub_1CEFCCC44(v87, v85, v86);
}

void sub_1CF8D85C8(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v49 = *a1;
  v50 = v4;
  v5 = a1[5];
  v53 = a1[4];
  v54 = v5;
  v55 = a1[6];
  v56 = *(a1 + 28);
  v6 = a1[3];
  v51 = a1[2];
  v52 = v6;
  v7 = v49;
  v8 = BYTE8(v49);
  v9 = BYTE9(v49);
  v10 = v50;
  v11 = v51;
  v12 = *(a1 + 40);
  *&v42[10] = *(a1 + 98);
  v13 = *(a1 + 88);
  v41 = *(a1 + 72);
  *v42 = v13;
  v14 = *(a1 + 56);
  v39 = v12;
  v40 = v14;
  v15 = BYTE2(v56);
  if (HIBYTE(v56) != 10)
  {
    *&v47 = v49;
    WORD4(v47) = WORD4(v49);
    *(&v47 + 10) = *(a1 + 10);
    HIWORD(v47) = *(a1 + 7);
    *v48 = v50;
    *&v48[16] = v51;
    *&v48[40] = *(a1 + 56);
    *&v48[56] = *(a1 + 72);
    *&v48[72] = *(a1 + 88);
    *&v48[82] = *(a1 + 98);
    *&v48[24] = *(a1 + 40);
    *&v48[98] = HIWORD(v56);
    sub_1CEFCCBDC(&v49, &v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
    v16 = &qword_1EC4BE6D0;
    v17 = &qword_1CF9FE560;
    goto LABEL_5;
  }

  if (BYTE2(v56))
  {
    sub_1CEFCCBDC(&v49, &v47, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFD0994(v7, v8, v9 & 1);
    v47 = v10;
    *v48 = v11;
    *&v48[24] = v40;
    *&v48[40] = v41;
    *&v48[56] = *v42;
    *&v48[66] = *&v42[10];
    *&v48[8] = v39;
    v48[82] = v15;
    v16 = &unk_1EC4BFEE8;
    v17 = &unk_1CFA055B8;
LABEL_5:
    sub_1CEFCCC44(&v47, v16, v17);
    goto LABEL_6;
  }

  if (*(*(v2 + 32) + 32))
  {
    sub_1CEFCCBDC(&v49, &v47, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFD0994(v7, v8, v9 & 1);
  }

  else if ((v50 & a2) != 0)
  {
    v34 = a1[5];
    *&v48[48] = a1[4];
    *&v48[64] = v34;
    *&v48[80] = a1[6];
    *&v48[96] = *(a1 + 28);
    v35 = a1[1];
    v47 = *a1;
    *v48 = v35;
    v36 = a1[3];
    *&v48[16] = a1[2];
    *&v48[32] = v36;
    sub_1CEFCCBDC(&v49, &v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFCCC44(&v47, &qword_1EC4BE6D0, &qword_1CF9FE560);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 9) = v9 & 1;
    *(a1 + 2) = v10 & ~a2;
    *(a1 + 3) = *(&v10 + 1);
    *(a1 + 4) = v11;
    *(a1 + 57) = 2560;
  }

  else
  {
    sub_1CEFCCBDC(&v49, &v47, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFD0994(v7, v8, v9 & 1);
  }

LABEL_6:
  v18 = a1[1];
  v47 = *a1;
  *v48 = v18;
  v19 = a1[5];
  v20 = a1[6];
  *&v48[48] = a1[4];
  *&v48[64] = v19;
  v21 = a1[2];
  v22 = a1[3];
  *&v48[80] = v20;
  *&v48[96] = *(a1 + 28);
  *&v48[16] = v21;
  *&v48[32] = v22;
  v23 = v47;
  v24 = BYTE8(v47);
  v25 = BYTE9(v47);
  v26 = *v48;
  v27 = v21;
  *(v44 + 10) = *(a1 + 66);
  v28 = *(a1 + 56);
  v43 = *(a1 + 40);
  v44[0] = v28;
  v29 = v48[66];
  if (HIBYTE(*&v48[96]) == 9)
  {
    if (v48[66])
    {
      sub_1CEFCCBDC(&v47, &v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v23, v24, v25 & 1);
      v45 = v26;
      *v46 = v27;
      *&v46[8] = v43;
      *&v46[24] = v44[0];
      *&v46[34] = *(v44 + 10);
      v46[50] = v29;
      sub_1CEFCCC44(&v45, &qword_1EC4BFEE0, &qword_1CFA055B0);
    }

    else if ((*(*(v37 + 40) + 32) & 1) != 0 || (*v48 & a2) == 0)
    {
      sub_1CEFCCBDC(&v47, &v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFD0994(v23, v24, v25 & 1);
    }

    else
    {
      v31 = a1[5];
      *&v46[48] = a1[4];
      *&v46[64] = v31;
      *&v46[80] = a1[6];
      *&v46[96] = *(a1 + 28);
      v32 = a1[1];
      v45 = *a1;
      *v46 = v32;
      v33 = a1[3];
      *&v46[16] = a1[2];
      *&v46[32] = v33;
      sub_1CEFCCBDC(&v47, &v39, &qword_1EC4BE6D0, &qword_1CF9FE560);
      sub_1CEFCCC44(&v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 9) = v25 & 1;
      *(a1 + 2) = v26 & ~a2;
      *(a1 + 3) = *(&v26 + 1);
      *(a1 + 4) = v27;
      *(a1 + 82) = 0;
      *(a1 + 115) = 9;
    }
  }

  else
  {
    *&v45 = v47;
    WORD4(v45) = WORD4(v47);
    *(&v45 + 10) = *(a1 + 10);
    HIWORD(v45) = *(a1 + 7);
    *v46 = *v48;
    *&v46[16] = v27;
    *&v46[24] = *(a1 + 40);
    *&v46[40] = *(a1 + 56);
    *&v46[50] = *(a1 + 66);
    v46[66] = v48[66];
    v30 = *(a1 + 83);
    *&v46[83] = *(a1 + 99);
    *&v46[67] = v30;
    v46[99] = v48[99];
    sub_1CEFCCBDC(&v47, &v39, &qword_1EC4BE6D0, &qword_1CF9FE560);
    sub_1CEFCCC44(&v45, &qword_1EC4BE6D0, &qword_1CF9FE560);
  }
}

void sub_1CF8D8ACC(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v50 = *a1;
  v51 = v4;
  v5 = a1[5];
  v6 = a1[6];
  v54 = a1[4];
  v55 = v5;
  v7 = a1[2];
  v8 = a1[3];
  v56 = v6;
  v57 = *(a1 + 28);
  v52 = v7;
  v53 = v8;
  v9 = v50;
  v10 = BYTE8(v50);
  v11 = BYTE9(v50);
  v12 = v51;
  v13 = v7;
  *&v41[10] = *(a1 + 66);
  v14 = *(a1 + 56);
  v40 = *(a1 + 40);
  *v41 = v14;
  v15 = BYTE2(v55);
  if (HIBYTE(v57) != 10)
  {
    *&v48 = v50;
    WORD4(v48) = WORD4(v50);
    *(&v48 + 10) = *(a1 + 10);
    HIWORD(v48) = *(a1 + 7);
    *v49 = v51;
    *&v49[16] = v13;
    *&v49[24] = *(a1 + 40);
    *&v49[40] = *(a1 + 56);
    *&v49[50] = *(a1 + 66);
    v49[66] = BYTE2(v55);
    v18 = *(a1 + 83);
    *&v49[83] = *(a1 + 99);
    *&v49[67] = v18;
    v49[99] = HIBYTE(v57);
    sub_1CEFCCBDC(&v50, &v46, &qword_1EC4BE730, &unk_1CFA05490);
    v16 = &qword_1EC4BE730;
    v17 = &unk_1CFA05490;
    goto LABEL_5;
  }

  if (BYTE2(v55))
  {
    sub_1CEFCCBDC(&v50, &v48, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CF1E53F8(v9, v10, v11 & 1);
    v48 = v12;
    *v49 = v13;
    *&v49[8] = v40;
    *&v49[24] = *v41;
    *&v49[34] = *&v41[10];
    v49[50] = v15;
    v16 = &qword_1EC4BFEE0;
    v17 = &qword_1CFA055B0;
LABEL_5:
    sub_1CEFCCC44(&v48, v16, v17);
    goto LABEL_6;
  }

  if (*(*(v2 + 32) + 32))
  {
    sub_1CEFCCBDC(&v50, &v48, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CF1E53F8(v9, v10, v11 & 1);
  }

  else if ((v51 & a2) != 0)
  {
    v34 = v51;
    v35 = a1[5];
    *&v49[48] = a1[4];
    *&v49[64] = v35;
    *&v49[80] = a1[6];
    *&v49[96] = *(a1 + 28);
    v36 = a1[1];
    v48 = *a1;
    *v49 = v36;
    v37 = a1[3];
    *&v49[16] = a1[2];
    *&v49[32] = v37;
    sub_1CEFCCBDC(&v50, &v46, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CEFCCC44(&v48, &qword_1EC4BE730, &unk_1CFA05490);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 9) = v11 & 1;
    *(a1 + 2) = v34 & ~a2;
    *(a1 + 3) = *(&v12 + 1);
    *(a1 + 4) = v13;
    *(a1 + 82) = 0;
    *(a1 + 115) = 10;
  }

  else
  {
    sub_1CEFCCBDC(&v50, &v48, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CF1E53F8(v9, v10, v11 & 1);
  }

LABEL_6:
  v19 = a1[1];
  v48 = *a1;
  *v49 = v19;
  v20 = a1[5];
  *&v49[48] = a1[4];
  *&v49[64] = v20;
  *&v49[80] = a1[6];
  *&v49[96] = *(a1 + 28);
  v21 = a1[3];
  *&v49[16] = a1[2];
  *&v49[32] = v21;
  v22 = v48;
  v23 = BYTE8(v48);
  v24 = BYTE9(v48);
  v25 = *v49;
  v26 = *&v49[16];
  v27 = *(a1 + 40);
  *(v45 + 10) = *(a1 + 98);
  v28 = *(a1 + 88);
  v44 = *(a1 + 72);
  v45[0] = v28;
  v29 = *(a1 + 56);
  v42 = v27;
  v43 = v29;
  v30 = v49[98];
  if (v49[99] == 9)
  {
    if (v49[98])
    {
      sub_1CEFCCBDC(&v48, &v46, &qword_1EC4BE730, &unk_1CFA05490);
      sub_1CF1E53F8(v22, v23, v24 & 1);
      v46 = v25;
      *v47 = v26;
      *&v47[24] = v43;
      *&v47[40] = v44;
      *&v47[56] = v45[0];
      *&v47[66] = *(v45 + 10);
      *&v47[8] = v42;
      v47[82] = v30;
      sub_1CEFCCC44(&v46, &qword_1EC4BFEE8, &qword_1CFA055B8);
    }

    else if ((*(*(v38 + 40) + 32) & 1) != 0 || (*v49 & a2) == 0)
    {
      sub_1CEFCCBDC(&v48, &v46, &qword_1EC4BE730, &unk_1CFA05490);
      sub_1CF1E53F8(v22, v23, v24 & 1);
    }

    else
    {
      v31 = a1[5];
      *&v47[48] = a1[4];
      *&v47[64] = v31;
      *&v47[80] = a1[6];
      *&v47[96] = *(a1 + 28);
      v32 = a1[1];
      v46 = *a1;
      *v47 = v32;
      v33 = a1[3];
      *&v47[16] = a1[2];
      *&v47[32] = v33;
      sub_1CEFCCBDC(&v48, &v40, &qword_1EC4BE730, &unk_1CFA05490);
      sub_1CEFCCC44(&v46, &qword_1EC4BE730, &unk_1CFA05490);
      *a1 = v22;
      *(a1 + 8) = v23;
      *(a1 + 9) = v24 & 1;
      *(a1 + 2) = v25 & ~a2;
      *(a1 + 3) = *(&v25 + 1);
      *(a1 + 4) = v26;
      *(a1 + 57) = 2304;
    }
  }

  else
  {
    *&v46 = v48;
    WORD4(v46) = WORD4(v48);
    *(&v46 + 10) = *(a1 + 10);
    HIWORD(v46) = *(a1 + 7);
    *v47 = *v49;
    *&v47[16] = *&v49[16];
    *&v47[40] = *(a1 + 56);
    *&v47[56] = *(a1 + 72);
    *&v47[72] = *(a1 + 88);
    *&v47[82] = *(a1 + 98);
    *&v47[24] = *(a1 + 40);
    v47[98] = v49[98];
    v47[99] = v49[99];
    sub_1CEFCCBDC(&v48, &v40, &qword_1EC4BE730, &unk_1CFA05490);
    sub_1CEFCCC44(&v46, &qword_1EC4BE730, &unk_1CFA05490);
  }
}

void sub_1CF8D8FD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v95 = a4;
  v93 = a2;
  v94 = a3;
  v96 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v92);
  v5 = (&v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v91 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v91 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE740, &qword_1CFA05940);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  sub_1CEFCCBDC(v96, &v91 - v16, &qword_1EC4BE740, &qword_1CFA05940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFE55D0(v17, v8, &qword_1EC4BFC80, &qword_1CFA053D0);
    sub_1CEFCCBDC(v8, v5, &qword_1EC4BFC80, &qword_1CFA053D0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = 3;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v26 = 2;
      }

      else if (EnumCaseMultiPayload != 4)
      {
        sub_1CEFCCC44(v8, &qword_1EC4BFC80, &qword_1CFA053D0);
        v5[2], v50, v51, v52, v53, v54, v55, v56;

        return;
      }

LABEL_16:
      v5[v26], v19, v20, v21, v22, v23, v24, v25;

      sub_1CF8228C8(v8, v94, v95);
      v47 = &qword_1EC4BFC80;
      v48 = &qword_1CFA053D0;
      v49 = v8;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1CEFCCC44(v8, &qword_1EC4BFC80, &qword_1CFA053D0);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
        v28 = *(v27 + 48);
        *(v5 + *(v27 + 80) + 8), v29, v30, v31, v32, v33, v34, v35;
        v36 = &unk_1EC4BFBD0;
        v37 = &unk_1CF9FCBC0;
        sub_1CEFCCC44(v5 + v28, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v38 = v5;
LABEL_19:
        v65 = v36;
        v66 = v37;
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    sub_1CEFCCC44(v8, &qword_1EC4BFC80, &qword_1CFA053D0);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980);
    *(v5 + *(v67 + 48) + 8), v68, v69, v70, v71, v72, v73, v74;
    v65 = &unk_1EC4BFBD0;
    v66 = &unk_1CF9FCBC0;
    v38 = v5;
  }

  else
  {
    sub_1CEFE55D0(v17, v14, &qword_1EC4BFC88, &qword_1CFA053D8);
    sub_1CEFCCBDC(v14, v11, &qword_1EC4BFC88, &qword_1CFA053D8);
    v39 = swift_getEnumCaseMultiPayload();
    if (v39 > 1)
    {
      if ((v39 - 2) >= 3)
      {
        sub_1CEFCCC44(v14, &qword_1EC4BFC88, &qword_1CFA053D8);
        v11[3], v84, v85, v86, v87, v88, v89, v90;
        return;
      }

      v11[3], v40, v41, v42, v43, v44, v45, v46;
      sub_1CF821E78(v14, v94, v95);
      v47 = &qword_1EC4BFC88;
      v48 = &qword_1CFA053D8;
      v49 = v14;
LABEL_17:
      sub_1CEFCCC44(v49, v47, v48);
      return;
    }

    if (v39)
    {
      sub_1CEFCCC44(v14, &qword_1EC4BFC88, &qword_1CFA053D8);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
      v76 = *(v75 + 48);
      *(v11 + *(v75 + 80) + 8), v77, v78, v79, v80, v81, v82, v83;
      v36 = &unk_1EC4BE360;
      v37 = &qword_1CF9FE650;
      sub_1CEFCCC44(v11 + v76, &unk_1EC4BE360, &qword_1CF9FE650);
      v38 = v11;
      goto LABEL_19;
    }

    sub_1CEFCCC44(v14, &qword_1EC4BFC88, &qword_1CFA053D8);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920);
    *(v11 + *(v57 + 48) + 8), v58, v59, v60, v61, v62, v63, v64;
    v65 = &unk_1EC4BE360;
    v66 = &qword_1CF9FE650;
    v38 = v11;
  }

LABEL_20:
  sub_1CEFCCC44(v38, v65, v66);
}

void sub_1CF8D94B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v96 = a4;
  v94 = a2;
  v95 = a3;
  v97 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  MEMORY[0x1EEE9AC00](v93);
  v5 = (&v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v92 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EA0, &unk_1CFA05930);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v92 - v16;
  sub_1CEFCCBDC(v97, &v92 - v16, &qword_1EC4C4EA0, &unk_1CFA05930);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFE55D0(v17, v14, &qword_1EC4BFC80, &qword_1CFA053D0);
    sub_1CEFCCBDC(v14, v11, &qword_1EC4BFC80, &qword_1CFA053D0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v38 = 3;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v38 = 2;
      }

      else if (EnumCaseMultiPayload != 4)
      {
        sub_1CEFCCC44(v14, &qword_1EC4BFC80, &qword_1CFA053D0);
        v11[2], v51, v52, v53, v54, v55, v56, v57;

        return;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1CEFCCC44(v14, &qword_1EC4BFC80, &qword_1CFA053D0);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980);
        *(v11 + *(v68 + 48) + 8), v69, v70, v71, v72, v73, v74, v75;
        v66 = &unk_1EC4BFBD0;
        v67 = &unk_1CF9FCBC0;
        v50 = v11;
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_1CEFCCC44(v14, &qword_1EC4BFC80, &qword_1CFA053D0);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
        v40 = *(v39 + 48);
        *(v11 + *(v39 + 80) + 8), v41, v42, v43, v44, v45, v46, v47;
        v48 = &unk_1EC4BFBD0;
        v49 = &unk_1CF9FCBC0;
        sub_1CEFCCC44(v11 + v40, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v50 = v11;
        goto LABEL_19;
      }
    }

    v11[v38], v31, v32, v33, v34, v35, v36, v37;

    sub_1CF8228C8(v14, v95, v96);
    v27 = &qword_1EC4BFC80;
    v28 = &qword_1CFA053D0;
    v29 = v14;
    goto LABEL_17;
  }

  sub_1CEFE55D0(v17, v8, &qword_1EC4BFC88, &qword_1CFA053D8);
  sub_1CEFCCBDC(v8, v5, &qword_1EC4BFC88, &qword_1CFA053D8);
  v18 = swift_getEnumCaseMultiPayload();
  v26 = v5;
  if (v18 <= 1)
  {
    if (!v18)
    {
      sub_1CEFCCC44(v8, &qword_1EC4BFC88, &qword_1CFA053D8);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920);
      *(v5 + *(v58 + 48) + 8), v59, v60, v61, v62, v63, v64, v65;
      v66 = &unk_1EC4BE360;
      v67 = &qword_1CF9FE650;
      v50 = v5;
LABEL_20:
      sub_1CEFCCC44(v50, v66, v67);
      return;
    }

    sub_1CEFCCC44(v8, &qword_1EC4BFC88, &qword_1CFA053D8);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
    v77 = *(v76 + 48);
    *(v26 + *(v76 + 80) + 8), v78, v79, v80, v81, v82, v83, v84;
    v48 = &unk_1EC4BE360;
    v49 = &qword_1CF9FE650;
    sub_1CEFCCC44(v26 + v77, &unk_1EC4BE360, &qword_1CF9FE650);
    v50 = v26;
LABEL_19:
    v66 = v48;
    v67 = v49;
    goto LABEL_20;
  }

  if ((v18 - 2) < 3)
  {
    v5[3], v19, v20, v21, v22, v23, v24, v25;
    sub_1CF821E78(v8, v95, v96);
    v27 = &qword_1EC4BFC88;
    v28 = &qword_1CFA053D8;
    v29 = v8;
LABEL_17:
    sub_1CEFCCC44(v29, v27, v28);
    return;
  }

  sub_1CEFCCC44(v8, &qword_1EC4BFC88, &qword_1CFA053D8);
  v5[3], v85, v86, v87, v88, v89, v90, v91;
}

id sub_1CF8D9998(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v275 = a2;
  v276 = a3;
  v274 = a1;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v272 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v271 = &v263 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v270 = &v263 - v7;
  v268 = type metadata accessor for VFSItem(0);
  v267 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v265 = &v263 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v266 = &v263 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v269 = &v263 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v263 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v263 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v263 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v263 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v263 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v263 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v264 = v4;
  v33 = &v263 - v32;
  sub_1CEFCCBDC(v4, &v263 - v32, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1CEFCCBDC(v33, v21, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FA0, &unk_1CFA19770);
        v165 = v164[12];
        v166 = &v21[v164[16]];
        v167 = *(v166 + 1);
        if ((v272)[6](&v21[v165], 1, v273) != 1)
        {
          v175 = *&v21[v164[20]];
          v176 = *v166;
          v177 = v270;
          sub_1CEFE55D0(&v21[v165], v270, &unk_1EC4BE360, &qword_1CF9FE650);
          v178 = v274;
          v179 = [v274 providerDomainID];
          v180 = sub_1CF2CEC2C(v177, v179, v178, 0);

          *&v279 = v176;
          *(&v279 + 1) = v167;
          v277 = 47;
          v278 = 0xE100000000000000;
          v283 = 58;
          v284 = 0xE100000000000000;
          v262 = sub_1CEFE4E68();
          v260[0] = MEMORY[0x1E69E6158];
          v260[1] = v262;
          sub_1CF9E7668();
          v182 = v181;
          v183 = sub_1CF9E6888();
          v182, v184, v185, v186, v187, v188, v189, v190;
          v167, v191, v192, v193, v194, v195, v196, v197;
          [v180 setFilename_];

          v198 = objc_allocWithZone(MEMORY[0x1E6967440]);
          v199 = sub_1CF9E6888();
          v46 = [v198 initWithOperationIdentifier:v199 renamedItem:v180 snapshotVersion:v175];

          v47 = v177;
          goto LABEL_28;
        }

        v167, v168, v169, v170, v171, v172, v173, v174;
        v250 = &qword_1EC4C1B40;
        v251 = &unk_1CF9FCB70;
        v252 = &v21[v165];
LABEL_45:
        v259 = sub_1CEFCCC44(v252, v250, v251);
        MEMORY[0x1EEE9AC00](v259);
        v261 = v264;
        fp_preconditionFailure(_:file:line:)(sub_1CF8FCBCC, v260, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/TestingOperation.swift", 110, 2, 199);
      }

      v71 = sub_1CEFCCBDC(v33, v24, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      v72 = *(v24 + 2);
      if (v72)
      {
        v274 = *(v24 + 12);
        v273 = v33;
        if (*(v24 + 5) != 1)
        {
          v73 = *v24;
          v74 = v24[8];
          v75 = *(v24 + 40);
          v279 = *(v24 + 24);
          v280 = v75;
          v76 = *(v24 + 72);
          v281 = *(v24 + 56);
          v282 = v76;
          v77 = v279;
          v78 = *(&v280 + 1);
          v79 = v281;
          v80 = *(&v76 + 1);
          v277 = 0x2F73662F70665F5FLL;
          v278 = 0xE800000000000000;
          v283 = v73;
          LOBYTE(v284) = v74;
          v81 = VFSItemID.description.getter(v71);
          v83 = v82;
          MEMORY[0x1D3868CC0](v81);
          v83, v84, v85, v86, v87, v88, v89, v90;
          v91 = v278;
          v92 = sub_1CF9E6888();
          v91, v93, v94, v95, v96, v97, v98, v99;
          v272 = v72;
          v100 = sub_1CF75C4E8(v272, 0);
          sub_1CEFCCBDC(&v279, &v277, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v77, *(&v77 + 1));
          sub_1CEFE42D4(v78, v79);
          v101 = sub_1CF9E5B48();
          v102 = sub_1CF9E5B48();
          if (v80)
          {
            v80 = sub_1CF9E6888();
          }

          v103 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v101 metadataVersion:v102 lastEditorDeviceName:v80];
          sub_1CEFE4714(v78, v79);
          sub_1CEFE4714(v77, *(&v77 + 1));

          sub_1CEFCCC44(&v279, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v104 = objc_allocWithZone(MEMORY[0x1E6967458]);
          v105 = sub_1CF9E6888();
          v106 = v274;
          v46 = [v104 initWithOperationIdentifier:v105 sourceItemIdentifier:v92 targetItemIdentifier:v100 targetItemBaseVersion:v103 domainVersion:v274];
          sub_1CEFCCC44(&v279, &unk_1EC4BF2D0, &unk_1CF9FEF20);

          goto LABEL_24;
        }
      }

      else
      {
      }

      v253 = *(v24 + 40);
      v279 = *(v24 + 24);
      v280 = v253;
      v254 = *(v24 + 56);
      v255 = *(v24 + 72);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1CEFCCBDC(v33, v30, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
        v36 = v35[12];
        v37 = *&v30[v35[20]];
        if ((v272)[6](&v30[v36], 1, v273) != 1)
        {
          v38 = *&v30[v35[16]];
          v39 = &v30[v36];
          v40 = v270;
          sub_1CEFE55D0(v39, v270, &unk_1EC4BE360, &qword_1CF9FE650);
          v41 = v274;
          v42 = [v274 providerDomainID];
          v43 = sub_1CF2CEC2C(v40, v42, v41, 0);

          v44 = objc_allocWithZone(MEMORY[0x1E6967450]);
          v45 = sub_1CF9E6888();
          v46 = [v44 initWithOperationIdentifier:v45 sourceItem:v43 domainVersion:v37 snapshotVersion:v38];

          v47 = v40;
LABEL_28:
          v200 = &unk_1EC4BE360;
          v201 = &qword_1CF9FE650;
LABEL_33:
          sub_1CEFCCC44(v47, v200, v201);
          goto LABEL_34;
        }

        v250 = &qword_1EC4C1B40;
        v251 = &unk_1CF9FCB70;
        v252 = &v30[v36];
        goto LABEL_45;
      }

      sub_1CEFCCBDC(v33, v27, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
      v115 = v114[12];
      v116 = v114[16];
      v117 = *&v27[v114[24]];
      v118 = *&v27[v114[28]];
      v119 = &v27[v114[20]];
      v120 = *&v27[v114[32]];
      if ((v272)[6](&v27[v115], 1, v273) == 1)
      {

        v256 = *(v119 + 1);
        v279 = *v119;
        v280 = v256;
        v257 = *(v119 + 3);
        v281 = *(v119 + 2);
        v282 = v257;
        sub_1CEFCCC44(&v279, &unk_1EC4BF2D0, &unk_1CF9FEF20);

        v250 = &qword_1EC4C1B40;
        v251 = &unk_1CF9FCB70;
        v252 = &v27[v115];
        goto LABEL_45;
      }

      v121 = *&v27[v116];
      if (v121)
      {
        v269 = v118;
        v270 = v117;
        v272 = v120;
        v273 = v33;
        if (*(v119 + 2) != 1)
        {
          v122 = v271;
          sub_1CEFE55D0(&v27[v115], v271, &unk_1EC4BE360, &qword_1CF9FE650);
          v123 = *(v119 + 1);
          v279 = *v119;
          v280 = v123;
          v124 = *(v119 + 3);
          v281 = *(v119 + 2);
          v282 = v124;
          v125 = v279;
          v126 = *(&v280 + 1);
          v127 = v281;
          v128 = *(&v124 + 1);
          v129 = v274;
          v130 = [v274 providerDomainID];
          v274 = sub_1CF2CEC2C(v122, v130, v129, 0);

          v131 = v121;
          v132 = sub_1CF75C4E8(v131, 0);
          sub_1CEFCCBDC(&v279, &v277, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v125, *(&v125 + 1));
          sub_1CEFE42D4(v126, v127);
          v133 = sub_1CF9E5B48();
          v134 = sub_1CF9E5B48();
          if (v128)
          {
            v128 = sub_1CF9E6888();
          }

          v135 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v133 metadataVersion:v134 lastEditorDeviceName:v128];
          sub_1CEFE4714(v126, v127);
          sub_1CEFE4714(v125, *(&v125 + 1));

          sub_1CEFCCC44(&v279, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v136 = v270;
          v277 = v270;
          v137 = _sSo24NSFileProviderItemFieldsV04FileB6DaemonEyAbC0D0VcfC_0(&v277);
          v138 = objc_allocWithZone(MEMORY[0x1E6967470]);
          v139 = sub_1CF9E6888();
          v261 = v136;
          v140 = v138;
          v141 = v274;
          v142 = v272;
          v46 = [v140 initWithOperationIdentifier:v139 sourceItem:v274 targetItemIdentifier:v132 targetItemBaseVersion:v135 changedFields:v137 domainVersion:v272 rawFields:v261 snapshotVersion:v269];

          sub_1CEFCCC44(&v279, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(v271, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_24:
          v33 = v273;
          goto LABEL_34;
        }
      }

      else
      {
      }

      sub_1CEFCCC44(&v27[v115], &unk_1EC4BE360, &qword_1CF9FE650);
      v258 = *(v119 + 1);
      v279 = *v119;
      v280 = v258;
      v254 = *(v119 + 2);
      v255 = *(v119 + 3);
    }

    v281 = v254;
    v282 = v255;
    v250 = &unk_1EC4BF2D0;
    v251 = &unk_1CF9FEF20;
    v252 = &v279;
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_1CEFCCBDC(v33, v15, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590);
      v108 = *v15;
      v109 = v15[8];
      v110 = v269;
      sub_1CEFE55D0(&v15[*(v107 + 48)], v269, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v111 = v266;
      sub_1CEFCCBDC(v110, v266, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v112 = (*(v267 + 48))(v111, 1, v268);
      if (v112 == 1)
      {
        v113 = 0;
      }

      else
      {
        v225 = v265;
        sub_1CEFDA0C4(v111, v265, type metadata accessor for VFSItem);
        v226 = v274;
        v227 = [v274 providerDomainID];
        v113 = sub_1CF2CDBA4(v225, v227, v226, 1);

        v112 = sub_1CEFD5338(v225, type metadata accessor for VFSItem);
      }

      *&v279 = 0x2F73662F70665F5FLL;
      *(&v279 + 1) = 0xE800000000000000;
      v277 = v108;
      LOBYTE(v278) = v109;
      v228 = VFSItemID.description.getter(v112);
      v230 = v229;
      MEMORY[0x1D3868CC0](v228);
      v230, v231, v232, v233, v234, v235, v236, v237;
      v238 = *(&v279 + 1);
      v239 = sub_1CF9E6888();
      v238, v240, v241, v242, v243, v244, v245, v246;
      v247 = objc_allocWithZone(MEMORY[0x1E6967460]);
      v248 = sub_1CF9E6888();
      v46 = [v247 initWithOperationIdentifier:v248 itemIdentifier:v239 item:v113];

      v200 = &unk_1EC4BEC00;
      v201 = &unk_1CF9FCB60;
      v47 = v110;
      goto LABEL_33;
    }

    v202 = sub_1CEFCCBDC(v33, v18, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    v203 = *v18;
    v204 = v18[8];
    *&v279 = 0x2F73662F70665F5FLL;
    *(&v279 + 1) = 0xE800000000000000;
    v277 = v203;
    LOBYTE(v278) = v204;
    v205 = VFSItemID.description.getter(v202);
    v207 = v206;
    MEMORY[0x1D3868CC0](v205);
    v207, v208, v209, v210, v211, v212, v213, v214;
    v215 = *(&v279 + 1);
    v62 = sub_1CF9E6888();
    v215, v216, v217, v218, v219, v220, v221, v222;
    v70 = MEMORY[0x1E6967468];
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v48 = sub_1CEFCCBDC(v33, v18, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    v49 = *v18;
    v50 = v18[8];
    *&v279 = 0x2F73662F70665F5FLL;
    *(&v279 + 1) = 0xE800000000000000;
    v277 = v49;
    LOBYTE(v278) = v50;
    v51 = VFSItemID.description.getter(v48);
    v53 = v52;
    MEMORY[0x1D3868CC0](v51);
    v53, v54, v55, v56, v57, v58, v59, v60;
    v61 = *(&v279 + 1);
    v62 = sub_1CF9E6888();
    v61, v63, v64, v65, v66, v67, v68, v69;
    v70 = MEMORY[0x1E6967448];
  }

  else
  {
    v143 = sub_1CEFCCBDC(v33, v18, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    v144 = *v18;
    v145 = v18[8];
    *&v279 = 0x2F73662F70665F5FLL;
    *(&v279 + 1) = 0xE800000000000000;
    v277 = v144;
    LOBYTE(v278) = v145;
    v146 = VFSItemID.description.getter(v143);
    v148 = v147;
    MEMORY[0x1D3868CC0](v146);
    v148, v149, v150, v151, v152, v153, v154, v155;
    v156 = *(&v279 + 1);
    v62 = sub_1CF9E6888();
    v156, v157, v158, v159, v160, v161, v162, v163;
    v70 = MEMORY[0x1E6967438];
  }

  v223 = objc_allocWithZone(v70);
  v224 = sub_1CF9E6888();
  v46 = [v223 initWithOperationIdentifier:v224 itemIdentifier:v62];

LABEL_34:
  sub_1CEFCCC44(v33, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  return v46;
}

id sub_1CF8DAA38(void *a1, uint64_t a2, uint64_t a3)
{
  v193 = a2;
  v194 = a3;
  v192 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v189 = *(v4 - 1);
  v190 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v191 = &v185 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v185 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v188 = (&v185 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v185 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v185 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v185 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v187 = v3;
  v25 = &v185 - v24;
  sub_1CEFCCBDC(v3, &v185 - v24, &unk_1EC4BFD70, &qword_1CFA12AC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v73 = v25;
        sub_1CEFCCBDC(v25, v8, &unk_1EC4BFD70, &qword_1CFA12AC0);
        v74 = *v8;
        v75 = v8[1];
        if (v75)
        {
          v76 = v75;
          v77 = v192;
          v78 = [v192 providerDomainID];
          v79 = sub_1CF2CDE20(v76, v78, v77, 1);
        }

        else
        {
          v79 = 0;
        }

        v163 = v74;
        v164 = sub_1CF75C4E8(v163, 0);
        v165 = objc_allocWithZone(MEMORY[0x1E6967460]);
        v166 = sub_1CF9E6888();
        v37 = [v165 initWithOperationIdentifier:v166 itemIdentifier:v164 item:v79];

        v25 = v73;
        goto LABEL_28;
      }

      sub_1CEFCCBDC(v25, v11, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v39 = *v11;
      v40 = sub_1CF75C4E8(v39, 0);
      v41 = MEMORY[0x1E6967468];
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1CEFCCBDC(v25, v11, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v39 = *v11;
      v40 = sub_1CF75C4E8(v39, 0);
      v41 = MEMORY[0x1E6967448];
    }

    else
    {
      sub_1CEFCCBDC(v25, v11, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v39 = *v11;
      v40 = sub_1CF75C4E8(v39, 0);
      v41 = MEMORY[0x1E6967438];
    }

    v161 = objc_allocWithZone(v41);
    v162 = sub_1CF9E6888();
    v37 = [v161 initWithOperationIdentifier:v162 itemIdentifier:v40];

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v186 = v25;
    if (EnumCaseMultiPayload)
    {
      sub_1CEFCCBDC(v25, v19, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
      v81 = v80[12];
      v82 = *(v19 + v80[24]);
      v83 = *(v19 + v80[28]);
      v84 = (v19 + v80[20]);
      v85 = *(v19 + v80[32]);
      if ((v189[6])(v19 + v81, 1, v190) == 1)
      {

        v172 = v84[3];
        v207 = v84[2];
        v208 = v172;
        v173 = v84[5];
        v209 = v84[4];
        v210 = v173;
        v174 = v84[1];
        v205 = *v84;
        v206 = v174;
        sub_1CEFCCC44(&v205, &unk_1EC4BECD0, &unk_1CF9FEF80);
        v175 = &unk_1EC4BFBB0;
        v176 = &qword_1CF9FCB90;
        v177 = (v19 + v81);
      }

      else
      {
        v86 = v19 + v80[16];
        if (v86[8] == 255)
        {
          sub_1CEFCCC44(v19 + v81, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        }

        else
        {
          v188 = v83;
          v190 = v85;
          if (*(v84 + 8))
          {
            v87 = v191;
            sub_1CEFE55D0(v19 + v81, v191, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v88 = *v86;
            v189 = v19;
            v89 = v86[8];
            v90 = v84[3];
            v201 = v84[2];
            v202 = v90;
            v91 = v84[5];
            v203 = v84[4];
            v204 = v91;
            v92 = v84[1];
            v199 = *v84;
            v200 = v92;
            v205 = v199;
            v206 = v92;
            v209 = v203;
            v210 = v91;
            v207 = v201;
            v208 = v90;
            v93 = v192;
            v94 = [v192 providerDomainID];
            v95 = sub_1CF2CEC14(v87, v94, v93, 0);

            v195 = 0x2F73662F70665F5FLL;
            v196 = 0xE800000000000000;
            v197 = v88;
            v198 = v89;
            v97 = VFSItemID.description.getter(v96);
            v99 = v98;
            MEMORY[0x1D3868CC0](v97);
            v99, v100, v101, v102, v103, v104, v105, v106;
            v107 = v196;
            v108 = sub_1CF9E6888();
            v107, v109, v110, v111, v112, v113, v114, v115;
            sub_1CEFCCBDC(&v199, &v195, &unk_1EC4BECD0, &unk_1CF9FEF80);
            v116 = sub_1CF8E4F20(&v205);
            sub_1CEFCCC44(&v199, &unk_1EC4BECD0, &unk_1CF9FEF80);
            v195 = v82;
            v117 = _sSo24NSFileProviderItemFieldsV04FileB6DaemonEyAbC0D0VcfC_0(&v195);
            v118 = objc_allocWithZone(MEMORY[0x1E6967470]);
            v119 = sub_1CF9E6888();
            v120 = v82;
            v121 = v119;
            v122 = v118;
            v123 = v190;
            v37 = [v122 initWithOperationIdentifier:v121 sourceItem:v95 targetItemIdentifier:v108 targetItemBaseVersion:v116 changedFields:v117 domainVersion:v190 rawFields:v120 snapshotVersion:v188];

            sub_1CEFCCC44(&v199, &unk_1EC4BECD0, &unk_1CF9FEF80);
            sub_1CEFCCC44(v87, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v38 = *v189;
            goto LABEL_20;
          }

          sub_1CEFCCC44(v19 + v81, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        }

        v178 = v84[3];
        v207 = v84[2];
        v208 = v178;
        v179 = v84[5];
        v209 = v84[4];
        v210 = v179;
        v180 = v84[1];
        v205 = *v84;
        v206 = v180;
        v175 = &unk_1EC4BECD0;
        v176 = &unk_1CF9FEF80;
        v177 = &v205;
      }

      sub_1CEFCCC44(v177, v175, v176);
      v171 = *v19;
    }

    else
    {
      sub_1CEFCCBDC(v25, v22, &unk_1EC4BFD70, &qword_1CFA12AC0);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
      v28 = v27[12];
      v29 = *(v22 + v27[20]);
      if ((v189[6])(v22 + v28, 1, v190) != 1)
      {
        v30 = *(v22 + v27[16]);
        v31 = v191;
        sub_1CEFE55D0(v22 + v28, v191, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v32 = v192;
        v33 = [v192 providerDomainID];
        v34 = sub_1CF2CEC14(v31, v33, v32, 0);

        v35 = objc_allocWithZone(MEMORY[0x1E6967450]);
        v36 = sub_1CF9E6888();
        v37 = [v35 initWithOperationIdentifier:v36 sourceItem:v34 domainVersion:v29 snapshotVersion:v30];

        sub_1CEFCCC44(v31, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v38 = *v22;
LABEL_20:

        v25 = v186;
        goto LABEL_28;
      }

      sub_1CEFCCC44(v22 + v28, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v171 = *v22;
    }

LABEL_37:

    MEMORY[0x1EEE9AC00](v181);
    v183 = v187;
    fp_preconditionFailure(_:file:line:)(sub_1CF8FCBFC, v182, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/TestingOperation.swift", 110, 2, 199);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v124 = v188;
    sub_1CEFCCBDC(v25, v188, &unk_1EC4BFD70, &qword_1CFA12AC0);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D0, &unk_1CFA18150);
    v126 = v125[12];
    v127 = (v124 + v125[16]);
    v128 = v127[1];
    if ((v189[6])(v124 + v126, 1, v190) != 1)
    {
      v136 = *(v124 + v125[20]);
      v137 = *v127;
      v138 = v191;
      sub_1CEFE55D0(v124 + v126, v191, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v139 = v192;
      v140 = [v192 providerDomainID];
      v141 = sub_1CF2CEC14(v138, v140, v139, 0);

      *&v205 = v137;
      *(&v205 + 1) = v128;
      *&v199 = 47;
      *(&v199 + 1) = 0xE100000000000000;
      v195 = 58;
      v196 = 0xE100000000000000;
      v183 = sub_1CEFE4E68();
      v184 = v183;
      v182[0] = MEMORY[0x1E69E6158];
      v182[1] = v183;
      sub_1CF9E7668();
      v143 = v142;
      v144 = sub_1CF9E6888();
      v143, v145, v146, v147, v148, v149, v150, v151;
      v128, v152, v153, v154, v155, v156, v157, v158;
      [v141 setFilename_];

      v159 = objc_allocWithZone(MEMORY[0x1E6967440]);
      v160 = sub_1CF9E6888();
      v37 = [v159 initWithOperationIdentifier:v160 renamedItem:v141 snapshotVersion:v136];

      sub_1CEFCCC44(v138, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      goto LABEL_28;
    }

    v128, v129, v130, v131, v132, v133, v134, v135;
    sub_1CEFCCC44(v124 + v126, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v171 = *v124;
    goto LABEL_37;
  }

  sub_1CEFCCBDC(v25, v16, &unk_1EC4BFD70, &qword_1CFA12AC0);
  v42 = *(v16 + 16);
  v43 = v16[16];
  if (v43 == 255 || (v186 = v25, !*(v16 + 11)))
  {

    v168 = *(v16 + 72);
    v207 = *(v16 + 56);
    v208 = v168;
    v169 = *(v16 + 104);
    v209 = *(v16 + 88);
    v210 = v169;
    v170 = *(v16 + 40);
    v205 = *(v16 + 24);
    v206 = v170;
    sub_1CEFCCC44(&v205, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v171 = *v16;
    goto LABEL_37;
  }

  v44 = *v16;
  v45 = *(v16 + 1);
  v46 = *(v16 + 72);
  v201 = *(v16 + 56);
  v202 = v46;
  v47 = *(v16 + 104);
  v203 = *(v16 + 88);
  v204 = v47;
  v48 = *(v16 + 40);
  v199 = *(v16 + 24);
  v200 = v48;
  v205 = v199;
  v206 = v48;
  v209 = v203;
  v210 = v47;
  v207 = v201;
  v208 = v46;
  v49 = v44;
  v50 = sub_1CF75C4E8(v49, 0);
  v195 = 0x2F73662F70665F5FLL;
  v196 = 0xE800000000000000;
  v197 = v45;
  v198 = v43;
  v51 = VFSItemID.description.getter(v50);
  v53 = v52;
  MEMORY[0x1D3868CC0](v51);
  v53, v54, v55, v56, v57, v58, v59, v60;
  v61 = v196;
  v62 = sub_1CF9E6888();
  v61, v63, v64, v65, v66, v67, v68, v69;
  sub_1CEFCCBDC(&v199, &v195, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v70 = sub_1CF8E4F20(&v205);
  sub_1CEFCCC44(&v199, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v71 = objc_allocWithZone(MEMORY[0x1E6967458]);
  v72 = sub_1CF9E6888();
  v37 = [v71 initWithOperationIdentifier:v72 sourceItemIdentifier:v50 targetItemIdentifier:v62 targetItemBaseVersion:v70 domainVersion:v42];
  sub_1CEFCCC44(&v199, &unk_1EC4BECD0, &unk_1CF9FEF80);

  v25 = v186;
LABEL_28:
  sub_1CEFCCC44(v25, &unk_1EC4BFD70, &qword_1CFA12AC0);
  return v37;
}

unint64_t sub_1CF8DB6F4(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  v10 = a2();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0xD000000000000024;
}

unint64_t sub_1CF8DB784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v143 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v143 - v5;
  sub_1CEFCCBDC(v0, &v143 - v5, &qword_1EC4BFC80, &qword_1CFA053D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v71 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980) + 48)];
      v72 = *v71;
      v73 = *(v71 + 1);
      sub_1CEFE55D0(v6, v3, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v143 = 0x747265736E69;
      v144 = 0xE600000000000000;
      v74 = sub_1CF814244();
      v76 = v75;
      MEMORY[0x1D3868CC0](v74);
      v76, v77, v78, v79, v80, v81, v82, v83;
      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v72, v73);
      v73, v84, v85, v86, v87, v88, v89, v90;
      v91 = v143;
      sub_1CEFCCC44(v3, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      return v91;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
      v9 = *&v6[v8[16]];
      v10 = &v6[v8[20]];
      v12 = *v10;
      v11 = *(v10 + 1);
      sub_1CEFE55D0(&v6[v8[12]], v3, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v143 = 0;
      v144 = 0xE000000000000000;
      sub_1CF9E7948();
      v144, v13, v14, v15, v16, v17, v18, v19;
      v143 = 0x657461647075;
      v144 = 0xE600000000000000;
      v20 = sub_1CF814244();
      v22 = v21;
      MEMORY[0x1D3868CC0](v20);
      v22, v23, v24, v25, v26, v27, v28, v29;
      MEMORY[0x1D3868CC0](0x3A736666696420, 0xE700000000000000);
      v30 = sub_1CF071470(v9);
      v32 = v31;
      MEMORY[0x1D3868CC0](v30);
      v32, v33, v34, v35, v36, v37, v38, v39;
      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v12, v11);
      v11, v40, v41, v42, v43, v44, v45, v46;
      v47 = v143;
      sub_1CEFCCC44(v3, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      sub_1CEFCCC44(v6, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      return v47;
    }

    v101 = v6[8];
    v51 = *(v6 + 2);
    v50 = *(v6 + 3);
    v52 = *v6;
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_1CF9E7948();
    v144, v102, v103, v104, v105, v106, v107, v108;
    v143 = 0x693C6574656C6564;
    v144 = 0xEA00000000003A64;
    v109 = NSFileProviderItemIdentifier.description.getter(v52);
    v111 = v110;
    MEMORY[0x1D3868CC0](v109);
    v111, v112, v113, v114, v115, v116, v117, v118;
    v70 = (v101 & 1) == 0;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v51 = *(v6 + 1);
    v50 = *(v6 + 2);
    v52 = *v6;
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_1CF9E7948();
    v144, v92, v93, v94, v95, v96, v97, v98;
    v99 = 0x614C6574656C6564;
    v100 = 0xEE003A64693C797ALL;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v49 = v6[8];
      v51 = *(v6 + 2);
      v50 = *(v6 + 3);
      v52 = *v6;
      v143 = 0;
      v144 = 0xE000000000000000;
      sub_1CF9E7948();
      v144, v53, v54, v55, v56, v57, v58, v59;
      v143 = 0xD000000000000013;
      v144 = 0x80000001CFA5D2E0;
      v60 = NSFileProviderItemIdentifier.description.getter(v52);
      v62 = v61;
      MEMORY[0x1D3868CC0](v60);
      v62, v63, v64, v65, v66, v67, v68, v69;
      v70 = v49 == 0;
LABEL_11:
      if (v70)
      {
        v119 = 0;
      }

      else
      {
        v119 = 0x6973727563657220;
      }

      if (v70)
      {
        v120 = 0xE000000000000000;
      }

      else
      {
        v120 = 0xEA00000000006576;
      }

      v121 = v120;
      goto LABEL_20;
    }

    v51 = *(v6 + 1);
    v50 = *(v6 + 2);
    v52 = *v6;
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_1CF9E7948();
    v144, v122, v123, v124, v125, v126, v127, v128;
    v99 = 0x3A64693C656E6F6ELL;
    v100 = 0xE800000000000000;
  }

  v143 = v99;
  v144 = v100;
  v119 = NSFileProviderItemIdentifier.description.getter(v52);
  v120 = v121;
LABEL_20:
  MEMORY[0x1D3868CC0](v119, v121);
  v120, v129, v130, v131, v132, v133, v134, v135;
  MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v51, v50);
  v50, v136, v137, v138, v139, v140, v141, v142;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  return v143;
}

unint64_t sub_1CF8DBC58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v151 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v151 - v5;
  sub_1CEFCCBDC(v0, &v151 - v5, &qword_1EC4BFC88, &qword_1CFA053D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v73 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920) + 48)];
      v74 = *v73;
      v75 = *(v73 + 1);
      sub_1CEFE55D0(v6, v3, &unk_1EC4BE360, &qword_1CF9FE650);
      v153 = 0x747265736E69;
      v154 = 0xE600000000000000;
      v76 = sub_1CF814758();
      v78 = v77;
      MEMORY[0x1D3868CC0](v76);
      v78, v79, v80, v81, v82, v83, v84, v85;
      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v74, v75);
      v75, v86, v87, v88, v89, v90, v91, v92;
      v93 = v153;
      sub_1CEFCCC44(v3, &unk_1EC4BE360, &qword_1CF9FE650);
      return v93;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
      v9 = *&v6[v8[16]];
      v10 = &v6[v8[20]];
      v12 = *v10;
      v11 = *(v10 + 1);
      sub_1CEFE55D0(&v6[v8[12]], v3, &unk_1EC4BE360, &qword_1CF9FE650);
      v153 = 0;
      v154 = 0xE000000000000000;
      sub_1CF9E7948();
      v154, v13, v14, v15, v16, v17, v18, v19;
      v153 = 0x657461647075;
      v154 = 0xE600000000000000;
      v20 = sub_1CF814758();
      v22 = v21;
      MEMORY[0x1D3868CC0](v20);
      v22, v23, v24, v25, v26, v27, v28, v29;
      MEMORY[0x1D3868CC0](0x3A736666696420, 0xE700000000000000);
      v30 = sub_1CF071470(v9);
      v32 = v31;
      MEMORY[0x1D3868CC0](v30);
      v32, v33, v34, v35, v36, v37, v38, v39;
      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v12, v11);
      v11, v40, v41, v42, v43, v44, v45, v46;
      v47 = v153;
      sub_1CEFCCC44(v3, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v6, &unk_1EC4BE360, &qword_1CF9FE650);
      return v47;
    }

    v106 = v6[9];
    v51 = *(v6 + 2);
    v50 = *(v6 + 3);
    v107 = *v6;
    v108 = v6[8];
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1CF9E7948();
    v154, v109, v110, v111, v112, v113, v114, v115;
    v153 = 0x693C6574656C6564;
    v154 = 0xEA00000000003A64;
    v151 = v107;
    v152 = v108;
    v117 = VFSItemID.description.getter(v116);
    v119 = v118;
    MEMORY[0x1D3868CC0](v117);
    v119, v120, v121, v122, v123, v124, v125, v126;
    v72 = (v106 & 1) == 0;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v51 = *(v6 + 2);
    v50 = *(v6 + 3);
    v94 = *v6;
    v95 = v6[8];
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1CF9E7948();
    v154, v96, v97, v98, v99, v100, v101, v102;
    v104 = 0x614C6574656C6564;
    v105 = 0xEE003A64693C797ALL;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v49 = v6[9];
      v51 = *(v6 + 2);
      v50 = *(v6 + 3);
      v52 = *v6;
      v53 = v6[8];
      v153 = 0;
      v154 = 0xE000000000000000;
      sub_1CF9E7948();
      v154, v54, v55, v56, v57, v58, v59, v60;
      v153 = 0xD000000000000013;
      v154 = 0x80000001CFA5D2E0;
      v151 = v52;
      v152 = v53;
      v62 = VFSItemID.description.getter(v61);
      v64 = v63;
      MEMORY[0x1D3868CC0](v62);
      v64, v65, v66, v67, v68, v69, v70, v71;
      v72 = v49 == 0;
LABEL_11:
      if (v72)
      {
        v127 = 0;
      }

      else
      {
        v127 = 0x6973727563657220;
      }

      if (v72)
      {
        v128 = 0xE000000000000000;
      }

      else
      {
        v128 = 0xEA00000000006576;
      }

      v129 = v128;
      goto LABEL_20;
    }

    v51 = *(v6 + 2);
    v50 = *(v6 + 3);
    v94 = *v6;
    v95 = v6[8];
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1CF9E7948();
    v154, v130, v131, v132, v133, v134, v135, v136;
    v104 = 0x3A64693C656E6F6ELL;
    v105 = 0xE800000000000000;
  }

  v153 = v104;
  v154 = v105;
  v151 = v94;
  v152 = v95;
  v127 = VFSItemID.description.getter(v103);
  v128 = v129;
LABEL_20:
  MEMORY[0x1D3868CC0](v127, v129);
  v128, v137, v138, v139, v140, v141, v142, v143;
  MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v51, v50);
  v50, v144, v145, v146, v147, v148, v149, v150;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return v153;
}

void sub_1CF8DC15C(uint64_t a1, int a2)
{
  v56 = a1;
  LODWORD(v57) = a2;
  sub_1CEFE55D0(&v56, &v52, &qword_1EC4C4EE8, &qword_1CFA180F8);
  v2 = v56;
  v3 = v57;
  v4 = BYTE1(v57);
  v5 = v55;
  v6 = v52;
  v7 = v53;
  if (v54)
  {
    v56 = 14959;
    v57 = 0xE200000000000000;
    v8 = sub_1CF48034C(v2, v3, v4);
    v9 = VFSItemID.description.getter(v8);
    v11 = v10;
    MEMORY[0x1D3868CC0](v9);
    v11, v12, v13, v14, v15, v16, v17, v18;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v19 = sub_1CF19FA9C(v5);
    v21 = (*(v19 + 176))(v19, v20);
    v23 = v22;
    MEMORY[0x1D3868CC0](v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  else
  {
    v56 = 14953;
    v57 = 0xE200000000000000;
    sub_1CF48034C(v2, v3, v4);
    v31 = NSFileProviderItemIdentifier.description.getter(v6);
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v41 = sub_1CF19FA9C(v5);
    v42 = (*(v41 + 176))();
    v44 = v43;
    MEMORY[0x1D3868CC0](v42);
    v44, v45, v46, v47, v48, v49, v50, v51;
    sub_1CF1E53F8(v6, v7, 0);
  }
}

void sub_1CF8DC2D4(uint64_t a1, int a2)
{
  v56 = a1;
  LODWORD(v57) = a2;
  sub_1CEFE55D0(&v56, &v52, &unk_1EC4C4D50, &qword_1CFA17F60);
  v2 = v56;
  v3 = v57;
  v4 = BYTE1(v57);
  v5 = v55;
  v6 = v52;
  v7 = v53;
  if (v54)
  {
    v56 = 14959;
    v57 = 0xE200000000000000;
    sub_1CEFD0988(v2, v3, v4);
    v8 = NSFileProviderItemIdentifier.description.getter(v6);
    v10 = v9;
    MEMORY[0x1D3868CC0](v8);
    v10, v11, v12, v13, v14, v15, v16, v17;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v18 = sub_1CF19FA9C(v5);
    v19 = (*(v18 + 176))();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    sub_1CEFD0994(v6, v7, 1);
  }

  else
  {
    v56 = 14953;
    v57 = 0xE200000000000000;
    v29 = sub_1CEFD0988(v2, v3, v4);
    v30 = VFSItemID.description.getter(v29);
    v32 = v31;
    MEMORY[0x1D3868CC0](v30);
    v32, v33, v34, v35, v36, v37, v38, v39;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v40 = sub_1CF19FA9C(v5);
    v42 = (*(v40 + 176))(v40, v41);
    v44 = v43;
    MEMORY[0x1D3868CC0](v42);
    v44, v45, v46, v47, v48, v49, v50, v51;
  }
}

uint64_t sub_1CF8DC44C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF343AC4();
  *a1 = result;
  return result;
}

void sub_1CF8DC4A0(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  *a3 = v4;
}

uint64_t sub_1CF8DC520(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1CF9E62A8();
}

unint64_t sub_1CF8DC590(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1CF8DC5B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8DC5D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1CF0264D8;

  return v6();
}

uint64_t sub_1CF8DC6BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1CF0264D8;

  return v7();
}

uint64_t sub_1CF8DC7A4(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v30 - v10;
  sub_1CEFCCBDC(a3, v30 - v10, &qword_1EC4BFBA8, &qword_1CFA12B20);
  v12 = sub_1CF9E6F08();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1CEFCCC44(v11, &qword_1EC4BFBA8, &qword_1CFA12B20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1CF9E6EF8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1CF9E6EC8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1CF9E6978() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v31[0] = 0;
      v31[1] = 0;
      v19 = v31;
      v31[2] = v14;
      v31[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v30[1] = 7;
    v30[2] = v19;
    v30[3] = v17;
    v21 = swift_task_create();

    sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
    a2, v22, v23, v24, v25, v26, v27, v28;

    return v21;
  }

LABEL_8:
  sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v31[4] = 0;
    v31[5] = 0;
    v31[6] = v14;
    v31[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1CF8DCAE8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if (swift_isClassType() && v6)
  {
    v7 = &unk_1EC4BEC20;
    v8 = &qword_1CF9FE480;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
}

void sub_1CF8DCB7C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_1CF8DCBB4(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v14 = a2;
      v13[1] = HIWORD(v5);
      v13[2] = HIBYTE(v5);
      v13[3] = v4 >> 8;
      v13[4] = v4 >> 16;
      v13[7] = HIDWORD(v4);
      v13[8] = v2;
      v13[5] = v4 >> 24;
      v13[6] = v4 >> 40;
      v7 = sub_1CEFE4714(v5, v4);
      v15 = v13;
      *&v16 = v5;
      WORD4(v16) = v4;
      BYTE10(v16) = BYTE2(v4);
      BYTE11(v16) = BYTE3(v4);
      BYTE12(v16) = BYTE4(v4);
      BYTE13(v16) = BYTE5(v4);
      BYTE14(v16) = BYTE6(v4);
      MEMORY[0x1EEE9AC00](v7);
      sub_1CF5162A0(sub_1CF8FD9C0);
      v8 = DWORD2(v16) | ((WORD6(v16) | (BYTE14(v16) << 16)) << 32);
      *a1 = v16;
      a1[1] = v8;
      return;
    }

    v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1CEFE4714(v5, v4);
    *a1 = xmmword_1CF9FA380;
    sub_1CEFE4714(0, 0xC000000000000000);
    v11 = v5 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = (v11 - v5);
      if (v11 < v5)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (sub_1CF9E5498() && __OFSUB__(v5, sub_1CF9E54C8()))
      {
LABEL_17:
        __break(1u);
      }

      sub_1CF9E54F8();
      swift_allocObject();
      v12 = sub_1CF9E5478();

      v10 = v12;
    }

    if (v11 >= v5)
    {

      sub_1CF8DCF70(v5, v5 >> 32);

      *a1 = v5;
      a1[1] = v10 | 0x4000000000000000;
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v6 == 2)
  {

    sub_1CEFE4714(v5, v4);
    *&v16 = v5;
    *(&v16 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1CF9FA380;
    sub_1CEFE4714(0, 0xC000000000000000);
    sub_1CF9E5A68();
    v9 = *(&v16 + 1);
    sub_1CF8DCF70(*(v16 + 16), *(v16 + 24));
    *a1 = v16;
    a1[1] = v9 | 0x8000000000000000;
  }

  else
  {
    *(&v16 + 7) = 0;
    *&v16 = 0;
    MEMORY[0x1EEE9AC00](a1);
    sub_1CF5162A0(sub_1CF9033AC);
  }
}

void *(*sub_1CF8DCF70(uint64_t a1, uint64_t a2))(uint64_t *__return_ptr, __n128)
{
  result = sub_1CF9E5498();
  if (result)
  {
    result = sub_1CF9E54C8();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      v5 = sub_1CF9E54B8();
      MEMORY[0x1EEE9AC00](v5);
      return sub_1CF5162A0(sub_1CF9033AC);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF8DD07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](a1);
  sub_1CF9E69C8();
  v9 = sub_1CF9E8228();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  v12 = v9 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  v14 = *(v8 + 48);
  while (1)
  {
    v15 = (v14 + 24 * v12);
    if (*v15 == a1)
    {
      v16 = v15[1] == a2 && v15[2] == a3;
      if (v16 || (sub_1CF9E8048() & 1) != 0)
      {
        break;
      }
    }

    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  v21 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EF0F4();
    v18 = v21;
  }

  v19 = *(*(v18 + 48) + 24 * v12);
  sub_1CF8DE328(v12);
  result = v19;
  *v4 = v21;
  return result;
}

uint64_t sub_1CF8DD230(void *a1, unint64_t *a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_1CF9E7848();

    if (v13)
    {
      v21 = sub_1CF8DDF8C(v11, v12, a5, a2, a3, v18, v19, v20);
      v7, v22, v23, v24, v25, v26, v27, v28;
      return v21;
    }

    v7, v14, v15, v16, v17, v18, v19, v20;
    return 0;
  }

  v31 = v5;
  sub_1CEFD57E0(0, a2, a3);
  v32 = sub_1CF9E7558();
  v33 = -1 << *(v7 + 32);
  v34 = v32 & ~v33;
  if (((*(v7 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
  {
    return 0;
  }

  v35 = ~v33;
  while (1)
  {
    v36 = *(*(v7 + 48) + 8 * v34);
    v37 = sub_1CF9E7568();

    if (v37)
    {
      break;
    }

    v34 = (v34 + 1) & v35;
    if (((*(v7 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v31;
  v41 = *v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v39 = v41;
  }

  v40 = *(*(v39 + 48) + 8 * v34);
  sub_1CF02B564(v34);
  result = v40;
  *v31 = v41;
  return result;
}

void sub_1CF8DD3D8(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_1CF9E81D8();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](a1);
    }

    else
    {
      if (a1)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      MEMORY[0x1D386A470](v8);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v9 = sub_1CF9E8228();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_31:
    *a3 = 0;
    *(a3 + 8) = -1;
    return;
  }

  v12 = ~v10;
  v13 = a2 == 2;
  v14 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v13 = 0;
  }

  while (1)
  {
    v15 = *(v7 + 48) + 16 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (!v17)
    {
      break;
    }

    if (v17 == 1)
    {
      if (a2 == 1 && v16 == a1)
      {
        goto LABEL_28;
      }
    }

    else if (v16)
    {
      if (v14)
      {
        goto LABEL_28;
      }
    }

    else if (v13)
    {
      goto LABEL_28;
    }

LABEL_17:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (a2 || v16 != a1)
  {
    goto LABEL_17;
  }

LABEL_28:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;
  v22 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EEF8C();
    v19 = v22;
  }

  v20 = *(v19 + 48) + 16 * v11;
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  *a3 = v21;
  *(a3 + 8) = v20;
  sub_1CF8DE530(v11);
  *v3 = v22;
}

uint64_t sub_1CF8DD5B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v6 = sub_1CF9E8228();
  v5, v7, v8, v9, v10, v11, v12, v13;
  v14 = -1 << *(v3 + 32);
  v15 = v6 & ~v14;
  if (((*(v3 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v27 = v17;
    v28 = v20;
    if (v27 == v21 && v19 == v20)
    {
      break;
    }

    v30 = sub_1CF9E8048();
    v19, v31, v32, v33, v34, v35, v36, v37;
    v28, v38, v39, v40, v41, v42, v43, v44;
    if (v30)
    {
      goto LABEL_11;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v3 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  v19, v20, v21, v22, v23, v24, v25, v26;
  v28, v46, v47, v48, v49, v50, v51, v52;
LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v2;
  v56 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EFA88();
    v54 = v56;
  }

  v45 = *(*(v54 + 48) + 8 * v15);
  sub_1CF8DE744(v15);
  *v2 = v56;
  return v45;
}

unint64_t sub_1CF8DD744(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1CF9E81D8();
  sub_1CF82009C(v15, a1);
  v5 = sub_1CF9E8228();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0xF000000000000007;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = *(*(v4 + 48) + 8 * v7);
    sub_1CEFD09A0(v9);
    v10 = sub_1CF81C5BC(v9, a1);
    sub_1CEFD0A98(v9);
    if (v10)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0xF000000000000007;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v15[0] = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EFC04();
    v13 = v15[0];
  }

  v14 = *(*(v13 + 48) + 8 * v7);
  sub_1CF8DE924(v7);
  result = v14;
  *v2 = v15[0];
  return result;
}

uint64_t sub_1CF8DD86C(const char *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_1CF9E7848();

    if (v5)
    {
      v13 = sub_1CF8DE0FC(v4, a1, v7, v8, v9, v10, v11, v12);
      v3, v14, v15, v16, v17, v18, v19, v20;
      return v13;
    }

    v3, v6, v7, v8, v9, v10, v11, v12;
    return 0;
  }

  v22 = v1;
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;
  sub_1CF9E69C8();
  v24, v25, v26, v27, v28, v29, v30, v31;
  v32 = sub_1CF9E8228();
  v33 = -1 << *(v3 + 32);
  v34 = v32 & ~v33;
  if (((*(v3 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
  {
    return 0;
  }

  v35 = ~v33;
  while (1)
  {
    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;
    v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v46 = v36;
    v47 = v39;
    if (v46 == v40 && v38 == v39)
    {
      break;
    }

    v49 = sub_1CF9E8048();
    v38, v50, v51, v52, v53, v54, v55, v56;
    v47, v57, v58, v59, v60, v61, v62, v63;
    if (v49)
    {
      goto LABEL_19;
    }

    v34 = (v34 + 1) & v35;
    if (((*(v3 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      return 0;
    }
  }

  v38, v39, v40, v41, v42, v43, v44, v45;
  v47, v64, v65, v66, v67, v68, v69, v70;
LABEL_19:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v22;
  v74 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EFF7C();
    v72 = v74;
  }

  v73 = *(*(v72 + 48) + 8 * v34);
  sub_1CF8DEAE0(v34);
  result = v73;
  *v22 = v74;
  return result;
}

void sub_1CF8DDA6C(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  sub_1CF9E81D8();
  sub_1CEFF47E0(v68, a1, a2 & 0x1FF);
  v7 = sub_1CF9E8228();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_33:
    *a3 = 0;
    *(a3 + 8) = -256;
    return;
  }

  v67 = ~v8;
  v10 = a2 == 2;
  v11 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v10 = 0;
  }

  v63 = v10;
  v64 = v11;
  while (1)
  {
    v15 = 16 * v9;
    v16 = *(v6 + 48) + 16 * v9;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 9);
    if ((v19 & 1) == 0)
    {
      break;
    }

    if ((a2 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v20;
    v26 = v23;
    if (v25 == v24 && v22 == v23)
    {
      sub_1CEFD0988(v17, v18, 1);
      sub_1CEFD0988(v17, v18, 1);
      sub_1CEFD0988(a1, a2, 1);
      v22, v43, v44, v45, v46, v47, v48, v49;
      v26, v50, v51, v52, v53, v54, v55, v56;
      sub_1CEFD0994(a1, a2, 1);
LABEL_35:
      sub_1CEFD0994(v17, v18, 1);
      sub_1CEFD0994(v17, v18, 1);
      v57 = v65;
      v15 = 16 * v9;
      goto LABEL_38;
    }

    v28 = sub_1CF9E8048();
    sub_1CEFD0988(v17, v18, 1);
    sub_1CEFD0988(v17, v18, 1);
    sub_1CEFD0988(a1, a2, 1);
    v22, v29, v30, v31, v32, v33, v34, v35;
    v26, v36, v37, v38, v39, v40, v41, v42;
    sub_1CEFD0994(a1, a2, 1);
    if (v28)
    {
      goto LABEL_35;
    }

    sub_1CEFD0994(v17, v18, 1);
    sub_1CEFD0994(v17, v18, 1);
LABEL_10:
    v9 = (v9 + 1) & v67;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_8:
    sub_1CEFD0988(*v16, *(v16 + 8), *(v16 + 9));
    sub_1CEFD0988(a1, a2, BYTE1(a2) & 1);
    sub_1CEFD0994(v17, v18, v19);
    v12 = a1;
    v13 = a2;
    v14 = (a2 >> 8) & 1;
LABEL_9:
    sub_1CEFD0994(v12, v13, v14);
    goto LABEL_10;
  }

  if (!*(v16 + 8))
  {
    if (!a2 && v17 == a1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v18 == 1)
  {
    if (a2 == 1 && v17 == a1)
    {
      v17 = a1;
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v17)
  {
    if (v64)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v63)
  {
LABEL_32:
    sub_1CEFD0988(v17, v18, 0);
    sub_1CEFD0988(a1, a2, 0);
    v12 = v17;
    v13 = v18;
    LOBYTE(v14) = 0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_37:
  sub_1CEFD0988(v17, v18, 0);
  sub_1CEFD0988(a1, a2, 0);
  sub_1CEFD0994(v17, v18, 0);
  v57 = v65;
LABEL_38:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v57;
  v68[0] = *v57;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EF4FC();
    v59 = v68[0];
  }

  v60 = *(v59 + 48) + v15;
  v61 = *v60;
  v62 = *(v60 + 8);
  LOBYTE(v60) = *(v60 + 9);
  *a3 = v61;
  *(a3 + 8) = v62;
  *(a3 + 9) = v60;
  sub_1CF8DECC0(v9);
  *v57 = v68[0];
}

uint64_t sub_1CF8DDE34(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8;
  v10 = sub_1CF9E7818();
  v11 = swift_unknownObjectRetain();
  v12 = sub_1CF4768B4(v11, v10);
  v21 = v12;

  v13 = sub_1CF9E7558();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    type metadata accessor for FSChangesEnumerator(0);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_1CF9E7568();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_1CF02B564(v15);
  result = sub_1CF9E7568();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8DDF8C(uint64_t a1, const char *a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v12 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8;
  v13 = sub_1CF9E7818();
  v14 = swift_unknownObjectRetain();
  v15 = a3(v14, v13);
  v24 = v15;

  v16 = sub_1CF9E7558();
  v17 = -1 << *(v15 + 32);
  v18 = v16 & ~v17;
  if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    sub_1CEFD57E0(0, a4, a5);
    while (1)
    {
      v20 = *(*(v15 + 48) + 8 * v18);
      v21 = sub_1CF9E7568();

      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v22 = *(*(v15 + 48) + 8 * v18);
  sub_1CF02B564(v18);
  result = sub_1CF9E7568();
  if (result)
  {
    *v12 = v24;
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF8DE0FC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8;
  v11 = sub_1CF9E7818();
  v12 = swift_unknownObjectRetain();
  v13 = sub_1CF476C84(v12, v11);
  v101 = v13;
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  sub_1CF9E69C8();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = &v100;
  v24 = sub_1CF9E8228();
  v25 = -1 << *(v13 + 32);
  v26 = v24 & ~v25;
  if ((*(v13 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (1)
    {
      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v9 = v29;
      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v32 = v28;
      v23 = v30;
      if (v32 == v31 && v9 == v30)
      {
        break;
      }

      v34 = sub_1CF9E8048();
      v9, v35, v36, v37, v38, v39, v40, v41;
      v23, v42, v43, v44, v45, v46, v47, v48;
      if (v34)
      {

        goto LABEL_12;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v13 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v9, v49, v50, v51, v52, v53, v54, v55;
  v23, v56, v57, v58, v59, v60, v61, v62;
LABEL_12:
  v63 = *(*(v13 + 48) + 8 * v26);
  sub_1CF8DEAE0(v26);
  v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v66 = v65;
  v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v75 = v68;
  if (v64 == v67 && v66 == v68)
  {
    goto LABEL_18;
  }

  v77 = sub_1CF9E8048();
  v66, v78, v79, v80, v81, v82, v83, v84;
  v75, v85, v86, v87, v88, v89, v90, v91;
  if ((v77 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    v66, v68, v69, v70, v71, v72, v73, v74;
    v75, v92, v93, v94, v95, v96, v97, v98;
  }

  *v10 = v101;
  return v63;
}

void sub_1CF8DE328(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = v4;
        v12 = (*(v3 + 48) + 24 * v6);
        v13 = *v12;
        v14 = v12[2];
        sub_1CF9E81D8();
        MEMORY[0x1D386A4A0](v13);

        sub_1CF9E69C8();
        v15 = sub_1CF9E8228();
        v14, v16, v17, v18, v19, v20, v21, v22;
        v23 = v15 & v7;
        if (v2 >= v9)
        {
          if (v23 < v9)
          {
            v4 = v11;
          }

          else
          {
            v4 = v11;
            if (v2 >= v23)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v11;
          if (v23 >= v9 || v2 >= v23)
          {
LABEL_12:
            v24 = *(v3 + 48);
            v25 = v24 + 24 * v2;
            v26 = (v24 + 24 * v6);
            if (v2 != v6 || v25 >= v26 + 24)
            {
              v10 = *v26;
              *(v25 + 16) = *(v26 + 2);
              *v25 = v10;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }
}

void sub_1CF8DE530(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        sub_1CF9E81D8();
        if (v13)
        {
          if (v13 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v12);
          }

          else
          {
            if (v12)
            {
              v14 = 3;
            }

            else
            {
              v14 = 2;
            }

            MEMORY[0x1D386A470](v14);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }

        v15 = sub_1CF9E8228() & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_19;
        }

        if (v2 >= v15)
        {
LABEL_19:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + v10);
          if (16 * v2 != v10 || (v2 = v6, v17 >= v18 + 1))
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_1CF8DE744(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v12 = v11;
        sub_1CF9E81D8();
        v13 = v10;
        sub_1CF9E69C8();
        v14 = sub_1CF9E8228();
        v12, v15, v16, v17, v18, v19, v20, v21;

        v22 = v14 & v7;
        if (v2 >= v9)
        {
          if (v22 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v22 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v22)
        {
LABEL_11:
          v23 = *(v3 + 48);
          v24 = (v23 + 8 * v2);
          v25 = (v23 + 8 * v6);
          if (v2 != v6 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }
}

void sub_1CF8DE924(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1CF9E81D8();
        sub_1CEFD09A0(v10);
        sub_1CF82009C(v19, v10);
        v11 = sub_1CF9E8228();
        sub_1CEFD0A98(v10);
        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 8 * v2);
          v15 = (v13 + 8 * v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_1CF8DEAE0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1CF9E81D8();
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v11 = v10;

        sub_1CF9E69C8();
        v11, v12, v13, v14, v15, v16, v17, v18;
        v19 = sub_1CF9E8228();

        v20 = v19 & v7;
        if (v2 >= v9)
        {
          if (v20 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v20)
        {
LABEL_11:
          v21 = *(v3 + 48);
          v22 = (v21 + 8 * v2);
          v23 = (v21 + 8 * v6);
          if (v2 != v6 || v22 >= v23 + 1)
          {
            *v22 = *v23;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }
}

void sub_1CF8DECC0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v39 = v4;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 9);
        sub_1CF9E81D8();
        if (v14)
        {
          MEMORY[0x1D386A470](1);
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v15 = v2;
          v16 = v3;
          v17 = v9;
          v18 = v7;
          v20 = v19;
          v21 = v12;
          sub_1CF9E69C8();
          v22 = v20;
          v7 = v18;
          v9 = v17;
          v3 = v16;
          v2 = v15;
          v10 = 16 * v6;
          v22, v23, v24, v25, v26, v27, v28, v29;
        }

        else
        {
          MEMORY[0x1D386A470](0);
          if (v13)
          {
            if (v13 == 1)
            {
              MEMORY[0x1D386A470](1);
              MEMORY[0x1D386A4A0](v12);
            }

            else
            {
              if (v12)
              {
                v30 = 3;
              }

              else
              {
                v30 = 2;
              }

              MEMORY[0x1D386A470](v30);
            }
          }

          else
          {
            MEMORY[0x1D386A470](0);
            sub_1CF9E8208();
          }
        }

        v31 = sub_1CF9E8228();
        sub_1CEFD0994(v12, v13, v14);
        v32 = v31 & v7;
        if (v2 >= v9)
        {
          v4 = v39;
          if (v32 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v39;
          if (v32 >= v9)
          {
            goto LABEL_21;
          }
        }

        if (v2 >= v32)
        {
LABEL_21:
          v33 = *(v3 + 48);
          v34 = (v33 + 16 * v2);
          v35 = (v33 + v10);
          if (16 * v2 != v10 || (v2 = v6, v34 >= v35 + 1))
          {
            *v34 = *v35;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v3 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v38;
    ++*(v3 + 36);
  }
}

void sub_1CF8DEF70(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x1D386CDE0](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_1CF8DEF70(a1, a2);
  }
}

unint64_t *sub_1CF8DF014(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1CF8DF174(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1CF8DF454(v8, v4, v2);
  result = MEMORY[0x1D386CDC0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1CF8DF174(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v3 = 0;
  v24 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(v24 + 48) + 8 * v12);
    sub_1CEFF6FC0(*(v24 + 56) + 16 * v12, v23);
    v21 = v13;
    sub_1CEFF6FC0(v23, &v22);
    sub_1CEFCCBDC(&v21, v19, &qword_1EC4C4C38, &qword_1CFA17E88);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1CEFCCC44(&v21, &qword_1EC4C4C38, &qword_1CFA17E88);
    sub_1CEFF70F4(&v20);
    if (Strong)
    {
      swift_unknownObjectRelease();
      result = sub_1CEFF70F4(v23);
      *(v17 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        return sub_1CF4F5CF4(v17, a2, v18, v24);
      }
    }

    else
    {
      result = sub_1CEFF70F4(v23);
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
      return sub_1CF4F5CF4(v17, a2, v18, v24);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1CF8DF328(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1CF8E60B8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_1CF8DF3C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1CF8E1840(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1CF8DF454(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1CF8DF174(result, a2, a3);

    return v6;
  }

  return result;
}

void sub_1CF8DF4CC(uint64_t (*a1)(void *, __n128), uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1CF82639C(a1, a2, *v2);
  if (!v3 && (v7 & 1) == 0)
  {
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 16);
      if (v8 == v9)
      {
        return;
      }

      v48 = a1;
      v11 = 16 * v6;
      while (v8 < v9)
      {
        v50 = v6;
        v12 = v5;
        v13 = v5 + v11;
        v14 = *(v5 + v11 + 48);
        v15 = *(v5 + v11 + 56);
        v49[0] = v14;
        v49[1] = v15;

        v16 = v48(v49);
        v15, v17, v18, v19, v20, v21, v22, v23;
        if (v16)
        {
          v6 = v50;
          v5 = v12;
        }

        else
        {
          v24 = v50;
          v5 = v12;
          if (v8 != v50)
          {
            if ((v50 & 0x8000000000000000) != 0)
            {
              goto LABEL_21;
            }

            if (v50 >= *v10)
            {
              goto LABEL_22;
            }

            if (v8 >= *v10)
            {
              goto LABEL_23;
            }

            v25 = &v12[1].super.isa + 2 * v50;
            v27 = *v25;
            v26 = v25[1];
            v28 = *(v13 + 48);
            v29 = *(v13 + 56);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_1CF772298(v12, v30, v31, v32, v33, v34, v35, v36);
            }

            v37 = v12 + 16 * v50;
            v38 = *(v37 + 5);
            *(v37 + 4) = v28;
            *(v37 + 5) = v29;
            v5 = v12;
            v38, v30, v31, v32, v33, v34, v35, v36;
            if (v8 >= *v12->tree)
            {
              goto LABEL_24;
            }

            v46 = v12 + v11;
            v47 = *&v12[1].tester[v11];
            *(v46 + 6) = v27;
            *(v46 + 7) = v26;
            v47, v39, v40, v41, v42, v43, v44, v45;
            *v2 = v12;
            v24 = v50;
          }

          v6 = v24 + 1;
        }

        ++v8;
        v10 = (v5 + 16);
        v9 = *(v5 + 16);
        v11 += 16;
        if (v8 == v9)
        {
          return;
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
    }

    __break(1u);
  }
}

void sub_1CF8DF6A8(uint64_t (*a1)(id *), uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1CF8264E0(a1, a2, *v2);
  if (!v3 && (v7 & 1) == 0)
  {
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 16);
      if (v8 == v9)
      {
        return;
      }

      v43 = a1;
      v34 = v2;
      v11 = 16 * v6;
      while (v8 < v9)
      {
        v12 = v6;
        v13 = v5;
        v14 = v5 + v11;
        v15 = *(v14 + 57);
        v16 = *(v14 + 56);
        v40 = *(v14 + 48);
        v41 = v16;
        v42 = v15;
        sub_1CEFD0988(v40, v16, v15);
        v17 = v43(&v40);
        sub_1CEFD0994(v40, v41, v42);
        if (v17)
        {
          v6 = v12;
          v5 = v13;
        }

        else
        {
          v18 = v12;
          if (v8 == v12)
          {
            v5 = v13;
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_23;
            }

            if (v12 >= *v10)
            {
              goto LABEL_24;
            }

            if (v8 >= *v10)
            {
              goto LABEL_25;
            }

            v19 = &v13[1] + 16 * v12;
            v20 = *(v14 + 48);
            v21 = *(v14 + 56);
            v22 = *(v14 + 57);
            v37 = *v19;
            v38 = 16 * v12;
            v35 = *(v19 + 9);
            v36 = *(v19 + 8);
            sub_1CEFD0988(*v19, v36, v35);
            v39 = v20;
            v23 = v20;
            v24 = v21;
            sub_1CEFD0988(v23, v21, v22);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1CF77234C(v13, v25, v26, v27, v28, v29, v30, v31);
            }

            if (v12 >= *v13->tree)
            {
              goto LABEL_26;
            }

            v32 = v13 + v38;
            sub_1CEFD0994(*(&v13[1].super.isa + v38), v13[1]._anon_8[v38], v13[1]._anon_8[v38 + 1]);
            *(v32 + 4) = v39;
            v32[40] = v24;
            v32[41] = v22;
            if (v8 >= *v13->tree)
            {
              goto LABEL_27;
            }

            v5 = v13;
            v33 = v13 + v11;
            sub_1CEFD0994(*&v13[1].tree[v11], v13[1].tester[v11], v13[1].tester[v11 + 1]);
            *(v33 + 6) = v37;
            v33[56] = v36;
            v33[57] = v35;
            *v34 = v13;
            v18 = v12;
          }

          v6 = v18 + 1;
        }

        ++v8;
        v10 = (v5 + 16);
        v9 = *(v5 + 16);
        v11 += 16;
        if (v8 == v9)
        {
          return;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1CF8DF904(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CF6F37A8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1CF8DF9B8(v5);
  *a1 = v3;
}

void sub_1CF8DF9B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CF9E7F88();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
        v6 = sub_1CF9E6DB8();
        *v6->tree = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_1CF8DFD5C(v15, v16, a1, v4);
      *v6->tree = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CF8DFAFC(0, v2, 1, a1);
  }
}

void sub_1CF8DFAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v33 = -v18;
    v34 = v17;
    v20 = a1 - a3;
    v27 = v18;
    v21 = v17 + v18 * a3;
LABEL_4:
    v31 = v19;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    v22 = v19;
    while (1)
    {
      sub_1CEFCCBDC(v21, v16, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCBDC(v22, v12, &unk_1EC4BF650, &unk_1CF9FCB40);
      v23 = sub_1CF81BCDC(v16, v12);
      sub_1CEFCCC44(v12, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCC44(v16, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (v4)
      {
        break;
      }

      if (v23)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v24 = v35;
        sub_1CEFE55D0(v21, v35, &unk_1EC4BF650, &unk_1CF9FCB40);
        swift_arrayInitWithTakeFrontToBack();
        sub_1CEFE55D0(v24, v22, &unk_1EC4BF650, &unk_1CF9FCB40);
        v22 += v33;
        v21 += v33;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v19 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1CF8DFD5C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v191 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v187 - v8;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v201 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v193 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v213 = &v187 - v12;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v208 = (&v187 - v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v207 = &v187 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v216 = (&v187 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v215 = &v187 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v218 = &v187 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v217 = &v187 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v187 - v28;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v187 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v203 = a3;
  v45 = a3[1];
  if (v45 >= 1)
  {
    v189 = &v187 - v41;
    v190 = v33;
    v197 = v44;
    v205 = v43;
    v206 = v42;
    v188 = a4;
    v46 = 0;
    v47 = MEMORY[0x1E69E7CC0];
    v48 = &unk_1EC4BF650;
    v214 = v7;
    v49 = v219;
    while (1)
    {
      v50 = v46;
      v51 = v46 + 1;
      v195 = v47;
      v192 = v50;
      if (v51 >= v45)
      {
        v66 = v51;
      }

      else
      {
        v204 = v45;
        v52 = *v203;
        v53 = *(v201 + 72);
        v54 = v50;
        v55 = *v203 + v53 * v51;
        v56 = v189;
        sub_1CEFCCBDC(v55, v189, &unk_1EC4BF650, &unk_1CF9FCB40);
        v57 = v52 + v53 * v54;
        v58 = v190;
        sub_1CEFCCBDC(v57, v190, &unk_1EC4BF650, &unk_1CF9FCB40);
        v59 = v209;
        LODWORD(v211) = sub_1CF81BCDC(v56, v58);
        v209 = v59;
        if (v59)
        {
          sub_1CEFCCC44(v58, &unk_1EC4BF650, &unk_1CF9FCB40);
          v186 = v56;
LABEL_151:
          sub_1CEFCCC44(v186, &unk_1EC4BF650, &unk_1CF9FCB40);
          v181 = v195;
LABEL_152:
          v181, v35, v36, v47, v37, v38, v39, v40;
          return;
        }

        sub_1CEFCCC44(v58, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCC44(v56, &unk_1EC4BF650, &unk_1CF9FCB40);
        v60 = v192 + 2;
        v4 = v52 + v53 * (v192 + 2);
        v61 = v53;
        v212 = v53;
        while (v204 != v60)
        {
          v62 = v197;
          sub_1CEFCCBDC(v4, v197, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCBDC(v55, v29, &unk_1EC4BF650, &unk_1CF9FCB40);
          v63 = v209;
          v64 = sub_1CF81BCDC(v62, v29);
          v209 = v63;
          if (v63)
          {
            sub_1CEFCCC44(v29, &unk_1EC4BF650, &unk_1CF9FCB40);
            v186 = v62;
            goto LABEL_151;
          }

          v65 = v64;
          sub_1CEFCCC44(v29, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v62, &unk_1EC4BF650, &unk_1CF9FCB40);
          ++v60;
          v61 = v212;
          v4 += v212;
          v55 += v212;
          if ((v211 ^ v65))
          {
            v66 = v60 - 1;
            goto LABEL_12;
          }
        }

        v66 = v204;
LABEL_12:
        v47 = v195;
        v49 = v219;
        v50 = v192;
        if (v211)
        {
          if (v66 < v192)
          {
            goto LABEL_177;
          }

          if (v192 < v66)
          {
            v187 = v29;
            v67 = v61 * (v66 - 1);
            v4 = v66;
            v68 = v66 * v61;
            v204 = v66;
            v69 = v192;
            v70 = v192 * v61;
            do
            {
              if (v69 != --v4)
              {
                v71 = *v203;
                if (!*v203)
                {
                  goto LABEL_181;
                }

                sub_1CEFE55D0(v71 + v70, v193, &unk_1EC4BF650, &unk_1CF9FCB40);
                if (v70 < v67 || v71 + v70 >= (v71 + v68))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v70 != v67)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1CEFE55D0(v193, v71 + v67, &unk_1EC4BF650, &unk_1CF9FCB40);
                v47 = v195;
                v49 = v219;
                v61 = v212;
              }

              ++v69;
              v67 -= v61;
              v68 -= v61;
              v70 += v61;
            }

            while (v69 < v4);
            v29 = v187;
            v48 = &unk_1EC4BF650;
            v50 = v192;
            v66 = v204;
          }
        }
      }

      v72 = v203[1];
      if (v66 >= v72)
      {
        goto LABEL_35;
      }

      if (__OFSUB__(v66, v50))
      {
        goto LABEL_173;
      }

      if (v66 - v50 >= v188)
      {
LABEL_35:
        v4 = v66;
        if (v66 < v50)
        {
          goto LABEL_172;
        }

        goto LABEL_36;
      }

      if (__OFADD__(v50, v188))
      {
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      if (v50 + v188 >= v72)
      {
        v73 = v203[1];
      }

      else
      {
        v73 = v50 + v188;
      }

      if (v73 < v50)
      {
        goto LABEL_176;
      }

      if (v66 == v73)
      {
        goto LABEL_35;
      }

      v187 = v29;
      v122 = *v203;
      v123 = *(v201 + 72);
      v124 = *v203 + v123 * (v66 - 1);
      v210 = -v123;
      v211 = v122;
      v125 = v50 - v66;
      v194 = v123;
      v126 = v122 + v66 * v123;
      v196 = v73;
      while (2)
      {
        v204 = v66;
        v198 = v126;
        v199 = v125;
        v200 = v124;
        v130 = v124;
        while (1)
        {
          v131 = v217;
          sub_1CEFCCBDC(v126, v217, &unk_1EC4BF650, &unk_1CF9FCB40);
          v132 = v218;
          sub_1CEFCCBDC(v130, v218, &unk_1EC4BF650, &unk_1CF9FCB40);
          v133 = *(v214 + 48);
          v134 = v131;
          v48 = &unk_1EC4BF650;
          sub_1CEFCCBDC(v134, v9, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCBDC(v132, &v9[v133], &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1CEFCCBDC(v9, v215, &unk_1EC4BF650, &unk_1CF9FCB40);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
            if (swift_getEnumCaseMultiPayload() != 6)
            {
              v127 = v215;
              v128 = &unk_1EC4BFCC0;
              v129 = &unk_1CF9FCB50;
              goto LABEL_91;
            }

            v212 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590) + 48);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v141 = v205;
              sub_1CEFCCBDC(&v9[v133], v205, &unk_1EC4BF650, &unk_1CF9FCB40);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload)
              {
                if (EnumCaseMultiPayload != 1)
                {
                  v173 = v205;
                  v174 = &unk_1EC4BFD70;
                  v175 = &qword_1CFA12AC0;
LABEL_132:
                  sub_1CEFCCC44(v173, v174, v175);
                  v127 = v215 + v212;
                  v128 = &unk_1EC4BEC00;
                  v129 = &unk_1CF9FCB60;
LABEL_91:
                  sub_1CEFCCC44(v127, v128, v129);
                  goto LABEL_92;
                }

                v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
                v144 = v143[12];
                v145 = v205;
                v146 = v205 + v143[20];

                sub_1CF1D5750(*v146, *(v146 + 1), *(v146 + 2), *(v146 + 3), *(v146 + 4), *(v146 + 5), *(v146 + 6), *(v146 + 7), *(v146 + 8), *(v146 + 9), *(v146 + 10), *(v146 + 11));
                sub_1CEFCCC44(v145 + v144, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                v147 = *v145;
                v48 = &unk_1EC4BF650;
              }

              else
              {
                v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
                v165 = *(v164 + 48);

                sub_1CEFCCC44(v141 + v165, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                v147 = *v141;
              }
            }

            else
            {
              v155 = v207;
              sub_1CEFCCBDC(&v9[v133], v207, &unk_1EC4BF650, &unk_1CF9FCB40);
              v156 = swift_getEnumCaseMultiPayload();
              if (v156)
              {
                if (v156 != 1)
                {
                  v173 = v207;
                  v174 = &unk_1EC4BFCC0;
                  v175 = &unk_1CF9FCB50;
                  goto LABEL_132;
                }

                v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
                v202 = v157[12];
                v158 = v157[16];
                v159 = v207;
                v160 = v207 + v157[20];

                sub_1CF1D56D0(*v160, *(v160 + 8), *(v160 + 16), *(v160 + 24), *(v160 + 32), *(v160 + 40), *(v160 + 48), *(v160 + 56));
                v161 = v159 + v202;
              }

              else
              {
                v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
                v170 = *(v169 + 48);

                v161 = v155 + v170;
              }

              sub_1CEFCCC44(v161, &qword_1EC4C1B40, &unk_1CF9FCB70);
            }

            sub_1CEFCCC44(v215 + v212, &unk_1EC4BEC00, &unk_1CF9FCB60);
            goto LABEL_122;
          }

          sub_1CEFCCBDC(v9, v216, &unk_1EC4BF650, &unk_1CF9FCB40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
          if (swift_getEnumCaseMultiPayload() != 6)
          {
            v127 = v216;
            v128 = &unk_1EC4BFD70;
            v129 = &qword_1CFA12AC0;
            goto LABEL_91;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v135 = v208;
            sub_1CEFCCBDC(&v9[v133], v208, &unk_1EC4BF650, &unk_1CF9FCB40);
            v136 = swift_getEnumCaseMultiPayload();
            if (v136)
            {
              if (v136 != 1)
              {
                v176 = v208;
                v177 = &unk_1EC4BFD70;
                v178 = &qword_1CFA12AC0;
                goto LABEL_130;
              }

              v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
              v212 = v137[12];
              v138 = v208;
              v139 = v208 + v137[20];

              sub_1CF1D5750(*v139, *(v139 + 1), *(v139 + 2), *(v139 + 3), *(v139 + 4), *(v139 + 5), *(v139 + 6), *(v139 + 7), *(v139 + 8), *(v139 + 9), *(v139 + 10), *(v139 + 11));
              sub_1CEFCCC44(v138 + v212, &unk_1EC4BFBB0, &qword_1CF9FCB90);
              v140 = *v138;
            }

            else
            {
              v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
              v163 = *(v162 + 48);

              sub_1CEFCCC44(v135 + v163, &unk_1EC4BFBB0, &qword_1CF9FCB90);
              v140 = *v135;
            }

            goto LABEL_118;
          }

          v148 = v206;
          sub_1CEFCCBDC(&v9[v133], v206, &unk_1EC4BF650, &unk_1CF9FCB40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
          v149 = swift_getEnumCaseMultiPayload();
          if (!v149)
          {
            v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
            v167 = *(v166 + 48);

            v154 = v148 + v167;
            goto LABEL_117;
          }

          if (v149 != 1)
          {
            break;
          }

          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
          v212 = v150[12];
          v151 = v150[16];
          v152 = v206;
          v153 = v206 + v150[20];

          sub_1CF1D56D0(*v153, *(v153 + 8), *(v153 + 16), *(v153 + 24), *(v153 + 32), *(v153 + 40), *(v153 + 48), *(v153 + 56));
          v154 = v152 + v212;
          v48 = &unk_1EC4BF650;
LABEL_117:
          sub_1CEFCCC44(v154, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_118:
          v168 = v216;

LABEL_122:
          sub_1CEFCCC44(&v9[v133], &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v218, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v217, &unk_1EC4BF650, &unk_1CF9FCB40);
          v49 = v219;
          if (!v211)
          {
            goto LABEL_178;
          }

          v171 = v213;
          sub_1CEFE55D0(v126, v213, &unk_1EC4BF650, &unk_1CF9FCB40);
          swift_arrayInitWithTakeFrontToBack();
          sub_1CEFE55D0(v171, v130, &unk_1EC4BF650, &unk_1CF9FCB40);
          v130 += v210;
          v126 += v210;
          if (__CFADD__(v125++, 1))
          {
            goto LABEL_93;
          }
        }

        v176 = v206;
        v177 = &unk_1EC4BFCC0;
        v178 = &unk_1CF9FCB50;
LABEL_130:
        sub_1CEFCCC44(v176, v177, v178);
        v179 = v216;

LABEL_92:
        v49 = v219;
        sub_1CEFCCC44(v9, &qword_1EC4C4FB0, &unk_1CFA17180);
        sub_1CEFCCC44(v218, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCC44(v217, &unk_1EC4BF650, &unk_1CF9FCB40);
LABEL_93:
        v66 = v204 + 1;
        v124 = v200 + v194;
        v125 = v199 - 1;
        v126 = v198 + v194;
        v4 = v196;
        if (v204 + 1 != v196)
        {
          continue;
        }

        break;
      }

      v47 = v195;
      v29 = v187;
      if (v196 < v192)
      {
        goto LABEL_172;
      }

LABEL_36:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v47 = v195;
      }

      else
      {
        v47 = sub_1CF1F6594(0, *v195->tree + 1, 1, v195, v37, v38, v39, v40);
      }

      v75 = *v47->tree;
      v74 = *v47->tester;
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v47 = sub_1CF1F6594((v74 > 1), v75 + 1, 1, v47, v37, v38, v39, v40);
      }

      *v47->tree = v76;
      v77 = v47 + 16 * v75;
      *(v77 + 4) = v192;
      *(v77 + 5) = v4;
      v78 = *v191;
      if (!*v191)
      {
        goto LABEL_182;
      }

      v196 = v4;
      if (v75)
      {
        v79 = v78;
        v49 = v219;
        while (1)
        {
          v4 = v76 - 1;
          if (v76 >= 4)
          {
            break;
          }

          if (v76 == 3)
          {
            isa = v47[1].super.isa;
            v81 = *v47[1]._anon_8;
            v90 = __OFSUB__(v81, isa);
            v82 = v81 - isa;
            v83 = v90;
LABEL_56:
            if (v83)
            {
              goto LABEL_161;
            }

            v96 = &v47->super.isa + 2 * v76;
            v98 = *v96;
            v97 = v96[1];
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_164;
            }

            v102 = &v47[1].super.isa + 2 * v4;
            v104 = *v102;
            v103 = v102[1];
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_167;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_168;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v4 = v76 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v106 = &v47->super.isa + 2 * v76;
          v108 = *v106;
          v107 = v106[1];
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_70:
          if (v101)
          {
            goto LABEL_163;
          }

          v109 = v47 + 16 * v4;
          v111 = *(v109 + 4);
          v110 = *(v109 + 5);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_166;
          }

          if (v112 < v100)
          {
            goto LABEL_87;
          }

LABEL_77:
          v49 = v4 - 1;
          if (v4 - 1 >= v76)
          {
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            v181 = sub_1CF6F3368(v49, v35, v36, v47, v37, v38, v39, v40);
            goto LABEL_140;
          }

          if (!*v203)
          {
            goto LABEL_179;
          }

          v48 = v29;
          v117 = v47;
          v118 = *(&v47[1].super.isa + 2 * v49);
          v119 = *&v47[1]._anon_8[16 * v4];
          v120 = v209;
          sub_1CF8E0FB0(*v203 + *(v201 + 72) * v118, *v203 + *(v201 + 72) * *(&v47[1].super.isa + 2 * v4), *v203 + *(v201 + 72) * v119, v79);
          v209 = v120;
          if (v120)
          {
            v181 = v117;
            goto LABEL_152;
          }

          if (v119 < v118)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_1CF6F3368(v117, v35, v36, v47, v37, v38, v39, v40);
          }

          if (v49 >= *v117->tree)
          {
            goto LABEL_158;
          }

          v121 = v117 + 16 * v49;
          *(v121 + 4) = v118;
          *(v121 + 5) = v119;
          v220 = v117;
          sub_1CF6F32DC(v4);
          v47 = v220;
          v76 = *v220->tree;
          v49 = v219;
          v29 = v48;
          v48 = &unk_1EC4BF650;
          if (v76 <= 1)
          {
            goto LABEL_87;
          }
        }

        v84 = &v47[1] + 16 * v76;
        v85 = *(v84 - 64);
        v86 = *(v84 - 56);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_159;
        }

        v89 = *(v84 - 48);
        v88 = *(v84 - 40);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_160;
        }

        v91 = &v47->super.isa + 2 * v76;
        v93 = *v91;
        v92 = v91[1];
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_162;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_165;
        }

        if (v95 >= v87)
        {
          v113 = &v47[1].super.isa + 2 * v4;
          v115 = *v113;
          v114 = v113[1];
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_171;
          }

          if (v82 < v116)
          {
            v4 = v76 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

      v49 = v219;
LABEL_87:
      v45 = v203[1];
      v46 = v196;
      if (v196 >= v45)
      {
        goto LABEL_137;
      }
    }
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_137:
  v48 = *v191;
  if (*v191)
  {
    v49 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v209;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_174;
    }

    v181 = v49;
LABEL_140:
    v220 = v181;
    v49 = *v181->tree;
    if (v49 < 2)
    {
      goto LABEL_152;
    }

    while (*v203)
    {
      v182 = *(&v181->super.isa + 2 * v49);
      v183 = v181;
      v184 = *&v181->tester[16 * v49];
      sub_1CF8E0FB0(*v203 + *(v201 + 72) * v182, *v203 + *(v201 + 72) * *&v181->tree[16 * v49], *v203 + *(v201 + 72) * v184, v48);
      if (v4)
      {
        v181 = v183;
        goto LABEL_152;
      }

      if (v184 < v182)
      {
        goto LABEL_169;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_1CF6F3368(v183, v35, v36, v47, v37, v38, v39, v40);
      }

      if (v49 - 2 >= *v183->tree)
      {
        goto LABEL_170;
      }

      v185 = &v183->super.isa + 2 * v49;
      *v185 = v182;
      v185[1] = v184;
      v220 = v183;
      sub_1CF6F32DC(v49 - 1);
      v181 = v220;
      v49 = *v220->tree;
      if (v49 <= 1)
      {
        goto LABEL_152;
      }
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
  }

  __break(1u);
}