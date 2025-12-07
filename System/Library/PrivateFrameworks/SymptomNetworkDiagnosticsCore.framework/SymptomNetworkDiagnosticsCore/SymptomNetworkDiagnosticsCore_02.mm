BOOL sub_2324F26AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = sub_2324DA960(a1, a2, a3, a4);
  sub_2324DB3E4(a1, a2);
  sub_2324DB3E4(a3, a4);
  v11 = sub_232545888();
  v12 = sub_2325461D8();
  sub_2324DB44C(a1, a2);
  sub_2324DB44C(a3, a4);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136316162;
    v15 = sub_2325455B8();
    v17 = sub_2324C2220(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_2325455B8();
    v20 = sub_2324C2220(v18, v19, &v22);

    *(v13 + 14) = v20;
    *(v13 + 22) = 1024;
    *(v13 + 24) = a5;
    *(v13 + 28) = 1024;
    *(v13 + 30) = v10;
    *(v13 + 34) = 1024;
    *(v13 + 36) = v10;
    _os_log_impl(&dword_2324C0000, v11, v12, "Compared DOI: %s with Primary: %s for af: %d, match: %{BOOL}d, sigsMatch: %{BOOL}d", v13, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v14, -1, -1);
    MEMORY[0x238386450](v13, -1, -1);
  }

  return v10;
}

uint64_t sub_2324F2874(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 192) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for NDFDevice(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v5 = sub_2325456F8();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324F2A10, v3, 0);
}

uint64_t sub_2324F2A10()
{
  v180 = v0;
  v1 = *(**sub_2324C4D38() + 416);

  v3 = v1(v2);

  if ((v3 & 1) == 0)
  {
    v9 = sub_232545888();
    v10 = sub_2325461F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Skip misconfig detect: Not allowed on this platform";
LABEL_14:
      _os_log_impl(&dword_2324C0000, v9, v10, v12, v11, 2u);
      MEMORY[0x238386450](v11, -1, -1);
    }

LABEL_15:

LABEL_16:

    v37 = *(v0 + 8);

    return v37();
  }

  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 40);
  sub_2324C1D3C(*(v0 + 16) + *(v7 + 28), v6);
  v8 = *(v5 + 48);
  if (v8(v6, 1, v4) == 1)
  {
    sub_2324F41C8(*(v0 + 120));
    goto LABEL_12;
  }

  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 24);
  v16 = *(*(v0 + 136) + 32);
  v16(*(v0 + 152), *(v0 + 120), v13);
  sub_2324C1D3C(v15 + *(v7 + 28), v14);
  if (v8(v14, 1, v13) == 1)
  {
    v17 = *(v0 + 112);
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    sub_2324F41C8(v17);
    goto LABEL_12;
  }

  v16(*(v0 + 144), *(v0 + 112), *(v0 + 128));
  if ((sub_2325456C8() & 1) == 0)
  {
    v34 = *(v0 + 152);
    v35 = *(v0 + 128);
    v36 = *(*(v0 + 136) + 8);
    v36(*(v0 + 144), v35);
    v36(v34, v35);
LABEL_12:
    v9 = sub_232545888();
    v10 = sub_232546208();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Skip misconfig detect: DOI and Primary not in same HomeKit group";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 24);
  sub_2324CE250(*(v0 + 16), *(v0 + 104));
  sub_2324CE250(v19, v18);
  v20 = sub_232545888();
  v21 = sub_232546208();
  v22 = os_log_type_enabled(v20, v21);
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  if (v22)
  {
    v25 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v179 = v176;
    *v25 = 136315394;
    v26 = sub_2324F6270();
    v28 = v27;
    sub_2324CE2B4(v23);
    v29 = sub_2324C2220(v26, v28, &v179);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = sub_2324F6270();
    v32 = v31;
    sub_2324CE2B4(v24);
    v33 = sub_2324C2220(v30, v32, &v179);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_2324C0000, v20, v21, "Detecting misconfig of DOI: %s against Primary: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v176, -1, -1);
    MEMORY[0x238386450](v25, -1, -1);
  }

  else
  {

    sub_2324CE2B4(v24);
    sub_2324CE2B4(v23);
  }

  if (*(v0 + 192) != 1)
  {
    v49 = *(*(v0 + 40) + 32);
    v50 = *(v0 + 16) + v49;
    v51 = *(v50 + 8);
    if (v51 >> 60 == 15 || (v52 = (*(v0 + 24) + v49), v53 = v52[1], v53 >> 60 == 15))
    {
      v54 = sub_232545888();
      v55 = sub_232546208();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_2324C0000, v54, v55, "Cannot compare IPv4 network signatures", v56, 2u);
        MEMORY[0x238386450](v56, -1, -1);
      }

      v57 = 0;
    }

    else
    {
      v58 = *v50;
      v59 = *v52;
      v60 = *(**(v0 + 32) + 112);
      sub_2324DB3D0(*v50, *(v50 + 8));
      sub_2324DB3D0(v59, v53);
      v61 = v60(v58, v51, v59, v53, 2);
      sub_2324DB438(v58, v51);
      v57 = v61;
      sub_2324DB438(v59, v53);
    }

    v62 = *(*(v0 + 40) + 36);
    v63 = (*(v0 + 16) + v62);
    v64 = v63[1];
    v171 = v57;
    if (v64 >> 60 == 15 || (v65 = (*(v0 + 24) + v62), v66 = v65[1], v66 >> 60 == 15))
    {
      v67 = sub_232545888();
      v68 = sub_232546208();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_2324C0000, v67, v68, "Cannot compare IPv6 network signatures", v69, 2u);
        MEMORY[0x238386450](v69, -1, -1);
      }

      v170 = 0;
      v177 = 0;
      LOBYTE(v70) = 0;
      if ((v57 & 1) == 0)
      {
LABEL_69:
        v94 = *(v0 + 40);
        v95 = *(v94 + 40);
        v96 = (*(v0 + 16) + v95);
        v97 = v96[1];
        v175 = v70;
        v173 = v97 && (v98 = (*(v0 + 24) + v95), (v99 = v98[1]) != 0) && (*v96 == *v98 && v97 == v99 || (sub_232546628() & 1) != 0);
        v100 = *(v0 + 80);
        v101 = *(v0 + 24);
        sub_2324CE250(*(v0 + 16), *(v0 + 88));
        sub_2324CE250(v101, v100);
        v102 = sub_232545888();
        v103 = sub_2325461D8();
        v104 = os_log_type_enabled(v102, v103);
        v105 = *(v0 + 88);
        if (v104)
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v179 = v107;
          *v106 = 136315650;
          v108 = (v105 + *(v94 + 40));
          if (v108[1])
          {
            v109 = *v108;
            v110 = v108[1];
          }

          else
          {
            v110 = 0xE300000000000000;
            v109 = 7104878;
          }

          v112 = v0;
          v115 = v0 + 80;
          v113 = *(v0 + 80);
          v114 = *(v115 + 8);

          sub_2324CE2B4(v114);
          v116 = sub_2324C2220(v109, v110, &v179);

          *(v106 + 4) = v116;
          *(v106 + 12) = 2080;
          v117 = (v113 + *(v94 + 40));
          if (v117[1])
          {
            v118 = *v117;
            v119 = v117[1];
          }

          else
          {
            v119 = 0xE300000000000000;
            v118 = 7104878;
          }

          v0 = v112;
          v120 = *(v112 + 80);

          sub_2324CE2B4(v120);
          v121 = sub_2324C2220(v118, v119, &v179);

          *(v106 + 14) = v121;
          *(v106 + 22) = 1024;
          *(v106 + 24) = v173;
          _os_log_impl(&dword_2324C0000, v102, v103, "DOI hashed SSID: %s, Primary hashed SSID: %s, ssidsMatch: %{BOOL}d", v106, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x238386450](v107, -1, -1);
          MEMORY[0x238386450](v106, -1, -1);
        }

        else
        {
          v111 = *(v0 + 80);

          sub_2324CE2B4(v111);
          sub_2324CE2B4(v105);
        }

        if (v177)
        {
          v122 = 0;
        }

        else
        {
          v123 = *(v0 + 40);
          v124 = *(v123 + 56);
          v125 = *(v0 + 16);
          v126 = *(v0 + 24);
          v127 = (v125 + v124);
          v122 = (*(v125 + v124 + 2) & 1) == 0 && (v128 = (v126 + v124), (v128[1] & 1) == 0) && *v127 != *v128;
          v129 = *(v0 + 64);
          sub_2324CE250(v125, *(v0 + 72));
          sub_2324CE250(v126, v129);
          v130 = sub_232545888();
          v131 = sub_2325461D8();
          v132 = os_log_type_enabled(v130, v131);
          v133 = *(v0 + 64);
          v134 = *(v0 + 72);
          if (v132)
          {
            v135 = swift_slowAlloc();
            *v135 = 33555200;
            v136 = v134 + *(v123 + 56);
            v137 = v122;
            if (*(v136 + 2))
            {
              v138 = -1;
            }

            else
            {
              v138 = *v136;
            }

            sub_2324CE2B4(v134);
            *(v135 + 4) = v138;
            v122 = v137;
            *(v135 + 6) = 512;
            v139 = v133 + *(v123 + 56);
            if (*(v139 + 2))
            {
              v140 = -1;
            }

            else
            {
              v140 = *v139;
            }

            sub_2324CE2B4(v133);
            *(v135 + 8) = v140;
            *(v135 + 10) = 1024;
            *(v135 + 12) = v137;
            _os_log_impl(&dword_2324C0000, v130, v131, "DOI natCountV4: %hd, Primary natCountV4: %hd, doubleNAT: %{BOOL}d", v135, 0x10u);
            MEMORY[0x238386450](v135, -1, -1);
          }

          else
          {
            sub_2324CE2B4(*(v0 + 64));
            sub_2324CE2B4(v134);
          }
        }

        v141 = *(v0 + 48);
        v142 = *(v0 + 24);
        sub_2324CE250(*(v0 + 16), *(v0 + 56));
        sub_2324CE250(v142, v141);
        v143 = sub_232545888();
        v144 = sub_232546208();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = *(v0 + 56);
          v169 = v0;
          v146 = *(v0 + 48);
          v147 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v179 = v168;
          *v147 = 136316930;
          sub_2324F4230();
          v148 = v122;
          v149 = sub_232546608();
          v151 = v150;
          sub_2324CE2B4(v145);
          v152 = v149;
          v122 = v148;
          v153 = sub_2324C2220(v152, v151, &v179);

          *(v147 + 4) = v153;
          *(v147 + 12) = 2080;
          v154 = sub_232546608();
          v156 = v155;
          v157 = v146;
          v0 = v169;
          sub_2324CE2B4(v157);
          v158 = sub_2324C2220(v154, v156, &v179);

          *(v147 + 14) = v158;
          *(v147 + 22) = 1024;
          *(v147 + 24) = v171 & 1;
          *(v147 + 28) = 1024;
          *(v147 + 30) = v170 & 1;
          *(v147 + 34) = 1024;
          *(v147 + 36) = v177;
          *(v147 + 40) = 1024;
          *(v147 + 42) = v173;
          *(v147 + 46) = 1024;
          *(v147 + 48) = v148;
          *(v147 + 52) = 1024;
          *(v147 + 54) = v175 & 1;
          _os_log_impl(&dword_2324C0000, v143, v144, "DOI ID: %s, Primary ID: %s, matchSigV4: %{BOOL}d, matchSigV6: %{BOOL}d, sigsMatch: %{BOOL}d, ssidsMatch: %{BOOL}d, doubleNAT: %{BOOL}d, multicastTrafficBlocked: %{BOOL}d", v147, 0x3Au);
          swift_arrayDestroy();
          MEMORY[0x238386450](v168, -1, -1);
          MEMORY[0x238386450](v147, -1, -1);
        }

        else
        {
          v159 = *(v0 + 48);
          v160 = *(v0 + 56);

          sub_2324CE2B4(v159);
          sub_2324CE2B4(v160);
        }

        v161 = *sub_2324C8418();
        if (v161)
        {
          v162 = *(v161 + 128);
          *(v0 + 176) = v162;
          v163 = *(*v162 + 448);

          v172 = (v163 + *v163);
          v164 = swift_task_alloc();
          *(v0 + 184) = v164;
          *v164 = v0;
          v164[1] = sub_2324F3E58;
          v43 = *(v0 + 16);
          v46 = v175 & 1;
          v44 = v177;
          v45 = v122;
          v47 = 1;
          v48 = v172;
          goto LABEL_107;
        }

LABEL_110:
        v165 = *(v0 + 152);
        v166 = *(v0 + 128);
        v167 = *(*(v0 + 136) + 8);
        v167(*(v0 + 144), v166);
        v167(v165, v166);
        goto LABEL_16;
      }
    }

    else
    {
      v71 = *v63;
      v72 = *v65;
      v73 = *(**(v0 + 32) + 112);
      sub_2324DB3D0(*v63, v64);
      sub_2324DB3D0(v72, v66);
      v74 = v73(v71, v64, v72, v66, 30);
      sub_2324DB438(v71, v64);
      sub_2324DB438(v72, v66);
      if (((v171 | v74) & 1) == 0)
      {
        v170 = 0;
        v177 = 0;
        LOBYTE(v70) = 0;
        goto LABEL_69;
      }

      v170 = v171 ^ 1 | v74;
    }

    v75 = *(*(v0 + 40) + 60);
    v76 = *(*(v0 + 24) + v75);
    v70 = *(*(v0 + 16) + v75);
    if (v76 == 2 || v70 == 2)
    {
      v80 = sub_232545888();
      v83 = sub_2325461F8();
      if (os_log_type_enabled(v80, v83))
      {
        v82 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v179 = v178;
        *v82 = 136315394;
        v84 = 1702195828;
        if ((v70 & 1) == 0)
        {
          v84 = 0x65736C6166;
        }

        v85 = 0xE500000000000000;
        if (v70)
        {
          v85 = 0xE400000000000000;
        }

        if (v70 == 2)
        {
          v86 = 7104878;
        }

        else
        {
          v86 = v84;
        }

        if (v70 == 2)
        {
          v87 = 0xE300000000000000;
        }

        else
        {
          v87 = v85;
        }

        v88 = sub_2324C2220(v86, v87, &v179);

        *(v82 + 4) = v88;
        *(v82 + 12) = 2080;
        v89 = 0x65736C6166;
        if (v76)
        {
          v89 = 1702195828;
        }

        v90 = 0xE400000000000000;
        if ((v76 & 1) == 0)
        {
          v90 = 0xE500000000000000;
        }

        if (v76 == 2)
        {
          v91 = 7104878;
        }

        else
        {
          v91 = v89;
        }

        if (v76 == 2)
        {
          v92 = 0xE300000000000000;
        }

        else
        {
          v92 = v90;
        }

        v93 = sub_2324C2220(v91, v92, &v179);

        *(v82 + 14) = v93;
        _os_log_impl(&dword_2324C0000, v80, v83, "Cannot determine multicastTrafficBlocked statuses (DOI:%s, main:%s), assuming false", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v178, -1, -1);
        goto LABEL_66;
      }
    }

    else
    {
      v77 = sub_232545888();
      v78 = sub_232546208();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 67109376;
        *(v79 + 4) = v70 & 1;
        *(v79 + 8) = 1024;
        *(v79 + 10) = v76 & 1;
        _os_log_impl(&dword_2324C0000, v77, v78, "DOI multicastTrafficBlocked: %{BOOL}d, Primary multicastTrafficBlocked: %{BOOL}d", v79, 0xEu);
        MEMORY[0x238386450](v79, -1, -1);
      }

      if (((v70 ^ v76) & 1) == 0)
      {
        goto LABEL_68;
      }

      v80 = sub_232545888();
      v81 = sub_2325461F8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 67109376;
        *(v82 + 4) = v70 & 1;
        *(v82 + 8) = 1024;
        *(v82 + 10) = v76 & 1;
        _os_log_impl(&dword_2324C0000, v80, v81, "multicastTrafficBlocked status mismatch (DOI:%{BOOL}d, main:%{BOOL}d), assuming false", v82, 0xEu);
LABEL_66:
        MEMORY[0x238386450](v82, -1, -1);
      }
    }

    LOBYTE(v70) = 0;
LABEL_68:
    v177 = 1;
    goto LABEL_69;
  }

  v39 = *sub_2324C8418();
  if (!v39)
  {
    goto LABEL_110;
  }

  v40 = *(v39 + 128);
  *(v0 + 160) = v40;
  v41 = *(*v40 + 448);

  v174 = (v41 + *v41);
  v42 = swift_task_alloc();
  *(v0 + 168) = v42;
  *v42 = v0;
  v42[1] = sub_2324F3C0C;
  v43 = *(v0 + 16);
  v44 = 1;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = v174;
LABEL_107:

  return v48(v44, v45, v46, v47, v43);
}

uint64_t sub_2324F3C0C()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_2324F3D38, v1, 0);
}

uint64_t sub_2324F3D38()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v0[17] + 8);
  v3(v0[18], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2324F3E58()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_2324F4384, v1, 0);
}

uint64_t sub_2324F3F84()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324F3FFC()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324F4084()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v2 = sub_2324F4618();
  v3 = sub_2325458A8();
  (*(*(v3 - 8) + 16))(v0 + v1, v2, v3);
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_bonjourProbe;
  type metadata accessor for NDFBonjourProbe();
  *(v0 + v4) = sub_23254318C();
  return v0;
}

uint64_t sub_2324F412C()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v3 = sub_2324F4618();
  v4 = sub_2325458A8();
  (*(*(v4 - 8) + 16))(v1 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_bonjourProbe;
  type metadata accessor for NDFBonjourProbe();
  *(v1 + v5) = sub_23254318C();
  return v1;
}

uint64_t sub_2324F41C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2324F4230()
{
  result = qword_2814D62A0;
  if (!qword_2814D62A0)
  {
    sub_2325456F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D62A0);
  }

  return result;
}

uint64_t type metadata accessor for NDFDetectionManager(uint64_t a1)
{
  result = qword_2814D6C80;
  if (!qword_2814D6C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324F42DC(uint64_t a1)
{
  result = sub_2325458A8();
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

uint64_t sub_2324F4888(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = sub_2325458A8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_2324F5454();

  a3(v6);

  return sub_232545898();
}

uint64_t sub_2324F4940(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_2325458A8();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_2324F49B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2325458A8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2324F4A50@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_232545A88();
  v2 = *(v1 - 8);
  v65 = v1;
  v66 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v63 = &v57 - v5;
  v6 = sub_232545B68();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2325458C8();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - v12;
  v14 = sub_232545688();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2325456F8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NDFDevice(0);
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2325459B8();
  sub_232545A28();
  (*(v18 + 56))(v13, 1, 1, v17);
  sub_2324FA5C0(v20, v16, 0, 0, v13, 0, 0xF000000000000000, 0, v24, 0xF000000000000000, 0, 0, 2, 2, 0, 0, 1, 0, 2);
  v25 = sub_232545908();
  v27 = v26;
  v28 = &v24[v22[8]];

  *v28 = v25;
  v28[1] = v27;
  sub_232545958();
  sub_2324F503C(v13, &v24[v22[9]]);
  v29 = sub_2325459E8();
  v31 = v30;
  v32 = &v24[v22[10]];
  sub_2324DB438(*v32, *(v32 + 1));
  *v32 = v29;
  *(v32 + 1) = v31;
  v33 = sub_232545A08();
  v35 = v34;
  v36 = &v24[v22[11]];
  sub_2324DB438(*v36, *(v36 + 1));
  *v36 = v33;
  *(v36 + 1) = v35;
  v37 = sub_232545928();
  v39 = v38;
  v40 = &v24[v22[12]];

  *v40 = v37;
  v40[1] = v39;
  v41 = sub_2325459C8();
  v42 = &v24[v22[16]];
  *v42 = v41;
  v42[2] = BYTE2(v41) & 1;
  LODWORD(v39) = sub_2325458F8();
  v44 = v58;
  v43 = v59;
  (*(v58 + 104))(v10, *MEMORY[0x277D6B2C8], v59);
  LOWORD(v37) = sub_2325458B8();
  (*(v44 + 8))(v10, v43);
  v24[v22[13]] = v39 == v37;
  v45 = sub_232545998();
  LOWORD(v39) = v45;
  v46 = HIWORD(v45) & 1;
  v48 = v60;
  v47 = v61;
  v49 = v62;
  (*(v61 + 104))(v60, *MEMORY[0x277D6B320], v62);
  LODWORD(v37) = sub_2325458B8();
  (*(v47 + 8))(v48, v49);
  if (v37 == v39)
  {
    v50 = v46;
  }

  else
  {
    v50 = 1;
  }

  v24[v22[14]] = v50;
  sub_232545978();
  v51 = v63;
  sub_232545A68();
  v52 = v64;
  sub_232545A58();
  sub_2324F50AC();
  v53 = v65;
  v54 = sub_232546348();
  v55 = *(v66 + 8);
  v55(v52, v53);
  v55(v51, v53);
  v24[v22[17]] = v54 & 1;
  sub_2324CE250(v24, v67);
  return sub_2324CE2B4(v24);
}

uint64_t sub_2324F503C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324F50AC()
{
  result = qword_27DD93278;
  if (!qword_27DD93278)
  {
    sub_232545A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93278);
  }

  return result;
}

uint64_t sub_2324F5138()
{
  sub_232545C38();
  sub_232545D18();

  sub_232545C28();
  sub_232545C18();
  return v1;
}

uint64_t sub_2324F51B4()
{
  sub_232545C38();
  sub_232545CF8();

  sub_232545D08();

  sub_232545D18();

  return v1;
}

uint64_t sub_2324F526C()
{
  v0 = sub_232545BE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v4 = sub_232545C68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93520, &qword_232547E50);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_232547AC0;
  v8 = v7 + v6;
  v9 = *(v1 + 104);
  v9(v8, *MEMORY[0x277CD8CC0], v0);
  v9(v8 + v5, *MEMORY[0x277CD8CA0], v0);
  v9(v8 + 2 * v5, *MEMORY[0x277CD8CB0], v0);
  v9(v8 + 3 * v5, *MEMORY[0x277CD8CB8], v0);
  sub_232545C58();
  v9(v3, *MEMORY[0x277CD8CA8], v0);
  sub_232545C48();
  return v4;
}

uint64_t sub_2324F56E0()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_2814D6EC8);
  v1 = __swift_project_value_buffer(v0, qword_2814D6EC8);
  v2 = sub_2324F4548();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2324F576C()
{
  if (qword_2814D62F0 != -1)
  {
    swift_once();
  }

  v0 = sub_2325458A8();

  return __swift_project_value_buffer(v0, qword_2814D6EC8);
}

uint64_t sub_2324F57D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814D62F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  v3 = __swift_project_value_buffer(v2, qword_2814D6EC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2324F5878@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2325456F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2324F58E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDFDevice(0) + 20);
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NDFDevice(uint64_t a1)
{
  result = qword_2814D6820;
  if (!qword_2814D6820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324F59AC(uint64_t a1)
{
  v3 = *(type metadata accessor for NDFDevice(0) + 20);
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2324F5A7C()
{
  v1 = *(v0 + *(type metadata accessor for NDFDevice(0) + 24));

  return v1;
}

uint64_t sub_2324F5ABC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NDFDevice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2324F5B4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2325456F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2324F5BB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDFDevice(0) + 28);

  return sub_2324C1D3C(v3, a1);
}

uint64_t sub_2324F5BFC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NDFDevice(0) + 28);

  return sub_2324F503C(a1, v3);
}

uint64_t sub_2324F5C94()
{
  v1 = v0 + *(type metadata accessor for NDFDevice(0) + 32);
  v2 = *v1;
  sub_2324DB3D0(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2324F5CD8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NDFDevice(0) + 32);
  result = sub_2324DB438(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2324F5D68()
{
  v1 = v0 + *(type metadata accessor for NDFDevice(0) + 36);
  v2 = *v1;
  sub_2324DB3D0(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2324F5DAC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NDFDevice(0) + 36);
  result = sub_2324DB438(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2324F5E3C()
{
  v1 = *(v0 + *(type metadata accessor for NDFDevice(0) + 40));

  return v1;
}

uint64_t sub_2324F5E7C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NDFDevice(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2324F5F38(char a1)
{
  result = type metadata accessor for NDFDevice(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_2324F5FD4(char a1)
{
  result = type metadata accessor for NDFDevice(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

double sub_2324F604C()
{
  type metadata accessor for NDFDevice(0);

  return result;
}

uint64_t sub_2324F6080(uint64_t a1)
{
  v3 = *(type metadata accessor for NDFDevice(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2324F6150(int a1)
{
  result = type metadata accessor for NDFDevice(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t sub_2324F61F8(char a1)
{
  result = type metadata accessor for NDFDevice(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_2324F6270()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v48 - v3;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_2325463D8();
  MEMORY[0x2383855C0](3818569, 0xE300000000000000);
  v5 = sub_2325456F8();
  sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v6 = sub_232546608();
  MEMORY[0x2383855C0](v6);

  MEMORY[0x2383855C0](0x3A70756F726720, 0xE700000000000000);
  v7 = type metadata accessor for NDFDevice(0);
  sub_2324C1D3C(v0 + v7[7], v4);
  v8 = *(v5 - 8);
  if ((*(v8 + 48))(v4, 1, v5) == 1)
  {
    sub_2324C28AC(v4, &unk_27DD932E0, qword_2325472E0);
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = sub_2325456A8();
    v9 = v12;
    (*(v8 + 8))(v4, v5);
    v10 = v11;
  }

  MEMORY[0x2383855C0](v10, v9);

  MEMORY[0x2383855C0](0x6465746164707520, 0xE90000000000003ALL);
  sub_232545688();
  sub_2324FB2F4(&qword_2814D62B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v13 = sub_232546608();
  MEMORY[0x2383855C0](v13);

  MEMORY[0x2383855C0](0x3A676953347620, 0xE700000000000000);
  if (*(v1 + v7[8] + 8) >> 60 == 15)
  {
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    v15 = sub_2325455B8();
    v14 = v16;
  }

  MEMORY[0x2383855C0](v15, v14);

  MEMORY[0x2383855C0](0x3A676953367620, 0xE700000000000000);
  v17 = 0xE300000000000000;
  v18 = 7104878;
  v19 = 0xE300000000000000;
  if (*(v1 + v7[9] + 8) >> 60 != 15)
  {
    v18 = sub_2325455B8();
    v19 = v20;
  }

  MEMORY[0x2383855C0](v18, v19);

  MEMORY[0x2383855C0](0x73624F6469737320, 0xEA0000000000223ALL);
  v21 = (v1 + v7[10]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
  }

  else
  {
    v23 = 7104878;
  }

  if (v22)
  {
    v24 = v21[1];
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  MEMORY[0x2383855C0](v23, v24);

  MEMORY[0x2383855C0](0x3A6C65646F6D2022, 0xE800000000000000);
  v25 = (v1 + v7[6]);
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
  }

  else
  {
    v27 = 0x6E776F6E6B6E75;
  }

  if (v26)
  {
    v28 = v25[1];
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  MEMORY[0x2383855C0](v27, v28);

  MEMORY[0x2383855C0](0x3A6E69614D736920, 0xE800000000000000);
  v29 = *(v1 + v7[11]);
  if (v29)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  if (v29 == 2)
  {
    v32 = 7104878;
  }

  else
  {
    v32 = v30;
  }

  if (v29 == 2)
  {
    v33 = 0xE300000000000000;
  }

  else
  {
    v33 = v31;
  }

  MEMORY[0x2383855C0](v32, v33);

  MEMORY[0x2383855C0](0x636165526E616320, 0xEE003A6E69614D68);
  v34 = *(v1 + v7[12]);
  if (v34)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v34)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  if (v34 == 2)
  {
    v37 = 7104878;
  }

  else
  {
    v37 = v35;
  }

  if (v34 == 2)
  {
    v38 = 0xE300000000000000;
  }

  else
  {
    v38 = v36;
  }

  MEMORY[0x2383855C0](v37, v38);

  MEMORY[0x2383855C0](0x6F4354414E347620, 0xEC0000003A746E75);
  v39 = v1 + v7[14];
  v40 = 7104878;
  if ((*(v39 + 2) & 1) == 0)
  {
    v48[7] = *v39;
    sub_2324F67E0();
    v40 = sub_232546328();
    v17 = v41;
  }

  MEMORY[0x2383855C0](v40, v17);

  MEMORY[0x2383855C0](0xD000000000000012, 0x800000023254CB20);
  v42 = *(v1 + v7[15]);
  if (v42)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v42)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  if (v42 == 2)
  {
    v45 = 7104878;
  }

  else
  {
    v45 = v43;
  }

  if (v42 == 2)
  {
    v46 = 0xE300000000000000;
  }

  else
  {
    v46 = v44;
  }

  MEMORY[0x2383855C0](v45, v46);

  return v49;
}

unint64_t sub_2324F67E0()
{
  result = qword_2814D4C48;
  if (!qword_2814D4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C48);
  }

  return result;
}

uint64_t sub_2324F6834(uint64_t a1)
{
  v3 = sub_2325456F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for NDFDevice(0);
  v15 = v14[7];
  v16 = *(v11 + 56);
  sub_2324C1D3C(v1 + v15, v13);
  v29 = a1;
  sub_2324C1D3C(a1 + v15, &v13[v16]);
  v17 = *(v4 + 48);
  if (v17(v13, 1, v3) == 1)
  {
    if (v17(&v13[v16], 1, v3) == 1)
    {
      sub_2324C28AC(v13, &unk_27DD932E0, qword_2325472E0);
      v18 = 0;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_2324C1D3C(v13, v9);
  if (v17(&v13[v16], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_2324C28AC(v13, &qword_27DD93290, &qword_2325477E0);
    v18 = 1;
    goto LABEL_8;
  }

  (*(v4 + 32))(v6, &v13[v16], v3);
  sub_2324FB2F4(&qword_2814D4E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v19 = sub_232545F48();
  v20 = *(v4 + 8);
  v20(v6, v3);
  v20(v9, v3);
  sub_2324C28AC(v13, &unk_27DD932E0, qword_2325472E0);
  v18 = v19 ^ 1;
LABEL_8:
  v21 = v14[11];
  v22 = *(v1 + v21);
  v23 = *(v29 + v21);
  if (v22 == 2)
  {
    if (v23 == 2)
    {
      goto LABEL_14;
    }

LABEL_13:
    v18 = 1;
    goto LABEL_14;
  }

  if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v24 = v14[12];
  v25 = *(v1 + v24);
  v26 = *(v29 + v24);
  if (v25 == 2)
  {
    if (v26 == 2)
    {
      return v18 & 1;
    }

    goto LABEL_19;
  }

  if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
LABEL_19:
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t sub_2324F6BBC(uint64_t a1)
{
  v3 = type metadata accessor for NDFDevice(0);
  v4 = *(v3 + 32);
  v6 = *(v1 + v4);
  v5 = *(v1 + v4 + 8);
  v7 = (a1 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_2324DB3D0(v6, v5);
      sub_2324DB3D0(v9, v8);
      sub_2324DB438(v6, v5);
      v10 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v8 >> 60 == 15)
  {
LABEL_5:
    sub_2324DB3D0(v6, v5);
    sub_2324DB3D0(v9, v8);
    sub_2324DB438(v6, v5);
    sub_2324DB438(v9, v8);
    v10 = 1;
    goto LABEL_7;
  }

  sub_2324DB3D0(v6, v5);
  sub_2324DB3D0(v9, v8);
  v11 = sub_2324DA960(v6, v5, v9, v8);
  sub_2324DB438(v9, v8);
  sub_2324DB438(v6, v5);
  v10 = !v11;
LABEL_7:
  v12 = *(v3 + 36);
  v14 = *(v1 + v12);
  v13 = *(v1 + v12 + 8);
  v15 = (a1 + v12);
  v17 = *v15;
  v16 = v15[1];
  if (v13 >> 60 != 15)
  {
    if (v16 >> 60 != 15)
    {
      sub_2324DB3D0(v14, v13);
      sub_2324DB3D0(v17, v16);
      v19 = sub_2324DA960(v14, v13, v17, v16);
      sub_2324DB438(v17, v16);
      sub_2324DB438(v14, v13);
      v18 = !v19;
      return (v10 | v18) & 1;
    }

    goto LABEL_11;
  }

  if (v16 >> 60 != 15)
  {
LABEL_11:
    sub_2324DB3D0(v14, v13);
    sub_2324DB3D0(v17, v16);
    sub_2324DB438(v14, v13);
    sub_2324DB438(v17, v16);
    v18 = 1;
    return (v10 | v18) & 1;
  }

  sub_2324DB3D0(v14, v13);
  sub_2324DB3D0(v17, v16);
  sub_2324DB438(v14, v13);
  v18 = 0;
  return (v10 | v18) & 1;
}

uint64_t sub_2324F6DD8(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NDFDevice(0);
  v5 = MEMORY[0x28223BE20](v4);
  v420 = &v386[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v419 = &v386[-v7];
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  MEMORY[0x28223BE20](v408);
  v409 = &v386[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v399 = &v386[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v398 = &v386[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v410 = &v386[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v411 = &v386[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v400 = &v386[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v415 = &v386[-v21];
  MEMORY[0x28223BE20](v20);
  v414 = &v386[-v22];
  v23 = sub_232545688();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v407 = &v386[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v404 = &v386[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v402 = &v386[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v403 = &v386[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v401 = &v386[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v412 = &v386[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v413 = &v386[-v38];
  MEMORY[0x28223BE20](v37);
  v40 = &v386[-v39];
  v41 = sub_2325456F8();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v386[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = MEMORY[0x28223BE20](v42);
  v406 = &v386[-v46];
  v47 = MEMORY[0x28223BE20](v45);
  v405 = &v386[-v48];
  v49 = MEMORY[0x28223BE20](v47);
  v397 = &v386[-v50];
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v386[-v52];
  MEMORY[0x28223BE20](v51);
  v55 = &v386[-v54];
  v421 = v57;
  v422 = v56;
  v416 = *(v57 + 16);
  v417 = v57 + 16;
  v416(&v386[-v54], v2);
  v423 = v55;
  v58 = sub_2325456C8();
  v424 = a1;
  if ((v58 & 1) == 0)
  {
    if (qword_2814D62F0 != -1)
    {
      swift_once();
    }

    v80 = sub_2325458A8();
    __swift_project_value_buffer(v80, qword_2814D6EC8);
    v82 = v422;
    v81 = v423;
    (v416)(v44, v423, v422);
    v83 = v420;
    sub_2324CE250(v424, v420);
    v84 = sub_232545888();
    v85 = sub_2325461F8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v424 = swift_slowAlloc();
      v426 = v424;
      *v86 = 136315394;
      sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v419) = v85;
      v87 = sub_232546608();
      v89 = v88;
      v90 = *(v421 + 8);
      v90(v44, v82);
      v91 = sub_2324C2220(v87, v89, &v426);

      *(v86 + 4) = v91;
      *(v86 + 12) = 2080;
      v92 = sub_232546608();
      v94 = v93;
      sub_2324CE2B4(v83);
      v95 = sub_2324C2220(v92, v94, &v426);

      *(v86 + 14) = v95;
      _os_log_impl(&dword_2324C0000, v84, v419, "  [skipping update for differing device IDs: self %s new %s]", v86, 0x16u);
      v96 = v424;
      swift_arrayDestroy();
      MEMORY[0x238386450](v96, -1, -1);
      MEMORY[0x238386450](v86, -1, -1);

      v90(v423, v82);
    }

    else
    {

      sub_2324CE2B4(v83);
      v113 = *(v421 + 8);
      v113(v44, v82);
      v113(v81, v82);
    }

    return 0;
  }

  v59 = v4[5];
  v60 = *(v24 + 16);
  v418 = v2;
  v396 = v24 + 16;
  v395 = v60;
  v60(v40, (v2 + v59), v23);
  v420 = v4;
  v61 = v4[5];
  sub_2324FB2F4(&unk_2814D4E90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_232545F38())
  {
    if (qword_2814D62F0 != -1)
    {
      swift_once();
    }

    v62 = sub_2325458A8();
    __swift_project_value_buffer(v62, qword_2814D6EC8);
    v63 = v407;
    v395(v407, v40, v23);
    v64 = v419;
    sub_2324CE250(v424, v419);
    v65 = sub_232545888();
    v66 = sub_2325461D8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v394 = v40;
      v69 = v24;
      v424 = v68;
      v426 = v68;
      *v67 = 136315394;
      sub_2324FB2F4(&qword_2814D62B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      LODWORD(v418) = v66;
      v70 = sub_232546608();
      v72 = v71;
      v73 = *(v69 + 8);
      v73(v63, v23);
      v74 = sub_2324C2220(v70, v72, &v426);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2080;
      v75 = sub_232546608();
      v77 = v76;
      sub_2324CE2B4(v64);
      v78 = sub_2324C2220(v75, v77, &v426);

      *(v67 + 14) = v78;
      _os_log_impl(&dword_2324C0000, v65, v418, "  [skipping update for stale information: self %s new %s]", v67, 0x16u);
      v79 = v424;
      swift_arrayDestroy();
      MEMORY[0x238386450](v79, -1, -1);
      MEMORY[0x238386450](v67, -1, -1);

      v73(v394, v23);
    }

    else
    {

      sub_2324CE2B4(v64);
      v114 = *(v24 + 8);
      v114(v63, v23);
      v114(v40, v23);
    }

    (*(v421 + 8))(v423, v422);
    return 0;
  }

  v389 = v61;
  v391 = v59;
  v407 = v24;
  v394 = v40;
  v393 = v23;
  v97 = v422;
  if (qword_2814D62F0 != -1)
  {
    swift_once();
  }

  v98 = sub_2325458A8();
  v99 = __swift_project_value_buffer(v98, qword_2814D6EC8);
  (v416)(v53, v423, v97);
  v419 = v99;
  v100 = sub_232545888();
  v101 = sub_2325461D8();
  v102 = os_log_type_enabled(v100, v101);
  v104 = v420;
  v103 = v421;
  v105 = v409;
  if (v102)
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v426 = v107;
    *v106 = 136315138;
    sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v108 = sub_232546608();
    v110 = v109;
    v392 = *(v103 + 8);
    v392(v53, v422);
    v111 = sub_2324C2220(v108, v110, &v426);

    *(v106 + 4) = v111;
    _os_log_impl(&dword_2324C0000, v100, v101, "? [[Updating device with ID: %s]]", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x238386450](v107, -1, -1);
    v112 = v106;
    v97 = v422;
    MEMORY[0x238386450](v112, -1, -1);
  }

  else
  {

    v392 = *(v103 + 8);
    v392(v53, v97);
  }

  v116 = v418;
  v117 = v411;
  v118 = v424;
  v387 = sub_2324F6834(v424);
  v390 = sub_2324F6BBC(v118);
  v388 = v104[7];
  v119 = v116 + v388;
  v120 = v414;
  sub_2324C1D3C(v119, v414);
  v121 = v415;
  sub_2324C1D3C(&v118[v104[7]], v415);
  v122 = *(v408 + 48);
  sub_2324C1D3C(v120, v105);
  sub_2324C1D3C(v121, &v105[v122]);
  v123 = *(v103 + 48);
  if (v123(v105, 1, v97) == 1)
  {
    if (v123(&v105[v122], 1, v97) == 1)
    {
      sub_2324C28AC(v105, &unk_27DD932E0, qword_2325472E0);
LABEL_31:
      v140 = 0;
      v134 = v418;
      v141 = v424;
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v124 = v400;
  sub_2324C1D3C(v105, v400);
  if (v123(&v105[v122], 1, v97) == 1)
  {
    v392(v124, v97);
LABEL_25:
    sub_2324C28AC(v105, &qword_27DD93290, &qword_2325477E0);
    goto LABEL_26;
  }

  v135 = v104;
  v136 = v397;
  (*(v103 + 32))(v397, &v105[v122], v97);
  sub_2324FB2F4(&qword_2814D4E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v137 = sub_232545F48();
  v138 = v136;
  v104 = v135;
  v117 = v411;
  v139 = v392;
  v392(v138, v97);
  v139(v124, v97);
  sub_2324C28AC(v105, &unk_27DD932E0, qword_2325472E0);
  if (v137)
  {
    goto LABEL_31;
  }

LABEL_26:
  sub_2324C1D3C(v414, v117);
  v125 = v410;
  sub_2324C1D3C(v415, v410);
  v126 = sub_232545888();
  v127 = sub_2325461E8();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = v97;
    v130 = swift_slowAlloc();
    v426 = v130;
    *v128 = 136315394;
    v131 = v398;
    sub_2324C1D3C(v117, v398);
    if (v123(v131, 1, v129) == 1)
    {
      sub_2324C28AC(v131, &unk_27DD932E0, qword_2325472E0);
      v132 = 0xE300000000000000;
      v133 = 7104878;
    }

    else
    {
      v409 = v126;
      v142 = v127;
      v143 = v130;
      v144 = v131;
      v133 = sub_2325456A8();
      v132 = v145;
      v146 = v144;
      v130 = v143;
      v127 = v142;
      v126 = v409;
      v392(v146, v129);
    }

    sub_2324C28AC(v411, &unk_27DD932E0, qword_2325472E0);
    v147 = sub_2324C2220(v133, v132, &v426);

    *(v128 + 4) = v147;
    *(v128 + 12) = 2080;
    v148 = v399;
    sub_2324C1D3C(v410, v399);
    if (v123(v148, 1, v129) == 1)
    {
      sub_2324C28AC(v148, &unk_27DD932E0, qword_2325472E0);
      v149 = 0xE300000000000000;
      v150 = 7104878;
    }

    else
    {
      v151 = v148;
      v150 = sub_2325456A8();
      v149 = v152;
      v392(v151, v129);
    }

    v134 = v418;
    sub_2324C28AC(v410, &unk_27DD932E0, qword_2325472E0);
    v153 = sub_2324C2220(v150, v149, &v426);

    *(v128 + 14) = v153;
    _os_log_impl(&dword_2324C0000, v126, v127, "  [> updating groupUUID from %s) -> %s]", v128, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v130, -1, -1);
    MEMORY[0x238386450](v128, -1, -1);
  }

  else
  {

    sub_2324C28AC(v125, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v117, &unk_27DD932E0, qword_2325472E0);
    v134 = v418;
  }

  v141 = v424;
  sub_2324FB16C(v415, v134 + v388);
  v140 = 1;
LABEL_38:
  v154 = v104[12];
  v155 = *(v134 + v154);
  v156 = v141[v154];
  if (v155 == 2)
  {
    if (v156 == 2)
    {
      goto LABEL_66;
    }
  }

  else if (v156 != 2 && ((v155 ^ v156) & 1) == 0)
  {
    goto LABEL_66;
  }

  v157 = sub_232545888();
  v158 = sub_2325461E8();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v426 = v160;
    *v159 = 136315394;
    v161 = 1702195828;
    if ((v155 & 1) == 0)
    {
      v161 = 0x65736C6166;
    }

    v162 = 0xE500000000000000;
    if (v155)
    {
      v162 = 0xE400000000000000;
    }

    if (v155 == 2)
    {
      v163 = 7104878;
    }

    else
    {
      v163 = v161;
    }

    if (v155 == 2)
    {
      v164 = 0xE300000000000000;
    }

    else
    {
      v164 = v162;
    }

    v165 = sub_2324C2220(v163, v164, &v426);

    *(v159 + 4) = v165;
    *(v159 + 12) = 2080;
    v166 = 0x65736C6166;
    if (v156)
    {
      v166 = 1702195828;
    }

    v167 = 0xE500000000000000;
    if (v156)
    {
      v167 = 0xE400000000000000;
    }

    v134 = v418;
    if (v156 == 2)
    {
      v168 = 7104878;
    }

    else
    {
      v168 = v166;
    }

    if (v156 == 2)
    {
      v169 = 0xE300000000000000;
    }

    else
    {
      v169 = v167;
    }

    v104 = v420;
    v170 = sub_2324C2220(v168, v169, &v426);

    *(v159 + 14) = v170;
    _os_log_impl(&dword_2324C0000, v157, v158, "  [> updating canReachPrimaryResident from %s) -> %s]", v159, 0x16u);
    swift_arrayDestroy();
    v171 = v160;
    v141 = v424;
    MEMORY[0x238386450](v171, -1, -1);
    MEMORY[0x238386450](v159, -1, -1);
  }

  *(v134 + v154) = v156;
  v140 = 1;
LABEL_66:
  v172 = v104[11];
  v173 = *(v134 + v172);
  v174 = v141[v172];
  if (v173 == 2)
  {
    if (v174 == 2)
    {
      goto LABEL_94;
    }
  }

  else if (v174 != 2 && ((v173 ^ v174) & 1) == 0)
  {
    goto LABEL_94;
  }

  v175 = sub_232545888();
  v176 = sub_2325461E8();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v426 = v178;
    *v177 = 136315394;
    v179 = 1702195828;
    if ((v173 & 1) == 0)
    {
      v179 = 0x65736C6166;
    }

    v180 = 0xE500000000000000;
    if (v173)
    {
      v180 = 0xE400000000000000;
    }

    if (v173 == 2)
    {
      v181 = 7104878;
    }

    else
    {
      v181 = v179;
    }

    if (v173 == 2)
    {
      v182 = 0xE300000000000000;
    }

    else
    {
      v182 = v180;
    }

    v183 = sub_2324C2220(v181, v182, &v426);

    *(v177 + 4) = v183;
    *(v177 + 12) = 2080;
    v184 = 0x65736C6166;
    if (v174)
    {
      v184 = 1702195828;
    }

    v185 = 0xE500000000000000;
    if (v174)
    {
      v185 = 0xE400000000000000;
    }

    v134 = v418;
    if (v174 == 2)
    {
      v186 = 7104878;
    }

    else
    {
      v186 = v184;
    }

    if (v174 == 2)
    {
      v187 = 0xE300000000000000;
    }

    else
    {
      v187 = v185;
    }

    v104 = v420;
    v188 = sub_2324C2220(v186, v187, &v426);

    *(v177 + 14) = v188;
    _os_log_impl(&dword_2324C0000, v175, v176, "  [> updating isPrimaryResident from %s) -> %s)]", v177, 0x16u);
    swift_arrayDestroy();
    v189 = v178;
    v141 = v424;
    MEMORY[0x238386450](v189, -1, -1);
    MEMORY[0x238386450](v177, -1, -1);
  }

  *(v134 + v172) = v174;
  v140 = 1;
LABEL_94:
  v190 = v104[13];
  v191 = *(v134 + v190);
  v192 = *&v141[v190];
  if (v191)
  {
    if (v192 && (sub_2324FB0DC(*(v134 + v190), *&v141[v190]) & 1) != 0)
    {
      goto LABEL_109;
    }
  }

  else if (!v192)
  {
    goto LABEL_109;
  }

  v193 = sub_232545888();
  v194 = sub_2325461E8();

  if (os_log_type_enabled(v193, v194))
  {
    v195 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    v426 = v196;
    *v195 = 136315394;
    if (v191)
    {
      v197 = MEMORY[0x238385650](v191, MEMORY[0x277D837D0]);
      v199 = v198;
    }

    else
    {
      v199 = 0xE300000000000000;
      v197 = 7104878;
    }

    v200 = sub_2324C2220(v197, v199, &v426);

    *(v195 + 4) = v200;
    *(v195 + 12) = 2080;
    if (v192)
    {
      v201 = MEMORY[0x238385650](v192, MEMORY[0x277D837D0]);
      v203 = v202;
    }

    else
    {
      v203 = 0xE300000000000000;
      v201 = 7104878;
    }

    v204 = sub_2324C2220(v201, v203, &v426);

    *(v195 + 14) = v204;
    _os_log_impl(&dword_2324C0000, v193, v194, "  [> updating dnsServers from %s) -> %s)]", v195, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v196, -1, -1);
    MEMORY[0x238386450](v195, -1, -1);

    v141 = v424;
  }

  else
  {
  }

  *(v134 + v190) = v192;
  v140 = 1;
LABEL_109:
  v205 = v420[8];
  v206 = (v134 + v205);
  v207 = *(v134 + v205);
  v208 = *(v134 + v205 + 8);
  v209 = &v141[v205];
  v211 = *v209;
  v210 = v209[1];
  v408 = v208;
  v410 = v207;
  if (v208 >> 60 == 15)
  {
    if (v210 >> 60 == 15)
    {
      sub_2324DB3D0(v207, v208);
      sub_2324DB3D0(v207, v208);
      sub_2324DB3D0(v211, v210);
      sub_2324DB438(v207, v208);
      goto LABEL_125;
    }
  }

  else if (v210 >> 60 != 15)
  {
    sub_2324DB3D0(v207, v208);
    sub_2324DB3D0(v207, v208);
    sub_2324DB3D0(v211, v210);
    v218 = sub_2324DA960(v207, v208, v211, v210);
    sub_2324DB438(v211, v210);
    sub_2324DB438(v207, v208);
    if (v218)
    {
      goto LABEL_125;
    }

    goto LABEL_114;
  }

  sub_2324DB3D0(v207, v208);
  sub_2324DB3D0(v207, v208);
  sub_2324DB3D0(v211, v210);
  sub_2324DB438(v207, v208);
  sub_2324DB438(v211, v210);
LABEL_114:
  sub_2324DB3D0(v207, v208);
  sub_2324DB3D0(v211, v210);
  v212 = sub_232545888();
  v213 = sub_2325461E8();
  sub_2324DB438(v207, v208);
  sub_2324DB438(v211, v210);
  if (os_log_type_enabled(v212, v213))
  {
    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v426 = v215;
    *v214 = 136315394;
    if (v208 >> 60 == 15)
    {
      v216 = 0xE300000000000000;
      v217 = 7104878;
    }

    else
    {
      v217 = sub_2325455B8();
      v216 = v219;
    }

    v220 = sub_2324C2220(v217, v216, &v426);

    *(v214 + 4) = v220;
    *(v214 + 12) = 2080;
    if (v210 >> 60 == 15)
    {
      v221 = 0xE300000000000000;
      v222 = 7104878;
    }

    else
    {
      v222 = sub_2325455B8();
      v221 = v223;
    }

    v224 = sub_2324C2220(v222, v221, &v426);

    *(v214 + 14) = v224;
    _os_log_impl(&dword_2324C0000, v212, v213, "  [> updating netSignatureV4 from %s) -> %s]", v214, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v215, -1, -1);
    MEMORY[0x238386450](v214, -1, -1);
  }

  v225 = *v206;
  v226 = v206[1];
  sub_2324DB3D0(v211, v210);
  sub_2324DB438(v225, v226);
  *v206 = v211;
  v206[1] = v210;
  v140 = 1;
  v141 = v424;
LABEL_125:
  v227 = v420[9];
  v228 = v418;
  v229 = (v418 + v227);
  v230 = *(v418 + v227 + 8);
  v411 = *(v418 + v227);
  v231 = &v141[v227];
  v233 = *v231;
  v232 = v231[1];
  v234 = v230 >> 60;
  v235 = (v232 >> 60);
  v409 = v230;
  if (v230 >> 60 == 15)
  {
    if (v232 >> 60 == 15)
    {
      v236 = v411;
      sub_2324DB3D0(v411, v230);
      sub_2324DB3D0(v236, v230);
      sub_2324DB3D0(v233, v232);
      sub_2324DB438(v236, v230);
      goto LABEL_142;
    }
  }

  else if (v232 >> 60 != 15)
  {
    v400 = (v232 >> 60);
    v245 = v411;
    sub_2324DB3D0(v411, v230);
    sub_2324DB3D0(v245, v230);
    sub_2324DB3D0(v233, v232);
    v246 = sub_2324DA960(v245, v230, v233, v232);
    sub_2324DB438(v233, v232);
    v247 = v245;
    v235 = v400;
    sub_2324DB438(v247, v230);
    if (v246)
    {
      goto LABEL_142;
    }

    goto LABEL_130;
  }

  v237 = v411;
  sub_2324DB3D0(v411, v230);
  sub_2324DB3D0(v237, v230);
  sub_2324DB3D0(v233, v232);
  sub_2324DB438(v237, v230);
  sub_2324DB438(v233, v232);
LABEL_130:
  v238 = v411;
  sub_2324DB3D0(v411, v230);
  sub_2324DB3D0(v233, v232);
  v239 = sub_232545888();
  v240 = sub_2325461E8();
  sub_2324DB438(v238, v230);
  sub_2324DB438(v233, v232);
  if (os_log_type_enabled(v239, v240))
  {
    v241 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v426 = v242;
    *v241 = 136315394;
    if (v234 <= 0xE)
    {
      v244 = sub_2325455B8();
      v243 = v248;
    }

    else
    {
      v243 = 0xE300000000000000;
      v244 = 7104878;
    }

    v249 = sub_2324C2220(v244, v243, &v426);

    *(v241 + 4) = v249;
    *(v241 + 12) = 2080;
    if (v235 <= 0xE)
    {
      v251 = sub_2325455B8();
      v250 = v252;
    }

    else
    {
      v250 = 0xE300000000000000;
      v251 = 7104878;
    }

    v253 = sub_2324C2220(v251, v250, &v426);

    *(v241 + 14) = v253;
    _os_log_impl(&dword_2324C0000, v239, v240, "  [> updating netSignatureV6 from %s) -> %s)]", v241, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v242, -1, -1);
    MEMORY[0x238386450](v241, -1, -1);

    v228 = v418;
  }

  else
  {
  }

  v254 = *v229;
  v255 = v229[1];
  sub_2324DB3D0(v233, v232);
  sub_2324DB438(v254, v255);
  *v229 = v233;
  v229[1] = v232;
  v140 = 1;
  v141 = v424;
LABEL_142:
  v256 = v420;
  v257 = v420[6];
  v258 = (v228 + v257);
  v260 = *(v228 + v257);
  v259 = *(v228 + v257 + 8);
  v261 = &v141[v257];
  v262 = *v261;
  v263 = v261[1];
  if (v259)
  {
    if (v263 && (v260 == v262 && v259 == v263 || (sub_232546628() & 1) != 0))
    {
      goto LABEL_161;
    }
  }

  else if (!v263)
  {
    goto LABEL_161;
  }

  v264 = sub_232545888();
  v265 = sub_2325461E8();

  if (os_log_type_enabled(v264, v265))
  {
    v266 = swift_slowAlloc();
    v267 = swift_slowAlloc();
    v426 = v267;
    *v266 = 136315394;
    if (v259)
    {
      v268 = v259;
    }

    else
    {
      v260 = 7104878;
      v268 = 0xE300000000000000;
    }

    v269 = sub_2324C2220(v260, v268, &v426);

    *(v266 + 4) = v269;
    *(v266 + 12) = 2080;
    if (v263)
    {
      v270 = v262;
    }

    else
    {
      v270 = 7104878;
    }

    if (v263)
    {
      v271 = v263;
    }

    else
    {
      v271 = 0xE300000000000000;
    }

    v272 = sub_2324C2220(v270, v271, &v426);

    *(v266 + 14) = v272;
    _os_log_impl(&dword_2324C0000, v264, v265, "  [> updating deviceModel from %s) -> %s)]", v266, 0x16u);
    swift_arrayDestroy();
    v273 = v267;
    v228 = v418;
    MEMORY[0x238386450](v273, -1, -1);
    v274 = v266;
    v256 = v420;
    MEMORY[0x238386450](v274, -1, -1);
  }

  *v258 = v262;
  v258[1] = v263;
  v140 = 1;
LABEL_161:
  v275 = v256[10];
  v276 = (v228 + v275);
  v278 = *(v228 + v275);
  v277 = *(v228 + v275 + 8);
  v279 = &v424[v275];
  v280 = *v279;
  v281 = v279[1];
  if (v277)
  {
    if (v281 && (v278 == v280 && v277 == v281 || (sub_232546628() & 1) != 0))
    {
      goto LABEL_180;
    }
  }

  else if (!v281)
  {
    goto LABEL_180;
  }

  v282 = sub_232545888();
  v283 = sub_2325461E8();

  if (os_log_type_enabled(v282, v283))
  {
    v284 = swift_slowAlloc();
    v285 = swift_slowAlloc();
    v426 = v285;
    *v284 = 136315394;
    if (v277)
    {
      v286 = v277;
    }

    else
    {
      v278 = 7104878;
      v286 = 0xE300000000000000;
    }

    v287 = sub_2324C2220(v278, v286, &v426);

    *(v284 + 4) = v287;
    *(v284 + 12) = 2080;
    if (v281)
    {
      v288 = v280;
    }

    else
    {
      v288 = 7104878;
    }

    if (v281)
    {
      v289 = v281;
    }

    else
    {
      v289 = 0xE300000000000000;
    }

    v290 = sub_2324C2220(v288, v289, &v426);

    *(v284 + 14) = v290;
    _os_log_impl(&dword_2324C0000, v282, v283, "  [> updating ssidObscured from %s) -> %s)]", v284, 0x16u);
    swift_arrayDestroy();
    v291 = v285;
    v228 = v418;
    MEMORY[0x238386450](v291, -1, -1);
    v292 = v284;
    v256 = v420;
    MEMORY[0x238386450](v292, -1, -1);
  }

  *v276 = v280;
  v276[1] = v281;
  v140 = 1;
LABEL_180:
  v293 = v256[14];
  v294 = v228 + v293;
  v295 = *(v228 + v293);
  v296 = *(v294 + 2);
  v297 = v424;
  v298 = &v424[v293];
  v299 = *v298;
  v300 = v298[2];
  if (v296)
  {
    if (v298[2])
    {
      goto LABEL_196;
    }
  }

  else
  {
    if (v295 == v299)
    {
      v301 = v298[2];
    }

    else
    {
      v301 = 1;
    }

    if ((v301 & 1) == 0)
    {
      goto LABEL_196;
    }
  }

  v302 = sub_232545888();
  v303 = sub_2325461E8();
  if (os_log_type_enabled(v302, v303))
  {
    v304 = swift_slowAlloc();
    v400 = swift_slowAlloc();
    v426 = v400;
    *v304 = 136315394;
    if (v296)
    {
      v305 = 0xE300000000000000;
      v306 = 7104878;
    }

    else
    {
      v425 = v295;
      sub_2324F67E0();
      v306 = sub_232546328();
      v305 = v307;
    }

    v308 = sub_2324C2220(v306, v305, &v426);

    *(v304 + 4) = v308;
    *(v304 + 12) = 2080;
    if (v300)
    {
      v309 = 0xE300000000000000;
      v310 = 7104878;
    }

    else
    {
      v425 = v299;
      sub_2324F67E0();
      v310 = sub_232546328();
      v309 = v311;
    }

    v312 = sub_2324C2220(v310, v309, &v426);

    *(v304 + 14) = v312;
    _os_log_impl(&dword_2324C0000, v302, v303, "  [> updating natCountV4 from %s) -> %s]", v304, 0x16u);
    v313 = v400;
    swift_arrayDestroy();
    MEMORY[0x238386450](v313, -1, -1);
    MEMORY[0x238386450](v304, -1, -1);
  }

  *v294 = v299;
  *(v294 + 2) = v300;
  v140 = 1;
  v297 = v424;
LABEL_196:
  v314 = v420[15];
  v315 = v418;
  v316 = *(v418 + v314);
  v317 = v297[v314];
  if (v316 == 2)
  {
    if (v317 == 2)
    {
      goto LABEL_224;
    }

LABEL_201:
    v318 = sub_232545888();
    v319 = sub_2325461E8();
    if (os_log_type_enabled(v318, v319))
    {
      v320 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      v426 = v321;
      *v320 = 136315394;
      v322 = 1702195828;
      if ((v316 & 1) == 0)
      {
        v322 = 0x65736C6166;
      }

      v323 = 0xE500000000000000;
      if (v316)
      {
        v323 = 0xE400000000000000;
      }

      if (v316 == 2)
      {
        v324 = 7104878;
      }

      else
      {
        v324 = v322;
      }

      if (v316 == 2)
      {
        v325 = 0xE300000000000000;
      }

      else
      {
        v325 = v323;
      }

      v326 = sub_2324C2220(v324, v325, &v426);

      *(v320 + 4) = v326;
      *(v320 + 12) = 2080;
      v327 = 0x65736C6166;
      if (v317)
      {
        v327 = 1702195828;
      }

      v328 = 0xE500000000000000;
      if (v317)
      {
        v328 = 0xE400000000000000;
      }

      v315 = v418;
      if (v317 == 2)
      {
        v329 = 7104878;
      }

      else
      {
        v329 = v327;
      }

      if (v317 == 2)
      {
        v330 = 0xE300000000000000;
      }

      else
      {
        v330 = v328;
      }

      v331 = sub_2324C2220(v329, v330, &v426);

      *(v320 + 14) = v331;
      _os_log_impl(&dword_2324C0000, v318, v319, "  [> updating multicastTrafficBlocked from %s) -> %s]", v320, 0x16u);
      swift_arrayDestroy();
      v332 = v321;
      v297 = v424;
      MEMORY[0x238386450](v332, -1, -1);
      MEMORY[0x238386450](v320, -1, -1);
    }

    *(v315 + v314) = v317;
    goto LABEL_225;
  }

  if (v317 == 2 || ((v316 ^ v317) & 1) != 0)
  {
    goto LABEL_201;
  }

LABEL_224:
  if (!v140)
  {
    sub_2324DB438(v411, v409);
    sub_2324DB438(v410, v408);
    sub_2324C28AC(v415, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v414, &unk_27DD932E0, qword_2325472E0);
    (*(v407 + 1))(v394, v393);
    v392(v423, v422);
    return 0;
  }

LABEL_225:
  v333 = v413;
  v334 = v393;
  v335 = v395;
  v395(v413, (v315 + v391), v393);
  v336 = v412;
  v335(v412, &v297[v389], v334);
  v337 = v401;
  v335(v401, v333, v334);
  v338 = v403;
  v335(v403, v337, v334);
  v339 = *(v407 + 1);
  (v339)(v337, v334);
  v340 = v402;
  v335(v402, v336, v334);
  v341 = v404;
  v335(v404, v340, v334);
  (v339)(v340, v334);
  v342 = sub_232545888();
  v343 = sub_2325461E8();
  v344 = os_log_type_enabled(v342, v343);
  v345 = v423;
  if (v344)
  {
    v346 = swift_slowAlloc();
    v424 = swift_slowAlloc();
    v426 = v424;
    *v346 = 136315394;
    sub_2324FB2F4(&qword_2814D62B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v347 = sub_232546608();
    v348 = v338;
    v350 = v349;
    (v339)(v348, v334);
    v351 = sub_2324C2220(v347, v350, &v426);

    *(v346 + 4) = v351;
    *(v346 + 12) = 2080;
    v352 = sub_232546608();
    v354 = v353;
    (v339)(v341, v334);
    v355 = sub_2324C2220(v352, v354, &v426);
    v336 = v412;

    *(v346 + 14) = v355;
    v345 = v423;
    _os_log_impl(&dword_2324C0000, v342, v343, "  [> updating lastUpdated from %s) -> %s)]", v346, 0x16u);
    v356 = v424;
    swift_arrayDestroy();
    MEMORY[0x238386450](v356, -1, -1);
    MEMORY[0x238386450](v346, -1, -1);
  }

  else
  {

    (v339)(v341, v334);
    (v339)(v338, v334);
  }

  v357 = v422;
  v358 = v392;
  v359 = v406;
  v360 = v339;
  (*(v407 + 3))(v418 + v391, v336, v334);
  v361 = v405;
  v362 = v345;
  v363 = v416;
  (v416)(v405, v362, v357);
  v363(v359, v361, v357);
  v358(v361, v357);
  v364 = sub_232545888();
  v365 = sub_232546208();
  if (os_log_type_enabled(v364, v365))
  {
    v424 = v360;
    v366 = v387;
    LODWORD(v419) = v387 | v390;
    v367 = v359;
    v368 = swift_slowAlloc();
    v421 = swift_slowAlloc();
    v426 = v421;
    *v368 = 136315906;
    sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    LODWORD(v420) = v365;
    v369 = sub_232546608();
    v371 = v370;
    v358(v367, v357);
    v372 = sub_2324C2220(v369, v371, &v426);

    *(v368 + 4) = v372;
    *(v368 + 12) = 2080;
    if (v419)
    {
      v373 = 124;
    }

    else
    {
      v373 = 0;
    }

    if (v419)
    {
      v374 = 0xE100000000000000;
    }

    else
    {
      v374 = 0xE000000000000000;
    }

    v375 = sub_2324C2220(v373, v374, &v426);

    *(v368 + 14) = v375;
    *(v368 + 22) = 2080;
    if (v366)
    {
      v376 = 0xD000000000000010;
    }

    else
    {
      v376 = 0;
    }

    if (v366)
    {
      v377 = 0x800000023254CB40;
    }

    else
    {
      v377 = 0xE000000000000000;
    }

    v378 = sub_2324C2220(v376, v377, &v426);

    *(v368 + 24) = v378;
    *(v368 + 32) = 2080;
    if (v390)
    {
      v379 = 0x632067697374656ELL;
    }

    else
    {
      v379 = 0;
    }

    if (v390)
    {
      v380 = 0xEF7C6465676E6168;
    }

    else
    {
      v380 = 0xE000000000000000;
    }

    v381 = sub_2324C2220(v379, v380, &v426);

    *(v368 + 34) = v381;
    _os_log_impl(&dword_2324C0000, v364, v420, "! [[Updated device with ID: %s %s%s%s]]", v368, 0x2Au);
    v382 = v421;
    swift_arrayDestroy();
    MEMORY[0x238386450](v382, -1, -1);
    MEMORY[0x238386450](v368, -1, -1);

    sub_2324DB438(v411, v409);
    sub_2324DB438(v410, v408);
    v383 = v393;
    v384 = v424;
    (v424)(v412, v393);
    (v384)(v413, v383);
    sub_2324C28AC(v415, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v414, &unk_27DD932E0, qword_2325472E0);
    (v384)(v394, v383);
    v358(v423, v422);
    return 1;
  }

  else
  {

    sub_2324DB438(v411, v409);
    sub_2324DB438(v410, v408);
    v358(v359, v357);
    v385 = v393;
    (v360)(v336, v393);
    (v360)(v413, v385);
    sub_2324C28AC(v415, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v414, &unk_27DD932E0, qword_2325472E0);
    (v360)(v394, v385);
    v358(v423, v357);
    return 1;
  }
}

uint64_t sub_2324F98EC()
{
  v1 = sub_2325456F8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v7 = sub_232545688();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  sub_232545678();
  v17 = *(type metadata accessor for NDFDevice(0) + 20);
  (*(v8 + 40))(v0 + v17, v16, v7);
  v51 = v2;
  v52 = v6;
  v18 = *(v2 + 16);
  v18(v6, v0, v1);
  v50 = v8;
  v19 = *(v8 + 16);
  v20 = v0 + v17;
  v21 = v14;
  v22 = v7;
  v19(v21, v20, v7);
  if (qword_2814D62F0 != -1)
  {
    swift_once();
  }

  v23 = sub_2325458A8();
  __swift_project_value_buffer(v23, qword_2814D6EC8);
  v24 = v49;
  v18(v49, v52, v1);
  v19(v11, v21, v22);
  v25 = sub_232545888();
  v26 = sub_232546208();
  v27 = v21;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = swift_slowAlloc();
    v48 = v21;
    v29 = v28;
    v47 = swift_slowAlloc();
    v53 = v47;
    *v29 = 136315394;
    sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = sub_232546608();
    v32 = v31;
    v33 = v1;
    v46 = v1;
    v34 = *(v51 + 8);
    v34(v24, v33);
    v35 = sub_2324C2220(v30, v32, &v53);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    sub_2324FB2F4(&qword_2814D62B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v36 = sub_232546608();
    v38 = v37;
    v39 = v22;
    v40 = *(v50 + 8);
    v40(v11, v39);
    v41 = sub_2324C2220(v36, v38, &v53);

    *(v29 + 14) = v41;
    _os_log_impl(&dword_2324C0000, v25, v26, "! [[Updated device with ID: %s to the latest timestamp: %s]]", v29, 0x16u);
    v42 = v47;
    swift_arrayDestroy();
    MEMORY[0x238386450](v42, -1, -1);
    MEMORY[0x238386450](v29, -1, -1);

    v40(v48, v39);
    return (v34)(v52, v46);
  }

  else
  {

    v44 = *(v50 + 8);
    v44(v11, v22);
    v45 = *(v51 + 8);
    v45(v24, v1);
    v44(v27, v22);
    return (v45)(v52, v1);
  }
}

uint64_t sub_2324F9DF0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6576726553736E64;
    v6 = 0x746E756F4374616ELL;
    if (a1 != 10)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6373624F64697373;
    v8 = 0xD000000000000011;
    if (a1 != 7)
    {
      v8 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4449656369766564;
    v2 = 0x49555570756F7267;
    if (a1 != 3)
    {
      v2 = 0x616E67695374656ELL;
    }

    v3 = 0x616470557473616CLL;
    if (a1 != 1)
    {
      v3 = 0x6F4D656369766564;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2324F9FB0()
{
  v1 = *v0;
  sub_2325466F8();
  MEMORY[0x238385CF0](v1);
  return sub_232546738();
}

uint64_t sub_2324FA024(uint64_t a1)
{
  v2 = *v1;
  sub_2325466F8();
  MEMORY[0x238385CF0](v2);
  return sub_232546738();
}

uint64_t sub_2324FA070@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2324FB8E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2324FA0B0(uint64_t a1)
{
  v2 = sub_2324FB1DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2324FA0EC(uint64_t a1)
{
  v2 = sub_2324FB1DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2324FA128(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93528, &unk_232547F10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2324FB1DC();
  sub_232546758();
  LOBYTE(v17) = 0;
  sub_2325456F8();
  sub_2324FB2F4(&qword_27DD93530, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2325465E8();
  if (!v2)
  {
    v16 = type metadata accessor for NDFDevice(0);
    LOBYTE(v17) = 1;
    sub_232545688();
    sub_2324FB2F4(&qword_27DD93538, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2325465E8();
    v9 = v16;
    LOBYTE(v17) = 2;
    sub_232546588();
    LOBYTE(v17) = 3;
    sub_2325465A8();
    v10 = (v3 + v9[8]);
    v11 = v10[1];
    v17 = *v10;
    v18 = v11;
    v19 = 4;
    sub_2324DB3D0(v17, v11);
    sub_2324FB230();
    sub_2325465A8();
    sub_2324DB438(v17, v18);
    v12 = (v3 + v9[9]);
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v19 = 5;
    sub_2324DB3D0(v17, v13);
    sub_2325465A8();
    sub_2324DB438(v17, v18);
    LOBYTE(v17) = 6;
    sub_232546588();
    LOBYTE(v17) = 7;
    sub_232546598();
    LOBYTE(v17) = 8;
    sub_232546598();
    v17 = *(v3 + v9[13]);
    v19 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324FB390(&qword_27DD93548, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2325465A8();
    LOBYTE(v17) = 10;
    sub_2325465B8();
    LOBYTE(v17) = 11;
    sub_232546598();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2324FA5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, __int16 a16, char a17, char a18, char a19)
{
  v25 = sub_2325456F8();
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for NDFDevice(0);
  v27 = v26[5];
  v28 = sub_232545688();
  (*(*(v28 - 8) + 32))(a9 + v27, a2, v28);
  v29 = (a9 + v26[6]);
  *v29 = a3;
  v29[1] = a4;
  result = sub_2324FB284(a5, a9 + v26[7]);
  v31 = (a9 + v26[8]);
  *v31 = a6;
  v31[1] = a7;
  v32 = (a9 + v26[9]);
  *v32 = a8;
  v32[1] = a10;
  v33 = (a9 + v26[10]);
  *v33 = a11;
  v33[1] = a12;
  *(a9 + v26[11]) = a13;
  *(a9 + v26[12]) = a14;
  *(a9 + v26[13]) = a15;
  v34 = a9 + v26[14];
  *v34 = a16;
  *(v34 + 2) = a17 & 1;
  *(a9 + v26[15]) = a19;
  return result;
}

uint64_t sub_2324FA76C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v46 - v4;
  v58 = sub_232545688();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2325456F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93550, &qword_232547F20);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v46 - v12;
  v14 = type metadata accessor for NDFDevice(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v15 + 20);
  sub_2325455E8();
  v18 = *(v8 + 56);
  v59 = v14[7];
  v18(&v17[v59], 1, 1, v7);
  v19 = &v17[v14[8]];
  v56 = v17;
  v57 = v19;
  *v19 = xmmword_232547F00;
  v20 = &v17[v14[9]];
  v54 = a1;
  v55 = v20;
  *v20 = xmmword_232547F00;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2324FB1DC();
  v52 = v13;
  v21 = v53;
  sub_232546748();
  if (v21)
  {
    v23 = v58;
    v24 = v56;
    __swift_destroy_boxed_opaque_existential_0(v54);
    v25 = v55;
    (*(v60 + 8))(&v24[v61], v23);

    sub_2324C28AC(&v24[v59], &unk_27DD932E0, qword_2325472E0);
    sub_2324DB438(*v57, *(v57 + 1));
    sub_2324DB438(*v25, *(v25 + 1));
  }

  else
  {
    v47 = v14;
    v53 = v8;
    LOBYTE(v62) = 0;
    v22 = sub_2324FB2F4(&qword_27DD93558, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_232546548();
    v46[2] = v22;
    v26 = v56;
    (*(v53 + 32))(v56, v10, v7);
    LOBYTE(v62) = 1;
    sub_2324FB2F4(&qword_27DD93560, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v27 = v58;
    sub_232546548();
    v46[3] = v7;
    (*(v60 + 40))(&v26[v61], v6, v27);
    LOBYTE(v62) = 2;
    v28 = sub_2325464E8();
    v29 = &v26[v47[6]];
    *v29 = v28;
    v29[1] = v30;
    v46[1] = v30;
    LOBYTE(v62) = 3;
    sub_232546508();
    sub_2324F503C(v49, &v26[v59]);
    v64 = 4;
    sub_2324FB33C();
    sub_232546508();
    v31 = v62;
    v32 = v63;
    v33 = v57;
    sub_2324DB438(*v57, *(v57 + 1));
    *v33 = v31;
    *(v33 + 1) = v32;
    v64 = 5;
    sub_232546508();
    v34 = v62;
    v35 = v63;
    v36 = v55;
    sub_2324DB438(*v55, *(v55 + 1));
    *v36 = v34;
    *(v36 + 1) = v35;
    LOBYTE(v62) = 6;
    v37 = sub_2325464E8();
    v38 = v47;
    v39 = &v26[v47[10]];
    *v39 = v37;
    v39[1] = v40;
    LOBYTE(v62) = 7;
    v26[v38[11]] = sub_2325464F8();
    LOBYTE(v62) = 8;
    v26[v38[12]] = sub_2325464F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    v64 = 9;
    sub_2324FB390(&qword_27DD93570, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_232546508();
    *&v56[v47[13]] = v62;
    LOBYTE(v62) = 10;
    v41 = sub_232546518();
    v42 = &v56[v47[14]];
    *v42 = v41;
    v42[2] = BYTE2(v41) & 1;
    LOBYTE(v62) = 11;
    LOBYTE(v35) = sub_2325464F8();
    v43 = v47[15];
    (*(v50 + 8))(v52, v51);
    v44 = v56;
    v56[v43] = v35;
    sub_2324CE250(v44, v48);
    __swift_destroy_boxed_opaque_existential_0(v54);
    return sub_2324CE2B4(v44);
  }
}

uint64_t sub_2324FB0DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_232546628() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2324FB16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324FB1DC()
{
  result = qword_27DD93E48[0];
  if (!qword_27DD93E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD93E48);
  }

  return result;
}

unint64_t sub_2324FB230()
{
  result = qword_27DD93540;
  if (!qword_27DD93540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93540);
  }

  return result;
}

uint64_t sub_2324FB284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324FB2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2324FB33C()
{
  result = qword_27DD93568;
  if (!qword_27DD93568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93568);
  }

  return result;
}

uint64_t sub_2324FB390(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD93210, &qword_232547A00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2324FB424(uint64_t a1)
{
  sub_2325456F8();
  if (v1 <= 0x3F)
  {
    sub_232545688();
    if (v2 <= 0x3F)
    {
      sub_2324FB644(319, &qword_2814D4F28, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2324FB588(319);
        if (v4 <= 0x3F)
        {
          sub_2324FB644(319, &unk_2814D62C0, MEMORY[0x277CC9318]);
          if (v5 <= 0x3F)
          {
            sub_2324FB644(319, &qword_2814D4EE8, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_2324FB5E0(319);
              if (v7 <= 0x3F)
              {
                sub_2324FB644(319, &qword_2814D4C40, MEMORY[0x277D84958]);
                if (v8 <= 0x3F)
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

void sub_2324FB588(uint64_t a1)
{
  if (!qword_2814D6298)
  {
    sub_2325456F8();
    v1 = sub_232546318();
    if (!v2)
    {
      atomic_store(v1, &qword_2814D6298);
    }
  }
}

void sub_2324FB5E0(uint64_t a1)
{
  if (!qword_2814D4F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD93210, &qword_232547A00);
    v1 = sub_232546318();
    if (!v2)
    {
      atomic_store(v1, &qword_2814D4F08);
    }
  }
}

void sub_2324FB644(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_232546318();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NDFDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2324FB7E4()
{
  result = qword_27DD94050[0];
  if (!qword_27DD94050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD94050);
  }

  return result;
}

unint64_t sub_2324FB83C()
{
  result = qword_27DD94160;
  if (!qword_27DD94160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94160);
  }

  return result;
}

unint64_t sub_2324FB894()
{
  result = qword_27DD94168[0];
  if (!qword_27DD94168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD94168);
  }

  return result;
}

uint64_t sub_2324FB8E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (sub_232546628() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49555570756F7267 && a2 == 0xE900000000000044 || (sub_232546628() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616E67695374656ELL && a2 == 0xEE00345665727574 || (sub_232546628() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616E67695374656ELL && a2 == 0xEE00365665727574 || (sub_232546628() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6373624F64697373 && a2 == 0xEC00000064657275 || (sub_232546628() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023254CB60 == a2 || (sub_232546628() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023254CB80 == a2 || (sub_232546628() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576726553736E64 && a2 == 0xEA00000000007372 || (sub_232546628() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E756F4374616ELL && a2 == 0xEA00000000003456 || (sub_232546628() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023254CBA0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_232546628();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

double sub_2324FBD38()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2324FBD70(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_2324FBE08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F45B0();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324FBE78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2324FBEFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_interfacesOfInterest;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2324FBFDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2324FC06C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_primaryResidentLastUpdated;
  swift_beginAccess();
  v4 = sub_232545688();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2324FC0F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_primaryResidentLastUpdated;
  swift_beginAccess();
  v4 = sub_232545688();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2324FC1E4()
{
  v0 = swift_allocObject();
  sub_2324FC21C();
  return v0;
}

uint64_t sub_2324FC21C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  MEMORY[0x28223BE20](v2 - 8);
  v123 = &v96 - v3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D0, &unk_2325480E0);
  v121 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v110 = &v96 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v120 = *(v122 - 8);
  v5 = MEMORY[0x28223BE20](v122);
  v113 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v119 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  v111 = *(v8 - 8);
  v112 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v109 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v115 = v13;
  v116 = &v96 - v12;
  MEMORY[0x28223BE20](v11);
  v117 = &v96 - v14;
  v15 = sub_232545688();
  MEMORY[0x28223BE20](v15 - 8);
  v106 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  MEMORY[0x28223BE20](v17 - 8);
  v107 = (&v96 - v18);
  v19 = sub_2325458A8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v100 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = (&v96 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v105 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v96 - v27;
  v29 = sub_2325456F8();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v102 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v104 = &v96 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v96 - v35;
  swift_defaultActor_initialize();
  v37 = MEMORY[0x277D84F98];
  *(v1 + 112) = MEMORY[0x277D84F98];
  v103 = (v1 + 112);
  *(v1 + 120) = v37;
  v38 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v39 = sub_2324F45B0();
  v108 = v20;
  v40 = *(v20 + 16);
  v40(v1 + v38, v39, v19);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_interfacesOfInterest) = MEMORY[0x277D84FA0];
  sub_2325455E8();
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted) = 0;
  v41 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v41, v28, &unk_27DD932E0, qword_2325472E0);
  v42 = v30[6](v28, 1, v29);
  v114 = v1;
  if (v42 != 1)
  {
    v101 = v30;
    v30[4](v36, v28, v29);
    v47 = MobileGestalt_get_current_device();
    v48 = v36;
    if (v47)
    {
      v49 = v47;
      v50 = MobileGestalt_copy_productType_obj();
      if (v50)
      {
        v51 = v50;
        v52 = sub_232545F68();
        v54 = v53;

LABEL_13:
        v59 = v101;
        v60 = v101[2];
        v61 = v104;
        v62 = v48;
        v60(v104, v48, v29);
        v63 = v102;
        v60(v102, v62, v29);
        v64 = v105;
        v65 = v59[7](v105, 1, 1, v29);
        v66 = v106;
        sub_2324FBCE4(v65);
        v67 = v107;
        sub_2324FA5C0(v63, v66, v52, v54, v64, 0, 0xF000000000000000, 0, v107, 0xF000000000000000, 0, 0, 2, 2, 0, 0, 1, 0, 2);
        v68 = type metadata accessor for NDFDevice(0);
        (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
        swift_beginAccess();
        sub_2324FCF78(v67, v61);
        swift_endAccess();
        (v59[1])(v62, v29);
        v1 = v114;
        goto LABEL_14;
      }
    }

    else
    {
      v55 = v100;
      v40(v100, v1 + v38, v19);
      v56 = sub_232545888();
      v57 = sub_232546208();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2324C0000, v56, v57, "Unable to access MobileGestalt. Cannot determine device model", v58, 2u);
        MEMORY[0x238386450](v58, -1, -1);
      }

      (*(v108 + 8))(v55, v19);
    }

    v52 = 0;
    v54 = 0;
    goto LABEL_13;
  }

  sub_2324C28AC(v28, &unk_27DD932E0, qword_2325472E0);
  v43 = v101;
  v40(v101, v1 + v38, v19);
  v44 = sub_232545888();
  v45 = sub_2325461F8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2324C0000, v44, v45, "No IDS deviceID found for self", v46, 2u);
    MEMORY[0x238386450](v46, -1, -1);
  }

  (*(v108 + 8))(v43, v19);
LABEL_14:
  v69 = sub_232545B08();
  LODWORD(v108) = *MEMORY[0x277D85778];
  v70 = v121;
  v71 = *(v121 + 104);
  v106 = (v121 + 104);
  v107 = v71;
  v72 = v110;
  v73 = v118;
  (v71)(v110);
  v74 = v117;
  v75 = v119;
  v104 = v69;
  sub_232546108();
  v105 = *(v70 + 8);
  v121 = v70 + 8;
  (v105)(v72, v73);
  v76 = *(v120 + 16);
  v102 = (v120 + 16);
  v103 = v76;
  v76(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_dnsServerRequestsQueueContinuation, v75, v122);
  v100 = sub_2325460F8();
  v77 = *(v100 - 1);
  v99 = *(v77 + 56);
  v101 = (v77 + 56);
  v99(v123, 1, 1, v100);
  v78 = v111;
  v98 = *(v111 + 16);
  v79 = v116;
  v80 = v112;
  v98(v116, v74, v112);
  v96 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v81 = v96;
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  *(v82 + 24) = 0;
  v97 = *(v78 + 32);
  v83 = v82 + v81;
  v84 = v79;
  v97(v83, v79, v80);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_dnsServerRequestsTask) = sub_2324C8F70(0, 0, v123, &unk_232548108, v82);
  v85 = v118;
  (v107)(v72, v108, v118);
  v86 = v113;
  sub_232546108();
  (v105)(v72, v85);
  v103(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_deviceUpdateRequestsQueueContinuation, v86, v122);
  v87 = v123;
  v99(v123, 1, 1, v100);
  v88 = v109;
  v98(v109, v84, v80);
  v89 = v96;
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  *(v90 + 24) = 0;
  v97(v90 + v89, v88, v80);
  v91 = sub_2324C8F70(0, 0, v87, &unk_232548118, v90);
  v92 = *(v120 + 8);
  v93 = v122;
  v92(v86, v122);
  v94 = *(v78 + 8);
  v94(v116, v80);
  v92(v119, v93);
  v94(v117, v80);
  result = v114;
  *(v114 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_deviceUpdateRequestsTask) = v91;
  return result;
}

uint64_t sub_2324FCF78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for NDFDevice(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_2324C28AC(a1, &qword_27DD93578, &unk_2325480F0);
    sub_23251CFE8(a2, v7);
    v12 = sub_2325456F8();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_2324C28AC(v7, &qword_27DD93578, &unk_2325480F0);
  }

  else
  {
    sub_23251FBDC(a1, v10, type metadata accessor for NDFDevice);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_23251E238(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_2325456F8();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2324FD198(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_2324C28AC(a1, &unk_27DD932E0, qword_2325472E0);
    sub_23251D184(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_2324C28AC(v7, &unk_27DD932E0, qword_2325472E0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_23251E420(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_2324FD388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_232545B08();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93330, &unk_2325479B0);
  v4[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93338, qword_232548330);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324FD550, 0, 0);
}

uint64_t sub_2324FD550()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  sub_232546138();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2324FD618;
  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2324FD618()
{

  return MEMORY[0x2822009F8](sub_2324FD714, 0, 0);
}

uint64_t sub_2324FD714()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
    v6 = sub_232545AF8();
    v0[14] = v7;
    v9 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2324FD8E0;

    return v9();
  }
}

uint64_t sub_2324FD8E0()
{

  return MEMORY[0x2822009F8](sub_2324FD9F8, 0, 0);
}

uint64_t sub_2324FD9F8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_232545AE8();
  sub_2325460B8();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_2324FD618;
  v8 = v0[9];
  v9 = v0[10];

  return MEMORY[0x2822003E8](v8, 0, 0, v9);
}

uint64_t sub_2324FDB08()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324FD388(v4, v5, v6, v0 + v3);
}

uint64_t sub_2324FDBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_232545B08();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93330, &unk_2325479B0);
  v4[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93338, qword_232548330);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324FDDA4, 0, 0);
}

uint64_t sub_2324FDDA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  sub_232546138();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2324FDE6C;
  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2324FDE6C()
{

  return MEMORY[0x2822009F8](sub_2324FDF68, 0, 0);
}

uint64_t sub_2324FDF68()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
    v6 = sub_232545AF8();
    v0[14] = v7;
    v9 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2324FE134;

    return v9();
  }
}

uint64_t sub_2324FE134()
{

  return MEMORY[0x2822009F8](sub_2324FE24C, 0, 0);
}

uint64_t sub_2324FE24C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_232545AE8();
  sub_2325460B8();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_2324FDE6C;
  v8 = v0[9];
  v9 = v0[10];

  return MEMORY[0x2822003E8](v8, 0, 0, v9);
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2324FE42C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324FDBDC(v4, v5, v6, v0 + v3);
}

uint64_t sub_2324FE500()
{

  sub_232546158();

  sub_232546158();

  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_dnsServerRequestsQueueContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);

  v5(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_deviceUpdateRequestsQueueContinuation, v4);

  v6 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_primaryResidentLastUpdated;
  v7 = sub_232545688();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324FE6CC()
{
  sub_2324FE500();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324FE6F8()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v2 = sub_2325456F8();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for NDFDevice(0);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324FE8A0, v0, 0);
}

uint64_t sub_2324FE8A0()
{
  v1 = sub_2324C8418();
  v2 = *v1;
  v0[25] = *v1;
  if (v2)
  {
    v3 = (*v2 + 168) & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;
    v0[26] = *(*v2 + 168);
    v0[27] = v3;

    return MEMORY[0x2822009F8](sub_2324FEA78, v2, 0);
  }

  else
  {
    v4 = sub_232545888();
    v5 = sub_2325461F8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2324C0000, v4, v5, "Unable to access persistent storage controller", v6, 2u);
      MEMORY[0x238386450](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2324FEA78()
{
  v1 = *(v0 + 80);
  *(v0 + 224) = (*(v0 + 208))();

  return MEMORY[0x2822009F8](sub_2324FEAF4, v1, 0);
}

uint64_t sub_2324FEAF4(uint64_t a1)
{
  v2 = v1[28];
  if (v2)
  {
    v3 = (*v2 + 152) & 0xFFFFFFFFFFFFLL | 0x562B000000000000;
    v1[29] = *(*v2 + 152);
    v1[30] = v3;

    return MEMORY[0x2822009F8](sub_2324FECB4, v2, 0);
  }

  else
  {
    v4 = sub_232545888();
    v5 = sub_2325461F8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2324C0000, v4, v5, "Unable to access persistent storage controller", v6, 2u);
      MEMORY[0x238386450](v6, -1, -1);
    }

    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_2324FECB4()
{
  *(v0 + 248) = (*(v0 + 232))();
  *(v0 + 256) = 0;
  v1 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_2324FED44, v1, 0);
}

unint64_t sub_2324FED44()
{
  v116 = v0;

  v1 = sub_232545888();
  v2 = sub_2325461E8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 248);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_2324C0000, v1, v2, "Loaded %ld persisted devices", v5, 0xCu);
    MEMORY[0x238386450](v5, -1, -1);
  }

  else
  {
  }

  result = *(v0 + 248);
  v112 = *(result + 16);
  if (!v112)
  {
LABEL_45:

    v101 = *(v0 + 8);

    return v101();
  }

  v7 = 0;
  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v110 = *(**(v0 + 80) + 168);
  v109 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v113 = (v9 + 16);
  v111 = v8;
  v107 = (v8 + 48);
  v108 = (v8 + 56);
  v102 = v9;
  v106 = (v9 + 8);
  v105 = *(v0 + 248);
  while (1)
  {
    if (v7 >= *(result + 16))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return result;
    }

    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v111 + 72);
    sub_2324CE250(v109 + v16 * v7, v14);
    sub_2324CE250(v14, v15);
    v17 = sub_232545888();
    v18 = sub_2325461D8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 184);
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v115 = v22;
      *v21 = 136315138;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_232546608();
      v25 = v24;
      sub_23251FC44(v20, type metadata accessor for NDFDevice);
      v26 = sub_2324C2220(v23, v25, &v115);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2324C0000, v17, v18, "Loaded device ID %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x238386450](v22, -1, -1);
      MEMORY[0x238386450](v21, -1, -1);
    }

    else
    {

      v27 = sub_23251FC44(v20, type metadata accessor for NDFDevice);
    }

    v28 = v110(v27);
    v114 = v16;
    if (*(v28 + 16))
    {
      v29 = sub_2324E6CD4(*(v0 + 192));
      if (v30)
      {
        break;
      }
    }

    v49 = sub_232545888();
    v50 = sub_2325461E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2324C0000, v49, v50, "Device is not yet known, inserting", v51, 2u);
      MEMORY[0x238386450](v51, -1, -1);
    }

    v52 = *(v0 + 192);
    v53 = *(v0 + 144);
    v54 = *(v0 + 128);
    v55 = *(v0 + 112);
    v56 = *(v0 + 80);
    v57 = *(v0 + 88);

    v58 = *v113;
    (*v113)(v54, v52, v55);
    sub_2324CE250(v52, v57);
    (*v108)(v57, 0, 1, v53);
    v59 = (*(*v56 + 184))(v0 + 16);
    v61 = v60;
    if ((*v107)(v57, 1, v53) == 1)
    {
      v10 = *(v0 + 128);
      v11 = *(v0 + 112);
      v12 = *(v0 + 96);
      sub_2324C28AC(*(v0 + 88), &qword_27DD93578, &unk_2325480F0);
      sub_23251CFE8(v10, v12);
      sub_2324C28AC(v12, &qword_27DD93578, &unk_2325480F0);
      (*v106)(v10, v11);
    }

    else
    {
      v62 = *(v0 + 128);
      sub_23251FBDC(*(v0 + 88), *(v0 + 160), type metadata accessor for NDFDevice);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = *v61;
      v64 = v115;
      *v61 = 0x8000000000000000;
      result = sub_2324E6CD4(v62);
      v66 = *(v64 + 16);
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        goto LABEL_52;
      }

      v70 = v65;
      v104 = v59;
      if (*(v64 + 24) >= v69)
      {
        v73 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v99 = result;
          sub_23251E7D0();
          result = v99;
        }
      }

      else
      {
        v71 = *(v0 + 128);
        sub_23251D31C(v69, isUniquelyReferenced_nonNull_native);
        result = sub_2324E6CD4(v71);
        if ((v70 & 1) != (v72 & 1))
        {
          goto LABEL_48;
        }

        v73 = v58;
      }

      v74 = v115;
      v75 = *(v0 + 160);
      v76 = *(v0 + 128);
      v77 = *(v0 + 112);
      if (v70)
      {
        sub_23251EAE8(*(v0 + 160), v115[7] + result * v114);
        (*v106)(v76, v77);
      }

      else
      {
        v115[(result >> 6) + 8] |= 1 << result;
        v78 = result;
        v73(v74[6] + *(v102 + 72) * result, v76, v77);
        sub_23251FBDC(v75, v74[7] + v78 * v114, type metadata accessor for NDFDevice);
        result = (*(v102 + 8))(v76, v77);
        v79 = v74[2];
        v68 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v68)
        {
          goto LABEL_53;
        }

        v74[2] = v80;
      }

      *v61 = v74;

      v59 = v104;
    }

    v59();
LABEL_8:
    ++v7;
    v13 = *(v0 + 192);
    (*(**(v0 + 80) + 368))(v13);
    sub_23251FC44(v13, type metadata accessor for NDFDevice);
    result = v105;
    if (v112 == v7)
    {
      goto LABEL_45;
    }
  }

  sub_2324CE250(*(v28 + 56) + v29 * v16, *(v0 + 176));

  v31 = sub_232545888();
  v32 = sub_2325461E8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2324C0000, v31, v32, "Loaded known device, updating", v33, 2u);
    MEMORY[0x238386450](v33, -1, -1);
  }

  v34 = *(v0 + 192);
  v35 = *(v0 + 176);
  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v39 = *(v0 + 104);
  v38 = *(v0 + 112);
  v40 = *(v0 + 80);

  sub_2324F6DD8(v34);
  v103 = *v113;
  (*v113)(v37, v34, v38);
  sub_2324CE250(v35, v39);
  (*v108)(v39, 0, 1, v36);
  v41 = (*(*v40 + 184))(v0 + 48);
  v43 = v42;
  v44 = (*v107)(v39, 1, v36);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    v46 = *(v0 + 136);
    v47 = *(v0 + 112);
    v48 = *(v0 + 96);
    sub_2324C28AC(v45, &qword_27DD93578, &unk_2325480F0);
    sub_23251CFE8(v46, v48);
    sub_2324C28AC(v48, &qword_27DD93578, &unk_2325480F0);
    (*v106)(v46, v47);
LABEL_44:
    v98 = *(v0 + 176);
    v41();
    sub_23251FC44(v98, type metadata accessor for NDFDevice);
    goto LABEL_8;
  }

  v81 = *(v0 + 136);
  sub_23251FBDC(v45, *(v0 + 168), type metadata accessor for NDFDevice);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v43;
  v83 = v115;
  *v43 = 0x8000000000000000;
  result = sub_2324E6CD4(v81);
  v85 = *(v83 + 16);
  v86 = (v84 & 1) == 0;
  v68 = __OFADD__(v85, v86);
  v87 = v85 + v86;
  if (v68)
  {
    goto LABEL_54;
  }

  v88 = v84;
  if (*(v83 + 24) >= v87)
  {
    if ((v82 & 1) == 0)
    {
      v100 = result;
      sub_23251E7D0();
      result = v100;
    }

    goto LABEL_39;
  }

  v89 = *(v0 + 136);
  sub_23251D31C(v87, v82);
  result = sub_2324E6CD4(v89);
  if ((v88 & 1) == (v90 & 1))
  {
LABEL_39:
    v91 = v115;
    v92 = *(v0 + 168);
    v93 = *(v0 + 136);
    v94 = *(v0 + 112);
    if (v88)
    {
      sub_23251EAE8(*(v0 + 168), v115[7] + result * v114);
      (*v106)(v93, v94);
    }

    else
    {
      v115[(result >> 6) + 8] |= 1 << result;
      v95 = result;
      v103(v91[6] + *(v102 + 72) * result, v93, v94);
      sub_23251FBDC(v92, v91[7] + v95 * v114, type metadata accessor for NDFDevice);
      result = (*(v102 + 8))(v93, v94);
      v96 = v91[2];
      v68 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v68)
      {
        goto LABEL_55;
      }

      v91[2] = v97;
    }

    *v43 = v91;

    goto LABEL_44;
  }

LABEL_48:

  return sub_232546668();
}

uint64_t sub_2324FF900()
{
  v1 = *(v0 + 256);
  v2 = v1;
  v3 = sub_232545888();
  v4 = sub_2325461F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 256);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2324C0000, v3, v4, "Failed to load persisted devices: %@", v7, 0xCu);
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

uint64_t sub_2324FFB14()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted;
  if ((*(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted) & 1) != 0 || (v3 = *((*(*v1 + 192))(v0[2]) + 16), , !v3))
  {

    v10 = sub_232545888();
    v11 = sub_2325461D8();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[2];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 67109376;
      *(v14 + 4) = *(v1 + v2);
      *(v14 + 8) = 2048;
      v15 = *((*(*v13 + 192))() + 16);

      *(v14 + 10) = v15;

      _os_log_impl(&dword_2324C0000, v10, v11, "Not starting metrics collection [started: %{BOOL}d, %ld known Homes]", v14, 0x12u);
      MEMORY[0x238386450](v14, -1, -1);
    }

    else
    {
    }

    v16 = v0[1];

    return v16();
  }

  else
  {
    v4 = sub_232545888();
    v5 = sub_232546208();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2324C0000, v4, v5, "Starting periodic telemetry collection", v6, 2u);
      MEMORY[0x238386450](v6, -1, -1);
    }

    *(v1 + v2) = 1;
    v7 = sub_2324E8FA0();
    v8 = *v7;
    v0[3] = *v7;
    v9 = (*v8 + 240) & 0xFFFFFFFFFFFFLL | 0x6C6E000000000000;
    v0[4] = *(*v8 + 240);
    v0[5] = v9;

    return MEMORY[0x2822009F8](sub_2324FFD9C, v8, 0);
  }
}

uint64_t sub_2324FFD9C()
{
  (*(v0 + 32))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2324FFE08()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v1[13] = swift_task_alloc();
  v2 = type metadata accessor for NDFDevice(0);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v1[18] = swift_task_alloc();
  v3 = sub_2325456F8();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324FFFAC, v0, 0);
}

uint64_t sub_2324FFFAC(uint64_t a1)
{
  v53 = v1;
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[18];
  v5 = sub_232545018();
  sub_2324CF3C4(v5, v4, &unk_27DD932E0, qword_2325472E0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_2324C28AC(v1[18], &unk_27DD932E0, qword_2325472E0);
LABEL_18:

    v50 = v1[1];

    return v50();
  }

  v6 = v1[12];
  v7 = (*(v1[20] + 32))(v1[22], v1[18], v1[19]);
  v8 = (*(*v6 + 168))(v7);
  if (!*(v8 + 16) || (v9 = sub_2324E6CD4(v1[22]), (v10 & 1) == 0))
  {
    v39 = v1[22];
    v40 = v1[19];
    v41 = v1[20];

    (*(v41 + 8))(v39, v40);
    goto LABEL_18;
  }

  v12 = v1[16];
  v11 = v1[17];
  sub_2324CE250(*(v8 + 56) + *(v1[15] + 72) * v9, v12);

  sub_23251FBDC(v12, v11, type metadata accessor for NDFDevice);
  sub_232545638();
  v14 = v13;
  v15 = *(**sub_2324C4D38() + 584);

  v17 = v15(v16);

  if (v14 >= v17)
  {
    v42 = v1[17];
    (*(v1[20] + 8))(v1[22], v1[19]);
LABEL_17:
    sub_23251FC44(v42, type metadata accessor for NDFDevice);
    goto LABEL_18;
  }

  v19 = v1[20];
  v18 = v1[21];
  v20 = v1[19];
  v21 = v1[17];
  v22 = v1[14];
  v23 = v1[15];
  v25 = v1[12];
  v24 = v1[13];
  sub_2324F98EC();
  (*(v19 + 16))(v18, v21, v20);
  sub_2324CE250(v21, v24);
  (*(v23 + 56))(v24, 0, 1, v22);
  v26 = (*(*v25 + 184))(v1 + 2);
  sub_2324FCF78(v24, v18);
  v26(v1 + 2, 0);
  v27 = sub_2324C8418();
  if (!*v27)
  {
    v43 = sub_232545888();
    v44 = sub_2325461F8();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v1[22];
    v47 = v1[19];
    v48 = v1[20];
    v42 = v1[17];
    if (v45)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2324C0000, v43, v44, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v49, 2u);
      MEMORY[0x238386450](v49, -1, -1);
    }

    (*(v48 + 8))(v46, v47);
    goto LABEL_17;
  }

  v28 = *(*v27 + 152);
  v1[23] = v28;

  v29 = sub_232545888();
  v30 = sub_232546208();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v52 = v32;
    *v31 = 136315138;
    swift_beginAccess();
    v33 = sub_2324F6270();
    v35 = sub_2324C2220(v33, v34, &v52);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_2324C0000, v29, v30, "Submitting forced CK device update for self: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x238386450](v32, -1, -1);
    MEMORY[0x238386450](v31, -1, -1);
  }

  swift_beginAccess();
  v51 = (*(*v28 + 344) + **(*v28 + 344));
  v36 = swift_task_alloc();
  v1[24] = v36;
  *v36 = v1;
  v36[1] = sub_2325005C8;
  v37 = v1[17];

  return v51(v37);
}

uint64_t sub_2325005C8()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_2325006D8, v1, 0);
}

uint64_t sub_2325006D8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];

  (*(v3 + 8))(v1, v2);
  sub_23251FC44(v4, type metadata accessor for NDFDevice);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2325007C0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 136) = a2;
  *(v4 + 144) = v3;
  *(v4 + 200) = a3;
  *(v4 + 128) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232500864, v3, 0);
}

uint64_t sub_232500864()
{
  v39 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  if (*(v0 + 200) == 1)
  {
    v4 = *(v0 + 144);
    v5 = (*(*v2 + 232))(v0 + 48);
    sub_23251EE14(v3, v1);

    v6 = v5(v0 + 48, 0);
    v7 = *((*(*v4 + 216))(v6) + 16);

    if (!v7)
    {
      v8 = sub_232545888();
      v9 = sub_232546208();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2324C0000, v8, v9, "No longer tracking any interfaces, clearing outstanding IP address acquisition and DNS outage events", v10, 2u);
        MEMORY[0x238386450](v10, -1, -1);
      }

      v12 = *(v0 + 144);
      v11 = *(v0 + 152);

      v13 = sub_2324C1C94();
      *(v0 + 160) = v13;
      swift_beginAccess();
      sub_2324CF3C4(v13, v11, &unk_27DD932E0, qword_2325472E0);
      v36 = *v12 + 416;
      v14 = *v36;
      *(v0 + 168) = *v36;
      *(v0 + 176) = v36 & 0xFFFFFFFFFFFFLL | 0x841000000000000;
      v37 = (v14 + *v14);
      v15 = swift_task_alloc();
      *(v0 + 184) = v15;
      *v15 = v0;
      v15[1] = sub_232500D9C;
      v16 = *(v0 + 152);

      return (v37)(1, 2, 0, v16);
    }
  }

  else
  {
    v18 = *(*v2 + 232);

    v19 = v18(v0 + 16);
    sub_23251EF50(&v38, v3, v1);

    v19(v0 + 16, 0);
  }

  v20 = sub_232545888();
  v21 = sub_232546208();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v24 = *(v0 + 200);
    v25 = *(v0 + 128);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = 136315650;
    if (v24)
    {
      v28 = 0x6C61766F6D6572;
    }

    else
    {
      v28 = 0x6E6F697469646461;
    }

    if (v24)
    {
      v29 = 0xE700000000000000;
    }

    else
    {
      v29 = 0xE800000000000000;
    }

    v30 = sub_2324C2220(v28, v29, &v38);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2324C2220(v25, v23, &v38);
    *(v26 + 22) = 2080;
    (*(*v22 + 216))();
    v31 = sub_2325461A8();
    v33 = v32;

    v34 = sub_2324C2220(v31, v33, &v38);

    *(v26 + 24) = v34;
    _os_log_impl(&dword_2324C0000, v20, v21, "Noted %s of interface %s: now tracking:  %s", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v27, -1, -1);
    MEMORY[0x238386450](v26, -1, -1);
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_232500D9C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);

  sub_2324C28AC(v1, &unk_27DD932E0, qword_2325472E0);

  return MEMORY[0x2822009F8](sub_232500ED8, v2, 0);
}

uint64_t sub_232500ED8()
{
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  swift_beginAccess();
  sub_2324CF3C4(v2, v3, &unk_27DD932E0, qword_2325472E0);
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_23250100C;
  v5 = v0[19];

  return (v7)(1, 1, 0, v5);
}

uint64_t sub_23250100C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);

  sub_2324C28AC(v1, &unk_27DD932E0, qword_2325472E0);

  return MEMORY[0x2822009F8](sub_232501148, v2, 0);
}

uint64_t sub_232501148()
{
  v20 = v0;

  v1 = sub_232545888();
  v2 = sub_232546208();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 200);
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315650;
    if (v5)
    {
      v9 = 0x6C61766F6D6572;
    }

    else
    {
      v9 = 0x6E6F697469646461;
    }

    if (v5)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_2324C2220(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_2324C2220(v6, v4, &v19);
    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    (*(*v3 + 216))(v12);
    v13 = sub_2325461A8();
    v15 = v14;

    v16 = sub_2324C2220(v13, v15, &v19);

    *(v7 + 24) = v16;
    _os_log_impl(&dword_2324C0000, v1, v2, "Noted %s of interface %s: now tracking:  %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v8, -1, -1);
    MEMORY[0x238386450](v7, -1, -1);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_232501390()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93580, qword_232548148);
  v1 = MEMORY[0x28223BE20](v55);
  v54 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v53 = &v45 - v4;
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - v5;
  v6 = type metadata accessor for NDFDevice(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*v0 + 168))(v8);
  v12 = *(v11 + 16);
  if (v12)
  {
    v60 = MEMORY[0x277D84F90];
    sub_23251F9D8(0, v12, 0);
    v13 = v60;
    v14 = v11 + 64;
    result = sub_232546388();
    v16 = result;
    v17 = 0;
    v46 = v11 + 72;
    v47 = v12;
    v50 = v7;
    v51 = v10;
    v48 = v11 + 64;
    v49 = v11;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v11 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      v21 = *(v11 + 36);
      v56 = v17;
      v57 = v21;
      v22 = v55;
      v59 = v13;
      v23 = *(v55 + 48);
      v24 = *(v11 + 48);
      v25 = sub_2325456F8();
      v26 = *(v25 - 8);
      v27 = v26;
      v28 = v24 + *(v26 + 72) * v16;
      v29 = v52;
      (*(v26 + 16))(v52, v28, v25);
      v30 = *(v11 + 56);
      v58 = *(v7 + 72);
      sub_2324CE250(v30 + v58 * v16, &v29[v23]);
      v31 = v53;
      (*(v27 + 32))(v53, v29, v25);
      sub_23251FBDC(&v29[v23], v31 + *(v22 + 48), type metadata accessor for NDFDevice);
      v32 = v54;
      sub_2324F1C98(v31, v54, &qword_27DD93580, qword_232548148);
      v33 = *(v22 + 48);
      v34 = v51;
      sub_23251FBDC(v32 + v33, v51, type metadata accessor for NDFDevice);
      v35 = v32;
      v13 = v59;
      (*(v27 + 8))(v35, v25);
      v60 = v13;
      v37 = *(v13 + 16);
      v36 = *(v13 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23251F9D8((v36 > 1), v37 + 1, 1);
        v13 = v60;
      }

      *(v13 + 16) = v37 + 1;
      v7 = v50;
      result = sub_23251FBDC(v34, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v37 * v58, type metadata accessor for NDFDevice);
      v11 = v49;
      v18 = 1 << *(v49 + 32);
      if (v16 >= v18)
      {
        goto LABEL_24;
      }

      v14 = v48;
      v38 = *(v48 + 8 * v20);
      if ((v38 & (1 << v16)) == 0)
      {
        goto LABEL_25;
      }

      if (v57 != *(v49 + 36))
      {
        goto LABEL_26;
      }

      v39 = v38 & (-2 << (v16 & 0x3F));
      if (v39)
      {
        v18 = __clz(__rbit64(v39)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v47;
      }

      else
      {
        v40 = v20 << 6;
        v41 = v20 + 1;
        v19 = v47;
        v42 = (v46 + 8 * v20);
        while (v41 < (v18 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            result = sub_23251FBD0(v16, v57, 0);
            v18 = __clz(__rbit64(v43)) + v40;
            goto LABEL_4;
          }
        }

        result = sub_23251FBD0(v16, v57, 0);
      }

LABEL_4:
      v17 = v56 + 1;
      v16 = v18;
      if (v56 + 1 == v19)
      {

        return v13;
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
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_232501870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 168))();
  if (*(v5 + 16) && (v6 = sub_2324E6CD4(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for NDFDevice(0);
    v17 = *(v10 - 8);
    sub_2324CE250(v9 + *(v17 + 72) * v8, a2);

    v11 = *(v17 + 56);
    v12 = a2;
    v13 = 0;
    v14 = v10;
  }

  else
  {

    v15 = type metadata accessor for NDFDevice(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_2325019C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v14 = sub_2325456F8();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v51 = &v48 - v19;
  MEMORY[0x28223BE20](v18);
  v52 = &v48 - v20;
  v21 = a1;
  v23 = v22;
  sub_2324CF3C4(v21, v13, &unk_27DD932E0, qword_2325472E0);
  v24 = *(v23 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    sub_2324C28AC(v13, &unk_27DD932E0, qword_2325472E0);
    v25 = sub_232545888();
    v26 = sub_2325461F8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2324C0000, v25, v26, "Cannot look up primary resident for nil groupUUID", v27, 2u);
      MEMORY[0x238386450](v27, -1, -1);
    }

    v28 = type metadata accessor for NDFDevice(0);
    return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  }

  else
  {
    v49 = v17;
    v50 = a2;
    v30 = v52;
    v48 = *(v23 + 32);
    v48(v52, v13, v14);
    v31 = v30;
    v32 = *(v23 + 16);
    v32(v8, v31, v14);
    (*(v23 + 56))(v8, 0, 1, v14);
    (*(*v2 + 352))(v8);
    sub_2324C28AC(v8, &unk_27DD932E0, qword_2325472E0);
    if (v24(v11, 1, v14) == 1)
    {
      sub_2324C28AC(v11, &unk_27DD932E0, qword_2325472E0);
      v33 = v49;
      v32(v49, v52, v14);
      v34 = sub_232545888();
      v35 = sub_2325461E8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v53 = v37;
        *v36 = 136315138;
        sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v38 = sub_232546608();
        v40 = v39;
        v41 = *(v23 + 8);
        v41(v33, v14);
        v42 = sub_2324C2220(v38, v40, &v53);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_2324C0000, v34, v35, "No primary resident found for group %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x238386450](v37, -1, -1);
        MEMORY[0x238386450](v36, -1, -1);

        v41(v52, v14);
      }

      else
      {

        v45 = *(v23 + 8);
        v45(v33, v14);
        v45(v52, v14);
      }

      v46 = v50;
      v47 = type metadata accessor for NDFDevice(0);
      return (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
    }

    else
    {
      v43 = v51;
      v48(v51, v11, v14);
      (*(*v2 + 336))(v43);
      v44 = *(v23 + 8);
      v44(v43, v14);
      return (v44)(v52, v14);
    }
  }
}

uint64_t sub_232501FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_2325456F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2324CF3C4(a1, v7, &unk_27DD932E0, qword_2325472E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2324C28AC(v7, &unk_27DD932E0, qword_2325472E0);
    v12 = sub_232545888();
    v13 = sub_2325461F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2324C0000, v12, v13, "Cannot look up primary resident ID for nil groupUUID", v14, 2u);
      MEMORY[0x238386450](v14, -1, -1);
    }

    goto LABEL_9;
  }

  v15 = (*(v9 + 32))(v11, v7, v8);
  v16 = (*(*v2 + 192))(v15);
  if (!*(v16 + 16) || (v17 = sub_2324E6CD4(v11), (v18 & 1) == 0))
  {

    (*(v9 + 8))(v11, v8);
LABEL_9:
    v19 = 1;
    return (*(v9 + 56))(a2, v19, 1, v8);
  }

  (*(v9 + 16))(a2, *(v16 + 56) + *(v9 + 72) * v17, v8);
  (*(v9 + 8))(v11, v8);

  v19 = 0;
  return (*(v9 + 56))(a2, v19, 1, v8);
}

void sub_2325022AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = sub_2325456F8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v52 = v14;
  v20 = *(v14 + 16);
  v20(&v47 - v18, a2, v13);
  sub_2324CF3C4(a1, v12, &unk_27DD932E0, qword_2325472E0);
  v21 = (*(*v3 + 208))(v53);
  sub_2324FD198(v12, v19);
  v21(v53, 0);
  v22 = v17;
  v23 = v3;
  v24 = v51;
  v20(v22, v50, v13);
  sub_2324CF3C4(a1, v24, &unk_27DD932E0, qword_2325472E0);

  v25 = sub_232545888();
  v26 = sub_2325461E8();

  if (os_log_type_enabled(v25, v26))
  {
    v47 = v25;
    LODWORD(v50) = v26;
    v27 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53[0] = v48;
    *v27 = 136315650;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v28 = sub_232546608();
    v29 = v22;
    v31 = v30;
    v32 = v52;
    v33 = *(v52 + 8);
    v33(v29, v13);
    v34 = sub_2324C2220(v28, v31, v53);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2080;
    v35 = v49;
    sub_2324CF3C4(v24, v49, &unk_27DD932E0, qword_2325472E0);
    if ((*(v32 + 48))(v35, 1, v13) == 1)
    {
      sub_2324C28AC(v35, &unk_27DD932E0, qword_2325472E0);
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      v37 = sub_2325456A8();
      v36 = v38;
      v33(v35, v13);
    }

    sub_2324C28AC(v24, &unk_27DD932E0, qword_2325472E0);
    v39 = sub_2324C2220(v37, v36, v53);

    *(v27 + 14) = v39;
    *(v27 + 22) = 2080;
    (*(*v23 + 192))(v40);
    sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v41 = sub_232545EF8();
    v43 = v42;

    v44 = sub_2324C2220(v41, v43, v53);

    *(v27 + 24) = v44;
    v45 = v47;
    _os_log_impl(&dword_2324C0000, v47, v50, "Updated primary resident ID for group %s to %s, all known primary residents: %s", v27, 0x20u);
    v46 = v48;
    swift_arrayDestroy();
    MEMORY[0x238386450](v46, -1, -1);
    MEMORY[0x238386450](v27, -1, -1);
  }

  else
  {

    sub_2324C28AC(v24, &unk_27DD932E0, qword_2325472E0);
    (*(v52 + 8))(v22, v13);
  }
}

void sub_232502828(uint64_t a1)
{
  v2 = sub_232545688();
  MEMORY[0x28223BE20](v2 - 8);
  v134 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NDFDevice(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v132 = &v126 - v8;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  MEMORY[0x28223BE20](v136);
  v138 = &v126 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v128 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v126 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v137 = &v126 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v126 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v126 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v126 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v126 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v126 - v28;
  v30 = sub_2325456F8();
  v31 = MEMORY[0x28223BE20](v30);
  v133 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v131 = &v126 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v129 = &v126 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v126 - v37;
  v143 = v4;
  v39 = *(v4 + 28);
  v40 = a1;
  v41 = a1 + v39;
  v43 = v42;
  sub_2324CF3C4(v41, v29, &unk_27DD932E0, qword_2325472E0);
  v145 = v43[6];
  v146 = v43 + 6;
  if (v145(v29, 1, v30) != 1)
  {
    v127 = v43[4];
    v127(v38, v29, v30);
    v52 = v43[2];
    v139 = v38;
    v141 = v52;
    v142 = v43 + 2;
    v52(v24, v38, v30);
    v130 = v43;
    v53 = v43[7];
    v53(v24, 0, 1, v30);
    v54 = *(*v148 + 352);
    v147 = v27;
    v54(v24);
    sub_2324C28AC(v24, &unk_27DD932E0, qword_2325472E0);
    v135 = v21;
    v53(v21, 1, 1, v30);
    v55 = *(v40 + *(v143 + 44));
    v56 = v30;
    if (v55 != 2 && (v55 & 1) != 0)
    {
      v136 = v24;
      v57 = v135;
      sub_2324C28AC(v135, &unk_27DD932E0, qword_2325472E0);
      v58 = v141;
      v141(v57, v40, v30);
      v59 = 0;
      v60 = v139;
      v61 = v148;
LABEL_20:
      v53(v57, v59, 1, v56);
      v97 = v133;
      v58(v133, v60, v56);
      v98 = v140;
      sub_2324CF3C4(v147, v140, &unk_27DD932E0, qword_2325472E0);
      v99 = sub_232545888();
      v100 = sub_232546208();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v149[0] = v144;
        *v101 = 136315650;
        sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v102 = sub_232546608();
        v104 = v103;
        v105 = v97;
        v106 = v130[1];
        v106(v105, v56);
        v107 = sub_2324C2220(v102, v104, v149);

        *(v101 + 4) = v107;
        *(v101 + 12) = 2080;
        v108 = v98;
        v109 = v128;
        sub_2324CF3C4(v108, v128, &unk_27DD932E0, qword_2325472E0);
        if (v145(v109, 1, v56) == 1)
        {
          sub_2324C28AC(v109, &unk_27DD932E0, qword_2325472E0);
          v110 = 0xE300000000000000;
          v111 = 7104878;
        }

        else
        {
          v111 = sub_2325456A8();
          v110 = v113;
          v106(v109, v56);
        }

        sub_2324C28AC(v140, &unk_27DD932E0, qword_2325472E0);
        v114 = sub_2324C2220(v111, v110, v149);

        *(v101 + 14) = v114;
        *(v101 + 22) = 2080;
        v115 = v135;
        swift_beginAccess();
        if (v145(v115, 1, v56))
        {
          v116 = 0xE300000000000000;
          v117 = 7104878;
        }

        else
        {
          v118 = v129;
          v141(v129, v115, v56);
          v119 = sub_2325456A8();
          v116 = v120;
          v106(v118, v56);
          v117 = v119;
        }

        v121 = sub_2324C2220(v117, v116, v149);

        *(v101 + 24) = v121;
        _os_log_impl(&dword_2324C0000, v99, v100, "[Group %s] Updating primary resident ID: %s -> %s", v101, 0x20u);
        v122 = v144;
        swift_arrayDestroy();
        MEMORY[0x238386450](v122, -1, -1);
        MEMORY[0x238386450](v101, -1, -1);

        v57 = v135;
        v61 = v148;
        v112 = v106;
      }

      else
      {

        sub_2324C28AC(v98, &unk_27DD932E0, qword_2325472E0);
        v112 = v130[1];
        v112(v97, v56);
      }

      swift_beginAccess();
      v123 = v136;
      sub_2324CF3C4(v57, v136, &unk_27DD932E0, qword_2325472E0);
      v124 = v139;
      (*(*v61 + 360))(v123, v139);
      sub_2324C28AC(v123, &unk_27DD932E0, qword_2325472E0);
      v125 = v134;
      sub_232545668();
      (*(*v61 + 248))(v125);
      sub_2324C28AC(v147, &unk_27DD932E0, qword_2325472E0);
      v112(v124, v56);
      v92 = v57;
      goto LABEL_30;
    }

    v62 = v144;
    v143 = v40;
    v141(v144, v40, v56);
    v53(v62, 0, 1, v56);
    v63 = *(v136 + 12);
    v64 = v56;
    v65 = v138;
    sub_2324CF3C4(v147, v138, &unk_27DD932E0, qword_2325472E0);
    sub_2324CF3C4(v62, v65 + v63, &unk_27DD932E0, qword_2325472E0);
    v66 = v145;
    if (v145(v65, 1, v64) == 1)
    {
      sub_2324C28AC(v62, &unk_27DD932E0, qword_2325472E0);
      v67 = v65 + v63;
      v68 = v64;
      v69 = v66(v67, 1, v64);
      v60 = v139;
      v58 = v141;
      if (v69 == 1)
      {
        v136 = v24;
        sub_2324C28AC(v65, &unk_27DD932E0, qword_2325472E0);
        v57 = v135;
        v61 = v148;
LABEL_19:
        sub_2324C28AC(v57, &unk_27DD932E0, qword_2325472E0);
        v59 = 1;
        v56 = v68;
        goto LABEL_20;
      }
    }

    else
    {
      sub_2324CF3C4(v65, v137, &unk_27DD932E0, qword_2325472E0);
      v70 = v66(v65 + v63, 1, v64);
      v60 = v139;
      if (v70 != 1)
      {
        v136 = v24;
        v93 = (v65 + v63);
        v94 = v129;
        v127(v129, v93, v64);
        sub_23251FF40(&qword_2814D4E80, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v95 = v137;
        LODWORD(v127) = sub_232545F48();
        v96 = v130[1];
        v96(v94, v64);
        sub_2324C28AC(v144, &unk_27DD932E0, qword_2325472E0);
        v68 = v64;
        v96(v95, v64);
        sub_2324C28AC(v65, &unk_27DD932E0, qword_2325472E0);
        v57 = v135;
        v61 = v148;
        v58 = v141;
        if (v127)
        {
          goto LABEL_19;
        }

LABEL_14:
        v71 = v131;
        v72 = v68;
        v58(v131, v60, v68);
        v73 = v132;
        sub_2324CE250(v143, v132);
        v74 = sub_232545888();
        v75 = v60;
        v76 = sub_2325461D8();
        if (os_log_type_enabled(v74, v76))
        {
          v77 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v149[0] = v148;
          *v77 = 136315394;
          sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v78 = sub_232546608();
          v80 = v79;
          v81 = v72;
          v82 = v130[1];
          v83 = v71;
          v84 = v81;
          v82(v83);
          v85 = sub_2324C2220(v78, v80, v149);

          *(v77 + 4) = v85;
          *(v77 + 12) = 2080;
          v86 = sub_2325456A8();
          v88 = v87;
          sub_23251FC44(v73, type metadata accessor for NDFDevice);
          v89 = sub_2324C2220(v86, v88, v149);

          *(v77 + 14) = v89;
          _os_log_impl(&dword_2324C0000, v74, v76, "[Group %s] Device with ID %s was neither the primary resident before, nor is it now", v77, 0x16u);
          v90 = v148;
          swift_arrayDestroy();
          MEMORY[0x238386450](v90, -1, -1);
          MEMORY[0x238386450](v77, -1, -1);

          sub_2324C28AC(v147, &unk_27DD932E0, qword_2325472E0);
          (v82)(v139, v84);
        }

        else
        {

          sub_23251FC44(v73, type metadata accessor for NDFDevice);
          v91 = v130[1];
          v91(v71, v72);
          sub_2324C28AC(v147, &unk_27DD932E0, qword_2325472E0);
          v91(v75, v72);
        }

        v92 = v57;
LABEL_30:
        sub_2324C28AC(v92, &unk_27DD932E0, qword_2325472E0);
        return;
      }

      sub_2324C28AC(v144, &unk_27DD932E0, qword_2325472E0);
      v68 = v64;
      (v130[1])(v137, v64);
      v58 = v141;
    }

    sub_2324C28AC(v65, &qword_27DD93290, &qword_2325477E0);
    v57 = v135;
    goto LABEL_14;
  }

  sub_2324C28AC(v29, &unk_27DD932E0, qword_2325472E0);
  sub_2324CE250(v40, v7);
  v44 = sub_232545888();
  v45 = sub_2325461F8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v149[0] = v47;
    *v46 = 136315138;
    v48 = sub_2324F6270();
    v50 = v49;
    sub_23251FC44(v7, type metadata accessor for NDFDevice);
    v51 = sub_2324C2220(v48, v50, v149);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_2324C0000, v44, v45, "Cannot update primary resident for device without groupUUID: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x238386450](v47, -1, -1);
    MEMORY[0x238386450](v46, -1, -1);
  }

  else
  {

    sub_23251FC44(v7, type metadata accessor for NDFDevice);
  }
}

uint64_t sub_2325038D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232545688();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for NDFEvent(0);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_2325456F8();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232503AE8, v2, 0);
}

uint64_t sub_232503AE8()
{
  v64 = v0;
  v1 = *sub_2324C8418();
  if (!v1)
  {
    v8 = sub_232545888();
    v11 = sub_2325461F8();
    if (os_log_type_enabled(v8, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2324C0000, v8, v11, "NDFAdminController is nil", v12, 2u);
      MEMORY[0x238386450](v12, -1, -1);
    }

    goto LABEL_8;
  }

  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[3];
  v6 = *(v1 + 144);
  v0[19] = v6;
  sub_2324CF3C4(v5, v4, &unk_27DD932E0, qword_2325472E0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = v0[13];

    sub_2324C28AC(v7, &unk_27DD932E0, qword_2325472E0);
    v8 = sub_232545888();
    v9 = sub_2325461F8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2324C0000, v8, v9, "Ignoring DNS server update for device with no deviceID", v10, 2u);
      MEMORY[0x238386450](v10, -1, -1);
    }

LABEL_8:

    v13 = v0[1];

    return v13();
  }

  v15 = v0[15];
  v16 = v0[2];
  (*(v15 + 32))(v0[18], v0[13], v0[14]);
  v17 = *(v15 + 16);
  v18 = v0[18];
  v19 = v0[14];
  if (*(v16 + 16))
  {
    v17(v0[17], v18, v19);

    v20 = sub_232545888();
    v21 = sub_232546208();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[17];
    v25 = v0[14];
    v24 = v0[15];
    if (v22)
    {
      buf = v0[2];
      v26 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v26 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_232546608();
      v29 = v28;
      v56 = v21;
      v30 = *(v24 + 8);
      v30(v23, v25);
      v31 = sub_2324C2220(v27, v29, &v63);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = MEMORY[0x238385650](buf, MEMORY[0x277D837D0]);
      v34 = sub_2324C2220(v32, v33, &v63);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_2324C0000, v20, v56, "Updated DNS servers for device %s: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v60, -1, -1);
      MEMORY[0x238386450](v26, -1, -1);
    }

    else
    {

      v30 = *(v24 + 8);
      v30(v23, v25);
    }

    v0[20] = v30;
    v48 = (*v6 + 168) & 0xFFFFFFFFFFFFLL | 0xEC33000000000000;
    v0[21] = *(*v6 + 168);
    v0[22] = v48;

    return MEMORY[0x2822009F8](sub_232504284, v6, 0);
  }

  else
  {
    v17(v0[16], v18, v19);

    v35 = sub_232545888();
    v36 = sub_232546208();
    v37 = os_log_type_enabled(v35, v36);
    v39 = v0[15];
    v38 = v0[16];
    v40 = v0[14];
    if (v37)
    {
      bufa = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63 = v61;
      *bufa = 136315138;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v41 = sub_232546608();
      v43 = v42;
      v57 = v36;
      v46 = *(v39 + 8);
      v44 = v39 + 8;
      v45 = v46;
      v46(v38, v40);
      v47 = sub_2324C2220(v41, v43, &v63);

      *(bufa + 4) = v47;
      _os_log_impl(&dword_2324C0000, v35, v57, "Device %s received empty DNS server configuration; clearing outstanding DNS outage events", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x238386450](v61, -1, -1);
      MEMORY[0x238386450](bufa, -1, -1);
    }

    else
    {

      v49 = *(v39 + 8);
      v44 = v39 + 8;
      v45 = v49;
      v49(v38, v40);
    }

    v0[25] = v44;
    v0[26] = v45;
    v50 = v0[14];
    v51 = v0[15];
    v52 = v0[12];
    v53 = v0[4];
    v17(v52, v0[18], v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    v62 = (*(*v53 + 416) + **(*v53 + 416));
    v54 = swift_task_alloc();
    v0[27] = v54;
    *v54 = v0;
    v54[1] = sub_23250467C;
    v55 = v0[12];

    return v62(1, 1, 0, v55);
  }
}

uint64_t sub_232504284()
{
  v1 = *(v0 + 32);
  (*(v0 + 168))(1, 1, *(v0 + 144));

  return MEMORY[0x2822009F8](sub_232504300, v1, 0);
}

uint64_t sub_232504300()
{
  v1 = v0[9];
  v2 = v0[8];
  if ((*(v0[10] + 48))(v2, 1, v1) == 1)
  {
    sub_2324C28AC(v2, &qword_27DD93400, &qword_2325479C0);
    v3 = v0[20];
    v4 = v0[18];
    v5 = v0[14];
    sub_23251BB00();

    v3(v4, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[19];
    v9 = v0[11];
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[5];
    sub_23251FBDC(v2, v9, type metadata accessor for NDFEvent);
    sub_232545668();
    (*(v11 + 40))(v9 + *(v1 + 24), v10, v12);
    *(v9 + 9) = 3;
    v13 = (*v8 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
    v0[23] = *(*v8 + 144);
    v0[24] = v13;

    return MEMORY[0x2822009F8](sub_2325044F8, v8, 0);
  }
}

uint64_t sub_2325044F8()
{
  v1 = *(v0 + 32);
  (*(v0 + 184))(*(v0 + 88));

  return MEMORY[0x2822009F8](sub_23250456C, v1, 0);
}

uint64_t sub_23250456C()
{
  sub_23251FC44(v0[11], type metadata accessor for NDFEvent);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[14];
  sub_23251BB00();

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23250467C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 32);

  sub_2324C28AC(v1, &unk_27DD932E0, qword_2325472E0);

  return MEMORY[0x2822009F8](sub_2325047B8, v2, 0);
}

uint64_t sub_2325047B8()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23250489C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_232504990(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 416) + **(*v2 + 416));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2324C290C;

  return v8(2, 2, a1, a2);
}

uint64_t sub_232504AC8(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 416) + **(*v2 + 416));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2324C290C;

  return v8(3, 2, a1, a2);
}

uint64_t sub_232504C00(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 229) = a3;
  *(v5 + 228) = a2;
  *(v5 + 40) = a1;
  v6 = sub_232545688();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  *(v5 + 88) = swift_task_alloc();
  v7 = type metadata accessor for NDFEvent(0);
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v8 = sub_2325456F8();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232504E0C, v4, 0);
}

uint64_t sub_232504E0C()
{
  v33 = v0;
  v1 = *sub_2324C8418();
  if (!v1)
  {
    v19 = *(v0 + 40);
    v20 = *(v0 + 228);
    sub_2324E6FC0(v19, v20);
    v10 = sub_232545888();
    v21 = sub_2325461F8();
    sub_2324E6E70(v19, v20);
    if (os_log_type_enabled(v10, v21))
    {
      v22 = *(v0 + 40);
      v23 = *(v0 + 228);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      v26 = sub_2325369E4(v22, v23);
      v28 = sub_2324C2220(v26, v27, &v32);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2324C0000, v10, v21, "Failed to note %s: NDFAdminController not available", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x238386450](v25, -1, -1);
      MEMORY[0x238386450](v24, -1, -1);
    }

    goto LABEL_8;
  }

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 48);
  v6 = *(v1 + 144);
  *(v0 + 168) = v6;
  sub_2324CF3C4(v5, v4, &unk_27DD932E0, qword_2325472E0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 40);
    v9 = *(v0 + 228);

    sub_2324C28AC(v7, &unk_27DD932E0, qword_2325472E0);
    sub_2324E6FC0(v8, v9);
    v10 = sub_232545888();
    v11 = sub_2325461F8();
    sub_2324E6E70(v8, v9);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 40);
      v13 = *(v0 + 228);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      v16 = sub_2325369E4(v12, v13);
      v18 = sub_2324C2220(v16, v17, &v32);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2324C0000, v10, v11, "Failed to note %s: deviceID is nil", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x238386450](v15, -1, -1);
      MEMORY[0x238386450](v14, -1, -1);
    }

LABEL_8:

    v29 = *(v0 + 8);

    return v29();
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
  v31 = (*v6 + 168) & 0xFFFFFFFFFFFFLL | 0xEC33000000000000;
  *(v0 + 176) = *(*v6 + 168);
  *(v0 + 184) = v31;

  return MEMORY[0x2822009F8](sub_2325051CC, v6, 0);
}

uint64_t sub_2325051CC()
{
  v1 = *(v0 + 56);
  (*(v0 + 176))(*(v0 + 40), *(v0 + 228), *(v0 + 160));

  return MEMORY[0x2822009F8](sub_232505248, v1, 0);
}

uint64_t sub_232505248()
{
  v51 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) != 1)
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 229);
    sub_23251FBDC(v1, v6, type metadata accessor for NDFEvent);
    v8 = *(v6 + 9);
    if (v7 == 1)
    {
      *(v0 + 226) = v8;
      *(v0 + 227) = 3;
      sub_2324E6DD0();
      if ((sub_232545F48() & 1) == 0)
      {
        v27 = sub_232545888();
        v28 = sub_232546208();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 160);
        v32 = *(v0 + 144);
        v31 = *(v0 + 152);
        v33 = *(v0 + 120);
        if (v29)
        {
          v49 = *(v0 + 144);
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v50 = v35;
          *v34 = 136315138;
          swift_beginAccess();
          v36 = sub_2325384B0();
          v47 = v30;
          v38 = sub_2324C2220(v36, v37, &v50);

          *(v34 + 4) = v38;
          _os_log_impl(&dword_2324C0000, v27, v28, "Event %s is already in progress, ignoring", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x238386450](v35, -1, -1);
          MEMORY[0x238386450](v34, -1, -1);

          (*(v31 + 8))(v47, v49);
        }

        else
        {

          (*(v31 + 8))(v30, v32);
        }

        v26 = v33;
        goto LABEL_21;
      }
    }

    else
    {
      *(v0 + 224) = v8;
      *(v0 + 225) = 3;
      sub_2324E6DD0();
      v24 = sub_232545F48();
      v3 = *(v0 + 168);
      if ((v24 & 1) == 0)
      {
        v39 = *(v0 + 120);
        v40 = *(v0 + 96);
        v42 = *(v0 + 72);
        v41 = *(v0 + 80);
        v43 = *(v0 + 64);
        *(v6 + 9) = 3;
        sub_232545668();
        (*(v42 + 40))(v39 + *(v40 + 24), v41, v43);
        v44 = (*v3 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
        *(v0 + 192) = *(*v3 + 144);
        *(v0 + 200) = v44;
        v5 = sub_2325057B0;
        goto LABEL_16;
      }
    }

    v25 = *(v0 + 120);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v26 = v25;
LABEL_21:
    sub_23251FC44(v26, type metadata accessor for NDFEvent);
    goto LABEL_22;
  }

  v2 = *(v0 + 229);
  sub_2324C28AC(v1, &qword_27DD93400, &qword_2325479C0);
  if (v2)
  {
    v3 = *(v0 + 168);
    (*(*(v0 + 152) + 56))(*(v0 + 128), 1, 1, *(v0 + 144));
    v4 = (*v3 + 160) & 0xFFFFFFFFFFFFLL | 0xFB9000000000000;
    *(v0 + 208) = *(*v3 + 160);
    *(v0 + 216) = v4;
    v5 = sub_232505914;
LABEL_16:

    return MEMORY[0x2822009F8](v5, v3, 0);
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 228);
  sub_2324E6FC0(v9, v10);
  v11 = sub_232545888();
  v12 = sub_232546208();
  sub_2324E6E70(v9, v10);
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 160);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  if (v13)
  {
    v17 = *(v0 + 40);
    v18 = *(v0 + 228);
    v48 = *(v0 + 160);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v50 = v20;
    *v19 = 136315138;
    v21 = sub_2325369E4(v17, v18);
    v23 = sub_2324C2220(v21, v22, &v50);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2324C0000, v11, v12, "Ignoring spurious event end notification for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x238386450](v20, -1, -1);
    MEMORY[0x238386450](v19, -1, -1);

    (*(v15 + 8))(v48, v16);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

LABEL_22:

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_2325057B0()
{
  v1 = *(v0 + 56);
  (*(v0 + 192))(*(v0 + 120));

  return MEMORY[0x2822009F8](sub_232505824, v1, 0);
}

uint64_t sub_232505824()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[15];

  (*(v3 + 8))(v1, v2);
  sub_23251FC44(v4, type metadata accessor for NDFEvent);

  v5 = v0[1];

  return v5();
}

uint64_t sub_232505914()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  (*(v0 + 208))(*(v0 + 40), *(v0 + 228), *(v0 + 160), v2);
  sub_2324C28AC(v2, &unk_27DD932E0, qword_2325472E0);
  (*(*v1 + 144))(v3);

  return MEMORY[0x2822009F8](sub_2325059E4, v4, 0);
}

uint64_t sub_2325059E4()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[14];

  sub_23251FC44(v4, type metadata accessor for NDFEvent);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_232505AD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_232505AFC, v4, 0);
}

uint64_t sub_232505AFC()
{
  v22 = v0;

  v1 = sub_232545888();
  v2 = sub_2325461E8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 64);
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_2324C2220(v5, v4, &v21);
    *(v6 + 12) = 2080;
    if (v3)
    {
      v8 = 0x69646E6F70736572;
    }

    else
    {
      v8 = 0x7073657220746F6ELL;
    }

    if (v3)
    {
      v9 = 0xEA0000000000676ELL;
    }

    else
    {
      v9 = 0xEE00676E69646E6FLL;
    }

    v10 = sub_2324C2220(v8, v9, &v21);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_2324C0000, v1, v2, "DNS Server %s is %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v7, -1, -1);
    MEMORY[0x238386450](v6, -1, -1);
  }

  v12 = *(v0 + 32);
  v11 = *(v0 + 40);
  v13 = *(v0 + 64);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v16 = sub_23251FF40(&unk_2814D4E70, type metadata accessor for NDFDeviceManager, &unk_232548210);
  v17 = swift_task_alloc();
  *(v0 + 48) = v17;
  *(v17 + 16) = v11;
  *(v17 + 24) = v15;
  *(v17 + 32) = v14;
  *(v17 + 40) = v13;
  *(v17 + 48) = v12;
  v18 = swift_task_alloc();
  *(v0 + 56) = v18;
  *v18 = v0;
  v18[1] = sub_232505DAC;
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v18, v11, v16, 0xD000000000000022, 0x800000023254CBC0, sub_23251FCF0, v17, v19);
}

uint64_t sub_232505DAC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_232505ED8, v1, 0);
}

uint64_t sub_232505EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v32 = a6;
  v33 = a2;
  v35 = a5;
  v34 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93318, &qword_232547938);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v31 = sub_232545B08();
  v17 = *(v31 - 8);
  v18 = MEMORY[0x28223BE20](v31);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  (*(v14 + 16))(v16, a1, v13);
  sub_2324CF3C4(v32, v12, &unk_27DD932E0, qword_2325472E0);
  v23 = (*(v30 + 80) + 41) & ~*(v30 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = v33;
  *(v24 + 24) = v25;
  *(v24 + 32) = a4;
  *(v24 + 40) = v35;
  sub_2324F1C98(v12, v24 + v23, &unk_27DD932E0, qword_2325472E0);

  sub_232545AD8();
  v26 = v31;
  (*(v17 + 16))(v20, v22, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v27 = v36;
  sub_232546118();
  (*(v37 + 8))(v27, v38);
  return (*(v17 + 8))(v22, v26);
}

uint64_t sub_2325062A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(*a1 + 440) + **(*a1 + 440));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2324C2910;

  return v12(a2, a3, a4, a5);
}

uint64_t sub_2325063F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_232506418, v2, 0);
}

uint64_t sub_232506418()
{
  v1 = v0[4];

  nullsub_1();
  v3 = v2;
  v0[5] = v2;
  v7 = (*(*v1 + 416) + **(*v1 + 416));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23250656C;
  v5 = v0[3];

  return v7(v3, 1, 1, v5);
}

uint64_t sub_23250656C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23250667C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 248) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_232545688();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  *(v5 + 72) = swift_task_alloc();
  v7 = type metadata accessor for NDFEvent(0);
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  *(v5 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v5 + 112) = swift_task_alloc();
  v8 = sub_2325456F8();
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325068C8, v4, 0);
}

uint64_t sub_2325068C8()
{
  v82 = v0;
  v1 = *sub_2324C8418();
  if (!v1)
  {
    v8 = sub_232545888();
    v11 = sub_2325461F8();
    if (os_log_type_enabled(v8, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2324C0000, v8, v11, "NDFAdminController is nil", v12, 2u);
      MEMORY[0x238386450](v12, -1, -1);
    }

    goto LABEL_8;
  }

  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 32);
  v6 = *(v1 + 144);
  *(v0 + 168) = v6;
  sub_2324CF3C4(v5, v4, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v7 = *(v0 + 112);

    sub_2324C28AC(v7, &unk_27DD932E0, qword_2325472E0);
    v8 = sub_232545888();
    v9 = sub_2325461F8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2324C0000, v8, v9, "Ignoring DNS update: nil deviceID", v10, 2u);
      MEMORY[0x238386450](v10, -1, -1);
    }

LABEL_8:

    goto LABEL_9;
  }

  v15 = *(v0 + 40);
  (*(*(v0 + 128) + 32))(*(v0 + 160), *(v0 + 112), *(v0 + 120));
  v16 = *(*v15 + 168);

  v18 = v16(v17);
  if (!*(v18 + 16) || (v19 = sub_2324E6CD4(*(v0 + 160)), (v20 & 1) == 0))
  {
    v46 = *(v0 + 160);
    v47 = *(v0 + 128);
    v48 = *(v0 + 136);
    v49 = *(v0 + 120);
    v50 = *(v0 + 104);

    v51 = type metadata accessor for NDFDevice(0);
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
    sub_2324C28AC(v50, &qword_27DD93578, &unk_2325480F0);
    (*(v47 + 16))(v48, v46, v49);
    v52 = sub_232545888();
    v53 = sub_2325461F8();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 160);
    v56 = *(v0 + 128);
    v57 = *(v0 + 136);
    v58 = *(v0 + 120);
    if (v54)
    {
      v59 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v81 = v77;
      *v59 = 136315138;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v79 = v55;
      v60 = sub_232546608();
      v62 = v61;
      v63 = *(v56 + 8);
      v63(v57, v58);
      v64 = sub_2324C2220(v60, v62, &v81);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_2324C0000, v52, v53, "Ignoring DNS update: unknown device %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x238386450](v77, -1, -1);
      MEMORY[0x238386450](v59, -1, -1);

      v63(v79, v58);
    }

    else
    {

      v65 = *(v56 + 8);
      v65(v57, v58);
      v65(v55, v58);
    }

LABEL_9:

    v13 = *(v0 + 8);

    return v13();
  }

  v21 = v19;
  v22 = *(v0 + 104);
  v23 = *(v0 + 248);
  v24 = *(v18 + 56);
  v25 = type metadata accessor for NDFDevice(0);
  v26 = *(v25 - 8);
  sub_2324CE250(v24 + *(v26 + 72) * v21, v22);

  (*(v26 + 56))(v22, 0, 1, v25);
  sub_2324C28AC(v22, &qword_27DD93578, &unk_2325480F0);
  *(v0 + 176) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  if (v23 != 1)
  {

    v66 = sub_232545888();
    v67 = sub_2325461D8();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 160);
    v71 = *(v0 + 120);
    v70 = *(v0 + 128);
    if (v68)
    {
      v73 = *(v0 + 16);
      v72 = *(v0 + 24);
      v74 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v75 = v81;
      *v74 = 136315138;
      *(v74 + 4) = sub_2324C2220(v73, v72, &v81);
      _os_log_impl(&dword_2324C0000, v66, v67, "Ignoring DNS update: unresponsive server %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x238386450](v75, -1, -1);
      MEMORY[0x238386450](v74, -1, -1);
    }

    (*(v70 + 8))(v69, v71);
    goto LABEL_9;
  }

  v27 = *(v0 + 152);
  v28 = *(v0 + 160);
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  v31 = *(v30 + 16);
  *(v0 + 184) = v31;
  *(v0 + 192) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v27, v28, v29);

  v32 = sub_232545888();
  v33 = sub_232546208();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 152);
  v37 = *(v0 + 120);
  v36 = *(v0 + 128);
  if (v34)
  {
    v80 = v6;
    v39 = *(v0 + 16);
    v38 = *(v0 + 24);
    v40 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v81 = v78;
    *v40 = 136315394;
    *(v40 + 4) = sub_2324C2220(v39, v38, &v81);
    *(v40 + 12) = 2080;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v41 = sub_232546608();
    v43 = v42;
    v44 = *(v36 + 8);
    v44(v35, v37);
    v45 = sub_2324C2220(v41, v43, &v81);
    v6 = v80;

    *(v40 + 14) = v45;
    _os_log_impl(&dword_2324C0000, v32, v33, "DNS Server %s has started responding for device %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v78, -1, -1);
    MEMORY[0x238386450](v40, -1, -1);
  }

  else
  {

    v44 = *(v36 + 8);
    v44(v35, v37);
  }

  *(v0 + 200) = v44;
  v76 = (*v6 + 168) & 0xFFFFFFFFFFFFLL | 0xEC33000000000000;
  *(v0 + 208) = *(*v6 + 168);
  *(v0 + 216) = v76;

  return MEMORY[0x2822009F8](sub_232507198, v6, 0);
}

uint64_t sub_232507198()
{
  v1 = *(v0 + 40);
  (*(v0 + 208))(1, 1, *(v0 + 160));

  return MEMORY[0x2822009F8](sub_232507214, v1, 0);
}

uint64_t sub_232507214()
{
  v28 = v0;
  v1 = *(v0 + 72);
  if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
  {
    (*(v0 + 200))(*(v0 + 160), *(v0 + 120));

    sub_2324C28AC(v1, &qword_27DD93400, &qword_2325479C0);
LABEL_7:

    v17 = *(v0 + 8);

    return v17();
  }

  v2 = *(v0 + 96);
  sub_23251FBDC(v1, v2, type metadata accessor for NDFEvent);
  if (*(v2 + 8) != 1)
  {
    (*(v0 + 200))(*(v0 + 160), *(v0 + 120));

    sub_23251FC44(*(v0 + 96), type metadata accessor for NDFEvent);
    goto LABEL_7;
  }

  (*(v0 + 184))(*(v0 + 144), *(v0 + 160), *(v0 + 120));
  v3 = sub_232545888();
  v4 = sub_232546208();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 200);
  v7 = *(v0 + 144);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  if (v5)
  {
    v26 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v12 = sub_232546608();
    v14 = v13;
    v15 = v9 + 8;
    v26(v7, v8);
    v16 = sub_2324C2220(v12, v14, &v27);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_2324C0000, v3, v4, "Retracting DNS outage event for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x238386450](v11, -1, -1);
    MEMORY[0x238386450](v10, -1, -1);
  }

  else
  {

    v15 = v9 + 8;
    v6(v7, v8);
  }

  *(v0 + 224) = v15;
  v19 = *(v0 + 168);
  v20 = *(v0 + 96);
  v21 = *(v0 + 80);
  v23 = *(v0 + 56);
  v22 = *(v0 + 64);
  v24 = *(v0 + 48);
  *(v20 + 9) = 3;
  sub_232545668();
  (*(v23 + 40))(v20 + *(v21 + 24), v22, v24);
  v25 = (*v19 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
  *(v0 + 232) = *(*v19 + 144);
  *(v0 + 240) = v25;

  return MEMORY[0x2822009F8](sub_2325075DC, v19, 0);
}

uint64_t sub_2325075DC()
{
  v1 = *(v0 + 40);
  (*(v0 + 232))(*(v0 + 96));

  return MEMORY[0x2822009F8](sub_232507650, v1, 0);
}

uint64_t sub_232507650()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[15];

  v1(v2, v3);
  sub_23251FC44(v0[12], type metadata accessor for NDFEvent);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23250775C(char a1, char a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 211) = a4;
  *(v6 + 210) = a3;
  *(v6 + 209) = a2;
  *(v6 + 208) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  *(v6 + 56) = swift_task_alloc();
  v7 = sub_232545688();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0);
  *(v6 + 88) = swift_task_alloc();
  v8 = type metadata accessor for NDFEvent(0);
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232507904, v5, 0);
}

uint64_t sub_232507904()
{
  v1 = sub_2324C8418();
  if (*v1)
  {
    v2 = *(*v1 + 144);
    v0[16] = v2;
    v3 = (*v2 + 168) & 0xFFFFFFFFFFFFLL | 0xEC33000000000000;
    v0[17] = *(*v2 + 168);
    v0[18] = v3;

    return MEMORY[0x2822009F8](sub_232507A88, v2, 0);
  }

  else
  {
    v4 = sub_232545888();
    v5 = sub_2325461F8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2324C0000, v4, v5, "NDFAdminController is nil", v6, 2u);
      MEMORY[0x238386450](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_232507A88()
{
  v1 = *(v0 + 48);
  (*(v0 + 136))(3, 0, *(v0 + 40));

  return MEMORY[0x2822009F8](sub_232507B04, v1, 0);
}

uint64_t sub_232507B04()
{
  v34 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) != 1)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 211);
    sub_23251FBDC(v1, v8, type metadata accessor for NDFEvent);
    v10 = *(v8 + 9);
    if (v9 == 1)
    {
      *(v0 + 206) = v10;
      *(v0 + 207) = 3;
      sub_2324E6DD0();
      if ((sub_232545F48() & 1) == 0)
      {
        v16 = sub_232545888();
        v17 = sub_232546208();
        v18 = os_log_type_enabled(v16, v17);
        v19 = *(v0 + 120);
        if (v18)
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v33 = v21;
          *v20 = 136315138;
          swift_beginAccess();
          v22 = sub_2325384B0();
          v24 = sub_2324C2220(v22, v23, &v33);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_2324C0000, v16, v17, "Event %s is already in progress, ignoring", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x238386450](v21, -1, -1);
          MEMORY[0x238386450](v20, -1, -1);
        }

        v15 = v19;
        goto LABEL_15;
      }
    }

    else
    {
      *(v0 + 204) = v10;
      *(v0 + 205) = 3;
      sub_2324E6DD0();
      v14 = sub_232545F48();
      v3 = *(v0 + 128);
      if ((v14 & 1) == 0)
      {
        v27 = *(v0 + 120);
        v28 = *(v0 + 96);
        v30 = *(v0 + 72);
        v29 = *(v0 + 80);
        v31 = *(v0 + 64);
        *(v8 + 9) = 3;
        sub_232545668();
        (*(v30 + 40))(v27 + *(v28 + 24), v29, v31);
        v32 = (*v3 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
        *(v0 + 152) = *(*v3 + 144);
        *(v0 + 160) = v32;
        v7 = sub_232507F78;
        goto LABEL_20;
      }
    }

    v15 = *(v0 + 120);
LABEL_15:
    sub_23251FC44(v15, type metadata accessor for NDFEvent);
    goto LABEL_16;
  }

  v2 = *(v0 + 211);
  sub_2324C28AC(v1, &qword_27DD93400, &qword_2325479C0);
  if (v2)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 56);
    *(v0 + 200) = sub_232537190(*(v0 + 208), *(v0 + 209), *(v0 + 210));
    v5 = sub_2325456F8();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = (*v3 + 160) & 0xFFFFFFFFFFFFLL | 0xFB9000000000000;
    *(v0 + 168) = *(*v3 + 160);
    *(v0 + 176) = v6;
    v7 = sub_23250809C;
LABEL_20:

    return MEMORY[0x2822009F8](v7, v3, 0);
  }

  v11 = sub_232545888();
  v12 = sub_2325461E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2324C0000, v11, v12, "Ignoring spurious event end notification for networkMisconfiguration", v13, 2u);
    MEMORY[0x238386450](v13, -1, -1);
  }

LABEL_16:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_232507F78()
{
  v1 = *(v0 + 48);
  (*(v0 + 152))(*(v0 + 120));

  return MEMORY[0x2822009F8](sub_232507FE8, v1, 0);
}

uint64_t sub_232507FE8()
{

  sub_23251FC44(*(v0 + 120), type metadata accessor for NDFEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23250809C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  (*(v0 + 168))(*(v0 + 200) & 0xFFFFFFLL, 0, *(v0 + 40), v1);
  sub_2324C28AC(v1, &unk_27DD932E0, qword_2325472E0);

  return MEMORY[0x2822009F8](sub_232508144, v2, 0);
}

uint64_t sub_232508144(uint64_t a1)
{
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 210);
    v5 = *(v1 + 209);
    v6 = *(v1 + 208);
    v7 = swift_slowAlloc();
    *v7 = 67109632;
    *(v7 + 4) = v6;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v5;
    *(v7 + 14) = 1024;
    *(v7 + 16) = v4;
    _os_log_impl(&dword_2324C0000, v2, v3, "Sending network misconfig event, sameNetwork: %{BOOL}d, doubleNAT: %{BOOL}d, p2pTrafficBlocked: %{BOOL}d", v7, 0x14u);
    MEMORY[0x238386450](v7, -1, -1);
  }

  v8 = *(v1 + 128);

  v9 = (*v8 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
  *(v1 + 184) = *(*v8 + 144);
  *(v1 + 192) = v9;

  return MEMORY[0x2822009F8](sub_23250827C, v8, 0);
}

uint64_t sub_23250827C()
{
  v1 = *(v0 + 48);
  (*(v0 + 184))(*(v0 + 112));

  return MEMORY[0x2822009F8](sub_2325082F0, v1, 0);
}

uint64_t sub_2325082F0()
{
  v1 = *(v0 + 112);

  sub_23251FC44(v1, type metadata accessor for NDFEvent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2325083A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v110 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v102 - v6;
  v7 = sub_2325456F8();
  v105 = *(v7 - 8);
  v106 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NDFDevice(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v103 = &v102 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v102 - v19;
  v21 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v112 = a2;
  sub_2324CE250(a2, &v102 - v19);
  v109 = v21;
  v22 = sub_232545888();
  v23 = sub_2325461D8();
  v24 = os_log_type_enabled(v22, v23);
  v111 = v18;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v102 = v10;
    v27 = v26;
    v113[0] = v26;
    *v25 = 136315138;
    v28 = sub_2324F6270();
    v29 = v9;
    v30 = v3;
    v32 = v31;
    sub_23251FC44(v20, type metadata accessor for NDFDevice);
    v33 = sub_2324C2220(v28, v32, v113);
    v3 = v30;
    v9 = v29;

    *(v25 + 4) = v33;
    _os_log_impl(&dword_2324C0000, v22, v23, "Updating in-memory device with: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v34 = v27;
    v10 = v102;
    MEMORY[0x238386450](v34, -1, -1);
    v35 = v25;
    v18 = v111;
    MEMORY[0x238386450](v35, -1, -1);
  }

  else
  {

    v36 = sub_23251FC44(v20, type metadata accessor for NDFDevice);
  }

  v37 = (*(*v3 + 168))(v36);
  if (*(v37 + 16) && (v38 = sub_2324E6CD4(v112), (v39 & 1) != 0))
  {
    v40 = v103;
    sub_2324CE250(*(v37 + 56) + *(v10 + 72) * v38, v103);

    sub_23251FBDC(v40, v18, type metadata accessor for NDFDevice);
    v41 = sub_232545888();
    v42 = sub_2325461D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v113[0] = v44;
      *v43 = 136315138;
      swift_beginAccess();
      v45 = sub_2324F6270();
      v47 = sub_2324C2220(v45, v46, v113);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2324C0000, v41, v42, "  > before update: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x238386450](v44, -1, -1);
      MEMORY[0x238386450](v43, -1, -1);
    }

    swift_beginAccess();
    v48 = v112;
    LODWORD(v103) = sub_2324F6834(v112);
    LODWORD(v102) = sub_2324F6BBC(v48);
    swift_beginAccess();
    v49 = sub_2324F6DD8(v48);
    swift_endAccess();
    v50 = sub_232545888();
    v51 = sub_2325461D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v112 = v3;
      v54 = v10;
      v55 = v53;
      v113[0] = v53;
      *v52 = 136315138;
      v56 = sub_2324F6270();
      v58 = sub_2324C2220(v56, v57, v113);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_2324C0000, v50, v51, "  < after update: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v59 = v55;
      v10 = v54;
      v3 = v112;
      MEMORY[0x238386450](v59, -1, -1);
      MEMORY[0x238386450](v52, -1, -1);
    }

    if (v49)
    {
      v60 = v107;
      v61 = v111;
      (*(v105 + 16))(v107, v111, v106);
      v62 = v108;
      sub_2324CE250(v61, v108);
      v63 = *(v10 + 56);
      v63(v62, 0, 1, v9);
      v64 = (*(*v3 + 184))(v113);
      sub_2324FCF78(v62, v60);
      v64(v113, 0);
      v65 = v103;
      if (v103)
      {
        v66 = sub_232545888();
        v67 = sub_2325461D8();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_2324C0000, v66, v67, "  ! HomeKit properties have changed", v68, 2u);
          MEMORY[0x238386450](v68, -1, -1);
        }
      }

      v69 = v110;
      v70 = v111;
      sub_2324CE250(v111, v110);
      v63(v69, 0, 1, v9);
      sub_23251FC44(v70, type metadata accessor for NDFDevice);
      if (v102)
      {
        v71 = 256;
      }

      else
      {
        v71 = 0;
      }
    }

    else
    {
      v91 = v10;
      v92 = v9;
      v93 = sub_232545888();
      v94 = sub_2325461D8();
      v95 = os_log_type_enabled(v93, v94);
      v96 = v111;
      if (v95)
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v113[0] = v98;
        *v97 = 136315138;
        v99 = sub_2324F6270();
        v101 = sub_2324C2220(v99, v100, v113);

        *(v97 + 4) = v101;
        v96 = v111;
        _os_log_impl(&dword_2324C0000, v93, v94, "  = %s hasn't changed, skipping update", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98);
        MEMORY[0x238386450](v98, -1, -1);
        MEMORY[0x238386450](v97, -1, -1);
      }

      (*(v91 + 56))(v110, 1, 1, v92);
      sub_23251FC44(v96, type metadata accessor for NDFDevice);
      v65 = 0;
      v71 = 0;
    }
  }

  else
  {

    sub_2324CE250(v112, v13);
    v72 = sub_232545888();
    v73 = sub_2325461D8();
    v74 = os_log_type_enabled(v72, v73);
    v104 = v9;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v113[0] = v76;
      *v75 = 136315138;
      v77 = sub_2324F6270();
      v78 = v10;
      v80 = v79;
      sub_23251FC44(v13, type metadata accessor for NDFDevice);
      v81 = sub_2324C2220(v77, v80, v113);
      v10 = v78;

      *(v75 + 4) = v81;
      _os_log_impl(&dword_2324C0000, v72, v73, "  + new device: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x238386450](v76, -1, -1);
      MEMORY[0x238386450](v75, -1, -1);
    }

    else
    {

      sub_23251FC44(v13, type metadata accessor for NDFDevice);
    }

    v82 = v107;
    v83 = v112;
    (*(v105 + 16))(v107, v112, v106);
    v84 = v108;
    sub_2324CE250(v83, v108);
    v85 = *(v10 + 56);
    v86 = v104;
    v85(v84, 0, 1, v104);
    v87 = (*(*v3 + 184))(v113);
    v88 = v84;
    v65 = 1;
    sub_2324FCF78(v88, v82);
    v87(v113, 0);
    v89 = v110;
    sub_2324CE250(v83, v110);
    v85(v89, 0, 1, v86);
    v71 = 256;
  }

  return v71 | v65 & 1u;
}

uint64_t sub_232508E48(uint64_t a1, char a2, char a3)
{
  *(v4 + 49) = a3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return MEMORY[0x2822009F8](sub_232508E70, v3, 0);
}

uint64_t sub_232508E70()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_23251FF40(&unk_2814D4E70, type metadata accessor for NDFDeviceManager, &unk_232548210);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v2;
  *(v6 + 33) = v1;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_232508FBC;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, v3, v5, 0xD000000000000033, 0x800000023254CBF0, sub_23251FD04, v6, v8);
}

uint64_t sub_232508FBC()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2325090E8, v1, 0);
}

uint64_t sub_232509100(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v26 = a4;
  v27 = a5;
  v24 = a1;
  v25 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93318, &qword_232547938);
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = sub_232545B08();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  (*(v10 + 16))(v12, v24, v9);
  v20 = swift_allocObject();
  v21 = v25;
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  v22 = v27;
  *(v20 + 32) = v26;
  *(v20 + 33) = v22;

  sub_232545AD8();
  (*(v14 + 16))(v17, v19, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  sub_232546118();
  (*(v6 + 8))(v8, v28);
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_2325093E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2324C290C;

  return sub_232509498(a2, v6, v5);
}

uint64_t sub_232509498(uint64_t a1, char a2, char a3)
{
  *(v4 + 647) = a3;
  *(v4 + 646) = a2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v3;
  v5 = sub_2325456F8();
  *(v4 + 184) = v5;
  *(v4 + 192) = *(v5 - 8);
  *(v4 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v6 = sub_232545688();
  *(v4 + 232) = v6;
  *(v4 + 240) = *(v6 - 8);
  *(v4 + 248) = swift_task_alloc();
  v7 = type metadata accessor for NDFDevice(0);
  *(v4 + 256) = v7;
  *(v4 + 264) = *(v7 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325096C8, v3, 0);
}

uint64_t sub_2325096C8(uint64_t a1, void *a2, uint64_t a3)
{
  v246 = v3;
  v4 = *(v3 + 168);
  v5 = *(v4 + 16);
  v6 = &unk_2814D7000;
  v7 = &off_232547000;
  if (*(v3 + 646) == 1)
  {
    if (v5 != 1)
    {

      v8 = sub_232545888();
      v9 = sub_2325461F8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v3 + 256);
        v11 = *(v3 + 168);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v245 = v13;
        *v12 = 134218242;
        *(v12 + 4) = v5;

        *(v12 + 12) = 2080;
        v14 = MEMORY[0x238385650](v11, v10);
        v16 = sub_2324C2220(v14, v15, &v245);

        *(v12 + 14) = v16;
        _os_log_impl(&dword_2324C0000, v8, v9, "Update for self device should only contain one record, but found %ld: %s", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x238386450](v13, -1, -1);
        MEMORY[0x238386450](v12, -1, -1);
      }

      else
      {
      }

      goto LABEL_117;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v18 = *(v3 + 256);
    v17 = *(v3 + 264);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = v4 + v19;
    v239 = *(v17 + 72);
    v229 = (*(v3 + 240) + 40);
    v21 = MEMORY[0x277D84F90];
    v226 = *(v4 + 16);
    v228 = v18;
    v231 = v19;
    do
    {
      v22 = *(v3 + 646);
      sub_2324CE250(v20, *(v3 + 336));
      if (v22 == 1)
      {
        v23 = *(v3 + 336);
        v24 = *(v3 + 248);
        v25 = *(v3 + 232);
        sub_232545668();
        swift_beginAccess();
        (*v229)(v23 + *(v18 + 20), v24, v25);
        v26 = sub_232545888();
        v27 = sub_2325461D8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v245 = v29;
          *v28 = 136315138;
          v30 = sub_2324F6270();
          v32 = sub_2324C2220(v30, v31, &v245);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_2324C0000, v26, v27, "About to process self device record: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x238386450](v29, -1, -1);
          v33 = v28;
          v18 = v228;
          MEMORY[0x238386450](v33, -1, -1);
        }

        v19 = v231;
      }

      v35 = *(v3 + 328);
      v34 = *(v3 + 336);
      swift_beginAccess();
      sub_2324CE250(v34, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2324E1E80(0, v21[2] + 1, 1, v21);
      }

      v37 = v21[2];
      v36 = v21[3];
      if (v37 >= v36 >> 1)
      {
        v21 = sub_2324E1E80((v36 > 1), v37 + 1, 1, v21);
      }

      v38 = *(v3 + 328);
      v39 = *(v3 + 336);
      v21[2] = v37 + 1;
      sub_23251FBDC(v38, v21 + v19 + v37 * v239, type metadata accessor for NDFDevice);
      v4 = sub_23251FC44(v39, type metadata accessor for NDFDevice);
      v20 += v239;
      --v5;
    }

    while (v5);
    v6 = &unk_2814D7000;
    v40 = v226;
    v7 = &off_232547000;
    goto LABEL_18;
  }

  v40 = 0;
  v21 = MEMORY[0x277D84F90];
LABEL_18:
  *(v3 + 344) = v40;
  *(v3 + 352) = v21;
  v41 = v21[2];
  *(v3 + 360) = v41;
  if (!v41)
  {
    v43 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
LABEL_85:
    *(v3 + 544) = v47;
    *(v3 + 536) = v43;
    *(v3 + 528) = 0;
    v184 = *(v3 + 647);
    sub_23251BB00();
    if (v184 == 1)
    {
      *(v3 + 552) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

      v185 = sub_232545888();
      v186 = sub_232546208();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = *(v3 + 344);
        v188 = swift_slowAlloc();
        *v188 = 134218240;
        *(v188 + 4) = v47[2];

        *(v188 + 12) = 2048;
        *(v188 + 14) = v187;

        _os_log_impl(&dword_2324C0000, v185, v186, "Ready to process %ld changed (of %ld total) incoming device updates", v188, 0x16u);
        MEMORY[0x238386450](v188, -1, -1);
      }

      else
      {
      }

      if (v47[2])
      {
        v189 = sub_2324C8418();
        v190 = *v189;
        *(v3 + 560) = *v189;
        if (v190)
        {
          v191 = *v190 + 168;
          *(v3 + 568) = *v191;
          *(v3 + 576) = v191 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

          v4 = sub_2325107BC;
          a2 = v190;
          a3 = 0;

          return MEMORY[0x2822009F8](v4, a2, a3);
        }

        v204 = sub_232545888();
        v205 = sub_2325461F8();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&dword_2324C0000, v204, v205, "No persistence controller available", v206, 2u);
          MEMORY[0x238386450](v206, -1, -1);
        }

        v47 = *(v3 + 544);
      }
    }

    *(v3 + 616) = v47;
    v207 = *(v3 + 536);
    if (*(v207 + 16))
    {

      v208 = sub_232545888();
      v209 = sub_232546208();
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        *v210 = 134217984;
        *(v210 + 4) = *(v207 + 16);

        _os_log_impl(&dword_2324C0000, v208, v209, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v210, 0xCu);
        MEMORY[0x238386450](v210, -1, -1);
      }

      else
      {
      }

      v217 = *(**(v3 + 176) + 512);
      v244 = (v217 + *v217);
      v218 = swift_task_alloc();
      *(v3 + 624) = v218;
      *v218 = v3;
      v218[1] = sub_232511298;
      v201 = *(v3 + 536);
      v202 = v244;

      return v202(v201);
    }

    v212 = *((*(**(v3 + 176) + 192))(v211) + 16);

    if (v212)
    {
      v213 = *(*(v3 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

      if ((v213 & 1) == 0)
      {
        v214 = *(**(v3 + 176) + 304);
        v243 = (v214 + *v214);
        v215 = swift_task_alloc();
        *(v3 + 632) = v215;
        *v215 = v3;
        v215[1] = sub_232511624;
        v216 = v243;

        return v216();
      }
    }

    else
    {
    }

LABEL_117:

    v219 = *(v3 + 8);

    return v219();
  }

  v42 = 0;
  v227 = v3 + 16;
  v43 = MEMORY[0x277D84F90];
  v44 = *(v3 + 264);
  v45 = &qword_27DD93578;
  v46 = &unk_2325480F0;
  *(v3 + 368) = v6[21];
  *(v3 + 640) = *(v44 + 80);
  v234 = *(v7 + 48);
  v47 = v43;
  while (1)
  {
    *(v3 + 384) = v43;
    *(v3 + 392) = v47;
    *(v3 + 376) = v42;
    v50 = *(v3 + 352);
    if (v42 >= *(v50 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v4, a2, a3);
    }

    v240 = v43;
    v51 = *(v3 + 312);
    v52 = *(v3 + 320);
    v53 = v50 + ((*(v3 + 640) + 32) & ~*(v3 + 640));
    v54 = *(*(v3 + 264) + 72);
    *(v3 + 400) = v54;
    sub_2324CE250(v53 + v54 * v42, v52);
    sub_2324CE250(v52, v51);
    v55 = sub_232545888();
    v56 = sub_2325461D8();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v3 + 312);
    v235 = v47;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v245 = v60;
      *v59 = v234;
      v61 = sub_2324F6270();
      v63 = v62;
      sub_23251FC44(v58, type metadata accessor for NDFDevice);
      v64 = sub_2324C2220(v61, v63, &v245);
      v46 = &unk_2325480F0;

      *(v59 + 4) = v64;
      _os_log_impl(&dword_2324C0000, v55, v56, "Obtained device update %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x238386450](v60, -1, -1);
      MEMORY[0x238386450](v59, -1, -1);
    }

    else
    {

      sub_23251FC44(v58, type metadata accessor for NDFDevice);
    }

    v65 = *(v3 + 256);
    v66 = *(v3 + 264);
    v68 = *(v3 + 216);
    v67 = *(v3 + 224);
    v69 = sub_2325083A8(v67, *(v3 + 320));
    *(v3 + 644) = v69;
    sub_2324CF3C4(v67, v68, v45, v46);
    if ((*(v66 + 48))(v68, 1, v65) == 1)
    {
      v70 = *(v3 + 320);
      v71 = *(v3 + 272);
      sub_2324C28AC(*(v3 + 216), v45, v46);
      sub_2324CE250(v70, v71);
      v72 = v46;
      v73 = sub_232545888();
      v74 = sub_2325461E8();
      v75 = os_log_type_enabled(v73, v74);
      v76 = *(v3 + 320);
      v77 = *(v3 + 272);
      v78 = *(v3 + 224);
      if (v75)
      {
        v232 = *(v3 + 224);
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v245 = v80;
        *v79 = v234;
        v81 = sub_2324F6270();
        v230 = v76;
        v83 = v82;
        sub_23251FC44(v77, type metadata accessor for NDFDevice);
        v84 = sub_2324C2220(v81, v83, &v245);

        *(v79 + 4) = v84;
        _os_log_impl(&dword_2324C0000, v73, v74, "No updates to device %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        v85 = v80;
        v45 = &qword_27DD93578;
        MEMORY[0x238386450](v85, -1, -1);
        MEMORY[0x238386450](v79, -1, -1);

        sub_2324C28AC(v232, &qword_27DD93578, v72);
        v86 = v230;
      }

      else
      {

        sub_23251FC44(v77, type metadata accessor for NDFDevice);
        sub_2324C28AC(v78, v45, v72);
        v86 = v76;
      }

      v4 = sub_23251FC44(v86, type metadata accessor for NDFDevice);
      v46 = v72;
      v47 = v235;
LABEL_83:
      v43 = v240;
      goto LABEL_21;
    }

    v87 = *(v3 + 646);
    sub_23251FBDC(*(v3 + 216), *(v3 + 304), type metadata accessor for NDFDevice);
    if (v87 == 1 && v69 >= 0x100u)
    {
      break;
    }

LABEL_64:
    *(v3 + 488) = 0;
    v153 = *(v3 + 304);
    v154 = *(v3 + 288);
    swift_beginAccess();
    sub_2324CE250(v153, v154);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v3 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_2324E1E80(0, v47[2] + 1, 1, *(v3 + 392));
    }

    v157 = v47[2];
    v156 = v47[3];
    if (v157 >= v156 >> 1)
    {
      v47 = sub_2324E1E80((v156 > 1), v157 + 1, 1, v47);
    }

    *(v3 + 496) = v47;
    v158 = *(v3 + 400);
    v159 = *(v3 + 640);
    v160 = *(v3 + 288);
    v161 = *(v3 + 644);
    v47[2] = v157 + 1;
    sub_23251FBDC(v160, v47 + ((v159 + 32) & ~v159) + v158 * v157, type metadata accessor for NDFDevice);
    v43 = *(v3 + 384);
    if (v161 > 0xFF || (v161 & 1) != 0)
    {
      sub_2324CE250(*(v3 + 304), *(v3 + 280));
      v162 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v3 + 384);
      if ((v162 & 1) == 0)
      {
        v43 = sub_2324E1E80(0, v43[2] + 1, 1, *(v3 + 384));
      }

      v164 = v43[2];
      v163 = v43[3];
      if (v164 >= v163 >> 1)
      {
        v43 = sub_2324E1E80((v163 > 1), v164 + 1, 1, v43);
      }

      v165 = *(v3 + 400);
      v166 = *(v3 + 640);
      v167 = *(v3 + 280);
      v43[2] = v164 + 1;
      sub_23251FBDC(v167, v43 + ((v166 + 32) & ~v166) + v165 * v164, type metadata accessor for NDFDevice);
    }

    *(v3 + 504) = v43;
    v168 = *(v3 + 646);
    (*(**(v3 + 176) + 368))(*(v3 + 304));
    if (v168 == 1)
    {
      v169 = sub_232545888();
      v170 = sub_2325461D8();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        *v171 = 0;
        _os_log_impl(&dword_2324C0000, v169, v170, "Post-update actions for this local device", v171, 2u);
        MEMORY[0x238386450](v171, -1, -1);
      }

      v172 = *sub_2324C8418();
      if (v172)
      {
        v192 = *(v172 + 152);
        *(v3 + 512) = v192;

        v193 = sub_232545888();
        v194 = sub_232546208();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v245 = v196;
          *v195 = v234;
          v197 = sub_2324F6270();
          v199 = sub_2324C2220(v197, v198, &v245);

          *(v195 + 4) = v199;
          _os_log_impl(&dword_2324C0000, v193, v194, "Submitting CK device update: %s", v195, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v196);
          MEMORY[0x238386450](v196, -1, -1);
          MEMORY[0x238386450](v195, -1, -1);
        }

        v242 = (*(*v192 + 344) + **(*v192 + 344));
        v200 = swift_task_alloc();
        *(v3 + 520) = v200;
        *v200 = v3;
        v200[1] = sub_23250EC64;
        v201 = *(v3 + 304);
        v202 = v242;

        return v202(v201);
      }

      v240 = v43;
      v173 = sub_232545888();
      v174 = sub_2325461F8();
      v175 = os_log_type_enabled(v173, v174);
      v176 = *(v3 + 320);
      v177 = *(v3 + 304);
      v178 = *(v3 + 224);
      if (v175)
      {
        v237 = *(v3 + 304);
        v179 = v45;
        v180 = v47;
        v181 = swift_slowAlloc();
        *v181 = 0;
        _os_log_impl(&dword_2324C0000, v173, v174, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v181, 2u);
        v182 = v181;
        v47 = v180;
        v45 = v179;
        MEMORY[0x238386450](v182, -1, -1);

        sub_2324C28AC(v178, v179, v46);
        sub_23251FC44(v176, type metadata accessor for NDFDevice);
        v183 = v237;
      }

      else
      {

        sub_2324C28AC(v178, v45, v46);
        sub_23251FC44(v176, type metadata accessor for NDFDevice);
        v183 = v177;
      }

      v4 = sub_23251FC44(v183, type metadata accessor for NDFDevice);
      goto LABEL_83;
    }

    v48 = *(v3 + 320);
    v49 = *(v3 + 304);
    sub_2324C28AC(*(v3 + 224), v45, v46);
    sub_23251FC44(v48, type metadata accessor for NDFDevice);
    v4 = sub_23251FC44(v49, type metadata accessor for NDFDevice);
LABEL_21:
    v42 = *(v3 + 376) + 1;
    if (v42 == *(v3 + 360))
    {
      goto LABEL_85;
    }
  }

  v88 = sub_232545888();
  v89 = sub_232546208();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_2324C0000, v88, v89, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v90, 2u);
    MEMORY[0x238386450](v90, -1, -1);
  }

  v91 = *(v3 + 304);
  v92 = *(v3 + 256);

  swift_beginAccess();
  v93 = (v91 + v92[8]);
  v94 = *v93;
  *(v3 + 408) = *v93;
  v95 = v93[1];
  *(v3 + 416) = v95;
  v96 = (v91 + v92[9]);
  v97 = *v96;
  *(v3 + 424) = *v96;
  v98 = v96[1];
  *(v3 + 432) = v98;
  *(v3 + 648) = *(v91 + v92[15]);
  if (v95 >> 60 != 15)
  {
    sub_2324DB3D0(v94, v95);
    sub_2324DB3D0(v94, v95);
    sub_2324DB3D0(v97, v98);
    sub_2324DB3D0(v94, v95);
    v99 = sub_232545888();
    v100 = sub_2325461E8();
    sub_2324DB438(v94, v95);
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v245 = v102;
      *v101 = v234;
      sub_2324DB3E4(v94, v95);
      v103 = sub_2325455B8();
      v105 = v104;
      sub_2324DB438(v94, v95);
      v106 = sub_2324C2220(v103, v105, &v245);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_2324C0000, v99, v100, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x238386450](v102, -1, -1);
      MEMORY[0x238386450](v101, -1, -1);
    }

    v45 = &qword_27DD93578;
    v108 = *sub_2324C8418();
    if (v108)
    {
      v220 = *(v108 + 136);
      *(v3 + 440) = v220;
      v221 = *(*v220 + 104);

      v238 = (v221 + *v221);
      v222 = swift_task_alloc();
      *(v3 + 448) = v222;
      *v222 = v3;
      v223 = sub_23250B4A0;
      goto LABEL_122;
    }

    sub_2324DB438(v94, v95);
    v109 = *(v3 + 432);
    if (v109 >> 60 != 15)
    {
      sub_2324DB3E4(*(v3 + 424), v109);
      v110 = sub_232545888();
      v111 = sub_2325461D8();
      v112 = os_log_type_enabled(v110, v111);
      v114 = *(v3 + 424);
      v113 = *(v3 + 432);
      if (v112)
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_2324C0000, v110, v111, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v115, 2u);
        MEMORY[0x238386450](v115, -1, -1);
      }

      sub_2324DB438(v114, v113);
    }

    v107 = 1;
    goto LABEL_51;
  }

  sub_2324DB3D0(v97, v98);
  if (v98 >> 60 == 15)
  {
    v107 = 0;
LABEL_50:
    v45 = &qword_27DD93578;
LABEL_51:
    v125 = sub_232545888();
    v126 = sub_232546208();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v245 = v128;
      *v127 = 136315394;
      if (v107)
      {
        v129 = 7233874;
      }

      else
      {
        v129 = 0x20746F6E20646944;
      }

      if (v107)
      {
        v130 = 0xE300000000000000;
      }

      else
      {
        v130 = 0xEB000000006E7572;
      }

      v131 = sub_2324C2220(v129, v130, &v245);

      *(v127 + 4) = v131;
      *(v127 + 12) = 2080;
      v132 = sub_2324C2220(0x6E776F6E6B6E75, 0xE700000000000000, &v245);

      *(v127 + 14) = v132;
      _os_log_impl(&dword_2324C0000, v125, v126, "%s Bonjour probe, network restricts multicast traffic: %s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v128, -1, -1);
      MEMORY[0x238386450](v127, -1, -1);
    }

    if (*(v3 + 648) != 2)
    {
      v133 = sub_232545888();
      v134 = sub_2325461D8();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v245 = v136;
        *v135 = 136315394;
        sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v137 = sub_232546608();
        v139 = sub_2324C2220(v137, v138, &v245);

        *(v135 + 4) = v139;
        *(v135 + 12) = 2080;
        v140 = sub_2324C2220(7104878, 0xE300000000000000, &v245);

        *(v135 + 14) = v140;
        _os_log_impl(&dword_2324C0000, v133, v134, "About to update multicastTrafficBlocked property for %s to %s", v135, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v136, -1, -1);
        MEMORY[0x238386450](v135, -1, -1);
      }

      v142 = *(v3 + 296);
      v141 = *(v3 + 304);
      v143 = *(v3 + 256);
      v144 = *(v3 + 264);
      v145 = *(v3 + 240);
      v146 = *(v3 + 248);
      v147 = *(v3 + 232);
      v233 = *(v3 + 200);
      v148 = *(v3 + 192);
      v236 = *(v3 + 184);
      v241 = *(v3 + 208);
      v149 = *(v3 + 176);
      *(v141 + *(v143 + 60)) = 2;
      sub_232545668();
      (*(v145 + 40))(v141 + *(v143 + 20), v146, v147);
      sub_2324CE250(v141, v142);
      swift_beginAccess();
      sub_2324F6DD8(v142);
      swift_endAccess();
      sub_23251FC44(v142, type metadata accessor for NDFDevice);
      (*(v148 + 16))(v233, v141, v236);
      sub_2324CE250(v141, v241);
      (*(v144 + 56))(v241, 0, 1, v143);
      v150 = (*(*v149 + 184))(v227);
      sub_2324FCF78(v241, v233);
      v150(v227, 0);
      v45 = &qword_27DD93578;
    }

    v151 = *(v3 + 424);
    v152 = *(v3 + 432);
    sub_2324DB438(*(v3 + 408), *(v3 + 416));
    sub_2324DB438(v151, v152);
    v46 = &unk_2325480F0;
    goto LABEL_64;
  }

  sub_2324DB3D0(v97, v98);
  sub_2324DB3E4(v97, v98);
  v116 = sub_232545888();
  v117 = sub_2325461E8();
  sub_2324DB438(v97, v98);
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v245 = v119;
    *v118 = v234;
    sub_2324DB3E4(v97, v98);
    v120 = sub_2325455B8();
    v122 = v121;
    sub_2324DB438(v97, v98);
    v123 = sub_2324C2220(v120, v122, &v245);

    *(v118 + 4) = v123;
    _os_log_impl(&dword_2324C0000, v116, v117, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x238386450](v119, -1, -1);
    MEMORY[0x238386450](v118, -1, -1);
  }

  v124 = *sub_2324C8418();
  if (!v124)
  {
    sub_2324DB438(v97, v98);
    v107 = 1;
    goto LABEL_50;
  }

  v224 = *(v124 + 136);
  *(v3 + 464) = v224;
  v225 = *(*v224 + 104);

  v238 = (v225 + *v225);
  v222 = swift_task_alloc();
  *(v3 + 472) = v222;
  *v222 = v3;
  v223 = sub_23250D070;
LABEL_122:
  v222[1] = v223;
  v216 = v238;

  return v216();
}

uint64_t sub_23250B4A0(char a1)
{
  v4 = *v2;
  *(v4 + 456) = v1;

  v5 = *(v4 + 176);
  if (v1)
  {

    v6 = sub_2325118D4;
  }

  else
  {

    *(v4 + 649) = a1 & 1;
    v6 = sub_23250B610;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23250B610()
{
  v201 = v0;
  v189 = v0 + 16;
  v1 = *(v0 + 649);
  sub_2324DB438(*(v0 + 408), *(v0 + 416));
  v190 = *(v0 + 456);
  v191 = v0;
LABEL_2:
  v2 = *(v0 + 432);
  if (v2 >> 60 != 15)
  {
    sub_2324DB3E4(*(v0 + 424), v2);
    v3 = sub_232545888();
    v4 = sub_2325461D8();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 424);
    v6 = *(v0 + 432);
    if (v5)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2324C0000, v3, v4, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v8, 2u);
      MEMORY[0x238386450](v8, -1, -1);
    }

    sub_2324DB438(v7, v6);
  }

  v9 = 1;
LABEL_7:
  v10 = v191;
  v11 = sub_232545888();
  v12 = sub_232546208();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v200 = v14;
    *v13 = 136315394;
    if (v9)
    {
      v15 = 7233874;
    }

    else
    {
      v15 = 0x20746F6E20646944;
    }

    if (v9)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xEB000000006E7572;
    }

    v17 = sub_2324C2220(v15, v16, &v200);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = 1702195828;
    if ((v1 & 1) == 0)
    {
      v18 = 0x65736C6166;
    }

    v19 = 0xE500000000000000;
    if (v1)
    {
      v19 = 0xE400000000000000;
    }

    if (v1 == 2)
    {
      v20 = 0x6E776F6E6B6E75;
    }

    else
    {
      v20 = v18;
    }

    if (v1 == 2)
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = v19;
    }

    v22 = sub_2324C2220(v20, v21, &v200);
    v10 = v191;

    *(v13 + 14) = v22;
    _os_log_impl(&dword_2324C0000, v11, v12, "%s Bonjour probe, network restricts multicast traffic: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v14, -1, -1);
    MEMORY[0x238386450](v13, -1, -1);
  }

  v23 = *(v10 + 648);
  if (v1 != 2)
  {
    if (v23 != 2 && ((v23 ^ v1) & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_30:
    v24 = sub_232545888();
    v25 = sub_2325461D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v200 = v27;
      *v26 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_232546608();
      v30 = sub_2324C2220(v28, v29, &v200);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = 1702195828;
      if ((v1 & 1) == 0)
      {
        v31 = 0x65736C6166;
      }

      v32 = 0xE500000000000000;
      if (v1)
      {
        v32 = 0xE400000000000000;
      }

      if (v1 == 2)
      {
        v33 = 7104878;
      }

      else
      {
        v33 = v31;
      }

      if (v1 == 2)
      {
        v34 = 0xE300000000000000;
      }

      else
      {
        v34 = v32;
      }

      v35 = sub_2324C2220(v33, v34, &v200);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_2324C0000, v24, v25, "About to update multicastTrafficBlocked property for %s to %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v27, -1, -1);
      MEMORY[0x238386450](v26, -1, -1);
    }

    v36 = v1;
    v38 = *(v10 + 296);
    v37 = *(v10 + 304);
    v40 = *(v10 + 256);
    v39 = *(v10 + 264);
    v41 = *(v10 + 240);
    v42 = *(v10 + 248);
    v43 = *(v10 + 232);
    v188 = *(v10 + 200);
    v44 = *(v10 + 192);
    v192 = *(v10 + 184);
    v195 = *(v10 + 208);
    v45 = *(v10 + 176);
    *(v37 + *(v40 + 60)) = v36;
    sub_232545668();
    (*(v41 + 40))(v37 + *(v40 + 20), v42, v43);
    sub_2324CE250(v37, v38);
    swift_beginAccess();
    sub_2324F6DD8(v38);
    swift_endAccess();
    sub_23251FC44(v38, type metadata accessor for NDFDevice);
    (*(v44 + 16))(v188, v37, v192);
    sub_2324CE250(v37, v195);
    (*(v39 + 56))(v195, 0, 1, v40);
    v46 = (*(*v45 + 184))(v189);
    sub_2324FCF78(v195, v188);
    v46(v189, 0);
    goto LABEL_43;
  }

  if (v23 != 2)
  {
    goto LABEL_30;
  }

LABEL_43:
  v47 = *(v10 + 424);
  v48 = *(v10 + 432);
  sub_2324DB438(*(v10 + 408), *(v10 + 416));
  sub_2324DB438(v47, v48);
  while (2)
  {
    *(v10 + 488) = v190;
    v49 = *(v10 + 304);
    v50 = *(v10 + 288);
    swift_beginAccess();
    sub_2324CE250(v49, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v10 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v52 = sub_2324E1E80(0, v52[2] + 1, 1, *(v10 + 392));
    }

    v54 = v52[2];
    v53 = v52[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_2324E1E80((v53 > 1), v54 + 1, 1, v52);
    }

    *(v10 + 496) = v52;
    v55 = *(v10 + 400);
    v56 = *(v10 + 640);
    v57 = *(v10 + 288);
    v58 = *(v10 + 644);
    v52[2] = v54 + 1;
    sub_23251FBDC(v57, v52 + ((v56 + 32) & ~v56) + v55 * v54, type metadata accessor for NDFDevice);
    v59 = *(v10 + 384);
    if (v58 > 0xFF || (v58 & 1) != 0)
    {
      sub_2324CE250(*(v10 + 304), *(v10 + 280));
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(v10 + 384);
      if ((v60 & 1) == 0)
      {
        v59 = sub_2324E1E80(0, v59[2] + 1, 1, *(v10 + 384));
      }

      v62 = v59[2];
      v61 = v59[3];
      if (v62 >= v61 >> 1)
      {
        v59 = sub_2324E1E80((v61 > 1), v62 + 1, 1, v59);
      }

      v63 = *(v10 + 400);
      v64 = *(v10 + 640);
      v65 = *(v10 + 280);
      v59[2] = v62 + 1;
      sub_23251FBDC(v65, v59 + ((v64 + 32) & ~v64) + v63 * v62, type metadata accessor for NDFDevice);
    }

    *(v10 + 504) = v59;
    v66 = *(v10 + 646);
    (*(**(v10 + 176) + 368))(*(v10 + 304));
    v196 = v59;
    if (v66 == 1)
    {
      v67 = sub_232545888();
      v68 = sub_2325461D8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_2324C0000, v67, v68, "Post-update actions for this local device", v69, 2u);
        MEMORY[0x238386450](v69, -1, -1);
      }

      v70 = *sub_2324C8418();
      if (v70)
      {
        v171 = *(v70 + 152);
        *(v10 + 512) = v171;

        v172 = sub_232545888();
        v173 = sub_232546208();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          v200 = v175;
          *v174 = 136315138;
          v176 = sub_2324F6270();
          v178 = sub_2324C2220(v176, v177, &v200);

          *(v174 + 4) = v178;
          _os_log_impl(&dword_2324C0000, v172, v173, "Submitting CK device update: %s", v174, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v175);
          MEMORY[0x238386450](v175, -1, -1);
          v179 = v174;
          v10 = v191;
          MEMORY[0x238386450](v179, -1, -1);
        }

        v199 = (*(*v171 + 344) + **(*v171 + 344));
        v180 = swift_task_alloc();
        *(v10 + 520) = v180;
        *v180 = v10;
        v180[1] = sub_23250EC64;
        v168 = *(v10 + 304);
        v169 = v199;

        return v169(v168);
      }

      v71 = sub_232545888();
      v72 = sub_2325461F8();
      v73 = os_log_type_enabled(v71, v72);
      v74 = *(v10 + 320);
      v75 = *(v10 + 304);
      v76 = *(v10 + 224);
      if (v73)
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_2324C0000, v71, v72, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v77, 2u);
        v78 = v77;
        v59 = v196;
        MEMORY[0x238386450](v78, -1, -1);
      }
    }

    else
    {
      v74 = *(v10 + 320);
      v75 = *(v10 + 304);
      v76 = *(v10 + 224);
    }

    sub_2324C28AC(v76, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v74, type metadata accessor for NDFDevice);
    sub_23251FC44(v75, type metadata accessor for NDFDevice);
    v79 = *(v10 + 376) + 1;
    v193 = v52;
    if (v79 != *(v10 + 360))
    {
      while (1)
      {
        *(v10 + 384) = v59;
        *(v10 + 392) = v52;
        *(v10 + 376) = v79;
        v87 = *(v10 + 352);
        if (v79 >= *(v87 + 16))
        {
          __break(1u);
LABEL_122:
          v181 = *(v79 + 136);
          *(v191 + 464) = v181;
          v182 = *(*v181 + 104);

          v194 = (v182 + *v182);
          v183 = swift_task_alloc();
          *(v191 + 472) = v183;
          *v183 = v191;
          v184 = sub_23250D070;
          goto LABEL_123;
        }

        v88 = *(v10 + 312);
        v89 = *(v10 + 320);
        v90 = v87 + ((*(v10 + 640) + 32) & ~*(v10 + 640));
        v91 = *(*(v10 + 264) + 72);
        *(v10 + 400) = v91;
        sub_2324CE250(v90 + v91 * v79, v89);
        sub_2324CE250(v89, v88);
        v92 = sub_232545888();
        v93 = sub_2325461D8();
        v94 = os_log_type_enabled(v92, v93);
        v95 = *(v10 + 312);
        if (v94)
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v200 = v97;
          *v96 = 136315138;
          v98 = sub_2324F6270();
          v100 = v99;
          sub_23251FC44(v95, type metadata accessor for NDFDevice);
          v101 = sub_2324C2220(v98, v100, &v200);

          *(v96 + 4) = v101;
          _os_log_impl(&dword_2324C0000, v92, v93, "Obtained device update %s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v97);
          MEMORY[0x238386450](v97, -1, -1);
          MEMORY[0x238386450](v96, -1, -1);
        }

        else
        {

          sub_23251FC44(v95, type metadata accessor for NDFDevice);
        }

        v102 = *(v10 + 256);
        v103 = *(v10 + 264);
        v105 = *(v10 + 216);
        v104 = *(v10 + 224);
        v106 = sub_2325083A8(v104, *(v10 + 320));
        *(v10 + 644) = v106;
        sub_2324CF3C4(v104, v105, &qword_27DD93578, &unk_2325480F0);
        if ((*(v103 + 48))(v105, 1, v102) != 1)
        {
          break;
        }

        v107 = *(v10 + 320);
        v108 = *(v10 + 272);
        sub_2324C28AC(*(v10 + 216), &qword_27DD93578, &unk_2325480F0);
        sub_2324CE250(v107, v108);
        v109 = sub_232545888();
        v110 = sub_2325461E8();
        v111 = os_log_type_enabled(v109, v110);
        v112 = *(v10 + 320);
        v113 = *(v10 + 272);
        v114 = *(v10 + 224);
        if (v111)
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v200 = v81;
          *v80 = 136315138;
          v82 = sub_2324F6270();
          v84 = v83;
          sub_23251FC44(v113, type metadata accessor for NDFDevice);
          v85 = sub_2324C2220(v82, v84, &v200);

          *(v80 + 4) = v85;
          _os_log_impl(&dword_2324C0000, v109, v110, "No updates to device %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          v86 = v81;
          v10 = v191;
          MEMORY[0x238386450](v86, -1, -1);
          MEMORY[0x238386450](v80, -1, -1);
        }

        else
        {

          sub_23251FC44(v113, type metadata accessor for NDFDevice);
        }

        sub_2324C28AC(v114, &qword_27DD93578, &unk_2325480F0);
        sub_23251FC44(v112, type metadata accessor for NDFDevice);
        v52 = v193;
        v59 = v196;
        v79 = *(v10 + 376) + 1;
        if (v79 == *(v10 + 360))
        {
          goto LABEL_88;
        }
      }

      v115 = *(v10 + 646);
      sub_23251FBDC(*(v10 + 216), *(v10 + 304), type metadata accessor for NDFDevice);
      if (v115 != 1 || v106 < 0x100u)
      {
        continue;
      }

      v116 = sub_232545888();
      v117 = sub_232546208();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_2324C0000, v116, v117, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v118, 2u);
        MEMORY[0x238386450](v118, -1, -1);
      }

      v119 = *(v10 + 304);
      v120 = *(v10 + 256);

      swift_beginAccess();
      v121 = (v119 + v120[8]);
      v122 = *v121;
      *(v10 + 408) = *v121;
      v123 = v121[1];
      *(v10 + 416) = v123;
      v124 = (v119 + v120[9]);
      v125 = *v124;
      *(v10 + 424) = *v124;
      v126 = v10;
      v127 = v124[1];
      *(v126 + 432) = v127;
      *(v126 + 648) = *(v119 + v120[15]);
      if (v123 >> 60 == 15)
      {
        sub_2324DB3D0(v125, v127);
        v1 = 2;
        v9 = v127 >> 60 != 15;
        if (v127 >> 60 == 15)
        {
          goto LABEL_7;
        }

        sub_2324DB3D0(v125, v127);
        sub_2324DB3E4(v125, v127);
        v128 = sub_232545888();
        v129 = sub_2325461E8();
        sub_2324DB438(v125, v127);
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v200 = v131;
          *v130 = 136315138;
          sub_2324DB3E4(v125, v127);
          v132 = sub_2325455B8();
          v134 = v133;
          sub_2324DB438(v125, v127);
          v135 = sub_2324C2220(v132, v134, &v200);

          *(v130 + 4) = v135;
          _os_log_impl(&dword_2324C0000, v128, v129, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v130, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v131);
          MEMORY[0x238386450](v131, -1, -1);
          MEMORY[0x238386450](v130, -1, -1);
        }

        v79 = *sub_2324C8418();
        if (!v79)
        {
          sub_2324DB438(v125, v127);
          v1 = 2;
          goto LABEL_7;
        }

        goto LABEL_122;
      }

      sub_2324DB3D0(v122, v123);
      sub_2324DB3D0(v122, v123);
      sub_2324DB3D0(v125, v127);
      sub_2324DB3D0(v122, v123);
      v136 = sub_232545888();
      v137 = sub_2325461E8();
      sub_2324DB438(v122, v123);
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v200 = v139;
        *v138 = 136315138;
        sub_2324DB3E4(v122, v123);
        v140 = sub_2325455B8();
        v142 = v141;
        sub_2324DB438(v122, v123);
        v143 = sub_2324C2220(v140, v142, &v200);

        *(v138 + 4) = v143;
        _os_log_impl(&dword_2324C0000, v136, v137, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v139);
        MEMORY[0x238386450](v139, -1, -1);
        MEMORY[0x238386450](v138, -1, -1);
      }

      v144 = *sub_2324C8418();
      v0 = v191;
      if (!v144)
      {
        sub_2324DB438(v122, v123);
        v1 = 2;
        goto LABEL_2;
      }

      v185 = *(v144 + 136);
      *(v191 + 440) = v185;
      v186 = *(*v185 + 104);

      v194 = (v186 + *v186);
      v183 = swift_task_alloc();
      *(v191 + 448) = v183;
      *v183 = v191;
      v184 = sub_23250B4A0;
LABEL_123:
      v183[1] = v184;
      v165 = v194;

      return v165();
    }

    break;
  }

LABEL_88:
  *(v10 + 544) = v52;
  *(v10 + 536) = v59;
  *(v10 + 528) = v190;
  v145 = *(v10 + 647);
  sub_23251BB00();
  if (v145 == 1)
  {
    *(v10 + 552) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v146 = sub_232545888();
    v147 = sub_232546208();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = *(v191 + 344);
      v149 = swift_slowAlloc();
      *v149 = 134218240;
      *(v149 + 4) = v52[2];

      *(v149 + 12) = 2048;
      *(v149 + 14) = v148;
      v10 = v191;

      _os_log_impl(&dword_2324C0000, v146, v147, "Ready to process %ld changed (of %ld total) incoming device updates", v149, 0x16u);
      MEMORY[0x238386450](v149, -1, -1);
    }

    else
    {
    }

    if (v52[2])
    {
      v150 = sub_2324C8418();
      v151 = *v150;
      *(v10 + 560) = *v150;
      if (v151)
      {
        v152 = *v151 + 168;
        *(v10 + 568) = *v152;
        *(v10 + 576) = v152 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v151, 0);
      }

      v153 = sub_232545888();
      v154 = sub_2325461F8();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&dword_2324C0000, v153, v154, "No persistence controller available", v155, 2u);
        MEMORY[0x238386450](v155, -1, -1);
      }

      v52 = *(v10 + 544);
    }
  }

  *(v10 + 616) = v52;
  v156 = *(v10 + 536);
  if (*(v156 + 16))
  {

    v157 = sub_232545888();
    v158 = sub_232546208();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 134217984;
      *(v159 + 4) = *(v156 + 16);

      _os_log_impl(&dword_2324C0000, v157, v158, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v159, 0xCu);
      MEMORY[0x238386450](v159, -1, -1);
    }

    else
    {
    }

    v166 = *(**(v191 + 176) + 512);
    v198 = (v166 + *v166);
    v167 = swift_task_alloc();
    *(v191 + 624) = v167;
    *v167 = v191;
    v167[1] = sub_232511298;
    v168 = *(v191 + 536);
    v169 = v198;

    return v169(v168);
  }

  v161 = *((*(**(v10 + 176) + 192))(v160) + 16);

  if (v161)
  {
    v162 = *(*(v10 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v162 & 1) == 0)
    {
      v163 = *(**(v10 + 176) + 304);
      v197 = (v163 + *v163);
      v164 = swift_task_alloc();
      *(v10 + 632) = v164;
      *v164 = v10;
      v164[1] = sub_232511624;
      v165 = v197;

      return v165();
    }
  }

  else
  {
  }

  v170 = *(v10 + 8);

  return v170();
}

uint64_t sub_23250D070(char a1)
{
  v4 = *v2;
  *(v4 + 480) = v1;

  v5 = *(v4 + 176);
  if (v1)
  {

    v6 = sub_232513278;
  }

  else
  {

    *(v4 + 650) = a1 & 1;
    v6 = sub_23250D1E0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23250D1E0()
{
  v202 = v0;
  v190 = v0 + 16;
  v1 = *(v0 + 650);
  sub_2324DB438(*(v0 + 424), *(v0 + 432));
  v2 = 1;
  v191 = *(v0 + 480);
  v192 = v0;
LABEL_2:
  v3 = sub_232545888();
  v4 = sub_232546208();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v201 = v6;
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

    v9 = sub_2324C2220(v7, v8, &v201);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = 1702195828;
    if ((v1 & 1) == 0)
    {
      v10 = 0x65736C6166;
    }

    v11 = 0xE500000000000000;
    if (v1)
    {
      v11 = 0xE400000000000000;
    }

    if (v1 == 2)
    {
      v12 = 0x6E776F6E6B6E75;
    }

    else
    {
      v12 = v10;
    }

    if (v1 == 2)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v11;
    }

    v14 = sub_2324C2220(v12, v13, &v201);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_2324C0000, v3, v4, "%s Bonjour probe, network restricts multicast traffic: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v6, -1, -1);
    MEMORY[0x238386450](v5, -1, -1);
  }

  v15 = v192;
  v16 = *(v192 + 648);
  if (v1 != 2)
  {
    if (v16 != 2 && ((v16 ^ v1) & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_25:
    v17 = sub_232545888();
    v18 = sub_2325461D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v201 = v20;
      *v19 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = sub_232546608();
      v23 = sub_2324C2220(v21, v22, &v201);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = 1702195828;
      if ((v1 & 1) == 0)
      {
        v24 = 0x65736C6166;
      }

      v25 = 0xE500000000000000;
      if (v1)
      {
        v25 = 0xE400000000000000;
      }

      if (v1 == 2)
      {
        v26 = 7104878;
      }

      else
      {
        v26 = v24;
      }

      if (v1 == 2)
      {
        v27 = 0xE300000000000000;
      }

      else
      {
        v27 = v25;
      }

      v28 = sub_2324C2220(v26, v27, &v201);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_2324C0000, v17, v18, "About to update multicastTrafficBlocked property for %s to %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v20, -1, -1);
      MEMORY[0x238386450](v19, -1, -1);
    }

    v29 = v1;
    v31 = *(v192 + 296);
    v30 = *(v192 + 304);
    v33 = *(v192 + 256);
    v32 = *(v192 + 264);
    v34 = *(v192 + 240);
    v35 = *(v192 + 248);
    v36 = *(v192 + 232);
    v189 = *(v192 + 200);
    v37 = *(v192 + 192);
    v193 = *(v192 + 184);
    v196 = *(v192 + 208);
    v38 = *(v192 + 176);
    *(v30 + *(v33 + 60)) = v29;
    sub_232545668();
    (*(v34 + 40))(v30 + *(v33 + 20), v35, v36);
    sub_2324CE250(v30, v31);
    swift_beginAccess();
    sub_2324F6DD8(v31);
    swift_endAccess();
    sub_23251FC44(v31, type metadata accessor for NDFDevice);
    (*(v37 + 16))(v189, v30, v193);
    sub_2324CE250(v30, v196);
    (*(v32 + 56))(v196, 0, 1, v33);
    v39 = (*(*v38 + 184))(v190);
    sub_2324FCF78(v196, v189);
    v39(v190, 0);
    goto LABEL_38;
  }

  if (v16 != 2)
  {
    goto LABEL_25;
  }

LABEL_38:
  v40 = *(v192 + 424);
  v41 = *(v192 + 432);
  sub_2324DB438(*(v192 + 408), *(v192 + 416));
  sub_2324DB438(v40, v41);
  while (2)
  {
    *(v15 + 488) = v191;
    v42 = *(v15 + 304);
    v43 = *(v15 + 288);
    swift_beginAccess();
    sub_2324CE250(v42, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v15 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_2324E1E80(0, v45[2] + 1, 1, *(v15 + 392));
    }

    v47 = v45[2];
    v46 = v45[3];
    if (v47 >= v46 >> 1)
    {
      v45 = sub_2324E1E80((v46 > 1), v47 + 1, 1, v45);
    }

    *(v15 + 496) = v45;
    v48 = *(v15 + 400);
    v49 = *(v15 + 640);
    v50 = *(v15 + 288);
    v51 = *(v15 + 644);
    v45[2] = v47 + 1;
    sub_23251FBDC(v50, v45 + ((v49 + 32) & ~v49) + v48 * v47, type metadata accessor for NDFDevice);
    v52 = *(v15 + 384);
    if (v51 > 0xFF || (v51 & 1) != 0)
    {
      sub_2324CE250(*(v15 + 304), *(v15 + 280));
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v15 + 384);
      if ((v53 & 1) == 0)
      {
        v52 = sub_2324E1E80(0, v52[2] + 1, 1, *(v15 + 384));
      }

      v55 = v52[2];
      v54 = v52[3];
      if (v55 >= v54 >> 1)
      {
        v52 = sub_2324E1E80((v54 > 1), v55 + 1, 1, v52);
      }

      v56 = *(v15 + 400);
      v57 = *(v15 + 640);
      v58 = *(v15 + 280);
      v52[2] = v55 + 1;
      sub_23251FBDC(v58, v52 + ((v57 + 32) & ~v57) + v56 * v55, type metadata accessor for NDFDevice);
    }

    *(v15 + 504) = v52;
    v59 = *(v15 + 646);
    (*(**(v15 + 176) + 368))(*(v15 + 304));
    v197 = v52;
    if (v59 == 1)
    {
      v60 = sub_232545888();
      v61 = sub_2325461D8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2324C0000, v60, v61, "Post-update actions for this local device", v62, 2u);
        MEMORY[0x238386450](v62, -1, -1);
      }

      v63 = *sub_2324C8418();
      if (v63)
      {
        v172 = *(v63 + 152);
        *(v15 + 512) = v172;

        v173 = sub_232545888();
        v174 = sub_232546208();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v201 = v176;
          *v175 = 136315138;
          v177 = sub_2324F6270();
          v179 = sub_2324C2220(v177, v178, &v201);

          *(v175 + 4) = v179;
          _os_log_impl(&dword_2324C0000, v173, v174, "Submitting CK device update: %s", v175, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v176);
          MEMORY[0x238386450](v176, -1, -1);
          v180 = v175;
          v15 = v192;
          MEMORY[0x238386450](v180, -1, -1);
        }

        v200 = (*(*v172 + 344) + **(*v172 + 344));
        v181 = swift_task_alloc();
        *(v15 + 520) = v181;
        *v181 = v15;
        v181[1] = sub_23250EC64;
        v169 = *(v15 + 304);
        v170 = v200;

        return v170(v169);
      }

      v64 = sub_232545888();
      v65 = sub_2325461F8();
      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v15 + 320);
      v68 = *(v15 + 304);
      v69 = *(v15 + 224);
      if (v66)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_2324C0000, v64, v65, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v70, 2u);
        v71 = v70;
        v52 = v197;
        MEMORY[0x238386450](v71, -1, -1);
      }
    }

    else
    {
      v67 = *(v15 + 320);
      v68 = *(v15 + 304);
      v69 = *(v15 + 224);
    }

    sub_2324C28AC(v69, &qword_27DD93578, &unk_2325480F0);
    sub_23251FC44(v67, type metadata accessor for NDFDevice);
    sub_23251FC44(v68, type metadata accessor for NDFDevice);
    v72 = *(v15 + 376) + 1;
    v194 = v45;
    if (v72 != *(v15 + 360))
    {
      while (1)
      {
        *(v15 + 384) = v52;
        *(v15 + 392) = v45;
        *(v15 + 376) = v72;
        v80 = *(v15 + 352);
        if (v72 >= *(v80 + 16))
        {
          __break(1u);
LABEL_121:
          v182 = *(v72 + 136);
          *(v192 + 440) = v182;
          v183 = *(*v182 + 104);

          v195 = (v183 + *v183);
          v184 = swift_task_alloc();
          *(v192 + 448) = v184;
          *v184 = v192;
          v185 = sub_23250B4A0;
          goto LABEL_123;
        }

        v81 = *(v15 + 312);
        v82 = *(v15 + 320);
        v83 = v80 + ((*(v15 + 640) + 32) & ~*(v15 + 640));
        v84 = *(*(v15 + 264) + 72);
        *(v15 + 400) = v84;
        sub_2324CE250(v83 + v84 * v72, v82);
        sub_2324CE250(v82, v81);
        v85 = sub_232545888();
        v86 = sub_2325461D8();
        v87 = os_log_type_enabled(v85, v86);
        v88 = *(v15 + 312);
        if (v87)
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v201 = v90;
          *v89 = 136315138;
          v91 = sub_2324F6270();
          v93 = v92;
          sub_23251FC44(v88, type metadata accessor for NDFDevice);
          v94 = sub_2324C2220(v91, v93, &v201);

          *(v89 + 4) = v94;
          _os_log_impl(&dword_2324C0000, v85, v86, "Obtained device update %s", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x238386450](v90, -1, -1);
          MEMORY[0x238386450](v89, -1, -1);
        }

        else
        {

          sub_23251FC44(v88, type metadata accessor for NDFDevice);
        }

        v95 = *(v15 + 256);
        v96 = *(v15 + 264);
        v98 = *(v15 + 216);
        v97 = *(v15 + 224);
        v99 = sub_2325083A8(v97, *(v15 + 320));
        *(v15 + 644) = v99;
        sub_2324CF3C4(v97, v98, &qword_27DD93578, &unk_2325480F0);
        if ((*(v96 + 48))(v98, 1, v95) != 1)
        {
          break;
        }

        v100 = *(v15 + 320);
        v101 = *(v15 + 272);
        sub_2324C28AC(*(v15 + 216), &qword_27DD93578, &unk_2325480F0);
        sub_2324CE250(v100, v101);
        v102 = sub_232545888();
        v103 = sub_2325461E8();
        v104 = os_log_type_enabled(v102, v103);
        v105 = *(v15 + 320);
        v106 = *(v15 + 272);
        v107 = *(v15 + 224);
        if (v104)
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v201 = v74;
          *v73 = 136315138;
          v75 = sub_2324F6270();
          v77 = v76;
          sub_23251FC44(v106, type metadata accessor for NDFDevice);
          v78 = sub_2324C2220(v75, v77, &v201);

          *(v73 + 4) = v78;
          _os_log_impl(&dword_2324C0000, v102, v103, "No updates to device %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          v79 = v74;
          v15 = v192;
          MEMORY[0x238386450](v79, -1, -1);
          MEMORY[0x238386450](v73, -1, -1);
        }

        else
        {

          sub_23251FC44(v106, type metadata accessor for NDFDevice);
        }

        sub_2324C28AC(v107, &qword_27DD93578, &unk_2325480F0);
        sub_23251FC44(v105, type metadata accessor for NDFDevice);
        v45 = v194;
        v52 = v197;
        v72 = *(v15 + 376) + 1;
        if (v72 == *(v15 + 360))
        {
          goto LABEL_87;
        }
      }

      v108 = *(v15 + 646);
      sub_23251FBDC(*(v15 + 216), *(v15 + 304), type metadata accessor for NDFDevice);
      if (v108 != 1 || v99 < 0x100u)
      {
        continue;
      }

      v109 = sub_232545888();
      v110 = sub_232546208();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_2324C0000, v109, v110, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v111, 2u);
        MEMORY[0x238386450](v111, -1, -1);
      }

      v112 = *(v15 + 304);
      v113 = *(v15 + 256);

      swift_beginAccess();
      v114 = (v112 + v113[8]);
      v115 = *v114;
      *(v15 + 408) = *v114;
      v116 = v15;
      v117 = v114[1];
      *(v116 + 416) = v117;
      v118 = (v112 + v113[9]);
      v119 = *v118;
      *(v116 + 424) = *v118;
      v120 = v118[1];
      *(v116 + 432) = v120;
      *(v116 + 648) = *(v112 + v113[15]);
      if (v117 >> 60 != 15)
      {
        sub_2324DB3D0(v115, v117);
        sub_2324DB3D0(v115, v117);
        sub_2324DB3D0(v119, v120);
        sub_2324DB3D0(v115, v117);
        v121 = sub_232545888();
        v122 = sub_2325461E8();
        sub_2324DB438(v115, v117);
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v201 = v124;
          *v123 = 136315138;
          sub_2324DB3E4(v115, v117);
          v125 = sub_2325455B8();
          v127 = v126;
          sub_2324DB438(v115, v117);
          v128 = sub_2324C2220(v125, v127, &v201);

          *(v123 + 4) = v128;
          _os_log_impl(&dword_2324C0000, v121, v122, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v124);
          MEMORY[0x238386450](v124, -1, -1);
          MEMORY[0x238386450](v123, -1, -1);
        }

        v72 = *sub_2324C8418();
        if (!v72)
        {
          sub_2324DB438(v115, v117);
          v129 = *(v192 + 432);
          v2 = 1;
          v1 = 2;
          if (v129 >> 60 != 15)
          {
            sub_2324DB3E4(*(v192 + 424), v129);
            v130 = sub_232545888();
            v131 = sub_2325461D8();
            v132 = os_log_type_enabled(v130, v131);
            v134 = *(v192 + 424);
            v133 = *(v192 + 432);
            if (v132)
            {
              v1 = 2;
              v135 = swift_slowAlloc();
              *v135 = 0;
              _os_log_impl(&dword_2324C0000, v130, v131, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v135, 2u);
              MEMORY[0x238386450](v135, -1, -1);
              sub_2324DB438(v134, v133);

              v2 = 1;
            }

            else
            {
              sub_2324DB438(*(v192 + 424), *(v192 + 432));

              v2 = 1;
              v1 = 2;
            }
          }

          goto LABEL_2;
        }

        goto LABEL_121;
      }

      sub_2324DB3D0(v119, v120);
      v2 = 0;
      v1 = 2;
      if (v120 >> 60 == 15)
      {
        goto LABEL_2;
      }

      sub_2324DB3D0(v119, v120);
      sub_2324DB3E4(v119, v120);
      v136 = sub_232545888();
      v137 = sub_2325461E8();
      sub_2324DB438(v119, v120);
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v201 = v139;
        *v138 = 136315138;
        sub_2324DB3E4(v119, v120);
        v140 = sub_2325455B8();
        v142 = v141;
        sub_2324DB438(v119, v120);
        v143 = sub_2324C2220(v140, v142, &v201);

        *(v138 + 4) = v143;
        v144 = v192;
        _os_log_impl(&dword_2324C0000, v136, v137, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v139);
        MEMORY[0x238386450](v139, -1, -1);
        MEMORY[0x238386450](v138, -1, -1);
      }

      else
      {
        v144 = v116;
      }

      v145 = *sub_2324C8418();
      if (!v145)
      {
        sub_2324DB438(v119, v120);
        v2 = 1;
        v1 = 2;
        goto LABEL_2;
      }

      v186 = *(v145 + 136);
      *(v144 + 464) = v186;
      v187 = *(*v186 + 104);

      v195 = (v187 + *v187);
      v184 = swift_task_alloc();
      *(v144 + 472) = v184;
      *v184 = v144;
      v185 = sub_23250D070;
LABEL_123:
      v184[1] = v185;
      v166 = v195;

      return v166();
    }

    break;
  }

LABEL_87:
  *(v15 + 544) = v45;
  *(v15 + 536) = v52;
  *(v15 + 528) = v191;
  v146 = *(v15 + 647);
  sub_23251BB00();
  if (v146 == 1)
  {
    *(v15 + 552) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

    v147 = sub_232545888();
    v148 = sub_232546208();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = *(v192 + 344);
      v150 = swift_slowAlloc();
      *v150 = 134218240;
      *(v150 + 4) = v45[2];

      *(v150 + 12) = 2048;
      *(v150 + 14) = v149;
      v15 = v192;

      _os_log_impl(&dword_2324C0000, v147, v148, "Ready to process %ld changed (of %ld total) incoming device updates", v150, 0x16u);
      MEMORY[0x238386450](v150, -1, -1);
    }

    else
    {
    }

    if (v45[2])
    {
      v151 = sub_2324C8418();
      v152 = *v151;
      *(v15 + 560) = *v151;
      if (v152)
      {
        v153 = *v152 + 168;
        *(v15 + 568) = *v153;
        *(v15 + 576) = v153 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

        return MEMORY[0x2822009F8](sub_2325107BC, v152, 0);
      }

      v154 = sub_232545888();
      v155 = sub_2325461F8();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 0;
        _os_log_impl(&dword_2324C0000, v154, v155, "No persistence controller available", v156, 2u);
        MEMORY[0x238386450](v156, -1, -1);
      }

      v45 = *(v15 + 544);
    }
  }

  *(v15 + 616) = v45;
  v157 = *(v15 + 536);
  if (*(v157 + 16))
  {

    v158 = sub_232545888();
    v159 = sub_232546208();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 134217984;
      *(v160 + 4) = *(v157 + 16);

      _os_log_impl(&dword_2324C0000, v158, v159, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v160, 0xCu);
      MEMORY[0x238386450](v160, -1, -1);
    }

    else
    {
    }

    v167 = *(**(v192 + 176) + 512);
    v199 = (v167 + *v167);
    v168 = swift_task_alloc();
    *(v192 + 624) = v168;
    *v168 = v192;
    v168[1] = sub_232511298;
    v169 = *(v192 + 536);
    v170 = v199;

    return v170(v169);
  }

  v162 = *((*(**(v15 + 176) + 192))(v161) + 16);

  if (v162)
  {
    v163 = *(*(v15 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

    if ((v163 & 1) == 0)
    {
      v164 = *(**(v15 + 176) + 304);
      v198 = (v164 + *v164);
      v165 = swift_task_alloc();
      *(v15 + 632) = v165;
      *v165 = v15;
      v165[1] = sub_232511624;
      v166 = v198;

      return v166();
    }
  }

  else
  {
  }

  v171 = *(v15 + 8);

  return v171();
}