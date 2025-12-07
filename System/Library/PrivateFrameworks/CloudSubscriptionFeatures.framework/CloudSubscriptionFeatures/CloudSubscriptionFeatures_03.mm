void sub_1DF4C8108(uint64_t a1)
{
  *(*v2 + 608) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1DF4C8248, 0, 0);
  }
}

void sub_1DF4C8248()
{
  v1 = v0[40];
  __swift_project_boxed_opaque_existential_0(&v1[v0[67]], *&v1[v0[67] + 24]);

  v2 = v1;

  v3 = swift_task_alloc();
  v0[77] = v3;
  *v3 = v0;
  v3[1] = sub_1DF4C8388;

  JUMPOUT(0x1DF561DC0);
}

uint64_t sub_1DF4C8388(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {
    v4 = sub_1DF4C8CF0;
  }

  else
  {
    v4 = sub_1DF4C84A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF4C84A0()
{
  v78 = v0;
  v70 = v0[71];
  v1 = v0[67];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[51];
  v5 = v0[40];

  __swift_project_boxed_opaque_existential_0((v5 + v1), *(v5 + v1 + 24));

  sub_1DF564724();
  sub_1DF5646E4();
  v70(v3, v2, v4);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C04();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[73];
  v10 = v0[61];
  v11 = v0[51];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v76 = v13;
    *v12 = 134349314;
    v14 = sub_1DF5646F4();
    v9(v10, v11);
    *(v12 + 4) = v14;
    *(v12 + 12) = 2082;
    v15 = sub_1DF564E04();
    v17 = sub_1DF47EF6C(v15, v16, &v76);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1DF47C000, v6, v7, "%{public}llu [Start] [Sync] %{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1E12D75F0](v13, -1, -1);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }

  else
  {
    v9(v0[61], v0[51]);
  }

  v71 = v0[78];
  v73 = v0[79];
  v18 = v0[69];
  v19 = v0[68];
  v21 = v0[38];
  v20 = v0[39];
  v23 = v0[36];
  v22 = v0[37];
  v25 = v0[34];
  v24 = v0[35];
  v26 = sub_1DF487DC4(9, v0[62], 0, 0);
  v27 = sub_1DF4CB370(&v76, v71, v21, v20, v25, v24, v23, v22, v19, v18);
  v29 = v0[71];
  v30 = v0[62];
  v31 = v0[51];
  if (v73)
  {
    v32 = v0[59];
    sub_1DF48AD44(9u, v26, 0, 0);
    v29(v32, v30, v31);
    v33 = sub_1DF564794();
    v34 = sub_1DF564C04();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[73];
    v37 = v0[59];
    v38 = v0[51];
    if (v35)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v76 = v40;
      *v39 = 134349314;
      v41 = sub_1DF5646F4();
      v36(v37, v38);
      *(v39 + 4) = v41;
      *(v39 + 12) = 2082;
      v42 = sub_1DF564E04();
      v44 = sub_1DF47EF6C(v42, v43, &v76);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_1DF47C000, v33, v34, "%{public}llu [Finish] [Sync] FAILURE %{public}s", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1E12D75F0](v40, -1, -1);
      MEMORY[0x1E12D75F0](v39, -1, -1);
    }

    else
    {
      v36(v37, v38);
    }

    v75 = v0[73];
    v58 = v0[62];
    v59 = v0[51];
    swift_willThrow();

    return v75(v58, v59);
  }

  else
  {
    v45 = v0[60];
    v74 = v76;
    v72 = v77;
    sub_1DF48AD44(9u, v26, v27, v28);

    v29(v45, v30, v31);
    v46 = sub_1DF564794();
    v47 = sub_1DF564C04();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[73];
    v69 = v0[62];
    v50 = v0[60];
    v51 = v0[51];
    if (v48)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v76 = v53;
      *v52 = 134349314;
      v54 = sub_1DF5646F4();
      v49(v50, v51);
      *(v52 + 4) = v54;
      *(v52 + 12) = 2082;
      v55 = sub_1DF564E04();
      v57 = sub_1DF47EF6C(v55, v56, &v76);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_1DF47C000, v46, v47, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1E12D75F0](v53, -1, -1);
      MEMORY[0x1E12D75F0](v52, -1, -1);
    }

    else
    {
      v49(v50, v51);
    }

    v49(v69, v51);

    swift_bridgeObjectRelease_n();

    if (v72)
    {
      v61 = v0[41];
      swift_getErrorValue();
      v62 = v0[24];
      v63 = v0[25];
      v64 = v74;
      v65 = sub_1DF49A0C0(v62, v63);
      v61(0, v65);
      sub_1DF4D8314(v74);
    }

    else
    {
      if (*&v74[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v74[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL || (sub_1DF5650D4() & 1) != 0)
      {
        sub_1DF4CAE20(v74, v0[40]);
        sub_1DF4D8314(v74);
      }

      v66 = v0[41];
      v67 = v74;
      v66(v74, 0);
      sub_1DF4D8314(v74);
    }

    sub_1DF4D8314(v74);

    v68 = v0[1];

    return v68();
  }
}

uint64_t sub_1DF4C8CF0()
{
  v200 = v0;

  v1 = *(v0 + 632);
  *(v0 + 224) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 400);
    if (swift_getEnumCaseMultiPayload() == 2)
    {

      v4 = sub_1DF564794();
      v5 = sub_1DF564C44();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v0 + 304);
        v197 = *(v0 + 312);
        v7 = *(v0 + 288);
        v8 = *(v0 + 296);
        v10 = *(v0 + 272);
        v9 = *(v0 + 280);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        p_receiver = v12;
        *v11 = 136446466;
        v13 = MEMORY[0x1E12D6280](v10, v9, v7, v8);
        v15 = sub_1DF47EF6C(v13, v14, &p_receiver);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2082;
        *(v11 + 14) = sub_1DF47EF6C(v6, v197, &p_receiver);
        _os_log_impl(&dword_1DF47C000, v4, v5, "[%{public}s] Feature %{public}s received 204 network response", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D75F0](v12, -1, -1);
        MEMORY[0x1E12D75F0](v11, -1, -1);
      }

      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 360);
      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      v175 = v16;
      v178 = *(v0 + 328);
      v173 = *(v0 + 304);
      v174 = *(v0 + 312);
      sub_1DF564484();
      sub_1DF5643D4();
      (*(v18 + 8))(v19, v20);
      v21 = *(v18 + 56);
      v21(v17, 0, 1, v20);
      sub_1DF4952D8(v17, v16);
      v22 = type metadata accessor for CloudFeature(0);
      v23 = objc_allocWithZone(v22);
      v24 = &v23[OBJC_IVAR___CloudFeature_limit];
      *v24 = 0;
      v24[8] = 1;
      v25 = &v23[OBJC_IVAR___CloudFeature_accessToken];
      *v25 = 0;
      v25[1] = 0;
      v26 = OBJC_IVAR___CloudFeature_ttl;
      v21(&v23[OBJC_IVAR___CloudFeature_ttl], 1, 1, v20);
      v23[OBJC_IVAR___CloudFeature_canUse] = 0;
      v27 = &v23[OBJC_IVAR___CloudFeature_featureID];
      *v27 = v173;
      v27[1] = v174;
      swift_beginAccess();
      *v24 = 0;
      v24[8] = 1;
      swift_beginAccess();
      *v25 = 0;
      v25[1] = 0;
      swift_beginAccess();

      sub_1DF4BEC40(v175, &v23[v26]);
      swift_endAccess();
      *(v0 + 208) = v23;
      *(v0 + 216) = v22;
      v28 = objc_msgSendSuper2((v0 + 208), sel_init);
      sub_1DF47E5B4(v175, &qword_1ECE37A10, &qword_1DF567C00);
      sub_1DF47E5B4(v17, &qword_1ECE37A10, &qword_1DF567C00);
      v178(v28, 0);

      goto LABEL_50;
    }

    sub_1DF4D7CC4(v3);
  }

  sub_1DF4BECB0(0, &qword_1ED9560A8, 0x1E69E58C0);
  swift_getErrorValue();
  v29 = *(v0 + 24);
  v30 = *(v0 + 32);
  v31 = v1;
  v32 = sub_1DF49A0C0(v29, v30);
  v33 = sub_1DF4B3AA0(13);
  v34 = sub_1DF564CD4();

  v198 = v1;
  if (v34)
  {
    v182 = *(v0 + 568);
    v36 = *(v0 + 456);
    v35 = *(v0 + 464);
    v37 = v1;
    v179 = *(v0 + 408);
    v38 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_0(&v38[*(v0 + 536)], *&v38[*(v0 + 536) + 24]);

    v39 = v38;
    v40 = v37;
    sub_1DF564724();
    sub_1DF5646E4();
    v182(v36, v35, v179);
    v41 = sub_1DF564794();
    v42 = sub_1DF564C04();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 584);
    v45 = *(v0 + 456);
    v46 = *(v0 + 408);
    if (v43)
    {
      v47 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      p_receiver = &v192->receiver;
      *v47 = 134349314;
      v48 = sub_1DF5646F4();
      v44(v45, v46);
      *(v47 + 4) = v48;
      *(v47 + 12) = 2082;
      v49 = sub_1DF564E04();
      v51 = sub_1DF47EF6C(v49, v50, &p_receiver);

      *(v47 + 14) = v51;
      _os_log_impl(&dword_1DF47C000, v41, v42, "%{public}llu [Start] [Sync] %{public}s", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v192);
      MEMORY[0x1E12D75F0](v192, -1, -1);
      MEMORY[0x1E12D75F0](v47, -1, -1);
    }

    else
    {
      v44(*(v0 + 456), *(v0 + 408));
    }

    v84 = *(v0 + 641);
    v85 = sub_1DF487DC4(9, *(v0 + 464), 0, 0);
    v195 = v85;
    if (v84 != 1)
    {
      goto LABEL_22;
    }

    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v86 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(*(v0 + 304), *(v0 + 312), *(v0 + 544), *(v0 + 552), 1, 1);
    if (v86)
    {
      v87 = v86;
      sub_1DF4CAE20(v86, *(v0 + 320));

      v88 = v87;
      v89 = sub_1DF564794();
      v90 = sub_1DF564C24();

      v188 = v87;
      if (os_log_type_enabled(v89, v90))
      {
        v180 = *(v0 + 288);
        v184 = *(v0 + 296);
        v91 = v87;
        v93 = *(v0 + 272);
        v92 = *(v0 + 280);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        p_receiver = v96;
        *v94 = 136446466;
        v97 = MEMORY[0x1E12D6280](v93, v92, v180, v184);
        v99 = sub_1DF47EF6C(v97, v98, &p_receiver);

        *(v94 + 4) = v99;
        *(v94 + 12) = 2114;
        *(v94 + 14) = v88;
        *v95 = v91;
        v100 = v88;
        _os_log_impl(&dword_1DF47C000, v89, v90, "[%{public}s] FeatureRequest failed because we're missing auth header, falling back to cached feature %{public}@", v94, 0x16u);
        sub_1DF47E5B4(v95, &unk_1ECE37F10, &qword_1DF567510);
        MEMORY[0x1E12D75F0](v95, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v96);
        MEMORY[0x1E12D75F0](v96, -1, -1);
        MEMORY[0x1E12D75F0](v94, -1, -1);
      }

      v185 = 0;
      v85 = v195;
    }

    else
    {
LABEL_22:
      swift_getErrorValue();
      v188 = sub_1DF49A0C0(*(v0 + 96), *(v0 + 104));
      v185 = 1;
    }

    v101 = *(v0 + 568);
    v102 = *(v0 + 464);
    v103 = *(v0 + 448);
    v104 = *(v0 + 408);
    sub_1DF48AD44(9u, v85, 0, 0xE000000000000000);

    v101(v103, v102, v104);
    v105 = sub_1DF564794();
    v106 = sub_1DF564C04();
    v107 = os_log_type_enabled(v105, v106);
    v108 = *(v0 + 584);
    v190 = *(v0 + 464);
    v109 = *(v0 + 448);
    v110 = *(v0 + 408);
    v111 = *(v0 + 320);
    if (v107)
    {
      v112 = swift_slowAlloc();
      v176 = v111;
      v113 = swift_slowAlloc();
      p_receiver = v113;
      *v112 = 134349314;
      v114 = sub_1DF5646F4();
      v108(v109, v110);
      *(v112 + 4) = v114;
      *(v112 + 12) = 2082;
      v115 = sub_1DF564E04();
      v117 = sub_1DF47EF6C(v115, v116, &p_receiver);

      *(v112 + 14) = v117;
      _os_log_impl(&dword_1DF47C000, v105, v106, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v112, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v113);
      MEMORY[0x1E12D75F0](v113, -1, -1);
      MEMORY[0x1E12D75F0](v112, -1, -1);

      v108(v190, v110);
      v118 = v198;
    }

    else
    {
      v108(*(v0 + 448), *(v0 + 408));

      v108(v190, v110);
      v118 = v198;
    }

    swift_bridgeObjectRelease_n();
    v154 = v188;
    if (v185)
    {
      v155 = 0;
      v156 = v188;
    }

    else
    {
      v155 = v188;
      v156 = 0;
    }

    (*(v0 + 328))(v155, v156);
    v170 = v118;
  }

  else
  {

    v52 = v1;
    v53 = sub_1DF564794();
    v54 = sub_1DF564C24();

    if (os_log_type_enabled(v53, v54))
    {
      v56 = *(v0 + 288);
      v55 = *(v0 + 296);
      v57 = *(v0 + 272);
      v58 = *(v0 + 280);
      v59 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      p_receiver = &v193->receiver;
      *v59 = 136446466;
      v60 = MEMORY[0x1E12D6280](v57, v58, v56, v55);
      v62 = sub_1DF47EF6C(v60, v61, &p_receiver);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2082;
      swift_getErrorValue();
      v63 = sub_1DF5651B4();
      v65 = sub_1DF47EF6C(v63, v64, &p_receiver);

      *(v59 + 14) = v65;
      _os_log_impl(&dword_1DF47C000, v53, v54, "[%{public}s] FeatureRequest failed with error: %{public}s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v193, -1, -1);
      MEMORY[0x1E12D75F0](v59, -1, -1);
    }

    v183 = *(v0 + 568);
    v67 = *(v0 + 432);
    v66 = *(v0 + 440);
    v68 = *(v0 + 408);
    v69 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_0(&v69[*(v0 + 536)], *&v69[*(v0 + 536) + 24]);

    v70 = v69;
    v71 = v198;
    sub_1DF564724();
    sub_1DF5646E4();
    v183(v67, v66, v68);
    v72 = sub_1DF564794();
    v73 = sub_1DF564C04();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 584);
    v76 = *(v0 + 432);
    v77 = *(v0 + 408);
    if (v74)
    {
      v194 = v73;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      p_receiver = v79;
      *v78 = 134349314;
      v80 = sub_1DF5646F4();
      v75(v76, v77);
      *(v78 + 4) = v80;
      *(v78 + 12) = 2082;
      v81 = sub_1DF564E04();
      v83 = sub_1DF47EF6C(v81, v82, &p_receiver);

      *(v78 + 14) = v83;
      _os_log_impl(&dword_1DF47C000, v72, v194, "%{public}llu [Start] [Sync] %{public}s", v78, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x1E12D75F0](v79, -1, -1);
      MEMORY[0x1E12D75F0](v78, -1, -1);
    }

    else
    {
      v75(*(v0 + 432), *(v0 + 408));
    }

    v119 = *(v0 + 641);
    v120 = *(v0 + 640);
    v196 = sub_1DF487DC4(9, *(v0 + 440), 0, 0);
    if ((v120 & 1) != 0 || !v119)
    {
      goto LABEL_34;
    }

    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v121 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(*(v0 + 304), *(v0 + 312), *(v0 + 544), *(v0 + 552), 1, 1);
    if (v121)
    {
      v122 = v121;
      sub_1DF4CAE20(v121, *(v0 + 320));

      v123 = v122;
      v124 = sub_1DF564794();
      v125 = sub_1DF564C44();

      v189 = v122;
      if (os_log_type_enabled(v124, v125))
      {
        v181 = *(v0 + 288);
        v186 = *(v0 + 296);
        v126 = v122;
        v128 = *(v0 + 272);
        v127 = *(v0 + 280);
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        p_receiver = v131;
        *v129 = 136446466;
        v132 = MEMORY[0x1E12D6280](v128, v127, v181, v186);
        v134 = sub_1DF47EF6C(v132, v133, &p_receiver);

        *(v129 + 4) = v134;
        *(v129 + 12) = 2114;
        *(v129 + 14) = v123;
        *v130 = v126;
        v135 = v123;
        _os_log_impl(&dword_1DF47C000, v124, v125, "[%{public}s] Falling back to cached feature: %{public}@", v129, 0x16u);
        sub_1DF47E5B4(v130, &unk_1ECE37F10, &qword_1DF567510);
        MEMORY[0x1E12D75F0](v130, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v131);
        MEMORY[0x1E12D75F0](v131, -1, -1);
        MEMORY[0x1E12D75F0](v129, -1, -1);
      }

      v187 = 0;
    }

    else
    {
LABEL_34:
      swift_getErrorValue();
      v189 = sub_1DF49A0C0(*(v0 + 48), *(v0 + 56));
      v187 = 1;
    }

    v136 = *(v0 + 568);
    v137 = *(v0 + 440);
    v138 = *(v0 + 424);
    v139 = *(v0 + 408);
    sub_1DF48AD44(9u, v196, 0, 0xE000000000000000);

    v136(v138, v137, v139);
    v140 = sub_1DF564794();
    v141 = sub_1DF564C04();
    v142 = os_log_type_enabled(v140, v141);
    v143 = *(v0 + 584);
    v191 = *(v0 + 440);
    v144 = *(v0 + 424);
    v145 = *(v0 + 408);
    v146 = *(v0 + 320);
    if (v142)
    {
      v147 = swift_slowAlloc();
      v177 = v146;
      v148 = swift_slowAlloc();
      p_receiver = v148;
      *v147 = 134349314;
      v149 = sub_1DF5646F4();
      v143(v144, v145);
      *(v147 + 4) = v149;
      *(v147 + 12) = 2082;
      v150 = sub_1DF564E04();
      v152 = sub_1DF47EF6C(v150, v151, &p_receiver);

      *(v147 + 14) = v152;
      _os_log_impl(&dword_1DF47C000, v140, v141, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v147, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v148);
      MEMORY[0x1E12D75F0](v148, -1, -1);
      MEMORY[0x1E12D75F0](v147, -1, -1);

      v143(v191, v145);
      v153 = v198;
    }

    else
    {
      v143(*(v0 + 424), *(v0 + 408));

      v143(v191, v145);
      v153 = v198;
    }

    swift_bridgeObjectRelease_n();

    v157 = sub_1DF564794();
    v158 = sub_1DF564C14();

    if (os_log_type_enabled(v157, v158))
    {
      v160 = *(v0 + 288);
      v159 = *(v0 + 296);
      v162 = *(v0 + 272);
      v161 = *(v0 + 280);
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      p_receiver = v164;
      *v163 = 136446210;
      v165 = MEMORY[0x1E12D6280](v162, v161, v160, v159);
      v167 = sub_1DF47EF6C(v165, v166, &p_receiver);

      *(v163 + 4) = v167;
      _os_log_impl(&dword_1DF47C000, v157, v158, "[%{public}s] FeatureRequest returning result via completion handling error.", v163, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v164);
      v153 = v198;
      MEMORY[0x1E12D75F0](v164, -1, -1);
      MEMORY[0x1E12D75F0](v163, -1, -1);
    }

    v154 = v189;
    if (v187)
    {
      v168 = 0;
      v169 = v189;
    }

    else
    {
      v168 = v189;
      v169 = 0;
    }

    (*(v0 + 328))(v168, v169);
    v170 = v153;
  }

LABEL_50:

  v171 = *(v0 + 8);

  return v171();
}

uint64_t sub_1DF4CA134()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CA160, v1, 0);
}

uint64_t sub_1DF4CA160()
{
  v1 = sub_1DF4929F8(0x75746165466C6C61, 0xEB00000000736572, 300);
  v2 = *(v0 + 8);

  return v2(v1, 0, 0);
}

uint64_t sub_1DF4CA1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CA228, 0, 0);
}

uint64_t sub_1DF4CA228()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = swift_allocObject();
  *(v0 + 112) = v5;
  *(v5 + 16) = v4;
  v6 = *(v0 + 40);
  *(v5 + 40) = *(v0 + 56);
  *(v5 + 24) = v6;
  *(v5 + 56) = v3;
  *(v5 + 64) = v1;
  *(v5 + 72) = v2;
  *(v5 + 80) = *(v0 + 96);
  v7 = v4;

  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1DF4CA390;

  return sub_1DF531410(0x75746165466C6C61, 0xEB00000000736572, &unk_1DF568DB8, v5);
}

uint64_t sub_1DF4CA390(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1DF4CA4EC;
  }

  else
  {

    *(v4 + 136) = a1;
    v5 = sub_1DF4CA4C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4CA4EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4CA550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v12;
  *(v8 + 80) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4CA60C, 0, 0);
}

uint64_t sub_1DF4CA60C()
{
  v1 = v0[11];
  v2 = MEMORY[0x1E12D6280](v0[6], v0[7], v0[8], v0[9]);
  v4 = v3;
  v0[14] = v3;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1DF4CA6D8;
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];

  return sub_1DF4C6274(v8, v7, v2, v4, v6, v1);
}

uint64_t sub_1DF4CA6D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1DF4CA938;
  }

  else
  {

    *(v4 + 136) = a1;
    v5 = sub_1DF4CA808;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4CA808()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = sub_1DF564B44();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v3;

  sub_1DF4BF520(0, 0, v2, &unk_1DF568DC8, v8);

  *v6 = v1;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DF4CA938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4CA9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[47] = a5;
  v6[48] = a6;
  v6[46] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CA9C8, 0, 0);
}

uint64_t sub_1DF4CA9C8()
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED9556D8);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Determining if device has feature access.", v4, 2u);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v5 = *(v0 + 368);

  if (sub_1DF4BF050(v5))
  {
    v6 = _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0();
    *(v0 + 392) = v6;
    if (v6)
    {
      sub_1DF4D516C(*(v0 + 376), *(v0 + 384));
      v7 = sub_1DF481988();
      *(v0 + 152) = sub_1DF4BECB0(0, &qword_1ED954D38, 0x1E6959A40);
      *(v0 + 160) = &off_1F5A86EE8;
      *(v0 + 128) = v7;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0;
      v8 = sub_1DF531308();
      v10 = v9;
      type metadata accessor for Config();
      inited = swift_initStackObject();
      *(v0 + 400) = inited;
      *(inited + 32) = 0u;
      *(inited + 80) = 0u;
      *(inited + 96) = 0u;
      *(inited + 48) = 0u;
      *(inited + 64) = 0u;
      *(inited + 16) = v8;
      *(inited + 24) = v10;
      if (*(v0 + 248))
      {
        sub_1DF47E390((v0 + 224), v0 + 264);
        sub_1DF47E390((v0 + 264), v0 + 304);
        swift_beginAccess();
        sub_1DF4D78FC(v0 + 304, inited + 32);
        swift_endAccess();
      }

      else
      {
        sub_1DF47E5B4(v0 + 224, &qword_1ECE38370, &qword_1DF569E50);
      }

      v17 = type metadata accessor for SystemProperties();
      v18 = swift_initStaticObject();
      *(v0 + 208) = v17;
      *(v0 + 216) = &off_1F5A88E50;
      *(v0 + 184) = v18;
      *(v0 + 168) = inited;
      *(v0 + 176) = &off_1F5A86FD0;
      v19 = swift_task_alloc();
      *(v0 + 408) = v19;
      *v19 = v0;
      v19[1] = sub_1DF4CAD08;

      return (sub_1DF4D53FC)(v0 + 128);
    }
  }

  else
  {
    v12 = sub_1DF564794();
    v13 = sub_1DF564C14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DF47C000, v12, v13, "Device does not have access. Do not post the CFU.", v14, 2u);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DF4CAD08()
{
  v1 = *v0;
  v4 = *v0;

  sub_1DF4D78A8(v1 + 128);
  v2 = *(v4 + 8);

  return v2();
}

void sub_1DF4CAE20(void *a1, uint64_t a2)
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED9556D8);
  v5 = a1;
  v6 = sub_1DF564794();
  v7 = sub_1DF564C44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1DF47EF6C(*&v5[OBJC_IVAR___CloudFeature_featureID], *&v5[OBJC_IVAR___CloudFeature_featureID + 8], &v17);
    _os_log_impl(&dword_1DF47C000, v6, v7, "Validating feature %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  v11 = *(a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable);
  v10 = *(a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable + 8);

  sub_1DF4EC964(v5, v11, v10);
  v12 = v5;
  oslog = sub_1DF564794();
  v13 = sub_1DF564C04();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1DF47EF6C(*&v12[OBJC_IVAR___CloudFeature_featureID], *&v12[OBJC_IVAR___CloudFeature_featureID + 8], &v17);
    _os_log_impl(&dword_1DF47C000, oslog, v13, "Feature appears valid: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1E12D75F0](v15, -1, -1);
    MEMORY[0x1E12D75F0](v14, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1DF4CB370(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(Class, uint64_t), uint64_t a9, uint64_t a10)
{
  v86 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v90 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v75 - v18;
  v20 = sub_1DF564494();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v83 = (&v75 - v23);
  v84 = a1;
  v85 = v10;
  v81 = v17;
  v82 = v22;
  v79 = v24;
  v80 = v19;
  v78 = v25;
  if (!(a2 >> 62))
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v45 = sub_1DF5647B4();
    __swift_project_value_buffer(v45, qword_1ED9556D8);
    v46 = v86;

    v47 = sub_1DF564794();
    v48 = sub_1DF564C44();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v89[0] = v50;
      *v49 = 136446466;
      v51 = MEMORY[0x1E12D6280](v75, v76, v77, v46);
      v53 = sub_1DF47EF6C(v51, v52, v89);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_1DF47EF6C(v90, a4, v89);
      _os_log_impl(&dword_1DF47C000, v47, v48, "[%{public}s] No value returned for feature %{public}s assuming unavailable and stubbing in cache to prevent excessive requests.", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v50, -1, -1);
      MEMORY[0x1E12D75F0](v49, -1, -1);
    }

    v55 = v82;
    v54 = v83;
    v56 = v78;
    v57 = v79;
    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v58 = off_1ED955FF8;
    sub_1DF564484();
    sub_1DF5643D4();
    v59 = *(v57 + 1);
    v59(v56, v55);
    if (sub_1DF564A24())
    {
      sub_1DF5154B4();
    }

    else
    {
      v77 = a10;
      v76 = a9;
      sub_1DF564484();
      v60 = v80;
      sub_1DF5643D4();
      v59(v56, v55);
      v61 = *(v57 + 7);
      v61(v60, 0, 1, v55);
      sub_1DF4952D8(v60, v81);
      v78 = type metadata accessor for CloudFeature(0);
      v62 = objc_allocWithZone(v78);
      v86 = v59;
      v63 = v62;
      v79 = v58;
      v64 = v55;
      v65 = &v62[OBJC_IVAR___CloudFeature_limit];
      *v65 = 0;
      v65[8] = 1;
      v66 = &v62[OBJC_IVAR___CloudFeature_accessToken];
      *v66 = 0;
      *(v66 + 1) = 0;
      v67 = OBJC_IVAR___CloudFeature_ttl;
      v61(&v62[OBJC_IVAR___CloudFeature_ttl], 1, 1, v64);
      v63[OBJC_IVAR___CloudFeature_canUse] = 0;
      v68 = &v63[OBJC_IVAR___CloudFeature_featureID];
      *v68 = v90;
      v68[1] = a4;
      swift_beginAccess();
      *v65 = 0;
      v65[8] = 1;
      v55 = v64;
      v54 = v83;
      swift_beginAccess();
      *v66 = 0;
      *(v66 + 1) = 0;
      swift_beginAccess();

      v69 = &v63[v67];
      v70 = v81;
      sub_1DF4BEC40(v81, v69);
      swift_endAccess();
      v87.receiver = v63;
      v87.super_class = v78;
      v71 = objc_msgSendSuper2(&v87, sel_init);
      sub_1DF47E5B4(v70, &qword_1ECE37A10, &qword_1DF567C00);
      sub_1DF47E5B4(v80, &qword_1ECE37A10, &qword_1DF567C00);
      sub_1DF5642D4();
      swift_allocObject();
      v72 = sub_1DF5642C4();
      sub_1DF4FDDA0(v71, v72, v76, v77);

      v59 = v86;
    }

    v59(v54, v55);
    v73 = sub_1DF4B3AA0(4);
    v74 = v84;
    *v84 = v73;
    *(v74 + 8) = 1;
    return 0xD000000000000010;
  }

LABEL_24:
  v26 = sub_1DF564F04();
  if (!v26)
  {
    goto LABEL_25;
  }

LABEL_3:
  v27 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1E12D66D0](v27, a2);
    }

    else
    {
      if (v27 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v28 = *(a2 + 8 * v27 + 32);
    }

    v29 = v28;
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v31 = *&v28[OBJC_IVAR___CloudFeature_featureID] == v90 && *&v28[OBJC_IVAR___CloudFeature_featureID + 8] == a4;
    if (v31 || (sub_1DF5650D4() & 1) != 0)
    {
      break;
    }

    ++v27;
    if (v30 == v26)
    {
      goto LABEL_25;
    }
  }

  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1DF5647B4();
  __swift_project_value_buffer(v32, qword_1ED9556D8);
  v33 = v29;
  v34 = v86;

  v35 = sub_1DF564794();
  v36 = sub_1DF564C44();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v88[0] = v38;
    *v37 = 136446722;
    v39 = MEMORY[0x1E12D6280](v75, v76, v77, v34);
    v41 = sub_1DF47EF6C(v39, v40, v88);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_1DF47EF6C(v90, a4, v88);
    *(v37 + 22) = 1026;
    v42 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    LODWORD(v42) = v33[v42];

    *(v37 + 24) = v42;
    _os_log_impl(&dword_1DF47C000, v35, v36, "[%{public}s] Feature %{public}s fetched. Can use: %{BOOL,public}d", v37, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v38, -1, -1);
    MEMORY[0x1E12D75F0](v37, -1, -1);
  }

  else
  {
  }

  v43 = v84;
  result = 0;
  *v84 = v33;
  *(v43 + 8) = 0;
  return result;
}

uint64_t sub_1DF4CBC30()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v60 - v3;
  v5 = sub_1DF5644C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5644B4();
  v9 = sub_1DF5644A4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v13 = sub_1DF488298(8, v9, v11, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v20 = sub_1DF5647B4();
  __swift_project_value_buffer(v20, qword_1ED955E10);

  v21 = sub_1DF564794();
  v22 = sub_1DF564C44();

  v23 = os_log_type_enabled(v21, v22);
  v62 = v15;
  v63 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v65 = v25;
    *v24 = 136315138;

    v26 = MEMORY[0x1E12D6280](v13, v15, v17, v19);
    v28 = v27;

    v29 = sub_1DF47EF6C(v26, v28, &v65);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_1DF47C000, v21, v22, "[%s]Cache clear message received by featureaccessd!", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1E12D75F0](v25, -1, -1);
    MEMORY[0x1E12D75F0](v24, -1, -1);
  }

  v30 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24];
  v31 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 32];
  __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore], v30);
  v32 = (*(v31 + 32))(v30, v31);
  v61 = v17;
  if (v32 && (v33 = v32, v34 = [v32 aa_altDSID], v33, v34))
  {
    v35 = sub_1DF564944();
    v37 = v36;

    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    sub_1DF4FC728(v35, v37);
  }

  else
  {
    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    sub_1DF4FC728(0, 0);
  }

  v38 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v39 = sub_1DF564914();
  v40 = [v38 initWithSuiteName_];

  v41 = sub_1DF4FB5AC(v40);
  v42 = sub_1DF4CC244();
  sub_1DF4FB6B0(v42, v43);

  v44 = objc_opt_self();
  v45 = [v44 sharedInstance];
  v46 = [v45 controller];

  v47 = sub_1DF564B44();
  v48 = *(*(v47 - 8) + 56);
  v48(v4, 1, 1, v47);
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v46;
  sub_1DF515B98(0, 0, v4, &unk_1DF568C60, v49);

  v50 = [v44 sharedInstance];
  v51 = [v50 controller];

  v48(v4, 1, 1, v47);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v51;
  sub_1DF4BF520(0, 0, v4, &unk_1DF568C68, v52);

  v48(v4, 1, 1, v47);
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v55 = v62;
  v54 = v63;
  v53[4] = v1;
  v53[5] = v54;
  v56 = v61;
  v53[6] = v55;
  v53[7] = v56;
  v57 = ObjectType;
  v53[8] = v19;
  v53[9] = v57;
  v58 = v1;
  sub_1DF4BF520(0, 0, v4, &unk_1DF568C78, v53);
}

id sub_1DF4CC244()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2 && (v3 = [v2 aa_altDSID], v2, v3))
    {
      v4 = sub_1DF564944();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4CC300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CC32C, 0, 0);
}

uint64_t sub_1DF4CC32C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
  *(v0 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CC358, v1, 0);
}

uint64_t sub_1DF4CC358()
{
  *(v0 + 96) = sub_1DF4929F8(0x75746165466C6C61, 0xEB00000000736572, 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4CC3E4, 0, 0);
}

uint64_t sub_1DF4CC3E4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v8 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = swift_allocObject();
  *(v0 + 104) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1DF4CC51C;

  return sub_1DF531410(0x75746165466C6C61, 0xEB00000000736572, &unk_1DF568C88, v4);
}

uint64_t sub_1DF4CC51C(uint64_t a1)
{
  *(*v2 + 120) = v1;

  if (v1)
  {
    v3 = sub_1DF4CC6C0;
  }

  else
  {

    v3 = sub_1DF4CC660;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF4CC660()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4CC6C0()
{
  v22 = v0;

  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED955E10);

  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[9];
    v6 = v0[10];
    v9 = v0[7];
    v8 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = MEMORY[0x1E12D6280](v9, v8, v7, v6);
    v14 = sub_1DF47EF6C(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_1DF5651B4();
    v17 = sub_1DF47EF6C(v15, v16, &v21);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1DF47C000, v4, v5, "[%s] Feature fetch after cache clear failed. Notifying clients. error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  v18 = v0[15];
  sub_1DF4FB970();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1DF4CC8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CC914, 0, 0);
}

uint64_t sub_1DF4CC914()
{
  v1 = (v0[3] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = sub_1DF564944();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v0[8] = v9;
  v10 = MEMORY[0x1E12D6280](v0[4], v0[5], v0[6], v0[7]);
  v12 = v11;
  v0[9] = v11;
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1DF4CCA6C;

  return sub_1DF4C6274(v7, v9, v10, v12, 0, 1);
}

uint64_t sub_1DF4CCA6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1DF4CCBC8;
  }

  else
  {

    *(v4 + 96) = a1;

    v5 = sub_1DF4CCBA4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4CCBC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4CCC80()
{
  (*(v0 + 120))(*(v0 + 176), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4CCCF8()
{
  v1 = sub_1DF5026FC(v0[3], v0[4], v0[5], v0[6], v0[8]);

  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956260);
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&dword_1DF47C000, v3, v4, "Returning eligibility %{BOOL,public}d from server", v5, 8u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v6 = v0[2];

  *v6 = v1 & 1;
  v7 = v0[1];

  return v7();
}

void sub_1DF4CCE4C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v17 = sub_1DF5647B4();
  __swift_project_value_buffer(v17, qword_1ED956260);

  v18 = sub_1DF564794();
  v19 = sub_1DF564C44();

  if (os_log_type_enabled(v18, v19))
  {
    v27 = a8;
    v20 = swift_slowAlloc();
    v26 = a7;
    v21 = a5;
    v22 = a6;
    v23 = swift_slowAlloc();
    v30 = v23;
    *v20 = 136315394;
    *(v20 + 4) = sub_1DF47EF6C(a1, a2, &v30);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1DF47EF6C(a3, a4, &v30);
    _os_log_impl(&dword_1DF47C000, v18, v19, "Requesting geoclassification for featureID %s and bundleID %s", v20, 0x16u);
    swift_arrayDestroy();
    v24 = v23;
    a6 = v22;
    a5 = v21;
    a7 = v26;
    MEMORY[0x1E12D75F0](v24, -1, -1);
    v25 = v20;
    a8 = v27;
    MEMORY[0x1E12D75F0](v25, -1, -1);
  }

  v28 = sub_1DF481988();
  sub_1DF4D4BCC(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, v29);
}

uint64_t sub_1DF4CD190(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v14;
  *(v8 + 80) = v12;
  *(v8 + 96) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 192) = a4;
  v9 = sub_1DF564494();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4CD26C, 0, 0);
}

uint64_t sub_1DF4CD26C()
{
  if ((*(v0 + 192) & 1) != 0 || (v1 = sub_1DF4FB200(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(*(v0 + 48) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_geoCache))) == 0)
  {
    v24 = *(*(v0 + 48) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
    *(v0 + 144) = v24;

    return MEMORY[0x1EEE6DFA0](sub_1DF4CD568, v24, 0);
  }

  else
  {
    v2 = v1;
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 120);
    sub_1DF564484();
    v6 = sub_1DF5643F4();
    (*(v4 + 8))(v3, v5);
    if (v6)
    {
      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v10 = sub_1DF564914();
      v11 = [v9 initWithSuiteName_];

      v12 = sub_1DF4FB5AC(v11);
      sub_1DF4FB6B0(v8, v7);
    }

    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED956260);
    v14 = v2;

    v15 = sub_1DF564794();
    v16 = sub_1DF564C44();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v2;
      v19 = v14;
      _os_log_impl(&dword_1DF47C000, v15, v16, "serving geoclassification info from cache: %@", v17, 0xCu);
      sub_1DF47E5B4(v18, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v18, -1, -1);
      MEMORY[0x1E12D75F0](v17, -1, -1);
    }

    v20 = *(v0 + 104);

    v21 = v14;
    v20(v2, 0);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1DF4CD568()
{
  *(v0 + 152) = sub_1DF4929F8(7300455, 0xE300000000000000, 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4CD5E4, 0, 0);
}

uint64_t sub_1DF4CD5E4()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = swift_allocObject();
  v0[20] = v8;
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v7;
  v8[5] = v6;
  v8[6] = v5;
  v8[7] = v4;
  v8[8] = v3;

  v9 = v7;

  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_1DF4CD720;
  v12 = v0[7];
  v11 = v0[8];

  return sub_1DF532448(v12, v11, &unk_1DF568D58, v8);
}

uint64_t sub_1DF4CD720(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_1DF4CD910;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_1DF4CD86C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4CD86C()
{
  v1 = v0[23];
  v2 = v0[13];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF4CD910()
{
  v1 = v0[22];
  v2 = v0[13];

  swift_getErrorValue();
  v3 = sub_1DF49A0C0(v0[3], v0[4]);
  v2(0, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF4CD9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[24] = a3;
  v8[25] = a4;
  v8[22] = a1;
  v8[23] = a2;
  v11 = swift_task_alloc();
  v8[30] = v11;
  *v11 = v8;
  v11[1] = sub_1DF4CDA9C;

  return sub_1DF4B9F84((v8 + 8), a2, a3);
}

uint64_t sub_1DF4CDA9C()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4CDBD0, 0, 0);
  }
}

void sub_1DF4CDBD0()
{
  v1 = *(*(v0 + 200) + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_geoCache);
  v2 = *(v0 + 96);
  *(v0 + 168) = v2;
  v38 = v1;
  v31 = (v0 + 120);
  v32 = (v0 + 64);
  v29 = (v0 + 136);
  v30 = (v0 + 104);
  v35 = v2 + 64;
  v33 = v0 + 168;
  v28 = (v0 + 152);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v34 = (63 - v4) >> 6;
  v37 = v2;

  v6 = 0;
  while (v5)
  {
LABEL_10:
    v8 = __clz(__rbit64(v5)) | (v6 << 6);
    v9 = (*(v37 + 48) + 16 * v8);
    v39 = *v9;
    v40 = v9[1];
    v10 = *(*(v37 + 56) + 8 * v8);
    if (v10 >> 62)
    {
      v11 = sub_1DF564F04();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v11)
    {
      if (v11 < 1)
      {
LABEL_27:
        __break(1u);
        return;
      }

      v36 = v5;

      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1E12D66D0](v12, v10);
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = *(v0 + 184);
        v16 = *(v0 + 192);
        ++v12;
        v17 = *&v13[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey];
        v18 = *&v13[OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8];
        *(v0 + 16) = v15;
        *(v0 + 24) = v16;
        *(v0 + 32) = v39;
        *(v0 + 40) = v40;
        *(v0 + 48) = v17;
        *(v0 + 56) = v18;

        sub_1DF547814((v0 + 16), v38, v14, v15, v16);
      }

      while (v11 != v12);

      v5 = v36;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v7 >= v34)
    {
      break;
    }

    v5 = *(v35 + 8 * v7);
    ++v6;
    if (v5)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  v19 = *(v0 + 248);
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v23 = *(v0 + 208);
  v22 = *(v0 + 216);

  v24 = sub_1DF502B70(v23, v22, v21, v20);
  if (v19)
  {
    *v30 = *v32;
    sub_1DF4BF4C8(v30);
    *v31 = *(v0 + 80);
    sub_1DF4BF4C8(v31);
    sub_1DF47E5B4(v33, &qword_1ECE37D60, &qword_1DF568D60);
  }

  else
  {
    v26 = v24;
    v27 = *(v0 + 176);
    *v29 = *v32;
    sub_1DF4BF4C8(v29);
    *v28 = *(v0 + 80);
    sub_1DF4BF4C8(v28);
    sub_1DF47E5B4(v33, &qword_1ECE37D60, &qword_1DF568D60);
    *v27 = v26;
  }

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_1DF4CDF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4CDF5C, 0, 0);
}

uint64_t sub_1DF4CDF5C()
{
  v33 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  v0[19] = __swift_project_value_buffer(v1, qword_1ED9556D8);

  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DF47EF6C(v5, v4, &v31);
    _os_log_impl(&dword_1DF47C000, v2, v3, "Starting fetch for ticket %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v8 = (v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v13 = v12;
  v0[20] = v11;
  v0[21] = v12;
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v14 = v0[14];
  v15 = v0[15];
  v0[22] = qword_1ED954C20;
  v16 = sub_1DF4C4FE0(v14, v15, v11, v13);
  if (v16)
  {
    v18 = *&v16[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket];
    v17 = *&v16[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_ticket + 8];
    v19 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v0[23] = v18;
  v0[24] = v17;

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[14];
    v22 = v0[15];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1DF47EF6C(v23, v22, &v31);
    _os_log_impl(&dword_1DF47C000, v20, v21, "No valid cache value for ticket %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1E12D75F0](v25, -1, -1);
    MEMORY[0x1E12D75F0](v24, -1, -1);
  }

  v26 = v0[15];
  v27 = *(v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
  v28 = v0[14];
  v0[25] = v27;
  v31 = 0x5F74656B636974;
  v32 = 0xE700000000000000;
  MEMORY[0x1E12D62C0](v28, v26);
  v29 = v32;
  v0[26] = v31;
  v0[27] = v29;

  return MEMORY[0x1EEE6DFA0](sub_1DF4CE2D0, v27, 0);
}

uint64_t sub_1DF4CE2D0()
{
  v0[28] = sub_1DF4929F8(v0[26], v0[27], 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4CE350, 0, 0);
}

uint64_t sub_1DF4CE350()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v8 = *(v0 + 160);
  v9 = *(v0 + 184);
  MEMORY[0x1E12D62C0](v3, v2);
  *(v0 + 232) = 0xE700000000000000;
  v4 = swift_allocObject();
  *(v0 + 240) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *&v5 = v8;
  *(&v5 + 1) = v1;
  *(v4 + 48) = v5;
  *(v4 + 32) = v9;

  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = sub_1DF4CE4B8;

  return sub_1DF532ECC(0x5F74656B636974, 0xE700000000000000, &unk_1DF568D38, v4);
}

uint64_t sub_1DF4CE4B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1DF4CE6D4;
  }

  else
  {

    *(v4 + 264) = a1;
    v5 = sub_1DF4CE628;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4CE628()
{
  v1 = v0[33];
  v2 = v0[17];
  v3 = *&v1[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status];
  v4 = v3;
  v2(v3, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF4CE6D4()
{
  v25 = v0;
  v1 = v0[32];

  v2 = v1;
  v3 = sub_1DF564794();
  v4 = sub_1DF564C24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_1DF5651B4();
    v9 = sub_1DF47EF6C(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DF47C000, v3, v4, "GetTicketStatus failed with error: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1E12D75F0](v6, -1, -1);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v10 = sub_1DF4C4FE0(v0[14], v0[15], v0[20], v0[21]);

  if (v10)
  {
    v11 = sub_1DF564794();
    v12 = sub_1DF564C44();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DF47C000, v11, v12, "Returning cached ticket status.", v13, 2u);
      MEMORY[0x1E12D75F0](v13, -1, -1);
    }

    v14 = v0[32];
    v15 = v0[17];

    v16 = *&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status];
    swift_getErrorValue();
    v17 = v0[6];
    v18 = v0[7];
    v19 = v16;
    v20 = sub_1DF49A0C0(v17, v18);
    v15(v16, v20);
  }

  else
  {
    v14 = v0[32];
    v21 = v0[17];
    swift_getErrorValue();
    v10 = sub_1DF49A0C0(v0[3], v0[4]);
    v21(0, v10);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DF4CE98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4CEA38, 0, 0);
}

uint64_t sub_1DF4CEA38()
{
  v15 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  v0[11] = __swift_project_value_buffer(v1, qword_1ED9556D8);

  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DF47EF6C(v5, v4, &v14);
    _os_log_impl(&dword_1DF47C000, v2, v3, "Starting network fetch for ticket %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1DF4CEC14;
  v9 = v0[5];
  v10 = v0[6];
  v12 = v0[3];
  v11 = v0[4];

  return sub_1DF4BA308(v12, v11, v9, v10);
}

uint64_t sub_1DF4CEC14(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4CED64, 0, 0);
  }
}

uint64_t sub_1DF4CED64()
{
  v22 = v0;
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1DF5642D4();
  swift_allocObject();
  sub_1DF5642C4();
  v8 = v3[11];
  v9 = sub_1DF564494();
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  sub_1DF564474();
  *v2 = v1;
  v10 = &v2[v3[13]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v2[v3[14]];
  *v11 = v5;
  *(v11 + 1) = v4;

  v12 = v1;
  sub_1DF4C5794(v7, v6, v2);

  sub_1DF47E5B4(v2, &qword_1ECE37CE8, &unk_1DF568D10);
  sub_1DF4FB984();

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 24);
    v15 = *(v0 + 32);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1DF47EF6C(v16, v15, &v21);
    _os_log_impl(&dword_1DF47C000, v13, v14, "Network fetch finished for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1E12D75F0](v18, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  **(v0 + 16) = *(v0 + 104);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1DF4CF17C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, ...)
{
  v36 = a5;
  v10 = v7;
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v34 - v16;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  __swift_project_value_buffer(v18, qword_1ED9556D8);

  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = a7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v34[1] = a6;
    v24 = a4;
    v25 = a3;
    v26 = v23;
    v38 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1DF47EF6C(a1, a2, &v38);
    _os_log_impl(&dword_1DF47C000, v19, v20, v36, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v27 = v26;
    a3 = v25;
    a4 = v24;
    MEMORY[0x1E12D75F0](v27, -1, -1);
    v28 = v22;
    a7 = v35;
    MEMORY[0x1E12D75F0](v28, -1, -1);
  }

  v29 = sub_1DF564B44();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a1;
  v30[5] = a2;
  v30[6] = v10;
  v30[7] = a3;
  v31 = ObjectType;
  v30[8] = a4;
  v30[9] = v31;

  v32 = v10;

  sub_1DF4BF520(0, 0, v17, a7, v30);
}

uint64_t sub_1DF4CF3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  v8[16] = type metadata accessor for InternalError(0);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4CF4A4, 0, 0);
}

uint64_t sub_1DF4CF4A4()
{
  v34 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  v0[19] = __swift_project_value_buffer(v1, qword_1ED9556D8);

  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DF47EF6C(v5, v4, &v32);
    _os_log_impl(&dword_1DF47C000, v2, v3, "Starting request for ticket %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v8 = (v0[13] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v13 = v12;
  v0[20] = v11;
  v0[21] = v12;
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v14 = sub_1DF4C4FE0(v0[11], v0[12], v11, v13);
  if (!v14)
  {

    v17 = sub_1DF564794();
    v22 = sub_1DF564C44();

    if (os_log_type_enabled(v17, v22))
    {
      v24 = v0[11];
      v23 = v0[12];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1DF47EF6C(v24, v23, &v32);
      _os_log_impl(&dword_1DF47C000, v17, v22, "No valid cache value for ticket %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1E12D75F0](v26, -1, -1);
      MEMORY[0x1E12D75F0](v25, -1, -1);
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = v14;
  v17 = sub_1DF564794();
  v18 = sub_1DF564C24();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v15;
    v21 = v16;
    _os_log_impl(&dword_1DF47C000, v17, v18, "There already is a cached ticket when calling getTicket: %@", v19, 0xCu);
    sub_1DF47E5B4(v20, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);

LABEL_12:
    goto LABEL_14;
  }

LABEL_14:
  v27 = v0[12];
  v28 = *(v0[13] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
  v29 = v0[11];
  v0[22] = v28;
  v32 = 0x656B636954746567;
  v33 = 0xEA00000000005F74;
  MEMORY[0x1E12D62C0](v29, v27);
  v30 = v33;
  v0[23] = v32;
  v0[24] = v30;

  return MEMORY[0x1EEE6DFA0](sub_1DF4CF8C0, v28, 0);
}

uint64_t sub_1DF4CF8C0()
{
  v0[25] = sub_1DF4929F8(v0[23], v0[24], 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4CF940, 0, 0);
}

uint64_t sub_1DF4CF940()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  MEMORY[0x1E12D62C0](v5, v3);
  v0[26] = 0xEA00000000005F74;
  v6 = swift_allocObject();
  v0[27] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v6[6] = v4;

  v7 = v4;
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1DF4CFA9C;

  return sub_1DF532ECC(0x656B636954746567, 0xEA00000000005F74, &unk_1DF568D00, v6);
}

uint64_t sub_1DF4CFA9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_1DF4CFCB0;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_1DF4CFC04;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4CFC04()
{
  v1 = v0[30];
  v2 = v0[14];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF4CFCB0()
{
  v29 = v0;
  v1 = *(v0 + 232);

  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 136);
    if (swift_getEnumCaseMultiPayload() == 2)
    {

      v4 = sub_1DF564794();
      v5 = sub_1DF564C44();

      if (os_log_type_enabled(v4, v5))
      {
        v7 = *(v0 + 88);
        v6 = *(v0 + 96);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v28 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_1DF47EF6C(v7, v6, &v28);
        _os_log_impl(&dword_1DF47C000, v4, v5, "Ticket %s received 204 network response", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x1E12D75F0](v9, -1, -1);
        MEMORY[0x1E12D75F0](v8, -1, -1);
      }

      v10 = *(v0 + 144);
      v11 = *(v0 + 112);
      swift_storeEnumTagMultiPayload();
      v12 = sub_1DF4B3AC0();
      sub_1DF4D7CC4(v10);
      v11(0, v12);

      v13 = *(v0 + 64);
      goto LABEL_10;
    }

    sub_1DF4D7CC4(v3);
  }

  v14 = *(v0 + 232);

  v15 = v14;
  v16 = sub_1DF564794();
  v17 = sub_1DF564C24();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    swift_getErrorValue();
    v20 = sub_1DF5651B4();
    v22 = sub_1DF47EF6C(v20, v21, &v28);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1DF47C000, v16, v17, "GetTicket failed with error: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1E12D75F0](v19, -1, -1);
    MEMORY[0x1E12D75F0](v18, -1, -1);
  }

  v23 = *(v0 + 232);
  v24 = *(v0 + 112);
  swift_getErrorValue();
  v25 = sub_1DF49A0C0(*(v0 + 24), *(v0 + 32));
  v24(0, v25);

  v13 = v23;
LABEL_10:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1DF4D0010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE8, &unk_1DF568D10);
  v6[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4D00B8, 0, 0);
}

uint64_t sub_1DF4D00B8()
{
  v13 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  v0[27] = __swift_project_value_buffer(v1, qword_1ED9556D8);

  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DF47EF6C(v5, v4, &v12);
    _os_log_impl(&dword_1DF47C000, v2, v3, "Starting network fetch for ticket %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1DF4D0290;
  v10 = v0[20];
  v9 = v0[21];

  return sub_1DF4BA720(v10, v9);
}

uint64_t sub_1DF4D0290(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 232) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF4D03E0, 0, 0);
  }
}

uint64_t sub_1DF4D03E0()
{
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[20];
  v18 = v0[21];
  sub_1DF5642D4();
  swift_allocObject();
  sub_1DF5642C4();
  v7 = v3[11];
  v8 = sub_1DF564494();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  sub_1DF564474();
  *v2 = v1;
  v9 = &v2[v3[13]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v2[v3[14]];
  *v10 = v4;
  *(v10 + 1) = v5;

  v11 = v1;
  sub_1DF4C5794(v6, v18, v2);

  sub_1DF47E5B4(v2, &qword_1ECE37CE8, &unk_1DF568D10);
  sub_1DF4FB984();
  v12 = sub_1DF564794();
  v13 = sub_1DF564C44();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DF47C000, v12, v13, "Attempting to get primary apple account", v14, 2u);
    MEMORY[0x1E12D75F0](v14, -1, -1);
  }

  v15 = sub_1DF481988();
  v0[30] = v15;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DF4D06AC;
  v16 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D58, &qword_1DF569340);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4D0E70;
  v0[13] = &block_descriptor_101;
  v0[14] = v16;
  [v15 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF4D06AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1DF4D0B1C;
  }

  else
  {
    v2 = sub_1DF4D07BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1DF4D07BC()
{
  v24 = v0;
  v1 = *(v0 + 144);

  if (v1)
  {

    v2 = sub_1DF564794();
    v3 = sub_1DF564C44();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DF47C000, v2, v3, "There is an account, not registering", v4, 2u);
      MEMORY[0x1E12D75F0](v4, -1, -1);
    }
  }

  else
  {
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF47C000, v5, v6, "There is no account, registering.", v7, 2u);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    [objc_opt_self() registerForLoggedOutPushNotifications];
  }

  v8 = sub_1DF564794();
  v9 = sub_1DF564C44();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1DF47EF6C(v11, v10, &v23);
    _os_log_impl(&dword_1DF47C000, v8, v9, "Network fetch finished for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1E12D75F0](v13, -1, -1);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }

  v14 = *(*(v0 + 232) + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status);
  objc_allocWithZone(type metadata accessor for TicketStatus());
  v15 = v14;
  result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
  if (result)
  {
    v17 = result;
    v18 = sub_1DF564CD4();

    if ((v18 & 1) != 0 && os_variant_has_internal_ui())
    {
      v19 = sub_1DF564794();
      v20 = sub_1DF564C44();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1DF47C000, v19, v20, "Ticket is active & internal build detected, clearing cache & notifying", v21, 2u);
        MEMORY[0x1E12D75F0](v21, -1, -1);
      }

      sub_1DF4CBC30();
    }

    **(v0 + 152) = *(v0 + 232);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF4D0B1C(uint64_t a1)
{
  v29 = v1;
  v3 = *(v1 + 240);
  v2 = *(v1 + 248);
  swift_willThrow();

  v4 = v2;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 248);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Unable to get primary apple account: %@", v9, 0xCu);
    sub_1DF47E5B4(v10, &unk_1ECE37F10, &qword_1DF567510);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v1 + 160);
    v15 = *(v1 + 168);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1DF47EF6C(v16, v15, &v28);
    _os_log_impl(&dword_1DF47C000, v13, v14, "Network fetch finished for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1E12D75F0](v18, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  v19 = *(*(v1 + 232) + OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status);
  objc_allocWithZone(type metadata accessor for TicketStatus());
  v20 = v19;
  result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
  if (result)
  {
    v22 = result;
    v23 = sub_1DF564CD4();

    if ((v23 & 1) != 0 && os_variant_has_internal_ui())
    {
      v24 = sub_1DF564794();
      v25 = sub_1DF564C44();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DF47C000, v24, v25, "Ticket is active & internal build detected, clearing cache & notifying", v26, 2u);
        MEMORY[0x1E12D75F0](v26, -1, -1);
      }

      sub_1DF4CBC30();
    }

    **(v1 + 152) = *(v1 + 232);

    v27 = *(v1 + 8);

    return v27();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4D0E70(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1DF4D1128(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0();
  if (v10)
  {
    v11 = v10;
    if (sub_1DF564F54() == 1)
    {
      v12 = sub_1DF564B44();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v11;
      v13[5] = a3;
      v13[6] = a4;

      v14 = &unk_1DF568CD8;
      v15 = v9;
      v16 = v13;
    }

    else
    {
      v18 = *(v4 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24);
      v19 = *(v4 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 32);
      __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore), v18);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      if (qword_1ED955FF0 != -1)
      {
        swift_once();
      }

      v23 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v20, v22, 1, 1);
      v24 = sub_1DF4D516C(v20, v22);

      v25 = sub_1DF564B44();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v11;
      *(v26 + 40) = v23;
      *(v26 + 48) = v24 & 1;
      *(v26 + 56) = a3;
      *(v26 + 64) = a4;

      v14 = &unk_1DF568CC8;
      v15 = v9;
      v16 = v26;
    }

    sub_1DF4BF520(0, 0, v15, v14, v16);
  }

  else
  {
    v28 = sub_1DF4B3AA0(7);
    a3(0, v28);
    v17 = v28;
  }
}

uint64_t sub_1DF4D142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D144C, 0, 0);
}

uint64_t sub_1DF4D144C()
{
  v1 = sub_1DF481988();
  v2 = sub_1DF4BECB0(0, &qword_1ED954D38, 0x1E6959A40);
  *(v0 + 128) = v1;
  *(v0 + 224) = 0u;
  *(v0 + 152) = v2;
  *(v0 + 160) = &off_1F5A86EE8;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0;
  v3 = sub_1DF531308();
  v5 = v4;
  type metadata accessor for Config();
  inited = swift_initStackObject();
  *(v0 + 384) = inited;
  *(inited + 32) = 0u;
  *(inited + 80) = 0u;
  *(inited + 96) = 0u;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 16) = v3;
  *(inited + 24) = v5;
  if (*(v0 + 248))
  {
    sub_1DF47E390((v0 + 224), v0 + 264);
    sub_1DF47E390((v0 + 264), v0 + 304);
    swift_beginAccess();
    sub_1DF4D78FC(v0 + 304, inited + 32);
    swift_endAccess();
  }

  else
  {
    sub_1DF47E5B4(v0 + 224, &qword_1ECE38370, &qword_1DF569E50);
  }

  v7 = type metadata accessor for SystemProperties();
  v8 = swift_initStaticObject();
  *(v0 + 208) = v7;
  *(v0 + 216) = &off_1F5A88E50;
  *(v0 + 184) = v8;
  *(v0 + 168) = inited;
  *(v0 + 176) = &off_1F5A86FD0;
  v9 = swift_task_alloc();
  *(v0 + 392) = v9;
  *v9 = v0;
  v9[1] = sub_1DF4D1624;

  return (sub_1DF4D53FC)(v0 + 128);
}

uint64_t sub_1DF4D1624(char a1)
{
  v2 = *v1;
  *(v2 + 400) = a1;

  sub_1DF4D78A8(v2 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DF4D172C, 0, 0);
}

uint64_t sub_1DF4D172C()
{
  (*(v0 + 368))(*(v0 + 400), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4D1798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1DF4D182C;

  return sub_1DF52D05C();
}

uint64_t sub_1DF4D182C(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF4D192C, 0, 0);
}

uint64_t sub_1DF4D192C()
{
  (*(v0 + 16))(*(v0 + 40), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF4D1A68(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_1DF564944();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_1DF4D1B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D1B2C, 0, 0);
}

uint64_t sub_1DF4D1B2C()
{
  v1 = sub_1DF481988();
  v2 = sub_1DF4BECB0(0, &qword_1ED954D38, 0x1E6959A40);
  *(v0 + 128) = v1;
  *(v0 + 224) = 0u;
  *(v0 + 152) = v2;
  *(v0 + 160) = &off_1F5A86EE8;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0;
  v3 = sub_1DF531308();
  v5 = v4;
  type metadata accessor for Config();
  inited = swift_initStackObject();
  *(inited + 32) = 0u;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0u;
  *(inited + 96) = 0u;
  *(inited + 16) = v3;
  *(inited + 24) = v5;
  if (*(v0 + 248))
  {
    sub_1DF47E390((v0 + 224), v0 + 264);
    sub_1DF47E390((v0 + 264), v0 + 304);
    swift_beginAccess();
    sub_1DF4D78FC(v0 + 304, inited + 32);
    swift_endAccess();
  }

  else
  {
    sub_1DF47E5B4(v0 + 224, &qword_1ECE38370, &qword_1DF569E50);
  }

  v7 = type metadata accessor for SystemProperties();
  v8 = swift_initStaticObject();
  *(v0 + 208) = v7;
  *(v0 + 216) = &off_1F5A88E50;
  *(v0 + 176) = &off_1F5A86FD0;
  *(v0 + 184) = v8;
  *(v0 + 168) = inited;
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF5647B4();
  __swift_project_value_buffer(v9, qword_1ED955C68);
  v10 = sub_1DF564794();
  v11 = sub_1DF564C24();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DF47C000, v10, v11, "Attempted to determine device waitlist CFU eligibility on ineligible configuration.", v12, 2u);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }

  v13 = *(v0 + 368);

  sub_1DF4D78A8(v0 + 128);
  v13(3, 0);
  v14 = *(v0 + 8);

  return v14();
}

void sub_1DF4D1D98(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1DF4D1EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D1ED4, 0, 0);
}

uint64_t sub_1DF4D1ED4()
{
  v50 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  v0[19] = __swift_project_value_buffer(v1, qword_1ED9556D8);

  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1DF47EF6C(v5, v4, &v48);
    _os_log_impl(&dword_1DF47C000, v2, v3, "Starting signup for ticket %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v8 = (v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v11 = (*(v10 + 32))(v9, v10);
  if (v11 && (v12 = v11, v13 = [v11 aa_altDSID], v12, v13))
  {
    v14 = sub_1DF564944();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v0[20] = v14;
  v0[21] = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v18 = sub_1DF564914();
  v19 = [v17 initWithSuiteName_];

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v20 = sub_1DF47E8A4();
  v22 = v21;
  type metadata accessor for WaitlistCache();
  v23 = swift_allocObject();
  v24 = v23;
  if (!v19)
  {

    swift_deallocPartialClassInstance();
    v25 = 0;
    v24 = 0;
LABEL_20:
    v0[22] = v25;
    v0[23] = v24;
    v44 = v0[15];
    v45 = *(v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
    v46 = v0[14];
    v0[24] = v45;
    v48 = 0x5F70756E676973;
    v49 = 0xE700000000000000;
    MEMORY[0x1E12D62C0](v46, v44);
    v47 = v49;
    v0[25] = v48;
    v0[26] = v47;
    v31 = sub_1DF4D2378;
    v32 = v45;
    v33 = 0;

    return MEMORY[0x1EEE6DFA0](v31, v32, v33);
  }

  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v22;
  v23[5] = v14;
  v23[6] = v16;

  v25 = sub_1DF4DB4FC(0, 0);

  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status;
  v27 = *(v25 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
  v28 = type metadata accessor for TicketStatus();
  objc_allocWithZone(v28);
  v29 = v27;
  v30 = v25;
  v31 = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
  if (!v31)
  {
    __break(1u);
    goto LABEL_24;
  }

  v34 = v31;
  v35 = sub_1DF564CD4();

  if ((v35 & 1) == 0)
  {
    v36 = *(v25 + v26);
    objc_allocWithZone(v28);
    v37 = v36;
    v31 = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (v31)
    {
      v38 = v31;
      v39 = sub_1DF564CD4();

      if (v39)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v31, v32, v33);
  }

LABEL_15:
  v40 = v0[17];

  v41 = v30;
  v40(v25, 0);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1DF4D2378()
{
  v0[27] = sub_1DF4929F8(v0[25], v0[26], 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4D23F8, 0, 0);
}

uint64_t sub_1DF4D23F8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[15];
  v5 = v0[14];
  MEMORY[0x1E12D62C0](v5, v4);
  v0[28] = 0xE700000000000000;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v0[29] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v6;

  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_1DF4D257C;

  return sub_1DF533950(0x5F70756E676973, 0xE700000000000000, &unk_1DF568C58, v7);
}

uint64_t sub_1DF4D257C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_1DF4D2798;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_1DF4D26E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4D26E4()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF4D2798()
{
  v31 = v0;
  v1 = v0[22];
  v2 = v0[31];
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = sub_1DF564794();
    v6 = sub_1DF564C24();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[22];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30 = v10;
      *v8 = 138543618;
      *(v8 + 4) = v3;
      *v9 = v7;
      *(v8 + 12) = 2082;
      swift_getErrorValue();
      v11 = v3;
      v12 = sub_1DF5651B4();
      v14 = sub_1DF47EF6C(v12, v13, &v30);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_1DF47C000, v5, v6, "signupForWaitlist recovered with existing cached value %{public}@ after error: %{public}s", v8, 0x16u);
      sub_1DF47E5B4(v9, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }

    v15 = v0[31];
    v16 = v0[22];
    v17 = v0[17];
    v18 = v3;
    v17(v16, 0);
  }

  else
  {
    v19 = v2;
    v20 = sub_1DF564794();
    v21 = sub_1DF564C24();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136446210;
      swift_getErrorValue();
      v24 = sub_1DF5651B4();
      v26 = sub_1DF47EF6C(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1DF47C000, v20, v21, "signupForWaitlist failed with error: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1E12D75F0](v23, -1, -1);
      MEMORY[0x1E12D75F0](v22, -1, -1);
    }

    v15 = v0[31];
    v27 = v0[17];
    swift_getErrorValue();
    v18 = sub_1DF49A0C0(v0[3], v0[4]);
    v27(0, v18);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1DF4D2AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D2B28, 0, 0);
}

uint64_t sub_1DF4D2B28()
{
  v15 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  v0[30] = __swift_project_value_buffer(v1, qword_1ED9556D8);

  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1DF47EF6C(v5, v4, &v14);
    _os_log_impl(&dword_1DF47C000, v2, v3, "Starting network fetch for signup for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  if (qword_1ED954AC8 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED954AD0;
  v0[5] = &type metadata for Device;
  v0[6] = &off_1F5A89060;
  v9 = swift_allocObject();
  v0[2] = v9;
  v9[5] = type metadata accessor for HardwareChecker();
  v9[6] = &off_1F5A89048;
  v9[2] = v8;

  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_1DF4D2D90;
  v12 = v0[24];
  v11 = v0[25];

  return sub_1DF4BAB14(v12, v11);
}

uint64_t sub_1DF4D2D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 256) = v4;

  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0(v10 + 2);
    v11 = sub_1DF4D32A0;
  }

  else
  {
    v10[33] = a4;
    v10[34] = a3;
    v10[35] = a2;
    v10[36] = a1;
    __swift_destroy_boxed_opaque_existential_0(v10 + 2);
    v11 = sub_1DF4D2EE8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

id sub_1DF4D2EE8()
{
  v36 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 208);
  v6 = type metadata accessor for WaitlistResult();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
  *v8 = v1;
  *(v8 + 1) = v2;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v3;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v4;
  *(v0 + 168) = v7;
  *(v0 + 176) = v6;
  v9 = objc_msgSendSuper2((v0 + 168), sel_init);
  v10 = v9;
  if (v5)
  {
    sub_1DF4DA984(v9, *(v0 + 216), *(v0 + 224));
  }

  sub_1DF4FB984();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_1DF47FCEC(v13 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore, v0 + 56);

      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_0((v0 + 56), v15);
      v17 = (*(v16 + 32))(v15, v16);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }

    else
    {
      v17 = 0;
    }

    sub_1DF4FF5AC(v17);
  }

  v18 = sub_1DF564794();
  v19 = sub_1DF564C44();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v0 + 192);
    v20 = *(v0 + 200);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1DF47EF6C(v21, v20, &v35);
    _os_log_impl(&dword_1DF47C000, v18, v19, "signupForWaitlist network fetch finished for %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  v24 = *&v10[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
  objc_allocWithZone(type metadata accessor for TicketStatus());
  v25 = v24;
  result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
  if (result)
  {
    v27 = result;
    v28 = sub_1DF564CD4();

    if ((v28 & 1) != 0 && os_variant_has_internal_ui())
    {
      v29 = sub_1DF564794();
      v30 = sub_1DF564C44();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DF47C000, v29, v30, "Ticket is active & internal build detected, clearing cache & notifying", v31, 2u);
        MEMORY[0x1E12D75F0](v31, -1, -1);
      }

      swift_beginAccess();
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        sub_1DF4CBC30();
      }
    }

    **(v0 + 184) = v10;
    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4D33BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, ...)
{
  v36 = a5;
  v10 = v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - v16;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  __swift_project_value_buffer(v18, qword_1ED9556D8);

  v19 = sub_1DF564794();
  v20 = sub_1DF564C44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = a7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v34 = a6;
    v24 = v10;
    v25 = a4;
    v26 = a3;
    v27 = v23;
    v37 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1DF47EF6C(a1, a2, &v37);
    _os_log_impl(&dword_1DF47C000, v19, v20, v36, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v28 = v27;
    a3 = v26;
    a4 = v25;
    v10 = v24;
    MEMORY[0x1E12D75F0](v28, -1, -1);
    v29 = v22;
    a7 = v35;
    MEMORY[0x1E12D75F0](v29, -1, -1);
  }

  v30 = sub_1DF564B44();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a1;
  v31[5] = a2;
  v31[6] = v10;
  v31[7] = a3;
  v31[8] = a4;

  v32 = v10;

  sub_1DF4BF520(0, 0, v17, a7, v31);
}

uint64_t sub_1DF4D3630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D3658, 0, 0);
}

uint64_t sub_1DF4D3658()
{
  v50 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  v0[19] = __swift_project_value_buffer(v1, qword_1ED9556D8);

  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1DF47EF6C(v5, v4, &v48);
    _os_log_impl(&dword_1DF47C000, v2, v3, "Starting status request for ticket %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v8 = (v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v11 = (*(v10 + 32))(v9, v10);
  if (v11 && (v12 = v11, v13 = [v11 aa_altDSID], v12, v13))
  {
    v14 = sub_1DF564944();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v0[20] = v14;
  v0[21] = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v18 = sub_1DF564914();
  v19 = [v17 initWithSuiteName_];

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v20 = sub_1DF47E8A4();
  v22 = v21;
  type metadata accessor for WaitlistCache();
  v23 = swift_allocObject();
  v24 = v23;
  if (!v19)
  {

    swift_deallocPartialClassInstance();
    v25 = 0;
    v24 = 0;
LABEL_20:
    v0[22] = v25;
    v0[23] = v24;
    v44 = v0[15];
    v45 = *(v0[16] + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters);
    v46 = v0[14];
    v0[24] = v45;
    v48 = 0x5F737574617473;
    v49 = 0xE700000000000000;
    MEMORY[0x1E12D62C0](v46, v44);
    v47 = v49;
    v0[25] = v48;
    v0[26] = v47;
    v31 = sub_1DF4D3AFC;
    v32 = v45;
    v33 = 0;

    return MEMORY[0x1EEE6DFA0](v31, v32, v33);
  }

  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v22;
  v23[5] = v14;
  v23[6] = v16;

  v25 = sub_1DF4DB4FC(0, 0);

  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status;
  v27 = *(v25 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
  v28 = type metadata accessor for TicketStatus();
  objc_allocWithZone(v28);
  v29 = v27;
  v30 = v25;
  v31 = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
  if (!v31)
  {
    __break(1u);
    goto LABEL_24;
  }

  v34 = v31;
  v35 = sub_1DF564CD4();

  if ((v35 & 1) == 0)
  {
    v36 = *(v25 + v26);
    objc_allocWithZone(v28);
    v37 = v36;
    v31 = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (v31)
    {
      v38 = v31;
      v39 = sub_1DF564CD4();

      if (v39)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v31, v32, v33);
  }

LABEL_15:
  v40 = v0[17];

  v41 = v30;
  v40(v25, 0);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1DF4D3AFC()
{
  v0[27] = sub_1DF4929F8(v0[25], v0[26], 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF4D3B7C, 0, 0);
}

uint64_t sub_1DF4D3B7C()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[14];
  v4 = v0[15];
  MEMORY[0x1E12D62C0](v5, v4);
  v0[28] = 0xE700000000000000;
  v6 = swift_allocObject();
  v0[29] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = v3;
  v6[6] = v2;

  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_1DF4D3CD8;

  return sub_1DF533950(0x5F737574617473, 0xE700000000000000, &unk_1DF568C30, v6);
}

uint64_t sub_1DF4D3CD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_1DF4D3EF4;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_1DF4D3E40;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF4D3E40()
{
  v1 = v0[32];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF4D3EF4()
{
  v33 = v0;
  v1 = v0[22];
  v2 = v0[31];
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = sub_1DF564794();
    v6 = sub_1DF564C24();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[22];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32 = v10;
      *v8 = 138543618;
      *(v8 + 4) = v3;
      *v9 = v7;
      *(v8 + 12) = 2082;
      swift_getErrorValue();
      v11 = v3;
      v12 = sub_1DF5651B4();
      v14 = sub_1DF47EF6C(v12, v13, &v32);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_1DF47C000, v5, v6, "getWaitlistStatus recovered with existing cached value %{public}@ after error: %{public}s", v8, 0x16u);
      sub_1DF47E5B4(v9, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1E12D75F0](v10, -1, -1);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }

    v15 = v0[31];
    v16 = v0[22];
    v17 = v0[17];
    v18 = v3;
    v17(v16, 0);
  }

  else
  {
    v19 = v2;
    v20 = sub_1DF564794();
    v21 = sub_1DF564C24();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446210;
      swift_getErrorValue();
      v24 = sub_1DF5651B4();
      v26 = sub_1DF47EF6C(v24, v25, &v32);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1DF47C000, v20, v21, "getWaitlistStatus failed with error: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1E12D75F0](v23, -1, -1);
      MEMORY[0x1E12D75F0](v22, -1, -1);
    }

    v27 = v0[31];
    v28 = v0[17];
    swift_getErrorValue();
    v29 = sub_1DF49A0C0(v0[3], v0[4]);
    v28(0, v29);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_1DF4D426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF4D4294, 0, 0);
}

uint64_t sub_1DF4D4294()
{
  v17 = v0;
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  v0[10] = __swift_project_value_buffer(v1, qword_1ED9556D8);

  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1DF47EF6C(v5, v4, &v16);
    _os_log_impl(&dword_1DF47C000, v2, v3, "Starting network fetch for status for %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v8 = v0[7];
  if (v8)
  {
    v9 = sub_1DF4DB4FC(0, 0);
    if (v9)
    {
      v8 = *(v9 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket);
      v10 = *(v9 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket + 8);
      v11 = v9;

      goto LABEL_10;
    }

    v8 = 0;
  }

  v10 = 0;
LABEL_10:
  v0[11] = v10;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1DF4D44C0;
  v14 = v0[5];
  v13 = v0[6];

  return sub_1DF4BAEC0(v14, v13, v8, v10);
}

uint64_t sub_1DF4D44C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 104) = v4;

  if (v4)
  {
    v11 = sub_1DF4D4870;
  }

  else
  {
    v10[14] = a4;
    v10[15] = a3;
    v10[16] = a2;
    v10[17] = a1;

    v11 = sub_1DF4D4610;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DF4D4610()
{
  v24 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 56);
  v6 = type metadata accessor for WaitlistResult();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
  *v8 = v1;
  *(v8 + 1) = v2;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v3;
  *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v4;
  *(v0 + 16) = v7;
  *(v0 + 24) = v6;
  v9 = objc_msgSendSuper2((v0 + 16), sel_init);
  if (v5)
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);

    sub_1DF4DA984(v9, v11, v10);
  }

  else
  {
    v12 = sub_1DF564794();
    v13 = sub_1DF564C24();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DF47C000, v12, v13, "Unable to initialize WaitlistCache. Response will not be cached.", v14, 2u);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }
  }

  sub_1DF4FB984();

  v15 = sub_1DF564794();
  v16 = sub_1DF564C44();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1DF47EF6C(v18, v17, &v23);
    _os_log_impl(&dword_1DF47C000, v15, v16, "getWaitlistStatus network fetch finished for %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1E12D75F0](v20, -1, -1);
    MEMORY[0x1E12D75F0](v19, -1, -1);
  }

  **(v0 + 32) = v9;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1DF4D4870()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1DF4D4A6C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF4D4B9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DF4D4BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, void *a10)
{
  v28 = a5;
  v29 = a8;
  v27 = a3;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26 - v17;
  v19 = sub_1DF564B44();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a7;
  *(v20 + 40) = a10;
  *(v20 + 48) = a1;
  v22 = v27;
  v21 = v28;
  *(v20 + 56) = a2;
  *(v20 + 64) = v22;
  *(v20 + 72) = a4;
  *(v20 + 80) = v21;
  v23 = v29;
  *(v20 + 88) = a6;
  *(v20 + 96) = v23;
  *(v20 + 104) = a9;
  *(v20 + 112) = ObjectType;
  v24 = a10;

  sub_1DF4BF520(0, 0, v18, &unk_1DF568D48, v20);
}

uint64_t sub_1DF4D4D54()
{
  if (MEMORY[0x1E69A12D8])
  {
    v0 = MEMORY[0x1E69A12E8] == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || MEMORY[0x1E69A12F0] == 0)
  {
    if (qword_1ED956390 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED956398);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C24();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v27 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF571E00, &v27);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }
  }

  else
  {
    v24 = sub_1DF5645B4();
    v26 = v23;
    v7 = *(v24 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00](v24);
    v25 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = v23 - v25;
    v10 = sub_1DF564604();
    v23[1] = v23;
    v11 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v10);
    v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = sub_1DF5645D4();
    v15 = *(v14 - 8);
    MEMORY[0x1EEE9AC00](v14);
    v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1DF5645C4();
    sub_1DF5645F4();
    (*(v15 + 8))(v17, v14);
    v18 = v24;
    sub_1DF5645E4();
    v19 = (*(v11 + 8))(v13, v10);
    MEMORY[0x1EEE9AC00](v19);
    v20 = v23 - v25;
    (*(v7 + 32))(v23 - v25, v9, v18);
    v21 = (*(v7 + 88))(v20, v18);
    if (MEMORY[0x1E69A1198] && v21 == *MEMORY[0x1E69A1198])
    {
      return 1;
    }

    (*(v7 + 8))(v20, v18);
  }

  return 0;
}

uint64_t sub_1DF4D516C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF4C4FE0(0x6C6C2E64756F6C63, 0xE90000000000006DLL, a1, a2);
  v5 = v4;
  if (v4)
  {
  }

  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1DF564914();
  v8 = [v6 initWithSuiteName_];

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v9 = sub_1DF47E8A4();
  v11 = v10;
  type metadata accessor for WaitlistCache();
  v12 = swift_allocObject();
  if (!v8)
  {

    swift_deallocPartialClassInstance();
LABEL_10:
    if (v5)
    {
      v15 = 0;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    goto LABEL_13;
  }

  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v11;
  v12[5] = a1;
  v12[6] = a2;

  v13 = sub_1DF4DB4FC(0, 0);

  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = 1;
  v15 = 1;
  if (!v5)
  {
    v15 = 1;
  }

LABEL_13:
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v16 = sub_1DF5647B4();
  __swift_project_value_buffer(v16, qword_1ED9556D8);
  v17 = sub_1DF564794();
  v18 = sub_1DF564C14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v5 != 0;
    v20 = swift_slowAlloc();
    *v20 = 67240704;
    *(v20 + 4) = v14;
    *(v20 + 8) = 1026;
    *(v20 + 10) = v19;
    *(v20 + 14) = 1026;
    *(v20 + 16) = v15;
    _os_log_impl(&dword_1DF47C000, v17, v18, "Does have ticket? %{BOOL,public}d. Has ticket cache ticket? %{BOOL,public}d. Has waitlist cache ticket? %{BOOL,public}d", v20, 0x14u);
    MEMORY[0x1E12D75F0](v20, -1, -1);
  }

  return v14;
}

uint64_t sub_1DF4D53FC()
{
  v1 = sub_1DF5644C4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4D54B8, 0, 0);
}

uint64_t sub_1DF4D54B8(uint64_t a1)
{
  v28 = v1;
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_1DF5644B4();
  v5 = sub_1DF5644A4();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v9 = sub_1DF488298(8, v5, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x1E12D6280](v9, v11, v13, v15);
  v18 = v17;

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  __swift_project_value_buffer(v19, qword_1ED955C68);

  v20 = sub_1DF564794();
  v21 = sub_1DF564C24();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136446210;
    v27[0] = v23;
    v27[1] = 91;
    v27[2] = 0xE100000000000000;
    MEMORY[0x1E12D62C0](0xD00000000000004ALL, 0x80000001DF571C90);
    MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
    MEMORY[0x1E12D62C0](v16, v18);
    MEMORY[0x1E12D62C0](93, 0xE100000000000000);

    v24 = sub_1DF47EF6C(91, 0xE100000000000000, v27);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1DF47C000, v20, v21, "%{public}s Attempted to post waitlist CFU on invalid configuration.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  else
  {
  }

  v25 = v1[1];

  return v25(0);
}

uint64_t sub_1DF4D5744(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED9556D8);
  v7 = a1;
  v8 = sub_1DF564794();
  v9 = sub_1DF564C44();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DF47EF6C(*&v7[OBJC_IVAR___CloudFeature_featureID], *&v7[OBJC_IVAR___CloudFeature_featureID + 8], &v20);
    _os_log_impl(&dword_1DF47C000, v8, v9, "Validating feature %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1E12D75F0](v11, -1, -1);
    MEMORY[0x1E12D75F0](v10, -1, -1);
  }

  v12 = *(a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable);
  v13 = *(a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable + 8);

  sub_1DF4EC964(v7, v12, v13);
  v14 = v7;
  v15 = sub_1DF564794();
  v16 = sub_1DF564C04();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1DF47EF6C(*&v14[OBJC_IVAR___CloudFeature_featureID], *&v14[OBJC_IVAR___CloudFeature_featureID + 8], &v20);
    _os_log_impl(&dword_1DF47C000, v15, v16, "Feature appears valid: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1E12D75F0](v18, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);
  }

  (*(a3 + 16))(a3, 0);
}

uint64_t sub_1DF4D5C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4D3630(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D5D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4D426C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D5E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4D1EAC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D5EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF48D3C0;

  return sub_1DF4D2AFC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1DF4D60DC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v6 = (*(v5 + 32))(v4, v5);
  if (v6)
  {
    v16 = v6;
    v7 = [v6 isEnabledForDataclass_];
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF5647B4();
    __swift_project_value_buffer(v8, qword_1ED956260);
    v9 = sub_1DF564794();
    v10 = sub_1DF564C44();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_1DF47C000, v9, v10, "Shared albums enablement status: %{BOOL}d", v11, 8u);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    (*(a2 + 16))(a2, v7, 0);
  }

  else
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF5647B4();
    __swift_project_value_buffer(v12, qword_1ED9556D8);
    v13 = sub_1DF564794();
    v14 = sub_1DF564C24();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DF47C000, v13, v14, "Unable to get primary account", v15, 2u);
      MEMORY[0x1E12D75F0](v15, -1, -1);
    }

    v16 = sub_1DF4B3AA0(10);
    (*(a2 + 16))(a2, 0, v16);
  }
}

void sub_1DF4D6334(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF5647B4();
  __swift_project_value_buffer(v8, qword_1ED9556D8);

  v9 = sub_1DF564794();
  v10 = sub_1DF564C44();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1DF47EF6C(a1, a2, &v20);
    _os_log_impl(&dword_1DF47C000, v9, v10, "Fetching ticket status from cache for feature %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1E12D75F0](v12, -1, -1);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  v13 = (a3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore);
  v14 = *(a3 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24);
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_0(v13, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v18 = v17;
  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF4C4FE0(a1, a2, v16, v18);

  if (v19)
  {
    (*(a4 + 16))(a4, *&v19[OBJC_IVAR____TtC25CloudSubscriptionFeatures6Ticket_status], 0);
  }

  else
  {
    v19 = sub_1DF4B3AA0(4);
    (*(a4 + 16))(a4, 0, v19);
  }
}

void sub_1DF4D658C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED9556D8);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571CE0, &v25);
    _os_log_impl(&dword_1DF47C000, v5, v6, "%{public}s [Start]", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  if (_s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0())
  {
    v9 = sub_1DF564F54();
    if (v9 == 1)
    {
      v10 = 1;
      goto LABEL_10;
    }

    if (!v9)
    {
      v10 = 0;
LABEL_10:
      v11 = sub_1DF564794();
      v12 = sub_1DF564C44();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v25 = v14;
        *v13 = 136446210;
        *(v13 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571CE0, &v25);
        _os_log_impl(&dword_1DF47C000, v11, v12, "%{public}s Attempting to clear user default.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x1E12D75F0](v14, -1, -1);
        MEMORY[0x1E12D75F0](v13, -1, -1);
      }

      LOBYTE(v25) = v10;
      if (sub_1DF52DB28(&v25))
      {
        (*(a3 + 16))(a3, 0);
      }

      else
      {
        v15 = sub_1DF564794();
        v16 = sub_1DF564C44();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v25 = v18;
          *v17 = 136446210;
          *(v17 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571CE0, &v25);
          _os_log_impl(&dword_1DF47C000, v15, v16, "%{public}s No value stored currently. Returning without doing anything.", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x1E12D75F0](v18, -1, -1);
          MEMORY[0x1E12D75F0](v17, -1, -1);
        }

        v19 = sub_1DF4B3AA0(4);
        (*(a3 + 16))(a3, v19);
      }

      return;
    }
  }

  v20 = sub_1DF564794();
  v21 = sub_1DF564C44();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571CE0, &v25);
    _os_log_impl(&dword_1DF47C000, v20, v21, "%{public}s Passed feature is invalid. Returning without doing anything.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  v24 = sub_1DF4B3AA0(7);
  (*(a3 + 16))(a3, v24);
}

void sub_1DF4D6A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_variant_has_internal_content())
  {
    if (qword_1ED9556D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF5647B4();
    __swift_project_value_buffer(v4, qword_1ED9556D8);
    v5 = sub_1DF564794();
    v6 = sub_1DF564C44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF571C60, &v14);
      _os_log_impl(&dword_1DF47C000, v5, v6, "%{public}s [Start]", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1E12D75F0](v8, -1, -1);
      MEMORY[0x1E12D75F0](v7, -1, -1);
    }

    if (_s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0())
    {
      v9 = sub_1DF564F54();
      if (v9)
      {
        if (v9 != 1)
        {
          v12 = sub_1DF4B3D8C(2);
          (*(a3 + 16))(a3, 0, v12);

          goto LABEL_18;
        }

        v10 = sub_1DF52D420();
      }

      else
      {
        v10 = sub_1DF52C9F4();
      }

      (*(a3 + 16))(a3, v10 & 1, 0);
LABEL_18:

      return;
    }

    v11 = sub_1DF4B3D8C(1);
  }

  else
  {
    v11 = sub_1DF4B3AA0(14);
  }

  v13 = v11;
  (*(a3 + 16))(a3, 0, v11);
}

void sub_1DF4D6DD0(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42[-1] - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  _Block_copy(a2);
  v8 = _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0();
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 24);
    v11 = *(a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore + 32);
    __swift_project_boxed_opaque_existential_0((a1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore), v10);
    v12 = (*(v11 + 32))(v10, v11);
    if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
    {
      v15 = sub_1DF564944();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    if (qword_1ED955FF0 != -1)
    {
      swift_once();
    }

    v18 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(0x6C6C2E64756F6C63, 0xE90000000000006DLL, v15, v17, 1, 1);
    if (v18)
    {
      v19 = OBJC_IVAR___CloudFeature_canUse;
      v20 = v18;
      swift_beginAccess();
      LODWORD(v41) = v20[v19];

      v21 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v22 = sub_1DF564914();
      v23 = [v21 initWithSuiteName_];

      type metadata accessor for SystemProperties();
      swift_initStaticObject();
      v24 = sub_1DF47E8A4();
      v26 = v25;
      type metadata accessor for WaitlistCache();
      v27 = swift_allocObject();
      if (v23)
      {
        v27[2] = v23;
        v27[3] = v24;
        v27[4] = v26;
        v27[5] = v15;
        v27[6] = v17;
        v23 = sub_1DF4DB4FC(0, 0);

        if (v23)
        {

          LOBYTE(v23) = 1;
        }
      }

      else
      {

        swift_deallocPartialClassInstance();
      }

      v39 = sub_1DF564B44();
      (*(*(v39 - 8) + 56))(v6, 1, 1, v39);
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      *(v40 + 32) = v9;
      *(v40 + 40) = v41;
      *(v40 + 41) = v23;
      *(v40 + 48) = sub_1DF48C8FC;
      *(v40 + 56) = v7;

      sub_1DF4BF520(0, 0, v6, &unk_1DF568CB0, v40);
    }

    else
    {

      if (qword_1ED9558B8 != -1)
      {
        swift_once();
      }

      v34 = sub_1DF5647B4();
      __swift_project_value_buffer(v34, qword_1ED955C68);
      v35 = sub_1DF564794();
      v36 = sub_1DF564C44();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1DF47C000, v35, v36, "Device does not have cached LLM feature, device is likely missing HW support.", v37, 2u);
        MEMORY[0x1E12D75F0](v37, -1, -1);
      }

      v38 = sub_1DF4B3AA0(4);
      (a2)[2](a2, -1, v38);
    }
  }

  else
  {
    if (qword_1ED9558B8 != -1)
    {
      swift_once();
    }

    v28 = sub_1DF5647B4();
    __swift_project_value_buffer(v28, qword_1ED955C68);
    v29 = sub_1DF564794();
    v30 = sub_1DF564C24();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_1DF47EF6C(0xD000000000000031, 0x80000001DF571C20, v42);
      _os_log_impl(&dword_1DF47C000, v29, v30, "%{public}s Unable to create FollowUp controller.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1E12D75F0](v32, -1, -1);
      MEMORY[0x1E12D75F0](v31, -1, -1);
    }

    v41 = sub_1DF4B3AA0(2);
    (a2)[2](a2, -1, v41);

    v33 = v41;
  }
}

uint64_t sub_1DF4D73EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF53D3E0(a1, v4, v5, v6);
}

uint64_t sub_1DF4D74A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF4A5D38(a1, v4, v5, v6);
}

uint64_t sub_1DF4D7554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4CC300(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D7640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4CC8EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D7708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF4C6EC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF4D77C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4D1B0C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_1DF4D78FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38370, &qword_1DF569E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4D796C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4D142C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_1DF4D7A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4D1798(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D7B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4CF3F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D7BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4D0010(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D7CC4(uint64_t a1)
{
  v2 = type metadata accessor for InternalError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_7Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DF4D7D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4CDF30(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D7E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF48D3C0;

  return sub_1DF4CE98C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DF4D7F3C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF48D3C0;

  return sub_1DF4CD190(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DF4D804C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4CD9D0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF4D8168()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF4D8200;

  return sub_1DF4CA114(v2);
}

uint64_t sub_1DF4D8200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1DF4D8320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF48D3C0;

  return sub_1DF4CA550(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_80Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a1(*(v2 + 48));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1DF4D8488(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF48D3C0;

  return sub_1DF4CA9A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DF4D8580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DF4D8620;

  return MEMORY[0x1EEDC6260](a1, 0);
}

uint64_t sub_1DF4D8620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

char *sub_1DF4D8738()
{
  if (qword_1ED9550A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED9550B0);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v16 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_1DF47EF6C(0xD000000000000046, 0x80000001DF571F20, &v16);
    _os_log_impl(&dword_1DF47C000, v1, v2, "Including software capabilities in request %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1E12D75F0](v4, -1, -1);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v5 = sub_1DF4A9DAC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    v5 = sub_1DF4A9DAC((v6 > 1), v7 + 1, 1, v5);
    v6 = *(v5 + 3);
    v8 = v6 >> 1;
  }

  *(v5 + 2) = v9;
  v10 = &v5[16 * v7];
  *(v10 + 4) = 0xD000000000000016;
  *(v10 + 5) = 0x80000001DF571EC0;
  v11 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    v5 = sub_1DF4A9DAC((v6 > 1), v7 + 2, 1, v5);
  }

  *(v5 + 2) = v11;
  v12 = &v5[16 * v9];
  *(v12 + 4) = 0xD00000000000001BLL;
  *(v12 + 5) = 0x80000001DF571EE0;
  v13 = *(v5 + 3);
  if ((v7 + 3) > (v13 >> 1))
  {
    v5 = sub_1DF4A9DAC((v13 > 1), v7 + 3, 1, v5);
  }

  *(v5 + 2) = v7 + 3;
  v14 = &v5[16 * v11];
  *(v14 + 4) = 0xD000000000000011;
  *(v14 + 5) = 0x80000001DF571F00;
  return v5;
}

void sub_1DF4D8984(void *a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v7 = sub_1DF564494();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF564594();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = objc_allocWithZone(MEMORY[0x1E696AD68]);
  v15 = sub_1DF564314();
  v16 = [v14 initWithURL:v15 cachePolicy:1 timeoutInterval:v13];

  v17 = sub_1DF564914();
  v18 = sub_1DF564914();
  [v16 setValue:v17 forHTTPHeaderField:v18];

  [v16 setTimeoutInterval_];
  if (*(sub_1DF5644D4() + 16))
  {

    v19 = sub_1DF564914();
  }

  else
  {

    v19 = 0;
  }

  v20 = sub_1DF564914();
  [v16 setValue:v19 forHTTPHeaderField:v20];

  v21 = v5[4];
  v22 = v5[5];
  __swift_project_boxed_opaque_existential_0(v5 + 1, v21);
  (*(v22 + 8))(v21, v22);
  if (v23)
  {
    v24 = sub_1DF564914();

    v25 = sub_1DF564914();
    [v16 setValue:v24 forHTTPHeaderField:v25];
  }

  [v16 ak_addClientInfoHeader];
  [v16 ak_addCountryHeader];
  if (a1)
  {
    v26 = a1;
    v27 = [v26 aa_personID];
    v28 = sub_1DF564914();
    [v16 setValue:v27 forHTTPHeaderField:v28];

    if ([v16 respondsToSelector_])
    {
      [v16 aa:v26 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
    }

    else
    {
      if (qword_1ED9550A8 != -1)
      {
        swift_once();
      }

      v29 = sub_1DF5647B4();
      __swift_project_value_buffer(v29, qword_1ED9550B0);
      v30 = v16;
      v31 = sub_1DF564794();
      v32 = sub_1DF564C24();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        _os_log_impl(&dword_1DF47C000, v31, v32, "Unable to add authorization header to urlRequest: %@", v33, 0xCu);
        sub_1DF484888(v34);
        MEMORY[0x1E12D75F0](v34, -1, -1);
        MEMORY[0x1E12D75F0](v33, -1, -1);
      }
    }
  }

  v36 = [objc_opt_self() systemTimeZone];
  sub_1DF564584();

  sub_1DF564484();
  sub_1DF564554();
  v38 = v37;
  (*(v57 + 8))(v9, v58);
  (*(v55 + 8))(v12, v56);
  if (v38)
  {
    v39 = sub_1DF564914();

    v40 = sub_1DF564914();
    [v16 setValue:v39 forHTTPHeaderField:v40];
  }

  sub_1DF4D922C(v16);
  sub_1DF4D95EC(v16);
  __swift_project_boxed_opaque_existential_0(v5 + 11, v5[14]);
  sub_1DF4A52C0();
  if (v41)
  {
    v42 = sub_1DF564914();

    v43 = sub_1DF564914();
    [v16 setValue:v42 forHTTPHeaderField:v43];
  }

  __swift_project_boxed_opaque_existential_0(v5 + 11, v5[14]);
  if (sub_1DF4A5040())
  {
    v44 = sub_1DF564914();
    v45 = sub_1DF564914();
    [v16 setValue:v44 forHTTPHeaderField:v45];

    if (qword_1ED9550A8 != -1)
    {
      swift_once();
    }

    v46 = sub_1DF5647B4();
    __swift_project_value_buffer(v46, qword_1ED9550B0);
    v47 = sub_1DF564794();
    v48 = sub_1DF564C04();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DF47C000, v47, v48, "Adding retail device header to request.", v49, 2u);
      MEMORY[0x1E12D75F0](v49, -1, -1);
    }
  }

  if (os_variant_has_internal_ui())
  {
    v62[3] = &type metadata for FeatureFlag;
    v62[4] = sub_1DF481614();
    LOBYTE(v62[0]) = 4;
    v50 = sub_1DF5645A4();
    __swift_destroy_boxed_opaque_existential_0(v62);
    if (v50)
    {
      v51 = sub_1DF564914();
      v52 = sub_1DF564914();
      [v16 setValue:v51 forHTTPHeaderField:v52];
    }
  }

  if (v60 != 2)
  {
    sub_1DF4B9704(v59, v60);
    v53 = sub_1DF564914();

    v54 = sub_1DF564914();
    [v16 setValue:v53 forHTTPHeaderField:v54];
  }

  sub_1DF564094();
}

void sub_1DF4D922C(void *a1)
{
  v2 = v1;
  v4 = __swift_project_boxed_opaque_existential_0((v1 + 48), *(v1 + 72));
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  if (sub_1DF4AADE8())
  {
    if (qword_1ED9550A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED9550B0);
    v6 = sub_1DF564794();
    v7 = sub_1DF564C44();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1DF47EF6C(0x696B726F7774656ELL, 0xED000074732E676ELL, &v25);
      _os_log_impl(&dword_1DF47C000, v6, v7, "Including device capability header in request %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1E12D75F0](v9, -1, -1);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }

    v10 = &unk_1F5A88398;
  }

  else
  {
    if (qword_1ED9550A8 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED9550B0);
    v12 = sub_1DF564794();
    v13 = sub_1DF564C44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DF47C000, v12, v13, "Not including CT device capability header in request", v14, 2u);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    v10 = MEMORY[0x1E69E7CC0];
  }

  v15 = __swift_project_boxed_opaque_existential_0((v2 + 48), *(v2 + 72));
  if (*(*__swift_project_boxed_opaque_existential_0(v15, v15[3]) + 16) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DF4A9DAC(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    v18 = v16 >> 1;
    v19 = v17 + 1;
    if (v16 >> 1 <= v17)
    {
      v10 = sub_1DF4A9DAC((v16 > 1), v17 + 1, 1, v10);
      v16 = *(v10 + 3);
      v18 = v16 >> 1;
    }

    *(v10 + 2) = v19;
    v20 = &v10[16 * v17];
    *(v20 + 4) = 0x6C6C2E64756F6C63;
    *(v20 + 5) = 0xE90000000000006DLL;
    v21 = v17 + 2;
    if (v18 < v21)
    {
      v10 = sub_1DF4A9DAC((v16 > 1), v21, 1, v10);
    }

    *(v10 + 2) = v21;
    v22 = &v10[16 * v19];
    *(v22 + 4) = 7171180;
    *(v22 + 5) = 0xE300000000000000;
  }

  v25 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  sub_1DF4A9C0C();
  sub_1DF5648C4();

  v23 = sub_1DF564914();

  v24 = sub_1DF564914();
  [a1 setValue:v23 forHTTPHeaderField:v24];
}

void sub_1DF4D95EC(void *a1)
{
  v2 = sub_1DF4D8738();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF4A9DAC(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1DF4A9DAC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C6C2E64756F6C63;
  *(v5 + 5) = 0xE90000000000006DLL;
  sub_1DF4FCB98(byte_1F5A883C8);
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  sub_1DF4A9C0C();
  sub_1DF5648C4();

  v6 = sub_1DF564914();

  v7 = sub_1DF564914();
  [a1 setValue:v6 forHTTPHeaderField:{v7, v8}];
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1DF4D977C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF4D97C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *WaitlistCache.__allocating_init(defaults:bootSessionID:altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  if (a1)
  {
    result[2] = a1;
    result[3] = a2;
    result[4] = a3;
    result[5] = a4;
    result[6] = a5;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_1DF4D98C4()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 0x73736553746F6F62;
  v4 = 0x44495344746C61;
  if (v1 != 3)
  {
    v4 = 0x7974726964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656863746566;
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

uint64_t sub_1DF4D9964@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF4DC014(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF4D998C(uint64_t a1)
{
  v2 = sub_1DF4DA1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF4D99C8(uint64_t a1)
{
  v2 = sub_1DF4DA1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WaitlistCacheBox.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D68, &qword_1DF568EB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF4DA1D8();
  sub_1DF5652A4();
  v11 = *v3;
  v10[7] = 0;
  type metadata accessor for WaitlistResult();
  sub_1DF4DA890(&qword_1ECE37730, type metadata accessor for WaitlistResult, &protocol conformance descriptor for WaitlistResult);
  sub_1DF565074();
  if (!v2)
  {
    type metadata accessor for WaitlistCacheBox(0);
    v10[6] = 1;
    sub_1DF564494();
    sub_1DF4DA890(&qword_1ED955120, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF565074();
    v10[5] = 2;
    sub_1DF565054();
    v10[4] = 3;
    sub_1DF565024();
    v10[3] = 4;
    sub_1DF565064();
  }

  return (*(v6 + 8))(v8, v5);
}

void WaitlistCacheBox.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1DF564494();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D70, &qword_1DF568EB8);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WaitlistCacheBox(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_1DF4DA1D8();
  v26 = v8;
  sub_1DF565284();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v13 = v25;
    type metadata accessor for WaitlistResult();
    v33 = 0;
    sub_1DF4DA890(&qword_1ED954AD8, type metadata accessor for WaitlistResult, &protocol conformance descriptor for WaitlistResult);
    sub_1DF564FE4();
    v14 = v34;
    *v11 = v34;
    v32 = 1;
    sub_1DF4DA890(&qword_1ED955C88, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1DF564FE4();
    v22 = v14;
    (*(v24 + 32))(&v11[v9[5]], v6, v4);
    v31 = 2;
    v15 = sub_1DF564FC4();
    v16 = &v11[v9[6]];
    *v16 = v15;
    v16[1] = v17;
    v30 = 3;
    v18 = sub_1DF564F84();
    v19 = &v11[v9[7]];
    *v19 = v18;
    v19[1] = v20;
    v29 = 4;
    v21 = sub_1DF564FD4();
    (*(v13 + 8))(v26, v27);
    v11[v9[8]] = v21 & 1;
    sub_1DF4DA278(v11, v23);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_1DF4DA2DC(v11);
  }
}

void *WaitlistCache.init(defaults:bootSessionID:altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5[2] = a1;
    v5[3] = a2;
    v5[4] = a3;
    v5[5] = a4;
    v5[6] = a5;
  }

  else
  {

    type metadata accessor for WaitlistCache();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

unint64_t sub_1DF4DA1D8()
{
  result = qword_1ED954928;
  if (!qword_1ED954928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954928);
  }

  return result;
}

uint64_t type metadata accessor for WaitlistCacheBox(uint64_t a1)
{
  result = qword_1ED954EB8;
  if (!qword_1ED954EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF4DA278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitlistCacheBox(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF4DA2DC(uint64_t a1)
{
  v2 = type metadata accessor for WaitlistCacheBox(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF4DA35C()
{
  v1 = *(v0 + 16);
  v2 = sub_1DF564914();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1DF564374();
  v6 = v5;

  sub_1DF564144();
  swift_allocObject();
  sub_1DF564134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D78, &qword_1DF568EC0);
  sub_1DF4DA7F4(&qword_1ED9546A0, &qword_1ED954910, &protocol conformance descriptor for WaitlistCacheBox, MEMORY[0x1E69E6330]);
  sub_1DF564124();

  sub_1DF48C308(v4, v6);
  return v8;
}

uint64_t sub_1DF4DA4C8(uint64_t a1)
{
  sub_1DF5641C4();
  swift_allocObject();
  sub_1DF5641B4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D78, &qword_1DF568EC0);
  sub_1DF4DA7F4(&qword_1ECE374B8, &qword_1ECE37710, &protocol conformance descriptor for WaitlistCacheBox, MEMORY[0x1E69E6300]);
  v3 = sub_1DF5641A4();
  v5 = v4;

  v6 = *(v1 + 16);
  v7 = sub_1DF564354();
  v8 = sub_1DF564914();
  [v6 setObject:v7 forKey:v8];

  return sub_1DF48C308(v3, v5);
}

uint64_t sub_1DF4DA7F4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE37D78, &qword_1DF568EC0);
    sub_1DF4DA890(a2, type metadata accessor for WaitlistCacheBox, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF4DA890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_1DF4DA8D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1DF4DA35C();
  return sub_1DF4DA920;
}

uint64_t sub_1DF4DA920(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1DF4DA4C8(*a1);
  }

  sub_1DF4DA4C8(v2);
}

uint64_t sub_1DF4DA984(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WaitlistCacheBox(0);
  v8 = (v7 - 8);
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DF4DACD0(a1);
  sub_1DF564474();
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  *v11 = a1;
  v14 = (v11 + v8[8]);
  *v14 = v12;
  v14[1] = v13;
  v15 = (v11 + v8[9]);
  *v15 = a2;
  v15[1] = a3;
  *(v11 + v8[10]) = 0;

  v16 = a1;

  v17 = sub_1DF4DA35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AA8, &qword_1DF567EA0);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DF567CF0;
  sub_1DF4DA278(v11, v19 + v18);
  v34 = v17;
  sub_1DF4FCD7C(v19);
  sub_1DF4DA4C8(v34);
  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v20 = sub_1DF5647B4();
  __swift_project_value_buffer(v20, qword_1ED956088);
  v21 = v16;
  v22 = sub_1DF564794();
  v23 = sub_1DF564C44();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446466;
    v26 = MEMORY[0x1E12D6370](*&v21[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs], MEMORY[0x1E69E6158]);
    v28 = sub_1DF47EF6C(v26, v27, &v35);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v29 = (*&v21[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
    swift_beginAccess();
    v31 = *v29;
    v30 = v29[1];

    v32 = sub_1DF47EF6C(v31, v30, &v35);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_1DF47C000, v22, v23, "Cached new waitlist result: %{public}s - %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v25, -1, -1);
    MEMORY[0x1E12D75F0](v24, -1, -1);
  }

  return sub_1DF4DA2DC(v11);
}

void sub_1DF4DACD0(char *a1)
{
  v4 = type metadata accessor for WaitlistCacheBox(0);
  v44 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v40 - v7);
  v40 = v1;
  v41 = a1;
  v9 = *&a1[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs];
  v10 = sub_1DF4DA35C();
  v43 = *(v10 + 16);
  if (v43)
  {
    v11 = 0;
    v42 = v9 + 5;
    v12 = MEMORY[0x1E69E7CC0];
    while (v11 < *(v10 + 16))
    {
      v14 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v15 = *(v44 + 72);
      sub_1DF4DA278(v10 + v14 + v15 * v11, v8);
      v16 = *(*v8 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs);
      v17 = v16[2];
      v2 = v9;
      if (v17 == v9[2])
      {
        if (v17)
        {
          v13 = v16 == v9;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v21 = v16 + 5;
          v22 = v42;
          while (v17)
          {
            v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
            if (!v23 && (sub_1DF5650D4() & 1) == 0)
            {
              goto LABEL_12;
            }

            v21 += 2;
            v22 += 2;
            if (!--v17)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:
        sub_1DF4DA2DC(v8);
      }

      else
      {
LABEL_12:
        sub_1DF4DBC78(v8, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF4BCEB0(0, *(v12 + 16) + 1, 1);
          v12 = v46;
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1DF4BCEB0((v19 > 1), v20 + 1, 1);
          v12 = v46;
        }

        *(v12 + 16) = v20 + 1;
        sub_1DF4DBC78(v45, v12 + v14 + v20 * v15);
      }

      ++v11;
      v9 = v2;
      if (v11 == v43)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    swift_once();
    v24 = sub_1DF5647B4();
    __swift_project_value_buffer(v24, qword_1ED956088);
    v25 = v41;
    v26 = v2;
    v27 = sub_1DF564794();
    v28 = sub_1DF564C24();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543618;
      *(v29 + 4) = v25;
      *v30 = v25;
      *(v29 + 12) = 2114;
      v31 = v25;
      v32 = v2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v33;
      v30[1] = v33;
      _os_log_impl(&dword_1DF47C000, v27, v28, "Unable to encode waitlist result %{public}@: %{public}@", v29, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F10, &qword_1DF567510);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v30, -1, -1);
      MEMORY[0x1E12D75F0](v29, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_26:

    sub_1DF5641C4();
    swift_allocObject();
    sub_1DF5641B4();
    v46 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D78, &qword_1DF568EC0);
    sub_1DF4DA7F4(&qword_1ECE374B8, &qword_1ECE37710, &protocol conformance descriptor for WaitlistCacheBox, MEMORY[0x1E69E6300]);
    v34 = sub_1DF5641A4();
    v36 = v35;

    v37 = *(v40 + 16);
    v38 = sub_1DF564354();
    v39 = sub_1DF564914();
    [v37 setObject:v38 forKey:v39];

    sub_1DF48C308(v34, v36);
  }
}

uint64_t sub_1DF4DB1D4()
{
  v1 = type metadata accessor for WaitlistCacheBox(0);
  v2 = *(v1 - 1);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v25 - v6;
  v8 = sub_1DF4DA35C();
  v9 = *(v8 + 16);
  if (v9)
  {
    v25[2] = v0;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1DF4BCEB0(0, v9, 0);
    v10 = v26;
    v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v25[1] = v8;
    v12 = v8 + v11;
    v13 = *(v2 + 72);
    do
    {
      sub_1DF4DA278(v12, v5);
      v14 = *v5;
      v15 = v1[5];
      v16 = sub_1DF564494();
      (*(*(v16 - 8) + 32))(&v7[v15], &v5[v15], v16);
      v17 = v1[6];
      v18 = v1[7];
      v20 = *&v5[v17];
      v19 = *&v5[v17 + 8];
      *v7 = v14;
      v21 = &v7[v17];
      *v21 = v20;
      *(v21 + 1) = v19;
      *&v7[v1[7]] = *&v5[v18];
      v7[v1[8]] = 1;
      v26 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1DF4BCEB0((v22 > 1), v23 + 1, 1);
        v10 = v26;
      }

      *(v10 + 16) = v23 + 1;
      sub_1DF4DBC78(v7, v10 + v11 + v23 * v13);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  return sub_1DF4DA4C8(v10);
}

void sub_1DF4DB408()
{
  v1 = *(v0 + 16);
  v2 = sub_1DF564914();
  [v1 setURL:0 forKey:v2];
}

uint64_t WaitlistCache.deinit()
{

  return v0;
}

uint64_t WaitlistCache.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1DF4DB4FC(int a1, int a2)
{
  v82 = a2;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D88, &qword_1DF5690A8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = (&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v73 - v6;
  v80 = type metadata accessor for WaitlistCacheBox(0);
  v7 = *(v80 - 8);
  v8 = MEMORY[0x1EEE9AC00](v80);
  v79 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v74 = &v73 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v86 = (&v73 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v83 = &v73 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v73 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v73 - v24;
  v85 = v2;
  result = sub_1DF4DA35C();
  v27 = result;
  v28 = result[2];
  v87 = v7;
  v84 = v28;
  if (v28)
  {
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v80;
    v81 = v23;
    while (v29 < *(v27 + 16))
    {
      v32 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v33 = *(v7 + 72);
      sub_1DF4DA278(v27 + v32 + v33 * v29, v25);
      v34 = &v25[*(v31 + 24)];
      v35 = *v34 == *(v85 + 24) && *(v34 + 1) == *(v85 + 32);
      if (v35 || (sub_1DF5650D4() & 1) != 0 || (v78 & 1) != 0)
      {
        sub_1DF4DBC78(v25, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF4BCEB0(0, *(v30 + 16) + 1, 1);
          v31 = v80;
          v30 = v88;
        }

        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1DF4BCEB0((v37 > 1), v38 + 1, 1);
          v31 = v80;
          v30 = v88;
        }

        *(v30 + 16) = v38 + 1;
        v39 = v30 + v32 + v38 * v33;
        v23 = v81;
        result = sub_1DF4DBC78(v81, v39);
        v7 = v87;
      }

      else
      {
        result = sub_1DF4DA2DC(v25);
      }

      if (v84 == ++v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v31 = v80;
LABEL_18:

  v40 = *(v30 + 16);
  if (v40)
  {
    v41 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    while (v41 < *(v30 + 16))
    {
      v43 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v44 = *(v7 + 72);
      sub_1DF4DA278(v30 + v43 + v44 * v41, v20);
      if (v20[*(v31 + 32)] == 1 && (v82 & 1) == 0)
      {
        result = sub_1DF4DA2DC(v20);
      }

      else
      {
        sub_1DF4DBC78(v20, v83);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v42;
        if ((v45 & 1) == 0)
        {
          sub_1DF4BCEB0(0, *(v42 + 16) + 1, 1);
          v31 = v80;
          v42 = v88;
        }

        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1DF4BCEB0((v46 > 1), v47 + 1, 1);
          v31 = v80;
          v42 = v88;
        }

        *(v42 + 16) = v47 + 1;
        result = sub_1DF4DBC78(v83, v42 + v43 + v47 * v44);
        v7 = v87;
      }

      if (v40 == ++v41)
      {
        goto LABEL_31;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v85 = *(v42 + 16);
  if (!v85)
  {

    v68 = v76;
    (*(v7 + 56))(v76, 1, 1, v31);
    v69 = v31;
LABEL_48:
    v67 = v77;
LABEL_49:
    sub_1DF4DC1C4(v68, v67);
    if ((*(v7 + 48))(v67, 1, v69) == 1)
    {
      sub_1DF47E5B4(v67, &qword_1ECE37D88, &qword_1DF5690A8);
      return 0;
    }

    else
    {
      v72 = *v67;
      sub_1DF4DA2DC(v67);
      return v72;
    }
  }

  v48 = 0;
  while (v48 < *(v42 + 16))
  {
    v49 = v86;
    v50 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v51 = v42 + v50;
    v52 = *(v87 + 72);
    sub_1DF4DA278(v42 + v50 + v52 * v48, v86);
    v53 = *(*v49 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
    v54 = type metadata accessor for TicketStatus();
    v55 = objc_allocWithZone(v54);
    v56 = v53;
    result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (!result)
    {
      goto LABEL_57;
    }

    v57 = result;
    v58 = sub_1DF564CD4();

    if (v58)
    {

      v70 = v86;
      v71 = v75;
LABEL_47:
      sub_1DF4DBC78(v70, v71);
      v68 = v76;
      sub_1DF4DBC78(v71, v76);
      v7 = v87;
      v69 = v80;
      (*(v87 + 56))(v68, 0, 1, v80);
      goto LABEL_48;
    }

    ++v48;
    result = sub_1DF4DA2DC(v86);
    if (v85 == v48)
    {
      v59 = 0;
      v60 = v42 + v50;
      while (v59 < *(v42 + 16))
      {
        v61 = v79;
        sub_1DF4DA278(v60, v79);
        v62 = *(*v61 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
        v63 = objc_allocWithZone(v54);
        v64 = v62;
        result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
        if (!result)
        {
          goto LABEL_58;
        }

        v65 = result;
        v66 = sub_1DF564CD4();

        if (v66)
        {

          v70 = v79;
          v71 = v74;
          goto LABEL_47;
        }

        ++v59;
        result = sub_1DF4DA2DC(v79);
        v60 += v52;
        if (v85 == v59)
        {
          v67 = v77;
          if (!*(v42 + 16))
          {
            goto LABEL_56;
          }

          v68 = v76;
          sub_1DF4DA278(v51, v76);

          v7 = v87;
          v69 = v80;
          (*(v87 + 56))(v68, 0, 1, v80);
          goto LABEL_49;
        }
      }

      goto LABEL_55;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1DF4DBC78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitlistCacheBox(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DF4DBD04(uint64_t a1)
{
  type metadata accessor for WaitlistResult();
  if (v1 <= 0x3F)
  {
    sub_1DF564494();
    if (v2 <= 0x3F)
    {
      sub_1DF482924();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DF4DBF10()
{
  result = qword_1ECE37D80;
  if (!qword_1ECE37D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37D80);
  }

  return result;
}

unint64_t sub_1DF4DBF68()
{
  result = qword_1ED954918;
  if (!qword_1ED954918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954918);
  }

  return result;
}

unint64_t sub_1DF4DBFC0()
{
  result = qword_1ED954920;
  if (!qword_1ED954920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954920);
  }

  return result;
}

uint64_t sub_1DF4DC014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73736553746F6F62 && a2 == 0xED000044496E6F69 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974726964 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF4DC1C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D88, &qword_1DF5690A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CloudSubscriptionFeatures::TicketManagerError_optional __swiftcall TicketManagerError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DF4DC264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF4E5654();
  v5 = sub_1DF4995C8();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

void *sub_1DF4DC2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1DF564914();
  v8 = [v6 initWithSuiteName_];

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v9 = sub_1DF47E8A4();
  v11 = v10;
  type metadata accessor for WaitlistCache();
  v12 = swift_allocObject();
  if (v8)
  {
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = v11;
    v12[5] = a3;
    v12[6] = a4;

    v13 = sub_1DF4DB4FC(0, 0);

    return v13;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t static TicketManager.signupForWaitlist(featureID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4E5754;

  return sub_1DF4E3FF0(a1, a2);
}

uint64_t sub_1DF4DC61C(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4E5740;

  return sub_1DF4E3FF0(v3, v5);
}

uint64_t static TicketManager.getWaitlistStatus(featureID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF490980;

  return sub_1DF4E44A4(a1, a2);
}

uint64_t sub_1DF4DC924(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DF564944();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DF4DC9F4;

  return sub_1DF4E44A4(v3, v5);
}

uint64_t sub_1DF4DC9F4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_1DF5642E4();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1DF4DCB98(uint64_t a1, uint64_t a2)
{
  v3[117] = v2;
  v3[116] = a2;
  v3[115] = a1;
  v4 = sub_1DF564704();
  v3[118] = v4;
  v3[119] = *(v4 - 8);
  v3[120] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4DCC60, 0, 0);
}

char *sub_1DF4DCC60()
{
  v165 = v0;
  v1 = v0[120];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = OBJC_IVAR___CSFTicketManager_signposter;
  v0[121] = OBJC_IVAR___CSFTicketManager_signposter;
  v6 = (v2 + v5);
  __swift_project_boxed_opaque_existential_0((v2 + v5), *(v2 + v5 + 24));
  sub_1DF564724();
  sub_1DF5646E4();
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v7 = sub_1DF487DC4(0, v1, 0, 0);
  v0[122] = v7;
  v8 = (*(v2 + OBJC_IVAR___CSFTicketManager_getTicketMock))(v4, v3);
  if (v8)
  {
    v9 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_1DF48AD44(0, v7, 0xD000000000000012, 0x80000001DF572070);
    v10 = *&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
    v11 = *(*&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
    if (v11)
    {
      v157 = *&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
      v158 = v9;
      v163 = 0x80000001DF570800;
      v12 = 0;
      v2 = ( + 40);
      while (1)
      {
        v15 = *(v2 - 1);
        v14 = *v2;
        v16 = v15 == 0x6C6C2E64756F6C63 && v14 == 0xE90000000000006DLL;
        if (v16 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v12 && (v12 & 1) != 0)
          {
            goto LABEL_6;
          }

          v13 = 1;
          goto LABEL_5;
        }

        v17 = v15 == 0xD000000000000018 && 0x80000001DF5707C0 == v14;
        if (v17 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v12 && (v12 & 2) != 0)
          {
            goto LABEL_6;
          }

          v13 = 2;
          goto LABEL_5;
        }

        if (v15 == 0xD00000000000001CLL && 0x80000001DF570800 == v14 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v15 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v14) && (sub_1DF5650D4() & 1) == 0)
        {
          v18 = qword_1ED956018;

          if (v18 != -1)
          {
            swift_once();
          }

          v19 = sub_1DF5647B4();
          __swift_project_value_buffer(v19, qword_1ED956020);

          oslog = sub_1DF564794();
          v20 = sub_1DF564C24();

          v153 = v20;
          if (os_log_type_enabled(oslog, v20))
          {
            v21 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v164 = v152;
            *v21 = 136446210;
            v22 = sub_1DF47EF6C(v15, v14, &v164);

            *(v21 + 4) = v22;
            _os_log_impl(&dword_1DF47C000, oslog, v153, "Unable to determine returned feature: %{public}s", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v152);
            MEMORY[0x1E12D75F0](v152, -1, -1);
            MEMORY[0x1E12D75F0](v21, -1, -1);
          }

          else
          {
          }

          goto LABEL_6;
        }

        if (!v12 || (v12 & 8) == 0)
        {
          v13 = 8;
LABEL_5:
          v12 |= v13;
        }

LABEL_6:
        v2 += 2;
        if (!--v11)
        {

          v10 = v157;
          v9 = v158;
          goto LABEL_48;
        }
      }

      if (v12 && (v12 & 4) != 0)
      {
        goto LABEL_6;
      }

      v13 = 4;
      goto LABEL_5;
    }

    v12 = 0;
LABEL_48:

    v35 = v10;
    v36 = MobileGestalt_get_current_device();
    if (v36)
    {
      v37 = v36;
      v38 = v0 + 42;
      v39 = v0 + 90;
      v40 = MobileGestalt_copy_regionCode_obj();

      if (v40)
      {
        v41 = sub_1DF564944();
        v43 = v42;

        if (v41 == 18499 && v43 == 0xE200000000000000)
        {

          LOBYTE(v40) = 1;
        }

        else
        {
          LOBYTE(v40) = sub_1DF5650D4();
        }
      }

      v44 = v0[116];
      v45 = v0[115];
      *(v0 + 360) = 256;
      v0[91] = v45;
      v0[92] = v44;
      v0[93] = v35;
      v0[94] = v12;
      *(v0 + 380) = 0;
      v0[96] = 0;
      *(v0 + 776) = v40 & 1;
LABEL_55:
      v46 = v39[1];
      *v38 = *v39;
      v38[1] = v46;
      v38[2] = v39[2];
      *(v38 + 41) = *(v39 + 41);
LABEL_56:
      sub_1DF4E28F8(v38, sub_1DF47FD50);

      sub_1DF4E4A80(v39);
      (*(v0[119] + 8))(v0[120], v0[118]);

      v47 = v0[1];

      return v47(v9);
    }

    __break(1u);
    goto LABEL_196;
  }

  v23 = (*(v0[117] + OBJC_IVAR___CSFTicketManager_getCachedFeature))(v0[115], v0[116]);
  if (v23)
  {
    v2 = v23;
    v24 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    if (*(v2 + v24) == 1)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      v25 = sub_1DF5647B4();
      __swift_project_value_buffer(v25, qword_1ECE377B8);

      v26 = sub_1DF564794();
      v27 = sub_1DF564C44();

      v158 = v25;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = v0[116];
        v29 = v0;
        v30 = v0[115];
        v31 = swift_slowAlloc();
        v32 = v7;
        v33 = swift_slowAlloc();
        v164 = v33;
        *v31 = 136446210;
        *(v31 + 4) = sub_1DF47EF6C(v30, v28, &v164);
        _os_log_impl(&dword_1DF47C000, v26, v27, "Found active feature for feature ID %{public}s, returning .active ticket.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        v34 = v33;
        v7 = v32;
        MEMORY[0x1E12D75F0](v34, -1, -1);
        MEMORY[0x1E12D75F0](v31, -1, -1);
      }

      else
      {
        v29 = v0;
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(0, v7, 0xD000000000000019, 0x80000001DF572050);
      v163 = type metadata accessor for TicketStatus();
      objc_allocWithZone(v163);
      result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
      if (result)
      {
        v9 = result;
        v106 = v29[116];
        v107 = v29[115];
        v29[102] = v107;
        v12 = v29;
        v29[103] = v106;

        if (v107 == 0x6C6C2E64756F6C63 && v106 == 0xE90000000000006DLL || (sub_1DF5650D4() & 1) != 0)
        {
          v108 = 1;
          v0 = v29;
          goto LABEL_157;
        }

        v0 = v29;
        if (v29[115] == 0xD000000000000018 && 0x80000001DF5707C0 == v106 || (sub_1DF5650D4() & 1) != 0)
        {
          v108 = 2;
          goto LABEL_157;
        }

        v136 = v29[115];
        if (v136 == 0xD00000000000001CLL && 0x80000001DF570800 == v106 || (sub_1DF5650D4() & 1) != 0)
        {
          v108 = 4;
          goto LABEL_157;
        }

        if (v136 == 0xD00000000000001CLL && 0x80000001DF5707E0 == v106 || (sub_1DF5650D4() & 1) != 0)
        {
          v108 = 8;
          goto LABEL_157;
        }

        v137 = qword_1ED956018;

        if (v137 == -1)
        {
LABEL_191:
          __swift_project_value_buffer(v158, qword_1ED956020);

          v138 = sub_1DF564794();
          v139 = sub_1DF564C24();

          v140 = os_log_type_enabled(v138, v139);
          v141 = v0[116];
          if (v140)
          {
            v142 = v0[115];
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v164 = v144;
            *v143 = 136446210;
            v145 = sub_1DF47EF6C(v142, v141, &v164);

            *(v143 + 4) = v145;
            _os_log_impl(&dword_1DF47C000, v138, v139, "Unable to determine returned feature: %{public}s", v143, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v144);
            MEMORY[0x1E12D75F0](v144, -1, -1);
            v0 = v12;
            MEMORY[0x1E12D75F0](v143, -1, -1);
          }

          else
          {
          }

          v108 = 0;
LABEL_157:
          sub_1DF4BF4C8((v0 + 102));

          result = MobileGestalt_get_current_device();
          if (result)
          {
            v109 = result;
            v38 = v0 + 34;
            v39 = v0 + 82;
            v110 = MobileGestalt_copy_regionCode_obj();

            if (v110)
            {
              v111 = sub_1DF564944();
              v113 = v112;

              if (v111 == 18499 && v113 == 0xE200000000000000)
              {

                LOBYTE(v110) = 1;
              }

              else
              {
                LOBYTE(v110) = sub_1DF5650D4();
              }

              v0 = v12;
            }

            v119 = v0[116];
            v120 = v0[115];
            *(v0 + 328) = 256;
            v0[83] = v120;
            v0[84] = v119;
            v0[85] = v9;
            v0[86] = v108;
            *(v0 + 696) = 0;
            *(v0 + 697) = 2;
            v0[88] = 0;
            *(v0 + 712) = v110 & 1;
            v121 = v39[1];
            *v38 = *v39;
            v38[1] = v121;
            v38[2] = v39[2];
            *(v38 + 41) = *(v39 + 41);
            objc_allocWithZone(v163);
            result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
            if (result)
            {
              v122 = result;
              v123 = v0[116];
              v124 = v0[115];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
              v125 = swift_allocObject();
              *(v125 + 16) = xmmword_1DF567CF0;
              *(v125 + 32) = v124;
              *(v125 + 40) = v123;
              v126 = type metadata accessor for WaitlistResult();
              v127 = objc_allocWithZone(v126);
              v128 = &v127[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
              *v128 = 0;
              *(v128 + 1) = 0;
              *&v127[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v122;
              *&v127[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v125;
              v0[112] = v127;
              v0[113] = v126;

              v129 = v122;
              v9 = objc_msgSendSuper2(v0 + 56, sel_init);

              goto LABEL_56;
            }

            goto LABEL_200;
          }

LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

LABEL_196:
        swift_once();
        goto LABEL_191;
      }

LABEL_198:
      __break(1u);
      goto LABEL_199;
    }
  }

  v49 = (*(v0[117] + OBJC_IVAR___CSFTicketManager_getCachedTicket))(v0[115], v0[116]);
  v0[123] = v49;
  if (v49)
  {
    v9 = v49;
    v50 = OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status;
    v51 = *(v49 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
    v52 = type metadata accessor for TicketStatus();
    objc_allocWithZone(v52);
    v53 = v51;
    result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
    if (!result)
    {
      __break(1u);
      goto LABEL_198;
    }

    v54 = result;
    v55 = sub_1DF564CD4();

    if (v55)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      osloga = sub_1DF5647B4();
      __swift_project_value_buffer(osloga, qword_1ECE377B8);

      v56 = sub_1DF564794();
      v57 = sub_1DF564C44();

      v161 = v0;
      if (os_log_type_enabled(v56, v57))
      {
        v58 = v0[116];
        v59 = v9;
        v60 = v0[115];
        v61 = v7;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v164 = v63;
        *v62 = 136446210;
        v64 = v60;
        v9 = v59;
        *(v62 + 4) = sub_1DF47EF6C(v64, v58, &v164);
        _os_log_impl(&dword_1DF47C000, v56, v57, "Found enqueued ticket for feature ID %{public}s, returning .enqueued ticket.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x1E12D75F0](v63, -1, -1);
        v65 = v62;
        v7 = v61;
        MEMORY[0x1E12D75F0](v65, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(0, v7, 0xD00000000000001FLL, 0x80000001DF572030);
      objc_allocWithZone(v52);
      result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
      if (!result)
      {
        goto LABEL_201;
      }

      v66 = result;
      v0 = v161;
      v38 = v161 + 26;
      v39 = v161 + 74;
      v67 = *(*&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
      if (!v67)
      {
        v68 = 0;
LABEL_174:
        v130 = v0[116];
        v131 = v0[115];

        v132 = sub_1DF4A57C0();
        *(v0 + 296) = 256;
        v0[75] = v131;
        v0[76] = v130;
        v0[77] = v66;
        v0[78] = v68;
        *(v0 + 632) = 0;
        *(v0 + 633) = 1;
        v0[80] = 0;
        *(v0 + 648) = v132 & 1;
        goto LABEL_55;
      }

      v159 = v9;
      v68 = 0;
      v69 = ( + 40);
      while (1)
      {
        v72 = *(v69 - 1);
        v71 = *v69;
        v73 = v72 == 0x6C6C2E64756F6C63 && v71 == 0xE90000000000006DLL;
        if (v73 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v68 && (v68 & 1) != 0)
          {
            goto LABEL_72;
          }

          v70 = 1;
          goto LABEL_71;
        }

        v74 = v72 == 0xD000000000000018 && 0x80000001DF5707C0 == v71;
        if (v74 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v68 && (v68 & 2) != 0)
          {
            goto LABEL_72;
          }

          v70 = 2;
          goto LABEL_71;
        }

        if (v72 == 0xD00000000000001CLL && 0x80000001DF570800 == v71 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v72 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v71) && (sub_1DF5650D4() & 1) == 0)
        {
          v75 = qword_1ED956018;

          if (v75 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(osloga, qword_1ED956020);

          log = sub_1DF564794();
          v76 = sub_1DF564C24();

          v148 = v76;
          if (os_log_type_enabled(log, v76))
          {
            v77 = swift_slowAlloc();
            v146 = swift_slowAlloc();
            v164 = v146;
            *v77 = 136446210;
            v78 = sub_1DF47EF6C(v72, v71, &v164);

            *(v77 + 4) = v78;
            _os_log_impl(&dword_1DF47C000, log, v148, "Unable to determine returned feature: %{public}s", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v146);
            MEMORY[0x1E12D75F0](v146, -1, -1);
            MEMORY[0x1E12D75F0](v77, -1, -1);
          }

          else
          {
          }

          goto LABEL_72;
        }

        if (!v68 || (v68 & 8) == 0)
        {
          v70 = 8;
LABEL_71:
          v68 |= v70;
        }

LABEL_72:
        v69 += 2;
        if (!--v67)
        {

          v0 = v161;
          v9 = v159;
          goto LABEL_174;
        }
      }

      if (v68 && (v68 & 4) != 0)
      {
        goto LABEL_72;
      }

      v70 = 4;
      goto LABEL_71;
    }

    v79 = *&v9[v50];
    objc_allocWithZone(v52);
    v80 = v79;
    result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (!result)
    {
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      return result;
    }

    v81 = result;
    v82 = sub_1DF564CD4();

    if (v82)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      oslogb = sub_1DF5647B4();
      __swift_project_value_buffer(oslogb, qword_1ECE377B8);

      v83 = sub_1DF564794();
      v84 = sub_1DF564C24();

      v162 = v0;
      if (os_log_type_enabled(v83, v84))
      {
        v85 = v0[116];
        v86 = v9;
        v87 = v0[115];
        v88 = v7;
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v164 = v90;
        *v89 = 136446210;
        v91 = v87;
        v9 = v86;
        *(v89 + 4) = sub_1DF47EF6C(v91, v85, &v164);
        _os_log_impl(&dword_1DF47C000, v83, v84, "Found active ticket for feature ID %{public}s, returning .active ticket. There was no cached feature so this is unexpected.", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x1E12D75F0](v90, -1, -1);
        v92 = v89;
        v7 = v88;
        MEMORY[0x1E12D75F0](v92, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(0, v7, 0xD00000000000001DLL, 0x80000001DF572010);
      objc_allocWithZone(v52);
      result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
      if (!result)
      {
        goto LABEL_203;
      }

      v93 = result;
      v0 = v162;
      v38 = v162 + 18;
      v39 = v162 + 66;
      v94 = *(*&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
      if (!v94)
      {
        v95 = 0;
LABEL_181:
        v133 = v0[116];
        v134 = v0[115];

        v135 = sub_1DF4A57C0();
        *(v0 + 264) = 256;
        v0[67] = v134;
        v0[68] = v133;
        v0[69] = v93;
        v0[70] = v95;
        *(v0 + 568) = 0;
        *(v0 + 569) = 1;
        v0[72] = 0;
        *(v0 + 584) = v135 & 1;
        goto LABEL_55;
      }

      v160 = v9;
      v95 = 0;
      v96 = ( + 40);
      while (1)
      {
        v99 = *(v96 - 1);
        v98 = *v96;
        v100 = v99 == 0x6C6C2E64756F6C63 && v98 == 0xE90000000000006DLL;
        if (v100 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v95 && (v95 & 1) != 0)
          {
            goto LABEL_117;
          }

          v97 = 1;
          goto LABEL_116;
        }

        v101 = v99 == 0xD000000000000018 && 0x80000001DF5707C0 == v98;
        if (v101 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v95 && (v95 & 2) != 0)
          {
            goto LABEL_117;
          }

          v97 = 2;
          goto LABEL_116;
        }

        if (v99 == 0xD00000000000001CLL && 0x80000001DF570800 == v98 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v99 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v98) && (sub_1DF5650D4() & 1) == 0)
        {
          v102 = qword_1ED956018;

          if (v102 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(oslogb, qword_1ED956020);

          loga = sub_1DF564794();
          v103 = sub_1DF564C24();

          v149 = v103;
          if (os_log_type_enabled(loga, v103))
          {
            v104 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v164 = v147;
            *v104 = 136446210;
            v105 = sub_1DF47EF6C(v99, v98, &v164);

            *(v104 + 4) = v105;
            _os_log_impl(&dword_1DF47C000, loga, v149, "Unable to determine returned feature: %{public}s", v104, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v147);
            MEMORY[0x1E12D75F0](v147, -1, -1);
            MEMORY[0x1E12D75F0](v104, -1, -1);
          }

          else
          {
          }

          goto LABEL_117;
        }

        if (!v95 || (v95 & 8) == 0)
        {
          v97 = 8;
LABEL_116:
          v95 |= v97;
        }

LABEL_117:
        v96 += 2;
        if (!--v94)
        {

          v0 = v162;
          v9 = v160;
          goto LABEL_181;
        }
      }

      if (v95 && (v95 & 4) != 0)
      {
        goto LABEL_117;
      }

      v97 = 4;
      goto LABEL_116;
    }
  }

  __swift_project_boxed_opaque_existential_0((v0[117] + OBJC_IVAR___CSFTicketManager_provider), *(v0[117] + OBJC_IVAR___CSFTicketManager_provider + 24));
  if (qword_1ED954AC8 != -1)
  {
    swift_once();
  }

  v114 = qword_1ED954AD0;
  v0[107] = &type metadata for Device;
  v0[108] = &off_1F5A89060;
  v115 = swift_allocObject();
  v0[104] = v115;
  v115[5] = type metadata accessor for HardwareChecker();
  v115[6] = &off_1F5A89048;
  v115[2] = v114;

  v116 = swift_task_alloc();
  v0[124] = v116;
  *v116 = v0;
  v116[1] = sub_1DF4DE4F0;
  v117 = v0[116];
  v118 = v0[115];

  return sub_1DF50A7F4(v118, v117, (v0 + 104), v0 + 73);
}

uint64_t sub_1DF4DE4F0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1000) = a1;

  if (v1)
  {
    *(v3 + 74) = *(v3 + 73);
    v4 = sub_1DF4DEADC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 832));
    v4 = sub_1DF4DE614;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF4DE614()
{
  v34 = v0;
  v1 = *(v0 + 984);
  v2 = (*(v0 + 936) + *(v0 + 968));
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v3 = *(v0 + 976);
  v4 = *(v0 + 1000);
  if (v1)
  {
    v5 = 0xD000000000000023;
    v6 = 0x80000001DF571FE0;
  }

  else
  {
    v6 = 0xE900000000000031;
    v5 = 0x3D73736563637573;
  }

  sub_1DF48AD44(0, v3, v5, v6);
  v7 = *(v0 + 1000);
  v8 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs];
  v32 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];

  v9 = *(v8 + 16);
  v10 = 0;
  if (v9)
  {
    v11 = (v8 + 40);
    while (1)
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      v15 = v13 == 0x6C6C2E64756F6C63 && v14 == 0xE90000000000006DLL;
      if (v15 || (sub_1DF5650D4() & 1) != 0)
      {
        if (v10 && (v10 & 1) != 0)
        {
          goto LABEL_8;
        }

        v12 = 1;
        goto LABEL_7;
      }

      v16 = v13 == 0xD000000000000018 && 0x80000001DF5707C0 == v14;
      if (v16 || (sub_1DF5650D4() & 1) != 0)
      {
        if (v10 && (v10 & 2) != 0)
        {
          goto LABEL_8;
        }

        v12 = 2;
        goto LABEL_7;
      }

      if (v13 == 0xD00000000000001CLL && 0x80000001DF570800 == v14 || (sub_1DF5650D4() & 1) != 0)
      {
        break;
      }

      if ((v13 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v14) && (sub_1DF5650D4() & 1) == 0)
      {
        v17 = qword_1ED956018;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = sub_1DF5647B4();
        __swift_project_value_buffer(v18, qword_1ED956020);

        oslog = sub_1DF564794();
        v19 = sub_1DF564C24();

        v30 = v19;
        if (os_log_type_enabled(oslog, v19))
        {
          v20 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v33 = v29;
          *v20 = 136446210;
          v21 = sub_1DF47EF6C(v13, v14, &v33);

          *(v20 + 4) = v21;
          _os_log_impl(&dword_1DF47C000, oslog, v30, "Unable to determine returned feature: %{public}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x1E12D75F0](v29, -1, -1);
          MEMORY[0x1E12D75F0](v20, -1, -1);
        }

        else
        {
        }

        goto LABEL_8;
      }

      if (!v10 || (v10 & 8) == 0)
      {
        v12 = 8;
LABEL_7:
        v10 |= v12;
      }

LABEL_8:
      v11 += 2;
      if (!--v9)
      {
        goto LABEL_42;
      }
    }

    if (v10 && (v10 & 4) != 0)
    {
      goto LABEL_8;
    }

    v12 = 4;
    goto LABEL_7;
  }

LABEL_42:
  v22 = *(v0 + 928);
  v23 = *(v0 + 920);

  v24 = sub_1DF4A57C0();
  *(v0 + 464) = 256;
  *(v0 + 472) = v23;
  *(v0 + 480) = v22;
  *(v0 + 488) = v32;
  *(v0 + 496) = v10;
  *(v0 + 504) = 768;
  *(v0 + 512) = 0;
  *(v0 + 520) = v24 & 1;
  v25 = *(v0 + 480);
  *(v0 + 80) = *(v0 + 464);
  *(v0 + 96) = v25;
  *(v0 + 112) = *(v0 + 496);
  *(v0 + 121) = *(v0 + 505);
  sub_1DF4E28F8((v0 + 80), sub_1DF47FD50);

  sub_1DF4E4A80(v0 + 464);
  v26 = *(v0 + 1000);
  (*(*(v0 + 952) + 8))(*(v0 + 960), *(v0 + 944));

  v27 = *(v0 + 8);

  return v27(v26);
}

id sub_1DF4DEADC()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 976);
  v3 = (*(v0 + 936) + *(v0 + 968));
  __swift_destroy_boxed_opaque_existential_0((v0 + 832));
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_1DF564DF4();

  *(v0 + 912) = v1;
  v4 = sub_1DF5650A4();
  MEMORY[0x1E12D62C0](v4);

  sub_1DF48AD44(0, v2, 0xD000000000000014, 0x80000001DF571FC0);

  sub_1DF4E4A2C();
  v5 = swift_allocError();
  *v6 = v1;

  v7 = v5;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v9 = result;
    v10 = MobileGestalt_copy_regionCode_obj();

    if (v10)
    {
      v11 = sub_1DF564944();
      v13 = v12;

      if (v11 == 18499 && v13 == 0xE200000000000000)
      {

        v14 = 1;
      }

      else
      {
        v14 = sub_1DF5650D4();
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + 74);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v23 = *(v0 + 944);
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);

    *(v0 + 400) = 0;
    *(v0 + 408) = v19;
    *(v0 + 416) = v18;
    *(v0 + 424) = 0;
    *(v0 + 432) = 0;
    *(v0 + 440) = 1025;
    *(v0 + 448) = v5;
    *(v0 + 456) = v14 & 1;
    v20 = *(v0 + 416);
    *(v0 + 16) = *(v0 + 400);
    *(v0 + 32) = v20;
    *(v0 + 48) = *(v0 + 432);
    *(v0 + 57) = *(v0 + 441);
    swift_allocError();
    *v21 = v15;
    swift_willThrow();
    sub_1DF4E28F8((v0 + 16), sub_1DF47FD50);

    sub_1DF4E4A80(v0 + 400);
    (*(v17 + 8))(v16, v23);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4DEF44(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1DF564944();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1DF4E5744;

  return sub_1DF4DCB98(v5, v7);
}

uint64_t sub_1DF4DF018(uint64_t a1, uint64_t a2)
{
  v3[117] = v2;
  v3[116] = a2;
  v3[115] = a1;
  v4 = sub_1DF564704();
  v3[118] = v4;
  v3[119] = *(v4 - 8);
  v3[120] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF4DF0E0, 0, 0);
}

char *sub_1DF4DF0E0()
{
  v165 = v0;
  v1 = v0[120];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = OBJC_IVAR___CSFTicketManager_signposter;
  v0[121] = OBJC_IVAR___CSFTicketManager_signposter;
  v6 = (v2 + v5);
  __swift_project_boxed_opaque_existential_0((v2 + v5), *(v2 + v5 + 24));
  sub_1DF564724();
  sub_1DF5646E4();
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v7 = sub_1DF487DC4(1, v1, 0, 0);
  v0[122] = v7;
  v8 = (*(v2 + OBJC_IVAR___CSFTicketManager_getTicketMock))(v4, v3);
  if (v8)
  {
    v9 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_1DF48AD44(1u, v7, 0xD000000000000012, 0x80000001DF572070);
    v10 = *&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
    v11 = *(*&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
    if (v11)
    {
      v157 = *&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];
      v158 = v9;
      v163 = 0x80000001DF570800;
      v12 = 0;
      v2 = ( + 40);
      while (1)
      {
        v15 = *(v2 - 1);
        v14 = *v2;
        v16 = v15 == 0x6C6C2E64756F6C63 && v14 == 0xE90000000000006DLL;
        if (v16 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v12 && (v12 & 1) != 0)
          {
            goto LABEL_6;
          }

          v13 = 1;
          goto LABEL_5;
        }

        v17 = v15 == 0xD000000000000018 && 0x80000001DF5707C0 == v14;
        if (v17 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v12 && (v12 & 2) != 0)
          {
            goto LABEL_6;
          }

          v13 = 2;
          goto LABEL_5;
        }

        if (v15 == 0xD00000000000001CLL && 0x80000001DF570800 == v14 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v15 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v14) && (sub_1DF5650D4() & 1) == 0)
        {
          v18 = qword_1ED956018;

          if (v18 != -1)
          {
            swift_once();
          }

          v19 = sub_1DF5647B4();
          __swift_project_value_buffer(v19, qword_1ED956020);

          oslog = sub_1DF564794();
          v20 = sub_1DF564C24();

          v153 = v20;
          if (os_log_type_enabled(oslog, v20))
          {
            v21 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v164 = v152;
            *v21 = 136446210;
            v22 = sub_1DF47EF6C(v15, v14, &v164);

            *(v21 + 4) = v22;
            _os_log_impl(&dword_1DF47C000, oslog, v153, "Unable to determine returned feature: %{public}s", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v152);
            MEMORY[0x1E12D75F0](v152, -1, -1);
            MEMORY[0x1E12D75F0](v21, -1, -1);
          }

          else
          {
          }

          goto LABEL_6;
        }

        if (!v12 || (v12 & 8) == 0)
        {
          v13 = 8;
LABEL_5:
          v12 |= v13;
        }

LABEL_6:
        v2 += 2;
        if (!--v11)
        {

          v10 = v157;
          v9 = v158;
          goto LABEL_48;
        }
      }

      if (v12 && (v12 & 4) != 0)
      {
        goto LABEL_6;
      }

      v13 = 4;
      goto LABEL_5;
    }

    v12 = 0;
LABEL_48:

    v35 = v10;
    v36 = MobileGestalt_get_current_device();
    if (v36)
    {
      v37 = v36;
      v38 = v0 + 42;
      v39 = v0 + 90;
      v40 = MobileGestalt_copy_regionCode_obj();

      if (v40)
      {
        v41 = sub_1DF564944();
        v43 = v42;

        if (v41 == 18499 && v43 == 0xE200000000000000)
        {

          LOBYTE(v40) = 1;
        }

        else
        {
          LOBYTE(v40) = sub_1DF5650D4();
        }
      }

      v44 = v0[116];
      v45 = v0[115];
      *(v0 + 360) = 257;
      v0[91] = v45;
      v0[92] = v44;
      v0[93] = v35;
      v0[94] = v12;
      *(v0 + 380) = 0;
      v0[96] = 0;
      *(v0 + 776) = v40 & 1;
LABEL_55:
      v46 = v39[1];
      *v38 = *v39;
      v38[1] = v46;
      v38[2] = v39[2];
      *(v38 + 41) = *(v39 + 41);
LABEL_56:
      sub_1DF4E28F8(v38, sub_1DF47FD50);

      sub_1DF4E4A80(v39);
      (*(v0[119] + 8))(v0[120], v0[118]);

      v47 = v0[1];

      return v47(v9);
    }

    __break(1u);
    goto LABEL_196;
  }

  v23 = (*(v0[117] + OBJC_IVAR___CSFTicketManager_getCachedFeature))(v0[115], v0[116]);
  if (v23)
  {
    v2 = v23;
    v24 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    if (*(v2 + v24) == 1)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      v25 = sub_1DF5647B4();
      __swift_project_value_buffer(v25, qword_1ECE377B8);

      v26 = sub_1DF564794();
      v27 = sub_1DF564C44();

      v158 = v25;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = v0[116];
        v29 = v0;
        v30 = v0[115];
        v31 = swift_slowAlloc();
        v32 = v7;
        v33 = swift_slowAlloc();
        v164 = v33;
        *v31 = 136446210;
        *(v31 + 4) = sub_1DF47EF6C(v30, v28, &v164);
        _os_log_impl(&dword_1DF47C000, v26, v27, "Found active feature for feature ID %{public}s, returning .active ticket.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        v34 = v33;
        v7 = v32;
        MEMORY[0x1E12D75F0](v34, -1, -1);
        MEMORY[0x1E12D75F0](v31, -1, -1);
      }

      else
      {
        v29 = v0;
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(1u, v7, 0xD000000000000019, 0x80000001DF572050);
      v163 = type metadata accessor for TicketStatus();
      objc_allocWithZone(v163);
      result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
      if (result)
      {
        v9 = result;
        v106 = v29[116];
        v107 = v29[115];
        v29[102] = v107;
        v12 = v29;
        v29[103] = v106;

        if (v107 == 0x6C6C2E64756F6C63 && v106 == 0xE90000000000006DLL || (sub_1DF5650D4() & 1) != 0)
        {
          v108 = 1;
          v0 = v29;
          goto LABEL_157;
        }

        v0 = v29;
        if (v29[115] == 0xD000000000000018 && 0x80000001DF5707C0 == v106 || (sub_1DF5650D4() & 1) != 0)
        {
          v108 = 2;
          goto LABEL_157;
        }

        v136 = v29[115];
        if (v136 == 0xD00000000000001CLL && 0x80000001DF570800 == v106 || (sub_1DF5650D4() & 1) != 0)
        {
          v108 = 4;
          goto LABEL_157;
        }

        if (v136 == 0xD00000000000001CLL && 0x80000001DF5707E0 == v106 || (sub_1DF5650D4() & 1) != 0)
        {
          v108 = 8;
          goto LABEL_157;
        }

        v137 = qword_1ED956018;

        if (v137 == -1)
        {
LABEL_191:
          __swift_project_value_buffer(v158, qword_1ED956020);

          v138 = sub_1DF564794();
          v139 = sub_1DF564C24();

          v140 = os_log_type_enabled(v138, v139);
          v141 = v0[116];
          if (v140)
          {
            v142 = v0[115];
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v164 = v144;
            *v143 = 136446210;
            v145 = sub_1DF47EF6C(v142, v141, &v164);

            *(v143 + 4) = v145;
            _os_log_impl(&dword_1DF47C000, v138, v139, "Unable to determine returned feature: %{public}s", v143, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v144);
            MEMORY[0x1E12D75F0](v144, -1, -1);
            v0 = v12;
            MEMORY[0x1E12D75F0](v143, -1, -1);
          }

          else
          {
          }

          v108 = 0;
LABEL_157:
          sub_1DF4BF4C8((v0 + 102));

          result = MobileGestalt_get_current_device();
          if (result)
          {
            v109 = result;
            v38 = v0 + 34;
            v39 = v0 + 82;
            v110 = MobileGestalt_copy_regionCode_obj();

            if (v110)
            {
              v111 = sub_1DF564944();
              v113 = v112;

              if (v111 == 18499 && v113 == 0xE200000000000000)
              {

                LOBYTE(v110) = 1;
              }

              else
              {
                LOBYTE(v110) = sub_1DF5650D4();
              }

              v0 = v12;
            }

            v119 = v0[116];
            v120 = v0[115];
            *(v0 + 328) = 257;
            v0[83] = v120;
            v0[84] = v119;
            v0[85] = v9;
            v0[86] = v108;
            *(v0 + 696) = 0;
            *(v0 + 697) = 2;
            v0[88] = 0;
            *(v0 + 712) = v110 & 1;
            v121 = v39[1];
            *v38 = *v39;
            v38[1] = v121;
            v38[2] = v39[2];
            *(v38 + 41) = *(v39 + 41);
            objc_allocWithZone(v163);
            result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
            if (result)
            {
              v122 = result;
              v123 = v0[116];
              v124 = v0[115];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
              v125 = swift_allocObject();
              *(v125 + 16) = xmmword_1DF567CF0;
              *(v125 + 32) = v124;
              *(v125 + 40) = v123;
              v126 = type metadata accessor for WaitlistResult();
              v127 = objc_allocWithZone(v126);
              v128 = &v127[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
              *v128 = 0;
              *(v128 + 1) = 0;
              *&v127[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v122;
              *&v127[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v125;
              v0[112] = v127;
              v0[113] = v126;

              v129 = v122;
              v9 = objc_msgSendSuper2(v0 + 56, sel_init);

              goto LABEL_56;
            }

            goto LABEL_200;
          }

LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
          goto LABEL_202;
        }

LABEL_196:
        swift_once();
        goto LABEL_191;
      }

LABEL_198:
      __break(1u);
      goto LABEL_199;
    }
  }

  v49 = (*(v0[117] + OBJC_IVAR___CSFTicketManager_getCachedTicket))(v0[115], v0[116]);
  v0[123] = v49;
  if (v49)
  {
    v9 = v49;
    v50 = OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status;
    v51 = *(v49 + OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status);
    v52 = type metadata accessor for TicketStatus();
    objc_allocWithZone(v52);
    v53 = v51;
    result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
    if (!result)
    {
      __break(1u);
      goto LABEL_198;
    }

    v54 = result;
    v55 = sub_1DF564CD4();

    if (v55)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      osloga = sub_1DF5647B4();
      __swift_project_value_buffer(osloga, qword_1ECE377B8);

      v56 = sub_1DF564794();
      v57 = sub_1DF564C44();

      v161 = v0;
      if (os_log_type_enabled(v56, v57))
      {
        v58 = v0[116];
        v59 = v9;
        v60 = v0[115];
        v61 = v7;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v164 = v63;
        *v62 = 136446210;
        v64 = v60;
        v9 = v59;
        *(v62 + 4) = sub_1DF47EF6C(v64, v58, &v164);
        _os_log_impl(&dword_1DF47C000, v56, v57, "Found enqueued ticket for feature ID %{public}s, returning .enqueued ticket.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x1E12D75F0](v63, -1, -1);
        v65 = v62;
        v7 = v61;
        MEMORY[0x1E12D75F0](v65, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(1u, v7, 0xD00000000000001FLL, 0x80000001DF572030);
      objc_allocWithZone(v52);
      result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
      if (!result)
      {
        goto LABEL_201;
      }

      v66 = result;
      v0 = v161;
      v38 = v161 + 26;
      v39 = v161 + 74;
      v67 = *(*&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
      if (!v67)
      {
        v68 = 0;
LABEL_174:
        v130 = v0[116];
        v131 = v0[115];

        v132 = sub_1DF4A57C0();
        *(v0 + 296) = 257;
        v0[75] = v131;
        v0[76] = v130;
        v0[77] = v66;
        v0[78] = v68;
        *(v0 + 632) = 0;
        *(v0 + 633) = 1;
        v0[80] = 0;
        *(v0 + 648) = v132 & 1;
        goto LABEL_55;
      }

      v159 = v9;
      v68 = 0;
      v69 = ( + 40);
      while (1)
      {
        v72 = *(v69 - 1);
        v71 = *v69;
        v73 = v72 == 0x6C6C2E64756F6C63 && v71 == 0xE90000000000006DLL;
        if (v73 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v68 && (v68 & 1) != 0)
          {
            goto LABEL_72;
          }

          v70 = 1;
          goto LABEL_71;
        }

        v74 = v72 == 0xD000000000000018 && 0x80000001DF5707C0 == v71;
        if (v74 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v68 && (v68 & 2) != 0)
          {
            goto LABEL_72;
          }

          v70 = 2;
          goto LABEL_71;
        }

        if (v72 == 0xD00000000000001CLL && 0x80000001DF570800 == v71 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v72 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v71) && (sub_1DF5650D4() & 1) == 0)
        {
          v75 = qword_1ED956018;

          if (v75 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(osloga, qword_1ED956020);

          log = sub_1DF564794();
          v76 = sub_1DF564C24();

          v148 = v76;
          if (os_log_type_enabled(log, v76))
          {
            v77 = swift_slowAlloc();
            v146 = swift_slowAlloc();
            v164 = v146;
            *v77 = 136446210;
            v78 = sub_1DF47EF6C(v72, v71, &v164);

            *(v77 + 4) = v78;
            _os_log_impl(&dword_1DF47C000, log, v148, "Unable to determine returned feature: %{public}s", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v146);
            MEMORY[0x1E12D75F0](v146, -1, -1);
            MEMORY[0x1E12D75F0](v77, -1, -1);
          }

          else
          {
          }

          goto LABEL_72;
        }

        if (!v68 || (v68 & 8) == 0)
        {
          v70 = 8;
LABEL_71:
          v68 |= v70;
        }

LABEL_72:
        v69 += 2;
        if (!--v67)
        {

          v0 = v161;
          v9 = v159;
          goto LABEL_174;
        }
      }

      if (v68 && (v68 & 4) != 0)
      {
        goto LABEL_72;
      }

      v70 = 4;
      goto LABEL_71;
    }

    v79 = *&v9[v50];
    objc_allocWithZone(v52);
    v80 = v79;
    result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
    if (!result)
    {
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      return result;
    }

    v81 = result;
    v82 = sub_1DF564CD4();

    if (v82)
    {
      if (qword_1ECE377B0 != -1)
      {
        swift_once();
      }

      oslogb = sub_1DF5647B4();
      __swift_project_value_buffer(oslogb, qword_1ECE377B8);

      v83 = sub_1DF564794();
      v84 = sub_1DF564C24();

      v162 = v0;
      if (os_log_type_enabled(v83, v84))
      {
        v85 = v0[116];
        v86 = v9;
        v87 = v0[115];
        v88 = v7;
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v164 = v90;
        *v89 = 136446210;
        v91 = v87;
        v9 = v86;
        *(v89 + 4) = sub_1DF47EF6C(v91, v85, &v164);
        _os_log_impl(&dword_1DF47C000, v83, v84, "Found active ticket for feature ID %{public}s, returning .active ticket. There was no cached feature so this is unexpected.", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x1E12D75F0](v90, -1, -1);
        v92 = v89;
        v7 = v88;
        MEMORY[0x1E12D75F0](v92, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0(v6, v6[3]);
      sub_1DF48AD44(1u, v7, 0xD00000000000001DLL, 0x80000001DF572010);
      objc_allocWithZone(v52);
      result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
      if (!result)
      {
        goto LABEL_203;
      }

      v93 = result;
      v0 = v162;
      v38 = v162 + 18;
      v39 = v162 + 66;
      v94 = *(*&v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] + 16);
      if (!v94)
      {
        v95 = 0;
LABEL_181:
        v133 = v0[116];
        v134 = v0[115];

        v135 = sub_1DF4A57C0();
        *(v0 + 264) = 257;
        v0[67] = v134;
        v0[68] = v133;
        v0[69] = v93;
        v0[70] = v95;
        *(v0 + 568) = 0;
        *(v0 + 569) = 1;
        v0[72] = 0;
        *(v0 + 584) = v135 & 1;
        goto LABEL_55;
      }

      v160 = v9;
      v95 = 0;
      v96 = ( + 40);
      while (1)
      {
        v99 = *(v96 - 1);
        v98 = *v96;
        v100 = v99 == 0x6C6C2E64756F6C63 && v98 == 0xE90000000000006DLL;
        if (v100 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v95 && (v95 & 1) != 0)
          {
            goto LABEL_117;
          }

          v97 = 1;
          goto LABEL_116;
        }

        v101 = v99 == 0xD000000000000018 && 0x80000001DF5707C0 == v98;
        if (v101 || (sub_1DF5650D4() & 1) != 0)
        {
          if (v95 && (v95 & 2) != 0)
          {
            goto LABEL_117;
          }

          v97 = 2;
          goto LABEL_116;
        }

        if (v99 == 0xD00000000000001CLL && 0x80000001DF570800 == v98 || (sub_1DF5650D4() & 1) != 0)
        {
          break;
        }

        if ((v99 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v98) && (sub_1DF5650D4() & 1) == 0)
        {
          v102 = qword_1ED956018;

          if (v102 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(oslogb, qword_1ED956020);

          loga = sub_1DF564794();
          v103 = sub_1DF564C24();

          v149 = v103;
          if (os_log_type_enabled(loga, v103))
          {
            v104 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            v164 = v147;
            *v104 = 136446210;
            v105 = sub_1DF47EF6C(v99, v98, &v164);

            *(v104 + 4) = v105;
            _os_log_impl(&dword_1DF47C000, loga, v149, "Unable to determine returned feature: %{public}s", v104, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v147);
            MEMORY[0x1E12D75F0](v147, -1, -1);
            MEMORY[0x1E12D75F0](v104, -1, -1);
          }

          else
          {
          }

          goto LABEL_117;
        }

        if (!v95 || (v95 & 8) == 0)
        {
          v97 = 8;
LABEL_116:
          v95 |= v97;
        }

LABEL_117:
        v96 += 2;
        if (!--v94)
        {

          v0 = v162;
          v9 = v160;
          goto LABEL_181;
        }
      }

      if (v95 && (v95 & 4) != 0)
      {
        goto LABEL_117;
      }

      v97 = 4;
      goto LABEL_116;
    }
  }

  __swift_project_boxed_opaque_existential_0((v0[117] + OBJC_IVAR___CSFTicketManager_provider), *(v0[117] + OBJC_IVAR___CSFTicketManager_provider + 24));
  if (qword_1ED954AC8 != -1)
  {
    swift_once();
  }

  v114 = qword_1ED954AD0;
  v0[107] = &type metadata for Device;
  v0[108] = &off_1F5A89060;
  v115 = swift_allocObject();
  v0[104] = v115;
  v115[5] = type metadata accessor for HardwareChecker();
  v115[6] = &off_1F5A89048;
  v115[2] = v114;

  v116 = swift_task_alloc();
  v0[124] = v116;
  *v116 = v0;
  v116[1] = sub_1DF4E0970;
  v117 = v0[116];
  v118 = v0[115];

  return sub_1DF50AB1C(v118, v117, (v0 + 104), v0 + 73);
}

uint64_t sub_1DF4E0970(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1000) = a1;

  if (v1)
  {
    *(v3 + 74) = *(v3 + 73);
    v4 = sub_1DF4E0F5C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 832));
    v4 = sub_1DF4E0A94;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF4E0A94()
{
  v34 = v0;
  v1 = *(v0 + 984);
  v2 = (*(v0 + 936) + *(v0 + 968));
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v3 = *(v0 + 976);
  v4 = *(v0 + 1000);
  if (v1)
  {
    v5 = 0xD000000000000023;
    v6 = 0x80000001DF571FE0;
  }

  else
  {
    v6 = 0xE900000000000031;
    v5 = 0x3D73736563637573;
  }

  sub_1DF48AD44(1u, v3, v5, v6);
  v7 = *(v0 + 1000);
  v8 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs];
  v32 = *&v7[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status];

  v9 = *(v8 + 16);
  v10 = 0;
  if (v9)
  {
    v11 = (v8 + 40);
    while (1)
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      v15 = v13 == 0x6C6C2E64756F6C63 && v14 == 0xE90000000000006DLL;
      if (v15 || (sub_1DF5650D4() & 1) != 0)
      {
        if (v10 && (v10 & 1) != 0)
        {
          goto LABEL_8;
        }

        v12 = 1;
        goto LABEL_7;
      }

      v16 = v13 == 0xD000000000000018 && 0x80000001DF5707C0 == v14;
      if (v16 || (sub_1DF5650D4() & 1) != 0)
      {
        if (v10 && (v10 & 2) != 0)
        {
          goto LABEL_8;
        }

        v12 = 2;
        goto LABEL_7;
      }

      if (v13 == 0xD00000000000001CLL && 0x80000001DF570800 == v14 || (sub_1DF5650D4() & 1) != 0)
      {
        break;
      }

      if ((v13 != 0xD00000000000001CLL || 0x80000001DF5707E0 != v14) && (sub_1DF5650D4() & 1) == 0)
      {
        v17 = qword_1ED956018;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = sub_1DF5647B4();
        __swift_project_value_buffer(v18, qword_1ED956020);

        oslog = sub_1DF564794();
        v19 = sub_1DF564C24();

        v30 = v19;
        if (os_log_type_enabled(oslog, v19))
        {
          v20 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v33 = v29;
          *v20 = 136446210;
          v21 = sub_1DF47EF6C(v13, v14, &v33);

          *(v20 + 4) = v21;
          _os_log_impl(&dword_1DF47C000, oslog, v30, "Unable to determine returned feature: %{public}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x1E12D75F0](v29, -1, -1);
          MEMORY[0x1E12D75F0](v20, -1, -1);
        }

        else
        {
        }

        goto LABEL_8;
      }

      if (!v10 || (v10 & 8) == 0)
      {
        v12 = 8;
LABEL_7:
        v10 |= v12;
      }

LABEL_8:
      v11 += 2;
      if (!--v9)
      {
        goto LABEL_42;
      }
    }

    if (v10 && (v10 & 4) != 0)
    {
      goto LABEL_8;
    }

    v12 = 4;
    goto LABEL_7;
  }

LABEL_42:
  v22 = *(v0 + 928);
  v23 = *(v0 + 920);

  v24 = sub_1DF4A57C0();
  *(v0 + 464) = 257;
  *(v0 + 472) = v23;
  *(v0 + 480) = v22;
  *(v0 + 488) = v32;
  *(v0 + 496) = v10;
  *(v0 + 504) = 768;
  *(v0 + 512) = 0;
  *(v0 + 520) = v24 & 1;
  v25 = *(v0 + 480);
  *(v0 + 80) = *(v0 + 464);
  *(v0 + 96) = v25;
  *(v0 + 112) = *(v0 + 496);
  *(v0 + 121) = *(v0 + 505);
  sub_1DF4E28F8((v0 + 80), sub_1DF47FD50);

  sub_1DF4E4A80(v0 + 464);
  v26 = *(v0 + 1000);
  (*(*(v0 + 952) + 8))(*(v0 + 960), *(v0 + 944));

  v27 = *(v0 + 8);

  return v27(v26);
}

id sub_1DF4E0F5C()
{
  v1 = *(v0 + 74);
  v2 = *(v0 + 976);
  v3 = (*(v0 + 936) + *(v0 + 968));
  __swift_destroy_boxed_opaque_existential_0((v0 + 832));
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_1DF564DF4();

  *(v0 + 912) = v1;
  v4 = sub_1DF5650A4();
  MEMORY[0x1E12D62C0](v4);

  sub_1DF48AD44(1u, v2, 0xD000000000000014, 0x80000001DF571FC0);

  sub_1DF4E4A2C();
  v5 = swift_allocError();
  *v6 = v1;

  v7 = v5;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v9 = result;
    v10 = MobileGestalt_copy_regionCode_obj();

    if (v10)
    {
      v11 = sub_1DF564944();
      v13 = v12;

      if (v11 == 18499 && v13 == 0xE200000000000000)
      {

        v14 = 1;
      }

      else
      {
        v14 = sub_1DF5650D4();
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + 74);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v23 = *(v0 + 944);
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);

    *(v0 + 400) = 1;
    *(v0 + 408) = v19;
    *(v0 + 416) = v18;
    *(v0 + 424) = 0;
    *(v0 + 432) = 0;
    *(v0 + 440) = 1025;
    *(v0 + 448) = v5;
    *(v0 + 456) = v14 & 1;
    v20 = *(v0 + 416);
    *(v0 + 16) = *(v0 + 400);
    *(v0 + 32) = v20;
    *(v0 + 48) = *(v0 + 432);
    *(v0 + 57) = *(v0 + 441);
    swift_allocError();
    *v21 = v15;
    swift_willThrow();
    sub_1DF4E28F8((v0 + 16), sub_1DF47FD50);

    sub_1DF4E4A80(v0 + 400);
    (*(v17 + 8))(v16, v23);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF4E13C8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1DF564944();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1DF4E149C;

  return sub_1DF4DF018(v5, v7);
}

uint64_t sub_1DF4E149C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_1DF5642E4();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id TicketManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TicketManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TicketManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF4E179C(__int16 a1, id a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v22[3] = &type metadata for CoreTelemetryDeviceCapabilityEvent;
  v22[4] = &off_1F5A8DB78;
  LOWORD(v22[0]) = a1 & 0x101;
  v22[1] = a2;
  v4 = a2;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED956020);
  sub_1DF47FCEC(v22, &v20);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF47EF6C(0xD000000000000037, 0x80000001DF572440, &v19);
    *(v8 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    if (*(v10 + 1))
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    if (sub_1DF55FF58(v11 | *v10, v10[1]))
    {
      sub_1DF480144();
      v12 = sub_1DF564894();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v20);
    v15 = sub_1DF47EF6C(v12, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  sub_1DF47FCEC(v22, &v20);
  v16 = swift_allocObject();
  sub_1DF47E390(&v20, v16 + 16);
  v17 = a3(0xD000000000000037, 0x80000001DF572440, sub_1DF48041C, v16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17 & 1;
}

uint64_t sub_1DF4E1A88(int a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v22[3] = &type metadata for GatewayRequestSigningEvent;
  v22[4] = &off_1F5A8DDD0;
  LOWORD(v22[0]) = a1 & 0x101;
  BYTE2(v22[0]) = BYTE2(a1) & 1;
  BYTE3(v22[0]) = HIBYTE(a1) & 1;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956020);
  sub_1DF47FCEC(v22, &v20);
  v4 = sub_1DF564794();
  v5 = sub_1DF564C14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000003BLL, 0x80000001DF572240, &v19);
    *(v6 + 12) = 2080;
    v8 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    if (v8[3])
    {
      v9 = 0x1000000;
    }

    else
    {
      v9 = 0;
    }

    if (v8[2])
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = 0;
    }

    if (v8[1])
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    if (sub_1DF560974(v11 | *v8 | v10 | v9))
    {
      sub_1DF480144();
      v12 = sub_1DF564894();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v20);
    v15 = sub_1DF47EF6C(v12, v14, &v19);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Sending message %s with body %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  sub_1DF47FCEC(v22, &v20);
  v16 = swift_allocObject();
  sub_1DF47E390(&v20, v16 + 16);
  v17 = a2(0xD00000000000003BLL, 0x80000001DF572240, sub_1DF48041C, v16);

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17 & 1;
}

uint64_t sub_1DF4E1D9C(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v19[3] = &type metadata for ExcessiveRequestsEvent;
  v19[4] = &off_1F5A8DBB8;
  v19[0] = a1;
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956020);
  sub_1DF47FCEC(v19, &v17);
  v4 = sub_1DF564794();
  v5 = sub_1DF564C14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DF47EF6C(0xD00000000000003BLL, 0x80000001DF5721E0, &v16);
    *(v6 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(&v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DF567CF0;
    *(inited + 32) = 0xD000000000000018;
    *(inited + 40) = 0x80000001DF572220;
    *(inited + 48) = sub_1DF564BD4();
    sub_1DF480040(inited);
    swift_setDeallocating();
    sub_1DF483E24(inited + 32);
    sub_1DF480144();
    v9 = sub_1DF564894();
    v11 = v10;

    __swift_destroy_boxed_opaque_existential_0(&v17);
    v12 = sub_1DF47EF6C(v9, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Sending message %s with body %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v7, -1, -1);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v17);
  }

  sub_1DF47FCEC(v19, &v17);
  v13 = swift_allocObject();
  sub_1DF47E390(&v17, v13 + 16);
  v14 = a2(0xD00000000000003BLL, 0x80000001DF5721E0, sub_1DF48041C, v13);

  __swift_destroy_boxed_opaque_existential_0(v19);
  return v14 & 1;
}

uint64_t sub_1DF4E20B4(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v20[3] = &type metadata for FeatureNetworkingStartEvent;
  v20[4] = &off_1F5A8DD30;
  v20[0] = a1;
  v20[1] = a2;
  sub_1DF4B9704(a1, a2);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956020);
  sub_1DF47FCEC(v20, &v18);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1DF47EF6C(0xD00000000000003CLL, 0x80000001DF572280, &v17);
    *(v7 + 12) = 2080;
    v9 = __swift_project_boxed_opaque_existential_0(&v18, v19);
    if (sub_1DF560774(*v9, v9[1]))
    {
      sub_1DF480144();
      v10 = sub_1DF564894();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
      v10 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v18);
    v13 = sub_1DF47EF6C(v10, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Sending message %s with body %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  sub_1DF47FCEC(v20, &v18);
  v14 = swift_allocObject();
  sub_1DF47E390(&v18, v14 + 16);
  v15 = a3(0xD00000000000003CLL, 0x80000001DF572280, sub_1DF48041C, v14);

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v15 & 1;
}

uint64_t sub_1DF4E2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v34 = a3;
  v31 = &type metadata for ReceivedFeatureEvent;
  v32 = &off_1F5A8DFB8;
  v29 = v33;
  v30 = a3;
  sub_1DF4E5078(&v33, &v27);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF5647B4();
  __swift_project_value_buffer(v5, qword_1ED956020);
  sub_1DF47FCEC(&v29, &v27);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1DF47EF6C(0xD000000000000038, 0x80000001DF572120, &v26);
    *(v8 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_0(&v27, v28);
    v11 = 256;
    if ((*(v10 + 1) & 1) == 0)
    {
      v11 = 0;
    }

    v12 = v11 & 0xFFFFFFFFFFFFFFFELL | *v10 & 1;
    v13 = 0x10000;
    if ((*(v10 + 2) & 1) == 0)
    {
      v13 = 0;
    }

    v14 = 0x1000000;
    if ((*(v10 + 3) & 1) == 0)
    {
      v14 = 0;
    }

    v15 = v12 | v13 | v14;
    v16 = 0x100000000;
    if ((*(v10 + 4) & 1) == 0)
    {
      v16 = 0;
    }

    v17 = 0x10000000000;
    if ((*(v10 + 5) & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x1000000000000;
    if ((*(v10 + 6) & 1) == 0)
    {
      v18 = 0;
    }

    if (sub_1DF560F4C(v15 | v16 | v17 | v18, v10[1], v10[2]))
    {
      sub_1DF480144();
      v19 = sub_1DF564894();
      v21 = v20;
    }

    else
    {
      v21 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v27);
    v22 = sub_1DF47EF6C(v19, v21, &v26);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_1DF47C000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v27);
  }

  sub_1DF47FCEC(&v29, &v27);
  v23 = swift_allocObject();
  sub_1DF47E390(&v27, v23 + 16);
  v24 = a4(0xD000000000000038, 0x80000001DF572120, sub_1DF4803C0, v23);

  __swift_destroy_boxed_opaque_existential_0(&v29);
  return v24 & 1;
}