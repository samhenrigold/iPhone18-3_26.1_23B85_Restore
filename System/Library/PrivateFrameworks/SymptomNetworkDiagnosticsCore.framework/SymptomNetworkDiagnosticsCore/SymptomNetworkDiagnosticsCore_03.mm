uint64_t sub_23250EC64()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_23250ED74, v1, 0);
}

uint64_t sub_23250ED74()
{
  v194 = v0;
  v1 = v0;
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[28];

  sub_2324C28AC(v4, &qword_27DD93578, &unk_2325480F0);
  sub_23251FC44(v2, type metadata accessor for NDFDevice);
  sub_23251FC44(v3, type metadata accessor for NDFDevice);
  v6 = v0[62];
  v5 = v0[63];
  v183 = v0[61];
  v7 = v0[47] + 1;
  if (v7 == v0[45])
  {
    goto LABEL_2;
  }

  v182 = v0 + 2;
  v184 = v0;
  while (2)
  {
    v185 = v5;
    v188 = v6;
    while (1)
    {
      v1[48] = v5;
      v1[49] = v6;
      v1[47] = v7;
      v20 = v1[44];
      if (v7 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_96;
      }

      v21 = v1[39];
      v22 = v1[40];
      v23 = v20 + ((*(v1 + 640) + 32) & ~*(v1 + 640));
      v24 = *(v1[33] + 72);
      v1[50] = v24;
      sub_2324CE250(v23 + v24 * v7, v22);
      sub_2324CE250(v22, v21);
      v25 = sub_232545888();
      v26 = sub_2325461D8();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v1[39];
      if (v27)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v193 = v30;
        *v29 = 136315138;
        v31 = sub_2324F6270();
        v33 = v32;
        sub_23251FC44(v28, type metadata accessor for NDFDevice);
        v34 = sub_2324C2220(v31, v33, &v193);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_2324C0000, v25, v26, "Obtained device update %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x238386450](v30, -1, -1);
        MEMORY[0x238386450](v29, -1, -1);
      }

      else
      {

        sub_23251FC44(v28, type metadata accessor for NDFDevice);
      }

      v35 = v1[32];
      v36 = v1[33];
      v38 = v1[27];
      v37 = v1[28];
      v39 = sub_2325083A8(v37, v1[40]);
      *(v1 + 322) = v39;
      sub_2324CF3C4(v37, v38, &qword_27DD93578, &unk_2325480F0);
      if ((*(v36 + 48))(v38, 1, v35) != 1)
      {
        break;
      }

      v40 = v1[40];
      v41 = v1[34];
      sub_2324C28AC(v1[27], &qword_27DD93578, &unk_2325480F0);
      sub_2324CE250(v40, v41);
      v42 = sub_232545888();
      v43 = sub_2325461E8();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v1[40];
      v46 = v1[34];
      v47 = v1[28];
      if (v44)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v193 = v14;
        *v13 = 136315138;
        v15 = sub_2324F6270();
        v17 = v16;
        sub_23251FC44(v46, type metadata accessor for NDFDevice);
        v18 = v15;
        v1 = v184;
        v19 = sub_2324C2220(v18, v17, &v193);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_2324C0000, v42, v43, "No updates to device %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x238386450](v14, -1, -1);
        MEMORY[0x238386450](v13, -1, -1);
      }

      else
      {

        sub_23251FC44(v46, type metadata accessor for NDFDevice);
      }

      sub_2324C28AC(v47, &qword_27DD93578, &unk_2325480F0);
      sub_23251FC44(v45, type metadata accessor for NDFDevice);
      v5 = v185;
      v6 = v188;
      v7 = v1[47] + 1;
      if (v7 == v1[45])
      {
        goto LABEL_2;
      }
    }

    v48 = *(v1 + 646);
    sub_23251FBDC(v1[27], v1[38], type metadata accessor for NDFDevice);
    if (v48 != 1 || v39 < 0x100u)
    {
      goto LABEL_49;
    }

    v49 = sub_232545888();
    v50 = sub_232546208();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2324C0000, v49, v50, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v51, 2u);
      MEMORY[0x238386450](v51, -1, -1);
    }

    v52 = v1[38];
    v53 = v1[32];

    swift_beginAccess();
    v54 = (v52 + v53[8]);
    v55 = *v54;
    v1[51] = *v54;
    v56 = v54[1];
    v1[52] = v56;
    v57 = (v52 + v53[9]);
    v58 = *v57;
    v1[53] = *v57;
    v59 = v1;
    v60 = v57[1];
    v59[54] = v60;
    *(v59 + 648) = *(v52 + v53[15]);
    if (v56 >> 60 == 15)
    {
      sub_2324DB3D0(v58, v60);
      if (v60 >> 60 == 15)
      {
        v77 = 0;
      }

      else
      {
        sub_2324DB3D0(v58, v60);
        sub_2324DB3E4(v58, v60);
        v78 = sub_232545888();
        v79 = sub_2325461E8();
        sub_2324DB438(v58, v60);
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v193 = v81;
          *v80 = 136315138;
          sub_2324DB3E4(v58, v60);
          v82 = sub_2325455B8();
          v84 = v83;
          sub_2324DB438(v58, v60);
          v85 = sub_2324C2220(v82, v84, &v193);

          *(v80 + 4) = v85;
          _os_log_impl(&dword_2324C0000, v78, v79, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x238386450](v81, -1, -1);
          MEMORY[0x238386450](v80, -1, -1);
        }

        v86 = *sub_2324C8418();
        if (v86)
        {
          v179 = *(v86 + 136);
          v184[58] = v179;
          v180 = *(*v179 + 104);

          v187 = (v180 + *v180);
          v177 = swift_task_alloc();
          v184[59] = v177;
          *v177 = v184;
          v178 = sub_23250D070;
LABEL_103:
          v177[1] = v178;
          v160 = v187;

          return v160();
        }

        sub_2324DB438(v58, v60);
        v77 = 1;
      }

      v1 = v184;
      goto LABEL_36;
    }

    sub_2324DB3D0(v55, v56);
    sub_2324DB3D0(v55, v56);
    sub_2324DB3D0(v58, v60);
    sub_2324DB3D0(v55, v56);
    v61 = sub_232545888();
    v62 = sub_2325461E8();
    sub_2324DB438(v55, v56);
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v193 = v64;
      *v63 = 136315138;
      sub_2324DB3E4(v55, v56);
      v65 = sub_2325455B8();
      v67 = v66;
      sub_2324DB438(v55, v56);
      v68 = sub_2324C2220(v65, v67, &v193);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_2324C0000, v61, v62, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x238386450](v64, -1, -1);
      MEMORY[0x238386450](v63, -1, -1);
    }

    v69 = *sub_2324C8418();
    v1 = v184;
    if (v69)
    {
      v175 = *(v69 + 136);
      v184[55] = v175;
      v176 = *(*v175 + 104);

      v187 = (v176 + *v176);
      v177 = swift_task_alloc();
      v184[56] = v177;
      *v177 = v184;
      v178 = sub_23250B4A0;
      goto LABEL_103;
    }

    sub_2324DB438(v55, v56);
    v70 = v184[54];
    if (v70 >> 60 != 15)
    {
      sub_2324DB3E4(v184[53], v70);
      v71 = sub_232545888();
      v72 = sub_2325461D8();
      v73 = os_log_type_enabled(v71, v72);
      v75 = v184[53];
      v74 = v184[54];
      if (v73)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_2324C0000, v71, v72, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v76, 2u);
        MEMORY[0x238386450](v76, -1, -1);
      }

      sub_2324DB438(v75, v74);
    }

    v77 = 1;
LABEL_36:
    v87 = sub_232545888();
    v88 = sub_232546208();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v193 = v90;
      *v89 = 136315394;
      if (v77)
      {
        v91 = 7233874;
      }

      else
      {
        v91 = 0x20746F6E20646944;
      }

      if (v77)
      {
        v92 = 0xE300000000000000;
      }

      else
      {
        v92 = 0xEB000000006E7572;
      }

      v93 = sub_2324C2220(v91, v92, &v193);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      v94 = sub_2324C2220(0x6E776F6E6B6E75, 0xE700000000000000, &v193);

      *(v89 + 14) = v94;
      _os_log_impl(&dword_2324C0000, v87, v88, "%s Bonjour probe, network restricts multicast traffic: %s", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v90, -1, -1);
      MEMORY[0x238386450](v89, -1, -1);
    }

    if (*(v1 + 648) != 2)
    {
      v95 = sub_232545888();
      v96 = sub_2325461D8();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v193 = v98;
        *v97 = 136315394;
        sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v99 = sub_232546608();
        v101 = sub_2324C2220(v99, v100, &v193);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2080;
        v102 = sub_2324C2220(7104878, 0xE300000000000000, &v193);

        *(v97 + 14) = v102;
        _os_log_impl(&dword_2324C0000, v95, v96, "About to update multicastTrafficBlocked property for %s to %s", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v98, -1, -1);
        MEMORY[0x238386450](v97, -1, -1);
      }

      v104 = v1[37];
      v103 = v1[38];
      v106 = v1[32];
      v105 = v1[33];
      v107 = v1[30];
      v108 = v1[31];
      v109 = v1[29];
      v110 = v1[25];
      v111 = v1[26];
      v112 = v184[24];
      v186 = v110;
      v189 = v184[23];
      v113 = v184[22];
      *(v103 + *(v106 + 60)) = 2;
      sub_232545668();
      (*(v107 + 40))(v103 + *(v106 + 20), v108, v109);
      sub_2324CE250(v103, v104);
      swift_beginAccess();
      sub_2324F6DD8(v104);
      swift_endAccess();
      sub_23251FC44(v104, type metadata accessor for NDFDevice);
      (*(v112 + 16))(v186, v103, v189);
      v1 = v184;
      sub_2324CE250(v103, v111);
      (*(v105 + 56))(v111, 0, 1, v106);
      v114 = (*(*v113 + 184))(v182);
      sub_2324FCF78(v111, v186);
      v114(v182, 0);
    }

    v115 = v1[53];
    v116 = v1[54];
    sub_2324DB438(v1[51], v1[52]);
    sub_2324DB438(v115, v116);
LABEL_49:
    v1[61] = v183;
    v117 = v1[38];
    v118 = v1[36];
    swift_beginAccess();
    sub_2324CE250(v117, v118);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v1[49];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2324E1E80(0, v6[2] + 1, 1, v1[49]);
    }

    v121 = v6[2];
    v120 = v6[3];
    if (v121 >= v120 >> 1)
    {
      v6 = sub_2324E1E80((v120 > 1), v121 + 1, 1, v6);
    }

    v1[62] = v6;
    v122 = v1[50];
    v123 = *(v1 + 640);
    v124 = v1[36];
    v125 = *(v1 + 322);
    v6[2] = v121 + 1;
    sub_23251FBDC(v124, v6 + ((v123 + 32) & ~v123) + v122 * v121, type metadata accessor for NDFDevice);
    v5 = v1[48];
    if (v125 > 0xFF || (v125 & 1) != 0)
    {
      sub_2324CE250(v1[38], v1[35]);
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v5 = v1[48];
      if ((v126 & 1) == 0)
      {
        v5 = sub_2324E1E80(0, v5[2] + 1, 1, v1[48]);
      }

      v128 = v5[2];
      v127 = v5[3];
      if (v128 >= v127 >> 1)
      {
        v5 = sub_2324E1E80((v127 > 1), v128 + 1, 1, v5);
      }

      v129 = v1[50];
      v130 = *(v1 + 640);
      v131 = v1[35];
      v5[2] = v128 + 1;
      sub_23251FBDC(v131, v5 + ((v130 + 32) & ~v130) + v129 * v128, type metadata accessor for NDFDevice);
    }

    v1[63] = v5;
    v132 = *(v1 + 646);
    (*(*v1[22] + 368))(v1[38]);
    if (v132 == 1)
    {
      v133 = sub_232545888();
      v134 = sub_2325461D8();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_2324C0000, v133, v134, "Post-update actions for this local device", v135, 2u);
        MEMORY[0x238386450](v135, -1, -1);
      }

      v7 = *sub_2324C8418();
      if (!v7)
      {
        v136 = sub_232545888();
        v137 = sub_2325461F8();
        v138 = os_log_type_enabled(v136, v137);
        v139 = v1[40];
        v140 = v1[38];
        v141 = v1[28];
        if (v138)
        {
          v142 = v5;
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&dword_2324C0000, v136, v137, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v143, 2u);
          v144 = v143;
          v5 = v142;
          MEMORY[0x238386450](v144, -1, -1);
        }

        goto LABEL_68;
      }

LABEL_96:
      v166 = *(v7 + 152);
      v1[64] = v166;

      v167 = sub_232545888();
      v168 = sub_232546208();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v193 = v170;
        *v169 = 136315138;
        v171 = sub_2324F6270();
        v173 = sub_2324C2220(v171, v172, &v193);

        *(v169 + 4) = v173;
        _os_log_impl(&dword_2324C0000, v167, v168, "Submitting CK device update: %s", v169, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v170);
        MEMORY[0x238386450](v170, -1, -1);
        MEMORY[0x238386450](v169, -1, -1);
      }

      v192 = (*(*v166 + 344) + **(*v166 + 344));
      v174 = swift_task_alloc();
      v1[65] = v174;
      *v174 = v1;
      v174[1] = sub_23250EC64;
      v163 = v1[38];
      v164 = v192;

      return v164(v163);
    }

    v139 = v1[40];
    v140 = v1[38];
    v141 = v1[28];
LABEL_68:
    sub_2324C28AC(v141, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v139, type metadata accessor for NDFDevice);
    sub_23251FC44(v140, type metadata accessor for NDFDevice);
    v7 = v1[47] + 1;
    if (v7 != v1[45])
    {
      continue;
    }

    break;
  }

LABEL_2:
  v1[68] = v6;
  v1[67] = v5;
  v1[66] = v183;
  v8 = *(v1 + 647);
  sub_23251BB00();
  if (v8 == 1)
  {
    v1[69] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v9 = sub_232545888();
    v10 = sub_232546208();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v1[43];
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v6[2];

      *(v12 + 12) = 2048;
      *(v12 + 14) = v11;

      _os_log_impl(&dword_2324C0000, v9, v10, "Ready to process %ld changed (of %ld total) incoming device updates", v12, 0x16u);
      MEMORY[0x238386450](v12, -1, -1);
    }

    else
    {
    }

    if (v6[2])
    {
      v145 = sub_2324C8418();
      v146 = *v145;
      v1[70] = *v145;
      if (v146)
      {
        v147 = *v146 + 168;
        v1[71] = *v147;
        v1[72] = v147 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v146, 0);
      }

      v148 = sub_232545888();
      v149 = sub_2325461F8();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_2324C0000, v148, v149, "No persistence controller available", v150, 2u);
        MEMORY[0x238386450](v150, -1, -1);
      }

      v6 = v1[68];
    }
  }

  v1[77] = v6;
  v151 = v1[67];
  if (!*(v151 + 16))
  {

    v156 = *((*(*v1[22] + 192))(v155) + 16);

    if (v156)
    {
      v157 = *(v1[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

      if ((v157 & 1) == 0)
      {
        v158 = *(*v1[22] + 304);
        v190 = (v158 + *v158);
        v159 = swift_task_alloc();
        v1[79] = v159;
        *v159 = v1;
        v159[1] = sub_232511624;
        v160 = v190;

        return v160();
      }
    }

    else
    {
    }

    v165 = v1[1];

    return v165();
  }

  v152 = sub_232545888();
  v153 = sub_232546208();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    *v154 = 134217984;
    *(v154 + 4) = *(v151 + 16);

    _os_log_impl(&dword_2324C0000, v152, v153, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v154, 0xCu);
    MEMORY[0x238386450](v154, -1, -1);
  }

  else
  {
  }

  v161 = *(*v1[22] + 512);
  v191 = (v161 + *v161);
  v162 = swift_task_alloc();
  v1[78] = v162;
  *v162 = v1;
  v162[1] = sub_232511298;
  v163 = v1[67];
  v164 = v191;

  return v164(v163);
}

uint64_t sub_2325107BC()
{
  v1 = *(v0 + 176);
  *(v0 + 584) = (*(v0 + 568))();

  return MEMORY[0x2822009F8](sub_23251083C, v1, 0);
}

uint64_t sub_23251083C(uint64_t a1)
{
  v2 = *(v1 + 584);
  if (v2)
  {
    v3 = *v2 + 144;
    *(v1 + 592) = *v3;
    *(v1 + 600) = v3 & 0xFFFFFFFFFFFFLL | 0x5820000000000000;

    return MEMORY[0x2822009F8](sub_232510D8C, v2, 0);
  }

  v4 = sub_232545888();
  v5 = sub_2325461F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2324C0000, v4, v5, "No persistence controller available", v6, 2u);
    MEMORY[0x238386450](v6, -1, -1);
  }

  *(v1 + 616) = *(v1 + 544);
  v7 = *(v1 + 536);
  if (*(v7 + 16))
  {

    v8 = sub_232545888();
    v9 = sub_232546208();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v7 + 16);

      _os_log_impl(&dword_2324C0000, v8, v9, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v10, 0xCu);
      MEMORY[0x238386450](v10, -1, -1);
    }

    else
    {
    }

    v16 = *(**(v1 + 176) + 512);
    v22 = (v16 + *v16);
    v17 = swift_task_alloc();
    *(v1 + 624) = v17;
    *v17 = v1;
    v17[1] = sub_232511298;
    v18 = *(v1 + 536);

    return v22(v18);
  }

  v12 = *((*(**(v1 + 176) + 192))(v11) + 16);

  if (v12)
  {
    v13 = *(*(v1 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v13 & 1) == 0)
    {
      v14 = *(**(v1 + 176) + 304);
      v21 = (v14 + *v14);
      v15 = swift_task_alloc();
      *(v1 + 632) = v15;
      *v15 = v1;
      v15[1] = sub_232511624;

      return v21();
    }
  }

  else
  {
  }

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_232510D8C()
{
  v1 = *(v0 + 528);
  (*(v0 + 592))(*(v0 + 544));
  *(v0 + 608) = v1;
  v2 = *(v0 + 176);
  if (v1)
  {
    v3 = sub_232514C5C;
  }

  else
  {
    v3 = sub_232510E24;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_232510E24()
{

  *(v0 + 616) = *(v0 + 544);
  v1 = *(v0 + 536);
  if (*(v1 + 16))
  {

    v2 = sub_232545888();
    v3 = sub_232546208();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(v1 + 16);

      _os_log_impl(&dword_2324C0000, v2, v3, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v4, 0xCu);
      MEMORY[0x238386450](v4, -1, -1);
    }

    else
    {
    }

    v11 = *(**(v0 + 176) + 512);
    v16 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 624) = v12;
    *v12 = v0;
    v12[1] = sub_232511298;
    v13 = *(v0 + 536);

    return v16(v13);
  }

  v6 = *((*(**(v0 + 176) + 192))(v5) + 16);

  if (v6)
  {
    v7 = *(*(v0 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v7 & 1) == 0)
    {
      v8 = *(**(v0 + 176) + 304);
      v15 = (v8 + *v8);
      v9 = swift_task_alloc();
      *(v0 + 632) = v9;
      *v9 = v0;
      v9[1] = sub_232511624;

      return v15();
    }
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_232511298()
{
  v1 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2325113A8, v1, 0);
}

uint64_t sub_2325113A8()
{
  v1 = *((*(**(v0 + 176) + 192))() + 16);

  if (v1)
  {
    v2 = *(*(v0 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v2 & 1) == 0)
    {
      v3 = *(**(v0 + 176) + 304);
      v7 = (v3 + *v3);
      v4 = swift_task_alloc();
      *(v0 + 632) = v4;
      *v4 = v0;
      v4[1] = sub_232511624;

      return v7();
    }
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_232511624()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2325118D4()
{
  v188 = v0;
  v177 = v0 + 2;
  sub_2324DB438(v0[51], v0[52]);
  v178 = v0;
LABEL_2:
  v1 = v0[54];
  if (v1 >> 60 != 15)
  {
    sub_2324DB3E4(v0[53], v1);
    v2 = sub_232545888();
    v3 = sub_2325461D8();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[53];
    v5 = v0[54];
    if (v4)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v2, v3, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    sub_2324DB438(v6, v5);
  }

  v8 = 1;
LABEL_7:
  v9 = v178;
  v10 = sub_232545888();
  v11 = sub_232546208();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v187 = v13;
    *v12 = 136315394;
    if (v8)
    {
      v14 = 7233874;
    }

    else
    {
      v14 = 0x20746F6E20646944;
    }

    if (v8)
    {
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = 0xEB000000006E7572;
    }

    v16 = sub_2324C2220(v14, v15, &v187);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_2324C2220(0x6E776F6E6B6E75, 0xE700000000000000, &v187);

    *(v12 + 14) = v17;
    v9 = v178;
    _os_log_impl(&dword_2324C0000, v10, v11, "%s Bonjour probe, network restricts multicast traffic: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v13, -1, -1);
    MEMORY[0x238386450](v12, -1, -1);
  }

  if (*(v9 + 648) != 2)
  {
    v18 = sub_232545888();
    v19 = sub_2325461D8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v187 = v21;
      *v20 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = sub_232546608();
      v24 = sub_2324C2220(v22, v23, &v187);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_2324C2220(7104878, 0xE300000000000000, &v187);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_2324C0000, v18, v19, "About to update multicastTrafficBlocked property for %s to %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v21, -1, -1);
      MEMORY[0x238386450](v20, -1, -1);
    }

    v27 = v9[37];
    v26 = v9[38];
    v29 = v9[32];
    v28 = v9[33];
    v30 = v9[30];
    v31 = v9[31];
    v32 = v9[29];
    v176 = v9[25];
    v33 = v9[24];
    v179 = v9[23];
    v182 = v9[26];
    v34 = v9[22];
    *(v26 + *(v29 + 60)) = 2;
    sub_232545668();
    (*(v30 + 40))(v26 + *(v29 + 20), v31, v32);
    sub_2324CE250(v26, v27);
    swift_beginAccess();
    sub_2324F6DD8(v27);
    swift_endAccess();
    sub_23251FC44(v27, type metadata accessor for NDFDevice);
    (*(v33 + 16))(v176, v26, v179);
    sub_2324CE250(v26, v182);
    (*(v28 + 56))(v182, 0, 1, v29);
    v35 = (*(*v34 + 184))(v177);
    sub_2324FCF78(v182, v176);
    v35(v177, 0);
  }

  v36 = v9[53];
  v37 = v9[54];
  sub_2324DB438(v9[51], v9[52]);
  sub_2324DB438(v36, v37);
  while (2)
  {
    v9[61] = 0;
    v38 = v9[38];
    v39 = v9[36];
    swift_beginAccess();
    sub_2324CE250(v38, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v9[49];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_2324E1E80(0, v41[2] + 1, 1, v9[49]);
    }

    v43 = v41[2];
    v42 = v41[3];
    if (v43 >= v42 >> 1)
    {
      v41 = sub_2324E1E80((v42 > 1), v43 + 1, 1, v41);
    }

    v9[62] = v41;
    v44 = v9[50];
    v45 = *(v9 + 640);
    v46 = v9[36];
    v47 = *(v9 + 322);
    v41[2] = v43 + 1;
    sub_23251FBDC(v46, v41 + ((v45 + 32) & ~v45) + v44 * v43, type metadata accessor for NDFDevice);
    v48 = v9[48];
    if (v47 > 0xFF || (v47 & 1) != 0)
    {
      sub_2324CE250(v9[38], v9[35]);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v9[48];
      if ((v49 & 1) == 0)
      {
        v48 = sub_2324E1E80(0, v48[2] + 1, 1, v9[48]);
      }

      v51 = v48[2];
      v50 = v48[3];
      if (v51 >= v50 >> 1)
      {
        v48 = sub_2324E1E80((v50 > 1), v51 + 1, 1, v48);
      }

      v52 = v9[50];
      v53 = *(v9 + 640);
      v54 = v9[35];
      v48[2] = v51 + 1;
      sub_23251FBDC(v54, v48 + ((v53 + 32) & ~v53) + v52 * v51, type metadata accessor for NDFDevice);
    }

    v9[63] = v48;
    v55 = *(v9 + 646);
    (*(*v9[22] + 368))(v9[38]);
    v183 = v48;
    if (v55 == 1)
    {
      v56 = sub_232545888();
      v57 = sub_2325461D8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2324C0000, v56, v57, "Post-update actions for this local device", v58, 2u);
        MEMORY[0x238386450](v58, -1, -1);
      }

      v59 = *sub_2324C8418();
      if (v59)
      {
        v159 = *(v59 + 152);
        v9[64] = v159;

        v160 = sub_232545888();
        v161 = sub_232546208();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v187 = v163;
          *v162 = 136315138;
          v164 = sub_2324F6270();
          v166 = sub_2324C2220(v164, v165, &v187);

          *(v162 + 4) = v166;
          _os_log_impl(&dword_2324C0000, v160, v161, "Submitting CK device update: %s", v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v163);
          MEMORY[0x238386450](v163, -1, -1);
          v167 = v162;
          v9 = v178;
          MEMORY[0x238386450](v167, -1, -1);
        }

        v186 = (*(*v159 + 344) + **(*v159 + 344));
        v168 = swift_task_alloc();
        v9[65] = v168;
        *v168 = v9;
        v168[1] = sub_23250EC64;
        v156 = v9[38];
        v157 = v186;

        return v157(v156);
      }

      v60 = sub_232545888();
      v61 = sub_2325461F8();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v9[40];
      v64 = v9[38];
      v65 = v9[28];
      if (v62)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_2324C0000, v60, v61, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v66, 2u);
        MEMORY[0x238386450](v66, -1, -1);
      }

      v48 = v183;
    }

    else
    {
      v63 = v9[40];
      v64 = v9[38];
      v65 = v9[28];
    }

    sub_2324C28AC(v65, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v63, type metadata accessor for NDFDevice);
    sub_23251FC44(v64, type metadata accessor for NDFDevice);
    v67 = v9[47] + 1;
    v180 = v41;
    if (v67 != v9[45])
    {
      while (1)
      {
        v9[48] = v48;
        v9[49] = v41;
        v9[47] = v67;
        v75 = v9[44];
        if (v67 >= *(v75 + 16))
        {
          __break(1u);
LABEL_98:
          v169 = *(v67 + 136);
          v178[58] = v169;
          v170 = *(*v169 + 104);

          v181 = (v170 + *v170);
          v171 = swift_task_alloc();
          v178[59] = v171;
          *v171 = v178;
          v172 = sub_23250D070;
          goto LABEL_99;
        }

        v76 = v9[39];
        v77 = v9[40];
        v78 = v75 + ((*(v9 + 640) + 32) & ~*(v9 + 640));
        v79 = *(v9[33] + 72);
        v9[50] = v79;
        sub_2324CE250(v78 + v79 * v67, v77);
        sub_2324CE250(v77, v76);
        v80 = sub_232545888();
        v81 = sub_2325461D8();
        v82 = os_log_type_enabled(v80, v81);
        v83 = v9[39];
        if (v82)
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v187 = v85;
          *v84 = 136315138;
          v86 = sub_2324F6270();
          v88 = v87;
          sub_23251FC44(v83, type metadata accessor for NDFDevice);
          v89 = sub_2324C2220(v86, v88, &v187);

          *(v84 + 4) = v89;
          _os_log_impl(&dword_2324C0000, v80, v81, "Obtained device update %s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v85);
          MEMORY[0x238386450](v85, -1, -1);
          MEMORY[0x238386450](v84, -1, -1);
        }

        else
        {

          sub_23251FC44(v83, type metadata accessor for NDFDevice);
        }

        v90 = v9[32];
        v91 = v9[33];
        v93 = v9[27];
        v92 = v9[28];
        v94 = sub_2325083A8(v92, v9[40]);
        *(v9 + 322) = v94;
        sub_2324CF3C4(v92, v93, &qword_27DD93578, &unk_2325480F0);
        if ((*(v91 + 48))(v93, 1, v90) != 1)
        {
          break;
        }

        v95 = v9[40];
        v96 = v9[34];
        sub_2324C28AC(v9[27], &qword_27DD93578, &unk_2325480F0);
        sub_2324CE250(v95, v96);
        v97 = sub_232545888();
        v98 = sub_2325461E8();
        v99 = os_log_type_enabled(v97, v98);
        v100 = v9[40];
        v101 = v9[34];
        v102 = v9[28];
        if (v99)
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v187 = v69;
          *v68 = 136315138;
          v70 = sub_2324F6270();
          v72 = v71;
          sub_23251FC44(v101, type metadata accessor for NDFDevice);
          v73 = v70;
          v9 = v178;
          v74 = sub_2324C2220(v73, v72, &v187);

          *(v68 + 4) = v74;
          _os_log_impl(&dword_2324C0000, v97, v98, "No updates to device %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x238386450](v69, -1, -1);
          MEMORY[0x238386450](v68, -1, -1);
        }

        else
        {

          sub_23251FC44(v101, type metadata accessor for NDFDevice);
        }

        sub_2324C28AC(v102, &qword_27DD93578, &unk_2325480F0);
        sub_23251FC44(v100, type metadata accessor for NDFDevice);
        v41 = v180;
        v48 = v183;
        v67 = v9[47] + 1;
        if (v67 == v9[45])
        {
          goto LABEL_64;
        }
      }

      v103 = *(v9 + 646);
      sub_23251FBDC(v9[27], v9[38], type metadata accessor for NDFDevice);
      if (v103 != 1 || v94 < 0x100u)
      {
        continue;
      }

      v104 = sub_232545888();
      v105 = sub_232546208();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_2324C0000, v104, v105, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v106, 2u);
        MEMORY[0x238386450](v106, -1, -1);
      }

      v107 = v9[38];
      v108 = v9[32];

      swift_beginAccess();
      v109 = (v107 + v108[8]);
      v110 = *v109;
      v9[51] = *v109;
      v111 = v109[1];
      v9[52] = v111;
      v112 = (v107 + v108[9]);
      v113 = *v112;
      v9[53] = *v112;
      v114 = v9;
      v115 = v112[1];
      v114[54] = v115;
      *(v114 + 648) = *(v107 + v108[15]);
      if (v111 >> 60 == 15)
      {
        sub_2324DB3D0(v113, v115);
        v8 = v115 >> 60 != 15;
        if (v115 >> 60 == 15)
        {
          goto LABEL_7;
        }

        sub_2324DB3D0(v113, v115);
        sub_2324DB3E4(v113, v115);
        v116 = sub_232545888();
        v117 = sub_2325461E8();
        sub_2324DB438(v113, v115);
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v187 = v119;
          *v118 = 136315138;
          sub_2324DB3E4(v113, v115);
          v120 = sub_2325455B8();
          v122 = v121;
          sub_2324DB438(v113, v115);
          v123 = sub_2324C2220(v120, v122, &v187);

          *(v118 + 4) = v123;
          _os_log_impl(&dword_2324C0000, v116, v117, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v119);
          MEMORY[0x238386450](v119, -1, -1);
          MEMORY[0x238386450](v118, -1, -1);
        }

        v67 = *sub_2324C8418();
        if (!v67)
        {
          sub_2324DB438(v113, v115);
          goto LABEL_7;
        }

        goto LABEL_98;
      }

      sub_2324DB3D0(v110, v111);
      sub_2324DB3D0(v110, v111);
      sub_2324DB3D0(v113, v115);
      sub_2324DB3D0(v110, v111);
      v124 = sub_232545888();
      v125 = sub_2325461E8();
      sub_2324DB438(v110, v111);
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v187 = v127;
        *v126 = 136315138;
        sub_2324DB3E4(v110, v111);
        v128 = sub_2325455B8();
        v130 = v129;
        sub_2324DB438(v110, v111);
        v131 = sub_2324C2220(v128, v130, &v187);

        *(v126 + 4) = v131;
        _os_log_impl(&dword_2324C0000, v124, v125, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v127);
        MEMORY[0x238386450](v127, -1, -1);
        MEMORY[0x238386450](v126, -1, -1);
      }

      v132 = *sub_2324C8418();
      v0 = v178;
      if (!v132)
      {
        sub_2324DB438(v110, v111);
        goto LABEL_2;
      }

      v173 = *(v132 + 136);
      v178[55] = v173;
      v174 = *(*v173 + 104);

      v181 = (v174 + *v174);
      v171 = swift_task_alloc();
      v178[56] = v171;
      *v171 = v178;
      v172 = sub_23250B4A0;
LABEL_99:
      v171[1] = v172;
      v153 = v181;

      return v153();
    }

    break;
  }

LABEL_64:
  v9[68] = v41;
  v9[67] = v48;
  v9[66] = 0;
  v133 = *(v9 + 647);
  sub_23251BB00();
  if (v133 == 1)
  {
    v9[69] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v134 = sub_232545888();
    v135 = sub_232546208();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = v178[43];
      v137 = swift_slowAlloc();
      *v137 = 134218240;
      *(v137 + 4) = v41[2];

      *(v137 + 12) = 2048;
      *(v137 + 14) = v136;
      v9 = v178;

      _os_log_impl(&dword_2324C0000, v134, v135, "Ready to process %ld changed (of %ld total) incoming device updates", v137, 0x16u);
      MEMORY[0x238386450](v137, -1, -1);
    }

    else
    {
    }

    if (v41[2])
    {
      v138 = sub_2324C8418();
      v139 = *v138;
      v9[70] = *v138;
      if (v139)
      {
        v140 = *v139 + 168;
        v9[71] = *v140;
        v9[72] = v140 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v139, 0);
      }

      v141 = sub_232545888();
      v142 = sub_2325461F8();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&dword_2324C0000, v141, v142, "No persistence controller available", v143, 2u);
        MEMORY[0x238386450](v143, -1, -1);
      }

      v41 = v9[68];
    }
  }

  v9[77] = v41;
  v144 = v9[67];
  if (*(v144 + 16))
  {

    v145 = sub_232545888();
    v146 = sub_232546208();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 134217984;
      *(v147 + 4) = *(v144 + 16);

      _os_log_impl(&dword_2324C0000, v145, v146, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v147, 0xCu);
      MEMORY[0x238386450](v147, -1, -1);
    }

    else
    {
    }

    v154 = *(*v178[22] + 512);
    v185 = (v154 + *v154);
    v155 = swift_task_alloc();
    v178[78] = v155;
    *v155 = v178;
    v155[1] = sub_232511298;
    v156 = v178[67];
    v157 = v185;

    return v157(v156);
  }

  v149 = *((*(*v9[22] + 192))(v148) + 16);

  if (v149)
  {
    v150 = *(v9[22] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v150 & 1) == 0)
    {
      v151 = *(*v9[22] + 304);
      v184 = (v151 + *v151);
      v152 = swift_task_alloc();
      v9[79] = v152;
      *v152 = v9;
      v152[1] = sub_232511624;
      v153 = v184;

      return v153();
    }
  }

  else
  {
  }

  v158 = v9[1];

  return v158();
}

uint64_t sub_232513278()
{
  v189 = v0;
  v1 = v0;
  v178 = v0 + 16;
  sub_2324DB438(*(v0 + 424), *(v0 + 432));
  v2 = 1;
  v179 = v1;
LABEL_2:
  v3 = sub_232545888();
  v4 = sub_232546208();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v188 = v6;
    *v5 = 136315394;
    if (v2)
    {
      v7 = 7233874;
    }

    else
    {
      v7 = 0x20746F6E20646944;
    }

    if (v2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xEB000000006E7572;
    }

    v9 = sub_2324C2220(v7, v8, &v188);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = sub_2324C2220(0x6E776F6E6B6E75, 0xE700000000000000, &v188);

    *(v5 + 14) = v10;
    v1 = v179;
    _os_log_impl(&dword_2324C0000, v3, v4, "%s Bonjour probe, network restricts multicast traffic: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  if (*(v1 + 648) != 2)
  {
    v11 = sub_232545888();
    v12 = sub_2325461D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v188 = v14;
      *v13 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_232546608();
      v17 = sub_2324C2220(v15, v16, &v188);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_2324C2220(7104878, 0xE300000000000000, &v188);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_2324C0000, v11, v12, "About to update multicastTrafficBlocked property for %s to %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v14, -1, -1);
      MEMORY[0x238386450](v13, -1, -1);
    }

    v20 = *(v1 + 296);
    v19 = *(v1 + 304);
    v22 = *(v1 + 256);
    v21 = *(v1 + 264);
    v23 = *(v1 + 240);
    v24 = *(v1 + 248);
    v25 = *(v1 + 232);
    v177 = *(v1 + 200);
    v26 = *(v1 + 192);
    v180 = *(v1 + 184);
    v183 = *(v1 + 208);
    v27 = *(v1 + 176);
    *(v19 + *(v22 + 60)) = 2;
    sub_232545668();
    (*(v23 + 40))(v19 + *(v22 + 20), v24, v25);
    sub_2324CE250(v19, v20);
    swift_beginAccess();
    sub_2324F6DD8(v20);
    swift_endAccess();
    sub_23251FC44(v20, type metadata accessor for NDFDevice);
    (*(v26 + 16))(v177, v19, v180);
    sub_2324CE250(v19, v183);
    (*(v21 + 56))(v183, 0, 1, v22);
    v28 = (*(*v27 + 184))(v178);
    sub_2324FCF78(v183, v177);
    v28(v178, 0);
  }

  v29 = *(v1 + 424);
  v30 = *(v1 + 432);
  sub_2324DB438(*(v1 + 408), *(v1 + 416));
  sub_2324DB438(v29, v30);
  while (2)
  {
    *(v1 + 488) = 0;
    v31 = *(v1 + 304);
    v32 = *(v1 + 288);
    swift_beginAccess();
    sub_2324CE250(v31, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v1 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_2324E1E80(0, v34[2] + 1, 1, *(v1 + 392));
    }

    v36 = v34[2];
    v35 = v34[3];
    if (v36 >= v35 >> 1)
    {
      v34 = sub_2324E1E80((v35 > 1), v36 + 1, 1, v34);
    }

    *(v1 + 496) = v34;
    v37 = *(v1 + 400);
    v38 = *(v1 + 640);
    v39 = *(v1 + 288);
    v40 = *(v1 + 644);
    v34[2] = v36 + 1;
    sub_23251FBDC(v39, v34 + ((v38 + 32) & ~v38) + v37 * v36, type metadata accessor for NDFDevice);
    v41 = *(v1 + 384);
    if (v40 > 0xFF || (v40 & 1) != 0)
    {
      sub_2324CE250(*(v1 + 304), *(v1 + 280));
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v1 + 384);
      if ((v42 & 1) == 0)
      {
        v41 = sub_2324E1E80(0, v41[2] + 1, 1, *(v1 + 384));
      }

      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        v41 = sub_2324E1E80((v43 > 1), v44 + 1, 1, v41);
      }

      v45 = *(v1 + 400);
      v46 = *(v1 + 640);
      v47 = *(v1 + 280);
      v41[2] = v44 + 1;
      sub_23251FBDC(v47, v41 + ((v46 + 32) & ~v46) + v45 * v44, type metadata accessor for NDFDevice);
    }

    *(v1 + 504) = v41;
    v48 = *(v1 + 646);
    (*(**(v1 + 176) + 368))(*(v1 + 304));
    v184 = v41;
    if (v48 == 1)
    {
      v49 = sub_232545888();
      v50 = sub_2325461D8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_2324C0000, v49, v50, "Post-update actions for this local device", v51, 2u);
        MEMORY[0x238386450](v51, -1, -1);
      }

      v52 = *sub_2324C8418();
      if (v52)
      {
        v160 = *(v52 + 152);
        *(v1 + 512) = v160;

        v161 = sub_232545888();
        v162 = sub_232546208();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          v188 = v164;
          *v163 = 136315138;
          v165 = sub_2324F6270();
          v167 = sub_2324C2220(v165, v166, &v188);

          *(v163 + 4) = v167;
          _os_log_impl(&dword_2324C0000, v161, v162, "Submitting CK device update: %s", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v164);
          MEMORY[0x238386450](v164, -1, -1);
          v168 = v163;
          v1 = v179;
          MEMORY[0x238386450](v168, -1, -1);
        }

        v187 = (*(*v160 + 344) + **(*v160 + 344));
        v169 = swift_task_alloc();
        *(v1 + 520) = v169;
        *v169 = v1;
        v169[1] = sub_23250EC64;
        v157 = *(v1 + 304);
        v158 = v187;

        return v158(v157);
      }

      v53 = sub_232545888();
      v54 = sub_2325461F8();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v1 + 320);
      v57 = *(v1 + 304);
      v58 = *(v1 + 224);
      if (v55)
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_2324C0000, v53, v54, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v59, 2u);
        MEMORY[0x238386450](v59, -1, -1);
      }

      v41 = v184;
    }

    else
    {
      v56 = *(v1 + 320);
      v57 = *(v1 + 304);
      v58 = *(v1 + 224);
    }

    sub_2324C28AC(v58, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v56, type metadata accessor for NDFDevice);
    sub_23251FC44(v57, type metadata accessor for NDFDevice);
    v60 = *(v1 + 376) + 1;
    v181 = v34;
    if (v60 != *(v1 + 360))
    {
      while (1)
      {
        *(v1 + 384) = v41;
        *(v1 + 392) = v34;
        *(v1 + 376) = v60;
        v68 = *(v1 + 352);
        if (v60 >= *(v68 + 16))
        {
          __break(1u);
LABEL_96:
          v170 = *(v60 + 136);
          *(v179 + 440) = v170;
          v171 = *(*v170 + 104);

          v182 = (v171 + *v171);
          v172 = swift_task_alloc();
          *(v179 + 448) = v172;
          *v172 = v179;
          v173 = sub_23250B4A0;
          goto LABEL_98;
        }

        v69 = *(v1 + 312);
        v70 = *(v1 + 320);
        v71 = v68 + ((*(v1 + 640) + 32) & ~*(v1 + 640));
        v72 = *(*(v1 + 264) + 72);
        *(v1 + 400) = v72;
        sub_2324CE250(v71 + v72 * v60, v70);
        sub_2324CE250(v70, v69);
        v73 = sub_232545888();
        v74 = sub_2325461D8();
        v75 = os_log_type_enabled(v73, v74);
        v76 = *(v1 + 312);
        if (v75)
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v188 = v78;
          *v77 = 136315138;
          v79 = sub_2324F6270();
          v81 = v80;
          sub_23251FC44(v76, type metadata accessor for NDFDevice);
          v82 = sub_2324C2220(v79, v81, &v188);

          *(v77 + 4) = v82;
          _os_log_impl(&dword_2324C0000, v73, v74, "Obtained device update %s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x238386450](v78, -1, -1);
          MEMORY[0x238386450](v77, -1, -1);
        }

        else
        {

          sub_23251FC44(v76, type metadata accessor for NDFDevice);
        }

        v83 = *(v1 + 256);
        v84 = *(v1 + 264);
        v86 = *(v1 + 216);
        v85 = *(v1 + 224);
        v87 = sub_2325083A8(v85, *(v1 + 320));
        *(v1 + 644) = v87;
        sub_2324CF3C4(v85, v86, &qword_27DD93578, &unk_2325480F0);
        if ((*(v84 + 48))(v86, 1, v83) != 1)
        {
          break;
        }

        v88 = *(v1 + 320);
        v89 = *(v1 + 272);
        sub_2324C28AC(*(v1 + 216), &qword_27DD93578, &unk_2325480F0);
        sub_2324CE250(v88, v89);
        v90 = sub_232545888();
        v91 = sub_2325461E8();
        v92 = os_log_type_enabled(v90, v91);
        v93 = *(v1 + 320);
        v94 = *(v1 + 272);
        v95 = *(v1 + 224);
        if (v92)
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v188 = v62;
          *v61 = 136315138;
          v63 = sub_2324F6270();
          v65 = v64;
          sub_23251FC44(v94, type metadata accessor for NDFDevice);
          v66 = v63;
          v1 = v179;
          v67 = sub_2324C2220(v66, v65, &v188);

          *(v61 + 4) = v67;
          _os_log_impl(&dword_2324C0000, v90, v91, "No updates to device %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x238386450](v62, -1, -1);
          MEMORY[0x238386450](v61, -1, -1);
        }

        else
        {

          sub_23251FC44(v94, type metadata accessor for NDFDevice);
        }

        sub_2324C28AC(v95, &qword_27DD93578, &unk_2325480F0);
        sub_23251FC44(v93, type metadata accessor for NDFDevice);
        v34 = v181;
        v41 = v184;
        v60 = *(v1 + 376) + 1;
        if (v60 == *(v1 + 360))
        {
          goto LABEL_62;
        }
      }

      v96 = *(v1 + 646);
      sub_23251FBDC(*(v1 + 216), *(v1 + 304), type metadata accessor for NDFDevice);
      if (v96 != 1 || v87 < 0x100u)
      {
        continue;
      }

      v97 = sub_232545888();
      v98 = sub_232546208();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_2324C0000, v97, v98, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v99, 2u);
        MEMORY[0x238386450](v99, -1, -1);
      }

      v100 = *(v1 + 304);
      v101 = *(v1 + 256);

      swift_beginAccess();
      v102 = (v100 + v101[8]);
      v103 = *v102;
      *(v1 + 408) = *v102;
      v104 = v1;
      v105 = v102[1];
      *(v104 + 416) = v105;
      v106 = (v100 + v101[9]);
      v107 = *v106;
      *(v104 + 424) = *v106;
      v108 = v106[1];
      *(v104 + 432) = v108;
      *(v104 + 648) = *(v100 + v101[15]);
      if (v105 >> 60 != 15)
      {
        sub_2324DB3D0(v103, v105);
        sub_2324DB3D0(v103, v105);
        sub_2324DB3D0(v107, v108);
        sub_2324DB3D0(v103, v105);
        v109 = sub_232545888();
        v110 = sub_2325461E8();
        sub_2324DB438(v103, v105);
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v188 = v112;
          *v111 = 136315138;
          sub_2324DB3E4(v103, v105);
          v113 = sub_2325455B8();
          v115 = v114;
          sub_2324DB438(v103, v105);
          v116 = sub_2324C2220(v113, v115, &v188);

          *(v111 + 4) = v116;
          _os_log_impl(&dword_2324C0000, v109, v110, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v111, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v112);
          MEMORY[0x238386450](v112, -1, -1);
          MEMORY[0x238386450](v111, -1, -1);
        }

        v60 = *sub_2324C8418();
        if (!v60)
        {
          sub_2324DB438(v103, v105);
          v1 = v179;
          v117 = *(v179 + 432);
          v2 = 1;
          if (v117 >> 60 != 15)
          {
            sub_2324DB3E4(*(v179 + 424), v117);
            v118 = sub_232545888();
            v119 = sub_2325461D8();
            v120 = os_log_type_enabled(v118, v119);
            v122 = *(v179 + 424);
            v121 = *(v179 + 432);
            if (v120)
            {
              v123 = swift_slowAlloc();
              *v123 = 0;
              _os_log_impl(&dword_2324C0000, v118, v119, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v123, 2u);
              v124 = v123;
              v1 = v179;
              MEMORY[0x238386450](v124, -1, -1);
            }

            sub_2324DB438(v122, v121);

            v2 = 1;
          }

          goto LABEL_2;
        }

        goto LABEL_96;
      }

      sub_2324DB3D0(v107, v108);
      v2 = 0;
      v1 = v104;
      if (v108 >> 60 == 15)
      {
        goto LABEL_2;
      }

      sub_2324DB3D0(v107, v108);
      sub_2324DB3E4(v107, v108);
      v125 = sub_232545888();
      v126 = sub_2325461E8();
      sub_2324DB438(v107, v108);
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v188 = v128;
        *v127 = 136315138;
        sub_2324DB3E4(v107, v108);
        v129 = sub_2325455B8();
        v131 = v130;
        sub_2324DB438(v107, v108);
        v132 = sub_2324C2220(v129, v131, &v188);

        *(v127 + 4) = v132;
        v1 = v179;
        _os_log_impl(&dword_2324C0000, v125, v126, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v128);
        MEMORY[0x238386450](v128, -1, -1);
        MEMORY[0x238386450](v127, -1, -1);
      }

      v133 = *sub_2324C8418();
      if (!v133)
      {
        sub_2324DB438(v107, v108);
        v2 = 1;
        goto LABEL_2;
      }

      v174 = *(v133 + 136);
      *(v1 + 464) = v174;
      v175 = *(*v174 + 104);

      v182 = (v175 + *v175);
      v172 = swift_task_alloc();
      *(v1 + 472) = v172;
      *v172 = v1;
      v173 = sub_23250D070;
LABEL_98:
      v172[1] = v173;
      v154 = v182;

      return v154();
    }

    break;
  }

LABEL_62:
  *(v1 + 544) = v34;
  *(v1 + 536) = v41;
  *(v1 + 528) = 0;
  v134 = *(v1 + 647);
  sub_23251BB00();
  if (v134 == 1)
  {
    *(v1 + 552) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v135 = sub_232545888();
    v136 = sub_232546208();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = *(v179 + 344);
      v138 = swift_slowAlloc();
      *v138 = 134218240;
      *(v138 + 4) = v34[2];

      *(v138 + 12) = 2048;
      *(v138 + 14) = v137;
      v1 = v179;

      _os_log_impl(&dword_2324C0000, v135, v136, "Ready to process %ld changed (of %ld total) incoming device updates", v138, 0x16u);
      MEMORY[0x238386450](v138, -1, -1);
    }

    else
    {
    }

    if (v34[2])
    {
      v139 = sub_2324C8418();
      v140 = *v139;
      *(v1 + 560) = *v139;
      if (v140)
      {
        v141 = *v140 + 168;
        *(v1 + 568) = *v141;
        *(v1 + 576) = v141 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v140, 0);
      }

      v142 = sub_232545888();
      v143 = sub_2325461F8();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_2324C0000, v142, v143, "No persistence controller available", v144, 2u);
        MEMORY[0x238386450](v144, -1, -1);
      }

      v34 = *(v1 + 544);
    }
  }

  *(v1 + 616) = v34;
  v145 = *(v1 + 536);
  if (*(v145 + 16))
  {

    v146 = sub_232545888();
    v147 = sub_232546208();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 134217984;
      *(v148 + 4) = *(v145 + 16);

      _os_log_impl(&dword_2324C0000, v146, v147, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v148, 0xCu);
      MEMORY[0x238386450](v148, -1, -1);
    }

    else
    {
    }

    v155 = *(**(v179 + 176) + 512);
    v186 = (v155 + *v155);
    v156 = swift_task_alloc();
    *(v179 + 624) = v156;
    *v156 = v179;
    v156[1] = sub_232511298;
    v157 = *(v179 + 536);
    v158 = v186;

    return v158(v157);
  }

  v150 = *((*(**(v1 + 176) + 192))(v149) + 16);

  if (v150)
  {
    v151 = *(*(v1 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v151 & 1) == 0)
    {
      v152 = *(**(v1 + 176) + 304);
      v185 = (v152 + *v152);
      v153 = swift_task_alloc();
      *(v1 + 632) = v153;
      *v153 = v1;
      v153[1] = sub_232511624;
      v154 = v185;

      return v154();
    }
  }

  else
  {
  }

  v159 = *(v1 + 8);

  return v159();
}

uint64_t sub_232514C5C()
{
  v1 = *(v0 + 608);
  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_2325461F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 608);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2324C0000, v3, v4, "Failed to persist updated devices: %@", v7, 0xCu);
    sub_2324C28AC(v8, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v8, -1, -1);
    MEMORY[0x238386450](v7, -1, -1);
  }

  else
  {
  }

  *(v0 + 616) = *(v0 + 544);
  v11 = *(v0 + 536);
  if (*(v11 + 16))
  {

    v12 = sub_232545888();
    v13 = sub_232546208();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = *(v11 + 16);

      _os_log_impl(&dword_2324C0000, v12, v13, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v14, 0xCu);
      MEMORY[0x238386450](v14, -1, -1);
    }

    else
    {
    }

    v21 = *(**(v0 + 176) + 512);
    v26 = (v21 + *v21);
    v22 = swift_task_alloc();
    *(v0 + 624) = v22;
    *v22 = v0;
    v22[1] = sub_232511298;
    v23 = *(v0 + 536);

    return v26(v23);
  }

  v16 = *((*(**(v0 + 176) + 192))(v15) + 16);

  if (v16)
  {
    v17 = *(*(v0 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v17 & 1) == 0)
    {
      v18 = *(**(v0 + 176) + 304);
      v25 = (v18 + *v18);
      v19 = swift_task_alloc();
      *(v0 + 632) = v19;
      *v19 = v0;
      v19[1] = sub_232511624;

      return v25();
    }
  }

  else
  {
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2325151DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(type metadata accessor for NDFDevice(0) - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325152A4, v1, 0);
}

void sub_2325152A4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v30 = v0[4];
    v4 = v1 + 40;
    v5 = MEMORY[0x277D84F90];
    v29 = v4;
    do
    {
      v31 = v5;
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }

        v9 = *(v6 - 1);
        v8 = *v6;
        sub_232545A48();
        sub_2324DB3E4(v9, v8);
        v10 = sub_232545948();
        if (v10)
        {
          break;
        }

        v11 = sub_232545888();
        v12 = sub_2325461F8();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_2324C0000, v11, v12, "Failed to decode NDFDevicePayload obtained from symptomsd-distributed", v13, 2u);
          MEMORY[0x238386450](v13, -1, -1);
        }

        sub_2324DB44C(v9, v8);

        ++v7;
        v6 += 2;
        if (v3 == v2)
        {
          v5 = v31;
          goto LABEL_18;
        }
      }

      v15 = v0[5];
      v14 = v0[6];
      v28 = v10;
      sub_2324F4A50(v14);
      sub_2324CE250(v14, v15);
      v16 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2324E1E80(0, v31[2] + 1, 1, v31);
      }

      v18 = v16[2];
      v17 = v16[3];
      v19 = v16;
      v20 = v28;
      if (v18 >= v17 >> 1)
      {
        v19 = sub_2324E1E80((v17 > 1), v18 + 1, 1, v16);
        v20 = v28;
      }

      v22 = v0[5];
      v21 = v0[6];

      sub_2324DB44C(v9, v8);
      sub_23251FC44(v21, type metadata accessor for NDFDevice);
      v19[2] = v18 + 1;
      v5 = v19;
      sub_23251FBDC(v22, v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v18, type metadata accessor for NDFDevice);
      v4 = v29;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_18:
  v0[7] = v5;

  v23 = sub_232545888();
  v24 = sub_232546208();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v5[2];

    _os_log_impl(&dword_2324C0000, v23, v24, "About to process %ld NDFDevice records from CloudKit payloads", v25, 0xCu);
    MEMORY[0x238386450](v25, -1, -1);
  }

  else
  {
  }

  v26 = v0[3];

  v32 = (*(*v26 + 464) + **(*v26 + 464));
  v27 = swift_task_alloc();
  v0[8] = v27;
  *v27 = v0;
  v27[1] = sub_232515738;

  v32(v5, 0, 1);
}

uint64_t sub_232515738()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_23251588C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_23251588C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232515900(uint64_t a1, uint64_t a2)
{
  v3[68] = v2;
  v3[67] = a2;
  v3[66] = a1;
  sub_232545688();
  v3[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v3[70] = swift_task_alloc();
  v4 = type metadata accessor for NDFDevice(0);
  v3[71] = v4;
  v3[72] = *(v4 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v5 = sub_2325456F8();
  v3[78] = v5;
  v3[79] = *(v5 - 8);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93588, &qword_2325481C0);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232515B4C, v2, 0);
}

void sub_232515B4C()
{
  v247 = v0;
  v1 = v0;
  sub_232517800(v0[66]);
  if (!v2)
  {
    v20 = sub_232545888();
    v21 = sub_2325461F8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Received self device state is not of type Dictionary";
LABEL_11:
      _os_log_impl(&dword_2324C0000, v20, v21, v23, v22, 2u);
      MEMORY[0x238386450](v22, -1, -1);
    }

LABEL_12:

    v24 = v0[1];

    v24();
    return;
  }

  v3 = v2;
  v0[86] = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

  v4 = sub_232545888();
  v5 = sub_2325461D8();

  v212 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v246[0] = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93598, qword_2325481D0);
    sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v8 = sub_232545EF8();
    v10 = sub_2324C2220(v8, v9, v246);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2324C0000, v4, v5, "Received self device state: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x238386450](v7, -1, -1);
    MEMORY[0x238386450](v6, -1, -1);
  }

  v11 = sub_232517F58(v0[67]);
  if (!v11)
  {

    v20 = sub_232545888();
    v21 = sub_2325461F8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Removal keys are not of type String";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v216 = v11;
  v12 = sub_232545888();
  v13 = sub_2325461D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v246[0] = v15;
    *v14 = 136315138;
    v16 = v216;
    v17 = MEMORY[0x238385650](v216, MEMORY[0x277D837D0]);
    v19 = sub_2324C2220(v17, v18, v246);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2324C0000, v12, v13, "Keys to remove: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x238386450](v15, -1, -1);
    MEMORY[0x238386450](v14, -1, -1);
  }

  else
  {

    v16 = v216;
  }

  v25 = 0;
  v26 = -1;
  v27 = -1 << *(v212 + 32);
  v28 = v0[79];
  v29 = v0[72];
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v30 = v26 & *(v212 + 64);
  v232 = v0[71];
  v208 = (63 - v27) >> 6;
  v240 = (v28 + 16);
  v226 = (v28 + 32);
  v236 = (v28 + 56);
  v218 = v0[72];
  v210 = (v29 + 48);
  v211 = v0[79];
  v213 = (v28 + 48);
  v214 = (v29 + 56);
  v239 = (v28 + 8);
  v31 = MEMORY[0x277D84F90];
  v32 = (v16 + 40);
  v33 = v212 + 64;
  v209 = v32;
  v234 = v0;
  while (1)
  {
    v1[87] = v31;
    v224 = v31;
    if (v30)
    {
      v223 = v25;
      v34 = v25;
      goto LABEL_29;
    }

    v35 = v208 <= v25 + 1 ? v25 + 1 : v208;
    v36 = v35 - 1;
    do
    {
      v34 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        return;
      }

      if (v34 >= v208)
      {
        v201 = v1[84];
        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93590, &qword_2325481C8);
        (*(*(v202 - 8) + 56))(v201, 1, 1, v202);
        v222 = 0;
        v223 = v36;
        goto LABEL_30;
      }

      v30 = *(v33 + 8 * v34);
      ++v25;
    }

    while (!v30);
    v223 = v34;
LABEL_29:
    v37 = v1[84];
    v38 = v1[83];
    v39 = v1[78];
    v222 = (v30 - 1) & v30;
    v40 = __clz(__rbit64(v30)) | (v34 << 6);
    (*(v211 + 16))(v38, *(v212 + 48) + *(v211 + 72) * v40, v39);
    v41 = *(*(v212 + 56) + 8 * v40);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93590, &qword_2325481C8);
    v43 = *(v42 + 48);
    (*(v211 + 32))(v37, v38, v39);
    *(v37 + v43) = v41;
    (*(*(v42 - 8) + 56))(v37, 0, 1, v42);

LABEL_30:
    v44 = v1[85];
    sub_2324F1C98(v1[84], v44, &qword_27DD93588, &qword_2325481C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93590, &qword_2325481C8);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      break;
    }

    v46 = *(v1[85] + *(v45 + 48));
    v221 = *v226;
    (*v226)(v1[82]);
    v47 = sub_23254510C();
    v233 = v47;
    if (*(v46 + 16) && (v48 = *v47, v49 = v47[1], , v50 = sub_2324EF34C(v48, v49), v52 = v51, , (v52 & 1) != 0))
    {
      v53 = v1[78];
      v54 = v1[77];
      sub_2324C26D8(*(v46 + 56) + 32 * v50, (v1 + 2));
      v55 = swift_dynamicCast();
      v56 = *v236;
      v57 = v55 ^ 1u;
      v58 = v54;
      v59 = v53;
    }

    else
    {
      v59 = v1[78];
      v58 = v1[77];
      v56 = *v236;
      v57 = 1;
    }

    v235 = v56;
    v56(v58, v57, 1, v59);
    v60 = sub_232545134();
    v231 = v60;
    if (*(v46 + 16) && (v61 = *v60, v62 = v60[1], , v63 = sub_2324EF34C(v61, v62), v65 = v64, , (v65 & 1) != 0))
    {
      sub_2324C26D8(*(v46 + 56) + 32 * v63, (v1 + 6));
      v66 = swift_dynamicCast();
      v67 = v1[64];
      if (!v66)
      {
        v67 = 0;
      }

      v228 = v67;
      v68 = 0xF000000000000000;
      if (v66)
      {
        v68 = v1[65];
      }
    }

    else
    {
      v228 = 0;
      v68 = 0xF000000000000000;
    }

    v230 = v68;
    v69 = sub_232545164();
    v225 = v69;
    if (*(v46 + 16) && (v70 = *v69, v71 = v69[1], , v72 = sub_2324EF34C(v70, v71), v74 = v73, , (v74 & 1) != 0))
    {
      sub_2324C26D8(*(v46 + 56) + 32 * v72, (v1 + 10));
      v75 = swift_dynamicCast();
      v76 = v1[62];
      if (!v75)
      {
        v76 = 0;
      }

      v227 = v76;
      v77 = 0xF000000000000000;
      if (v75)
      {
        v77 = v1[63];
      }
    }

    else
    {
      v227 = 0;
      v77 = 0xF000000000000000;
    }

    v229 = v77;
    v78 = sub_232545194();
    v217 = v78;
    if (*(v46 + 16) && (v79 = *v78, v80 = v78[1], , v81 = sub_2324EF34C(v79, v80), v83 = v82, , (v83 & 1) != 0))
    {
      sub_2324C26D8(*(v46 + 56) + 32 * v81, (v1 + 14));
      v84 = swift_dynamicCast();
      v85 = v1[60];
      if (!v84)
      {
        v85 = 0;
      }

      v237 = v85;
      if (v84)
      {
        v86 = v1[61];
      }

      else
      {
        v86 = 0;
      }
    }

    else
    {
      v237 = 0;
      v86 = 0;
    }

    v87 = sub_2325451C0();
    if (*(v46 + 16) && (v88 = *v87, v89 = v87[1], , v90 = sub_2324EF34C(v88, v89), v92 = v91, , (v92 & 1) != 0))
    {
      sub_2324C26D8(*(v46 + 56) + 32 * v90, (v1 + 18));
      v93 = swift_dynamicCast();
      v94 = *(v1 + 723);
      if (!v93)
      {
        v94 = 2;
      }
    }

    else
    {
      v94 = 2;
    }

    v243 = v94;
    v95 = sub_2325451E8();
    if (*(v46 + 16) && (v96 = *v95, v97 = v95[1], , v98 = sub_2324EF34C(v96, v97), v100 = v99, , (v100 & 1) != 0))
    {
      sub_2324C26D8(*(v46 + 56) + 32 * v98, (v1 + 22));
      v101 = swift_dynamicCast();
      v102 = *(v1 + 722);
      if (!v101)
      {
        v102 = 2;
      }
    }

    else
    {
      v102 = 2;
    }

    v241 = v102;
    v103 = sub_232545210();
    v215 = v103;
    if (*(v46 + 16) && (v104 = *v103, v105 = v103[1], , v106 = sub_2324EF34C(v104, v105), v108 = v107, , (v108 & 1) != 0))
    {
      sub_2324C26D8(*(v46 + 56) + 32 * v106, (v1 + 26));

      v109 = swift_dynamicCast();
      v110 = *(v1 + 360);
      if (!v109)
      {
        v110 = 0;
      }

      v220 = v110;
      v111 = v109 ^ 1;
    }

    else
    {

      v220 = 0;
      v111 = 1;
    }

    v112 = (*(*v1[68] + 168))();
    if (*(v112 + 16) && (v113 = sub_2324E6CD4(v1[82]), (v114 & 1) != 0))
    {
      v115 = v1[74];
      v116 = v1[71];
      v117 = v1[70];
      sub_2324CE250(*(v112 + 56) + *(v218 + 72) * v113, v117);

      (*(v218 + 56))(v117, 0, 1, v116);
      sub_23251FBDC(v117, v115, type metadata accessor for NDFDevice);
      v118 = v232;
    }

    else
    {
      v119 = v1[83];
      v120 = v1[82];
      v121 = v1[78];
      v122 = v1[76];
      v219 = v1[74];
      v123 = v1[71];
      v124 = v234[70];
      v125 = v234[69];

      (*v214)(v124, 1, 1, v123);
      (*v240)(v119, v120, v121);
      v126 = v235(v122, 1, 1, v121);
      sub_2324FBCE4(v126);
      sub_2324FA5C0(v119, v125, 0, 0, v122, 0, 0xF000000000000000, 0, v219, 0xF000000000000000, 0, 0, 2, 2, 0, 0, 1, 0, 2);
      v127 = v124;
      v1 = v234;
      v118 = v232;
      if ((*v210)(v127, 1, v123) != 1)
      {
        sub_2324C28AC(v234[70], &qword_27DD93578, &unk_2325480F0);
      }
    }

    v128 = v1[78];
    v129 = v1[75];
    sub_2324CF3C4(v1[77], v129, &unk_27DD932E0, qword_2325472E0);
    if ((*v213)(v129, 1, v128) == 1)
    {
      sub_2324C28AC(v1[75], &unk_27DD932E0, qword_2325472E0);
    }

    else
    {
      v130 = v1[81];
      v131 = v1[78];
      v132 = v1[76];
      v133 = v1[74];
      (v221)(v130, v1[75], v131);
      (v221)(v132, v130, v131);
      v235(v132, 0, 1, v131);
      swift_beginAccess();
      sub_2324F503C(v132, v133 + v118[7]);
    }

    v134 = v233;
    if (v230 >> 60 != 15)
    {
      v135 = v1[74];
      swift_beginAccess();
      v136 = (v135 + v118[8]);
      v138 = *v136;
      v137 = v136[1];
      *v136 = v228;
      v136[1] = v230;
      sub_2324DB3E4(v228, v230);
      sub_2324DB438(v138, v137);
    }

    if (v229 >> 60 != 15)
    {
      v139 = v1[74];
      swift_beginAccess();
      v140 = (v139 + v118[9]);
      v142 = *v140;
      v141 = v140[1];
      *v140 = v227;
      v140[1] = v229;
      sub_2324DB3E4(v227, v229);
      sub_2324DB438(v142, v141);
    }

    if (v86)
    {
      v143 = v1[74];
      swift_beginAccess();
      v144 = (v143 + v118[10]);
      *v144 = v237;
      v144[1] = v86;
    }

    if (v241 == 2)
    {
      if (v243 == 2)
      {
        goto LABEL_91;
      }

LABEL_131:
      v200 = v1[74];
      swift_beginAccess();
      *(v200 + v118[11]) = v243;
      if (v111)
      {
        goto LABEL_93;
      }

LABEL_92:
      v145 = v1[74];
      swift_beginAccess();
      v146 = v145 + v118[14];
      *v146 = v220;
      *(v146 + 2) = 0;
      goto LABEL_93;
    }

    v199 = v1[74];
    swift_beginAccess();
    *(v199 + v118[12]) = v241;
    if (v243 != 2)
    {
      goto LABEL_131;
    }

LABEL_91:
    if ((v111 & 1) == 0)
    {
      goto LABEL_92;
    }

LABEL_93:
    v147 = *(v216 + 16);
    if (v147)
    {
      swift_beginAccess();
      v238 = *v240;
      v148 = v209;
      do
      {
        v242 = v148;
        v244 = v147;
        v152 = *(v148 - 1);
        v153 = *v148;
        v238(v1[80], v1[82], v1[78]);
        swift_bridgeObjectRetain_n();
        v154 = sub_232545888();
        v155 = sub_2325461D8();

        v156 = os_log_type_enabled(v154, v155);
        v157 = v1[80];
        v158 = v1[78];
        if (v156)
        {
          v159 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v246[0] = v160;
          *v159 = 136315394;
          *(v159 + 4) = sub_2324C2220(v152, v153, v246);
          *(v159 + 12) = 2080;
          sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v161 = sub_232546608();
          v163 = v162;
          (*v239)(v157, v158);
          v164 = sub_2324C2220(v161, v163, v246);
          v118 = v232;

          *(v159 + 14) = v164;
          _os_log_impl(&dword_2324C0000, v154, v155, "Removing value for key %s from device %s", v159, 0x16u);
          swift_arrayDestroy();
          v165 = v160;
          v1 = v234;
          MEMORY[0x238386450](v165, -1, -1);
          v166 = v159;
          v134 = v233;
          MEMORY[0x238386450](v166, -1, -1);
        }

        else
        {

          (*v239)(v157, v158);
        }

        if (*v134 == v152 && v134[1] == v153 || (sub_232546628() & 1) != 0)
        {
          v149 = v1[78];
          v150 = v1[76];
          v151 = v1[74];

          v235(v150, 1, 1, v149);
          sub_2324F503C(v150, v151 + v118[7]);
        }

        else
        {
          if (*v231 == v152 && v231[1] == v153 || (sub_232546628() & 1) != 0)
          {
            v167 = v1[74];

            v168 = v118[8];
          }

          else
          {
            if ((*v225 != v152 || v225[1] != v153) && (sub_232546628() & 1) == 0)
            {
              if (*v217 == v152 && v217[1] == v153 || (sub_232546628() & 1) != 0)
              {
                v172 = v1[74];

                v173 = (v172 + v118[10]);
                *v173 = 0;
                v173[1] = 0;
              }

              else if (*v215 == v152 && v215[1] == v153 || (sub_232546628() & 1) != 0)
              {
                v174 = v1[74];

                v175 = v174 + v118[14];
                *v175 = 0;
                *(v175 + 2) = 1;
              }

              else
              {

                v176 = sub_232545888();
                v177 = sub_2325461F8();

                if (os_log_type_enabled(v176, v177))
                {
                  v178 = swift_slowAlloc();
                  v179 = swift_slowAlloc();
                  v246[0] = v179;
                  *v178 = 136315138;
                  v180 = sub_2324C2220(v152, v153, v246);

                  *(v178 + 4) = v180;
                  _os_log_impl(&dword_2324C0000, v176, v177, "Unhandled removal key: %s", v178, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v179);
                  v181 = v179;
                  v134 = v233;
                  MEMORY[0x238386450](v181, -1, -1);
                  MEMORY[0x238386450](v178, -1, -1);
                }

                else
                {
                }
              }

              goto LABEL_96;
            }

            v167 = v1[74];

            v168 = v118[9];
          }

          v169 = (v167 + v168);
          v170 = *v169;
          v171 = v169[1];
          *v169 = xmmword_232547F00;
          sub_2324DB438(v170, v171);
        }

LABEL_96:
        v148 = v242 + 2;
        v147 = v244 - 1;
      }

      while (v244 != 1);
    }

    v182 = sub_232545888();
    v183 = sub_232546208();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v246[0] = v185;
      *v184 = 136315138;
      swift_beginAccess();
      v186 = sub_2324F6270();
      v188 = sub_2324C2220(v186, v187, v246);

      *(v184 + 4) = v188;
      _os_log_impl(&dword_2324C0000, v182, v183, "Device from dictionary: %s", v184, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v185);
      MEMORY[0x238386450](v185, -1, -1);
      MEMORY[0x238386450](v184, -1, -1);
    }

    v189 = v1[74];
    v190 = v1[73];
    swift_beginAccess();
    sub_2324CE250(v189, v190);
    v191 = v224;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_2324E1E80(0, v224[2] + 1, 1, v224);
    }

    v193 = v191[2];
    v192 = v191[3];
    if (v193 >= v192 >> 1)
    {
      v191 = sub_2324E1E80((v192 > 1), v193 + 1, 1, v191);
    }

    v194 = v1[82];
    v195 = v1[78];
    v196 = v1[77];
    v197 = v1[74];
    v198 = v1[73];
    sub_2324DB438(v227, v229);
    sub_2324DB438(v228, v230);
    (*v239)(v194, v195);
    v31 = v191;
    v191[2] = v193 + 1;
    sub_23251FBDC(v198, v191 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v193, type metadata accessor for NDFDevice);
    sub_23251FC44(v197, type metadata accessor for NDFDevice);
    sub_2324C28AC(v196, &unk_27DD932E0, qword_2325472E0);
    v33 = v212 + 64;
    v30 = v222;
    v25 = v223;
  }

  v203 = sub_232545888();
  v204 = sub_2325461E8();
  if (os_log_type_enabled(v203, v204))
  {
    v205 = swift_slowAlloc();
    *v205 = 134217984;
    *(v205 + 4) = v224[2];

    _os_log_impl(&dword_2324C0000, v203, v204, "About to process %ld changed NDFDevice records", v205, 0xCu);
    MEMORY[0x238386450](v205, -1, -1);
  }

  else
  {
  }

  v206 = v1[68];

  v245 = (*(*v206 + 464) + **(*v206 + 464));
  v207 = swift_task_alloc();
  v1[88] = v207;
  *v207 = v1;
  v207[1] = sub_232517390;

  v245(v224, 1, 1);
}

uint64_t sub_232517390()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = *(v2 + 544);
    v4 = sub_2325175D8;
  }

  else
  {
    v5 = *(v2 + 544);

    v4 = sub_2325174B8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2325174B8(uint64_t a1)
{
  sub_23251BB00();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2325175D8()
{
  v1 = *(v0 + 712);

  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_2325461F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 712);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2324C0000, v3, v4, "Error processing local device update: %@", v7, 0xCu);
    sub_2324C28AC(v8, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v8, -1, -1);
    MEMORY[0x238386450](v7, -1, -1);
  }

  else
  {
  }

  sub_23251BB00();

  v11 = *(v0 + 8);

  return v11();
}

void sub_232517800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93590, &qword_2325481C8);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v44 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935A8, &qword_2325482D0);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - v6;
  v7 = sub_2325456F8();
  v55 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v49 = &v44 - v13;
  v57 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935B0, &qword_2325482D8);
    v14 = sub_2325464B8();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = v57 + 64;
  v16 = 1 << *(v57 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v57 + 64);
  v19 = (v16 + 63) >> 6;
  v53 = (v55 + 56);
  v59 = (v55 + 32);
  v48 = v14 + 8;

  v20 = 0;
  v47 = v12;
  v46 = v15;
  v45 = v19;
  while (1)
  {
    if (!v18)
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          goto LABEL_29;
        }

        v18 = *(v15 + 8 * v22);
        ++v20;
        if (v18)
        {
          v20 = v22;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v23 = __clz(__rbit64(v18)) | (v20 << 6);
    v24 = v57;
    sub_23251FF88(*(v57 + 48) + 40 * v23, v65);
    sub_2324C26D8(*(v24 + 56) + 32 * v23, v66 + 8);
    v63[0] = v66[0];
    v63[1] = v66[1];
    v64 = v67;
    v62[0] = v65[0];
    v62[1] = v65[1];
    sub_23251FF88(v62, v61);
    v25 = v54;
    if (!swift_dynamicCast())
    {
      sub_2324C28AC(v62, &qword_27DD935B8, &qword_2325482E0);

      (*v53)(v25, 1, 1, v7);
      sub_2324C28AC(v25, &unk_27DD932E0, qword_2325472E0);
LABEL_29:

      return;
    }

    (*v53)(v25, 0, 1, v7);
    v26 = *v59;
    (*v59)(v12, v25, v7);
    sub_2324C26D8(v63 + 8, v61);
    sub_2324C28AC(v62, &qword_27DD935B8, &qword_2325482E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93598, qword_2325481D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v55 + 8))(v12, v7);

      goto LABEL_29;
    }

    v56 = v60;
    v27 = v7;
    v28 = v52;
    v26(v52, v12, v27);
    v29 = v51;
    v30 = *(v51 + 48);
    v31 = v14;
    v32 = v50;
    v33 = v28;
    v7 = v27;
    v26(v50, v33, v27);
    *&v32[v30] = v56;
    v34 = *(v29 + 48);
    v35 = v49;
    v26(v49, v32, v7);
    v56 = *&v32[v34];
    v14 = v31;
    v26(v58, v35, v7);
    sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v36 = sub_232545F08();
    v37 = -1 << *(v31 + 32);
    v38 = v36 & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~v48[v38 >> 6]) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v38) & ~v48[v38 >> 6])) | v38 & 0x7FFFFFFFFFFFFFC0;
    v12 = v47;
    v15 = v46;
    v19 = v45;
LABEL_9:
    v18 &= v18 - 1;
    *(v48 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26((v14[6] + *(v55 + 72) * v21), v58, v7);
    *(v14[7] + 8 * v21) = v56;
    ++v14[2];
  }

  v40 = 0;
  v41 = (63 - v37) >> 6;
  v12 = v47;
  v15 = v46;
  v19 = v45;
  while (++v39 != v41 || (v40 & 1) == 0)
  {
    v42 = v39 == v41;
    if (v39 == v41)
    {
      v39 = 0;
    }

    v40 |= v42;
    v43 = v48[v39];
    if (v43 != -1)
    {
      v21 = __clz(__rbit64(~v43)) + (v39 << 6);
      goto LABEL_9;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_232517F58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2324E8668(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2324C26D8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2324E8668((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_23251806C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23251808C, v1, 0);
}

uint64_t sub_23251808C()
{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93280, &qword_2325477D0);
  v3 = *(type metadata accessor for NDFDevice(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = xmmword_232547150;
  sub_2324CE250(v1, v5 + v4);
  v8 = (*(*v2 + 464) + **(*v2 + 464));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_232518270;

  return v8(v5, 0, 1);
}

uint64_t sub_232518270()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_2325183AC, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2325183AC()
{
  v1 = *(v0 + 48);

  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_2325461F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2324C0000, v3, v4, "Error processing device update from DA: %@", v7, 0xCu);
    sub_2324C28AC(v8, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v8, -1, -1);
    MEMORY[0x238386450](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23251853C()
{
  v1 = *(**sub_2324C4D38() + 416);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v4 = (*(**(v0 + 16) + 328))(v3);
    *(v0 + 24) = v4;
    v5 = sub_232545888();
    v6 = sub_232546208();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v4 + 16);
      _os_log_impl(&dword_2324C0000, v5, v6, "About to trigger misconfig detection on all known devices (count: %ld)", v7, 0xCu);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v8 = *(v0 + 16);

    v15 = (*(*v8 + 512) + **(*v8 + 512));
    v9 = swift_task_alloc();
    *(v0 + 32) = v9;
    *v9 = v0;
    v9[1] = sub_23251882C;

    return v15(v4);
  }

  else
  {
    v11 = sub_232545888();
    v12 = sub_2325461E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2324C0000, v11, v12, "Skip misconfig detect: Not allowed on this platform", v13, 2u);
      MEMORY[0x238386450](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_23251882C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23251893C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = sub_232545688();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_2325456F8();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for NDFDevice(0);
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v2[21] = *(v6 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232518B80, v1, 0);
}

uint64_t sub_232518B80()
{
  v100 = v0;
  v1 = sub_2324C4D38();
  *(v0 + 216) = v1;
  v2 = *(**v1 + 416);

  LOBYTE(v2) = v2(v3);

  if ((v2 & 1) == 0)
  {
    v87 = sub_232545888();
    v88 = sub_2325461E8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_2324C0000, v87, v88, "Skip misconfig detect: Not allowed on this platform", v89, 2u);
      MEMORY[0x238386450](v89, -1, -1);
    }

    goto LABEL_37;
  }

  v4 = *(*(v0 + 48) + 16);
  *(v0 + 224) = v4;
  if (!v4)
  {
LABEL_37:

    v90 = *(v0 + 8);

    return v90();
  }

  v5 = 0;
  v6 = *(v0 + 160);
  *(v0 + 232) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  *(v0 + 264) = *(v6 + 80);
  *(v0 + 240) = *(v6 + 72);
  while (1)
  {
    *(v0 + 248) = v5;
    v7 = *(v0 + 208);
    v8 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = *(v0 + 120);
    sub_2324CE250(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 240) * v5, v7);
    sub_2324CF3C4(v7 + *(v8 + 28), v11, &unk_27DD932E0, qword_2325472E0);
    v12 = *(v10 + 48);
    if (v12(v11, 1, v9) != 1)
    {
      break;
    }

    v13 = *(v0 + 208);
    v14 = *(v0 + 176);
    sub_2324C28AC(*(v0 + 120), &unk_27DD932E0, qword_2325472E0);
    sub_2324CE250(v13, v14);
    v15 = sub_232545888();
    v16 = sub_2325461F8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 208);
    v19 = *(v0 + 176);
    if (v17)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v99 = v21;
      *v20 = 136315138;
      v22 = sub_2324F6270();
      v24 = v23;
      sub_23251FC44(v19, type metadata accessor for NDFDevice);
      v25 = sub_2324C2220(v22, v24, &v99);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2324C0000, v15, v16, "Skipping device update for device %s as it lacks a groupUUID", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x238386450](v21, -1, -1);
      MEMORY[0x238386450](v20, -1, -1);
    }

    else
    {

      sub_23251FC44(v19, type metadata accessor for NDFDevice);
    }

    sub_23251FC44(v18, type metadata accessor for NDFDevice);
LABEL_6:
    v5 = *(v0 + 248) + 1;
    if (v5 == *(v0 + 224))
    {
      goto LABEL_37;
    }
  }

  v27 = *(v0 + 136);
  v26 = *(v0 + 144);
  v28 = *(v0 + 128);
  v30 = *(v0 + 104);
  v29 = *(v0 + 112);
  v31 = *(v0 + 56);
  (*(v27 + 32))(v26, *(v0 + 120), v28);
  (*(v27 + 16))(v30, v26, v28);
  (*(v27 + 56))(v30, 0, 1, v28);
  (*(*v31 + 352))(v30);
  sub_2324C28AC(v30, &unk_27DD932E0, qword_2325472E0);
  if (v12(v29, 1, v28) == 1)
  {
    sub_2324C28AC(*(v0 + 112), &unk_27DD932E0, qword_2325472E0);
    v32 = 0xE300000000000000;
    v33 = 7104878;
  }

  else
  {
    v34 = *(v0 + 128);
    v35 = *(v0 + 136);
    v36 = *(v0 + 112);
    v33 = sub_2325456A8();
    v32 = v37;
    (*(v35 + 8))(v36, v34);
  }

  v38 = *(v0 + 208);
  v39 = *(v0 + 192);
  sub_2324CE250(v38, *(v0 + 200));
  sub_2324CE250(v38, v39);

  v40 = sub_232545888();
  v41 = sub_2325461D8();

  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 192);
  v44 = *(v0 + 200);
  if (v42)
  {
    v95 = *(v0 + 152);
    v97 = v41;
    v45 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v99 = v96;
    *v45 = 136315650;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v46 = sub_232546608();
    v48 = v47;
    sub_23251FC44(v44, type metadata accessor for NDFDevice);
    v49 = sub_2324C2220(v46, v48, &v99);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = sub_2324C2220(v33, v32, &v99);

    *(v45 + 14) = v50;
    *(v45 + 22) = 2080;
    v51 = *(v43 + *(v95 + 48));
    v52 = 1702195828;
    if ((v51 & 1) == 0)
    {
      v52 = 0x65736C6166;
    }

    v53 = 0xE500000000000000;
    if (v51)
    {
      v53 = 0xE400000000000000;
    }

    if (v51 == 2)
    {
      v54 = 7104878;
    }

    else
    {
      v54 = v52;
    }

    if (v51 == 2)
    {
      v55 = 0xE300000000000000;
    }

    else
    {
      v55 = v53;
    }

    sub_23251FC44(v43, type metadata accessor for NDFDevice);
    v56 = sub_2324C2220(v54, v55, &v99);

    *(v45 + 24) = v56;
    _os_log_impl(&dword_2324C0000, v40, v97, "Attempt triggering misconfig detection for DOI: %s, primary: %s, canReach: %s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v96, -1, -1);
    MEMORY[0x238386450](v45, -1, -1);
  }

  else
  {

    sub_23251FC44(v43, type metadata accessor for NDFDevice);
    v57 = sub_23251FC44(v44, type metadata accessor for NDFDevice);
  }

  v58 = *(v0 + 216);
  v60 = *(v0 + 88);
  v59 = *(v0 + 96);
  v61 = *(v0 + 80);
  (*(**(v0 + 56) + 240))(v57);
  sub_232545638();
  v63 = v62;
  (*(v60 + 8))(v59, v61);
  v64 = *(**v58 + 464);

  v66 = v64(v65);

  v67 = v63 + v66;
  if (v67 > 0.0)
  {
    v68 = *(v0 + 208);
    v69 = *(v0 + 184);
    v70 = *(v0 + 64);
    v71 = *(v0 + 72);
    v72 = *(v0 + 56);
    v73 = (*(v0 + 264) + 56) & ~*(v0 + 264);
    v74 = sub_2325460F8();
    v75 = *(v74 - 8);
    (*(v75 + 56))(v71, 1, 1, v74);
    sub_2324CE250(v68, v69);
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    *(v76 + 32) = v72;
    *(v76 + 40) = v67;
    *(v76 + 48) = v63;
    sub_23251FBDC(v69, v76 + v73, type metadata accessor for NDFDevice);
    sub_2324CF3C4(v71, v70, &qword_27DD93630, &qword_232547550);
    LODWORD(v68) = (*(v75 + 48))(v70, 1, v74);

    v77 = *(v0 + 64);
    if (v68 == 1)
    {
      sub_2324C28AC(*(v0 + 64), &qword_27DD93630, &qword_232547550);
    }

    else
    {
      sub_2325460E8();
      (*(v75 + 8))(v77, v74);
    }

    v78 = *(v76 + 16);
    swift_unknownObjectRetain();

    if (v78)
    {
      swift_getObjectType();
      v79 = sub_232546098();
      v81 = v80;
      swift_unknownObjectRelease();
      if (v81 | v79)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v79;
        *(v0 + 40) = v81;
      }
    }

    v82 = *(v0 + 208);
    v84 = *(v0 + 136);
    v83 = *(v0 + 144);
    v85 = *(v0 + 128);
    v86 = *(v0 + 72);
    swift_task_create();
    sub_2324C28AC(v86, &qword_27DD93630, &qword_232547550);
    (*(v84 + 8))(v83, v85);
    sub_23251FC44(v82, type metadata accessor for NDFDevice);

    goto LABEL_6;
  }

  v92 = *(**(v0 + 56) + 520);
  v98 = (v92 + *v92);
  v93 = swift_task_alloc();
  *(v0 + 256) = v93;
  *v93 = v0;
  v93[1] = sub_232519794;
  v94 = *(v0 + 208);

  return v98(v94);
}

uint64_t sub_232519794()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2325198A4, v1, 0);
}

uint64_t sub_2325198A4()
{
  v93 = v0;
  v1 = *(v0 + 208);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  sub_23251FC44(v1, type metadata accessor for NDFDevice);
  v2 = *(v0 + 248) + 1;
  if (v2 == *(v0 + 224))
  {
LABEL_2:

    v3 = *(v0 + 8);

    return v3();
  }

  while (1)
  {
    *(v0 + 248) = v2;
    v5 = *(v0 + 208);
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    sub_2324CE250(*(v0 + 48) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 240) * v2, v5);
    sub_2324CF3C4(v5 + *(v6 + 28), v9, &unk_27DD932E0, qword_2325472E0);
    v10 = *(v8 + 48);
    if (v10(v9, 1, v7) != 1)
    {
      break;
    }

    v11 = *(v0 + 208);
    v12 = *(v0 + 176);
    sub_2324C28AC(*(v0 + 120), &unk_27DD932E0, qword_2325472E0);
    sub_2324CE250(v11, v12);
    v13 = sub_232545888();
    v14 = sub_2325461F8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 208);
    v17 = *(v0 + 176);
    if (v15)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v92 = v19;
      *v18 = 136315138;
      v20 = sub_2324F6270();
      v22 = v21;
      sub_23251FC44(v17, type metadata accessor for NDFDevice);
      v23 = sub_2324C2220(v20, v22, &v92);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2324C0000, v13, v14, "Skipping device update for device %s as it lacks a groupUUID", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x238386450](v19, -1, -1);
      MEMORY[0x238386450](v18, -1, -1);
    }

    else
    {

      sub_23251FC44(v17, type metadata accessor for NDFDevice);
    }

    sub_23251FC44(v16, type metadata accessor for NDFDevice);
LABEL_8:
    v2 = *(v0 + 248) + 1;
    if (v2 == *(v0 + 224))
    {
      goto LABEL_2;
    }
  }

  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v26 = *(v0 + 128);
  v28 = *(v0 + 104);
  v27 = *(v0 + 112);
  v29 = *(v0 + 56);
  (*(v25 + 32))(v24, *(v0 + 120), v26);
  (*(v25 + 16))(v28, v24, v26);
  (*(v25 + 56))(v28, 0, 1, v26);
  (*(*v29 + 352))(v28);
  sub_2324C28AC(v28, &unk_27DD932E0, qword_2325472E0);
  if (v10(v27, 1, v26) == 1)
  {
    sub_2324C28AC(*(v0 + 112), &unk_27DD932E0, qword_2325472E0);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v32 = *(v0 + 128);
    v33 = *(v0 + 136);
    v34 = *(v0 + 112);
    v31 = sub_2325456A8();
    v30 = v35;
    (*(v33 + 8))(v34, v32);
  }

  v36 = *(v0 + 208);
  v37 = *(v0 + 192);
  sub_2324CE250(v36, *(v0 + 200));
  sub_2324CE250(v36, v37);

  v38 = sub_232545888();
  v39 = sub_2325461D8();

  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 192);
  v42 = *(v0 + 200);
  if (v40)
  {
    v88 = *(v0 + 152);
    v90 = v39;
    v43 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v92 = v89;
    *v43 = 136315650;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v44 = sub_232546608();
    v46 = v45;
    sub_23251FC44(v42, type metadata accessor for NDFDevice);
    v47 = sub_2324C2220(v44, v46, &v92);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v48 = sub_2324C2220(v31, v30, &v92);

    *(v43 + 14) = v48;
    *(v43 + 22) = 2080;
    v49 = *(v41 + *(v88 + 48));
    v50 = 1702195828;
    if ((v49 & 1) == 0)
    {
      v50 = 0x65736C6166;
    }

    v51 = 0xE500000000000000;
    if (v49)
    {
      v51 = 0xE400000000000000;
    }

    if (v49 == 2)
    {
      v52 = 7104878;
    }

    else
    {
      v52 = v50;
    }

    if (v49 == 2)
    {
      v53 = 0xE300000000000000;
    }

    else
    {
      v53 = v51;
    }

    sub_23251FC44(v41, type metadata accessor for NDFDevice);
    v54 = sub_2324C2220(v52, v53, &v92);

    *(v43 + 24) = v54;
    _os_log_impl(&dword_2324C0000, v38, v90, "Attempt triggering misconfig detection for DOI: %s, primary: %s, canReach: %s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v89, -1, -1);
    MEMORY[0x238386450](v43, -1, -1);
  }

  else
  {

    sub_23251FC44(v41, type metadata accessor for NDFDevice);
    v55 = sub_23251FC44(v42, type metadata accessor for NDFDevice);
  }

  v56 = *(v0 + 216);
  v58 = *(v0 + 88);
  v57 = *(v0 + 96);
  v59 = *(v0 + 80);
  (*(**(v0 + 56) + 240))(v55);
  sub_232545638();
  v61 = v60;
  (*(v58 + 8))(v57, v59);
  v62 = *(**v56 + 464);

  v64 = v62(v63);

  v65 = v61 + v64;
  if (v65 > 0.0)
  {
    v66 = *(v0 + 208);
    v67 = *(v0 + 184);
    v68 = *(v0 + 64);
    v69 = *(v0 + 72);
    v70 = *(v0 + 56);
    v71 = (*(v0 + 264) + 56) & ~*(v0 + 264);
    v72 = sub_2325460F8();
    v73 = *(v72 - 8);
    (*(v73 + 56))(v69, 1, 1, v72);
    sub_2324CE250(v66, v67);
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    *(v74 + 24) = 0;
    *(v74 + 32) = v70;
    *(v74 + 40) = v65;
    *(v74 + 48) = v61;
    sub_23251FBDC(v67, v74 + v71, type metadata accessor for NDFDevice);
    sub_2324CF3C4(v69, v68, &qword_27DD93630, &qword_232547550);
    LODWORD(v66) = (*(v73 + 48))(v68, 1, v72);

    v75 = *(v0 + 64);
    if (v66 == 1)
    {
      sub_2324C28AC(*(v0 + 64), &qword_27DD93630, &qword_232547550);
    }

    else
    {
      sub_2325460E8();
      (*(v73 + 8))(v75, v72);
    }

    v76 = *(v74 + 16);
    swift_unknownObjectRetain();

    if (v76)
    {
      swift_getObjectType();
      v77 = sub_232546098();
      v79 = v78;
      swift_unknownObjectRelease();
      if (v79 | v77)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v77;
        *(v0 + 40) = v79;
      }
    }

    v80 = *(v0 + 208);
    v82 = *(v0 + 136);
    v81 = *(v0 + 144);
    v83 = *(v0 + 128);
    v84 = *(v0 + 72);
    swift_task_create();
    sub_2324C28AC(v84, &qword_27DD93630, &qword_232547550);
    (*(v82 + 8))(v81, v83);
    sub_23251FC44(v80, type metadata accessor for NDFDevice);

    goto LABEL_8;
  }

  v85 = *(**(v0 + 56) + 520);
  v91 = (v85 + *v85);
  v86 = swift_task_alloc();
  *(v0 + 256) = v86;
  *v86 = v0;
  v86[1] = sub_232519794;
  v87 = *(v0 + 208);

  return v91(v87);
}

uint64_t sub_23251A404(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a7;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 16) = a6;
  v8 = sub_232546458();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23251A4CC, 0, 0);
}

uint64_t sub_23251A4CC(uint64_t a1)
{
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = -v4;
    _os_log_impl(&dword_2324C0000, v2, v3, "Waiting for %f sec before triggering misconfig detection, elapsedSincePrimaryChanged: %f sec", v6, 0x16u);
    MEMORY[0x238386450](v6, -1, -1);
  }

  v7 = sub_232546768();
  v9 = v8;
  sub_232546698();
  v10 = swift_task_alloc();
  *(v1 + 72) = v10;
  *v10 = v1;
  v10[1] = sub_23251A658;

  return sub_23251CB30(v7, v9, 0, 0, 1);
}

uint64_t sub_23251A658()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    return MEMORY[0x2822009F8](sub_23251A9B8, 0, 0);
  }

  else
  {
    v3 = v2[2];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v7 = (*(*v3 + 520) + **(*v3 + 520));
    v4 = swift_task_alloc();
    v2[11] = v4;
    *v4 = v2;
    v4[1] = sub_23251A8A4;
    v5 = v2[5];

    return v7(v5);
  }
}

uint64_t sub_23251A8A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23251A9B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23251AA1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for NDFDevice(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_2325456F8();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23251ABF0, v1, 0);
}

uint64_t sub_23251ABF0()
{
  v132 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_2324CF3C4(v0[2] + *(v0[5] + 28), v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];
    v5 = v0[2];
    sub_2324C28AC(v0[14], &unk_27DD932E0, qword_2325472E0);
    sub_2324CE250(v5, v4);
    v6 = sub_232545888();
    v7 = sub_2325461F8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[7];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v131 = v11;
      *v10 = 136315138;
      v12 = sub_2324F6270();
      v14 = v13;
      sub_23251FC44(v9, type metadata accessor for NDFDevice);
      v15 = sub_2324C2220(v12, v14, &v131);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2324C0000, v6, v7, "Skip misconfig detect: Cannot get groupUUID for target %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x238386450](v11, -1, -1);
      MEMORY[0x238386450](v10, -1, -1);

      goto LABEL_41;
    }

    v40 = v9;
LABEL_40:
    sub_23251FC44(v40, type metadata accessor for NDFDevice);
    goto LABEL_41;
  }

  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[15];
  v19 = v0[13];
  v20 = v0[5];
  v21 = v0[6];
  v23 = v0[3];
  v22 = v0[4];
  (*(v17 + 32))(v16, v0[14], v18);
  (*(v17 + 16))(v19, v16, v18);
  (*(v17 + 56))(v19, 0, 1, v18);
  (*(*v23 + 344))(v19);
  sub_2324C28AC(v19, &unk_27DD932E0, qword_2325472E0);
  v24 = (*(v21 + 48))(v22, 1, v20);
  v25 = v0[2];
  if (v24 == 1)
  {
    v26 = v0[8];
    sub_2324C28AC(v0[4], &qword_27DD93578, &unk_2325480F0);
    sub_2324CE250(v25, v26);
    v27 = sub_232545888();
    v28 = sub_2325461F8();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[16];
    v31 = v0[17];
    v32 = v0[15];
    v33 = v0[8];
    if (v29)
    {
      v127 = v0[17];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v131 = v35;
      *v34 = 136315138;
      v36 = sub_2324F6270();
      v38 = v37;
      sub_23251FC44(v33, type metadata accessor for NDFDevice);
      v39 = sub_2324C2220(v36, v38, &v131);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2324C0000, v27, v28, "Skip misconfig detect: Cannot get primary for target %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x238386450](v35, -1, -1);
      MEMORY[0x238386450](v34, -1, -1);

      (*(v30 + 8))(v127, v32);
    }

    else
    {

      sub_23251FC44(v33, type metadata accessor for NDFDevice);
      (*(v30 + 8))(v31, v32);
    }

LABEL_41:

    v121 = v0[1];

    return v121();
  }

  v41 = v0[5];
  sub_23251FBDC(v0[4], v0[12], type metadata accessor for NDFDevice);
  v42 = *(v25 + *(v41 + 48));
  if (v42 == 2)
  {
    v43 = v0[12];
    v44 = v0[9];
    sub_2324CE250(v0[2], v0[10]);
    sub_2324CE250(v43, v44);
    v45 = sub_232545888();
    v46 = sub_2325461D8();
    v47 = os_log_type_enabled(v45, v46);
    v49 = v0[16];
    v48 = v0[17];
    v50 = v0[15];
    v52 = v0[9];
    v51 = v0[10];
    if (v47)
    {
      v128 = v0[15];
      v53 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v131 = v124;
      *v53 = 136315394;
      v54 = sub_2324F6270();
      v56 = v55;
      sub_23251FC44(v51, type metadata accessor for NDFDevice);
      v57 = sub_2324C2220(v54, v56, &v131);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = sub_2324F6270();
      v60 = v59;
      sub_23251FC44(v52, type metadata accessor for NDFDevice);
      v61 = sub_2324C2220(v58, v60, &v131);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_2324C0000, v45, v46, "Skip misconfig detect: No valid reachability state for target %s to primary %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v124, -1, -1);
      MEMORY[0x238386450](v53, -1, -1);

      (*(v49 + 8))(v48, v128);
    }

    else
    {

      sub_23251FC44(v52, type metadata accessor for NDFDevice);
      sub_23251FC44(v51, type metadata accessor for NDFDevice);
      (*(v49 + 8))(v48, v50);
    }

LABEL_39:
    v40 = v0[12];
    goto LABEL_40;
  }

  v62 = sub_2324C8418();
  if (!*v62)
  {
    sub_2324CE250(v0[2], v0[11]);
    v83 = sub_232545888();
    v84 = sub_2325461F8();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v0[16];
    v87 = v0[17];
    v88 = v0[15];
    v89 = v0[11];
    if (v85)
    {
      v130 = v0[17];
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v131 = v91;
      *v90 = 136315138;
      v92 = sub_2324F6270();
      v94 = v93;
      sub_23251FC44(v89, type metadata accessor for NDFDevice);
      v95 = sub_2324C2220(v92, v94, &v131);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_2324C0000, v83, v84, "Skip misconfig detect: Cannot get detection manager, target %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x238386450](v91, -1, -1);
      MEMORY[0x238386450](v90, -1, -1);

      (*(v86 + 8))(v130, v88);
    }

    else
    {

      sub_23251FC44(v89, type metadata accessor for NDFDevice);
      (*(v86 + 8))(v87, v88);
    }

    goto LABEL_39;
  }

  v63 = v0[12];
  v64 = v0[5];
  v65 = v0[2];
  v66 = *(*v62 + 136);
  v0[18] = v66;
  v67 = *(v64 + 32);
  v68 = *(v64 + 36);
  v70 = *(v65 + v67);
  v69 = *(v65 + v67 + 8);
  v71 = (v65 + v68);
  v72 = *v71;
  v73 = v71[1];
  v74 = (v63 + v67);
  v75 = *v74;
  v76 = v74[1];
  v77 = *(v63 + v68 + 8);
  v125 = v69;
  v129 = *(v63 + v68);
  if (v69 >> 60 == 15 && v73 >> 60 == 15 || v76 >> 60 == 15 && v77 >> 60 == 15)
  {
    v122 = v69 >> 60;

    sub_2324DB3D0(v70, v125);
    sub_2324DB3D0(v72, v73);
    sub_2324DB3D0(v75, v76);
    sub_2324DB3D0(v129, v77);
    v123 = sub_232545888();
    v78 = sub_232546208();
    sub_2324DB438(v70, v125);
    sub_2324DB438(v72, v73);
    sub_2324DB438(v75, v76);
    sub_2324DB438(v129, v77);
    if (os_log_type_enabled(v123, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v131 = v80;
      *v79 = 136315906;
      if (v122 <= 0xE)
      {
        v82 = sub_2325455B8();
        v81 = v104;
      }

      else
      {
        v81 = 0xE300000000000000;
        v82 = 7104878;
      }

      v105 = sub_2324C2220(v82, v81, &v131);

      *(v79 + 4) = v105;
      *(v79 + 12) = 2080;
      if (v73 >> 60 == 15)
      {
        v106 = 0xE300000000000000;
        v107 = 7104878;
      }

      else
      {
        v107 = sub_2325455B8();
        v106 = v108;
      }

      v109 = sub_2324C2220(v107, v106, &v131);

      *(v79 + 14) = v109;
      *(v79 + 22) = 2080;
      if (v76 >> 60 == 15)
      {
        v110 = 0xE300000000000000;
        v111 = 7104878;
      }

      else
      {
        v111 = sub_2325455B8();
        v110 = v112;
      }

      v113 = sub_2324C2220(v111, v110, &v131);

      *(v79 + 24) = v113;
      *(v79 + 32) = 2080;
      if (v77 >> 60 == 15)
      {
        v114 = 0xE300000000000000;
        v115 = 7104878;
      }

      else
      {
        v115 = sub_2325455B8();
        v114 = v116;
      }

      v118 = v0[16];
      v117 = v0[17];
      v119 = v0[15];
      v120 = sub_2324C2220(v115, v114, &v131);

      *(v79 + 34) = v120;
      _os_log_impl(&dword_2324C0000, v123, v78, "Skip misconfig detect: Target (v4: %s, v6: %s) and Primary (v4: %s, v6: %s) have no comparable network signatures", v79, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x238386450](v80, -1, -1);
      MEMORY[0x238386450](v79, -1, -1);

      (*(v118 + 8))(v117, v119);
    }

    else
    {
      v97 = v0[16];
      v96 = v0[17];
      v98 = v0[15];

      (*(v97 + 8))(v96, v98);
    }

    goto LABEL_39;
  }

  v99 = *(*v66 + 120);

  v126 = (v99 + *v99);
  v100 = swift_task_alloc();
  v0[19] = v100;
  *v100 = v0;
  v100[1] = sub_23251B8D0;
  v101 = v0[12];
  v102 = v0[2];

  return (v126)(v102, v101, v42 & 1);
}

uint64_t sub_23251B8D0()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_23251B9E0, v1, 0);
}

uint64_t sub_23251B9E0()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];

  (*(v3 + 8))(v1, v2);
  sub_23251FC44(v4, type metadata accessor for NDFDevice);

  v5 = v0[1];

  return v5();
}

void sub_23251BB00()
{
  v1 = v0;
  v2 = type metadata accessor for NDFDevice(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v33 - v7;
  v36 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v8 = sub_232545888();
  v9 = sub_2325461E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2324C0000, v8, v9, "All devices >", v10, 2u);
    MEMORY[0x238386450](v10, -1, -1);
  }

  v11 = (*(*v1 + 168))();
  v13 = 0;
  v15 = v11 + 64;
  v14 = *(v11 + 64);
  v38 = v11;
  v16 = 1 << *(v11 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  *&v12 = 136315138;
  v33 = v12;
  v34 = v3;
  v35 = v1;
  v39 = v6;
  if ((v17 & v14) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (1)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v20);
    ++v13;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v22 = v37;
        sub_2324CE250(*(v38 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v37);
        sub_23251FBDC(v22, v6, type metadata accessor for NDFDevice);
        v23 = sub_232545888();
        v24 = sub_2325461E8();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v40 = v26;
          *v25 = v33;
          v27 = sub_2324F6270();
          v29 = v28;
          sub_23251FC44(v39, type metadata accessor for NDFDevice);
          v30 = sub_2324C2220(v27, v29, &v40);

          *(v25 + 4) = v30;
          _os_log_impl(&dword_2324C0000, v23, v24, "   Known device : %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          v31 = v26;
          v3 = v34;
          MEMORY[0x238386450](v31, -1, -1);
          v32 = v25;
          v6 = v39;
          MEMORY[0x238386450](v32, -1, -1);

          v13 = v20;
          if (!v18)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_23251FC44(v6, type metadata accessor for NDFDevice);
          v13 = v20;
          if (!v18)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v20 = v13;
      }
    }
  }

  __break(1u);
}

void sub_23251BE80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93580, qword_232548148);
  v2 = MEMORY[0x28223BE20](v1);
  v75 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v78 = (v72 - v5);
  MEMORY[0x28223BE20](v4);
  v86 = v72 - v6;
  v7 = sub_2325456F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  swift_retain_n();
  v83 = v11;
  v85 = v0;
  v12 = sub_232545888();
  v13 = sub_232546208();
  v14 = os_log_type_enabled(v12, v13);
  v84 = v7;
  v81 = v8;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v87[0] = v16;
    *v15 = 136315394;
    v17 = sub_2324C1C94();
    swift_beginAccess();
    if ((*(v8 + 48))(v17, 1, v7))
    {
      v18 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E75;
    }

    else
    {
      (*(v8 + 16))(v10, v17, v7);
      v23 = sub_2325456A8();
      v18 = v24;
      (*(v81 + 8))(v10, v84);
      v19 = v23;
      v8 = v81;
    }

    v25 = sub_2324C2220(v19, v18, v87);

    *(v15 + 4) = v25;
    *(v15 + 12) = 2048;
    v22 = v85 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v27 = *((*(*v85 + 168))(v26) + 16);

    *(v15 + 14) = v27;

    _os_log_impl(&dword_2324C0000, v12, v13, "\tThis Device IDS ID: %s, %ld known devices", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x238386450](v16, -1, -1);
    MEMORY[0x238386450](v15, -1, -1);
  }

  else
  {

    v20 = v85;

    v22 = v20 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  }

  v28 = *v85;
  v72[1] = v22;
  v29 = (*(v28 + 168))(v21);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v79 = v8 + 16;
  v74 = (v8 + 8);
  v82 = v29;

  v35 = 0;
  *&v36 = 136315138;
  v73 = v36;
  v80 = v1;
  v37 = v78;
  v38 = v84;
  while (v33)
  {
    v39 = v1;
LABEL_18:
    v41 = __clz(__rbit64(v33)) | (v35 << 6);
    v42 = v82;
    v43 = *(v82 + 48) + *(v8 + 72) * v41;
    v44 = *(v8 + 16);
    v45 = v86;
    v44(v86, v43, v38);
    v46 = *(v42 + 56);
    v47 = v46 + *(*(type metadata accessor for NDFDevice(0) - 8) + 72) * v41;
    sub_2324CE250(v47, v45 + *(v39 + 48));
    sub_2324CF3C4(v45, v37, &qword_27DD93580, qword_232548148);
    v48 = v37;
    v49 = sub_232545888();
    v50 = sub_232546208();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v77 = v51;
      v78 = swift_slowAlloc();
      v87[0] = v78;
      *v51 = v73;
      v52 = v75;
      sub_2324CF3C4(v48, v75, &qword_27DD93580, qword_232548148);
      v53 = *(v39 + 48);
      v76 = v50;
      v54 = v48;
      v55 = sub_2324F6270();
      v57 = v56;
      sub_2324C28AC(v54, &qword_27DD93580, qword_232548148);
      sub_23251FC44(v52 + v53, type metadata accessor for NDFDevice);
      (*v74)(v52, v84);
      v58 = sub_2324C2220(v55, v57, v87);

      v59 = v77;
      *(v77 + 1) = v58;
      _os_log_impl(&dword_2324C0000, v49, v76, "\t\t%s", v59, 0xCu);
      v60 = v78;
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x238386450](v60, -1, -1);
      v38 = v84;
      MEMORY[0x238386450](v59, -1, -1);

      v37 = v54;
    }

    else
    {

      sub_2324C28AC(v48, &qword_27DD93580, qword_232548148);
      v37 = v48;
      v38 = v84;
    }

    v33 &= v33 - 1;
    sub_2324C28AC(v86, &qword_27DD93580, qword_232548148);
    v1 = v80;
    v8 = v81;
  }

  while (1)
  {
    v40 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return;
    }

    if (v40 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v40);
    ++v35;
    if (v33)
    {
      v39 = v1;
      v35 = v40;
      goto LABEL_18;
    }
  }

  v61 = sub_232545888();
  v62 = sub_232546208();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v87[0] = v64;
    *v63 = 134218242;
    v65 = *(*v85 + 192);
    v66 = *(v65() + 16);

    *(v63 + 4) = v66;

    *(v63 + 12) = 2080;
    (v65)(v67);
    sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v68 = sub_232545EF8();
    v70 = v69;

    v71 = sub_2324C2220(v68, v70, v87);

    *(v63 + 14) = v71;
    _os_log_impl(&dword_2324C0000, v61, v62, "\t%ld known HomeKit Home(s), [Home ID : Primary Resident ID] => %s", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x238386450](v64, -1, -1);
    MEMORY[0x238386450](v63, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_23251C690(uint64_t a1)
{
  v4 = *(*v1 + 224);

  return v4(v2);
}

void sub_23251C6E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NDFDevice(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = sub_2325456F8();
  MEMORY[0x28223BE20](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1, v11);
  sub_2324CE250(a1, v10);
  (*(v5 + 56))(v10, 0, 1, v4);
  v15 = (*(*v1 + 184))(v31);
  sub_2324FCF78(v10, v13);
  v15(v31, 0);
  sub_2324CE250(a1, v7);

  v16 = sub_232545888();
  v17 = sub_2325461E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315394;
    v30[1] = v4;
    v20 = MEMORY[0x277CC95F0];
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_232546608();
    v23 = v22;
    sub_23251FC44(v7, type metadata accessor for NDFDevice);
    v24 = sub_2324C2220(v21, v23, v31);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    (*(*v2 + 168))(v25);
    sub_23251FF40(&qword_2814D62B0, v20, MEMORY[0x277CC9600]);
    v26 = sub_232545EF8();
    v28 = v27;

    v29 = sub_2324C2220(v26, v28, v31);

    *(v18 + 14) = v29;
    _os_log_impl(&dword_2324C0000, v16, v17, "Remembered device with ID %s, all known devices: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v19, -1, -1);
    MEMORY[0x238386450](v18, -1, -1);
  }

  else
  {

    sub_23251FC44(v7, type metadata accessor for NDFDevice);
  }
}

uint64_t sub_23251CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_232546448();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23251CC30, 0, 0);
}

uint64_t sub_23251CC30()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_232546458();
  v5 = sub_23251FF40(&qword_27DD935A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_232546678();
  sub_23251FF40(&unk_27DD93680, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_232546468();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_23251CDC0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_23251CDC0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23251CF7C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_23251CF7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23251CFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2324E6CD4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23251E7D0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2325456F8();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for NDFDevice(0);
    v20 = *(v13 - 8);
    sub_23251FBDC(v12 + *(v20 + 72) * v7, a2, type metadata accessor for NDFDevice);
    sub_23251DBF4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for NDFDevice(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_23251D184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2324E6CD4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23251EB4C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2325456F8();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_23251DF38(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_2325456F8();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_23251D31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NDFDevice(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2325456F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935D0, &unk_232548320);
  v43 = v4;
  result = sub_2325464A8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_23251FBDC(v27 + v28 * v24, v47, type metadata accessor for NDFDevice);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2324CE250(v29 + v28 * v24, v47);
      }

      sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_232545F08();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_23251FBDC(v47, *(v12 + 56) + v28 * v20, type metadata accessor for NDFDevice);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_23251D7A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2325456F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C0, &qword_232548308);
  v45 = v4;
  result = sub_2325464A8();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_232545F08();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

unint64_t sub_23251DBF4(int64_t a1, uint64_t a2)
{
  v4 = sub_2325456F8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_232546398();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_232545F08();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for NDFDevice(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23251DF38(int64_t a1, uint64_t a2)
{
  v4 = sub_2325456F8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_232546398();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_232545F08();
      result = (*v31)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v33)
      {
        if (v22 >= v33 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          result = v26 + v25;
          if (v25 < v18 || result >= v26 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v33 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23251E238(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2324E6CD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23251E7D0();
      goto LABEL_7;
    }

    sub_23251D31C(v17, a3 & 1);
    v24 = sub_2324E6CD4(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23251E604(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for NDFDevice(0) - 8) + 72) * v14;

  return sub_23251EAE8(a1, v22);
}

uint64_t sub_23251E420(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2325456F8();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2324E6CD4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_23251EB4C();
      goto LABEL_9;
    }

    sub_23251D7A8(v16, a3 & 1);
    v19 = sub_2324E6CD4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_23251E6F4(v13, v10, a1, v21);
  }
}

uint64_t sub_23251E604(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2325456F8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for NDFDevice(0);
  result = sub_23251FBDC(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for NDFDevice);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23251E6F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2325456F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

char *sub_23251E7D0()
{
  v1 = v0;
  v2 = type metadata accessor for NDFDevice(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2325456F8();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935D0, &unk_232548320);
  v5 = *v0;
  v6 = sub_232546498();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_2324CE250(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_23251FBDC(v25, *(v27 + 56) + v26, type metadata accessor for NDFDevice);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_23251EAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFDevice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_23251EB4C()
{
  v1 = v0;
  v34 = sub_2325456F8();
  v38 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C0, &qword_232548308);
  v5 = *v0;
  v6 = sub_232546498();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v38;
        v21 = *(v38 + 72) * (v17 | (v11 << 6));
        v22 = *(v38 + 16);
        v24 = v34;
        v23 = v35;
        v22(v35, *(v5 + 48) + v21, v34);
        v25 = v36;
        v22(v36, *(v5 + 56) + v21, v24);
        v26 = v5;
        v27 = v37;
        v28 = *(v20 + 32);
        v28(*(v37 + 48) + v21, v23, v24);
        v29 = *(v27 + 56);
        v5 = v26;
        result = (v28)(v29 + v21, v25, v24);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v37;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_23251EE14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2325466F8();
  sub_232545FC8();
  v6 = sub_232546738();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_232546628() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23251F480();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_23251F814(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_23251EF50(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2325466F8();
  sub_232545FC8();
  v8 = sub_232546738();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_232546628() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_23251F300(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23251F0A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C8, &unk_232548310);
  result = sub_2325463B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2325466F8();
      sub_232545FC8();
      result = sub_232546738();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_23251F300(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23251F0A0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_23251F480();
      goto LABEL_16;
    }

    sub_23251F5DC(v8 + 1);
  }

  v10 = *v4;
  sub_2325466F8();
  sub_232545FC8();
  v11 = sub_232546738();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_232546628() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_232546658();
  __break(1u);
}

void sub_23251F480()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C8, &unk_232548310);
  v2 = *v0;
  v3 = sub_2325463A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_23251F5DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935C8, &unk_232548310);
  result = sub_2325463B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2325466F8();

      sub_232545FC8();
      result = sub_232546738();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_23251F814(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_232546398();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2325466F8();

        sub_232545FC8();
        v10 = sub_232546738();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_23251F9D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23251F9F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23251F9F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93280, &qword_2325477D0);
  v10 = *(type metadata accessor for NDFDevice(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NDFDevice(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23251FBD0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_23251FBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23251FC44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for NDFDeviceManager(uint64_t a1)
{
  result = qword_2814D6D50;
  if (!qword_2814D6D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23251FD14()
{
  v2 = *(type metadata accessor for NDFDevice(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2324C2910;

  return sub_23251A404(v5, v6, v7, v8, v9, v4, v0 + v3);
}

void sub_23251FE08(uint64_t a1)
{
  sub_2325458A8();
  if (v1 <= 0x3F)
  {
    sub_2324E2460(319);
    if (v2 <= 0x3F)
    {
      sub_232545688();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_23251FF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23251FFE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2324C290C;

  return sub_2325093E4(v2, v3, v4, v5);
}

uint64_t sub_232520094()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2324C2910;

  return sub_2325062A4(v4, v5, v6, v7, v0 + v3);
}

unint64_t sub_2325201A0()
{
  sub_2325463D8();

  v0 = sub_232546608();
  MEMORY[0x2383855C0](v0);

  MEMORY[0x2383855C0](93, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_232520244()
{
  sub_2325466F8();
  MEMORY[0x238385CF0](0);
  return sub_232546738();
}

uint64_t sub_2325202B0(uint64_t a1)
{
  sub_2325466F8();
  MEMORY[0x238385CF0](0);
  return sub_232546738();
}

uint64_t sub_232520310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726556726F746361 && a2 == 0xEC0000006E6F6973)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_232546628();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2325203A8(uint64_t a1)
{
  v2 = sub_232520550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2325203E4(uint64_t a1)
{
  v2 = sub_232520550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232520420(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935D8, &qword_232548360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232520550();
  sub_232546758();
  sub_2325465D8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_232520550()
{
  result = qword_27DD941F8[0];
  if (!qword_27DD941F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD941F8);
  }

  return result;
}

void *sub_2325205A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935E0, &unk_232548368);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232520550();
  sub_232546748();
  if (!v1)
  {
    v7 = sub_232546538();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_2325206F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935E0, &unk_232548368);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232520550();
  sub_232546748();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_232546538();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_232520858(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935D8, &qword_232548360);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_232520550();
  sub_232546758();
  sub_2325465D8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_232520990()
{
  sub_2325463D8();

  v0 = sub_232546608();
  MEMORY[0x2383855C0](v0);

  MEMORY[0x2383855C0](93, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_232520A34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
  v4 = sub_232545DA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_232520ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F44E0();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_232520B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  __swift_allocate_value_buffer(v0, qword_2814D7008);
  v1 = __swift_project_value_buffer(v0, qword_2814D7008);
  v2 = sub_2325456F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_232520BCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = __swift_project_value_buffer(v2, qword_2814D7008);
  swift_beginAccess();
  return sub_2324CF3C4(v3, a1, &unk_27DD932E0, qword_2325472E0);
}

uint64_t sub_232520C7C(uint64_t a1)
{
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = __swift_project_value_buffer(v2, qword_2814D7008);
  swift_beginAccess();
  sub_2324FB16C(a1, v3);
  swift_endAccess();
  return sub_2324C28AC(a1, &unk_27DD932E0, qword_2325472E0);
}

uint64_t (*sub_232520D3C(uint64_t a1))(void)
{
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  __swift_project_value_buffer(v1, qword_2814D7008);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_232520DE8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_232520E28(a1);
  return v2;
}

uint64_t sub_232520E28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2325456F8();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2325458A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v47);
  v48 = &v42 - v9;
  v10 = sub_232545DA8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v14 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_logger;
  v15 = sub_2324F44E0();
  v54 = v7;
  v45 = *(v7 + 16);
  v46 = v14;
  v57 = v6;
  v45(v2 + v14, v15, v6);
  v51 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem;
  *(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem) = a1;
  v16 = type metadata accessor for NDFActor(0);
  v60 = a1;
  v17 = sub_232545CE8();
  v18 = sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58], MEMORY[0x277CD8E38]);
  v19 = sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
  v55 = a1;

  v52 = v17;
  v53 = v16;
  v49 = v19;
  v50 = v18;
  sub_232545738();
  (*(v11 + 32))(v2 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id, v13, v10);
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v47, qword_2814D7008);
  v21 = sub_232545018();
  v22 = v48;
  sub_2324CF3C4(v21, v48, &unk_27DD932E0, qword_2325472E0);
  swift_beginAccess();
  sub_2324F503C(v22, v20);
  swift_endAccess();
  v24 = v56;
  v23 = v57;
  v45(v56, v2 + v46, v57);
  v25 = sub_232545888();
  v26 = sub_232546208();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v59 = v28;
    *v27 = 136315394;
    v29 = v43;
    v30 = v44;
    if ((*(v43 + 48))(v20, 1, v44))
    {
      v31 = 0xE90000000000003ELL;
      v32 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v33 = v42;
      (*(v29 + 16))(v42, v20, v30);
      v34 = v29;
      v35 = sub_2325456A8();
      v31 = v36;
      v37 = v33;
      v24 = v56;
      (*(v34 + 8))(v37, v30);
      v23 = v57;
      v32 = v35;
    }

    v38 = sub_2324C2220(v32, v31, &v59);

    *(v27 + 4) = v38;
    *(v27 + 12) = 2080;
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_2325463D8();

    v60 = 0xD000000000000010;
    v61 = 0x800000023254CDA0;
    v58 = 1;
    v39 = sub_232546608();
    MEMORY[0x2383855C0](v39);

    MEMORY[0x2383855C0](93, 0xE100000000000000);
    v40 = sub_2324C2220(v60, v61, &v59);

    *(v27 + 14) = v40;
    _os_log_impl(&dword_2324C0000, v25, v26, "Initialized NDFActor for device %s with capabilities (%s)", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v28, -1, -1);
    MEMORY[0x238386450](v27, -1, -1);
  }

  (*(v54 + 8))(v24, v23);
  v60 = *(v2 + v51);

  sub_232545718();

  return v2;
}

uint64_t sub_23252147C()
{
  v1[3] = v0;
  v2 = sub_2325457B8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_232545D88();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232521598, 0, 0);
}

uint64_t sub_232521598()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_232545CA8();
    sub_232526900();
    sub_232526954();
    sub_232545D68();
    sub_232545D38();
    sub_2325457C8();
    v3 = swift_task_alloc();
    v0[10] = v3;
    v4 = type metadata accessor for NDFActor(0);
    sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
    *v3 = v0;
    v3[1] = sub_23252181C;
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[3];
    v8 = MEMORY[0x277D84A98];
    v9 = MEMORY[0x277D84A98];

    return MEMORY[0x282125BC0](v0 + 2, v7, v6, v5, v8, &type metadata for NDFActorCapability, v4, v9);
  }

  else
  {

    v1 = v0[1];

    return v1(1);
  }
}

uint64_t sub_23252181C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2325219E4;
  }

  else
  {
    v2 = sub_232521930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232521930()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2325219E4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_232521A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_2325457B8();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for NDFActorRequest(0);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD935F8, &qword_2325483F0);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = sub_232545D88();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232521C4C, 0, 0);
}

uint64_t sub_232521C4C()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_232545CA8();
    sub_232545D78();
    sub_232526DB0(v0[5], v0[13], type metadata accessor for NDFActorRequest);
    sub_2325457D8();
    sub_232527474(&qword_27DD93600, type metadata accessor for NDFActorRequest, &unk_232548BFC);
    sub_232527474(&qword_27DD93608, type metadata accessor for NDFActorRequest, &unk_232548C24);
    sub_232545D48();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
    sub_232545D58();
    v9 = type metadata accessor for NDFActorResponse(0, v0[6], v0[7], v8);
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_232545D68();
    sub_232545D38();
    sub_2325457C8();
    v10 = swift_task_alloc();
    v0[20] = v10;
    v11 = type metadata accessor for NDFActor(0);
    sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
    *v10 = v0;
    v10[1] = sub_2325220A8;
    v12 = v0[19];
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[4];

    return MEMORY[0x282125BC0](v15, v14, v13, v12, v7, v9, v11, v7);
  }

  else
  {
    v1 = swift_task_alloc();
    v0[22] = v1;
    *v1 = v0;
    v1[1] = sub_2325222A8;
    v2 = v0[7];
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[4];

    return sub_2325225CC(v5, v3, v4, v2, (v0 + 2));
  }
}

uint64_t sub_2325220A8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2325224E0;
  }

  else
  {
    v2 = sub_2325221BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2325221BC()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2325222A8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 184) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_232522424, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_232522424()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 184);
  sub_232526CF4();
  swift_allocError();
  *v3 = v2;
  *(v3 + 8) = v1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2325224E0()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2325225CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = v5;
  v6[18] = a5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v6[19] = type metadata accessor for NDFDeviceEventInfo(0);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  type metadata accessor for NDFEvent(0);
  v6[25] = swift_task_alloc();
  sub_232545688();
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for NDFActorGeneralResponse(0);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v7 = type metadata accessor for NDFDevice(0);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_232546318();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = type metadata accessor for NDFActorRequest(0);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = type metadata accessor for NDFActorRequestType(0);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v6[52] = swift_task_alloc();
  v8 = sub_2325456F8();
  v6[53] = v8;
  v6[54] = *(v8 - 8);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325229D0, v5, 0);
}

uint64_t sub_2325229D0()
{
  v123 = v0;
  if (qword_2814D6AE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = __swift_project_value_buffer(*(v0 + 408), qword_2814D7008);
  swift_beginAccess();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2324C28AC(*(v0 + 416), &unk_27DD932E0, qword_2325472E0);
    v5 = sub_232545888();
    v6 = sub_2325461F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Failed to perform request as IDS deviceID is nil", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v117 = *(v0 + 144);

    *(v0 + 72) = 1;
    *(v0 + 80) = 1;
    sub_232526CF4();
    swift_willThrowTypedImpl();

    *v117 = 1;
    *(v117 + 8) = 1;
    v8 = *(v0 + 8);
    goto LABEL_49;
  }

  v9 = *(v0 + 392);
  v10 = *(v0 + 400);
  v12 = *(v0 + 352);
  v11 = *(v0 + 360);
  v13 = *(v0 + 344);
  v14 = *(v0 + 112);
  (*(*(v0 + 432) + 32))(*(v0 + 496), *(v0 + 416), *(v0 + 424));
  sub_232526DB0(v14 + *(v13 + 24), v10, type metadata accessor for NDFActorRequestType);
  sub_232526DB0(v10, v9, type metadata accessor for NDFActorRequestType);
  sub_232526DB0(v14, v11, type metadata accessor for NDFActorRequest);
  sub_232526DB0(v14, v12, type metadata accessor for NDFActorRequest);
  v15 = sub_232545888();
  v16 = sub_232546208();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    v19 = *(v0 + 360);
    v110 = *(v0 + 344);
    v112 = *(v0 + 352);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v120 = v21;
    *v20 = 136315650;
    sub_232526DB0(v17, v18, type metadata accessor for NDFActorRequestType);
    v22 = sub_232545F88();
    v24 = v23;
    sub_232526E18(v17, type metadata accessor for NDFActorRequestType);
    v25 = sub_2324C2220(v22, v24, &v120);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    sub_232527474(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_232546608();
    v28 = v27;
    sub_232526E18(v19, type metadata accessor for NDFActorRequest);
    v29 = sub_2324C2220(v26, v28, &v120);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2080;
    v30 = *(v112 + *(v110 + 20));
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_2325463D8();

    v121 = 0xD000000000000010;
    v122 = 0x800000023254CDA0;
    *(v0 + 96) = v30;
    v31 = sub_232546608();
    MEMORY[0x2383855C0](v31);

    MEMORY[0x2383855C0](93, 0xE100000000000000);
    v32 = v121;
    v33 = v122;
    sub_232526E18(v112, type metadata accessor for NDFActorRequest);
    v34 = sub_2324C2220(v32, v33, &v120);

    *(v20 + 24) = v34;
    _os_log_impl(&dword_2324C0000, v15, v16, "Received request %s from device %s with capabilities (%s)", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v21, -1, -1);
    MEMORY[0x238386450](v20, -1, -1);
  }

  else
  {
    v35 = *(v0 + 392);
    v37 = *(v0 + 352);
    v36 = *(v0 + 360);

    sub_232526E18(v37, type metadata accessor for NDFActorRequest);
    sub_232526E18(v36, type metadata accessor for NDFActorRequest);
    sub_232526E18(v35, type metadata accessor for NDFActorRequestType);
  }

  sub_232526DB0(*(v0 + 400), *(v0 + 376), type metadata accessor for NDFActorRequestType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v64 = *(v0 + 376);
      v66 = *v64;
      v65 = v64[1];

      v67 = sub_232545888();
      v68 = sub_232546208();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v121 = v70;
        *v69 = 136315138;
        *(v69 + 4) = sub_2324C2220(v66, v65, &v121);
        _os_log_impl(&dword_2324C0000, v67, v68, "Received message %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x238386450](v70, -1, -1);
        MEMORY[0x238386450](v69, -1, -1);
      }

      v71 = *(v0 + 496);
      v72 = *(v0 + 480);
      v73 = *(v0 + 424);
      v74 = *(v0 + 432);
      v75 = *(v0 + 328);
      v76 = *(v0 + 120);
      v114 = *(v0 + 128);
      v118 = *(v0 + 400);
      v77 = *(v0 + 104);
      (*(v74 + 16))(v72, v71, v73);
      *(v0 + 40) = v66;
      *(v0 + 48) = v65;
      v78 = swift_dynamicCast();
      (*(*(v76 - 8) + 56))(v75, v78 ^ 1u, 1, v76);
      sub_232536358(v72, 1, v75, v76, v114, v77);
      sub_232526E18(v118, type metadata accessor for NDFActorRequestType);
      (*(v74 + 8))(v71, v73);
      goto LABEL_48;
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_232526D48(*(v0 + 376), *(v0 + 200), type metadata accessor for NDFEvent);
      v79 = *sub_2324C8418();
      if (v79)
      {
        v61 = *(v79 + 144);
        *(v0 + 520) = v61;
        v80 = *v61 + 144;
        *(v0 + 528) = *v80;
        *(v0 + 536) = v80 & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
        v63 = sub_2325240A8;
        goto LABEL_28;
      }

      v85 = *(v0 + 136);
      v95 = sub_232524124;
LABEL_42:
      v84 = v95;
      goto LABEL_43;
    }

    v48 = *(v0 + 272);
    v49 = *(v0 + 280);
    sub_232526D48(*(v0 + 376), v49, type metadata accessor for NDFDevice);
    sub_232526DB0(v49, v48, type metadata accessor for NDFDevice);
    v50 = sub_232545888();
    v51 = sub_232546208();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 272);
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v121 = v55;
      *v54 = 136315138;
      v56 = sub_2324F6270();
      v58 = v57;
      sub_232526E18(v53, type metadata accessor for NDFDevice);
      v59 = sub_2324C2220(v56, v58, &v121);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_2324C0000, v50, v51, "Received device update from: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x238386450](v55, -1, -1);
      MEMORY[0x238386450](v54, -1, -1);
    }

    else
    {

      sub_232526E18(v53, type metadata accessor for NDFDevice);
    }

    v90 = *sub_2324C8418();
    if (!v90)
    {
      v96 = sub_232545888();
      v97 = sub_2325461F8();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_2324C0000, v96, v97, "Cannot get deviceManager from NDFAdminController", v98, 2u);
        MEMORY[0x238386450](v98, -1, -1);
      }

      v99 = *(v0 + 496);
      v100 = *(v0 + 472);
      v102 = *(v0 + 424);
      v101 = *(v0 + 432);
      v103 = *(v0 + 320);
      v116 = *(v0 + 280);
      v119 = *(v0 + 400);
      v104 = *(v0 + 240);
      v105 = *(v0 + 248);
      v106 = *(v0 + 208);
      v107 = *(v0 + 120);
      v113 = *(v0 + 128);
      v111 = *(v0 + 104);
      sub_232545668();
      sub_232539988(v106, v105);
      (*(v101 + 16))(v100, v99, v102);
      sub_232526DB0(v105, v104, type metadata accessor for NDFActorGeneralResponse);
      v108 = swift_dynamicCast();
      (*(*(v107 - 8) + 56))(v103, v108 ^ 1u, 1, v107);
      sub_232536358(v100, 1, v103, v107, v113, v111);
      sub_232526E18(v105, type metadata accessor for NDFActorGeneralResponse);
      sub_232526E18(v116, type metadata accessor for NDFDevice);
      sub_232526E18(v119, type metadata accessor for NDFActorRequestType);
      (*(v101 + 8))(v99, v102);
      goto LABEL_48;
    }

    v91 = *(v90 + 128);
    *(v0 + 504) = v91;
    v92 = *(*v91 + 496);

    v115 = (v92 + *v92);
    v93 = swift_task_alloc();
    *(v0 + 512) = v93;
    *v93 = v0;
    v93[1] = sub_232523C30;
    v94 = *(v0 + 280);

    return v115(v94);
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v40 = *(v0 + 488);
        v39 = *(v0 + 496);
        v41 = *(v0 + 424);
        v42 = *(v0 + 432);
        v43 = *(v0 + 400);
        v44 = *(v0 + 336);
        v46 = *(v0 + 120);
        v45 = *(v0 + 128);
        v47 = *(v0 + 104);
        (*(v42 + 16))(v40, v39, v41);
        *(v0 + 56) = 1735290736;
        *(v0 + 64) = 0xE400000000000000;
LABEL_47:
        v109 = swift_dynamicCast();
        (*(*(v46 - 8) + 56))(v44, v109 ^ 1u, 1, v46);
        sub_232536358(v40, 1, v44, v46, v45, v47);
        sub_232526E18(v43, type metadata accessor for NDFActorRequestType);
        (*(v42 + 8))(v39, v41);
LABEL_48:

        v8 = *(v0 + 8);
LABEL_49:

        return v8();
      }

      v81 = *sub_2324C8418();
      if (!v81)
      {

        v39 = *(v0 + 496);
        v40 = *(v0 + 456);
        v41 = *(v0 + 424);
        v42 = *(v0 + 432);
        v43 = *(v0 + 400);
        v44 = *(v0 + 304);
        v46 = *(v0 + 120);
        v45 = *(v0 + 128);
        v47 = *(v0 + 104);
        (*(v42 + 16))(v40, v39, v41);
        *(v0 + 88) = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
        goto LABEL_47;
      }

      v61 = *(v81 + 144);
      *(v0 + 544) = v61;
      v82 = *v61 + 200;
      *(v0 + 552) = *v82;
      *(v0 + 560) = v82 & 0xFFFFFFFFFFFFLL | 0xB281000000000000;
      v63 = sub_232524484;
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v60 = sub_2324C8418();
      if (*v60)
      {
        v61 = *(*v60 + 128);
        *(v0 + 576) = v61;
        v62 = *v61 + 336;
        *(v0 + 584) = *v62;
        *(v0 + 592) = v62 & 0xFFFFFFFFFFFFLL | 0xC3AD000000000000;
        v63 = sub_23252481C;
LABEL_28:
        v83 = v63;

        v84 = v83;
        v85 = v61;
LABEL_43:

        return MEMORY[0x2822009F8](v84, v85, 0);
      }

      (*(*(v0 + 264) + 56))(*(v0 + 192), 1, 1, *(v0 + 256));
      v85 = *(v0 + 136);
      v95 = sub_23252489C;
      goto LABEL_42;
    }

    v86 = swift_task_alloc();
    *(v0 + 600) = v86;
    *v86 = v0;
    v86[1] = sub_232524BBC;
    v87 = *(v0 + 496);
    v88 = *(v0 + 168);

    return sub_2325254D8(v88, v87);
  }
}

uint64_t sub_232523C30()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_232523D40, v1, 0);
}

uint64_t sub_232523D40()
{

  v1 = v0[62];
  v2 = v0[59];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[40];
  v15 = v0[35];
  v16 = v0[50];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[26];
  v9 = v0[15];
  v14 = v0[16];
  v13 = v0[13];
  sub_232545668();
  sub_232539988(v8, v7);
  (*(v3 + 16))(v2, v1, v4);
  sub_232526DB0(v7, v6, type metadata accessor for NDFActorGeneralResponse);
  v10 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v5, v10 ^ 1u, 1, v9);
  sub_232536358(v2, 1, v5, v9, v14, v13);
  sub_232526E18(v7, type metadata accessor for NDFActorGeneralResponse);
  sub_232526E18(v15, type metadata accessor for NDFDevice);
  sub_232526E18(v16, type metadata accessor for NDFActorRequestType);
  (*(v3 + 8))(v1, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2325240A8()
{
  (*(v0 + 528))(*(v0 + 200));

  v1 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_232524124, v1, 0);
}

uint64_t sub_232524124(uint64_t a1)
{
  v2 = v1[62];
  v3 = v1[58];
  v5 = v1[53];
  v4 = v1[54];
  v6 = v1[39];
  v7 = v1[28];
  v8 = v1[29];
  v9 = v1[26];
  v16 = v1[25];
  v17 = v1[50];
  v10 = v1[15];
  v15 = v1[16];
  v14 = v1[13];
  sub_232545668();
  sub_232539988(v9, v8);
  (*(v4 + 16))(v3, v2, v5);
  sub_232526DB0(v8, v7, type metadata accessor for NDFActorGeneralResponse);
  v11 = swift_dynamicCast();
  (*(*(v10 - 8) + 56))(v6, v11 ^ 1u, 1, v10);
  sub_232536358(v3, 1, v6, v10, v15, v14);
  sub_232526E18(v8, type metadata accessor for NDFActorGeneralResponse);
  sub_232526E18(v16, type metadata accessor for NDFEvent);
  sub_232526E18(v17, type metadata accessor for NDFActorRequestType);
  (*(v4 + 8))(v2, v5);

  v12 = v1[1];

  return v12();
}

uint64_t sub_232524484()
{
  v1 = *(v0 + 136);
  *(v0 + 568) = (*(v0 + 552))(*(v0 + 496));

  return MEMORY[0x2822009F8](sub_232524508, v1, 0);
}

uint64_t sub_232524508()
{
  v1 = v0[71];
  if (!v1)
  {

    v1 = MEMORY[0x277D84F90];
  }

  v2 = v0[62];
  v3 = v0[57];
  v4 = v0[53];
  v5 = v0[54];
  v6 = v0[38];
  v7 = v0[15];
  v12 = v0[16];
  v13 = v0[50];
  v8 = v0[13];
  (*(v5 + 16))(v3, v2, v4);
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
  v9 = swift_dynamicCast();
  (*(*(v7 - 8) + 56))(v6, v9 ^ 1u, 1, v7);
  sub_232536358(v3, 1, v6, v7, v12, v8);
  sub_232526E18(v13, type metadata accessor for NDFActorRequestType);
  (*(v5 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23252481C()
{
  (*(v0 + 584))(*(v0 + 496));

  v1 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23252489C, v1, 0);
}

uint64_t sub_23252489C()
{
  v1 = v0[56];
  v2 = v0[53];
  v3 = v0[54];
  v13 = v0[62];
  v14 = v0[50];
  v4 = v0[37];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[15];
  v12 = v0[16];
  v8 = v0[13];
  (*(v3 + 16))(v1);
  sub_2324CF3C4(v5, v6, &qword_27DD93578, &unk_2325480F0);
  v9 = swift_dynamicCast();
  (*(*(v7 - 8) + 56))(v4, v9 ^ 1u, 1, v7);
  sub_232536358(v1, 1, v4, v7, v12, v8);
  sub_2324C28AC(v5, &qword_27DD93578, &unk_2325480F0);
  sub_232526E18(v14, type metadata accessor for NDFActorRequestType);
  (*(v3 + 8))(v13, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_232524BBC()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_232524CCC, v1, 0);
}

uint64_t sub_232524CCC()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[53];
  v13 = v0[62];
  v14 = v0[50];
  v4 = v0[36];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[15];
  v12 = v0[16];
  v8 = v0[13];
  (*(v1 + 16))(v2);
  sub_232526DB0(v5, v6, type metadata accessor for NDFDeviceEventInfo);
  v9 = swift_dynamicCast();
  (*(*(v7 - 8) + 56))(v4, v9 ^ 1u, 1, v7);
  sub_232536358(v2, 1, v4, v7, v12, v8);
  sub_232526E18(v5, type metadata accessor for NDFDeviceEventInfo);
  sub_232526E18(v14, type metadata accessor for NDFActorRequestType);
  (*(v1 + 8))(v13, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_232525014()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 144);
    v0[3] = v2;
    v3 = (*v2 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
    v0[4] = *(*v2 + 144);
    v0[5] = v3;

    return MEMORY[0x2822009F8](sub_2325250E0, v2, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2325250E0()
{
  (*(v0 + 32))(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23252514C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23252516C, v1, 0);
}

uint64_t sub_23252516C()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 144);
    v0[4] = v2;
    v3 = (*v2 + 200) & 0xFFFFFFFFFFFFLL | 0xB281000000000000;
    v0[5] = *(*v2 + 200);
    v0[6] = v3;

    return MEMORY[0x2822009F8](sub_232525248, v2, 0);
  }

  else
  {

    v4 = v0[1];
    v5 = MEMORY[0x277D84F90];

    return v4(v5);
  }
}

uint64_t sub_232525248()
{
  v1 = *(v0 + 24);
  *(v0 + 56) = (*(v0 + 40))(*(v0 + 16));

  return MEMORY[0x2822009F8](sub_2325252C4, v1, 0);
}

uint64_t sub_2325252C4()
{
  v1 = *(v0 + 56);
  if (!v1)
  {

    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_232525330(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_232525350, v2, 0);
}

uint64_t sub_232525350()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 128);
    v0[4] = v2;
    v3 = *v2 + 336;
    v0[5] = *v3;
    v0[6] = v3 & 0xFFFFFFFFFFFFLL | 0xC3AD000000000000;

    return MEMORY[0x2822009F8](sub_232525468, v2, 0);
  }

  else
  {
    v4 = v0[2];
    v5 = type metadata accessor for NDFDevice(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_232525468()
{
  (*(v0 + 40))(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2325254D8(uint64_t a1, uint64_t a2)
{
  v3[185] = v2;
  v3[179] = a2;
  v3[173] = a1;
  v3[186] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v3[187] = swift_task_alloc();
  v3[188] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252558C, v2, 0);
}

uint64_t sub_23252558C()
{
  v1 = v0[185];
  v2 = v0[179];
  v3 = swift_task_alloc();
  v0[189] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93408, qword_232548490);
  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  v0[190] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  swift_asyncLet_begin();
  v5 = v0[188];

  return MEMORY[0x282200928](v0 + 82, v5, sub_2325256A0, v0 + 162);
}

uint64_t sub_2325256A0()
{
  sub_2324CF3C4(*(v0 + 1504), *(v0 + 1496), &qword_27DD93578, &unk_2325480F0);

  return MEMORY[0x282200928](v0 + 16, v0 + 1336, sub_232525720, v0 + 1344);
}

uint64_t sub_23252573C()
{
  v1 = v0[187];
  v2 = v0[173];
  v3 = v0[167];

  sub_232539E44(v1, v3, v2);
  v4 = v0[188];

  return MEMORY[0x282200920](v0 + 82, v4, sub_2325257CC, v0 + 174);
}

uint64_t sub_2325257E8()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 1336, sub_232525854, v0 + 1440);
}

uint64_t sub_232525870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2325258E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NDFActor(0);
  sub_232545CE8();
  sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58], MEMORY[0x277CD8E38]);
  sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
  result = sub_232545728();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
    v8 = sub_232545DA8();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t sub_232525A4C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
  sub_232545CE8();
  sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58], MEMORY[0x277CD8E38]);
  sub_232545748();
  v3 = sub_232545DA8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_logger;
  v5 = sub_2325458A8();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_232525B6C()
{
  v1 = v0;
  is_remote = swift_distributed_actor_is_remote();
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
  if (is_remote)
  {
    v4 = sub_232545DA8();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  else
  {
    sub_232545CE8();
    sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58], MEMORY[0x277CD8E38]);
    sub_232545748();
    v5 = sub_232545DA8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);

    v6 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_logger;
    v7 = sub_2325458A8();
    (*(*(v7 - 8) + 8))(v1 + v6, v7);
  }

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v1);
}

uint64_t sub_232525CF4()
{
  sub_2325466F8();
  type metadata accessor for NDFActor(0);
  sub_232527474(&qword_2814D5168, type metadata accessor for NDFActor, &unk_2325485D0);
  sub_232545F18();
  return sub_232546738();
}

uint64_t sub_232525D84()
{
  if ((sub_2325457A8() & 1) == 0)
  {
    type metadata accessor for NDFActor(0);
    sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
    return sub_232545708();
  }

  return v0;
}

uint64_t sub_232525E20(uint64_t a1, uint64_t a2)
{
  if ((sub_2325457A8() & 1) == 0)
  {
    type metadata accessor for NDFActor(0);
    return sub_232545708();
  }

  return v2;
}

uint64_t sub_232525E74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for NDFActor(0);
  sub_232545CE8();
  sub_232527474(qword_2814D4F38, MEMORY[0x277CD8E58], MEMORY[0x277CD8E38]);
  result = sub_232545728();
  if (!v4 && !result)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
    v10 = sub_232545DA8();
    (*(*(v10 - 8) + 16))(v8 + v9, a1, v10);
    *(v8 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_actorSystem) = v6;

    return v8;
  }

  return result;
}

uint64_t sub_232525FE8(uint64_t a1)
{
  type metadata accessor for NDFActor(0);
  sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
  return sub_232545778();
}

uint64_t sub_232526064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2325466F8();
  type metadata accessor for NDFActor(0);
  sub_232545F18();
  return sub_232546738();
}

uint64_t sub_2325260C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore8NDFActor_id;
  v5 = sub_232545DA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23252613C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for NDFActor(0);
  v5 = sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t sub_2325261C8(uint64_t a1)
{
  type metadata accessor for NDFActor(0);
  sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
  sub_232527474(&unk_27DD93620, MEMORY[0x277CD9070], MEMORY[0x277CD9078]);
  return sub_232545788();
}

uint64_t sub_232526290@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NDFActor(0);
  sub_232527474(&unk_2814D5170, type metadata accessor for NDFActor, &unk_232548548);
  sub_232527474(&qword_27DD93618, MEMORY[0x277CD9070], MEMORY[0x277CD9088]);
  result = sub_232545798();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_232526360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_232526380, a2, 0);
}

uint64_t sub_232526380()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 144);
    v0[5] = v2;
    v3 = (*v2 + 200) & 0xFFFFFFFFFFFFLL | 0xB281000000000000;
    v0[6] = *(*v2 + 200);
    v0[7] = v3;

    v4 = sub_232526448;
    v5 = v2;
  }

  else
  {

    v0[9] = MEMORY[0x277D84F90];
    v4 = sub_232526540;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_232526448()
{
  v1 = *(v0 + 24);
  *(v0 + 64) = (*(v0 + 48))(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_2325264C4, v1, 0);
}

uint64_t sub_2325264C4()
{
  v1 = *(v0 + 64);
  if (!v1)
  {

    v1 = MEMORY[0x277D84F90];
  }

  *(v0 + 72) = v1;

  return MEMORY[0x2822009F8](sub_232526540, 0, 0);
}

uint64_t sub_232526564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_232526580, a2, 0);
}

uint64_t sub_232526580()
{
  v1 = *sub_2324C8418();
  if (v1)
  {
    v2 = *(v1 + 128);
    v0[4] = v2;
    v3 = *v2 + 336;
    v0[5] = *v3;
    v0[6] = v3 & 0xFFFFFFFFFFFFLL | 0xC3AD000000000000;

    return MEMORY[0x2822009F8](sub_23252669C, v2, 0);
  }

  else
  {
    v4 = v0[2];
    v5 = type metadata accessor for NDFDevice(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_23252669C()
{
  (*(v0 + 40))(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for NDFActor(uint64_t a1)
{
  result = qword_2814D6AD0;
  if (!qword_2814D6AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23252675C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_2325267F4;

  return sub_23252147C();
}

uint64_t sub_2325267F4(uint64_t a1)
{
  v4 = *v1;
  **(*v1 + 16) = a1;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_232526900()
{
  result = qword_27DD935E8;
  if (!qword_27DD935E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD935E8);
  }

  return result;
}

unint64_t sub_232526954()
{
  result = qword_27DD935F0;
  if (!qword_27DD935F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD935F0);
  }

  return result;
}

uint64_t sub_2325269A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v5[3] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[4] = v10;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_232545D28();
  v12 = *a4;
  v13 = *a5;
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = sub_232526B7C;

  return sub_232521A90(a3, v10, v12, v13);
}

uint64_t sub_232526B7C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_232526CF4()
{
  result = qword_27DD93660;
  if (!qword_27DD93660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93660);
  }

  return result;
}

uint64_t sub_232526D48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_232526DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_232526E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_232526E78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C290C;

  return sub_232526360(a1, v5, v4);
}

uint64_t sub_232526F24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2324C2910;

  return sub_232526564(a1, v5, v4);
}

uint64_t sub_2325271A8(uint64_t a1)
{
  result = sub_232545DA8();
  if (v2 <= 0x3F)
  {
    result = sub_2325458A8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDFActorCapability.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NDFActorCapability.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
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
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_232527370()
{
  result = qword_27DD94580[0];
  if (!qword_27DD94580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD94580);
  }

  return result;
}

unint64_t sub_2325273C8()
{
  result = qword_27DD94690;
  if (!qword_27DD94690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94690);
  }

  return result;
}

unint64_t sub_232527420()
{
  result = qword_27DD94698[0];
  if (!qword_27DD94698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD94698);
  }

  return result;
}

uint64_t sub_232527474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NDFActorError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NDFActorError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_232527530(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23252754C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2325275B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_232527660(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_2325276F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_232527770()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingInProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2325277B4(char a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingInProgress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232527994(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

double sub_232527A50()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_currentDiscoveryInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_232527A94(double a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_currentDiscoveryInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_232527B84(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    oslog = sub_232545888();
    v3 = sub_2325461F8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = a1;
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v7;
      *v5 = v7;
      _os_log_impl(&dword_2324C0000, oslog, v3, "Actor invalidated due to error: %@", v4, 0xCu);
      sub_2324C28AC(v5, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v5, -1, -1);
      MEMORY[0x238386450](v4, -1, -1);

      v8 = oslog;
    }

    else
    {

      v8 = a1;
    }
  }
}

uint64_t sub_232527D10()
{
  v0 = swift_allocObject();
  sub_232527D48();
  return v0;
}

uint64_t sub_232527D48()
{
  v1 = v0;
  v2 = sub_232545BD8();
  MEMORY[0x28223BE20](v2 - 8);
  swift_defaultActor_initialize();
  type metadata accessor for NDFDeviceDiscoveryManager(0);
  *(v0 + 120) = sub_23253F1E8();
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_logger;
  v4 = sub_2324F44E0();
  v5 = sub_2325458A8();
  (*(*(v5 - 8) + 16))(v1 + v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_discoveryTimer) = 0;
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_pollingTask) = 0;
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore15NDFActorManager_currentDiscoveryInterval) = 0;
  sub_232545BC8();
  sub_232545C78();
  sub_2324F51B4();
  sub_232545CE8();
  swift_allocObject();
  *(v1 + 128) = sub_232545CD8();
  type metadata accessor for NDFActor(0);

  *(v1 + 112) = sub_232520DE8(v6);
  return v1;
}

uint64_t sub_232527EF8()
{
  v1 = (*(**(v0 + 16) + 152))();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = type metadata accessor for NDFActor(0);
  v4 = sub_232533128(qword_2814D5180, type metadata accessor for NDFActor, &unk_2325485A8);
  *v2 = v0;
  v2[1] = sub_232528018;

  return MEMORY[0x282125BE8](v1, v3, v4);
}

uint64_t sub_232528018()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_232528218;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_23252813C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23252813C(uint64_t a1)
{
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2324C0000, v2, v3, "Successfully published NDFActor listener", v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_232528218()
{
  v1 = *(v0 + 40);

  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_2325461F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2324C0000, v3, v4, "Failed to publish NDFActor: %@", v7, 0xCu);
    sub_2324C28AC(v8, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v8, -1, -1);
    MEMORY[0x238386450](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_232528388()
{
  v1 = sub_232545E68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232545E58();
  v69 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v67 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_232545EC8();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232546268();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232546238();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232546218();
  MEMORY[0x28223BE20](v13);
  v14 = sub_232545EA8();
  v70 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v76 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(*v0 + 200))(v15))
  {
    v76 = sub_232545888();
    v17 = sub_2325461F8();
    if (os_log_type_enabled(v76, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2324C0000, v76, v17, "Polling already in progress, not starting again", v18, 2u);
      MEMORY[0x238386450](v18, -1, -1);
    }

    v19 = v76;

    return;
  }

  v56 = v5;
  v57 = v14;
  v58 = v4;
  v59 = v2;
  v60 = v1;
  v20 = (*(*v0 + 208))(1);
  v21 = (*v0 + 224);
  v64 = *v21;
  v63 = v21;
  if (v64(v20))
  {
    swift_getObjectType();
    sub_2325462A8();
    swift_unknownObjectRelease();
  }

  v62 = sub_2324DB388(0, &unk_2814D4EA0, 0x277D85CA0);
  v61 = sub_2324DB388(0, &qword_2814D4EC0, 0x277D85C78);
  sub_232545E88();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_232533128(&qword_2814D4ED0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932B0, &unk_232547800);
  sub_2324E2640(&qword_2814D4F00, &unk_27DD932B0, &unk_232547800);
  sub_232546378();
  (*(v71 + 104))(v12, *MEMORY[0x277D85260], v72);
  v22 = sub_232546258();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_232533128(&unk_2814D4EB0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD93430, qword_232547860);
  sub_2324E2640(&unk_2814D4EF0, &unk_27DD93430, qword_232547860);
  v23 = v73;
  v24 = v75;
  sub_232546378();
  v25 = sub_232546278();

  (*(v74 + 8))(v23, v24);
  v26 = (*(*v0 + 232))(v25);
  if (v64(v26))
  {
    v27 = sub_2324C4D38();
    v28 = *(**v27 + 344);

    v30 = v28(v29);

    v31 = *(**v27 + 368);

    v33 = v31(v32);

    if (v30 > v33)
    {
      __break(1u);
    }

    else if (COERCE__INT64(fabs(v33 - v30)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v34 = sub_2324E2058(0x20000000000001uLL);
      v35.n128_f64[0] = v30 + (v33 - v30) * vcvtd_n_f64_u64(v34, 0x35uLL);
      if (v34 == 0x20000000000000)
      {
        v35.n128_f64[0] = v33;
      }

      (*(*v0 + 280))(v35);
      ObjectType = swift_getObjectType();
      v37 = v65;
      v38 = sub_232545EB8();
      v39 = *(*v0 + 272);
      v40 = (v39)(v38);
      v41 = v67;
      *v67 = 0;
      v42 = v69;
      v43 = v56;
      (*(v69 + 104))(v41, *MEMORY[0x277D85168], v56);
      MEMORY[0x2383858F0](v37, v41, ObjectType, v40);
      (*(v42 + 8))(v41, v43);
      (*(v66 + 8))(v37, v68);

      v44 = sub_232545888();
      v45 = sub_232546208();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        *(v46 + 4) = v39();
        _os_log_impl(&dword_2324C0000, v44, v45, "Starting subscription discovery+polling for device state and events with interval of %fs", v46, 0xCu);
        MEMORY[0x238386450](v46, -1, -1);
      }

      v47 = swift_allocObject();
      *(v47 + 16) = 0;
      v48 = swift_allocObject();
      swift_weakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = v47;
      aBlock[4] = sub_232532B88;
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2324D0160;
      aBlock[3] = &block_descriptor_4;
      v50 = _Block_copy(aBlock);

      v51 = v76;
      sub_232545E78();
      v52 = v58;
      sub_2324DDFC0();
      sub_232546298();
      _Block_release(v50);
      (*(v59 + 8))(v52, v60);
      (*(v70 + 8))(v51, v57);

      sub_2325462B8();
      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    return;
  }

  v53 = sub_232545888();
  v54 = sub_2325461F8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_2324C0000, v53, v54, "Failed to create subscription timer for discovery+polling", v55, 2u);
    MEMORY[0x238386450](v55, -1, -1);
  }
}

uint64_t sub_232528F80(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    result = swift_beginAccess();
    v8 = *(a2 + 16);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      *(a2 + 16) = v10;
      v11 = sub_2325460F8();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = a2;

      sub_2324C8F70(0, 0, v5, &unk_232548AA0, v12);
    }
  }

  return result;
}

uint64_t sub_2325290E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_232529100, 0, 0);
}

uint64_t sub_232529100()
{

  v1 = sub_232545888();
  v2 = sub_232546208();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    swift_beginAccess();
    *(v4 + 4) = *(v3 + 16);

    _os_log_impl(&dword_2324C0000, v1, v2, "Starting subscription discovery+polling for device state and events [iteration %ld]", v4, 0xCu);
    MEMORY[0x238386450](v4, -1, -1);
  }

  else
  {
  }

  v5 = v0[5];
  v6 = *v5 + 328;
  v0[7] = *v6;
  v0[8] = v6 & 0xFFFFFFFFFFFFLL | 0x617000000000000;

  return MEMORY[0x2822009F8](sub_232529248, v5, 0);
}

uint64_t sub_232529248()
{
  (*(v0 + 56))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2325292AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  if ((*(*v0 + 248))(v2))
  {
    sub_232546158();
  }

  v5 = sub_2325460F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = sub_2324C8F70(0, 0, v4, &unk_232548900, v7);
  return (*(*v0 + 256))(v8);
}

uint64_t sub_232529454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_2325460C8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232529514, 0, 0);
}

uint64_t sub_232529514()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_232546168();
    v3 = (*v2 + 176) & 0xFFFFFFFFFFFFLL | 0x3A37000000000000;
    v0[11] = *(*v2 + 176);
    v0[12] = v3;

    return MEMORY[0x2822009F8](sub_232529830, v2, 0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_232529830()
{
  *(v0 + 104) = (*(v0 + 88))();

  return MEMORY[0x2822009F8](sub_2325298A0, 0, 0);
}

uint64_t sub_2325298A0()
{
  v1 = sub_23253F318();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_232529940;

  return sub_23253F390(v1);
}

uint64_t sub_232529940(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_23252A014;
  }

  else
  {

    v4 = sub_232529A5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232529A5C()
{
  if (!*(*(v0 + 120) + 16))
  {

    v9 = sub_232545888();
    v10 = sub_2325461F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2324C0000, v9, v10, "No endpoints discovered during subscription discovery", v11, 2u);
      MEMORY[0x238386450](v11, -1, -1);
    }

    goto LABEL_14;
  }

  v1 = *(v0 + 128);
  sub_232546168();
  if (v1)
  {

    *(v0 + 40) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
    if (swift_dynamicCast())
    {

      v3 = sub_232545888();
      v4 = sub_232546208();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2324C0000, v3, v4, "Discovery+polling cancelled", v5, 2u);
        MEMORY[0x238386450](v5, -1, -1);
      }

      v6 = *(v0 + 72);
      v7 = *(v0 + 56);
      v8 = *(v0 + 64);

      (*(v8 + 8))(v6, v7);

      goto LABEL_15;
    }

    v16 = v1;
    v9 = sub_232545888();
    v17 = sub_2325461F8();

    if (!os_log_type_enabled(v9, v17))
    {

      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_2324C0000, v9, v17, "Error during subscription discovery+polling: %@", v18, 0xCu);
    sub_2324C28AC(v19, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v19, -1, -1);
    MEMORY[0x238386450](v18, -1, -1);

LABEL_14:

LABEL_15:

    v22 = *(v0 + 8);

    return v22();
  }

  v12 = *(**(v0 + 80) + 360);
  v23 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_232529E94;
  v14 = *(v0 + 120);

  return v23(v14);
}

uint64_t sub_232529E94()
{

  return MEMORY[0x2822009F8](sub_232529FAC, 0, 0);
}

uint64_t sub_232529FAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23252A014()
{

  v1 = *(v0 + 128);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93690, &unk_232548400);
  if (swift_dynamicCast())
  {

    v3 = sub_232545888();
    v4 = sub_232546208();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2324C0000, v3, v4, "Discovery+polling cancelled", v5, 2u);
      MEMORY[0x238386450](v5, -1, -1);
    }

    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    (*(v8 + 8))(v6, v7);
    v9 = *(v0 + 40);
  }

  else
  {

    v10 = v1;
    v11 = sub_232545888();
    v12 = sub_2325461F8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_2324C0000, v11, v12, "Error during subscription discovery+polling: %@", v13, 0xCu);
      sub_2324C28AC(v14, &qword_27DD93218, &qword_232547360);
      MEMORY[0x238386450](v14, -1, -1);
      MEMORY[0x238386450](v13, -1, -1);

      goto LABEL_9;
    }

    v9 = v1;
  }

LABEL_9:

  v17 = *(v0 + 8);

  return v17();
}

void sub_23252A2A0()
{
  if (((*(*v0 + 200))() & 1) == 0)
  {
    oslog = sub_232545888();
    v3 = sub_2325461F8();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_11;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Discovery+polling not in progress, nothing to stop";
    goto LABEL_10;
  }

  v1 = (*(*v0 + 280))(0.0);
  if ((*(*v0 + 248))(v1))
  {
    sub_232546158();
  }

  v2 = (*(*v0 + 256))(0);
  if ((*(*v0 + 224))(v2))
  {
    swift_getObjectType();
    sub_2325462A8();
    swift_unknownObjectRelease();
  }

  (*(*v0 + 232))(0);
  (*(*v0 + 208))(0);
  oslog = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Stopped subscription discovery+polling";
LABEL_10:
    _os_log_impl(&dword_2324C0000, oslog, v3, v5, v4, 2u);
    MEMORY[0x238386450](v4, -1, -1);
  }

LABEL_11:
}

uint64_t sub_23252A538()
{
  v1 = (*(**(v0 + 16) + 176))();
  *(v0 + 24) = v1;
  v2 = (*v1 + 104) & 0xFFFFFFFFFFFFLL | 0x5D28000000000000;
  *(v0 + 32) = *(*v1 + 104);
  *(v0 + 40) = v2;

  return MEMORY[0x2822009F8](sub_23252A5E0, v1, 0);
}

uint64_t sub_23252A5E0()
{
  v1 = (*(v0 + 32))();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23252A654(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93638, &unk_232548918);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for NDFActorRequestType(0);
  v3[11] = swift_task_alloc();
  type metadata accessor for NDFActorRequest(0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3[13] = swift_task_alloc();
  v4 = sub_2325456F8();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23252A7F4, v2, 0);
}