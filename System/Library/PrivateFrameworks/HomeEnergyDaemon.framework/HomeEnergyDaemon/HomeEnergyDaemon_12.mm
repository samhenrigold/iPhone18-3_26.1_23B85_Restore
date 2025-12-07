uint64_t sub_22B268478()
{
  v294 = v0;
  (*(v0 + 106))(*(v0 + 79), *(v0 + 105), *(v0 + 76));
  v1 = sub_22B36050C();
  v2 = sub_22B360D0C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 112);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_22B116000, v1, v2, "[MOCK GENERATE] Error Sharing batch at counter %ld", v4, 0xCu);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v5 = *(v0 + 108);
  v6 = *(v0 + 79);
  v7 = *(v0 + 76);

  v5(v6, v7);

  v8 = MEMORY[0x277D84F90];
  *(v0 + 25) = MEMORY[0x277D84F90];
  v292 = v0;
  while (2)
  {
    v224 = v8;
    v288 = *(v0 + 104);
    v9 = *(v0 + 91);
    v10 = *(v0 + 90);
    v11 = *(v0 + 84);
    v12 = *(v0 + 83);
    v13 = *(v0 + 75);
    v14 = *(v0 + 73);
    v15 = *(v0 + 72);
    sub_22B35F63C();
    (*(v14 + 8))(v13, v15);
    (*(v11 + 40))(v9, v10, v12);

    v16 = v292;
    sub_22B35F63C();
    LOBYTE(v14) = sub_22B35DDFC();
    v288(v10, v12);
    v17 = *(v292 + 112);
    if ((v14 & 1) == 0)
    {
      *(v292 + 117) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      *(v292 + 116) = v224;
      if (!(v224 >> 62))
      {
        if (!*((v224 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_124:
          v208 = *(v16 + 104);
          v209 = *(v16 + 91);
          v210 = *(v16 + 83);
          (*(*(v16 + 100) + 8))(*(v16 + 101), *(v16 + 99));

          v208(v209, v210);

          v211 = *(v16 + 1);

          return v211();
        }

LABEL_95:
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v186 = *(v16 + 78);
        v187 = *(v16 + 77);
        v188 = *(v16 + 76);
        v189 = __swift_project_value_buffer(v188, qword_28140BD10);
        swift_beginAccess();
        (*(v187 + 16))(v186, v189, v188);
        v190 = sub_22B36050C();
        v191 = sub_22B360D0C();
        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          *v192 = 134217984;
          *(v192 + 4) = v17;
          _os_log_impl(&dword_22B116000, v190, v191, "[MOCK GENERATE] Saving Remaining batch at counter %ld", v192, 0xCu);
          MEMORY[0x23188F650](v192, -1, -1);
        }

        v193 = *(v16 + 78);
        v194 = *(v16 + 77);
        v195 = *(v16 + 76);

        (*(v194 + 8))(v193, v195);
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v196 = swift_task_alloc();
        *(v16 + 118) = v196;
        *v196 = v16;
        v196[1] = sub_22B26AA50;
        v197 = *(v16 + 39);
        v198 = *(v16 + 40);
        v199 = v224;
        goto LABEL_107;
      }

LABEL_123:
      if (!sub_22B36109C())
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    v226 = *(v292 + 112);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v18 = *(v292 + 102);
    v19 = *(v292 + 94);
    v20 = *(v292 + 92);
    v21 = *(v292 + 82);
    v22 = *(v292 + 77);
    v23 = *(v292 + 76);
    v24 = *(v292 + 39);
    v25 = __swift_project_value_buffer(v23, qword_28140BD10);
    *(v292 + 105) = v25;
    swift_beginAccess();
    v26 = *(v22 + 16);
    *(v292 + 106) = v26;
    *(v292 + 107) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v245 = v25;
    v244 = v26;
    v26(v21, v25, v23);
    v18(v19, v24, v20);
    v27 = sub_22B36050C();
    v28 = sub_22B360D0C();
    if (os_log_type_enabled(v27, v28))
    {
      v262 = *(v292 + 104);
      v258 = *(v292 + 94);
      v29 = *(v292 + 93);
      v266 = *(v292 + 92);
      v277 = v28;
      v30 = *(v292 + 90);
      v17 = *(v292 + 83);
      v289 = *(v292 + 82);
      v282 = *(v292 + 77);
      v286 = *(v292 + 76);
      v31 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      v293[0] = v272;
      *v31 = 134218498;
      *(v31 + 4) = v226;
      *(v31 + 12) = 2080;
      sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v32 = sub_22B36131C();
      v34 = sub_22B1A7B20(v32, v33, v293);

      *(v31 + 14) = v34;
      *(v31 + 22) = 2080;
      sub_22B35F63C();
      v16 = v292;
      v35 = sub_22B36131C();
      v37 = v36;
      v262(v30, v17);
      (*(v29 + 8))(v258, v266);
      v38 = sub_22B1A7B20(v35, v37, v293);

      *(v31 + 24) = v38;
      _os_log_impl(&dword_22B116000, v27, v277, "[MOCK GENERATE] Creating record number %ld Range:%s-%s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v272, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);

      v39 = *(v282 + 8);
      v39(v289, v286);
    }

    else
    {
      v40 = *(v292 + 94);
      v41 = *(v292 + 93);
      v42 = *(v292 + 92);
      v17 = *(v292 + 82);
      v43 = *(v292 + 77);
      v44 = *(v292 + 76);

      (*(v41 + 8))(v40, v42);
      v39 = *(v43 + 8);
      v39(v17, v44);
    }

    v246 = v39;
    *(v16 + 108) = v39;
    v45 = sub_22B26DBF4(*(v16 + 31), *(v16 + 32), *(v16 + 101));
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = 0;
      v48 = MEMORY[0x277D84F98];
      while (v47 < *(v45 + 16))
      {
        v49 = *(v45 + 32 + 8 * v47);
        v50 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + 26) = v50;
        v52 = sub_22B33B41C(v49);
        v54 = v50[2];
        v55 = (v53 & 1) == 0;
        v56 = __OFADD__(v54, v55);
        v57 = v54 + v55;
        if (v56)
        {
          goto LABEL_112;
        }

        v17 = v53;
        if (v50[3] >= v57)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v61 = v52;
            sub_22B341AC8();
            v52 = v61;
          }
        }

        else
        {
          sub_22B33CD78(v57, isUniquelyReferenced_nonNull_native);
          v52 = sub_22B33B41C(v49);
          if ((v17 & 1) != (v58 & 1))
          {

            return sub_22B3613BC();
          }
        }

        ++v47;
        v48 = *(v16 + 26);
        if (v17)
        {
          *(v48[7] + 8 * v52) = v47;
          if (v46 == v47)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v48[(v52 >> 6) + 8] |= 1 << v52;
          *(v48[6] + 8 * v52) = v49;
          *(v48[7] + 8 * v52) = v47;
          v59 = v48[2];
          v56 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (v56)
          {
            goto LABEL_113;
          }

          v48[2] = v60;
          if (v46 == v47)
          {
            goto LABEL_25;
          }
        }
      }

LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v48 = MEMORY[0x277D84F98];
LABEL_25:
    v225 = v48;
    *(v16 + 109) = v48;
    v283 = *(v16 + 243);
    v62 = *(v16 + 242);
    v63 = *(v16 + 241);
    v64 = v16;
    v16 = *(v16 + 240);
    v17 = *(v64 + 75);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
    v65 = sub_22B35E02C();
    v66 = *(v65 - 8);
    v67 = *(v66 + 72);
    v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_22B364840;
    v235 = v68;
    v70 = v69 + v68;
    v278 = v66;
    v71 = *(v66 + 104);
    v71(v70, v16, v65);
    v71(v70 + v67, v63, v65);
    v71(v70 + 2 * v67, v62, v65);
    v230 = v71;
    v71(v70 + 3 * v67, v283, v65);
    sub_22B310E30(v69);
    swift_setDeallocating();
    v241 = v65;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22B35DFCC();

    v72 = sub_22B35D9EC();
    if (v73)
    {
      v74 = 2023;
    }

    else
    {
      v74 = v72;
    }

    v75 = sub_22B35D9FC();
    if (v76)
    {
      v77 = 1;
    }

    else
    {
      v77 = v75;
    }

    v78 = sub_22B35D9AC();
    if (v79)
    {
      v80 = 1;
    }

    else
    {
      v80 = v78;
    }

    if (__OFSUB__(v77, 1))
    {
      goto LABEL_114;
    }

    if ((v77 - 1) > 0xB)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v0 = v292;
    v81 = sub_22B35D98C();
    if (v82)
    {
      goto LABEL_37;
    }

    if (v81 > 3)
    {
      if (v81 == 4)
      {
        if (v225[2])
        {
          sub_22B33B41C(v74);
        }

        if (v80 % 7 < 0)
        {
          goto LABEL_120;
        }

        goto LABEL_40;
      }

      if (v81 == 5)
      {
        if (v225[2])
        {
          sub_22B33B41C(v74);
        }

        if (v80 % 7 < 0)
        {
          goto LABEL_119;
        }

        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v81 == 2)
    {
      if (v225[2])
      {
        sub_22B33B41C(v74);
      }

      if (v80 % 7 < 0)
      {
        goto LABEL_121;
      }

      goto LABEL_40;
    }

    if (v81 != 3)
    {
LABEL_37:
      if (v225[2])
      {
        sub_22B33B41C(v74);
      }

      if (v80 % 7 < 0)
      {
        goto LABEL_118;
      }

      goto LABEL_40;
    }

    if (v225[2])
    {
      sub_22B33B41C(v74);
    }

    if (v80 % 7 < 0)
    {
      goto LABEL_122;
    }

LABEL_40:
    v83 = *(v292 + 69);
    v84 = *(v292 + 68);
    v85 = v292[33];
    sub_22B35F50C();
    v17 = *(v84 + 36);
    sub_22B35F63C();
    if (v85 == 0.0)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v86 = *(v292 + 84);
    v87 = *(v292 + 83);
    v88 = *(v292 + 71);
    v89 = *(v292 + 33);
    v290 = v17;
    v90 = *(v292 + 70);
    v91 = v88 + v90[11];
    v92 = *(*(v292 + 65) + 48);
    v16 = (v86 + 32);
    v93 = *(v86 + 32);
    v93(v91 + v92, *(v292 + 69), v87);
    v248 = v93;
    v93(v88 + v90[9], v83 + v290, v87);
    v94 = *(v86 + 16);
    *(v88 + v90[10]) = v89;
    v253 = v92;
    v284 = v94;
    (v94)(v88, v91 + v92, v87);
    *v91 = 0;
    v256 = v91;
    *(v91 + 8) = 0;
    v227 = (v278 + 8);
    v291 = MEMORY[0x277D84F90];
    while (1)
    {
      v95 = v0[33];
      (v284)(*(v0 + 89), v256 + v253, *(v0 + 83));
      sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (v95 <= 0.0)
      {
        if ((sub_22B36076C() & 1) == 0)
        {
LABEL_44:
          v96 = *(v0 + 90);
          v279 = *(v0 + 89);
          v97 = *(v292 + 84);
          v98 = *(v292 + 83);
          v267 = *(v0 + 104);
          v273 = *(v292 + 67);
          v99 = *(v292 + 66);
          v100 = *(v292 + 65);
          sub_22B170BE0(v256, v99, &qword_27D8BABD0, &unk_22B366EE0);
          v101 = *(v100 + 48);
          sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
          v102 = sub_22B36101C();
          v104 = v103;
          v267(v99 + v101, v98);
          *v256 = v102;
          *(v256 + 8) = v104 & 1;
          v105 = *(v97 + 40);
          v16 = (v97 + 40);
          v105(v256 + v253, v96, v98);
          v0 = v292;
          v248(v273, v279, v98);
          v106 = 0;
          goto LABEL_47;
        }
      }

      else if ((sub_22B36075C() & 1) == 0)
      {
        goto LABEL_44;
      }

      (*(v0 + 104))(*(v0 + 89), *(v0 + 83));
      v106 = 1;
LABEL_47:
      v107 = *(v0 + 84);
      v108 = *(v0 + 83);
      v109 = *(v0 + 67);
      (*(v107 + 56))(v109, v106, 1, v108);
      if ((*(v107 + 48))(v109, 1, v108) == 1)
      {
        break;
      }

      v110 = *(v0 + 88);
      v111 = *(v0 + 87);
      v112 = *(v0 + 83);
      v113 = *(v0 + 81);
      v114 = *(v0 + 76);
      v248(v110, *(v0 + 67), v112);
      v244(v113, v245, v114);
      (v284)(v111, v110, v112);
      v115 = sub_22B36050C();
      v116 = sub_22B360D1C();
      v117 = os_log_type_enabled(v115, v116);
      v118 = *(v0 + 104);
      v119 = *(v0 + 87);
      v120 = *(v0 + 83);
      v121 = *(v0 + 81);
      v122 = *(v0 + 76);
      if (v117)
      {
        v123 = swift_slowAlloc();
        v274 = v122;
        v124 = swift_slowAlloc();
        v293[0] = v124;
        *v123 = 136315138;
        sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v125 = sub_22B36131C();
        v268 = v121;
        v127 = v126;
        v118(v119, v120);
        v0 = v292;
        v128 = sub_22B1A7B20(v125, v127, v293);

        *(v123 + 4) = v128;
        _os_log_impl(&dword_22B116000, v115, v116, "[MOCK GENERATE] %s", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v124);
        MEMORY[0x23188F650](v124, -1, -1);
        MEMORY[0x23188F650](v123, -1, -1);

        v129 = v246(v268, v274);
      }

      else
      {

        v118(v119, v120);
        v129 = v246(v121, v122);
      }

      v269 = *(v0 + 245);
      v130 = *(v0 + 244);
      v131 = *(v0 + 90);
      v132 = v0;
      v16 = *(v0 + 88);
      v263 = *(v0 + 83);
      v259 = MEMORY[0x23188EEB0](v129);
      sub_22B35FB8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
      v17 = sub_22B35FB5C();
      v133 = *(v17 - 8);
      v134 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_22B3634B0;
      (*(v133 + 104))(v135 + v134, v130, v17);
      sub_22B35FB7C();
      (v284)(v131, v16, v263);
      sub_22B36039C();
      sub_22B35FB1C();
      sub_22B35DDCC();
      sub_22B36039C();
      sub_22B35FAFC();
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_22B3634B0;
      v230(v136 + v235, v269, v241);
      sub_22B310E30(v136);
      swift_setDeallocating();
      (*v227)(v136 + v235, v241);
      swift_deallocClassInstance();
      sub_22B35DFCC();

      v137 = sub_22B35D9CC();
      if (v138)
      {
        v139 = 1;
      }

      else
      {
        v139 = v137;
      }

      if (v139 > 0x17)
      {
        __break(1u);
        goto LABEL_111;
      }

      v140 = *(v132 + 63);
      v141 = *(v132 + 64);
      v142 = *(v132 + 61);
      v143 = *(v132 + 62);
      sub_22B35FB3C();
      (*(v143 + 16))(v140, v141, v142);
      v144 = v291;
      v0 = v132;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_22B32D22C(0, v291[2] + 1, 1, v291);
      }

      v146 = v144[2];
      v145 = v144[3];
      if (v146 >= v145 >> 1)
      {
        v291 = sub_22B32D22C((v145 > 1), v146 + 1, 1, v144);
      }

      else
      {
        v291 = v144;
      }

      v16 = *(v132 + 104);
      v147 = *(v132 + 88);
      v148 = *(v132 + 83);
      v149 = *(v132 + 74);
      v150 = *(v132 + 73);
      v151 = *(v132 + 72);
      v153 = *(v132 + 63);
      v152 = *(v0 + 64);
      v154 = *(v0 + 61);
      v155 = *(v0 + 62);
      (*(v150 + 8))(v149, v151);
      (*(v155 + 8))(v152, v154);
      v291[2] = v146 + 1;
      (*(v155 + 32))(v291 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v146, v153, v154);
      objc_autoreleasePoolPop(v259);
      (v16)(v147, v148);
    }

    v156 = sub_22B123284(*(v0 + 71), &qword_27D8BABE0, &unk_22B366EF0);
    v157 = MEMORY[0x23188EEB0](v156);
    v158 = v291;
    if (v291[2])
    {
      v212 = v157;
      v218 = *(v0 + 248);
      v214 = *(v0 + 246);
      v215 = *(v0 + 247);
      v231 = *(v0 + 86);
      v233 = *(v0 + 85);
      v236 = *(v0 + 90);
      v223 = *(v0 + 83);
      v159 = *(v0 + 59);
      v160 = *(v0 + 57);
      v249 = *(v0 + 58);
      v239 = v160;
      v260 = *(v0 + 56);
      v270 = *(v0 + 55);
      v161 = *(v0 + 53);
      v251 = *(v0 + 54);
      v264 = *(v0 + 52);
      v280 = *(v0 + 51);
      v162 = *(v0 + 49);
      v254 = *(v0 + 50);
      v275 = *(v0 + 48);
      v220 = *(v0 + 47);
      v221 = *(v292 + 46);
      v222 = *(v292 + 45);
      v228 = *(v292 + 34);
      v217 = *(v292 + 30);
      v216 = *(v292 + 29);
      v213 = *(v292 + 28);
      v163 = *(v292 + 27);
      v284();
      sub_22B35F63C();
      (*(v160 + 104))(v159, v214, v260);
      (*(v161 + 104))(v270, v215, v264);
      v164 = (*(v162 + 104))(v280, v218, v275);
      v219 = MEMORY[0x23188EEB0](v164);
      *(v292 + 21) = v163;
      *(v292 + 22) = v213;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      MEMORY[0x23188E270](v216, v217);
      MEMORY[0x23188E270](46, 0xE100000000000000);
      sub_22B35DF0C();
      v165 = sub_22B35DECC();
      v167 = v166;
      (*(v221 + 8))(v220, v222);
      MEMORY[0x23188E270](v165, v167);

      v168 = *(v292 + 22);
      sub_22B35FD7C();

      sub_22B35FD6C();

      sub_22B35FC4C();

      sub_22B35FBDC();

      sub_22B35FCEC();
      (v284)(v236, v228, v223);
      sub_22B36039C();
      sub_22B35FBBC();
      (v284)(v236, v231, v223);
      sub_22B36039C();
      sub_22B35FCCC();
      (v284)(v236, v233, v223);
      sub_22B36039C();
      sub_22B35FC6C();
      (*(v239 + 16))(v249, v159, v260);
      sub_22B35FCAC();
      (*(v161 + 16))(v251, v270, v264);
      sub_22B35FD4C();
      (*(v162 + 16))(v254, v280, v275);
      sub_22B35FC2C();

      sub_22B35FD0C();
      sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
      v169 = sub_22B36042C();
      v287 = *(v292 + 104);
      v170 = v169;
      v172 = v171;
      v285 = *(v292 + 86);
      v276 = *(v292 + 83);
      v281 = *(v292 + 85);
      v271 = *(v292 + 59);
      v261 = *(v292 + 57);
      v265 = *(v292 + 56);
      v255 = *(v292 + 52);
      v257 = *(v292 + 55);
      v250 = *(v292 + 51);
      v252 = *(v292 + 53);
      v247 = *(v292 + 48);
      v242 = *(v292 + 44);
      v243 = *(v292 + 49);
      v238 = *(v292 + 43);
      v240 = *(v292 + 42);
      v237 = *(v292 + 30);
      v234 = *(v292 + 29);
      v232 = *(v292 + 28);
      v229 = *(v292 + 27);
      sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
      v173 = objc_opt_self();

      v174 = [v173 defaultRecordZone];
      v175 = [v174 zoneID];
      v16 = v168;

      v176 = sub_22B360CBC();
      sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
      v177 = v176;
      v178 = sub_22B360F4C();
      v179 = [v178 recordID];
      v180 = [v179 zoneID];

      v181 = sub_22B360CBC();
      [v178 setRecordID_];

      *(v292 + 5) = MEMORY[0x277CC9318];
      *(v292 + 6) = MEMORY[0x277CBBBE0];
      *(v292 + 2) = v170;
      *(v292 + 3) = v172;
      sub_22B144B30(v170, v172);
      sub_22B360EBC();
      *(v292 + 23) = v229;
      *(v292 + 24) = v232;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      MEMORY[0x23188E270](v234, v237);
      v182 = *(v292 + 23);
      v183 = *(v292 + 24);
      *(v292 + 10) = MEMORY[0x277D837D0];
      *(v292 + 11) = MEMORY[0x277CBBE08];
      *(v292 + 7) = v182;
      *(v292 + 8) = v183;
      sub_22B360EBC();
      sub_22B12F174(v170, v172);

      (*(v238 + 8))(v242, v240);
      v0 = v292;
      objc_autoreleasePoolPop(v219);
      (*(v243 + 8))(v250, v247);
      (*(v252 + 8))(v257, v255);
      (*(v261 + 8))(v271, v265);
      v287(v281, v276);
      v287(v285, v276);
      v184 = v178;
      MEMORY[0x23188E350]();
      if (*((v0[25] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[25] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
      }

      sub_22B360A9C();

      v8 = *(v292 + 25);

      *(v292 + 25) = v8;
      v158 = MEMORY[0x277D84F90];
      v157 = v212;
    }

    else
    {
      v8 = v224;
    }

    *(v0 + 111) = v8;
    *(v0 + 110) = v158;
    objc_autoreleasePoolPop(v157);
    v17 = v226 + 1;
    *(v0 + 112) = v226 + 1;
    if (__OFADD__(v226, 1))
    {
      goto LABEL_117;
    }

    if (__ROR8__(0x8F5C28F5C28F5C29 * v17 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL)
    {
      continue;
    }

    break;
  }

  v244(*(v0 + 80), v245, *(v0 + 76));
  v200 = sub_22B36050C();
  v201 = sub_22B360D0C();
  if (os_log_type_enabled(v200, v201))
  {
    v203 = swift_slowAlloc();
    *v203 = 134217984;
    *(v203 + 4) = v17;
    _os_log_impl(&dword_22B116000, v200, v201, "[MOCK GENERATE] Saving batch at counter %ld", v203, 0xCu);
    MEMORY[0x23188F650](v203, -1, -1);
  }

  v204 = *(v0 + 80);
  v205 = *(v0 + 77);
  v206 = *(v0 + 76);

  *(v0 + 113) = (v205 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v246(v204, v206);
  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  v207 = swift_task_alloc();
  *(v0 + 114) = v207;
  *v207 = v0;
  v207[1] = sub_22B265E7C;
  v197 = *(v0 + 39);
  v198 = *(v0 + 40);
  v199 = v8;
LABEL_107:

  return sub_22B30C418(v199, v197, v198);
}

uint64_t sub_22B26AA50()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {
    v4 = sub_22B26ADF0;
  }

  else
  {
    v4 = sub_22B26AB7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B26AB7C()
{
  v1 = v0[104];
  v2 = v0[91];
  v3 = v0[83];
  (*(v0[100] + 8))(v0[101], v0[99]);

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B26ADF0()
{
  (*(*(v0 + 800) + 8))(*(v0 + 808), *(v0 + 792));
  (*(v0 + 832))(*(v0 + 728), *(v0 + 664));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B26B068(uint64_t a1, int a2, uint64_t a3, double a4, uint64_t a5, uint64_t *a6)
{
  v135 = a6;
  v123 = a3;
  v117 = a2;
  v143 = sub_22B35E04C();
  v124 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v125 = &v113[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22B35DA4C();
  v133 = *(v8 - 8);
  v134 = v8;
  MEMORY[0x28223BE20](v8);
  v145 = &v113[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22B3603AC();
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v113[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_22B35FB9C();
  v131 = *(v12 - 8);
  v132 = v12;
  MEMORY[0x28223BE20](v12);
  v130 = &v113[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v144 = &v113[-v15];
  v16 = sub_22B35DE9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v127 = &v113[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v126 = &v113[-v20];
  MEMORY[0x28223BE20](v21);
  v136 = &v113[-v22];
  MEMORY[0x28223BE20](v23);
  v139 = &v113[-v24];
  MEMORY[0x28223BE20](v25);
  v27 = &v113[-v26];
  v28 = sub_22B36052C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v137 = &v113[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v33 = &v113[-v32];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v28, qword_28140BD10);
  swift_beginAccess();
  v35 = *(v29 + 16);
  v121 = v34;
  v120 = v29 + 16;
  v119 = v35;
  v35(v33, v34, v28);
  isa = v17[2].isa;
  isa(v27, a1, v16);
  v128 = a1;
  v141 = isa;
  v142 = v17 + 2;
  isa(v139, a1, v16);
  v37 = v33;
  v38 = sub_22B36050C();
  v39 = sub_22B360D0C();
  v40 = os_log_type_enabled(v38, v39);
  v138 = v29;
  v129 = v17;
  v140 = v28;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v115 = v38;
    v42 = v41;
    v116 = swift_slowAlloc();
    v146 = v116;
    *v42 = 136315650;
    sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v114 = v39;
    v43 = sub_22B36131C();
    v45 = v44;
    v46 = v17[1].isa;
    v46(v27, v16);
    v47 = sub_22B1A7B20(v43, v45, &v146);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v48 = v136;
    v49 = v139;
    sub_22B35DDCC();
    v50 = sub_22B36131C();
    v52 = v51;
    v46(v48, v16);
    v46(v49, v16);
    v53 = sub_22B1A7B20(v50, v52, &v146);

    *(v42 + 14) = v53;
    *(v42 + 22) = 1024;
    *(v42 + 24) = v117 & 1;
    v54 = v115;
    _os_log_impl(&dword_22B116000, v115, v114, "[MOCK GENERATE] Creating reading Range:%s-%s, using fixedValues: %{BOOL}d", v42, 0x1Cu);
    v55 = v116;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v55, -1, -1);
    MEMORY[0x23188F650](v42, -1, -1);

    (*(v138 + 8))(v37, v140);
  }

  else
  {

    v56 = v17[1].isa;
    v56(v139, v16);
    v56(v27, v16);
    (*(v29 + 8))(v37, v28);
    v48 = v136;
  }

  v57 = v16;
  v118 = v16;
  sub_22B35FB8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
  v58 = sub_22B35FB5C();
  v59 = *(v58 - 8);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_22B3634B0;
  (*(v59 + 104))(v61 + v60, *MEMORY[0x277D07490], v58);
  sub_22B35FB7C();
  v62 = v128;
  v141(v48, v128, v57);
  sub_22B36039C();
  sub_22B35FB1C();
  sub_22B35DDCC();
  sub_22B36039C();
  sub_22B35FAFC();
  v63 = v124;
  v64 = v125;
  (*(v124 + 16))(v125, v123, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
  v65 = sub_22B35E02C();
  v66 = *(v65 - 8);
  v67 = *(v66 + 72);
  v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_22B3634C0;
  v70 = v69 + v68;
  v71 = *(v66 + 104);
  v71(v70, *MEMORY[0x277CC9940], v65);
  v71(v70 + v67, *MEMORY[0x277CC9980], v65);
  sub_22B310E30(v69);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22B35DFCC();

  (*(v63 + 8))(v64, v143);
  v72 = sub_22B35D9CC();
  if (v73)
  {
    v74 = 1;
  }

  else
  {
    v74 = v72;
  }

  v75 = sub_22B35D97C();
  if (v76)
  {
    v77 = 1;
  }

  else
  {
    v77 = v75;
  }

  v78 = -sub_22B26E06C(v74, v77, 0);
  v79 = v137;
  v80 = v140;
  v119(v137, v121, v140);
  v81 = v126;
  v82 = v118;
  v83 = v141;
  v141(v126, v62, v118);
  v84 = v127;
  v83(v127, v62, v82);
  v85 = sub_22B36050C();
  v86 = sub_22B360D0C();
  v87 = v82;
  if (os_log_type_enabled(v85, v86))
  {
    v88 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v146 = v143;
    *v88 = 136315650;
    sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v142 = v85;
    v89 = sub_22B36131C();
    LODWORD(v141) = v86;
    v91 = v90;
    v92 = v129[1].isa;
    v92(v81, v82);
    v93 = sub_22B1A7B20(v89, v91, &v146);
    v94 = v144;

    *(v88 + 4) = v93;
    *(v88 + 12) = 2080;
    v95 = v136;
    sub_22B35DDCC();
    v96 = sub_22B36131C();
    v98 = v97;
    v92(v95, v87);
    v92(v84, v87);
    v99 = sub_22B1A7B20(v96, v98, &v146);

    *(v88 + 14) = v99;
    *(v88 + 22) = 2048;
    *(v88 + 24) = v78;
    v100 = v142;
    _os_log_impl(&dword_22B116000, v142, v141, "[MOCK GENERATE] Creating reading Range:%s-%s, using dynamic value: %f", v88, 0x20u);
    v101 = v143;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v101, -1, -1);
    MEMORY[0x23188F650](v88, -1, -1);

    (*(v138 + 8))(v137, v140);
    v102 = v135;
    v103 = v131;
    v104 = v130;
  }

  else
  {

    v105 = v129[1].isa;
    v105(v84, v82);
    v105(v81, v82);
    (*(v138 + 8))(v79, v80);
    v102 = v135;
    v103 = v131;
    v104 = v130;
    v94 = v144;
  }

  sub_22B35FB3C();
  v106 = v132;
  (*(v103 + 16))(v104, v94, v132);
  v107 = *v102;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v102 = v107;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v107 = sub_22B32D22C(0, v107[2] + 1, 1, v107);
    *v102 = v107;
  }

  v110 = v107[2];
  v109 = v107[3];
  if (v110 >= v109 >> 1)
  {
    *v102 = sub_22B32D22C((v109 > 1), v110 + 1, 1, v107);
  }

  (*(v133 + 8))(v145, v134);
  (*(v103 + 8))(v94, v106);
  v111 = *v102;
  v111[2] = v110 + 1;
  return (*(v103 + 32))(v111 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v110, v104, v106);
}

uint64_t sub_22B26BEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v113 = a3;
  v116 = a1;
  v111 = sub_22B36052C();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22B35DA4C();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v95 - v10;
  v131 = sub_22B35DE9C();
  v11 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B35E02C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22B35E04C();
  isa = v125[-1].isa;
  MEMORY[0x28223BE20](v125);
  v114 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v115 = &v95 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v95 - v23;
  v126 = *(v25 + 16);
  v119 = v25 + 16;
  v126(&v95 - v23, a1, v22);
  v107 = *MEMORY[0x277CC9998];
  v26 = v15;
  v120 = *(v15 + 104);
  v121 = v15 + 104;
  v120(v17);
  v130 = a2;
  swift_beginAccess();
  v122 = v11;
  v123 = *(v11 + 16);
  v124 = v11 + 16;
  v27 = v131;
  v123(v13, a2, v131);
  v96 = sub_22B35E03C();
  v129 = *(v11 + 8);
  v128 = v11 + 8;
  v129(v13, v27);
  v28 = v26 + 8;
  v29 = *(v26 + 8);
  v117 = v28;
  v118 = v14;
  v29(v17, v14);
  v106 = v29;
  v31 = isa + 8;
  v30 = *(isa + 8);
  v32 = v125;
  v30(v24, v125);
  v105 = v30;
  isa = v31;
  (v126)(v24, v116, v32);
  LODWORD(v103) = *MEMORY[0x277CC9988];
  v120(v17);
  v33 = v130;
  swift_beginAccess();
  v34 = v33;
  v35 = v131;
  v36 = v123;
  v123(v13, v34, v131);
  v104 = v17;
  v95 = sub_22B35E03C();
  v129(v13, v35);
  v37 = v17;
  v38 = v117;
  v29(v37, v118);
  v39 = v125;
  v30(v24, v125);
  v40 = v130;
  swift_beginAccess();
  v112 = v13;
  v36(v13, v40, v35);
  v41 = v113;
  swift_beginAccess();
  v42 = *(v122 + 40);
  v98 = v122 + 40;
  v97 = v42;
  v42(v41, v13, v35);
  v43 = v116;
  v44 = v126;
  (v126)(v115, v116, v39);
  v44(v114, v43, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
  v45 = *(v38 + 64);
  v46 = (*(v38 + 72) + 32) & ~*(v38 + 72);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_22B3634C0;
  v48 = v47 + v46;
  v49 = v118;
  v50 = v120;
  (v120)(v48, v103, v118);
  v51 = v48 + v45;
  v52 = v107;
  (v50)(v51, v107, v49);
  v103 = sub_22B310E30(v47);
  swift_setDeallocating();
  v53 = v130;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v54 = v43;
  v55 = v125;
  (v126)(v24, v54, v125);
  v56 = v122;
  v57 = v104;
  (v50)(v104, v52, v49);
  v58 = v108;
  swift_beginAccess();
  v59 = v112;
  v60 = v53;
  v61 = v131;
  v123(v112, v60, v131);
  sub_22B35DFEC();
  v129(v59, v61);
  v62 = v61;
  v106(v57, v49);
  v63 = v105;
  v105(v24, v55);
  v64 = *(v56 + 48);
  result = v64(v58, 1, v62);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v66 = v99;
  v67 = v114;
  sub_22B35DFCC();

  v63(v67, v55);
  v68 = v131;
  v129(v58, v131);
  v69 = v100;
  v70 = v115;
  sub_22B35DFDC();
  (*(v101 + 8))(v66, v102);
  v63(v70, v55);
  result = v64(v69, 1, v68);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v71 = v130;
  swift_beginAccess();
  v97(v71, v69, v131);
  v72 = v111;
  v73 = v110;
  v74 = v109;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v75 = __swift_project_value_buffer(v72, qword_28140BD10);
  swift_beginAccess();
  (*(v73 + 16))(v74, v75, v72);
  v76 = sub_22B36050C();
  v77 = sub_22B360D2C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    isa = swift_slowAlloc();
    v132 = isa;
    *v78 = 134218754;
    *(v78 + 4) = v96;
    *(v78 + 12) = 2048;
    *(v78 + 14) = v95;
    *(v78 + 22) = 2080;
    v79 = v129;
    v80 = v113;
    swift_beginAccess();
    LODWORD(v126) = v77;
    v81 = v112;
    v82 = v131;
    v125 = v76;
    v123(v112, v80, v131);
    sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v83 = v130;
    v84 = sub_22B36131C();
    v85 = v82;
    v87 = v86;
    v79(v81, v85);
    v88 = sub_22B1A7B20(v84, v87, &v132);

    *(v78 + 24) = v88;
    *(v78 + 32) = 2080;
    swift_beginAccess();
    v123(v81, v83, v85);
    v89 = sub_22B36131C();
    v91 = v90;
    v79(v81, v85);
    v92 = sub_22B1A7B20(v89, v91, &v132);

    *(v78 + 34) = v92;
    v93 = v125;
    _os_log_impl(&dword_22B116000, v125, v126, "Creating Usage Summary for Month: %ld, Year: %ld start:%s-end:%s", v78, 0x2Au);
    v94 = isa;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v94, -1, -1);
    MEMORY[0x23188F650](v78, -1, -1);

    return (*(v110 + 8))(v109, v111);
  }

  else
  {

    return (*(v73 + 8))(v74, v72);
  }
}

uint64_t sub_22B26CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a4;
  v116 = a3;
  v135 = a2;
  v115 = sub_22B36052C();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22B35DA4C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v98 - v10;
  v11 = sub_22B35DE9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B35E02C();
  v132 = *(v15 - 8);
  v16 = v132;
  MEMORY[0x28223BE20](v15);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22B35E04C();
  v126 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v117 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v118 = &v98 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = *(v24 + 16);
  v124 = v24 + 16;
  v125 = v25;
  v27 = &v98 - v26;
  v119 = a1;
  v25(v23);
  v111 = *MEMORY[0x277CC9998];
  v122 = *(v16 + 104);
  v127 = (v16 + 104);
  v28 = v18;
  v122(v18);
  v29 = v135;
  swift_beginAccess();
  v131 = v12;
  v30 = *(v12 + 16);
  v130 = v12 + 16;
  v129 = v30;
  v133 = v11;
  v30(v14, v29, v11);
  v99 = sub_22B35E03C();
  v128 = *(v12 + 8);
  v134 = v12 + 8;
  v128(v14, v11);
  v31 = *(v132 + 8);
  v132 += 8;
  v121 = v31;
  v32 = v28;
  v31(v28, v15);
  v33 = v126 + 1;
  isa = v126[1].isa;
  v34 = v123;
  (isa)(v27, v123);
  v126 = v33;
  (v125)(v27, a1, v34);
  LODWORD(v108) = *MEMORY[0x277CC9988];
  v35 = v15;
  v107 = v15;
  v122(v32);
  v36 = v135;
  swift_beginAccess();
  v37 = v133;
  v38 = v129;
  v129(v14, v36, v133);
  v110 = v32;
  v109 = v27;
  v98 = sub_22B35E03C();
  v128(v14, v37);
  v39 = v35;
  v40 = v132;
  v121(v32, v39);
  v41 = v123;
  (isa)(v27, v123);
  v42 = v135;
  swift_beginAccess();
  v38(v14, v42, v37);
  v43 = v116;
  swift_beginAccess();
  v44 = *(v131 + 40);
  v101 = v131 + 40;
  v100 = v44;
  v44(v43, v14, v37);
  v45 = v119;
  v46 = v125;
  (v125)(v118, v119, v41);
  (v46)(v117, v45, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
  v47 = *(v40 + 64);
  v48 = (*(v40 + 72) + 32) & ~*(v40 + 72);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_22B3634C0;
  v50 = v49 + v48;
  v51 = v107;
  v52 = v122;
  (v122)(v50, v108, v107);
  v53 = v111;
  (v52)(v50 + v47, v111, v51);
  v108 = sub_22B310E30(v49);
  swift_setDeallocating();
  v54 = v135;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v55 = v109;
  v56 = v123;
  (v125)(v109, v119, v123);
  v57 = v110;
  (v52)(v110, v53, v51);
  v58 = v133;
  swift_beginAccess();
  v129(v14, v54, v58);
  v59 = v112;
  sub_22B35DFEC();
  v127 = v14;
  v60 = v14;
  v61 = v59;
  v128(v60, v58);
  v121(v57, v51);
  v62 = v56;
  v63 = isa;
  (isa)(v55, v56);
  v64 = *(v131 + 48);
  v131 += 48;
  result = v64(v61, 1, v58);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v66 = v103;
  v67 = v117;
  sub_22B35DFCC();

  v63(v67, v56);
  v68 = v133;
  v69 = v128;
  v128(v61, v133);
  v70 = v104;
  v71 = v118;
  sub_22B35DFDC();
  (*(v105 + 8))(v66, v106);
  v63(v71, v62);
  result = v64(v70, 1, v68);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v72 = v135;
  swift_beginAccess();
  v73 = v133;
  v100(v72, v70, v133);
  swift_beginAccess();
  v74 = v127;
  v129(v127, v72, v73);
  v75 = sub_22B35DDEC();
  result = v69(v74, v73);
  v76 = v115;
  v77 = v114;
  v78 = v113;
  if ((v75 & 1) == 0)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v79 = __swift_project_value_buffer(v76, qword_28140BD10);
    swift_beginAccess();
    (*(v77 + 16))(v78, v79, v76);
    v80 = sub_22B36050C();
    v81 = sub_22B360D2C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v136 = v132;
      *v82 = 134218754;
      *(v82 + 4) = v99;
      *(v82 + 12) = 2048;
      *(v82 + 14) = v98;
      *(v82 + 22) = 2080;
      v83 = v116;
      swift_beginAccess();
      LODWORD(v131) = v81;
      v84 = v127;
      v85 = v133;
      v126 = v80;
      v129(v127, v83, v133);
      sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v86 = v135;
      v87 = sub_22B36131C();
      v89 = v88;
      v90 = v128;
      v128(v84, v85);
      v91 = sub_22B1A7B20(v87, v89, &v136);

      *(v82 + 24) = v91;
      *(v82 + 32) = 2080;
      swift_beginAccess();
      v129(v84, v86, v85);
      v92 = sub_22B36131C();
      v94 = v93;
      v90(v84, v85);
      v95 = sub_22B1A7B20(v92, v94, &v136);

      *(v82 + 34) = v95;
      v96 = v126;
      _os_log_impl(&dword_22B116000, v126, v131, "Creating Usage Summary for Month: %ld, Year: %ld start:%s-end:%s", v82, 0x2Au);
      v97 = v132;
      swift_arrayDestroy();
      MEMORY[0x23188F650](v97, -1, -1);
      MEMORY[0x23188F650](v82, -1, -1);

      return (*(v114 + 8))(v113, v115);
    }

    else
    {

      return (*(v77 + 8))(v78, v76);
    }
  }

  return result;
}

uint64_t sub_22B26DB98(uint64_t a1)
{
  v2 = type metadata accessor for CDUsagePointRecords(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B26DBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DA4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  sub_22B35DE9C();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    return MEMORY[0x277D84F90];
  }

  v50 = a2;
  v51 = v9;
  v43 = v7;
  v44 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
  v15 = sub_22B35E02C();
  v16 = *(v15 - 8);
  v52 = a1;
  v17 = a3;
  v18 = v16;
  v19 = *(v16 + 80);
  v20 = (v19 + 32) & ~v19;
  v48 = *(v16 + 72);
  v49 = v14;
  v21 = swift_allocObject();
  v45 = xmmword_22B3634B0;
  *(v21 + 16) = xmmword_22B3634B0;
  v22 = *(v18 + 104);
  v47 = *MEMORY[0x277CC9988];
  v46 = v22;
  v22(v21 + v20);
  sub_22B310E30(v21);
  swift_setDeallocating();
  v23 = *(v18 + 8);
  v23(v21 + v20, v15);
  swift_deallocClassInstance();
  v52 = v17;
  sub_22B35DFCC();

  v42 = v12;
  result = sub_22B35D9EC();
  if (v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = result;
  v26 = swift_allocObject();
  *(v26 + 16) = v45;
  v46(v26 + v20, v47, v15);
  sub_22B310E30(v26);
  swift_setDeallocating();
  v23(v26 + v20, v15);
  swift_deallocClassInstance();
  v27 = v51;
  sub_22B35DFCC();

  result = sub_22B35D9EC();
  if ((v28 & 1) == 0)
  {
    v29 = result;
    result = sub_22B32D218(0, 1, 1, MEMORY[0x277D84F90]);
    v31 = *(result + 16);
    v30 = *(result + 24);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_22B32D218((v30 > 1), v31 + 1, 1, result);
    }

    *(result + 16) = v32;
    v33 = result + 8 * v31;
    *(v33 + 32) = v25;
    if (v29 < v25)
    {
      __break(1u);
    }

    else
    {
      v33 = *(result + 24);
      v19 = v31 + 2;
      if ((v31 + 2) <= (v33 >> 1))
      {
LABEL_9:
        *(result + 16) = v19;
        *(result + 8 * v32 + 32) = v25;
        v34 = v29 - v25;
        if (v29 == v25)
        {
LABEL_10:
          v35 = v44;
          v36 = *(v43 + 8);
          v37 = result;
          v36(v27, v44);
          v36(v42, v35);
          return v37;
        }

        if (v29 > v25)
        {
          v38 = *(result + 16);
          v39 = v25 + 1;
          do
          {
            v40 = *(result + 24);
            if (v38 >= v40 >> 1)
            {
              result = sub_22B32D218((v40 > 1), v38 + 1, 1, result);
            }

            *(result + 16) = v38 + 1;
            *(result + 8 * v38++ + 32) = v39++;
            --v34;
          }

          while (v34);
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    result = sub_22B32D218((v33 > 1), v19, 1, result);
    goto LABEL_9;
  }

LABEL_21:
  __break(1u);
  return result;
}

double sub_22B26E06C(unint64_t a1, uint64_t a2, char a3)
{
  v3 = a2 % 9;
  if (a3)
  {
    v4 = __CFADD__(a1 - 14, 8);
    if (!v3)
    {
      goto LABEL_12;
    }

    v5 = 1000.0;
    if (a1 - 14 >= 0xFFFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }

    if (a1 >= 14)
    {
      if (a1 > 0x12)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5 = 10.0;
    if (!v3)
    {
      if (a1 < 6)
      {
        goto LABEL_17;
      }

      if (a1 > 0xD)
      {
        if (a1 < 0x13)
        {
          goto LABEL_27;
        }

LABEL_29:
        v9 = 19;
        goto LABEL_30;
      }

LABEL_28:
      v9 = 6;
LABEL_30:
      v6 = v9 - a1;
      return v6 / v5;
    }

    if (a1 >= 6)
    {
      goto LABEL_20;
    }
  }

  v4 = a1 >= 6;
  v6 = a1 - 6;
  if (!__OFSUB__(a1, 6))
  {
    return v6 / v5;
  }

  __break(1u);
LABEL_12:
  v5 = 1000.0;
  if (v4)
  {
    goto LABEL_28;
  }

  if (a1 < 14)
  {
LABEL_17:
    v6 = a1 - 6;
    if (!__OFSUB__(a1, 6))
    {
      return v6 / v5;
    }

    __break(1u);
LABEL_20:
    if (a1 > 0xD)
    {
      if (a1 < 0x13)
      {
LABEL_22:
        v7 = 19 - a1;
        return v7 / v5;
      }

      goto LABEL_29;
    }

LABEL_23:
    v7 = a1 - 6;
    return v7 / v5;
  }

  if (a1 > 0x12)
  {
    goto LABEL_29;
  }

LABEL_27:
  v6 = a1 - 19;
  return v6 / v5;
}

uint64_t sub_22B26E170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  *(v10 + 704) = v9;
  *(v10 + 1699) = v31;
  *(v10 + 1698) = v30;
  *(v10 + 696) = v29;
  *(v10 + 1697) = v28;
  *(v10 + 680) = v27;
  *(v10 + 664) = v26;
  *(v10 + 648) = v25;
  *(v10 + 1696) = a8;
  *(v10 + 640) = a7;
  *(v10 + 632) = a9;
  *(v10 + 624) = a6;
  *(v10 + 616) = a5;
  *(v10 + 608) = a4;
  *(v10 + 600) = a3;
  *(v10 + 592) = a2;
  *(v10 + 584) = a1;
  v11 = sub_22B35DA4C();
  *(v10 + 712) = v11;
  *(v10 + 720) = *(v11 - 8);
  *(v10 + 728) = swift_task_alloc();
  *(v10 + 736) = swift_task_alloc();
  v12 = sub_22B35FD8C();
  *(v10 + 744) = v12;
  *(v10 + 752) = *(v12 - 8);
  *(v10 + 760) = swift_task_alloc();
  *(v10 + 768) = swift_task_alloc();
  *(v10 + 776) = swift_task_alloc();
  *(v10 + 784) = swift_task_alloc();
  v13 = sub_22B35DF1C();
  *(v10 + 792) = v13;
  *(v10 + 800) = *(v13 - 8);
  *(v10 + 808) = swift_task_alloc();
  v14 = sub_22B35FC0C();
  *(v10 + 816) = v14;
  *(v10 + 824) = *(v14 - 8);
  *(v10 + 832) = swift_task_alloc();
  *(v10 + 840) = swift_task_alloc();
  *(v10 + 848) = swift_task_alloc();
  *(v10 + 856) = swift_task_alloc();
  *(v10 + 864) = swift_task_alloc();
  v15 = sub_22B35FD2C();
  *(v10 + 872) = v15;
  *(v10 + 880) = *(v15 - 8);
  *(v10 + 888) = swift_task_alloc();
  *(v10 + 896) = swift_task_alloc();
  *(v10 + 904) = swift_task_alloc();
  *(v10 + 912) = swift_task_alloc();
  *(v10 + 920) = swift_task_alloc();
  v16 = sub_22B35FC8C();
  *(v10 + 928) = v16;
  *(v10 + 936) = *(v16 - 8);
  *(v10 + 944) = swift_task_alloc();
  *(v10 + 952) = swift_task_alloc();
  *(v10 + 960) = swift_task_alloc();
  *(v10 + 968) = swift_task_alloc();
  *(v10 + 976) = swift_task_alloc();
  sub_22B3603AC();
  *(v10 + 984) = swift_task_alloc();
  v17 = sub_22B35FB9C();
  *(v10 + 992) = v17;
  *(v10 + 1000) = *(v17 - 8);
  *(v10 + 1008) = swift_task_alloc();
  *(v10 + 1016) = swift_task_alloc();
  *(v10 + 1024) = swift_task_alloc();
  *(v10 + 1032) = swift_task_alloc();
  *(v10 + 1040) = swift_task_alloc();
  *(v10 + 1048) = swift_task_alloc();
  *(v10 + 1056) = swift_task_alloc();
  *(v10 + 1064) = swift_task_alloc();
  *(v10 + 1072) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABD0, &unk_22B366EE0);
  *(v10 + 1080) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v10 + 1088) = swift_task_alloc();
  *(v10 + 1096) = swift_task_alloc();
  *(v10 + 1104) = swift_task_alloc();
  *(v10 + 1112) = swift_task_alloc();
  *(v10 + 1120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABD8, &qword_22B3669E0);
  *(v10 + 1128) = swift_task_alloc();
  *(v10 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABE0, &unk_22B366EF0);
  *(v10 + 1144) = swift_task_alloc();
  *(v10 + 1152) = swift_task_alloc();
  *(v10 + 1160) = swift_task_alloc();
  *(v10 + 1168) = swift_task_alloc();
  v18 = sub_22B36052C();
  *(v10 + 1176) = v18;
  *(v10 + 1184) = *(v18 - 8);
  *(v10 + 1192) = swift_task_alloc();
  *(v10 + 1200) = swift_task_alloc();
  *(v10 + 1208) = swift_task_alloc();
  *(v10 + 1216) = swift_task_alloc();
  *(v10 + 1224) = swift_task_alloc();
  *(v10 + 1232) = swift_task_alloc();
  *(v10 + 1240) = swift_task_alloc();
  v19 = sub_22B35DE9C();
  *(v10 + 1248) = v19;
  *(v10 + 1256) = *(v19 - 8);
  *(v10 + 1264) = swift_task_alloc();
  *(v10 + 1272) = swift_task_alloc();
  *(v10 + 1280) = swift_task_alloc();
  *(v10 + 1288) = swift_task_alloc();
  *(v10 + 1296) = swift_task_alloc();
  *(v10 + 1304) = swift_task_alloc();
  *(v10 + 1312) = swift_task_alloc();
  *(v10 + 1320) = swift_task_alloc();
  *(v10 + 1328) = swift_task_alloc();
  *(v10 + 1336) = swift_task_alloc();
  *(v10 + 1344) = swift_task_alloc();
  *(v10 + 1352) = swift_task_alloc();
  *(v10 + 1360) = swift_task_alloc();
  *(v10 + 1368) = swift_task_alloc();
  *(v10 + 1376) = swift_task_alloc();
  *(v10 + 1384) = swift_task_alloc();
  *(v10 + 1392) = swift_task_alloc();
  *(v10 + 1400) = swift_task_alloc();
  *(v10 + 1408) = swift_task_alloc();
  *(v10 + 1416) = swift_task_alloc();
  *(v10 + 1424) = swift_task_alloc();
  *(v10 + 1432) = swift_task_alloc();
  *(v10 + 1440) = swift_task_alloc();
  *(v10 + 1448) = swift_task_alloc();
  v20 = sub_22B35E0BC();
  *(v10 + 1456) = v20;
  *(v10 + 1464) = *(v20 - 8);
  *(v10 + 1472) = swift_task_alloc();
  *(v10 + 1480) = swift_task_alloc();
  v21 = sub_22B35DF9C();
  *(v10 + 1488) = v21;
  *(v10 + 1496) = *(v21 - 8);
  *(v10 + 1504) = swift_task_alloc();
  v22 = sub_22B35E04C();
  *(v10 + 1512) = v22;
  *(v10 + 1520) = *(v22 - 8);
  *(v10 + 1528) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B26EA68, v9, 0);
}

uint64_t sub_22B26EA68()
{
  v754 = v0;
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1496);
  v3 = *(v0 + 1488);
  v4 = *(v0 + 1480);
  v5 = *(v0 + 1464);
  v6 = *(v0 + 1256);
  v750 = *(v0 + 1248);
  v7 = *(v0 + 680);
  v739 = *(v0 + 1440);
  v726 = *(v0 + 1456);
  *(v0 + 576) = MEMORY[0x277D84F90];
  (*(v2 + 104))(v1, *MEMORY[0x277CC9830], v3);
  sub_22B35DFAC();
  v8 = v3;
  v9 = v0;
  (*(v2 + 8))(v1, v8);
  v10 = *(v5 + 16);
  *(v0 + 1536) = v10;
  *(v0 + 1544) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v7, v726);
  sub_22B35E01C();
  sub_22B35F50C();
  swift_beginAccess();
  sub_22B35F63C();
  v11 = sub_22B35DDFC();
  v12 = v750;
  v749 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v751 = *(v6 + 8);
  v751(v739, v12);
  if ((v11 & 1) == 0)
  {
    v20 = MEMORY[0x277D84F90];
    v559 = 1;
    goto LABEL_129;
  }

  v558 = (v0 + 536);
  v567 = (v0 + 544);
  v551 = (v0 + 560);
  v552 = (v0 + 552);
  v502 = (v0 + 568);
  v550 = (v0 + 576);
  v13 = MEMORY[0x277D074D0];
  v14 = MEMORY[0x277D074D8];
  v15 = MEMORY[0x277D074A8];
  v16 = MEMORY[0x277D074B0];
  v17 = MEMORY[0x277CC9940];
  v18 = MEMORY[0x277CC9980];
  v19 = MEMORY[0x277D074A0];
  *(v0 + 1664) = *MEMORY[0x277D07490];
  *(v0 + 1668) = *v13;
  *(v0 + 1672) = *v14;
  *(v0 + 1676) = *v15;
  *(v0 + 1680) = *v16;
  *(v0 + 1684) = *v17;
  *(v0 + 1688) = *v18;
  *(v0 + 1692) = *v19;
  v559 = 1;
  v20 = MEMORY[0x277D84F90];
  v752 = v0;
  do
  {
    v553 = v20;
    *(v9 + 1700) = 0;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = v9[192];
    v21 = v9[184];
    v22 = v9[182];
    v23 = v9[155];
    v24 = v9[148];
    v25 = v9[147];
    v26 = v9[85];
    v27 = __swift_project_value_buffer(v25, qword_28140BD10);
    v9[194] = v27;
    swift_beginAccess();
    v28 = *(v24 + 16);
    v9[195] = v28;
    v9[196] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v651 = v27;
    v650 = v28;
    v28(v23, v27, v25);
    (v20)(v21, v26, v22);
    v29 = sub_22B36050C();
    v30 = sub_22B360D0C();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v9[184];
    v33 = v9[183];
    v34 = v9[182];
    if (v31)
    {
      v716 = v30;
      v35 = v9[180];
      v36 = v9[156];
      v727 = v9[148];
      v733 = v9[147];
      v740 = v9[155];
      v20 = swift_slowAlloc();
      v704 = swift_slowAlloc();
      v753[0] = v704;
      *v20 = 134218498;
      *(v20 + 4) = v559;
      *(v20 + 12) = 2080;
      sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v37 = sub_22B36131C();
      v687 = v34;
      v39 = sub_22B1A7B20(v37, v38, v753);

      *(v20 + 14) = v39;
      *(v20 + 22) = 2080;
      sub_22B35F63C();
      v9 = v752;
      v40 = sub_22B36131C();
      v42 = v41;
      v751(v35, v36);
      (*(v33 + 8))(v32, v687);
      v43 = sub_22B1A7B20(v40, v42, v753);

      *(v20 + 24) = v43;
      _os_log_impl(&dword_22B116000, v29, v716, "[MOCK GENERATE] Creating record number %ld Range:%s-%s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v704, -1, -1);
      MEMORY[0x23188F650](v20, -1, -1);

      v44 = *(v727 + 8);
      v44(v740, v733);
    }

    else
    {
      v45 = v9[155];
      v46 = v9[148];
      v47 = v9[147];

      (*(v33 + 8))(v32, v34);
      v44 = *(v46 + 8);
      v44(v45, v47);
    }

    v649 = v44;
    v9[197] = v44;
    if (*(v9 + 1696) == 1 && (*(v9 + 1698) & 1) == 0)
    {
      v48 = v9[141];
      v49 = v9[140];
      v50 = *(v9 + 79);
      sub_22B35F50C();
      v51 = *(v49 + 36);
      sub_22B35F63C();
      if (v50 != 0.0)
      {
        v52 = v9[157];
        v741 = v9[156];
        v53 = v9[146];
        v54 = v9[142];
        v55 = v9[79];
        v56 = v53 + v54[11];
        v57 = *(v9[134] + 48);
        v58 = *(v52 + 32);
        (v58)(&v57[v56], v9[141]);
        v59 = (v48 + v51);
        v60 = v741;
        v630 = v58;
        v58(v53 + v54[9], v59, v741);
        v61 = *(v52 + 16);
        *(v53 + v54[10]) = v55;
        v652 = v57;
        v742 = v61;
        v61(v53, &v57[v56], v60);
        *v56 = 0;
        v661 = v56;
        *(v56 + 8) = 0;
        v62 = MEMORY[0x277D84F90];
        while (1)
        {
          v728 = v62;
          v63 = *(v9 + 79);
          v742(v9[179], &v652[v661], v9[156]);
          sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          if (v63 <= 0.0)
          {
            if ((sub_22B36076C() & 1) == 0)
            {
LABEL_14:
              v64 = v9[180];
              v65 = v9[157];
              v66 = v9[156];
              v705 = v9[139];
              v717 = v9[179];
              v67 = v9[135];
              v68 = v9[134];
              sub_22B170BE0(v661, v67, &qword_27D8BABD0, &unk_22B366EE0);
              v69 = *(v68 + 48);
              sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
              v9 = v752;
              v70 = sub_22B36101C();
              v72 = v71;
              v751(v67 + v69, v66);
              *v661 = v70;
              *(v661 + 8) = v72 & 1;
              (*(v65 + 40))(&v652[v661], v64, v66);
              v630(v705, v717, v66);
              v73 = 0;
              goto LABEL_17;
            }
          }

          else if ((sub_22B36075C() & 1) == 0)
          {
            goto LABEL_14;
          }

          v751(v9[179], v9[156]);
          v73 = 1;
LABEL_17:
          v74 = v9[157];
          v75 = v9[156];
          v76 = v9[139];
          (*(v74 + 56))(v76, v73, 1, v75);
          if ((*(v74 + 48))(v76, 1, v75) == 1)
          {
            v158 = (v9 + 210);
            v631 = *(v9 + 418);
            v513 = *(v9 + 417);
            v159 = v9[181];
            v585 = v9[180];
            v160 = v9[175];
            v560 = v9[174];
            v161 = v9[156];
            v162 = v9[122];
            v598 = v9[121];
            v163 = v9[117];
            v568 = v163;
            v653 = v9[116];
            v691 = v9[115];
            v605 = v9[114];
            v164 = v9[110];
            v579 = v164;
            v662 = v9[109];
            v720 = v9[108];
            v614 = v9[107];
            v673 = v9[103];
            v709 = v9[102];
            v519 = v9[101];
            v523 = v752[100];
            v527 = v752[99];
            if (v752[87])
            {
              v158 = v9 + 419;
            }

            v503 = *v158;
            v541 = v752[80];
            v516 = v752[76];
            v510 = v752[75];
            v165 = v752[74];
            v506 = v752[73];
            v166 = sub_22B123284(v9[146], &qword_27D8BABE0, &unk_22B366EF0);
            v640 = MEMORY[0x23188EEB0](v166);
            v742(v160, v159, v161);
            sub_22B35F63C();
            (*(v163 + 104))(v162, v513, v653);
            (*(v164 + 104))(v691, v631, v662);
            v167 = (*(v673 + 104))(v720, v503, v709);
            v632 = MEMORY[0x23188EEB0](v167);
            v752[61] = v506;
            v752[62] = v165;

            MEMORY[0x23188E270](46, 0xE100000000000000);
            MEMORY[0x23188E270](v510, v516);
            MEMORY[0x23188E270](46, 0xE100000000000000);
            sub_22B35DF0C();
            v168 = sub_22B35DECC();
            v170 = v169;
            (*(v523 + 8))(v519, v527);
            MEMORY[0x23188E270](v168, v170);

            sub_22B35FD7C();

            sub_22B35FD6C();

            sub_22B35FC4C();

            sub_22B35FBDC();

            sub_22B35FCEC();
            v742(v585, v541, v161);
            sub_22B36039C();
            sub_22B35FBBC();
            v742(v585, v160, v161);
            sub_22B36039C();
            sub_22B35FCCC();
            v742(v585, v560, v161);
            sub_22B36039C();
            sub_22B35FC6C();
            (*(v568 + 16))(v598, v162, v653);
            sub_22B35FCAC();
            (*(v579 + 16))(v605, v691, v662);
            sub_22B35FD4C();
            (*(v673 + 16))(v614, v720, v709);
            sub_22B35FC2C();

            sub_22B35FD0C();
            sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
            v171 = sub_22B36042C();
            v173 = v172;
            v735 = v752[174];
            v744 = v752[175];
            v710 = v752[122];
            v721 = v752[156];
            v674 = v752[117];
            v692 = v752[116];
            v663 = v752[115];
            v622 = v752[110];
            v654 = v752[109];
            v615 = v752[108];
            v599 = v752[103];
            v606 = v752[102];
            v593 = v752[98];
            v580 = v752[94];
            v586 = v752[93];
            v569 = v752[75];
            v574 = v752[76];
            v561 = v752[74];
            v554 = v752[73];
            sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
            v174 = objc_opt_self();

            v175 = [v174 defaultRecordZone];
            v176 = [v175 zoneID];

            v177 = sub_22B360CBC();
            sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
            v178 = v177;
            v179 = sub_22B360F4C();
            v180 = [v179 recordID];
            v181 = [v180 zoneID];

            v9 = v752;
            v182 = sub_22B360CBC();
            [v179 setRecordID_];

            v752[35] = MEMORY[0x277CC9318];
            v752[36] = MEMORY[0x277CBBBE0];
            v752[32] = v171;
            v752[33] = v173;
            sub_22B144B30(v171, v173);
            sub_22B360EBC();
            v752[59] = v554;
            v752[60] = v561;

            MEMORY[0x23188E270](46, 0xE100000000000000);
            MEMORY[0x23188E270](v569, v574);
            v183 = v752[59];
            v184 = v752[60];
            v752[30] = MEMORY[0x277D837D0];
            v752[31] = MEMORY[0x277CBBE08];
            v752[27] = v183;
            v752[28] = v184;
            sub_22B360EBC();
            sub_22B12F174(v171, v173);

            (*(v580 + 8))(v593, v586);
            objc_autoreleasePoolPop(v632);
            (*(v599 + 8))(v615, v606);
            (*(v622 + 8))(v663, v654);
            (*(v674 + 8))(v710, v692);
            v751(v735, v721);
            v751(v744, v721);
            v185 = v179;
            v186 = v550;
            MEMORY[0x23188E350]();
            if (*((v9[72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9[72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22B360A7C();
              v186 = v550;
            }

            sub_22B360A9C();

            v20 = *v186;
            objc_autoreleasePoolPop(v640);
            goto LABEL_124;
          }

          v77 = v9[178];
          v78 = v9[177];
          v79 = v9[176];
          v80 = v9[156];
          v81 = v9[154];
          v82 = v9[147];
          v83 = (v630)(v77, v9[139], v80);
          v718 = MEMORY[0x23188EEB0](v83);
          v650(v81, v651, v82);
          v742(v78, v77, v80);
          v742(v79, v77, v80);
          v84 = sub_22B36050C();
          v85 = sub_22B360D0C();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = v9[180];
            v604 = v85;
            v87 = v9[177];
            v592 = v9[176];
            v88 = v9[156];
            v688 = v9[147];
            v706 = v9[154];
            v89 = swift_slowAlloc();
            v597 = swift_slowAlloc();
            v753[0] = v597;
            *v89 = 136315650;
            sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v90 = sub_22B36131C();
            v92 = v91;
            v751(v87, v88);
            v93 = sub_22B1A7B20(v90, v92, v753);

            *(v89 + 4) = v93;
            *(v89 + 12) = 2080;
            sub_22B35DDCC();
            v94 = sub_22B36131C();
            v96 = v95;
            v751(v86, v88);
            v751(v592, v88);
            v97 = sub_22B1A7B20(v94, v96, v753);

            *(v89 + 14) = v97;
            *(v89 + 22) = 1024;
            *(v89 + 24) = 1;
            _os_log_impl(&dword_22B116000, v84, v604, "[MOCK GENERATE] Creating reading Range:%s-%s, using fixedValues: %{BOOL}d", v89, 0x1Cu);
            swift_arrayDestroy();
            v9 = v752;
            MEMORY[0x23188F650](v597, -1, -1);
            MEMORY[0x23188F650](v89, -1, -1);

            v649(v706, v688);
          }

          else
          {
            v98 = v9[177];
            v99 = v9[176];
            v100 = v9[156];
            v101 = v9[154];
            v102 = v9[147];

            v751(v99, v100);
            v751(v98, v100);
            v649(v101, v102);
          }

          v103 = *(v9 + 416);
          v104 = v9[180];
          v105 = v9[178];
          v106 = v9[133];
          v707 = v9[132];
          v107 = v9[125];
          v671 = v9[156];
          v689 = v9[124];
          sub_22B35FB8C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
          v108 = sub_22B35FB5C();
          v109 = *(v108 - 8);
          v110 = (*(v109 + 80) + 32) & ~*(v109 + 80);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_22B3634B0;
          (*(v109 + 104))(v111 + v110, v103, v108);
          sub_22B35FB7C();
          v742(v104, v105, v671);
          sub_22B36039C();
          sub_22B35FB1C();
          sub_22B35DDCC();
          sub_22B36039C();
          sub_22B35FAFC();
          sub_22B35FB3C();
          (*(v107 + 16))(v707, v106, v689);
          v62 = v728;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_22B32D22C(0, v728[2] + 1, 1, v728);
          }

          v113 = v62[2];
          v112 = v62[3];
          v9 = v752;
          if (v113 >= v112 >> 1)
          {
            v62 = sub_22B32D22C((v112 > 1), v113 + 1, 1, v62);
          }

          v114 = v752[178];
          v115 = v752[156];
          v116 = v752[132];
          v117 = v752[125];
          v118 = v752[124];
          (*(v117 + 8))(v752[133], v118);
          v62[2] = v113 + 1;
          (*(v117 + 32))(v62 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v113, v116, v118);
          objc_autoreleasePoolPop(v718);
          v751(v114, v115);
        }
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v743 = v9[141];
    v119 = v9[140];
    v120 = *(v9 + 79);
    if (*(v9 + 1697))
    {
      *v567 = MEMORY[0x277D84F90];
      sub_22B35F50C();
      v121 = *(v119 + 36);
      sub_22B35F63C();
      if (v120 == 0.0)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v122 = v9[157];
      v123 = v9[156];
      v124 = v9[143];
      v125 = v9[142];
      v126 = v9[79];
      v729 = v125;
      v127 = v124 + *(v125 + 44);
      v128 = *(v9[134] + 48);
      v129 = *(v122 + 32);
      v129(v127 + v128, v9[141], v123);
      v708 = *(v125 + 36);
      v130 = v128;
      v734 = v129;
      v129(v124 + v708, v743 + v121, v123);
      v131 = *(v122 + 16);
      *(v124 + *(v729 + 40)) = v126;
      v719 = v131;
      v131(v124, v127 + v128, v123);
      *v127 = 0;
      *(v127 + 8) = 0;
      while (1)
      {
        v132 = *(v9 + 79);
        (v719)(v9[161], v127 + v130, v9[156]);
        sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if (v132 <= 0.0)
        {
          if ((sub_22B36076C() & 1) == 0)
          {
LABEL_31:
            v133 = v9[180];
            v134 = v9[157];
            v135 = v9[156];
            v672 = v9[136];
            v690 = v9[161];
            v136 = v124;
            v137 = v9[135];
            v138 = v9[134];
            sub_22B170BE0(v127, v137, &qword_27D8BABD0, &unk_22B366EE0);
            v139 = *(v138 + 48);
            sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
            v140 = sub_22B36101C();
            v142 = v141;
            v143 = v137 + v139;
            v124 = v136;
            v751(v143, v135);
            *v127 = v140;
            v144 = v142 & 1;
            v9 = v752;
            *(v127 + 8) = v144;
            (*(v134 + 40))(v127 + v130, v133, v135);
            v734(v672, v690, v135);
            v145 = 0;
            goto LABEL_34;
          }
        }

        else if ((sub_22B36075C() & 1) == 0)
        {
          goto LABEL_31;
        }

        v751(v9[161], v9[156]);
        v145 = 1;
LABEL_34:
        v146 = v9[157];
        v147 = v9[156];
        v148 = v9[136];
        (*(v146 + 56))(v148, v145, 1, v147);
        if ((*(v146 + 48))(v148, 1, v147) == 1)
        {
          v670 = *(v9 + 423);
          v647 = *(v9 + 418);
          v512 = *(v9 + 417);
          v439 = v9[181];
          v590 = v9[180];
          v440 = v9[159];
          v546 = v440;
          v565 = v9[158];
          v441 = v9[156];
          v612 = v9[121];
          v442 = v9[118];
          v443 = v9[117];
          v685 = v9[116];
          v620 = v9[114];
          v714 = v9[111];
          v444 = v9[110];
          v702 = v9[109];
          v628 = v9[107];
          v747 = v9[104];
          v445 = v9[103];
          v737 = v9[102];
          v522 = v9[101];
          v526 = v9[100];
          v531 = v9[99];
          v549 = v9[80];
          v515 = v9[75];
          v518 = v9[76];
          v505 = v9[73];
          v509 = v9[74];
          v446 = sub_22B123284(v9[143], &qword_27D8BABE0, &unk_22B366EF0);
          v660 = MEMORY[0x23188EEB0](v446);
          (v719)(v440, v439, v441);
          sub_22B35F63C();
          (*(v443 + 104))(v442, v512, v685);
          (*(v444 + 104))(v714, v647, v702);
          v447 = (*(v445 + 104))(v747, v670, v737);
          v648 = MEMORY[0x23188EEB0](v447);
          v9[65] = v505;
          v9[66] = v509;

          MEMORY[0x23188E270](46, 0xE100000000000000);
          MEMORY[0x23188E270](v515, v518);
          MEMORY[0x23188E270](46, 0xE100000000000000);
          sub_22B35DF0C();
          v448 = sub_22B35DECC();
          v450 = v449;
          (*(v526 + 8))(v522, v531);
          MEMORY[0x23188E270](v448, v450);

          sub_22B35FD7C();

          sub_22B35FD6C();

          sub_22B35FC4C();

          sub_22B35FBDC();

          sub_22B35FCEC();
          (v719)(v590, v549, v441);
          sub_22B36039C();
          sub_22B35FBBC();
          (v719)(v590, v546, v441);
          sub_22B36039C();
          sub_22B35FCCC();
          (v719)(v590, v565, v441);
          sub_22B36039C();
          sub_22B35FC6C();
          (*(v443 + 16))(v612, v442, v685);
          sub_22B35FCAC();
          (*(v444 + 16))(v620, v714, v702);
          sub_22B35FD4C();
          (*(v445 + 16))(v628, v747, v737);
          sub_22B35FC2C();

          sub_22B35FD0C();
          sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
          v451 = sub_22B36042C();
          v453 = v452;
          v738 = v9[158];
          v748 = v9[159];
          v732 = v9[156];
          v715 = v9[116];
          v725 = v9[118];
          v686 = v9[111];
          v703 = v9[117];
          v629 = v9[110];
          v639 = v9[109];
          v621 = v9[104];
          v603 = v9[103];
          v613 = v9[102];
          v596 = v9[95];
          v584 = v9[94];
          v591 = v9[93];
          v573 = v9[75];
          v578 = v9[76];
          v566 = v9[74];
          v557 = v9[73];
          sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
          v454 = objc_opt_self();

          v455 = [v454 defaultRecordZone];
          v456 = [v455 zoneID];

          v457 = sub_22B360CBC();
          sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
          v547 = v457;
          v458 = sub_22B360F4C();
          v459 = [v458 recordID];
          v460 = [v459 zoneID];

          v461 = sub_22B360CBC();
          [v458 setRecordID_];

          v9[40] = MEMORY[0x277CC9318];
          v9[41] = MEMORY[0x277CBBBE0];
          v9[37] = v451;
          v9[38] = v453;
          sub_22B144B30(v451, v453);
          sub_22B360EBC();
          v9[63] = v557;
          v9[64] = v566;

          MEMORY[0x23188E270](46, 0xE100000000000000);
          MEMORY[0x23188E270](v573, v578);
          v462 = v9[63];
          v463 = v9[64];
          v9[5] = MEMORY[0x277D837D0];
          v9[6] = MEMORY[0x277CBBE08];
          v9[2] = v462;
          v9[3] = v463;
          sub_22B360EBC();
          sub_22B12F174(v451, v453);

          (*(v584 + 8))(v596, v591);
          objc_autoreleasePoolPop(v648);
          (*(v603 + 8))(v621, v613);
          (*(v629 + 8))(v686, v639);
          (*(v703 + 8))(v725, v715);
          v751(v738, v732);
          v751(v748, v732);
          v464 = v458;
          v465 = v550;
          MEMORY[0x23188E350]();
          if (*((v9[72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9[72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22B360A7C();
            v465 = v550;
          }

          sub_22B360A9C();

          v20 = *v465;
          objc_autoreleasePoolPop(v660);
          goto LABEL_124;
        }

        v149 = v9[191];
        v150 = v9[160];
        v151 = v9[88];
        v152 = *(v9 + 1696);
        v153 = *(v9 + 79);
        v154 = (v734)(v150, v9[136], v9[156]);
        v155 = MEMORY[0x23188EEB0](v154);
        sub_22B26B068(v150, v152, v149, v153, v151, v567);
        v156 = v9[160];
        v157 = v9[156];
        objc_autoreleasePoolPop(v155);
        v751(v156, v157);
      }
    }

    sub_22B35F50C();
    v187 = *(v119 + 36);
    sub_22B35F63C();
    if (v120 == 0.0)
    {
      goto LABEL_148;
    }

    v188 = v9[157];
    v189 = v9[156];
    v190 = v9[145];
    v191 = v9[142];
    v192 = v9[79];
    v193 = v190 + v191[11];
    v194 = *(v9[134] + 48);
    v195 = *(v188 + 32);
    v195(v193 + v194, v9[141], v189);
    v196 = v743 + v187;
    v197 = v189;
    v722 = v195;
    v195(v190 + v191[9], v196, v189);
    v198 = *(v188 + 16);
    *(v190 + v191[10]) = v192;
    v633 = v194;
    v198(v190, v193 + v194, v197);
    *v193 = 0;
    v641 = v193;
    *(v193 + 8) = 0;
    v623 = MEMORY[0x277D84F90];
    v745 = v198;
    while (1)
    {
      v204 = *(v9 + 79);
      v198(v9[173], v641 + v633, v9[156]);
      sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (v204 <= 0.0)
      {
        if ((sub_22B36076C() & 1) == 0)
        {
LABEL_47:
          v205 = v9[180];
          v206 = v9[173];
          v207 = v752[157];
          v208 = v752[156];
          v675 = v752[138];
          v693 = v206;
          v209 = v752[135];
          v210 = v752[134];
          sub_22B170BE0(v641, v209, &qword_27D8BABD0, &unk_22B366EE0);
          v211 = *(v210 + 48);
          sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
          v212 = sub_22B36101C();
          v214 = v213;
          v751(v209 + v211, v208);
          *v641 = v212;
          *(v641 + 8) = v214 & 1;
          (*(v207 + 40))(v641 + v633, v205, v208);
          v9 = v752;
          v722(v675, v693, v208);
          v215 = 0;
          goto LABEL_50;
        }
      }

      else if ((sub_22B36075C() & 1) == 0)
      {
        goto LABEL_47;
      }

      v751(v9[173], v9[156]);
      v215 = 1;
LABEL_50:
      v216 = v9[157];
      v217 = v9[156];
      v218 = v9[138];
      v219 = *(v216 + 56);
      v219(v218, v215, 1, v217);
      v220 = *(v216 + 48);
      if (v220(v218, 1, v217) == 1)
      {
        break;
      }

      v664 = *(v9 + 422);
      v655 = *(v9 + 421);
      v221 = *(v9 + 416);
      v222 = v9[180];
      v223 = v9[172];
      v224 = v9[156];
      v225 = (v722)(v223, v9[138], v224);
      v711 = MEMORY[0x23188EEB0](v225);
      sub_22B35FB8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
      v226 = sub_22B35FB5C();
      v227 = *(v226 - 8);
      v228 = (*(v227 + 80) + 32) & ~*(v227 + 80);
      v229 = swift_allocObject();
      *(v229 + 16) = xmmword_22B3634B0;
      (*(v227 + 104))(v229 + v228, v221, v226);
      sub_22B35FB7C();
      v745(v222, v223, v224);
      sub_22B36039C();
      sub_22B35FB1C();
      sub_22B35DDCC();
      sub_22B36039C();
      sub_22B35FAFC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
      v230 = sub_22B35E02C();
      v231 = *(v230 - 8);
      v232 = *(v231 + 72);
      v233 = (*(v231 + 80) + 32) & ~*(v231 + 80);
      v234 = swift_allocObject();
      *(v234 + 16) = xmmword_22B3634C0;
      v235 = v234 + v233;
      v236 = *(v231 + 104);
      v236(v235, v655, v230);
      v236(v235 + v232, v664, v230);
      sub_22B310E30(v234);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22B35DFCC();

      v237 = sub_22B35D9CC();
      if (v238)
      {
        v239 = 1;
      }

      else
      {
        v239 = v237;
      }

      v240 = sub_22B35D97C();
      if (v241)
      {
        v242 = 1;
      }

      else
      {
        v242 = v240;
      }

      v243 = sub_22B26E06C(v239, v242, 0);
      if (v243 < 0.0)
      {
        v9 = v752;
        v199 = v752[131];
        v200 = v752[125];
        v201 = v752[124];
        (*(v752[90] + 8))(v752[92], v752[89]);
        (*(v200 + 8))(v199, v201);
        v198 = v745;
        goto LABEL_44;
      }

      v244 = v243;
      v245 = v752[172];
      v246 = v752[171];
      v247 = v752[170];
      v248 = v752[156];
      v650(v752[153], v651, v752[147]);
      v198 = v745;
      v745(v246, v245, v248);
      v745(v247, v245, v248);
      v249 = sub_22B36050C();
      v250 = sub_22B360D0C();
      v9 = v752;
      if (os_log_type_enabled(v249, v250))
      {
        v251 = v752[180];
        v656 = v250;
        v252 = v752[171];
        v587 = v752[170];
        v253 = v752[156];
        v676 = v752[147];
        v694 = v752[153];
        v254 = swift_slowAlloc();
        v594 = swift_slowAlloc();
        v753[0] = v594;
        *v254 = 136315650;
        sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v255 = sub_22B36131C();
        v257 = v256;
        v751(v252, v253);
        v258 = sub_22B1A7B20(v255, v257, v753);

        *(v254 + 4) = v258;
        *(v254 + 12) = 2080;
        sub_22B35DDCC();
        v259 = sub_22B36131C();
        v261 = v260;
        v751(v251, v253);
        v262 = v253;
        v198 = v745;
        v751(v587, v262);
        v263 = sub_22B1A7B20(v259, v261, v753);

        *(v254 + 14) = v263;
        *(v254 + 22) = 2048;
        *(v254 + 24) = v244;
        _os_log_impl(&dword_22B116000, v249, v656, "[MOCK GENERATE] Creating reading Range:%s-%s, using dynamic value: %f", v254, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v594, -1, -1);
        v264 = v254;
        v9 = v752;
        MEMORY[0x23188F650](v264, -1, -1);

        v649(v694, v676);
      }

      else
      {
        v265 = v752[171];
        v266 = v752[170];
        v267 = v752[156];
        v268 = v752[153];
        v269 = v752[147];

        v751(v266, v267);
        v751(v265, v267);
        v649(v268, v269);
      }

      if (*(v9 + 1698) != 1)
      {
        v280 = v9[131];
        v281 = v9[130];
        v282 = v9[125];
        v283 = v9[124];
        sub_22B35FB3C();
        (*(v282 + 16))(v281, v280, v283);
        v284 = v623;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v284 = sub_22B32D22C(0, v623[2] + 1, 1, v623);
        }

        v276 = v284[2];
        v285 = v284[3];
        v623 = v284;
        v277 = v276 + 1;
        if (v276 >= v285 >> 1)
        {
          v623 = sub_22B32D22C((v285 > 1), v276 + 1, 1, v623);
        }

        v278 = v9[131];
        v279 = v9[130];
        goto LABEL_75;
      }

      if ((v9[87] - 1) < 2)
      {
        *v551 = 0;
        MEMORY[0x23188F670](v551, 8);
        if ((0x20000000000001 * *v551) < 0x1FFFFFFFFFF801)
        {
          do
          {
            *v552 = 0;
            MEMORY[0x23188F670](v552, 8);
          }

          while ((0x20000000000001 * *v552) < 0x1FFFFFFFFFF801);
        }

        v270 = v9[131];
        v271 = v9[129];
        v272 = v9[125];
        v273 = v9[124];
        sub_22B35FB3C();
        (*(v272 + 16))(v271, v270, v273);
        v274 = v623;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v274 = sub_22B32D22C(0, v623[2] + 1, 1, v623);
        }

        v276 = v274[2];
        v275 = v274[3];
        v623 = v274;
        v277 = v276 + 1;
        if (v276 >= v275 >> 1)
        {
          v623 = sub_22B32D22C((v275 > 1), v276 + 1, 1, v623);
        }

        v278 = v9[131];
        v279 = v9[129];
LABEL_75:
        v286 = v9[125];
        v287 = v9[124];
        (*(v9[90] + 8))(v9[92], v9[89]);
        (*(v286 + 8))(v278, v287);
        v623[2] = v277;
        (*(v286 + 32))(v623 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v276, v279, v287);
        goto LABEL_44;
      }

      v288 = v9[131];
      v289 = v9[125];
      v290 = v9[124];
      (*(v9[90] + 8))(v9[92], v9[89]);
      (*(v289 + 8))(v288, v290);
LABEL_44:
      v202 = v9[172];
      v203 = v9[156];
      objc_autoreleasePoolPop(v711);
      v751(v202, v203);
    }

    v291 = sub_22B123284(v9[145], &qword_27D8BABE0, &unk_22B366EF0);
    v292 = MEMORY[0x23188EEB0](v291);
    v581 = v220;
    v588 = v219;
    if (v623[2])
    {
      v642 = v292;
      v293 = *(v9 + 419);
      v634 = *(v9 + 418);
      v498 = *(v9 + 417);
      v532 = v9[169];
      v534 = v9[168];
      v536 = v9[180];
      v520 = v9[156];
      v294 = v9[120];
      v295 = v9[117];
      v542 = v295;
      v296 = v9[116];
      v600 = v9[114];
      v297 = v9[113];
      v575 = v9[121];
      v298 = v9[110];
      v657 = v9[109];
      v607 = v9[107];
      v665 = v9[103];
      v677 = v9[106];
      v695 = v9[102];
      v501 = v9[101];
      v504 = v9[100];
      v507 = v9[99];
      v528 = v752[80];
      v500 = v752[76];
      v499 = v752[75];
      v497 = v752[74];
      v496 = v752[73];
      (v745)();
      sub_22B35F63C();
      (*(v295 + 104))(v294, v498, v296);
      (*(v298 + 104))(v297, v634, v657);
      v299 = (*(v665 + 104))(v677, v293, v695);
      v635 = MEMORY[0x23188EEB0](v299);
      v752[51] = v496;
      v752[52] = v497;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      MEMORY[0x23188E270](v499, v500);
      MEMORY[0x23188E270](46, 0xE100000000000000);
      sub_22B35DF0C();
      v300 = sub_22B35DECC();
      v302 = v301;
      (*(v504 + 8))(v501, v507);
      MEMORY[0x23188E270](v300, v302);

      sub_22B35FD7C();

      sub_22B35FD6C();

      sub_22B35FC4C();

      sub_22B35FBDC();

      sub_22B35FCEC();
      v745(v536, v528, v520);
      sub_22B36039C();
      sub_22B35FBBC();
      v745(v536, v532, v520);
      sub_22B36039C();
      sub_22B35FCCC();
      v745(v536, v534, v520);
      sub_22B36039C();
      sub_22B35FC6C();
      (*(v542 + 16))(v575, v294, v296);
      sub_22B35FCAC();
      (*(v298 + 16))(v600, v297, v657);
      sub_22B35FD4C();
      (*(v665 + 16))(v607, v677, v695);
      sub_22B35FC2C();

      sub_22B35FD0C();
      sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
      v303 = sub_22B36042C();
      v305 = v304;
      v678 = v752[168];
      v696 = v752[169];
      v658 = v752[120];
      v666 = v752[156];
      v616 = v752[116];
      v601 = v752[113];
      v608 = v752[117];
      v570 = v752[110];
      v576 = v752[109];
      v562 = v752[106];
      v555 = v752[102];
      v540 = v752[97];
      v543 = v752[103];
      v537 = v752[94];
      v539 = v752[93];
      v533 = v752[75];
      v535 = v752[76];
      v524 = v752[73];
      v529 = v752[74];
      sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
      v306 = objc_opt_self();

      v307 = [v306 defaultRecordZone];
      v308 = [v307 zoneID];

      v309 = sub_22B360CBC();
      sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
      v310 = v309;
      v311 = sub_22B360F4C();
      v312 = [v311 recordID];
      v313 = [v312 zoneID];

      v314 = sub_22B360CBC();
      [v311 setRecordID_];

      v752[10] = MEMORY[0x277CC9318];
      v752[11] = MEMORY[0x277CBBBE0];
      v752[7] = v303;
      v752[8] = v305;
      sub_22B144B30(v303, v305);
      sub_22B360EBC();
      v752[53] = v524;
      v752[54] = v529;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      MEMORY[0x23188E270](v533, v535);
      v315 = v752[53];
      v316 = v752[54];
      v752[15] = MEMORY[0x277D837D0];
      v752[16] = MEMORY[0x277CBBE08];
      v752[12] = v315;
      v752[13] = v316;
      sub_22B360EBC();
      sub_22B12F174(v303, v305);

      v9 = v752;
      (*(v537 + 8))(v540, v539);
      objc_autoreleasePoolPop(v635);
      (*(v543 + 8))(v562, v555);
      (*(v570 + 8))(v601, v576);
      (*(v608 + 8))(v658, v616);
      v751(v678, v666);
      v751(v696, v666);
      v317 = v311;
      v318 = v550;
      MEMORY[0x23188E350]();
      if (*((v9[72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9[72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
        v318 = v550;
      }

      sub_22B360A9C();

      v319 = *v318;

      v553 = v319;
      *v318 = v319;
      v292 = v642;
    }

    v320 = v745;
    v697 = v9[156];
    v321 = v9[144];
    v322 = v9[142];
    v323 = v9[141];
    v324 = v9[140];
    v679 = v9[134];
    v325 = v9[79];
    objc_autoreleasePoolPop(v292);

    sub_22B35F50C();
    v326 = *(v324 + 36);
    sub_22B35F63C();
    v327 = v321 + v322[11];
    v328 = *(v679 + 48);
    v722(v327 + v328, v323, v697);
    v722(v321 + v322[9], v323 + v326, v697);
    *(v321 + v322[10]) = v325;
    v609 = v328;
    v745(v321, v327 + v328, v697);
    *v327 = 0;
    v617 = v327;
    *(v327 + 8) = 0;
    v602 = MEMORY[0x277D84F90];
    while (2)
    {
      v334 = *(v9 + 79);
      v320(v9[167], v617 + v609, v9[156]);
      if (v334 <= 0.0)
      {
        if (sub_22B36076C())
        {
          goto LABEL_88;
        }

LABEL_86:
        v335 = v9[180];
        v336 = v9[167];
        v337 = v752[157];
        v338 = v752[156];
        v680 = v752[137];
        v698 = v336;
        v339 = v752[135];
        v340 = v752[134];
        sub_22B170BE0(v617, v339, &qword_27D8BABD0, &unk_22B366EE0);
        v341 = *(v340 + 48);
        sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
        v342 = sub_22B36101C();
        v344 = v343;
        v751(v339 + v341, v338);
        *v617 = v342;
        *(v617 + 8) = v344 & 1;
        (*(v337 + 40))(v617 + v609, v335, v338);
        v9 = v752;
        v722(v680, v698, v338);
        v345 = 0;
      }

      else
      {
        if ((sub_22B36075C() & 1) == 0)
        {
          goto LABEL_86;
        }

LABEL_88:
        v751(v9[167], v9[156]);
        v345 = 1;
      }

      v346 = v9[156];
      v347 = v9[137];
      v588(v347, v345, 1, v346);
      if (v581(v347, 1, v346) != 1)
      {
        v643 = *(v9 + 422);
        v636 = *(v9 + 421);
        v348 = *(v9 + 416);
        v349 = v9[180];
        v350 = v9[166];
        v624 = v9[156];
        v681 = *(v9 + 1699);
        v351 = (v722)(v350, v9[137]);
        v699 = MEMORY[0x23188EEB0](v351);
        sub_22B35FB8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
        v352 = sub_22B35FB5C();
        v353 = *(v352 - 8);
        v354 = (*(v353 + 80) + 32) & ~*(v353 + 80);
        v355 = swift_allocObject();
        *(v355 + 16) = xmmword_22B3634B0;
        (*(v353 + 104))(v355 + v354, v348, v352);
        sub_22B35FB7C();
        v320 = v745;
        v745(v349, v350, v624);
        sub_22B36039C();
        sub_22B35FB1C();
        sub_22B35DDCC();
        sub_22B36039C();
        sub_22B35FAFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
        v356 = sub_22B35E02C();
        v357 = *(v356 - 8);
        v358 = *(v357 + 72);
        v359 = (*(v357 + 80) + 32) & ~*(v357 + 80);
        v360 = swift_allocObject();
        *(v360 + 16) = xmmword_22B3634C0;
        v361 = v360 + v359;
        v362 = *(v357 + 104);
        v362(v361, v636, v356);
        v362(v361 + v358, v643, v356);
        sub_22B310E30(v360);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_22B35DFCC();

        v363 = sub_22B35D9CC();
        if (v364)
        {
          v365 = 1;
        }

        else
        {
          v365 = v363;
        }

        v366 = sub_22B35D97C();
        if (v367)
        {
          v368 = 1;
        }

        else
        {
          v368 = v366;
        }

        v369 = sub_22B26E06C(v365, v368, v681);
        if (v369 >= 0.0)
        {
          goto LABEL_82;
        }

        v370 = v369;
        v371 = v9[166];
        v372 = v9[165];
        v373 = v9[164];
        v374 = v9[156];
        v650(v9[152], v651, v9[147]);
        v745(v372, v371, v374);
        v745(v373, v371, v374);
        v375 = sub_22B36050C();
        v376 = sub_22B360D0C();
        if (os_log_type_enabled(v375, v376))
        {
          v377 = v9[180];
          v644 = v376;
          v378 = v9[165];
          v625 = v9[164];
          v379 = v9[156];
          v667 = v9[147];
          v682 = v9[152];
          v380 = swift_slowAlloc();
          v637 = swift_slowAlloc();
          v753[0] = v637;
          *v380 = 136315650;
          sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v381 = sub_22B36131C();
          v383 = v382;
          v751(v378, v379);
          v384 = sub_22B1A7B20(v381, v383, v753);

          *(v380 + 4) = v384;
          *(v380 + 12) = 2080;
          sub_22B35DDCC();
          v385 = sub_22B36131C();
          v387 = v386;
          v751(v377, v379);
          v751(v625, v379);
          v320 = v745;
          v388 = sub_22B1A7B20(v385, v387, v753);

          *(v380 + 14) = v388;
          *(v380 + 22) = 2048;
          *(v380 + 24) = v370;
          _os_log_impl(&dword_22B116000, v375, v644, "[MOCK GENERATE] Creating reading Range:%s-%s, using dynamic value: %f", v380, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v637, -1, -1);
          v389 = v380;
          v9 = v752;
          MEMORY[0x23188F650](v389, -1, -1);

          v649(v682, v667);
        }

        else
        {
          v390 = v9[165];
          v391 = v9[164];
          v392 = v9[156];
          v393 = v9[152];
          v394 = v9[147];

          v751(v391, v392);
          v751(v390, v392);
          v649(v393, v394);
        }

        if (*(v9 + 1698) == 1)
        {
          if ((v9[87] | 2) == 2)
          {
            *v558 = 0;
            MEMORY[0x23188F670](v558, 8);
            if ((0x20000000000001 * *v558) < 0x1FFFFFFFFFF801)
            {
              do
              {
                *v502 = 0;
                MEMORY[0x23188F670](v502, 8);
              }

              while ((0x20000000000001 * *v502) < 0x1FFFFFFFFFF801);
            }

            v395 = v9[128];
            v396 = v9[126];
            v397 = v9[125];
            v398 = v9[124];
            sub_22B35FB3C();
            (*(v397 + 16))(v396, v395, v398);
            v399 = v602;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v399 = sub_22B32D22C(0, v602[2] + 1, 1, v602);
            }

            v401 = v399[2];
            v400 = v399[3];
            v602 = v399;
            v402 = v401 + 1;
            if (v401 >= v400 >> 1)
            {
              v602 = sub_22B32D22C((v400 > 1), v401 + 1, 1, v602);
            }

            v403 = v9[128];
            v404 = v9[126];
            goto LABEL_114;
          }

LABEL_82:
          v329 = v9[128];
          v330 = v9[125];
          v331 = v9[124];
          (*(v9[90] + 8))(v9[91], v9[89]);
          (*(v330 + 8))(v329, v331);
        }

        else
        {
          v405 = v9[128];
          v406 = v9[127];
          v407 = v9[125];
          v408 = v9[124];
          sub_22B35FB3C();
          (*(v407 + 16))(v406, v405, v408);
          v409 = v602;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v409 = sub_22B32D22C(0, v602[2] + 1, 1, v602);
          }

          v401 = v409[2];
          v410 = v409[3];
          v602 = v409;
          v402 = v401 + 1;
          if (v401 >= v410 >> 1)
          {
            v602 = sub_22B32D22C((v410 > 1), v401 + 1, 1, v602);
          }

          v403 = v9[128];
          v404 = v9[127];
LABEL_114:
          v411 = v9[125];
          v412 = v9[124];
          (*(v9[90] + 8))(v9[91], v9[89]);
          (*(v411 + 8))(v403, v412);
          v602[2] = v402;
          (*(v411 + 32))(v602 + ((*(v411 + 80) + 32) & ~*(v411 + 80)) + *(v411 + 72) * v401, v404, v412);
        }

        v332 = v9[166];
        v333 = v9[156];
        objc_autoreleasePoolPop(v699);
        v751(v332, v333);
        continue;
      }

      break;
    }

    v413 = sub_22B123284(v9[144], &qword_27D8BABE0, &unk_22B366EF0);
    v414 = MEMORY[0x23188EEB0](v413);
    if (v602[2])
    {
      v659 = v414;
      v645 = *(v9 + 420);
      v514 = *(v9 + 418);
      v511 = *(v9 + 417);
      v548 = v9[163];
      v563 = v9[162];
      v538 = v9[156];
      v571 = v9[180];
      v610 = v9[121];
      v415 = v9[119];
      v416 = v9[117];
      v582 = v416;
      v668 = v9[116];
      v618 = v9[114];
      v700 = v9[112];
      v417 = v9[110];
      v683 = v9[109];
      v626 = v9[107];
      v730 = v9[105];
      v712 = v9[103];
      v723 = v9[102];
      v418 = v9[101];
      v525 = v9[100];
      v530 = v9[99];
      v544 = v9[80];
      v517 = v9[75];
      v521 = v9[76];
      v508 = v9[74];
      v419 = v9[73];
      (v745)();
      sub_22B35F63C();
      (*(v416 + 104))(v415, v511, v668);
      (*(v417 + 104))(v700, v514, v683);
      v420 = (*(v712 + 104))(v730, v645, v723);
      v646 = MEMORY[0x23188EEB0](v420);
      v9[55] = v419;
      v9[56] = v508;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      MEMORY[0x23188E270](v517, v521);
      MEMORY[0x23188E270](46, 0xE100000000000000);
      sub_22B35DF0C();
      v421 = sub_22B35DECC();
      v423 = v422;
      (*(v525 + 8))(v418, v530);
      MEMORY[0x23188E270](v421, v423);

      sub_22B35FD7C();

      sub_22B35FD6C();

      sub_22B35FC4C();

      sub_22B35FBDC();

      sub_22B35FCEC();
      v745(v571, v544, v538);
      sub_22B36039C();
      sub_22B35FBBC();
      v745(v571, v548, v538);
      sub_22B36039C();
      sub_22B35FCCC();
      v745(v571, v563, v538);
      sub_22B36039C();
      sub_22B35FC6C();
      (*(v582 + 16))(v610, v415, v668);
      sub_22B35FCAC();
      (*(v417 + 16))(v618, v700, v683);
      sub_22B35FD4C();
      (*(v712 + 16))(v626, v730, v723);
      sub_22B35FC2C();

      sub_22B35FD0C();
      sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
      v424 = sub_22B36042C();
      v426 = v425;
      v736 = v9[162];
      v746 = v9[163];
      v731 = v9[156];
      v713 = v9[116];
      v724 = v9[119];
      v684 = v9[112];
      v701 = v9[117];
      v638 = v9[110];
      v669 = v9[109];
      v611 = v9[103];
      v619 = v9[102];
      v627 = v9[105];
      v595 = v9[96];
      v583 = v9[94];
      v589 = v9[93];
      v572 = v9[75];
      v577 = v9[76];
      v564 = v9[74];
      v556 = v9[73];
      sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
      v427 = objc_opt_self();

      v428 = [v427 defaultRecordZone];
      v429 = [v428 zoneID];

      v430 = sub_22B360CBC();
      sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
      v545 = v430;
      v431 = sub_22B360F4C();
      v432 = [v431 recordID];
      v433 = [v432 zoneID];

      v434 = sub_22B360CBC();
      [v431 setRecordID_];

      v9[20] = MEMORY[0x277CC9318];
      v9[21] = MEMORY[0x277CBBBE0];
      v9[17] = v424;
      v9[18] = v426;
      sub_22B144B30(v424, v426);
      sub_22B360EBC();
      v9[57] = v556;
      v9[58] = v564;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      MEMORY[0x23188E270](v572, v577);
      v435 = v9[57];
      v436 = v9[58];
      v9[25] = MEMORY[0x277D837D0];
      v9[26] = MEMORY[0x277CBBE08];
      v9[22] = v435;
      v9[23] = v436;
      sub_22B360EBC();
      sub_22B12F174(v424, v426);

      (*(v583 + 8))(v595, v589);
      objc_autoreleasePoolPop(v646);
      (*(v611 + 8))(v627, v619);
      (*(v638 + 8))(v684, v669);
      (*(v701 + 8))(v724, v713);
      v751(v736, v731);
      v751(v746, v731);
      v437 = v431;
      v438 = v550;
      MEMORY[0x23188E350]();
      if (*((v9[72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9[72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
        v438 = v550;
      }

      sub_22B360A9C();

      v20 = *v438;

      *v438 = v20;
      v414 = v659;
    }

    else
    {
      v20 = v553;
    }

    objc_autoreleasePoolPop(v414);
LABEL_124:

    v9[198] = v20;
    v466 = v559 + 1;
    v9[199] = v559 + 1;
    if (__OFADD__(v559, 1))
    {
      __break(1u);
      goto LABEL_147;
    }

    if (__ROR8__(0x8F5C28F5C28F5C29 * v466 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v650(v9[151], v651, v9[147]);
      v486 = sub_22B36050C();
      v487 = sub_22B360D0C();
      if (os_log_type_enabled(v486, v487))
      {
        v488 = swift_slowAlloc();
        *v488 = 134217984;
        *(v488 + 4) = v466;
        _os_log_impl(&dword_22B116000, v486, v487, "[MOCK GENERATE] Saving batch at counter %ld", v488, 0xCu);
        MEMORY[0x23188F650](v488, -1, -1);
      }

      v489 = v9[151];
      v490 = v9[148];
      v491 = v9[147];

      v9[200] = (v490 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v649(v489, v491);
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v481 = swift_task_alloc();
      v9[201] = v481;
      *v481 = v9;
      v482 = sub_22B2744C8;
LABEL_138:
      v481[1] = v482;
      v483 = v9[86];
      v484 = v9[85];

      return sub_22B30C418(v20, v484, v483);
    }

    v467 = v9[181];
    v468 = v9[180];
    v469 = v9[157];
    v470 = v9[156];
    sub_22B35F63C();
    (*(v469 + 40))(v467, v468, v470);
    sub_22B35F63C();
    LOBYTE(v467) = sub_22B35DDFC();
    v749 = (v469 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v751 = *(v469 + 8);
    v751(v468, v470);
    v559 = v9[199];
  }

  while ((v467 & 1) != 0);
LABEL_129:
  v9[205] = v749;
  v9[204] = v751;
  v9[203] = v20;
  if (v20 >> 62)
  {
LABEL_150:
    if (!sub_22B36109C())
    {
      goto LABEL_151;
    }

LABEL_131:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v471 = v9[149];
    v472 = v9[148];
    v473 = v9[147];
    v474 = __swift_project_value_buffer(v473, qword_28140BD10);
    swift_beginAccess();
    (*(v472 + 16))(v471, v474, v473);
    v475 = sub_22B36050C();
    v476 = sub_22B360D0C();
    if (os_log_type_enabled(v475, v476))
    {
      v477 = swift_slowAlloc();
      *v477 = 134217984;
      *(v477 + 4) = v559;
      _os_log_impl(&dword_22B116000, v475, v476, "[MOCK GENERATE] Saving Remaining batch at counter %ld", v477, 0xCu);
      MEMORY[0x23188F650](v477, -1, -1);
    }

    v478 = v9[149];
    v479 = v9[148];
    v480 = v9[147];

    (*(v479 + 8))(v478, v480);
    if (qword_2814099B0 != -1)
    {
      swift_once();
    }

    v481 = swift_task_alloc();
    v9[206] = v481;
    *v481 = v9;
    v482 = sub_22B27FBDC;
    goto LABEL_138;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_131;
  }

LABEL_151:
  v492 = v9[204];
  v493 = v9[181];
  v494 = v9[156];
  (*(v9[190] + 8))(v9[191], v9[189]);

  v492(v493, v494);

  v495 = v9[1];

  return v495(0);
}

uint64_t sub_22B2744C8(char a1)
{
  v4 = *v2;
  *(v4 + 1616) = v1;

  v5 = *(v4 + 704);
  if (v1)
  {
    v6 = sub_22B27A0F4;
  }

  else
  {
    *(v4 + 1701) = a1 & 1;
    v6 = sub_22B274608;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22B274608()
{
  v815 = v0;
  v1 = v0;
  v584 = (v0 + 536);
  v583 = *(v0 + 1701);
  v595 = (v0 + 544);
  v621 = *(v0 + 1616);
  v580 = (v0 + 576);
  v581 = (v0 + 560);

  v2 = MEMORY[0x277D84F90];
  *(v0 + 576) = MEMORY[0x277D84F90];
  v585 = v2;
  v813 = v0;
  v582 = (v0 + 552);
  v536 = (v0 + 568);
  while (1)
  {
    v3 = v1[181];
    v4 = v1[180];
    v5 = v1[157];
    v6 = v1[156];
    sub_22B35F63C();
    (*(v5 + 40))(v3, v4, v6);
    sub_22B35F63C();
    LOBYTE(v3) = sub_22B35DDFC();
    v812 = *(v5 + 8);
    v812(v4, v6);
    v588 = v1[199];
    if ((v3 & 1) == 0)
    {
      v1[205] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1[204] = v812;
      v1[203] = v585;
      if (v585 >> 62)
      {
        goto LABEL_163;
      }

      if (!*((v585 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_164:
        v527 = v1[204];
        v528 = v1[181];
        v529 = v1[156];
        (*(v1[190] + 8))(v1[191], v1[189]);

        v527(v528, v529);

        v518 = v1[1];
        v519 = v583;
        goto LABEL_165;
      }

LABEL_138:
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v469 = v1[149];
      v470 = v1[148];
      v471 = v1[147];
      v472 = __swift_project_value_buffer(v471, qword_28140BD10);
      swift_beginAccess();
      (*(v470 + 16))(v469, v472, v471);
      v473 = sub_22B36050C();
      v474 = sub_22B360D0C();
      if (os_log_type_enabled(v473, v474))
      {
        v475 = swift_slowAlloc();
        *v475 = 134217984;
        *(v475 + 4) = v588;
        _os_log_impl(&dword_22B116000, v473, v474, "[MOCK GENERATE] Saving Remaining batch at counter %ld", v475, 0xCu);
        MEMORY[0x23188F650](v475, -1, -1);
      }

      v476 = v1[149];
      v477 = v1[148];
      v478 = v1[147];

      (*(v477 + 8))(v476, v478);
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v479 = swift_task_alloc();
      v1[206] = v479;
      *v479 = v1;
      v480 = sub_22B27FBDC;
      goto LABEL_150;
    }

    *(v1 + 1700) = v583;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v7 = v1[192];
    v8 = v1[184];
    v9 = v1[182];
    v10 = v1[155];
    v11 = v1[148];
    v12 = v1[147];
    v13 = v1[85];
    v14 = __swift_project_value_buffer(v12, qword_28140BD10);
    v1[194] = v14;
    swift_beginAccess();
    v15 = *(v11 + 16);
    v1[195] = v15;
    v1[196] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v684 = v14;
    v683 = v15;
    v15(v10, v14, v12);
    v7(v8, v13, v9);
    v16 = sub_22B36050C();
    v17 = sub_22B360D0C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v1[184];
    v20 = v1[183];
    v21 = v1[182];
    if (v18)
    {
      v732 = v17;
      v22 = v1[180];
      v23 = v1[156];
      v785 = v1[148];
      v793 = v1[147];
      v804 = v1[155];
      v752 = v1[182];
      v24 = swift_slowAlloc();
      v767 = swift_slowAlloc();
      v814[0] = v767;
      *v24 = 134218498;
      *(v24 + 4) = v588;
      *(v24 + 12) = 2080;
      sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v25 = sub_22B36131C();
      v27 = sub_22B1A7B20(v25, v26, v814);

      *(v24 + 14) = v27;
      *(v24 + 22) = 2080;
      sub_22B35F63C();
      v28 = sub_22B36131C();
      v30 = v29;
      v812(v22, v23);
      (*(v20 + 8))(v19, v752);
      v31 = sub_22B1A7B20(v28, v30, v814);
      v1 = v813;

      *(v24 + 24) = v31;
      _os_log_impl(&dword_22B116000, v16, v732, "[MOCK GENERATE] Creating record number %ld Range:%s-%s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v767, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      v32 = *(v785 + 8);
      v32(v804, v793);
    }

    else
    {
      v33 = v1[155];
      v34 = v1[148];
      v35 = v1[147];

      (*(v20 + 8))(v19, v21);
      v32 = *(v34 + 8);
      v32(v33, v35);
    }

    v685 = v32;
    v1[197] = v32;
    if (*(v1 + 1696) == 1 && (*(v1 + 1698) & 1) == 0)
    {
      break;
    }

    v806 = v1[141];
    v107 = v1[140];
    v108 = *(v1 + 79);
    if ((*(v1 + 1697) & 1) == 0)
    {
      sub_22B35F50C();
      v179 = *(v107 + 36);
      sub_22B35F63C();
      if (v108 == 0.0)
      {
        goto LABEL_161;
      }

      v180 = v1[157];
      v181 = v1[156];
      v182 = v1[145];
      v183 = v1[142];
      v184 = v1[79];
      v185 = v182 + v183[11];
      v186 = *(v1[134] + 48);
      v187 = *(v180 + 32);
      v187(v185 + v186, v1[141], v181);
      v188 = (v806 + v179);
      v189 = v181;
      v773 = v187;
      v187(v182 + v183[9], v188, v181);
      v190 = *(v180 + 16);
      *(v182 + v183[10]) = v184;
      v667 = v186;
      (v190)(v182, v185 + v186, v189);
      *v185 = 0;
      v675 = v185;
      *(v185 + 8) = 0;
      v657 = MEMORY[0x277D84F90];
      v808 = v190;
      while (2)
      {
        v197 = *(v1 + 79);
        (v190)(v1[173], v675 + v667, v1[156]);
        sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if (v197 <= 0.0)
        {
          if (sub_22B36076C())
          {
            goto LABEL_51;
          }

LABEL_49:
          v198 = v1[180];
          v199 = v1[173];
          v200 = v813[157];
          v201 = v813[156];
          v717 = v813[138];
          v738 = v199;
          v202 = v813[135];
          v203 = v813[134];
          sub_22B170BE0(v675, v202, &qword_27D8BABD0, &unk_22B366EE0);
          v204 = *(v203 + 48);
          sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
          v205 = sub_22B36101C();
          v207 = v206;
          v812(v202 + v204, v201);
          *v675 = v205;
          *(v675 + 8) = v207 & 1;
          (*(v200 + 40))(v675 + v667, v198, v201);
          v1 = v813;
          v773(v717, v738, v201);
          v208 = 0;
        }

        else
        {
          if ((sub_22B36075C() & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_51:
          v812(v1[173], v1[156]);
          v208 = 1;
        }

        v209 = v1[157];
        v210 = v1[156];
        v211 = v1[138];
        v212 = *(v209 + 56);
        v212(v211, v208, 1, v210);
        v213 = *(v209 + 48);
        if (v213(v211, 1, v210) == 1)
        {
          v283 = sub_22B123284(v1[145], &qword_27D8BABE0, &unk_22B366EF0);
          v284 = MEMORY[0x23188EEB0](v283);
          v610 = v213;
          v617 = v212;
          if (v657[2])
          {
            v676 = v284;
            v668 = *(v1 + 419);
            v534 = *(v1 + 418);
            v533 = *(v1 + 417);
            v564 = v1[169];
            v566 = v1[168];
            v568 = v1[180];
            v553 = v1[156];
            v604 = v1[121];
            v285 = v1[120];
            v286 = v1[117];
            v531 = v1[116];
            v634 = v1[114];
            v287 = v1[113];
            v288 = v1[110];
            v702 = v1[109];
            v641 = v1[107];
            v740 = v1[106];
            v289 = v1[103];
            v597 = v289;
            v719 = v1[102];
            v290 = v813[101];
            v537 = v813[100];
            v540 = v813[99];
            v560 = v813[80];
            v535 = v813[76];
            v692 = v813[75];
            v532 = v813[74];
            v530 = v813[73];
            v808();
            sub_22B35F63C();
            (*(v286 + 104))(v285, v533, v531);
            (*(v288 + 104))(v287, v534, v702);
            v291 = (*(v289 + 104))(v740, v668, v719);
            v669 = MEMORY[0x23188EEB0](v291);
            v813[51] = v530;
            v813[52] = v532;

            MEMORY[0x23188E270](46, 0xE100000000000000);
            MEMORY[0x23188E270](v692, v535);
            MEMORY[0x23188E270](46, 0xE100000000000000);
            sub_22B35DF0C();
            v292 = sub_22B35DECC();
            v294 = v293;
            v295 = v290;
            v1 = v813;
            (*(v537 + 8))(v295, v540);
            MEMORY[0x23188E270](v292, v294);

            sub_22B35FD7C();

            sub_22B35FD6C();

            sub_22B35FC4C();

            sub_22B35FBDC();

            sub_22B35FCEC();
            (v808)(v568, v560, v553);
            sub_22B36039C();
            sub_22B35FBBC();
            (v808)(v568, v564, v553);
            sub_22B36039C();
            sub_22B35FCCC();
            (v808)(v568, v566, v553);
            sub_22B36039C();
            sub_22B35FC6C();
            (*(v286 + 16))(v604, v285, v531);
            sub_22B35FCAC();
            (*(v288 + 16))(v634, v287, v702);
            sub_22B35FD4C();
            (*(v597 + 16))(v641, v740, v719);
            sub_22B35FC2C();

            sub_22B35FD0C();
            sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
            v296 = sub_22B36042C();
            if (v621)
            {
              v499 = v813[190];
              v790 = v813[189];
              v801 = v813[191];
              v811 = v813[181];
              v778 = v813[168];
              v782 = v813[169];
              v749 = v813[120];
              v764 = v813[156];
              v500 = v813[117];
              v710 = v813[113];
              v729 = v813[116];
              v501 = v813[110];
              v696 = v813[109];
              v502 = v813[106];
              v503 = v813[103];
              v504 = v813[102];
              v505 = v813[97];
              v506 = v813[94];
              v507 = v813[93];

              (*(v506 + 8))(v505, v507);
              objc_autoreleasePoolPop(v669);
              (*(v503 + 8))(v502, v504);
              (*(v501 + 8))(v710, v696);
              (*(v500 + 8))(v749, v729);
              v491 = v764;
              v498 = v812;
              v812(v778, v764);
              v812(v782, v764);
              objc_autoreleasePoolPop(v676);
              (*(v499 + 8))(v801, v790);
              goto LABEL_156;
            }

            v298 = v296;
            v299 = v297;
            v720 = v813[168];
            v741 = v813[169];
            v693 = v813[120];
            v703 = v813[156];
            v650 = v813[116];
            v635 = v813[113];
            v642 = v813[117];
            v623 = v813[109];
            v598 = v813[106];
            v605 = v813[110];
            v586 = v813[103];
            v590 = v813[102];
            v573 = v813[93];
            v574 = v813[97];
            v569 = v813[76];
            v571 = v813[94];
            v565 = v813[74];
            v567 = v813[75];
            v561 = v813[73];
            sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
            v300 = objc_opt_self();

            v301 = [v300 defaultRecordZone];
            v302 = [v301 zoneID];

            v303 = sub_22B360CBC();
            sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
            v304 = v303;
            v305 = sub_22B360F4C();
            v306 = [v305 recordID];
            v307 = [v306 zoneID];

            v308 = sub_22B360CBC();
            [v305 setRecordID_];

            v813[10] = MEMORY[0x277CC9318];
            v813[11] = MEMORY[0x277CBBBE0];
            v813[7] = v298;
            v813[8] = v299;
            sub_22B144B30(v298, v299);
            sub_22B360EBC();
            v813[53] = v561;
            v813[54] = v565;

            MEMORY[0x23188E270](46, 0xE100000000000000);
            MEMORY[0x23188E270](v567, v569);
            v309 = v813[53];
            v310 = v813[54];
            v813[15] = MEMORY[0x277D837D0];
            v813[16] = MEMORY[0x277CBBE08];
            v813[12] = v309;
            v813[13] = v310;
            v1 = v813;
            sub_22B360EBC();
            sub_22B12F174(v298, v299);

            (*(v571 + 8))(v574, v573);
            objc_autoreleasePoolPop(v669);
            (*(v586 + 8))(v598, v590);
            (*(v605 + 8))(v635, v623);
            (*(v642 + 8))(v693, v650);
            v812(v720, v703);
            v812(v741, v703);
            v311 = v305;
            v312 = v580;
            MEMORY[0x23188E350]();
            if (*((v1[72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22B360A7C();
              v312 = v580;
            }

            sub_22B360A9C();

            v313 = *v312;

            v621 = 0;
            v585 = v313;
            *v312 = v313;
            v284 = v676;
          }

          v314 = v1[156];
          v315 = v1[144];
          v316 = v1[142];
          v317 = v1[141];
          v318 = v1[140];
          v319 = v1[134];
          v320 = v1[79];
          objc_autoreleasePoolPop(v284);

          sub_22B35F50C();
          v321 = *(v318 + 36);
          sub_22B35F63C();
          v322 = v315 + v316[11];
          v323 = *(v319 + 48);
          v773(v322 + v323, v317, v314);
          v773(v315 + v316[9], &v317[v321], v314);
          *(v315 + v316[10]) = v320;
          v643 = v323;
          v324 = v322 + v323;
          v325 = v808;
          (v808)(v315, v324, v314);
          *v322 = 0;
          v651 = v322;
          *(v322 + 8) = 0;
          v636 = MEMORY[0x277D84F90];
          while (2)
          {
            v331 = *(v1 + 79);
            (v325)(v1[167], v651 + v643, v1[156]);
            if (v331 <= 0.0)
            {
              if (sub_22B36076C())
              {
                goto LABEL_91;
              }

LABEL_89:
              v332 = v1[180];
              v333 = v1[167];
              v334 = v813[157];
              v335 = v813[156];
              v721 = v813[137];
              v742 = v333;
              v336 = v813[135];
              v337 = v813[134];
              sub_22B170BE0(v651, v336, &qword_27D8BABD0, &unk_22B366EE0);
              v338 = *(v337 + 48);
              sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
              v339 = sub_22B36101C();
              v341 = v340;
              v812(v336 + v338, v335);
              *v651 = v339;
              *(v651 + 8) = v341 & 1;
              (*(v334 + 40))(v651 + v643, v332, v335);
              v1 = v813;
              v773(v721, v742, v335);
              v342 = 0;
            }

            else
            {
              if ((sub_22B36075C() & 1) == 0)
              {
                goto LABEL_89;
              }

LABEL_91:
              v812(v1[167], v1[156]);
              v342 = 1;
            }

            v343 = v1[156];
            v344 = v1[137];
            v617(v344, v342, 1, v343);
            if (v610(v344, 1, v343) == 1)
            {
              v412 = sub_22B123284(v1[144], &qword_27D8BABE0, &unk_22B366EF0);
              v413 = MEMORY[0x23188EEB0](v412);
              if (v636[2])
              {
                v694 = v413;
                v679 = *(v1 + 420);
                v547 = *(v1 + 418);
                v544 = *(v1 + 417);
                v578 = v1[163];
                v591 = v1[162];
                v570 = v1[156];
                v599 = v1[180];
                v644 = v1[121];
                v414 = v1[119];
                v415 = v1[117];
                v611 = v415;
                v705 = v1[116];
                v652 = v1[114];
                v744 = v1[112];
                v416 = v1[110];
                v724 = v1[109];
                v660 = v1[107];
                v787 = v1[105];
                v759 = v1[103];
                v774 = v1[102];
                v417 = v1[101];
                v557 = v1[100];
                v562 = v1[99];
                v575 = v1[80];
                v550 = v1[75];
                v554 = v1[76];
                v541 = v1[74];
                v418 = v1[73];
                v808();
                sub_22B35F63C();
                (*(v415 + 104))(v414, v544, v705);
                (*(v416 + 104))(v744, v547, v724);
                v419 = (*(v759 + 104))(v787, v679, v774);
                v680 = MEMORY[0x23188EEB0](v419);
                v1[55] = v418;
                v1[56] = v541;

                MEMORY[0x23188E270](46, 0xE100000000000000);
                MEMORY[0x23188E270](v550, v554);
                MEMORY[0x23188E270](46, 0xE100000000000000);
                sub_22B35DF0C();
                v420 = sub_22B35DECC();
                v422 = v421;
                (*(v557 + 8))(v417, v562);
                MEMORY[0x23188E270](v420, v422);

                sub_22B35FD7C();

                sub_22B35FD6C();

                sub_22B35FC4C();

                sub_22B35FBDC();

                sub_22B35FCEC();
                (v808)(v599, v575, v570);
                sub_22B36039C();
                sub_22B35FBBC();
                (v808)(v599, v578, v570);
                sub_22B36039C();
                sub_22B35FCCC();
                (v808)(v599, v591, v570);
                sub_22B36039C();
                sub_22B35FC6C();
                (*(v611 + 16))(v644, v414, v705);
                sub_22B35FCAC();
                (*(v416 + 16))(v652, v744, v724);
                sub_22B35FD4C();
                (*(v759 + 16))(v660, v787, v774);
                sub_22B35FC2C();

                sub_22B35FD0C();
                sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
                v423 = sub_22B36042C();
                if (v621)
                {
                  v508 = v1[190];
                  v791 = v1[189];
                  v802 = v1[191];
                  v811 = v1[181];
                  v779 = v1[162];
                  v783 = v1[163];
                  v750 = v1[119];
                  v765 = v1[156];
                  v509 = v1[117];
                  v711 = v1[112];
                  v730 = v1[116];
                  v510 = v1[110];
                  v686 = v1[109];
                  v511 = v1[105];
                  v512 = v1[103];
                  v513 = v1[102];
                  v514 = v1[96];
                  v515 = v1[94];
                  v516 = v1[93];

                  (*(v515 + 8))(v514, v516);
                  objc_autoreleasePoolPop(v680);
                  (*(v512 + 8))(v511, v513);
                  (*(v510 + 8))(v711, v686);
                  (*(v509 + 8))(v750, v730);
                  v491 = v765;
                  v498 = v812;
                  v812(v779, v765);
                  v812(v783, v765);
                  objc_autoreleasePoolPop(v694);
                  (*(v508 + 8))(v802, v791);
                  goto LABEL_156;
                }

                v425 = v423;
                v426 = v424;
                v797 = v1[162];
                v809 = v1[163];
                v788 = v1[156];
                v760 = v1[116];
                v775 = v1[119];
                v725 = v1[112];
                v745 = v1[117];
                v672 = v1[110];
                v706 = v1[109];
                v645 = v1[103];
                v653 = v1[102];
                v661 = v1[105];
                logc = v1[96];
                v618 = v1[94];
                v624 = v1[93];
                v606 = v1[75];
                v612 = v1[76];
                v600 = v1[74];
                v592 = v1[73];
                sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
                v427 = objc_opt_self();

                v428 = [v427 defaultRecordZone];
                v429 = [v428 zoneID];

                v430 = sub_22B360CBC();
                sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
                v587 = v430;
                v431 = sub_22B360F4C();
                v432 = [v431 recordID];
                v433 = [v432 zoneID];

                v434 = sub_22B360CBC();
                [v431 setRecordID_];

                v1[20] = MEMORY[0x277CC9318];
                v1[21] = MEMORY[0x277CBBBE0];
                v1[17] = v425;
                v1[18] = v426;
                sub_22B144B30(v425, v426);
                sub_22B360EBC();
                v1[57] = v592;
                v1[58] = v600;

                MEMORY[0x23188E270](46, 0xE100000000000000);
                MEMORY[0x23188E270](v606, v612);
                v435 = v1[57];
                v436 = v1[58];
                v1[25] = MEMORY[0x277D837D0];
                v1[26] = MEMORY[0x277CBBE08];
                v1[22] = v435;
                v1[23] = v436;
                sub_22B360EBC();
                sub_22B12F174(v425, v426);

                (*(v618 + 8))(logc, v624);
                objc_autoreleasePoolPop(v680);
                (*(v645 + 8))(v661, v653);
                (*(v672 + 8))(v725, v706);
                v745[1](v775, v760);
                v812(v797, v788);
                v812(v809, v788);
                v437 = v431;
                v438 = v580;
                MEMORY[0x23188E350]();
                if (*((v1[72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_22B360A7C();
                  v438 = v580;
                }

                sub_22B360A9C();

                v439 = *v438;

                v621 = 0;
                v585 = v439;
                *v438 = v439;
                v413 = v694;
              }

              objc_autoreleasePoolPop(v413);

              v178 = v585;
              goto LABEL_130;
            }

            v677 = *(v1 + 422);
            v670 = *(v1 + 421);
            v345 = *(v1 + 416);
            v346 = v1[180];
            v347 = v1[166];
            v658 = v1[156];
            v722 = *(v1 + 1699);
            v348 = (v773)(v347, v1[137]);
            v743 = MEMORY[0x23188EEB0](v348);
            sub_22B35FB8C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
            v349 = sub_22B35FB5C();
            v350 = *(v349 - 8);
            v351 = (*(v350 + 80) + 32) & ~*(v350 + 80);
            v352 = swift_allocObject();
            *(v352 + 16) = xmmword_22B3634B0;
            (*(v350 + 104))(v352 + v351, v345, v349);
            sub_22B35FB7C();
            (v808)(v346, v347, v658);
            sub_22B36039C();
            sub_22B35FB1C();
            sub_22B35DDCC();
            sub_22B36039C();
            sub_22B35FAFC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
            v353 = sub_22B35E02C();
            v354 = *(v353 - 8);
            v355 = *(v354 + 72);
            v356 = (*(v354 + 80) + 32) & ~*(v354 + 80);
            v357 = swift_allocObject();
            *(v357 + 16) = xmmword_22B3634C0;
            v358 = v357 + v356;
            v359 = *(v354 + 104);
            v359(v358, v670, v353);
            v359(v358 + v355, v677, v353);
            sub_22B310E30(v357);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_22B35DFCC();

            v360 = sub_22B35D9CC();
            if (v361)
            {
              v362 = 1;
            }

            else
            {
              v362 = v360;
            }

            v363 = sub_22B35D97C();
            if (v364)
            {
              v365 = 1;
            }

            else
            {
              v365 = v363;
            }

            v366 = sub_22B26E06C(v362, v365, v722);
            if (v366 >= 0.0)
            {
              v326 = v1[128];
              v327 = v1[125];
              v328 = v1[124];
              (*(v1[90] + 8))(v1[91], v1[89]);
              (*(v327 + 8))(v326, v328);
              v325 = v808;
            }

            else
            {
              v367 = v366;
              v368 = v1[166];
              v369 = v1[165];
              v370 = v1[164];
              v371 = v1[156];
              v683(v1[152], v684, v1[147]);
              (v808)(v369, v368, v371);
              (v808)(v370, v368, v371);
              v372 = sub_22B36050C();
              v373 = sub_22B360D0C();
              if (os_log_type_enabled(v372, v373))
              {
                v374 = v1[180];
                v678 = v373;
                v375 = v1[165];
                v659 = v1[164];
                v376 = v1[156];
                v704 = v1[147];
                v723 = v1[152];
                v377 = swift_slowAlloc();
                v671 = swift_slowAlloc();
                v814[0] = v671;
                *v377 = 136315650;
                sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                v378 = sub_22B36131C();
                v380 = v379;
                v812(v375, v376);
                v381 = sub_22B1A7B20(v378, v380, v814);

                *(v377 + 4) = v381;
                *(v377 + 12) = 2080;
                sub_22B35DDCC();
                v382 = sub_22B36131C();
                v384 = v383;
                v812(v374, v376);
                v812(v659, v376);
                v385 = sub_22B1A7B20(v382, v384, v814);

                *(v377 + 14) = v385;
                *(v377 + 22) = 2048;
                *(v377 + 24) = v367;
                _os_log_impl(&dword_22B116000, v372, v678, "[MOCK GENERATE] Creating reading Range:%s-%s, using dynamic value: %f", v377, 0x20u);
                swift_arrayDestroy();
                v1 = v813;
                MEMORY[0x23188F650](v671, -1, -1);
                MEMORY[0x23188F650](v377, -1, -1);

                v685(v723, v704);
              }

              else
              {
                v386 = v1[165];
                v387 = v1[164];
                v388 = v1[156];
                v389 = v1[152];
                v390 = v1[147];

                v812(v387, v388);
                v812(v386, v388);
                v685(v389, v390);
              }

              if (*(v1 + 1698) == 1)
              {
                v325 = v808;
                if ((v1[87] | 2) == 2)
                {
                  *v584 = 0;
                  MEMORY[0x23188F670](v584, 8);
                  if ((0x20000000000001 * *v584) < 0x1FFFFFFFFFF801)
                  {
                    do
                    {
                      *v536 = 0;
                      MEMORY[0x23188F670](v536, 8);
                    }

                    while ((0x20000000000001 * *v536) < 0x1FFFFFFFFFF801);
                  }

                  v391 = v1[128];
                  v392 = v1[126];
                  v393 = v1[125];
                  v394 = v1[124];
                  sub_22B35FB3C();
                  (*(v393 + 16))(v392, v391, v394);
                  v395 = v636;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v395 = sub_22B32D22C(0, v636[2] + 1, 1, v636);
                  }

                  v397 = v395[2];
                  v396 = v395[3];
                  v636 = v395;
                  v398 = v397 + 1;
                  if (v397 >= v396 >> 1)
                  {
                    v636 = sub_22B32D22C((v396 > 1), v397 + 1, 1, v636);
                  }

                  v399 = v1[128];
                  v400 = v1[126];
                  goto LABEL_117;
                }

                v409 = v1[128];
                v410 = v1[125];
                v411 = v1[124];
                (*(v1[90] + 8))(v1[91], v1[89]);
                (*(v410 + 8))(v409, v411);
              }

              else
              {
                v401 = v1[128];
                v402 = v1[127];
                v403 = v1[125];
                v404 = v1[124];
                sub_22B35FB3C();
                (*(v403 + 16))(v402, v401, v404);
                v405 = v636;
                v325 = v808;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v405 = sub_22B32D22C(0, v636[2] + 1, 1, v636);
                }

                v397 = v405[2];
                v406 = v405[3];
                v636 = v405;
                v398 = v397 + 1;
                if (v397 >= v406 >> 1)
                {
                  v636 = sub_22B32D22C((v406 > 1), v397 + 1, 1, v636);
                }

                v399 = v1[128];
                v400 = v1[127];
LABEL_117:
                v407 = v1[125];
                v408 = v1[124];
                (*(v1[90] + 8))(v1[91], v1[89]);
                (*(v407 + 8))(v399, v408);
                v636[2] = v398;
                (*(v407 + 32))(v636 + ((*(v407 + 80) + 32) & ~*(v407 + 80)) + *(v407 + 72) * v397, v400, v408);
              }
            }

            v329 = v1[166];
            v330 = v1[156];
            objc_autoreleasePoolPop(v743);
            v812(v329, v330);
            continue;
          }
        }

        v701 = *(v1 + 422);
        v690 = *(v1 + 421);
        v214 = *(v1 + 416);
        v215 = v1[180];
        v216 = v1[172];
        v217 = v1[156];
        v218 = (v773)(v216, v1[138], v217);
        v758 = MEMORY[0x23188EEB0](v218);
        sub_22B35FB8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
        v219 = sub_22B35FB5C();
        v220 = *(v219 - 8);
        v221 = (*(v220 + 80) + 32) & ~*(v220 + 80);
        v222 = swift_allocObject();
        *(v222 + 16) = xmmword_22B3634B0;
        (*(v220 + 104))(v222 + v221, v214, v219);
        sub_22B35FB7C();
        (v808)(v215, v216, v217);
        sub_22B36039C();
        sub_22B35FB1C();
        sub_22B35DDCC();
        sub_22B36039C();
        sub_22B35FAFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
        v223 = sub_22B35E02C();
        v224 = *(v223 - 8);
        v225 = *(v224 + 72);
        v226 = (*(v224 + 80) + 32) & ~*(v224 + 80);
        v227 = swift_allocObject();
        *(v227 + 16) = xmmword_22B3634C0;
        v228 = v227 + v226;
        v229 = *(v224 + 104);
        v229(v228, v690, v223);
        v229(v228 + v225, v701, v223);
        sub_22B310E30(v227);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_22B35DFCC();

        v230 = sub_22B35D9CC();
        if (v231)
        {
          v232 = 1;
        }

        else
        {
          v232 = v230;
        }

        v233 = sub_22B35D97C();
        if (v234)
        {
          v235 = 1;
        }

        else
        {
          v235 = v233;
        }

        v236 = sub_22B26E06C(v232, v235, 0);
        if (v236 < 0.0)
        {
          v1 = v813;
          v191 = v813[131];
          v192 = v813[125];
          v193 = v813[124];
          (*(v813[90] + 8))(v813[92], v813[89]);
          (*(v192 + 8))(v191, v193);
          v190 = v808;
          v194 = v758;
        }

        else
        {
          v237 = v236;
          v238 = v813[172];
          v239 = v813[171];
          v240 = v813[170];
          v241 = v813[156];
          v683(v813[153], v684, v813[147]);
          (v808)(v239, v238, v241);
          (v808)(v240, v238, v241);
          v242 = sub_22B36050C();
          v243 = sub_22B360D0C();
          v1 = v813;
          if (os_log_type_enabled(v242, v243))
          {
            v244 = v813[180];
            v691 = v243;
            v245 = v813[171];
            v616 = v813[170];
            v246 = v813[156];
            v718 = v813[147];
            v739 = v813[153];
            v247 = swift_slowAlloc();
            logb = swift_slowAlloc();
            v814[0] = logb;
            *v247 = 136315650;
            sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v248 = sub_22B36131C();
            v250 = v249;
            v812(v245, v246);
            v251 = sub_22B1A7B20(v248, v250, v814);

            *(v247 + 4) = v251;
            *(v247 + 12) = 2080;
            sub_22B35DDCC();
            v252 = sub_22B36131C();
            v254 = v253;
            v812(v244, v246);
            v812(v616, v246);
            v255 = sub_22B1A7B20(v252, v254, v814);

            *(v247 + 14) = v255;
            *(v247 + 22) = 2048;
            *(v247 + 24) = v237;
            _os_log_impl(&dword_22B116000, v242, v691, "[MOCK GENERATE] Creating reading Range:%s-%s, using dynamic value: %f", v247, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](logb, -1, -1);
            v256 = v247;
            v1 = v813;
            MEMORY[0x23188F650](v256, -1, -1);

            v685(v739, v718);
          }

          else
          {
            v257 = v813[171];
            v258 = v813[170];
            v259 = v813[156];
            v260 = v813[153];
            v261 = v813[147];

            v812(v258, v259);
            v812(v257, v259);
            v685(v260, v261);
          }

          v194 = v758;
          if (*(v1 + 1698) == 1)
          {
            v190 = v808;
            if ((v1[87] - 1) < 2)
            {
              *v581 = 0;
              MEMORY[0x23188F670](v581, 8);
              if ((0x20000000000001 * *v581) < 0x1FFFFFFFFFF801)
              {
                do
                {
                  *v582 = 0;
                  MEMORY[0x23188F670](v582, 8);
                }

                while ((0x20000000000001 * *v582) < 0x1FFFFFFFFFF801);
              }

              v262 = v1[131];
              v263 = v1[129];
              v264 = v1[125];
              v265 = v1[124];
              sub_22B35FB3C();
              (*(v264 + 16))(v263, v262, v265);
              v266 = v657;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v266 = sub_22B32D22C(0, v657[2] + 1, 1, v657);
              }

              v268 = v266[2];
              v267 = v266[3];
              v657 = v266;
              v269 = v268 + 1;
              if (v268 >= v267 >> 1)
              {
                v657 = sub_22B32D22C((v267 > 1), v268 + 1, 1, v657);
              }

              v270 = v1[131];
              v271 = v1[129];
              goto LABEL_77;
            }

            v280 = v1[131];
            v281 = v1[125];
            v282 = v1[124];
            (*(v1[90] + 8))(v1[92], v1[89]);
            (*(v281 + 8))(v280, v282);
          }

          else
          {
            v272 = v1[131];
            v273 = v1[130];
            v274 = v1[125];
            v275 = v1[124];
            sub_22B35FB3C();
            (*(v274 + 16))(v273, v272, v275);
            v276 = v657;
            v190 = v808;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v276 = sub_22B32D22C(0, v657[2] + 1, 1, v657);
            }

            v268 = v276[2];
            v277 = v276[3];
            v657 = v276;
            v269 = v268 + 1;
            if (v268 >= v277 >> 1)
            {
              v657 = sub_22B32D22C((v277 > 1), v268 + 1, 1, v657);
            }

            v270 = v1[131];
            v271 = v1[130];
LABEL_77:
            v278 = v1[125];
            v279 = v1[124];
            (*(v1[90] + 8))(v1[92], v1[89]);
            (*(v278 + 8))(v270, v279);
            v657[2] = v269;
            (*(v278 + 32))(v657 + ((*(v278 + 80) + 32) & ~*(v278 + 80)) + *(v278 + 72) * v268, v271, v279);
          }
        }

        v195 = v1[172];
        v196 = v1[156];
        objc_autoreleasePoolPop(v194);
        v812(v195, v196);
        continue;
      }
    }

    *v595 = MEMORY[0x277D84F90];
    sub_22B35F50C();
    v109 = *(v107 + 36);
    sub_22B35F63C();
    if (v108 == 0.0)
    {
      goto LABEL_162;
    }

    v110 = v1[157];
    v111 = v1[156];
    v112 = v1[143];
    v113 = v1[142];
    v114 = v1[79];
    v115 = v112 + v113[11];
    v116 = *(v1[134] + 48);
    v117 = *(v110 + 32);
    v117(v115 + v116, v1[141], v111);
    v795 = v117;
    v117(v112 + v113[9], (v806 + v109), v111);
    v118 = *(v110 + 16);
    *(v112 + v113[10]) = v114;
    v770 = v118;
    v118(v112, v115 + v116, v111);
    *v115 = 0;
    *(v115 + 8) = 0;
    v698 = v116;
    while (1)
    {
      v119 = *(v1 + 79);
      v770(v1[161], v115 + v116, v1[156]);
      sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (v119 <= 0.0)
      {
        if ((sub_22B36076C() & 1) == 0)
        {
LABEL_31:
          v120 = v1[180];
          v121 = v1[157];
          v122 = v1[156];
          v714 = v1[136];
          v735 = v1[161];
          v123 = v112;
          v124 = v1[135];
          v125 = v1[134];
          sub_22B170BE0(v115, v124, &qword_27D8BABD0, &unk_22B366EE0);
          v126 = *(v125 + 48);
          sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
          v127 = sub_22B36101C();
          v129 = v128;
          v130 = v124 + v126;
          v112 = v123;
          v116 = v698;
          v812(v130, v122);
          *v115 = v127;
          v131 = v129 & 1;
          v1 = v813;
          *(v115 + 8) = v131;
          (*(v121 + 40))(v115 + v698, v120, v122);
          v795(v714, v735, v122);
          v132 = 0;
          goto LABEL_34;
        }
      }

      else if ((sub_22B36075C() & 1) == 0)
      {
        goto LABEL_31;
      }

      v812(v1[161], v1[156]);
      v132 = 1;
LABEL_34:
      v133 = v1[157];
      v134 = v1[156];
      v135 = v1[136];
      (*(v133 + 56))(v135, v132, 1, v134);
      if ((*(v133 + 48))(v135, 1, v134) == 1)
      {
        break;
      }

      v136 = v1[191];
      v137 = v1[160];
      v138 = v1[88];
      v139 = *(v1 + 1696);
      v140 = *(v1 + 79);
      v141 = (v795)(v137, v1[136], v1[156]);
      v142 = MEMORY[0x23188EEB0](v141);
      sub_22B26B068(v137, v139, v136, v140, v138, v595);
      if (v621)
      {

        objc_autoreleasePoolPop(v142);
        return;
      }

      v143 = v1[160];
      v144 = v1[156];
      objc_autoreleasePoolPop(v142);
      v812(v143, v144);
      v621 = 0;
    }

    v810 = *(v1 + 423);
    v681 = *(v1 + 418);
    v545 = *(v1 + 417);
    v440 = v1[181];
    v619 = v1[180];
    v441 = v1[159];
    v576 = v441;
    v593 = v1[158];
    v442 = v1[156];
    v646 = v1[121];
    v443 = v1[118];
    v444 = v1[117];
    v707 = v1[116];
    v654 = v1[114];
    v746 = v1[111];
    v445 = v1[110];
    v726 = v1[109];
    v662 = v1[107];
    v798 = v1[104];
    v446 = v1[103];
    v761 = v1[102];
    v555 = v1[101];
    v558 = v1[100];
    v563 = v1[99];
    v579 = v1[80];
    v548 = v1[75];
    v551 = v1[76];
    v538 = v1[73];
    v542 = v1[74];
    v447 = sub_22B123284(v1[143], &qword_27D8BABE0, &unk_22B366EF0);
    v695 = MEMORY[0x23188EEB0](v447);
    v770(v441, v440, v442);
    sub_22B35F63C();
    (*(v444 + 104))(v443, v545, v707);
    (*(v445 + 104))(v746, v681, v726);
    v448 = (*(v446 + 104))(v798, v810, v761);
    v682 = MEMORY[0x23188EEB0](v448);
    v1[65] = v538;
    v1[66] = v542;

    MEMORY[0x23188E270](46, 0xE100000000000000);
    MEMORY[0x23188E270](v548, v551);
    MEMORY[0x23188E270](46, 0xE100000000000000);
    sub_22B35DF0C();
    v449 = sub_22B35DECC();
    v451 = v450;
    (*(v558 + 8))(v555, v563);
    MEMORY[0x23188E270](v449, v451);

    sub_22B35FD7C();

    sub_22B35FD6C();

    sub_22B35FC4C();

    sub_22B35FBDC();

    sub_22B35FCEC();
    v770(v619, v579, v442);
    sub_22B36039C();
    sub_22B35FBBC();
    v770(v619, v576, v442);
    sub_22B36039C();
    sub_22B35FCCC();
    v770(v619, v593, v442);
    sub_22B36039C();
    sub_22B35FC6C();
    (*(v444 + 16))(v646, v443, v707);
    sub_22B35FCAC();
    (*(v445 + 16))(v654, v746, v726);
    sub_22B35FD4C();
    (*(v446 + 16))(v662, v798, v761);
    sub_22B35FC2C();

    sub_22B35FD0C();
    sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
    v452 = sub_22B36042C();
    if (v621)
    {
      v520 = v1[190];
      v792 = v1[191];
      v803 = v1[181];
      v780 = v1[159];
      v784 = v1[189];
      v491 = v1[156];
      v751 = v1[118];
      v766 = v1[158];
      v521 = v1[117];
      v712 = v1[111];
      v731 = v1[116];
      v522 = v1[110];
      v523 = v1[109];
      v524 = v1[104];
      v525 = v1[103];
      v526 = v1[102];
      (*(v1[94] + 8))(v1[95], v1[93]);

      objc_autoreleasePoolPop(v682);
      (*(v525 + 8))(v524, v526);
      (*(v522 + 8))(v712, v523);
      (*(v521 + 8))(v751, v731);
      v498 = v812;
      v812(v766, v491);
      v812(v780, v491);
      objc_autoreleasePoolPop(v695);
      (*(v520 + 8))(v792, v784);

      v517 = v803;
      goto LABEL_157;
    }

    v454 = v452;
    v455 = v453;
    v789 = v1[158];
    v799 = v1[159];
    v762 = v1[118];
    v776 = v1[156];
    v727 = v1[117];
    v747 = v1[116];
    v708 = v1[111];
    v663 = v1[110];
    v673 = v1[109];
    v655 = v1[104];
    v637 = v1[103];
    v647 = v1[102];
    logd = v1[95];
    v620 = v1[94];
    v625 = v1[93];
    v607 = v1[75];
    v613 = v1[76];
    v601 = v1[74];
    v594 = v1[73];
    sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
    v456 = objc_opt_self();

    v457 = [v456 defaultRecordZone];
    v458 = [v457 zoneID];

    v459 = sub_22B360CBC();
    sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
    v585 = v459;
    v460 = sub_22B360F4C();
    v461 = [v460 recordID];
    v462 = [v461 zoneID];

    v463 = sub_22B360CBC();
    [v460 setRecordID_];

    v1[40] = MEMORY[0x277CC9318];
    v1[41] = MEMORY[0x277CBBBE0];
    v1[37] = v454;
    v1[38] = v455;
    sub_22B144B30(v454, v455);
    sub_22B360EBC();
    v1[63] = v594;
    v1[64] = v601;

    MEMORY[0x23188E270](46, 0xE100000000000000);
    MEMORY[0x23188E270](v607, v613);
    v464 = v1[63];
    v465 = v1[64];
    v1[5] = MEMORY[0x277D837D0];
    v1[6] = MEMORY[0x277CBBE08];
    v1[2] = v464;
    v1[3] = v465;
    sub_22B360EBC();
    sub_22B12F174(v454, v455);

    (*(v620 + 8))(logd, v625);
    objc_autoreleasePoolPop(v682);
    (*(v637 + 8))(v655, v647);
    (*(v663 + 8))(v708, v673);
    (*(v727 + 8))(v762, v747);
    v812(v789, v776);
    v812(v799, v776);
    v466 = v460;
    v467 = v580;
    MEMORY[0x23188E350]();
    if (*((v1[72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
      v467 = v580;
    }

    sub_22B360A9C();

    v178 = *v467;
    objc_autoreleasePoolPop(v695);
LABEL_129:

    v621 = 0;
LABEL_130:
    v1[198] = v178;
    v468 = v588 + 1;
    v1[199] = v588 + 1;
    if (__OFADD__(v588, 1))
    {
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      if (!sub_22B36109C())
      {
        goto LABEL_164;
      }

      goto LABEL_138;
    }

    v585 = v178;
    if (__ROR8__(0x8F5C28F5C28F5C29 * v468 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v683(v1[151], v684, v1[147]);
      v481 = sub_22B36050C();
      v482 = sub_22B360D0C();
      if (os_log_type_enabled(v481, v482))
      {
        v484 = swift_slowAlloc();
        *v484 = 134217984;
        *(v484 + 4) = v468;
        _os_log_impl(&dword_22B116000, v481, v482, "[MOCK GENERATE] Saving batch at counter %ld", v484, 0xCu);
        MEMORY[0x23188F650](v484, -1, -1);
      }

      v485 = v1[151];
      v486 = v1[148];
      v487 = v1[147];

      v1[200] = (v486 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v685(v485, v487);
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v479 = swift_task_alloc();
      v1[201] = v479;
      *v479 = v1;
      v480 = sub_22B2744C8;
LABEL_150:
      v479[1] = v480;
      v488 = v1[86];
      v489 = v1[85];

      sub_22B30C418(v585, v489, v488);
      return;
    }
  }

  v36 = v1[141];
  v37 = v1[140];
  v38 = *(v1 + 79);
  sub_22B35F50C();
  v39 = *(v37 + 36);
  sub_22B35F63C();
  if (v38 == 0.0)
  {
    goto LABEL_160;
  }

  v40 = v1[157];
  v805 = v1[156];
  v41 = v1[146];
  v42 = v1[142];
  v43 = v1[79];
  v44 = v41 + v42[11];
  v45 = *(v1[134] + 48);
  v46 = *(v40 + 32);
  (v46)(&v45[v44], v1[141]);
  v664 = v46;
  v46(v41 + v42[9], v36 + v39, v805);
  v47 = *(v40 + 16);
  *(v41 + v42[10]) = v43;
  v687 = v45;
  v794 = v47;
  v47(v41, &v45[v44], v805);
  *v44 = 0;
  v697 = v44;
  *(v44 + 8) = 0;
  v48 = MEMORY[0x277D84F90];
  while (2)
  {
    v786 = v48;
    v49 = *(v1 + 79);
    v794(v1[179], &v687[v697], v1[156]);
    sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (v49 <= 0.0)
    {
      if (sub_22B36076C())
      {
        goto LABEL_16;
      }

LABEL_14:
      v50 = v1[180];
      v51 = v1[157];
      v52 = v1[156];
      v753 = v1[139];
      v768 = v1[179];
      v53 = v1[135];
      v54 = v1[134];
      sub_22B170BE0(v697, v53, &qword_27D8BABD0, &unk_22B366EE0);
      v55 = *(v54 + 48);
      sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
      v1 = v813;
      v56 = sub_22B36101C();
      v58 = v57;
      v812(v53 + v55, v52);
      *v697 = v56;
      *(v697 + 8) = v58 & 1;
      (*(v51 + 40))(&v687[v697], v50, v52);
      v664(v753, v768, v52);
      v59 = 0;
    }

    else
    {
      if ((sub_22B36075C() & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_16:
      v812(v1[179], v1[156]);
      v59 = 1;
    }

    v60 = v1[157];
    v61 = v1[156];
    v62 = v1[139];
    (*(v60 + 56))(v62, v59, 1, v61);
    if ((*(v60 + 48))(v62, 1, v61) != 1)
    {
      v63 = v1[178];
      v64 = v1[177];
      v65 = v1[176];
      v66 = v1[156];
      v67 = v1[154];
      v68 = v1[147];
      v69 = (v664)(v63, v1[139], v66);
      v769 = MEMORY[0x23188EEB0](v69);
      v683(v67, v684, v68);
      v794(v64, v63, v66);
      v794(v65, v63, v66);
      v70 = sub_22B36050C();
      v71 = sub_22B360D0C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = v1[180];
        v638 = v71;
        v73 = v1[177];
        log = v70;
        v74 = v1[176];
        v75 = v1[156];
        v733 = v1[147];
        v754 = v1[154];
        v76 = swift_slowAlloc();
        v631 = swift_slowAlloc();
        v814[0] = v631;
        *v76 = 136315650;
        sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v77 = sub_22B36131C();
        v79 = v78;
        v812(v73, v75);
        v80 = v77;
        v1 = v813;
        v81 = sub_22B1A7B20(v80, v79, v814);

        *(v76 + 4) = v81;
        *(v76 + 12) = 2080;
        sub_22B35DDCC();
        v82 = sub_22B36131C();
        v84 = v83;
        v812(v72, v75);
        v812(v74, v75);
        v85 = sub_22B1A7B20(v82, v84, v814);

        *(v76 + 14) = v85;
        *(v76 + 22) = 1024;
        *(v76 + 24) = 1;
        _os_log_impl(&dword_22B116000, log, v638, "[MOCK GENERATE] Creating reading Range:%s-%s, using fixedValues: %{BOOL}d", v76, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v631, -1, -1);
        MEMORY[0x23188F650](v76, -1, -1);

        v685(v754, v733);
      }

      else
      {
        v86 = v1[177];
        v87 = v1[176];
        v88 = v1[156];
        v89 = v1[154];
        v90 = v1[147];

        v812(v87, v88);
        v812(v86, v88);
        v685(v89, v90);
      }

      v91 = *(v1 + 416);
      v92 = v1[180];
      v93 = v1[178];
      v94 = v1[133];
      v755 = v1[132];
      v95 = v1[125];
      v713 = v1[156];
      v734 = v1[124];
      sub_22B35FB8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
      v96 = sub_22B35FB5C();
      v97 = *(v96 - 8);
      v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_22B3634B0;
      (*(v97 + 104))(v99 + v98, v91, v96);
      sub_22B35FB7C();
      v794(v92, v93, v713);
      sub_22B36039C();
      sub_22B35FB1C();
      sub_22B35DDCC();
      sub_22B36039C();
      sub_22B35FAFC();
      sub_22B35FB3C();
      (*(v95 + 16))(v755, v94, v734);
      v48 = v786;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_22B32D22C(0, v786[2] + 1, 1, v786);
      }

      v101 = v48[2];
      v100 = v48[3];
      v1 = v813;
      if (v101 >= v100 >> 1)
      {
        v48 = sub_22B32D22C((v100 > 1), v101 + 1, 1, v48);
      }

      v102 = v813[178];
      v103 = v813[156];
      v104 = v813[132];
      v105 = v813[125];
      v106 = v813[124];
      (*(v105 + 8))(v813[133], v106);
      v48[2] = v101 + 1;
      (*(v105 + 32))(v48 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v101, v104, v106);
      objc_autoreleasePoolPop(v769);
      v812(v102, v103);
      continue;
    }

    break;
  }

  v145 = (v1 + 210);
  v665 = *(v1 + 418);
  v546 = *(v1 + 417);
  v146 = v1[181];
  v614 = v1[180];
  v147 = v1[175];
  v577 = v1[174];
  v688 = v1[156];
  v148 = v1[146];
  v149 = v1[122];
  v632 = v1[121];
  v150 = v1[117];
  v602 = v149;
  v151 = v1[116];
  v736 = v1[115];
  v639 = v1[114];
  v152 = v1[110];
  v608 = v152;
  v699 = v1[109];
  v771 = v1[108];
  v648 = v1[107];
  v715 = v1[103];
  v756 = v1[102];
  v552 = v1[101];
  v556 = v1[100];
  v559 = v1[99];
  if (v1[87])
  {
    v145 = v1 + 419;
  }

  v153 = *v145;
  v572 = v813[80];
  v549 = v813[76];
  v543 = v813[75];
  v154 = v813[74];
  v539 = v813[73];
  v155 = sub_22B123284(v148, &qword_27D8BABE0, &unk_22B366EF0);
  v674 = MEMORY[0x23188EEB0](v155);
  v794(v147, v146, v688);
  sub_22B35F63C();
  (*(v150 + 104))(v149, v546, v151);
  (*(v152 + 104))(v736, v665, v699);
  v156 = v153;
  v1 = v813;
  v157 = (*(v715 + 104))(v771, v156, v756);
  v666 = MEMORY[0x23188EEB0](v157);
  v813[61] = v539;
  v813[62] = v154;

  MEMORY[0x23188E270](46, 0xE100000000000000);
  MEMORY[0x23188E270](v543, v549);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35DF0C();
  v158 = sub_22B35DECC();
  v160 = v159;
  (*(v556 + 8))(v552, v559);
  MEMORY[0x23188E270](v158, v160);

  sub_22B35FD7C();

  sub_22B35FD6C();

  sub_22B35FC4C();

  sub_22B35FBDC();

  sub_22B35FCEC();
  v794(v614, v572, v688);
  sub_22B36039C();
  sub_22B35FBBC();
  v794(v614, v147, v688);
  sub_22B36039C();
  sub_22B35FCCC();
  v794(v614, v577, v688);
  sub_22B36039C();
  sub_22B35FC6C();
  (*(v150 + 16))(v632, v602, v151);
  sub_22B35FCAC();
  (*(v608 + 16))(v639, v736, v699);
  sub_22B35FD4C();
  (*(v715 + 16))(v648, v771, v756);
  sub_22B35FC2C();

  sub_22B35FD0C();
  sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
  v161 = sub_22B36042C();
  if (!v621)
  {
    v163 = v161;
    v164 = v162;
    v796 = v813[174];
    v807 = v813[175];
    v757 = v813[122];
    v772 = v813[156];
    v716 = v813[117];
    v737 = v813[116];
    v700 = v813[115];
    v656 = v813[110];
    v689 = v813[109];
    v649 = v813[108];
    v633 = v813[103];
    v640 = v813[102];
    loga = v813[98];
    v615 = v813[94];
    v622 = v813[93];
    v603 = v813[75];
    v609 = v813[76];
    v596 = v813[74];
    v589 = v813[73];
    sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
    v165 = objc_opt_self();

    v166 = [v165 defaultRecordZone];
    v167 = [v166 zoneID];

    v168 = sub_22B360CBC();
    sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
    v169 = v168;
    v170 = sub_22B360F4C();
    v171 = [v170 recordID];
    v172 = [v171 zoneID];

    v173 = sub_22B360CBC();
    [v170 setRecordID_];

    v813[35] = MEMORY[0x277CC9318];
    v813[36] = MEMORY[0x277CBBBE0];
    v813[32] = v163;
    v813[33] = v164;
    sub_22B144B30(v163, v164);
    sub_22B360EBC();
    v813[59] = v589;
    v813[60] = v596;

    MEMORY[0x23188E270](46, 0xE100000000000000);
    MEMORY[0x23188E270](v603, v609);
    v174 = v813[59];
    v175 = v813[60];
    v813[30] = MEMORY[0x277D837D0];
    v813[31] = MEMORY[0x277CBBE08];
    v813[27] = v174;
    v813[28] = v175;
    sub_22B360EBC();
    sub_22B12F174(v163, v164);

    v1 = v813;
    (*(v615 + 8))(loga, v622);
    objc_autoreleasePoolPop(v666);
    (*(v633 + 8))(v649, v640);
    (*(v656 + 8))(v700, v689);
    (*(v716 + 8))(v757, v737);
    v812(v796, v772);
    v812(v807, v772);
    v176 = v170;
    v177 = v580;
    MEMORY[0x23188E350]();
    if (*((v1[72] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[72] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
      v177 = v580;
    }

    sub_22B360A9C();

    v178 = *v177;
    objc_autoreleasePoolPop(v674);
    goto LABEL_129;
  }

  v490 = v813[190];
  v800 = v813[191];
  v811 = v813[181];
  v777 = v813[175];
  v781 = v813[189];
  v491 = v813[156];
  v748 = v813[122];
  v763 = v813[174];
  v492 = v813[117];
  v709 = v813[115];
  v728 = v813[116];
  v493 = v813[110];
  v494 = v813[109];
  v495 = v813[108];
  v496 = v813[103];
  v497 = v813[102];
  (*(v813[94] + 8))(v813[98], v813[93]);

  objc_autoreleasePoolPop(v666);
  (*(v496 + 8))(v495, v497);
  (*(v493 + 8))(v709, v494);
  (*(v492 + 8))(v748, v728);
  v498 = v812;
  v812(v763, v491);
  v812(v777, v491);
  objc_autoreleasePoolPop(v674);
  (*(v490 + 8))(v800, v781);
LABEL_156:

  v517 = v811;
LABEL_157:
  v498(v517, v491);

  v518 = v1[1];
  v519 = 0;
LABEL_165:

  v518(v519);
}

uint64_t sub_22B27A0F4()
{
  v731 = v0;
  v1 = v0;
  (*(v0 + 1560))(*(v0 + 1200), *(v0 + 1552), *(v0 + 1176));
  v2 = sub_22B36050C();
  v3 = sub_22B360D0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1592);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22B116000, v2, v3, "[MOCK GENERATE] Error Sharing batch at counter %ld", v5, 0xCu);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v544 = (v1 + 536);
  v553 = (v1 + 544);
  v539 = (v1 + 560);
  v540 = (v1 + 552);
  v487 = (v1 + 568);
  v538 = (v1 + 576);
  v6 = *(v1 + 1576);
  v7 = *(v1 + 1200);
  v8 = *(v1 + 1176);

  v6(v7, v8);
  v541 = *(v1 + 1700);

  v9 = MEMORY[0x277D84F90];
  *(v1 + 576) = MEMORY[0x277D84F90];
  v542 = v9;
  v729 = v1;
  while (1)
  {
    v10 = *(v1 + 1448);
    v11 = *(v1 + 1440);
    v12 = *(v1 + 1256);
    v13 = *(v1 + 1248);
    sub_22B35F63C();
    (*(v12 + 40))(v10, v11, v13);
    sub_22B35F63C();
    LOBYTE(v10) = sub_22B35DDFC();
    v728 = *(v12 + 8);
    v728(v11, v13);
    v545 = *(v1 + 1592);
    if ((v10 & 1) == 0)
    {
      break;
    }

    *(v1 + 1700) = v541;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = *(v1 + 1536);
    v15 = *(v1 + 1472);
    v16 = *(v1 + 1456);
    v17 = *(v1 + 1240);
    v18 = *(v1 + 1184);
    v19 = *(v1 + 1176);
    v20 = *(v1 + 680);
    v21 = __swift_project_value_buffer(v19, qword_28140BD10);
    *(v1 + 1552) = v21;
    swift_beginAccess();
    v22 = *(v18 + 16);
    *(v1 + 1560) = v22;
    *(v1 + 1568) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v635 = v21;
    v634 = v22;
    v22(v17, v21, v19);
    v14(v15, v20, v16);
    v23 = sub_22B36050C();
    v24 = sub_22B360D0C();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v1 + 1472);
    v27 = *(v1 + 1464);
    v28 = *(v1 + 1456);
    if (v25)
    {
      v671 = v24;
      v29 = *(v1 + 1440);
      v30 = *(v1 + 1248);
      v709 = *(v1 + 1184);
      v714 = *(v1 + 1176);
      v721 = *(v1 + 1240);
      v688 = *(v1 + 1456);
      v31 = swift_slowAlloc();
      v699 = swift_slowAlloc();
      v730[0] = v699;
      *v31 = 134218498;
      *(v31 + 4) = v545;
      *(v31 + 12) = 2080;
      sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v32 = sub_22B36131C();
      v34 = sub_22B1A7B20(v32, v33, v730);

      *(v31 + 14) = v34;
      *(v31 + 22) = 2080;
      sub_22B35F63C();
      v35 = sub_22B36131C();
      v37 = v36;
      v728(v29, v30);
      (*(v27 + 8))(v26, v688);
      v38 = sub_22B1A7B20(v35, v37, v730);
      v1 = v729;

      *(v31 + 24) = v38;
      _os_log_impl(&dword_22B116000, v23, v671, "[MOCK GENERATE] Creating record number %ld Range:%s-%s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v699, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);

      v39 = *(v709 + 8);
      v39(v721, v714);
    }

    else
    {
      v40 = *(v1 + 1240);
      v41 = *(v1 + 1184);
      v42 = *(v1 + 1176);

      (*(v27 + 8))(v26, v28);
      v39 = *(v41 + 8);
      v39(v40, v42);
    }

    v636 = v39;
    *(v1 + 1576) = v39;
    if (*(v1 + 1696) == 1 && (*(v1 + 1698) & 1) == 0)
    {
      v43 = *(v1 + 1128);
      v44 = *(v1 + 1120);
      v45 = *(v1 + 632);
      sub_22B35F50C();
      v46 = *(v44 + 36);
      sub_22B35F63C();
      if (v45 == 0.0)
      {
        goto LABEL_147;
      }

      v47 = *(v1 + 1256);
      v722 = *(v1 + 1248);
      v48 = *(v1 + 1168);
      v49 = *(v1 + 1136);
      v50 = *(v1 + 632);
      v51 = v48 + v49[11];
      v52 = *(*(v1 + 1072) + 48);
      v53 = *(v47 + 32);
      (v53)(&v52[v51], *(v1 + 1128));
      v615 = v53;
      v53(v48 + v49[9], v43 + v46, v722);
      v54 = *(v47 + 16);
      *(v48 + v49[10]) = v50;
      v637 = v52;
      v715 = v54;
      v54(v48, &v52[v51], v722);
      *v51 = 0;
      v645 = v51;
      *(v51 + 8) = 0;
      v55 = MEMORY[0x277D84F90];
      while (2)
      {
        v710 = v55;
        v56 = *(v1 + 632);
        v715(*(v1 + 1432), &v637[v645], *(v1 + 1248));
        sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if (v56 <= 0.0)
        {
          if (sub_22B36076C())
          {
            goto LABEL_18;
          }

LABEL_16:
          v57 = *(v1 + 1440);
          v58 = *(v1 + 1256);
          v59 = *(v1 + 1248);
          v689 = *(v1 + 1112);
          v700 = *(v1 + 1432);
          v60 = *(v1 + 1080);
          v61 = *(v1 + 1072);
          sub_22B170BE0(v645, v60, &qword_27D8BABD0, &unk_22B366EE0);
          v62 = *(v61 + 48);
          sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
          v1 = v729;
          v63 = sub_22B36101C();
          v65 = v64;
          v728(v60 + v62, v59);
          *v645 = v63;
          *(v645 + 8) = v65 & 1;
          (*(v58 + 40))(&v637[v645], v57, v59);
          v615(v689, v700, v59);
          v66 = 0;
        }

        else
        {
          if ((sub_22B36075C() & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_18:
          v728(*(v1 + 1432), *(v1 + 1248));
          v66 = 1;
        }

        v67 = *(v1 + 1256);
        v68 = *(v1 + 1248);
        v69 = *(v1 + 1112);
        (*(v67 + 56))(v69, v66, 1, v68);
        if ((*(v67 + 48))(v69, 1, v68) == 1)
        {
          v150 = (v1 + 1680);
          v624 = *(v1 + 1672);
          v501 = *(v1 + 1668);
          v151 = *(v1 + 1448);
          v152 = *(v1 + 1400);
          v546 = *(v1 + 1392);
          v153 = *(v1 + 1248);
          v577 = *(v1 + 1440);
          v154 = *(v1 + 976);
          v590 = *(v1 + 968);
          v155 = *(v1 + 936);
          v570 = v154;
          v156 = *(v1 + 928);
          v560 = v156;
          v675 = *(v1 + 920);
          v597 = *(v1 + 912);
          v157 = *(v1 + 880);
          v646 = *(v1 + 872);
          v703 = *(v1 + 864);
          v606 = *(v1 + 856);
          v657 = *(v1 + 824);
          v692 = *(v1 + 816);
          v508 = *(v1 + 808);
          v512 = *(v1 + 800);
          v516 = *(v1 + 792);
          if (*(v1 + 696))
          {
            v150 = (v1 + 1676);
          }

          v489 = *v150;
          v531 = *(v1 + 640);
          v504 = *(v1 + 608);
          v494 = *(v1 + 592);
          v498 = *(v1 + 600);
          v491 = *(v1 + 584);
          v158 = sub_22B123284(*(v1 + 1168), &qword_27D8BABE0, &unk_22B366EF0);
          v638 = MEMORY[0x23188EEB0](v158);
          v715(v152, v151, v153);
          sub_22B35F63C();
          (*(v155 + 104))(v154, v501, v156);
          (*(v157 + 104))(v675, v624, v646);
          v159 = (*(v657 + 104))(v703, v489, v692);
          v625 = MEMORY[0x23188EEB0](v159);
          *(v1 + 488) = v491;
          *(v1 + 496) = v494;

          MEMORY[0x23188E270](46, 0xE100000000000000);
          MEMORY[0x23188E270](v498, v504);
          MEMORY[0x23188E270](46, 0xE100000000000000);
          sub_22B35DF0C();
          v160 = sub_22B35DECC();
          v162 = v161;
          (*(v512 + 8))(v508, v516);
          MEMORY[0x23188E270](v160, v162);

          sub_22B35FD7C();

          sub_22B35FD6C();

          sub_22B35FC4C();

          sub_22B35FBDC();

          sub_22B35FCEC();
          v715(v577, v531, v153);
          sub_22B36039C();
          sub_22B35FBBC();
          v715(v577, v152, v153);
          sub_22B36039C();
          sub_22B35FCCC();
          v715(v577, v546, v153);
          sub_22B36039C();
          sub_22B35FC6C();
          (*(v155 + 16))(v590, v570, v560);
          sub_22B35FCAC();
          (*(v157 + 16))(v597, v675, v646);
          sub_22B35FD4C();
          (*(v657 + 16))(v606, v703, v692);
          sub_22B35FC2C();

          sub_22B35FD0C();
          sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
          v163 = sub_22B36042C();
          v165 = v164;
          v717 = *(v1 + 1392);
          v724 = *(v1 + 1400);
          v693 = *(v1 + 976);
          v704 = *(v1 + 1248);
          v658 = *(v1 + 936);
          v676 = *(v1 + 928);
          v647 = *(v1 + 920);
          v607 = *(v1 + 880);
          v616 = *(v1 + 872);
          v598 = *(v1 + 864);
          v584 = *(v1 + 824);
          v591 = *(v1 + 816);
          v578 = *(v1 + 784);
          loga = *(v1 + 752);
          v571 = *(v1 + 744);
          v554 = *(v1 + 600);
          v561 = *(v1 + 608);
          v547 = *(v1 + 592);
          v542 = *(v1 + 584);
          sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
          v166 = objc_opt_self();

          v167 = [v166 defaultRecordZone];
          v168 = [v167 zoneID];

          v169 = sub_22B360CBC();
          sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
          v534 = v169;
          v170 = sub_22B360F4C();
          v171 = [v170 recordID];
          v172 = [v171 zoneID];

          v173 = sub_22B360CBC();
          [v170 setRecordID_];

          *(v1 + 280) = MEMORY[0x277CC9318];
          *(v1 + 288) = MEMORY[0x277CBBBE0];
          *(v1 + 256) = v163;
          *(v1 + 264) = v165;
          sub_22B144B30(v163, v165);
          sub_22B360EBC();
          *(v1 + 472) = v542;
          *(v1 + 480) = v547;

          MEMORY[0x23188E270](46, 0xE100000000000000);
          MEMORY[0x23188E270](v554, v561);
          v174 = *(v1 + 472);
          v175 = *(v1 + 480);
          *(v1 + 240) = MEMORY[0x277D837D0];
          *(v1 + 248) = MEMORY[0x277CBBE08];
          *(v1 + 216) = v174;
          *(v1 + 224) = v175;
          sub_22B360EBC();
          sub_22B12F174(v163, v165);

          (loga[1].isa)(v578, v571);
          objc_autoreleasePoolPop(v625);
          (*(v584 + 8))(v598, v591);
          (*(v607 + 8))(v647, v616);
          (*(v658 + 8))(v693, v676);
          v728(v717, v704);
          v728(v724, v704);
          v176 = v170;
          v177 = v538;
          MEMORY[0x23188E350]();
          if (*((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22B360A7C();
            v177 = v538;
          }

          goto LABEL_42;
        }

        v70 = *(v1 + 1424);
        v71 = *(v1 + 1416);
        v72 = *(v1 + 1408);
        v73 = *(v1 + 1248);
        v74 = *(v1 + 1232);
        v75 = *(v1 + 1176);
        v76 = (v615)(v70, *(v1 + 1112), v73);
        v701 = MEMORY[0x23188EEB0](v76);
        v634(v74, v635, v75);
        v715(v71, v70, v73);
        v715(v72, v70, v73);
        v77 = sub_22B36050C();
        v78 = sub_22B360D0C();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = *(v1 + 1440);
          v589 = v78;
          v80 = *(v1 + 1416);
          v576 = *(v1 + 1408);
          v81 = *(v1 + 1248);
          v672 = *(v1 + 1176);
          v690 = *(v1 + 1232);
          v82 = swift_slowAlloc();
          v583 = swift_slowAlloc();
          v730[0] = v583;
          *v82 = 136315650;
          sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v83 = sub_22B36131C();
          v85 = v84;
          v728(v80, v81);
          v86 = sub_22B1A7B20(v83, v85, v730);

          *(v82 + 4) = v86;
          *(v82 + 12) = 2080;
          sub_22B35DDCC();
          v1 = v729;
          v87 = sub_22B36131C();
          v89 = v88;
          v728(v79, v81);
          v728(v576, v81);
          v90 = sub_22B1A7B20(v87, v89, v730);

          *(v82 + 14) = v90;
          *(v82 + 22) = 1024;
          *(v82 + 24) = 1;
          _os_log_impl(&dword_22B116000, v77, v589, "[MOCK GENERATE] Creating reading Range:%s-%s, using fixedValues: %{BOOL}d", v82, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v583, -1, -1);
          MEMORY[0x23188F650](v82, -1, -1);

          v636(v690, v672);
        }

        else
        {
          v91 = *(v1 + 1416);
          v92 = *(v1 + 1408);
          v93 = *(v1 + 1248);
          v94 = *(v1 + 1232);
          v95 = *(v1 + 1176);

          v728(v92, v93);
          v728(v91, v93);
          v636(v94, v95);
        }

        v96 = *(v1 + 1664);
        v97 = *(v1 + 1440);
        v98 = *(v1 + 1424);
        v99 = *(v1 + 1064);
        v691 = *(v1 + 1056);
        v100 = *(v1 + 1000);
        v655 = *(v1 + 1248);
        v673 = *(v1 + 992);
        sub_22B35FB8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
        v101 = sub_22B35FB5C();
        v102 = *(v101 - 8);
        v103 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_22B3634B0;
        (*(v102 + 104))(v104 + v103, v96, v101);
        sub_22B35FB7C();
        v715(v97, v98, v655);
        sub_22B36039C();
        sub_22B35FB1C();
        sub_22B35DDCC();
        sub_22B36039C();
        sub_22B35FAFC();
        sub_22B35FB3C();
        (*(v100 + 16))(v691, v99, v673);
        v55 = v710;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_22B32D22C(0, v710[2] + 1, 1, v710);
        }

        v106 = v55[2];
        v105 = v55[3];
        v1 = v729;
        if (v106 >= v105 >> 1)
        {
          v55 = sub_22B32D22C((v105 > 1), v106 + 1, 1, v55);
        }

        v107 = *(v729 + 1424);
        v108 = *(v729 + 1248);
        v109 = *(v729 + 1056);
        v110 = *(v729 + 1000);
        v111 = *(v729 + 992);
        (*(v110 + 8))(*(v729 + 1064), v111);
        v55[2] = v106 + 1;
        (*(v110 + 32))(v55 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v106, v109, v111);
        objc_autoreleasePoolPop(v701);
        v728(v107, v108);
        continue;
      }
    }

    v723 = *(v1 + 1128);
    v112 = *(v1 + 1120);
    v113 = *(v1 + 632);
    if ((*(v1 + 1697) & 1) == 0)
    {
      sub_22B35F50C();
      v179 = *(v112 + 36);
      sub_22B35F63C();
      if (v113 == 0.0)
      {
        goto LABEL_148;
      }

      v180 = *(v1 + 1256);
      v181 = *(v1 + 1248);
      v182 = *(v1 + 1160);
      v183 = *(v1 + 1136);
      v184 = *(v1 + 632);
      v185 = v182 + v183[11];
      v186 = *(*(v1 + 1072) + 48);
      v187 = *(v180 + 32);
      v187(v185 + v186, *(v1 + 1128), v181);
      v188 = (v723 + v179);
      v189 = v181;
      v705 = v187;
      v187(v182 + v183[9], v188, v181);
      v190 = *(v180 + 16);
      *(v182 + v183[10]) = v184;
      v617 = v186;
      (v190)(v182, v185 + v186, v189);
      *v185 = 0;
      v626 = v185;
      *(v185 + 8) = 0;
      v608 = MEMORY[0x277D84F90];
      v725 = v190;
      while (2)
      {
        v197 = *(v1 + 632);
        (v190)(*(v1 + 1384), v626 + v617, *(v1 + 1248));
        sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        if (v197 <= 0.0)
        {
          if (sub_22B36076C())
          {
            goto LABEL_51;
          }

LABEL_49:
          v198 = *(v1 + 1440);
          v199 = *(v1 + 1384);
          v200 = *(v729 + 1256);
          v201 = *(v729 + 1248);
          v659 = *(v729 + 1104);
          v677 = v199;
          v202 = *(v729 + 1080);
          v203 = *(v729 + 1072);
          sub_22B170BE0(v626, v202, &qword_27D8BABD0, &unk_22B366EE0);
          v204 = *(v203 + 48);
          sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
          v205 = sub_22B36101C();
          v207 = v206;
          v728(v202 + v204, v201);
          *v626 = v205;
          *(v626 + 8) = v207 & 1;
          (*(v200 + 40))(v626 + v617, v198, v201);
          v1 = v729;
          v705(v659, v677, v201);
          v208 = 0;
        }

        else
        {
          if ((sub_22B36075C() & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_51:
          v728(*(v1 + 1384), *(v1 + 1248));
          v208 = 1;
        }

        v209 = *(v1 + 1256);
        v210 = *(v1 + 1248);
        v211 = *(v1 + 1104);
        v212 = *(v209 + 56);
        v212(v211, v208, 1, v210);
        v213 = *(v209 + 48);
        if ((v213)(v211, 1, v210) == 1)
        {
          v282 = sub_22B123284(*(v1 + 1160), &qword_27D8BABE0, &unk_22B366EF0);
          v283 = MEMORY[0x23188EEB0](v282);
          log = v213;
          v573 = v212;
          if (v608[2])
          {
            v618 = v283;
            v284 = *(v1 + 1676);
            v599 = *(v1 + 1672);
            v485 = *(v1 + 1668);
            v521 = *(v1 + 1352);
            v523 = *(v1 + 1344);
            v525 = *(v1 + 1440);
            v505 = *(v1 + 1248);
            v285 = *(v1 + 960);
            v286 = *(v1 + 936);
            v529 = v286;
            v627 = *(v1 + 928);
            v555 = *(v1 + 968);
            v562 = *(v1 + 912);
            v287 = *(v1 + 904);
            v288 = *(v1 + 880);
            v649 = *(v1 + 872);
            v585 = *(v1 + 856);
            v641 = *(v1 + 824);
            v661 = *(v1 + 816);
            v679 = *(v1 + 848);
            v490 = *(v1 + 808);
            v492 = *(v1 + 800);
            v495 = *(v1 + 792);
            v517 = *(v1 + 640);
            v488 = *(v1 + 608);
            v486 = *(v1 + 600);
            v483 = *(v1 + 584);
            v484 = *(v1 + 592);
            v725();
            sub_22B35F63C();
            (*(v286 + 104))(v285, v485, v627);
            (*(v288 + 104))(v287, v599, v649);
            v289 = v641[13](v679, v284, v661);
            v600 = MEMORY[0x23188EEB0](v289);
            *(v1 + 408) = v483;
            *(v1 + 416) = v484;

            MEMORY[0x23188E270](46, 0xE100000000000000);
            MEMORY[0x23188E270](v486, v488);
            MEMORY[0x23188E270](46, 0xE100000000000000);
            sub_22B35DF0C();
            v290 = sub_22B35DECC();
            v292 = v291;
            (*(v492 + 8))(v490, v495);
            MEMORY[0x23188E270](v290, v292);

            sub_22B35FD7C();

            sub_22B35FD6C();

            sub_22B35FC4C();

            sub_22B35FBDC();

            sub_22B35FCEC();
            (v725)(v525, v517, v505);
            sub_22B36039C();
            sub_22B35FBBC();
            (v725)(v525, v521, v505);
            sub_22B36039C();
            sub_22B35FCCC();
            (v725)(v525, v523, v505);
            sub_22B36039C();
            sub_22B35FC6C();
            (*(v529 + 16))(v555, v285, v627);
            sub_22B35FCAC();
            (*(v288 + 16))(v562, v287, v649);
            sub_22B35FD4C();
            v641[2](v585, v679, v661);
            sub_22B35FC2C();

            sub_22B35FD0C();
            sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
            v293 = sub_22B36042C();
            v295 = v294;
            v662 = *(v1 + 1344);
            v680 = *(v1 + 1352);
            v642 = *(v1 + 960);
            v650 = *(v1 + 1248);
            v628 = *(v1 + 928);
            v586 = *(v1 + 904);
            v592 = *(v1 + 936);
            v556 = *(v1 + 880);
            v563 = *(v1 + 872);
            v548 = *(v1 + 848);
            v535 = *(v1 + 824);
            v543 = *(v1 + 816);
            v527 = *(v1 + 744);
            v530 = *(v1 + 776);
            v524 = *(v1 + 608);
            v526 = *(v1 + 752);
            v518 = *(v1 + 592);
            v522 = *(v1 + 600);
            v513 = *(v1 + 584);
            sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
            v296 = objc_opt_self();

            v297 = [v296 defaultRecordZone];
            v298 = [v297 zoneID];

            v299 = sub_22B360CBC();
            sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
            v509 = v299;
            v300 = sub_22B360F4C();
            v301 = [v300 recordID];
            v302 = [v301 zoneID];

            v303 = sub_22B360CBC();
            [v300 setRecordID_];

            *(v1 + 80) = MEMORY[0x277CC9318];
            *(v1 + 88) = MEMORY[0x277CBBBE0];
            *(v1 + 56) = v293;
            *(v1 + 64) = v295;
            sub_22B144B30(v293, v295);
            sub_22B360EBC();
            *(v1 + 424) = v513;
            *(v1 + 432) = v518;

            MEMORY[0x23188E270](46, 0xE100000000000000);
            MEMORY[0x23188E270](v522, v524);
            v304 = *(v1 + 424);
            v305 = *(v1 + 432);
            *(v1 + 120) = MEMORY[0x277D837D0];
            *(v1 + 128) = MEMORY[0x277CBBE08];
            *(v1 + 96) = v304;
            *(v1 + 104) = v305;
            sub_22B360EBC();
            sub_22B12F174(v293, v295);

            (*(v526 + 8))(v530, v527);
            objc_autoreleasePoolPop(v600);
            (*(v535 + 8))(v548, v543);
            (*(v556 + 8))(v586, v563);
            (*(v592 + 8))(v642, v628);
            v728(v662, v650);
            v728(v680, v650);
            v306 = v300;
            v307 = v538;
            MEMORY[0x23188E350]();
            if (*((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22B360A7C();
              v307 = v538;
            }

            sub_22B360A9C();

            v308 = *v307;

            v542 = v308;
            *v307 = v308;
            v283 = v618;
          }

          v681 = *(v1 + 1248);
          v309 = *(v1 + 1152);
          v310 = *(v1 + 1136);
          v311 = *(v1 + 1128);
          v312 = *(v1 + 1120);
          v663 = *(v1 + 1072);
          v313 = *(v1 + 632);
          objc_autoreleasePoolPop(v283);

          sub_22B35F50C();
          v314 = *(v312 + 36);
          sub_22B35F63C();
          v315 = v309 + v310[11];
          v316 = *(v663 + 48);
          v705(v315 + v316, v311, v681);
          v705(v309 + v310[9], &v311[v314], v681);
          *(v309 + v310[10]) = v313;
          v593 = v316;
          (v725)(v309, v315 + v316, v681);
          *v315 = 0;
          v601 = v315;
          *(v315 + 8) = 0;
          v587 = MEMORY[0x277D84F90];
          v317 = v725;
          while (2)
          {
            v323 = *(v1 + 632);
            (v317)(*(v1 + 1336), v601 + v593, *(v1 + 1248));
            if (v323 <= 0.0)
            {
              if (sub_22B36076C())
              {
                goto LABEL_90;
              }

LABEL_88:
              v324 = *(v1 + 1440);
              v325 = *(v1 + 1336);
              v326 = *(v729 + 1256);
              v327 = *(v729 + 1248);
              v664 = *(v729 + 1096);
              v682 = v325;
              v328 = *(v729 + 1080);
              v329 = *(v729 + 1072);
              sub_22B170BE0(v601, v328, &qword_27D8BABD0, &unk_22B366EE0);
              v330 = *(v329 + 48);
              sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
              v331 = sub_22B36101C();
              v333 = v332;
              v728(v328 + v330, v327);
              *v601 = v331;
              *(v601 + 8) = v333 & 1;
              (*(v326 + 40))(v601 + v593, v324, v327);
              v1 = v729;
              v705(v664, v682, v327);
              v334 = 0;
            }

            else
            {
              if ((sub_22B36075C() & 1) == 0)
              {
                goto LABEL_88;
              }

LABEL_90:
              v728(*(v1 + 1336), *(v1 + 1248));
              v334 = 1;
            }

            v335 = *(v1 + 1248);
            v336 = *(v1 + 1096);
            v573(v336, v334, 1, v335);
            if ((log)(v336, 1, v335) == 1)
            {
              v402 = sub_22B123284(*(v1 + 1152), &qword_27D8BABE0, &unk_22B366EF0);
              v403 = MEMORY[0x23188EEB0](v402);
              if (v587[2])
              {
                v652 = v403;
                v643 = *(v1 + 1680);
                v499 = *(v1 + 1672);
                v496 = *(v1 + 1668);
                v536 = *(v1 + 1304);
                v549 = *(v1 + 1296);
                v528 = *(v1 + 1248);
                v557 = *(v1 + 1440);
                v602 = *(v1 + 968);
                v404 = *(v1 + 952);
                v405 = *(v1 + 936);
                v667 = *(v1 + 928);
                v611 = *(v1 + 912);
                v406 = *(v1 + 896);
                v407 = *(v1 + 880);
                v684 = *(v1 + 872);
                v621 = *(v1 + 856);
                v711 = *(v1 + 840);
                v695 = *(v1 + 824);
                v706 = *(v1 + 816);
                v510 = *(v729 + 808);
                v514 = *(v729 + 800);
                v519 = *(v729 + 792);
                v532 = *(v729 + 640);
                v506 = *(v729 + 608);
                v502 = *(v729 + 600);
                v408 = *(v729 + 592);
                v409 = *(v729 + 584);
                v725();
                sub_22B35F63C();
                (*(v405 + 104))(v404, v496, v667);
                (*(v407 + 104))(v406, v499, v684);
                v410 = (*(v695 + 104))(v711, v643, v706);
                v644 = MEMORY[0x23188EEB0](v410);
                *(v729 + 440) = v409;
                *(v729 + 448) = v408;

                MEMORY[0x23188E270](46, 0xE100000000000000);
                MEMORY[0x23188E270](v502, v506);
                MEMORY[0x23188E270](46, 0xE100000000000000);
                sub_22B35DF0C();
                v411 = sub_22B35DECC();
                v413 = v412;
                (*(v514 + 8))(v510, v519);
                MEMORY[0x23188E270](v411, v413);

                sub_22B35FD7C();

                sub_22B35FD6C();

                sub_22B35FC4C();

                sub_22B35FBDC();

                sub_22B35FCEC();
                (v725)(v557, v532, v528);
                sub_22B36039C();
                sub_22B35FBBC();
                (v725)(v557, v536, v528);
                sub_22B36039C();
                sub_22B35FCCC();
                (v725)(v557, v549, v528);
                sub_22B36039C();
                sub_22B35FC6C();
                (*(v405 + 16))(v602, v404, v667);
                sub_22B35FCAC();
                (*(v407 + 16))(v611, v406, v684);
                sub_22B35FD4C();
                (*(v695 + 16))(v621, v711, v706);
                sub_22B35FC2C();

                sub_22B35FD0C();
                sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
                v414 = sub_22B36042C();
                v416 = v415;
                v718 = *(v729 + 1296);
                v726 = *(v729 + 1304);
                v712 = *(v729 + 1248);
                v696 = *(v729 + 928);
                v707 = *(v729 + 952);
                v668 = *(v729 + 896);
                v685 = *(v729 + 936);
                v622 = *(v729 + 880);
                v631 = *(v729 + 872);
                v594 = *(v729 + 824);
                v603 = *(v729 + 816);
                v612 = *(v729 + 840);
                v580 = *(v729 + 768);
                logb = *(v729 + 752);
                v574 = *(v729 + 744);
                v558 = *(v729 + 600);
                v564 = *(v729 + 608);
                v550 = *(v729 + 592);
                v542 = *(v729 + 584);
                sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
                v417 = objc_opt_self();

                v418 = [v417 defaultRecordZone];
                v419 = [v418 zoneID];

                v420 = sub_22B360CBC();
                sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
                v421 = v420;
                v422 = sub_22B360F4C();
                v423 = [v422 recordID];
                v424 = [v423 zoneID];

                v1 = v729;
                v425 = sub_22B360CBC();
                [v422 setRecordID_];

                *(v729 + 160) = MEMORY[0x277CC9318];
                *(v729 + 168) = MEMORY[0x277CBBBE0];
                *(v729 + 136) = v414;
                *(v729 + 144) = v416;
                sub_22B144B30(v414, v416);
                sub_22B360EBC();
                *(v729 + 456) = v542;
                *(v729 + 464) = v550;

                MEMORY[0x23188E270](46, 0xE100000000000000);
                MEMORY[0x23188E270](v558, v564);
                v426 = *(v729 + 456);
                v427 = *(v729 + 464);
                *(v729 + 200) = MEMORY[0x277D837D0];
                *(v729 + 208) = MEMORY[0x277CBBE08];
                *(v729 + 176) = v426;
                *(v729 + 184) = v427;
                sub_22B360EBC();
                sub_22B12F174(v414, v416);

                (logb[1].isa)(v580, v574);
                objc_autoreleasePoolPop(v644);
                (*(v594 + 8))(v612, v603);
                (*(v622 + 8))(v668, v631);
                v685[1](v707, v696);
                v728(v718, v712);
                v728(v726, v712);
                v428 = v422;
                v429 = v538;
                MEMORY[0x23188E350]();
                if (*((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_22B360A7C();
                  v429 = v538;
                }

                sub_22B360A9C();

                v178 = *v429;

                *v429 = v178;
                v403 = v652;
              }

              else
              {
                v178 = v542;
              }

              objc_autoreleasePoolPop(v403);
              goto LABEL_126;
            }

            v629 = *(v1 + 1688);
            v619 = *(v1 + 1684);
            v337 = *(v1 + 1664);
            v338 = *(v1 + 1440);
            v339 = *(v1 + 1328);
            v609 = *(v1 + 1248);
            v665 = *(v1 + 1699);
            v340 = (v705)(v339, *(v1 + 1096));
            v683 = MEMORY[0x23188EEB0](v340);
            sub_22B35FB8C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
            v341 = sub_22B35FB5C();
            v342 = *(v341 - 8);
            v343 = (*(v342 + 80) + 32) & ~*(v342 + 80);
            v344 = swift_allocObject();
            *(v344 + 16) = xmmword_22B3634B0;
            (*(v342 + 104))(v344 + v343, v337, v341);
            sub_22B35FB7C();
            v317 = v725;
            (v725)(v338, v339, v609);
            sub_22B36039C();
            sub_22B35FB1C();
            sub_22B35DDCC();
            sub_22B36039C();
            sub_22B35FAFC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
            v345 = sub_22B35E02C();
            v346 = *(v345 - 8);
            v347 = *(v346 + 72);
            v348 = (*(v346 + 80) + 32) & ~*(v346 + 80);
            v349 = swift_allocObject();
            *(v349 + 16) = xmmword_22B3634C0;
            v350 = v349 + v348;
            v351 = *(v346 + 104);
            v351(v350, v619, v345);
            v351(v350 + v347, v629, v345);
            sub_22B310E30(v349);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_22B35DFCC();

            v352 = sub_22B35D9CC();
            if (v353)
            {
              v354 = 1;
            }

            else
            {
              v354 = v352;
            }

            v355 = sub_22B35D97C();
            if (v356)
            {
              v357 = 1;
            }

            else
            {
              v357 = v355;
            }

            v358 = sub_22B26E06C(v354, v357, v665);
            if (v358 >= 0.0)
            {
              goto LABEL_84;
            }

            v359 = v358;
            v360 = *(v1 + 1328);
            v361 = *(v1 + 1320);
            v362 = *(v1 + 1312);
            v363 = *(v1 + 1248);
            v634(*(v1 + 1216), v635, *(v1 + 1176));
            (v725)(v361, v360, v363);
            (v725)(v362, v360, v363);
            v364 = sub_22B36050C();
            v365 = sub_22B360D0C();
            if (os_log_type_enabled(v364, v365))
            {
              v366 = *(v1 + 1440);
              v630 = v365;
              v367 = *(v1 + 1320);
              v610 = *(v1 + 1312);
              v368 = *(v1 + 1248);
              v651 = *(v1 + 1176);
              v666 = *(v1 + 1216);
              v369 = swift_slowAlloc();
              v620 = swift_slowAlloc();
              v730[0] = v620;
              *v369 = 136315650;
              sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v370 = sub_22B36131C();
              v372 = v371;
              v728(v367, v368);
              v373 = sub_22B1A7B20(v370, v372, v730);

              *(v369 + 4) = v373;
              *(v369 + 12) = 2080;
              sub_22B35DDCC();
              v374 = sub_22B36131C();
              v376 = v375;
              v728(v366, v368);
              v728(v610, v368);
              v317 = v725;
              v377 = sub_22B1A7B20(v374, v376, v730);

              *(v369 + 14) = v377;
              *(v369 + 22) = 2048;
              *(v369 + 24) = v359;
              _os_log_impl(&dword_22B116000, v364, v630, "[MOCK GENERATE] Creating reading Range:%s-%s, using dynamic value: %f", v369, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v620, -1, -1);
              v378 = v369;
              v1 = v729;
              MEMORY[0x23188F650](v378, -1, -1);

              v636(v666, v651);
            }

            else
            {
              v379 = *(v1 + 1320);
              v380 = *(v1 + 1312);
              v381 = *(v1 + 1248);
              v382 = *(v1 + 1216);
              v383 = *(v1 + 1176);

              v728(v380, v381);
              v728(v379, v381);
              v636(v382, v383);
            }

            if (*(v1 + 1698) == 1)
            {
              if ((*(v1 + 696) | 2) == 2)
              {
                *v544 = 0;
                MEMORY[0x23188F670](v544, 8);
                if ((0x20000000000001 * *v544) < 0x1FFFFFFFFFF801)
                {
                  do
                  {
                    *v487 = 0;
                    MEMORY[0x23188F670](v487, 8);
                  }

                  while ((0x20000000000001 * *v487) < 0x1FFFFFFFFFF801);
                }

                v384 = *(v1 + 1024);
                v385 = *(v1 + 1008);
                v386 = *(v1 + 1000);
                v387 = *(v1 + 992);
                sub_22B35FB3C();
                (*(v386 + 16))(v385, v384, v387);
                v388 = v587;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v388 = sub_22B32D22C(0, v587[2] + 1, 1, v587);
                }

                v390 = v388[2];
                v389 = v388[3];
                v587 = v388;
                v391 = v390 + 1;
                if (v390 >= v389 >> 1)
                {
                  v587 = sub_22B32D22C((v389 > 1), v390 + 1, 1, v587);
                }

                v392 = *(v1 + 1024);
                v393 = *(v1 + 1008);
                goto LABEL_116;
              }

LABEL_84:
              v318 = *(v1 + 1024);
              v319 = *(v1 + 1000);
              v320 = *(v1 + 992);
              (*(*(v1 + 720) + 8))(*(v1 + 728), *(v1 + 712));
              (*(v319 + 8))(v318, v320);
            }

            else
            {
              v394 = *(v1 + 1024);
              v395 = *(v1 + 1016);
              v396 = *(v1 + 1000);
              v397 = *(v1 + 992);
              sub_22B35FB3C();
              (*(v396 + 16))(v395, v394, v397);
              v398 = v587;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v398 = sub_22B32D22C(0, v587[2] + 1, 1, v587);
              }

              v390 = v398[2];
              v399 = v398[3];
              v587 = v398;
              v391 = v390 + 1;
              if (v390 >= v399 >> 1)
              {
                v587 = sub_22B32D22C((v399 > 1), v390 + 1, 1, v587);
              }

              v392 = *(v1 + 1024);
              v393 = *(v1 + 1016);
LABEL_116:
              v400 = *(v1 + 1000);
              v401 = *(v1 + 992);
              (*(*(v1 + 720) + 8))(*(v1 + 728), *(v1 + 712));
              (*(v400 + 8))(v392, v401);
              v587[2] = v391;
              (*(v400 + 32))(v587 + ((*(v400 + 80) + 32) & ~*(v400 + 80)) + *(v400 + 72) * v390, v393, v401);
            }

            v321 = *(v1 + 1328);
            v322 = *(v1 + 1248);
            objc_autoreleasePoolPop(v683);
            v728(v321, v322);
            continue;
          }
        }

        v648 = *(v1 + 1688);
        v639 = *(v1 + 1684);
        v214 = *(v1 + 1664);
        v215 = *(v1 + 1440);
        v216 = *(v1 + 1376);
        v217 = *(v1 + 1248);
        v218 = (v705)(v216, *(v1 + 1104), v217);
        v694 = MEMORY[0x23188EEB0](v218);
        sub_22B35FB8C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABF8, &qword_22B3669E8);
        v219 = sub_22B35FB5C();
        v220 = *(v219 - 8);
        v221 = (*(v220 + 80) + 32) & ~*(v220 + 80);
        v222 = swift_allocObject();
        *(v222 + 16) = xmmword_22B3634B0;
        (*(v220 + 104))(v222 + v221, v214, v219);
        sub_22B35FB7C();
        (v725)(v215, v216, v217);
        sub_22B36039C();
        sub_22B35FB1C();
        sub_22B35DDCC();
        sub_22B36039C();
        sub_22B35FAFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
        v223 = sub_22B35E02C();
        v224 = *(v223 - 8);
        v225 = *(v224 + 72);
        v226 = (*(v224 + 80) + 32) & ~*(v224 + 80);
        v227 = swift_allocObject();
        *(v227 + 16) = xmmword_22B3634C0;
        v228 = v227 + v226;
        v229 = *(v224 + 104);
        v229(v228, v639, v223);
        v229(v228 + v225, v648, v223);
        sub_22B310E30(v227);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_22B35DFCC();

        v230 = sub_22B35D9CC();
        if (v231)
        {
          v232 = 1;
        }

        else
        {
          v232 = v230;
        }

        v233 = sub_22B35D97C();
        if (v234)
        {
          v235 = 1;
        }

        else
        {
          v235 = v233;
        }

        v236 = sub_22B26E06C(v232, v235, 0);
        if (v236 < 0.0)
        {
          v1 = v729;
          v191 = *(v729 + 1048);
          v192 = *(v729 + 1000);
          v193 = *(v729 + 992);
          (*(*(v729 + 720) + 8))(*(v729 + 736), *(v729 + 712));
          (*(v192 + 8))(v191, v193);
          v190 = v725;
          v194 = v694;
        }

        else
        {
          v237 = v236;
          v238 = *(v729 + 1376);
          v239 = *(v729 + 1368);
          v240 = *(v729 + 1360);
          v241 = *(v729 + 1248);
          v634(*(v729 + 1224), v635, *(v729 + 1176));
          (v725)(v239, v238, v241);
          (v725)(v240, v238, v241);
          v242 = sub_22B36050C();
          v243 = sub_22B360D0C();
          if (os_log_type_enabled(v242, v243))
          {
            v244 = *(v729 + 1440);
            v640 = v243;
            v245 = *(v729 + 1368);
            v572 = *(v729 + 1360);
            v246 = *(v729 + 1248);
            v660 = *(v729 + 1176);
            v678 = *(v729 + 1224);
            v247 = swift_slowAlloc();
            v579 = swift_slowAlloc();
            v730[0] = v579;
            *v247 = 136315650;
            sub_22B28C170(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v248 = sub_22B36131C();
            v250 = v249;
            v728(v245, v246);
            v251 = sub_22B1A7B20(v248, v250, v730);

            *(v247 + 4) = v251;
            *(v247 + 12) = 2080;
            sub_22B35DDCC();
            v252 = sub_22B36131C();
            v254 = v253;
            v728(v244, v246);
            v728(v572, v246);
            v255 = sub_22B1A7B20(v252, v254, v730);

            *(v247 + 14) = v255;
            *(v247 + 22) = 2048;
            *(v247 + 24) = v237;
            _os_log_impl(&dword_22B116000, v242, v640, "[MOCK GENERATE] Creating reading Range:%s-%s, using dynamic value: %f", v247, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v579, -1, -1);
            MEMORY[0x23188F650](v247, -1, -1);

            v636(v678, v660);
          }

          else
          {
            v256 = *(v729 + 1368);
            v257 = *(v729 + 1360);
            v258 = *(v729 + 1248);
            v259 = *(v729 + 1224);
            v260 = *(v729 + 1176);

            v728(v257, v258);
            v728(v256, v258);
            v636(v259, v260);
          }

          v1 = v729;
          v194 = v694;
          if (*(v729 + 1698) == 1)
          {
            v190 = v725;
            if ((*(v729 + 696) - 1) < 2)
            {
              *v539 = 0;
              MEMORY[0x23188F670](v539, 8);
              if ((0x20000000000001 * *v539) < 0x1FFFFFFFFFF801)
              {
                do
                {
                  *v540 = 0;
                  MEMORY[0x23188F670](v540, 8);
                }

                while ((0x20000000000001 * *v540) < 0x1FFFFFFFFFF801);
              }

              v261 = *(v729 + 1048);
              v262 = *(v729 + 1032);
              v263 = *(v729 + 1000);
              v264 = *(v729 + 992);
              sub_22B35FB3C();
              (*(v263 + 16))(v262, v261, v264);
              v265 = v608;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v265 = sub_22B32D22C(0, v608[2] + 1, 1, v608);
              }

              v267 = v265[2];
              v266 = v265[3];
              v608 = v265;
              v268 = v267 + 1;
              if (v267 >= v266 >> 1)
              {
                v608 = sub_22B32D22C((v266 > 1), v267 + 1, 1, v608);
              }

              v269 = *(v729 + 1048);
              v270 = *(v729 + 1032);
              goto LABEL_77;
            }

            v279 = *(v729 + 1048);
            v280 = *(v729 + 1000);
            v281 = *(v729 + 992);
            (*(*(v729 + 720) + 8))(*(v729 + 736), *(v729 + 712));
            (*(v280 + 8))(v279, v281);
          }

          else
          {
            v271 = *(v729 + 1048);
            v272 = *(v729 + 1040);
            v273 = *(v729 + 1000);
            v274 = *(v729 + 992);
            sub_22B35FB3C();
            (*(v273 + 16))(v272, v271, v274);
            v275 = v608;
            v190 = v725;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v275 = sub_22B32D22C(0, v608[2] + 1, 1, v608);
            }

            v267 = v275[2];
            v276 = v275[3];
            v608 = v275;
            v268 = v267 + 1;
            if (v267 >= v276 >> 1)
            {
              v608 = sub_22B32D22C((v276 > 1), v267 + 1, 1, v608);
            }

            v269 = *(v729 + 1048);
            v270 = *(v729 + 1040);
LABEL_77:
            v277 = *(v729 + 1000);
            v278 = *(v729 + 992);
            (*(*(v729 + 720) + 8))(*(v729 + 736), *(v729 + 712));
            (*(v277 + 8))(v269, v278);
            v608[2] = v268;
            (*(v277 + 32))(v608 + ((*(v277 + 80) + 32) & ~*(v277 + 80)) + *(v277 + 72) * v267, v270, v278);
          }
        }

        v195 = *(v1 + 1376);
        v196 = *(v1 + 1248);
        objc_autoreleasePoolPop(v194);
        v728(v195, v196);
        continue;
      }
    }

    *v553 = MEMORY[0x277D84F90];
    sub_22B35F50C();
    v114 = *(v112 + 36);
    sub_22B35F63C();
    if (v113 == 0.0)
    {
      goto LABEL_149;
    }

    v115 = *(v1 + 1256);
    v116 = *(v1 + 1248);
    v117 = *(v1 + 1144);
    v118 = *(v1 + 1136);
    v119 = *(v1 + 632);
    v120 = v117 + v118[11];
    v121 = *(*(v1 + 1072) + 48);
    v122 = *(v115 + 32);
    v122(v120 + v121, *(v1 + 1128), v116);
    v716 = v122;
    v122(v117 + v118[9], (v723 + v114), v116);
    v123 = *(v115 + 16);
    *(v117 + v118[10]) = v119;
    v702 = v123;
    v123(v117, v120 + v121, v116);
    *v120 = 0;
    *(v120 + 8) = 0;
    while (1)
    {
      v124 = *(v1 + 632);
      v702(*(v1 + 1288), v120 + v121, *(v1 + 1248));
      sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (v124 <= 0.0)
      {
        if ((sub_22B36076C() & 1) == 0)
        {
LABEL_33:
          v125 = *(v1 + 1440);
          v126 = *(v1 + 1256);
          v127 = *(v1 + 1248);
          v656 = *(v1 + 1088);
          v674 = *(v1 + 1288);
          v128 = v117;
          v129 = *(v1 + 1080);
          v130 = *(v1 + 1072);
          sub_22B170BE0(v120, v129, &qword_27D8BABD0, &unk_22B366EE0);
          v131 = *(v130 + 48);
          sub_22B28C170(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
          v132 = sub_22B36101C();
          v134 = v133;
          v135 = v129 + v131;
          v117 = v128;
          v728(v135, v127);
          *v120 = v132;
          v136 = v134 & 1;
          v1 = v729;
          *(v120 + 8) = v136;
          (*(v126 + 40))(v120 + v121, v125, v127);
          v716(v656, v674, v127);
          v137 = 0;
          goto LABEL_36;
        }
      }

      else if ((sub_22B36075C() & 1) == 0)
      {
        goto LABEL_33;
      }

      v728(*(v1 + 1288), *(v1 + 1248));
      v137 = 1;
LABEL_36:
      v138 = *(v1 + 1256);
      v139 = *(v1 + 1248);
      v140 = *(v1 + 1088);
      (*(v138 + 56))(v140, v137, 1, v139);
      if ((*(v138 + 48))(v140, 1, v139) == 1)
      {
        break;
      }

      v141 = *(v1 + 1528);
      v142 = *(v1 + 1280);
      v143 = *(v1 + 704);
      v144 = *(v1 + 1696);
      v145 = *(v1 + 632);
      v146 = (v716)(v142, *(v1 + 1088), *(v1 + 1248));
      v147 = MEMORY[0x23188EEB0](v146);
      sub_22B26B068(v142, v144, v141, v145, v143, v553);
      v148 = *(v1 + 1280);
      v149 = *(v1 + 1248);
      objc_autoreleasePoolPop(v147);
      v728(v148, v149);
    }

    v727 = *(v1 + 1692);
    v632 = *(v1 + 1672);
    v500 = *(v1 + 1668);
    v430 = *(v1 + 1448);
    v431 = *(v1 + 1272);
    v533 = v431;
    v551 = *(v1 + 1264);
    v432 = *(v1 + 1248);
    v581 = *(v1 + 1440);
    v595 = *(v1 + 968);
    v433 = *(v1 + 944);
    v434 = *(v1 + 936);
    v653 = *(v1 + 928);
    v604 = *(v1 + 912);
    v435 = *(v1 + 888);
    v436 = *(v1 + 880);
    v669 = *(v1 + 872);
    v613 = *(v1 + 856);
    v719 = *(v1 + 832);
    v686 = *(v1 + 824);
    v697 = *(v1 + 816);
    v511 = *(v729 + 808);
    v515 = *(v729 + 800);
    v520 = *(v729 + 792);
    v537 = *(v729 + 640);
    v507 = *(v729 + 608);
    v503 = *(v729 + 600);
    v497 = *(v729 + 592);
    v493 = *(v729 + 584);
    v437 = sub_22B123284(*(v1 + 1144), &qword_27D8BABE0, &unk_22B366EF0);
    v638 = MEMORY[0x23188EEB0](v437);
    v702(v431, v430, v432);
    sub_22B35F63C();
    (*(v434 + 104))(v433, v500, v653);
    (*(v436 + 104))(v435, v632, v669);
    v438 = v686[13](v719, v727, v697);
    v633 = MEMORY[0x23188EEB0](v438);
    *(v729 + 520) = v493;
    *(v729 + 528) = v497;

    MEMORY[0x23188E270](46, 0xE100000000000000);
    MEMORY[0x23188E270](v503, v507);
    MEMORY[0x23188E270](46, 0xE100000000000000);
    sub_22B35DF0C();
    v439 = sub_22B35DECC();
    v441 = v440;
    (*(v515 + 8))(v511, v520);
    MEMORY[0x23188E270](v439, v441);

    sub_22B35FD7C();

    sub_22B35FD6C();

    sub_22B35FC4C();

    sub_22B35FBDC();

    sub_22B35FCEC();
    v702(v581, v537, v432);
    sub_22B36039C();
    sub_22B35FBBC();
    v702(v581, v533, v432);
    sub_22B36039C();
    sub_22B35FCCC();
    v702(v581, v551, v432);
    sub_22B36039C();
    sub_22B35FC6C();
    (*(v434 + 16))(v595, v433, v653);
    sub_22B35FCAC();
    (*(v436 + 16))(v604, v435, v669);
    sub_22B35FD4C();
    v686[2](v613, v719, v697);
    sub_22B35FC2C();

    sub_22B35FD0C();
    sub_22B28C170(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
    v442 = sub_22B36042C();
    v444 = v443;
    v713 = *(v729 + 1264);
    v720 = *(v729 + 1272);
    v698 = *(v729 + 944);
    v708 = *(v729 + 1248);
    v670 = *(v729 + 936);
    v687 = *(v729 + 928);
    v654 = *(v729 + 888);
    v614 = *(v729 + 880);
    v623 = *(v729 + 872);
    v605 = *(v729 + 832);
    v588 = *(v729 + 824);
    v596 = *(v729 + 816);
    v582 = *(v729 + 760);
    logc = *(v729 + 752);
    v575 = *(v729 + 744);
    v559 = *(v729 + 600);
    v565 = *(v729 + 608);
    v552 = *(v729 + 592);
    v542 = *(v729 + 584);
    sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
    v445 = objc_opt_self();

    v446 = [v445 defaultRecordZone];
    v447 = [v446 zoneID];

    v448 = sub_22B360CBC();
    sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
    v449 = v448;
    v450 = sub_22B360F4C();
    v451 = [v450 recordID];
    v452 = [v451 zoneID];

    v1 = v729;
    v453 = sub_22B360CBC();
    [v450 setRecordID_];

    *(v729 + 320) = MEMORY[0x277CC9318];
    *(v729 + 328) = MEMORY[0x277CBBBE0];
    *(v729 + 296) = v442;
    *(v729 + 304) = v444;
    sub_22B144B30(v442, v444);
    sub_22B360EBC();
    *(v729 + 504) = v542;
    *(v729 + 512) = v552;

    MEMORY[0x23188E270](46, 0xE100000000000000);
    MEMORY[0x23188E270](v559, v565);
    v454 = *(v729 + 504);
    v455 = *(v729 + 512);
    *(v729 + 40) = MEMORY[0x277D837D0];
    *(v729 + 48) = MEMORY[0x277CBBE08];
    *(v729 + 16) = v454;
    *(v729 + 24) = v455;
    sub_22B360EBC();
    sub_22B12F174(v442, v444);

    (logc[1].isa)(v582, v575);
    objc_autoreleasePoolPop(v633);
    (*(v588 + 8))(v605, v596);
    (*(v614 + 8))(v654, v623);
    (*(v670 + 8))(v698, v687);
    v728(v713, v708);
    v728(v720, v708);
    v176 = v450;
    v177 = v538;
    MEMORY[0x23188E350]();
    if (*((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
      v177 = v538;
    }

LABEL_42:
    sub_22B360A9C();

    v178 = *v177;
    objc_autoreleasePoolPop(v638);
LABEL_126:

    *(v1 + 1584) = v178;
    v456 = v545 + 1;
    *(v1 + 1592) = v545 + 1;
    if (__OFADD__(v545, 1))
    {
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      if (!sub_22B36109C())
      {
        goto LABEL_151;
      }

LABEL_131:
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v457 = *(v1 + 1192);
      v458 = *(v1 + 1184);
      v459 = *(v1 + 1176);
      v460 = __swift_project_value_buffer(v459, qword_28140BD10);
      swift_beginAccess();
      (*(v458 + 16))(v457, v460, v459);
      v461 = sub_22B36050C();
      v462 = sub_22B360D0C();
      if (os_log_type_enabled(v461, v462))
      {
        v463 = swift_slowAlloc();
        *v463 = 134217984;
        *(v463 + 4) = v545;
        _os_log_impl(&dword_22B116000, v461, v462, "[MOCK GENERATE] Saving Remaining batch at counter %ld", v463, 0xCu);
        MEMORY[0x23188F650](v463, -1, -1);
      }

      v464 = *(v1 + 1192);
      v465 = *(v1 + 1184);
      v466 = *(v1 + 1176);

      (*(v465 + 8))(v464, v466);
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v467 = swift_task_alloc();
      *(v1 + 1648) = v467;
      *v467 = v1;
      v468 = sub_22B27FBDC;
LABEL_143:
      v467[1] = v468;
      v476 = *(v1 + 688);
      v477 = *(v1 + 680);

      return sub_22B30C418(v542, v477, v476);
    }

    v542 = v178;
    if (__ROR8__(0x8F5C28F5C28F5C29 * v456 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v634(*(v1 + 1208), v635, *(v1 + 1176));
      v469 = sub_22B36050C();
      v470 = sub_22B360D0C();
      if (os_log_type_enabled(v469, v470))
      {
        v472 = swift_slowAlloc();
        *v472 = 134217984;
        *(v472 + 4) = v456;
        _os_log_impl(&dword_22B116000, v469, v470, "[MOCK GENERATE] Saving batch at counter %ld", v472, 0xCu);
        MEMORY[0x23188F650](v472, -1, -1);
      }

      v473 = *(v1 + 1208);
      v474 = *(v1 + 1184);
      v475 = *(v1 + 1176);

      *(v1 + 1600) = (v474 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v636(v473, v475);
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v467 = swift_task_alloc();
      *(v1 + 1608) = v467;
      *v467 = v1;
      v468 = sub_22B2744C8;
      goto LABEL_143;
    }
  }

  *(v1 + 1640) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v1 + 1632) = v728;
  *(v1 + 1624) = v542;
  if (v542 >> 62)
  {
    goto LABEL_150;
  }

  if (*((v542 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_131;
  }

LABEL_151:
  v479 = *(v1 + 1632);
  v480 = *(v1 + 1448);
  v481 = *(v1 + 1248);
  (*(*(v1 + 1520) + 8))(*(v1 + 1528), *(v1 + 1512));

  v479(v480, v481);

  v482 = *(v1 + 8);

  return v482(v541);
}

uint64_t sub_22B27FBDC(char a1)
{
  v4 = *v2;
  *(v4 + 1656) = v1;

  v5 = *(v4 + 704);
  if (v1)
  {
    v6 = sub_22B28020C;
  }

  else
  {
    *(v4 + 1702) = a1 & 1;
    v6 = sub_22B27FD1C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B27FD1C()
{
  v6 = *(v0 + 1702);
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1248);
  (*(*(v0 + 1520) + 8))(*(v0 + 1528), *(v0 + 1512));

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_22B28020C()
{
  v1 = v0[204];
  v2 = v0[181];
  v3 = v0[156];
  (*(v0[190] + 8))(v0[191], v0[189]);
  v1(v2, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_22B2806F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 648) = v8;
  *(v9 + 2016) = v30;
  *(v9 + 2015) = v29;
  *(v9 + 2014) = v28;
  *(v9 + 640) = v27;
  *(v9 + 2013) = v26;
  *(v9 + 624) = v25;
  *(v9 + 616) = a8;
  *(v9 + 2012) = a7;
  *(v9 + 608) = a6;
  *(v9 + 600) = a5;
  *(v9 + 592) = a4;
  *(v9 + 584) = a3;
  *(v9 + 576) = a2;
  *(v9 + 568) = a1;
  v10 = sub_22B35FA9C();
  *(v9 + 656) = v10;
  *(v9 + 664) = *(v10 - 8);
  *(v9 + 672) = swift_task_alloc();
  v11 = sub_22B35FA4C();
  *(v9 + 680) = v11;
  *(v9 + 688) = *(v11 - 8);
  *(v9 + 696) = swift_task_alloc();
  v12 = sub_22B35F9FC();
  *(v9 + 704) = v12;
  *(v9 + 712) = *(v12 - 8);
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();
  v13 = sub_22B35F9DC();
  *(v9 + 736) = v13;
  *(v9 + 744) = *(v13 - 8);
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA350, &unk_22B364020);
  *(v9 + 768) = swift_task_alloc();
  *(v9 + 776) = swift_task_alloc();
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  v14 = sub_22B35FC0C();
  *(v9 + 800) = v14;
  *(v9 + 808) = *(v14 - 8);
  *(v9 + 816) = swift_task_alloc();
  v15 = sub_22B35DF9C();
  *(v9 + 824) = v15;
  *(v9 + 832) = *(v15 - 8);
  *(v9 + 840) = swift_task_alloc();
  v16 = sub_22B35E04C();
  *(v9 + 848) = v16;
  *(v9 + 856) = *(v16 - 8);
  *(v9 + 864) = swift_task_alloc();
  v17 = sub_22B36052C();
  *(v9 + 872) = v17;
  *(v9 + 880) = *(v17 - 8);
  *(v9 + 888) = swift_task_alloc();
  *(v9 + 896) = swift_task_alloc();
  *(v9 + 904) = swift_task_alloc();
  *(v9 + 912) = swift_task_alloc();
  *(v9 + 920) = swift_task_alloc();
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = *(type metadata accessor for CDUsagePointRecords(0) - 8);
  *(v9 + 944) = swift_task_alloc();
  v18 = sub_22B35F84C();
  *(v9 + 952) = v18;
  *(v9 + 960) = *(v18 - 8);
  *(v9 + 968) = swift_task_alloc();
  sub_22B3603AC();
  *(v9 + 976) = swift_task_alloc();
  v19 = sub_22B35F7CC();
  *(v9 + 984) = v19;
  *(v9 + 992) = *(v19 - 8);
  *(v9 + 1000) = swift_task_alloc();
  *(v9 + 1008) = swift_task_alloc();
  v20 = sub_22B35DF1C();
  *(v9 + 1016) = v20;
  *(v9 + 1024) = *(v20 - 8);
  *(v9 + 1032) = swift_task_alloc();
  *(v9 + 1040) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v9 + 1048) = swift_task_alloc();
  *(v9 + 1056) = swift_task_alloc();
  *(v9 + 1064) = swift_task_alloc();
  *(v9 + 1072) = swift_task_alloc();
  *(v9 + 1080) = swift_task_alloc();
  v21 = sub_22B35DE9C();
  *(v9 + 1088) = v21;
  *(v9 + 1096) = *(v21 - 8);
  *(v9 + 1104) = swift_task_alloc();
  *(v9 + 1112) = swift_task_alloc();
  *(v9 + 1120) = swift_task_alloc();
  *(v9 + 1128) = swift_task_alloc();
  *(v9 + 1136) = swift_task_alloc();
  *(v9 + 1144) = swift_task_alloc();
  *(v9 + 1152) = swift_task_alloc();
  *(v9 + 1160) = swift_task_alloc();
  *(v9 + 1168) = swift_task_alloc();
  *(v9 + 1176) = swift_task_alloc();
  *(v9 + 1184) = swift_task_alloc();
  *(v9 + 1192) = swift_task_alloc();
  *(v9 + 1200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  *(v9 + 1208) = swift_task_alloc();
  *(v9 + 1216) = swift_task_alloc();
  v22 = sub_22B35E0BC();
  *(v9 + 1224) = v22;
  *(v9 + 1232) = *(v22 - 8);
  *(v9 + 1240) = swift_task_alloc();
  *(v9 + 1248) = swift_task_alloc();
  *(v9 + 1256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B280EF0, v8, 0);
}

uint64_t sub_22B280EF0(uint64_t a1)
{
  if (sub_22B35EEBC())
  {
    v2 = swift_task_alloc();
    v1[158] = v2;
    *v2 = v1;
    v2[1] = sub_22B281290;
    v3 = v1[72];
    v4 = v1[71];

    return sub_22B22250C(v4, v3, 0, 0);
  }

  else
  {

    v6 = v1[1];

    return v6(0);
  }
}

uint64_t sub_22B281290(uint64_t a1)
{
  v2 = *(*v1 + 648);
  *(*v1 + 1272) = a1;

  return MEMORY[0x2822009F8](sub_22B2813A8, v2, 0);
}

uint64_t sub_22B2813A8()
{
  v1 = v0[159];
  if (!v1)
  {
    sub_22B134CDC();
    swift_allocError();
    *v14 = 10;
    swift_willThrow();
LABEL_10:

    v15 = v0[1];

    return v15(0);
  }

  v2 = v1;
  v3 = sub_22B35F12C();
  v5 = v4;

  v0[160] = v3;
  v0[161] = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v0[162] = sub_22B35F43C();
  v0[163] = v6;
  if (!v6)
  {

LABEL_8:
    sub_22B134CDC();
    swift_allocError();
    v13 = 12;
    goto LABEL_9;
  }

  v7 = v0[154];
  v8 = v0[153];
  v9 = v0[152];
  sub_22B35F41C();
  sub_22B35E05C();

  v10 = *(v7 + 48);
  v0[164] = v10;
  v0[165] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v9, 1, v8) == 1)
  {
    v11 = v0[152];

    sub_22B123284(v11, &unk_27D8BA080, &unk_22B364280);
    sub_22B134CDC();
    swift_allocError();
    v13 = 17;
LABEL_9:
    *v12 = v13;
    swift_willThrow();

    goto LABEL_10;
  }

  v17 = v0[157];
  v18 = v0[154];
  v19 = v0[153];
  v20 = v0[152];
  v21 = v0[150];
  v22 = v0[148];
  v23 = v0[137];
  v24 = v0[136];
  v63 = v0[74];
  v25 = *(v18 + 32);
  v0[166] = v25;
  v0[167] = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v25(v17, v20, v19);
  v26 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v0[168] = v26;
  v27 = sub_22B36081C();
  [v26 setDateFormat_];

  v28 = sub_22B35E09C();
  [v26 setTimeZone_];

  sub_22B35DE8C();
  sub_22B35F5CC();
  sub_22B35DDCC();
  v29 = *(v23 + 16);
  v0[169] = v29;
  v0[170] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v22, v21, v24);
  sub_22B35F5CC();
  sub_22B35DDCC();
  if (v63)
  {
    v30 = sub_22B36081C();
    v31 = [v26 dateFromString_];

    if (v31)
    {
      v32 = v0[149];
      v62 = v0[146];
      v33 = v0[145];
      v34 = v0[137];
      v35 = v0[136];
      v36 = v29;
      v37 = v0[135];
      sub_22B35DE5C();

      v64 = *(v34 + 8);
      v64(v32, v35);
      v38 = *(v34 + 32);
      v38(v37, v33, v35);
      (*(v34 + 56))(v37, 0, 1, v35);
      v39 = v37;
      v29 = v36;
      v38(v62, v39, v35);
    }

    else
    {
      v40 = v0[149];
      v41 = v0[137];
      v42 = v0[136];
      v43 = v0[135];
      (*(v41 + 56))(v43, 1, 1, v42);
      sub_22B35F5CC();
      sub_22B35DDCC();
      v64 = *(v41 + 8);
      v64(v40, v42);
      if ((*(v41 + 48))(v43, 1, v42) != 1)
      {
        sub_22B123284(v0[135], &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    v44 = *(v0[137] + 32);
    v44(v0[149], v0[146], v0[136]);
    v45 = sub_22B36081C();
    v46 = [v26 dateFromString_];

    if (v46)
    {
      v47 = v0[148];
      v48 = v0[136];
      sub_22B35DE5C();

      v49 = v64;
      v64(v47, v48);
    }

    else
    {
      v50 = v0[150];
      v51 = v0[144];
      v52 = v0[136];
      v49 = v64;
      v64(v0[148], v52);
      v29(v51, v50, v52);
    }

    v44(v0[148], v0[144], v0[136]);
    if (sub_22B35DDEC())
    {
      v53 = v0[150];
      v54 = v0[148];
      v55 = v0[136];
      v49(v54, v55);
      v29(v54, v53, v55);
    }

    v56 = v0[147];
    v57 = v0[145];
    v58 = v0[136];
    sub_22B35F5CC();
    sub_22B35DDCC();
    v49(v56, v58);
    v44(v56, v57, v58);
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v0[171] = qword_28140BDD8;
  v59 = swift_task_alloc();
  v0[172] = v59;
  *v59 = v0;
  v59[1] = sub_22B281D7C;
  v60 = v0[72];
  v61 = v0[71];

  return sub_22B225ED0(v61, v60, 1);
}

uint64_t sub_22B281D7C(uint64_t a1)
{
  v3 = *v2;
  v3[173] = a1;
  v3[174] = v1;

  if (v1)
  {
    v4 = v3[81];

    v5 = sub_22B288EFC;
    v6 = v4;
  }

  else
  {
    v6 = v3[81];
    v5 = sub_22B281EB4;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22B281EB4()
{
  v1 = *(v0 + 1384);

  v2 = qword_28140B2D8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 1384);
  v5 = qword_28140BDD0;
  *(v0 + 1400) = qword_28140BDD0;
  v6 = sub_22B35F04C();
  v8 = v7;

  *(v0 + 1408) = v6;
  *(v0 + 1416) = v8;

  return MEMORY[0x2822009F8](sub_22B281F84, v5, 0);
}

uint64_t sub_22B281F84()
{
  v1 = v0[174];
  sub_22B143598(v0[176], v0[177], 0);
  v0[178] = v2;
  v0[179] = v1;
  if (v1)
  {
    v3 = v0[81];

    v4 = sub_22B2892B4;
    v5 = v3;
  }

  else
  {
    v6 = v0[81];

    v4 = sub_22B282054;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22B282054(uint64_t a1)
{
  v68 = *(v1 + 1352);
  v2 = *(v1 + 1160);
  v3 = *(v1 + 1096);
  v4 = *(v1 + 1088);
  v62 = *(v1 + 1072);
  v70 = *(v1 + 1064);
  v5 = *(v1 + 1040);
  v6 = *(v1 + 1024);
  v7 = *(v1 + 1016);
  v66 = *(v1 + 1176);
  sub_22B35DF0C();
  *(v1 + 1440) = sub_22B35DECC();
  *(v1 + 1448) = v8;
  v9 = *(v6 + 8);
  *(v1 + 1456) = v9;
  *(v1 + 1464) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74 = v9;
  v9(v5, v7);
  v10 = *(v3 + 56);
  *(v1 + 1472) = v10;
  *(v1 + 1480) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v62, 1, 1, v4);
  sub_22B35F7BC();

  sub_22B35F76C();
  v68(v2, v66, v4);
  sub_22B36039C();
  sub_22B35F7AC();
  sub_22B170BE0(v62, v70, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v3 + 48))(v70, 1, v4) == 1)
  {
    sub_22B123284(*(v1 + 1064), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v11 = *(v1 + 1352);
    v12 = *(v1 + 1160);
    v13 = *(v1 + 1144);
    v14 = *(v1 + 1096);
    v15 = *(v1 + 1088);
    (*(v14 + 32))(v13, *(v1 + 1064), v15);
    v11(v12, v13, v15);
    sub_22B36039C();
    sub_22B35F78C();
    (*(v14 + 8))(v13, v15);
  }

  v71 = *(v1 + 1432);
  v64 = *(v1 + 1352);
  v58 = *(v1 + 1288);
  v57 = *(v1 + 1280);
  v63 = *(v1 + 1200);
  v60 = *(v1 + 1160);
  v61 = *(v1 + 1088);
  v16 = *(v1 + 1040);
  v17 = *(v1 + 1008);
  v18 = *(v1 + 992);
  v19 = *(v1 + 984);
  v59 = *(v1 + 1016);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABB0, &qword_22B3669B8);
  *(v1 + 1488) = *(v18 + 72);
  v20 = *(v18 + 80);
  *(v1 + 1992) = v20;
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B3634B0;
  v23 = *(v18 + 16);
  *(v1 + 1496) = v23;
  *(v1 + 1504) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24 = v23(v22 + v21, v17, v19);
  v69 = MEMORY[0x23188EEB0](v24);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  MEMORY[0x23188E270](v57, v58);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35DF0C();
  v25 = sub_22B35DECC();
  v27 = v26;
  v74(v16, v59);
  MEMORY[0x23188E270](v25, v27);

  sub_22B35F83C();

  sub_22B35F82C();

  sub_22B35F7DC();

  sub_22B35F71C();
  v64(v60, v63, v61);
  sub_22B36039C();
  sub_22B35F73C();
  sub_22B35F7FC();
  sub_22B35F81C();
  sub_22B28C170(&qword_27D8BABB8, MEMORY[0x277D07448], MEMORY[0x277D07440]);
  v28 = sub_22B36042C();
  if (v71)
  {
    (*(*(v1 + 960) + 8))(*(v1 + 968), *(v1 + 952));

    objc_autoreleasePoolPop(v69);
    v30 = *(v1 + 1424);
    v31 = *(v1 + 1384);
    v32 = *(v1 + 1344);
    v80 = *(v1 + 1256);
    v33 = *(v1 + 1232);
    v75 = *(v1 + 1200);
    v77 = *(v1 + 1224);
    v72 = *(v1 + 1192);
    v34 = *(v1 + 1184);
    v35 = *(v1 + 1176);
    v36 = *(v1 + 1096);
    v37 = *(v1 + 1088);
    v38 = *(v1 + 1072);
    (*(*(v1 + 992) + 8))(*(v1 + 1008), *(v1 + 984));
    sub_22B123284(v38, &qword_27D8BA340, &qword_22B363FB0);

    v39 = *(v36 + 8);
    v39(v35, v37);
    v39(v34, v37);
    v39(v72, v37);
    v39(v75, v37);
    (*(v33 + 8))(v80, v77);

    v40 = *(v1 + 8);

    return v40(0);
  }

  else
  {
    v73 = *(v1 + 1280);
    v76 = *(v1 + 1288);
    v78 = *(v1 + 960);
    v79 = *(v1 + 952);
    v81 = *(v1 + 968);
    v65 = v29;
    v67 = v28;
    *(v1 + 1512) = sub_22B128014(0, &qword_27D8BAB10, 0x277CBC5D0);
    v42 = objc_opt_self();
    *(v1 + 1520) = v42;

    v43 = [v42 defaultRecordZone];
    v44 = [v43 zoneID];

    v45 = sub_22B360CBC();
    *(v1 + 1528) = sub_22B128014(0, &qword_27D8BABC0, 0x277CBC5A0);
    v46 = v45;
    v47 = sub_22B360F4C();
    *(v1 + 1536) = v47;
    v48 = [v47 recordID];
    v49 = [v48 zoneID];

    v50 = sub_22B360CBC();
    [v47 setRecordID_];

    sub_22B144B30(v67, v65);
    sub_22B360EBC();

    MEMORY[0x23188E270](46, 0xE100000000000000);
    MEMORY[0x23188E270](v73, v76);
    sub_22B360EBC();
    sub_22B12F174(v67, v65);

    (*(v78 + 8))(v81, v79);
    objc_autoreleasePoolPop(v69);
    if (qword_2814096B8 != -1)
    {
      swift_once();
    }

    v51 = *(v1 + 1304);
    v52 = *(v1 + 1288);
    *(v1 + 1544) = qword_28140BCE8;
    v53 = swift_task_alloc();
    *(v1 + 1552) = v53;
    *v53 = v1;
    v53[1] = sub_22B282C00;
    v54 = *(v1 + 1424);
    v55 = *(v1 + 1296);
    v56 = *(v1 + 1280);

    return sub_22B3297C0(v47, v56, v52, v55, v51, v54);
  }
}

uint64_t sub_22B282C00()
{
  v2 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v3 = *(v2 + 648);

    v4 = sub_22B283040;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 648);
    v4 = sub_22B282D48;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22B282D48()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v5 = *(v0 + 2015);
  v6 = *(v3 + 8);
  *(v0 + 1568) = v6;
  *(v0 + 1576) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);
  if (v5)
  {
    v7 = *(v0 + 1456);
    v8 = *(v0 + 1040);
    v9 = *(v0 + 1016);
    v10 = *(v0 + 2014);
    v11 = *(v0 + 640);
    v12 = *(v0 + 2013);
    v13 = *(v0 + 2012);
    sub_22B35DF0C();
    sub_22B35DECC();
    *(v0 + 1624) = v14;
    v7(v8, v9);
    v15 = *(v0 + 1304);
    v16 = *(v0 + 1288);
    v17 = *(v0 + 616);
    if (v10 != 1 || v11 || (v12 & 1) != 0 || (v13 & 1) != 0)
    {
      v27 = swift_task_alloc();
      *(v0 + 1680) = v27;
      *v27 = v0;
      v27[1] = sub_22B284AB4;

      JUMPOUT(0x22B26E170);
    }

    v18 = swift_task_alloc();
    *(v0 + 1632) = v18;
    *v18 = v0;
    v18[1] = sub_22B2841CC;
    v19 = *(v0 + 1440);
    v20 = *(v0 + 1296);
    v21 = *(v0 + 1280);
    v22 = *(v0 + 1200);
    v23 = *(v0 + 1192);
    v24 = *(v0 + 1184);

    return sub_22B26310C(v20, v15, v21, v16, v23, v24, v22, v19, v17);
  }

  else
  {
    v26 = *(v0 + 1544);

    return MEMORY[0x2822009F8](sub_22B283440, v26, 0);
  }
}

uint64_t sub_22B283040()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1344);
  v16 = *(v0 + 1256);
  v4 = *(v0 + 1232);
  v14 = *(v0 + 1200);
  v15 = *(v0 + 1224);
  v13 = *(v0 + 1192);
  v5 = *(v0 + 1184);
  v6 = *(v0 + 1176);
  v7 = *(v0 + 1096);
  v8 = *(v0 + 1088);
  v9 = *(v0 + 1072);
  (*(*(v0 + 992) + 8))(*(v0 + 1008), *(v0 + 984));
  sub_22B123284(v9, &qword_27D8BA340, &qword_22B363FB0);

  v10 = *(v7 + 8);
  v10(v6, v8);
  v10(v5, v8);
  v10(v13, v8);
  v10(v14, v8);
  (*(v4 + 8))(v16, v15);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22B283440()
{
  v1 = v0[195];
  sub_22B32C2B8(v0[160], v0[161], v0[162], v0[163], v0[180], v0[181]);
  v0[198] = v2;
  v0[199] = v1;
  if (v1)
  {
    v3 = v0[81];
    swift_bridgeObjectRelease_n();

    v4 = sub_22B28966C;
    v5 = v3;
  }

  else
  {
    v6 = v0[81];

    v4 = sub_22B283520;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22B283520()
{
  v69 = v0;
  v1 = *(v0 + 1584);
  if (v1)
  {
    v60 = *(v1 + 16);
    if (v60)
    {
      v2 = 0;
      v57 = *(v0 + 936);
      v58 = *(v0 + 944);
      v56 = v1 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v3 = MEMORY[0x277D84F90];
      v55 = *(v0 + 1584);
      while (v2 < *(v1 + 16))
      {
        v4 = *(v0 + 944);
        sub_22B23E004(v56 + *(v57 + 72) * v2, v4);
        v5 = *(v58 + 32);

        sub_22B26DB98(v4);
        v65 = *(v5 + 16);
        if (v65)
        {
          v63 = v2;
          v6 = 0;
          v7 = v5 + ((*(v0 + 1992) + 32) & ~*(v0 + 1992));
          do
          {
            v8 = *(v0 + 1568);
            v9 = *(v0 + 1000);
            v10 = *(v0 + 984);
            (*(v0 + 1496))(v9, v7 + *(v0 + 1488) * v6, v10);
            v11 = sub_22B35F75C();
            v13 = v12;
            v8(v9, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_22B32CD20(0, *(v3 + 2) + 1, 1, v3);
            }

            v15 = *(v3 + 2);
            v14 = *(v3 + 3);
            if (v15 >= v14 >> 1)
            {
              v3 = sub_22B32CD20((v14 > 1), v15 + 1, 1, v3);
            }

            ++v6;
            *(v3 + 2) = v15 + 1;
            v16 = &v3[16 * v15];
            *(v16 + 4) = v11;
            *(v16 + 5) = v13;
          }

          while (v65 != v6);

          v1 = v55;
          v2 = v63;
        }

        else
        {
        }

        if (++v2 == v60)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
LABEL_19:
      *(v0 + 1600) = v3;

      if (qword_28140A0C8 == -1)
      {
        goto LABEL_20;
      }
    }

    swift_once();
LABEL_20:
    v27 = *(v0 + 928);
    v28 = *(v0 + 880);
    v29 = *(v0 + 872);
    v30 = __swift_project_value_buffer(v29, qword_28140BD10);
    swift_beginAccess();
    (*(v28 + 16))(v27, v30, v29);

    v31 = sub_22B36050C();
    v32 = sub_22B360D2C();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 928);
    v35 = *(v0 + 880);
    v36 = *(v0 + 872);
    if (v33)
    {
      v37 = *(v0 + 576);
      v38 = *(v0 + 568);
      v67 = *(v0 + 928);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_22B1A7B20(v38, v37, v68);
      *(v39 + 12) = 2080;

      v42 = MEMORY[0x23188E390](v41, MEMORY[0x277D837D0]);
      v44 = v43;

      v45 = sub_22B1A7B20(v42, v44, v68);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_22B116000, v31, v32, "[MOCK GENERATOR] Will refreshTariffProfiles\n%s: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v39, -1, -1);

      (*(v35 + 8))(v67, v36);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }

    v46 = *(v0 + 1472);
    v47 = *(v0 + 1088);
    v48 = *(v0 + 1056);
    v49 = *(v0 + 1048);
    (*(v0 + 1352))(v48, *(v0 + 1184), v47);
    v46(v48, 0, 1, v47);

    sub_22B35F5BC();
    sub_22B35DDCC();
    v46(v49, 0, 1, v47);
    v50 = swift_task_alloc();
    *(v0 + 1608) = v50;
    *v50 = v0;
    v50[1] = sub_22B283D98;
    v51 = *(v0 + 1056);
    v52 = *(v0 + 1048);
    v53 = *(v0 + 576);
    v54 = *(v0 + 568);

    return sub_22B2263A0(v54, v53, v3, v51, v52);
  }

  v17 = *(v0 + 1424);
  v18 = *(v0 + 1384);
  v19 = *(v0 + 1344);
  v20 = *(v0 + 1232);
  v64 = *(v0 + 1224);
  v66 = *(v0 + 1256);
  v61 = *(v0 + 1192);
  v62 = *(v0 + 1200);
  v59 = *(v0 + 1184);
  v21 = *(v0 + 1176);
  v22 = *(v0 + 1096);
  v23 = *(v0 + 1088);

  v24 = *(v22 + 8);
  v24(v21, v23);
  v24(v59, v23);
  v24(v61, v23);
  v24(v62, v23);
  (*(v20 + 8))(v66, v64);

  v25 = *(v0 + 8);

  return v25(0);
}

uint64_t sub_22B283D98()
{
  v2 = *v1;
  *(*v1 + 1616) = v0;

  if (v0)
  {
    v3 = v2[132];
    v4 = v2[131];
    v5 = v2[81];

    sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
    v6 = sub_22B289A34;
  }

  else
  {
    v7 = v2[132];
    v8 = v2[131];
    v5 = v2[81];

    sub_22B123284(v8, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
    v6 = sub_22B283F74;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B283F74()
{

  v1 = *(v0 + 1456);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 2014);
  v5 = *(v0 + 640);
  v6 = *(v0 + 2013);
  v7 = *(v0 + 2012);
  sub_22B35DF0C();
  sub_22B35DECC();
  *(v0 + 1624) = v8;
  v1(v2, v3);
  v9 = *(v0 + 1304);
  v10 = *(v0 + 1288);
  v11 = *(v0 + 616);
  if (v4 != 1 || v5 || (v6 & 1) != 0 || (v7 & 1) != 0)
  {
    v20 = swift_task_alloc();
    *(v0 + 1680) = v20;
    *v20 = v0;
    v20[1] = sub_22B284AB4;

    JUMPOUT(0x22B26E170);
  }

  v12 = swift_task_alloc();
  *(v0 + 1632) = v12;
  *v12 = v0;
  v12[1] = sub_22B2841CC;
  v13 = *(v0 + 1440);
  v14 = *(v0 + 1296);
  v15 = *(v0 + 1280);
  v16 = *(v0 + 1200);
  v17 = *(v0 + 1192);
  v18 = *(v0 + 1184);

  return sub_22B26310C(v14, v9, v15, v10, v17, v18, v16, v13, v11);
}

uint64_t sub_22B2841CC()
{
  v2 = *v1;
  *(*v1 + 1640) = v0;

  v3 = *(v2 + 648);

  if (v0)
  {
    v4 = sub_22B289E08;
  }

  else
  {
    v4 = sub_22B284314;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B284314()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(inited + 32) = 0xD000000000000016;
  v2 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000022B36CE20;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v3 = sub_22B321AAC(inited);
  v0[206] = v3;
  swift_setDeallocating();
  sub_22B123284(v2, &unk_27D8BAD00, &qword_22B3656C0);
  v4 = swift_task_alloc();
  v0[207] = v4;
  *v4 = v0;
  v4[1] = sub_22B28444C;
  v5 = v0[72];
  v6 = v0[71];

  return sub_22B2244D0(v6, v5, v3);
}

uint64_t sub_22B28444C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1664) = v1;

  if (v1)
  {
    v5 = *(v4 + 648);
    v6 = sub_22B28A4AC;
  }

  else
  {
    v7 = *(v4 + 648);

    *(v4 + 1672) = a1;
    v6 = sub_22B28458C;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22B28458C()
{
  v1 = *(v0 + 1664);
  *(v0 + 1760) = *(v0 + 1672);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1088);
  v47 = v1;
  v6 = *(v0 + 840);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v2(*(v0 + 1136), *(v0 + 1192), v5);
  v2(v4, v3, v5);
  (*(v7 + 104))(v6, *MEMORY[0x277CC9830], v8);
  sub_22B35DFAC();
  (*(v7 + 8))(v6, v8);
  sub_22B35F41C();
  if (v9)
  {
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1224);
    v12 = *(v0 + 1208);
    sub_22B35E05C();

    if (v10(v12, 1, v11) == 1)
    {
      sub_22B123284(*(v0 + 1208), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v13 = *(v0 + 1248);
      v14 = *(v0 + 1240);
      v15 = *(v0 + 1232);
      v16 = *(v0 + 1224);
      (*(v0 + 1328))(v13, *(v0 + 1208), v16);
      (*(v15 + 16))(v14, v13, v16);
      sub_22B35E01C();
      (*(v15 + 8))(v13, v16);
    }
  }

  (*(v0 + 1352))(*(v0 + 1120), *(v0 + 1136), *(v0 + 1088));
  v17 = MEMORY[0x277D84F90];
  *(v0 + 560) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v0 + 1880) = v17;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 1304);
    v19 = *(v0 + 1288);
    v20 = swift_task_alloc();
    *(v0 + 1888) = v20;
    *v20 = v0;
    v20[1] = sub_22B287CC8;
    v21 = *(v0 + 1424);
    v22 = *(v0 + 1296);
    v23 = *(v0 + 1280);
    v24 = MEMORY[0x277D84F90];

    sub_22B1D59F4(v24, v23, v19, v22, v18, v21);
  }

  else
  {
    *(v0 + 1996) = *MEMORY[0x277D074B0];
    v25 = MEMORY[0x277D07468];
    *(v0 + 2000) = *MEMORY[0x277D074A8];
    *(v0 + 2004) = *v25;
    *(v0 + 2008) = *MEMORY[0x277D07470];
    *(v0 + 1768) = v17;
    v26 = *(v0 + 1200);
    v27 = *(v0 + 1136);
    v28 = *(v0 + 1120);
    v29 = *(v0 + 864);
    v30 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v29, v28, v27, v26);
    *(v0 + 1776) = v47;
    objc_autoreleasePoolPop(v30);
    if (!v47)
    {
      if (qword_27D8B9F60 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 1996);
      v32 = *(v0 + 1352);
      v33 = *(v0 + 1304);
      v34 = *(v0 + 1288);
      v35 = *(v0 + 1160);
      v36 = *(v0 + 1136);
      v37 = *(v0 + 1088);
      v38 = *(v0 + 816);
      v39 = *(v0 + 808);
      v40 = *(v0 + 800);
      *(v0 + 1784) = qword_27D8BB198;
      v32(v35, v36, v37);
      v41 = *(v39 + 104);
      *(v0 + 1792) = v41;
      *(v0 + 1800) = (v39 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v41(v38, v31, v40);
      v42 = swift_task_alloc();
      *(v0 + 1808) = v42;
      *v42 = v0;
      v42[1] = sub_22B2862E4;
      v43 = *(v0 + 1296);
      v44 = *(v0 + 1280);
      v45 = *(v0 + 1160);
      v46 = *(v0 + 1120);

      sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v45, v46, v44, v34, v43, v33);
    }
  }
}

uint64_t sub_22B284AB4(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2017) = a1;
  *(v4 + 1688) = v1;

  v5 = *(v3 + 648);

  if (v1)
  {
    v6 = sub_22B284F70;
  }

  else
  {
    v6 = sub_22B284C08;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B284C08()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 920);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 2017);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_22B116000, v5, v6, "[MOCK GENERATOR] Interval Readings generated with hasExportedEnergy %{BOOL}d", v8, 8u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = *(v0 + 2017);
  v10 = *(v0 + 920);
  v11 = *(v0 + 880);
  v12 = *(v0 + 872);

  (*(v11 + 8))(v10, v12);
  v13 = sub_22B35F02C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  if ((v13 & 1) != 0 || !v9)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3634B0;
    *(inited + 32) = 0xD000000000000016;
    v21 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x800000022B36CE20;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v17 = sub_22B321AAC(inited);
    *(v0 + 1728) = v17;
    swift_setDeallocating();
    sub_22B123284(v21, &unk_27D8BAD00, &qword_22B3656C0);
    v18 = swift_task_alloc();
    *(v0 + 1736) = v18;
    *v18 = v0;
    v19 = sub_22B285C7C;
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_22B3634C0;
    *(v14 + 32) = 0xD000000000000011;
    *(v14 + 40) = 0x800000022B36CEE0;
    v15 = MEMORY[0x277D839B0];
    v16 = MEMORY[0x277D837D0];
    *(v14 + 48) = 1;
    *(v14 + 72) = v15;
    *(v14 + 80) = 0xD000000000000016;
    *(v14 + 120) = v16;
    *(v14 + 88) = 0x800000022B36CE20;
    *(v14 + 96) = 0;
    *(v14 + 104) = 0xE000000000000000;
    v17 = sub_22B321AAC(v14);
    *(v0 + 1696) = v17;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
    swift_arrayDestroy();
    v18 = swift_task_alloc();
    *(v0 + 1704) = v18;
    *v18 = v0;
    v19 = sub_22B285614;
  }

  v18[1] = v19;
  v22 = *(v0 + 576);
  v23 = *(v0 + 568);

  return sub_22B2244D0(v23, v22, v17);
}

uint64_t sub_22B284F70()
{
  v1 = *(v0 + 1688);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B116000, v7, v8, "[MOCK GENERATOR] Interval Readings error %@", v9, 0xCu);
    sub_22B123284(v10, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));
  *(v0 + 1760) = *(v0 + 1384);
  v13 = *(v0 + 1352);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1128);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 840);
  v18 = *(v0 + 832);
  v19 = *(v0 + 824);
  v13(*(v0 + 1136), *(v0 + 1192), v16);
  v13(v15, v14, v16);
  (*(v18 + 104))(v17, *MEMORY[0x277CC9830], v19);
  sub_22B35DFAC();
  (*(v18 + 8))(v17, v19);
  sub_22B35F41C();
  if (v20)
  {
    v21 = *(v0 + 1312);
    v22 = *(v0 + 1224);
    v23 = *(v0 + 1208);
    sub_22B35E05C();

    if (v21(v23, 1, v22) == 1)
    {
      sub_22B123284(*(v0 + 1208), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v24 = *(v0 + 1248);
      v25 = *(v0 + 1240);
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      (*(v0 + 1328))(v24, *(v0 + 1208), v27);
      (*(v26 + 16))(v25, v24, v27);
      sub_22B35E01C();
      (*(v26 + 8))(v24, v27);
    }
  }

  (*(v0 + 1352))(*(v0 + 1120), *(v0 + 1136), *(v0 + 1088));
  v28 = MEMORY[0x277D84F90];
  *(v0 + 560) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v0 + 1880) = v28;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 1304);
    v30 = *(v0 + 1288);
    v31 = swift_task_alloc();
    *(v0 + 1888) = v31;
    *v31 = v0;
    v31[1] = sub_22B287CC8;
    v32 = *(v0 + 1424);
    v33 = *(v0 + 1296);
    v34 = *(v0 + 1280);
    v35 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v35, v34, v30, v33, v29, v32);
  }

  else
  {
    *(v0 + 1996) = *MEMORY[0x277D074B0];
    v37 = MEMORY[0x277D07468];
    *(v0 + 2000) = *MEMORY[0x277D074A8];
    *(v0 + 2004) = *v37;
    *(v0 + 2008) = *MEMORY[0x277D07470];
    *(v0 + 1768) = v28;
    v38 = *(v0 + 1200);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1120);
    v41 = *(v0 + 864);
    v42 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v41, v40, v39, v38);
    *(v0 + 1776) = 0;
    objc_autoreleasePoolPop(v42);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 1996);
    v44 = *(v0 + 1352);
    v45 = *(v0 + 1304);
    v46 = *(v0 + 1288);
    v47 = *(v0 + 1160);
    v48 = *(v0 + 1136);
    v49 = *(v0 + 1088);
    v50 = *(v0 + 816);
    v51 = *(v0 + 808);
    v52 = *(v0 + 800);
    *(v0 + 1784) = qword_27D8BB198;
    v44(v47, v48, v49);
    v53 = *(v51 + 104);
    *(v0 + 1792) = v53;
    *(v0 + 1800) = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53(v50, v43, v52);
    v54 = swift_task_alloc();
    *(v0 + 1808) = v54;
    *v54 = v0;
    v54[1] = sub_22B2862E4;
    v55 = *(v0 + 1296);
    v56 = *(v0 + 1280);
    v57 = *(v0 + 1160);
    v58 = *(v0 + 1120);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v57, v58, v56, v46, v55, v45);
  }
}

uint64_t sub_22B285614(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1712) = v1;

  if (v1)
  {
    v5 = *(v4 + 648);
    v6 = sub_22B28AB58;
  }

  else
  {
    v7 = *(v4 + 648);

    *(v4 + 1720) = a1;
    v6 = sub_22B285754;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22B285754()
{
  v1 = *(v0 + 1712);
  *(v0 + 1760) = *(v0 + 1720);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1088);
  v47 = v1;
  v6 = *(v0 + 840);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v2(*(v0 + 1136), *(v0 + 1192), v5);
  v2(v4, v3, v5);
  (*(v7 + 104))(v6, *MEMORY[0x277CC9830], v8);
  sub_22B35DFAC();
  (*(v7 + 8))(v6, v8);
  sub_22B35F41C();
  if (v9)
  {
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1224);
    v12 = *(v0 + 1208);
    sub_22B35E05C();

    if (v10(v12, 1, v11) == 1)
    {
      sub_22B123284(*(v0 + 1208), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v13 = *(v0 + 1248);
      v14 = *(v0 + 1240);
      v15 = *(v0 + 1232);
      v16 = *(v0 + 1224);
      (*(v0 + 1328))(v13, *(v0 + 1208), v16);
      (*(v15 + 16))(v14, v13, v16);
      sub_22B35E01C();
      (*(v15 + 8))(v13, v16);
    }
  }

  (*(v0 + 1352))(*(v0 + 1120), *(v0 + 1136), *(v0 + 1088));
  v17 = MEMORY[0x277D84F90];
  *(v0 + 560) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v0 + 1880) = v17;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 1304);
    v19 = *(v0 + 1288);
    v20 = swift_task_alloc();
    *(v0 + 1888) = v20;
    *v20 = v0;
    v20[1] = sub_22B287CC8;
    v21 = *(v0 + 1424);
    v22 = *(v0 + 1296);
    v23 = *(v0 + 1280);
    v24 = MEMORY[0x277D84F90];

    sub_22B1D59F4(v24, v23, v19, v22, v18, v21);
  }

  else
  {
    *(v0 + 1996) = *MEMORY[0x277D074B0];
    v25 = MEMORY[0x277D07468];
    *(v0 + 2000) = *MEMORY[0x277D074A8];
    *(v0 + 2004) = *v25;
    *(v0 + 2008) = *MEMORY[0x277D07470];
    *(v0 + 1768) = v17;
    v26 = *(v0 + 1200);
    v27 = *(v0 + 1136);
    v28 = *(v0 + 1120);
    v29 = *(v0 + 864);
    v30 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v29, v28, v27, v26);
    *(v0 + 1776) = v47;
    objc_autoreleasePoolPop(v30);
    if (!v47)
    {
      if (qword_27D8B9F60 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 1996);
      v32 = *(v0 + 1352);
      v33 = *(v0 + 1304);
      v34 = *(v0 + 1288);
      v35 = *(v0 + 1160);
      v36 = *(v0 + 1136);
      v37 = *(v0 + 1088);
      v38 = *(v0 + 816);
      v39 = *(v0 + 808);
      v40 = *(v0 + 800);
      *(v0 + 1784) = qword_27D8BB198;
      v32(v35, v36, v37);
      v41 = *(v39 + 104);
      *(v0 + 1792) = v41;
      *(v0 + 1800) = (v39 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v41(v38, v31, v40);
      v42 = swift_task_alloc();
      *(v0 + 1808) = v42;
      *v42 = v0;
      v42[1] = sub_22B2862E4;
      v43 = *(v0 + 1296);
      v44 = *(v0 + 1280);
      v45 = *(v0 + 1160);
      v46 = *(v0 + 1120);

      sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v45, v46, v44, v34, v43, v33);
    }
  }
}

uint64_t sub_22B285C7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1744) = v1;

  if (v1)
  {
    v5 = *(v4 + 648);
    v6 = sub_22B28B204;
  }

  else
  {
    v7 = *(v4 + 648);

    *(v4 + 1752) = a1;
    v6 = sub_22B285DBC;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22B285DBC()
{
  v1 = *(v0 + 1744);
  *(v0 + 1760) = *(v0 + 1752);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1088);
  v47 = v1;
  v6 = *(v0 + 840);
  v7 = *(v0 + 832);
  v8 = *(v0 + 824);
  v2(*(v0 + 1136), *(v0 + 1192), v5);
  v2(v4, v3, v5);
  (*(v7 + 104))(v6, *MEMORY[0x277CC9830], v8);
  sub_22B35DFAC();
  (*(v7 + 8))(v6, v8);
  sub_22B35F41C();
  if (v9)
  {
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1224);
    v12 = *(v0 + 1208);
    sub_22B35E05C();

    if (v10(v12, 1, v11) == 1)
    {
      sub_22B123284(*(v0 + 1208), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v13 = *(v0 + 1248);
      v14 = *(v0 + 1240);
      v15 = *(v0 + 1232);
      v16 = *(v0 + 1224);
      (*(v0 + 1328))(v13, *(v0 + 1208), v16);
      (*(v15 + 16))(v14, v13, v16);
      sub_22B35E01C();
      (*(v15 + 8))(v13, v16);
    }
  }

  (*(v0 + 1352))(*(v0 + 1120), *(v0 + 1136), *(v0 + 1088));
  v17 = MEMORY[0x277D84F90];
  *(v0 + 560) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v0 + 1880) = v17;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 1304);
    v19 = *(v0 + 1288);
    v20 = swift_task_alloc();
    *(v0 + 1888) = v20;
    *v20 = v0;
    v20[1] = sub_22B287CC8;
    v21 = *(v0 + 1424);
    v22 = *(v0 + 1296);
    v23 = *(v0 + 1280);
    v24 = MEMORY[0x277D84F90];

    sub_22B1D59F4(v24, v23, v19, v22, v18, v21);
  }

  else
  {
    *(v0 + 1996) = *MEMORY[0x277D074B0];
    v25 = MEMORY[0x277D07468];
    *(v0 + 2000) = *MEMORY[0x277D074A8];
    *(v0 + 2004) = *v25;
    *(v0 + 2008) = *MEMORY[0x277D07470];
    *(v0 + 1768) = v17;
    v26 = *(v0 + 1200);
    v27 = *(v0 + 1136);
    v28 = *(v0 + 1120);
    v29 = *(v0 + 864);
    v30 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v29, v28, v27, v26);
    *(v0 + 1776) = v47;
    objc_autoreleasePoolPop(v30);
    if (!v47)
    {
      if (qword_27D8B9F60 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 1996);
      v32 = *(v0 + 1352);
      v33 = *(v0 + 1304);
      v34 = *(v0 + 1288);
      v35 = *(v0 + 1160);
      v36 = *(v0 + 1136);
      v37 = *(v0 + 1088);
      v38 = *(v0 + 816);
      v39 = *(v0 + 808);
      v40 = *(v0 + 800);
      *(v0 + 1784) = qword_27D8BB198;
      v32(v35, v36, v37);
      v41 = *(v39 + 104);
      *(v0 + 1792) = v41;
      *(v0 + 1800) = (v39 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v41(v38, v31, v40);
      v42 = swift_task_alloc();
      *(v0 + 1808) = v42;
      *v42 = v0;
      v42[1] = sub_22B2862E4;
      v43 = *(v0 + 1296);
      v44 = *(v0 + 1280);
      v45 = *(v0 + 1160);
      v46 = *(v0 + 1120);

      sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v45, v46, v44, v34, v43, v33);
    }
  }
}

uint64_t sub_22B2862E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v4 = *(*v1 + 1096);
  v5 = *(*v1 + 1088);
  v6 = *(*v1 + 816);
  v7 = *(*v1 + 808);
  v8 = *(*v1 + 800);
  v9 = *(*v1 + 648);
  v2[227] = a1;

  v10 = *(v7 + 8);
  v2[228] = v10;
  v2[229] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = *(v4 + 8);
  v2[230] = v11;
  v2[231] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v5);

  return MEMORY[0x2822009F8](sub_22B2864DC, v9, 0);
}

void sub_22B2864DC()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  if (*(v0 + 1816))
  {
    v2 = *(v0 + 1816);
  }

  v3 = *(v2 + 64);
  v36 = v2 + 64;
  v38 = v2;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v7 = (63 - v5) >> 6;
  v8 = 0.0;
  v37 = v7;
  *(v0 + 1856) = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v1;
LABEL_11:
      v41 = *(v0 + 1840);
      v10 = *(v0 + 1096);
      v11 = *(v0 + 1088);
      v12 = *(v0 + 792);
      v44 = *(v0 + 784);
      v40 = *(v0 + 776);
      v42 = *(v0 + 760);
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v9 << 6);
      (*(v0 + 1352))(v12, *(v38 + 48) + *(v10 + 72) * v14, v11);
      v15 = *(v38 + 56);
      v16 = sub_22B35F00C();
      v17 = *(v16 - 8);
      v18 = v15 + *(v17 + 72) * v14;
      v19 = *(v42 + 48);
      (*(v17 + 16))(v12 + v19, v18, v16);
      v39 = *(v42 + 48);
      (*(v10 + 32))(v44, v12, v11);
      (*(v17 + 32))(v44 + v39, v12 + v19, v16);
      sub_22B170BE0(v44, v40, &qword_27D8BA350, &unk_22B364020);
      v20 = v40 + *(v42 + 48);
      sub_22B35EFEC();
      v22 = v21;
      sub_22B123284(v44, &qword_27D8BA350, &unk_22B364020);
      (*(v17 + 8))(v20, v16);
      v8 = v8 + v22;
      v41(v40, v11);
      v7 = v37;
      *(v0 + 1856) = v8;
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v36 + 8 * v9);
    ++v1;
    if (v6)
    {
      v1 = v9;
      goto LABEL_11;
    }
  }

  v23 = *(v0 + 1792);
  v24 = *(v0 + 2000);
  v25 = *(v0 + 1352);
  v45 = *(v0 + 1304);
  v43 = *(v0 + 1288);
  v26 = *(v0 + 1160);
  v27 = *(v0 + 1136);
  v28 = *(v0 + 1088);
  v29 = *(v0 + 816);
  v30 = *(v0 + 800);

  v25(v26, v27, v28);
  v23(v29, v24, v30);
  v31 = swift_task_alloc();
  *(v0 + 1864) = v31;
  *v31 = v0;
  v31[1] = sub_22B286880;
  v32 = *(v0 + 1296);
  v33 = *(v0 + 1280);
  v34 = *(v0 + 1160);
  v35 = *(v0 + 1120);

  sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v34, v35, v33, v43, v32, v45);
}

uint64_t sub_22B286880(uint64_t a1)
{
  v2 = *(*v1 + 1840);
  v3 = *(*v1 + 1824);
  v4 = *(*v1 + 1160);
  v5 = *(*v1 + 1088);
  v6 = *(*v1 + 816);
  v7 = *(*v1 + 800);
  v8 = *(*v1 + 648);
  *(*v1 + 1872) = a1;

  v3(v6, v7);
  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_22B286A70, v8, 0);
}

uint64_t sub_22B286A70()
{
  if (*(v0 + 1872))
  {
    v1 = *(v0 + 1872);
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v127 = MEMORY[0x23188EEB0]();
  v2 = 0;
  v139 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = 0.0;
  v143 = v6;
  v145 = v1;
  if (v5)
  {
    while (1)
    {
      v8 = v2;
LABEL_12:
      v153 = *(v160 + 1840);
      v9 = *(v160 + 1096);
      v158 = *(v160 + 1088);
      v10 = *(v160 + 784);
      v150 = *(v160 + 776);
      v11 = *(v160 + 768);
      v12 = *(v160 + 760);
      v13 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v14 = v13 | (v8 << 6);
      (*(v160 + 1352))(v11, *(v145 + 48) + *(v9 + 72) * v14);
      v15 = *(v145 + 56);
      v16 = sub_22B35F00C();
      v17 = *(v16 - 8);
      v18 = v15 + *(v17 + 72) * v14;
      v19 = *(v12 + 48);
      (*(v17 + 16))(v11 + v19, v18, v16);
      v20 = *(v12 + 48);
      (*(v9 + 32))(v10, v11, v158);
      (*(v17 + 32))(v10 + v20, v11 + v19, v16);
      sub_22B170BE0(v10, v150, &qword_27D8BA350, &unk_22B364020);
      v21 = *(v12 + 48);
      sub_22B35EFEC();
      v23 = v22;
      sub_22B123284(v10, &qword_27D8BA350, &unk_22B364020);
      (*(v17 + 8))(v150 + v21, v16);
      v7 = v7 + v23;
      v153(v150, v158);
      v6 = v143;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v8 = (v2 + 1);
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_31:
      sub_22B360A7C();
      goto LABEL_19;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v139 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }

  v124 = *(v160 + 1776);
  v94 = *(v160 + 2008);
  v24 = *(v160 + 2004);
  v93 = *(v160 + 2004);
  v149 = *(v160 + 1456);
  v133 = *(v160 + 1352);
  v102 = *(v160 + 1296);
  v104 = *(v160 + 1304);
  v106 = *(v160 + 1280);
  v108 = *(v160 + 1288);
  v113 = *(v160 + 1160);
  v116 = *(v160 + 1200);
  v96 = *(v160 + 1136);
  v97 = *(v160 + 1120);
  v154 = *(v160 + 1104);
  v156 = *(v160 + 1112);
  v128 = *(v160 + 1088);
  v110 = *(v160 + 1040);
  v95 = *(v160 + 1032);
  v136 = *(v160 + 1016);
  v25 = *(v160 + 752);
  v98 = *(v160 + 744);
  v100 = *(v160 + 736);
  v151 = *(v160 + 728);
  v159 = *(v160 + 720);
  v26 = *(v160 + 712);
  v119 = v26;
  v140 = *(v160 + 704);
  v27 = *(v160 + 696);
  v28 = *(v160 + 688);
  v92 = *(v160 + 680);

  sub_22B35F9CC();
  sub_22B35F9BC();
  v29 = *(v26 + 104);
  v29(v151, v24, v140);
  sub_22B35F96C();
  sub_22B35F99C();
  (*(v28 + 104))(v27, v94, v92);
  sub_22B35F9AC();

  sub_22B35F98C();

  sub_22B35F95C();
  sub_22B35DF0C();
  sub_22B35DECC();
  v149(v95, v136);
  v133(v156, v96, v128);
  v133(v154, v97, v128);
  v29(v159, v93, v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABC8, &qword_22B3669C8);
  v30 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_22B3634B0;
  (*(v98 + 16))(v146 + v30, v25, v100);
  *(v160 + 528) = v102;
  *(v160 + 536) = v104;

  MEMORY[0x23188E270](46, 0xE100000000000000);
  MEMORY[0x23188E270](v106, v108);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35DF0C();
  v31 = sub_22B35DECC();
  v33 = v32;
  v149(v110, v136);
  MEMORY[0x23188E270](v31, v33);

  sub_22B35FA8C();

  sub_22B35FA7C();

  sub_22B35F8DC();
  sub_22B35F88C();
  v133(v113, v116, v128);
  sub_22B36039C();
  sub_22B35F8AC();
  v133(v113, v154, v128);
  sub_22B36039C();
  sub_22B35F93C();
  v133(v113, v156, v128);
  sub_22B36039C();
  sub_22B35FA3C();
  sub_22B35F8CC();
  sub_22B35FA6C();
  (*(v119 + 16))(v151, v159, v140);
  sub_22B35F8FC();
  sub_22B35F91C();
  sub_22B35FA1C();
  sub_22B28C170(&qword_27D8BA6A0, MEMORY[0x277D07478], MEMORY[0x277D07450]);
  v34 = sub_22B36042C();
  v157 = *(v160 + 1840);
  if (v124)
  {
    v120 = *(v160 + 1760);
    v114 = *(v160 + 1424);
    v111 = *(v160 + 1536);
    v112 = *(v160 + 1344);
    v144 = *(v160 + 1256);
    v134 = *(v160 + 1232);
    v137 = *(v160 + 1224);
    v131 = *(v160 + 1200);
    v129 = *(v160 + 1192);
    v122 = *(v160 + 1176);
    v125 = *(v160 + 1184);
    v147 = *(v160 + 1136);
    v117 = *(v160 + 1128);
    v141 = *(v160 + 1120);
    v36 = *(v160 + 1088);
    v37 = *(v160 + 856);
    v107 = *(v160 + 848);
    v109 = *(v160 + 864);
    v103 = *(v160 + 1112);
    v105 = *(v160 + 752);
    v38 = *(v160 + 744);
    v99 = *(v160 + 1104);
    v101 = *(v160 + 736);
    v39 = *(v160 + 720);
    v40 = *(v160 + 712);
    v41 = *(v160 + 704);
    v42 = *(v160 + 672);
    v43 = *(v160 + 664);
    v44 = *(v160 + 656);

    (*(v43 + 8))(v42, v44);
    (*(v40 + 8))(v39, v41);
    v157(v99, v36);
    v157(v103, v36);
    (*(v38 + 8))(v105, v101);
    objc_autoreleasePoolPop(v127);

    (*(v37 + 8))(v109, v107);
    v157(v117, v36);
    v157(v122, v36);
    v157(v125, v36);
    v157(v129, v36);
    v157(v131, v36);
    (*(v134 + 8))(v144, v137);

    v157(v141, v36);
    v157(v147, v36);

    v45 = *(v160 + 8);

    return v45(0);
  }

  v47 = *(v160 + 1520);
  v115 = *(v160 + 1296);
  v118 = *(v160 + 1304);
  v121 = *(v160 + 1280);
  v123 = *(v160 + 1288);
  v152 = *(v160 + 1104);
  v155 = *(v160 + 1112);
  v148 = *(v160 + 1088);
  v138 = *(v160 + 704);
  v142 = *(v160 + 720);
  v132 = *(v160 + 672);
  v135 = *(v160 + 712);
  v126 = *(v160 + 664);
  v130 = *(v160 + 656);
  v48 = v34;
  v49 = v35;

  v50 = [v47 defaultRecordZone];
  v51 = [v50 zoneID];

  v52 = sub_22B360CBC();
  v53 = sub_22B360F4C();
  v54 = [v53 recordID];
  v55 = [v54 zoneID];

  v56 = sub_22B360CBC();
  [v53 setRecordID_];

  v57 = MEMORY[0x277CBBBE0];
  *(v160 + 328) = MEMORY[0x277CC9318];
  *(v160 + 336) = v57;
  *(v160 + 304) = v48;
  *(v160 + 312) = v49;
  sub_22B144B30(v48, v49);
  sub_22B360EBC();
  *(v160 + 544) = v115;
  *(v160 + 552) = v118;

  MEMORY[0x23188E270](46, 0xE100000000000000);
  MEMORY[0x23188E270](v121, v123);
  v58 = *(v160 + 544);
  v59 = *(v160 + 552);
  v60 = MEMORY[0x277CBBE08];
  *(v160 + 368) = MEMORY[0x277D837D0];
  *(v160 + 376) = v60;
  *(v160 + 344) = v58;
  *(v160 + 352) = v59;
  sub_22B360EBC();
  sub_22B12F174(v48, v49);

  (*(v126 + 8))(v132, v130);
  v5 = v160;
  (*(v135 + 8))(v142, v138);
  v157(v152, v148);
  v157(v155, v148);
  v2 = v53;
  MEMORY[0x23188E350]();
  if (*((*(v160 + 560) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v160 + 560) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_31;
  }

LABEL_19:
  v61 = *(v5 + 752);
  v62 = *(v5 + 744);
  v63 = *(v5 + 736);
  sub_22B360A9C();

  (*(v62 + 8))(v61, v63);
  v64 = *(v5 + 560);
  objc_autoreleasePoolPop(v127);
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v5 + 1880) = v64;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v65 = *(v5 + 1304);
    v66 = *(v5 + 1288);
    v67 = swift_task_alloc();
    *(v5 + 1888) = v67;
    *v67 = v5;
    v67[1] = sub_22B287CC8;
    v68 = *(v5 + 1424);
    v69 = *(v5 + 1296);
    v70 = *(v5 + 1280);

    return sub_22B1D59F4(v64, v70, v66, v69, v65, v68);
  }

  else
  {
    *(v5 + 1768) = v64;
    v71 = *(v5 + 1200);
    v72 = *(v5 + 1136);
    v73 = *(v5 + 1120);
    v74 = *(v5 + 864);
    v75 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v74, v73, v72, v71);
    *(v5 + 1776) = 0;
    objc_autoreleasePoolPop(v75);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v76 = *(v5 + 1996);
    v77 = *(v5 + 1352);
    v78 = *(v5 + 1304);
    v79 = *(v5 + 1288);
    v80 = *(v5 + 1160);
    v81 = *(v5 + 1136);
    v82 = *(v5 + 1088);
    v83 = *(v5 + 816);
    v84 = *(v5 + 808);
    v85 = *(v5 + 800);
    *(v5 + 1784) = qword_27D8BB198;
    v77(v80, v81, v82);
    v86 = *(v84 + 104);
    *(v5 + 1792) = v86;
    *(v5 + 1800) = (v84 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v86(v83, v76, v85);
    v87 = swift_task_alloc();
    *(v5 + 1808) = v87;
    *v87 = v5;
    v87[1] = sub_22B2862E4;
    v88 = *(v5 + 1296);
    v89 = *(v5 + 1280);
    v90 = *(v5 + 1160);
    v91 = *(v5 + 1120);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v90, v91, v89, v79, v88, v78);
  }
}