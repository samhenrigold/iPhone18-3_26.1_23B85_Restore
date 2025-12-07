uint64_t sub_1AC286FC4(const void *a1)
{
  sub_1AC30A9DC("%p", a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C810, &qword_1AC312F58);
  sub_1AC30B18C();
  v4 = v1;
  MEMORY[0x1E69E5928](v3);
  v4[3] = sub_1AC3095DC();
  v4[4] = sub_1AC28C174();
  *v4 = v3;
  sub_1AC206300();
  v5 = sub_1AC30A94C();

  return v5;
}

uint64_t sub_1AC2870AC(uint64_t a1)
{
  sub_1AC30915C();
  v3 = sub_1AC30987C();

  if (v3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC287128(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v35 = a1;
  v49 = 0;
  v48 = 0;
  v34 = 0;
  v47 = 0;
  v33 = 0;
  v37 = sub_1AC309E6C();
  v38 = *(v37 - 8);
  v39 = v38;
  MEMORY[0x1EEE9AC00](v35);
  v40 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v3[1];
  LOBYTE(v2) = v3[2];
  LOBYTE(v48) = *v3;
  HIBYTE(v48) = v4;
  v49 = v2;
  v41 = v5 + 16;
  v47 = v5 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v6 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    [v32 reloadSpecifiers];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v7 = v40;
  v8 = sub_1AC274D88();
  (*(v39 + 16))(v7, v8, v37);
  v30 = sub_1AC309E4C();
  v27 = v30;
  v29 = sub_1AC30AD2C();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v31 = sub_1AC30B18C();
  if (os_log_type_enabled(v30, v29))
  {
    v9 = v33;
    v18 = sub_1AC30AE6C();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v16 = 0;
    v19 = sub_1AC213EE4(0, v15, v15);
    v17 = v19;
    v20 = sub_1AC213EE4(v16, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v45 = v18;
    v44 = v19;
    v43 = v20;
    v21 = 0;
    v22 = &v45;
    sub_1AC213F38(0, &v45);
    sub_1AC213F38(v21, v22);
    v42 = v31;
    v23 = &v12;
    MEMORY[0x1EEE9AC00](&v12);
    v24 = &v12 - 6;
    *(&v12 - 4) = v10;
    *(&v12 - 3) = &v44;
    *(&v12 - 2) = &v43;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v26 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v27, v28, "Bobble: reload for value change", v14, 2u);
      v12 = 0;
      sub_1AC213F98(v17, 0, v15);
      sub_1AC213F98(v20, v12, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v13 = v26;
    }
  }

  else
  {

    v13 = v33;
  }

  return (*(v39 + 8))(v40, v37);
}

id sub_1AC28766C(char a1)
{
  v8 = a1 & 1;
  v7 = v1;
  MEMORY[0x1E69E5928](v1);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BobbleSettingsViewController();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  MEMORY[0x1E69E5920](v1);
  sub_1AC28B754();
  v4 = sub_1AC28AE9C();
  sub_1AC309BDC();
  return [v5 reloadSpecifiers];
}

uint64_t sub_1AC28779C()
{
  v74 = sub_1AC28C0A4;
  v76 = sub_1AC215C98;
  v79 = sub_1AC28C0AC;
  v82 = sub_1AC28C0B4;
  v86 = sub_1AC263C84;
  v88 = sub_1AC215C90;
  v90 = sub_1AC215C90;
  v92 = sub_1AC215CA4;
  v94 = sub_1AC215C90;
  v96 = sub_1AC215C90;
  v98 = sub_1AC2482A8;
  v100 = sub_1AC215C90;
  v102 = sub_1AC215C90;
  v105 = sub_1AC263C90;
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v65 = "HeadphoneSettingsUI/BobbleSettingsController.swift";
  v118 = 0;
  v66 = 0;
  v71 = sub_1AC309E6C();
  v69 = *(v71 - 8);
  v70 = v71 - 8;
  v67 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71);
  v0 = v38 - v67;
  v68 = v38 - v67;
  v118 = v1;
  v2 = sub_1AC274D88();
  (*(v69 + 16))(v0, v2, v71);
  MEMORY[0x1E69E5928](v73);
  v72 = 24;
  v84 = 7;
  v3 = swift_allocObject();
  v4 = v73;
  v75 = v3;
  *(v3 + 16) = v73;
  MEMORY[0x1E69E5928](v4);
  v80 = swift_allocObject();
  *(v80 + 16) = v73;
  sub_1AC20BEE0();

  MEMORY[0x1E69E5928](v73);
  v85 = swift_allocObject();
  *(v85 + 16) = v73;
  v109 = sub_1AC309E4C();
  v110 = sub_1AC30AD2C();
  v81 = 17;
  v89 = swift_allocObject();
  *(v89 + 16) = 32;
  v91 = swift_allocObject();
  v78 = 8;
  *(v91 + 16) = 8;
  v83 = 32;
  v5 = swift_allocObject();
  v6 = v75;
  v77 = v5;
  *(v5 + 16) = v74;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v77;
  v93 = v7;
  *(v7 + 16) = v76;
  *(v7 + 24) = v8;
  v95 = swift_allocObject();
  *(v95 + 16) = 64;
  v97 = swift_allocObject();
  *(v97 + 16) = v78;
  v9 = swift_allocObject();
  v10 = v80;
  v99 = v9;
  *(v9 + 16) = v79;
  *(v9 + 24) = v10;
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = 1;
  v11 = swift_allocObject();
  v12 = v85;
  v87 = v11;
  *(v11 + 16) = v82;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v87;
  v106 = v13;
  *(v13 + 16) = v86;
  *(v13 + 24) = v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v104 = sub_1AC30B18C();
  v107 = v15;

  v16 = v89;
  v17 = v107;
  *v107 = v88;
  v17[1] = v16;

  v18 = v91;
  v19 = v107;
  v107[2] = v90;
  v19[3] = v18;

  v20 = v93;
  v21 = v107;
  v107[4] = v92;
  v21[5] = v20;

  v22 = v95;
  v23 = v107;
  v107[6] = v94;
  v23[7] = v22;

  v24 = v97;
  v25 = v107;
  v107[8] = v96;
  v25[9] = v24;

  v26 = v99;
  v27 = v107;
  v107[10] = v98;
  v27[11] = v26;

  v28 = v101;
  v29 = v107;
  v107[12] = v100;
  v29[13] = v28;

  v30 = v103;
  v31 = v107;
  v107[14] = v102;
  v31[15] = v30;

  v32 = v106;
  v33 = v107;
  v107[16] = v105;
  v33[17] = v32;
  sub_1AC206300();

  if (os_log_type_enabled(v109, v110))
  {
    v34 = v66;
    v56 = sub_1AC30AE6C();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v55 = 1;
    v57 = sub_1AC213EE4(1, v54, v54);
    v58 = sub_1AC213EE4(v55, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v59 = &v115;
    v115 = v56;
    v60 = &v114;
    v114 = v57;
    v61 = &v113;
    v113 = v58;
    sub_1AC213F38(2, &v115);
    sub_1AC213F38(3, v59);
    v111 = v88;
    v112 = v89;
    sub_1AC213F4C(&v111, v59, v60, v61);
    v62 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v111 = v90;
      v112 = v91;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v53 = 0;
      v111 = v92;
      v112 = v93;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v52 = 0;
      v111 = v94;
      v112 = v95;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v51 = 0;
      v111 = v96;
      v112 = v97;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v50 = 0;
      v111 = v98;
      v112 = v99;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v49 = 0;
      v111 = v100;
      v112 = v101;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v48 = 0;
      v111 = v102;
      v112 = v103;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      v47 = 0;
      v111 = v105;
      v112 = v106;
      sub_1AC213F4C(&v111, &v115, &v114, &v113);
      _os_log_impl(&dword_1AC1C3000, v109, v110, "Bobble: headGesturesEnabled, HeadphoneDevice:%s aad: %@ %hhd", v56, 0x19u);
      v46 = 1;
      sub_1AC213F98(v57, 1, v54);
      sub_1AC213F98(v58, v46, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v35 = v73;
  v36 = MEMORY[0x1E69E5920](v109);
  (*(v69 + 8))(v68, v71, v36);
  v44 = sub_1AC2068B8();
  v45 = (*((*v35 & *MEMORY[0x1E69E7D40]) + 0x98))();
  if (v45)
  {
    v43 = v45;
  }

  else
  {
    sub_1AC30B05C(v63, 11, 2, v64, 68, 2, v65, 50, 2, 197, 0);
    __break(1u);
  }

  v38[0] = v43;
  v38[1] = sub_1AC30915C();
  MEMORY[0x1E69E5920](v38[0]);
  v39 = sub_1AC30988C();

  v42 = &v117;
  v117 = v39;
  v40 = &v116;
  v116 = 1;
  v41 = type metadata accessor for AAMultiState(0);
  sub_1AC21B624();
  sub_1AC30B1BC();
  return sub_1AC30ADEC();
}

uint64_t sub_1AC2885AC(void *a1)
{
  sub_1AC30A9DC("%p", v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C810, &qword_1AC312F58);
  sub_1AC30B18C();
  v7 = v2;
  v8 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x98))();
  if (v8)
  {
    v6 = v8;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 195, 0);
    __break(1u);
  }

  v7[3] = sub_1AC3095DC();
  v7[4] = sub_1AC28C174();
  *v7 = v6;
  sub_1AC206300();
  v5 = sub_1AC30A94C();

  return v5;
}

uint64_t sub_1AC288750(void *a1)
{
  v5 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x98))();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 195, 0);
    __break(1u);
  }

  sub_1AC30915C();
  MEMORY[0x1E69E5920](v4);
  v3 = sub_1AC30987C();

  if (v3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC2888A4(void *a1)
{
  v4 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x98))();
  if (v4)
  {
    v3 = v4;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 195, 0);
    __break(1u);
  }

  sub_1AC30915C();
  MEMORY[0x1E69E5920](v3);
  v2 = sub_1AC30988C();

  return sub_1AC20BC98(v2);
}

uint64_t sub_1AC288A38(void *a1)
{
  v5 = sub_1AC282EC8();
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 201, 0);
    __break(1u);
  }

  if ([a1 BOOLValue] == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  (*(*v3 + 144))(v2);
}

uint64_t sub_1AC288BF4()
{
  v0 = sub_1AC30A9DC("BOBBLE_GESTURE_ON", 17, 1);
  v3 = sub_1AC274FA8(v0, v1);

  return v3;
}

uint64_t sub_1AC288D04(uint64_t a1)
{
  v154 = a1;
  v175 = 0;
  v174 = 0;
  v153 = 0;
  v169 = 0;
  v155 = sub_1AC309E6C();
  v156 = *(v155 - 8);
  v157 = v156;
  v158 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v160 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v159 = &v53 - v160;
  MEMORY[0x1EEE9AC00](v2);
  v161 = &v53 - v160;
  v175 = v3;
  v174 = v1;
  if (sub_1AC28A078())
  {
    v151 = 1;
    v152 = v153;
  }

  else
  {
    swift_unknownObjectRetain();
    v149 = sub_1AC3095DC();
    v150 = swift_dynamicCastClass();
    if (v150)
    {
      v148 = v150;
    }

    else
    {
      swift_unknownObjectRelease();
      v148 = 0;
    }

    v147 = v148;
    if (v148)
    {
      v146 = v147;
      v4 = v161;
      v109 = v147;
      v169 = v147;
      v5 = sub_1AC274D88();
      (*(v157 + 16))(v4, v5, v155);
      v6 = v109;
      v108 = 24;
      v128 = 7;
      v7 = swift_allocObject();
      v8 = v109;
      v114 = v7;
      *(v7 + 16) = v109;
      v9 = v8;
      v10 = swift_allocObject();
      v11 = v109;
      v121 = v10;
      *(v10 + 16) = v109;
      v12 = v11;
      v129 = swift_allocObject();
      *(v129 + 16) = v109;
      v145 = sub_1AC309E4C();
      v110 = v145;
      v144 = sub_1AC30AD2C();
      v111 = v144;
      v124 = 17;
      v132 = swift_allocObject();
      v112 = v132;
      v117 = 32;
      *(v132 + 16) = 32;
      v13 = swift_allocObject();
      v14 = v117;
      v133 = v13;
      v113 = v13;
      v119 = 8;
      *(v13 + 16) = 8;
      v127 = v14;
      v15 = swift_allocObject();
      v16 = v114;
      v115 = v15;
      *(v15 + 16) = sub_1AC28BE6C;
      *(v15 + 24) = v16;
      v17 = swift_allocObject();
      v18 = v115;
      v134 = v17;
      v116 = v17;
      *(v17 + 16) = sub_1AC215C98;
      *(v17 + 24) = v18;
      v135 = swift_allocObject();
      v118 = v135;
      *(v135 + 16) = v117;
      v136 = swift_allocObject();
      v120 = v136;
      *(v136 + 16) = v119;
      v19 = swift_allocObject();
      v20 = v121;
      v122 = v19;
      *(v19 + 16) = sub_1AC28C0BC;
      *(v19 + 24) = v20;
      v21 = swift_allocObject();
      v22 = v122;
      v137 = v21;
      v123 = v21;
      *(v21 + 16) = sub_1AC215C98;
      *(v21 + 24) = v22;
      v138 = swift_allocObject();
      v125 = v138;
      *(v138 + 16) = 0;
      v139 = swift_allocObject();
      v126 = v139;
      *(v139 + 16) = 1;
      v23 = swift_allocObject();
      v24 = v129;
      v130 = v23;
      *(v23 + 16) = sub_1AC28C0C4;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v130;
      v142 = v25;
      v131 = v25;
      *(v25 + 16) = sub_1AC270F58;
      *(v25 + 24) = v26;
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
      v140 = sub_1AC30B18C();
      v141 = v27;

      v28 = v132;
      v29 = v141;
      *v141 = sub_1AC215C90;
      v29[1] = v28;

      v30 = v133;
      v31 = v141;
      v141[2] = sub_1AC215C90;
      v31[3] = v30;

      v32 = v134;
      v33 = v141;
      v141[4] = sub_1AC215CA4;
      v33[5] = v32;

      v34 = v135;
      v35 = v141;
      v141[6] = sub_1AC215C90;
      v35[7] = v34;

      v36 = v136;
      v37 = v141;
      v141[8] = sub_1AC215C90;
      v37[9] = v36;

      v38 = v137;
      v39 = v141;
      v141[10] = sub_1AC215CA4;
      v39[11] = v38;

      v40 = v138;
      v41 = v141;
      v141[12] = sub_1AC215C90;
      v41[13] = v40;

      v42 = v139;
      v43 = v141;
      v141[14] = sub_1AC215C90;
      v43[15] = v42;

      v44 = v141;
      v45 = v142;
      v141[16] = sub_1AC270F64;
      v44[17] = v45;
      sub_1AC206300();

      if (os_log_type_enabled(v145, v144))
      {
        v46 = v153;
        v101 = sub_1AC30AE6C();
        v98 = v101;
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
        v102 = sub_1AC213EE4(0, v99, v99);
        v100 = v102;
        v103 = 2;
        v104 = sub_1AC213EE4(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v166 = v101;
        v165 = v102;
        v164 = v104;
        v105 = &v166;
        sub_1AC213F38(v103, &v166);
        sub_1AC213F38(3, v105);
        v162 = sub_1AC215C90;
        v163 = v112;
        sub_1AC213F4C(&v162, v105, &v165, &v164);
        v106 = v46;
        v107 = v46;
        if (v46)
        {
          v96 = 0;

          __break(1u);
        }

        else
        {
          v162 = sub_1AC215C90;
          v163 = v113;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v94 = 0;
          v95 = 0;
          v162 = sub_1AC215CA4;
          v163 = v116;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v92 = 0;
          v93 = 0;
          v162 = sub_1AC215C90;
          v163 = v118;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v90 = 0;
          v91 = 0;
          v162 = sub_1AC215C90;
          v163 = v120;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v88 = 0;
          v89 = 0;
          v162 = sub_1AC215CA4;
          v163 = v123;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v86 = 0;
          v87 = 0;
          v162 = sub_1AC215C90;
          v163 = v125;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v84 = 0;
          v85 = 0;
          v162 = sub_1AC215C90;
          v163 = v126;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v82 = 0;
          v83 = 0;
          v162 = sub_1AC270F64;
          v163 = v131;
          sub_1AC213F4C(&v162, &v166, &v165, &v164);
          v80 = 0;
          v81 = 0;
          _os_log_impl(&dword_1AC1C3000, v110, v111, "Bobble: headGesturesEnabled, HeadphoneDevice:%s aad: %s %hhu", v98, 0x19u);
          sub_1AC213F98(v100, 0, v99);
          sub_1AC213F98(v104, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1AC30AE4C();

          v97 = v80;
        }
      }

      else
      {
        v47 = v153;

        v97 = v47;
      }

      v79 = v97;

      (*(v157 + 8))(v161, v155);
      v75 = sub_1AC30915C();
      v76 = sub_1AC30986C();

      v168 = v76;
      v167 = 2;
      v77 = type metadata accessor for AAFeatureCapability(0);
      sub_1AC212BF0();
      v78 = sub_1AC30B1BC();

      v151 = v78;
      v152 = v79;
    }

    else
    {
      v48 = v159;
      v49 = sub_1AC274D88();
      (*(v157 + 16))(v48, v49, v155);
      v73 = sub_1AC309E4C();
      v70 = v73;
      v72 = sub_1AC30AD2C();
      v71 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
      v74 = sub_1AC30B18C();
      if (os_log_type_enabled(v73, v72))
      {
        v50 = v153;
        v61 = sub_1AC30AE6C();
        v57 = v61;
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
        v59 = 0;
        v62 = sub_1AC213EE4(0, v58, v58);
        v60 = v62;
        v63 = sub_1AC213EE4(v59, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v173 = v61;
        v172 = v62;
        v171 = v63;
        v64 = 0;
        v65 = &v173;
        sub_1AC213F38(0, &v173);
        sub_1AC213F38(v64, v65);
        v170 = v74;
        v66 = &v53;
        MEMORY[0x1EEE9AC00](&v53);
        v67 = &v53 - 6;
        *(&v53 - 4) = v51;
        *(&v53 - 3) = &v172;
        *(&v53 - 2) = &v171;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
        sub_1AC218014();
        sub_1AC30AAAC();
        v69 = v50;
        if (v50)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1AC1C3000, v70, v71, "Bobble not supported!", v57, 2u);
          v55 = 0;
          sub_1AC213F98(v60, 0, v58);
          sub_1AC213F98(v63, v55, MEMORY[0x1E69E7CA0] + 8);
          sub_1AC30AE4C();

          v56 = v69;
        }
      }

      else
      {

        v56 = v153;
      }

      v54 = v56;

      (*(v157 + 8))(v159, v155);
      v151 = 0;
      v152 = v54;
    }
  }

  return v151 & 1;
}

BOOL sub_1AC28A078()
{
  sub_1AC30A9DC("com.apple.BluetoothSettings");
  v1 = sub_1AC30A91C();
  CFPreferencesAppSynchronize(v1);
  MEMORY[0x1E69E5920](v1);

  sub_1AC30A9DC("forceShowBobble", 15, 1);
  v3 = sub_1AC30A91C();
  sub_1AC30A9DC("com.apple.BluetoothSettings", 27, 1);
  v2 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, v2, 0);
  MEMORY[0x1E69E5920](v2);

  MEMORY[0x1E69E5920](v3);

  return AppBooleanValue != 0;
}

uint64_t sub_1AC28A18C()
{
  v2 = sub_1AC30916C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C808, &qword_1AC312F50);
  v1 = sub_1AC30AE7C();
  MEMORY[0x1E69E5920](v2);
  return v1;
}

uint64_t sub_1AC28A200(uint64_t a1)
{
  sub_1AC30915C();
  v2 = sub_1AC30986C();

  return sub_1AC20BC98(v2);
}

uint64_t sub_1AC28A2BC(uint64_t a1)
{
  v29 = a1;
  v28 = sub_1AC28C0CC;
  v36 = 0;
  v35 = 0;
  v21 = 0;
  v25 = sub_1AC309AAC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v10 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v9 - v10;
  v36 = v2;
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v11 = MEMORY[0x1E69A2B08];
  v12 = sub_1AC205220();
  v13 = v3;
  sub_1AC205220();
  v27 = sub_1AC309D3C();
  v16 = 1;
  v4 = sub_1AC30A9DC("BOBBLE_GESTURE_SWITCH_GROUP", 27, 1);
  v14 = v5;
  v17 = sub_1AC274FA8(v4, v5);
  v18 = v6;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C800, qword_1AC312E78);
  v19 = v34;
  v34[3] = v7;
  v34[0] = v15;
  v20 = sel_headGestureOnInput_;
  v22 = type metadata accessor for BobbleSettingsViewController();
  sub_1AC20599C();
  sub_1AC309A9C();
  v30 = sub_1AC309CEC();
  (*(v23 + 8))(v26, v25);

  MEMORY[0x1E69E5928](v29);
  v33 = v29;
  v31 = sub_1AC309D0C();
  MEMORY[0x1E69E5920](v29);

  v32 = sub_1AC309D2C();

  return v32;
}

uint64_t sub_1AC28A588(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C140, &qword_1AC3160B0);
  sub_1AC30B18C();
  v6 = v2;
  sub_1AC3095DC();
  *v6 = sub_1AC3095CC();
  v6[1] = v3;
  MEMORY[0x1E69E5928](a2);
  v6[2] = a2;
  sub_1AC206300();
  sub_1AC30A83C();
  v8 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC28A744(void *a1)
{
  v26 = 0;
  v22 = 0;
  v18 = 0;
  v27 = a1;
  if ([a1 userInfo])
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v14, &v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0uLL;
    v24 = 0uLL;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }

    v12 = v13;
  }

  else
  {
    sub_1AC204664(v25);
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  v22 = v12;
  sub_1AC3095DC();
  sub_1AC3095CC();
  v10 = sub_1AC30A91C();

  v11 = [v12 objectForKey_];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v16, &v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }

    v8 = v9;
  }

  else
  {
    sub_1AC204664(v21);
    v8 = 0;
  }

  if (!v8)
  {
    MEMORY[0x1E69E5920](v12);
LABEL_25:
    v1 = sub_1AC30A9DC("BOBBLE_GESTURE_OFF", 18, 1);
    v4 = sub_1AC274FA8(v1, v2);

    return v4;
  }

  v18 = v8;
  sub_1AC30915C();
  v5 = sub_1AC30988C();

  v6 = sub_1AC28D540(v5);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v12);
  return v6;
}

uint64_t sub_1AC28AB7C()
{
  v3 = sub_1AC282EC8();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 245, 0);
    __break(1u);
  }

  v1 = (*(*v2 + 232))();

  return sub_1AC28D398(v1);
}

uint64_t sub_1AC28AD0C()
{
  v3 = sub_1AC282EC8();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 249, 0);
    __break(1u);
  }

  v1 = (*(*v2 + 184))();

  return sub_1AC28D398(v1);
}

void *sub_1AC28AE9C()
{
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___movieLoopView);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC28AFA8(v6);
  MEMORY[0x1E69E5928](v4);
  v3 = &v6[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___movieLoopView];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

void *sub_1AC28AFA8(void *a1)
{
  type metadata accessor for BobbleVideoLoopPlayer(0);
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceStyle];
  MEMORY[0x1E69E5920](v3);
  v5 = sub_1AC265A48(0, v4, 0.0, 0.0, 0.0, 0.0);
  sub_1AC309BCC();
  MEMORY[0x1E69E5928](v5);
  sub_1AC309BBC();
  MEMORY[0x1E69E5920](v5);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v5);
  return v5;
}

double sub_1AC28B104(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___movieLoopView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC28B19C(void **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC28AE9C();
  return sub_1AC28B1F8;
}

double sub_1AC28B1F8(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC28B104(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC28B104(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

id sub_1AC28B278()
{
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___topAsset);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC28B384();
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___topAsset);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

id sub_1AC28B384()
{
  sub_1AC2813A0();
  v14 = sub_1AC20D658();
  v2 = sub_1AC28AE9C();
  [v14 addSubview_];
  MEMORY[0x1E69E5920](v2);
  v12 = objc_opt_self();
  sub_1AC256554();
  sub_1AC30B18C();
  v11 = v0;
  v3 = sub_1AC28AE9C();
  v5 = [v3 0x1FBB23FD2];
  v4 = [v14 0x1FBB23FD2];
  v6 = [v5 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  *v11 = v6;
  v7 = sub_1AC28AE9C();
  v9 = [v7 0x1FBB23FE0];
  v8 = [v14 0x1FBB23FE0];
  v10 = [v9 constraintEqualToAnchor:20.0 constant:?];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  v11[1] = v10;
  sub_1AC206300();
  v13 = sub_1AC30AAFC();

  [v12 activateConstraints_];
  MEMORY[0x1E69E5920](v13);
  return v14;
}

double sub_1AC28B5E0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___topAsset);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC28B678(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC28B278();
  return sub_1AC28B6D4;
}

double sub_1AC28B6D4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC28B5E0(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC28B5E0(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

double sub_1AC28B754()
{
  v43 = 0;
  v29 = 0;
  sub_1AC256498();
  v22 = sub_1AC253630(0.0, 0.0, 0.0, 0.0);
  v42 = v22;
  v21 = [v22 contentView];
  v20 = sub_1AC28B278();
  [v21 addSubview_];
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5928](v22);
  v24 = [v23 view];
  *&v0 = (MEMORY[0x1E69E5920])().n128_u64[0];
  if (v24)
  {
    v19 = v24;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 278, 0);
    __break(1u);
  }

  [v19 bounds];
  v38 = v1;
  v39 = v2;
  v40 = v3;
  v41 = v4;
  MEMORY[0x1E69E5920](v19);
  CGRectMake();
  v34 = v5;
  v35 = v6;
  v36 = v7;
  v37 = v8;
  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  [v22 setFrame_];
  MEMORY[0x1E69E5920](v22);
  v15 = sub_1AC28B278();
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v15);
  v17 = sub_1AC28B278();
  v16 = [v22 contentView];
  [v17 pinToOther_];
  MEMORY[0x1E69E5920](v16);
  v18 = [v23 table];
  if (!v18)
  {
    goto LABEL_18;
  }

  v29 = v18;
  v14 = [v18 tableHeaderView];
  MEMORY[0x1E69E5928](v14);
  MEMORY[0x1E69E5928](v22);
  MEMORY[0x1E69E5928](v22);
  v27 = v14;
  v28 = v22;
  if (!v14)
  {
    if (!v28)
    {
      sub_1AC206988(&v27);
      v13 = 1;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  sub_1AC257900(&v27, &v26);
  if (!v28)
  {
    MEMORY[0x1E69E5920](v26);
LABEL_15:
    sub_1AC28C0D4(&v27);
    v13 = 0;
    goto LABEL_13;
  }

  v25 = v28;
  sub_1AC2813A0();
  v12 = sub_1AC30ADFC();
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);
  sub_1AC206988(&v27);
  v13 = v12;
LABEL_13:
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v14);
  if ((v13 & 1) == 0)
  {
    [v18 setTableHeaderView_];
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v18);
    v9 = MEMORY[0x1E69E5920](v22);
    return sub_1AC28BC4C(v9, v23);
  }

  MEMORY[0x1E69E5920](v18);
LABEL_18:
  v11 = MEMORY[0x1E69E5920](v22);
  return sub_1AC28BC4C(v11, v23);
}

double sub_1AC28BC4C(__n128 a1, void *a2)
{
  v6[1] = a2;
  v5 = [a2 table];
  if (v5)
  {
    v3 = [v5 tableHeaderView];
    v6[0] = v3;
    if (v3)
    {
      v4 = v6[0];
      MEMORY[0x1E69E5928](v6[0]);
      sub_1AC206988(v6);
      [v4 layoutIfNeeded];
      *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
    }

    else
    {
      sub_1AC206988(v6);
      *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
    }
  }

  return result;
}

id BobbleSettingsViewController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BobbleSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AC28BE7C()
{
  v2 = qword_1EB54C7D8;
  if (!qword_1EB54C7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C7C8, &qword_1AC312E60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C7D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28BF04()
{
  v2 = qword_1EB54C7E0;
  if (!qword_1EB54C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C7D0, &qword_1AC312E68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C7E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28BF8C()
{
  v2 = qword_1EB54C7E8;
  if (!qword_1EB54C7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C7C0, &qword_1AC312E58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C7E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28C01C()
{
  v2 = qword_1EB54C7F8;
  if (!qword_1EB54C7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C7F0, &qword_1AC312E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C7F8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC28C0D4(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1AC28C174()
{
  v2 = qword_1EB54C818;
  if (!qword_1EB54C818)
  {
    sub_1AC3095DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28C204()
{
  v2 = qword_1EB54C830;
  if (!qword_1EB54C830)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C830);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC28C270()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC28C2BC(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_1AC28C308()
{

  v1 = sub_1AC30988C();

  return v1;
}

uint64_t sub_1AC28C360(unsigned int a1)
{

  sub_1AC30989C();
}

uint64_t (*sub_1AC28C3BC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1AC28C308();
  return sub_1AC28C410;
}

uint64_t sub_1AC28C468()
{
  swift_beginAccess();
  v2 = *(v0 + 17);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC28C4B4(char a1)
{
  swift_beginAccess();
  *(v1 + 17) = a1;
  return swift_endAccess();
}

uint64_t sub_1AC28C55C()
{

  v1 = sub_1AC30995C();

  return v1;
}

uint64_t sub_1AC28C5B4(char a1)
{

  sub_1AC30996C();

  sub_1AC28C63C(a1);
  sub_1AC3099CC();
}

uint64_t sub_1AC28C63C(char a1)
{
  type metadata accessor for AAHeadGestureConfig(0);
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 2;
    case 2:
      return 1;
    case 3:
      return 0;
  }

  sub_1AC30B1DC();
  __break(1u);
  return v2;
}

uint64_t (*sub_1AC28C720(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1AC28C55C();
  return sub_1AC28C774;
}

uint64_t sub_1AC28C7CC()
{
  swift_beginAccess();
  v2 = *(v0 + 18);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC28C818(char a1)
{
  swift_beginAccess();
  *(v1 + 18) = a1;
  return swift_endAccess();
}

uint64_t sub_1AC28C8C0()
{

  v1 = sub_1AC3099BC();

  return v1;
}

uint64_t sub_1AC28C918(char a1)
{

  sub_1AC3099CC();

  sub_1AC28C63C(a1);
  sub_1AC30996C();
}

uint64_t (*sub_1AC28C9A0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1AC28C8C0();
  return sub_1AC28C9F4;
}

uint64_t sub_1AC28CA4C()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1AC28CADC(int a1, int a2, int a3, uint64_t a4)
{
  v34 = a1;
  v36 = a2;
  v41 = a3;
  v49 = a4;
  v39 = 0;
  v48 = sub_1AC28D294;
  v50 = sub_1AC215C90;
  v52 = sub_1AC215C90;
  v55 = sub_1AC2482A8;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v31 = 0;
  v45 = sub_1AC309E6C();
  v43 = *(v45 - 8);
  v44 = v45 - 8;
  v32 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v4 = v22 - v32;
  v33 = v22 - v32;
  v73 = v34;
  v72 = v5;
  v71 = v6;
  v70 = v7;
  v69 = v8;
  v8[16] = 0;
  v8[17] = 0;
  v8[18] = 0;

  *(v40 + 24) = v49;
  v35 = &v68;
  v38 = 33;
  swift_beginAccess();
  *(v40 + 16) = v34;
  swift_endAccess();
  v37 = v67;
  swift_beginAccess();
  *(v40 + 17) = v36;
  swift_endAccess();
  v42 = &v66;
  swift_beginAccess();
  *(v40 + 18) = v41;
  swift_endAccess();
  v9 = sub_1AC274D88();
  (*(v43 + 16))(v4, v9, v45);

  sub_1AC20BEE0();

  v59 = sub_1AC309E4C();
  v60 = sub_1AC30AD2C();
  v46 = 17;
  v47 = 7;
  v51 = swift_allocObject();
  *(v51 + 16) = 64;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v49;
  v56 = v10;
  *(v10 + 16) = v48;
  *(v10 + 24) = v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v54 = sub_1AC30B18C();
  v57 = v12;

  v13 = v51;
  v14 = v57;
  *v57 = v50;
  v14[1] = v13;

  v15 = v53;
  v16 = v57;
  v57[2] = v52;
  v16[3] = v15;

  v17 = v56;
  v18 = v57;
  v57[4] = v55;
  v18[5] = v17;
  sub_1AC206300();

  if (os_log_type_enabled(v59, v60))
  {
    v19 = v31;
    v24 = sub_1AC30AE6C();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v25 = sub_1AC213EE4(1, v23, v23);
    v26 = sub_1AC213EE4(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v27 = &v65;
    v65 = v24;
    v28 = &v64;
    v64 = v25;
    v29 = &v63;
    v63 = v26;
    sub_1AC213F38(2, &v65);
    sub_1AC213F38(1, v27);
    v61 = v50;
    v62 = v51;
    sub_1AC213F4C(&v61, v27, v28, v29);
    v30 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v61 = v52;
      v62 = v53;
      sub_1AC213F4C(&v61, &v65, &v64, &v63);
      v22[1] = 0;
      v61 = v55;
      v62 = v56;
      sub_1AC213F4C(&v61, &v65, &v64, &v63);
      _os_log_impl(&dword_1AC1C3000, v59, v60, "Bobble: reload for value change %@", v24, 0xCu);
      sub_1AC213F98(v25, 1, v23);
      sub_1AC213F98(v26, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v20 = MEMORY[0x1E69E5920](v59);
  (*(v43 + 8))(v33, v45, v20);

  return v40;
}

uint64_t sub_1AC28D234(uint64_t a1)
{
  v3 = sub_1AC30987C();
  if (v3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC28D314()
{
  type metadata accessor for BobbleSettingsViewModel();
  v1 = sub_1AC30988C();
  v2 = sub_1AC30995C();
  v3 = sub_1AC3099BC();

  return sub_1AC28CA78(v1, v2, v3, v4);
}

uint64_t sub_1AC28D398(char a1)
{
  type metadata accessor for AAHeadGestureConfig(0);
  switch(a1)
  {
    case 0:
      goto LABEL_8;
    case 1:
      v1 = sub_1AC30A9DC("BOBBLE_GESTURE_MAPPING_UP_DOWN", 30, 1);
      v10 = sub_1AC274FA8(v1, v2);

      return v10;
    case 2:
      v3 = sub_1AC30A9DC("BOBBLE_GESTURE_MAPPING_SIDE_TO_SIDE", 35, 1);
      v9 = sub_1AC274FA8(v3, v4);

      return v9;
    case 3:
LABEL_8:
      v5 = sub_1AC30A9DC("BOBBLE_GESTURE_MAPPING_UP_Unknown", 33, 1);
      v8 = sub_1AC274FA8(v5, v6);

      return v8;
  }

  sub_1AC30B1DC();
  __break(1u);
  return v11;
}

uint64_t sub_1AC28D540(char a1)
{
  type metadata accessor for AAMultiState(0);
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = sub_1AC30A9DC("BOBBLE_GESTURE_ON", 17, 1);
      v10 = sub_1AC274FA8(v1, v2);

      return v10;
    }

    else if (a1 == 2)
    {
      v3 = sub_1AC30A9DC("BOBBLE_GESTURE_OFF", 18, 1);
      v9 = sub_1AC274FA8(v3, v4);

      return v9;
    }

    else
    {
      sub_1AC30B1DC();
      __break(1u);
    }
  }

  else
  {
    v5 = sub_1AC30A9DC("BOBBLE_GESTURE_UNKOWN", 21, 1);
    v8 = sub_1AC274FA8(v5, v6);

    return v8;
  }

  return v11;
}

uint64_t sub_1AC28D6F4()
{
  v26 = 0;
  v20 = 0;
  v13 = sub_1AC30A90C();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v6 - v16;
  v26 = v0;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v18);
  v23 = &v25;
  v25 = v19;
  v21 = &v24;
  v24 = 1;
  v22 = type metadata accessor for UIUserInterfaceIdiom(v20);
  sub_1AC2052F0();
  if (sub_1AC30B1BC())
  {
    sub_1AC30A9DC("iPad", 4, 1);
    sub_1AC30A8AC();
    v1 = sub_1AC205370();
    v9 = sub_1AC215DE8(v17, v1);
    v10 = v2;
    (*(v14 + 8))(v17, v13);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    sub_1AC30A9DC("iPhone", 6, 1);
    sub_1AC30A8AC();
    v3 = sub_1AC205370();
    v7 = sub_1AC215DE8(v17, v3);
    v8 = v4;
    (*(v14 + 8))(v17, v13);
    v11 = v7;
    v12 = v8;
  }

  return v11;
}

uint64_t sub_1AC28D98C()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC28D9DC(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_1AC28DA3C(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  v5 = sub_1AC3092FC();
  v13 = v5 & 1;
  if (v5)
  {
    sub_1AC30938C();
  }

  sub_1AC30929C(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C838, &qword_1AC313048);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v4 = v11 != 0;
  sub_1AC204664(&v8);
  LOBYTE(v6) = v4;
  HIBYTE(v6) = v5 & 1;
  return v6;
}

uint64_t sub_1AC28DB98(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v65 = a2;
  v66 = 0;
  v42 = sub_1AC28EA1C;
  v43 = sub_1AC28E864;
  v44 = sub_1AC28EA14;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v74 = 0;
  v45 = sub_1AC30A90C();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v49 = v14 - v48;
  v50 = sub_1AC309AAC();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v54 = v14 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD90, &qword_1AC311890);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v59 = v14 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C470, &qword_1AC311898);
  v61 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v14 - v61;
  v63 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14 - v61);
  v64 = v14 - v63;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C840, &unk_1AC313050);
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v72 = v14 - v71;
  v85 = v4;
  v84 = v5;
  v83 = v2;
  v73 = v82;
  swift_beginAccess();
  v76 = *(v2 + 32);

  swift_endAccess();
  v75 = sub_1AC309EAC();
  sub_1AC223158();
  v77 = sub_1AC30AC1C();

  if (v77)
  {
    sub_1AC30948C();
    v27 = sub_1AC309F2C();
    v30 = *(v56 + 8);
    v29 = v56 + 8;
    v30(v59, v55);
    v28 = &v80;
    v80 = v27;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C480, &qword_1AC313060);
    v33 = sub_1AC2575DC();
    v34 = MEMORY[0x1E69E6388];
    sub_1AC309FAC();
    sub_1AC20BCE0(v28);
    sub_1AC30918C();
    v31 = sub_1AC309F2C();
    v30(v59, v55);
    v35 = &v79;
    v79 = v31;
    sub_1AC309FAC();
    sub_1AC20BCE0(v35);
    sub_1AC257664();
    sub_1AC309E7C();
    v37 = swift_allocObject();
    v36 = v37 + 16;
    MEMORY[0x1E69E5928](v65);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v65);

    sub_1AC28EA24();
    v40 = sub_1AC309FBC();

    (*(v69 + 8))(v72, v68);
    v38 = v41 + 32;
    v39 = v78;
    swift_beginAccess();
    sub_1AC309E9C();
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v15 = 1;
  v14[1] = sub_1AC30A9DC("CASE_SOUND_GROUP_ID", 19, 1);
  v14[2] = v6;
  sub_1AC205220();
  v24 = sub_1AC309D3C();
  v23 = sub_1AC30A9DC("CASE_SOUND", 10, v15 & 1);
  v18 = v7;
  v81[4] = v41;
  sub_1AC30A9DC("Enable Charging Case Sounds", 27, v15 & 1);
  sub_1AC30A8AC();
  v22 = 0;
  v8 = type metadata accessor for CharginCaseSoundFeature();
  v19 = sub_1AC215DE8(v49, v8);
  v20 = v9;
  (*(v46 + 8))(v49, v45);
  v21 = v81;
  memset(v81, 0, 32);
  MEMORY[0x1E69E5928](v67);
  v14[3] = 24;
  v14[4] = 7;
  v10 = swift_allocObject();
  v11 = v67;
  *(v10 + 16) = v67;
  v16 = v10;
  MEMORY[0x1E69E5928](v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v67;
  v17 = v12;
  sub_1AC20599C();
  sub_1AC309A9C();
  v25 = sub_1AC309D1C();
  (*(v51 + 8))(v54, v50);

  v26 = sub_1AC309D2C();

  return v26;
}

double sub_1AC28E5B0(_BYTE *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v2 = a1[1];
  LOBYTE(v8) = *a1;
  HIBYTE(v8) = v2;
  v7 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC("CASE_SOUND_GROUP_ID", 19, 1);
    v4 = sub_1AC30A91C();

    [v5 reloadSpecifierID_];
    MEMORY[0x1E69E5920](v4);
    *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  return result;
}

id sub_1AC28E6F4(void *a1)
{
  if (sub_1AC30945C())
  {
    sub_1AC2068B8();
    v1 = sub_1AC3095AC();
    return sub_1AC244124(v1 & 1);
  }

  else
  {
    MEMORY[0x1E69E5928](a1);
    if (a1)
    {
      v5 = sub_1AC30AB8C();
      v3 = *MEMORY[0x1E69C58C8];
      MEMORY[0x1E69E5928](*MEMORY[0x1E69C58C8]);
      sub_1AC30A92C();
      v4 = sub_1AC30A91C();

      [a1 setProperty:v5 forKey:{v4, MEMORY[0x1E69E5920](v3).n128_f64[0]}];
      MEMORY[0x1E69E5920](v4);
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](a1);
    }

    sub_1AC2068B8();
    return sub_1AC244124(1);
  }
}

uint64_t sub_1AC28E86C(void *a1)
{
  if (sub_1AC30950C())
  {
    return sub_1AC30951C();
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v3 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 2;
  }

  if (v3 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/CharginCaseSoundFeature.swift", 49, 2, 60, 0);
    __break(1u);
  }

  sub_1AC3095BC();
  swift_unknownObjectRelease();
  sub_1AC3094DC();
  sub_1AC30939C();
  return sub_1AC30938C();
}

unint64_t sub_1AC28EA24()
{
  v2 = qword_1EB54C848;
  if (!qword_1EB54C848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C840, &unk_1AC313050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C848);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC28EAAC()
{
  sub_1AC2063F0(v0 + 16);
  sub_1AC209190((v0 + 32));
  return v2;
}

uint64_t sub_1AC28EB68()
{
  *(v0 + 16) = sub_1AC30A9DC("Charging Case Sound Feature", 27, 1);
  *(v0 + 24) = v1;
  sub_1AC309EAC();
  sub_1AC223158();
  v2 = sub_1AC30A80C();
  result = v4;
  *(v4 + 32) = v2;
  return result;
}

uint64_t sub_1AC28ECC0(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  v5 = sub_1AC3092FC();
  v13 = v5 & 1;
  sub_1AC30929C(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC70, &qword_1AC30F1F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v4 = v11 != 0;
  sub_1AC204664(&v8);
  LOBYTE(v6) = v4;
  HIBYTE(v6) = v5 & 1;
  return v6;
}

uint64_t sub_1AC28EE04(void *a1, void *a2)
{
  v49 = a2;
  v42 = a1;
  v43 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v44 = sub_1AC30A90C();
  v45 = *(v44 - 8);
  v46 = v45;
  MEMORY[0x1EEE9AC00](0);
  v47 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1AC309AAC();
  v51 = *(v50 - 8);
  v52 = v51;
  v53 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v54 = v24 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v66 = v4;
  v65 = v5;
  sub_1AC30929C(v58);
  if (v58[3])
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C858, &qword_1AC313110);
    if (!swift_dynamicCast())
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
    }
  }

  else
  {
    sub_1AC204664(v58);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
  }

  if (v62)
  {
    v38 = __dst;
    sub_1AC2051E4(&v59, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
    v24[2] = MEMORY[0x1E69A2B08];
    v24[3] = sub_1AC205220();
    v24[4] = v6;
    sub_1AC205220();
    v24[6] = sub_1AC309D3C();
    v24[5] = v24;
    v26 = 24;
    MEMORY[0x1EEE9AC00](v24);
    v23 = v7;
    v36 = sub_1AC309CDC();

    v57 = v48;
    sub_1AC30A9DC("Press and Hold", 14, 1);
    sub_1AC30A8AC();
    v33 = 0;
    v25 = type metadata accessor for PressHoldFeature();
    v31 = sub_1AC215DE8(v47, v25);
    v32 = v8;
    (*(v46 + 8))(v47, v44);

    v56 = v25;
    v55 = v48;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850, &qword_1AC315B10);
    v28 = 7;
    v35 = swift_allocObject();
    v27 = v35 + 16;
    v9 = v49;
    swift_unknownObjectWeakInit();

    v10 = v42;

    v11 = swift_allocObject();
    v12 = v35;
    v29 = v11;
    *(v11 + 16) = v42;
    *(v11 + 24) = v12;
    v13 = sub_1AC20599C();
    v34 = &v15;
    v23 = v29;
    v22 = sub_1AC28F880;
    v21 = v33;
    v20 = v33;
    v19 = v33;
    v18 = v33;
    v17 = v30;
    LOBYTE(v16) = v13 & 1;
    v15 = v33;
    sub_1AC309A9C();

    v37 = sub_1AC309D1C();
    (*(v52 + 8))(v54, v50);

    v39 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v38);
    return v39;
  }

  else
  {
    sub_1AC204664(&v59);
    v24[0] = 0;
    v24[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC28F454(void *a1, void *a2)
{
  v15[3] = a1;
  v15[2] = a2;
  v15[0] = sub_1AC30B17C();
  v15[1] = v2;
  v3 = sub_1AC30A9DC("Customize press and hold actions for your ", 42, 1);
  MEMORY[0x1AC5B07E0](v3);

  v9 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v14[0] = (*(*(v8 + 8) + 8))(v9);
  v14[1] = v4;
  sub_1AC30B15C();
  sub_1AC2063F0(v14);
  v5 = sub_1AC30A9DC(".", 1, 1);
  MEMORY[0x1AC5B07E0](v5);

  sub_1AC2063F0(v15);
  sub_1AC30A9BC();
  v13 = sub_1AC30A91C();

  v10 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v12 = sub_1AC30A91C();

  [a1 setProperty:v13 forKey:{v12, MEMORY[0x1E69E5920](v10).n128_f64[0]}];
  MEMORY[0x1E69E5920](v12);
  return swift_unknownObjectRelease();
}

double sub_1AC28F678(uint64_t a1, uint64_t a2)
{
  v9[9] = a1;
  v9[8] = a2 + 16;
  type metadata accessor for PressHoldDetailedViewController();
  MEMORY[0x1E69E5928](a1);
  v6 = sub_1AC2F3538(a1);
  v9[7] = v6;
  v2 = MEMORY[0x1E69E5928](a1);
  v7 = MEMORY[0x1E69E7D40];
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x90))(a1, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  (*((*v6 & *v7) + 0xB0))(Strong);
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v4 = v9[0];
    MEMORY[0x1E69E5928](v9[0]);
    sub_1AC206988(v9);
    swift_endAccess();
    [v4 showController_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1AC206988(v9);
    swift_endAccess();
  }

  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t sub_1AC28F8C8()
{
  v0 = sub_1AC30A9DC("Press Hold Feature", 18, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t AAFeatures.init(rawValue:)@<X0>(_BYTE *a3@<X8>)
{
  sub_1AC30B18C();
  *v3 = "PauseMediaOnSleep";
  *(v3 + 8) = 17;
  *(v3 + 16) = 2;
  sub_1AC206300();
  v6 = sub_1AC30B12C();

  if (v6)
  {

    *a3 = 1;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t sub_1AC28FB84()
{
  v2 = qword_1EB54C860;
  if (!qword_1EB54C860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C860);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC28FCF4@<X0>(uint64_t *a1@<X8>)
{
  result = AAFeatures.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t TranslateFeatures.init(rawValue:)@<X0>(_BYTE *a3@<X8>)
{
  sub_1AC30B18C();
  *v3 = "personalTranslator";
  *(v3 + 8) = 18;
  *(v3 + 16) = 2;
  sub_1AC206300();
  v6 = sub_1AC30B12C();

  if (v6)
  {

    *a3 = 1;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t sub_1AC28FF0C()
{
  v2 = qword_1EB54C868;
  if (!qword_1EB54C868)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C868);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC29007C@<X0>(uint64_t *a1@<X8>)
{
  result = TranslateFeatures.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1AC2900F4()
{
  v2 = qword_1EB54C870;
  if (!qword_1EB54C870)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC290188()
{
  v2 = qword_1EB54C878;
  if (!qword_1EB54C878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C878);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC29022C()
{
  sub_1AC20BE24();
  type metadata accessor for HeadphoneSettingsController();
  result = sub_1AC20BE88();
  qword_1EB553D38 = result;
  return result;
}

uint64_t *sub_1AC290274()
{
  if (qword_1EB550A00 != -1)
  {
    swift_once();
  }

  return &qword_1EB553D38;
}

uint64_t sub_1AC2902D4()
{
  v1 = sub_1AC290274();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

double sub_1AC290334(uint64_t a1)
{
  v3 = sub_1AC290274();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC2903C0(uint64_t a1))(uint64_t a1)
{
  sub_1AC290274();
  swift_beginAccess();
  return sub_1AC20949C;
}

uint64_t sub_1AC290460(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  sub_1AC30929C(v8);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  sub_1AC204664(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C880, &qword_1AC3133E0);
  sub_1AC30B18C();
  v5 = v3;
  *v3 = sub_1AC267D80(a1);
  v5[1] = sub_1AC2D6B80(a1);
  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C888, &qword_1AC3133E8);
  sub_1AC290744();
  sub_1AC30AA7C();

  return v7;
}

uint64_t sub_1AC2906D0(uint64_t result, uint64_t a2)
{
  if (*(result + 1))
  {
    v2 = *(result + 1);
  }

  else
  {
    v2 = *(a2 + 1);
  }

  *(result + 1) = v2 & 1;
  return result;
}

unint64_t sub_1AC290744()
{
  v2 = qword_1EB54C890;
  if (!qword_1EB54C890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C888, &qword_1AC3133E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C890);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC290840(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v79 = a1;
  v81 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v99 = 0;
  v98 = 0;
  v80 = 0;
  v96 = 0;
  v82 = sub_1AC309E6C();
  v83 = *(v82 - 8);
  v84 = v83;
  MEMORY[0x1EEE9AC00](0);
  v85 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1AC30A90C();
  v88 = *(v87 - 8);
  v89 = v88;
  v90 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v91 = v25 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v108 = v4;
  v107 = v5;
  sub_1AC30929C(v100);
  if (v100[3])
  {
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if (!swift_dynamicCast())
    {
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
    }
  }

  else
  {
    sub_1AC204664(v100);
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
  }

  if (!v104)
  {
    sub_1AC204664(&v101);
    v25[0] = 0;
    v25[1] = sub_1AC215CB0();
    v26 = sub_1AC30B18C();
    v53 = v26;
    v54 = v80;
    return v53;
  }

  v6 = v80;
  p_dst = &__dst;
  sub_1AC2051E4(&v101, &__dst);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v56 = 1;
  v59 = sub_1AC30A9DC("FIT_FEATURE_GROUP_ID", 20);
  v60 = v7;
  sub_1AC30A9DC("Fit & Comfort", 13, v56);
  sub_1AC30A8AC();
  v72 = 0;
  v57 = type metadata accessor for FitFeatureGroup();
  v61 = sub_1AC215DE8(v91, v57);
  v62 = v8;
  (*(v89 + 8))(v91, v87);
  v65 = sub_1AC309D3C();
  v64 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v25[-2] = v9;
  v10 = sub_1AC309CDC();
  v69 = v10;
  v66 = v10;

  v99 = v10;
  v67 = sub_1AC309D2C();
  v98 = v67;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
  v68 = v74;
  v71 = sub_1AC30B18C();
  v70 = v11;
  v12 = sub_1AC268B58(v79, v86, v69);
  v13 = v86;
  v14 = v69;
  v15 = v12;
  v16 = v79;
  *v70 = v15;
  v17 = sub_1AC2D7970(v16, v13, v14);
  v70[1] = v17;
  sub_1AC206300();
  v97 = v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508, &unk_1AC3133F0);
  v75 = sub_1AC263B38();
  sub_1AC24D54C();
  v19 = sub_1AC30AA8C();
  v76 = v6;
  v77 = v19;
  if (!v6)
  {
    v55 = v77;
    sub_1AC209190(&v97);
    v96 = v55;
    v95[1] = v55;
    sub_1AC2914BC();
    if (sub_1AC30ACAC())
    {
      v20 = v85;
      v21 = sub_1AC29DCC0();
      (*(v84 + 16))(v20, v21, v82);
      v50 = sub_1AC309E4C();
      v47 = v50;
      v49 = sub_1AC30AD1C();
      v48 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
      v51 = sub_1AC30B18C();
      if (os_log_type_enabled(v50, v49))
      {
        v22 = v76;
        v38 = sub_1AC30AE6C();
        v34 = v38;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
        v36 = 0;
        v39 = sub_1AC213EE4(0, v35, v35);
        v37 = v39;
        v40 = sub_1AC213EE4(v36, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v95[0] = v38;
        v94 = v39;
        v93 = v40;
        v41 = 0;
        v42 = v95;
        sub_1AC213F38(0, v95);
        sub_1AC213F38(v41, v42);
        v92 = v51;
        v43 = v25;
        MEMORY[0x1EEE9AC00](v25);
        v44 = &v25[-6];
        v25[-4] = v23;
        v25[-3] = &v94;
        v25[-2] = &v93;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
        sub_1AC218014();
        sub_1AC30AAAC();
        v46 = v22;
        if (v22)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1AC1C3000, v47, v48, "Fit Feature Group has nothing to show.", v34, 2u);
          v32 = 0;
          sub_1AC213F98(v37, 0, v35);
          sub_1AC213F98(v40, v32, MEMORY[0x1E69E7CA0] + 8);
          sub_1AC30AE4C();

          v33 = v46;
        }
      }

      else
      {

        v33 = v76;
      }

      v31 = v33;

      (*(v84 + 8))(v85, v82);
      v27 = 0;
      v28 = sub_1AC215CB0();
      v29 = sub_1AC30B18C();
      v30 = v29;

      __swift_destroy_boxed_opaque_existential_1(&__dst);
      v53 = v30;
      v54 = v31;
    }

    else
    {
      sub_1AC215CB0();
      v52 = sub_1AC30AB1C();

      __swift_destroy_boxed_opaque_existential_1(&__dst);
      v53 = v52;
      v54 = v76;
    }

    return v53;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1AC291374(void *a1, void *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v3 + 72))(v4);

  v8 = sub_1AC30A91C();

  v5 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v7 = sub_1AC30A91C();

  [a1 setProperty:v8 forKey:{v7, MEMORY[0x1E69E5920](v5).n128_f64[0]}];
  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRelease();
}

unint64_t sub_1AC2914BC()
{
  v2 = qword_1EB54C8A0;
  if (!qword_1EB54C8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C378, &qword_1AC311CE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC291580()
{
  v0 = sub_1AC30A9DC("Fit Feature Group", 17, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

id sub_1AC291828()
{
  sub_1AC291878();
  v0 = sub_1AC30A9DC("PowerUISmartChargeClientBluetoothSettings", 41, 1);
  result = sub_1AC2918DC(v0, v1);
  qword_1EB553D40 = result;
  return result;
}

unint64_t sub_1AC291878()
{
  v2 = qword_1EB54C8A8;
  if (!qword_1EB54C8A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C8A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1AC291924()
{
  if (qword_1EB550A10 != -1)
  {
    swift_once();
  }

  return &qword_1EB553D40;
}

uint64_t sub_1AC291984()
{
  v0 = sub_1AC291924();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1AC2919BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v23 = a2;
  v21 = a3;
  v22 = a4;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v7);
  v20 = v8;
  v19 = 6;
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1AC2052F0();
  v4 = sub_1AC30B1BC();
  v18 = v4 & 1;
  v9 = v4 ^ 1;
  v17 = (v4 ^ 1) & 1;
  sub_1AC30929C(v11);
  if (v11[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8B0, &unk_1AC313478);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    sub_1AC204664(v11);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v6 = v15 != 0;
  sub_1AC204664(&v12);
  LOBYTE(v10) = v6;
  HIBYTE(v10) = v9 & 1;
  return v10;
}

uint64_t sub_1AC291BA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v68 = a3;
  v70 = a2;
  v75 = a1;
  v63 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v64 = sub_1AC30A90C();
  v65 = *(v64 - 8);
  v66 = v65;
  MEMORY[0x1EEE9AC00](0);
  v67 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AC309AAC();
  v72 = *(v71 - 8);
  v73 = v72;
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  v92 = v7;
  v90 = v8;
  v91 = v9;
  v76 = sub_1AC2C85A0();
  v77 = v10;
  v88 = v76;
  v89 = v10;
  sub_1AC30929C(v81);
  if (v81[3])
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8B0, &unk_1AC313478);
    if (!swift_dynamicCast())
    {
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
    }
  }

  else
  {
    sub_1AC204664(v81);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
  }

  if (v85)
  {
    v59 = __dst;
    sub_1AC2051E4(&v82, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
    v43 = 1;
    v39 = sub_1AC30A9DC("OBC_FEATURE_GROUP", 17);
    v40 = v11;
    sub_1AC205220();
    v42 = sub_1AC309D3C();

    v41 = v36;
    MEMORY[0x1EEE9AC00](v36);
    v33 = v68;
    v34 = v69;
    v35 = v12;
    v57 = sub_1AC309CDC();

    v53 = 6;
    v54 = sub_1AC30A9DC("≈≈");
    v49 = v13;
    v79 = v68;
    v80 = v69;
    sub_1AC30A9DC("Optimized Battery Charging", 26, v43);
    sub_1AC30A8AC();
    v50 = sub_1AC215DE8(v67, &unk_1F20F6FA0);
    v51 = v14;
    (*(v66 + 8))(v67, v64);
    v52 = 0;
    memset(&v78[40], 0, 32);

    v45 = 7;
    v15 = swift_allocObject();
    v16 = v77;
    v48 = v15;
    *(v15 + 16) = v76;
    *(v15 + 24) = v16;
    v56 = swift_allocObject();
    v44 = v56 + 16;
    v17 = v70;
    swift_unknownObjectWeakInit();

    v46 = v78;
    sub_1AC241BFC(v59, v78);
    v18 = swift_allocObject();
    v19 = v77;
    v20 = v68;
    v21 = v69;
    v22 = v56;
    v23 = v18;
    v24 = v46;
    v47 = v23;
    v23[2] = v76;
    v23[3] = v19;
    v23[4] = v22;
    v23[5] = v20;
    v23[6] = v21;
    sub_1AC2051E4(v24, v23 + 7);
    v25 = sub_1AC20599C();
    v55 = &v27;
    v35 = v52;
    v34 = v52;
    v33 = v47;
    v32 = sub_1AC2940E8;
    v31 = v48;
    v30 = sub_1AC2930D0;
    v29 = v52;
    LOBYTE(v28) = v25 & 1;
    v27 = v52;
    sub_1AC309A9C();

    v58 = sub_1AC309D1C();
    (*(v73 + 8))(v74, v71);

    v60 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v59);
    return v60;
  }

  else
  {
    sub_1AC204664(&v82);
    v36[1] = 0;
    v36[2] = sub_1AC215CB0();
    v37 = sub_1AC30B18C();
    v38 = v37;

    return v38;
  }
}

uint64_t sub_1AC2921E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v54 = a1;
  v24 = a2;
  v23 = a3;
  v33 = a4;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v21 = 0;
  v49 = sub_1AC30A90C();
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v22 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v48 = &v21 - v22;
  v43 = sub_1AC30A8EC();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v25 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v45 = &v21 - v25;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v21 - v26;
  v27 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v21 - v27;
  v61 = v8;
  v59 = v9;
  v60 = v10;
  v58 = v11;
  v38 = v57;
  v57[0] = v9;
  v57[1] = v10;
  sub_1AC30A8DC();
  v37 = 1;
  sub_1AC30A9DC("To reduce battery aging, iPhone and ", 36, 1);
  v28 = v12;
  sub_1AC30A8CC();

  v30 = v33[3];
  v29 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v30);
  (*(*(v29 + 8) + 8))(v30);
  v31 = v13;
  sub_1AC30A8BC();

  sub_1AC30A9DC(" learn from your daily charging routine so ", 43, v37 & 1);
  v32 = v14;
  sub_1AC30A8CC();

  v35 = v33[3];
  v34 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v35);
  (*(*(v34 + 8) + 24))(v35);
  v36 = v15;
  sub_1AC30A8BC();

  sub_1AC30A9DC(" can wait to finish charging past 80% until you need to use them.", v21);
  v39 = v16;
  sub_1AC30A8CC();

  (*(v41 + 16))(v40, v44, v43);
  (*(v41 + 32))(v45, v40, v43);
  (*(v41 + 8))(v44, v43);
  sub_1AC30A8FC();
  v50 = sub_1AC215DE8(v48, &unk_1F20F6FA0);
  v51 = v17;
  (*(v46 + 8))(v48, v49);
  v56 = sub_1AC30A91C();

  v53 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](v53);
  sub_1AC30A92C();
  v52 = v18;
  v55 = sub_1AC30A91C();

  *&v19 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  [v54 setProperty:v56 forKey:{v55, v19}];
  MEMORY[0x1E69E5920](v55);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2926E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v67 = a2;
  v66 = a3;
  v60 = sub_1AC257A24;
  v61 = sub_1AC248118;
  v62 = sub_1AC215C90;
  v63 = sub_1AC215C90;
  v64 = sub_1AC2482A8;
  v91[1] = *MEMORY[0x1E69E9840];
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v80 = 0;
  v79 = 0;
  v65 = 0;
  v69 = sub_1AC309E6C();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v73 = v23 - v72;
  v86 = v3;
  v84 = v4;
  v85 = v5;
  v91[0] = 0;
  v74 = *sub_1AC291924();
  MEMORY[0x1E69E5928](v74);
  if (v74)
  {
    v59 = v74;
    v55 = v74;

    v54 = sub_1AC30A91C();

    v75 = v91[0];
    v56 = [v55 isSmartChargingCurrentlyEnabledForDevice:v54 withError:&v75];
    v53 = v75;
    MEMORY[0x1E69E5928](v75);
    v6 = v91[0];
    v91[0] = v53;
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v54);
    MEMORY[0x1E69E5920](v55);
    v57 = v56;
    v58 = 0;
  }

  else
  {
    v57 = 0;
    v58 = 1;
  }

  v89 = v57;
  v90 = v58 & 1;
  if (v58)
  {
    v52 = 0;
  }

  else
  {
    v52 = v89;
  }

  v50 = v52;
  v83 = v52;
  v51 = v91[0];
  MEMORY[0x1E69E5928](v91[0]);
  if (v51)
  {
    v49 = v51;
    v7 = v73;
    v35 = v51;
    v79 = v51;
    v8 = sub_1AC250850();
    (*(v70 + 16))(v7, v8, v69);
    MEMORY[0x1E69E5928](v35);
    v38 = 7;
    v39 = swift_allocObject();
    *(v39 + 16) = v35;
    v47 = sub_1AC309E4C();
    v48 = sub_1AC30AD1C();
    v36 = 17;
    v41 = swift_allocObject();
    *(v41 + 16) = 64;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v37 = 32;
    v9 = swift_allocObject();
    v10 = v39;
    v40 = v9;
    *(v9 + 16) = v60;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v40;
    v44 = v11;
    *(v11 + 16) = v61;
    *(v11 + 24) = v12;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v43 = sub_1AC30B18C();
    v45 = v13;

    v14 = v41;
    v15 = v45;
    *v45 = v62;
    v15[1] = v14;

    v16 = v42;
    v17 = v45;
    v45[2] = v63;
    v17[3] = v16;

    v18 = v44;
    v19 = v45;
    v45[4] = v64;
    v19[5] = v18;
    sub_1AC206300();

    if (os_log_type_enabled(v47, v48))
    {
      v20 = v65;
      v28 = sub_1AC30AE6C();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v29 = sub_1AC213EE4(1, v27, v27);
      v30 = sub_1AC213EE4(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v31 = &v78;
      v78 = v28;
      v32 = &v88;
      v88 = v29;
      v33 = &v87;
      v87 = v30;
      sub_1AC213F38(2, &v78);
      sub_1AC213F38(1, v31);
      v76 = v62;
      v77 = v41;
      sub_1AC213F4C(&v76, v31, v32, v33);
      v34 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v76 = v63;
        v77 = v42;
        sub_1AC213F4C(&v76, &v78, &v88, &v87);
        v26 = 0;
        v76 = v64;
        v77 = v44;
        sub_1AC213F4C(&v76, &v78, &v88, &v87);
        _os_log_impl(&dword_1AC1C3000, v47, v48, "SmartChargeClient: error %@", v28, 0xCu);
        sub_1AC213F98(v29, 1, v27);
        sub_1AC213F98(v30, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v21 = MEMORY[0x1E69E5920](v47);
    (*(v70 + 8))(v73, v69, v21);
    MEMORY[0x1E69E5920](v35);
  }

  v23[2] = &v82;
  v82 = v50;
  v23[0] = &v81;
  v81 = 1;
  v23[3] = 0;
  v23[1] = type metadata accessor for PowerUISmartChargingState(0);
  sub_1AC297660();
  v24 = sub_1AC30B1BC();
  v80 = v24 & 1;
  sub_1AC2068B8();
  v25 = sub_1AC30ADEC();
  sub_1AC206988(v91);
  return v25;
}

double sub_1AC2930DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v159 = a1;
  v149 = a2;
  v143 = a3;
  v144 = a4;
  v145 = a5;
  v146 = a6;
  v147 = a7;
  v148 = a8;
  v130 = sub_1AC2973FC;
  v131 = sub_1AC29740C;
  v132 = sub_1AC29741C;
  v133 = "Fatal error";
  v134 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v135 = "HeadphoneSettingsUI/OptimizedBatteryFeature.swift";
  v136 = sub_1AC297424;
  v188 = 0;
  v187 = 0;
  v185 = 0;
  v186 = 0;
  v184 = 0;
  v182 = 0;
  v183 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v176 = 0;
  v173 = 0;
  v137 = 0;
  v138 = sub_1AC30A90C();
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v141 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v142 = v53 - v141;
  v150 = sub_1AC30A8EC();
  v151 = *(v150 - 8);
  v152 = v150 - 8;
  v153 = (v151[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v159);
  v154 = v53 - v153;
  v155 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v156 = v53 - v155;
  v157 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v158 = v53 - v157;
  v188 = v12;
  v187 = v13;
  v185 = v14;
  v186 = v15;
  v184 = v16 + 16;
  v182 = v17;
  v183 = v18;
  v181 = v19;
  swift_unknownObjectRetain();
  objc_opt_self();
  v160 = swift_dynamicCastObjCClass();
  if (v160)
  {
    v129 = v160;
  }

  else
  {
    swift_unknownObjectRelease();
    v129 = 0;
  }

  v128 = v129;
  if (v129)
  {
    v127 = v128;
    v126 = v128;
    v180 = v128;
    v21 = [v128 BOOLValue];
    v179 = v21 & 1;
    if (v21)
    {
      v125 = *sub_1AC291924();
      MEMORY[0x1E69E5928](v125);
      if (v125)
      {
        v124 = v125;
        v123 = v125;

        v122 = sub_1AC30A91C();

        v166 = v136;
        v167 = v145;
        v161 = MEMORY[0x1E69E9820];
        v162 = 1107296256;
        v163 = 0;
        v164 = sub_1AC246C78;
        v165 = &block_descriptor_6;
        v121 = _Block_copy(&v161);

        [v123 enableSmartChargingForDevice:v122 withHandler:v121];
        _Block_release(v121);
        MEMORY[0x1E69E5920](v122);
        MEMORY[0x1E69E5920](v123);
      }
    }

    else
    {
      v115 = 0;
      v93 = sub_1AC21E88C();
      v79 = v178;
      v178[0] = v146;
      v178[1] = v147;
      v98 = 1;
      sub_1AC30A8DC();
      v106 = 6;
      v107 = 1;
      sub_1AC30A9DC("Place ");
      v75 = v22;
      sub_1AC30A8CC();

      v77 = v148[3];
      v76 = v148[4];
      __swift_project_boxed_opaque_existential_1(v148, v77);
      (*(*(v76 + 8) + 8))(v77);
      v78 = v23;
      sub_1AC30A8BC();

      sub_1AC30A9DC(" in the Case", 12, v107 & 1);
      v80 = v24;
      sub_1AC30A8CC();

      v88 = v151[2];
      v87 = v151 + 2;
      v88(v156, v158, v150);
      v90 = v151[4];
      v89 = v151 + 4;
      v90(v154, v156, v150);
      v92 = v151[1];
      v91 = v151 + 1;
      v92(v158, v150);
      sub_1AC30A8FC();
      v108 = &unk_1F20F6FA0;
      v109 = &off_1F20F6F30;
      v94 = sub_1AC215DE8(v142, &unk_1F20F6FA0);
      v95 = v25;
      v112 = *(v139 + 8);
      v111 = v139 + 8;
      v112(v142, v138);
      v85 = v177;
      v177[0] = v146;
      v177[1] = v147;
      sub_1AC30A8DC();
      sub_1AC30A9DC("An ", 3, v107 & 1);
      v81 = v26;
      sub_1AC30A8CC();

      v83 = v148[3];
      v82 = v148[4];
      __swift_project_boxed_opaque_existential_1(v148, v83);
      (*(*(v82 + 8) + 8))(v83);
      v84 = v27;
      sub_1AC30A8BC();

      sub_1AC30A9DC(" diagnostics check is needed before you can test your hearing. It will run automatically after you close the case and you can try to test your hearing again in a few minutes.", 174, v107 & 1);
      v86 = v28;
      sub_1AC30A8CC();

      v88(v156, v158, v150);
      v90(v154, v156, v150);
      v92(v158, v150);
      sub_1AC30A8FC();
      v96 = sub_1AC215DE8(v142, v108);
      v97 = v29;
      v112(v142, v138);
      v118 = sub_1AC21CFE0(v94, v95, v96, v97, v98);
      v176 = v118;
      v110 = sub_1AC21E8F0();
      v174 = v146;
      v175 = v147;
      sub_1AC30A9DC("Turn Off Until Tomorrow", 23, v107 & 1);
      sub_1AC30A8AC();
      v100 = sub_1AC215DE8(v142, v108);
      v99 = v30;
      v112(v142, v138);

      v101 = 40;
      v102 = 7;
      v31 = swift_allocObject();
      v32 = v99;
      v33 = v130;
      v34 = v144;
      v35 = v115;
      v36 = v145;
      v37 = v31;
      v38 = v100;
      v37[2] = v143;
      v37[3] = v34;
      v37[4] = v36;
      v119 = sub_1AC21E3FC(v38, v32, v35, v33, v37);
      v173 = v119;
      v116 = 0x1FAE81000uLL;
      [v118 0x1FAE81FF8];
      v172[6] = v146;
      v172[7] = v147;
      sub_1AC30A9DC("Turn Off", 8, v107 & 1);
      sub_1AC30A8AC();
      v104 = sub_1AC215DE8(v142, v108);
      v103 = v39;
      v112(v142, v138);

      v40 = swift_allocObject();
      v41 = v144;
      v42 = v103;
      v43 = v131;
      v44 = v115;
      v45 = v145;
      v46 = v40;
      v47 = v104;
      v46[2] = v143;
      v46[3] = v41;
      v46[4] = v45;
      v105 = sub_1AC21E3FC(v47, v42, v44, v43, v46);
      [v118 (v116 + 4088)];
      *&v48 = MEMORY[0x1E69E5920](v105).n128_u64[0];
      v172[4] = v146;
      v172[5] = v147;
      sub_1AC30A9DC("Cancel", v106, v107 & 1, v48);
      sub_1AC30A8AC();
      v113 = sub_1AC215DE8(v142, v108);
      v114 = v49;
      v112(v142, v138);

      v117 = sub_1AC21E3FC(v113, v114, v115, v132, v145);
      [v118 (v116 + 4088)];
      MEMORY[0x1E69E5920](v117);
      *&v50 = MEMORY[0x1E69E5928](v119).n128_u64[0];
      [v118 setPreferredAction_];
      MEMORY[0x1E69E5920](v119);
      v120 = v145 + 16;
      swift_beginAccess();
      v172[0] = swift_unknownObjectWeakLoadStrong();
      if (v172[0])
      {
        v73 = v172;
        v74 = v172[0];
        MEMORY[0x1E69E5928](v172[0]);
        sub_1AC206988(v73);
        swift_endAccess();
        [v74 presentViewController:v118 animated:1 completion:0];
        MEMORY[0x1E69E5920](v74);
      }

      else
      {
        sub_1AC206988(v172);
        swift_endAccess();
      }

      v72 = v145 + 16;
      swift_beginAccess();
      v171[0] = swift_unknownObjectWeakLoadStrong();
      if (v171[0])
      {
        v69 = v171;
        v70 = v171[0];
        MEMORY[0x1E69E5928](v171[0]);
        sub_1AC206988(v69);
        swift_endAccess();
        v71 = *(v70 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
        MEMORY[0x1E69E5928](v71);
        *&v51 = MEMORY[0x1E69E5920](v70).n128_u64[0];
        [v71 updateFeatureChangeCount_];
        MEMORY[0x1E69E5920](v71);
      }

      else
      {
        sub_1AC206988(v171);
        swift_endAccess();
      }

      v68 = v145 + 16;
      swift_beginAccess();
      v170[0] = swift_unknownObjectWeakLoadStrong();
      if (v170[0])
      {
        v65 = v170;
        v67 = v170[0];
        MEMORY[0x1E69E5928](v170[0]);
        sub_1AC206988(v65);
        swift_endAccess();
        v66 = *(v67 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
        MEMORY[0x1E69E5928](v66);
        MEMORY[0x1E69E5920](v67);
        swift_getObjectType();
        swift_unknownObjectRetain();
        if ([v159 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v169 = [v159 BOOLValue];
          swift_unknownObjectRelease();
        }

        else
        {
          v169 = 2;
        }

        v64 = v169;
        if (v169 == 2)
        {
          sub_1AC30B05C(v133, 11, 2, v134, 68, 2, v135, 49, 2, 109, 0);
          __break(1u);
        }

        else
        {
          v63 = v64;
        }

        v62 = v63;
        swift_unknownObjectRelease();
        v61 = (v62 & 1) != 0;
        v60 = v61;
        swift_getObjectType();
        swift_unknownObjectRetain();
        if ([v159 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v168 = [v159 BOOLValue];
          swift_unknownObjectRelease();
        }

        else
        {
          v168 = 2;
        }

        v59 = v168;
        if (v168 == 2)
        {
          sub_1AC30B05C(v133, 11, 2, v134, 68, 2, v135, 49, 2, 110, 0);
          __break(1u);
        }

        else
        {
          v58 = v59;
        }

        v57 = v58;
        swift_unknownObjectRelease();
        if (v57)
        {
          v55 = sub_1AC30A9DC("on", 2, 1);
        }

        else
        {
          v55 = sub_1AC30A9DC("off", 3, 1);
        }

        v56 = v52;
        v53[1] = v52;
        v54 = sub_1AC30A91C();

        [v66 updateFeatureValue:41 value:v60 featureValueString:v54];
        MEMORY[0x1E69E5920](v54);
        MEMORY[0x1E69E5920](v66);
      }

      else
      {
        sub_1AC206988(v170);
        swift_endAccess();
      }

      MEMORY[0x1E69E5920](v119);
      MEMORY[0x1E69E5920](v118);
    }

    *&result = MEMORY[0x1E69E5920](v126).n128_u64[0];
  }

  return result;
}

void sub_1AC294104(int a1, void *a2, uint64_t a3)
{
  v67 = a1;
  v61 = a2;
  v60 = a3;
  v54 = sub_1AC297494;
  v55 = sub_1AC215C98;
  v56 = sub_1AC215C90;
  v57 = sub_1AC215C90;
  v58 = sub_1AC215CA4;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v59 = 0;
  v62 = sub_1AC309E6C();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v66 = v24 - v65;
  v77 = v3 & 1;
  v76 = v4;
  v75 = v5 + 16;
  v6 = v4;
  if (v67)
  {
    v68 = v61;
    v53 = v61 != 0;
    v52 = v53;
  }

  else
  {
    v52 = 0;
  }

  v51 = v52;

  if (v51)
  {
    v50 = v60 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v49 = Strong;
      MEMORY[0x1E69E5928](Strong);
      sub_1AC206988(p_Strong);
      swift_endAccess();
      sub_1AC30A9DC("OBC_FEATURE_GROUP", 17, 1);
      v47 = v7;
      v48 = sub_1AC30A91C();

      [v49 reloadSpecifierID_];
      MEMORY[0x1E69E5920](v48);
      MEMORY[0x1E69E5920](v49);
    }

    else
    {
      sub_1AC206988(&Strong);
      swift_endAccess();
    }
  }

  else
  {
    v8 = v66;
    v9 = sub_1AC250850();
    (*(v63 + 16))(v8, v9, v62);
    v10 = v61;
    v35 = 7;
    v36 = swift_allocObject();
    *(v36 + 16) = v61;
    v44 = sub_1AC309E4C();
    v45 = sub_1AC30AD2C();
    v33 = 17;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v34 = 32;
    v11 = swift_allocObject();
    v12 = v36;
    v37 = v11;
    *(v11 + 16) = v54;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v37;
    v41 = v13;
    *(v13 + 16) = v55;
    *(v13 + 24) = v14;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v40 = sub_1AC30B18C();
    v42 = v15;

    v16 = v38;
    v17 = v42;
    *v42 = v56;
    v17[1] = v16;

    v18 = v39;
    v19 = v42;
    v42[2] = v57;
    v19[3] = v18;

    v20 = v41;
    v21 = v42;
    v42[4] = v58;
    v21[5] = v20;
    sub_1AC206300();

    if (os_log_type_enabled(v44, v45))
    {
      v22 = v59;
      v26 = sub_1AC30AE6C();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v27 = sub_1AC213EE4(0, v25, v25);
      v28 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v29 = &v74;
      v74 = v26;
      v30 = &v73;
      v73 = v27;
      v31 = &v72;
      v72 = v28;
      sub_1AC213F38(2, &v74);
      sub_1AC213F38(1, v29);
      v70 = v56;
      v71 = v38;
      sub_1AC213F4C(&v70, v29, v30, v31);
      v32 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v70 = v57;
        v71 = v39;
        sub_1AC213F4C(&v70, &v74, &v73, &v72);
        v24[1] = 0;
        v70 = v58;
        v71 = v41;
        sub_1AC213F4C(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_1AC1C3000, v44, v45, "OBC: Turn on smart charing failed %s", v26, 0xCu);
        sub_1AC213F98(v27, 0, v25);
        sub_1AC213F98(v28, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v23 = MEMORY[0x1E69E5920](v44);
    (*(v63 + 8))(v66, v62, v23);
  }
}

uint64_t sub_1AC294930(void *a1)
{
  v1 = a1;
  if (a1)
  {
    swift_getErrorValue();
    v5 = sub_1AC30B21C();
    v6 = v2;

    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_1AC30A9DC("unknown error", 13, 1);
    v13 = v3;
  }

  return v12;
}

void sub_1AC294A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a3;
  v44 = a2;
  v43 = a1;
  v54 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v40 = 0;
  v51 = sub_1AC309E6C();
  v45 = v51;
  v46 = *(v51 - 8);
  v50 = v46;
  v47 = v46;
  MEMORY[0x1EEE9AC00](v43);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v5;
  v73 = v6;
  v71 = v7;
  v72 = v8;
  v49 = v9 + 16;
  v70 = v9 + 16;
  v10 = sub_1AC250850();
  (*(v50 + 16))(v5, v10, v51);
  v56 = sub_1AC309E4C();
  v52 = v56;
  v55 = sub_1AC30AD2C();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v57 = sub_1AC30B18C();
  if (os_log_type_enabled(v56, v55))
  {
    v11 = v40;
    v31 = sub_1AC30AE6C();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v29 = 0;
    v32 = sub_1AC213EE4(0, v28, v28);
    v30 = v32;
    v33 = sub_1AC213EE4(v29, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v61 = v31;
    v60 = v32;
    v59 = v33;
    v34 = 0;
    v35 = &v61;
    sub_1AC213F38(0, &v61);
    sub_1AC213F38(v34, v35);
    v58 = v57;
    v36 = v16;
    MEMORY[0x1EEE9AC00](v16);
    v37 = &v16[-6];
    v16[-4] = v12;
    v16[-3] = &v60;
    v16[-2] = &v59;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v39 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v52, v53, "OBC: User turned off smart charing temopary until tomorrow", v27, 2u);
      v25 = 0;
      sub_1AC213F98(v30, 0, v28);
      sub_1AC213F98(v33, v25, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  (*(v47 + 8))(v48, v45);
  v24 = *sub_1AC291924();
  v23 = v24;
  v13 = v24;
  if (v24)
  {
    v22 = v23;
    v21 = v23;

    v20 = sub_1AC30A91C();

    v67 = sub_1AC2950EC;
    v68 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = 0;
    v65 = sub_1AC246C78;
    v66 = &block_descriptor_58;
    v19 = _Block_copy(&aBlock);
    [v21 temporarilyDisableSmartChargingForDevice:v20 withHandler:?];
    _Block_release(v19);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v14 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC("OBC_FEATURE_GROUP", 17, 1);
    v16[1] = v15;
    v17 = sub_1AC30A91C();

    [v18 reloadSpecifierID_];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }
}

uint64_t sub_1AC2950EC(int a1, void *a2)
{
  v91 = a2;
  v99 = a1;
  v111 = 0;
  v110 = 0;
  v90 = 0;
  v92 = sub_1AC309E6C();
  v93 = *(v92 - 8);
  v94 = v93;
  v95 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v29 - v97;
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v29 - v97;
  v111 = v3;
  v110 = v4;
  v5 = v4;
  if (v99)
  {
    v100 = v91;
    v89 = v91 != 0;
    v88 = v89;
  }

  else
  {
    v88 = 0;
  }

  v87 = v88;

  if (v87)
  {
    v6 = v98;
    v7 = sub_1AC250850();
    (*(v94 + 16))(v6, v7, v92);
    v85 = sub_1AC309E4C();
    v82 = v85;
    v84 = sub_1AC30AD2C();
    v83 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v86 = sub_1AC30B18C();
    if (os_log_type_enabled(v85, v84))
    {
      v8 = v90;
      v73 = sub_1AC30AE6C();
      v69 = v73;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v71 = 0;
      v74 = sub_1AC213EE4(0, v70, v70);
      v72 = v74;
      v75 = sub_1AC213EE4(v71, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v104 = v73;
      v103 = v74;
      v102 = v75;
      v76 = 0;
      v77 = &v104;
      sub_1AC213F38(0, &v104);
      sub_1AC213F38(v76, v77);
      v101 = v86;
      v78 = &v29;
      MEMORY[0x1EEE9AC00](&v29);
      v79 = &v29 - 6;
      *(&v29 - 4) = v9;
      *(&v29 - 3) = &v103;
      *(&v29 - 2) = &v102;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v81 = v8;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v82, v83, "OBC: Smart charging temporarily disabled", v69, 2u);
        v67 = 0;
        sub_1AC213F98(v72, 0, v70);
        sub_1AC213F98(v75, v67, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v68 = v81;
      }
    }

    else
    {

      v68 = v90;
    }

    v65 = v68;

    (*(v94 + 8))(v98, v92);
    return v65;
  }

  else
  {
    v10 = v96;
    v11 = sub_1AC250850();
    (*(v94 + 16))(v10, v11, v92);
    v12 = v91;
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v91;
    v64 = sub_1AC309E4C();
    v46 = v64;
    v63 = sub_1AC30AD2C();
    v47 = v63;
    v48 = 17;
    v57 = swift_allocObject();
    v49 = v57;
    v50 = 32;
    *(v57 + 16) = 32;
    v13 = swift_allocObject();
    v14 = v50;
    v58 = v13;
    v51 = v13;
    *(v13 + 16) = 8;
    v52 = v14;
    v15 = swift_allocObject();
    v16 = v54;
    v55 = v15;
    *(v15 + 16) = sub_1AC297494;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v55;
    v61 = v17;
    v56 = v17;
    *(v17 + 16) = sub_1AC215C98;
    *(v17 + 24) = v18;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v59 = sub_1AC30B18C();
    v60 = v19;

    v20 = v57;
    v21 = v60;
    *v60 = sub_1AC215C90;
    v21[1] = v20;

    v22 = v58;
    v23 = v60;
    v60[2] = sub_1AC215C90;
    v23[3] = v22;

    v24 = v60;
    v25 = v61;
    v60[4] = sub_1AC215CA4;
    v24[5] = v25;
    sub_1AC206300();

    if (os_log_type_enabled(v64, v63))
    {
      v26 = v90;
      v39 = sub_1AC30AE6C();
      v36 = v39;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v40 = sub_1AC213EE4(0, v37, v37);
      v38 = v40;
      v42 = 1;
      v41 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v109 = v39;
      v108 = v40;
      v107 = v41;
      v43 = &v109;
      sub_1AC213F38(2, &v109);
      sub_1AC213F38(v42, v43);
      v105 = sub_1AC215C90;
      v106 = v49;
      sub_1AC213F4C(&v105, v43, &v108, &v107);
      v44 = v26;
      v45 = v26;
      if (v26)
      {
        v34 = 0;

        __break(1u);
      }

      else
      {
        v105 = sub_1AC215C90;
        v106 = v51;
        sub_1AC213F4C(&v105, &v109, &v108, &v107);
        v32 = 0;
        v33 = 0;
        v105 = sub_1AC215CA4;
        v106 = v56;
        sub_1AC213F4C(&v105, &v109, &v108, &v107);
        v30 = 0;
        v31 = 0;
        _os_log_impl(&dword_1AC1C3000, v46, v47, "OBC: Turn off temopary until tomorrow failed %s", v36, 0xCu);
        sub_1AC213F98(v38, 0, v37);
        sub_1AC213F98(v41, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v35 = v30;
      }
    }

    else
    {
      v27 = v90;

      v35 = v27;
    }

    v29 = v35;

    (*(v94 + 8))(v96, v92);
    return v29;
  }
}

void sub_1AC295C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a3;
  v44 = a2;
  v43 = a1;
  v54 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v40 = 0;
  v51 = sub_1AC309E6C();
  v45 = v51;
  v46 = *(v51 - 8);
  v50 = v46;
  v47 = v46;
  MEMORY[0x1EEE9AC00](v43);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v5;
  v73 = v6;
  v71 = v7;
  v72 = v8;
  v49 = v9 + 16;
  v70 = v9 + 16;
  v10 = sub_1AC250850();
  (*(v50 + 16))(v5, v10, v51);
  v56 = sub_1AC309E4C();
  v52 = v56;
  v55 = sub_1AC30AD2C();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v57 = sub_1AC30B18C();
  if (os_log_type_enabled(v56, v55))
  {
    v11 = v40;
    v31 = sub_1AC30AE6C();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v29 = 0;
    v32 = sub_1AC213EE4(0, v28, v28);
    v30 = v32;
    v33 = sub_1AC213EE4(v29, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v61 = v31;
    v60 = v32;
    v59 = v33;
    v34 = 0;
    v35 = &v61;
    sub_1AC213F38(0, &v61);
    sub_1AC213F38(v34, v35);
    v58 = v57;
    v36 = v16;
    MEMORY[0x1EEE9AC00](v16);
    v37 = &v16[-6];
    v16[-4] = v12;
    v16[-3] = &v60;
    v16[-2] = &v59;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v39 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v52, v53, "OBC: User turned off smart charing", v27, 2u);
      v25 = 0;
      sub_1AC213F98(v30, 0, v28);
      sub_1AC213F98(v33, v25, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v26 = v39;
    }
  }

  else
  {

    v26 = v40;
  }

  (*(v47 + 8))(v48, v45);
  v24 = *sub_1AC291924();
  v23 = v24;
  v13 = v24;
  if (v24)
  {
    v22 = v23;
    v21 = v23;

    v20 = sub_1AC30A91C();

    v67 = sub_1AC2962AC;
    v68 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = 0;
    v65 = sub_1AC246C78;
    v66 = &block_descriptor_31;
    v19 = _Block_copy(&aBlock);
    [v21 disableSmartChargingForDevice:v20 withHandler:?];
    _Block_release(v19);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v14 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC("OBC_FEATURE_GROUP", 17, 1);
    v16[1] = v15;
    v17 = sub_1AC30A91C();

    [v18 reloadSpecifierID_];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }
}

uint64_t sub_1AC2962AC(int a1, void *a2)
{
  v91 = a2;
  v99 = a1;
  v111 = 0;
  v110 = 0;
  v90 = 0;
  v92 = sub_1AC309E6C();
  v93 = *(v92 - 8);
  v94 = v93;
  v95 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v29 - v97;
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v29 - v97;
  v111 = v3;
  v110 = v4;
  v5 = v4;
  if (v99)
  {
    v100 = v91;
    v89 = v91 != 0;
    v88 = v89;
  }

  else
  {
    v88 = 0;
  }

  v87 = v88;

  if (v87)
  {
    v6 = v98;
    v7 = sub_1AC250850();
    (*(v94 + 16))(v6, v7, v92);
    v85 = sub_1AC309E4C();
    v82 = v85;
    v84 = sub_1AC30AD2C();
    v83 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v86 = sub_1AC30B18C();
    if (os_log_type_enabled(v85, v84))
    {
      v8 = v90;
      v73 = sub_1AC30AE6C();
      v69 = v73;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v71 = 0;
      v74 = sub_1AC213EE4(0, v70, v70);
      v72 = v74;
      v75 = sub_1AC213EE4(v71, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v104 = v73;
      v103 = v74;
      v102 = v75;
      v76 = 0;
      v77 = &v104;
      sub_1AC213F38(0, &v104);
      sub_1AC213F38(v76, v77);
      v101 = v86;
      v78 = &v29;
      MEMORY[0x1EEE9AC00](&v29);
      v79 = &v29 - 6;
      *(&v29 - 4) = v9;
      *(&v29 - 3) = &v103;
      *(&v29 - 2) = &v102;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v81 = v8;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v82, v83, "OBC: Smart charging disabled", v69, 2u);
        v67 = 0;
        sub_1AC213F98(v72, 0, v70);
        sub_1AC213F98(v75, v67, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v68 = v81;
      }
    }

    else
    {

      v68 = v90;
    }

    v65 = v68;

    (*(v94 + 8))(v98, v92);
    return v65;
  }

  else
  {
    v10 = v96;
    v11 = sub_1AC250850();
    (*(v94 + 16))(v10, v11, v92);
    v12 = v91;
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v91;
    v64 = sub_1AC309E4C();
    v46 = v64;
    v63 = sub_1AC30AD2C();
    v47 = v63;
    v48 = 17;
    v57 = swift_allocObject();
    v49 = v57;
    v50 = 32;
    *(v57 + 16) = 32;
    v13 = swift_allocObject();
    v14 = v50;
    v58 = v13;
    v51 = v13;
    *(v13 + 16) = 8;
    v52 = v14;
    v15 = swift_allocObject();
    v16 = v54;
    v55 = v15;
    *(v15 + 16) = sub_1AC297494;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v55;
    v61 = v17;
    v56 = v17;
    *(v17 + 16) = sub_1AC215C98;
    *(v17 + 24) = v18;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v59 = sub_1AC30B18C();
    v60 = v19;

    v20 = v57;
    v21 = v60;
    *v60 = sub_1AC215C90;
    v21[1] = v20;

    v22 = v58;
    v23 = v60;
    v60[2] = sub_1AC215C90;
    v23[3] = v22;

    v24 = v60;
    v25 = v61;
    v60[4] = sub_1AC215CA4;
    v24[5] = v25;
    sub_1AC206300();

    if (os_log_type_enabled(v64, v63))
    {
      v26 = v90;
      v39 = sub_1AC30AE6C();
      v36 = v39;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v40 = sub_1AC213EE4(0, v37, v37);
      v38 = v40;
      v42 = 1;
      v41 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v109 = v39;
      v108 = v40;
      v107 = v41;
      v43 = &v109;
      sub_1AC213F38(2, &v109);
      sub_1AC213F38(v42, v43);
      v105 = sub_1AC215C90;
      v106 = v49;
      sub_1AC213F4C(&v105, v43, &v108, &v107);
      v44 = v26;
      v45 = v26;
      if (v26)
      {
        v34 = 0;

        __break(1u);
      }

      else
      {
        v105 = sub_1AC215C90;
        v106 = v51;
        sub_1AC213F4C(&v105, &v109, &v108, &v107);
        v32 = 0;
        v33 = 0;
        v105 = sub_1AC215CA4;
        v106 = v56;
        sub_1AC213F4C(&v105, &v109, &v108, &v107);
        v30 = 0;
        v31 = 0;
        _os_log_impl(&dword_1AC1C3000, v46, v47, "OBC: Turned off smart charing failed %s", v36, 0xCu);
        sub_1AC213F98(v38, 0, v37);
        sub_1AC213F98(v41, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v35 = v30;
      }
    }

    else
    {
      v27 = v90;

      v35 = v27;
    }

    v29 = v35;

    (*(v94 + 8))(v96, v92);
    return v29;
  }
}

void sub_1AC296DCC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v30 = a1;
  v41 = 0;
  v51 = 0;
  v50 = 0;
  v29 = 0;
  v38 = sub_1AC309E6C();
  v32 = v38;
  v33 = *(v38 - 8);
  v37 = v33;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v30);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v51 = v4;
  v36 = v5 + 16;
  v50 = v5 + 16;
  v6 = sub_1AC250850();
  (*(v37 + 16))(v3, v6, v38);
  v43 = sub_1AC309E4C();
  v39 = v43;
  v42 = sub_1AC30AD2C();
  v40 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v44 = sub_1AC30B18C();
  if (os_log_type_enabled(v43, v42))
  {
    v7 = v29;
    v20 = sub_1AC30AE6C();
    v16 = v20;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v18 = 0;
    v21 = sub_1AC213EE4(0, v17, v17);
    v19 = v21;
    v22 = sub_1AC213EE4(v18, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v48 = v20;
    v47 = v21;
    v46 = v22;
    v23 = 0;
    v24 = &v48;
    sub_1AC213F38(0, &v48);
    sub_1AC213F38(v23, v24);
    v45 = v44;
    v25 = v11;
    MEMORY[0x1EEE9AC00](v11);
    v26 = &v11[-6];
    v11[-4] = v8;
    v11[-3] = &v47;
    v11[-2] = &v46;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v28 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v39, v40, "OBC: User left smart charing on", v16, 2u);
      v14 = 0;
      sub_1AC213F98(v19, 0, v17);
      sub_1AC213F98(v22, v14, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v15 = v28;
    }
  }

  else
  {

    v15 = v29;
  }

  (*(v34 + 8))(v35, v32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v9 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC("OBC_FEATURE_GROUP", 17, 1);
    v11[1] = v10;
    v12 = sub_1AC30A91C();

    [v13 reloadSpecifierID_];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }
}

uint64_t sub_1AC2972AC()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("OBC Feature", 11, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

id sub_1AC297398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC30A91C();
  v5 = [v3 initWithClientName_];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for PowerUISmartChargingState(uint64_t a1)
{
  v5 = qword_1EB54C8C0;
  if (!qword_1EB54C8C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C8C0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC297660()
{
  v2 = qword_1EB54C8B8;
  if (!qword_1EB54C8B8)
  {
    type metadata accessor for PowerUISmartChargingState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8B8);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC2976E0(unsigned int a1)
{
  sub_1AC2068B8();
  v1 = sub_1AC20BC98(a1);
  return sub_1AC297728(v1);
}

uint64_t sub_1AC297798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v22 = a2;
  v20 = a3;
  v21 = a4;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v9);
  v19 = v10;
  v18 = 6;
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1AC2979A0();
  if (sub_1AC30A89C())
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    sub_1AC30929C(v11);
    if (v11[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8D0, &unk_1AC3135B8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
      }
    }

    else
    {
      sub_1AC204664(v11);
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    v5 = v15 != 0;
    v6 = sub_1AC3092FC();
    sub_1AC204664(&v12);
    v7 = v5;
    v8 = v6;
  }

  LOBYTE(v17) = v7;
  HIBYTE(v17) = v8 & 1;
  return v17;
}

unint64_t sub_1AC2979A0()
{
  v2 = qword_1EB54C8C8;
  if (!qword_1EB54C8C8)
  {
    type metadata accessor for UIUserInterfaceIdiom(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC297A20(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v51 = a3;
  v53 = a2;
  v45 = a1;
  v46 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v47 = sub_1AC30A90C();
  v48 = *(v47 - 8);
  v49 = v48;
  MEMORY[0x1EEE9AC00](0);
  v50 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1AC309AAC();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  v71 = v7;
  v69 = v8;
  v70 = v9;
  sub_1AC30929C(v62);
  if (v62[3])
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8D0, &unk_1AC3135B8);
    if (!swift_dynamicCast())
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
    }
  }

  else
  {
    sub_1AC204664(v62);
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
  }

  if (v66)
  {
    v41 = __dst;
    sub_1AC2051E4(&v63, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
    v29[2] = MEMORY[0x1E69A2B08];
    v29[3] = sub_1AC205220();
    v29[4] = v10;
    sub_1AC205220();
    v37 = sub_1AC309D3C();
    v60 = v51;
    v61 = v52;
    sub_1AC30A9DC("Microphone", 10, 1);
    sub_1AC30A8AC();
    v33 = sub_1AC215DE8(v50, &unk_1F20F74C8);
    v34 = v11;
    (*(v49 + 8))(v50, v47);
    v12 = v53;
    v35 = 0;
    v59 = type metadata accessor for HeadphoneSettingsController();
    v58 = v53;
    v32 = sub_1AC298084();
    v13 = v45;
    v29[5] = 24;
    v29[6] = 7;
    v14 = swift_allocObject();
    v15 = v45;
    v31 = v14;
    *(v14 + 16) = v45;
    v16 = v15;
    v30 = swift_allocObject();
    *(v30 + 16) = v45;
    v17 = sub_1AC20599C();
    v36 = &v20;
    v28 = v35;
    v27 = v35;
    v26 = v30;
    v25 = sub_1AC298770;
    v24 = v31;
    v23 = sub_1AC298140;
    v22 = v32;
    LOBYTE(v21) = v17 & 1;
    v20 = v35;
    sub_1AC309A9C();
    v39 = sub_1AC309D1C();
    (*(v56 + 8))(v57, v54);

    v38 = v29;
    MEMORY[0x1EEE9AC00](v29);
    v26 = v51;
    v27 = v52;
    v28 = v18;
    v40 = sub_1AC309D0C();

    v42 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v41);
    return v42;
  }

  else
  {
    sub_1AC204664(&v63);
    v29[0] = 0;
    v29[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

unint64_t sub_1AC298084()
{
  v2 = qword_1EB54C8D8;
  if (!qword_1EB54C8D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C8D8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC2980E8()
{
  sub_1AC2068B8();
  v0 = sub_1AC3092CC();
  v1 = sub_1AC20BC98(v0);
  return sub_1AC297728(v1);
}

uint64_t sub_1AC298148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v43 = a2;
  v48 = a1;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v41 = 0;
  v52 = 0;
  v50 = 0;
  v44 = sub_1AC309E6C();
  v45 = *(v44 - 8);
  v46 = v45;
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v4;
  v58 = v5;
  v57 = v6;
  swift_unknownObjectRetain();
  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  if (v49)
  {
    v40 = v49;
  }

  else
  {
    swift_unknownObjectRelease();
    v40 = 0;
  }

  v39 = v40;
  if (v40)
  {
    v38 = v39;
    v36 = v39;
    v52 = v39;
    v7 = [v39 integerValue];
    v37 = v7;
    if (v7 <= -129)
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Not enough bits to represent a signed value", 43, 2, "Swift/Integers.swift", 20, 2, 3262, 0);
      __break(1u);
    }

    if (v37 >= 128)
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Not enough bits to represent the passed value", 45, 2, "Swift/Integers.swift", 20, 2, 3268, 0);
      __break(1u);
    }

    v51 = sub_1AC20BC30(v37);
    v35 = v51;
    if ((v51 & 0x100) == 0)
    {
      v34 = v35;
      v50 = v35;
      sub_1AC3092DC();
      sub_1AC30942C();

      return v41;
    }
  }

  v8 = v47;
  v9 = sub_1AC29DCC0();
  (*(v46 + 16))(v8, v9, v44);
  v31 = sub_1AC309E4C();
  v28 = v31;
  v30 = sub_1AC30AD1C();
  v29 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v32 = sub_1AC30B18C();
  if (os_log_type_enabled(v31, v30))
  {
    v10 = v41;
    v19 = sub_1AC30AE6C();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v17 = 0;
    v20 = sub_1AC213EE4(0, v16, v16);
    v18 = v20;
    v21 = sub_1AC213EE4(v17, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v56 = v19;
    v55 = v20;
    v54 = v21;
    v22 = 0;
    v23 = &v56;
    sub_1AC213F38(0, &v56);
    sub_1AC213F38(v22, v23);
    v53 = v32;
    v24 = &v12;
    MEMORY[0x1EEE9AC00](&v12);
    v25 = &v12 - 6;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v27 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v28, v29, "Mic Feature: Invalid microphone mode:", v15, 2u);
      v13 = 0;
      sub_1AC213F98(v18, 0, v16);
      sub_1AC213F98(v21, v13, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v14 = v27;
    }
  }

  else
  {

    v14 = v41;
  }

  v12 = v14;

  (*(v46 + 8))(v47, v44);
  return v12;
}

uint64_t sub_1AC298778(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v135 = a1;
  v111 = a2;
  v112 = a3;
  v86 = a4;
  v157 = 0;
  v155 = 0;
  v156 = 0;
  v154 = 0;
  v150 = 0;
  v143 = 0;
  v142 = 0;
  v124 = 0;
  v119 = sub_1AC30A90C();
  v71 = *(v119 - 8);
  v72 = v119 - 8;
  v58 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v118 = &v57 - v58;
  v98 = sub_1AC30A8EC();
  v69 = *(v98 - 8);
  v70 = v98 - 8;
  v59 = (v69[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v102 = &v57 - v59;
  v60 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v57 - v60;
  v61 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v57 - v61;
  v157 = v8;
  v155 = v9;
  v156 = v10;
  v154 = v11;
  v125 = 3;
  v132 = MEMORY[0x1E69E6158];
  v106 = sub_1AC30B18C();
  v105 = v12;
  v67 = v153;
  v153[0] = v111;
  v153[1] = v112;
  v62 = 21;
  v83 = 1;
  sub_1AC30A8DC();
  v126 = 1;
  sub_1AC30A9DC("Automatically Switch ", v62, 1);
  v63 = v13;
  sub_1AC30A8CC();

  v65 = v86[3];
  v64 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v65);
  (*(*(v64 + 8) + 24))(v65);
  v66 = v14;
  sub_1AC30A8BC();

  v90 = "";
  sub_1AC30A9DC("", v124, v126 & 1);
  v68 = v15;
  sub_1AC30A8CC();

  v94 = v69[2];
  v93 = v69 + 2;
  v94(v95, v101, v98);
  v97 = v69[4];
  v96 = v69 + 4;
  v97(v102, v95, v98);
  v100 = v69[1];
  v99 = v69 + 1;
  v100(v101, v98);
  sub_1AC30A8FC();
  v114 = &unk_1F20F74C8;
  v115 = &off_1F20F7458;
  v73 = sub_1AC215DE8(v118, &unk_1F20F74C8);
  v74 = v16;
  v117 = *(v71 + 8);
  v116 = v71 + 8;
  v117(v118, v119);
  v17 = v74;
  v18 = v105;
  v19 = v111;
  v20 = v112;
  *v105 = v73;
  v18[1] = v17;
  v79 = v152;
  v152[0] = v19;
  v152[1] = v20;
  v113 = 12;
  sub_1AC30A8DC();
  sub_1AC30A9DC("Always Left ", v113, v126 & 1);
  v75 = v21;
  sub_1AC30A8CC();

  v77 = v86[3];
  v76 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v77);
  (*(*(v76 + 8) + 16))(v77);
  v78 = v22;
  sub_1AC30A8BC();

  sub_1AC30A9DC(v90, v124, v126 & 1);
  v80 = v23;
  sub_1AC30A8CC();

  v94(v95, v101, v98);
  v97(v102, v95, v98);
  v100(v101, v98);
  sub_1AC30A8FC();
  v81 = sub_1AC215DE8(v118, v114);
  v82 = v24;
  v117(v118, v119);
  v25 = v82;
  v26 = v105;
  v27 = v111;
  v28 = v112;
  v105[2] = v81;
  v26[3] = v25;
  v91 = v151;
  v151[0] = v27;
  v151[1] = v28;
  v84 = 13;
  sub_1AC30A8DC();
  sub_1AC30A9DC("Always Right ", v84, v126 & 1);
  v85 = v29;
  sub_1AC30A8CC();

  v88 = v86[3];
  v87 = v86[4];
  __swift_project_boxed_opaque_existential_1(v86, v88);
  (*(*(v87 + 8) + 16))(v88);
  v89 = v30;
  sub_1AC30A8BC();

  sub_1AC30A9DC(v90, v124, v126 & 1);
  v92 = v31;
  sub_1AC30A8CC();

  v94(v95, v101, v98);
  v97(v102, v95, v98);
  v100(v101, v98);
  sub_1AC30A8FC();
  v103 = sub_1AC215DE8(v118, v114);
  v104 = v32;
  v117(v118, v119);
  v33 = v104;
  v34 = v105;
  v105[4] = v103;
  v34[5] = v33;
  sub_1AC206300();
  v141 = v35;
  v150 = v35;
  v123 = sub_1AC30B18C();
  v122 = v36;
  v148 = v111;
  v149 = v112;
  sub_1AC30A9DC("Automatic", 9, v126 & 1);
  sub_1AC30A8AC();
  v107 = sub_1AC215DE8(v118, v114);
  v108 = v37;
  v117(v118, v119);
  v38 = v108;
  v39 = v111;
  v40 = v112;
  v41 = v122;
  v42 = v126;
  *v122 = v107;
  v41[1] = v38;
  v146 = v39;
  v147 = v40;
  sub_1AC30A9DC("Always Left", 11, v42 & 1);
  sub_1AC30A8AC();
  v109 = sub_1AC215DE8(v118, v114);
  v110 = v43;
  v117(v118, v119);
  v44 = v110;
  v45 = v111;
  v46 = v112;
  v47 = v113;
  v48 = v122;
  v49 = v126;
  v122[2] = v109;
  v48[3] = v44;
  v144 = v45;
  v145 = v46;
  sub_1AC30A9DC("Always Right", v47, v49 & 1);
  sub_1AC30A8AC();
  v120 = sub_1AC215DE8(v118, v114);
  v121 = v50;
  v117(v118, v119);
  v51 = v121;
  v52 = v122;
  v122[4] = v120;
  v52[5] = v51;
  sub_1AC206300();
  v140 = v53;
  v143 = v53;
  v129 = sub_1AC2068B8();
  v128 = sub_1AC30B18C();
  v127 = v54;
  *v54 = sub_1AC2976E0(v126);
  v127[1] = sub_1AC2976E0(2u);
  v127[2] = sub_1AC2976E0(3u);
  sub_1AC206300();
  v139 = v55;
  v142 = v55;

  v133 = MEMORY[0x1E69E7CA0] + 8;
  v130 = sub_1AC30B02C();
  v138 = sub_1AC30AAFC();

  v131 = sub_1AC30B02C();
  v137 = sub_1AC30AAFC();

  v134 = sub_1AC30B02C();
  v136 = sub_1AC30AAFC();

  [v135 setValues:v138 titles:v137 shortTitles:v136];
  MEMORY[0x1E69E5920](v136);
  MEMORY[0x1E69E5920](v137);
  MEMORY[0x1E69E5920](v138);
}

uint64_t sub_1AC299620()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("Mic Feature", 11, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

uint64_t sub_1AC299784(uint64_t a1)
{
  v3 = [objc_opt_self() currentDevice];
  [v3 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v3);
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1AC2052F0();
  v4 = sub_1AC30B1BC();
  if (sub_1AC3092FC())
  {
    v2 = 1;
  }

  else
  {
    v2 = v4;
  }

  LOBYTE(v5) = 1;
  HIBYTE(v5) = v2 & 1;
  return v5;
}

uint64_t sub_1AC2998A4(void *a1, void *a2, uint64_t a3)
{
  v59 = a3;
  v61 = a2;
  v60 = a1;
  v54 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v55 = sub_1AC30A90C();
  v56 = *(v55 - 8);
  v57 = v56;
  MEMORY[0x1EEE9AC00](0);
  v58 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1AC309AAC();
  v63 = *(v62 - 8);
  v64 = v63;
  MEMORY[0x1EEE9AC00](v60);
  v65 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v5;
  v78 = v6;
  v77 = v7;
  v76 = sub_1AC299784(v5);
  v74 = HIBYTE(v76);
  v75 = v76;
  v73 = 1;
  v72 = 1;
  if (sub_1AC30B1AC())
  {
    v45 = 1;
    sub_1AC30A9DC("Conversation Awareness", 22);
    sub_1AC30A8AC();
    v36 = sub_1AC215DE8(v58, &unk_1F20F7570);
    v37 = v8;
    (*(v57 + 8))(v58, v55);
    v44 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v9 = v60;
    v40 = 24;
    v33 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v60;
    v39 = swift_allocObject();
    v32 = v39 + 16;
    v10 = v61;
    swift_unknownObjectWeakInit();

    v11 = v60;
    v12 = swift_allocObject();
    v13 = v60;
    v34 = v12;
    *(v12 + 16) = v39;
    *(v12 + 24) = v13;
    v14 = sub_1AC20599C();
    v38 = &v20;
    v28 = v44;
    v27 = v44;
    v26 = v34;
    v25 = sub_1AC29A388;
    v24 = v35;
    v23 = sub_1AC299F10;
    v22 = v44;
    LOBYTE(v21) = v14 & 1;
    v20 = v44;
    sub_1AC309A9C();

    v42 = sub_1AC309D1C();
    (*(v64 + 8))(v65, v62);
    v15 = v60;
    v41 = v29;
    MEMORY[0x1EEE9AC00](v29);
    v28 = v16;
    v43 = sub_1AC309D0C();

    v46 = sub_1AC215CB0();
    v47 = v46;
    v48 = sub_1AC30B18C();
    v49 = v17;
    v51 = sub_1AC309D2C();
    v67 = v51;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v53 = v66;
    v52 = v66;

    if (v53)
    {
      v31 = v52;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/ConversationAwarenessFeature.swift", 54, 2, 46, 0);
      __break(1u);
    }

    *v49 = v31;
    sub_1AC206300();
    return v18;
  }

  else
  {
    v29[0] = 0;
    v29[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

id sub_1AC299EB8()
{
  sub_1AC2068B8();
  v0 = sub_1AC3093CC();
  return sub_1AC244124(v0 & 1);
}

uint64_t sub_1AC299F18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[7] = a1;
  v15[6] = a2;
  v15[5] = a3 + 16;
  v15[4] = a4;
  swift_beginAccess();
  v15[0] = swift_unknownObjectWeakLoadStrong();
  if (v15[0])
  {
    v9 = v15[0];
    MEMORY[0x1E69E5928](v15[0]);
    sub_1AC206988(v15);
    swift_endAccess();
    v10 = *(v9 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
    MEMORY[0x1E69E5928](v10);
    [v10 updateFeatureChangeCount_];
    MEMORY[0x1E69E5920](v10);
  }

  else
  {
    sub_1AC206988(v15);
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    v7 = *(v8 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
    MEMORY[0x1E69E5928](v7);
    MEMORY[0x1E69E5920](v8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ([a1 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v12 = [a1 BOOLValue];
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 2;
    }

    if (v12 == 2)
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/ConversationAwarenessFeature.swift", 54, 2, 33, 0);
      __break(1u);
    }

    else
    {
      v6 = v12;
    }

    swift_unknownObjectRelease();
    sub_1AC30A9DC("", 0, 1);
    v5 = sub_1AC30A91C();

    [v7 updateFeatureValue:53 value:(v6 & 1) != 0 featureValueString:v5];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v13 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 2;
  }

  if (v13 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/ConversationAwarenessFeature.swift", 54, 2, 36, 0);
    __break(1u);
  }

  sub_1AC3093DC();
  swift_unknownObjectRelease();
  return sub_1AC30942C();
}

uint64_t sub_1AC29A394(void *a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v21 = sub_1AC30A90C();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v8 - v24;
  v31 = v3;
  v30 = a2;
  if (sub_1AC3093CC())
  {
    sub_1AC30A9DC("On", 2, 1);
    sub_1AC30A8AC();
    v15 = sub_1AC215DE8(v25, &unk_1F20F7570);
    v16 = v4;
    (*(v22 + 8))(v25, v21);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    sub_1AC30A9DC("Off", 3, 1);
    sub_1AC30A8AC();
    v13 = sub_1AC215DE8(v25, &unk_1F20F7570);
    v14 = v5;
    (*(v22 + 8))(v25, v21);
    v17 = v13;
    v18 = v14;
  }

  v12 = v18;
  v10 = v17;
  v28 = v17;
  v29 = v18;
  sub_1AC30A9DC("Lowers media volume and reduces background noise when you start speaking to other people.", 89, 1);
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v25, &unk_1F20F7570);
  v11 = v6;
  (*(v22 + 8))(v25, v21);
  v26 = v9;
  v27 = v11;
  type metadata accessor for AudioFeatureGroup();
  sub_1AC2D27E8(v20, v19, v9, v11, v10, v12, 0);
}

id sub_1AC29A6D0()
{
  sub_1AC20BE24();
  type metadata accessor for HeadphoneSettingsController();
  result = sub_1AC20BE88();
  qword_1EB553D48 = result;
  return result;
}

uint64_t *sub_1AC29A718()
{
  if (qword_1EB550CA0 != -1)
  {
    swift_once();
  }

  return &qword_1EB553D48;
}

uint64_t sub_1AC29A778()
{
  v1 = sub_1AC29A718();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

double sub_1AC29A7D8(uint64_t a1)
{
  v3 = sub_1AC29A718();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC29A864(uint64_t a1))(uint64_t a1)
{
  sub_1AC29A718();
  swift_beginAccess();
  return sub_1AC20949C;
}

void *sub_1AC29A8C0@<X0>(void *a1@<X8>)
{
  v26 = sub_1AC30A9DC("airpods.gen3.chargingcase.wireless.fill", 39, 1);
  v21 = v1;
  v22 = sub_1AC29AB40();
  v23 = sub_1AC30A9DC("B768", 4, 1);
  v24 = v2;
  sub_1AC20D404();
  v9 = sub_1AC30A9DC("B768-Left");
  v10 = v3;
  v8 = sub_1AC29A718();
  swift_beginAccess();
  v11 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  v25 = sub_1AC20D468(v9, v10, v11);
  v13 = sub_1AC30A9DC("B768-Right", 10, 1);
  v14 = v4;
  v12 = sub_1AC29A718();
  swift_beginAccess();
  v15 = *v12;
  MEMORY[0x1E69E5928](*v12);
  swift_endAccess();
  v20 = sub_1AC20D468(v13, v14, v15);
  v17 = sub_1AC30A9DC("B768-Case", 9, 1);
  v18 = v5;
  v16 = sub_1AC29A718();
  swift_beginAccess();
  v19 = *v16;
  MEMORY[0x1E69E5928](*v16);
  swift_endAccess();
  v6 = sub_1AC20D468(v17, v18, v19);
  sub_1AC216510(v26, v21, v22, v23, v24, 0, 0, v25, v28, v20, v6, 0, sub_1AC20D540, 0);
  return memcpy(a1, v28, 0x60uLL);
}

id sub_1AC29AB40()
{
  v146 = 0;
  sub_1AC20D5F4();
  v124 = sub_1AC20D658();
  v145 = v124;
  v113 = 1;
  v0 = sub_1AC30A9DC("BudHeight", 9, 1);
  v48 = v143;
  v114 = MEMORY[0x1E69E6158];
  v144 = MEMORY[0x1E69E6158];
  v143[0] = v0;
  v143[1] = v1;
  v47 = sub_1AC30AC3C();
  v44 = v144;
  v2 = __swift_project_boxed_opaque_existential_1(v143, v144);
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v41 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v45 = &v41 - v41;
  (*(v42 + 16))(v3);
  v46 = sub_1AC30B19C();
  (*(v42 + 8))(v45, v44);
  v120 = 0x1FB921000uLL;
  [v124 0x1FB921E28];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v48);
  v4 = sub_1AC30A9DC("UnifiedSpacingBetweenBuds", 25, v113 & 1);
  v56 = v141;
  v142 = v114;
  v141[0] = v4;
  v141[1] = v5;
  v55 = sub_1AC30AC3C();
  v52 = v142;
  v6 = __swift_project_boxed_opaque_existential_1(v56, v142);
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v49 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v41 - v49;
  (*(v50 + 16))(v7);
  v54 = sub_1AC30B19C();
  (*(v50 + 8))(v53, v52);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v56);
  v8 = sub_1AC30A9DC("SeparateSpacingBetweenBuds", 26, v113 & 1);
  v64 = v139;
  v140 = v114;
  v139[0] = v8;
  v139[1] = v9;
  v63 = sub_1AC30AC3C();
  v60 = v140;
  v10 = __swift_project_boxed_opaque_existential_1(v64, v140);
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v57 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v41 - v57;
  (*(v58 + 16))(v11);
  v62 = sub_1AC30B19C();
  (*(v58 + 8))(v61, v60);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v64);
  v12 = sub_1AC30A9DC("CaseHeight", 10, v113 & 1);
  v72 = v137;
  v138 = v114;
  v137[0] = v12;
  v137[1] = v13;
  v71 = sub_1AC30AC3C();
  v68 = v138;
  v14 = __swift_project_boxed_opaque_existential_1(v72, v138);
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v65 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v41 - v65;
  (*(v66 + 16))(v15);
  v70 = sub_1AC30B19C();
  (*(v66 + 8))(v69, v68);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v72);
  v16 = sub_1AC30A9DC("UnifiedSpacingBudsCase", 22, v113 & 1);
  v80 = v135;
  v136 = v114;
  v135[0] = v16;
  v135[1] = v17;
  v79 = sub_1AC30AC3C();
  v76 = v136;
  v18 = __swift_project_boxed_opaque_existential_1(v80, v136);
  v74 = *(v76 - 8);
  v75 = v76 - 8;
  v73 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v41 - v73;
  (*(v74 + 16))(v19);
  v78 = sub_1AC30B19C();
  (*(v74 + 8))(v77, v76);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v80);
  v20 = sub_1AC30A9DC("SeparateSpacingBudsCase", 23, v113 & 1);
  v88 = v133;
  v134 = v114;
  v133[0] = v20;
  v133[1] = v21;
  v87 = sub_1AC30AC3C();
  v84 = v134;
  v22 = __swift_project_boxed_opaque_existential_1(v88, v134);
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v81 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v85 = &v41 - v81;
  (*(v82 + 16))(v23);
  v86 = sub_1AC30B19C();
  (*(v82 + 8))(v85, v84);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v88);
  v24 = sub_1AC30A9DC("DarkBiasValue", 13, v113 & 1);
  v96 = v131;
  v132 = v114;
  v131[0] = v24;
  v131[1] = v25;
  v95 = sub_1AC30ABEC();
  v92 = v132;
  v26 = __swift_project_boxed_opaque_existential_1(v96, v132);
  v90 = *(v92 - 8);
  v91 = v92 - 8;
  v89 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v93 = &v41 - v89;
  (*(v90 + 16))(v27);
  v94 = sub_1AC30B19C();
  (*(v90 + 8))(v93, v92);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v96);
  v28 = sub_1AC30A9DC("DarkMatrixValue", 15, v113 & 1);
  v104 = v129;
  v130 = v114;
  v129[0] = v28;
  v129[1] = v29;
  v103 = sub_1AC30ABEC();
  v100 = v130;
  v30 = __swift_project_boxed_opaque_existential_1(v104, v130);
  v98 = *(v100 - 8);
  v99 = v100 - 8;
  v97 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v101 = &v41 - v97;
  (*(v98 + 16))(v31);
  v102 = sub_1AC30B19C();
  (*(v98 + 8))(v101, v100);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v104);
  v32 = sub_1AC30A9DC("LightBiasValue", 14, v113 & 1);
  v112 = v127;
  v128 = v114;
  v127[0] = v32;
  v127[1] = v33;
  v111 = sub_1AC30ABEC();
  v108 = v128;
  v34 = __swift_project_boxed_opaque_existential_1(v112, v128);
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v105 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v109 = &v41 - v105;
  (*(v106 + 16))(v35);
  v110 = sub_1AC30B19C();
  (*(v106 + 8))(v109, v108);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v112);
  v36 = sub_1AC30A9DC("LightMatrixValue", 16, v113 & 1);
  v123 = v125;
  v126 = v114;
  v125[0] = v36;
  v125[1] = v37;
  v122 = sub_1AC30ABEC();
  v118 = v126;
  v38 = __swift_project_boxed_opaque_existential_1(v123, v126);
  v116 = *(v118 - 8);
  v117 = v118 - 8;
  v115 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v119 = &v41 - v115;
  (*(v116 + 16))(v39);
  v121 = sub_1AC30B19C();
  (*(v116 + 8))(v119, v118);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v123);
  return v124;
}

uint64_t B768FeatureContent.marketingName.getter()
{
  v25 = 0;
  v15 = sub_1AC30A90C();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v6 - v18;
  v25 = v0;
  v21 = sub_1AC3097CC();
  v22 = 8217;

  v14 = v21 == v22 || sub_1AC3097CC() == 8222;
  v13 = v14;

  if (v13)
  {
    v23 = v20;
    sub_1AC30A9DC("AirPods 4", 9, 1);
    sub_1AC30A8AC();
    v1 = sub_1AC3097DC();
    v9 = sub_1AC215DE8(v19, v1);
    v10 = v2;
    (*(v16 + 8))(v19, v15);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v24 = v20;
    sub_1AC30A9DC("AirPods 4 (ANC)", 15, 1);
    sub_1AC30A8AC();
    v3 = sub_1AC3097DC();
    v7 = sub_1AC215DE8(v19, v3);
    v8 = v4;
    (*(v16 + 8))(v19, v15);
    v11 = v7;
    v12 = v8;
  }

  return v11;
}

uint64_t B768FeatureContent.singularName.getter()
{
  v15 = 0;
  v7 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v11);
  v10 = &v5 - v6;
  v15 = v1;
  v14 = v1;
  sub_1AC30A9DC("AirPod", 6, 1, v0);
  sub_1AC30A8AC();
  v2 = sub_1AC3097DC();
  v12 = sub_1AC215DE8(v10, v2);
  v13 = v3;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t B768FeatureContent.platformName.getter()
{
  v15 = 0;
  v7 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v11);
  v10 = &v5 - v6;
  v15 = v1;
  v14 = v1;
  sub_1AC30A9DC("AirPods", 7, 1, v0);
  sub_1AC30A8AC();
  v2 = sub_1AC3097DC();
  v12 = sub_1AC215DE8(v10, v2);
  v13 = v3;
  (*(v8 + 8))(v10, v11);
  return v12;
}

void *sub_1AC29BDFC@<X0>(void *a1@<X8>)
{
  v60 = a1;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v19 = 0;
  v54 = sub_1AC30A90C();
  v28 = *(v54 - 8);
  v29 = v54 - 8;
  v15 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = &v14 - v15;
  v44 = sub_1AC30A8EC();
  v26 = *(v44 - 8);
  v27 = v44 - 8;
  v16 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v14 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v16);
  v41 = &v14 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v17);
  v47 = &v14 - v18;
  v67 = v1;

  v49 = sub_1AC3097DC();
  v22 = v66;
  v66[3] = v49;
  v66[4] = &protocol witness table for B768FeatureContent;
  v66[0] = v1;
  v21 = v49;
  v20 = &protocol witness table for B768FeatureContent;
  __swift_project_boxed_opaque_existential_1(v66, v49);
  v35 = (v20[1])(v21);
  v59 = v4;
  v64 = v35;
  v65 = v4;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = &v63;
  v63 = v30;
  v31 = 1;
  sub_1AC30A8DC();
  v32 = "Place ";
  v33 = 6;
  v36 = 1;
  sub_1AC30A9DC("Place ");
  v23 = v5;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC(" in both ears to use Adaptive Audio.", 36, v36 & 1);
  v25 = v6;
  sub_1AC30A8CC();

  v40 = v26[2];
  v39 = v26 + 2;
  v40(v41, v47, v44);
  v43 = v26[4];
  v42 = v26 + 4;
  v43(v48, v41, v44);
  v46 = v26[1];
  v45 = v26 + 1;
  v46(v47, v44);
  sub_1AC30A8FC();
  v50 = &off_1F20F75A0;
  v57 = sub_1AC215DE8(v53, v49);
  v58 = v7;
  v52 = *(v28 + 8);
  v51 = v28 + 8;
  v52(v53, v54);
  v37 = &v62;
  v62 = v30;
  sub_1AC30A8DC();
  sub_1AC30A9DC(v32, v33, v36 & 1);
  v34 = v8;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC(" in both ears to use Noise Cancellation.", 40, v36 & 1);
  v38 = v9;
  sub_1AC30A8CC();

  v40(v41, v47, v44);
  v43(v48, v41, v44);
  v46(v47, v44);
  sub_1AC30A8FC();
  v55 = sub_1AC215DE8(v53, v49);
  v56 = v10;
  v52(v53, v54);
  v11 = sub_1AC20DD78();
  v61 = &v68;
  sub_1AC236A90(v57, v58, v55, v56, v11, v12, &v68);

  return memcpy(v60, v61, 0x30uLL);
}

uint64_t sub_1AC29C4EC()
{
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v23 = 0;
  v41 = sub_1AC30A90C();
  v32 = *(v41 - 8);
  v33 = v41 - 8;
  v13 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v40 = &v13 - v13;
  v29 = sub_1AC30A8EC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v14 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v13 - v14;
  v15 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v14);
  v26 = &v13 - v15;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v15);
  v30 = &v13 - v16;
  v56 = v0;

  v36 = sub_1AC3097DC();
  v19 = v55;
  v55[3] = v36;
  v55[4] = &protocol witness table for B768FeatureContent;
  v55[0] = v0;
  v18 = v36;
  v17 = &protocol witness table for B768FeatureContent;
  __swift_project_boxed_opaque_existential_1(v55, v36);
  v22 = (v17[2])(v18);
  v46 = v3;
  v53 = v22;
  v54 = v3;
  __swift_destroy_boxed_opaque_existential_1(v19);
  v24 = &v52;
  v52 = v34;
  v20 = 15;
  sub_1AC30A8DC();
  v35 = 1;
  sub_1AC30A9DC("Press And Hold ", v20, 1);
  v21 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC("", v23, v35 & 1);
  v25 = v5;
  sub_1AC30A8CC();

  (*(v27 + 16))(v26, v30, v29);
  (*(v27 + 32))(v31, v26, v29);
  (*(v27 + 8))(v30, v29);
  sub_1AC30A8FC();
  v37 = &off_1F20F75A0;
  v42 = sub_1AC215DE8(v40, v36);
  v43 = v6;
  v39 = *(v32 + 8);
  v38 = v32 + 8;
  v39(v40, v41);
  v51 = v34;
  sub_1AC30A9DC("Press and hold the stem to cycle between the selected listening modes.", 70, v35 & 1);
  sub_1AC30A8AC();
  v44 = sub_1AC215DE8(v40, v36);
  v45 = v7;
  v39(v40, v41);
  nullsub_1();
  v47 = v8;
  v48 = v9;
  v49 = v10;
  v50 = v11;

  return v47;
}

uint64_t sub_1AC29CA10()
{
  v7 = v0;

  v5 = sub_1AC3097DC();
  v6 = &protocol witness table for B768FeatureContent;
  v4[0] = v0;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  off_1F20F75C0();
  nullsub_1();
  v3 = v1;
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v3;
}

_BYTE *sub_1AC29CAE8()
{
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v19 = 0;
  v49 = sub_1AC30A90C();
  v25 = *(v49 - 8);
  v26 = v49 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v48 = &v11 - v12;
  v38 = sub_1AC30A8EC();
  v23 = *(v38 - 8);
  v24 = v38 - 8;
  v13 = (v23[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v11 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v13);
  v35 = &v11 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v14);
  v41 = &v11 - v15;
  v62 = v0;

  v43 = sub_1AC3097DC();
  v18 = v61;
  v61[3] = v43;
  v61[4] = &protocol witness table for B768FeatureContent;
  v61[0] = v0;
  v17 = v43;
  v16 = &protocol witness table for B768FeatureContent;
  __swift_project_boxed_opaque_existential_1(v61, v43);
  v30 = (v16[3])(v17);
  v55 = v3;
  v59 = v30;
  v60 = v3;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v45 = type metadata accessor for SpatialFeatureContent();
  v21 = &v58;
  v58 = v27;
  v28 = 1;
  sub_1AC30A8DC();
  v54 = 1;
  sub_1AC30A9DC("Take ", 5, 1);
  v20 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC(" Out of Your Ears to Continue", 29, v54 & 1);
  v22 = v5;
  sub_1AC30A8CC();

  v34 = v23[2];
  v33 = v23 + 2;
  v34(v35, v41, v38);
  v37 = v23[4];
  v36 = v23 + 4;
  v37(v42, v35, v38);
  v40 = v23[1];
  v39 = v23 + 1;
  v40(v41, v38);
  sub_1AC30A8FC();
  v44 = &off_1F20F75A0;
  v50 = sub_1AC215DE8(v48, v43);
  v51 = v6;
  v47 = *(v25 + 8);
  v46 = v25 + 8;
  v47(v48, v49);
  v31 = &v57;
  v57 = v27;
  sub_1AC30A8DC();
  sub_1AC30A9DC("Place ", 6, v54 & 1);
  v29 = v7;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC(" in your ears to try spatial audio.", 35, v54 & 1);
  v32 = v8;
  sub_1AC30A8CC();

  v34(v35, v41, v38);
  v37(v42, v35, v38);
  v40(v41, v38);
  sub_1AC30A8FC();
  v52 = sub_1AC215DE8(v48, v43);
  v53 = v9;
  v47(v48, v49);
  v56 = SpatialFeatureContent.__allocating_init(removeString:putInEarString:forceFitTest:)(v50, v51, v52, v53, v54 & 1);

  return v56;
}

uint64_t sub_1AC29D12C@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while unwrapping an Optional value";
  v12 = "HeadphoneSettingsUI/B768FeatureProviding.swift";
  v30 = 0;
  v13 = sub_1AC30901C();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v8 - v16;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v19 = v8 - v18;
  v30 = v1;
  v20 = sub_1AC290274();
  v21 = &v29;
  swift_beginAccess();
  v27 = *v20;
  MEMORY[0x1E69E5928](v27);
  swift_endAccess();
  v23 = 1;
  sub_1AC30A9DC("B768_Translate", 14, 1);
  v22 = v3;
  v26 = sub_1AC30A91C();

  sub_1AC30A9DC("mov", 3, v23 & 1);
  v24 = v4;
  v25 = sub_1AC30A91C();

  v28 = [v27 URLForResource:v26 withExtension:v25];
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);
  v5 = MEMORY[0x1E69E5920](v27);
  if (v28)
  {
    v8[1] = v28;
    v8[0] = v28;
    sub_1AC308FFC();
    (*(v14 + 32))(v19, v17, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    v6 = MEMORY[0x1E69E5920](v8[0]);
  }

  else
  {
    (*(v14 + 56))(v19, 1, 1, v13, v5);
  }

  if ((*(v14 + 48))(v19, 1, v13, v6) == 1)
  {
    sub_1AC30B05C(v10, 11, 2, v11, 57, 2, v12, 46, 2, 137, 0);
    __break(1u);
  }

  return (*(v14 + 32))(v9, v19, v13);
}

void sub_1AC29D50C()
{
  v43[5] = 0;
  sub_1AC30B18C();
  v16 = v0;
  v43[3] = type metadata accessor for CounterfitDetectionFeature();
  v43[4] = &off_1F20F8128;
  v43[0] = sub_1AC2B095C();
  sub_1AC29F3A0(v43, v16);
  v14 = sub_1AC207218();
  v42[3] = type metadata accessor for LiveTranslationPlaceCardFeature();
  v42[4] = &off_1F20F97D0;
  v42[0] = v14;
  sub_1AC29F3A0(v42, v16 + 40);
  v41[3] = type metadata accessor for FirmwareSeedingFeature();
  v41[4] = &off_1F20FA548;
  v41[0] = sub_1AC2EDE18();
  sub_1AC29F3A0(v41, v16 + 80);
  v40[3] = type metadata accessor for TempPairingFeature();
  v40[4] = &off_1F20FA730;
  v40[0] = sub_1AC2F7130();
  sub_1AC29F3A0(v40, v16 + 120);
  v39[3] = &unk_1F20FA0B0;
  v39[4] = &off_1F20FA020;
  v39[0] = sub_1AC2E0244();
  v39[1] = v1;
  sub_1AC29F3A0(v39, v16 + 160);
  v38[3] = &unk_1F20F2C30;
  v38[4] = &off_1F20F2B18;
  v38[0] = sub_1AC2373A0();
  v38[1] = v2;
  sub_1AC29F3A0(v38, v16 + 200);
  v37[3] = &unk_1F20F9F68;
  v37[4] = &off_1F20F9E58;
  v37[0] = sub_1AC2DF418();
  v37[1] = v3;
  sub_1AC29F3A0(v37, v16 + 240);
  v36[3] = &unk_1F20F3D88;
  v36[4] = &off_1F20F3CF8;
  v36[0] = sub_1AC24FC24();
  v36[1] = v4;
  sub_1AC29F3A0(v36, v16 + 280);
  v35[3] = &unk_1F20F1DD8;
  v35[4] = &off_1F20F1D48;
  v35[0] = sub_1AC213D44();
  v35[1] = v5;
  sub_1AC29F3A0(v35, v16 + 320);
  v34[3] = type metadata accessor for AudioFeatureGroup();
  v34[4] = &off_1F20F9890;
  v34[0] = sub_1AC2D29B0();
  sub_1AC29F3A0(v34, v16 + 360);
  v33[3] = &unk_1F20F1948;
  v33[4] = &off_1F20F1830;
  v33[0] = sub_1AC206378();
  v33[1] = v6;
  sub_1AC29F3A0(v33, v16 + 400);
  v32[3] = &unk_1F20F82F0;
  v32[4] = &off_1F20F8260;
  v32[0] = sub_1AC2B47DC();
  v32[1] = v7;
  sub_1AC29F3A0(v32, v16 + 440);
  v15 = sub_1AC207244();
  v31[3] = type metadata accessor for LiveTranslationFeature();
  v31[4] = &off_1F20F9788;
  v31[0] = v15;
  sub_1AC29F3A0(v31, v16 + 480);
  v30[3] = &unk_1F20F74C8;
  v30[4] = &off_1F20F7438;
  v30[0] = sub_1AC299620();
  v30[1] = v8;
  sub_1AC29F3A0(v30, v16 + 520);
  v29[3] = type metadata accessor for SleepDetectionFeature();
  v29[4] = &off_1F20F2628;
  v29[0] = sub_1AC225F9C();
  sub_1AC29F3A0(v29, v16 + 560);
  v28[3] = &unk_1F20F4968;
  v28[4] = &off_1F20F48B8;
  v28[0] = sub_1AC25B2F0();
  v28[1] = v9;
  sub_1AC29F3A0(v28, v16 + 600);
  v26 = &type metadata for BatteryChargingFeature;
  v27 = &off_1F20F4658;
  sub_1AC2589D4(&v25);
  sub_1AC29F3A0(&v25, v16 + 640);
  v24[3] = type metadata accessor for CharginCaseSoundFeature();
  v24[4] = &off_1F20F6C90;
  v24[0] = sub_1AC28EB2C();
  sub_1AC29F3A0(v24, v16 + 680);
  v23[3] = &unk_1F20F33C8;
  v23[4] = &off_1F20F3330;
  v23[0] = sub_1AC246D88();
  v23[1] = v10;
  sub_1AC29F3A0(v23, v16 + 720);
  v22[3] = &unk_1F20F4EE8;
  v22[4] = &off_1F20F4E58;
  v22[0] = sub_1AC264F00();
  v22[1] = v11;
  sub_1AC29F3A0(v22, v16 + 760);
  v21[3] = &unk_1F20F9A10;
  v21[4] = &off_1F20F9980;
  v21[0] = sub_1AC2D6938();
  v21[1] = v12;
  sub_1AC29F3A0(v21, v16 + 800);
  v20[3] = type metadata accessor for AboutFeature();
  v20[4] = &off_1F20FA300;
  v20[0] = sub_1AC2E6C54();
  sub_1AC29F3A0(v20, v16 + 840);
  v19[3] = type metadata accessor for FirmwareUpdateFeature();
  v19[4] = &off_1F20F54A8;
  v19[0] = sub_1AC26C2F4();
  sub_1AC29F3A0(v19, v16 + 880);
  v18[3] = type metadata accessor for AppleCareCoverageFeature();
  v18[4] = &off_1F20F38B8;
  v18[0] = sub_1AC24D228();
  sub_1AC29F3A0(v18, v16 + 920);
  v17[3] = &unk_1F20F21D8;
  v17[4] = &off_1F20F2140;
  v17[0] = sub_1AC21E7B4();
  v17[1] = v13;
  sub_1AC29F3A0(v17, v16 + 960);
  sub_1AC206300();
}

uint64_t sub_1AC29DB88()
{
  result = sub_1AC30A9DC("com.apple.HeadphoneSettingsUI", 29, 1);
  qword_1EB553D50 = result;
  qword_1EB553D58 = v1;
  return result;
}

uint64_t *sub_1AC29DBCC()
{
  if (qword_1EB550CA8 != -1)
  {
    swift_once();
  }

  return &qword_1EB553D50;
}

uint64_t sub_1AC29DC2C()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553D60);
  __swift_project_value_buffer(v1, qword_1EB553D60);
  sub_1AC29DBCC();

  sub_1AC30A9DC("Features", 8, 1);
  return sub_1AC309E5C();
}

uint64_t sub_1AC29DCC0()
{
  if (qword_1EB550CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553D60);
}

uint64_t sub_1AC29DD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC29DCC0();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void sub_1AC29DE2C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v77 = a3;
  v85 = a2;
  v86 = a1;
  v81 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v104 = 0;
  v102 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v110 = a3;
  v78 = *(a3 - 8);
  v79 = v78;
  MEMORY[0x1EEE9AC00](a1);
  v80 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v6;
  v108 = v7;
  v107 = v4;
  v82 = sub_1AC29F420();
  v83 = v106;
  swift_beginAccess();
  v84 = *v82;

  swift_endAccess();
  v105 = v84;
  v8 = v86;
  v9 = v85;
  v92 = v86;
  v93 = v85;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C438, &qword_1AC311870);
  v87 = v88;
  v89 = sub_1AC29F654();
  v10 = sub_1AC30AA9C();
  v90 = 0;
  v91 = v10;
  v74 = v10;

  sub_1AC209190(&v105);
  v104 = v74;
  (*(v79 + 16))(v80, v75, v77);
  sub_1AC30984C();
  if (swift_dynamicCast())
  {

    v73 = 1;
  }

  else
  {
    v73 = 0;
  }

  if ((v73 & 1) == 0)
  {
    goto LABEL_10;
  }

  v72 = MobileGestalt_get_current_device();
  if (v72)
  {
    v71 = v72;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BaseFeature.swift", 37, 2, 130, 0);
    __break(1u);
  }

  v69 = v71;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (appleInternalInstallCapability)
  {
    v65 = 1;
    v63 = sub_1AC30A9DC("This accessory is in development stage and not all features are supported. Please file a radar to Connected Audio - Headphone Settings | iOS, if you are seeing unexpected behavior.", 180);
    v68 = v11;
    v95 = v63;
    v96 = v11;
    v66 = 0;
    sub_1AC21E88C();
    v61 = sub_1AC30A9DC("Accessory In Development", 24, v65);
    v62 = v12;

    v67 = sub_1AC21CFE0(v61, v62, v63, v68, v65);
    v94 = v67;
    sub_1AC21E8F0();
    v13 = sub_1AC30A9DC("OK", 2, v65);
    v64 = sub_1AC21E3FC(v13, v14, v66, v66, v66);
    [v67 addAction_];

    [v85 presentViewController:v67 animated:v65 completion:v66];
  }

  else
  {
LABEL_10:
    v103 = v74;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8, &unk_1AC314AA0);
    v59 = v60;
    sub_1AC29F6DC();
    if (sub_1AC30ACAC())
    {
      v58 = 0;
    }

    else
    {
      sub_1AC30A9DC("apple-internal-install", 22, 1);
      v56 = v15;
      v55 = sub_1AC30A91C();
      v57 = MGGetBoolAnswer();

      v58 = v57;
    }

    if (v58)
    {
      v100 = v74;
      v49 = 2;
      v51 = 1;
      v44 = sub_1AC30A9DC(", ");
      v45 = v16;
      sub_1AC2A1944();
      v48 = sub_1AC30A88C();
      v54 = v17;

      v98 = v48;
      v99 = v54;
      v52 = 0;
      sub_1AC21E88C();
      v46 = sub_1AC30A9DC("Missing Features Please File Radar", 34, v51);
      v47 = v18;

      v53 = sub_1AC21CFE0(v46, v47, v48, v54, v51);
      v97 = v53;
      sub_1AC21E8F0();
      v19 = sub_1AC30A9DC("OK", v49, v51);
      v50 = sub_1AC21E3FC(v19, v20, v52, v52, v52);
      [v53 addAction_];

      [v85 presentViewController:v53 animated:v51 completion:v52];
    }
  }

  v21 = v90;
  v39 = (*(v76 + 8))(v77);
  v38 = v39;
  v102 = v39;

  v101[1] = v39;
  v22 = v86;
  v23 = v85;
  v40 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v41 = &v29;
  v30 = v86;
  v31 = v24;
  sub_1AC2A0CBC();
  v25 = sub_1AC30AFDC();
  v42 = v21;
  v43 = v25;
  if (v21)
  {

    __break(1u);
    __break(1u);
  }

  else
  {
    v33 = v43;

    v101[0] = v33;
    v26 = v86;
    v27 = v85;
    v34 = v32;
    MEMORY[0x1EEE9AC00](v32);
    v35 = &v29;
    v30 = v86;
    v31 = v28;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC24D54C();
    v37 = sub_1AC30AA8C();
    v32[1] = v37;

    sub_1AC209190(v101);
  }
}

void *sub_1AC29E948@<X0>(void *a2@<X8>)
{
  v12 = v2;
  sub_1AC30929C(v6);
  if (v6[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C908, &qword_1AC313910);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    sub_1AC204664(v6);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  if (v10)
  {
    return sub_1AC2051E4(&v7, a2);
  }

  v4 = type metadata accessor for AllDeviceFeaturesContainer();
  result = sub_1AC250184();
  a2[3] = v4;
  a2[4] = &off_1F20F7828;
  *a2 = result;
  if (v10)
  {
    return sub_1AC204664(&v7);
  }

  return result;
}

uint64_t sub_1AC29EA88()
{
  result = sub_1AC30A9DC("hasSeenInternalMissingFeaturesError", 35, 1);
  qword_1EB550CC0 = result;
  qword_1EB550CC8 = v1;
  return result;
}

uint64_t *sub_1AC29EACC()
{
  if (qword_1EB550CB8 != -1)
  {
    swift_once();
  }

  return &qword_1EB550CC0;
}

uint64_t sub_1AC29EB2C()
{
  v1 = *sub_1AC29EACC();

  return v1;
}

BOOL sub_1AC29EB68()
{
  sub_1AC29EACC();

  key = sub_1AC30A91C();
  sub_1AC29DBCC();

  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  return AppBooleanValue != 0;
}

uint64_t sub_1AC29EC34(char a1)
{
  sub_1AC29EACC();

  v6 = sub_1AC30A91C();
  v5 = sub_1AC30AB8C();
  sub_1AC29DBCC();

  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v6, v5, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v6);
}

void sub_1AC29ED90()
{
  sub_1AC30B18C();
  v18 = v0;
  v42[3] = &unk_1F20F1F68;
  v42[4] = &off_1F20F1E20;
  v42[0] = sub_1AC217F0C();
  v42[1] = v1;
  sub_1AC29F3A0(v42, v18);
  v41[3] = type metadata accessor for FirmwareSeedingFeature();
  v41[4] = &off_1F20FA548;
  v41[0] = sub_1AC2EDE18();
  sub_1AC29F3A0(v41, v18 + 40);
  v40[3] = &unk_1F20FA0B0;
  v40[4] = &off_1F20FA020;
  v40[0] = sub_1AC2E0244();
  v40[1] = v2;
  sub_1AC29F3A0(v40, v18 + 80);
  v39[3] = &unk_1F20F2C30;
  v39[4] = &off_1F20F2B18;
  v39[0] = sub_1AC2373A0();
  v39[1] = v3;
  sub_1AC29F3A0(v39, v18 + 120);
  v38[3] = type metadata accessor for YodelFeature();
  v38[4] = &off_1F20F2AC0;
  v38[0] = sub_1AC23624C();
  sub_1AC29F3A0(v38, v18 + 160);
  v37[3] = &unk_1F20F9F68;
  v37[4] = &off_1F20F9E58;
  v37[0] = sub_1AC2DF418();
  v37[1] = v4;
  sub_1AC29F3A0(v37, v18 + 200);
  v36[3] = &unk_1F20F3D88;
  v36[4] = &off_1F20F3CF8;
  v36[0] = sub_1AC24FC24();
  v36[1] = v5;
  sub_1AC29F3A0(v36, v18 + 240);
  v35[3] = &unk_1F20F1DD8;
  v35[4] = &off_1F20F1D48;
  v35[0] = sub_1AC213D44();
  v35[1] = v6;
  sub_1AC29F3A0(v35, v18 + 280);
  v34[3] = type metadata accessor for AudioFeatureGroup();
  v34[4] = &off_1F20F9890;
  v34[0] = sub_1AC2D29B0();
  sub_1AC29F3A0(v34, v18 + 320);
  v33[3] = &unk_1F20F1948;
  v33[4] = &off_1F20F1830;
  v33[0] = sub_1AC206378();
  v33[1] = v7;
  sub_1AC29F3A0(v33, v18 + 360);
  v32[3] = &unk_1F20F82F0;
  v32[4] = &off_1F20F8260;
  v32[0] = sub_1AC2B47DC();
  v32[1] = v8;
  sub_1AC29F3A0(v32, v18 + 400);
  v17 = sub_1AC207244();
  v31[3] = type metadata accessor for LiveTranslationFeature();
  v31[4] = &off_1F20F9788;
  v31[0] = v17;
  sub_1AC29F3A0(v31, v18 + 440);
  v30[3] = &unk_1F20F74C8;
  v30[4] = &off_1F20F7438;
  v30[0] = sub_1AC299620();
  v30[1] = v9;
  sub_1AC29F3A0(v30, v18 + 480);
  v29[3] = &unk_1F20F4968;
  v29[4] = &off_1F20F48B8;
  v29[0] = sub_1AC25B2F0();
  v29[1] = v10;
  sub_1AC29F3A0(v29, v18 + 520);
  v28[3] = type metadata accessor for CharginCaseSoundFeature();
  v28[4] = &off_1F20F6C90;
  v28[0] = sub_1AC28EB2C();
  sub_1AC29F3A0(v28, v18 + 560);
  v27[3] = &unk_1F20F6FA0;
  v27[4] = &off_1F20F6F10;
  v27[0] = sub_1AC2972AC();
  v27[1] = v11;
  sub_1AC29F3A0(v27, v18 + 600);
  v26[3] = &unk_1F20F33C8;
  v26[4] = &off_1F20F3330;
  v26[0] = sub_1AC246D88();
  v26[1] = v12;
  sub_1AC29F3A0(v26, v18 + 640);
  v25[3] = &unk_1F20F4EE8;
  v25[4] = &off_1F20F4E58;
  v25[0] = sub_1AC264F00();
  v25[1] = v13;
  sub_1AC29F3A0(v25, v18 + 680);
  v24[3] = type metadata accessor for FitFeatureGroup();
  v24[4] = &off_1F20F6E70;
  v24[0] = sub_1AC291544();
  sub_1AC29F3A0(v24, v18 + 720);
  v23[3] = &unk_1F20F9A10;
  v23[4] = &off_1F20F9980;
  v23[0] = sub_1AC2D6938();
  v23[1] = v14;
  sub_1AC29F3A0(v23, v18 + 760);
  v22[3] = &unk_1F20F5818;
  v22[4] = &off_1F20F5788;
  v22[0] = sub_1AC270E44();
  v22[1] = v15;
  sub_1AC29F3A0(v22, v18 + 800);
  v21[3] = type metadata accessor for AboutFeature();
  v21[4] = &off_1F20FA300;
  v21[0] = sub_1AC2E6C54();
  sub_1AC29F3A0(v21, v18 + 840);
  v20[3] = type metadata accessor for AppleCareCoverageFeature();
  v20[4] = &off_1F20F38B8;
  v20[0] = sub_1AC24D228();
  sub_1AC29F3A0(v20, v18 + 880);
  v19[3] = &unk_1F20F21D8;
  v19[4] = &off_1F20F2140;
  v19[0] = sub_1AC21E7B4();
  v19[1] = v16;
  sub_1AC29F3A0(v19, v18 + 920);
  sub_1AC206300();
}

void sub_1AC29F3A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v5 = a1;
  sub_1AC241BFC(a1, v4);
  sub_1AC2051E4(v4, __b);
  sub_1AC241BFC(__b, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1AC2A19F4(__b);
}

uint64_t *sub_1AC29F420()
{
  if (qword_1EB550CD0 != -1)
  {
    swift_once();
  }

  return &qword_1EB550CD8;
}

uint64_t sub_1AC29F480()
{
  v1 = sub_1AC29F420();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC29F4D8(uint64_t a1)
{
  v2 = sub_1AC29F420();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t sub_1AC29F54C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>)
{
  result = sub_1AC29F764(a2, a3);
  if ((result & 0x100) != 0)
  {
    v5 = result ^ 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    result = sub_1AC29F834();
    *a1 = result;
    a1[1] = v4;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

unint64_t sub_1AC29F654()
{
  v2 = qword_1EB54C8E0;
  if (!qword_1EB54C8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C438, &qword_1AC311870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC29F6DC()
{
  v2 = qword_1EB54C8F0;
  if (!qword_1EB54C8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C8E8, &unk_1AC314AA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC29F764(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  sub_1AC241BFC(v2, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v6 + 16))(a1, a2, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v8;
}

uint64_t sub_1AC29F834()
{
  v8 = v0;
  sub_1AC241BFC(v0, v5);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4 = (*(v2 + 8))(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v4;
}

uint64_t sub_1AC29F8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v140 = a1;
  v139 = a2;
  v138 = a3;
  v118 = sub_1AC2A2284;
  v119 = sub_1AC215C98;
  v120 = sub_1AC2A2294;
  v121 = sub_1AC215C98;
  v122 = sub_1AC2A22A0;
  v123 = sub_1AC215C98;
  v124 = sub_1AC2A22C0;
  v125 = sub_1AC215C98;
  v126 = sub_1AC215C90;
  v127 = sub_1AC215C90;
  v128 = sub_1AC215CA4;
  v129 = sub_1AC215C90;
  v130 = sub_1AC215C90;
  v131 = sub_1AC215CA4;
  v132 = sub_1AC215C90;
  v133 = sub_1AC215C90;
  v134 = sub_1AC215CA4;
  v135 = sub_1AC215C90;
  v136 = sub_1AC215C90;
  v137 = sub_1AC215CA4;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v157 = 0;
  v155 = 0;
  v154 = 0;
  v141 = sub_1AC309E6C();
  v142 = *(v141 - 8);
  v143 = v141 - 8;
  v144 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v140);
  v145 = &v56 - v144;
  v162 = v3;
  v161 = v4;
  v160 = v5;
  v146 = v159;
  sub_1AC241BFC(v3, v159);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C910, &qword_1AC313B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C918, &qword_1AC313B98);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v158);
    v116 = 1;
  }

  else
  {
    v116 = 0;
  }

  v113 = v116;
  v157 = v116 & 1;
  v156 = sub_1AC29F764(v139, v138);
  v114 = v156;
  v115 = HIBYTE(v156);
  v155 = v156;
  if (sub_1AC3091AC())
  {
    v112 = 1;
  }

  else
  {
    v112 = v113;
  }

  if (v112)
  {
    v111 = v115;
  }

  else
  {
    v111 = 0;
  }

  v6 = v145;
  v80 = v111;
  v79 = 1;
  v154 = v111 & 1;
  v7 = sub_1AC29DCC0();
  (*(v142 + 16))(v6, v7, v141);
  v78 = v153;
  sub_1AC241BFC(v140, v153);
  v91 = 7;
  v81 = swift_allocObject();
  memcpy((v81 + 16), v78, 0x28uLL);
  v88 = 17;
  v83 = swift_allocObject();
  *(v83 + 16) = v80 & v79;
  v8 = swift_allocObject();
  v9 = v115;
  v10 = v8;
  v11 = v139;
  v85 = v10;
  *(v10 + 16) = v114;
  *(v10 + 17) = v9;
  MEMORY[0x1E69E5928](v11);
  v92 = swift_allocObject();
  *(v92 + 16) = v139;
  v109 = sub_1AC309E4C();
  v110 = sub_1AC30AD2C();
  v94 = swift_allocObject();
  v87 = 32;
  *(v94 + 16) = 32;
  v95 = swift_allocObject();
  v89 = 8;
  *(v95 + 16) = 8;
  v90 = 32;
  v12 = swift_allocObject();
  v13 = v81;
  v82 = v12;
  *(v12 + 16) = v118;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v82;
  v96 = v14;
  *(v14 + 16) = v119;
  *(v14 + 24) = v15;
  v97 = swift_allocObject();
  *(v97 + 16) = v87;
  v98 = swift_allocObject();
  *(v98 + 16) = v89;
  v16 = swift_allocObject();
  v17 = v83;
  v84 = v16;
  *(v16 + 16) = v120;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v84;
  v99 = v18;
  *(v18 + 16) = v121;
  *(v18 + 24) = v19;
  v100 = swift_allocObject();
  *(v100 + 16) = v87;
  v101 = swift_allocObject();
  *(v101 + 16) = v89;
  v20 = swift_allocObject();
  v21 = v85;
  v86 = v20;
  *(v20 + 16) = v122;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v86;
  v102 = v22;
  *(v22 + 16) = v123;
  *(v22 + 24) = v23;
  v103 = swift_allocObject();
  *(v103 + 16) = v87;
  v104 = swift_allocObject();
  *(v104 + 16) = v89;
  v24 = swift_allocObject();
  v25 = v92;
  v93 = v24;
  *(v24 + 16) = v124;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v93;
  v106 = v26;
  *(v26 + 16) = v125;
  *(v26 + 24) = v27;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v105 = sub_1AC30B18C();
  v107 = v28;

  v29 = v94;
  v30 = v107;
  *v107 = v126;
  v30[1] = v29;

  v31 = v95;
  v32 = v107;
  v107[2] = v127;
  v32[3] = v31;

  v33 = v96;
  v34 = v107;
  v107[4] = v128;
  v34[5] = v33;

  v35 = v97;
  v36 = v107;
  v107[6] = v129;
  v36[7] = v35;

  v37 = v98;
  v38 = v107;
  v107[8] = v130;
  v38[9] = v37;

  v39 = v99;
  v40 = v107;
  v107[10] = v131;
  v40[11] = v39;

  v41 = v100;
  v42 = v107;
  v107[12] = v132;
  v42[13] = v41;

  v43 = v101;
  v44 = v107;
  v107[14] = v133;
  v44[15] = v43;

  v45 = v102;
  v46 = v107;
  v107[16] = v134;
  v46[17] = v45;

  v47 = v103;
  v48 = v107;
  v107[18] = v135;
  v48[19] = v47;

  v49 = v104;
  v50 = v107;
  v107[20] = v136;
  v50[21] = v49;

  v51 = v106;
  v52 = v107;
  v107[22] = v137;
  v52[23] = v51;
  sub_1AC206300();

  if (os_log_type_enabled(v109, v110))
  {
    v71 = sub_1AC30AE6C();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v72 = sub_1AC213EE4(0, v70, v70);
    v73 = sub_1AC213EE4(4, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v74 = &v152;
    v152 = v71;
    v75 = &v151;
    v151 = v72;
    v76 = &v150;
    v150 = v73;
    sub_1AC213F38(2, &v152);
    sub_1AC213F38(4, v74);
    v53 = v117;
    v148 = v126;
    v149 = v94;
    sub_1AC213F4C(&v148, v74, v75, v76);
    v77 = v53;
    if (v53)
    {

      __break(1u);
    }

    else
    {
      v148 = v127;
      v149 = v95;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v68 = 0;
      v148 = v128;
      v149 = v96;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v67 = 0;
      v148 = v129;
      v149 = v97;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v66 = 0;
      v148 = v130;
      v149 = v98;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v65 = 0;
      v148 = v131;
      v149 = v99;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v64 = 0;
      v148 = v132;
      v149 = v100;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v63 = 0;
      v148 = v133;
      v149 = v101;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v62 = 0;
      v148 = v134;
      v149 = v102;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v61 = 0;
      v148 = v135;
      v149 = v103;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v60 = 0;
      v148 = v136;
      v149 = v104;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v59 = 0;
      v148 = v137;
      v149 = v106;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v58 = 0;
      _os_log_impl(&dword_1AC1C3000, v109, v110, "Feature: %s supported: %s hasContent: %s offline: %s", v71, 0x2Au);
      sub_1AC213F98(v72, 0, v70);
      sub_1AC213F98(v73, 4, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v69 = v58;
    }
  }

  else
  {

    v69 = v117;
  }

  v57 = v69;
  v54 = MEMORY[0x1E69E5920](v109);
  (*(v142 + 8))(v145, v141, v54);
  if (v80)
  {
    HIDWORD(v56) = v114;
  }

  else
  {
    HIDWORD(v56) = 0;
  }

  return BYTE4(v56) & 1;
}

unint64_t sub_1AC2A0CBC()
{
  v2 = qword_1EB54C8F8;
  if (!qword_1EB54C8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C438, &qword_1AC311870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C8F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2A0D68(char a1)
{
  if (a1)
  {
    return sub_1AC30A9DC("true", 4, 1);
  }

  else
  {
    return sub_1AC30A9DC("false", 5, 1);
  }
}

uint64_t sub_1AC2A0DE4(char a1)
{
  if (a1)
  {
    return sub_1AC30A9DC("true", 4, 1);
  }

  else
  {
    return sub_1AC30A9DC("false", 5, 1);
  }
}

uint64_t sub_1AC2A0E68()
{
  if (sub_1AC3091AC())
  {
    return sub_1AC30A9DC("true", 4, 1);
  }

  else
  {
    return sub_1AC30A9DC("false", 5, 1);
  }
}

uint64_t sub_1AC2A0EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50 = a4;
  v59 = a1;
  v53 = a2;
  v52 = a3;
  v62 = sub_1AC2A2284;
  v64 = sub_1AC215C98;
  v68 = sub_1AC2A228C;
  v72 = sub_1AC2572B0;
  v74 = sub_1AC215C90;
  v76 = sub_1AC215C90;
  v78 = sub_1AC215CA4;
  v80 = sub_1AC215C90;
  v82 = sub_1AC215C90;
  v85 = sub_1AC2572BC;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v58 = sub_1AC309E6C();
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v54 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v34 - v54;
  v100 = a1;
  v99 = v5;
  v98 = v6;
  v7 = sub_1AC2A1A1C(v5, v6);
  v8 = v55;
  v61 = v7;
  v97 = v7;
  v9 = sub_1AC29DCC0();
  (*(v56 + 16))(v8, v9, v58);
  v60 = v96;
  sub_1AC241BFC(v59, v96);
  v70 = 7;
  v63 = swift_allocObject();
  memcpy((v63 + 16), v60, 0x28uLL);

  v71 = swift_allocObject();
  *(v71 + 16) = v61;
  v89 = sub_1AC309E4C();
  v90 = sub_1AC30AD2C();
  v66 = 17;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  v67 = 8;
  *(v77 + 16) = 8;
  v69 = 32;
  v10 = swift_allocObject();
  v11 = v63;
  v65 = v10;
  *(v10 + 16) = v62;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v65;
  v79 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v67;
  v14 = swift_allocObject();
  v15 = v71;
  v73 = v14;
  *(v14 + 16) = v68;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v73;
  v86 = v16;
  *(v16 + 16) = v72;
  *(v16 + 24) = v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v84 = sub_1AC30B18C();
  v87 = v18;

  v19 = v75;
  v20 = v87;
  *v87 = v74;
  v20[1] = v19;

  v21 = v77;
  v22 = v87;
  v87[2] = v76;
  v22[3] = v21;

  v23 = v79;
  v24 = v87;
  v87[4] = v78;
  v24[5] = v23;

  v25 = v81;
  v26 = v87;
  v87[6] = v80;
  v26[7] = v25;

  v27 = v83;
  v28 = v87;
  v87[8] = v82;
  v28[9] = v27;

  v29 = v86;
  v30 = v87;
  v87[10] = v85;
  v30[11] = v29;
  sub_1AC206300();

  if (os_log_type_enabled(v89, v90))
  {
    v42 = sub_1AC30AE6C();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v43 = sub_1AC213EE4(0, v41, v41);
    v44 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v46 = &v95;
    v95 = v42;
    v47 = &v94;
    v94 = v43;
    v48 = &v93;
    v93 = v44;
    v45 = 2;
    sub_1AC213F38(2, &v95);
    sub_1AC213F38(v45, v46);
    v31 = v51;
    v91 = v74;
    v92 = v75;
    sub_1AC213F4C(&v91, v46, v47, v48);
    v49 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v91 = v76;
      v92 = v77;
      sub_1AC213F4C(&v91, &v95, &v94, &v93);
      v39 = 0;
      v91 = v78;
      v92 = v79;
      sub_1AC213F4C(&v91, &v95, &v94, &v93);
      v38 = 0;
      v91 = v80;
      v92 = v81;
      sub_1AC213F4C(&v91, &v95, &v94, &v93);
      v37 = 0;
      v91 = v82;
      v92 = v83;
      sub_1AC213F4C(&v91, &v95, &v94, &v93);
      v36 = 0;
      v91 = v85;
      v92 = v86;
      sub_1AC213F4C(&v91, &v95, &v94, &v93);
      v35 = 0;
      _os_log_impl(&dword_1AC1C3000, v89, v90, "Feature: %s specifiers: %ld", v42, 0x16u);
      sub_1AC213F98(v43, 0, v41);
      sub_1AC213F98(v44, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v40 = v35;
    }
  }

  else
  {

    v40 = v51;
  }

  v34 = v40;
  v32 = MEMORY[0x1E69E5920](v89);
  (*(v56 + 8))(v55, v58, v32);

  *v50 = v61;
}

unint64_t sub_1AC2A1944()
{
  v2 = qword_1EB54C900;
  if (!qword_1EB54C900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C8E8, &unk_1AC314AA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2A1A1C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  sub_1AC241BFC(v2, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v6 + 24))(a1, a2, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v8;
}

uint64_t sub_1AC2A1D64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
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

uint64_t sub_1AC2A1E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC2A22E0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for FitVideoTipSection(0) + 20);
  v2 = sub_1AC30901C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for FitVideoTipSection(uint64_t a1)
{
  v2 = qword_1EB550F70;
  if (!qword_1EB550F70)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1AC2A23CC(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1AC30901C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = type metadata accessor for FitVideoTipSection(v7);
  (*(v9 + 40))(v1 + *(v3 + 20), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1AC2A253C()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection(0) + 24));

  return v2;
}

uint64_t sub_1AC2A2584(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for FitVideoTipSection(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC2A2630()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection(0) + 28));

  return v2;
}

uint64_t sub_1AC2A2678(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for FitVideoTipSection(0) + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC2A2724()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection(0) + 32));

  return v2;
}

uint64_t sub_1AC2A276C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for FitVideoTipSection(0) + 32));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC2A2818()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection(0) + 36));
  sub_1AC2A2860(v2);
  return v2;
}

uint64_t sub_1AC2A2860(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC2A2894(uint64_t a1, uint64_t a2)
{
  sub_1AC2A2860(a1);
  v3 = (v2 + *(type metadata accessor for FitVideoTipSection(0) + 36));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  sub_1AC238B8C(v4);
  return sub_1AC238B8C(a1);
}

uint64_t sub_1AC2A2944()
{
  v2 = *(v0 + *(type metadata accessor for FitVideoTipSection(0) + 40));

  return v2;
}

uint64_t sub_1AC2A297C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for FitVideoTipSection(0) + 40)) = a1;
}

uint64_t sub_1AC2A2A18@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v103 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C920, &qword_1AC313BB0);
  v37 = *(v36 - 8);
  v38 = v37;
  v40 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v16 - v42;
  MEMORY[0x1EEE9AC00](&v16 - v42);
  v41 = &v16 - v42;
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v16 - v42;
  v126 = &v16 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C928, &qword_1AC313BB8);
  v46 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = &v16 - v48;
  MEMORY[0x1EEE9AC00](&v16 - v48);
  v47 = &v16 - v48;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v16 - v48;
  v125 = &v16 - v48;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C930, &qword_1AC313BC0);
  v50 = v100;
  v51 = *(v100 - 8);
  v98 = v51;
  v52 = v51;
  v53 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v100 - 8);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v99 = &v16 - v55;
  v54 = &v16 - v55;
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v16 - v55;
  v56 = &v16 - v55;
  v124 = &v16 - v55;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C938, &qword_1AC313BC8);
  v57 = *(v77 - 8);
  v74 = v57;
  v58 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77 - 8);
  v75 = &v16 - v58;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C940, &qword_1AC313BD0);
  v59 = *(v81 - 8);
  v79 = v59;
  v60 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81 - 8);
  v80 = &v16 - v60;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C948, &qword_1AC313BD8);
  v61 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85 - 8);
  v84 = &v16 - v61;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C950, &qword_1AC313BE0);
  v62 = v92;
  v63 = *(v92 - 8);
  v90 = v63;
  v64 = v63;
  v65 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = &v16 - v67;
  v66 = &v16 - v67;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v16 - v67;
  v68 = &v16 - v67;
  v123 = &v16 - v67;
  v122 = v1;
  v109 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C958, &qword_1AC313BE8);
  sub_1AC2A3F48();
  sub_1AC30A74C();
  v82 = 2;
  v71 = sub_1AC30B18C();
  v70 = v6;
  *v6 = sub_1AC30A36C();
  v70[1] = sub_1AC30A37C();
  sub_1AC206300();
  v72 = v7;
  sub_1AC2A4B00();
  sub_1AC30AF2C();
  v73 = v121;
  v78 = sub_1AC2A4B78();
  v76 = 0;
  sub_1AC30A4EC();
  (*(v74 + 8))(v75, v77);
  sub_1AC30A77C();
  v120 = v76;
  v119[5] = v77;
  v119[6] = v78;
  v86 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1AC30A55C();
  (*(v79 + 8))(v80, v81);
  v87 = sub_1AC2A4C94();
  sub_1AC2A4C70();
  sub_1AC30A53C();
  v8 = v83;
  sub_1AC1CD0D8(v84);
  v119[3] = v85;
  v119[4] = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v91, v92, v88);
  v93 = *(v90 + 8);
  v94 = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v93(v91, v92);
  v108 = v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C990, &qword_1AC313BF8);
  sub_1AC2A51A0();
  sub_1AC30A74C();
  v97 = sub_1AC2A53DC();
  sub_1AC207B58(v99, v100, v96);
  v101 = *(v98 + 8);
  v102 = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v101(v99, v100);
  v104 = type metadata accessor for FitVideoTipSection(v103);
  v9 = (v8 + *(v104 + 32));
  v105 = *v9;
  v107 = v9[1];
  v106 = v107;

  if (!v107)
  {
    goto LABEL_7;
  }

  v33 = v105;
  v34 = v106;
  v28 = v106;
  v29 = v105;
  v113 = v105;
  v114 = v106;
  v10 = (v83 + *(v104 + 36));
  v32 = *v10;
  v30 = v32;
  v31 = v10[1];
  sub_1AC2A2860(v32);
  if (!v32)
  {

LABEL_7:
    (*(v38 + 56))(v45, 1, 1, v36);
    sub_1AC2A5488();
    sub_1AC2A4C24(v45, v36, v47);
    sub_1AC2A55BC(v45);
    sub_1AC2A5670(v47, v49);
    goto LABEL_8;
  }

  v26 = v30;
  v27 = v31;
  v22 = v31;
  v18 = v30;
  v111 = v30;
  v112 = v31;

  v21 = &v16;
  MEMORY[0x1EEE9AC00](&v16);
  v11 = v18;
  v12 = v28;
  v19 = &v16 - 6;
  *(&v16 - 4) = v13;
  *(&v16 - 3) = v12;
  *(&v16 - 2) = v11;
  *(&v16 - 1) = v14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9D0, &qword_1AC313C08);
  sub_1AC2A5534();
  sub_1AC30A74C();

  v23 = sub_1AC2A5488();
  sub_1AC207B58(v41, v36, v43);
  v24 = *(v38 + 8);
  v25 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v41, v36);
  v110 = v41;
  v17 = *(v38 + 16);
  v16 = v38 + 16;
  v17(v39, v43, v36);
  sub_1AC207B58(v39, v36, v41);
  v24(v39, v36);
  v17(v45, v41, v36);
  (*(v38 + 56))(v45, 0, 1, v36);
  sub_1AC2A4C24(v45, v36, v47);
  sub_1AC2A55BC(v45);
  sub_1AC2A5670(v47, v49);
  v24(v41, v36);
  v24(v43, v36);

LABEL_8:
  (*(v64 + 16))(v66, v68, v62);
  v119[0] = v66;
  (*(v52 + 16))(v54, v56, v50);
  v119[1] = v54;
  sub_1AC2A57A4(v49, v47);
  v119[2] = v47;
  v118[0] = v62;
  v118[1] = v50;
  v118[2] = v44;
  v115 = OpaqueTypeConformance2;
  v116 = v97;
  v117 = sub_1AC2A58D8();
  sub_1AC23A49C(v119, 3uLL, v118, v35);
  sub_1AC2A55BC(v47);
  v101(v54, v50);
  v93(v66, v62);
  sub_1AC2A55BC(v49);
  v101(v56, v50);
  return (v93)(v68, v62);
}

uint64_t sub_1AC2A3664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = &v103;
  v68 = a1;
  v43 = a2;
  v66 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v76 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB30, &qword_1AC314260);
  v45 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v16 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB38, &qword_1AC314268);
  v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v16 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB40, &qword_1AC314270);
  v51 = *(v50 - 8);
  v52 = v51;
  v54 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = &v16 - v56;
  MEMORY[0x1EEE9AC00](&v16 - v56);
  v55 = &v16 - v56;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v16 - v56;
  v108 = &v16 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB48, &qword_1AC314278);
  v60 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = &v16 - v62;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v16 - v62;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v16 - v62;
  v107 = &v16 - v62;
  v106 = v5;
  v65 = sub_1AC30A22C();
  v75 = v68;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB50, &unk_1AC314280);
  sub_1AC2AE84C();
  sub_1AC30A70C();
  v110 = v98;
  v109 = v97;
  v114 = v102;
  v113 = v101;
  v112 = v100;
  v111 = v99;
  v95[1] = v98;
  v95[0] = v97;
  v96 = v102;
  v95[4] = v101;
  v95[3] = v100;
  v95[2] = v99;
  v67 = sub_1AC30A37C();
  v69 = type metadata accessor for FitVideoTipSection(v66);
  v73 = *(v68 + *(v69 + 40));

  v94 = v73;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8, &unk_1AC314AA0);
  v70 = v71;
  v72 = sub_1AC29F6DC();
  v74 = sub_1AC30ACAC();

  if (v74)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0x4034000000000000;
  }

  v41 = 0;
  v30 = 0;
  v31 = v40;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB60, &qword_1AC314290);
  sub_1AC2AE8D4();
  v33 = v95;
  sub_1AC30A5CC();
  sub_1AC2AE95C(v33);
  v85 = *v42;
  v6 = v42[1];
  v7 = v42[2];
  v8 = v42[3];
  v89 = v42[4];
  v88 = v8;
  v87 = v7;
  v86 = v6;
  v9 = v42[5];
  v10 = v42[6];
  v11 = v42[7];
  v93 = v104;
  v92 = v11;
  v91 = v10;
  v90 = v9;
  v83[0] = v85;
  v83[4] = v89;
  v83[3] = v88;
  v83[2] = v87;
  v83[1] = v86;
  v84 = v104;
  v83[7] = v11;
  v83[6] = v10;
  v83[5] = v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB70, &qword_1AC314298);
  v34 = v35;
  v36 = sub_1AC2AE9C8();
  v37 = v83;
  sub_1AC207B58(v83, v35, v105);
  sub_1AC2AE95C(v37);
  v38 = *(v68 + *(v69 + 40));

  v82[2] = v38;
  v39 = sub_1AC30ACAC();

  if (v39)
  {
    (*(v52 + 56))(v59, 1, 1, v50);
    sub_1AC2AEA6C();
    sub_1AC2A4C24(v59, v50, v61);
    sub_1AC2AEC3C(v59);
    sub_1AC2AED1C(v61, v63);
  }

  else
  {
    v21 = sub_1AC30A22C();
    v22 = &v16;
    MEMORY[0x1EEE9AC00](&v16);
    v19 = &v16 - 4;
    *(&v16 - 2) = v12;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0, &qword_1AC3142A8);
    sub_1AC2AF2D0();
    v27 = 0;
    sub_1AC30A70C();
    v24 = sub_1AC30B18C();
    v23 = v13;
    *v13 = sub_1AC30A36C();
    v23[1] = sub_1AC30A38C();
    v23[2] = sub_1AC30A39C();
    sub_1AC206300();
    v25 = v14;
    sub_1AC2A4B00();
    sub_1AC30AF2C();
    v26 = v77;
    sub_1AC2AEBB4();
    sub_1AC30A5CC();
    sub_1AC2AF3E8(v46);
    v28 = sub_1AC30A37C();
    sub_1AC2AEB10();
    sub_1AC30A5CC();
    sub_1AC2AF3E8(v49);
    v29 = sub_1AC2AEA6C();
    sub_1AC207B58(v55, v50, v57);
    sub_1AC2AF3E8(v55);
    v76 = v55;
    sub_1AC2AF474(v57, v53);
    sub_1AC207B58(v53, v50, v55);
    sub_1AC2AF3E8(v53);
    sub_1AC2AF474(v55, v59);
    (*(v52 + 56))(v59, 0, 1, v50);
    sub_1AC2A4C24(v59, v50, v61);
    sub_1AC2AEC3C(v59);
    sub_1AC2AED1C(v61, v63);
    sub_1AC2AF3E8(v55);
    sub_1AC2AF3E8(v57);
  }

  v18 = v105;
  v17 = v81;
  sub_1AC2AEF14(v105, v81);
  v82[0] = v17;
  sub_1AC2AF038(v63, v61);
  v82[1] = v61;
  v80[0] = v34;
  v80[1] = v58;
  v78 = v36;
  v79 = sub_1AC2AF230();
  sub_1AC23A49C(v82, 2uLL, v80, v43);
  sub_1AC2AEC3C(v61);
  sub_1AC2AE95C(v17);
  sub_1AC2AEC3C(v63);
  return sub_1AC2AE95C(v18);
}

unint64_t sub_1AC2A3F48()
{
  v2 = qword_1EB54C960;
  if (!qword_1EB54C960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C958, &qword_1AC313BE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C960);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2A3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v93, 0, sizeof(v93));
  memset(v67, 0, sizeof(v67));
  v94 = a1;
  v34 = type metadata accessor for FitVideoTipSection(0);
  v2 = (a1 + *(v34 + 24));
  v20 = *v2;
  v21 = v2[1];

  v91 = v20;
  v92 = v21;
  sub_1AC207FC0();
  v87 = sub_1AC30A47C();
  v88 = v3;
  v89 = v4;
  v90 = v5;
  v22 = v87;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  sub_1AC30A41C();
  v83 = v22;
  v84 = v23;
  v85 = v24 & 1;
  v86 = v25;
  v79 = sub_1AC30A45C();
  v80 = v6;
  v81 = v7;
  v82 = v8;
  v27 = v79;
  v28 = v6;
  v26 = v7;
  v29 = v8;

  sub_1AC207F7C(v22, v23, v24 & 1);

  sub_1AC30A3EC();
  v75 = v27;
  v76 = v28;
  v77 = v26 & 1;
  v78 = v29;
  v71 = sub_1AC30A43C();
  v72 = v9;
  v73 = v10;
  v74 = v11;
  v30 = v71;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  sub_1AC207F7C(v27, v28, v26 & 1);

  v68[0] = v30;
  v68[1] = v31;
  v69 = v32 & 1;
  v70 = v33;
  v44 = MEMORY[0x1E6981148];
  sub_1AC207B58(v68, MEMORY[0x1E6981148], v93);
  sub_1AC208038(v68);
  v12 = (a1 + *(v34 + 28));
  v36 = *v12;
  v37 = v12[1];

  v65 = v36;
  v66 = v37;
  v61 = sub_1AC30A47C();
  v62 = v13;
  v63 = v14;
  v64 = v15;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  sub_1AC30A3AC();
  v57 = v61;
  v58 = v38;
  v59 = v39 & 1;
  v60 = v40;
  v53 = sub_1AC30A45C();
  v54 = v16;
  v55 = v17;
  v56 = v18;
  v41 = v16;
  v42 = v17;
  v43 = v18;

  sub_1AC207F7C(v61, v38, v39 & 1);

  v50[0] = v53;
  v50[1] = v41;
  v51 = v42 & 1;
  v52 = v43;
  sub_1AC207B58(v50, v44, v67);
  sub_1AC208038(v50);
  sub_1AC2AF744(v93, v48);
  v49[0] = v48;
  sub_1AC2AF744(v67, v47);
  v49[1] = v47;
  v46[0] = v44;
  v46[1] = v44;
  sub_1AC23A49C(v49, 2uLL, v46, a2);
  sub_1AC208038(v47);
  sub_1AC208038(v48);
  sub_1AC208038(v67);
  return sub_1AC208038(v93);
}

uint64_t sub_1AC2A4458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v11 = a1;
  v18 = sub_1AC2A47E0;
  v21 = sub_1AC2AF6B0;
  v41 = 0;
  v40 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0, &qword_1AC3142A8);
  v27 = *(v33 - 8);
  v28 = v33 - 8;
  v9 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v9 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v9 - v10;
  v41 = &v9 - v10;
  v40 = v4;
  v19 = 0;
  v12 = *(v11 + *(type metadata accessor for FitVideoTipSection(0) + 40));

  v14 = &v38;
  v38 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8, &unk_1AC314AA0);
  v5 = sub_1AC2AF5A0();
  MEMORY[0x1AC5B00D0](&v39, v13, v5);
  sub_1AC209190(v14);
  v17 = &v37;
  v37 = v39;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBC8, &qword_1AC3142B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBD0, &qword_1AC3142B8);
  sub_1AC2AF628();
  v6 = sub_1AC30AB6C();
  v26 = &v36;
  v36 = v6;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v22 = v7;
  *(v7 + 16) = v18;
  *(v7 + 24) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBE0, &qword_1AC3142E0);
  v24 = sub_1AC309ACC();
  v25 = sub_1AC2AF6BC();
  sub_1AC2AF368();
  sub_1AC30A72C();
  v30 = sub_1AC2AF2D0();
  sub_1AC207B58(v31, v33, v32);
  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v35(v31, v33);
  (*(v27 + 16))(v31, v32, v33);
  sub_1AC207B58(v31, v33, v29);
  v35(v31, v33);
  return (v35)(v32, v33);
}

uint64_t sub_1AC2A47E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v38 = a1;
  v28 = a2;
  v27 = a3;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v36 = 0;
  v29 = sub_1AC309ACC();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v33 = &v17 - v32;
  v34 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v17 - v34;
  v46 = &v17 - v34;
  v45 = v6;
  v43 = v7;
  v44 = v8;
  v41 = sub_1AC30B17C();
  v42 = v9;
  v10 = sub_1AC30A9DC("", v36, 1);
  v37 = v11;
  MEMORY[0x1AC5B07E0](v10);

  result = v38;
  v39 = v38 + 1;
  if (__OFADD__(v38, 1))
  {
    __break(1u);
  }

  else
  {
    v40 = v39;
    v18 = &v41;
    sub_1AC30B14C();
    v14 = sub_1AC30A9DC(".circle.fill", 12, 1);
    v17 = v15;
    MEMORY[0x1AC5B07E0](v14);

    v20 = v41;
    v19 = v42;

    sub_1AC2063F0(v18);
    v21 = sub_1AC30A9BC();
    v22 = v16;

    sub_1AC309ABC();
    v23 = sub_1AC2AF368();
    sub_1AC207B58(v33, v29, v35);
    v25 = *(v30 + 8);
    v24 = v30 + 8;
    v25(v33, v29);
    (*(v30 + 16))(v33, v35, v29);
    sub_1AC207B58(v33, v29, v26);
    v25(v33, v29);
    return (v25)(v35, v29);
  }

  return result;
}

unint64_t sub_1AC2A4B00()
{
  v2 = qword_1EB54C968;
  if (!qword_1EB54C968)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A4B78()
{
  v2 = qword_1EB54C970;
  if (!qword_1EB54C970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C938, &qword_1AC313BC8);
    sub_1AC2A3F48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A4C94()
{
  v2 = qword_1EB54C978;
  if (!qword_1EB54C978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C948, &qword_1AC313BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C938, &qword_1AC313BC8);
    sub_1AC2A4B78();
    swift_getOpaqueTypeConformance2();
    sub_1AC2A4D8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C978);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A4D8C()
{
  v2 = qword_1EB54C980;
  if (!qword_1EB54C980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C988, &qword_1AC313BF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C980);
    return WitnessTable;
  }

  return v2;
}

char *sub_1AC2A4E14@<X0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v20 = a1;
  v37 = 0;
  v36 = 0;
  v29 = 0;
  v19 = sub_1AC30901C();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v11 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v10 - v11;
  v22 = type metadata accessor for FitTestLoopingVideoPlayer(v2);
  v12 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v3 = (&v10 - v12);
  v24 = &v10 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9A8, &qword_1AC313C00);
  v13 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v10 - v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C990, &qword_1AC313BF8);
  v15 = *(*(v32 - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v10 - v14;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v10 - v16;
  v37 = &v10 - v16;
  v36 = v5;
  v7 = type metadata accessor for FitVideoTipSection(v6);
  (*(v17 + 16))(v21, v20 + *(v7 + 20), v19);
  sub_1AC2A5970(v21, v3, *v20, v20[1]);
  v23 = sub_1AC2A52E8();
  sub_1AC23A478();
  v28 = 0;
  sub_1AC30A59C();
  sub_1AC2A9FA4(v24);
  v25 = sub_1AC30A76C();
  v26 = v8;
  sub_1AC2A5244();
  sub_1AC30A5AC();
  sub_1AC2A9FA4(v30);
  v33 = sub_1AC2A51A0();
  sub_1AC207B58(v34, v32, v35);
  sub_1AC2A9FA4(v34);
  sub_1AC2AE624(v35, v34);
  sub_1AC207B58(v34, v32, v31);
  sub_1AC2A9FA4(v34);
  return sub_1AC2A9FA4(v35);
}

unint64_t sub_1AC2A51A0()
{
  v2 = qword_1EB54C998;
  if (!qword_1EB54C998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C990, &qword_1AC313BF8);
    sub_1AC2A5244();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A5244()
{
  v2 = qword_1EB54C9A0;
  if (!qword_1EB54C9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C9A8, &qword_1AC313C00);
    sub_1AC2A52E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A52E8()
{
  v2 = qword_1EB54C9B0;
  if (!qword_1EB54C9B0)
  {
    type metadata accessor for FitTestLoopingVideoPlayer(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for FitTestLoopingVideoPlayer(uint64_t a1)
{
  v2 = qword_1EB550F90;
  if (!qword_1EB550F90)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1AC2A53DC()
{
  v2 = qword_1EB54C9B8;
  if (!qword_1EB54C9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C930, &qword_1AC313BC0);
    sub_1AC2A51A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A5488()
{
  v2 = qword_1EB54C9C0;
  if (!qword_1EB54C9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C920, &qword_1AC313BB0);
    sub_1AC2A5534();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2A5534()
{
  v2 = qword_1EB54C9C8;
  if (!qword_1EB54C9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C9D0, &qword_1AC313C08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2A55BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C920, &qword_1AC313BB0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1AC2A5670(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C920, &qword_1AC313BB0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C928, &qword_1AC313BB8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1AC2A57A4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C920, &qword_1AC313BB0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C928, &qword_1AC313BB8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1AC2A58D8()
{
  v2 = qword_1EB54C9D8;
  if (!qword_1EB54C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C928, &qword_1AC313BB8);
    sub_1AC2A5488();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C9D8);
    return WitnessTable;
  }

  return v2;
}

char *sub_1AC2A5970@<X0>(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v32 = a2;
  v36 = a1;
  v28 = a3;
  v29 = a4;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v26 = 0;
  v35 = sub_1AC30901C();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v19 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v19 - v19;
  v22 = type metadata accessor for FitTestLoopingVideoPlayer(v4);
  v20 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v22);
  v37 = &v19 - v20;
  v42 = &v19 - v20;
  v41 = v6;
  v40 = __PAIR64__(v7, LODWORD(v5));
  v21 = *(v8 + 28);
  swift_getKeyPath();
  sub_1AC30A07C();
  v24 = *(v22 + 32);
  v23 = 1;
  v9 = sub_1AC2A8498(0);
  v10 = &v37[v24];
  *v10 = v9 & v23;
  *(v10 + 1) = v11;
  sub_1AC239550();
  (*(v33 + 16))(v25, v36, v35);
  v31 = sub_1AC2395B4(v25);
  v39 = v31;
  sub_1AC239664();
  MEMORY[0x1E69E5928](v31);
  v30 = sub_1AC2396C8(v31);
  v38 = v30;
  sub_1AC239754();
  MEMORY[0x1E69E5928](v30);
  v27 = sub_1AC2397B8(v30);
  MEMORY[0x1E69E5928](v27);
  *v37 = v27;
  sub_1AC2397F8();
  MEMORY[0x1E69E5928](v30);
  v12 = sub_1AC23985C(v27, v30);
  v13 = v28;
  v14 = v29;
  v15 = v37;
  v16 = v12;
  v17 = v30;
  *(v37 + 1) = v16;
  *(v15 + 4) = v13;
  *(v15 + 5) = v14;
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v31);
  sub_1AC2A9DFC(v37, v32);
  (*(v33 + 8))(v36, v35);
  return sub_1AC2A9FA4(v37);
}

uint64_t sub_1AC2A5C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = sub_1AC2AE508;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9D0, &qword_1AC313C08);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v14 = *(v23 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v27 = &v13 - v13;
  v15 = v13;
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v13 - v15;
  v37 = &v13 - v15;
  v35 = v6;
  v36 = v7;
  v33 = v8;
  v34 = v9;

  v22 = v32;
  v32[0] = v16;
  v32[1] = v17;

  v10 = swift_allocObject();
  v11 = v19;
  v21 = v10;
  *(v10 + 16) = v18;
  *(v10 + 24) = v11;
  sub_1AC207FC0();
  sub_1AC30A6EC();
  v26 = sub_1AC2A5534();
  sub_1AC207B58(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_1AC207B58(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_1AC2A5EF8(void (*a1)(void))
{

  a1();
}

int *sub_1AC2A5F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, float *a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12, uint64_t a13)
{
  *a9 = a10;
  a9[1] = a11;
  v29 = type metadata accessor for FitVideoTipSection(0);
  v19 = v29[5];
  v13 = sub_1AC30901C();
  (*(*(v13 - 8) + 32))(a9 + v19, a1);
  result = v29;
  v15 = (a9 + v29[6]);
  *v15 = a2;
  v15[1] = a3;
  v16 = (a9 + v29[7]);
  *v16 = a4;
  v16[1] = a5;
  v17 = (a9 + v29[8]);
  *v17 = a6;
  v17[1] = a7;
  v18 = (a9 + v29[9]);
  *v18 = a8;
  v18[1] = a12;
  *(a9 + v29[10]) = a13;
  return result;
}

uint64_t sub_1AC2A60CC(void *a1)
{
  sub_1AC241BFC(a1, v4);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  sub_1AC2051E4(v4, __dst);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AC2A6118@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5B8, &qword_1AC312288);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for TipFitView(0);
  sub_1AC2AA118((v5[1] + *(v3 + 20)), v1);
  sub_1AC30A05C();
  return sub_1AC2AA1EC(v7);
}

uint64_t sub_1AC2A6218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_1AC30A04C();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = v4 - v5;
  v15 = sub_1AC30A18C();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_1AC30A16C();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_1AC2A63A8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1AC30A04C();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_1AC30A17C();
}

uint64_t sub_1AC2A6498(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5B8, &qword_1AC312288) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1AC2AA118(v2, (&v5 - v6));
  v3 = type metadata accessor for TipFitView(0);
  sub_1AC2AA288(v7, (v1 + *(v3 + 20)));
  return sub_1AC2AA1EC(v8);
}

uint64_t sub_1AC2A6548@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v21 = sub_1AC2AA374;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9E8, &qword_1AC313C88);
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v5 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v5 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9F0, &qword_1AC313C90);
  v6 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v6);
  v30 = &v5 - v7;
  v36 = &v5 - v7;
  v14 = sub_1AC30A04C();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v12 = &v5 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v5 - v8);
  v13 = &v5 - v9;
  v35 = v1;
  sub_1AC2A6118(&v5 - v9);
  (*(v10 + 104))(v12, *MEMORY[0x1E697DBA8], v14);
  v18 = sub_1AC30A03C();
  v16 = *(v10 + 8);
  v15 = v10 + 8;
  v16(v12, v14);
  v16(v13, v14);
  v34 = v18 & 1;
  v19 = &v31;
  v32 = v17;
  v33 = v18 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9F8, &qword_1AC313C98);
  sub_1AC2AA384();
  sub_1AC30A42C();
  sub_1AC2AA40C();
  sub_1AC30A56C();
  (*(v22 + 8))(v24, v25);
  v28 = sub_1AC2AA494();
  sub_1AC207B58(v29, v27, v30);
  sub_1AC2AA6F4(v29);
  sub_1AC2AA8BC(v30, v29);
  sub_1AC207B58(v29, v27, v26);
  sub_1AC2AA6F4(v29);
  return sub_1AC2AA6F4(v30);
}

uint64_t sub_1AC2A6900@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v138 = a3;
  v167 = a1;
  v155 = a2;
  v207 = sub_1AC2A79D8;
  v139 = sub_1AC2A7E04;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v242 = 0;
  v232 = 0;
  v181 = 0;
  v188 = sub_1AC30A90C();
  v185 = *(v188 - 8);
  v186 = v188 - 8;
  v140 = (*(v185 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v187 = &v72 - v140;
  v176 = sub_1AC30A8EC();
  v174 = *(v176 - 8);
  v175 = v176 - 8;
  v141 = (v174[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v72 - v141;
  v142 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v171 = &v72 - v142;
  v143 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v177 = &v72 - v143;
  v144 = (*(*(sub_1AC30901C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v181);
  v208 = &v72 - v144;
  v212 = type metadata accessor for FitVideoTipSection(v7);
  v145 = (*(*(v212 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v167);
  v146 = &v72 - v145;
  v147 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v72 - v147;
  v149 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v150 = (&v72 - v149);
  v151 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v152 = (&v72 - v151);
  v153 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v214 = (&v72 - v153);
  v154 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v211 = &v72 - v154;
  v254 = &v72 - v154;
  v253 = v18;
  v194 = 1;
  v252 = v19 & 1;
  v210 = v249;
  sub_1AC241BFC(v18, v249);
  v156 = v250;
  v157 = v251;
  __swift_project_boxed_opaque_existential_1(v210, v250);
  v199 = (*(v157 + 40))(v155 & 1, v156);
  v200 = v20;
  v209 = v246;
  sub_1AC241BFC(v167, v246);
  v159 = v247;
  v158 = v248;
  __swift_project_boxed_opaque_existential_1(v209, v247);
  (*(v158 + 16))(v159);
  v21 = sub_1AC30A9DC("FIT_TIP_TITLE", 13, v194 & 1);
  v160 = v22;
  v201 = sub_1AC20BD0C(v21, v22);
  v202 = v23;

  v166 = 17;
  sub_1AC30A8DC();
  sub_1AC30A9DC("", v181, v194 & 1);
  v161 = v24;
  sub_1AC30A8CC();

  v165 = v243;
  sub_1AC241BFC(v167, v243);
  v163 = v244;
  v162 = v245;
  __swift_project_boxed_opaque_existential_1(v165, v244);
  (*(*(v162 + 8) + 8))(v163);
  v164 = v25;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v165);
  sub_1AC30A9DC("_FIT_TIP_SUBTITLE", v166, v194 & 1);
  v168 = v26;
  sub_1AC30A8CC();

  v169 = v174[2];
  v170 = v174 + 2;
  v169(v171, v177, v176);
  v172 = v174[4];
  v173 = v174 + 4;
  v172(v180, v171, v176);
  v178 = v174[1];
  v179 = v174 + 1;
  v178(v177, v176);
  sub_1AC30A8FC();
  v182 = sub_1AC30A9DC("B788", 4, v194 & 1);
  v184 = v27;
  v183 = type metadata accessor for TipFitView(v181);
  v203 = sub_1AC2162E8(v187, v182, v184, v183);
  v204 = v28;

  v189 = *(v185 + 8);
  v190 = v185 + 8;
  v189(v187, v188);
  v29 = sub_1AC30A9DC("FIT_TIP_BUTTON_TITLE", 20, v194 & 1);
  v191 = v30;
  v205 = sub_1AC20BD0C(v29, v30);
  v206 = v31;

  v198 = MEMORY[0x1E69E6158];
  v197 = sub_1AC30B18C();
  v195 = v32;
  v193 = 16;
  v33 = sub_1AC30A9DC("FIT_TIP_BULLET_1");
  v192 = v34;
  v35 = sub_1AC20BD0C(v33, v34);
  v36 = v195;
  *v195 = v35;
  v36[1] = v37;

  v38 = sub_1AC30A9DC("FIT_TIP_BULLET_2", v193, v194 & 1);
  v196 = v39;
  v40 = sub_1AC20BD0C(v38, v39);
  v41 = v195;
  v195[2] = v40;
  v41[3] = v42;

  sub_1AC206300();
  sub_1AC2A5F58(v208, v201, v202, v203, v204, v205, v206, v207, v214, v199, v200, 0, v43);
  __swift_destroy_boxed_opaque_existential_1(v209);
  __swift_destroy_boxed_opaque_existential_1(v210);
  v213 = sub_1AC2AE16C();
  sub_1AC207B58(v214, v212, v211);
  sub_1AC2AE1EC(v214);
  v242 = v214;
  v137 = v239;
  sub_1AC241BFC(v167, v239);
  v114 = v240;
  v115 = v241;
  __swift_project_boxed_opaque_existential_1(v137, v240);
  v44 = *(v115 + 40);
  v126 = 1;
  v129 = v44(v155 & 1, v114);
  v130 = v45;
  v136 = v236;
  sub_1AC241BFC(v167, v236);
  v117 = v237;
  v116 = v238;
  __swift_project_boxed_opaque_existential_1(v136, v237);
  (*(v116 + 24))(v117);
  v46 = sub_1AC30A9DC("FIT_POSITION_TITLE", 18, v126 & 1);
  v118 = v47;
  v135 = sub_1AC20BD0C(v46, v47);
  v131 = v48;

  v124 = 22;
  sub_1AC30A8DC();
  v134 = 0;
  sub_1AC30A9DC("");
  v119 = v49;
  sub_1AC30A8CC();

  v123 = v233;
  sub_1AC241BFC(v167, v233);
  v121 = v234;
  v120 = v235;
  __swift_project_boxed_opaque_existential_1(v123, v234);
  (*(*(v120 + 8) + 16))(v121);
  v122 = v50;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v123);
  sub_1AC30A9DC("_FIT_POSITION_SUBTITLE", v124, v126 & 1);
  v125 = v51;
  sub_1AC30A8CC();

  v169(v171, v177, v176);
  v172(v180, v171, v176);
  v178(v177, v176);
  sub_1AC30A8FC();
  v127 = sub_1AC30A9DC("B788", 4, v126 & 1);
  v128 = v52;
  v132 = sub_1AC2162E8(v187, v127, v52, v183);
  v133 = v53;

  v189(v187, v188);
  v54 = sub_1AC30B18C();
  sub_1AC2A5F58(v208, v135, v131, v132, v133, v134, v134, v134, v152, v129, v130, 0, v54);
  __swift_destroy_boxed_opaque_existential_1(v136);
  __swift_destroy_boxed_opaque_existential_1(v137);
  sub_1AC207B58(v152, v212, v214);
  sub_1AC2AE1EC(v152);
  v232 = v152;
  v112 = v229;
  sub_1AC241BFC(v167, v229);
  v73 = v230;
  v74 = v231;
  __swift_project_boxed_opaque_existential_1(v112, v230);
  v55 = *(v74 + 40);
  v98 = 1;
  v103 = v55(v155 & 1, v73);
  v104 = v56;
  v111 = v226;
  sub_1AC241BFC(v167, v226);
  v76 = v227;
  v75 = v228;
  __swift_project_boxed_opaque_existential_1(v111, v227);
  (*(v75 + 32))(v76);
  v57 = sub_1AC30A9DC("FIT_HR_TITLE", 12, v98 & 1);
  v77 = v58;
  v110 = sub_1AC20BD0C(v57, v58);
  v105 = v59;

  v83 = 16;
  v87 = 1;
  sub_1AC30A8DC();
  v88 = "";
  v102 = 0;
  sub_1AC30A9DC("");
  v78 = v60;
  sub_1AC30A8CC();

  v82 = v223;
  sub_1AC241BFC(v167, v223);
  v80 = v224;
  v79 = v225;
  __swift_project_boxed_opaque_existential_1(v82, v224);
  (*(*(v79 + 8) + 8))(v80);
  v81 = v61;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v82);
  sub_1AC30A9DC("_FIT_HR_SUBTITLE", v83, v98 & 1);
  v84 = v62;
  sub_1AC30A8CC();

  v169(v171, v177, v176);
  v172(v180, v171, v176);
  v178(v177, v176);
  sub_1AC30A8FC();
  v96 = "B788";
  v97 = 4;
  v85 = sub_1AC30A9DC("B788");
  v86 = v63;
  v99 = &off_1F20F7E58;
  v106 = sub_1AC2162E8(v187, v85, v63, v183);
  v107 = v64;

  v189(v187, v188);
  v94 = 20;
  sub_1AC30A8DC();
  sub_1AC30A9DC(v88, v102, v98 & 1);
  v89 = v65;
  sub_1AC30A8CC();

  v93 = v220;
  sub_1AC241BFC(v167, v220);
  v91 = v221;
  v90 = v222;
  __swift_project_boxed_opaque_existential_1(v93, v221);
  (*(*(v90 + 8) + 8))(v91);
  v92 = v66;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v93);
  sub_1AC30A9DC("_FIT_HR_BUTTON_TITLE", v94, v98 & 1);
  v95 = v67;
  sub_1AC30A8CC();

  v169(v171, v177, v176);
  v172(v180, v171, v176);
  v178(v177, v176);
  sub_1AC30A8FC();
  v100 = sub_1AC30A9DC(v96, v97, v98 & 1);
  v101 = v68;
  v108 = sub_1AC2162E8(v187, v100, v68, v183);
  v109 = v69;

  v189(v187, v188);
  v70 = sub_1AC30B18C();
  sub_1AC2A5F58(v208, v110, v105, v106, v107, v108, v109, v139, v150, v103, v104, 0, v70);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v112);
  sub_1AC207B58(v150, v212, v152);
  sub_1AC2AE1EC(v150);
  sub_1AC2AE2FC(v211, v150);
  v113 = v219;
  v219[0] = v150;
  sub_1AC2AE2FC(v214, v148);
  v219[1] = v148;
  sub_1AC2AE2FC(v152, v146);
  v219[2] = v146;
  v218[0] = v212;
  v218[1] = v212;
  v218[2] = v212;
  v215 = v213;
  v216 = v213;
  v217 = v213;
  sub_1AC23A49C(v113, 3uLL, v218, v138);
  sub_1AC2AE1EC(v146);
  sub_1AC2AE1EC(v148);
  sub_1AC2AE1EC(v150);
  sub_1AC2AE1EC(v152);
  sub_1AC2AE1EC(v214);
  return sub_1AC2AE1EC(v211);
}

uint64_t sub_1AC2A79D8()
{
  v30 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v19 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = v8 - v19;
  v29 = sub_1AC30901C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v20 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v21 = v8 - v20;
  v22 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8 - v20);
  v23 = v8 - v22;
  v30 = v8 - v22;
  v28 = 1;
  sub_1AC30A9DC("https://support.apple.com/guide/airpods/dev5c4d302d7/web", 56, 1, v2);
  v24 = v3;
  sub_1AC30900C();

  if ((*(v25 + 48))(v27, v28, v29) == 1)
  {
    return sub_1AC247D84(v27);
  }

  v5 = v21;
  (*(v25 + 32))(v23, v27, v29);
  v17 = [objc_opt_self() sharedApplication];
  v12 = *(v25 + 16);
  v13 = v25 + 16;
  v12(v5, v23, v29);
  v16 = sub_1AC308FEC();
  v14 = *(v25 + 8);
  v15 = v25 + 8;
  v14(v21, v29);
  v18 = [v17 canOpenURL_];
  MEMORY[0x1E69E5920](v16);
  v6 = MEMORY[0x1E69E5920](v17);
  if (v18)
  {
    v7 = v21;
    v11 = [objc_opt_self() sharedApplication];
    v12(v7, v23, v29);
    v10 = sub_1AC308FEC();
    v14(v21, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C320, &qword_1AC3113C0);
    v8[0] = 0;
    v8[1] = sub_1AC30B18C();
    v8[2] = type metadata accessor for OpenExternalURLOptionsKey(v8[0]);
    v8[4] = sub_1AC247EC4();
    v8[3] = MEMORY[0x1E69E7CA0] + 8;
    v8[5] = sub_1AC30A83C();
    v9 = sub_1AC30A81C();

    [v11 openURL:v10 options:v9 completionHandler:0];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    v6 = MEMORY[0x1E69E5920](v11);
  }

  return (v14)(v23, v29, v6);
}

uint64_t sub_1AC2A7E04()
{
  v30 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v19 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = v8 - v19;
  v29 = sub_1AC30901C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v20 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v21 = v8 - v20;
  v22 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8 - v20);
  v23 = v8 - v22;
  v30 = v8 - v22;
  v28 = 1;
  sub_1AC30A9DC("https://support.apple.com/119849?cid=mc-ols-airpods-article_119849-settings_ui-08232024", 87, 1, v2);
  v24 = v3;
  sub_1AC30900C();

  if ((*(v25 + 48))(v27, v28, v29) == 1)
  {
    return sub_1AC247D84(v27);
  }

  v5 = v21;
  (*(v25 + 32))(v23, v27, v29);
  v17 = [objc_opt_self() sharedApplication];
  v12 = *(v25 + 16);
  v13 = v25 + 16;
  v12(v5, v23, v29);
  v16 = sub_1AC308FEC();
  v14 = *(v25 + 8);
  v15 = v25 + 8;
  v14(v21, v29);
  v18 = [v17 canOpenURL_];
  MEMORY[0x1E69E5920](v16);
  v6 = MEMORY[0x1E69E5920](v17);
  if (v18)
  {
    v7 = v21;
    v11 = [objc_opt_self() sharedApplication];
    v12(v7, v23, v29);
    v10 = sub_1AC308FEC();
    v14(v21, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C320, &qword_1AC3113C0);
    v8[0] = 0;
    v8[1] = sub_1AC30B18C();
    v8[2] = type metadata accessor for OpenExternalURLOptionsKey(v8[0]);
    v8[4] = sub_1AC247EC4();
    v8[3] = MEMORY[0x1E69E7CA0] + 8;
    v8[5] = sub_1AC30A83C();
    v9 = sub_1AC30A81C();

    [v11 openURL:v10 options:v9 completionHandler:0];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    v6 = MEMORY[0x1E69E5920](v11);
  }

  return (v14)(v23, v29, v6);
}

void *sub_1AC2A8230@<X0>(const void *a1@<X0>, const void *a2@<X1>, char *a3@<X8>)
{
  sub_1AC2051E4(a1, a3);
  v3 = type metadata accessor for TipFitView(0);
  return sub_1AC2AABD4(a2, &a3[*(v3 + 20)]);
}

uint64_t sub_1AC2A82B0@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C148, &unk_1AC310E10);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for FitTestLoopingVideoPlayer(0);
  sub_1AC237A38((v5[1] + *(v3 + 28)), v1);
  sub_1AC30A05C();
  return sub_1AC237B0C(v7);
}

uint64_t sub_1AC2A83E8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C148, &unk_1AC310E10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1AC237A38(v2, (&v5 - v6));
  v3 = type metadata accessor for FitTestLoopingVideoPlayer(0);
  sub_1AC237F0C(v7, (v1 + *(v3 + 28)));
  return sub_1AC237B0C(v8);
}

uint64_t sub_1AC2A84EC()
{
  type metadata accessor for FitTestLoopingVideoPlayer(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50, &qword_1AC313CC8);
  sub_1AC30A6AC();

  return v1 & 1;
}

uint64_t sub_1AC2A857C(char a1)
{
  v2 = (v1 + *(type metadata accessor for FitTestLoopingVideoPlayer(0) + 32));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50, &qword_1AC313CC8);
  sub_1AC30A6BC();
  sub_1AC1D0C54(v6);
}

uint64_t sub_1AC2A8628()
{
  type metadata accessor for FitTestLoopingVideoPlayer(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50, &qword_1AC313CC8);
  sub_1AC30A6CC();

  return v1;
}

uint64_t sub_1AC2A86D0()
{
  v2 = *(v0 + *(type metadata accessor for FitTestLoopingVideoPlayer(0) + 32));

  return v2 & 1;
}

uint64_t sub_1AC2A871C(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for FitTestLoopingVideoPlayer(0) + 32);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1AC2A8778@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v41 = MEMORY[0x1E6981440];
  v22 = sub_1AC2AADF4;
  v33 = sub_1AC2AB030;
  v60 = 0;
  v59 = 0;
  v23 = type metadata accessor for FitTestLoopingVideoPlayer(0);
  v10 = *(v23 - 8);
  v14 = v10;
  v29 = *(v10 + 64);
  v11 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v32 = (&v9 - v11);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA58, &qword_1AC313CD0);
  v43 = *(v49 - 8);
  v44 = v49 - 8;
  v12 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v9 - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v12);
  v48 = &v9 - v13;
  v60 = &v9 - v13;
  v59 = v1;
  sub_1AC2A9DFC(v1, v3);
  v28 = *(v14 + 80);
  v16 = 255;
  v15 = (v28 + 16) & ~v28;
  v30 = 7;
  v20 = swift_allocObject();
  sub_1AC2AACA8(v32, (v20 + v15));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA60, &qword_1AC313CD8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CA68, &qword_1AC313CE0);
  v18 = type metadata accessor for CGRect(v16);
  v19 = sub_1AC2AAF0C();
  v4 = sub_1AC2AAFB0();
  v58[2] = v17;
  v58[3] = v18;
  v58[4] = v19;
  v58[5] = v4;
  v42 = 1;
  swift_getOpaqueTypeConformance2();
  v5 = sub_1AC30A0EC();
  v36 = v58;
  v58[0] = v5;
  v58[1] = v6;
  v7 = v1 + *(v23 + 32);
  v24 = *v7;
  v25 = *(v7 + 1);

  v56[2] = v24;
  v57 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50, &qword_1AC313CC8);
  sub_1AC30A6AC();
  v26 = v56[1];

  v34 = v56;
  v56[0] = v26;
  sub_1AC2A9DFC(v27, v32);
  v31 = (v28 + 16) & ~v28;
  v35 = swift_allocObject();
  sub_1AC2AACA8(v32, (v35 + v31));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA80, &qword_1AC313CE8);
  v39 = sub_1AC2AB0B0();
  v38 = MEMORY[0x1E69E6370];
  v40 = MEMORY[0x1E69E6388];
  sub_1AC222FE4();
  sub_1AC30A5EC();

  sub_1AC1D0C54(v36);
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v55 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v47, v49, v48);
  v51 = *(v43 + 8);
  v50 = v43 + 8;
  v51(v47, v49);
  (*(v43 + 16))(v47, v48, v49);
  sub_1AC207B58(v47, v49, v45);
  v51(v47, v49);
  return (v51)(v48, v49);
}