NSObject *sub_1D51A3528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v156 = a3;
  v157 = a2;
  v160 = a1;
  v147 = 0;
  isa = v3->isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v152 = &v139 - v5;
  v161 = sub_1D5613AF8();
  v159 = *(v161 - 8);
  v6 = MEMORY[0x1EEE9AC00](v161);
  v139 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v151 = &v139 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v150 = &v139 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v153 = &v139 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v139 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v139 - v16;
  v144 = sub_1D560DB08();
  v145 = *(v144 - 8);
  v17 = MEMORY[0x1EEE9AC00](v144);
  v140 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v141 = &v139 - v19;
  v143 = sub_1D560D838();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D560E728();
  v149 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v139 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v139 - v30;
  v32 = qword_1EDD5D728;
  LOBYTE(v164[0]) = 4;
  sub_1D560C8B8();
  (*(v29 + 32))(v3 + v32, v31, v28);
  v33 = qword_1EDD5D738;
  LOBYTE(v164[0]) = 0;
  sub_1D560C8B8();
  v34 = v141;
  (*(v25 + 32))(v3 + v33, v27, v24);
  *(&v3->isa + *(v3->isa + 18)) = 0;
  v35 = *(v3->isa + 19);
  v146 = v3;
  *(&v3->isa + v35) = 0;
  sub_1D560EC98();
  sub_1D560D588();
  v36 = v21;
  v37 = v144;
  v38 = v23;
  (*(v142 + 8))(v36, v143);
  v39 = v145;
  v40 = *(v145 + 104);
  v40(v34, *MEMORY[0x1E6975040], v37);
  sub_1D51AE1F4(&qword_1EDD5D748, MEMORY[0x1E6975358]);
  v41 = sub_1D5614FC8();
  if (v41 == 2)
  {
    MEMORY[0x1EEE9AC00](v41);
    *(&v139 - 2) = v34;
    sub_1D4F257A8();
  }

  v42 = v41;
  v43 = *(v39 + 8);
  v43(v34, v37);
  if (v42)
  {
    goto LABEL_7;
  }

  v44 = v140;
  v40(v140, *MEMORY[0x1E6975030], v37);
  v45 = v44;
  v46 = sub_1D5614FC8();
  if (v46 == 2)
  {
    MEMORY[0x1EEE9AC00](v46);
    *(&v139 - 2) = v44;
    sub_1D4F257A8();
  }

  v47 = v46;
  v43(v45, v37);
  if (v47)
  {
LABEL_7:
    (*(v149 + 8))(v38, v158);
    v48 = v161;
    v49 = v159;
    v50 = v146;
  }

  else
  {
    v147 = v38;
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v51 = sub_1D560C758();
    __swift_project_value_buffer(v51, qword_1EDD76AD8);
    v52 = v159;
    v53 = *(v159 + 16);
    v54 = v139;
    v48 = v161;
    v53(v139, v160, v161);
    v55 = sub_1D560C738();
    v56 = sub_1D56156C8();
    v57 = os_log_type_enabled(v55, v56);
    v50 = v146;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v164[0] = v59;
      *v58 = 136446210;
      v53(v153, v54, v161);
      v60 = sub_1D5614DB8();
      v62 = v61;
      (*(v52 + 8))(v54, v161);
      v63 = sub_1D4E6835C(v60, v62, v164);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_1D4E3F000, v55, v56, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1DA6ED200](v59, -1, -1);
      v64 = v58;
      v48 = v161;
      MEMORY[0x1DA6ED200](v64, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v54, v48);
    }

    (*(v149 + 8))(v147, v158);
    v49 = v52;
  }

  v164[3] = v48;
  v164[4] = MEMORY[0x1E6976D10];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v164);
  v66 = *(v49 + 16);
  v67 = v160;
  (v66)(boxed_opaque_existential_0, v160, v48);
  (v66)(v50 + *(v50->isa + 15), v67, v48);
  sub_1D4EC76A8(v157, v50 + *(v50->isa + 16));
  *(&v50->isa + *(v50->isa + 17)) = InternalMusicPlayer.queue(for:)(&unk_1F50A3A38);
  if (qword_1EDD55F58 != -1)
  {
    swift_once();
  }

  v68 = qword_1EDD55F60;
  swift_getKeyPath();
  swift_getKeyPath();
  v149 = v68;
  sub_1D560C8F8();

  v143 = LOBYTE(v163[0]);
  LODWORD(v141) = BYTE1(v163[0]);
  LODWORD(v142) = BYTE2(v163[0]);
  v145 = BYTE3(v163[0]);
  v144 = BYTE4(v163[0]);
  v158 = v163[1];
  if (qword_1EDD544A0 != -1)
  {
    swift_once();
  }

  v69 = sub_1D560C758();
  __swift_project_value_buffer(v69, qword_1EDD76AD8);
  v70 = v148;
  v71 = v160;
  (v66)(v148, v160, v48);
  v72 = v154;
  (v66)(v154, v71, v48);
  sub_1D4E628D4(v164, v163);
  v73 = sub_1D560C738();
  v74 = sub_1D56156E8();
  v146 = v73;
  v75 = os_log_type_enabled(v73, v74);
  v147 = v66;
  if (v75)
  {
    v76 = v70;
    v77 = v49;
    v78 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v162 = v140;
    *v78 = 136446722;
    v79 = sub_1D5616458();
    LODWORD(v139) = v74;
    v80 = v79;
    v81 = v66;
    v83 = v82;
    v84 = *(v77 + 8);
    v84(v76, v161);
    v85 = sub_1D4E6835C(v80, v83, &v162);

    *(v78 + 4) = v85;
    *(v78 + 12) = 2082;
    v86 = v154;
    (v81)(v153, v154, v161);
    v87 = sub_1D5614DB8();
    v89 = v88;
    v154 = v84;
    v84(v86, v161);
    v48 = v161;
    v90 = sub_1D4E6835C(v87, v89, &v162);

    *(v78 + 14) = v90;
    *(v78 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    sub_1D51ACC3C();
    v92 = v91;
    v94 = v93;
    __swift_destroy_boxed_opaque_existential_1(v163);
    v95 = sub_1D4E6835C(v92, v94, &v162);

    *(v78 + 24) = v95;
    v96 = v146;
    _os_log_impl(&dword_1D4E3F000, v146, v139, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v78, 0x20u);
    v97 = v140;
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v97, -1, -1);
    MEMORY[0x1DA6ED200](v78, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v163);
    v98 = *(v49 + 8);
    v98(v72, v48);
    v154 = v98;
    v98(v70, v48);
  }

  v99 = v151;
  v100 = 256;
  if (!v141)
  {
    v100 = 0;
  }

  v101 = v100 | v143;
  v102 = 0x10000;
  if (!v142)
  {
    v102 = 0;
  }

  v103 = (v101 | v102 | (v145 << 24) | (v144 << 32));
  sub_1D51994A8();
  LODWORD(v104) = LOBYTE(v163[0]);
  v105 = v150;
  if (LOBYTE(v163[0]) == 10)
  {
    LODWORD(v151) = 10;
    v106 = v147;
    (v147)(v99, v160, v48);
    v107 = sub_1D560C738();
    v108 = sub_1D56156E8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v148 = v103;
      v110 = v109;
      v111 = swift_slowAlloc();
      v163[0] = v111;
      *v110 = 136446210;
      (v106)(v153, v99, v48);
      v112 = sub_1D5614DB8();
      v114 = v113;
      (v154)(v99, v48);
      v115 = sub_1D4E6835C(v112, v114, v163);

      *(v110 + 4) = v115;
      _os_log_impl(&dword_1D4E3F000, v107, v108, "Initial item state for item, %{public}s, returned playable.", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x1DA6ED200](v111, -1, -1);
      MEMORY[0x1DA6ED200](v110, -1, -1);
    }

    else
    {

      (v154)(v99, v48);
    }

    LOBYTE(v104) = v151;
  }

  else
  {
    v116 = v147;
    (v147)(v150, v160, v48);
    v117 = sub_1D560C738();
    v118 = sub_1D56156E8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      LODWORD(v151) = v104;
      v104 = v48;
      v120 = v119;
      v121 = swift_slowAlloc();
      v148 = v103;
      v122 = v121;
      v163[0] = v121;
      *v120 = 136446466;
      (v116)(v153, v105, v104);
      v123 = sub_1D5614DB8();
      v125 = v124;
      v126 = v104;
      LOBYTE(v104) = v151;
      (v154)(v105, v126);
      v127 = sub_1D4E6835C(v123, v125, v163);

      *(v120 + 4) = v127;
      *(v120 + 12) = 2082;
      LOBYTE(v162) = v104;
      v128 = sub_1D5614DB8();
      v130 = sub_1D4E6835C(v128, v129, v163);

      *(v120 + 14) = v130;
      _os_log_impl(&dword_1D4E3F000, v117, v118, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v120, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v122, -1, -1);
      MEMORY[0x1DA6ED200](v120, -1, -1);
    }

    else
    {

      (v154)(v105, v48);
    }
  }

  swift_beginAccess();
  LOBYTE(v162) = v104;
  sub_1D560C8B8();
  swift_endAccess();
  v131 = v158;
  sub_1D51A4F48();
  sub_1D51A5824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
  sub_1D51ADFE8(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
  v163[0] = sub_1D560C938();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
  sub_1D51ADFE8(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
  v132 = sub_1D560C948();

  *(&v50->isa + *(v50->isa + 19)) = v132;

  type metadata accessor for UserStateViewModel(0);
  sub_1D51AE1F4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
  v163[0] = sub_1D560C838();
  swift_allocObject();
  swift_weakInit();
  sub_1D560C898();
  v133 = sub_1D560C948();

  *(&v50->isa + *(v50->isa + 18)) = v133;

  v134 = sub_1D5615458();
  v135 = v152;
  __swift_storeEnumTagSinglePayload(v152, 1, 1, v134);
  v136 = swift_allocObject();
  swift_weakInit();

  v137 = swift_allocObject();
  v137[2] = 0;
  v137[3] = 0;
  v137[4] = v136;
  sub_1D51ECB60(0, 0, v135, &unk_1D5640118, v137);

  sub_1D4E50004(v157, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v159 + 8))(v160, v161);
  __swift_destroy_boxed_opaque_existential_1(v164);
  return v50;
}

uint64_t sub_1D51A4AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F98, &qword_1D561C420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51A4B38(char a1)
{
  type metadata accessor for UploadedVideo(0);
  sub_1D51AE1F4(&qword_1EC7F1490, type metadata accessor for UploadedVideo);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A4C08(char a1)
{
  type metadata accessor for UploadedAudio(0);
  sub_1D51AE1F4(&qword_1EC7F1478, type metadata accessor for UploadedAudio);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A4CD8(char a1)
{
  type metadata accessor for TVEpisode(0);
  sub_1D51AE1F4(&qword_1EC7F1468, type metadata accessor for TVEpisode);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A4DA8(char a1)
{
  sub_1D560EEA8();
  sub_1D51AE1F4(&qword_1EC7F1448, MEMORY[0x1E69754E8]);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A4E78(char a1)
{
  type metadata accessor for MusicMovie(0);
  sub_1D51AE1F4(&qword_1EC7F1438, type metadata accessor for MusicMovie);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

void sub_1D51A4F48()
{
  OUTLINED_FUNCTION_47();
  v50 = v3;
  v51 = v4;
  v6 = v5;
  v54 = v7;
  sub_1D560D238();
  OUTLINED_FUNCTION_4();
  v52 = v9;
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_77();
  v11 = sub_1D560D258();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v47 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_145();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D5612F18();
  v20 = *(v13 + 104);
  v46 = *MEMORY[0x1E6974E38];
  v20(v2);
  v21 = sub_1D560D248();
  v48 = v13;
  v22 = *(v13 + 8);
  v22(v2, v11);
  v45 = v19;
  v49 = v11;
  v22(v19, v11);
  if ((v21 & 1) == 0 || (v23 = v22, __swift_project_boxed_opaque_existential_1(v6, v6[3]), sub_1D5612F08(), v25 = v52, v24 = v53, (*(v52 + 104))(v0, *MEMORY[0x1E6974E18], v53), v26 = sub_1D560D228(), v27 = *(v25 + 8), v28 = OUTLINED_FUNCTION_98(), v27(v28), (v27)(v1, v24), (v26 & 1) == 0))
  {
    v32 = 4;
    goto LABEL_6;
  }

  v29 = v51;
  v30 = OUTLINED_FUNCTION_81_4();
  if (sub_1D51AA67C(v30, v31))
  {
    v32 = 0;
LABEL_6:
    *v54 = v32;
    OUTLINED_FUNCTION_46();
    return;
  }

  v33 = v6;
  v34 = OUTLINED_FUNCTION_81_4();
  if (sub_1D51AA6C4(v34, v35))
  {
    v32 = 1;
    goto LABEL_6;
  }

  if (v29)
  {
    v36 = ([v29 capabilities] & 1) == 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = v49;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v38 = v47;
  OUTLINED_FUNCTION_0_6();
  sub_1D5612F18();
  v39 = (*(v48 + 88))(v38, v37);
  if (v39 == v46)
  {
    OUTLINED_FUNCTION_69_15(v33);
    if (sub_1D5612F58())
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_69_15(v33);
    if ((sub_1D5612F98() & v36 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v40 = 3;
    v41 = MEMORY[0x1E69ADEF8];
    goto LABEL_21;
  }

  if (v39 == *MEMORY[0x1E6974E48])
  {
    if (v36)
    {
      goto LABEL_18;
    }

LABEL_20:
    v40 = 2;
    v41 = MEMORY[0x1E69ADEA8];
LABEL_21:
    if (sub_1D51AABEC(v41))
    {
      v32 = v40;
    }

    else
    {
      v32 = 5;
    }

    goto LABEL_6;
  }

  if (v39 == *MEMORY[0x1E6974E40])
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_153();
  sub_1D5615B68();
  OUTLINED_FUNCTION_75_12();
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v42 = v45;
  OUTLINED_FUNCTION_0_6();
  sub_1D5612F18();
  sub_1D5615D48();
  v23(v42, v37);
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5686E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  OUTLINED_FUNCTION_148_6("Fatal error", v43, v44, v55, v56, "MusicKitInternal/MusicPlayerItemState.swift");
  __break(1u);
}

uint64_t sub_1D51A5414(char a1)
{
  type metadata accessor for UploadedVideo(0);
  sub_1D51AE1F4(&qword_1EC7F1490, type metadata accessor for UploadedVideo);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A54E4(char a1)
{
  type metadata accessor for UploadedAudio(0);
  sub_1D51AE1F4(&qword_1EC7F1478, type metadata accessor for UploadedAudio);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A55B4(char a1)
{
  type metadata accessor for TVEpisode(0);
  sub_1D51AE1F4(&qword_1EC7F1468, type metadata accessor for TVEpisode);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A5684(char a1)
{
  sub_1D560EEA8();
  sub_1D51AE1F4(&qword_1EC7F1448, MEMORY[0x1E69754E8]);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D51A5754(char a1)
{
  type metadata accessor for MusicMovie(0);
  sub_1D51AE1F4(&qword_1EC7F1438, type metadata accessor for MusicMovie);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

void sub_1D51A5824()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_118_7();
  v0(0);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_6_58();
  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

void sub_1D51A58AC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1D560C988();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v24 = sub_1D560C9B8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v13 = sub_1D5615738();
  OUTLINED_FUNCTION_40_13();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_59(v5 + 16, &v26);
  swift_weakLoadStrong();
  swift_weakInit();

  v25[4] = v3;
  v25[5] = v14;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_62_21();
  v25[2] = v15;
  v25[3] = v1;
  v16 = _Block_copy(v25);

  sub_1D560C9A8();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_61_20();
  sub_1D51AE1F4(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  v19 = OUTLINED_FUNCTION_67_19(&qword_1EDD5D060);
  OUTLINED_FUNCTION_135_7(v25, v20, v19);
  v21 = OUTLINED_FUNCTION_146_3();
  MEMORY[0x1DA6EB530](v21);
  _Block_release(v16);

  v22 = OUTLINED_FUNCTION_134_0();
  v23(v22);
  (*(v8 + 8))(v12, v24);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51A5B1C(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_59(a1 + 16, v4);
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1D51A5B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  OUTLINED_FUNCTION_40_13();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_59(a1 + 16, v13);
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_1D51ECB60(0, 0, v4, a4, v11);
}

uint64_t sub_1D51A5CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_39(v17);

    OUTLINED_FUNCTION_3_98();
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_87_11(v18);
    v21 = 256;
    if (!v11)
    {
      v21 = 0;
    }

    v22 = v21 | KeyPath;
    v23 = 0x10000;
    if (!v12)
    {
      v23 = 0;
    }

    *v19 = v20;
    OUTLINED_FUNCTION_11_69(v19, v22 | v23 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A75BC(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1D51A5E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_39(v17);

    OUTLINED_FUNCTION_3_98();
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_87_11(v18);
    v21 = 256;
    if (!v11)
    {
      v21 = 0;
    }

    v22 = v21 | KeyPath;
    v23 = 0x10000;
    if (!v12)
    {
      v23 = 0;
    }

    *v19 = v20;
    OUTLINED_FUNCTION_11_69(v19, v22 | v23 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A78C0(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1D51A5F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_39(v17);

    OUTLINED_FUNCTION_3_98();
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_87_11(v18);
    v21 = 256;
    if (!v11)
    {
      v21 = 0;
    }

    v22 = v21 | KeyPath;
    v23 = 0x10000;
    if (!v12)
    {
      v23 = 0;
    }

    *v19 = v20;
    OUTLINED_FUNCTION_11_69(v19, v22 | v23 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A7BC4(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1D51A60FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_39(v17);

    OUTLINED_FUNCTION_3_98();
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_87_11(v18);
    v21 = 256;
    if (!v11)
    {
      v21 = 0;
    }

    v22 = v21 | KeyPath;
    v23 = 0x10000;
    if (!v12)
    {
      v23 = 0;
    }

    *v19 = v20;
    OUTLINED_FUNCTION_11_69(v19, v22 | v23 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A7EC8(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1D51A6270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_39(v17);

    OUTLINED_FUNCTION_3_98();
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_87_11(v18);
    v21 = 256;
    if (!v11)
    {
      v21 = 0;
    }

    v22 = v21 | KeyPath;
    v23 = 0x10000;
    if (!v12)
    {
      v23 = 0;
    }

    *v19 = v20;
    OUTLINED_FUNCTION_11_69(v19, v22 | v23 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A8144(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1D51A63E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_39(v17);

    OUTLINED_FUNCTION_3_98();
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_87_11(v18);
    v21 = 256;
    if (!v11)
    {
      v21 = 0;
    }

    v22 = v21 | KeyPath;
    v23 = 0x10000;
    if (!v12)
    {
      v23 = 0;
    }

    *v19 = v20;
    OUTLINED_FUNCTION_11_69(v19, v22 | v23 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A83C0(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1D51A6538()
{
  OUTLINED_FUNCTION_80();
  v1 = *(*v0 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v6;

  v3 = *(v6 + 64) == 0;
  v4 = *(v6 + 8);

  return v4(v3);
}

uint64_t sub_1D51A6688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_39(v17);

    OUTLINED_FUNCTION_3_98();
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_87_11(v18);
    v21 = 256;
    if (!v11)
    {
      v21 = 0;
    }

    v22 = v21 | KeyPath;
    v23 = 0x10000;
    if (!v12)
    {
      v23 = 0;
    }

    *v19 = v20;
    OUTLINED_FUNCTION_11_69(v19, v22 | v23 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A8678(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1D51A67FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_28_40();
  Strong = swift_weakLoadStrong();
  *(v10 + 64) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_27_39(v17);

    OUTLINED_FUNCTION_3_98();
    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_87_11(v18);
    v21 = 256;
    if (!v11)
    {
      v21 = 0;
    }

    v22 = v21 | KeyPath;
    v23 = 0x10000;
    if (!v12)
    {
      v23 = 0;
    }

    *v19 = v20;
    OUTLINED_FUNCTION_11_69(v19, v22 | v23 | (v13 << 24) | (v14 << 32));
    OUTLINED_FUNCTION_25_3();

    return sub_1D51A897C(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_25_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_1D51A6970()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6A28()
{
  OUTLINED_FUNCTION_60();

  sub_1D51A96E4();

  v0 = OUTLINED_FUNCTION_7_74();

  return v1(v0);
}

uint64_t sub_1D51A6AAC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6B64()
{
  OUTLINED_FUNCTION_60();

  sub_1D51A9898();

  v0 = OUTLINED_FUNCTION_7_74();

  return v1(v0);
}

uint64_t sub_1D51A6BE8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6CA0()
{
  OUTLINED_FUNCTION_60();

  sub_1D51A9A4C();

  v0 = OUTLINED_FUNCTION_7_74();

  return v1(v0);
}

uint64_t sub_1D51A6D24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6DDC()
{
  OUTLINED_FUNCTION_60();

  sub_1D51A9C00(v0);

  v1 = OUTLINED_FUNCTION_7_74();

  return v2(v1);
}

uint64_t sub_1D51A6E60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A6F18()
{
  OUTLINED_FUNCTION_60();

  sub_1D51A9DB8(v0);

  v1 = OUTLINED_FUNCTION_7_74();

  return v2(v1);
}

uint64_t sub_1D51A6F9C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A7054()
{
  OUTLINED_FUNCTION_60();

  sub_1D51A9F70();

  v0 = OUTLINED_FUNCTION_7_74();

  return v1(v0);
}

uint64_t sub_1D51A70D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A7190()
{
  OUTLINED_FUNCTION_60();

  sub_1D51AA178();

  v0 = OUTLINED_FUNCTION_7_74();

  return v1(v0);
}

uint64_t sub_1D51A7214()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_26_43();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 56) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_15_56();

    return v6(v5);
  }
}

uint64_t sub_1D51A72CC()
{
  OUTLINED_FUNCTION_60();

  sub_1D51AA32C(v0);

  v1 = OUTLINED_FUNCTION_7_74();

  return v2(v1);
}

void sub_1D51A7330()
{
  OUTLINED_FUNCTION_64_4();
  v0(0);
  v1 = OUTLINED_FUNCTION_61();
  sub_1D51AE1F4(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D51A73E8(void (*a1)(void))
{
  a1(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return v2;
}

void sub_1D51A7484()
{
  OUTLINED_FUNCTION_64_4();
  OUTLINED_FUNCTION_118_7();
  v0(0);
  v1 = OUTLINED_FUNCTION_61();
  sub_1D51AE1F4(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_6_58();
  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

void sub_1D51A7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_64_4();
  v25(0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D560C908();
  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D51A75BC(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A7608, 0, 0);
}

uint64_t sub_1D51A7808()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_128();
  sub_1D51A8BF8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A78C0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A790C, 0, 0);
}

uint64_t sub_1D51A7B0C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_128();
  sub_1D51A8BF8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A7BC4(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A7C10, 0, 0);
}

uint64_t sub_1D51A7E10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_128();
  sub_1D51A8BF8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A7EC8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A7F14, 0, 0);
}

uint64_t sub_1D51A80BC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_66_13();
  OUTLINED_FUNCTION_128();
  sub_1D51A8F28();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A8144(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A8190, 0, 0);
}

uint64_t sub_1D51A8338()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_65_18();
  OUTLINED_FUNCTION_128();
  sub_1D51A8F28();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A83C0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A840C, 0, 0);
}

uint64_t sub_1D51A85B4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  v0 = OUTLINED_FUNCTION_128();
  sub_1D51A92E8(v0, v1);
  v2 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D51A861C()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D51A8678(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A86C4, 0, 0);
}

uint64_t sub_1D51A88C4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_128();
  sub_1D51A8BF8();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51A897C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D51A89C8, 0, 0);
}

uint64_t sub_1D51A8B70()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_33_35();
  OUTLINED_FUNCTION_64_14();
  OUTLINED_FUNCTION_128();
  sub_1D51A8F28();
  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_1D51A8BF8()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v28 = v8;
  v9 = v8;
  v11 = v10(0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  if (v9 == 10)
  {
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100(&qword_1EDD544A0);
    }

    v13 = sub_1D560C758();
    __swift_project_value_buffer(v13, qword_1EDD76AD8);
    OUTLINED_FUNCTION_0_6();

    v14 = sub_1D560C738();
    v15 = sub_1D56156E8();

    if (os_log_type_enabled(v14, v15))
    {
      v27 = v2;
      v16 = OUTLINED_FUNCTION_142();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136446210;
      v4 = *(*v5 + 120);
      OUTLINED_FUNCTION_59(v4 + v5, v29);
      OUTLINED_FUNCTION_150_6();
      v18 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v18, v19);
      OUTLINED_FUNCTION_145_3();
      v7 = v7;

      *(v16 + 4) = v11;
      _os_log_impl(&dword_1D4E3F000, v14, v15, "Updated item state for item, %{public}s, returned playable.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_122();
      v2 = v27;
LABEL_10:
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100(&qword_1EDD544A0);
    }

    v20 = sub_1D560C758();
    __swift_project_value_buffer(v20, qword_1EDD76AD8);
    OUTLINED_FUNCTION_0_6();

    v14 = sub_1D560C738();
    v21 = sub_1D56156E8();

    if (os_log_type_enabled(v14, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v22 = 136446466;
      v4 = *(*v5 + 120);
      OUTLINED_FUNCTION_59(v4 + v5, v29);
      OUTLINED_FUNCTION_150_6();
      v23 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v23, v24);
      OUTLINED_FUNCTION_145_3();

      *(v22 + 4) = v11;
      *(v22 + 12) = 2082;
      v25 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v25, v26);
      OUTLINED_FUNCTION_145_3();
      v7 = v7;

      *(v22 + 14) = v11;
      _os_log_impl(&dword_1D4E3F000, v14, v21, "Updated item state for item, %{public}s, returned unplayable with reason %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      goto LABEL_10;
    }
  }

  v4(v28);
  v2(v7);
  OUTLINED_FUNCTION_46();
}

void sub_1D51A8F28()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v31 = v2;
  v4 = v3;
  v5 = v3;
  v7 = v6(0);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  if (v5 == 10)
  {
    LODWORD(v30) = v4;
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100(&qword_1EDD544A0);
    }

    v13 = sub_1D560C758();
    __swift_project_value_buffer(v13, qword_1EDD76AD8);
    OUTLINED_FUNCTION_206_0();

    v14 = sub_1D560C738();
    v15 = sub_1D56156E8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_142();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v16 = 136446210;
      v17 = *(*v1 + 120);
      OUTLINED_FUNCTION_59(v1 + v17, v33);
      (*(v9 + 16))(v12, v1 + v17, v7);
      v18 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v18, v19);
      OUTLINED_FUNCTION_145_3();

      *(v16 + 4) = v12;
      _os_log_impl(&dword_1D4E3F000, v14, v15, "Updated item state for item, %{public}s, returned playable.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    v30 = v9;
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_1_100(&qword_1EDD544A0);
    }

    v20 = sub_1D560C758();
    __swift_project_value_buffer(v20, qword_1EDD76AD8);
    OUTLINED_FUNCTION_206_0();

    v14 = sub_1D560C738();
    v21 = sub_1D56156E8();

    if (os_log_type_enabled(v14, v21))
    {
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v22 = 136446466;
      v23 = *(*v1 + 120);
      OUTLINED_FUNCTION_59(v1 + v23, v33);
      (*(v30 + 16))(v12, v1 + v23, v7);
      v24 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v24, v25);
      OUTLINED_FUNCTION_145_3();

      *(v22 + 4) = v12;
      *(v22 + 12) = 2082;
      v32 = v4;
      v26 = sub_1D5614DB8();
      OUTLINED_FUNCTION_132_6(v26, v27);
      OUTLINED_FUNCTION_145_3();

      *(v22 + 14) = v12;
      _os_log_impl(&dword_1D4E3F000, v14, v21, "Updated item state for item, %{public}s, returned unplayable with reason %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_46_6();
      OUTLINED_FUNCTION_122();
    }
  }

  sub_1D51A5824();
  sub_1D51A5824();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51A92E8(char a1, char a2)
{
  v3 = v2;
  v6 = a1;
  v7 = sub_1D560EEA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 10)
  {
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D560C758();
    __swift_project_value_buffer(v11, qword_1EDD76AD8);

    v12 = sub_1D560C738();
    v13 = sub_1D56156E8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v14 = 136446210;
      v15 = a2;
      v16 = *(*v3 + 120);
      swift_beginAccess();
      v17 = v3 + v16;
      a2 = v15;
      (*(v8 + 16))(v10, v17, v7);
      v18 = sub_1D5614DB8();
      v20 = sub_1D4E6835C(v18, v19, &v39);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1D4E3F000, v12, v13, "Updated item state for item, %{public}s, returned playable.", v14, 0xCu);
      v21 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1DA6ED200](v21, -1, -1);
      v22 = v14;
LABEL_10:
      MEMORY[0x1DA6ED200](v22, -1, -1);
    }
  }

  else
  {
    if (qword_1EDD544A0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D560C758();
    __swift_project_value_buffer(v23, qword_1EDD76AD8);

    v12 = sub_1D560C738();
    v24 = sub_1D56156E8();

    if (os_log_type_enabled(v12, v24))
    {
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v25 = 136446466;
      v26 = a2;
      v27 = *(*v3 + 120);
      swift_beginAccess();
      v28 = v3 + v27;
      a2 = v26;
      (*(v8 + 16))(v10, v28, v7);
      v29 = sub_1D5614DB8();
      v31 = sub_1D4E6835C(v29, v30, &v39);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2082;
      v38 = a1;
      v32 = sub_1D5614DB8();
      v34 = sub_1D4E6835C(v32, v33, &v39);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_1D4E3F000, v12, v24, "Updated item state for item, %{public}s, returned unplayable with reason %{public}s", v25, 0x16u);
      v35 = v37;
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v35, -1, -1);
      v22 = v25;
      goto LABEL_10;
    }
  }

  sub_1D51A4DA8(a1);
  return sub_1D51A5684(a2);
}

uint64_t sub_1D51A96E4()
{
  v1 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*v0 + 120);
  swift_beginAccess();
  sub_1D51A1FBC(v0 + v4, v3);
  LODWORD(v4) = sub_1D51AAEA4(v3, v0 + *(*v0 + 128)) & 1;
  sub_1D51A7330();
  if (v4 != (v5 & 1))
  {
    sub_1D51A7484();
  }

  return sub_1D51A34D0(v3, type metadata accessor for UploadedVideo);
}

uint64_t sub_1D51A9898()
{
  v1 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*v0 + 120);
  swift_beginAccess();
  sub_1D51A1FBC(v0 + v4, v3);
  LODWORD(v4) = sub_1D51AB158(v3, v0 + *(*v0 + 128)) & 1;
  sub_1D51A7330();
  if (v4 != (v5 & 1))
  {
    sub_1D51A7484();
  }

  return sub_1D51A34D0(v3, type metadata accessor for UploadedAudio);
}

uint64_t sub_1D51A9A4C()
{
  v1 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*v0 + 120);
  swift_beginAccess();
  sub_1D51A1FBC(v0 + v4, v3);
  LODWORD(v4) = sub_1D51AB40C(v3, v0 + *(*v0 + 128)) & 1;
  sub_1D51A7330();
  if (v4 != (v5 & 1))
  {
    sub_1D51A7484();
  }

  return sub_1D51A34D0(v3, type metadata accessor for TVEpisode);
}

uint64_t sub_1D51A9F70()
{
  v1 = sub_1D560EEA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 120);
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  LODWORD(v5) = sub_1D51AB820(v4, v0 + *(*v0 + 128), *(v0 + *(*v0 + 136)), MEMORY[0x1E69754E8], MEMORY[0x1E69754D0]) & 1;
  sub_1D51A7330();
  if (v5 != (v6 & 1))
  {
    sub_1D51A7484();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D51AA178()
{
  v1 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*v0 + 120);
  swift_beginAccess();
  sub_1D51A1FBC(v0 + v4, v3);
  LODWORD(v4) = sub_1D51ABD24(v3, v0 + *(*v0 + 128)) & 1;
  sub_1D51A7330();
  if (v4 != (v5 & 1))
  {
    sub_1D51A7484();
  }

  return sub_1D51A34D0(v3, type metadata accessor for MusicMovie);
}

void sub_1D51AA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, unint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_64_4();
  v22 = [objc_opt_self() sharedMonitor];
  OUTLINED_FUNCTION_9_0();
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0x726F7774656E200ALL, 0xEF203A657079546BLL);
  [v22 networkType];
  type metadata accessor for ICEnvironmentNetworkType();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v28 = v23;
  v24 = [v22 isNetworkConstrained];
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v26, v27);

  MEMORY[0x1DA6EAC70](0xD00000000000001ALL, v28);

  OUTLINED_FUNCTION_63_5();
}

uint64_t sub_1D51AA6C4(void *a1, char a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_206_0();
  if (MEMORY[0x1DA6E8D10](v4, v3) & 1) == 0 || (a2)
  {
    return 0;
  }

  sub_1D5612AE8();
  sub_1D5612AD8();
  v5 = sub_1D5612AB8();

  v6 = OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  OUTLINED_FUNCTION_0_6();
  if (v5)
  {
    v8 = sub_1D5612F38();
  }

  else
  {
    v8 = sub_1D5612FA8();
  }

  return v8 & 1;
}

BOOL sub_1D51AA76C(uint64_t a1, __int16 a2)
{
  v4 = (a2 & 0x100) == 0;
  v5 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_77();
  sub_1D4E628D4(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  if (!swift_dynamicCast())
  {
    sub_1D4E628D4(a1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(v13, v16);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      OUTLINED_FUNCTION_50_19();
      sub_1D560D078();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      if (swift_dynamicCast())
      {
        v10 = OUTLINED_FUNCTION_61();
        v11(v10);
        __swift_destroy_boxed_opaque_existential_1(v16);
        return v4;
      }

      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      sub_1D4E50004(v13, &qword_1EC7EC520, &unk_1D5621050);
    }

    return 0;
  }

  (*(v7 + 8))(v2, v5);
  return v4;
}

void sub_1D51AA978(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() sharedMonitor];
  v5 = [v4 networkType];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_50_19();
  if (sub_1D5612F58())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_50_19();
    v6 = sub_1D5612FC8();
    v7 = 10;
    if ((v6 & 1) != 0 && !v5)
    {
      sub_1D4ECC7A8(0, &qword_1EC7F1428, 0x1E69E4498);
      v8 = sub_1D5372774();
      v9 = [v8 hasOfflinePlaybackKeys];

      if (v9)
      {
        v7 = 10;
      }

      else
      {
        v7 = 11;
      }
    }
  }

  else
  {
    v7 = 11;
  }

  *a2 = v7;
}

void sub_1D51AAA94(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_50_19();
  if (sub_1D5612F78() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), OUTLINED_FUNCTION_50_19(), (sub_1D5612F68()))
  {
    sub_1D51AAB58(&v5);
    v4 = v5;
    if (v5 == 11)
    {
      v4 = 10;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_206_0();
    if (sub_1D5612F88())
    {
      v4 = 8;
    }

    else
    {
      v4 = 1;
    }
  }

  *a2 = v4;
}

void sub_1D51AAB58(char *a2@<X8>)
{
  v3 = [objc_opt_self() sharedMonitor];
  v4 = [v3 networkType];

  if (ICEnvironmentNetworkTypeIsCellular() && (sub_1D51AAC54(), (v5 & 1) == 0))
  {
    v6 = 4;
  }

  else if (v4)
  {
    v6 = 11;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

id sub_1D51AABEC(void *a1)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result effectiveBoolValueForSetting_];

    return (v4 == 2);
  }

  return result;
}

void sub_1D51AAC54()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  v2 = sub_1D560D238();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  [v8 preferredMusicLowBandwidthResolution];

  v9 = [v7 standardUserDefaults];
  [v9 preferredVideoLowBandwidthResolution];

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_1D5612F08();
  (*(v4 + 104))(v1, *MEMORY[0x1E6974E20], v2);
  OUTLINED_FUNCTION_61();
  sub_1D560D228();
  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_98();
  v10(v11);
  v12 = OUTLINED_FUNCTION_134_0();
  v10(v12);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51AADF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6950(a2, a3, a4);
}

uint64_t sub_1D51AAEA4(uint64_t a1, uint64_t a2)
{
  v11[3] = type metadata accessor for UploadedVideo(0);
  v11[4] = sub_1D51AE1F4(&qword_1EC7EB6E8, type metadata accessor for UploadedVideo);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_1D51A1FBC(a1, boxed_opaque_existential_0);
  sub_1D4E628D4(v11, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v7, v10);
    sub_1D5267BA4();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D4E50004(v7, &qword_1EC7EEC40, &unk_1D561C070);
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v5 & 1;
}

uint64_t sub_1D51AAFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A5C80(a2, a3, a4);
}

uint64_t sub_1D51AB0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6A8C(a2, a3, a4);
}

uint64_t sub_1D51AB158(uint64_t a1, uint64_t a2)
{
  v11[3] = type metadata accessor for UploadedAudio(0);
  v11[4] = sub_1D51AE1F4(&qword_1EC7EB6F0, type metadata accessor for UploadedAudio);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_1D51A1FBC(a1, boxed_opaque_existential_0);
  sub_1D4E628D4(v11, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v7, v10);
    sub_1D5267BA4();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D4E50004(v7, &qword_1EC7EEC40, &unk_1D561C070);
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v5 & 1;
}

uint64_t sub_1D51AB2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A5DF4(a2, a3, a4);
}

uint64_t sub_1D51AB35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6BC8(a2, a3, a4);
}

uint64_t sub_1D51AB40C(uint64_t a1, uint64_t a2)
{
  v11[3] = type metadata accessor for TVEpisode(0);
  v11[4] = sub_1D51AE1F4(&qword_1EC7EB6F8, type metadata accessor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_1D51A1FBC(a1, boxed_opaque_existential_0);
  sub_1D4E628D4(v11, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v7, v10);
    sub_1D5267BA4();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D4E50004(v7, &qword_1EC7EEC40, &unk_1D561C070);
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v5 & 1;
}

uint64_t sub_1D51AB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A5F68(a2, a3, a4);
}

uint64_t sub_1D51AB610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6D04(a2, a3, a4);
}

uint64_t sub_1D51AB6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A60DC(a2, a3, a4);
}

uint64_t sub_1D51AB770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6E40(a2, a3, a4);
}

uint64_t sub_1D51AB820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v14[3] = a4(0);
  v14[4] = a5;
  __swift_allocate_boxed_opaque_existential_0(v14);
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 16))();
  sub_1D4E628D4(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v10, v13);
    sub_1D5267BA4();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D4E50004(v10, &qword_1EC7EEC40, &unk_1D561C070);
    v8 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v8 & 1;
}

uint64_t sub_1D51AB95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6250(a2, a3, a4);
}

uint64_t sub_1D51ABA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51ABABC;

  return sub_1D51A6F7C(a2, a3, a4);
}

uint64_t sub_1D51ABABC()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  *v3 = v2 & 1;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1D51ABBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A63C4(a2, a3, a4);
}

uint64_t sub_1D51ABC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A70B8(a2, a3, a4);
}

uint64_t sub_1D51ABD24(uint64_t a1, uint64_t a2)
{
  v11[3] = type metadata accessor for MusicMovie(0);
  v11[4] = sub_1D51AE1F4(&unk_1EC7EB700, type metadata accessor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_1D51A1FBC(a1, boxed_opaque_existential_0);
  sub_1D4E628D4(v11, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v7, v10);
    sub_1D5267BA4();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D4E50004(v7, &qword_1EC7EEC40, &unk_1D561C070);
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v5 & 1;
}

uint64_t sub_1D51ABE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A6668(a2, a3, a4);
}

uint64_t sub_1D51AC02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A71F4(a2, a3, a4);
}

uint64_t sub_1D51AC0DC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D51AE33C;

  return sub_1D51A67DC(a2, a3, a4);
}

uint64_t sub_1D51AC21C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC3D4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC464()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC61C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC6AC()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D51AC794()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC958()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AC9E8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51ACBAC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51ACC3C()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  OUTLINED_FUNCTION_147();
  sub_1D560D258();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_70_0();
  sub_1D560D238();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_70_0();
  v1(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_6_58();
  v6();
  OUTLINED_FUNCTION_153();
  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_20_49();
  sub_1D5612F98();
  OUTLINED_FUNCTION_94_12();
  v9 = v8 | 0x65750000u;
  if (v7)
  {
    v10 = 0x65736C6166;
  }

  else
  {
    v10 = v9;
  }

  if (v7)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v10, v11);

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_20_49();
  sub_1D5612F88();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v12);
  sub_1D5612FB8();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v14 = OUTLINED_FUNCTION_10_67(v13);
  MEMORY[0x1DA6E8D10](v14);
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v15);
  sub_1D5612F38();
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v16);
  sub_1D5612F58();
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D5686CD0);
  OUTLINED_FUNCTION_20_49();
  sub_1D5612FC8();
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_10_67(v17);
  sub_1D5612F78();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_10_67(v18);
  sub_1D5612F68();
  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v19);
  sub_1D5612F48();
  OUTLINED_FUNCTION_119_6();

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_20_49();
  sub_1D5612F08();
  sub_1D5615D48();
  v20 = OUTLINED_FUNCTION_73_10();
  v21(v20);
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_20_49();
  sub_1D5612F18();
  sub_1D5615D48();
  v22 = OUTLINED_FUNCTION_73_10();
  v23(v22);
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v24);
  v25 = sub_1D5612FA8();
  v26 = (v25 & 1) == 0;
  if (v25)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v26)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v27, v28);

  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_67(v29);
  sub_1D5612EF8();
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  v30 = OUTLINED_FUNCTION_61();
  v31(v30);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51AD390()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AD548()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1D51AD5D8()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v48 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_147();
  sub_1D560D258();
  OUTLINED_FUNCTION_4();
  v46 = v8;
  v47 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v45 = v11 - v10;
  OUTLINED_FUNCTION_70_0();
  sub_1D560D238();
  OUTLINED_FUNCTION_4();
  v43 = v12;
  v44 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v42 = v15 - v14;
  v16 = OUTLINED_FUNCTION_70_0();
  v7(v16);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_0();
  sub_1D51A1FBC(v0, v7);
  OUTLINED_FUNCTION_153();
  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  sub_1D51AE1F4(v4, v2);
  OUTLINED_FUNCTION_19_48();
  sub_1D5612F98();
  OUTLINED_FUNCTION_94_12();
  v20 = v19 | 0x65750000u;
  if (v18)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = v20;
  }

  if (v18)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v21, v22);

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_19_48();
  v23 = sub_1D5612F88();
  OUTLINED_FUNCTION_82_14(v23);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v24);
  v25 = sub_1D5612FB8();
  OUTLINED_FUNCTION_82_14(v25);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v27 = OUTLINED_FUNCTION_9_68(v26);
  v28 = MEMORY[0x1DA6E8D10](v27);
  OUTLINED_FUNCTION_82_14(v28);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v29);
  v30 = sub_1D5612F38();
  OUTLINED_FUNCTION_82_14(v30);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v31);
  v32 = sub_1D5612F58();
  OUTLINED_FUNCTION_82_14(v32);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D5686CD0);
  OUTLINED_FUNCTION_19_48();
  v33 = sub_1D5612FC8();
  OUTLINED_FUNCTION_82_14(v33);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_9_68(v34);
  v35 = sub_1D5612F78();
  OUTLINED_FUNCTION_82_14(v35);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();

  OUTLINED_FUNCTION_10_23();
  OUTLINED_FUNCTION_9_68(v36);
  v37 = sub_1D5612F68();
  OUTLINED_FUNCTION_82_14(v37);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v38);
  v39 = sub_1D5612F48();
  OUTLINED_FUNCTION_82_14(v39);
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_106_7();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_19_48();
  sub_1D5612F08();
  sub_1D5615D48();
  (*(v44 + 8))(v42, v43);
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_19_48();
  sub_1D5612F18();
  sub_1D5615D48();
  (*(v47 + 8))(v45, v46);
  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_70_12();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v40);
  sub_1D5612FA8();
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_68(v41);
  sub_1D5612EF8();
  OUTLINED_FUNCTION_109_10();

  OUTLINED_FUNCTION_22_30();

  sub_1D51A34D0(v7, v48);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51ADCE0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51ADE98()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51ADF28()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51ADFE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D51AE164()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D51AE1F4(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_143_5();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D51AE238()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_28_40()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_35()
{
}

void OUTLINED_FUNCTION_34_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_51_21()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_67_19(unint64_t *a1)
{

  return sub_1D51ADFE8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_71_13()
{

  return sub_1D51A34D0(v0, type metadata accessor for GenericMusicItem);
}

uint64_t OUTLINED_FUNCTION_72_16(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_75_12()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_103_10()
{
  v2 = *(v0 - 168);

  return sub_1D4EC76A8(v2, v0 - 128);
}

void OUTLINED_FUNCTION_109_10()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_119_6()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_124_5()
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_125_7()
{
}

unint64_t OUTLINED_FUNCTION_132_6(uint64_t a1, unint64_t a2)
{

  return sub_1D4E6835C(a1, a2, (v2 - 88));
}

void OUTLINED_FUNCTION_133_3()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_134_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1D519607C(v20, a2, v21, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_135_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D56159E8();
}

uint64_t OUTLINED_FUNCTION_148_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t OUTLINED_FUNCTION_149_2()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_1D5615B68();
}

uint64_t OUTLINED_FUNCTION_150_6()
{

  return sub_1D51A1FBC(v0 + v1, v2);
}

uint64_t *OUTLINED_FUNCTION_151_4(uint64_t a1)
{
  *(v1 + 48) = a1;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_152_3(uint64_t a1, uint64_t a2)
{

  return sub_1D51A1FBC(v3 + v2, a2);
}

uint64_t *OUTLINED_FUNCTION_153_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[5] = a1;
  v2[6] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2 + 2);
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.init(playlist:invitationMode:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest(uint64_t a1)
{
  result = qword_1EC7F14A0;
  if (!qword_1EC7F14A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.playlist.getter()
{
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_104();

  return v2(v1, v0);
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.invitationMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.response()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v2[4] = OUTLINED_FUNCTION_127();
  v3 = sub_1D560E728();
  v2[5] = v3;
  OUTLINED_FUNCTION_69(v3);
  v2[6] = v4;
  v2[7] = OUTLINED_FUNCTION_127();
  v5 = sub_1D560D9A8();
  v2[8] = v5;
  OUTLINED_FUNCTION_69(v5);
  v2[9] = v6;
  v2[10] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560D838();
  v2[11] = v7;
  OUTLINED_FUNCTION_69(v7);
  v2[12] = v8;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  v2[15] = OUTLINED_FUNCTION_127();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v2[16] = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51AEADC()
{
  Playlist.collaboration.getter();
  type metadata accessor for Playlist.Collaboration(0);
  v1 = OUTLINED_FUNCTION_104();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[16];
    sub_1D4E50004(v0[15], &qword_1EC7EEFC8, &unk_1D562FAE0);
    v4 = sub_1D560C0A8();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  }

  else
  {
    if (qword_1EC7E8FA0 != -1)
    {
      swift_once();
    }

    v6 = v0[15];
    v5 = v0[16];
    v7 = sub_1D560C0A8();
    sub_1D51AFB08(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    sub_1D51AFB08(&qword_1EC7F0CA8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    sub_1D560EC28();
    sub_1D51AF858(v6);
    if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
    {
      sub_1D4E50004(v0[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
      sub_1D4F763B4();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_25_3();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_1D4E50004(v0[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1D51AED94;
  OUTLINED_FUNCTION_25_3();

  return MusicCollaborativePlaylist.StartCollaborationRequest._response()();
}

uint64_t sub_1D51AED94(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_25_3();

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 144) = a1;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51AEF1C(uint64_t a1)
{
  v19 = v1[14];
  v2 = v1[12];
  v23 = v1[13];
  v24 = v1[11];
  v21 = v1[9];
  v22 = v1[8];
  v17 = v1[7];
  v18 = v1[10];
  v3 = v1[6];
  v20 = v1[5];
  v4 = v1[4];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v5 = sub_1D560DB08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D5621D90;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E6975040], v5);
  v11(v10 + v7, *MEMORY[0x1E6975030], v5);
  sub_1D560E718();
  v12 = *MEMORY[0x1E6974FD8];
  v13 = sub_1D560D9E8();
  OUTLINED_FUNCTION_14();
  (*(v14 + 104))(v4, v12, v13);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v13);
  sub_1D560F7D8();
  sub_1D4E50004(v4, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v3 + 8))(v17, v20);
  (*(v21 + 8))(v18, v22);
  (*(v2 + 16))(v23, v19, v24);
  sub_1D56144C8();
  (*(v2 + 8))(v19, v24);

  OUTLINED_FUNCTION_55();

  return v15();
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest._response()()
{
  v1[22] = v0;
  v2 = sub_1D5614898();
  v1[23] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[24] = v3;
  v1[25] = OUTLINED_FUNCTION_127();
  v4 = sub_1D56131C8();
  v1[26] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[27] = v5;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D51AF328()
{
  v1 = v0;
  v2 = v0 + 2;
  v18 = v0 + 18;
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v9 = v0 + 24;
  v7 = v0[24];
  v8 = v9[1];
  v11 = v1[22];
  v10 = v1[23];
  (*(v6 + 104))(v3, *MEMORY[0x1E6976988], v5);
  (*(v6 + 16))(v4, v3, v5);
  (*(v7 + 16))(v8, v11, v10);
  sub_1D4ECAE6C(v8, v4);
  v13 = v12;
  v1[30] = v12;
  (*(v6 + 8))(v3, v5);
  if (*(v11 + *(type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest(0) + 20)))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryStartCollaborationChangeRequest) initWithPlaylist:v13 sharingMode:v14];
  v1[31] = v15;
  v1[2] = v1;
  v1[7] = v18;
  v1[3] = sub_1D51AF544;
  v16 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D4F772C0;
  v1[13] = &block_descriptor_12;
  v1[14] = v16;
  [v15 performWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1D51AF544()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1D51AF7B4;
  }

  else
  {
    v2 = sub_1D51AF654;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D51AF654()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[21];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 18, v3);
  v5 = *(v3 - 8);
  v6 = OUTLINED_FUNCTION_127();
  (*(v5 + 16))(v6, v4, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v7 = sub_1D5616158();

  (*(v5 + 8))(v6, v3);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1D51AF7B4(uint64_t a1)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D51AF858(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Collaboration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MusicCollaborativePlaylist.StartCollaborationRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0())
  {
    started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest(0);
    v5 = *(a1 + *(started + 20)) ^ *(a2 + *(started + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.hash(into:)()
{
  sub_1D5614898();
  OUTLINED_FUNCTION_1_101();
  sub_1D51AFB08(v1, v2, MEMORY[0x1E69773F0]);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest(0);
  return MEMORY[0x1DA6EC0D0](*(v0 + *(started + 20)));
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_1_101();
  sub_1D51AFB08(v1, v2, MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest(0);
  MEMORY[0x1DA6EC0D0](*(v0 + *(started + 20)));
  return sub_1D5616328();
}

uint64_t sub_1D51AFA20(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D51AFB08(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  MEMORY[0x1DA6EC0D0](*(v2 + *(a2 + 20)));
  return sub_1D5616328();
}

uint64_t sub_1D51AFB08(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D51AFB78(uint64_t a1)
{
  result = sub_1D5614898();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D51AFBEC@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v121 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v112 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v111 = v4;
  OUTLINED_FUNCTION_70_0();
  sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v105 = v6;
  v106 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v104 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F14B0, &qword_1D56403B0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v118 = v10;
  v11 = OUTLINED_FUNCTION_70_0();
  v120 = type metadata accessor for VideoArtwork.FileAsset(v11);
  OUTLINED_FUNCTION_4();
  v117 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v123 = v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  OUTLINED_FUNCTION_4();
  v124 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v122 = v21;
  OUTLINED_FUNCTION_70_0();
  v113 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v109 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v103 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v108 = &v100 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v100 - v29;
  v31 = sub_1D5611238();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  v102 = v35;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v100 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v100 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v116 = v43;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v115 = v45;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  v110 = v1;
  sub_1D5610708();
  sub_1D56111A8();
  v46 = *(v33 + 8);
  v46(v41, v31);
  if (__swift_getEnumTagSinglePayload(v30, 1, v42) == 1)
  {
    sub_1D4E50004(v30, &qword_1EC7EB5B8, &unk_1D56206A0);
    v48 = v111;
    v47 = v112;
    *v111 = 0x4677656976657270;
    v48[1] = 0xEC000000656D6172;
    v49 = OUTLINED_FUNCTION_7_75();
    v50(v49);
    v51 = sub_1D50F96EC();
    v52 = OUTLINED_FUNCTION_12_57(v51);
    v54 = OUTLINED_FUNCTION_5_76(v52, v53);
    v55(v54);
    swift_willThrow();
    return (*(v47 + 8))(v48, v41);
  }

  else
  {
    (*(v116 + 32))(v115, v30, v42);
    sub_1D5610708();
    v101 = v42;
    v57 = v122;
    sub_1D56111B8();
    v46(v39, v31);
    v58 = v113;
    if (__swift_getEnumTagSinglePayload(v57, 1, v113) == 1)
    {
      sub_1D4E50004(v122, &unk_1EC7E9CA8, &unk_1D561D1D0);
      v60 = v111;
      v59 = v112;
      *v111 = 0x6F65646976;
      v60[1] = 0xE500000000000000;
      v61 = OUTLINED_FUNCTION_7_75();
      v62(v61);
      v63 = sub_1D50F96EC();
      v64 = OUTLINED_FUNCTION_12_57(v63);
      v66 = OUTLINED_FUNCTION_5_76(v64, v65);
      v67(v66);
      swift_willThrow();
      (*(v59 + 8))(v60, v58);
      return (*(v116 + 8))(v115, v101);
    }

    else
    {
      v68 = v108;
      v111 = *(v109 + 32);
      v112 = v109 + 32;
      (v111)(v108, v122, v58);
      v69 = v102;
      sub_1D5610708();
      v70 = sub_1D5611228();
      v46(v69, v31);
      if (v70)
      {
        v71 = *(v70 + 16);
        v100 = v70;
        if (v71)
        {
          v72 = v124 + 16;
          OUTLINED_FUNCTION_43_3();
          v74 = v70 + v73;
          v121 = *(v72 + 56);
          v122 = v75;
          v124 = v72;
          v76 = (v72 - 8);
          v77 = MEMORY[0x1E69E7CC0];
          v79 = v119;
          v78 = v120;
          v80 = v118;
          do
          {
            v122(v18, v74, v79);
            v81 = v125;
            sub_1D546214C(v80);
            if (v81)
            {

              (*v76)(v18, v79);
              __swift_storeEnumTagSinglePayload(v80, 1, 1, v78);
              sub_1D4E50004(v80, &unk_1EC7F14B0, &qword_1D56403B0);
              v125 = 0;
            }

            else
            {
              (*v76)(v18, v79);
              OUTLINED_FUNCTION_64_0();
              __swift_storeEnumTagSinglePayload(v82, v83, v84, v78);
              sub_1D51B0B94(v80, v123);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v125 = 0;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D4F00444();
                v77 = v89;
              }

              v86 = *(v77 + 16);
              if (v86 >= *(v77 + 24) >> 1)
              {
                sub_1D4F00444();
                v77 = v90;
              }

              *(v77 + 16) = v86 + 1;
              OUTLINED_FUNCTION_43_3();
              sub_1D51B0B94(v123, v77 + v87 + *(v88 + 72) * v86);
              v79 = v119;
              v78 = v120;
              v80 = v118;
            }

            v74 += v121;
            --v71;
          }

          while (v71);
        }

        else
        {
          v77 = MEMORY[0x1E69E7CC0];
        }

        v68 = v108;
      }

      else
      {
        v77 = 0;
      }

      v91 = v115;
      v92 = v104;
      sub_1D5610758();
      v93 = v109;
      v94 = v103;
      v95 = v113;
      (*(v109 + 16))(v103, v68, v113);
      v96 = MEMORY[0x1E69E7CC0];
      if (v77)
      {
        v96 = v77;
      }

      v124 = v96;
      v97 = sub_1D5610718();
      (*(v93 + 8))(v68, v95);
      (*(v116 + 8))(v91, v101);
      v98 = v107;
      (*(v105 + 32))(v107, v92, v106);
      v99 = type metadata accessor for VideoArtwork(0);
      result = (v111)(v98 + v99[5], v94, v95);
      *(v98 + v99[6]) = v124;
      *(v98 + v99[7]) = v97;
    }
  }

  return result;
}

uint64_t sub_1D51B0578@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v64 = v5;
  OUTLINED_FUNCTION_70_0();
  sub_1D5611238();
  OUTLINED_FUNCTION_4();
  v65 = v7;
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v62 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v63 = v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v68 = v13;
  OUTLINED_FUNCTION_70_0();
  v73 = sub_1D5611218();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v72 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v17 = type metadata accessor for VideoArtwork.FileAsset(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0A8, &qword_1D561DE58);
  OUTLINED_FUNCTION_4();
  v24 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v60 - v26;
  v61 = type metadata accessor for VideoArtwork(0);
  v28 = *(v61 + 24);
  v67 = v1;
  v29 = *(v1 + v28);
  v30 = *(v29 + 16);
  if (v30)
  {
    v60[1] = a1;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1D4F04414(0, v30, 0);
    v31 = v74;
    OUTLINED_FUNCTION_43_3();
    v33 = v29 + v32;
    v34 = *(v19 + 72);
    v69 = v24 + 32;
    v70 = v34;
    v35 = v68;
    while (1)
    {
      sub_1D51B0AD4(v33, v22);
      v36 = sub_1D560C0A8();
      OUTLINED_FUNCTION_14();
      (*(v37 + 16))(v35, v22, v36);
      OUTLINED_FUNCTION_64_0();
      result = __swift_storeEnumTagSinglePayload(v38, v39, v40, v36);
      v42 = *&v22[*(v17 + 28)] * 1000.0;
      if (COERCE__INT64(fabs(v42)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v42 <= -9.22337204e18)
      {
        goto LABEL_11;
      }

      if (v42 >= 9.22337204e18)
      {
        goto LABEL_12;
      }

      sub_1D5611208();

      sub_1D56106F8();
      sub_1D51B0B38(v22);
      v74 = v31;
      v44 = *(v31 + 16);
      v43 = *(v31 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D4F04414(v43 > 1, v44 + 1, 1);
        v35 = v68;
        v31 = v74;
      }

      *(v31 + 16) = v44 + 1;
      OUTLINED_FUNCTION_43_3();
      (*(v24 + 32))(v31 + v45 + *(v24 + 72) * v44, v27, v71);
      v33 += v70;
      if (!--v30)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:
    v46 = v67;
    sub_1D5613F28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    v51 = *(v61 + 20);
    v52 = sub_1D560C0A8();
    OUTLINED_FUNCTION_14();
    (*(v53 + 16))(v68, v46 + v51, v52);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
    v57 = v63;
    sub_1D5611198();
    v59 = v65;
    v58 = v66;
    (*(v65 + 16))(v62, v57, v66);

    sub_1D56106F8();
    return (*(v59 + 8))(v57, v58);
  }

  return result;
}

uint64_t sub_1D51B0AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork.FileAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51B0B38(uint64_t a1)
{
  v2 = type metadata accessor for VideoArtwork.FileAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D51B0B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork.FileAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t MusicLibraryPlaylistViewModel.Revision.sourceAction.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D4FEEE2C(v2);
}

uint64_t static MusicLibraryPlaylistViewModel.Revision.SourceAction.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      goto LABEL_7;
    }

LABEL_23:
    sub_1D4FEEE2C(v3);
    sub_1D4FEEE2C(v2);
    sub_1D4FEEE48(v2);
    sub_1D4FEEE48(v3);
    v7 = 0;
    return v7 & 1;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_7:
      v15 = v6;
      v16 = v5;
      sub_1D4FEEE2C(v3);
      sub_1D4FEEE2C(v2);
      v7 = static MusicLibraryPlaylistViewModel.Revision.SourceAction.== infix(_:_:)(&v16, &v15);
      sub_1D4FEEE48(v2);
      sub_1D4FEEE48(v3);
      return v7 & 1;
    }

    goto LABEL_23;
  }

  switch(__ROR8__(v2 ^ 0x8000000000000000, 3))
  {
    case 1:
      OUTLINED_FUNCTION_0_124();
      if (v3 != v12)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(v2);
      v8 = 0x8000000000000008;
      goto LABEL_22;
    case 2:
      OUTLINED_FUNCTION_0_124();
      v10 = v11 + 8;
      goto LABEL_20;
    case 3:
      if (v3 != 0x8000000000000018)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(*a1);
      v8 = 0x8000000000000018;
      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_0_124();
      v10 = v9 + 24;
      goto LABEL_20;
    case 5:
      if (v3 != 0x8000000000000028)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(*a1);
      v8 = 0x8000000000000028;
      goto LABEL_22;
    case 6:
      OUTLINED_FUNCTION_0_124();
      v10 = v13 + 40;
LABEL_20:
      if (v3 != v10)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(v2);
      v8 = v10;
LABEL_22:
      sub_1D4FEEE48(v8);
      v7 = 1;
      break;
    default:
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_23;
      }

      sub_1D4FEEE48(*a1);
      v8 = 0x8000000000000000;
      goto LABEL_22;
  }

  return v7 & 1;
}

uint64_t MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(uint64_t a1)
{
  v3 = *v1 >> 62;
  if (!v3)
  {
    v4 = 6;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 7;
LABEL_5:
    MEMORY[0x1DA6EC0D0](v4);
    return MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(a1);
  }

  switch(__ROR8__(*v1 ^ 0x8000000000000000, 3))
  {
    case 1:
      v6 = 1;
      break;
    case 2:
      v6 = 2;
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 8;
      break;
    default:
      v6 = 0;
      break;
  }

  return MEMORY[0x1DA6EC0D0](v6);
}

uint64_t MusicLibraryPlaylistViewModel.Revision.SourceAction.hashValue.getter()
{
  v2[9] = *v0;
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D51B0F00(uint64_t a1)
{
  v3[9] = *v1;
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(v3);
  return sub_1D5616328();
}

uint64_t static MusicLibraryPlaylistViewModel.Revision.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D5616168()) && (sub_1D4EFB508(), (v5))
  {
    v8 = v3;
    v9 = v2;
    sub_1D4FEEE2C(v2);
    sub_1D4FEEE2C(v3);
    v6 = static MusicLibraryPlaylistViewModel.Revision.SourceAction.== infix(_:_:)(&v9, &v8);
    sub_1D4FEEE48(v3);
    sub_1D4FEEE48(v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t MusicLibraryPlaylistViewModel.Revision.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  sub_1D4F09260();
  return MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(a1);
}

uint64_t MusicLibraryPlaylistViewModel.Revision.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D4F09260();
  MusicLibraryPlaylistViewModel.Revision.SourceAction.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D51B10D0(uint64_t a1)
{
  v2 = v1[3];
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = v2;
  sub_1D56162D8();
  MusicLibraryPlaylistViewModel.Revision.hash(into:)(v4);
  return sub_1D5616328();
}

uint64_t sub_1D51B1128(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F14E0, &qword_1D5640628);
  sub_1D51B199C();
  sub_1D56155F8();

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5686EE0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0x6E6F697369766552;
}

uint64_t sub_1D51B12F0@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F14D0, &qword_1D5640620);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta(0);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a2;
  v11 = [a1 musicKit_transactionDetails_identifier];
  v12 = sub_1D5614D68();
  v43 = v13;
  v44 = v12;

  v14 = [a1 musicKit_transactionDetails_changes];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED5E0, &unk_1D56257D0);
  v15 = sub_1D5615168();

  v16 = sub_1D4E62628(v15);
  v17 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (v16 != v17)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA6EB9B0](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v18 = swift_unknownObjectRetain();
    }

    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v36 = MEMORY[0x1DA6EB9B0](0, v17);
      goto LABEL_19;
    }

    sub_1D4FE5098(v18, v19, v20, v21, v22, v23, v24, v25, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1D51B1934(v8);
      ++v17;
    }

    else
    {
      v40 = a1;
      sub_1D4FE7234(v8, v46);
      v26 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F01FBC();
        v47 = v30;
      }

      v27 = *(v47 + 16);
      if (v27 >= *(v47 + 24) >> 1)
      {
        sub_1D4F01FBC();
        v47 = v31;
      }

      v28 = v46;
      v29 = v47;
      *(v47 + 16) = v27 + 1;
      sub_1D4FE7234(v28, v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v27);
      ++v17;
      a3 = v26;
      a1 = v40;
    }
  }

  v32 = [a1 musicKit_transactionDetails_changes];
  v33 = sub_1D5615168();

  v34 = sub_1D4F0B2D8(v33);

  if (v34 != 1)
  {
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v35 = [a1 musicKit_transactionDetails_changes];
  v17 = sub_1D5615168();

  if (!sub_1D4E62628(v17))
  {

    goto LABEL_22;
  }

  sub_1D4F0B2FC();
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  v36 = *(v17 + 32);
  swift_unknownObjectRetain();
LABEL_19:

  v37 = [v36 musicKit_changeDetails_type];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v37 == 5)
  {
    sub_1D4FEEE48(v45);
    result = swift_allocObject();
    *(result + 16) = 0x8000000000000020;
    goto LABEL_24;
  }

LABEL_23:
  result = v45;
LABEL_24:
  v39 = v43;
  *a3 = v44;
  a3[1] = v39;
  a3[2] = v47;
  a3[3] = result;
  return result;
}

unint64_t sub_1D51B170C()
{
  result = qword_1EC7F14C0;
  if (!qword_1EC7F14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F14C0);
  }

  return result;
}

unint64_t sub_1D51B1764()
{
  result = qword_1EC7F14C8;
  if (!qword_1EC7F14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F14C8);
  }

  return result;
}

uint64_t sub_1D51B17B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D51B17F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D51B1848(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D51B189C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D51B18FC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D51B1934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F14D0, &qword_1D5640620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D51B199C()
{
  result = qword_1EC7F14E8;
  if (!qword_1EC7F14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F14E0, &qword_1D5640628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F14E8);
  }

  return result;
}

uint64_t type metadata accessor for UploadedAudioPropertyProvider(uint64_t a1)
{
  result = qword_1EC7F14F0;
  if (!qword_1EC7F14F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D51B1A74(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D51B2080(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, qword_1EDD57D80, type metadata accessor for AssetFlavors, MEMORY[0x1E69E6720]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD533B8, MEMORY[0x1E6975930], MEMORY[0x1E69E6720]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD5F220, MEMORY[0x1E6975D60], MEMORY[0x1E69E6720]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD52730, MEMORY[0x1E69E63B0]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD53188, MEMORY[0x1E6975E48], MEMORY[0x1E69E6720]);
    if (v12 > 0x3F)
    {
      return v11;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v15 > 0x3F)
    {
      return v14;
    }

    sub_1D51B2080(319, &qword_1EDD53050, MEMORY[0x1E6976600], MEMORY[0x1E69E6720]);
    if (v16 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD53128, MEMORY[0x1E6976028], MEMORY[0x1E69E6720]);
    if (v17 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD52ED0, MEMORY[0x1E69768E8], MEMORY[0x1E69E6720]);
    if (v18 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD52EB0, MEMORY[0x1E6976A18], MEMORY[0x1E69E6720]);
    if (v19 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD52A40, MEMORY[0x1E69774A0], MEMORY[0x1E69E6720]);
    if (v20 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD53158, MEMORY[0x1E6975E88], MEMORY[0x1E69E6720]);
    if (v21 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v22 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
    if (v23 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, qword_1EDD5DAA8, type metadata accessor for CuratorRelationshipProvider, MEMORY[0x1E69E6720]);
    if (v24 > 0x3F)
    {
      return v4;
    }

    sub_1D51B2080(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
    if (v25 > 0x3F)
    {
      return v4;
    }

    v4 = sub_1D560D838();
    if (v26 > 0x3F)
    {
      return v4;
    }

    v4 = sub_1D5610088();
    if (v27 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E5CF94(319);
      v2 = v28;
      if (v29 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1D51B2080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D51B212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v286 = v20;
  v287 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v273 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v274 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v277 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v46);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v278 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v49);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_3();
  v280 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v52);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  v282 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v55);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_3();
  v281 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v58);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  v283 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v61);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  v284 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v65 = OUTLINED_FUNCTION_22(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  v275 = v66;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_135();
  v276 = v68;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v269 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v73 = OUTLINED_FUNCTION_22(v72);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13();
  v279 = v74;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v269 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v78);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v269 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v82);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v269 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v86);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v269 - v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v90);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v269 - v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  OUTLINED_FUNCTION_117_6();
  v94 = swift_dynamicCastClass();
  if (!v94)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EB40);
    v291 = v25;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v268 = 45;
    goto LABEL_172;
  }

  v95 = v94;
  v96 = qword_1EC7E8E38;
  v288 = v25;

  if (v96 != -1)
  {
    OUTLINED_FUNCTION_90_13(&qword_1EC7E8E38);
  }

  *&v289 = qword_1EC87C180;
  v291 = v95;
  v97 = sub_1D4EC5794(&qword_1EC7F1528, &qword_1EC7ECD68, &qword_1D5622F58);
  if (sub_1D5614D18())
  {
    v98 = v286;
    v99 = v286[1];
    if (!v99)
    {
      v101 = 0;
      v100 = 0;
      goto LABEL_20;
    }

LABEL_6:
    v100 = *v98;

    v101 = MEMORY[0x1E69E6158];
LABEL_20:

    v117 = v287;
    *v287 = v100;
    v117[1] = v99;
    v117[2] = 0;
    v117[3] = v101;
    goto LABEL_43;
  }

  v285 = v97;
  v102 = qword_1EC7E8E40;

  if (v102 != -1)
  {
    OUTLINED_FUNCTION_89_10(&qword_1EC7E8E40);
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C188);
  v103 = sub_1D5614D18();

  if (v103)
  {
    v104 = type metadata accessor for UploadedAudioPropertyProvider(0);
    v105 = OUTLINED_FUNCTION_51_3(*(v104 + 20));
    sub_1D4E69910(v105, v93, v106, v107);
    sub_1D56140F8();
    OUTLINED_FUNCTION_1(v93);
    if (!v247)
    {
      goto LABEL_165;
    }

    v108 = &qword_1EC7E9CA0;
    v109 = &unk_1D561A0C0;
    v110 = v93;
    goto LABEL_33;
  }

  v111 = qword_1EC7E8E48;

  if (v111 != -1)
  {
    OUTLINED_FUNCTION_86_13(&qword_1EC7E8E48);
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C190);
  v112 = sub_1D5614D18();

  if (v112)
  {
    v113 = type metadata accessor for UploadedAudioPropertyProvider(0);
    v114 = OUTLINED_FUNCTION_51_3(*(v113 + 24));
    sub_1D4E69910(v114, v89, v115, v116);
    type metadata accessor for AssetFlavors(0);
    OUTLINED_FUNCTION_1(v89);
    if (!v247)
    {
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_57_19();
      sub_1D51B91B4(v89, v124, v125);
LABEL_41:

      goto LABEL_42;
    }

    v108 = &qword_1EC7ECC88;
    v109 = &unk_1D56310F0;
    v110 = v89;
    goto LABEL_33;
  }

  v118 = qword_1EC7E8E50;

  if (v118 != -1)
  {
    OUTLINED_FUNCTION_85_9(&qword_1EC7E8E50);
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C198);
  v119 = sub_1D5614D18();

  if (v119)
  {
    v120 = type metadata accessor for UploadedAudioPropertyProvider(0);
    v121 = OUTLINED_FUNCTION_51_3(*(v120 + 28));
    sub_1D4E69910(v121, v85, v122, v123);
    sub_1D560F928();
    OUTLINED_FUNCTION_1(v85);
    if (!v247)
    {
      goto LABEL_165;
    }

    v108 = &qword_1EC7EDB98;
    v109 = L"X\b\a";
    v110 = v85;
    goto LABEL_33;
  }

  v126 = qword_1EC7E8E58;

  if (v126 != -1)
  {
    OUTLINED_FUNCTION_39_23(&qword_1EC7E8E58);
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C1A0);
  v127 = sub_1D5614D18();

  if (v127)
  {
    v128 = type metadata accessor for UploadedAudioPropertyProvider(0);
    v129 = OUTLINED_FUNCTION_51_3(*(v128 + 32));
    sub_1D4E69910(v129, v81, v130, v131);
    v132 = sub_1D56106B8();
    OUTLINED_FUNCTION_57(v81, 1, v132);
    if (!v247)
    {
      *(&v290 + 1) = v132;
      __swift_allocate_boxed_opaque_existential_0(&v289);
      v138 = *(*(v132 - 8) + 32);
LABEL_40:
      v138();
      goto LABEL_41;
    }

    v108 = &qword_1EC7EC478;
    v109 = &unk_1D56299D0;
    v110 = v81;
LABEL_33:
    sub_1D4E50004(v110, v108, v109);
    v289 = 0u;
    v290 = 0u;
LABEL_42:
    v139 = v290;
    v140 = v287;
    *v287 = v289;
    *(v140 + 1) = v139;
    goto LABEL_43;
  }

  v133 = qword_1EC7E8E60;

  if (v133 != -1)
  {
    OUTLINED_FUNCTION_40(&qword_1EC7E8E60);
  }

  OUTLINED_FUNCTION_0_125(qword_1EC87C1A8);
  sub_1D5614D18();
  OUTLINED_FUNCTION_104_11();
  if ((v133 & 1) == 0)
  {
    v141 = qword_1EC7E8E68;

    if (v141 != -1)
    {
      OUTLINED_FUNCTION_16_55(&qword_1EC7E8E68);
    }

    OUTLINED_FUNCTION_0_125(qword_1EC87C1B0);
    sub_1D5614D18();
    OUTLINED_FUNCTION_104_11();
    if (v141)
    {
      v142 = *(v286 + *(type metadata accessor for UploadedAudioPropertyProvider(0) + 40));
      if (v142)
      {
        v143 = &qword_1EC7EC480;
        v144 = &unk_1D56222E0;
LABEL_49:
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(v143, v144);

LABEL_60:

        v152 = v287;
        *v287 = v142;
        v152[1] = 0;
        v152[2] = 0;
        v152[3] = v145;
        goto LABEL_43;
      }
    }

    else
    {
      v146 = qword_1EC7E8E70;

      if (v146 != -1)
      {
        OUTLINED_FUNCTION_81_16(&qword_1EC7E8E70);
      }

      OUTLINED_FUNCTION_0_125(qword_1EC87C1B8);
      sub_1D5614D18();
      OUTLINED_FUNCTION_104_11();
      if (v146)
      {
        v147 = type metadata accessor for UploadedAudioPropertyProvider(0);
        v148 = OUTLINED_FUNCTION_51_3(*(v147 + 44));
        sub_1D4E69910(v148, v77, v149, v150);
        sub_1D5610978();
        OUTLINED_FUNCTION_1(v77);
        if (!v247)
        {
          goto LABEL_165;
        }

        v108 = &qword_1EC7EAC98;
        v109 = &unk_1D561DA80;
        v110 = v77;
        goto LABEL_33;
      }

      *&v289 = sub_1D4F84A88();
      v291 = v95;
      v151 = sub_1D5614D18();

      if ((v151 & 1) == 0)
      {
        v153 = qword_1EC7E8E78;

        if (v153 != -1)
        {
          OUTLINED_FUNCTION_79_8(&qword_1EC7E8E78);
        }

        OUTLINED_FUNCTION_0_125(qword_1EC87C1C0);
        sub_1D5614D18();
        OUTLINED_FUNCTION_104_11();
        if (v153)
        {
          v154 = type metadata accessor for UploadedAudioPropertyProvider(0);
          v155 = OUTLINED_FUNCTION_51_3(*(v154 + 52));
          sub_1D4E69910(v155, v71, v156, v157);
          sub_1D560C328();
          OUTLINED_FUNCTION_1(v71);
          if (!v247)
          {
            goto LABEL_165;
          }

          v108 = &qword_1EC7EA3B8;
          v109 = &unk_1D561E370;
          v110 = v71;
        }

        else
        {
          v158 = qword_1EC7E8E80;

          if (v158 != -1)
          {
            OUTLINED_FUNCTION_78_13(&qword_1EC7E8E80);
          }

          OUTLINED_FUNCTION_0_125(qword_1EC87C1C8);
          sub_1D5614D18();
          OUTLINED_FUNCTION_104_11();
          if (v158)
          {
            v159 = type metadata accessor for UploadedAudioPropertyProvider(0);
            v160 = OUTLINED_FUNCTION_51_3(*(v159 + 56));
            v161 = v284;
            sub_1D4E69910(v160, v284, v162, v163);
            v164 = sub_1D56128E8();
            OUTLINED_FUNCTION_1_9(v164);
            if (!v247)
            {
              goto LABEL_165;
            }

            v108 = &qword_1EC7EF5C8;
            v109 = &unk_1D5632130;
          }

          else
          {
            v165 = qword_1EC7E8E88;

            if (v165 != -1)
            {
              OUTLINED_FUNCTION_77_7(&qword_1EC7E8E88);
            }

            OUTLINED_FUNCTION_0_125(qword_1EC87C1D0);
            sub_1D5614D18();
            OUTLINED_FUNCTION_104_11();
            if (v165)
            {
              v166 = type metadata accessor for UploadedAudioPropertyProvider(0);
              v167 = OUTLINED_FUNCTION_51_3(*(v166 + 60));
              v161 = v283;
              sub_1D4E69910(v167, v283, v168, v169);
              v170 = sub_1D5610CB8();
              OUTLINED_FUNCTION_1_9(v170);
              if (!v247)
              {
                goto LABEL_165;
              }

              v108 = &qword_1EC7EF5D0;
              v109 = &unk_1D5632140;
            }

            else
            {
              v171 = qword_1EC7E8E90;

              if (v171 != -1)
              {
                OUTLINED_FUNCTION_76_10(&qword_1EC7E8E90);
              }

              OUTLINED_FUNCTION_0_125(qword_1EC87C1D8);
              sub_1D5614D18();
              OUTLINED_FUNCTION_104_11();
              if ((v171 & 1) == 0)
              {
                v177 = qword_1EC7E8E98;

                if (v177 != -1)
                {
                  OUTLINED_FUNCTION_75_13(&qword_1EC7E8E98);
                }

                OUTLINED_FUNCTION_0_125(qword_1EC87C1E0);
                sub_1D5614D18();
                OUTLINED_FUNCTION_104_11();
                if (v177)
                {
                  v178 = type metadata accessor for UploadedAudioPropertyProvider(0);
                  v179 = OUTLINED_FUNCTION_51_3(*(v178 + 68));
                  sub_1D4E69910(v179, v282, v180, v181);
                  v182 = sub_1D56134E8();
                  OUTLINED_FUNCTION_1_9(v182);
                  if (!v247)
                  {
                    goto LABEL_165;
                  }

                  v108 = &qword_1EC7EC528;
                  v109 = &unk_1D5621070;
                  v110 = v282;
                }

                else
                {
                  v183 = qword_1EC7E8EA0;

                  if (v183 != -1)
                  {
                    OUTLINED_FUNCTION_74_14(&qword_1EC7E8EA0);
                  }

                  OUTLINED_FUNCTION_0_125(qword_1EC87C1E8);
                  sub_1D5614D18();
                  OUTLINED_FUNCTION_109_1();
                  if (v183)
                  {
                    v184 = type metadata accessor for UploadedAudioPropertyProvider(0);
                    v185 = OUTLINED_FUNCTION_51_3(*(v184 + 72));
                    sub_1D4E69910(v185, v280, v186, v187);
                    v188 = sub_1D5614A78();
                    OUTLINED_FUNCTION_1_9(v188);
                    if (!v247)
                    {
                      goto LABEL_165;
                    }

                    v108 = &qword_1EC7EF5D8;
                    v109 = &unk_1D5632160;
                    v110 = v280;
                  }

                  else
                  {
                    v189 = qword_1EC7E8EA8;

                    if (v189 != -1)
                    {
                      OUTLINED_FUNCTION_73_11(&qword_1EC7E8EA8);
                    }

                    OUTLINED_FUNCTION_0_125(qword_1EC87C1F0);
                    sub_1D5614D18();
                    OUTLINED_FUNCTION_109_1();
                    if (v189)
                    {
                      v190 = type metadata accessor for UploadedAudioPropertyProvider(0);
                      v191 = OUTLINED_FUNCTION_51_3(*(v190 + 76));
                      sub_1D4E69910(v191, v279, v192, v193);
                      v194 = sub_1D5610978();
                      OUTLINED_FUNCTION_1_9(v194);
                      if (!v247)
                      {
                        goto LABEL_165;
                      }

                      v108 = &qword_1EC7EAC98;
                      v109 = &unk_1D561DA80;
                      v110 = v279;
                    }

                    else
                    {
                      v195 = qword_1EC7E8EB0;

                      if (v195 != -1)
                      {
                        OUTLINED_FUNCTION_72_17(&qword_1EC7E8EB0);
                      }

                      OUTLINED_FUNCTION_0_125(qword_1EC87C1F8);
                      sub_1D5614D18();
                      OUTLINED_FUNCTION_109_1();
                      if (v195)
                      {
                        v196 = type metadata accessor for UploadedAudioPropertyProvider(0);
                        v197 = OUTLINED_FUNCTION_51_3(*(v196 + 80));
                        sub_1D4E69910(v197, v278, v198, v199);
                        v200 = sub_1D56109F8();
                        OUTLINED_FUNCTION_1_9(v200);
                        if (!v247)
                        {
                          goto LABEL_165;
                        }

                        v108 = &qword_1EC7EB5C0;
                        v109 = &unk_1D56223C0;
                        v110 = v278;
                      }

                      else
                      {
                        v201 = qword_1EC7E8EB8;

                        if (v201 != -1)
                        {
                          OUTLINED_FUNCTION_38_25(&qword_1EC7E8EB8);
                        }

                        OUTLINED_FUNCTION_0_125(qword_1EC87C200);
                        sub_1D5614D18();
                        OUTLINED_FUNCTION_109_1();
                        if (v201)
                        {
                          v202 = type metadata accessor for UploadedAudioPropertyProvider(0);
                          v203 = OUTLINED_FUNCTION_51_3(*(v202 + 84));
                          sub_1D4E69910(v203, v277, v204, v205);
                          v206 = sub_1D560C0A8();
                          OUTLINED_FUNCTION_1_9(v206);
                          if (!v247)
                          {
                            goto LABEL_165;
                          }

                          v108 = &unk_1EC7E9CA8;
                          v109 = &unk_1D561D1D0;
                          v110 = v277;
                        }

                        else
                        {
                          v207 = qword_1EC7E8EC0;

                          if (v207 != -1)
                          {
                            OUTLINED_FUNCTION_70_13(&qword_1EC7E8EC0);
                          }

                          OUTLINED_FUNCTION_0_125(qword_1EC87C208);
                          sub_1D5614D18();
                          OUTLINED_FUNCTION_109_1();
                          if (v207)
                          {
                            v208 = type metadata accessor for UploadedAudioPropertyProvider(0);
                            v209 = OUTLINED_FUNCTION_51_3(*(v208 + 88));
                            sub_1D4E69910(v209, v276, v210, v211);
                            v212 = sub_1D560C328();
                            OUTLINED_FUNCTION_1_9(v212);
                            if (!v247)
                            {
                              goto LABEL_165;
                            }

                            v108 = &qword_1EC7EA3B8;
                            v109 = &unk_1D561E370;
                            v110 = v276;
                          }

                          else
                          {
                            v213 = qword_1EC7E8EC8;

                            if (v213 != -1)
                            {
                              OUTLINED_FUNCTION_12(&qword_1EC7E8EC8);
                            }

                            OUTLINED_FUNCTION_0_125(qword_1EC87C210);
                            sub_1D5614D18();
                            OUTLINED_FUNCTION_109_1();
                            if (v213)
                            {
                              v214 = *(type metadata accessor for UploadedAudioPropertyProvider(0) + 92);
LABEL_126:
                              v98 = (v286 + v214);
                              v99 = v98[1];
                              if (!v99)
                              {
                                v100 = 0;
                                v101 = 0;
                                goto LABEL_20;
                              }

                              goto LABEL_6;
                            }

                            v215 = qword_1EC7E8ED0;

                            if (v215 != -1)
                            {
                              OUTLINED_FUNCTION_91_11(&qword_1EC7E8ED0);
                            }

                            OUTLINED_FUNCTION_0_125(qword_1EC87C218);
                            sub_1D5614D18();
                            OUTLINED_FUNCTION_109_1();
                            if (v215)
                            {
                              v216 = type metadata accessor for UploadedAudioPropertyProvider(0);
                              v217 = OUTLINED_FUNCTION_51_3(*(v216 + 96));
                              sub_1D4E69910(v217, v275, v218, v219);
                              v220 = sub_1D560C328();
                              OUTLINED_FUNCTION_1_9(v220);
                              if (!v247)
                              {
                                goto LABEL_165;
                              }

                              v108 = &qword_1EC7EA3B8;
                              v109 = &unk_1D561E370;
                              v110 = v275;
                            }

                            else
                            {
                              v81 = qword_1EC7E8ED8;

                              if (v81 != -1)
                              {
                                goto LABEL_173;
                              }

                              while (1)
                              {
                                OUTLINED_FUNCTION_0_125(qword_1EC87C220);
                                sub_1D5614D18();
                                OUTLINED_FUNCTION_109_1();
                                if (v81)
                                {
                                  v214 = *(type metadata accessor for UploadedAudioPropertyProvider(0) + 100);
                                  goto LABEL_126;
                                }

                                v221 = qword_1EC7E8EE0;

                                if (v221 != -1)
                                {
                                  OUTLINED_FUNCTION_37_3(&qword_1EC7E8EE0);
                                }

                                OUTLINED_FUNCTION_0_125(qword_1EC7F0858);
                                sub_1D5614D18();
                                OUTLINED_FUNCTION_109_1();
                                if (v221)
                                {
                                  v222 = type metadata accessor for UploadedAudioPropertyProvider(0);
                                  v223 = OUTLINED_FUNCTION_51_3(*(v222 + 104));
                                  sub_1D4E69910(v223, v274, v224, v225);
                                  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
                                  OUTLINED_FUNCTION_1_9(v226);
                                  if (!v247)
                                  {
                                    goto LABEL_165;
                                  }

                                  v108 = &off_1EC7EB5B0;
                                  v109 = &unk_1D5632170;
                                  v110 = v274;
                                  goto LABEL_33;
                                }

                                v227 = qword_1EC7E8EE8;

                                if (v227 != -1)
                                {
                                  OUTLINED_FUNCTION_36_26(&qword_1EC7E8EE8);
                                }

                                OUTLINED_FUNCTION_0_125(qword_1EC7F0860);
                                sub_1D5614D18();
                                OUTLINED_FUNCTION_109_1();
                                if (v227)
                                {
                                  v228 = type metadata accessor for UploadedAudioPropertyProvider(0);
                                  v229 = OUTLINED_FUNCTION_51_3(*(v228 + 108));
                                  v230 = v270;
                                  sub_1D4E69910(v229, v270, v231, v232);
                                  type metadata accessor for CuratorRelationshipProvider(0);
                                  v233 = OUTLINED_FUNCTION_104();
                                  OUTLINED_FUNCTION_57(v233, 1, v234);
                                  if (v247)
                                  {

                                    v108 = &qword_1EC7ECC80;
                                    v109 = &unk_1D5622EA0;
                                    v235 = &a14;
                                  }

                                  else
                                  {
                                    v242 = OUTLINED_FUNCTION_145_0(&a14);
                                    OUTLINED_FUNCTION_108_0(v242, v243, v244, &a15);
                                    OUTLINED_FUNCTION_7_76();
                                    sub_1D51B9214(v230, v245);
                                    v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
                                    OUTLINED_FUNCTION_1_9(v246);
                                    if (!v247)
                                    {
                                      goto LABEL_165;
                                    }

                                    v108 = &qword_1EC7EA790;
                                    v109 = &unk_1D561FB10;
                                    v235 = &a15;
                                  }

LABEL_167:
                                  v110 = *(v235 - 32);
                                  goto LABEL_33;
                                }

                                v236 = off_1EC7E8EF0;

                                if (v236 != -1)
                                {
                                  OUTLINED_FUNCTION_35_6(&off_1EC7E8EF0);
                                }

                                OUTLINED_FUNCTION_0_125(qword_1EC7F0868);
                                sub_1D5614D18();
                                OUTLINED_FUNCTION_109_1();
                                if (v236)
                                {
                                  v237 = type metadata accessor for UploadedAudioPropertyProvider(0);
                                  v238 = OUTLINED_FUNCTION_51_3(*(v237 + 108));
                                  OUTLINED_FUNCTION_108_0(v238, v239, v240, &a16);
                                  v241 = type metadata accessor for CuratorRelationshipProvider(0);
                                  OUTLINED_FUNCTION_1_9(v241);
                                  if (v247)
                                  {

                                    v108 = &qword_1EC7ECC80;
                                    v109 = &unk_1D5622EA0;
                                    v235 = &a16;
                                    goto LABEL_167;
                                  }

                                  v253 = v236[5];
                                  v254 = v271;
                                  OUTLINED_FUNCTION_108_0(v271 + v253, &qword_1EC7EA788, &unk_1D56223A0, &a18);
                                  OUTLINED_FUNCTION_7_76();
                                  sub_1D51B9214(v254, v255);
                                  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
                                  OUTLINED_FUNCTION_1_9(v256);
                                  if (v257)
                                  {

                                    v108 = &qword_1EC7EA788;
                                    v109 = &unk_1D56223A0;
                                    v235 = &a18;
                                    goto LABEL_167;
                                  }

                                  goto LABEL_165;
                                }

                                v81 = off_1EC7E8EF8;

                                if (v81 != -1)
                                {
                                  OUTLINED_FUNCTION_33_4(&off_1EC7E8EF8);
                                }

                                OUTLINED_FUNCTION_0_125(qword_1EC7F0870);
                                sub_1D5614D18();
                                OUTLINED_FUNCTION_109_1();
                                if (v81)
                                {
                                  break;
                                }

                                OUTLINED_FUNCTION_30();
                                sub_1D5615B68();
                                OUTLINED_FUNCTION_16_6();
                                MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
                                v291 = v288;
                                sub_1D560CDE8();
                                sub_1D5615D48();
                                OUTLINED_FUNCTION_33_0();
                                OUTLINED_FUNCTION_28();
                                v268 = 104;
LABEL_172:
                                v269 = v268;
                                OUTLINED_FUNCTION_17_13("Fatal error", v264, v265, v266, v267, "MusicKitInternal/UploadedAudioPropertyProvider.swift");
                                __break(1u);
LABEL_173:
                                OUTLINED_FUNCTION_87_12(&qword_1EC7E8ED8);
                              }

                              v248 = type metadata accessor for UploadedAudioPropertyProvider(0);
                              v249 = OUTLINED_FUNCTION_51_3(*(v248 + 108));
                              OUTLINED_FUNCTION_108_0(v249, v250, v251, &a17);
                              v252 = type metadata accessor for CuratorRelationshipProvider(0);
                              OUTLINED_FUNCTION_1_9(v252);
                              if (v247)
                              {

                                v108 = &qword_1EC7ECC80;
                                v109 = &unk_1D5622EA0;
                                v235 = &a17;
                                goto LABEL_167;
                              }

                              v258 = *(v81 + 24);
                              v259 = v272;
                              sub_1D4E69910(v272 + v258, v273, &qword_1EC7EA780, &unk_1D561FB20);
                              OUTLINED_FUNCTION_7_76();
                              sub_1D51B9214(v259, v260);
                              v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
                              OUTLINED_FUNCTION_1_9(v261);
                              if (!v262)
                              {
LABEL_165:
                                OUTLINED_FUNCTION_72_3();
                                OUTLINED_FUNCTION_15_1();
                                v138 = *(v263 + 32);
                                goto LABEL_40;
                              }

                              v108 = &qword_1EC7EA780;
                              v109 = &unk_1D561FB20;
                              v110 = v273;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_33;
              }

              v172 = type metadata accessor for UploadedAudioPropertyProvider(0);
              v173 = OUTLINED_FUNCTION_51_3(*(v172 + 64));
              v161 = v281;
              sub_1D4E69910(v173, v281, v174, v175);
              v176 = sub_1D5613198();
              OUTLINED_FUNCTION_1_9(v176);
              if (!v247)
              {
                goto LABEL_165;
              }

              v108 = &qword_1EC7EC530;
              v109 = &unk_1D5632150;
            }
          }

          v110 = v161;
        }

        goto LABEL_33;
      }

      v142 = *(v286 + *(type metadata accessor for UploadedAudioPropertyProvider(0) + 48));
      if (v142)
      {
        v143 = &qword_1EC7EC9E8;
        v144 = &qword_1D562B870;
        goto LABEL_49;
      }
    }

    v145 = 0;
    goto LABEL_60;
  }

  v134 = 0;
  v135 = 0;
  v136 = v286 + *(type metadata accessor for UploadedAudioPropertyProvider(0) + 36);
  if ((v136[8] & 1) == 0)
  {
    v135 = *v136;
    v134 = MEMORY[0x1E69E63B0];
  }

  v137 = v287;
  *v287 = v135;
  v137[1] = 0;
  v137[2] = 0;
  v137[3] = v134;
LABEL_43:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51B3BA0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD68, &qword_1D5622F58);
  if (!swift_dynamicCastClass())
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5686FF0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_25;
  }

  v4 = qword_1EC7E8E68;
  swift_retain_n();
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_16_55(&qword_1EC7E8E68);
  }

  v5 = sub_1D4EC5794(&qword_1EC7F1528, &qword_1EC7ECD68, &qword_1D5622F58);
  OUTLINED_FUNCTION_39_0(v5, v6, v7);
  OUTLINED_FUNCTION_77_0();
  if (v2 & 1) != 0 || (, v44 = sub_1D4F84A88(), v10 = OUTLINED_FUNCTION_39_0(v44, v8, v9), , , (v10))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_62_22();
    sub_1D51B9308(v11, v12, &unk_1D56406D0);
    OUTLINED_FUNCTION_93();
    sub_1D5612248();
  }

  else
  {
    v14 = qword_1EC7E8EE0;

    if (v14 != -1)
    {
      v15 = OUTLINED_FUNCTION_37_3(&qword_1EC7E8EE0);
    }

    OUTLINED_FUNCTION_39_0(v15, v16, v17);
    OUTLINED_FUNCTION_77_0();
    if (v14)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_62_22();
      sub_1D51B9308(v18, v19, &unk_1D56406D0);
      OUTLINED_FUNCTION_93();
      sub_1D5612238();
    }

    else
    {
      v20 = qword_1EC7E8EE8;

      if (v20 != -1)
      {
        v21 = OUTLINED_FUNCTION_36_26(&qword_1EC7E8EE8);
      }

      OUTLINED_FUNCTION_39_0(v21, v22, v23);
      OUTLINED_FUNCTION_77_0();
      if (v20)
      {
        swift_getKeyPath();
        v24 = OUTLINED_FUNCTION_116_9();
        type metadata accessor for UploadedAudioPropertyProvider(v24);
        v25 = OUTLINED_FUNCTION_93();
        sub_1D54CE644(v25, v26);
      }

      else
      {
        v27 = off_1EC7E8EF0;

        if (v27 != -1)
        {
          v28 = OUTLINED_FUNCTION_35_6(&off_1EC7E8EF0);
        }

        OUTLINED_FUNCTION_39_0(v28, v29, v30);
        OUTLINED_FUNCTION_77_0();
        if (v27)
        {
          swift_getKeyPath();
          v31 = OUTLINED_FUNCTION_116_9();
          type metadata accessor for UploadedAudioPropertyProvider(v31);
          v32 = OUTLINED_FUNCTION_93();
          sub_1D54CE668(v32, v33);
        }

        else
        {
          v34 = off_1EC7E8EF8;

          if (v34 != -1)
          {
            v35 = OUTLINED_FUNCTION_33_4(&off_1EC7E8EF8);
          }

          v38 = OUTLINED_FUNCTION_39_0(v35, v36, v37);

          if ((v38 & 1) == 0)
          {
            while (1)
            {
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
              sub_1D560CDE8();
              sub_1D5615D48();
              OUTLINED_FUNCTION_33_0();
LABEL_25:
              OUTLINED_FUNCTION_17_13("Fatal error", v42, v43, 0, 0xE000000000000000, "MusicKitInternal/UploadedAudioPropertyProvider.swift");
              __break(1u);
            }
          }

          swift_getKeyPath();
          v39 = OUTLINED_FUNCTION_116_9();
          type metadata accessor for UploadedAudioPropertyProvider(v39);
          v40 = OUTLINED_FUNCTION_93();
          sub_1D54CE68C(v40, v41);
        }
      }
    }
  }

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

void sub_1D51B4008()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1320, &qword_1D563FBC8);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  v10 = type metadata accessor for UploadedAudioPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1518, &unk_1D56407B0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5686F40);
    v30 = v5;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v26 = 136;
    goto LABEL_15;
  }

  v16 = v15;
  sub_1D4E628D4(v3, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    v27 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v27, v28, 1, v10);
    sub_1D4E50004(v9, &qword_1EC7F1320, &qword_1D563FBC8);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D5686F80);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v26 = 139;
    goto LABEL_15;
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_1D51B91B4(v9, v14, type metadata accessor for UploadedAudioPropertyProvider);
  v17 = qword_1EC7E8E68;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_16_55(&qword_1EC7E8E68);
  }

  v29[0] = qword_1EC87C1B0;
  v30 = v16;
  sub_1D4EC5794(&qword_1EC7F1520, &qword_1EC7F1518, &unk_1D56407B0);
  v18 = sub_1D5614D18();

  if ((v18 & 1) == 0)
  {

    v29[0] = sub_1D4F84C3C();
    v30 = v16;
    v21 = sub_1D5614D18();

    if (v21)
    {

      v19 = *(v14 + *(v10 + 48));

      OUTLINED_FUNCTION_69_16();
      v20 = *(v10 + 48);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D5686FC0);
    v30 = v16;
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v26 = 149;
LABEL_15:
    v29[0] = v26;
    OUTLINED_FUNCTION_17_13("Fatal error", v22, v23, v24, v25, "MusicKitInternal/UploadedAudioPropertyProvider.swift");
    __break(1u);
    return;
  }

  v19 = *(v14 + *(v10 + 40));

  OUTLINED_FUNCTION_69_16();
  v20 = *(v10 + 40);
LABEL_9:
  if (!v19)
  {
    v19 = *(v1 + v20);
  }

  *(v1 + v20) = v19;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51B4428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5640630;
  if (qword_1EC7E8E38 != -1)
  {
    OUTLINED_FUNCTION_90_13(&qword_1EC7E8E38);
  }

  *(v0 + 32) = qword_1EC87C180;
  v1 = qword_1EC7E8E40;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_89_10(&qword_1EC7E8E40);
  }

  *(v0 + 40) = qword_1EC87C188;
  v2 = qword_1EC7E8E48;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_86_13(&qword_1EC7E8E48);
  }

  *(v0 + 48) = qword_1EC87C190;
  v3 = qword_1EC7E8E50;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_85_9(&qword_1EC7E8E50);
  }

  *(v0 + 56) = qword_1EC87C198;
  v4 = qword_1EC7E8E58;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_39_23(&qword_1EC7E8E58);
  }

  *(v0 + 64) = qword_1EC87C1A0;
  v5 = qword_1EC7E8E60;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_40(&qword_1EC7E8E60);
  }

  *(v0 + 72) = qword_1EC87C1A8;
  v6 = qword_1EC7E8E68;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_16_55(&qword_1EC7E8E68);
  }

  *(v0 + 80) = qword_1EC87C1B0;
  v7 = qword_1EC7E8E70;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_81_16(&qword_1EC7E8E70);
  }

  *(v0 + 88) = qword_1EC87C1B8;

  *(v0 + 96) = sub_1D4F84A88();
  if (qword_1EC7E8E78 != -1)
  {
    OUTLINED_FUNCTION_79_8(&qword_1EC7E8E78);
  }

  *(v0 + 104) = qword_1EC87C1C0;
  v8 = qword_1EC7E8E80;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_78_13(&qword_1EC7E8E80);
  }

  *(v0 + 112) = qword_1EC87C1C8;
  v9 = qword_1EC7E8E88;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_77_7(&qword_1EC7E8E88);
  }

  *(v0 + 120) = qword_1EC87C1D0;
  v10 = qword_1EC7E8E90;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_76_10(&qword_1EC7E8E90);
  }

  *(v0 + 128) = qword_1EC87C1D8;
  v11 = qword_1EC7E8E98;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_75_13(&qword_1EC7E8E98);
  }

  *(v0 + 136) = qword_1EC87C1E0;
  v12 = qword_1EC7E8EA0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_74_14(&qword_1EC7E8EA0);
  }

  *(v0 + 144) = qword_1EC87C1E8;
  v13 = qword_1EC7E8EA8;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_73_11(&qword_1EC7E8EA8);
  }

  *(v0 + 152) = qword_1EC87C1F0;
  v14 = qword_1EC7E8EB0;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_72_17(&qword_1EC7E8EB0);
  }

  *(v0 + 160) = qword_1EC87C1F8;
  v15 = qword_1EC7E8EB8;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_38_25(&qword_1EC7E8EB8);
  }

  *(v0 + 168) = qword_1EC87C200;
  v16 = qword_1EC7E8EC0;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_70_13(&qword_1EC7E8EC0);
  }

  *(v0 + 176) = qword_1EC87C208;
  v17 = qword_1EC7E8EC8;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_12(&qword_1EC7E8EC8);
  }

  *(v0 + 184) = qword_1EC87C210;
  v18 = qword_1EC7E8ED0;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_91_11(&qword_1EC7E8ED0);
  }

  *(v0 + 192) = qword_1EC87C218;
  v19 = qword_1EC7E8ED8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_87_12(&qword_1EC7E8ED8);
  }

  *(v0 + 200) = qword_1EC87C220;
  v20 = qword_1EC7E8EE0;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_37_3(&qword_1EC7E8EE0);
  }

  *(v0 + 208) = qword_1EC7F0858;
  v21 = qword_1EC7E8EE8;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_36_26(&qword_1EC7E8EE8);
  }

  *(v0 + 216) = qword_1EC7F0860;
  v22 = off_1EC7E8EF0;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_35_6(&off_1EC7E8EF0);
  }

  *(v0 + 224) = qword_1EC7F0868;
  v23 = off_1EC7E8EF8;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_33_4(&off_1EC7E8EF8);
  }

  *(v0 + 232) = qword_1EC7F0870;
  qword_1EC87C278 = v0;
}

void sub_1D51B4940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = OUTLINED_FUNCTION_116_9();
  v26 = type metadata accessor for CuratorRelationshipProvider(v25);
  v27 = OUTLINED_FUNCTION_20(v26, &v580);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF600, &unk_1D5640880);
  OUTLINED_FUNCTION_20(v34, &v579);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_12_0(v37, &v578);
  v559 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_20(v44, &v576);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v46);
  v47 = sub_1D560C0A8();
  v48 = OUTLINED_FUNCTION_12_0(v47, &v585);
  v556 = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_20(v54, &v583);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v56);
  v57 = sub_1D56109F8();
  v58 = OUTLINED_FUNCTION_12_0(v57, &v587);
  v554 = v59;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v61);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF610, &unk_1D5637E70);
  OUTLINED_FUNCTION_20(v64, v586);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v66);
  v67 = sub_1D5614A78();
  v68 = OUTLINED_FUNCTION_12_0(v67, &v594);
  v569 = v69;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v71);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF618, &unk_1D5632430);
  OUTLINED_FUNCTION_20(v74, &v589);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v76);
  v77 = sub_1D56134E8();
  v78 = OUTLINED_FUNCTION_12_0(v77, &v600);
  v571[1] = v79;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v81);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF620, &unk_1D5637E80);
  OUTLINED_FUNCTION_20(v84, &v595);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v86);
  v87 = sub_1D5613198();
  v88 = OUTLINED_FUNCTION_12_0(v87, &v606);
  v575 = v89;
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v91);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_20(v94, &v601);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v96);
  v97 = sub_1D5610CB8();
  v98 = OUTLINED_FUNCTION_12_0(v97, &v612);
  v577[2] = v99;
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v101);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF630, &qword_1D5632450);
  OUTLINED_FUNCTION_20(v104, &v607);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v106);
  v107 = sub_1D56128E8();
  v108 = OUTLINED_FUNCTION_12_0(v107, &a12);
  v582[1] = v109;
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v111);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF640, &unk_1D5632460);
  OUTLINED_FUNCTION_20(v114, &v613);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v116);
  v117 = sub_1D560C328();
  v118 = OUTLINED_FUNCTION_12_0(v117, &a16);
  v587 = v119;
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v122 = OUTLINED_FUNCTION_22(v121);
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  v127 = OUTLINED_FUNCTION_20(v126, &a15);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v130);
  v595 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v593 = v131;
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v135 = OUTLINED_FUNCTION_22(v134);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v137);
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_13_2();
  v596 = v140;
  OUTLINED_FUNCTION_70_0();
  v603 = sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v599 = v141;
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_5_0();
  v597 = v143;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v144);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_13_3();
  v598 = v146;
  v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_13_3();
  v602 = v148;
  OUTLINED_FUNCTION_70_0();
  v609 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v605 = v149;
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_5_0();
  v600 = v151;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v152);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_13_3();
  v604 = v154;
  v607 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF650, &qword_1D5632480);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_13_3();
  v608 = v156;
  v157 = OUTLINED_FUNCTION_70_0();
  v612 = type metadata accessor for AssetFlavors(v157);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_5_0();
  v606 = v159;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_22(v160);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v161);
  OUTLINED_FUNCTION_13_3();
  v610 = v162;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF658, &qword_1D5632488);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_13_3();
  v613 = v165;
  OUTLINED_FUNCTION_70_0();
  v166 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v168 = v167;
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_5();
  v172 = v171 - v170;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v173);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v546 - v175;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v178);
  v180 = &v546 - v179;
  v181 = v20[1];
  v182 = v24[1];
  if (v181)
  {
    if (!v182)
    {
      goto LABEL_31;
    }

    v183 = *v20 == *v24 && v181 == v182;
    if (!v183 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v182)
  {
    goto LABEL_31;
  }

  v547 = v30;
  v184 = type metadata accessor for UploadedAudioPropertyProvider(0);
  v611 = v24;
  v548 = v184;
  v185 = *(v184 + 20);
  v186 = v20;
  v187 = *(v177 + 48);
  v549 = v186;
  sub_1D4E69910(v186 + v185, v180, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v188 = OUTLINED_FUNCTION_44_22();
  sub_1D4E69910(v188, v180 + v187, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v180, 1, v166);
  if (v183)
  {
    OUTLINED_FUNCTION_57(v180 + v187, 1, v166);
    if (v183)
    {
      sub_1D4E50004(v180, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_21;
    }

LABEL_18:
    v192 = &qword_1EC7E9FB8;
    v193 = &unk_1D561B9C0;
LABEL_19:
    v194 = v180;
LABEL_30:
    sub_1D4E50004(v194, v192, v193);
    goto LABEL_31;
  }

  sub_1D4E69910(v180, v176, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v180 + v187, 1, v166);
  if (v189)
  {
    v190 = OUTLINED_FUNCTION_117_6();
    v191(v190);
    goto LABEL_18;
  }

  (*(v168 + 32))(v172, v180 + v187, v166);
  OUTLINED_FUNCTION_64_15();
  sub_1D51B9308(v195, v196, MEMORY[0x1E6976F80]);
  v197 = sub_1D5614D18();
  v198 = *(v168 + 8);
  v198(v172, v166);
  v199 = OUTLINED_FUNCTION_117_6();
  (v198)(v199);
  sub_1D4E50004(v180, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v197 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v200 = v548;
  v201 = *(v163 + 48);
  v202 = v549;
  v203 = v613;
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v204, v205, v206, v207);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v208, v209, v210, v211);
  OUTLINED_FUNCTION_14_54(v203, 1);
  if (v183)
  {
    OUTLINED_FUNCTION_1(v203 + v201);
    if (v183)
    {
      sub_1D4E50004(v203, &qword_1EC7ECC88, &unk_1D56310F0);
      goto LABEL_33;
    }

LABEL_29:
    v192 = &qword_1EC7EF658;
    v193 = &qword_1D5632488;
    v194 = v203;
    goto LABEL_30;
  }

  v212 = v610;
  sub_1D4E69910(v203, v610, &qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_1(v203 + v201);
  if (v213)
  {
    sub_1D51B9214(v212, type metadata accessor for AssetFlavors);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_57_19();
  v214 = v203 + v201;
  v215 = v606;
  sub_1D51B91B4(v214, v606, v216);
  static AssetFlavors.== infix(_:_:)();
  v218 = v217;
  sub_1D51B9214(v215, type metadata accessor for AssetFlavors);
  sub_1D51B9214(v212, type metadata accessor for AssetFlavors);
  sub_1D4E50004(v203, &qword_1EC7ECC88, &unk_1D56310F0);
  if ((v218 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  v180 = v608;
  v219 = *(v607 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v220, v221, v222, v223);
  OUTLINED_FUNCTION_44_22();
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v224, v225, v226, v227);
  v228 = v609;
  OUTLINED_FUNCTION_57(v180, 1, v609);
  if (v183)
  {
    OUTLINED_FUNCTION_57(v180 + v219, 1, v228);
    if (v183)
    {
      sub_1D4E50004(v180, &qword_1EC7EDB98, L"X\b\a");
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v229 = v604;
  sub_1D4E69910(v180, v604, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v180 + v219, 1, v228);
  if (v230)
  {
    (*(v605 + 8))(v229, v228);
LABEL_41:
    v192 = &qword_1EC7EF650;
    v193 = &qword_1D5632480;
    goto LABEL_19;
  }

  v231 = v605;
  OUTLINED_FUNCTION_113_9();
  v232 = (v180 + v219);
  v233 = v600;
  v234(v600, v232, v228);
  OUTLINED_FUNCTION_58_18();
  sub_1D51B9308(v235, v236, MEMORY[0x1E6975940]);
  v237 = sub_1D5614D18();
  v238 = *(v231 + 8);
  v238(v233, v228);
  v238(v229, v228);
  sub_1D4E50004(v180, &qword_1EC7EDB98, L"X\b\a");
  if ((v237 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_43:
  v239 = v602;
  v240 = *(v601 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v241, v242, v243, v244);
  OUTLINED_FUNCTION_44_22();
  v245 = v611;
  OUTLINED_FUNCTION_8_1();
  sub_1D4E69910(v246, v247, v248, v249);
  v250 = v603;
  OUTLINED_FUNCTION_14_54(v239, 1);
  if (v183)
  {
    OUTLINED_FUNCTION_1(v239 + v240);
    if (v183)
    {
      sub_1D4E50004(v239, &qword_1EC7EC478, &unk_1D56299D0);
      goto LABEL_53;
    }

LABEL_51:
    v192 = &qword_1EC7EE730;
    v193 = &unk_1D562C598;
    v194 = v239;
    goto LABEL_30;
  }

  v251 = v598;
  sub_1D4E69910(v239, v598, &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_1(v239 + v240);
  if (v252)
  {
    (*(v599 + 8))(v251, v250);
    goto LABEL_51;
  }

  v253 = v599;
  OUTLINED_FUNCTION_113_9();
  v254 = v597;
  v255(v597, v239 + v240, v250);
  OUTLINED_FUNCTION_55_18();
  sub_1D51B9308(v256, v257, MEMORY[0x1E6975D78]);
  v258 = v250;
  v259 = sub_1D5614D18();
  v260 = *(v253 + 8);
  v260(v254, v258);
  v260(v251, v258);
  sub_1D4E50004(v239, &qword_1EC7EC478, &unk_1D56299D0);
  if ((v259 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_53:
  v261 = v200[9];
  v262 = (v202 + v261);
  v263 = *(v202 + v261 + 8);
  v264 = (v245 + v261);
  v265 = *(v245 + v261 + 8);
  if (v263)
  {
    if (!v265)
    {
      goto LABEL_31;
    }

LABEL_59:
    v266 = v200[10];
    v267 = *(v245 + v266);
    if (*(v202 + v266))
    {
      if (!v267)
      {
        goto LABEL_31;
      }

      sub_1D4F28F1C();
      v269 = v268;

      if ((v269 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v267)
    {
      goto LABEL_31;
    }

    v270 = *(v594 + 48);
    v271 = v596;
    OUTLINED_FUNCTION_8_1();
    sub_1D4E69910(v272, v273, v274, v275);
    OUTLINED_FUNCTION_44_22();
    v276 = v611;
    OUTLINED_FUNCTION_8_1();
    v277 = v271;
    sub_1D4E69910(v278, v279, v280, v281);
    v282 = v595;
    OUTLINED_FUNCTION_14_54(v271, 1);
    if (v183)
    {
      OUTLINED_FUNCTION_1(v270 + v271);
      if (v183)
      {
        sub_1D4E50004(v271, &qword_1EC7EAC98, &unk_1D561DA80);
        goto LABEL_74;
      }
    }

    else
    {
      v283 = v271;
      v284 = v592;
      sub_1D4E69910(v283, v592, &qword_1EC7EAC98, &unk_1D561DA80);
      OUTLINED_FUNCTION_1(v270 + v277);
      if (!v285)
      {
        v286 = v593;
        v287 = v591;
        (*(v593 + 32))(v591, v270 + v277, v282);
        OUTLINED_FUNCTION_9_69();
        sub_1D51B9308(v288, v289, MEMORY[0x1E6975E60]);
        v290 = v284;
        v291 = v282;
        v292 = sub_1D5614D18();
        v270 = *(v286 + 8);
        v270(v287, v291);
        v270(v290, v291);
        sub_1D4E50004(v596, &qword_1EC7EAC98, &unk_1D561DA80);
        if ((v292 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_74:
        v293 = v200[12];
        v294 = *(v276 + v293);
        if (*(v202 + v293))
        {
          if (!v294)
          {
            goto LABEL_31;
          }

          sub_1D4F29174();
          v296 = v295;

          if ((v296 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v294)
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_62_0();
        v180 = v588[2];
        OUTLINED_FUNCTION_8_1();
        sub_1D4E69910(v297, v298, v299, v300);
        OUTLINED_FUNCTION_44_22();
        OUTLINED_FUNCTION_8_1();
        sub_1D4E69910(v301, v302, v303, v304);
        v305 = v590;
        OUTLINED_FUNCTION_57(v180, 1, v590);
        if (v183)
        {
          OUTLINED_FUNCTION_57(v270 + v180, 1, v305);
          if (!v183)
          {
            goto LABEL_86;
          }

          sub_1D4E50004(v180, &qword_1EC7EA3B8, &unk_1D561E370);
        }

        else
        {
          sub_1D4E69910(v180, v586[2], &qword_1EC7EA3B8, &unk_1D561E370);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v270 + v180, 1, v305);
          if (EnumTagSinglePayload == 1)
          {
            OUTLINED_FUNCTION_136();
            v307 = OUTLINED_FUNCTION_215();
            v308(v307);
LABEL_86:
            v192 = &qword_1EC7EB578;
            v193 = &unk_1D5644D10;
            goto LABEL_19;
          }

          v202 = v587;
          v309 = OUTLINED_FUNCTION_114_4();
          v310(v309);
          OUTLINED_FUNCTION_2_101();
          sub_1D51B9308(v311, v312, MEMORY[0x1E6969550]);
          OUTLINED_FUNCTION_119_7();
          v313 = OUTLINED_FUNCTION_31_7();
          (v270)(v313);
          v314 = OUTLINED_FUNCTION_215();
          (v270)(v314);
          sub_1D4E50004(v180, &qword_1EC7EA3B8, &unk_1D561E370);
          if ((&qword_1EC7EA3B8 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        OUTLINED_FUNCTION_62_0();
        v315 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v315, &a13);
        OUTLINED_FUNCTION_17_54();
        v316 = OUTLINED_FUNCTION_95_0();
        v317 = v588[0];
        OUTLINED_FUNCTION_14_54(v316, v318);
        if (v183)
        {
          OUTLINED_FUNCTION_1(v270 + v202);
          if (!v183)
          {
            goto LABEL_95;
          }

          sub_1D4E50004(v588[1], &qword_1EC7EF5C8, &unk_1D5632130);
        }

        else
        {
          sub_1D4E69910(v202, v586[0], &qword_1EC7EF5C8, &unk_1D5632130);
          v319 = __swift_getEnumTagSinglePayload(v270 + v202, 1, v317);
          if (v319 == 1)
          {
            OUTLINED_FUNCTION_136();
            v320(v586[0], v588[0]);
LABEL_95:
            v192 = &qword_1EC7EF640;
            v193 = &unk_1D5632460;
            v321 = &a13;
LABEL_169:
            v194 = *(v321 - 32);
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v322();
          OUTLINED_FUNCTION_65_19();
          sub_1D51B9308(v323, v324, MEMORY[0x1E6976610]);
          OUTLINED_FUNCTION_76();
          v325 = OUTLINED_FUNCTION_51();
          (unk_1D5632130)(v325);
          v326 = OUTLINED_FUNCTION_85();
          (unk_1D5632130)(v326);
          sub_1D4E50004(v200, &qword_1EC7EF5C8, &unk_1D5632130);
          if ((v317 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        OUTLINED_FUNCTION_62_0();
        v327 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v327, &a9);
        OUTLINED_FUNCTION_17_54();
        v328 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v328, v329, &v612);
        if (v183)
        {
          v330 = OUTLINED_FUNCTION_86_1(&a9);
          OUTLINED_FUNCTION_47_2(v330, v331, &v612);
          if (!v183)
          {
            goto LABEL_104;
          }

          sub_1D4E50004(v586[1], &qword_1EC7EF5D0, &unk_1D5632140);
        }

        else
        {
          v332 = OUTLINED_FUNCTION_145_0(&a9);
          sub_1D4E69910(v332, v581, v333, v334);
          v335 = OUTLINED_FUNCTION_72_1();
          v337 = __swift_getEnumTagSinglePayload(v335, v336, v584);
          if (v337 == 1)
          {
            OUTLINED_FUNCTION_136();
            v338(v581, v584);
LABEL_104:
            v192 = &qword_1EC7EF630;
            v193 = &qword_1D5632450;
            v321 = &a9;
            goto LABEL_169;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v339();
          OUTLINED_FUNCTION_61_21();
          sub_1D51B9308(v340, v341, MEMORY[0x1E6976038]);
          OUTLINED_FUNCTION_76();
          v342 = OUTLINED_FUNCTION_51();
          (unk_1D5632140)(v342);
          v343 = OUTLINED_FUNCTION_85();
          (unk_1D5632140)(v343);
          sub_1D4E50004(v200, &qword_1EC7EF5D0, &unk_1D5632140);
          if ((&qword_1EC7EF5D0 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        OUTLINED_FUNCTION_62_0();
        v344 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v344, &v609);
        OUTLINED_FUNCTION_17_54();
        v345 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v345, v346, &v606);
        if (v183)
        {
          v347 = OUTLINED_FUNCTION_86_1(&v609);
          OUTLINED_FUNCTION_47_2(v347, v348, &v606);
          if (!v183)
          {
            goto LABEL_113;
          }

          sub_1D4E50004(v582[0], &qword_1EC7EC530, &unk_1D5632150);
        }

        else
        {
          v349 = OUTLINED_FUNCTION_145_0(&v609);
          sub_1D4E69910(v349, v577[0], v350, v351);
          v352 = OUTLINED_FUNCTION_72_1();
          v354 = __swift_getEnumTagSinglePayload(v352, v353, v579);
          if (v354 == 1)
          {
            OUTLINED_FUNCTION_136();
            v355(v577[0], v579);
LABEL_113:
            v192 = &qword_1EC7EF628;
            v193 = &unk_1D5632440;
            v321 = &v609;
            goto LABEL_169;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v356();
          OUTLINED_FUNCTION_60_14();
          sub_1D51B9308(v357, v358, MEMORY[0x1E69768F8]);
          OUTLINED_FUNCTION_76();
          v359 = OUTLINED_FUNCTION_51();
          (unk_1D5632150)(v359);
          v360 = OUTLINED_FUNCTION_85();
          (unk_1D5632150)(v360);
          sub_1D4E50004(v200, &qword_1EC7EC530, &unk_1D5632150);
          if ((&qword_1EC7EC530 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        OUTLINED_FUNCTION_62_0();
        v361 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v361, &v603);
        OUTLINED_FUNCTION_17_54();
        v362 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v362, v363, &v600);
        if (v183)
        {
          v364 = OUTLINED_FUNCTION_86_1(&v603);
          OUTLINED_FUNCTION_47_2(v364, v365, &v600);
          if (!v183)
          {
            goto LABEL_122;
          }

          sub_1D4E50004(v577[1], &qword_1EC7EC528, &unk_1D5621070);
        }

        else
        {
          v366 = OUTLINED_FUNCTION_145_0(&v603);
          sub_1D4E69910(v366, v573, v367, v368);
          v369 = OUTLINED_FUNCTION_72_1();
          v371 = __swift_getEnumTagSinglePayload(v369, v370, v576);
          if (v371 == 1)
          {
            OUTLINED_FUNCTION_136();
            v372(v573, v576);
LABEL_122:
            v192 = &qword_1EC7EF620;
            v193 = &unk_1D5637E80;
            v321 = &v603;
            goto LABEL_169;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v373();
          OUTLINED_FUNCTION_59_14();
          sub_1D51B9308(v374, v375, MEMORY[0x1E6976A28]);
          OUTLINED_FUNCTION_76();
          v376 = OUTLINED_FUNCTION_51();
          (unk_1D5621070)(v376);
          v377 = OUTLINED_FUNCTION_85();
          (unk_1D5621070)(v377);
          sub_1D4E50004(v200, &qword_1EC7EC528, &unk_1D5621070);
          if ((&qword_1EC7EC528 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        OUTLINED_FUNCTION_62_0();
        v378 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v378, &v597);
        OUTLINED_FUNCTION_17_54();
        v379 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_47_2(v379, v380, &v594);
        if (v183)
        {
          v381 = OUTLINED_FUNCTION_86_1(&v597);
          OUTLINED_FUNCTION_47_2(v381, v382, &v594);
          if (!v183)
          {
            goto LABEL_131;
          }

          sub_1D4E50004(v574, &qword_1EC7EF5D8, &unk_1D5632160);
        }

        else
        {
          v383 = OUTLINED_FUNCTION_145_0(&v597);
          sub_1D4E69910(v383, v571[0], v384, v385);
          v386 = OUTLINED_FUNCTION_72_1();
          v388 = __swift_getEnumTagSinglePayload(v386, v387, v572[0]);
          if (v388 == 1)
          {
            OUTLINED_FUNCTION_136();
            v389(v571[0], v572[0]);
LABEL_131:
            v192 = &qword_1EC7EF618;
            v193 = &unk_1D5632430;
            v321 = &v597;
            goto LABEL_169;
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_79_5();
          OUTLINED_FUNCTION_78();
          OUTLINED_FUNCTION_133();
          v390();
          OUTLINED_FUNCTION_56_19();
          sub_1D51B9308(v391, v392, MEMORY[0x1E69774B0]);
          OUTLINED_FUNCTION_76();
          v393 = OUTLINED_FUNCTION_51();
          (unk_1D5632160)(v393);
          v394 = OUTLINED_FUNCTION_85();
          (unk_1D5632160)(v394);
          sub_1D4E50004(v200, &qword_1EC7EF5D8, &unk_1D5632160);
          if ((&qword_1EC7EF5D8 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_42_23();
        v395 = *(v594 + 48);
        v396 = OUTLINED_FUNCTION_20_50();
        OUTLINED_FUNCTION_30_23(v396, &v590);
        OUTLINED_FUNCTION_17_54();
        v397 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_57(v397, v398, v595);
        if (v183)
        {
          v399 = OUTLINED_FUNCTION_86_1(&v590);
          OUTLINED_FUNCTION_57(v399, v400, v595);
          if (v183)
          {
            sub_1D4E50004(v570, &qword_1EC7EAC98, &unk_1D561DA80);
            goto LABEL_143;
          }
        }

        else
        {
          v401 = OUTLINED_FUNCTION_145_0(&v590);
          sub_1D4E69910(v401, v566, v402, v403);
          v404 = OUTLINED_FUNCTION_72_1();
          OUTLINED_FUNCTION_57(v404, v405, v595);
          if (!v406)
          {
            OUTLINED_FUNCTION_79_5();
            v407 = OUTLINED_FUNCTION_78();
            v395 = v595;
            v408(v407);
            OUTLINED_FUNCTION_9_69();
            sub_1D51B9308(v409, v410, MEMORY[0x1E6975E60]);
            OUTLINED_FUNCTION_76();
            v411 = OUTLINED_FUNCTION_51();
            (unk_1D561DA80)(v411);
            v412 = OUTLINED_FUNCTION_85();
            (unk_1D561DA80)(v412);
            sub_1D4E50004(v200, &qword_1EC7EAC98, &unk_1D561DA80);
            if ((&qword_1EC7EAC98 & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_143:
            OUTLINED_FUNCTION_42_23();
            OUTLINED_FUNCTION_62_0();
            v413 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v413, v588);
            OUTLINED_FUNCTION_17_54();
            v414 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v414, v415, &v587);
            if (v183)
            {
              v416 = OUTLINED_FUNCTION_86_1(v588);
              OUTLINED_FUNCTION_47_2(v416, v417, &v587);
              if (!v183)
              {
                goto LABEL_150;
              }

              sub_1D4E50004(v568, &qword_1EC7EB5C0, &unk_1D56223C0);
            }

            else
            {
              v418 = OUTLINED_FUNCTION_145_0(v588);
              sub_1D4E69910(v418, v563, v419, v420);
              v421 = OUTLINED_FUNCTION_72_1();
              v423 = __swift_getEnumTagSinglePayload(v421, v422, v567);
              if (v423 == 1)
              {
                OUTLINED_FUNCTION_136();
                v424(v563, v567);
LABEL_150:
                v192 = &qword_1EC7EF610;
                v193 = &unk_1D5637E70;
                v321 = v588;
                goto LABEL_169;
              }

              OUTLINED_FUNCTION_35_0();
              OUTLINED_FUNCTION_79_5();
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_133();
              v425();
              OUTLINED_FUNCTION_54_17();
              sub_1D51B9308(v426, v427, MEMORY[0x1E6975EA0]);
              OUTLINED_FUNCTION_76();
              v428 = OUTLINED_FUNCTION_51();
              (unk_1D56223C0)(v428);
              v429 = OUTLINED_FUNCTION_85();
              (unk_1D56223C0)(v429);
              sub_1D4E50004(v200, &qword_1EC7EB5C0, &unk_1D56223C0);
              if ((&qword_1EC7EB5C0 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            OUTLINED_FUNCTION_62_0();
            v430 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v430, &v584);
            OUTLINED_FUNCTION_17_54();
            v431 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v431, v432, &v585);
            if (v183)
            {
              v433 = OUTLINED_FUNCTION_86_1(&v584);
              OUTLINED_FUNCTION_47_2(v433, v434, &v585);
              if (!v183)
              {
                goto LABEL_159;
              }

              sub_1D4E50004(v564, &unk_1EC7E9CA8, &unk_1D561D1D0);
            }

            else
            {
              v435 = OUTLINED_FUNCTION_145_0(&v584);
              sub_1D4E69910(v435, v555, v436, v437);
              v438 = OUTLINED_FUNCTION_72_1();
              v440 = __swift_getEnumTagSinglePayload(v438, v439, v565);
              if (v440 == 1)
              {
                OUTLINED_FUNCTION_136();
                v441(v555, v565);
LABEL_159:
                v192 = &qword_1EC7E9FB0;
                v193 = &qword_1D562C590;
                v321 = &v584;
                goto LABEL_169;
              }

              OUTLINED_FUNCTION_35_0();
              OUTLINED_FUNCTION_79_5();
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_133();
              v442();
              OUTLINED_FUNCTION_67_20();
              sub_1D51B9308(v443, v444, MEMORY[0x1E6968FC8]);
              OUTLINED_FUNCTION_76();
              v445 = OUTLINED_FUNCTION_51();
              (unk_1D561D1D0)(v445);
              v446 = OUTLINED_FUNCTION_85();
              (unk_1D561D1D0)(v446);
              sub_1D4E50004(v200, &unk_1EC7E9CA8, &unk_1D561D1D0);
              if ((&unk_1EC7E9CA8 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            OUTLINED_FUNCTION_62_0();
            v447 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v447, v571);
            OUTLINED_FUNCTION_17_54();
            v448 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v448, v449, &a16);
            if (v183)
            {
              v450 = OUTLINED_FUNCTION_86_1(v571);
              OUTLINED_FUNCTION_47_2(v450, v451, &a16);
              if (!v183)
              {
                goto LABEL_168;
              }

              sub_1D4E50004(v550, &qword_1EC7EA3B8, &unk_1D561E370);
            }

            else
            {
              v452 = OUTLINED_FUNCTION_145_0(v571);
              sub_1D4E69910(v452, v551, v453, v454);
              v455 = OUTLINED_FUNCTION_72_1();
              v457 = __swift_getEnumTagSinglePayload(v455, v456, v590);
              if (v457 == 1)
              {
                OUTLINED_FUNCTION_136();
                v458(v551, v590);
LABEL_168:
                v192 = &qword_1EC7EB578;
                v193 = &unk_1D5644D10;
                v321 = v571;
                goto LABEL_169;
              }

              v459 = v550;
              v460 = OUTLINED_FUNCTION_114_4();
              v461(v460);
              OUTLINED_FUNCTION_2_101();
              sub_1D51B9308(v462, v463, MEMORY[0x1E6969550]);
              OUTLINED_FUNCTION_119_7();
              v464 = OUTLINED_FUNCTION_31_7();
              (v395)(v464);
              v465 = OUTLINED_FUNCTION_215();
              (v395)(v465);
              sub_1D4E50004(v459, &qword_1EC7EA3B8, &unk_1D561E370);
              if ((&qword_1EC7EA3B8 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            OUTLINED_FUNCTION_31_31();
            if (v468)
            {
              if (!v466)
              {
                goto LABEL_31;
              }

              OUTLINED_FUNCTION_31_0(v467);
              v471 = v183 && v469 == v470;
              if (!v471 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else if (v466)
            {
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_42_23();
            OUTLINED_FUNCTION_62_0();
            v472 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v472, v572);
            OUTLINED_FUNCTION_17_54();
            v473 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v473, v474, &a16);
            if (v183)
            {
              v475 = OUTLINED_FUNCTION_86_1(v572);
              OUTLINED_FUNCTION_47_2(v475, v476, &a16);
              if (!v183)
              {
                goto LABEL_187;
              }

              sub_1D4E50004(v552, &qword_1EC7EA3B8, &unk_1D561E370);
            }

            else
            {
              v477 = OUTLINED_FUNCTION_145_0(v572);
              sub_1D4E69910(v477, v553, v478, v479);
              v480 = OUTLINED_FUNCTION_72_1();
              v482 = __swift_getEnumTagSinglePayload(v480, v481, v590);
              if (v482 == 1)
              {
                OUTLINED_FUNCTION_136();
                v483(v553, v590);
LABEL_187:
                v192 = &qword_1EC7EB578;
                v193 = &unk_1D5644D10;
                v321 = v572;
                goto LABEL_169;
              }

              OUTLINED_FUNCTION_35_0();
              v484 = v552;
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_133();
              v485();
              OUTLINED_FUNCTION_2_101();
              sub_1D51B9308(v486, v487, MEMORY[0x1E6969550]);
              v200 = v553;
              sub_1D5614D18();
              v488 = OUTLINED_FUNCTION_51();
              (v395)(v488);
              (v395)(v200, v395);
              sub_1D4E50004(v484, &qword_1EC7EA3B8, &unk_1D561E370);
              if ((&qword_1EC7EA3B8 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            OUTLINED_FUNCTION_31_31();
            if (v491)
            {
              if (!v489)
              {
                goto LABEL_31;
              }

              OUTLINED_FUNCTION_31_0(v490);
              v494 = v183 && v492 == v493;
              if (!v494 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else if (v489)
            {
              goto LABEL_31;
            }

            OUTLINED_FUNCTION_42_23();
            OUTLINED_FUNCTION_62_0();
            v495 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v495, v577);
            OUTLINED_FUNCTION_17_54();
            v496 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v496, v497, &v578);
            if (v183)
            {
              v498 = OUTLINED_FUNCTION_86_1(v577);
              OUTLINED_FUNCTION_47_2(v498, v499, &v578);
              if (!v183)
              {
                goto LABEL_205;
              }

              sub_1D4E50004(v558, &off_1EC7EB5B0, &unk_1D5632170);
            }

            else
            {
              v500 = OUTLINED_FUNCTION_145_0(v577);
              sub_1D4E69910(v500, v557, v501, v502);
              v503 = OUTLINED_FUNCTION_72_1();
              v505 = __swift_getEnumTagSinglePayload(v503, v504, v560);
              if (v505 == 1)
              {
                OUTLINED_FUNCTION_136();
                v506(v557, v560);
LABEL_205:
                v192 = &qword_1EC7EF608;
                v193 = &unk_1D5632420;
                v321 = v577;
                goto LABEL_169;
              }

              OUTLINED_FUNCTION_35_0();
              OUTLINED_FUNCTION_79_5();
              OUTLINED_FUNCTION_78();
              OUTLINED_FUNCTION_133();
              v507();
              sub_1D51B926C(&qword_1EC7EF660, &qword_1EC7EF668, MEMORY[0x1E6976F38], MEMORY[0x1E6975000]);
              OUTLINED_FUNCTION_76();
              v508 = OUTLINED_FUNCTION_51();
              (unk_1D5632170)(v508);
              v509 = OUTLINED_FUNCTION_85();
              (unk_1D5632170)(v509);
              sub_1D4E50004(v200, &off_1EC7EB5B0, &unk_1D5632170);
              if ((&off_1EC7EB5B0 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_42_23();
            OUTLINED_FUNCTION_62_0();
            v510 = OUTLINED_FUNCTION_20_50();
            OUTLINED_FUNCTION_30_23(v510, v582);
            OUTLINED_FUNCTION_17_54();
            v511 = OUTLINED_FUNCTION_95_0();
            OUTLINED_FUNCTION_47_2(v511, v512, &v580);
            if (v183)
            {
              v513 = OUTLINED_FUNCTION_86_1(v582);
              OUTLINED_FUNCTION_47_2(v513, v514, &v580);
              if (v183)
              {
                sub_1D4E50004(v562, &qword_1EC7ECC80, &unk_1D5622EA0);
                goto LABEL_217;
              }
            }

            else
            {
              v515 = OUTLINED_FUNCTION_145_0(v582);
              sub_1D4E69910(v515, v561, v516, v517);
              v518 = OUTLINED_FUNCTION_72_1();
              OUTLINED_FUNCTION_47_2(v518, v519, &v580);
              if (!v520)
              {
                v522 = v562;
                v523 = v562 + v395;
                v524 = v547;
                sub_1D51B91B4(v523, v547, type metadata accessor for CuratorRelationshipProvider);
                v525 = v561;
                v526 = OUTLINED_FUNCTION_93();
                v528 = sub_1D4F4AA50(v526, v527);
                sub_1D51B9214(v524, type metadata accessor for CuratorRelationshipProvider);
                sub_1D51B9214(v525, type metadata accessor for CuratorRelationshipProvider);
                sub_1D4E50004(v522, &qword_1EC7ECC80, &unk_1D5622EA0);
                if (!v528)
                {
                  goto LABEL_31;
                }

LABEL_217:
                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_19_49(*(v529 + 112));
                sub_1D4EF6F7C();
                if ((v530 & 1) == 0)
                {
                  goto LABEL_31;
                }

                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_109_11(*(v531 + 116));
                if ((sub_1D560D6E8() & 1) == 0)
                {
                  goto LABEL_31;
                }

                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_109_11(*(v532 + 120));
                if ((sub_1D4F3B22C() & 1) == 0)
                {
                  goto LABEL_31;
                }

                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_31_31();
                if (v535)
                {
                  if (!v533)
                  {
                    goto LABEL_31;
                  }

                  OUTLINED_FUNCTION_31_0(v534);
                  v538 = v183 && v536 == v537;
                  if (!v538 && (sub_1D5616168() & 1) == 0)
                  {
                    goto LABEL_31;
                  }
                }

                else if (v533)
                {
                  goto LABEL_31;
                }

                OUTLINED_FUNCTION_42_23();
                OUTLINED_FUNCTION_19_49(*(v539 + 128));
                sub_1D4F286E0();
                if (v540)
                {
                  OUTLINED_FUNCTION_42_23();
                  OUTLINED_FUNCTION_19_49(*(v541 + 132));
                  sub_1D4F286E0();
                  if (v542)
                  {
                    OUTLINED_FUNCTION_42_23();
                    OUTLINED_FUNCTION_19_49(*(v543 + 136));
                    sub_1D4F286E0();
                    if (v544)
                    {
                      OUTLINED_FUNCTION_42_23();
                      OUTLINED_FUNCTION_19_49(*(v545 + 140));
                      sub_1D4F286E0();
                    }
                  }
                }

                goto LABEL_31;
              }

              OUTLINED_FUNCTION_7_76();
              sub_1D51B9214(v561, v521);
            }

            v192 = &qword_1EC7EF600;
            v193 = &unk_1D5640880;
            v321 = v582;
            goto LABEL_169;
          }

          (*(v593 + 8))(v566, v595);
        }

        v192 = &qword_1EC7EF648;
        v193 = &unk_1D5632470;
        v321 = &v590;
        goto LABEL_169;
      }

      (*(v593 + 8))(v284, v282);
    }

    v192 = &qword_1EC7EF648;
    v193 = &unk_1D5632470;
    v194 = v277;
    goto LABEL_30;
  }

  if (*v262 != *v264)
  {
    LOBYTE(v265) = 1;
  }

  if ((v265 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_31:
  OUTLINED_FUNCTION_46();
}

void sub_1D51B7550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4();
  v271 = v25;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v291 = v30;
  OUTLINED_FUNCTION_70_0();
  v290 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v270 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v289 = v36;
  OUTLINED_FUNCTION_70_0();
  v288 = sub_1D56109F8();
  OUTLINED_FUNCTION_4();
  v268 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v287 = v42;
  OUTLINED_FUNCTION_70_0();
  v285 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v266 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v46);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_3();
  v283 = v48;
  OUTLINED_FUNCTION_70_0();
  v282 = sub_1D56134E8();
  OUTLINED_FUNCTION_4();
  v264 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v52);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  v281 = v54;
  OUTLINED_FUNCTION_70_0();
  v278 = sub_1D5613198();
  OUTLINED_FUNCTION_4();
  v263 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v58);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  v276 = v60;
  OUTLINED_FUNCTION_70_0();
  v61 = sub_1D5610CB8();
  v62 = OUTLINED_FUNCTION_12_0(v61, &a18);
  v261 = v63;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v65);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v67);
  v68 = sub_1D56128E8();
  v69 = OUTLINED_FUNCTION_12_0(v68, &a16);
  v260 = v70;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5C8, &unk_1D5632130);
  OUTLINED_FUNCTION_22(v72);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v74);
  v296 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v294 = v75;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_5_0();
  v293 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v79 = OUTLINED_FUNCTION_22(v78);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13();
  v286 = v80;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_135();
  v284 = v82;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v84);
  v295 = sub_1D5610978();
  OUTLINED_FUNCTION_4();
  v280 = v85;
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  v279 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v89 = OUTLINED_FUNCTION_22(v88);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13();
  v277 = v90;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v92);
  v93 = sub_1D56106B8();
  v94 = OUTLINED_FUNCTION_12_0(v93, &a12);
  v258 = v95;
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v97);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v99);
  v100 = sub_1D560F928();
  v101 = OUTLINED_FUNCTION_12_0(v100, &a10);
  v257 = v102;
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v104);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v255 - v106;
  v108 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v110 = v109;
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_5();
  v114 = v113 - v112;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v115);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v255 - v117;
  if (v20[1])
  {
    v21 = *v20;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v119 = type metadata accessor for UploadedAudioPropertyProvider(0);
  sub_1D4E69910(v20 + v119[5], v118, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v118, 1, v108);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v110 + 32))(v114, v118, v108);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_64_15();
    sub_1D51B9308(v121, v122, MEMORY[0x1E6976F78]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v110 + 8))(v114, v108);
  }

  v123 = v295;
  sub_1D4F8596C();
  sub_1D4E69910(v20 + v119[7], v107, &qword_1EC7EDB98, L"X\b\a");
  v124 = v272;
  OUTLINED_FUNCTION_57(v107, 1, v272);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v125 = v257;
    v126 = v256;
    (*(v257 + 32))(v256, v107, v124);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_58_18();
    sub_1D51B9308(v127, v128, MEMORY[0x1E6975938]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v129 = *(v125 + 8);
    v21 = v125 + 8;
    v129(v126, v124);
  }

  OUTLINED_FUNCTION_108_0(v20 + v119[8], &qword_1EC7EC478, &unk_1D56299D0, &a11);
  v130 = OUTLINED_FUNCTION_35_1();
  v131 = v273;
  OUTLINED_FUNCTION_57(v130, v132, v273);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5();
    v133 = OUTLINED_FUNCTION_145_2();
    v134(v133);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_55_18();
    sub_1D51B9308(v135, v136, MEMORY[0x1E6975D70]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v124 + 8))(v21, v131);
  }

  v137 = v20 + v119[9];
  if (v137[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v138 = *v137;
    OUTLINED_FUNCTION_27();
    if ((v138 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    MEMORY[0x1DA6EC100](v139);
  }

  if (*(v20 + v119[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_108_0(v20 + v119[11], &qword_1EC7EAC98, &unk_1D561DA80, &a13);
  v140 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v140, v141, v123);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v143 = v279;
    v142 = v280;
    v144 = OUTLINED_FUNCTION_123_2();
    v145(v144);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_9_69();
    sub_1D51B9308(v146, v147, MEMORY[0x1E6975E58]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v142 + 8))(v143, v123);
  }

  v148 = v278;
  if (*(v20 + v119[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v149 = v275;
  OUTLINED_FUNCTION_108_0(v20 + v119[13], &qword_1EC7EA3B8, &unk_1D561E370, &a14);
  v150 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v150, v151, v296);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v152 = OUTLINED_FUNCTION_123_2();
    v153(v152);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_101();
    sub_1D51B9308(v154, v155, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v156 = OUTLINED_FUNCTION_215();
    v157(v156);
  }

  v158 = v285;
  v159 = v274;
  OUTLINED_FUNCTION_108_0(v20 + v119[14], &qword_1EC7EF5C8, &unk_1D5632130, &a15);
  v160 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v160, v161, v159);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v162 = v260;
    v163 = v148;
    v164 = v158;
    v165 = v149;
    v166 = v259;
    v167 = OUTLINED_FUNCTION_117_6();
    v168(v167);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_65_19();
    sub_1D51B9308(v169, v170, MEMORY[0x1E6976608]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v171 = *(v162 + 8);
    v21 = v162 + 8;
    v172 = v166;
    v149 = v165;
    v158 = v164;
    v148 = v163;
    v171(v172, v159);
  }

  OUTLINED_FUNCTION_108_0(v20 + v119[15], &qword_1EC7EF5D0, &unk_1D5632140, &a17);
  v173 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v173, v174, v149);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5();
    v175 = OUTLINED_FUNCTION_145_2();
    v176(v175);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_61_21();
    sub_1D51B9308(v177, v178, MEMORY[0x1E6976030]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v179 = *(v159 + 8);
    v159 += 8;
    v179(v21, v149);
  }

  v180 = v276;
  sub_1D4E69910(v24 + v119[16], v276, &qword_1EC7EC530, &unk_1D5632150);
  v181 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v181, v182, v148);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5();
    v183 = v262;
    v184(v262, v180, v148);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_60_14();
    sub_1D51B9308(v185, v186, MEMORY[0x1E69768F0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v187 = *(v159 + 8);
    v159 += 8;
    v187(v183, v148);
  }

  v188 = v288;
  sub_1D4E69910(v24 + v119[17], v281, &qword_1EC7EC528, &unk_1D5621070);
  v189 = OUTLINED_FUNCTION_35_1();
  v190 = v282;
  OUTLINED_FUNCTION_57(v189, v191, v282);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5();
    v192 = OUTLINED_FUNCTION_145_2();
    v193(v192);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_59_14();
    sub_1D51B9308(v194, v195, MEMORY[0x1E6976A20]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v196 = *(v159 + 8);
    v159 += 8;
    v196(v21, v190);
  }

  v197 = v283;
  sub_1D4E69910(v24 + v119[18], v283, &qword_1EC7EF5D8, &unk_1D5632160);
  v198 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v198, v199, v158);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_117_5();
    v200 = v265;
    v201(v265, v197, v158);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_56_19();
    sub_1D51B9308(v202, v203, MEMORY[0x1E69774A8]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v159 + 8))(v200, v158);
  }

  v204 = v295;
  v205 = v277;
  sub_1D4E69910(v24 + v119[19], v277, &qword_1EC7EAC98, &unk_1D561DA80);
  v206 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v206, v207, v204);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v209 = v279;
    v208 = v280;
    OUTLINED_FUNCTION_113_9();
    v210(v209, v205, v204);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_9_69();
    sub_1D51B9308(v211, v212, MEMORY[0x1E6975E58]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v213 = *(v208 + 8);
    v158 = v208 + 8;
    v213(v209, v204);
  }

  v214 = v287;
  sub_1D4E69910(v24 + v119[20], v287, &qword_1EC7EB5C0, &unk_1D56223C0);
  v215 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v215, v216, v188);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v217 = v268;
    OUTLINED_FUNCTION_113_9();
    v218 = v267;
    v219(v267, v214, v188);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_54_17();
    sub_1D51B9308(v220, v221, MEMORY[0x1E6975E98]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v222 = *(v217 + 8);
    v158 = v217 + 8;
    v222(v218, v188);
  }

  sub_1D4E69910(v24 + v119[21], v289, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v223 = OUTLINED_FUNCTION_35_1();
  v224 = v290;
  OUTLINED_FUNCTION_57(v223, v225, v290);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v226 = v270;
    v158 = v269;
    v227 = OUTLINED_FUNCTION_123_2();
    v228(v227);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_67_20();
    sub_1D51B9308(v229, v230, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v204 = v226 + 8;
    v231 = OUTLINED_FUNCTION_215();
    v232(v231);
  }

  sub_1D4E69910(v24 + v119[22], v284, &qword_1EC7EA3B8, &unk_1D561E370);
  v233 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v233, v234, v296);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v235 = OUTLINED_FUNCTION_95_11();
    v236(v235);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_101();
    sub_1D51B9308(v237, v238, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v204 + 8))(v224, v158);
  }

  v239 = (v24 + v119[23]);
  v240 = v239[1];
  if (v240)
  {
    v204 = *v239;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v24 + v119[24], v286, &qword_1EC7EA3B8, &unk_1D561E370);
  v241 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v241, v242, v296);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v243 = OUTLINED_FUNCTION_95_11();
    v244(v243);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_101();
    sub_1D51B9308(v245, v246, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v204 + 8))(v240, v158);
  }

  if (*(v24 + v119[25] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v24 + v119[26], v291, &off_1EC7EB5B0, &unk_1D5632170);
  v247 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v247, v248, v292);
  if (v120)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v249 = OUTLINED_FUNCTION_123_2();
    v250(v249);
    OUTLINED_FUNCTION_27();
    sub_1D51B926C(&qword_1EC7EF6C0, &qword_1EC7EC7E8, MEMORY[0x1E6976F30], MEMORY[0x1E6974FF8]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v251 = OUTLINED_FUNCTION_215();
    v252(v251);
  }

  sub_1D4F84DAC();
  v253 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v253, v254);
  sub_1D560D838();
  sub_1D51B9308(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  sub_1D5610088();
  sub_1D51B9308(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  if (*(v24 + v119[31] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112_9();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51B8BD4()
{
  sub_1D56162D8();
  sub_1D51B7550(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1D5616328();
}

void sub_1D51B8C88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4E69910(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D51B3BA0(v2 + 32, v3);
    v4 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v4, v5, &qword_1D561C420);
  }

  else
  {

    sub_1D51B3BA0(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D51B8D44(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D51B7550(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t sub_1D51B8DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D51B9308(&qword_1EC7F1510, type metadata accessor for UploadedAudioPropertyProvider, &unk_1D56406D0);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D51B8E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 116);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D51B8EDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 116);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D51B8F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 120);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D51B8FE8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 124));

  return v2;
}

uint64_t sub_1D51B9020(uint64_t a1)
{
  v2 = sub_1D51B9308(&qword_1EC7F1510, type metadata accessor for UploadedAudioPropertyProvider, &unk_1D56406D0);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D51B909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D51B9308(&qword_1EC7F1500, type metadata accessor for UploadedAudioPropertyProvider, &unk_1D56406A8);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D51B9130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D51B9308(&qword_1EC7F1508, type metadata accessor for UploadedAudioPropertyProvider, &unk_1D5640668);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D51B91B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D51B9214(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D51B926C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA448, &unk_1D561D110);
    sub_1D51B9308(a2, MEMORY[0x1E6976F28], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D51B9308(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_70_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_72_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_74_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_75_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_76_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_78_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_81_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_87_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_89_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_91_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_119_7()
{

  return sub_1D5614D18();
}

void sub_1D51B95B4(uint64_t a1)
{
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D5615A98();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D4F03980(0, v2 & ~(v2 >> 63), 0);
    v3 = v36;
    v33 = sub_1D53FF338(a1);
    v34 = v4;
    v35 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v29 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v8 = v33;
        v9 = v35;
        v31 = v34;
        v10 = sub_1D51D30D4(v33, v34, v35, a1);
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);

        v36 = v3;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D4F03980(v13 > 1, v14 + 1, 1);
          v3 = v36;
        }

        *(v3 + 16) = v14 + 1;
        v15 = v3 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        if (v30)
        {
          if (!v9)
          {
            goto LABEL_36;
          }

          v16 = v3;
          if (sub_1D5615A68())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v21 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1650, &qword_1D5640A30);
          v22 = sub_1D56155B8();
          sub_1D5615AE8();
          v22(v32, 0);
        }

        else
        {
          if (v9)
          {
            goto LABEL_37;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v16 = v3;
          v17 = 1 << *(a1 + 32);
          if (v8 >= v17)
          {
            goto LABEL_32;
          }

          v18 = v8 >> 6;
          v19 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(a1 + 36) != v31)
          {
            goto LABEL_34;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v21 = v29;
          }

          else
          {
            v23 = v18 << 6;
            v24 = v18 + 1;
            v25 = (a1 + 64 + 8 * v18);
            v21 = v29;
            while (v24 < (v17 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_1D4ECC79C(v8, v31, 0);
                v17 = __clz(__rbit64(v26)) + v23;
                goto LABEL_27;
              }
            }

            sub_1D4ECC79C(v8, v31, 0);
          }

LABEL_27:
          v28 = *(a1 + 36);
          v33 = v17;
          v34 = v28;
          v35 = 0;
        }

        v3 = v16;
        if (v6 == v21)
        {
          sub_1D4ECC79C(v33, v34, v35);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1D51B98D8()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_204_2();
  v0[8] = sub_1D51D32C4;
  v0[9] = 0;

  OUTLINED_FUNCTION_318();
  v0[11] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_27_0(&unk_1D564E110);
  v4 = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_183_3(v2);

  return v4();
}

uint64_t sub_1D51B9994()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_356();
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D51B9AAC()
{
  OUTLINED_FUNCTION_80();
  v2 = v1[13];
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v1[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D4F00DEC();
      v4 = v14;
    }

    v5 = *(v4 + 16);
    OUTLINED_FUNCTION_224_1();
    if (v8)
    {
      OUTLINED_FUNCTION_22_41(v7);
      sub_1D4F00DEC();
      v6 = v15;
    }

    *(v6 + 16) = v0;
    *(v6 + 8 * v5 + 32) = v2;
    v1[11] = v6;
    OUTLINED_FUNCTION_27_0(&unk_1D564E110);
    v16 = v9;
    v10 = swift_task_alloc();
    v1[12] = v10;
    *v10 = v1;
    OUTLINED_FUNCTION_183_3(v10);

    return v16();
  }

  else
  {
    OUTLINED_FUNCTION_351();

    v12 = v1[1];
    v13 = v1[11];

    return v12(v13);
  }
}

uint64_t sub_1D51B9C00()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1568, &qword_1D5640910);
  v1[11] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D51B9D10, 0, 0);
}

uint64_t sub_1D51B9D10()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_204_2();
  v0[8] = sub_1D52B248C;
  v0[9] = 0;

  OUTLINED_FUNCTION_318();
  v0[16] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_27_0(&unk_1D564E0D8);
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[17] = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_179_3(v2);

  return v6(v4);
}

uint64_t sub_1D51B9DCC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_356();
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51B9EDC()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[11];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[12]) == 1)
  {
    OUTLINED_FUNCTION_351();

    sub_1D4E50004(v1, &qword_1EC7F1568, &qword_1D5640910);

    v2 = v0[1];
    v3 = v0[16];

    return v2(v3);
  }

  else
  {
    v5 = v0[16];
    sub_1D51D3078();
    sub_1D51D3024();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v0[16];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_100_8();
      sub_1D4F0216C();
      v7 = v14;
    }

    OUTLINED_FUNCTION_222_1();
    if (v9)
    {
      OUTLINED_FUNCTION_16_56(v8);
      sub_1D4F0216C();
      v7 = v15;
    }

    sub_1D4E50004(v0[15], &qword_1EC7EAF50, &qword_1D561DD10);
    *(v7 + 16) = v5;
    OUTLINED_FUNCTION_220_1();
    sub_1D51D3078();
    v0[16] = v7;
    OUTLINED_FUNCTION_27_0(&unk_1D564E0D8);
    v16 = v10;
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[17] = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_179_3(v11);

    return v16(v13);
  }
}

uint64_t sub_1D51BA0D4()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D51BA144()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v0[1] = v1 + 1;
    v3 = v0[2];
    if (!__OFADD__(v3, 1))
    {
      v0[2] = v3 + 1;

      return v3;
    }
  }

  __break(1u);
  return result;
}

void sub_1D51BA1C8()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
    }

    else
    {
      v0[1] = v1 + 1;
      v3 = v0[2];
      if (!__OFADD__(v3, 1))
      {
        v0[2] = v3 + 1;
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D51BA21C()
{
  OUTLINED_FUNCTION_60();
  v0[89] = v1;
  v0[88] = v2;
  v0[87] = v3;
  v0[86] = v4;
  v0[85] = v5;
  v6 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  OUTLINED_FUNCTION_69(v6);
  v0[90] = v7;
  v0[91] = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D51BA2CC()
{
  v259 = v0;
  if (*(v0[87] + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D5621E90;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15D0, &qword_1D56409C0);
    inited = swift_initStaticObject();
    *(v2 + 32) = inited;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E0, &qword_1D56409D0);
    *(v2 + 40) = swift_initStaticObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1600, &qword_1D56409F0);
    *(v2 + 48) = swift_initStaticObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1610, &qword_1D5640A00);
    v5 = swift_initStaticObject();
    *(v2 + 56) = v5;
    *(v2 + 64) = swift_initStaticObject();
    *(v2 + 72) = swift_initStaticObject();
    *(v2 + 80) = swift_initStaticObject();
    v208 = inited;
    v218 = v5;
    if (sub_1D4E62628(v2))
    {
      sub_1D5011DA4(v2, v6, v7, v8, v9, v10, v11, v12, v157, v168, v178, v188, v198, inited, v5, v228, v238, v249.n128_i64[0], v249.n128_i64[1], v250, *(&v250 + 1), v251, *(&v251 + 1), v252, v253, v254, v255, v256, v257, v258);
    }

    else
    {
      swift_setDeallocating();
      sub_1D4EFF20C();
      v13 = MEMORY[0x1E69E7CD0];
    }

    v17 = v0[85];
    v0[83] = v13;
    v239 = sub_1D51BE884(v17);
    OUTLINED_FUNCTION_185_3();
    i = 0;
    if (v1)
    {
      while (1)
      {
LABEL_12:
        OUTLINED_FUNCTION_239();
        v249.n128_u8[0] = inited;
        sub_1D51C75A0(&v249);
        sub_1D52C8A20();
      }
    }

    while (1)
    {
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v19 >= v5)
      {
        break;
      }

      v1 = *(v3 + 8 * v19);
      ++i;
      if (v1)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_185_3();
    for (i = 0; ; ++i)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v5)
      {
        v21 = v0[87];

        sub_1D51B95B4(v0[83]);
        v23 = v22;

        v0[84] = v23;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
        OUTLINED_FUNCTION_182_2();
        sub_1D4E62A60(v25, v26, &unk_1D561D780, v27);
        v198 = v24;
        i = sub_1D5614CF8();
        v2 = v28;

        sub_1D4F40C50(v21);
        v228 = v29;
        OUTLINED_FUNCTION_315();
        v31 = v30;
        v3 = *(v30 + 16);
        v32 = *(v30 + 24) >> 1;
        v1 = v3 + 1;
        if (v32 <= v3)
        {
          goto LABEL_54;
        }

        goto LABEL_19;
      }

      v1 = *(v3 + 8 * v20);
      if (v1)
      {
        while (1)
        {
          OUTLINED_FUNCTION_239();
          v249.n128_u8[0] = inited;
          sub_1D51C75A0(&v249);
          sub_1D52C8A20();
        }
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    OUTLINED_FUNCTION_121_7();
    sub_1D4F0029C();
    v31 = v143;
    v32 = *(v143 + 24) >> 1;
LABEL_19:
    *(v31 + 16) = v1;
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_80_9(v33);
    *(v34 + 104) = 0;
    v35 = v3 + 2;

    if (v32 < v35)
    {
      OUTLINED_FUNCTION_121_7();
      sub_1D4F0029C();
      v31 = v144;
    }

    v36 = v208;
    *(v31 + 16) = v35;
    v37 = v31 + 80 * v1;
    *(v37 + 32) = i;
    *(v37 + 40) = v2;
    OUTLINED_FUNCTION_18_52(v37, v157, v168, v178, v188, v198, v208, v218, v228, v239, v249, v250, v251, v252);

    OUTLINED_FUNCTION_166_1();
    if (v39)
    {
      OUTLINED_FUNCTION_22_41(v38);
      sub_1D4F0029C();
      v31 = v145;
    }

    OUTLINED_FUNCTION_124_6();
    OUTLINED_FUNCTION_80_9(v40);
    OUTLINED_FUNCTION_18_52(v41, v158, v169, v179, v189, v199, v209, v219, v229, v240, v249, v250, v251, v252);
    v42 = OUTLINED_FUNCTION_252("catalog_song");
    v44 = v43;
    v45 = *(v31 + 16);
    v46 = *(v31 + 24);

    if (v45 >= v46 >> 1)
    {
      OUTLINED_FUNCTION_54_18();
      sub_1D4F0029C();
      v31 = v146;
    }

    OUTLINED_FUNCTION_124_6();
    *(v47 + 32) = v42;
    *(v47 + 40) = v44;
    OUTLINED_FUNCTION_18_52(v47, v159, v170, v180, v190, v200, v210, v220, v230, v241, v249, v250, v251, v252);
    OUTLINED_FUNCTION_279();
    if (!(v50 ^ v51 | v49))
    {
      OUTLINED_FUNCTION_25(v48);
      sub_1D4F0029C();
      v31 = v147;
    }

    *(v31 + 16) = v45;
    OUTLINED_FUNCTION_176_2();
    OUTLINED_FUNCTION_280();
    *(v53 + 32) = v52 & 0xFFFFFFFFFFFFLL | 0x2045000000000000;
    *(v53 + 40) = 0xE800000000000000;
    OUTLINED_FUNCTION_18_52(v53, v160, v171, v181, v191, v201, v211, v221, v231, v242, v249, v250, v251, v252);
    if (qword_1EDD5A228 != -1)
    {
      OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    }

    v54 = *(v36 + 16);
    v55 = *(v36 + 24);
    v56 = *(v31 + 16);
    v57 = *(v31 + 24);

    if (v56 >= v57 >> 1)
    {
      OUTLINED_FUNCTION_54_18();
      sub_1D4F0029C();
      v31 = v148;
    }

    OUTLINED_FUNCTION_124_6();
    *(v58 + 32) = v54;
    *(v58 + 40) = v55;
    OUTLINED_FUNCTION_18_52(v58, v161, v172, v182, v192, v202, v212, v222, v232, v243, v249, v250, v251, v252);
    OUTLINED_FUNCTION_279();
    if (!(v50 ^ v51 | v49))
    {
      OUTLINED_FUNCTION_25(v59);
      sub_1D4F0029C();
      v31 = v149;
    }

    *(v31 + 16) = v56;
    OUTLINED_FUNCTION_176_2();
    *(v60 + 32) = v61;
    *(v60 + 40) = 0xE400000000000000;
    OUTLINED_FUNCTION_18_52(v60, v162, v173, v183, v193, v203, v213, v223, v233, v244, v249, v250, v251, v252);
    v62 = sub_1D51D2E5C(&qword_1EC7F15B8, &qword_1EC7EABD8, &unk_1D561D780);
    OUTLINED_FUNCTION_9_0();
    v0[59] = 0xD000000000000021;
    v0[60] = v63;
    v0[61] = 60;
    v0[62] = 0xE100000000000000;
    v0[63] = 95;
    v0[64] = 0xE100000000000000;
    v64 = sub_1D4F53278();

    v65 = MEMORY[0x1E69E6158];
    v163 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_3_31();
    v0[65] = OUTLINED_FUNCTION_361(v66, v67, v68, v69, v70, v71, v72, v73, v163, v64, v64, v64);
    v0[66] = v74;
    v0[67] = 62;
    v0[68] = 0xE100000000000000;
    v0[69] = 95;
    v0[70] = 0xE100000000000000;
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_361(v75, v76, v77, v78, v79, v80, v81, v82, v65, v64, v64, v64);
    OUTLINED_FUNCTION_188_3();

    v0[71] = v0 + 65;
    v0[72] = v54;
    v0[73] = 46;
    v0[74] = 0xE100000000000000;
    v0[75] = 95;
    v0[76] = 0xE100000000000000;
    OUTLINED_FUNCTION_3_31();
    v91 = OUTLINED_FUNCTION_361(v83, v84, v85, v86, v87, v88, v89, v90, v65, v64, v64, v64);
    v93 = v92;

    v0[77] = v91;
    v0[78] = v93;
    v0[79] = 8236;
    v0[80] = 0xE200000000000000;
    v0[81] = 95;
    v0[82] = 0xE100000000000000;
    OUTLINED_FUNCTION_3_31();
    v102 = OUTLINED_FUNCTION_361(v94, v95, v96, v97, v98, v99, v100, v101, v65, v64, v64, v64);
    v104 = v103;

    v105 = *(v31 + 16);
    OUTLINED_FUNCTION_320();
    if (v39)
    {
      OUTLINED_FUNCTION_25(v106);
      sub_1D4F0029C();
      v31 = v150;
    }

    *(v31 + 16) = v93;
    v107 = v31 + 80 * v105;
    *(v107 + 32) = v234;
    *(v107 + 40) = v249;
    *(v107 + 56) = v204;
    *(v107 + 64) = v62;
    *(v107 + 72) = v102;
    *(v107 + 80) = v104;
    OUTLINED_FUNCTION_173_1(v107);

    OUTLINED_FUNCTION_166_1();
    if (v39)
    {
      OUTLINED_FUNCTION_22_41(v108);
      sub_1D4F0029C();
      v31 = v151;
    }

    v109 = v224;
    OUTLINED_FUNCTION_124_6();
    OUTLINED_FUNCTION_103_11();
    *(v110 + 32) = v111;
    *(v110 + 40) = 0xE900000000000020;
    v112 = v249;
    v113 = v250;
    v114 = v251;
    *(v110 + 96) = v252;
    *(v110 + 64) = v113;
    *(v110 + 80) = v114;
    *(v110 + 48) = v112;
    v115 = MEMORY[0x1E69E6530];
    *(v110 + 104) = 0;
    v0[37] = v115;
    v0[38] = &off_1F50BFF78;
    v0[34] = v245;
    sub_1D4E628D4((v0 + 34), (v0 + 2));
    OUTLINED_FUNCTION_172_3();
    OUTLINED_FUNCTION_279();
    if (!(v50 ^ v51 | v49))
    {
      OUTLINED_FUNCTION_25(v116);
      sub_1D4F0029C();
      v31 = v152;
    }

    *(v31 + 16) = v93;
    OUTLINED_FUNCTION_176_2();
    OUTLINED_FUNCTION_140_7(v117);
    __swift_destroy_boxed_opaque_existential_1(v0 + 34);
    OUTLINED_FUNCTION_166_1();
    if (v39)
    {
      OUTLINED_FUNCTION_22_41(v118);
      sub_1D4F0029C();
      v31 = v153;
    }

    OUTLINED_FUNCTION_124_6();
    OUTLINED_FUNCTION_106_8(v119);
    OUTLINED_FUNCTION_18_52(v120, v164, v174, v184, v194, v204, v214, v224, v234, v245, v249, v250, v251, v252);
    v122 = *(v109 + 16);
    v121 = *(v109 + 24);
    v123 = *(v31 + 24);

    if (v93 + 2 > (v123 >> 1))
    {
      OUTLINED_FUNCTION_58_19();
      sub_1D4F0029C();
      v31 = v154;
    }

    OUTLINED_FUNCTION_125_8();
    *(v124 + 32) = v122;
    *(v124 + 40) = v121;
    OUTLINED_FUNCTION_18_52(v124, v165, v175, v185, v195, v205, v215, v225, v235, v246, v249, v250, v251, v252);
    v125 = *(v31 + 24);
    if (v93 + 3 > (v125 >> 1))
    {
      OUTLINED_FUNCTION_22_41(v125);
      sub_1D4F0029C();
      v31 = v155;
    }

    OUTLINED_FUNCTION_83_11();
    OUTLINED_FUNCTION_276(v126);
    OUTLINED_FUNCTION_18_52(v127, v166, v176, v186, v196, v206, v216, v226, v236, v247, v249, v250, v251, v252);
    v0[42] = v115;
    v0[43] = &off_1F50BFF78;
    v0[39] = v248;
    sub_1D4E628D4((v0 + 39), (v0 + 12));
    OUTLINED_FUNCTION_160_5();
    v128 = *(v31 + 24);
    v129 = v93 + 4;
    if (v129 > (v128 >> 1))
    {
      OUTLINED_FUNCTION_25(v128);
      sub_1D4F0029C();
      v31 = v156;
    }

    *(v31 + 16) = v129;
    OUTLINED_FUNCTION_176_2();
    OUTLINED_FUNCTION_141_3(v130);
    __swift_destroy_boxed_opaque_existential_1(v0 + 39);
    OUTLINED_FUNCTION_166_1();
    if (v39)
    {
      OUTLINED_FUNCTION_22_41(v131);
      sub_1D4F0029C();
    }

    OUTLINED_FUNCTION_124_6();
    OUTLINED_FUNCTION_148_7(v132);
    OUTLINED_FUNCTION_18_52(v133, v167, v177, v187, v197, v207, v217, v227, v237, v248, v249, v250, v251, v252);
    OUTLINED_FUNCTION_57_1();
    sub_1D54F08F4(v134, v135, v136, v137, v138);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[92] = v139;
    *v139 = v140;
    v139[1] = sub_1D51BAC80;
    v141 = v0[89];
    v142 = v0[88];

    return sub_1D52EF728((v0 + 28), (v0 + 49), v142, v141);
  }

  else
  {

    v14 = v0[1];
    v15 = MEMORY[0x1E69E7CC0];

    return v14(v15);
  }
}

uint64_t sub_1D51BAC80()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
    sub_1D51D2984(v3 + 392);
    *(v3 + 800) = v0;
    v7 = OUTLINED_FUNCTION_57_20();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    *(v3 + 744) = *(v3 + 224);
    v10 = *(v3 + 248);
    *(v3 + 352) = *(v3 + 232);
    *(v3 + 368) = v10;
    *(v3 + 384) = *(v3 + 264);
    OUTLINED_FUNCTION_27_0(&unk_1D566D128);
    v15 = v11;
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v3 + 752) = v12;
    *v12 = v13;
    v12[1] = sub_1D51BAE10;

    return v15(v3 + 352, &unk_1D566D190, 0);
  }
}

uint64_t sub_1D51BAE10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[95] = v6;
  v3[96] = v0;

  if (v0)
  {
    sub_1D51D2984((v3 + 49));
    v7 = OUTLINED_FUNCTION_12_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27_0(&unk_1D56409B8);
    v13 = v10;
    v11 = swift_task_alloc();
    v3[97] = v11;
    *v11 = v5;
    v11[1] = sub_1D51BAF84;

    return v13();
  }
}

uint64_t sub_1D51BAF84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 784) = v5;
  *(v3 + 792) = v0;

  if (v0)
  {
    sub_1D51D2984(v3 + 392);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D51BB09C()
{
  OUTLINED_FUNCTION_60();

  sub_1D51D2984(v0 + 352);
  *(v0 + 800) = *(v0 + 768);
  v1 = OUTLINED_FUNCTION_57_20();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D51BB0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v18 = 0;
  v19 = *(v14 + 784);
  v20 = *(v19 + 16);
  v40 = v19 + 32;
  v21 = *(v14 + 792);
  v22 = MEMORY[0x1E69E7CC0];
  while (v20 != v18)
  {
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v15, v16, v17);
    }

    v23 = *(v14 + 760);
    v24 = *(v14 + 728);
    v25 = *(v40 + 8 * v18);

    sub_1D51D2F74(v14 + 392, v14 + 432);
    sub_1D51CE098(v23, v25, (v14 + 392), v14 + 176);
    sub_1D51C6050((v14 + 176), v24);
    if (v21)
    {

      sub_1D51D2984(v14 + 352);

      sub_1D51D2984(v14 + 392);

      *(v14 + 800) = v21;
      OUTLINED_FUNCTION_57_20();
      OUTLINED_FUNCTION_89();

      return MEMORY[0x1EEE6DFA0](v15, v16, v17);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_100_8();
      sub_1D4F00EDC();
      v22 = v28;
    }

    OUTLINED_FUNCTION_97_2();
    if (v27)
    {
      OUTLINED_FUNCTION_16_56(v26);
      sub_1D4F00EDC();
      v22 = v29;
    }

    *(v22 + 16) = v23;
    OUTLINED_FUNCTION_220_1();
    v15 = OUTLINED_FUNCTION_205_2();
    v21 = 0;
    ++v18;
  }

  sub_1D51D2984(v14 + 392);

  sub_1D51D2984(v14 + 352);

  OUTLINED_FUNCTION_51_15();
  OUTLINED_FUNCTION_89();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, v40, a11, a12, a13, a14);
}

uint64_t sub_1D51BB2D8()
{
  OUTLINED_FUNCTION_60();

  sub_1D51D2984(v0 + 352);
  *(v0 + 800) = *(v0 + 792);
  v1 = OUTLINED_FUNCTION_57_20();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D51BB338()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D51BB394(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51BC2B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 16);
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D51BC3D0()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  OUTLINED_FUNCTION_55();

  return v1();
}