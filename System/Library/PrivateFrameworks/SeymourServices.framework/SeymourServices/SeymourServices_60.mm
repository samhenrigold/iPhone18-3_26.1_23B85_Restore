uint64_t sub_2274D4CD8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_2274D6F9C;
  }

  else
  {
    v4 = sub_2274D4E30;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2274D4E30()
{
  v190 = v0;
  v189[2] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 204);
  v2 = HIBYTE(v1);
  LODWORD(v3) = HIWORD(v1);
  v4 = *(v0 + 192);
  v5 = *(v0 + 208);
  v6 = &unk_2813B2000;
LABEL_2:
  v7 = sub_2274E2FEC(v3);
  v9 = v8;
  if (v7 == sub_2274E2FEC(v5) && v9 == v10)
  {
  }

  else
  {
    v11 = sub_22766D190();

    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v0 + 210);
  v13 = sub_2275E0328(v2);
  v15 = v14;
  if (v13 == sub_2275E0328(v12) && v15 == v16)
  {

LABEL_10:
    v18 = *(v0 + 136);
    sub_22766A770();
    v19 = v18;
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 168);
    if (v22)
    {
      v24 = *(v0 + 136);
      v173 = v24;
      v177 = *(v0 + 48);
      v180 = *(v0 + 72);
      v25 = swift_slowAlloc();
      v174 = v23;
      v26 = swift_slowAlloc();
      v189[0] = v26;
      *v25 = 136446466;
      v27 = [v24 configurationName];
      v28 = sub_22766C000();
      v30 = v29;

      v31 = sub_226E97AE8(v28, v30, v189);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2082;
      v32 = sub_22709BF40();
      v34 = sub_226E97AE8(v32, v33, v189);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_226E8E000, v20, v21, "Updated %{public}s to current version %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v26, -1, -1);
      v35 = v25;
      v6 = &unk_2813B2000;
      MEMORY[0x22AA9A450](v35, -1, -1);

      v174(v180, v177);
    }

    else
    {
      v41 = *(v0 + 72);
      v42 = *(v0 + 48);

      v23(v41, v42);
    }

    goto LABEL_17;
  }

  v17 = sub_22766D190();

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_12:
  v36 = v3 | (v2 << 8);
  v37 = v4;
  v38 = sub_2274DDF0C(v36);
  *(v0 + 204) = v38;
  *(v0 + 176) = v40;
  if (v4)
  {
LABEL_50:
    v113 = *(v0 + 136);
    sub_22766A770();
    v114 = v113;
    v115 = sub_22766B380();
    v116 = sub_22766C8B0();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = *(v0 + 136);
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v118 = 138412290;
      *(v118 + 4) = v117;
      *v119 = v117;
      v120 = v117;
      _os_log_impl(&dword_226E8E000, v115, v116, "Got unrecoverable error while trying to update %@", v118, 0xCu);
      sub_226E97D1C(v119, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v119, -1, -1);
      MEMORY[0x22AA9A450](v118, -1, -1);
    }

    v121 = *(v0 + 136);
    v122 = *(v0 + 112);
    v124 = *(v0 + 56);
    v123 = *(v0 + 64);
    v125 = *(v0 + 48);

    (*(v124 + 8))(v123, v125);
    v126 = [v122 persistentStoreCoordinator];
    *(v0 + 32) = 0;
    LODWORD(v121) = [v126 removePersistentStore:v121 error:v0 + 32];

    v127 = *(v0 + 32);
    v128 = *(v0 + 136);
    if (v121)
    {
      v129 = v127;

      v4 = 0;
LABEL_17:
      while (1)
      {
        v44 = *(v0 + 144);
        if (v44 == *(v0 + 128))
        {
          break;
        }

        v45 = *(v0 + 120);
        if ((v45 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x22AA991A0](*(v0 + 144));
        }

        else
        {
          if (v44 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v46 = *(v45 + 8 * v44 + 32);
        }

        v47 = v46;
        *(v0 + 136) = v46;
        *(v0 + 144) = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
LABEL_70:
          __break(1u);
        }

        v48 = [*(v0 + 112) managedObjectModel];
        v49 = sub_2274EF600();
        v51 = v50;

        v52 = v49;
        v37 = v4;
        v53 = sub_2274E3964(v52, v51);
        if (v4)
        {
          goto LABEL_50;
        }

        if (qword_2813A2140 != -1)
        {
          v74 = v53;
          swift_once();
          v53 = v74;
        }

        v54 = word_2813B2670;
        *(v0 + 208) = word_2813B2670;
        v55 = sub_2274E2FEC(v53);
        v57 = v56;
        if (v55 == sub_2274E2FEC(v54) && v57 == v58)
        {
        }

        else
        {
          v60 = sub_22766D190();

          if ((v60 & 1) == 0)
          {
            sub_22766A770();
            v91 = v47;
            v92 = sub_22766B380();
            v93 = sub_22766C890();

            v94 = os_log_type_enabled(v92, v93);
            v95 = *(v0 + 104);
            v97 = *(v0 + 48);
            v96 = *(v0 + 56);
            if (v94)
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v189[0] = v99;
              *v98 = 136446210;
              v100 = [v91 configurationName];
              v101 = sub_22766C000();
              v182 = v95;
              v103 = v102;

              v104 = sub_226E97AE8(v101, v103, v189);

              *(v98 + 4) = v104;
              _os_log_impl(&dword_226E8E000, v92, v93, "Trying to update %{public}s without having loaded it on the current schema.", v98, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v99);
              v105 = v99;
              v6 = &unk_2813B2000;
              MEMORY[0x22AA9A450](v105, -1, -1);
              MEMORY[0x22AA9A450](v98, -1, -1);

              (*(v96 + 8))(v182, v97);
            }

            else
            {

              (*(v96 + 8))(v95, v97);
            }

            v109 = *(v0 + 200);
            v110 = sub_227664DD0();
            sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
            v111 = swift_allocError();
            (*(*(v110 - 8) + 104))(v112, v109, v110);
            swift_willThrow();
            v37 = v111;
            goto LABEL_50;
          }
        }

        v61 = sub_2274EEF88(v47);
        if (v61 == 56)
        {
          sub_22766A770();
          v132 = v47;
          v133 = sub_22766B380();
          v134 = sub_22766C8B0();

          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 96);
          v138 = *(v0 + 48);
          v137 = *(v0 + 56);
          v187 = v132;
          if (v135)
          {
            v185 = *(v0 + 48);
            v139 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v189[0] = v140;
            *v139 = 136446210;
            v141 = [v132 configurationName];
            v142 = sub_22766C000();
            v184 = v136;
            v144 = v143;

            v145 = sub_226E97AE8(v142, v144, v189);

            *(v139 + 4) = v145;
            _os_log_impl(&dword_226E8E000, v133, v134, "Got nil Data Version for %{public}s. Forcing to most recent.", v139, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v140);
            v146 = v140;
            v6 = &unk_2813B2000;
            MEMORY[0x22AA9A450](v146, -1, -1);
            MEMORY[0x22AA9A450](v139, -1, -1);

            (*(v137 + 8))(v184, v185);
          }

          else
          {

            (*(v137 + 8))(v136, v138);
          }

          v147 = v6[1649];
          *(v0 + 209) = v147;
          v148 = swift_task_alloc();
          *(v0 + 152) = v148;
          *v148 = v0;
          v148[1] = sub_2274D3AE0;
          v149 = *(v0 + 112);
          v150 = nullsub_1;
          v151 = (v147 << 8) | (v54 << 16) | (v147 << 24) | v54;
          v152 = 0;
          v153 = v187;
          goto LABEL_61;
        }

        v2 = v61;
        v62 = v6[1649];
        *(v0 + 210) = v62;
        v63 = *(v0 + 208);
        v64 = sub_2274E2FEC(v63);
        v66 = v65;
        if (v64 == sub_2274E2FEC(v63) && v66 == v67)
        {
        }

        else
        {
          v68 = sub_22766D190();

          if ((v68 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v69 = sub_2275E0328(v2);
        v71 = v70;
        if (v69 == sub_2275E0328(v62) && v71 == v72)
        {
          v43 = *(v0 + 136);
        }

        else
        {
          v73 = sub_22766D190();

          if ((v73 & 1) == 0)
          {
LABEL_42:
            v75 = *(v0 + 136);
            sub_22766A770();
            v76 = v75;
            v77 = sub_22766B380();
            v78 = sub_22766C8B0();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = *(v0 + 136);
              v175 = *(v0 + 56);
              v178 = *(v0 + 48);
              v181 = *(v0 + 88);
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v189[0] = v81;
              *v80 = 136446466;
              v82 = [v79 configurationName];
              v83 = sub_22766C000();
              v85 = v84;

              v86 = sub_226E97AE8(v83, v85, v189);

              *(v80 + 4) = v86;
              *(v80 + 12) = 2082;
              v87 = sub_22709BF40();
              v89 = sub_226E97AE8(v87, v88, v189);

              *(v80 + 14) = v89;
              _os_log_impl(&dword_226E8E000, v77, v78, "Updating %{public}s to current version %{public}s", v80, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA9A450](v81, -1, -1);
              v90 = v80;
              v6 = &unk_2813B2000;
              MEMORY[0x22AA9A450](v90, -1, -1);

              v3 = *(v175 + 8);
              v3(v181, v178);
            }

            else
            {
              v106 = *(v0 + 88);
              v107 = *(v0 + 48);
              v108 = *(v0 + 56);

              v3 = *(v108 + 8);
              v3(v106, v107);
            }

            v4 = 0;
            *(v0 + 168) = v3;
            v5 = *(v0 + 208);
            LOBYTE(v3) = v5;
            goto LABEL_2;
          }

          v43 = *(v0 + 136);
        }

        v4 = 0;
      }

      v130 = *(v0 + 8);

      return v130();
    }

    else
    {
      v154 = v127;
      sub_2276622C0();

      swift_willThrow();
      v189[0] = 0;
      v189[1] = 0xE000000000000000;
      sub_22766CE20();
      MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
      v155 = [v128 description];
      v156 = sub_22766C000();
      v158 = v157;

      MEMORY[0x22AA98450](v156, v158);

      MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
      return sub_22766CFB0();
    }
  }

  else
  {
    v186 = v39;
    v188 = v38;
    v159 = v40;

    sub_22766A770();

    v160 = sub_22766B380();
    v161 = sub_22766C8B0();
    v162 = v159;

    if (os_log_type_enabled(v160, v161))
    {
      v179 = *(v0 + 80);
      v183 = *(v0 + 168);
      v176 = *(v0 + 48);
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v189[0] = v165;
      *v164 = 136446210;
      *(v0 + 16) = 0x2870657453;
      *(v0 + 24) = 0xE500000000000000;

      v166 = sub_22709BF40();
      MEMORY[0x22AA98450](v166);

      MEMORY[0x22AA98450](540945696, 0xE400000000000000);
      v167 = sub_22709BF40();
      MEMORY[0x22AA98450](v167);

      MEMORY[0x22AA98450](41, 0xE100000000000000);

      v168 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v189);

      *(v164 + 4) = v168;
      _os_log_impl(&dword_226E8E000, v160, v161, "Executing %{public}s.", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v165);
      MEMORY[0x22AA9A450](v165, -1, -1);
      MEMORY[0x22AA9A450](v164, -1, -1);

      v183(v179, v176);
    }

    else
    {
      v169 = *(v0 + 168);
      v170 = *(v0 + 80);
      v171 = *(v0 + 48);

      v169(v170, v171);
    }

    v172 = swift_task_alloc();
    *(v0 + 184) = v172;
    *v172 = v0;
    v172[1] = sub_2274D4CD8;
    v153 = *(v0 + 136);
    v149 = *(v0 + 112);
    v151 = v188;
    v150 = v186;
    v152 = v162;
LABEL_61:

    return sub_2274DCD0C(v151, v150, v152, v149, v153);
  }
}

uint64_t sub_2274D5F10(uint64_t a1)
{
  v183 = v1;
  v182[2] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 160);
  v3 = &unk_2813B2000;
LABEL_2:
  v4 = *(v1 + 136);
  sub_22766A770();
  v5 = v4;
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_226E8E000, v6, v7, "Got unrecoverable error while trying to update %@", v9, 0xCu);
    sub_226E97D1C(v10, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v12 = *(v1 + 136);
  v13 = *(v1 + 112);
  v15 = *(v1 + 56);
  v14 = *(v1 + 64);
  v16 = *(v1 + 48);

  (*(v15 + 8))(v14, v16);
  v17 = [v13 persistentStoreCoordinator];
  *(v1 + 32) = 0;
  LODWORD(v12) = [v17 removePersistentStore:v12 error:v1 + 32];

  v18 = *(v1 + 32);
  v19 = *(v1 + 136);
  if (!v12)
  {
    v149 = v18;
    sub_2276622C0();

    swift_willThrow();
    v182[0] = 0;
    v182[1] = 0xE000000000000000;
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
    v150 = [v19 description];
    v151 = sub_22766C000();
    v153 = v152;

    MEMORY[0x22AA98450](v151, v153);

    MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
    return sub_22766CFB0();
  }

  v20 = v18;

  while (1)
  {
    v23 = *(v1 + 144);
    if (v23 == *(v1 + 128))
    {
      break;
    }

    v24 = *(v1 + 120);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x22AA991A0](*(v1 + 144));
    }

    else
    {
      if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v25 = *(v24 + 8 * v23 + 32);
    }

    v28 = v25;
    *(v1 + 136) = v25;
    *(v1 + 144) = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    v29 = [*(v1 + 112) managedObjectModel];
    v30 = sub_2274EF600();
    v32 = v31;

    v33 = sub_2274E3964(v30, v32);
    if (qword_2813A2140 != -1)
    {
      v106 = v33;
      swift_once();
      v33 = v106;
    }

    v34 = word_2813B2670;
    *(v1 + 208) = word_2813B2670;
    v35 = sub_2274E2FEC(v33);
    v37 = v36;
    if (v35 == sub_2274E2FEC(v34) && v37 == v38)
    {
    }

    else
    {
      v40 = sub_22766D190();

      if ((v40 & 1) == 0)
      {
        sub_22766A770();
        v107 = v28;
        v108 = sub_22766B380();
        v109 = sub_22766C890();

        v110 = os_log_type_enabled(v108, v109);
        v111 = *(v1 + 104);
        v113 = *(v1 + 48);
        v112 = *(v1 + 56);
        if (v110)
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v182[0] = v115;
          *v114 = 136446210;
          v116 = [v107 configurationName];
          v117 = sub_22766C000();
          v177 = v111;
          v119 = v118;

          v120 = v117;
          v3 = &unk_2813B2000;
          v121 = sub_226E97AE8(v120, v119, v182);

          *(v114 + 4) = v121;
          _os_log_impl(&dword_226E8E000, v108, v109, "Trying to update %{public}s without having loaded it on the current schema.", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v115);
          MEMORY[0x22AA9A450](v115, -1, -1);
          MEMORY[0x22AA9A450](v114, -1, -1);

          (*(v112 + 8))(v177, v113);
        }

        else
        {

          (*(v112 + 8))(v111, v113);
        }

        v122 = *(v1 + 200);
        v123 = sub_227664DD0();
        sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v124 = swift_allocError();
        (*(*(v123 - 8) + 104))(v125, v122, v123);
        swift_willThrow();
        v2 = v124;
        goto LABEL_2;
      }
    }

    v41 = sub_2274EEF88(v28);
    if (v41 == 56)
    {
      sub_22766A770();
      v128 = v28;
      v129 = sub_22766B380();
      v130 = sub_22766C8B0();

      v131 = os_log_type_enabled(v129, v130);
      v132 = *(v1 + 96);
      v134 = *(v1 + 48);
      v133 = *(v1 + 56);
      v180 = v128;
      if (v131)
      {
        v178 = *(v1 + 48);
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v182[0] = v136;
        *v135 = 136446210;
        v137 = [v128 configurationName];
        v138 = sub_22766C000();
        v173 = v132;
        v140 = v139;

        v3 = &unk_2813B2000;
        v141 = sub_226E97AE8(v138, v140, v182);

        *(v135 + 4) = v141;
        _os_log_impl(&dword_226E8E000, v129, v130, "Got nil Data Version for %{public}s. Forcing to most recent.", v135, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v136);
        MEMORY[0x22AA9A450](v136, -1, -1);
        MEMORY[0x22AA9A450](v135, -1, -1);

        (*(v133 + 8))(v173, v178);
      }

      else
      {

        (*(v133 + 8))(v132, v134);
      }

      v142 = v3[1649];
      *(v1 + 209) = v142;
      v143 = swift_task_alloc();
      *(v1 + 152) = v143;
      *v143 = v1;
      v143[1] = sub_2274D3AE0;
      v144 = *(v1 + 112);
      v145 = nullsub_1;
      v146 = (v142 << 8) | (v34 << 16) | (v142 << 24) | v34;
      v147 = 0;
      v148 = v180;
LABEL_57:

      return sub_2274DCD0C(v146, v145, v147, v144, v148);
    }

    v42 = v41;
    v43 = v3[1649];
    *(v1 + 210) = v43;
    v44 = *(v1 + 208);
    v45 = sub_2274E2FEC(v44);
    v47 = v46;
    if (v45 == sub_2274E2FEC(v44) && v47 == v48)
    {
    }

    else
    {
      v49 = sub_22766D190();

      if ((v49 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v50 = sub_2275E0328(v42);
    v52 = v51;
    if (v50 == sub_2275E0328(v43) && v52 == v53)
    {
      v54 = *(v1 + 136);
    }

    else
    {
      v55 = sub_22766D190();

      if (v55)
      {
      }

      else
      {
LABEL_32:
        v56 = *(v1 + 136);
        sub_22766A770();
        v57 = v56;
        v58 = sub_22766B380();
        v59 = sub_22766C8B0();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = *(v1 + 136);
          v169 = *(v1 + 56);
          v171 = *(v1 + 48);
          v175 = *(v1 + 88);
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v182[0] = v62;
          *v61 = 136446466;
          v63 = [v60 configurationName];
          v64 = sub_22766C000();
          v66 = v65;

          v67 = sub_226E97AE8(v64, v66, v182);

          *(v61 + 4) = v67;
          *(v61 + 12) = 2082;
          v68 = sub_22709BF40();
          v70 = sub_226E97AE8(v68, v69, v182);

          *(v61 + 14) = v70;
          _os_log_impl(&dword_226E8E000, v58, v59, "Updating %{public}s to current version %{public}s", v61, 0x16u);
          swift_arrayDestroy();
          v71 = v62;
          v3 = &unk_2813B2000;
          MEMORY[0x22AA9A450](v71, -1, -1);
          MEMORY[0x22AA9A450](v61, -1, -1);

          v72 = *(v169 + 8);
          v72(v175, v171);
        }

        else
        {
          v73 = *(v1 + 88);
          v74 = *(v1 + 48);
          v75 = *(v1 + 56);

          v72 = *(v75 + 8);
          v72(v73, v74);
        }

        *(v1 + 168) = v72;
        v76 = *(v1 + 208);
        v77 = sub_2274E2FEC(*(v1 + 208));
        v79 = v78;
        if (v77 == sub_2274E2FEC(v76) && v79 == v80)
        {
        }

        else
        {
          v81 = sub_22766D190();

          if ((v81 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v82 = *(v1 + 210);
        v83 = sub_2275E0328(v42);
        v85 = v84;
        if (v83 == sub_2275E0328(v82) && v85 == v86)
        {
        }

        else
        {
          v87 = sub_22766D190();

          if ((v87 & 1) == 0)
          {
LABEL_47:
            LODWORD(v25) = sub_2274DDF0C(v76 | (v42 << 8));
            *(v1 + 204) = v25;
            *(v1 + 176) = v27;
LABEL_62:
            v181 = v25;
            v179 = v26;
            v154 = v27;

            sub_22766A770();

            v155 = sub_22766B380();
            v156 = sub_22766C8B0();
            v157 = v154;

            if (os_log_type_enabled(v155, v156))
            {
              v170 = *(v1 + 80);
              v174 = *(v1 + 168);
              v168 = *(v1 + 48);
              v158 = swift_slowAlloc();
              v159 = swift_slowAlloc();
              v182[0] = v159;
              *v158 = 136446210;
              *(v1 + 16) = 0x2870657453;
              *(v1 + 24) = 0xE500000000000000;

              v160 = sub_22709BF40();
              MEMORY[0x22AA98450](v160);

              MEMORY[0x22AA98450](540945696, 0xE400000000000000);
              v161 = sub_22709BF40();
              MEMORY[0x22AA98450](v161);

              MEMORY[0x22AA98450](41, 0xE100000000000000);

              v162 = sub_226E97AE8(*(v1 + 16), *(v1 + 24), v182);

              *(v158 + 4) = v162;
              _os_log_impl(&dword_226E8E000, v155, v156, "Executing %{public}s.", v158, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v159);
              MEMORY[0x22AA9A450](v159, -1, -1);
              MEMORY[0x22AA9A450](v158, -1, -1);

              v174(v170, v168);
            }

            else
            {
              v163 = *(v1 + 168);
              v164 = *(v1 + 80);
              v165 = *(v1 + 48);

              v163(v164, v165);
            }

            v166 = swift_task_alloc();
            *(v1 + 184) = v166;
            *v166 = v1;
            v166[1] = sub_2274D4CD8;
            v148 = *(v1 + 136);
            v144 = *(v1 + 112);
            v146 = v181;
            v145 = v179;
            v147 = v157;
            goto LABEL_57;
          }
        }

        v88 = *(v1 + 136);
        sub_22766A770();
        v89 = v88;
        v90 = sub_22766B380();
        v91 = sub_22766C8B0();

        v92 = os_log_type_enabled(v90, v91);
        v93 = *(v1 + 168);
        if (v92)
        {
          v94 = *(v1 + 136);
          v172 = *(v1 + 48);
          v176 = *(v1 + 72);
          v167 = v94;
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v182[0] = v96;
          *v95 = 136446466;
          v97 = [v94 configurationName];
          v98 = sub_22766C000();
          v100 = v99;

          v101 = v98;
          v3 = &unk_2813B2000;
          v102 = sub_226E97AE8(v101, v100, v182);

          *(v95 + 4) = v102;
          *(v95 + 12) = 2082;
          v103 = sub_22709BF40();
          v105 = sub_226E97AE8(v103, v104, v182);

          *(v95 + 14) = v105;
          _os_log_impl(&dword_226E8E000, v90, v91, "Updated %{public}s to current version %{public}s", v95, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v96, -1, -1);
          MEMORY[0x22AA9A450](v95, -1, -1);

          v93(v176, v172);
        }

        else
        {
          v21 = *(v1 + 72);
          v22 = *(v1 + 48);

          v93(v21, v22);
        }
      }
    }
  }

  v126 = *(v1 + 8);

  return v126();
}

uint64_t sub_2274D6F9C()
{
  v182 = v0;
  v181[2] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 192);
  v2 = &unk_2813B2000;
LABEL_2:
  v3 = *(v0 + 136);
  sub_22766A770();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_226E8E000, v5, v6, "Got unrecoverable error while trying to update %@", v8, 0xCu);
    sub_226E97D1C(v9, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  v15 = *(v0 + 48);

  (*(v14 + 8))(v13, v15);
  v16 = [v12 persistentStoreCoordinator];
  *(v0 + 32) = 0;
  LODWORD(v11) = [v16 removePersistentStore:v11 error:v0 + 32];

  v17 = *(v0 + 32);
  v18 = *(v0 + 136);
  if (!v11)
  {
    v148 = v17;
    sub_2276622C0();

    swift_willThrow();
    v181[0] = 0;
    v181[1] = 0xE000000000000000;
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD000000000000010, 0x80000002276A18C0);
    v149 = [v18 description];
    v150 = sub_22766C000();
    v152 = v151;

    MEMORY[0x22AA98450](v150, v152);

    MEMORY[0x22AA98450](0xD000000000000033, 0x80000002276A18E0);
    return sub_22766CFB0();
  }

  v19 = v17;

  while (1)
  {
    v22 = *(v0 + 144);
    if (v22 == *(v0 + 128))
    {
      break;
    }

    v23 = *(v0 + 120);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x22AA991A0](*(v0 + 144));
    }

    else
    {
      if (v22 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v24 = *(v23 + 8 * v22 + 32);
    }

    v27 = v24;
    *(v0 + 136) = v24;
    *(v0 + 144) = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    v28 = [*(v0 + 112) managedObjectModel];
    v29 = sub_2274EF600();
    v31 = v30;

    v32 = sub_2274E3964(v29, v31);
    if (qword_2813A2140 != -1)
    {
      v105 = v32;
      swift_once();
      v32 = v105;
    }

    v33 = word_2813B2670;
    *(v0 + 208) = word_2813B2670;
    v34 = sub_2274E2FEC(v32);
    v36 = v35;
    if (v34 == sub_2274E2FEC(v33) && v36 == v37)
    {
    }

    else
    {
      v39 = sub_22766D190();

      if ((v39 & 1) == 0)
      {
        sub_22766A770();
        v106 = v27;
        v107 = sub_22766B380();
        v108 = sub_22766C890();

        v109 = os_log_type_enabled(v107, v108);
        v110 = *(v0 + 104);
        v112 = *(v0 + 48);
        v111 = *(v0 + 56);
        if (v109)
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v181[0] = v114;
          *v113 = 136446210;
          v115 = [v106 configurationName];
          v116 = sub_22766C000();
          v176 = v110;
          v118 = v117;

          v119 = v116;
          v2 = &unk_2813B2000;
          v120 = sub_226E97AE8(v119, v118, v181);

          *(v113 + 4) = v120;
          _os_log_impl(&dword_226E8E000, v107, v108, "Trying to update %{public}s without having loaded it on the current schema.", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v114);
          MEMORY[0x22AA9A450](v114, -1, -1);
          MEMORY[0x22AA9A450](v113, -1, -1);

          (*(v111 + 8))(v176, v112);
        }

        else
        {

          (*(v111 + 8))(v110, v112);
        }

        v121 = *(v0 + 200);
        v122 = sub_227664DD0();
        sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v123 = swift_allocError();
        (*(*(v122 - 8) + 104))(v124, v121, v122);
        swift_willThrow();
        v1 = v123;
        goto LABEL_2;
      }
    }

    v40 = sub_2274EEF88(v27);
    if (v40 == 56)
    {
      sub_22766A770();
      v127 = v27;
      v128 = sub_22766B380();
      v129 = sub_22766C8B0();

      v130 = os_log_type_enabled(v128, v129);
      v131 = *(v0 + 96);
      v133 = *(v0 + 48);
      v132 = *(v0 + 56);
      v179 = v127;
      if (v130)
      {
        v177 = *(v0 + 48);
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v181[0] = v135;
        *v134 = 136446210;
        v136 = [v127 configurationName];
        v137 = sub_22766C000();
        v172 = v131;
        v139 = v138;

        v2 = &unk_2813B2000;
        v140 = sub_226E97AE8(v137, v139, v181);

        *(v134 + 4) = v140;
        _os_log_impl(&dword_226E8E000, v128, v129, "Got nil Data Version for %{public}s. Forcing to most recent.", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v135);
        MEMORY[0x22AA9A450](v135, -1, -1);
        MEMORY[0x22AA9A450](v134, -1, -1);

        (*(v132 + 8))(v172, v177);
      }

      else
      {

        (*(v132 + 8))(v131, v133);
      }

      v141 = v2[1649];
      *(v0 + 209) = v141;
      v142 = swift_task_alloc();
      *(v0 + 152) = v142;
      *v142 = v0;
      v142[1] = sub_2274D3AE0;
      v143 = *(v0 + 112);
      v144 = nullsub_1;
      v145 = (v141 << 8) | (v33 << 16) | (v141 << 24) | v33;
      v146 = 0;
      v147 = v179;
LABEL_57:

      return sub_2274DCD0C(v145, v144, v146, v143, v147);
    }

    v41 = v40;
    v42 = v2[1649];
    *(v0 + 210) = v42;
    v43 = *(v0 + 208);
    v44 = sub_2274E2FEC(v43);
    v46 = v45;
    if (v44 == sub_2274E2FEC(v43) && v46 == v47)
    {
    }

    else
    {
      v48 = sub_22766D190();

      if ((v48 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v49 = sub_2275E0328(v41);
    v51 = v50;
    if (v49 == sub_2275E0328(v42) && v51 == v52)
    {
      v53 = *(v0 + 136);
    }

    else
    {
      v54 = sub_22766D190();

      if (v54)
      {
      }

      else
      {
LABEL_32:
        v55 = *(v0 + 136);
        sub_22766A770();
        v56 = v55;
        v57 = sub_22766B380();
        v58 = sub_22766C8B0();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = *(v0 + 136);
          v168 = *(v0 + 56);
          v170 = *(v0 + 48);
          v174 = *(v0 + 88);
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v181[0] = v61;
          *v60 = 136446466;
          v62 = [v59 configurationName];
          v63 = sub_22766C000();
          v65 = v64;

          v66 = sub_226E97AE8(v63, v65, v181);

          *(v60 + 4) = v66;
          *(v60 + 12) = 2082;
          v67 = sub_22709BF40();
          v69 = sub_226E97AE8(v67, v68, v181);

          *(v60 + 14) = v69;
          _os_log_impl(&dword_226E8E000, v57, v58, "Updating %{public}s to current version %{public}s", v60, 0x16u);
          swift_arrayDestroy();
          v70 = v61;
          v2 = &unk_2813B2000;
          MEMORY[0x22AA9A450](v70, -1, -1);
          MEMORY[0x22AA9A450](v60, -1, -1);

          v71 = *(v168 + 8);
          v71(v174, v170);
        }

        else
        {
          v72 = *(v0 + 88);
          v73 = *(v0 + 48);
          v74 = *(v0 + 56);

          v71 = *(v74 + 8);
          v71(v72, v73);
        }

        *(v0 + 168) = v71;
        v75 = *(v0 + 208);
        v76 = sub_2274E2FEC(*(v0 + 208));
        v78 = v77;
        if (v76 == sub_2274E2FEC(v75) && v78 == v79)
        {
        }

        else
        {
          v80 = sub_22766D190();

          if ((v80 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        v81 = *(v0 + 210);
        v82 = sub_2275E0328(v41);
        v84 = v83;
        if (v82 == sub_2275E0328(v81) && v84 == v85)
        {
        }

        else
        {
          v86 = sub_22766D190();

          if ((v86 & 1) == 0)
          {
LABEL_47:
            LODWORD(v24) = sub_2274DDF0C(v75 | (v41 << 8));
            *(v0 + 204) = v24;
            *(v0 + 176) = v26;
LABEL_62:
            v180 = v24;
            v178 = v25;
            v153 = v26;

            sub_22766A770();

            v154 = sub_22766B380();
            v155 = sub_22766C8B0();
            v156 = v153;

            if (os_log_type_enabled(v154, v155))
            {
              v169 = *(v0 + 80);
              v173 = *(v0 + 168);
              v167 = *(v0 + 48);
              v157 = swift_slowAlloc();
              v158 = swift_slowAlloc();
              v181[0] = v158;
              *v157 = 136446210;
              *(v0 + 16) = 0x2870657453;
              *(v0 + 24) = 0xE500000000000000;

              v159 = sub_22709BF40();
              MEMORY[0x22AA98450](v159);

              MEMORY[0x22AA98450](540945696, 0xE400000000000000);
              v160 = sub_22709BF40();
              MEMORY[0x22AA98450](v160);

              MEMORY[0x22AA98450](41, 0xE100000000000000);

              v161 = sub_226E97AE8(*(v0 + 16), *(v0 + 24), v181);

              *(v157 + 4) = v161;
              _os_log_impl(&dword_226E8E000, v154, v155, "Executing %{public}s.", v157, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v158);
              MEMORY[0x22AA9A450](v158, -1, -1);
              MEMORY[0x22AA9A450](v157, -1, -1);

              v173(v169, v167);
            }

            else
            {
              v162 = *(v0 + 168);
              v163 = *(v0 + 80);
              v164 = *(v0 + 48);

              v162(v163, v164);
            }

            v165 = swift_task_alloc();
            *(v0 + 184) = v165;
            *v165 = v0;
            v165[1] = sub_2274D4CD8;
            v147 = *(v0 + 136);
            v143 = *(v0 + 112);
            v145 = v180;
            v144 = v178;
            v146 = v156;
            goto LABEL_57;
          }
        }

        v87 = *(v0 + 136);
        sub_22766A770();
        v88 = v87;
        v89 = sub_22766B380();
        v90 = sub_22766C8B0();

        v91 = os_log_type_enabled(v89, v90);
        v92 = *(v0 + 168);
        if (v91)
        {
          v93 = *(v0 + 136);
          v171 = *(v0 + 48);
          v175 = *(v0 + 72);
          v166 = v93;
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v181[0] = v95;
          *v94 = 136446466;
          v96 = [v93 configurationName];
          v97 = sub_22766C000();
          v99 = v98;

          v100 = v97;
          v2 = &unk_2813B2000;
          v101 = sub_226E97AE8(v100, v99, v181);

          *(v94 + 4) = v101;
          *(v94 + 12) = 2082;
          v102 = sub_22709BF40();
          v104 = sub_226E97AE8(v102, v103, v181);

          *(v94 + 14) = v104;
          _os_log_impl(&dword_226E8E000, v89, v90, "Updated %{public}s to current version %{public}s", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v95, -1, -1);
          MEMORY[0x22AA9A450](v94, -1, -1);

          v92(v175, v171);
        }

        else
        {
          v20 = *(v0 + 72);
          v21 = *(v0 + 48);

          v92(v20, v21);
        }
      }
    }
  }

  v125 = *(v0 + 8);

  return v125();
}

void sub_2274D8030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v4 = a1;
  v59 = *MEMORY[0x277D85DE8];
  v5 = *(v3 + 112);
  swift_beginAccess();
  v54 = v3;
  v6 = *(v3 + 216);
  v58 = v4;
  if ((v6 & 0xC000000000000001) == 0)
  {
    v23 = *(v6 + 32);
    v24 = v23 & 0x3F;
    v25 = ((1 << v23) + 63) >> 6;
    v26 = 8 * v25;

    if (v24 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v47 = swift_slowAlloc();
        v7 = sub_2274DD690(v47, v25, v6, sub_2274DE614);

        MEMORY[0x22AA9A450](v47, -1, -1);
        goto LABEL_37;
      }
    }

    v49 = v25;
    v48 = &v48;
    MEMORY[0x28223BE20](v27);
    v28 = &v48 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v26);
    v50 = 0;
    v51 = v5;
    v29 = 0;
    v30 = 1 << *(v6 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v6 + 56);
    v33 = (v30 + 63) >> 6;
    while (v32)
    {
      v34 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_32:
      v5 = v34 | (v29 << 6);
      v37 = *(*(v6 + 48) + 8 * v5);
      sub_22706FA40();
      v38 = sub_227669C10();

      if ((v38 & 1) == 0)
      {
        *&v28[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_36:
          v7 = sub_22726C3F4(v28, v49, v50, v6);
          goto LABEL_37;
        }
      }
    }

    v35 = v29;
    v5 = v51;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_36;
      }

      v36 = *(v6 + 56 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v32 = (v36 - 1) & v36;
        goto LABEL_32;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84FA0];
  aBlock[0] = MEMORY[0x277D84FA0];

  sub_22766CCE0();
  v8 = sub_22766CD50();
  if (v8)
  {
    v9 = v8;
    sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
    v10 = v9;
    do
    {
      v55 = v10;
      swift_dynamicCast();
      sub_22706FA40();
      v11 = v56;
      if (sub_227669C10())
      {
      }

      else
      {
        v12 = v7[2];
        if (v7[3] <= v12)
        {
          sub_2270D905C(v12 + 1);
        }

        v7 = aBlock[0];
        v13 = sub_22766CB20();
        v14 = aBlock[0] + 56;
        v15 = -1 << *(aBlock[0] + 32);
        v16 = v13 & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(aBlock[0] + 56 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(aBlock[0] + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v15) >> 6;
          do
          {
            if (++v17 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              goto LABEL_42;
            }

            v21 = v17 == v20;
            if (v17 == v20)
            {
              v17 = 0;
            }

            v19 |= v21;
            v22 = *(v14 + 8 * v17);
          }

          while (v22 == -1);
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
        }

        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(v7[6] + 8 * v18) = v11;
        ++v7[2];
      }

      v10 = sub_22766CD50();
    }

    while (v10);
  }

LABEL_37:
  sub_22726CF64(v7);

  sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
  v40 = sub_22766C2B0();

  [v5 setPersistentStoreDescriptions_];

  v41 = [v5 persistentStoreDescriptions];
  v42 = sub_22766C2C0();

  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_39;
  }

LABEL_43:
  v43 = sub_22766CD20();
LABEL_39:

  if (v43)
  {
    v44 = swift_allocObject();
    v45 = v53;
    v44[2] = v52;
    v44[3] = v45;
    v44[4] = v54;
    aBlock[4] = sub_2274DE680;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2274EF574;
    aBlock[3] = &block_descriptor_35;
    v46 = _Block_copy(aBlock);

    [v5 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v46);
  }
}

void sub_2274D8600(void *a1, void *a2, void (*a3)(void *, void *), uint64_t a4, uint64_t a5)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
    a3(a1, a2);
  }

  else
  {
    swift_beginAccess();
    v13 = sub_22700D1B4(a1);
    swift_endAccess();

    sub_22766A770();
    v14 = a1;
    v15 = sub_22766B380();
    v16 = sub_22766C8B0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446210;
      v19 = [v14 configuration];
      if (v19)
      {
        v20 = v19;
        v21 = sub_22766C000();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v28[1] = v21;
      v28[2] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v24 = sub_22766CB80();
      v26 = v25;

      v27 = sub_226E97AE8(v24, v26, v28);

      *(v17 + 4) = v27;
      _os_log_impl(&dword_226E8E000, v15, v16, "Loaded persistent store: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AA9A450](v18, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

void sub_2274D88B0(void *a1, void *a2)
{
  v138 = a2;
  v3 = sub_22766B390();
  v139 = *(v3 - 8);
  v140 = v3;
  MEMORY[0x28223BE20](v3);
  v136 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v133 = &v133 - v6;
  MEMORY[0x28223BE20](v7);
  v134 = &v133 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v133 - v10;
  MEMORY[0x28223BE20](v12);
  v135 = &v133 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v133 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v133 - v18;
  swift_getErrorValue();
  v20 = sub_22766D280();
  v22 = v21;
  swift_getErrorValue();
  v23 = sub_22766D270();
  v25 = sub_22766C000() == v20 && v24 == v22;
  v141 = v22;
  if (v25)
  {

    if (v23 == 260)
    {
LABEL_7:
      sub_22766A770();
      v27 = v138;
      v28 = sub_22766B380();
      v29 = sub_22766C890();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v156 = v31;
        *v30 = 136446210;
        v32 = [v27 configuration];
        if (v32)
        {
          v33 = v32;
          v34 = sub_22766C000();
          v36 = v35;
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        v157 = v34;
        v158 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v77 = sub_22766CB80();
        v79 = v78;

        v80 = sub_226E97AE8(v77, v79, &v156);

        *(v30 + 4) = v80;
        _os_log_impl(&dword_226E8E000, v28, v29, "Load - Failed for %{public}s. File doesn't exist.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x22AA9A450](v31, -1, -1);
        MEMORY[0x22AA9A450](v30, -1, -1);
      }

      (*(v139 + 8))(v19, v140);
      return;
    }
  }

  else
  {
    v26 = sub_22766D190();

    if ((v26 & 1) != 0 && v23 == 260)
    {
      goto LABEL_7;
    }
  }

  if (sub_22766C000() == v20 && v37 == v141)
  {
  }

  else
  {
    v38 = sub_22766D190();

    if ((v38 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v23 == 256)
  {
    swift_getErrorValue();
    if ((sub_22722D968(v144, v145) & 0x1FFFFFFFFLL) == 0x17)
    {
      sub_22766A770();
      v39 = v138;
      v40 = a1;
      v41 = sub_22766B380();
      v42 = sub_22766C890();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v156 = v44;
        *v43 = 136446466;
        v45 = [v39 configuration];
        if (v45)
        {
          v46 = v45;
          v47 = sub_22766C000();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        v157 = v47;
        v158 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v109 = sub_22766CB80();
        v111 = v110;

        v112 = sub_226E97AE8(v109, v111, &v156);

        *(v43 + 4) = v112;
        *(v43 + 12) = 2082;
        swift_getErrorValue();
        v113 = MEMORY[0x22AA995D0](v142, v143);
        v115 = sub_226E97AE8(v113, v114, &v156);

        *(v43 + 14) = v115;
        _os_log_impl(&dword_226E8E000, v41, v42, "Load - Failed for %{public}s due to data protection error: %{public}s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v44, -1, -1);
        MEMORY[0x22AA9A450](v43, -1, -1);
      }

      v116 = *(v139 + 8);
      v116(v16, v140);
      v104 = v135;
      sub_22766A770();
      v117 = v137;
      goto LABEL_54;
    }
  }

LABEL_20:
  if (sub_22766C000() == v20 && v50 == v141)
  {
  }

  else
  {
    v51 = sub_22766D190();

    if ((v51 & 1) == 0)
    {
LABEL_28:
      if (sub_22766C000() == v20 && v63 == v141)
      {
      }

      else
      {
        v64 = sub_22766D190();

        if ((v64 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (v23 == 259)
      {
        swift_getErrorValue();
        if ((sub_22722D968(v152, v153) & 0x1FFFFFFFFLL) != 0xB)
        {
          swift_getErrorValue();
          if ((sub_22722D968(v150, v151) & 0x1FFFFFFFFLL) != 0x1A)
          {
            v96 = v134;
            sub_22766A770();
            v97 = v138;
            v98 = a1;
            v99 = sub_22766B380();
            v100 = sub_22766C890();

            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v156 = v102;
              *v101 = 136446466;
              v103 = [v97 configuration];
              v104 = v133;
              if (v103)
              {
                v105 = v103;
                v106 = sub_22766C000();
                v108 = v107;
              }

              else
              {
                v106 = 0;
                v108 = 0;
              }

              v157 = v106;
              v158 = v108;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
              v126 = sub_22766CB80();
              v128 = v127;

              v129 = sub_226E97AE8(v126, v128, &v156);

              *(v101 + 4) = v129;
              *(v101 + 12) = 2082;
              swift_getErrorValue();
              v130 = MEMORY[0x22AA995D0](v148, v149);
              v132 = sub_226E97AE8(v130, v131, &v156);

              *(v101 + 14) = v132;
              _os_log_impl(&dword_226E8E000, v99, v100, "Load - Failed for %{public}s due to recoverable error: %{public}s", v101, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA9A450](v102, -1, -1);
              MEMORY[0x22AA9A450](v101, -1, -1);

              v116 = *(v139 + 8);
              v116(v134, v140);
              v117 = v137;
            }

            else
            {

              v116 = *(v139 + 8);
              v116(v96, v140);
              v117 = v137;
              v104 = v133;
            }

            sub_22766A770();
LABEL_54:

            v118 = sub_22766B380();
            v119 = sub_22766C8A0();

            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              v157 = v121;
              *v120 = 136446210;
              __swift_project_boxed_opaque_existential_0((v117 + 120), *(v117 + 144));
              LOBYTE(v156) = sub_22766AC70();
              v122 = sub_2271115CC();
              v123 = MEMORY[0x22AA958B0](MEMORY[0x277D4F1D0], v122);
              v125 = sub_226E97AE8(v123, v124, &v157);

              *(v120 + 4) = v125;
              _os_log_impl(&dword_226E8E000, v118, v119, "Persistent store load lost class B. Current class: %{public}s", v120, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v121);
              MEMORY[0x22AA9A450](v121, -1, -1);
              MEMORY[0x22AA9A450](v120, -1, -1);
            }

            v116(v104, v140);
            return;
          }
        }
      }

LABEL_35:

      v65 = v136;
      sub_22766A770();
      v66 = v138;
      v67 = a1;
      v68 = sub_22766B380();
      v69 = sub_22766C890();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v156 = v71;
        *v70 = 136446466;
        v72 = [v66 configuration];
        if (v72)
        {
          v73 = v72;
          v74 = sub_22766C000();
          v76 = v75;
        }

        else
        {
          v74 = 0;
          v76 = 0;
        }

        v157 = v74;
        v158 = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v88 = sub_22766CB80();
        v90 = v89;

        v91 = sub_226E97AE8(v88, v90, &v156);

        *(v70 + 4) = v91;
        *(v70 + 12) = 2082;
        swift_getErrorValue();
        v92 = MEMORY[0x22AA995D0](v154, v155);
        v94 = sub_226E97AE8(v92, v93, &v156);

        *(v70 + 14) = v94;
        _os_log_impl(&dword_226E8E000, v68, v69, "Load - Failed for %{public}s due to unrecoverable error: %{public}s", v70, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v71, -1, -1);
        MEMORY[0x22AA9A450](v70, -1, -1);

        (*(v139 + 8))(v136, v140);
      }

      else
      {

        (*(v139 + 8))(v65, v140);
      }

      swift_beginAccess();
      v95 = sub_22700D1B4(v66);
      swift_endAccess();

      return;
    }
  }

  if (v23 != 134100)
  {
    goto LABEL_28;
  }

  sub_22766A770();
  v52 = v138;
  v53 = a1;
  v54 = sub_22766B380();
  v55 = sub_22766C8B0();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v156 = v57;
    *v56 = 136446466;
    v58 = [v52 configuration];
    if (v58)
    {
      v59 = v58;
      v60 = sub_22766C000();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v157 = v60;
    v158 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v81 = sub_22766CB80();
    v83 = v82;

    v84 = sub_226E97AE8(v81, v83, &v156);

    *(v56 + 4) = v84;
    *(v56 + 12) = 2082;
    swift_getErrorValue();
    v85 = MEMORY[0x22AA995D0](v146, v147);
    v87 = sub_226E97AE8(v85, v86, &v156);

    *(v56 + 14) = v87;
    _os_log_impl(&dword_226E8E000, v54, v55, "Load - Failed for %{public}s due to recoverable version hash mismatch error: %{public}s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v57, -1, -1);
    MEMORY[0x22AA9A450](v56, -1, -1);
  }

  (*(v139 + 8))(v11, v140);
}

uint64_t sub_2274D96A0(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 338) = a1;
  v3 = sub_22766B390();
  *(v2 + 168) = v3;
  *(v2 + 176) = *(v3 - 8);
  *(v2 + 184) = swift_task_alloc();
  v4 = sub_2276624A0();
  *(v2 + 192) = v4;
  *(v2 + 200) = *(v4 - 8);
  *(v2 + 208) = swift_task_alloc();
  v5 = sub_227669890();
  *(v2 + 216) = v5;
  *(v2 + 224) = *(v5 - 8);
  *(v2 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274D9848, v1, 0);
}

uint64_t sub_2274D9848(uint64_t a1)
{
  v88 = v1;
  v87 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 216);
  v5 = *(v1 + 160);
  v6 = *(v1 + 338);
  sub_22766A830();
  sub_226E9DD3C("PersistenceStoreDelegate.attemptMigrationCurrentDataProtection", 62, 2, &dword_226E8E000, 1, (v1 + 56));
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v7 = *(v5 + 216);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  v85 = v8;
  if ((v7 & 0xC000000000000001) == 0)
  {
    v27 = *(v7 + 32);
    v28 = v27 & 0x3F;
    v9 = ((1 << v27) + 63) >> 6;
    v16 = (8 * v9);

    if (v28 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

  v9 = MEMORY[0x277D84FA0];
  v86 = MEMORY[0x277D84FA0];

  sub_22766CCE0();
  v10 = sub_22766CD50();
  if (!v10)
  {
LABEL_20:

    goto LABEL_37;
  }

  v11 = v10;
  v7 = sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
  v12 = v11;
  while (1)
  {
    *(v1 + 152) = v12;
    swift_dynamicCast();
    sub_22706FA40();
    v13 = sub_227669C10();
    v14 = *(v1 + 144);
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_5:
    v12 = sub_22766CD50();
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v15 = *(v9 + 16);
  if (*(v9 + 24) <= v15)
  {
    sub_2270D905C(v15 + 1);
    v9 = v86;
  }

  v16 = v14;
  v17 = sub_22766CB20();
  v18 = v9 + 56;
  v19 = -1 << *(v9 + 32);
  v20 = v17 & ~v19;
  v21 = v20 >> 6;
  if (((-1 << v20) & ~*(v9 + 56 + 8 * (v20 >> 6))) != 0)
  {
    v22 = __clz(__rbit64((-1 << v20) & ~*(v9 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v14;
    ++*(v9 + 16);
    goto LABEL_5;
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v18 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_70:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v82 = &v82;
    v83 = v9;
    MEMORY[0x28223BE20](v29);
    v9 = &v82 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v16);
    v84 = 0;
    v30 = 0;
    v31 = 1 << *(v7 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v7 + 56);
    v34 = (v31 + 63) >> 6;
    while (v33)
    {
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
LABEL_32:
      v38 = v35 | (v30 << 6);
      v16 = *(*(v7 + 48) + 8 * v38);
      sub_22706FA40();
      v39 = sub_227669C10();

      if ((v39 & 1) == 0)
      {
        *(v9 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        if (__OFADD__(v84++, 1))
        {
          __break(1u);
LABEL_36:
          v9 = sub_22726C3F4(v9, v83, v84, v7);
          goto LABEL_37;
        }
      }
    }

    v36 = v30;
    while (1)
    {
      v30 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v30 >= v34)
      {
        goto LABEL_36;
      }

      v37 = *(v7 + 56 + 8 * v30);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v33 = (v37 - 1) & v37;
        goto LABEL_32;
      }
    }
  }

  v81 = swift_slowAlloc();
  v9 = sub_2274DD690(v81, v9, v7, sub_2274DE6F8);

  MEMORY[0x22AA9A450](v81, -1, -1);
LABEL_37:
  *(v1 + 240) = v9;
  v41 = *(v1 + 160);

  __swift_project_boxed_opaque_existential_0((v41 + 176), *(v41 + 200));
  *(v1 + 336) = 13;
  *(v1 + 248) = sub_226F19410();
  *(v1 + 256) = sub_226F19464();

  v84 = "MigrationCurrentDataProtection";
  v85 = "PersistenceStoreDelegate.swift";
  sub_22766A130();

  if ((v9 & 0xC000000000000001) != 0)
  {

    sub_22766CCE0();
    sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
    sub_2274DD5CC();
    sub_22766C700();
    v9 = *(v1 + 16);
    v16 = *(v1 + 24);
    v42 = *(v1 + 32);
    v43 = *(v1 + 40);
    v44 = *(v1 + 48);
  }

  else
  {
    v45 = -1 << *(v9 + 32);
    v16 = (v9 + 56);
    v42 = ~v45;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v44 = v47 & *(v9 + 56);

    v43 = 0;
  }

  *(v1 + 272) = v16;
  *(v1 + 280) = v42;
  v7 = 0x277CBE000uLL;
  for (*(v1 + 264) = v9; ; v9 = *(v1 + 264))
  {
    if (v9 < 0)
    {
      v59 = sub_22766CD50();
      if (!v59)
      {
        break;
      }

      *(v1 + 136) = v59;
      sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
      swift_dynamicCast();
      v58 = *(v1 + 128);
      i = v43;
      v57 = v44;
    }

    else
    {
      v54 = v43;
      v55 = v44;
      for (i = v43; !v55; ++v54)
      {
        i = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_68;
        }

        v16 = *(v1 + 280);
        if (i >= ((v16 + 64) >> 6))
        {
          v44 = 0;
          goto LABEL_59;
        }

        v55 = *(*(v1 + 272) + 8 * i);
      }

      v57 = (v55 - 1) & v55;
      v58 = *(*(v9 + 48) + ((i << 9) | (8 * __clz(__rbit64(v55)))));
    }

    *(v1 + 296) = i;
    *(v1 + 304) = v57;
    *(v1 + 288) = v58;
    if (!v58)
    {
      break;
    }

    v60 = [v58 URL];
    if (!v60)
    {
      return sub_22766CFB0();
    }

    v61 = v60;
    sub_227662430();

    v62 = objc_opt_self();
    v63 = sub_2276623E0();
    *(v1 + 120) = 0;
    v64 = [v62 cachedModelForPersistentStoreWithURL:v63 options:0 error:v1 + 120];
    *(v1 + 312) = v64;

    v65 = *(v1 + 120);
    if (v64)
    {
      v66 = v65;
      v67 = sub_2274EF600();
      v79 = sub_2274E3964(v67, v68);
      v80 = swift_task_alloc();
      *(v1 + 320) = v80;
      *v80 = v1;
      v80[1] = sub_2274DA328;

      return sub_2274DAF98(v58, v79);
    }

    v49 = *(v1 + 200);
    v48 = *(v1 + 208);
    v50 = *(v1 + 192);
    v51 = v65;
    v52 = sub_2276622C0();

    swift_willThrow();
    (*(v49 + 8))(v48, v50);
    v53 = *(v1 + 288);
    v16 = *(v1 + 160);
    sub_2274D88B0(v52, v53);

    v43 = *(v1 + 296);
    v44 = *(v1 + 304);
  }

  v16 = *(v1 + 280);
  v9 = *(v1 + 264);
LABEL_59:
  v69 = *(v1 + 272);
  v70 = *(v1 + 160);

  sub_226EBB218(v9, v69, v16, v43, v44);
  __swift_project_boxed_opaque_existential_0((v70 + 176), *(v70 + 200));
  *(v1 + 337) = 13;
  sub_22766A120();
  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  sub_227669930();
  sub_22766A710();
  v71 = sub_22766B380();
  v72 = sub_22766C8B0();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_226E8E000, v71, v72, "Finished Attempted database migration", v73, 2u);
    MEMORY[0x22AA9A450](v73, -1, -1);
  }

  v75 = *(v1 + 176);
  v74 = *(v1 + 184);
  v76 = *(v1 + 168);

  (*(v75 + 8))(v74, v76);
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));

  v77 = *(v1 + 8);

  return v77();
}

uint64_t sub_2274DA328()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_2274DAA10;
  }

  else
  {
    v4 = sub_2274DA480;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2274DA480()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  (*(v3 + 8))(v2, v4);
  for (i = *(v0 + 328); ; i = 0)
  {
    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v14 = *(v0 + 264);
    if (v14 < 0)
    {
      v21 = sub_22766CD50();
      if (!v21)
      {
        goto LABEL_18;
      }

      *(v0 + 136) = v21;
      sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
      swift_dynamicCast();
      v20 = *(v0 + 128);
      v17 = v12;
      v19 = v13;
      goto LABEL_12;
    }

    v15 = *(v0 + 296);
    v16 = *(v0 + 304);
    v17 = v15;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v19 = (v16 - 1) & v16;
    v20 = *(*(v14 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
LABEL_12:
    *(v0 + 296) = v17;
    *(v0 + 304) = v19;
    *(v0 + 288) = v20;
    if (!v20)
    {
LABEL_18:
      v18 = *(v0 + 280);
      v14 = *(v0 + 264);
      goto LABEL_19;
    }

    v22 = [v20 URL];
    if (!v22)
    {
      return sub_22766CFB0();
    }

    v23 = v22;
    sub_227662430();

    v24 = objc_opt_self();
    v25 = sub_2276623E0();
    *(v0 + 120) = 0;
    v26 = [v24 cachedModelForPersistentStoreWithURL:v25 options:0 error:v0 + 120];
    *(v0 + 312) = v26;

    v27 = *(v0 + 120);
    if (v26)
    {
      v28 = v27;
      v29 = sub_2274EF600();
      v31 = sub_2274E3964(v29, v30);
      if (!i)
      {
        v42 = v31;
        v43 = swift_task_alloc();
        *(v0 + 320) = v43;
        *v43 = v0;
        v43[1] = sub_2274DA328;

        return sub_2274DAF98(v20, v42);
      }

      v10 = i;
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    }

    else
    {
      v7 = *(v0 + 200);
      v6 = *(v0 + 208);
      v8 = *(v0 + 192);
      v9 = v27;
      v10 = sub_2276622C0();

      swift_willThrow();
      (*(v7 + 8))(v6, v8);
    }

    v11 = *(v0 + 288);
    sub_2274D88B0(v10, v11);
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
    }

    v18 = *(v0 + 280);
    if (v17 >= ((v18 + 64) >> 6))
    {
      break;
    }

    v16 = *(*(v0 + 272) + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_19:
  v32 = *(v0 + 272);
  v33 = *(v0 + 160);

  sub_226EBB218(v14, v32, v18, v12, v13);
  __swift_project_boxed_opaque_existential_0((v33 + 176), *(v33 + 200));
  *(v0 + 337) = 13;
  sub_22766A120();
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  sub_227669930();
  sub_22766A710();
  v34 = sub_22766B380();
  v35 = sub_22766C8B0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_226E8E000, v34, v35, "Finished Attempted database migration", v36, 2u);
    MEMORY[0x22AA9A450](v36, -1, -1);
  }

  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v39 = *(v0 + 168);

  (*(v38 + 8))(v37, v39);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2274DAA10()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 328);
  while (1)
  {
    v9 = *(v0 + 288);
    sub_2274D88B0(v4, v9);

    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    v12 = *(v0 + 264);
    if (v12 < 0)
    {
      v19 = sub_22766CD50();
      if (!v19)
      {
        goto LABEL_16;
      }

      *(v0 + 136) = v19;
      sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
      swift_dynamicCast();
      v18 = *(v0 + 128);
      v15 = v10;
      v17 = v11;
      goto LABEL_11;
    }

    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    v15 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v17 = (v14 - 1) & v14;
    v18 = *(*(v12 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
LABEL_11:
    *(v0 + 296) = v15;
    *(v0 + 304) = v17;
    *(v0 + 288) = v18;
    if (!v18)
    {
LABEL_16:
      v16 = *(v0 + 280);
      v12 = *(v0 + 264);
      goto LABEL_17;
    }

    v20 = [v18 URL];
    if (!v20)
    {
      return sub_22766CFB0();
    }

    v21 = v20;
    sub_227662430();

    v22 = objc_opt_self();
    v23 = sub_2276623E0();
    *(v0 + 120) = 0;
    v24 = [v22 cachedModelForPersistentStoreWithURL:v23 options:0 error:v0 + 120];
    *(v0 + 312) = v24;

    v25 = *(v0 + 120);
    if (v24)
    {
      v26 = v25;
      v27 = sub_2274EF600();
      v39 = sub_2274E3964(v27, v28);
      v40 = swift_task_alloc();
      *(v0 + 320) = v40;
      *v40 = v0;
      v40[1] = sub_2274DA328;

      return sub_2274DAF98(v18, v39);
    }

    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = v25;
    v4 = sub_2276622C0();

    swift_willThrow();
    (*(v6 + 8))(v5, v7);
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    v16 = *(v0 + 280);
    if (v15 >= ((v16 + 64) >> 6))
    {
      break;
    }

    v14 = *(*(v0 + 272) + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  v11 = 0;
LABEL_17:
  v29 = *(v0 + 272);
  v30 = *(v0 + 160);

  sub_226EBB218(v12, v29, v16, v10, v11);
  __swift_project_boxed_opaque_existential_0((v30 + 176), *(v30 + 200));
  *(v0 + 337) = 13;
  sub_22766A120();
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  sub_227669930();
  sub_22766A710();
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226E8E000, v31, v32, "Finished Attempted database migration", v33, 2u);
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  v35 = *(v0 + 176);
  v34 = *(v0 + 184);
  v36 = *(v0 + 168);

  (*(v35 + 8))(v34, v36);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2274DAF98(uint64_t a1, char a2)
{
  *(v3 + 369) = a2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  v4 = sub_227669890();
  *(v3 + 200) = v4;
  *(v3 + 208) = *(v4 - 8);
  *(v3 + 216) = swift_task_alloc();
  v5 = sub_22766B390();
  *(v3 + 224) = v5;
  *(v3 + 232) = *(v5 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274DB0F4, v2, 0);
}

uint64_t sub_2274DB0F4(uint64_t a1)
{
  v178 = v1;
  v2 = v1;
  v3 = *(v1 + 184);
  sub_22766A770();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v2 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v177[0] = v9;
    *v8 = 136446466;
    v10 = [v7 configuration];
    if (v10)
    {
      v11 = v10;
      v12 = sub_22766C000();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v19 = *(v2 + 232);
    v169 = *(v2 + 224);
    v173 = *(v2 + 280);
    v20 = *(v2 + 369);
    *(v2 + 160) = v12;
    *(v2 + 168) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v21 = sub_22766CB80();
    v23 = v22;

    v24 = sub_226E97AE8(v21, v23, v177);

    *(v8 + 4) = v24;
    *(v8 + 12) = 2082;
    *(v2 + 368) = v20;
    v25 = sub_22709C030();
    v26 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v25);
    v28 = sub_226E97AE8(v26, v27, v177);

    *(v8 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v5, v6, "Migrating store %{public}s on schema version %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v18 = *(v19 + 8);
    v18(v173, v169);
  }

  else
  {
    v15 = *(v2 + 280);
    v16 = *(v2 + 224);
    v17 = *(v2 + 232);

    v18 = *(v17 + 8);
    v18(v15, v16);
  }

  *(v2 + 288) = v18;
  v30 = *(v2 + 208);
  v29 = *(v2 + 216);
  v31 = *(v2 + 200);
  v32 = *(v2 + 369);
  sub_22766A830();
  sub_226E9DD3C("PersistenceStoreDelegate.migrateStore", 37, 2, &dword_226E8E000, 1, (v2 + 16));
  (*(v30 + 8))(v29, v31);
  v33 = swift_allocObject();
  *(v2 + 296) = v33;
  *(v2 + 304) = sub_226E99364(0, &unk_28139D268, 0x277CBE4A0);
  v34 = sub_2274EE780(v32);
  v35 = *(v2 + 184);
  *(v33 + 16) = v34;
  v36 = v34;
  sub_2274EFEFC(v35);

  v37 = *(v33 + 16);
  v39 = sub_2274DDD4C(v33);
  v40 = sub_2274EEF88(v39);

  if (v40 == 56)
  {
    v41 = *(v2 + 184);
    v40 = sub_2275E0B44(*(v2 + 369));
    sub_22766A770();
    v42 = v41;
    v43 = sub_22766B380();
    v44 = sub_22766C890();

    if (os_log_type_enabled(v43, v44))
    {
      v174 = v40;
      v45 = *(v2 + 184);
      v46 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v177[0] = v170;
      *v46 = 136315650;
      v47 = [v45 configuration];
      if (v47)
      {
        v48 = v47;
        v49 = sub_22766C000();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      v162 = *(v2 + 224);
      v165 = *(v2 + 272);
      v56 = *(v2 + 369);
      *(v2 + 144) = v49;
      *(v2 + 152) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v57 = sub_22766CB80();
      v59 = v58;

      v60 = sub_226E97AE8(v57, v59, v177);

      *(v46 + 4) = v60;
      *(v46 + 12) = 2080;
      *(v2 + 366) = v56;
      v61 = sub_22709C030();
      v62 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v61);
      v64 = sub_226E97AE8(v62, v63, v177);

      *(v46 + 14) = v64;
      *(v46 + 22) = 2080;
      v40 = v174;
      *(v2 + 367) = v174;
      v65 = sub_22709C084();
      v66 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v65);
      v68 = sub_226E97AE8(v66, v67, v177);

      *(v46 + 24) = v68;
      _os_log_impl(&dword_226E8E000, v43, v44, "Found nil data version for %s on %s. Setting it to %s", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v170, -1, -1);
      MEMORY[0x22AA9A450](v46, -1, -1);

      v55 = v162;
      v54 = v165;
    }

    else
    {
      v52 = *(v2 + 272);
      v53 = *(v2 + 224);

      v54 = v52;
      v55 = v53;
    }

    v18(v54, v55);
  }

  v69 = *(v2 + 184);
  sub_22766A770();
  v70 = v69;
  v71 = sub_22766B380();
  v72 = sub_22766C8B0();

  if (os_log_type_enabled(v71, v72))
  {
    v175 = v40;
    v73 = *(v2 + 184);
    v74 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v177[0] = v171;
    *v74 = 136446466;
    v75 = [v73 configuration];
    if (v75)
    {
      v76 = v75;
      v77 = sub_22766C000();
      v79 = v78;
    }

    else
    {
      v77 = 0;
      v79 = 0;
    }

    v160 = *(v2 + 232);
    v163 = *(v2 + 224);
    v166 = *(v2 + 264);
    *(v2 + 128) = v77;
    *(v2 + 136) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v86 = sub_22766CB80();
    v88 = v87;

    v89 = sub_226E97AE8(v86, v88, v177);

    *(v74 + 4) = v89;
    *(v74 + 12) = 2080;
    v40 = v175;
    v90 = sub_22709BF40();
    v92 = sub_226E97AE8(v90, v91, v177);

    *(v74 + 14) = v92;
    _os_log_impl(&dword_226E8E000, v71, v72, "Starting migration steps for %{public}s on %s", v74, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v171, -1, -1);
    MEMORY[0x22AA9A450](v74, -1, -1);

    v85 = v163;
    v83 = v160 + 8;
    v84 = v166;
  }

  else
  {
    v80 = *(v2 + 264);
    v81 = *(v2 + 224);
    v82 = *(v2 + 232);

    v83 = v82 + 8;
    v84 = v80;
    v85 = v81;
  }

  v18(v84, v85);
  *(v2 + 312) = v83;
  swift_beginAccess();
  v93 = *(v2 + 369);
  *(v2 + 370) = v93;
  if (qword_2813A2140 != -1)
  {
    swift_once();
  }

  v94 = HIBYTE(word_2813B2670);
  v95 = word_2813B2670;
  v96 = sub_2274E2FEC(v93);
  v98 = v97;
  if (v96 == sub_2274E2FEC(v95) && v98 == v99)
  {
  }

  else
  {
    v100 = sub_22766D190();

    if ((v100 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v101 = sub_2275E0328(v40);
  v103 = v102;
  if (v101 == sub_2275E0328(v94) && v103 == v104)
  {

LABEL_35:
    v106 = *(v2 + 184);
    sub_22766A770();
    v107 = v106;
    v108 = sub_22766B380();
    v109 = sub_22766C8B0();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = *(v2 + 184);
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v177[0] = v112;
      *v111 = 136446210;
      v113 = [v110 configuration];
      if (v113)
      {
        v114 = v113;
        v115 = sub_22766C000();
        v117 = v116;
      }

      else
      {
        v115 = 0;
        v117 = 0;
      }

      v168 = *(v2 + 288);
      v139 = *(v2 + 240);
      v140 = *(v2 + 224);
      *(v2 + 112) = v115;
      *(v2 + 120) = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v141 = sub_22766CB80();
      v143 = v142;

      v144 = sub_226E97AE8(v141, v143, v177);

      *(v111 + 4) = v144;
      _os_log_impl(&dword_226E8E000, v108, v109, "Finished migration steps for %{public}s.", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x22AA9A450](v112, -1, -1);
      MEMORY[0x22AA9A450](v111, -1, -1);

      v168(v139, v140);
    }

    else
    {
      v120 = *(v2 + 288);
      v121 = *(v2 + 240);
      v122 = *(v2 + 224);

      v120(v121, v122);
    }

    __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));

    v145 = *(v2 + 8);

    return v145();
  }

  v105 = sub_22766D190();

  if (v105)
  {
    goto LABEL_35;
  }

LABEL_38:
  v118 = sub_2274DDF0C(v93 | (v40 << 8));
  *(v2 + 360) = v118;
  *(v2 + 320) = v119;
  v123 = v118;
  v124 = v119;
  v176 = v125;
  v126 = *(v2 + 184);

  sub_22766A770();
  v127 = v126;

  v128 = sub_22766B380();
  v129 = sub_22766C8B0();

  if (os_log_type_enabled(v128, v129))
  {
    v167 = *(v2 + 184);
    v130 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *(v2 + 176) = v172;
    *v130 = 136446466;
    *(v2 + 80) = 0x2870657453;
    *(v2 + 88) = 0xE500000000000000;

    v131 = sub_22709BF40();
    MEMORY[0x22AA98450](v131);

    MEMORY[0x22AA98450](540945696, 0xE400000000000000);
    v132 = sub_22709BF40();
    MEMORY[0x22AA98450](v132);

    MEMORY[0x22AA98450](41, 0xE100000000000000);

    v133 = sub_226E97AE8(*(v2 + 80), *(v2 + 88), (v2 + 176));

    *(v130 + 4) = v133;
    *(v130 + 12) = 2082;
    v134 = [v167 configuration];
    if (v134)
    {
      v135 = v134;
      v136 = sub_22766C000();
      v138 = v137;
    }

    else
    {
      v136 = 0;
      v138 = 0;
    }

    v164 = *(v2 + 288);
    v149 = *(v2 + 256);
    v161 = *(v2 + 224);
    *(v2 + 96) = v136;
    *(v2 + 104) = v138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v150 = sub_22766CB80();
    v152 = v151;

    v153 = sub_226E97AE8(v150, v152, (v2 + 176));

    *(v130 + 14) = v153;
    _os_log_impl(&dword_226E8E000, v128, v129, "Executing %{public}s on %{public}s", v130, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v172, -1, -1);
    MEMORY[0x22AA9A450](v130, -1, -1);

    v164(v149, v161);
  }

  else
  {
    v146 = *(v2 + 288);
    v147 = *(v2 + 256);
    v148 = *(v2 + 224);

    v146(v147, v148);
  }

  v154 = *(v2 + 296);
  v155 = *(v154 + 16);
  *(v2 + 328) = v155;
  v156 = v155;
  v157 = sub_2274DDD4C(v154);
  *(v2 + 336) = v157;
  v158 = v157;
  v159 = swift_task_alloc();
  *(v2 + 344) = v159;
  *v159 = v2;
  v159[1] = sub_2274DC020;

  return sub_2274DCD0C(v123, v176, v124, v156, v158);
}

uint64_t sub_2274DC020()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = v2[42];
  v4 = v2[41];
  v5 = v2[24];

  if (v0)
  {
    v6 = sub_2274DCC00;
  }

  else
  {
    v6 = sub_2274DC180;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2274DC180()
{
  v109 = v0;
  v1 = *(v0 + 370);
  v2 = sub_2274E2FEC(*(v0 + 362));
  v4 = v3;
  if (v2 == sub_2274E2FEC(v1) && v4 == v5)
  {

    goto LABEL_9;
  }

  v7 = sub_22766D190();

  if (v7)
  {
LABEL_9:

    v21 = *(v0 + 352);
    goto LABEL_10;
  }

  sub_22766A770();

  v8 = sub_22766B380();
  v9 = sub_22766C8B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 362);
    v11 = *(v0 + 370);
    v105 = *(v0 + 288);
    v101 = *(v0 + 224);
    v103 = *(v0 + 248);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v108[0] = v13;
    *v12 = 136315394;
    *(v0 + 364) = v11;
    v14 = sub_22709C030();
    v15 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v14);
    v17 = sub_226E97AE8(v15, v16, v108);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v0 + 365) = v10;
    v18 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v14);
    v20 = sub_226E97AE8(v18, v19, v108);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v8, v9, "Updating Schema from %s to %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    v105(v103, v101);
  }

  else
  {
    v69 = *(v0 + 288);
    v70 = *(v0 + 248);
    v71 = *(v0 + 224);

    v69(v70, v71);
  }

  v21 = *(v0 + 352);
  v72 = sub_2274EE780(*(v0 + 362));
  if (v21)
  {

LABEL_39:

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_227669930();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v96 = *(v0 + 8);

    return v96();
  }

  v73 = *(v0 + 296);
  v74 = *(v73 + 16);
  *(v73 + 16) = v72;
  v75 = v72;

  v76 = v75;
  v77 = sub_22706FBD8();
  sub_2274EFEFC(v77);

LABEL_10:
  v22 = *(v0 + 360);
  *(v0 + 370) = BYTE2(v22);
  if (qword_2813A2140 != -1)
  {
    swift_once();
  }

  v23 = HIBYTE(word_2813B2670);
  v24 = word_2813B2670;
  v25 = sub_2274E2FEC(SBYTE2(v22));
  v27 = v26;
  if (v25 == sub_2274E2FEC(v24) && v27 == v28)
  {
  }

  else
  {
    v29 = sub_22766D190();

    if ((v29 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v30 = sub_2275E0328(SHIBYTE(v22));
  v32 = v31;
  if (v30 == sub_2275E0328(v23) && v32 == v33)
  {

    goto LABEL_20;
  }

  v34 = sub_22766D190();

  if (v34)
  {
LABEL_20:
    v35 = *(v0 + 184);
    sub_22766A770();
    v36 = v35;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 184);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v108[0] = v41;
      *v40 = 136446210;
      v42 = [v39 configuration];
      if (v42)
      {
        v43 = v42;
        v44 = sub_22766C000();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      v104 = *(v0 + 288);
      v78 = *(v0 + 240);
      v79 = *(v0 + 224);
      *(v0 + 112) = v44;
      *(v0 + 120) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v80 = sub_22766CB80();
      v82 = v81;

      v83 = sub_226E97AE8(v80, v82, v108);

      *(v40 + 4) = v83;
      _os_log_impl(&dword_226E8E000, v37, v38, "Finished migration steps for %{public}s.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AA9A450](v41, -1, -1);
      MEMORY[0x22AA9A450](v40, -1, -1);

      v104(v78, v79);
    }

    else
    {
      v50 = *(v0 + 288);
      v51 = *(v0 + 240);
      v52 = *(v0 + 224);

      v50(v51, v52);
    }

    goto LABEL_39;
  }

LABEL_23:
  v47 = sub_2274DDF0C(HIWORD(v22));
  *(v0 + 360) = v47;
  *(v0 + 320) = v49;
  if (v21)
  {
    goto LABEL_39;
  }

  v53 = v47;
  v54 = v49;
  v107 = v48;
  v55 = *(v0 + 184);

  sub_22766A770();
  v56 = v55;

  v57 = sub_22766B380();
  v58 = sub_22766C8B0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = *(v0 + 184);
    v60 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *(v0 + 176) = v106;
    *v60 = 136446466;
    *(v0 + 80) = 0x2870657453;
    *(v0 + 88) = 0xE500000000000000;

    v61 = sub_22709BF40();
    MEMORY[0x22AA98450](v61);

    MEMORY[0x22AA98450](540945696, 0xE400000000000000);
    v62 = sub_22709BF40();
    MEMORY[0x22AA98450](v62);

    MEMORY[0x22AA98450](41, 0xE100000000000000);

    v63 = sub_226E97AE8(*(v0 + 80), *(v0 + 88), (v0 + 176));

    *(v60 + 4) = v63;
    *(v60 + 12) = 2082;
    v64 = [v59 configuration];
    if (v64)
    {
      v65 = v64;
      v66 = sub_22766C000();
      v68 = v67;
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    v102 = *(v0 + 288);
    v87 = *(v0 + 256);
    v100 = *(v0 + 224);
    *(v0 + 96) = v66;
    *(v0 + 104) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v88 = sub_22766CB80();
    v90 = v89;

    v91 = sub_226E97AE8(v88, v90, (v0 + 176));

    *(v60 + 14) = v91;
    _os_log_impl(&dword_226E8E000, v57, v58, "Executing %{public}s on %{public}s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v106, -1, -1);
    MEMORY[0x22AA9A450](v60, -1, -1);

    v102(v87, v100);
  }

  else
  {
    v84 = *(v0 + 288);
    v85 = *(v0 + 256);
    v86 = *(v0 + 224);

    v84(v85, v86);
  }

  v92 = *(v0 + 296);
  v93 = *(v92 + 16);
  *(v0 + 328) = v93;
  v94 = v93;
  v95 = sub_2274DDD4C(v92);
  *(v0 + 336) = v95;
  v98 = v95;
  v99 = swift_task_alloc();
  *(v0 + 344) = v99;
  *v99 = v0;
  v99[1] = sub_2274DC020;

  return sub_2274DCD0C(v53, v107, v54, v94, v98);
}

uint64_t sub_2274DCC00()
{

  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_227669930();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2274DCD0C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 24) = a2;
  *(v6 + 128) = a1;
  return MEMORY[0x2822009F8](sub_2274DCD38, v5, 0);
}

uint64_t sub_2274DCD38()
{
  v1 = *(v0 + 48);
  v22 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 128);
  v5 = *(v0 + 24);
  v6 = sub_226E9B4B4();
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v6;
  *(v7 + 48) = v3;
  *(v7 + 56) = v1;

  v8 = v3;
  v9 = v1;
  v10 = [v8 newBackgroundContext];
  *(v0 + 72) = v10;
  [v10 setMergePolicy_];
  *(swift_task_alloc() + 16) = v10;
  sub_226E99364(0, &qword_281398A90, 0x277CBE440);
  v11 = v10;
  sub_22766C9C0();

  v12 = *(v0 + 16);
  *(v0 + 80) = v12;
  v13 = *(v22 + 160);
  *(v0 + 88) = v13;
  v14 = swift_allocObject();
  *(v0 + 96) = v14;
  *(v14 + 16) = sub_2274DDD18;
  *(v14 + 24) = v7;
  *(v14 + 32) = v12;
  *(v14 + 40) = v11;
  *(v14 + 48) = v6;
  *(v14 + 56) = v13;
  *(v14 + 64) = v12;
  *(v14 + 72) = v11;
  v15 = v11;
  v16 = v12;
  v17 = v15;
  v18 = v16;
  swift_bridgeObjectRetain_n();
  v19 = v17;
  v20 = v18;

  return MEMORY[0x2822009F8](sub_2274DCF5C, 0, 0);
}

uint64_t sub_2274DCF5C()
{
  v1 = *(v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v2[1] = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v2[2].i64[0] = sub_2274DE6E0;
  v2[2].i64[1] = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_2274DD068;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_2274DE6DC, v2, v4);
}

uint64_t sub_2274DD068()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2274DD224;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 56);

    v3 = sub_2274DD198;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2274DD198()
{
  v1 = v0[10];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2274DD224()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2274DD298, v1, 0);
}

uint64_t sub_2274DD298()
{
  v1 = v0[10];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

void sub_2274DD368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v11 = HIBYTE(a5);
  a6(a1, a2, a3, a4, a8);
  if (!v10)
  {
    v12 = [a9 persistentStoreCoordinator];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x80000002276A1760;
    v14 = sub_2275E0328(v11);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    v16 = sub_22766BE90();

    [v12 setMetadata:v16 forPersistentStore:a10];
  }
}

uint64_t sub_2274DD524(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2274D1830(a1, a2, v2);
}

unint64_t sub_2274DD5CC()
{
  result = qword_281398A38;
  if (!qword_281398A38)
  {
    sub_226E99364(255, &qword_28139D238, 0x277CBE4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398A38);
  }

  return result;
}

void *sub_2274DD690(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_2272C57F0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_2274DD7F0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA99060](a1, a2, v11);
      sub_226E99364(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_226E99364(0, a5, a6);
    if (sub_22766CD00() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22766CD10();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_22766CB20();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_22766CB30();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void sub_2274DDA50(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA99060](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_22766CD00() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22766CD10();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_22766CB20();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_22766CB30();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

id sub_2274DDD4C(uint64_t a1)
{
  swift_beginAccess();
  v2 = [*(a1 + 16) persistentStoreCoordinator];
  v3 = [v2 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v4 = sub_22766C2C0();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = sub_227664DD0();
    sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D51020], v7);
    swift_willThrow();
    return v3;
  }

  result = sub_22766CD20();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x22AA991A0](0, v4);
    goto LABEL_6;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_6:
    v3 = v6;

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2274DDF0C(uint64_t a1)
{
  v67 = sub_22766B390();
  v2 = *(v67 - 1);
  MEMORY[0x28223BE20](v67);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  if (qword_27D7B7F18 != -1)
  {
    swift_once();
  }

  v14 = qword_27D7CE360;
  if (*(qword_27D7CE360 + 16))
  {
    v15 = sub_226F3B95C(a1);
    if (v16)
    {
      return *(*(v14 + 56) + 24 * v15);
    }
  }

  if (sub_2274E3784(67, a1))
  {
    sub_22766A770();
    v18 = sub_22766B380();
    v19 = sub_22766C8A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v69 = v21;
      *v20 = 136315138;
      v22 = sub_22709BF40();
      v24 = sub_226E97AE8(v22, v23, &v69);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_226E8E000, v18, v19, "Couldn't find a step for version %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    (*(v2 + 8))(v4, v67);
  }

  else
  {
    v25 = sub_2275E0B44(a1);
    v66 = v25;
    if (sub_2275E0808(SBYTE1(a1), v25))
    {
      sub_22766A770();
      v26 = sub_22766B380();
      v27 = sub_22766C8B0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v64 = v27;
        v29 = v28;
        v65 = swift_slowAlloc();
        v69 = v65;
        *v29 = 136446466;
        v30 = sub_22709BF40();
        v63 = v26;
        v32 = sub_226E97AE8(v30, v31, &v69);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2082;
        v68 = v66;
        v33 = sub_22709C084();
        v34 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v33);
        v36 = sub_226E97AE8(v34, v35, &v69);

        *(v29 + 14) = v36;
        v26 = v63;
        _os_log_impl(&dword_226E8E000, v63, v64, "Found invalid version %{public}s. Attempting recovery by forcing data version %{public}s", v29, 0x16u);
        v37 = v65;
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v37, -1, -1);
        MEMORY[0x22AA9A450](v29, -1, -1);
      }

      v38 = *(v2 + 8);
      v39 = v13;
      v40 = v67;
      (v38)(v39, v67);
      if (*(v14 + 16))
      {
        v15 = sub_226F3B95C(a1 | (v66 << 8));
        if (v41)
        {
          return *(*(v14 + 56) + 24 * v15);
        }
      }

      sub_22766A770();
      v42 = sub_22766B380();
      v43 = sub_22766C8A0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v69 = v45;
        *v44 = 136446210;
        v46 = sub_22709BF40();
        v48 = sub_226E97AE8(v46, v47, &v69);
        v67 = v38;
        v49 = v48;

        *(v44 + 4) = v49;
        _os_log_impl(&dword_226E8E000, v42, v43, "Couldn't find a step for fallback version %{public}s.", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x22AA9A450](v45, -1, -1);
        MEMORY[0x22AA9A450](v44, -1, -1);

        (v67)(v10, v40);
      }

      else
      {

        (v38)(v10, v40);
      }
    }

    else
    {
      sub_22766A770();
      v50 = sub_22766B380();
      v51 = sub_22766C8A0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v69 = v53;
        *v52 = 136446466;
        v54 = sub_22709BF40();
        v56 = sub_226E97AE8(v54, v55, &v69);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2082;
        v68 = v66;
        v57 = sub_22709C084();
        v58 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v57);
        v60 = sub_226E97AE8(v58, v59, &v69);

        *(v52 + 14) = v60;
        _os_log_impl(&dword_226E8E000, v50, v51, "Found newer data version than expected %{public}s. Expected: %{public}s", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v2 + 8))(v7, v67);
    }
  }

  v61 = sub_227664DD0();
  sub_226E9946C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277D50FF8], v61);
  return swift_willThrow();
}

uint64_t objectdestroy_51Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2274DE714(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v32 = v5;
    v28 = v1;
    v36 = MEMORY[0x277D84F90];
    sub_226F1FC28(0, v6, 0);
    v35 = v36;
    v8 = a1 + 64;
    result = sub_22766CC90();
    v9 = result;
    v10 = 0;
    v11 = *(a1 + 36);
    v29 = a1 + 72;
    v30 = v6;
    v31 = v11;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = *(*(a1 + 56) + 8 * v9);
      v15 = *(v34 + 48);

      v16 = v32;
      sub_2276653F0();
      *(v16 + v15) = v14;
      v17 = v35;
      v36 = v35;
      v19 = *(v35 + 16);
      v18 = *(v35 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_226F1FC28((v18 > 1), v19 + 1, 1);
        v16 = v32;
        v17 = v36;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v35 = v17;
      result = sub_2274E20DC(v16, v17 + v20 + *(v33 + 72) * v19);
      v12 = 1 << *(a1 + 32);
      if (v9 >= v12)
      {
        goto LABEL_25;
      }

      v21 = *(v8 + 8 * v13);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v11) = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = (v29 + 8 * v13);
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_226EB526C(v9, v31, 0);
            v12 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v9, v31, 0);
      }

LABEL_4:
      ++v10;
      v9 = v12;
      if (v10 == v30)
      {
        return v35;
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

  return result;
}

void sub_2274DEA20(uint64_t a1, uint64_t a2, char *a3)
{
  v43 = a1;
  v40 = a3;
  v44 = a2;
  v3 = sub_22766B390();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2276681F0();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227662860();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = sub_227662940();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662920();
  sub_227662880();
  v18 = *(v15 + 8);
  v18(v17, v14);
  (*(v8 + 104))(v10, *MEMORY[0x277CC9830], v7);
  v19 = sub_227662850();
  v20 = *(v8 + 8);
  v20(v10, v7);
  v20(v13, v7);
  sub_227662890();
  v21 = sub_227663530();
  v18(v17, v14);
  if (v19)
  {
    if (v21 == 2)
    {
LABEL_10:

      return;
    }

    if (__OFSUB__(v21--, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v23 = v42;
    if (!v21)
    {
      v24 = v35;
      sub_227667240();
      v21 = sub_227668090();
      (*(v36 + 8))(v24, v37);
    }

    v25 = (v21 - 1);
    v26 = v41;
    if (!__OFSUB__(v21, 1))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v25 = (v21 - 1);
  if (v21 == 1)
  {
    goto LABEL_10;
  }

  v26 = v41;
  v23 = v42;
  if (__OFSUB__(v21, 1))
  {
LABEL_19:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

LABEL_12:
  sub_22766A630();
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_226E8E000, v27, v28, "Plan does not start on first day of week. Adjusting dayOffsets in plan.", v29, 2u);
    MEMORY[0x22AA9A450](v29, -1, -1);
  }

  v30 = (*(v38 + 8))(v26, v39);
  MEMORY[0x28223BE20](v30);
  v31 = v40;
  *(&v35 - 4) = v25;
  *(&v35 - 3) = v31;
  *(&v35 - 2) = v23;
  sub_2274E187C(v43, sub_2274E214C);
  if (v32[2])
  {
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9810, &qword_227674C68);
    v34 = sub_22766D010();
    v32 = v33;
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
  }

  v45 = v34;
  sub_2274E0FD4(v32, 1, &v45);
}

void sub_2274DEF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2276681F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __OFSUB__(a1, a3);
  v13 = a1 - a3;
  if (v12)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
LABEL_5:

    return;
  }

  v14 = v9;
  sub_227667240();
  v15 = sub_227668090();
  (*(v8 + 8))(v11, v14);
  if ((a4 * v15) >> 64 != (a4 * v15) >> 63)
  {
    goto LABEL_7;
  }

  if (!__OFADD__(a4 * v15, v13))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_2274DF054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 240) = v21;
  *(v9 + 248) = v8;
  *(v9 + 224) = v19;
  *(v9 + 232) = v20;
  *(v9 + 49) = v18;
  *(v9 + 208) = a8;
  *(v9 + 216) = v17;
  *(v9 + 192) = a6;
  *(v9 + 200) = a7;
  *(v9 + 176) = a1;
  *(v9 + 184) = a2;
  v10 = sub_227663540();
  *(v9 + 256) = v10;
  *(v9 + 264) = *(v10 - 8);
  *(v9 + 272) = swift_task_alloc();
  v11 = sub_2276627D0();
  *(v9 + 280) = v11;
  *(v9 + 288) = *(v11 - 8);
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  sub_227662750();
  *(v9 + 312) = swift_task_alloc();
  v12 = sub_227666B60();
  *(v9 + 320) = v12;
  *(v9 + 328) = *(v12 - 8);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v13 = sub_22766B390();
  *(v9 + 360) = v13;
  *(v9 + 368) = *(v13 - 8);
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  v14 = sub_2276681F0();
  *(v9 + 416) = v14;
  *(v9 + 424) = *(v14 - 8);
  *(v9 + 432) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274DF32C, 0, 0);
}

uint64_t sub_2274DF32C(uint64_t a1)
{
  v79 = v1;
  v3 = *(v1 + 424);
  v2 = *(v1 + 432);
  v4 = *(v1 + 416);
  sub_227667240();
  v5 = sub_227668090();
  *(v1 + 440) = v5;
  (*(v3 + 8))(v2, v4);
  sub_22766A630();
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 224);
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_226E8E000, v6, v7, "Filling plan with %ld weeks from weekly schedule", v9, 0xCu);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v10 = *(v1 + 408);
  v11 = *(v1 + 360);
  v12 = *(v1 + 368);
  v13 = *(v1 + 224);

  v14 = *(v12 + 8);
  *(v1 + 448) = v14;
  *(v1 + 456) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v14(v10, v11);
  if (v13 < 0)
  {
    goto LABEL_47;
  }

  v16 = *(v1 + 224);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    v19 = MEMORY[0x277D84F98];
LABEL_40:
    v61 = *(v1 + 208);
    sub_2274E1AF8(v19, v16, *(v1 + 440));
    sub_2274DEA20(v19, v61, v16);
    v63 = sub_2274DE714(v62);

    if (*(v63 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
      v64 = sub_22766D010();
    }

    else
    {
      v64 = MEMORY[0x277D84F98];
    }

    v78 = v64;
    sub_2274E1340(v63, 1, &v78);
    v65 = *(v1 + 304);
    v66 = *(v1 + 288);
    v67 = *(v1 + 272);
    v68 = *(v1 + 280);
    v70 = *(v1 + 256);
    v69 = *(v1 + 264);
    v76 = *(v1 + 232);
    v71 = *(v1 + 208);
    v72 = *(v1 + 192);
    v77 = *(v1 + 296);
    sub_227662740();
    v73 = *(v66 + 16);
    v73(v65, v72, v68);
    (*(v69 + 16))(v67, v71, v70);
    v73(v77, v76, v68);
    sub_2276637F0();

    v74 = *(v1 + 8);
    v75.n128_u64[0] = 0;

    return v74(v75);
  }

  if (v5 < 0)
  {
    goto LABEL_48;
  }

  v18 = 0;
  *(v1 + 464) = OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_objectiveUtils;
  v19 = MEMORY[0x277D84F98];
  while (1)
  {
    *(v1 + 472) = v18;
    v20 = *(v1 + 440);
    if (v20)
    {
      break;
    }

LABEL_8:
    if (++v18 == v16)
    {
      goto LABEL_40;
    }
  }

  v21 = v18 * v20;
  *(v1 + 480) = v18 * v20;
  if ((v18 * v20) >> 64 != (v18 * v20) >> 63)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v22 = 0;
  *(v1 + 504) = v17;
  *(v1 + 512) = v19;
  *(v1 + 488) = v19;
  *(v1 + 496) = 0;
  *(v1 + 520) = v21;
  while (1)
  {
    sub_22766A630();
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v1 + 472);
      v26 = swift_slowAlloc();
      *v26 = 134218496;
      *(v26 + 4) = v25;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v22;
      *(v26 + 22) = 2048;
      *(v26 + 24) = v21;
      _os_log_impl(&dword_226E8E000, v23, v24, "At week %ld and day %ld. Day offset=%ld", v26, 0x20u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    v27 = *(v1 + 448);
    v28 = *(v1 + 400);
    v29 = *(v1 + 360);

    v27(v28, v29);
    v30 = MEMORY[0x22AA95620](v22);
    if (v30 == 7)
    {
      sub_22766A630();
      v31 = sub_22766B380();
      v32 = sub_22766C890();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = v22;
        _os_log_impl(&dword_226E8E000, v31, v32, "Failed to create weekday for index: %ld", v33, 0xCu);
        MEMORY[0x22AA9A450](v33, -1, -1);
      }

      v34 = *(v1 + 448);
      v35 = *(v1 + 376);
      v36 = *(v1 + 360);

      v34(v35, v36);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A5780(0, v17[2] + 1, 1, v17);
        v17 = result;
      }

      v37 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }

    if (!*(*(v1 + 200) + 16) || (v38 = sub_226F3AC2C(v30), (v39 & 1) == 0))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = MEMORY[0x277D84F90];
      if ((result & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v40 = *(*(*(v1 + 200) + 56) + 8 * v38);
    *(v1 + 528) = v40;

    sub_22766A630();

    v41 = sub_22766B380();
    v42 = sub_22766C8B0();
    v43 = os_log_type_enabled(v41, v42);
    v37 = MEMORY[0x277D84F90];
    if (v43)
    {
      v44 = swift_slowAlloc();
      *v44 = 134218240;
      *(v44 + 4) = *(v40 + 16);

      *(v44 + 12) = 2048;
      *(v44 + 14) = v21;
      _os_log_impl(&dword_226E8E000, v41, v42, "Adding %ld scheduled items at day=%ld", v44, 0x16u);
      MEMORY[0x22AA9A450](v44, -1, -1);
    }

    else
    {
    }

    result = (*(v1 + 448))(*(v1 + 392), *(v1 + 360));
    v50 = *(v40 + 16);
    *(v1 + 536) = v50;
    if (v50)
    {
      break;
    }

    v51 = *(v1 + 520);
    v52 = *(v1 + 488);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v52;
    sub_22736A74C(v37, v51, isUniquelyReferenced_nonNull_native);
    v19 = v52;
    result = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v1 + 504);
    if ((result & 1) == 0)
    {
LABEL_34:
      result = sub_2273A5780(0, v17[2] + 1, 1, v17);
      v17 = result;
    }

LABEL_25:
    v46 = v17[2];
    v45 = v17[3];
    if (v46 >= v45 >> 1)
    {
      result = sub_2273A5780((v45 > 1), v46 + 1, 1, v17);
      v17 = result;
    }

    v47 = *(v1 + 440);
    v48 = *(v1 + 496) + 1;
    v17[2] = v46 + 1;
    v17[v46 + 4] = v37;
    if (v48 == v47)
    {
      v18 = *(v1 + 472);
      v16 = *(v1 + 224);
      goto LABEL_8;
    }

    v22 = *(v1 + 496) + 1;
    *(v1 + 504) = v17;
    *(v1 + 512) = v19;
    *(v1 + 488) = v19;
    *(v1 + 496) = v22;
    v49 = *(v1 + 480);
    v21 = v49 + v22;
    *(v1 + 520) = v49 + v22;
    if (__OFADD__(v49, v22))
    {
      __break(1u);
      goto LABEL_46;
    }
  }

  *(v1 + 552) = 0u;
  *(v1 + 544) = v37;
  v54 = *(v1 + 528);
  if (!*(v54 + 16))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v55 = *(v54 + 32);
  *(v1 + 568) = v55;
  v56 = *(v54 + 40);
  *(v1 + 576) = v56;
  v57 = *(v54 + 48);
  *(v1 + 584) = v57;
  v58 = *(v54 + 56);
  *(v1 + 592) = v58;
  v59 = *(v54 + 64);
  *(v1 + 50) = v59;

  sub_226EB396C(v57, v58, v59);
  *(v1 + 16) = v55;
  *(v1 + 24) = v56;
  *(v1 + 32) = v57;
  *(v1 + 40) = v58;
  *(v1 + 48) = v59;
  v60 = swift_task_alloc();
  *(v1 + 600) = v60;
  *v60 = v1;
  v60[1] = sub_2274DFC18;

  return sub_227016634(v1 + 16);
}

uint64_t sub_2274DFC18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 608) = a1;
  *(v3 + 616) = v1;

  if (v1)
  {

    v4 = sub_2274E01EC;
  }

  else
  {
    v4 = sub_2274DFD38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2274DFD38()
{
  v52 = v0;
  *(v0 + 56) = *(v0 + 568);
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 50);
  *(v0 + 64) = *(v0 + 576);
  *(v0 + 72) = *(v0 + 584);
  *(v0 + 88) = v3;
  v4 = sub_227016004(v2, v0 + 56);
  if (v1)
  {

    v11 = *(v0 + 50);
    v12 = *(v0 + 592);
    v13 = *(v0 + 584);

    sub_226EB2DFC(v13, v12, v11);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v5 = v4;
    v46 = *(v0 + 50);
    v6 = *(v0 + 592);
    v7 = *(v0 + 584);
    v42 = *(v0 + 568);
    v47 = *(v0 + 504);
    v8 = *(v0 + 344);
    v44 = *(v0 + 240);
    v9 = *(v0 + 184);

    *(v0 + 96) = v42;
    *(v0 + 112) = v7;
    *(v0 + 120) = v6;
    *(v0 + 128) = v46;
    sub_2271322AC(v8, v5, v0 + 96, v47, v9, v44);
    *(v0 + 624) = v10;
    v17 = *(v0 + 336);
    v16 = *(v0 + 344);
    v18 = *(v0 + 320);
    v19 = *(v0 + 328);

    sub_22766A630();
    (*(v19 + 16))(v17, v16, v18);
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 448);
    v24 = *(v0 + 384);
    v25 = *(v0 + 360);
    v27 = *(v0 + 328);
    v26 = *(v0 + 336);
    v28 = *(v0 + 320);
    if (v22)
    {
      v49 = *(v0 + 448);
      v29 = swift_slowAlloc();
      v48 = v24;
      v30 = swift_slowAlloc();
      v51 = v30;
      *v29 = 136315138;
      sub_2274E2014();
      v45 = v25;
      v31 = sub_22766D140();
      v33 = v32;
      v43 = v21;
      v34 = *(v27 + 8);
      v34(v26, v28);
      v35 = sub_226E97AE8(v31, v33, &v51);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_226E8E000, v20, v43, "Selected workout %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);

      v49(v48, v45);
    }

    else
    {

      v34 = *(v27 + 8);
      v34(v26, v28);
      v23(v24, v25);
    }

    *(v0 + 632) = v34;
    v36 = *(v0 + 50);
    v37 = *(v0 + 592);
    v38 = *(v0 + 584);
    v50 = *(v0 + 568);
    v39 = *(v0 + 352);
    (*(*(v0 + 328) + 32))(v39, *(v0 + 344), *(v0 + 320));
    sub_227016E6C(v39);
    *(v0 + 136) = v50;
    *(v0 + 152) = v38;
    *(v0 + 160) = v37;
    *(v0 + 168) = v36;
    v40 = swift_task_alloc();
    *(v0 + 640) = v40;
    *v40 = v0;
    v40[1] = sub_2274E0344;
    v41 = *(v0 + 352);

    return sub_2270172E0(v41, (v0 + 136));
  }
}

uint64_t sub_2274E01EC()
{

  v1 = *(v0 + 50);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);

  sub_226EB2DFC(v3, v2, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2274E0344()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {

    v3 = sub_2274E0D54;
  }

  else
  {
    v4 = *(v2 + 50);
    v5 = *(v2 + 592);
    v6 = *(v2 + 584);

    sub_226EB2DFC(v6, v5, v4);
    v3 = sub_2274E048C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2274E048C(uint64_t a1)
{
  v80 = v1;
  v2 = *(v1 + 624);
  v3 = *(v1 + 560);
  v4 = sub_227666A50();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 544);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_2273A57A4((v9 > 1), v10 + 1, 1, v8);
    }

    v2 = v2 + v3;
    v11 = *(v1 + 536);
    v12 = *(v1 + 552) + 1;
    result = (*(v1 + 632))(*(v1 + 352), *(v1 + 320));
    *(v8 + 2) = v10 + 1;
    v14 = &v8[16 * v10];
    *(v14 + 4) = v4;
    *(v14 + 5) = v6;
    if (v12 != v11)
    {
      break;
    }

    v77 = *(v1 + 648);
    v15 = MEMORY[0x277D84F90];
LABEL_6:
    v16 = *(v1 + 520);
    v17 = *(v1 + 488);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v17;
    sub_22736A74C(v8, v16, v18);
    v78 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v1 + 504);
    if ((result & 1) == 0)
    {
      result = sub_2273A5780(0, v19[2] + 1, 1, *(v1 + 504));
      v19 = result;
    }

    v21 = v19[2];
    v20 = v19[3];
    v4 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      result = sub_2273A5780((v20 > 1), v21 + 1, 1, v19);
      v19 = result;
    }

    while (1)
    {
      v22 = *(v1 + 440);
      v23 = *(v1 + 496) + 1;
      v19[2] = v4;
      v19[v21 + 4] = v8;
      if (v23 == v22)
      {
        v24 = *(v1 + 224);
        v25 = *(v1 + 472) + 1;
        do
        {
          if (v24 == v25)
          {
            v59 = *(v1 + 208);
            sub_2274E1AF8(v78, v24, *(v1 + 440));
            sub_2274DEA20(v78, v59, v24);
            v61 = sub_2274DE714(v60);

            if (*(v61 + 16))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
              v62 = sub_22766D010();
            }

            else
            {
              v62 = MEMORY[0x277D84F98];
            }

            v79[0] = v62;
            sub_2274E1340(v61, 1, v79);
            if (v77)
            {

              return swift_unexpectedError();
            }

            else
            {
              v63 = *(v1 + 304);
              v64 = *(v1 + 288);
              v65 = *(v1 + 272);
              v66 = *(v1 + 280);
              v68 = *(v1 + 256);
              v67 = *(v1 + 264);
              v75 = *(v1 + 232);
              v69 = *(v1 + 208);
              v70 = *(v1 + 192);
              v76 = *(v1 + 296);
              sub_227662740();
              v71 = *(v64 + 16);
              v71(v63, v70, v66);
              (*(v67 + 16))(v65, v69, v68);
              v71(v76, v75, v66);
              sub_2276637F0();

              v72 = *(v1 + 8);
              v73.n128_f64[0] = v2;

              return v72(v73);
            }
          }

          *(v1 + 472) = v25;
          v26 = *(v1 + 440);
          ++v25;
        }

        while (!v26);
        v27 = v25 - 1;
        v28 = (v25 - 1) * v26;
        *(v1 + 480) = v28;
        if ((v27 * v26) >> 64 != v28 >> 63)
        {
          goto LABEL_53;
        }

        v8 = 0;
      }

      else
      {
        v8 = (*(v1 + 496) + 1);
        v28 = *(v1 + 480);
      }

      *(v1 + 504) = v19;
      *(v1 + 512) = v78;
      *(v1 + 488) = v78;
      *(v1 + 496) = v8;
      v6 = &v8[v28];
      *(v1 + 520) = &v8[v28];
      if (__OFADD__(v28, v8))
      {
        break;
      }

      sub_22766A630();
      v29 = sub_22766B380();
      v30 = sub_22766C8B0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v1 + 472);
        v32 = swift_slowAlloc();
        *v32 = 134218496;
        *(v32 + 4) = v31;
        *(v32 + 12) = 2048;
        *(v32 + 14) = v8;
        *(v32 + 22) = 2048;
        *(v32 + 24) = v6;
        _os_log_impl(&dword_226E8E000, v29, v30, "At week %ld and day %ld. Day offset=%ld", v32, 0x20u);
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      v33 = *(v1 + 448);
      v34 = *(v1 + 400);
      v35 = *(v1 + 360);

      v33(v34, v35);
      v36 = MEMORY[0x22AA95620](v8);
      if (v36 == 7)
      {
        sub_22766A630();
        v37 = sub_22766B380();
        v38 = sub_22766C890();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 134217984;
          *(v39 + 4) = v8;
          _os_log_impl(&dword_226E8E000, v37, v38, "Failed to create weekday for index: %ld", v39, 0xCu);
          MEMORY[0x22AA9A450](v39, -1, -1);
        }

        v40 = *(v1 + 448);
        v41 = *(v1 + 376);
        v42 = *(v1 + 360);

        v40(v41, v42);
      }

      else if (*(*(v1 + 200) + 16))
      {
        v43 = sub_226F3AC2C(v36);
        if (v44)
        {
          v46 = *(*(*(v1 + 200) + 56) + 8 * v43);
          *(v1 + 528) = v46;

          sub_22766A630();

          v47 = sub_22766B380();
          v48 = sub_22766C8B0();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 134218240;
            *(v49 + 4) = *(v46 + 16);

            *(v49 + 12) = 2048;
            *(v49 + 14) = v6;
            _os_log_impl(&dword_226E8E000, v47, v48, "Adding %ld scheduled items at day=%ld", v49, 0x16u);
            MEMORY[0x22AA9A450](v49, -1, -1);
          }

          else
          {
          }

          result = (*(v1 + 448))(*(v1 + 392), *(v1 + 360));
          v50 = *(v46 + 16);
          *(v1 + 536) = v50;
          v8 = v15;
          if (v50)
          {
            v74 = 0;
            goto LABEL_36;
          }

          goto LABEL_6;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A5780(0, v19[2] + 1, 1, v19);
        v19 = result;
      }

      v21 = v19[2];
      v45 = v19[3];
      v4 = v21 + 1;
      v8 = v15;
      if (v21 >= v45 >> 1)
      {
        result = sub_2273A5780((v45 > 1), v21 + 1, 1, v19);
        v19 = result;
        v8 = v15;
      }
    }

    __break(1u);
LABEL_51:
    v8 = sub_2273A57A4(0, *(v8 + 2) + 1, 1, v8);
  }

  v74 = *(v1 + 552) + 1;
  v15 = v8;
LABEL_36:
  *(v1 + 560) = v2;
  *(v1 + 552) = v74;
  *(v1 + 544) = v15;
  v51 = *(v1 + 528);
  if (v74 >= *(v51 + 16))
  {
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
    v52 = v51 + 40 * v74;
    v53 = *(v52 + 32);
    *(v1 + 568) = v53;
    v54 = *(v52 + 40);
    *(v1 + 576) = v54;
    v55 = *(v52 + 48);
    *(v1 + 584) = v55;
    v56 = *(v52 + 56);
    *(v1 + 592) = v56;
    v57 = *(v52 + 64);
    *(v1 + 50) = v57;

    sub_226EB396C(v55, v56, v57);
    *(v1 + 16) = v53;
    *(v1 + 24) = v54;
    *(v1 + 32) = v55;
    *(v1 + 40) = v56;
    *(v1 + 48) = v57;
    v58 = swift_task_alloc();
    *(v1 + 600) = v58;
    *v58 = v1;
    v58[1] = sub_2274DFC18;

    return sub_227016634(v1 + 16);
  }

  return result;
}

uint64_t sub_2274E0D54()
{
  v8 = *(v0 + 632);
  v1 = *(v0 + 50);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 352);
  v5 = *(v0 + 320);

  sub_226EB2DFC(v3, v2, v1);
  v8(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2274E0ED4()
{
  v1 = OBJC_IVAR____TtC15SeymourServices23WorkoutPlanContentUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanContentUtils(uint64_t a1)
{
  result = qword_27D7BE0C0;
  if (!qword_27D7BE0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2274E0FD4(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_226F491D4(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_226FF23B0();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_226FE69BC(v13, a2 & 1);
  v17 = sub_226F491D4(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_22766D220();
    __break(1u);
LABEL_29:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_226F491D4(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_226FE69BC(v34, 1);
        v38 = sub_226F491D4(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v27;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_2274E1340(uint64_t a1, int a2, unint64_t *a3)
{
  v7 = sub_227665440();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  MEMORY[0x28223BE20](v11);
  v15 = v53 - v14;
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_23;
  }

  LODWORD(v55) = a2;
  v53[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v57 = *(v13 + 72);
  v59 = a1;
  v53[0] = v17;
  sub_2274E206C(a1 + v17, v53 - v14);
  v54 = v8;
  v60 = *(v8 + 32);
  v61 = v7;
  v60(v10, v15, v7);
  v56 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v21 = sub_226F39F04(v10);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v20;
  if (v19[3] >= v24)
  {
    if (v55)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_226FF23C4();
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_226FE69D0(v24, v55 & 1);
  v26 = sub_226F39F04(v10);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    if ((v25 & 1) == 0)
    {
LABEL_13:
      v32 = *a3;
      *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v33 = v32[6];
      v55 = *(v54 + 72);
      v60((v33 + v55 * v21), v10, v61);
      *(v32[7] + 8 * v21) = v18;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (!v35)
      {
        v32[2] = v36;
        v37 = v59;
        if (v58 != 1)
        {
          v38 = v59 + v57 + v53[0];
          v39 = 1;
          while (v39 < *(v37 + 16))
          {
            sub_2274E206C(v38, v15);
            v60(v10, v15, v61);
            v40 = *&v15[v56];
            v41 = *a3;
            v42 = sub_226F39F04(v10);
            v44 = v41[2];
            v45 = (v43 & 1) == 0;
            v35 = __OFADD__(v44, v45);
            v46 = v44 + v45;
            if (v35)
            {
              goto LABEL_24;
            }

            v47 = v43;
            if (v41[3] < v46)
            {
              sub_226FE69D0(v46, 1);
              v42 = sub_226F39F04(v10);
              if ((v47 & 1) != (v48 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v47)
            {
              goto LABEL_10;
            }

            v49 = *a3;
            *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
            v50 = v42;
            v60((v49[6] + v55 * v42), v10, v61);
            *(v49[7] + 8 * v50) = v40;
            v51 = v49[2];
            v35 = __OFADD__(v51, 1);
            v52 = v51 + 1;
            if (v35)
            {
              goto LABEL_25;
            }

            ++v39;
            v49[2] = v52;
            v38 += v57;
            v37 = v59;
            if (v58 == v39)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v28 = swift_allocError();
    swift_willThrow();

    v64 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v30 = swift_dynamicCast();
    v31 = v61;
    if ((v30 & 1) == 0)
    {

      (*(v54 + 8))(v10, v31);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_22766D220();
  __break(1u);
LABEL_28:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_2274E187C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v33 = MEMORY[0x277D84F90];
    sub_226F1FC08(0, v3, 0);
    v4 = v33;
    v5 = v2 + 64;
    v6 = sub_22766CC90();
    v7 = 0;
    v32 = *(v2 + 36);
    v27 = v2 + 72;
    v28 = v3;
    v29 = v2 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v32 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v31 = v7;
      v10 = *(*(v2 + 48) + 8 * v6);
      v11 = *(*(v2 + 56) + 8 * v6);

      v12 = a2(v10, v11);
      v14 = v13;

      v15 = v4;
      v34 = v4;
      v16 = v2;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F1FC08((v17 > 1), v18 + 1, 1);
        v15 = v34;
      }

      *(v15 + 16) = v18 + 1;
      v19 = v15 + 16 * v18;
      *(v19 + 32) = v12;
      *(v19 + 40) = v14;
      v8 = 1 << *(v16 + 32);
      if (v6 >= v8)
      {
        goto LABEL_24;
      }

      v5 = v29;
      v20 = *(v29 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v16;
      v4 = v15;
      if (v32 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v27 + 8 * v9);
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_226EB526C(v6, v32, 0);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v6, v32, 0);
      }

LABEL_4:
      v7 = v31 + 1;
      v6 = v8;
      if (v31 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
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
}

uint64_t sub_2274E1AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v58 = &v51 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  sub_22766A630();
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  v19 = os_log_type_enabled(v17, v18);
  v54 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a2;
    _os_log_impl(&dword_226E8E000, v17, v18, "Logging %ld week workout plan", v20, 0xCu);
    v21 = v20;
    v9 = v54;
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  v24 = *(v7 + 8);
  v22 = v7 + 8;
  v23 = v24;
  result = v24(v16, v6);
  v27 = a3 * a2;
  if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
  {
    goto LABEL_31;
  }

  if (v27 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v59 = a3 * a2;
    if (v27)
    {
      v28 = 0;
      *&v26 = 134217984;
      v57 = v26;
      *&v26 = 134218242;
      v51 = v26;
      v56 = v23;
      v52 = v22;
      v53 = a3;
      while (a3 != -1)
      {
        if (!a3)
        {
          if (!v28)
          {
            goto LABEL_33;
          }

          goto LABEL_20;
        }

        if (!(v28 % a3))
        {
          goto LABEL_16;
        }

LABEL_20:
        if (*(a1 + 16) && (v33 = sub_226F491D4(v28), (v34 & 1) != 0))
        {
          v35 = *(*(a1 + 56) + 8 * v33);

          v36 = v55;
          sub_22766A630();

          v37 = sub_22766B380();
          v38 = sub_22766C8B0();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v60 = v40;
            *v39 = v51;
            *(v39 + 4) = v28;
            *(v39 + 12) = 2080;
            v41 = v6;
            v42 = a1;
            v43 = MEMORY[0x22AA98660](v35, MEMORY[0x277D52CC8]);
            v45 = v44;

            v46 = sub_226E97AE8(v43, v45, &v60);

            *(v39 + 14) = v46;
            a1 = v42;
            v6 = v41;
            a3 = v53;
            _os_log_impl(&dword_226E8E000, v37, v38, "Day: %ld -> Items: %s", v39, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v40);
            MEMORY[0x22AA9A450](v40, -1, -1);
            MEMORY[0x22AA9A450](v39, -1, -1);

            v47 = v55;
          }

          else
          {

            v47 = v36;
          }

          v23 = v56;
          result = v56(v47, v6);
          v9 = v54;
        }

        else
        {
          sub_22766A630();
          v48 = sub_22766B380();
          v49 = sub_22766C8B0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = v57;
            *(v50 + 4) = v28;
            _os_log_impl(&dword_226E8E000, v48, v49, "Day: %ld -> Unscheduled", v50, 0xCu);
            MEMORY[0x22AA9A450](v50, -1, -1);
          }

          result = v23(v9, v6);
        }

        if (v59 == ++v28)
        {
          return result;
        }
      }

      if (v28 == 0x8000000000000000)
      {
        goto LABEL_30;
      }

LABEL_16:
      if (__OFADD__(v28 / a3, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_22766A630();
      v29 = sub_22766B380();
      v30 = sub_22766C8B0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = v57;
        *(v31 + 4) = v28 / a3 + 1;
        _os_log_impl(&dword_226E8E000, v29, v30, "--- Week %ld ---", v31, 0xCu);
        v32 = v31;
        v23 = v56;
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      v23(v58, v6);
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_2274E2014()
{
  result = qword_27D7BB360;
  if (!qword_27D7BB360)
  {
    sub_227666B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB360);
  }

  return result;
}

uint64_t sub_2274E206C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274E20DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274E21BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_2274E2258(&qword_27D7BE0D8, &protocol conformance descriptor for PersistenceError);
  v5 = sub_2274E2258(&qword_28139B8D0, MEMORY[0x277D51048]);

  return a3(a1, v4, v5);
}

uint64_t sub_2274E2258(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227664DD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2274E229C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v43 = a1;
  v46 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v14);
  v45 = &v43 - v15;
  v16 = sub_22766B390();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v17 + 8))(v19, v16);
  if (!a3)
  {
    v28 = *(*__swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40)) + 16);
    v29 = swift_allocObject();
    *(v29 + 16) = v43;
    *(v29 + 24) = a2;

    sub_227669280();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = 0;
    v31 = v44;
    (*(v9 + 16))(v44, v13, v8);
    v32 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v9 + 32))(v34 + v32, v31, v8);
    v35 = (v34 + v33);
    *v35 = sub_2274E2E88;
    v35[1] = v30;
    v36 = v28;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v20 = *(*__swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40)) + 24);
    v21 = swift_allocObject();
    *(v21 + 16) = v43;
    *(v21 + 24) = a2;

    sub_227669280();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = 8;
    v23 = v44;
    (*(v9 + 16))(v44, v13, v8);
    v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v9 + 32))(v26 + v24, v23, v8);
    v27 = (v26 + v25);
    *v27 = sub_2274E2E3C;
    v27[1] = v22;

LABEL_5:
    v37 = v45;
    sub_227669270();
    v38 = *(v9 + 8);
    v38(v13, v8);
    sub_2272A3158(v37, v46);
    return (v38)(v37, v8);
  }

  v40 = sub_2276646E0();
  sub_2274E2DB4();
  v41 = swift_allocError();
  (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D50B40], v40);
  *(swift_allocObject() + 16) = v41;
  return sub_227669280();
}

uint64_t sub_2274E27F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  sub_227287EEC(1, 0, 0, v7);
  sub_2272A3688(v7, a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2274E29D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  sub_2272884A4(20, 0, 0, v7);
  sub_2272A3BBC(v7, a1);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2274E2BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  sub_227288A30(21, 0, 0, v7);
  sub_2272A40F0(v7, a1);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2274E2DB4()
{
  result = qword_27D7B8C40;
  if (!qword_27D7B8C40)
  {
    sub_2276646E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8C40);
  }

  return result;
}

uint64_t sub_2274E2ED8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2273D33A8(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_2274E2F98()
{
  result = qword_27D7BE0E0;
  if (!qword_27D7BE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE0E0);
  }

  return result;
}

uint64_t sub_2274E2FEC(char a1)
{
  result = 12630;
  switch(a1)
  {
    case 1:
      return 12886;
    case 2:
      return 13142;
    case 3:
      return 13398;
    case 4:
      return 13654;
    case 5:
      return 13910;
    case 6:
      return 14166;
    case 7:
      return 14422;
    case 8:
      return 14678;
    case 9:
      return 3158358;
    case 10:
      return 3223894;
    case 11:
      return 3289430;
    case 12:
      return 3354966;
    case 13:
      return 3420502;
    case 14:
      return 3486038;
    case 15:
      return 3551574;
    case 16:
      return 3617110;
    case 17:
      return 3682646;
    case 18:
      return 3748182;
    case 19:
      return 3158614;
    case 20:
      return 3224150;
    case 21:
      return 3289686;
    case 22:
      return 3355222;
    case 23:
      return 3420758;
    case 24:
      return 3486294;
    case 25:
      return 3551830;
    case 26:
      return 3617366;
    case 27:
      return 3682902;
    case 28:
      return 3748438;
    case 29:
      return 3158870;
    case 30:
      return 3224406;
    case 31:
      return 0x315F313356;
    case 32:
      return 3289942;
    case 33:
      return 3355478;
    case 34:
      return 3421014;
    case 35:
      return 3486550;
    case 36:
      return 3552086;
    case 37:
      return 3617622;
    case 38:
      return 3683158;
    case 39:
      return 3748694;
    case 40:
      return 3159126;
    case 41:
      return 3224662;
    case 42:
      return 3290198;
    case 43:
      return 3355734;
    case 44:
      return 3421270;
    case 45:
      return 3486806;
    case 46:
      return 3552342;
    case 47:
      return 3617878;
    case 48:
      return 3683414;
    case 49:
      return 3748950;
    case 50:
      return 3159382;
    case 51:
      return 3224918;
    case 52:
      return 3290454;
    case 53:
      return 3355990;
    case 54:
      return 3421526;
    case 55:
      return 3487062;
    case 56:
      return 3552598;
    case 57:
      return 3618134;
    case 58:
      return 3683670;
    case 59:
      return 3749206;
    case 60:
      v3 = 3158358;
      return v3 + 1280;
    case 61:
      return 3225174;
    case 62:
      v3 = 3289430;
      return v3 + 1280;
    case 63:
      return 3356246;
    case 64:
      v3 = 3420502;
      return v3 + 1280;
    case 65:
      return 3487318;
    case 66:
      v3 = 3551574;
      return v3 + 1280;
    case 67:
      return 3618390;
    case 68:
      v3 = 3682646;
      return v3 + 1280;
    case 69:
      return 3749462;
    case 70:
      return 3159894;
    case 71:
      return 3225430;
    case 72:
      return 3290966;
    case 73:
      return 3356502;
    case 74:
      return 3422038;
    case 75:
      return 3487574;
    case 76:
      return 3553110;
    case 77:
      return 3618646;
    case 78:
      return 3684182;
    case 79:
      return 3749718;
    case 80:
      v4 = 3158358;
      goto LABEL_29;
    case 81:
      return 3225686;
    case 82:
      v4 = 3289430;
LABEL_29:
      result = v4 + 1792;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2274E3504(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2274E2FEC(*a1);
  v5 = v4;
  if (v3 == sub_2274E2FEC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

uint64_t sub_2274E358C()
{
  v1 = *v0;
  sub_22766D370();
  sub_2274E2FEC(v1);
  sub_22766C100();

  return sub_22766D3F0();
}

double sub_2274E35F0(uint64_t a1)
{
  sub_2274E2FEC(*v1);
  sub_22766C100();

  return result;
}

uint64_t sub_2274E3644(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  sub_2274E2FEC(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_2274E36A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2274E3910(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2274E36D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2274E2FEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_2274E3784(char a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_2274E2FEC(a1);
  v5 = v4;
  v6 = 0;
  while (sub_2274E2FEC(byte_283A917F8[v6 + 32]) != v3 || v7 != v5)
  {
    v9 = sub_22766D190();

    if (v9)
    {
      goto LABEL_10;
    }

    if (++v6 == 83)
    {
LABEL_17:
      sub_22766CFB0();
      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_10:
  v10 = sub_2274E2FEC(v2);
  v12 = v11;
  v9 = 0;
  while (sub_2274E2FEC(byte_283A917F8[v9 + 32]) != v10 || v13 != v12)
  {
    v15 = sub_22766D190();

    if (v15)
    {
      return v6 < v9;
    }

    if (++v9 == 83)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return v6 < v9;
}

unint64_t sub_2274E3910(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D1E0();

  if (v2 >= 0x53)
  {
    return 83;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2274E3964(uint64_t a1, unint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662570();
  v10 = v8;
  if (v9 == 0xD00000000000002CLL && 0x80000002276A1AF0 == v8 || (sub_22766D190() & 1) != 0)
  {
    v4 = 0;
LABEL_5:
    sub_226EDC420(a1, a2);

    return v4;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1B20 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1B50 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1B80 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1BB0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1BE0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 5;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1C10 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 6;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1C40 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 7;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1C70 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 8;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1CA0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 9;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1CD0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 10;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1D00 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 11;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1D30 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 12;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1D60 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 13;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1D90 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 14;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1DC0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 15;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1DF0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1E20 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 17;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1E50 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 18;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1E80 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 19;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1EB0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 20;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1EE0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 21;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1F10 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 22;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1F40 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 23;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1F70 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 24;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1FA0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 25;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A1FD0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 26;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2000 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 27;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2030 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 28;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2060 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 29;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2090 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 30;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A20C0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 31;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A20F0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 32;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2120 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 33;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2150 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 34;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2180 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 35;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A21B0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 36;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A21E0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 37;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2210 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 38;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2240 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 39;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2270 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 40;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A22A0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 41;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A22D0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 42;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2300 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 43;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2330 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 44;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2360 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 45;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2390 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 46;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A23C0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 47;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A23F0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 48;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2420 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 49;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2450 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 50;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2480 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 51;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A24B0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 52;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A24E0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 53;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2510 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 54;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2540 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 55;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2570 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 56;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A25A0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 57;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A25D0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 58;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2600 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 59;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2630 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 60;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2660 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 61;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2690 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 62;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A26C0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 63;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A26F0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 64;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2720 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 65;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2750 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 66;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2780 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 67;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A27B0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 68;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A27E0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 69;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2810 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 70;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2840 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 71;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2870 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 72;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A28A0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 73;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A28D0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 74;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2900 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 75;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2930 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 76;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2960 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 77;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2990 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 78;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A29C0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 79;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A29F0 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 80;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2A20 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 81;
    goto LABEL_5;
  }

  if (v9 == 0xD00000000000002CLL && 0x80000002276A2A50 == v10 || (sub_22766D190() & 1) != 0)
  {
    v4 = 82;
    goto LABEL_5;
  }

  sub_22766A770();
  v12 = swift_allocObject();
  v26 = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;

  v30 = sub_22766B380();
  v29 = sub_22766C8A0();
  v28 = swift_allocObject();
  *(v28 + 16) = 34;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v26;
  *(v13 + 16) = sub_2274E531C;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2274E5354;
  *(v15 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE0E8, &unk_227688880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227675BD0;
  v17 = v27;
  v18 = v28;
  *(inited + 32) = sub_2274E534C;
  *(inited + 40) = v18;
  *(inited + 48) = sub_2274E551C;
  *(inited + 56) = v17;
  *(inited + 64) = sub_2274E535C;
  *(inited + 72) = v15;

  if (os_log_type_enabled(v30, v29))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136446210;
    v21 = sub_226E97AE8(v9, v10, &v31);

    *(v19 + 4) = v21;
    v22 = v30;
    _os_log_impl(&dword_226E8E000, v30, v29, "Unrecognized version hash: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA9A450](v20, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  v23 = sub_227664DD0();
  sub_226FC4F70();
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51030], v23);
  swift_willThrow();
  sub_226EDC420(a1, a2);
  return v4;
}

uint64_t sub_2274E531C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t getEnumTagSinglePayload for PersistenceSchemaVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAE)
  {
    goto LABEL_17;
  }

  if (a2 + 82 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 82) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 82;
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

      return (*a1 | (v4 << 8)) - 82;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 82;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x53;
  v8 = v6 - 83;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceSchemaVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 82 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 82) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAE)
  {
    v4 = 0;
  }

  if (a2 > 0xAD)
  {
    v5 = ((a2 - 174) >> 8) + 1;
    *result = a2 + 82;
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
    *result = a2 + 82;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2274E54B8()
{
  result = qword_27D7BE0F0;
  if (!qword_27D7BE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE0F8, qword_2276888B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE0F0);
  }

  return result;
}

uint64_t sub_2274E556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = sub_227665030();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v17 - v14;
  sub_2274E57D8(a1, &v17 - v14);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    sub_2272917DC(31, 0, 0, v8);
    sub_2272AFD60(v8, a2);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    sub_227323114(31, v12, a2);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2274E57D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274E5858(uint64_t a1, uint64_t a2)
{
  v4 = sub_227666B60();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227666FF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = sub_227666A90();
  if (*(a2 + 16))
  {
    v16 = sub_226E92000(v14, v15);
    v18 = v17;

    if (v18)
    {
      (*(v10 + 16))(v12, *(a2 + 56) + *(v10 + 72) * v16, v9);
      v19 = sub_227666FC0();
      (*(v10 + 8))(v12, v9);
      return v19;
    }
  }

  else
  {
  }

  v21 = v36;
  sub_22766A730();
  v22 = v34;
  v23 = v13;
  v24 = v35;
  (*(v34 + 16))(v6, v23, v35);
  v25 = sub_22766B380();
  v26 = sub_22766C890();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315138;
    v29 = sub_227666A90();
    v30 = v22;
    v32 = v31;
    (*(v30 + 8))(v6, v24);
    v33 = sub_226E97AE8(v29, v32, &v39);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "[CatalogWorkoutReferenceSortDataProvider] Modality reference with identifier %s not found", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v6, v24);
  }

  (*(v37 + 8))(v21, v38);
  return 0;
}

uint64_t sub_2274E5D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t), const char *a6, ...)
{
  v33 = a5;
  v34 = a6;
  v10 = sub_22766B390();
  v36 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a3)(0, v11);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = a4(v16);
  if (v19[2])
  {
    v35 = v6;
    v21 = v19[4];
    v20 = v19[5];

    if (*(a2 + 16) && (v22 = sub_226E92000(v21, v20), (v23 & 1) != 0))
    {
      v24 = v22;

      v25 = (*(v15 + 16))(v18, *(a2 + 56) + *(v15 + 72) * v24, v14);
      v26 = v33(v25);
      (*(v15 + 8))(v18, v14);
      return v26;
    }

    else
    {
      sub_22766A730();

      v28 = sub_22766B380();
      v29 = sub_22766C890();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v30 = 136315138;
        v32 = sub_226E97AE8(v21, v20, &v37);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_226E8E000, v28, v29, v34, v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x22AA9A450](v31, -1, -1);
        MEMORY[0x22AA9A450](v30, -1, -1);
      }

      else
      {
      }

      (*(v36 + 8))(v13, v10);
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t Array<A>.count(forModalityKind:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  if (v3)
  {
    sub_226F48150();
    sub_226EC1E18();
    v4 = 0;
    v5 = a2 + 64;
    while (1)
    {
      result = sub_227663B20();
      if (result)
      {
        break;
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        v7 = 0;
        goto LABEL_16;
      }
    }

    v8 = 0;
LABEL_8:
    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      if (v4 == v3)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      while (1)
      {
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v9 == v3)
        {
          v7 = v10;
          goto LABEL_16;
        }

        if (v9 >= v3)
        {
          goto LABEL_18;
        }

        result = sub_227663B20();
        ++v4;
        if (result)
        {
          v4 = v9;
          v8 = v10;
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

uint64_t Array<A>.numberOfUniqueModalities.getter(uint64_t a1)
{

  v2 = sub_226F43E68(v1, sub_2274E8434, 0);

  v3 = *(v2 + 16);

  return v3;
}

BOOL Array<A>.contains(modalityKind:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = *(a4 + 16);

  v6 = a4 + 64;
  v7 = v5 + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = v6 + 40;
    sub_226F48150();
    sub_226EC1E18();
    v9 = sub_227663B20();
    v6 = v8;
  }

  while ((v9 & 1) == 0);

  return v7 != 0;
}

uint64_t Array<A>.modalityDescriptions.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;

      sub_226EB396C(v4, v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_22713A9EC();
      v13 = sub_227663B60();
      v14 = v7;
      MEMORY[0x22AA98450](40, 0xE100000000000000);
      v8 = sub_22766D140();
      MEMORY[0x22AA98450](v8);

      MEMORY[0x22AA98450](41, 0xE100000000000000);

      sub_226EB2DFC(v4, v5, v6);
      v9 = *(v15 + 16);
      if (v9 >= *(v15 + 24) >> 1)
      {
        sub_226F1EF90();
      }

      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = v13;
      *(v10 + 40) = v14;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_22713AA40();
  v11 = sub_22766BF70();

  return v11;
}

void *Array<A>.modalityCounts.getter(uint64_t a1)
{
  v2 = sub_227149B3C(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 64); ; i += 40)
  {
    v5 = *(i - 2);
    v6 = *(i - 1);
    v7 = *i;

    sub_226EB396C(v5, v6, v7);
    sub_226EB396C(v5, v6, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_226F491D8();
    v11 = v2[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      sub_226FF6748();
      v9 = sub_226F491D8();
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

LABEL_8:
      if (v15)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v18 = v9;
    sub_226FF6744();
    v9 = v18;
    if (v15)
    {
LABEL_9:
      v17 = v9;
      sub_226EB2DFC(v5, v6, v7);
      v9 = v17;
      goto LABEL_13;
    }

LABEL_11:
    v2[(v9 >> 6) + 8] |= 1 << v9;
    v19 = v2[6] + 24 * v9;
    *v19 = v5;
    *(v19 + 8) = v6;
    *(v19 + 16) = v7;
    *(v2[7] + 8 * v9) = 0;
    v20 = v2[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
      goto LABEL_18;
    }

    v2[2] = v21;
LABEL_13:
    v22 = v2[7];
    v23 = *(v22 + 8 * v9);
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v13)
    {
      goto LABEL_17;
    }

    *(v22 + 8 * v9) = v24;

    sub_226EB2DFC(v5, v6, v7);
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t Array<A>.intersects(modalityKinds:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v15 = *(a2 + 16);
  v16 = a2 + 32;
  v5 = a1 + 56;
  while (1)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_4;
    }

    v6 = v16 + 40 * v4;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    sub_22766D370();

    sub_226EB396C(v7, v8, v9);
    sub_226EB396C(v7, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v10 = sub_22766D3F0();
    v11 = -1 << *(a1 + 32);
    v12 = v10 & ~v11;
    if ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_3:

    sub_226EB2DFC(v7, v8, v9);
    sub_226EB2DFC(v7, v8, v9);
    v2 = v15;
LABEL_4:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v13 = ~v11;
  sub_226F48150();
  sub_226EC1E18();
  while ((sub_227663B20() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_226EB2DFC(v7, v8, v9);
  sub_226EB2DFC(v7, v8, v9);
  return 1;
}

uint64_t Array<A>.withBodyFocuses(_:forModality:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v29 = MEMORY[0x277D84F90];
  sub_226F1FD28(0, v5, 0);
  v8 = 0;
  v6 = v29;
  for (i = (a5 + 64); ; i += 40)
  {
    v10 = *(i - 4);
    v11 = *(i - 3);
    v12 = *(i - 1);
    v14 = *i;
    v26 = *(i - 2);
    v13 = v26;
    v27 = v12;
    v28 = v14;

    sub_226EB396C(v13, v12, v14);
    sub_226F48150();
    sub_226EC1E18();
    result = sub_227663B20();
    v24 = v10;
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *(a1 + 16))
    {
      goto LABEL_12;
    }

    sub_227664B70();
    v23 = sub_227664B60();
    v17 = v16;
    v18 = sub_226F4906C();
    v25 = MEMORY[0x22AA98980](1, MEMORY[0x277D537D8], v18);
    sub_2270AEFC4(&v26, v23, v17, 0);
    ++v8;
    sub_226F49200(v26, v27, v28);
    sub_226EB396C(v13, v12, v14);

    sub_226EB2DFC(v13, v12, v14);
    v11 = v25;
LABEL_7:
    v29 = v6;
    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_226F1FD28((v19 > 1), v20 + 1, 1);
      v6 = v29;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 40 * v20;
    *(v21 + 32) = v24;
    *(v21 + 40) = v11;
    *(v21 + 48) = v13;
    *(v21 + 56) = v12;
    *(v21 + 64) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t Array<A>.hasDuplicateCategories(usingMapping:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v28 = &v26 - v7;
  MEMORY[0x28223BE20](v8);
  v27 = &v26 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v31 = MEMORY[0x277D84FA0];
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 64);
    do
    {
      if (*(a1 + 16))
      {
        v15 = *v14;
        v17 = *(v14 - 2);
        v16 = *(v14 - 1);
        sub_226EB396C(v17, v16, *v14);
        v18 = sub_226F491D8();
        v20 = v19;
        sub_226EB2DFC(v17, v16, v15);
        if (v20)
        {
          v21 = *(a1 + 56) + *(v30 + 72) * v18;
          v22 = v27;
          sub_226E93170(v21, v27, &qword_27D7B88C0, &unk_22767A720);
          sub_226E95D18(v22, v12, &qword_27D7B88C0, &unk_22767A720);
          sub_226E93170(v12, v29, &qword_27D7B88C0, &unk_22767A720);
          v23 = v28;
          LOBYTE(v22) = sub_227105A44();
          sub_226E97D1C(v23, &qword_27D7B88C0, &unk_22767A720);
          sub_226E97D1C(v12, &qword_27D7B88C0, &unk_22767A720);
          if ((v22 & 1) == 0)
          {
            v24 = 1;
            goto LABEL_11;
          }
        }
      }

      v14 += 40;
      --v13;
    }

    while (v13);
    v24 = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_11:

  return v24;
}

BOOL Array<A>.contains(modalityKind:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  v4 = a2 + 64;
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 40;
    sub_226F48150();
    sub_226EC1E18();
    v7 = sub_227663B20();
    v4 = v6;
  }

  while ((v7 & 1) == 0);

  return v5 != 0;
}

uint64_t Array<A>.count(forModalityCategory:usingMapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v94 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v93 = &v89 - v6;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB370, &unk_227686440);
  MEMORY[0x28223BE20](v110);
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v89 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v89 - v15;
  MEMORY[0x28223BE20](v16);
  v101 = &v89 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - v19;
  MEMORY[0x28223BE20](v21);
  v103 = &v89 - v22;
  MEMORY[0x28223BE20](v23);
  v102 = &v89 - v24;
  v25 = sub_227666900();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v29;
  v30 = *(v29 + 16);
  v113 = v28;
  v119 = v31;
  v108 = v30;
  v109 = v29 + 16;
  v30(v26);
  v32 = *(a3 + 16);

  v90 = a3;

  v112 = v32;
  if (!v32)
  {
LABEL_17:

    v63 = 0;
    goto LABEL_44;
  }

  v33 = 0;
  v95 = v90 + 32;
  v34 = (v94 + 56);
  v107 = (v94 + 48);
  v35 = (v90 + 64);
  v111 = v5;
  v91 = v13;
  v106 = a2;
  v99 = v10;
  v98 = (v94 + 56);
  v100 = v20;
  while (1)
  {
    v38 = *(v35 - 3);
    v39 = *(v35 - 2);
    v40 = *(v35 - 1);
    v41 = *v35;
    v42 = *(a2 + 16);
    v118 = *v35;
    v116 = v39;
    v117 = v40;
    v114 = v38;
    v115 = v33;
    if (v42)
    {

      sub_226EB396C(v39, v40, v41);
      sub_226EB396C(v39, v40, v41);
      v43 = sub_226F491D8();
      v45 = v44;
      sub_226EB2DFC(v39, v40, v41);
      if (v45)
      {
        v46 = v94;
        v47 = v102;
        sub_226E93170(*(a2 + 56) + *(v94 + 72) * v43, v102, &qword_27D7B88C0, &unk_22767A720);
        v48 = *(v46 + 56);
        v49 = v47;
        v50 = 0;
      }

      else
      {
        v48 = *v34;
        v47 = v102;
        v49 = v102;
        v50 = 1;
      }

      v5 = v111;
      v48(v49, v50, 1, v111);
    }

    else
    {
      v48 = *v34;
      v51 = v39;
      v47 = v102;
      (*v34)(v102, 1, 1, v5);

      sub_226EB396C(v51, v40, v41);
    }

    v52 = v103;
    (v108)(v103, v113, v119);
    swift_storeEnumTagMultiPayload();
    v104 = v48;
    v105 = v34 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v48(v52, 0, 1, v5);
    v53 = v52;
    v54 = *(v110 + 48);
    v55 = v99;
    sub_226E93170(v47, v99, &qword_27D7BB378, &qword_22767A730);
    sub_226E93170(v52, v55 + v54, &qword_27D7BB378, &qword_22767A730);
    v56 = *v107;
    if ((*v107)(v55, 1, v5) == 1)
    {
      break;
    }

    v57 = v100;
    sub_226E93170(v55, v100, &qword_27D7BB378, &qword_22767A730);
    if (v56(v55 + v54, 1, v5) == 1)
    {
      sub_226E97D1C(v103, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v102, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v57, &qword_27D7B88C0, &unk_22767A720);
      v37 = v115;
      goto LABEL_4;
    }

    v97 = v56;
    v58 = v93;
    sub_226E95D18(v55 + v54, v93, &qword_27D7B88C0, &unk_22767A720);
    sub_22746B598(&qword_27D7B88D8, MEMORY[0x277D52740]);
    sub_22746B598(&qword_27D7B88E0, MEMORY[0x277D52748]);
    v59 = sub_227663B20();
    v60 = v58;
    v61 = v100;
    sub_226E97D1C(v60, &qword_27D7B88C0, &unk_22767A720);
    sub_226E97D1C(v103, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v102, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v61, &qword_27D7B88C0, &unk_22767A720);
    sub_226E97D1C(v55, &qword_27D7BB378, &qword_22767A730);

    result = sub_226EB2DFC(v116, v117, v118);
    v37 = v115;
    if (v59)
    {
      goto LABEL_19;
    }

LABEL_5:
    v33 = v37 + 1;
    v35 += 40;
    a2 = v106;
    v34 = v98;
    if (v112 == v33)
    {
      goto LABEL_17;
    }
  }

  sub_226E97D1C(v53, &qword_27D7BB378, &qword_22767A730);
  sub_226E97D1C(v47, &qword_27D7BB378, &qword_22767A730);
  v36 = v56(v55 + v54, 1, v5);
  v37 = v115;
  if (v36 != 1)
  {
LABEL_4:
    sub_226E97D1C(v55, &qword_27D7BB370, &unk_227686440);

    sub_226EB2DFC(v116, v117, v118);
    goto LABEL_5;
  }

  v97 = v56;
  sub_226E97D1C(v55, &qword_27D7BB378, &qword_22767A730);

  result = sub_226EB2DFC(v116, v117, v118);
LABEL_19:
  v64 = 0;
  v65 = v101;
  v66 = v92;
LABEL_20:
  v114 = v64 + 1;
  if (__OFADD__(v64, 1))
  {
    goto LABEL_47;
  }

  if (v37 == v112)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v67 = __OFADD__(v37++, 1);
  if (v67)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  while (v37 != v112)
  {
    if (v37 >= v112)
    {
      goto LABEL_46;
    }

    v68 = v95 + 40 * v37;
    v69 = *(v68 + 8);
    v70 = *(v68 + 16);
    v71 = *(v68 + 24);
    v72 = *(v68 + 32);
    v73 = v106;
    v74 = *(v106 + 16);
    v118 = v72;
    v116 = v70;
    v117 = v71;
    v115 = v69;
    if (v74)
    {

      sub_226EB396C(v70, v71, v72);
      sub_226EB396C(v70, v71, v72);
      v75 = sub_226F491D8();
      v77 = v76;
      sub_226EB2DFC(v70, v71, v72);
      if (v77)
      {
        sub_226E93170(*(v73 + 56) + *(v94 + 72) * v75, v65, &qword_27D7B88C0, &unk_22767A720);
        v78 = v65;
        v79 = 0;
      }

      else
      {
        v78 = v65;
        v79 = 1;
      }

      v5 = v111;
      v80 = v104;
      v104(v78, v79, 1, v111);
      v81 = v96;
    }

    else
    {
      v80 = v104;
      v104(v65, 1, 1, v5);

      v81 = v96;
      sub_226EB396C(v70, v71, v72);
    }

    v82 = v65;
    (v108)(v66, v113, v119);
    swift_storeEnumTagMultiPayload();
    v80(v66, 0, 1, v5);
    v83 = *(v110 + 48);
    sub_226E93170(v82, v81, &qword_27D7BB378, &qword_22767A730);
    sub_226E93170(v66, v81 + v83, &qword_27D7BB378, &qword_22767A730);
    v84 = v97;
    if (v97(v81, 1, v5) == 1)
    {
      sub_226E97D1C(v66, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v82, &qword_27D7BB378, &qword_22767A730);
      if (v84(v81 + v83, 1, v5) == 1)
      {
        sub_226E97D1C(v81, &qword_27D7BB378, &qword_22767A730);

        result = sub_226EB2DFC(v116, v117, v118);
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    v85 = v91;
    sub_226E93170(v81, v91, &qword_27D7BB378, &qword_22767A730);
    if (v84(v81 + v83, 1, v5) == 1)
    {
      v66 = v92;
      sub_226E97D1C(v92, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v101, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v85, &qword_27D7B88C0, &unk_22767A720);
LABEL_26:
      sub_226E97D1C(v81, &qword_27D7BB370, &unk_227686440);

      result = sub_226EB2DFC(v116, v117, v118);
      goto LABEL_27;
    }

    v86 = v81 + v83;
    v87 = v93;
    sub_226E95D18(v86, v93, &qword_27D7B88C0, &unk_22767A720);
    sub_22746B598(&qword_27D7B88D8, MEMORY[0x277D52740]);
    sub_22746B598(&qword_27D7B88E0, MEMORY[0x277D52748]);
    v88 = sub_227663B20();
    sub_226E97D1C(v87, &qword_27D7B88C0, &unk_22767A720);
    v66 = v92;
    sub_226E97D1C(v92, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v101, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v85, &qword_27D7B88C0, &unk_22767A720);
    sub_226E97D1C(v81, &qword_27D7BB378, &qword_22767A730);

    result = sub_226EB2DFC(v116, v117, v118);
    if (v88)
    {
      v5 = v111;
LABEL_42:
      v65 = v101;
      v64 = v114;
      goto LABEL_20;
    }

LABEL_27:
    v67 = __OFADD__(v37++, 1);
    v5 = v111;
    v65 = v101;
    if (v67)
    {
      goto LABEL_45;
    }
  }

  v63 = v114;
LABEL_44:
  (*(v89 + 8))(v113, v119);
  return v63;
}

void Array<A>.totalDuration(forModalityCategory:usingMapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v57 = &v52 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB370, &unk_227686440);
  MEMORY[0x28223BE20](v64);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v52 - v14;
  MEMORY[0x28223BE20](v15);
  v69 = &v52 - v16;
  v17 = sub_227666900();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v21;
  v22 = *(v21 + 16);
  v67 = v20;
  v68 = v23;
  v62 = v22;
  v63 = v21 + 16;
  v22(v18);
  v24 = *(a3 + 16);
  v70 = (v6 + 56);
  v71 = a2;
  v58 = v6;
  v61 = (v6 + 48);

  v25 = 0;
  v56 = 0;
  v54 = a3;
  v55 = a3 + 64;
  v65 = v5;
  v66 = v24;
  v59 = v12;
  while (2)
  {
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v26 = (v55 + 40 * v25);
    while (1)
    {
      if (v25 >= v24)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_25;
      }

      v77 = v25 + 1;
      v29 = v9;
      v30 = *(v26 - 3);
      v60 = *(v26 - 4);
      v31 = *(v26 - 2);
      v32 = *(v26 - 1);
      v33 = *v26;
      v34 = *(v71 + 16);
      v76 = *v26;
      v74 = v31;
      v75 = v32;
      v72 = v25;
      v73 = v30;
      if (v34)
      {

        sub_226EB396C(v31, v32, v33);
        sub_226EB396C(v31, v32, v33);
        v35 = v71;
        v36 = sub_226F491D8();
        v37 = v32;
        v38 = v36;
        v40 = v39;
        sub_226EB2DFC(v31, v37, v33);
        v41 = v69;
        if (v40)
        {
          v42 = v58;
          sub_226E93170(*(v35 + 56) + *(v58 + 72) * v38, v69, &qword_27D7B88C0, &unk_22767A720);
          v43 = *(v42 + 56);
          v44 = v65;
          v43(v41, 0, 1, v65);
        }

        else
        {
          v43 = *v70;
          v44 = v65;
          (*v70)(v69, 1, 1, v65);
        }
      }

      else
      {
        v43 = *v70;
        v41 = v69;
        v44 = v65;
        (*v70)(v69, 1, 1, v65);

        sub_226EB396C(v31, v32, v33);
      }

      v45 = v78;
      (v62)(v78, v67, v68);
      swift_storeEnumTagMultiPayload();
      v43(v45, 0, 1, v44);
      v46 = *(v64 + 48);
      v9 = v29;
      sub_226E93170(v41, v29, &qword_27D7BB378, &qword_22767A730);
      sub_226E93170(v45, v29 + v46, &qword_27D7BB378, &qword_22767A730);
      v47 = *v61;
      if ((*v61)(v29, 1, v44) == 1)
      {
        break;
      }

      v48 = v59;
      sub_226E93170(v29, v59, &qword_27D7BB378, &qword_22767A730);
      if (v47(v29 + v46, 1, v44) == 1)
      {
        sub_226E97D1C(v78, &qword_27D7BB378, &qword_22767A730);
        sub_226E97D1C(v69, &qword_27D7BB378, &qword_22767A730);
        sub_226E97D1C(v48, &qword_27D7B88C0, &unk_22767A720);
        v28 = v77;
        goto LABEL_5;
      }

      v49 = v57;
      sub_226E95D18(v29 + v46, v57, &qword_27D7B88C0, &unk_22767A720);
      sub_22746B598(&qword_27D7B88D8, MEMORY[0x277D52740]);
      sub_22746B598(&qword_27D7B88E0, MEMORY[0x277D52748]);
      v50 = sub_227663B20();
      sub_226E97D1C(v49, &qword_27D7B88C0, &unk_22767A720);
      sub_226E97D1C(v78, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v69, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v48, &qword_27D7B88C0, &unk_22767A720);
      sub_226E97D1C(v29, &qword_27D7BB378, &qword_22767A730);

      sub_226EB2DFC(v74, v75, v76);
      v28 = v77;
      if (v50)
      {
        goto LABEL_20;
      }

LABEL_6:
      v25 = v72 + 1;
      v26 += 40;
      v24 = v66;
      if (v28 == v66)
      {
        goto LABEL_23;
      }
    }

    sub_226E97D1C(v78, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v41, &qword_27D7BB378, &qword_22767A730);
    v27 = v47(v29 + v46, 1, v44);
    v28 = v77;
    if (v27 != 1)
    {
LABEL_5:
      sub_226E97D1C(v29, &qword_27D7BB370, &unk_227686440);

      sub_226EB2DFC(v74, v75, v76);
      goto LABEL_6;
    }

    sub_226E97D1C(v29, &qword_27D7BB378, &qword_22767A730);

    sub_226EB2DFC(v74, v75, v76);
LABEL_20:
    v25 = v28;
    v51 = __OFADD__(v56, v60);
    v56 += v60;
    v24 = v66;
    if (!v51)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:

  (*(v53 + 8))(v67, v68);
}

void Array<A>.totalDuration(forModalityKind:)(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
LABEL_2:
  v7 = v6 + 40 * v4;
  while (1)
  {
    if (v3 == v4)
    {
      goto LABEL_10;
    }

    if (v4 >= v3)
    {
      break;
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

    v9 = *(v7 - 32);
    sub_226F48150();
    sub_226EC1E18();
    ++v4;
    v7 += 40;
    if (sub_227663B30())
    {
      v4 = v8;
      v10 = __OFADD__(v5, v9);
      v5 += v9;
      v6 = a2 + 64;
      if (!v10)
      {
        goto LABEL_2;
      }

      __break(1u);
LABEL_10:

      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

double static Array<A>.unscheduled.getter()
{
  if (qword_27D7B7F28 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2274E8434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_226EB396C(v3, v2, v4);
}

void sub_2274E844C(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_226E97CC0(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_226F04970(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_226E97D1C(v20, &qword_27D7BE108, &qword_227688B20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id sub_2274E85AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_226E97CC0(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_226F04970(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_226E97D1C(&v18, &qword_27D7BE118, &unk_227688B30);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2274E86FC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4B8, &unk_227678D30);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v42 = sub_2276624A0();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE110, &qword_227688B28);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = &v39 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42, v13);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_226E95D18(v14, v33, &qword_27D7BE110, &qword_227688B28);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_226E95D18(v36, v39, &qword_27D7BA4B8, &unk_227678D30);
      v34(v37);
      sub_226E97D1C(v37, &qword_27D7BA4B8, &unk_227678D30);
      v35 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20);
    (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v12, 1, 1, v44, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2274E8AE0()
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
    v4 = *v0 + 40 * v1;
    v5 = *(v4 + 64);
    v7 = *(v4 + 48);
    v6 = *(v4 + 56);
    v10 = v4 + 32;
    v9 = *(v4 + 32);
    v8 = *(v10 + 8);
    v0[1] = v1 + 1;
    v11 = v0[2];
    v15[0] = v9;
    v15[1] = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;

    sub_226EB396C(v7, v6, v5);
    v11(&v14, v15);
    v12 = v16;
    v13 = v17;
    LOBYTE(v6) = v18;

    sub_226EB2DFC(v12, v13, v6);
    return v14;
  }

  return result;
}

uint64_t sub_2274E8BB4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  MEMORY[0x28223BE20](v47);
  v48 = &v42 - v7;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  v45 = 0;
  v46 = 0;
  v9 = (v6 + 56);
  v43 = v6;
  v44 = (v6 + 48);
  v10 = (a1 + 64);
  v11 = MEMORY[0x277D84F98];
  v12 = v42;
  while (1)
  {
    if (!*(v12 + 16))
    {
      (*v9)(v5, 1, 1, v47);
LABEL_4:
      sub_226E97D1C(v5, &qword_27D7BB378, &qword_22767A730);
      goto LABEL_5;
    }

    v14 = *(v10 - 2);
    v13 = *(v10 - 1);
    v15 = *v10;
    sub_226EB396C(v14, v13, *v10);
    v16 = sub_226F491D8();
    if (v17)
    {
      sub_226E93170(*(v12 + 56) + *(v43 + 72) * v16, v5, &qword_27D7B88C0, &unk_22767A720);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v47;
    (*v9)(v5, v18, 1, v47);
    sub_226EB2DFC(v14, v13, v15);
    if ((*v44)(v5, 1, v19) == 1)
    {
      goto LABEL_4;
    }

    v20 = v48;
    sub_226E95D18(v5, v48, &qword_27D7B88C0, &unk_22767A720);
    sub_226EA9E3C(v46, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v11;
    v22 = sub_226F3ADC4(v20);
    v24 = v11[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v11[3] < v27)
    {
      sub_226FE6DD4(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_226F3ADC4(v48);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_35;
      }

LABEL_16:
      v11 = v49;
      if ((v28 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v40 = v22;
    sub_226FF2414();
    v22 = v40;
    v11 = v49;
    if ((v28 & 1) == 0)
    {
LABEL_17:
      v11[(v22 >> 6) + 8] |= 1 << v22;
      v30 = v22;
      sub_226E93170(v48, v11[6] + *(v43 + 72) * v22, &qword_27D7B88C0, &unk_22767A720);
      *(v11[7] + 8 * v30) = 0;
      v31 = v11[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_34;
      }

      v22 = v30;
      v11[2] = v32;
    }

LABEL_19:
    v33 = v11[7];
    v34 = *(v33 + 8 * v22);
    v26 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v26)
    {
      goto LABEL_33;
    }

    *(v33 + 8 * v22) = v35;
    if (v11[2] && (v36 = sub_226F3ADC4(v48), (v37 & 1) != 0))
    {
      v38 = *(v11[7] + 8 * v36);
    }

    else
    {
      v38 = 0;
    }

    sub_226E97D1C(v48, &qword_27D7B88C0, &unk_22767A720);
    v39 = v45;
    if (v38 > v45)
    {
      v39 = v38;
    }

    v45 = v39;
    v46 = sub_226F04A6C;
    v12 = v42;
LABEL_5:
    v10 += 40;
    if (!--v8)
    {

      sub_226EA9E3C(v46, 0);
      return v45;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:

  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2274E9008@<X0>(void (*a1)(double)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22722A874(v6);
    sub_226F6649C();
    v15 = swift_allocError();
    *v16 = 2;
    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v14, v6, v7);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_226EC2978;
    *(v19 + 24) = 0;
    (*(v8 + 16))(v10, v14, v7);
    v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24[1] = a2;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v18((v22 + v20), v10, v7);
    v23 = (v22 + v21);
    *v23 = sub_226EC1D10;
    v23[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v8 + 8))(v14, v7);
  }
}

void *sub_2274E9354(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = sub_22766B390();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v10;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = a4;
    v28 = v17;
    v33 = v17;
    *v16 = 136446210;
    v32 = a1;
    v18 = sub_2274E9930();
    v19 = MEMORY[0x22AA958B0](&type metadata for IncomingScriptRequest, v18);
    v21 = a2;
    v22 = a3;
    v23 = sub_226E97AE8(v19, v20, &v33);

    *(v16 + 4) = v23;
    a3 = v22;
    a2 = v21;
    v6 = v4;
    _os_log_impl(&dword_226E8E000, v13, v14, "ScriptConnection registering request handler: %{public}s", v16, 0xCu);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v24, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    v25 = (*(v31 + 8))(v12, v29);
  }

  else
  {

    v25 = (*(v31 + 8))(v12, v10);
  }

  MEMORY[0x28223BE20](v25);
  *(&v27 - 4) = v6;
  *(&v27 - 24) = a1;
  *(&v27 - 2) = a2;
  *(&v27 - 1) = a3;
  return sub_2276696A0();
}

uint64_t sub_2274E95BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a6;
  v23[1] = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {

    sub_226EA8CE0(a2);
    v15 = v14;

    if (v15)
    {
      sub_22766A730();
      v16 = sub_22766B380();
      v17 = sub_22766C890();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v23[0] = v6;
        v19 = v18;
        *v18 = 0;
        _os_log_impl(&dword_226E8E000, v16, v17, "Overwriting existing handler", v18, 2u);
        MEMORY[0x22AA9A450](v19, -1, -1);
      }

      (*(v11 + 8))(v13, v10);
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v24;
  *(v20 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_22736C398(v25, v20, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v26;
  return swift_endAccess();
}

uint64_t sub_2274E97E4()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 0, 1);

  v4 = v0[1];

  return v4();
}

void sub_2274E9878(void (*a1)(void *, void, uint64_t))
{
  sub_226F6649C();
  v2 = swift_allocError();
  *v3 = 2;
  a1(v2, 0, 1);
}

unint64_t sub_2274E9930()
{
  result = qword_28139A430;
  if (!qword_28139A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A430);
  }

  return result;
}

uint64_t sub_2274E99DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, __n128), uint64_t a6, char *a7, char *a8)
{
  v143 = a7;
  v144 = a8;
  v135 = a6;
  v136 = a1;
  *(&v131 + 1) = a4;
  v132 = a5;
  v124 = a3;
  v133 = a2;
  v125 = sub_22766BA80();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v122 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B7F0();
  v127 = *(v9 - 8);
  v128 = v9;
  MEMORY[0x28223BE20](v9);
  v126 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE120, &qword_227688C08);
  v130 = *(v11 - 8);
  *&v131 = v11;
  MEMORY[0x28223BE20](v11);
  v129 = &v112 - v12;
  v141 = sub_227662940();
  v138 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v142 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v137 = &v112 - v17;
  v18 = sub_227662750();
  v139 = *(v18 - 8);
  v140 = v18;
  MEMORY[0x28223BE20](v18);
  v120 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v134 = &v112 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v112 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C8, &qword_22767C978);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v112 - v29;
  v31 = sub_227662190();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v112 - v36;
  sub_22766A360();
  v119 = v34;
  v143 = v24;
  v144 = v27;
  (*(v32 + 56))(v30, 0, 1, v31);
  (*(v32 + 32))(v37, v30, v31);
  v38 = v142;
  sub_227662920();
  v39 = v137;
  sub_2276628D0();
  v138 = *(v138 + 8);
  (v138)(v38, v141);
  v40 = v139;
  v41 = v140;
  v42 = v139 + 48;
  v43 = *(v139 + 48);
  if (v43(v39, 1, v140) == 1)
  {
    (*(v32 + 8))(v37, v31);
    return sub_226E97D1C(v39, &qword_27D7B9690, qword_227670B50);
  }

  v116 = v43;
  v117 = v42;
  v118 = v37;
  v114 = *(v40 + 32);
  v115 = v40 + 32;
  v114(v144, v39, v41);
  sub_227662920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
  v45 = sub_227662930();
  v137 = v31;
  v46 = v45;
  v47 = *(v45 - 8);
  v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_227670CD0;
  (*(v47 + 104))(v49 + v48, *MEMORY[0x277CC9988], v46);
  sub_226F4CE68(v49);
  swift_setDeallocating();
  v50 = v46;
  v51 = v137;
  (*(v47 + 8))(v49 + v48, v50);
  swift_deallocClassInstance();
  v52 = v143;
  sub_227662740();
  v53 = v119;
  v54 = v142;
  sub_2276628A0();

  v55 = *(v40 + 8);
  v143 = (v40 + 8);
  (v55)(v52, v41);
  (v138)(v54, v141);
  v56 = sub_227662140();
  LOBYTE(v54) = v57;
  v58 = (v32 + 8);
  v59 = *(v32 + 8);
  v59(v53, v51);
  if (v54)
  {
    (v55)(v144, v41);
    return (v59)(v118, v51);
  }

  v119 = v58;
  v60 = sub_22766BFD0();
  v61 = v129;
  sub_22766BC50();

  v62 = v131;
  sub_22766BC80();
  (*(v130 + 8))(v61, v62);
  v63 = v145;
  v112 = v56;
  v113 = v59;
  if (!v145)
  {
    v74 = 2592000.0;
    v64 = v135;
    v65 = v132;
    goto LABEL_20;
  }

  strcpy(v147, "identifiers");
  HIDWORD(v147[1]) = -352321536;
  sub_22766CDA0();
  v64 = v135;
  v65 = v132;
  if (!*(v63 + 16) || (v66 = sub_226E9BF6C(&v145), (v67 & 1) == 0))
  {

    sub_226E9B62C(&v145);
    v74 = 2592000.0;
    goto LABEL_20;
  }

  sub_226E97CC0(*(v63 + 56) + 32 * v66, &v148);
  sub_226E9B62C(&v145);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9E0, &unk_22767B668);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v68 = v147[0];
  v147[0] = v65;
  v147[1] = v64;

  sub_22766CDA0();
  if (!*(v68 + 16))
  {
    goto LABEL_18;
  }

  v69 = sub_226E9BF6C(&v145);
  if ((v70 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_226E97CC0(*(v68 + 56) + 32 * v69, &v148);
  sub_226E9B62C(&v145);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v74 = 2592000.0;
    goto LABEL_20;
  }

  v71 = v147[0];
  strcpy(v147, "updateInterval");
  HIBYTE(v147[1]) = -18;
  sub_22766CDA0();
  if (!*(v71 + 16) || (v72 = sub_226E9BF6C(&v145), (v73 & 1) == 0))
  {
LABEL_18:

    sub_226E9B62C(&v145);
    goto LABEL_19;
  }

  sub_226E97CC0(*(v71 + 56) + 32 * v72, &v148);
  sub_226E9B62C(&v145);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v74 = *v147;
LABEL_20:
  *&v145 = 0xD000000000000028;
  *(&v145 + 1) = 0x80000002276A2B00;
  MEMORY[0x22AA98450](v65, v64);
  v141 = *(&v145 + 1);
  v138 = v145;
  *&v145 = 0xD00000000000002BLL;
  *(&v145 + 1) = 0x80000002276A2B30;
  MEMORY[0x22AA98450](v65, v64);
  v75 = v145;
  v76 = [objc_opt_self() standardUserDefaults];
  v77 = v134;
  sub_227662740();
  v131 = v75;
  v78 = sub_22766BFD0();
  v142 = v76;
  v79 = [v76 valueForKey_];

  if (v79)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v148 = 0u;
    v149 = 0u;
  }

  v132 = v55;
  v145 = v148;
  v146 = v149;
  if (!*(&v149 + 1))
  {
    v80 = &unk_27D7BC990;
    v81 = &qword_227670A30;
    v82 = &v145;
LABEL_39:
    sub_226E97D1C(v82, v80, v81);
    goto LABEL_40;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  if (v147[0] == v136 && v147[1] == v133)
  {

    goto LABEL_30;
  }

  v83 = sub_22766D190();

  if ((v83 & 1) == 0)
  {
LABEL_40:
    v95 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2276707E0;
    *(inited + 32) = 0x707954746E657665;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = 0x706172676F6D6564;
    *(inited + 56) = 0xEB00000000636968;
    *(inited + 72) = v95;
    *(inited + 80) = 0x644972657375;
    v97 = v136;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = v97;
    *(inited + 104) = v133;
    *(inited + 120) = v95;
    *(inited + 128) = 0x65676E6152656761;
    v98 = MEMORY[0x277D83B88];
    v99 = v112;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = v99;
    *(inited + 168) = v98;
    *(inited + 176) = 0x6D6954746E657665;
    *(inited + 184) = 0xE900000000000065;

    v100 = sub_227662620();
    *(inited + 216) = MEMORY[0x277D84D38];
    *(inited + 192) = v100;
    v139 = sub_227149264(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    sub_22766BC00();
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_22767B770;
    sub_22766BBE0();
    sub_22766BB70();
    sub_22766BB80();
    sub_22766BBD0();
    sub_22766BB90();
    sub_22766BBF0();
    sub_22766BBB0();
    sub_22766BBA0();
    sub_226F4CB48(v101);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v102 = v126;
    sub_22766B7C0();
    v103 = v122;
    sub_22766BA70();
    sub_22766B870();

    (*(v123 + 8))(v103, v125);
    v104 = v134;
    v105 = sub_2276626A0();
    v106 = sub_22766BFD0();

    v107 = v142;
    [v142 setValue:v105 forKey:v106];

    v108 = sub_22766BFD0();
    v109 = sub_22766BFD0();

    [v107 setValue:v108 forKey:v109];

    (*(v127 + 8))(v102, v128);
    v110 = v140;
    v111 = v132;
    (v132)(v104, v140);
    (v111)(v144, v110);
    return v113(v118, v137);
  }

LABEL_30:
  v84 = sub_22766BFD0();
  v85 = [v142 valueForKey_];

  if (v85)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v148 = 0u;
    v149 = 0u;
  }

  v87 = v120;
  v86 = v121;
  v88 = v140;
  v145 = v148;
  v146 = v149;
  if (!*(&v149 + 1))
  {
    sub_226E97D1C(&v145, &unk_27D7BC990, &qword_227670A30);
    (*(v139 + 56))(v86, 1, 1, v88);
    goto LABEL_38;
  }

  v89 = swift_dynamicCast();
  (*(v139 + 56))(v86, v89 ^ 1u, 1, v88);
  if (v116(v86, 1, v88) == 1)
  {
LABEL_38:
    v80 = &qword_27D7B9690;
    v81 = qword_227670B50;
    v82 = v86;
    goto LABEL_39;
  }

  v114(v87, v86, v88);
  sub_227662680();
  v91 = v90;
  (v132)(v87, v88);
  if (v91 >= v74)
  {
    goto LABEL_40;
  }

  v92 = v77;
  v93 = v140;
  v94 = v132;
  (v132)(v92, v140);
  (v94)(v144, v93);
  return v113(v118, v137);
}

uint64_t sub_2274EAB54()
{
  v1 = sub_2276693E0();
  v3 = v2;
  v4 = sub_2276693E0();
  v6 = v5;
  if (sub_2276693B0())
  {
    v7 = &unk_283A93BC0;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2276728D0;
  *(v8 + 32) = v1;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v8 + 56) = v6;
  sub_22745F204(v7);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v9 = sub_22766AC40();

  return v9 & 1;
}