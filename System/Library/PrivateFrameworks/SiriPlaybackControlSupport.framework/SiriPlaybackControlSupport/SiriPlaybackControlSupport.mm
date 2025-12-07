uint64_t HomeAutomationEntityProviding.hasHomeAutomationNodes.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 8))() + 16);

  if (v2)
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_15();
  v4(v3);
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_15();
    v8 = *(v7(v6) + 16);

    if (v8)
    {
      return 1;
    }

    v9 = OUTLINED_FUNCTION_15();
    v11 = *(v10(v9) + 16);

    if (v11)
    {
      return 1;
    }

    v12 = OUTLINED_FUNCTION_15();
    v14 = *(v13(v12) + 16);

    if (v14)
    {
      return 1;
    }

    v15 = OUTLINED_FUNCTION_15();
    v17 = *(v16(v15) + 16);

    if (v17)
    {
      return 1;
    }

    v18 = OUTLINED_FUNCTION_15();
    v20 = *(v19(v18) + 16);

    if (v20)
    {
      return 1;
    }

    v21 = OUTLINED_FUNCTION_15();
    v22(v21);
    if (v33 != 5)
    {
      return 1;
    }

    v23 = OUTLINED_FUNCTION_15();
    v24(v23);
    if (v32 != 12)
    {
      return 1;
    }

    v25 = OUTLINED_FUNCTION_15();
    v26(v25);
    if (v31 != 20)
    {
      return 1;
    }

    v27 = OUTLINED_FUNCTION_15();
    v28(v27);
    if (!v29)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t HomeAutomationEntityProviding.extractEntities()(uint64_t a1, unint64_t a2)
{
  v190 = sub_268C15A1C();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v9);
  v188 = &v184 - v10;
  v198 = MEMORY[0x277D84F90];
  v11 = OUTLINED_FUNCTION_13();
  v12(v11);
  v187 = LOBYTE(__dst[0]);
  i = *(a2 + 8);
  v14 = OUTLINED_FUNCTION_13();
  v15 = *(i(v14) + 16);

  v193 = v2;
  v192 = a2;
  v191 = a1;
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_13();
    i(v16);
    OUTLINED_FUNCTION_8();
    v17 = MEMORY[0x277D84F90];
    a2 = 104;
    v18.n128_u64[0] = 85199877;
    OUTLINED_FUNCTION_29(v18);
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_37();
      if (v19)
      {
        goto LABEL_103;
      }

      OUTLINED_FUNCTION_48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_7();
        v17 = sub_268BB307C(v22, v23, v24, v17);
      }

      OUTLINED_FUNCTION_20();
      if (v19)
      {
        v25 = OUTLINED_FUNCTION_5(v20);
        v17 = sub_268BB307C(v25, v26, v27, v17);
      }

      OUTLINED_FUNCTION_47();
      *(v21 + 32) = a1;
      *(v21 + 40) = i;
      *(v21 + 48) = 0u;
      *(v21 + 64) = 0u;
      *(v21 + 80) = 0u;
      *(v21 + 96) = 0u;
      *(v21 + 112) = 0u;
      OUTLINED_FUNCTION_6(v21);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  i = *(a2 + 24);
  v28 = OUTLINED_FUNCTION_13();
  v29 = *(i(v28) + 16);

  if (v29)
  {
    v30 = OUTLINED_FUNCTION_13();
    i(v30);
    OUTLINED_FUNCTION_8();
    v31 = MEMORY[0x277D84F90];
    a2 = 104;
    v32.n128_u64[0] = 85199877;
    OUTLINED_FUNCTION_29(v32);
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_37();
      if (v19)
      {
        goto LABEL_104;
      }

      OUTLINED_FUNCTION_48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_7();
        v31 = sub_268BB307C(v35, v36, v37, v31);
      }

      OUTLINED_FUNCTION_20();
      if (v19)
      {
        v38 = OUTLINED_FUNCTION_5(v33);
        v31 = sub_268BB307C(v38, v39, v40, v31);
      }

      OUTLINED_FUNCTION_47();
      *(v34 + 32) = 0;
      *(v34 + 40) = 0;
      *(v34 + 48) = a1;
      *(v34 + 56) = i;
      *(v34 + 64) = 0u;
      *(v34 + 80) = 0u;
      *(v34 + 96) = 0u;
      *(v34 + 112) = 0u;
      OUTLINED_FUNCTION_6(v34);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  i = *(a2 + 32);
  v41 = OUTLINED_FUNCTION_13();
  v42 = *(i(v41) + 16);

  if (v42)
  {
    v43 = OUTLINED_FUNCTION_13();
    i(v43);
    OUTLINED_FUNCTION_8();
    v44 = MEMORY[0x277D84F90];
    a2 = 104;
    v45.n128_u64[0] = 85199877;
    OUTLINED_FUNCTION_29(v45);
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_37();
      if (v19)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = OUTLINED_FUNCTION_7();
        v44 = sub_268BB307C(v48, v49, v50, v44);
      }

      OUTLINED_FUNCTION_20();
      if (v19)
      {
        v51 = OUTLINED_FUNCTION_5(v46);
        v44 = sub_268BB307C(v51, v52, v53, v44);
      }

      OUTLINED_FUNCTION_47();
      *(v47 + 32) = 0u;
      *(v47 + 48) = 0u;
      *(v47 + 64) = 0u;
      *(v47 + 80) = a1;
      *(v47 + 88) = i;
      *(v47 + 96) = 0u;
      *(v47 + 112) = 0u;
      OUTLINED_FUNCTION_6(v47);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  i = *(a2 + 40);
  v54 = OUTLINED_FUNCTION_13();
  v55 = *(i(v54) + 16);

  if (v55)
  {
    v56 = OUTLINED_FUNCTION_13();
    i(v56);
    OUTLINED_FUNCTION_8();
    v57 = MEMORY[0x277D84F90];
    a2 = 104;
    v58.n128_u64[0] = 85199877;
    OUTLINED_FUNCTION_29(v58);
    while (v4 != v3)
    {
      OUTLINED_FUNCTION_37();
      if (v19)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = OUTLINED_FUNCTION_7();
        v57 = sub_268BB307C(v62, v63, v64, v57);
      }

      OUTLINED_FUNCTION_20();
      if (v19)
      {
        v65 = OUTLINED_FUNCTION_5(v59);
        v57 = sub_268BB307C(v65, v66, v67, v57);
      }

      OUTLINED_FUNCTION_47();
      OUTLINED_FUNCTION_12(v60);
      v61[12] = a1;
      v61[13] = i;
      v61[14] = 0;
      v61[15] = 0;
      OUTLINED_FUNCTION_6(v61);
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  i = *(a2 + 48);
  v68 = OUTLINED_FUNCTION_13();
  v69 = *(i(v68) + 16);

  if (v69)
  {
    v70 = OUTLINED_FUNCTION_13();
    v71 = i(v70);
    v72 = 0;
    v73 = *(v71 + 16);
    v74 = MEMORY[0x277D84F90];
    v75 = (v71 + 40);
    v76.n128_u64[0] = 336332032;
    OUTLINED_FUNCTION_29(v76);
    while (v73 != v72)
    {
      if (v72 >= *(v71 + 16))
      {
        goto LABEL_107;
      }

      v77 = *(v75 - 1);
      i = *v75;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = OUTLINED_FUNCTION_7();
        v74 = sub_268BB307C(v81, v82, v83, v74);
      }

      a2 = *(v74 + 2);
      v78 = *(v74 + 3);
      if (a2 >= v78 >> 1)
      {
        v84 = OUTLINED_FUNCTION_5(v78);
        v74 = sub_268BB307C(v84, v85, v86, v74);
      }

      *(v74 + 2) = a2 + 1;
      *&v79 = OUTLINED_FUNCTION_12(&v74[104 * a2]);
      *(v80 + 96) = v79;
      *(v80 + 112) = v77;
      *(v80 + 120) = i;
      *(v80 + 128) = v194;
      *(v80 + 132) = 5;
      v75 += 2;
      ++v72;
    }

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_0();
  }

  v87 = (a2 + 88);
  v88 = OUTLINED_FUNCTION_13();
  v194 = v89;
  (v89)(v88);
  v90 = LOBYTE(__dst[0]);
  if (LOBYTE(__dst[0]) != 20)
  {
    OUTLINED_FUNCTION_2();
    if ((sub_268BB1A84(v90, 3, v91) & 1) == 0)
    {
      v92 = v198;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v175 = OUTLINED_FUNCTION_7();
        v92 = sub_268BB307C(v175, v176, v177, v92);
      }

      v94 = *(v92 + 2);
      v93 = *(v92 + 3);
      if (v94 >= v93 >> 1)
      {
        v178 = OUTLINED_FUNCTION_5(v93);
        v92 = sub_268BB307C(v178, v179, v180, v92);
      }

      *(v92 + 2) = v94 + 1;
      v95.n128_f64[0] = OUTLINED_FUNCTION_12(&v92[104 * v94]);
      OUTLINED_FUNCTION_45(v96, v95);
      *(v97 + 131) = v90;
      *(v97 + 132) = 5;
      v198 = v92;
    }
  }

  v98 = OUTLINED_FUNCTION_13();
  v99(v98);
  v100 = __dst[0];
  if (LOBYTE(__dst[0]) != 5)
  {
    v101 = v198;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v172 = OUTLINED_FUNCTION_7();
      v101 = sub_268BB307C(v172, v173, v174, v101);
    }

    v103 = *(v101 + 2);
    v102 = *(v101 + 3);
    if (v103 >= v102 >> 1)
    {
      v101 = sub_268BB307C((v102 > 1), v103 + 1, 1, v101);
    }

    *(v101 + 2) = v103 + 1;
    v104.n128_f64[0] = OUTLINED_FUNCTION_12(&v101[104 * v103]);
    OUTLINED_FUNCTION_45(v105, v104);
    *(v106 + 131) = 20;
    *(v106 + 132) = v100;
    v198 = v101;
  }

  v107 = OUTLINED_FUNCTION_13();
  v109 = sub_268BB0778(v107, v108);
  sub_268BB02A0(v109);
  v110 = v198;
  v111 = *(v198 + 2);

  v112 = 0;
  v113 = MEMORY[0x277D84F90];
LABEL_65:
  for (i = (104 * v112 + 32); ; i = (i + 104))
  {
    if (v111 == v112)
    {

      v117 = *(v113 + 16);

      if (v117)
      {
        MEMORY[0x28223BE20](v118);
        v119 = v192;
        *(&v184 - 4) = v191;
        *(&v184 - 3) = v119;
        *(&v184 - 16) = v187;
        *(&v184 - 1) = v193;

        i = sub_268BB22EC(sub_268BB45B4, (&v184 - 6), v110);

        if (qword_2802CDBE0 != -1)
        {
          goto LABEL_108;
        }

        goto LABEL_77;
      }

      if (qword_2802CDBE0 != -1)
      {
        OUTLINED_FUNCTION_18(&qword_2802CDBE0);
      }

      v188 = v87;
      v131 = v190;
      v132 = __swift_project_value_buffer(v190, qword_2802D2F10);
      v133 = *(v189 + 16);
      v133(v186, v132, v131);
      v134 = sub_268C159FC();
      v135 = sub_268C15DFC();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        *v136 = 0;
        _os_log_impl(&dword_268BAD000, v134, v135, "Skipping adding filters and and determining if we need to create separate queries for the filters", v136, 2u);
        OUTLINED_FUNCTION_30();
      }

      v137 = v190;
      v189 = *(v189 + 8);
      (v189)(v186, v190);
      v138 = v191;
      v139 = v192;
      if (HomeAutomationEntityProviding.hasCommonFilters.getter(v191, v192))
      {
        (*(v139 + 64))(__dst, v138, v139);
        v140 = __dst[0];
        v194(__dst, v138, v139);
        v141 = LOBYTE(__dst[0]);
        v142 = 20;
        if (LOBYTE(__dst[0]) != 20)
        {
          OUTLINED_FUNCTION_2();
          if (sub_268BB1A84(v141, 3, v143))
          {
            v142 = v141;
          }

          else
          {
            v142 = 20;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = OUTLINED_FUNCTION_7();
          v110 = sub_268BB307C(v181, v182, v183, v110);
        }

        v145 = *(v110 + 2);
        v144 = *(v110 + 3);
        if (v145 >= v144 >> 1)
        {
          v110 = sub_268BB307C((v144 > 1), v145 + 1, 1, v110);
        }

        *(v110 + 2) = v145 + 1;
        *&v146 = OUTLINED_FUNCTION_12(&v110[104 * v145]);
        *(v147 + 96) = v146;
        *(v147 + 112) = v146;
        *(v147 + 128) = 0;
        *(v147 + 129) = v140;
        *(v147 + 130) = v187;
        *(v147 + 131) = v142;
        *(v147 + 132) = 5;
        v198 = v110;
        v148 = v185;
        v137 = v190;
        v133(v185, v132, v190);
        v149 = sub_268C159FC();
        v150 = sub_268C15DFC();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = v148;
          v153 = swift_slowAlloc();
          __dst[0] = v153;
          *v151 = 136315138;

          v155 = MEMORY[0x26D6272E0](v154, &type metadata for HomeAutomationEntityQuery);
          v157 = v156;

          v158 = sub_268BB3D28(v155, v157, __dst);

          *(v151 + 4) = v158;
          _os_log_impl(&dword_268BAD000, v149, v150, "Common filters applied to extracted entities, returning entities: %s", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v153);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          v159 = v152;
LABEL_99:
          (v189)(v159, v137);
          goto LABEL_100;
        }
      }

      else
      {
        v148 = v184;
        v133(v184, v132, v137);
        v149 = sub_268C159FC();
        v161 = sub_268C15DFC();
        if (os_log_type_enabled(v149, v161))
        {
          v162 = v148;
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          __dst[0] = v164;
          *v163 = 136315138;

          v166 = MEMORY[0x26D6272E0](v165, &type metadata for HomeAutomationEntityQuery);
          v168 = v167;

          v169 = sub_268BB3D28(v166, v168, __dst);

          *(v163 + 4) = v169;
          _os_log_impl(&dword_268BAD000, v149, v161, "No common filters found, returning entities: %s", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v164);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          (v189)(v162, v137);
LABEL_100:

          v160 = sub_268BB0B2C(v170);
          swift_bridgeObjectRelease_n();
          return v160;
        }
      }

      v159 = v148;
      goto LABEL_99;
    }

    if (v112 >= *(v110 + 2))
    {
      break;
    }

    memcpy(__dst, i + v110, 0x65uLL);
    if (BYTE4(__dst[12]) == 5)
    {
      sub_268BB3190(__dst, v195);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v197 = v113;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4594(0, *(v113 + 16) + 1, 1);
        v113 = v197;
      }

      v116 = *(v113 + 16);
      v115 = *(v113 + 24);
      if (v116 >= v115 >> 1)
      {
        sub_268BB4594((v115 > 1), v116 + 1, 1);
        v113 = v197;
      }

      ++v112;
      *(v113 + 16) = v116 + 1;
      memcpy((v113 + 104 * v116 + 32), __dst, 0x65uLL);
      goto LABEL_65;
    }

    ++v112;
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  OUTLINED_FUNCTION_18(&qword_2802CDBE0);
LABEL_77:
  v120 = v190;
  v121 = __swift_project_value_buffer(v190, qword_2802D2F10);
  v122 = v189;
  v123 = v188;
  (*(v189 + 16))(v188, v121, v120);

  v124 = sub_268C159FC();
  v125 = sub_268C15DCC();

  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    __dst[0] = v127;
    *v126 = 136315138;
    v128 = MEMORY[0x26D6272E0](i, &type metadata for HomeAutomationEntityQuery);
    v130 = sub_268BB3D28(v128, v129, __dst);

    *(v126 + 4) = v130;
    _os_log_impl(&dword_268BAD000, v124, v125, "HomeAutomation entities created from intent: %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v127);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v122 + 8))(v188, v120);
  }

  else
  {

    (*(v122 + 8))(v123, v120);
  }

  v160 = sub_268BB0B2C(i);

  return v160;
}

uint64_t sub_268BB00D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_268BB4320();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_268BB01BC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB42A8(v4);
  OUTLINED_FUNCTION_25();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_19(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_268BB02A0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_268BB43B4(result, 1, sub_268BB307C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_268BB0378(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB43B4(v4, 1, sub_268BB2DB4);
  OUTLINED_FUNCTION_25();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_268BB0420(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB43B4(v4, 1, sub_268BB3460);
  OUTLINED_FUNCTION_25();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19(v3 + 120 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_268BB04CC(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_23();
  sub_268BB4468(v6, 1, v7, v8, v9, type metadata accessor for Device);
  OUTLINED_FUNCTION_25();
  if (!v10)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v11 = OUTLINED_FUNCTION_39();
  type metadata accessor for Device(v11);
  if (v4 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_268BB05D0(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB4500();
  OUTLINED_FUNCTION_25();
  if (!v5)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9();
  if (v7 != v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_19(v3 + 8 * v6);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v4)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_268BB0664(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_1(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268BB4468(v5, 1, &qword_2802CDCC0, &qword_268C17088, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
  OUTLINED_FUNCTION_25();
  if (!v7)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_39();
  sub_268C1528C();
  if (v4 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_24();
  if (!v6)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

char *sub_268BB0778(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C15A1C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(a2 + 56))(a1, a2, v5);
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = (v7 + 48);
  v11 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v12 = *(v10 - 1);
    v13 = *v10;
    v35[0] = *(v10 - 16);
    v36 = v12;
    v37 = v13;
    sub_268BB2610(v35, __src);

    if (__src[1] == 1)
    {
      memcpy(v33, __src, 0x65uLL);
      sub_268BB5C48(v33);
    }

    else
    {
      memcpy(v33, __src, 0x65uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_268BB307C(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      if (v15 >= v14 >> 1)
      {
        v11 = sub_268BB307C((v14 > 1), v15 + 1, 1, v11);
      }

      memcpy(v32, v33, sizeof(v32));
      *(v11 + 2) = v15 + 1;
      memcpy(&v11[104 * v15 + 32], v32, 0x65uLL);
    }

    v10 += 3;
    ++v8;
  }

  if (qword_2802CDBE0 == -1)
  {
    goto LABEL_13;
  }

LABEL_18:
  swift_once();
LABEL_13:
  v16 = v30;
  v17 = __swift_project_value_buffer(v30, qword_2802D2F10);
  v18 = v29;
  v19 = v31;
  (*(v29 + 16))(v31, v17, v16);

  v20 = sub_268C159FC();
  v21 = sub_268C15DCC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    __src[0] = v23;
    *v22 = 136315138;
    v24 = MEMORY[0x26D6272E0](v11, &type metadata for HomeAutomationEntityQuery);
    v26 = sub_268BB3D28(v24, v25, __src);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_268BAD000, v20, v21, "From entities: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D628010](v23, -1, -1);
    MEMORY[0x26D628010](v22, -1, -1);

    (*(v18 + 8))(v31, v16);
  }

  else
  {

    (*(v18 + 8))(v19, v16);
  }

  return v11;
}

uint64_t sub_268BB0B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_268BB4574(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x65uLL);
      sub_268BB3190(__dst, &v8);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_268BB4574((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for HomeAutomationEntityQuery;
      v10 = &protocol witness table for HomeAutomationEntityQuery;
      *&v8 = swift_allocObject();
      memcpy((v8 + 16), __dst, 0x65uLL);
      *(v2 + 16) = v6 + 1;
      sub_268BB5BDC(&v8, v2 + 40 * v6 + 32);
      v4 += 104;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t HomeAutomationEntityProviding.hasCommonFilters.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 64))(&v12);
  if (v12 == 5 && (v2 = OUTLINED_FUNCTION_15(), v3(v2), v11 == 12))
  {
    v4 = OUTLINED_FUNCTION_15();
    v5(v4);
    if (v10 == 20)
    {
      v6 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2();
      v6 = sub_268BB1A84(v8, 3, v9);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_268BB0D34(char a1, uint64_t a2)
{
  v3 = 6647407;
  v4 = 0xE300000000000000;
  switch(a1)
  {
    case 1:
      v3 = 6645876;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v3 = 2037277037;
      break;
    case 3:
      v4 = 0xE800000000000000;
      v3 = 0x6574696E69666564;
      break;
    case 4:
      v3 = 0x696E696665646E69;
      v4 = 0xEA00000000006574;
      break;
    default:
      break;
  }

  v5 = 6647407;
  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v5 = 6645876;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 2037277037;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x6574696E69666564;
      break;
    case 4:
      v5 = 0x696E696665646E69;
      v6 = 0xEA00000000006574;
      break;
    default:
      break;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_268BB0ED4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6841459;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v5 = 25443;
      break;
    case 3:
      v3 = 0xE200000000000000;
      v5 = 25697;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6841459;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v2 = 25443;
      break;
    case 3:
      v6 = 0xE200000000000000;
      v2 = 25697;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_268BB0FF4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x726F737365636361;
  v4 = a1;
  v5 = 0x726F737365636361;
  v6 = 0xE900000000000079;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1836019570;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1701995880;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1701736314;
      break;
    case 4:
      OUTLINED_FUNCTION_41();
      v6 = v7 | 2;
      break;
    case 5:
      OUTLINED_FUNCTION_41();
      v6 = v8 + 3573;
      break;
    case 6:
      v5 = 0x7954656369766564;
      v6 = 0xEA00000000006570;
      break;
    case 7:
      v6 = 0xE500000000000000;
      v5 = 0x6C61636F6CLL;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1836019570;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1701995880;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1701736314;
      break;
    case 4:
      OUTLINED_FUNCTION_41();
      v2 = v9 | 2;
      break;
    case 5:
      OUTLINED_FUNCTION_41();
      v2 = v10 + 3573;
      break;
    case 6:
      v3 = 0x7954656369766564;
      v2 = 0xEA00000000006570;
      break;
    case 7:
      v2 = 0xE500000000000000;
      v3 = 0x6C61636F6CLL;
      break;
    case 8:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_46();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_33(v5, a2, v3);
  }

  return v12 & 1;
}

uint64_t sub_268BB125C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 6647407;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6647407;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1752461154;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1701670771;
      break;
    case 3:
      v5 = 7105633;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x747065637865;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1752461154;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1701670771;
      break;
    case 3:
      v2 = 7105633;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x747065637865;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_268BB13B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000056545F45;
  v3 = 0x4D414E5F4D4F4F52;
  v4 = a1;
  v5 = 0x4D414E5F4D4F4F52;
  v6 = 0xEC00000056545F45;
  switch(v4)
  {
    case 1:
      v7 = "LOCATION_IN_HERE";
      goto LABEL_9;
    case 2:
      v6 = 0x8000000268C1B6E0;
      v5 = 0xD000000000000020;
      break;
    case 3:
      v6 = 0x8000000268C1B710;
      v5 = 0xD00000000000001FLL;
      break;
    case 4:
      v7 = "LOCATION_ROOM_AND_N_OTHER_ROOMS";
LABEL_9:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000013;
      break;
    case 5:
      v6 = 0x8000000268C1B750;
      v5 = 0xD000000000000014;
      break;
    case 6:
      break;
    case 7:
      v6 = 0x8000000268C1B780;
      v5 = 0xD000000000000011;
      break;
    case 8:
      v5 = 0x4E414C5F4F545541;
      v6 = 0xED00004547415547;
      break;
    case 9:
      v5 = 0x5254535F4D4F4F52;
      v6 = 0xEC00000053474E49;
      break;
    case 10:
      v5 = 0x504F54535F414857;
      v6 = 0xEE005344524F575FLL;
      break;
    default:
      v6 = 0x8000000268C1B6A0;
      v5 = 0xD000000000000010;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "LOCATION_IN_HERE";
      goto LABEL_21;
    case 2:
      v2 = 0x8000000268C1B6E0;
      v3 = 0xD000000000000020;
      break;
    case 3:
      v2 = 0x8000000268C1B710;
      v3 = 0xD00000000000001FLL;
      break;
    case 4:
      v8 = "LOCATION_ROOM_AND_N_OTHER_ROOMS";
LABEL_21:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 5:
      v2 = 0x8000000268C1B750;
      v3 = 0xD000000000000014;
      break;
    case 6:
      break;
    case 7:
      v2 = 0x8000000268C1B780;
      v3 = 0xD000000000000011;
      break;
    case 8:
      v3 = 0x4E414C5F4F545541;
      v2 = 0xED00004547415547;
      break;
    case 9:
      v3 = 0x5254535F4D4F4F52;
      v2 = 0xEC00000053474E49;
      break;
    case 10:
      v3 = 0x504F54535F414857;
      v2 = 0xEE005344524F575FLL;
      break;
    default:
      v2 = 0x8000000268C1B6A0;
      v3 = 0xD000000000000010;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_33(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_268BB16A8(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x4F49445541;
  }

  else
  {
    v3 = 0x454C544954425553;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x4F49445541;
  }

  else
  {
    v5 = 0x454C544954425553;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_268BB1738(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6779760;
  }

  else
  {
    v3 = 0x74694B656D6F68;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6779760;
  }

  else
  {
    v5 = 0x74694B656D6F68;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_268BB17C4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA00000000007373;
  v3 = 0x6572676F72506E69;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x64656873696E6966;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000268C1B3A0;
    }

    else
    {
      v6 = 0xEE0064656C696146;
    }
  }

  else
  {
    v5 = 0x6572676F72506E69;
    v6 = 0xEA00000000007373;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x64656873696E6966;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000268C1B3A0;
    }

    else
    {
      v2 = 0xEE0064656C696146;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_33(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_268BB18D0(uint64_t a1)
{
  OUTLINED_FUNCTION_46();
  v4 = 0xE700000000000000;
  v6 = v5;
  v7 = v2;
  switch(v6)
  {
    case 1:
      v8 = "homeAutomationRoom";
      goto LABEL_5;
    case 2:
      v4 = 0x8000000268C1B530;
      v7 = v3 + 5;
      break;
    case 3:
      v4 = 0x8000000268C1B550;
      v7 = v3 + 3;
      break;
    case 4:
      v4 = 0x8000000268C1B570;
      v7 = v3 + 8;
      break;
    case 5:
      break;
    default:
      v8 = "th";
LABEL_5:
      v4 = v8 | 0x8000000000000000;
      v7 = 0xD000000000000012;
      break;
  }

  v9 = 0xE700000000000000;
  switch(v1)
  {
    case 1:
      v10 = "homeAutomationRoom";
      goto LABEL_12;
    case 2:
      v9 = 0x8000000268C1B530;
      v2 = v3 + 5;
      break;
    case 3:
      v9 = 0x8000000268C1B550;
      v2 = v3 + 3;
      break;
    case 4:
      v9 = 0x8000000268C1B570;
      v2 = v3 + 8;
      break;
    case 5:
      break;
    default:
      v10 = "th";
LABEL_12:
      v9 = v10 | 0x8000000000000000;
      v2 = 0xD000000000000012;
      break;
  }

  if (v7 == v2 && v4 == v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_14(v7, v1, v2);
  }

  return v12 & 1;
}

uint64_t sub_268BB1A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_14(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_268BB1B18(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x726F727265;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x726F727265;
  switch(v4)
  {
    case 1:
      v5 = 0x4449646D63;
      break;
    case 2:
      v5 = 0x6150726579616C70;
      v3 = 0xEA00000000006874;
      break;
    case 3:
      v5 = 0x6D617473656D6974;
      v3 = 0xE900000000000070;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4449646D63;
      break;
    case 2:
      v2 = 0x6150726579616C70;
      v6 = 0xEA00000000006874;
      break;
    case 3:
      v2 = 0x6D617473656D6974;
      v6 = 0xE900000000000070;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_268BB1C74(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C626173756170;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x656C626173756170;
  switch(v4)
  {
    case 1:
      v5 = 0x6C62616D75736572;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x6E6F436F65646976;
      v3 = 0xED0000736C6F7274;
      break;
    case 3:
      v5 = 0x6F43656D756C6F76;
      v3 = 0xEE00736C6F72746ELL;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7958113;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6C62616D75736572;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x6E6F436F65646976;
      v6 = 0xED0000736C6F7274;
      break;
    case 3:
      v2 = 0x6F43656D756C6F76;
      v6 = 0xEE00736C6F72746ELL;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7958113;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_14(v5, a2, v2);
  }

  return v8 & 1;
}

void *sub_268BB1E34@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v41 = a5;
  v9 = sub_268C15A1C();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  memcpy(__dst, a1, 0x65uLL);
  if (__dst[100] == 5)
  {
    memcpy(v42, a1, sizeof(v42));
    v15 = __dst[97];
    v16 = __dst[98];
    if (a2 != 12)
    {
      v16 = a2;
    }

    v38 = v16;
    v39 = *&__dst[99];
    v17 = *(a4 + 64);
    sub_268BB3190(__dst, v44);
    v17(v44, a3, a4);
    if (LOBYTE(v44[0]) == 5)
    {
      v18 = v15;
    }

    else
    {
      v18 = v44[0];
    }

    (*(a4 + 88))(v44, a3, a4);
    if (LOBYTE(v44[0]) != 20 && (sub_268BB1A84(LOBYTE(v44[0]), 3, PlaceHint.rawValue.getter) & 1) != 0)
    {
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v9, qword_2802D2F10);
      v20 = v40;
      (*(v40 + 16))(v14, v19, v9);
      v21 = sub_268C159FC();
      v22 = sub_268C15DFC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_268BAD000, v21, v22, "User asked to play/control everywhere in <room>. Applying deviceQuantifier .all to query", v23, 2u);
        MEMORY[0x26D628010](v23, -1, -1);
      }

      (*(v20 + 8))(v14, v9);
      v18 = 3;
    }

    v24 = v41;
    result = memcpy(v41, v42, 0x61uLL);
    v24[97] = v18;
    v26 = v39;
    v24[98] = v38;
    *(v24 + 99) = v26;
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v9, qword_2802D2F10);
    v28 = v40;
    (*(v40 + 16))(v11, v27, v9);
    sub_268BB3190(__dst, v44);
    v29 = sub_268C159FC();
    v30 = sub_268C15DFC();
    sub_268BB5BF4(__dst);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v32;
      *v31 = 136315138;
      memcpy(v43, __dst, sizeof(v43));
      sub_268BB3190(__dst, v44);
      v33 = HomeAutomationEntityQuery.description.getter();
      v35 = v34;
      memcpy(v44, v43, 0x65uLL);
      sub_268BB5BF4(v44);
      v36 = sub_268BB3D28(v33, v35, &v46);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_268BAD000, v29, v30, "HomeAutomationEntityQuery: %s does not support filters. Skipping", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x26D628010](v32, -1, -1);
      MEMORY[0x26D628010](v31, -1, -1);

      (*(v40 + 8))(v11, v9);
    }

    else
    {

      (*(v28 + 8))(v11, v9);
    }

    memcpy(v41, __dst, 0x65uLL);
    return sub_268BB3190(__dst, v44);
  }

  return result;
}

uint64_t sub_268BB22EC(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_268BB4594(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; i += 104)
  {
    memcpy(__dst, i, 0x65uLL);
    memcpy(__src, i, 0x65uLL);
    sub_268BB3190(__dst, v14);
    a1(v16, __src);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(v13, __src, 0x65uLL);
    sub_268BB5BF4(v13);
    memcpy(v14, v16, 0x65uLL);
    v18 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_268BB4594((v10 > 1), v11 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v11 + 1;
    memcpy((v6 + 104 * v11 + 32), v14, 0x65uLL);
    if (!--v5)
    {
      return v6;
    }
  }

  memcpy(v14, __src, 0x65uLL);
  sub_268BB5BF4(v14);

  __break(1u);
  return result;
}

void sub_268BB2470(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for Device(0);
  v7 = OUTLINED_FUNCTION_28(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v23 = MEMORY[0x277D84F90];
    sub_268BB4A60(0, v12, 0);
    v13 = v23;
    for (i = (a3 + 32); ; ++i)
    {
      v22 = *i;
      v15 = v22;
      v20(&v22);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v23 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_268BB4A60(v16 > 1, v17 + 1, 1);
        v13 = v23;
      }

      *(v13 + 16) = v17 + 1;
      sub_268BB52D0(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17);
      if (!--v12)
      {
        return;
      }
    }

    v18 = v22;

    __break(1u);
  }
}

double sub_268BB2610@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  switch(v2)
  {
    case 1:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = v4;
      *(a2 + 24) = v3;
      v5 = 0uLL;
      goto LABEL_7;
    case 2:
      v5 = 0uLL;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 48) = v4;
      *(a2 + 56) = v3;
      goto LABEL_8;
    case 3:
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 64) = v4;
      *(a2 + 72) = v3;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      goto LABEL_9;
    case 4:
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      *(a2 + 80) = v4;
      *(a2 + 88) = v3;
      goto LABEL_9;
    case 5:
      result = 0.0;
      *a2 = xmmword_268C16D40;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 93) = 0;
      return result;
    default:
      *a2 = v4;
      *(a2 + 8) = v3;
      v5 = 0uLL;
      *(a2 + 16) = 0u;
LABEL_7:
      *(a2 + 32) = v5;
      *(a2 + 48) = v5;
LABEL_8:
      *(a2 + 64) = v5;
      *(a2 + 80) = v5;
LABEL_9:
      *(a2 + 96) = 336332033;
      *(a2 + 100) = 5;

      return result;
  }
}

uint64_t HomeAutomationEntityProviding.namedEntities.getter(uint64_t a1, uint64_t a2)
{
  v16 = MEMORY[0x277D84F90];
  v2 = (*(a2 + 8))();
  sub_268BB0378(v2);
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  sub_268BB0378(v5);
  v6 = OUTLINED_FUNCTION_17();
  v8 = v7(v6);
  sub_268BB0378(v8);
  v9 = OUTLINED_FUNCTION_17();
  v11 = v10(v9);
  sub_268BB0378(v11);
  v12 = OUTLINED_FUNCTION_17();
  v14 = v13(v12);
  sub_268BB0378(v14);
  return v16;
}

uint64_t sub_268BB27EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_268BB2844(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_268BB2898(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_268BB28F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 & a1) != 0)
  {
    *v2 &= ~a1;
  }

  OUTLINED_FUNCTION_35(a2);
}

uint64_t sub_268BB2914(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_268BB2950(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_268BB29B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268BB28CC();
  *a1 = result;
  return result;
}

uint64_t sub_268BB29E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BB28DC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268BB2A18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BD9888(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268BB2A48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BB28EC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268BB2A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268BB2914(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268BB2AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268BB2950(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268BB2B00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BB2988(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_268BB2C1C(uint64_t a1, uint64_t a2)
{
  sub_268C1624C();
  swift_getWitnessTable();
  sub_268C1595C();
  return sub_268C1626C();
}

uint64_t sub_268BB2CB0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_268C1594C();
}

uint64_t sub_268BB2D28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268BB2844(a1);
  *a2 = result;
  return result;
}

void *sub_268BB2D50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_268BB2D68(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_268BB2DB4()
{
  OUTLINED_FUNCTION_21();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_11();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v7 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_44();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268BB2E84()
{
  OUTLINED_FUNCTION_21();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_11();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDA0, &qword_268C17148);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 24);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43();
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v2] <= v9)
    {
      memmove(v9, v10, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268BB2FB4()
{
  OUTLINED_FUNCTION_21();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_11();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_43();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

char *sub_268BB307C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDD0, &qword_268C17170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268BB3244()
{
  OUTLINED_FUNCTION_21();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_11();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD80, &qword_268C17128);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 64);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_43();
  if (v1)
  {
    if (v7 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268BB3364(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_16();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_268BB3AE8(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (v11)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_268BB3BDC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_268BB3460(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD48, &qword_268C170F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[120 * v8] <= v12)
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268BB35EC()
{
  OUTLINED_FUNCTION_21();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_26();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE590, &qword_268C170B0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v3;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v3 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_40();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
    OUTLINED_FUNCTION_40();
    swift_arrayInitWithCopy();
  }
}

void sub_268BB3714(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_4();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_16();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_10();
    *(v14 + 2) = v12;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v14 != a4 || &v17[8 * v12] <= v16)
    {
      memmove(v16, v17, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268BB37F4()
{
  OUTLINED_FUNCTION_21();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_26();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDA8, &qword_268C17150);
    v7 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_268BB38C0()
{
  OUTLINED_FUNCTION_21();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_26();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD00, &qword_268C170C8);
    v7 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_268BB398C()
{
  OUTLINED_FUNCTION_21();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_11();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD08, &qword_268C170D0);
    v7 = OUTLINED_FUNCTION_31();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_40();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD10, &qword_268C170D8);
    OUTLINED_FUNCTION_40();
    swift_arrayInitWithCopy();
  }
}

void *sub_268BB3A80(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
  v4 = OUTLINED_FUNCTION_31();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_44();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_268BB3AE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB3BDC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_38();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_38();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

uint64_t sub_268BB3CCC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_268BB3D28(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_268BB3D28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268BB3DEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_268BB5B20(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_268BB3DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_268BB3EEC(a5, a6);
    *a1 = v9;
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
    result = sub_268C1609C();
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

uint64_t sub_268BB3EEC(uint64_t a1, unint64_t a2)
{
  v3 = sub_268BB3F38(a1, a2);
  sub_268BB4050(&unk_287974428);
  return v3;
}

uint64_t sub_268BB3F38(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_268C15C7C())
  {
    result = sub_268BB4134(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268C1605C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_268C1609C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_268BB4050(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_268BB41A4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_268BB4134(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDC8, &qword_268C17168);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_268BB41A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDC8, &qword_268C17168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_268BB4298(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_268BB42A8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_268BB2FB4();
    *v1 = v5;
  }
}

uint64_t sub_268BB4320()
{
  OUTLINED_FUNCTION_42();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v0;
  if (result)
  {
    if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
    {
      if (v2 <= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_268C1613C();
LABEL_9:
  result = sub_268C1608C();
  *v1 = result;
  return result;
}

uint64_t sub_268BB43B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_268BB4468(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v13 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v13 + 24) >> 1)
  {
    if (*(v13 + 16) <= a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = *(v13 + 16);
    }

    sub_268BB3364(isUniquelyReferenced_nonNull_native, v15, a2 & 1, v13, a3, a4, a5, a6);
    *v6 = v16;
  }
}

void sub_268BB4500()
{
  OUTLINED_FUNCTION_42();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native || v3 > *(v0 + 24) >> 1)
  {
    if (*(v0 + 16) <= v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v0 + 16);
    }

    sub_268BB3714(isUniquelyReferenced_nonNull_native, v5, v2 & 1, v0, &unk_2802CDCE0, &qword_268C18780, &type metadata for Accessory);
    *v1 = v6;
  }
}

void *sub_268BB4574(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268BB4B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268BB4594(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268BB4C88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_268BB4784(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268BB47D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268BB48D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_268BB4A40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268BB4D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268BB4AB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268BB4EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268BB4AD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268BB4FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268BB4B50(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD50, &unk_268C17100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD58, "ȡ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_268BB4C88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDD0, &qword_268C17170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_268BB4D9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCB0, &qword_268C17078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_268BB4EE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_268BB4FF0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE590, &qword_268C170B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268BB5124(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_16();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_28(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (v11)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_268BB3BDC(a4 + v26, v15, v22 + v26, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_268BB52D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BB5334(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD68, &qword_268C17118);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDD78, &qword_2802CDD70, &qword_268C17120);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD70, &qword_268C17120);
          v9 = sub_268BC4BA0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB54B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268C153EC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDDB8, &qword_2802CDDB0, &qword_268C17158);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDB0, &qword_268C17158);
          v9 = sub_268BC4BA0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB5628(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268C1579C();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDD30, &qword_2802CDD28, &qword_268C170E8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD28, &qword_268C170E8);
          v9 = sub_268BC4BA0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB579C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268C1575C();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDD20, &qword_2802CDD18, &qword_268C170E0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD18, &qword_268C170E0);
          v9 = sub_268BC4BA0(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BB5910(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268C1613C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268BC4EF4(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268C153BC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268BB5ACC(&qword_2802CDD40, &qword_2802CDD38, &qword_268C170F0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD38, &qword_268C170F0);
          v9 = sub_268BC4BF4(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_268BB5ACC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268BB5B20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_268BB5B7C()
{

  return MEMORY[0x2821FE8E8](v0, 117, 7);
}

uint64_t sub_268BB5BDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_268BB5C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDD8, &qword_268C17178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268BB5CD8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 OUTLINED_FUNCTION_6@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0;
  result = *(v1 - 336);
  *(a1 + 129) = result.n128_u32[0];
  return result;
}

double OUTLINED_FUNCTION_12@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268C1618C();
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268C1618C();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_268BB02A0(v0);
}

void OUTLINED_FUNCTION_45(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 96) = a2;
  *(a1 + 112) = a2;
  *(a1 + 128) = 0;
  *(a1 + 129) = 3077;
}

uint64_t OUTLINED_FUNCTION_48()
{
}

id sub_268BB60C8()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D279C8]) init];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_268BB6134(__int128 *a1)
{
  v1[7] = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  type metadata accessor for AudioRouteProvider();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F98];
  v1[8] = v3;
  v1[9] = v4;
  v1[10] = 0;
  sub_268BB5BDC(a1, (v1 + 2));
  return v1;
}

void sub_268BB61B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_31_0();
  v6 = v5;
  v8 = v7;
  v32 = v10;
  v33 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_0();
  v21 = v20 - v19;
  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  v22 = __swift_project_value_buffer(v15, qword_2802D2ED8);
  (*(v17 + 16))(v21, v22, v15);
  v23 = sub_268C159FC();
  v24 = sub_268C15DFC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_23_0();
    *v25 = 0;
    _os_log_impl(&dword_268BAD000, v23, v24, "PlaybackControlsCommandProvider#send Start", v25, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v17 + 8))(v21, v15);
  v26 = mach_absolute_time();
  v27 = static MRCommandIDHelper.ensureMRCommandIDInOptions(options:)(v12);
  v28 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
  v29 = sub_268C15B4C();
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v30 + 24) = v14;
  *(v30 + 32) = v6;
  *(v30 + 40) = v27;
  *(v30 + 48) = v32;
  *(v30 + 56) = v8;
  v34[4] = sub_268BB98E8;
  v34[5] = v30;
  OUTLINED_FUNCTION_9_0();
  v34[1] = 1107296256;
  v34[2] = sub_268BB9BEC;
  v34[3] = &block_descriptor_56;
  v31 = _Block_copy(v34);

  [v28 sendCommandWithResult:v14 toDestination:v33 withOptions:v29 completion:v31];
  _Block_release(v31);

  OUTLINED_FUNCTION_32_0();
}

void sub_268BB643C(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_268C15A1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = mach_absolute_time();
  v18 = v17 >= a2;
  v19 = v17 - a2;
  if (v18)
  {
    if (qword_2802CDBC0 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v20 = *&qword_2802D2F08;
  if (qword_2802CDB70 != -1)
  {
    swift_once();
  }

  v21 = v20 * v19;
  v22 = __swift_project_value_buffer(v13, qword_2802D2ED8);
  (*(v14 + 16))(v16, v22, v13);
  v23 = sub_268C159FC();
  v24 = sub_268C15DEC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = a1;
    v26 = a5;
    v27 = a6;
    v28 = a7;
    v29 = v25;
    *v25 = 67109376;
    *(v25 + 4) = a3;
    *(v25 + 8) = 2048;
    *(v25 + 10) = v21;
    _os_log_impl(&dword_268BAD000, v23, v24, "PlaybackControlsCommandProvider#send End, MRMediaRemoteCommand: %u took %f seconds to complete", v25, 0x12u);
    v30 = v29;
    a7 = v28;
    a6 = v27;
    a5 = v26;
    a1 = v35;
    MEMORY[0x26D628010](v30, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  if (v21 >= 1.0 && (a3 & 0xFFFFFFFA) == 0)
  {
    v36 = a3;
    sub_268BB98FC();
    v32 = sub_268C15F9C();
    sub_268BB8DDC(0x616C6544646E6553, 0xE900000000000079, 0xD000000000000017, 0x8000000268C1B950, v32, v33);
  }

  if (a1)
  {
    v34 = [a1 commandResult];
    a1 = [a1 error];
  }

  else
  {
    v34 = 0;
  }

  sub_268BB676C(a3, v34, a1, a5, a6, a7);
}

void sub_268BB676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_31_0();
  v215 = v6;
  v8 = v7;
  v219 = v9;
  v11 = v10;
  v210 = v12;
  v13 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v222 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v17);
  v19 = v200 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_27();
  *&v25 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v220 = v200 - v26;
  if (v11)
  {
    v27 = [v11 error];
    v28 = [v11 handlerReturnStatuses];
    sub_268BB9B44(0, &qword_2802CDF30, 0x277CCABB0);
    v223 = sub_268C15D0C();
  }

  else
  {
    v223 = 0;
    v27 = 0;
  }

  v204 = static MRErrorEncoder.getStatusCode(commandResult:)(v11);
  v211 = v29;
  v30 = 0xE700000000000000;
  v221 = v13;
  if (v11)
  {
    v31 = [v11 playerPath];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 description];

      v208 = sub_268C15BFC();
      v213 = v34;

      v13 = v221;
    }

    else
    {
      v213 = 0xE700000000000000;
      v208 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v208 = 0x6E776F6E6B6E75;
    v213 = 0xE700000000000000;
  }

  v200[2] = v19;
  v207 = sub_268BB9100();
  v214 = v35;
  v36 = static MRCommandIDHelper.getMRCommandIDFromOptions(options:)(v219);
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0x6E776F6E6B6E75;
  }

  v206 = v38;
  if (v37)
  {
    v30 = v37;
  }

  if (qword_2802CDB70 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
  }

  v39 = __swift_project_value_buffer(v13, qword_2802D2ED8);
  v40 = v222;
  v41 = *(v222 + 16);
  v42 = v220;
  v217 = v39;
  v218 = v41;
  v219 = v222 + 16;
  v41(v220);
  v43 = v27;

  v44 = sub_268C159FC();
  v45 = sub_268C15DDC();

  v46 = os_log_type_enabled(v44, v45);
  v216 = v27;
  v212 = v8;
  if (!v46)
  {

    v52 = *(v40 + 8);
    v53 = v13;
    v52(v42, v13);
    if (!v27)
    {
      goto LABEL_35;
    }

LABEL_20:
    v209 = v52;
    v54 = v27;
    v55 = sub_268C1523C();

    v56 = [v55 code];
    v57 = 0x8000000000000020;
    if (v56 != 10)
    {
      v57 = 0x8000000000000000;
    }

    v202 = v57;
    static MRErrorEncoder.commandResultErrorWrapper(commandResult:error:)(v11, v27, &v226);
    v59 = v227;
    v58 = v228;
    v60 = HIBYTE(v228) & 0xF;
    if ((v228 & 0x2000000000000000) == 0)
    {
      v60 = v227 & 0xFFFFFFFFFFFFLL;
    }

    v220 = v55;
    if (v60)
    {
      v61 = static MRErrorEncoder.generateCommandEncoding(commandResult:)(v11);
      v226 = v61;
      v227 = v62;
      v63 = HIBYTE(v62) & 0xF;
      if ((v62 & 0x2000000000000000) == 0)
      {
        v63 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v63)
      {
        MEMORY[0x26D627230](47, 0xE100000000000000);
        v61 = v226;
        v64 = v227;
      }

      else
      {
        v64 = v62;
      }

      v224 = v61;
      v225 = v64;

      MEMORY[0x26D627230](v204, v211);

      OUTLINED_FUNCTION_26_0();
      MEMORY[0x26D627230](47, 0xE100000000000000);

      v86 = v224;
      v85 = v225;
      v224 = v210;
      v68 = sub_268C1616C();
      v88 = v87;
      v224 = v86;
      v225 = v85;

      MEMORY[0x26D627230](v68, v88);

      OUTLINED_FUNCTION_26_0();
      MEMORY[0x26D627230](47, 0xE100000000000000);

      OUTLINED_FUNCTION_26_0();
      MEMORY[0x26D627230](v59, v58);

      v65 = v224;
      v66 = v225;
      v89 = v205;
      OUTLINED_FUNCTION_29_0();
      v90();

      v91 = v89;
      v92 = sub_268C159FC();
      v93 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v93))
      {
        v94 = swift_slowAlloc();
        v95 = v65;
        v96 = swift_slowAlloc();
        v224 = v96;
        *v94 = 136315138;
        v97 = sub_268BB3D28(v95, v66, &v224);
        v211 = v59;
        v98 = v30;
        v99 = v89;
        v100 = v97;

        *(v94 + 4) = v100;
        _os_log_impl(&dword_268BAD000, v92, v91, "PlaybackControlsCommandProviding#handleSendCommandResult: %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        v65 = v95;
        OUTLINED_FUNCTION_30();
        v68 = v221;
        OUTLINED_FUNCTION_30();

        OUTLINED_FUNCTION_19_0();
        v101 = v99;
        v30 = v98;
        v59 = v211;
      }

      else
      {

        OUTLINED_FUNCTION_19_0();
        v101 = v89;
      }

      v209(v101, v68);
      v224 = MEMORY[0x277D84F90];
      type metadata accessor for TailspinHelper();
      v102 = static TailspinHelper.doesCurrentDevicePolicyAllowTimeoutErrorsForTailspin(tailspinList:)(&v224);
      v69 = v212;
      if (v102)
      {

        v68 = v221;
        static TailspinHelper.generateTailSpinIfPolicyAndErrorAllow(tailspinList:errorDescription:suiteName:)();
      }

      v67 = v202;
      v70 = &off_279C44000;

      v55 = v220;
    }

    else
    {

      v65 = 0;
      v66 = 0xE000000000000000;
      v67 = v202;
      v68 = v53;
      v69 = v212;
      v70 = &off_279C44000;
    }

    if ([v55 v70[217]] == 17)
    {
      v103 = v65;

      v104 = v203;
      OUTLINED_FUNCTION_13_0();
      v105();
      v106 = sub_268C159FC();
      v107 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v107))
      {
        v108 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_16_0(v108);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v109, v110, "PlaybackControlsCommandProviding#handleSendCommandResult timed out waiting for can be NowPlaying");
        OUTLINED_FUNCTION_11_0();
      }

      OUTLINED_FUNCTION_19_0();
      v209(v104, v68);
      v111 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v111 = v103 & 0xFFFFFFFFFFFFLL;
      }

      if (v111)
      {
        OUTLINED_FUNCTION_17_0();
        v112 = swift_allocObject();
        v112[2] = v103;
        v112[3] = v66;
        v112[4] = v206;
        v112[5] = v30;
        v113 = v213;
        v112[6] = v208;
        v112[7] = v113;
        OUTLINED_FUNCTION_20_0();
        *(v114 + 80) = v115;
        v116 = v114 | 0x4000000000000000;
        v117 = v214;
        *(v114 + 64) = v207;
        *(v114 + 72) = v117;
        v118 = v220;
      }

      else
      {

        v118 = v220;
        v116 = 0x8000000000000038;
      }

      v226 = v116;
      goto LABEL_79;
    }

    if ([v55 v70[217]] == 18)
    {

      OUTLINED_FUNCTION_13_0();
      v120();
      v121 = sub_268C159FC();
      v122 = sub_268C15DEC();
      if (OUTLINED_FUNCTION_12_0(v122))
      {
        v123 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_16_0(v123);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v124, v125, "PlaybackControlsCommandProviding#handleSendCommandResult no NowPlaying App");
        OUTLINED_FUNCTION_11_0();
      }

      v126 = OUTLINED_FUNCTION_6_0();
      v127(v126);
      OUTLINED_FUNCTION_4_0();
      if (!v128)
      {

        OUTLINED_FUNCTION_20_0();
        v150 = v149 + 16;
LABEL_78:
        v118 = v220;
        v226 = v150;
LABEL_79:
        OUTLINED_FUNCTION_27_0();
LABEL_80:
        v165 = OUTLINED_FUNCTION_28_0();
        v69(v165);
        sub_268BB99A4(v67);

LABEL_81:
        goto LABEL_82;
      }

      OUTLINED_FUNCTION_17_0();
      v129 = swift_allocObject();
      v130 = OUTLINED_FUNCTION_24_0(v129);
      v130[4] = *(v131 - 256);
      v130[5] = v30;
      OUTLINED_FUNCTION_2_0(v130);
      OUTLINED_FUNCTION_20_0();
      v134 = v133 + 16;
LABEL_77:
      v150 = v132 | 0x4000000000000000;
      *(v132 + 80) = v134;
      goto LABEL_78;
    }

    if (!v210)
    {
      v151 = v59 == 0xD000000000000031 && 0x8000000268C1B970 == v58;
      if (v151 || (sub_268C1618C() & 1) != 0)
      {

        OUTLINED_FUNCTION_13_0();
        v152();
        v153 = sub_268C159FC();
        v154 = sub_268C15DEC();
        if (OUTLINED_FUNCTION_12_0(v154))
        {
          v155 = OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_16_0(v155);
          OUTLINED_FUNCTION_7_0(&dword_268BAD000, v156, v157, "PlaybackControlsCommandProviding#handleSendCommandResult no content of any kind to resume");
          OUTLINED_FUNCTION_11_0();
        }

        v158 = OUTLINED_FUNCTION_6_0();
        v159(v158);
        OUTLINED_FUNCTION_4_0();
        if (!v160)
        {

          OUTLINED_FUNCTION_20_0();
          v150 = v198 + 24;
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_17_0();
        v161 = swift_allocObject();
        v162 = OUTLINED_FUNCTION_24_0(v161);
        v162[4] = *(v163 - 256);
        v162[5] = v30;
        OUTLINED_FUNCTION_2_0(v162);
        OUTLINED_FUNCTION_20_0();
        v134 = v164 + 24;
        goto LABEL_77;
      }
    }

    v135 = sub_268BB9270(v210, v59, v58, v119);

    if (v135)
    {

      OUTLINED_FUNCTION_13_0();
      v136();
      v137 = sub_268C159FC();
      v138 = sub_268C15DEC();
      v139 = OUTLINED_FUNCTION_12_0(v138);
      v140 = v209;
      if (v139)
      {
        v141 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_16_0(v141);
        OUTLINED_FUNCTION_7_0(&dword_268BAD000, v142, v143, "PlaybackControlsCommandProviding#handleSendCommandResult no network connection to allow resume");
        OUTLINED_FUNCTION_11_0();
      }

      OUTLINED_FUNCTION_19_0();
      v140(v200[3], v68);
      OUTLINED_FUNCTION_4_0();
      if (!v144)
      {

        OUTLINED_FUNCTION_20_0();
        v150 = v189 + 32;
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_17_0();
      v145 = swift_allocObject();
      v146 = OUTLINED_FUNCTION_24_0(v145);
      v146[4] = *(v147 - 256);
      v146[5] = v30;
      OUTLINED_FUNCTION_2_0(v146);
      OUTLINED_FUNCTION_20_0();
      v134 = v148 + 32;
      goto LABEL_77;
    }

    v226 = v67;
    v166 = PlaybackControllingError.description.getter();
    v168 = v167;
    v224 = 0x8000000000000000;
    v170 = v166 == PlaybackControllingError.description.getter() && v168 == v169;
    v201 = v30;
    if (v170)
    {
    }

    else
    {
      v171 = sub_268C1618C();

      if ((v171 & 1) == 0)
      {

LABEL_92:
        OUTLINED_FUNCTION_29_0();
        v173();
        v118 = v220;
        v174 = sub_268C159FC();
        v175 = sub_268C15DEC();

        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          *v176 = 138543362;
          *(v176 + 4) = v118;
          *v177 = v118;
          v178 = v118;
          _os_log_impl(&dword_268BAD000, v174, v175, "Send command failed with error: %{public}@", v176, 0xCu);
          sub_268BB99FC(v177);
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();
        }

        v179 = OUTLINED_FUNCTION_6_0();
        v180(v179);
        OUTLINED_FUNCTION_4_0();
        if (v181)
        {
          OUTLINED_FUNCTION_17_0();
          v182 = swift_allocObject();
          v183 = OUTLINED_FUNCTION_24_0(v182);
          v185 = *(v184 - 256);
          v186 = v201;
          v183[4] = v185;
          v183[5] = v186;
          v187 = OUTLINED_FUNCTION_2_0(v183);
          v188 = v187 | 0x4000000000000000;
          *(v187 + 80) = v67;
        }

        else
        {

          v188 = v67;
        }

        v226 = v188;
        OUTLINED_FUNCTION_27_0();
        sub_268BB99C0(v67);
        goto LABEL_80;
      }
    }

    sub_268BB92EC(v223, &v226);

    v172 = v226;
    if ((~v226 & 0xF000000000000007) != 0)
    {
      OUTLINED_FUNCTION_4_0();
      if (v190)
      {
        OUTLINED_FUNCTION_17_0();
        v191 = swift_allocObject();
        v192 = OUTLINED_FUNCTION_24_0(v191);
        v194 = *(v193 - 256);
        v195 = v201;
        v192[4] = v194;
        v192[5] = v195;
        v196 = OUTLINED_FUNCTION_2_0(v192);
        v197 = v196 | 0x4000000000000000;
        *(v196 + 80) = v172;
      }

      else
      {

        v197 = v172;
      }

      v226 = v197;
      OUTLINED_FUNCTION_27_0();
      sub_268BB99C0(v172);
      v199 = OUTLINED_FUNCTION_28_0();
      v69(v199);
      sub_268BB99DC(v172);
      sub_268BB99A4(v67);

      goto LABEL_81;
    }

    goto LABEL_92;
  }

  v201 = v30;
  v47 = 7104878;
  v48 = swift_slowAlloc();
  v226 = swift_slowAlloc();
  *v48 = 136446466;
  if (v27)
  {
    swift_getErrorValue();
    v49 = sub_268C161DC();
    v51 = v50;
  }

  else
  {
    v51 = 0xE300000000000000;
    v49 = 7104878;
  }

  v71 = sub_268BB3D28(v49, v51, &v226);

  *(v48 + 4) = v71;
  *(v48 + 12) = 2082;
  v72 = v223;
  if (v223)
  {
    v73 = sub_268BB9B44(0, &qword_2802CDF30, 0x277CCABB0);
    v47 = MEMORY[0x26D6272E0](v72, v73);
    v75 = v74;
  }

  else
  {
    v75 = 0xE300000000000000;
  }

  v76 = sub_268BB3D28(v47, v75, &v226);

  *(v48 + 14) = v76;
  _os_log_impl(&dword_268BAD000, v44, v45, "Handling send command results with errors: %{public}s, and statuses: %{public}s", v48, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_30();

  v52 = *(v222 + 8);
  v53 = v221;
  (v52)(v220);
  v27 = v216;
  v30 = v201;
  if (v216)
  {
    goto LABEL_20;
  }

LABEL_35:

  sub_268BB92EC(v223, &v226);

  v77 = v226;
  if ((~v226 & 0xF000000000000007) != 0)
  {

    v226 = v77;
    OUTLINED_FUNCTION_27_0();
    sub_268BB99C0(v77);
    v84 = OUTLINED_FUNCTION_28_0();
    v212(v84);
    sub_268BB99DC(v77);
LABEL_82:
    sub_268BB99F0(v226, v227);
    goto LABEL_83;
  }

  v78 = v209;
  v218(v209, v217, v53);
  v79 = sub_268C159FC();
  v80 = sub_268C15DCC();
  if (OUTLINED_FUNCTION_12_0(v80))
  {
    *OUTLINED_FUNCTION_23_0() = 0;
    OUTLINED_FUNCTION_7_0(&dword_268BAD000, v81, v82, "The command was successful");
    OUTLINED_FUNCTION_30();
  }

  v52(v78, v53);
  v226 = 0;
  LOBYTE(v227) = 0;
  v83 = OUTLINED_FUNCTION_28_0();
  v212(v83);

LABEL_83:
  OUTLINED_FUNCTION_32_0();
}

void sub_268BB787C(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D27858]) init];
  v11 = sub_268C15B4C();
  if (a3)
  {
    a3 = sub_268C15BEC();
  }

  OUTLINED_FUNCTION_22_0();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v14[4] = sub_268BB9878;
  v14[5] = v12;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_18_0();
  v14[2] = sub_268BB79C4;
  v14[3] = &block_descriptor_50;
  v13 = _Block_copy(v14);

  [v10 pauseDevicesByUID:v11 withRefId:a3 audioRoutingInfo:a4 & 0x1010101 completion:v13];
  _Block_release(v13);
}

uint64_t sub_268BB79C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_268C15BFC();
  v5 = v4;

  v2(v3, v5);
}

void sub_268BB7A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 56);
  v7 = sub_268C15CFC();
  OUTLINED_FUNCTION_22_0();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_268BB9850;
  v10[5] = v8;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_18_0();
  v10[2] = sub_268BB7B14;
  v10[3] = &block_descriptor_44;
  v9 = _Block_copy(v10);

  [v6 discoverRemoteControlEndpointsMatchingUIDs:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_268BB7B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = sub_268C15D0C();
  v5 = sub_268C15D0C();

  v3(v4, v5);
}

void sub_268BB7BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_268C15BEC();
  v8 = sub_268C15CFC();
  v9 = sub_268C15BEC();
  v12[4] = a4;
  v12[5] = a5;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_0();
  v12[2] = v10;
  v12[3] = &block_descriptor;
  v11 = _Block_copy(v12);

  MRAVEndpointAddOutputDevicesToGroupFromSource();
  _Block_release(v11);
}

void sub_268BB7C90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_268BB7CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_268C15BEC();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_268C15CFC();
  v9 = sub_268C15BEC();
  v12[4] = a4;
  v12[5] = a5;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_0();
  v12[2] = v10;
  v12[3] = &block_descriptor_98;
  v11 = _Block_copy(v12);

  MRAVEndpointMoveOutputGroupToDevicesFromSource();
  _Block_release(v11);
}

void sub_268BB7E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, float a6)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D27880]) init];
  v12 = sub_268C15CFC();
  v16[4] = a2;
  v16[5] = a3;
  OUTLINED_FUNCTION_0_0();
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_10_0();
  v16[2] = v13;
  v16[3] = a4;
  v14 = _Block_copy(v16);

  *&v15 = a6;
  [v11 *a5];
  _Block_release(v14);
}

void sub_268BB7F08()
{
  OUTLINED_FUNCTION_30_0();
  v5 = v4;
  v7 = v6;
  v8 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_22_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v0;
  if (v1)
  {

    v16 = v1;
    if (v7)
    {
      v17 = sub_268C15BEC();
    }

    else
    {
      v17 = 0;
    }

    v33 = sub_268BB9B3C;
    v34 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    OUTLINED_FUNCTION_10_0();
    v31 = v26;
    v32 = &block_descriptor_86;
    v27 = _Block_copy(&aBlock);

    LODWORD(v28) = v5;
    [v1 setOutputDeviceVolume:v17 outputDevice:v3 queue:v27 completion:{v28, aBlock, v30}];
    _Block_release(v27);
  }

  else
  {
    v18 = qword_2802CDB70;

    if (v18 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v8, qword_2802D2ED8);
    OUTLINED_FUNCTION_14_0();
    v19(v14);
    v20 = sub_268C159FC();
    v21 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_34_0(v21))
    {
      *OUTLINED_FUNCTION_23_0() = 0;
      OUTLINED_FUNCTION_33_0(&dword_268BAD000, v22, v23, "PlaybackControlsCommandProvider#setDeviceVolume endpoint is nil");
      OUTLINED_FUNCTION_30();
    }

    (*(v10 + 8))(v14, v8);
    sub_268BB9AE8();
    v24 = swift_allocError();
    *v25 = 0;
    sub_268BD33FC();
  }
}

void sub_268BB81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_30_0();
  v11 = v10;
  v12 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_22_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = v6;
  if (v7)
  {

    v20 = v7;
    if (v11)
    {
      v21 = sub_268C15BEC();
    }

    else
    {
      v21 = 0;
    }

    v31[4] = sub_268BB9AE0;
    v31[5] = v19;
    OUTLINED_FUNCTION_9_0();
    v31[1] = 1107296256;
    v31[2] = sub_268BB8448;
    v31[3] = &block_descriptor_80;
    v30 = _Block_copy(v31);

    [v7 outputDeviceVolume:v21 queue:v9 completion:v30];
    _Block_release(v30);
  }

  else
  {
    v22 = qword_2802CDB70;

    if (v22 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v12, qword_2802D2ED8);
    OUTLINED_FUNCTION_14_0();
    v23(v18);
    v24 = sub_268C159FC();
    v25 = sub_268C15DEC();
    if (OUTLINED_FUNCTION_34_0(v25))
    {
      *OUTLINED_FUNCTION_23_0() = 0;
      OUTLINED_FUNCTION_33_0(&dword_268BAD000, v26, v27, "PlaybackControlsCommandProvider#getDeviceVolume endpoint is nil");
      OUTLINED_FUNCTION_30();
    }

    (*(v14 + 8))(v18, v12);
    sub_268BB9AE8();
    v28 = swift_allocError();
    *v29 = 0;
    sub_268BD43B8(v28, v8);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BB8448(uint64_t a1, void *a2, float a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_268BB84C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_18_0();
  v4[2] = sub_268BB8558;
  v4[3] = &block_descriptor_74;
  v3 = _Block_copy(v4);

  MRMediaRemoteGetMediaPlaybackVolume();
  _Block_release(v3);
}

uint64_t sub_268BB8558(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_268BB85AC(void *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = [a1 languageOptionGroups];
    sub_268BB9B44(0, &qword_2802CDF48, 0x277D278D0);
    v4 = sub_268C15D0C();
  }

  else
  {
    v4 = 0;
  }

  a2(v4);
}

uint64_t sub_268BB8648(void *a1, uint64_t (*a2)(__int128 *))
{
  if (a1)
  {
    [a1 duration];
    v3 = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
  }

  else
  {
    v3 = 0uLL;
    v6 = 2;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return a2(&v8);
}

void sub_268BB86C0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  if (sub_268C1535C())
  {
    a3(0);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = sub_268C15BEC();
    OUTLINED_FUNCTION_22_0();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v11[4] = sub_268BB9AB8;
    v11[5] = v9;
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_18_0();
    v11[2] = sub_268BB87F8;
    v11[3] = &block_descriptor_71;
    v10 = _Block_copy(v11);

    [v7 shouldUseQuickControlsToDisplayPlatterForRouteIdentifier:v8 completion:v10];
    _Block_release(v10);
  }
}

uint64_t sub_268BB87F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_268BB884C()
{
  v1 = v0;
  v2 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_0();
  v8 = v7 - v6;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if (sub_268C1535C())
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    v9 = __swift_project_value_buffer(v2, qword_2802D2ED8);
    (*(v4 + 16))(v8, v9, v2);
    v10 = sub_268C159FC();
    v11 = sub_268C15DDC();
    if (OUTLINED_FUNCTION_34_0(v11))
    {
      v12 = OUTLINED_FUNCTION_23_0();
      *v12 = 0;
      _os_log_impl(&dword_268BAD000, v10, v11, "PlaybackControlsCommandProvider#acquireSnippetAssertion skipped on xrOS", v12, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v4 + 8))(v8, v2);
    return 0;
  }

  else
  {
    v14 = [objc_opt_self() quickControlsControllerWithDelegate_];
    v15 = [v14 acquireQuickControlsAssertion];
    v13 = sub_268C15BFC();
    v17 = v16;

    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v1 + 72);
    sub_268BEF2AC(v14, v13, v17, isUniquelyReferenced_nonNull_native);
    *(v1 + 72) = v20;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v13;
}

void sub_268BB8A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_31_0();
  v8 = v7;
  v10 = v9;
  v11 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v31 - v18;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  if (sub_268C1535C())
  {
    if (qword_2802CDB70 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
    }

    __swift_project_value_buffer(v11, qword_2802D2ED8);
    OUTLINED_FUNCTION_14_0();
    v20(v19);
    v21 = sub_268C159FC();
    v22 = sub_268C15DDC();
    if (OUTLINED_FUNCTION_34_0(v22))
    {
      v23 = OUTLINED_FUNCTION_23_0();
      *v23 = 0;
      _os_log_impl(&dword_268BAD000, v21, v22, "PlaybackControlsCommandProvider#releaseSnippetAssertion skipped on xrOS", v23, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v13 + 8))(v19, v11);
  }

  else
  {
    swift_beginAccess();
    v24 = v6[9];

    v25 = sub_268C0F354(v10, v8, v24);

    if (v25)
    {
      [v25 releaseQuickControlsAssertion];
      swift_beginAccess();
      sub_268BB971C(v10, v8);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_2802CDB70 != -1)
      {
        OUTLINED_FUNCTION_1_0(&qword_2802CDB70);
      }

      __swift_project_value_buffer(v11, qword_2802D2ED8);
      OUTLINED_FUNCTION_14_0();
      v26(v16);

      v27 = sub_268C159FC();
      v28 = sub_268C15DEC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_268BB3D28(v10, v8, v31);
        _os_log_impl(&dword_268BAD000, v27, v28, "PlaybackControlsCommandProvider#releaseSnippetAssertion Expected to find controller for sessionID: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();
      }

      (*(v13 + 8))(v16, v11);
    }
  }

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BB8DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_268C1593C();
  swift_allocObject();
  sub_268C1592C();
  sub_268C1591C();
}

uint64_t sub_268BB8EAC(char a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2802D2F10);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_268C159FC();
  v8 = sub_268C15DFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_268BAD000, v7, v8, "PlaybackControlsCommandProvider#generateABCSnapshot ABC result: %{BOOL}d", v9, 8u);
    MEMORY[0x26D628010](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t PlaybackControlsCommandProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t PlaybackControlsCommandProvider.__deallocating_deinit()
{
  PlaybackControlsCommandProvider.deinit();
  OUTLINED_FUNCTION_17_0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_268BB9100()
{
  v0 = sub_268C152DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C152AC();
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_268C15BEC();
  [v4 setDateFormat_];

  v6 = sub_268C1529C();
  v7 = [v4 stringFromDate_];

  v8 = sub_268C15BFC();
  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_268BB9270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    sub_268BB9A64();
    v4 = sub_268C15F7C();
  }

  return v4 & 1;
}

void sub_268BB92EC(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  if (a1)
  {
    if (sub_268BC4EF4(a1) && ((sub_268BC4F00(), (a1 & 0xC000000000000001) != 0) ? (v11 = MEMORY[0x26D627640](0, a1)) : (v11 = *(a1 + 32)), v12 = v11, v13 = [v11 integerValue], v12, !v13))
    {
      v25 = 0xF000000000000007;
    }

    else
    {
      if (qword_2802CDB70 != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v4, qword_2802D2ED8);
      (*(v5 + 16))(v7, v14, v4);

      v15 = sub_268C159FC();
      v16 = sub_268C15DEC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v30 = a2;
        v18 = v17;
        v19 = swift_slowAlloc();
        v31 = v19;
        *v18 = 136446210;
        v20 = sub_268BB9B44(0, &qword_2802CDF30, 0x277CCABB0);
        v21 = MEMORY[0x26D6272E0](a1, v20);
        v23 = sub_268BB3D28(v21, v22, &v31);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_268BAD000, v15, v16, "Send command failed with non 0 status code. statusCodes: %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x26D628010](v19, -1, -1);
        v24 = v18;
        a2 = v30;
        MEMORY[0x26D628010](v24, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      sub_268BF9214(a1, &v31);
      v25 = v31;
    }
  }

  else
  {
    if (qword_2802CDB70 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v4, qword_2802D2ED8);
    (*(v5 + 16))(v10, v26, v4);
    v27 = sub_268C159FC();
    v28 = sub_268C15DEC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_268BAD000, v27, v28, "No status codes returned from MR for send command. Send command failed", v29, 2u);
      MEMORY[0x26D628010](v29, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v25 = 0x8000000000000000;
  }

  *a2 = v25;
}

uint64_t sub_268BB96A8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_268BB971C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_268BD99A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF10, &qword_268C17288);
  sub_268C1610C();

  v7 = *(*(v9 + 56) + 8 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF18, &unk_268C17290);
  sub_268C1611C();
  *v3 = v9;
  return v7;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268BB981C()
{

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268BB98A0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_268BB98FC()
{
  result = qword_2802CDF20;
  if (!qword_2802CDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF20);
  }

  return result;
}

uint64_t sub_268BB9950()
{

  sub_268BB99A4(*(v0 + 80));
  OUTLINED_FUNCTION_17_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

unint64_t sub_268BB99A4(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_268BB99C0(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_268BB99DC(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_268BB99A4(result);
  }

  return result;
}

unint64_t sub_268BB99F0(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_268BB99A4(result);
  }

  return result;
}

uint64_t sub_268BB99FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF28, &unk_268C17900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268BB9A64()
{
  result = qword_2802CDF38;
  if (!qword_2802CDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF38);
  }

  return result;
}

unint64_t sub_268BB9AE8()
{
  result = qword_2802CDF40;
  if (!qword_2802CDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF40);
  }

  return result;
}

uint64_t sub_268BB9B44(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_2_0(void *result)
{
  v2 = *(v1 - 248);
  result[6] = *(v1 - 288);
  result[7] = v2;
  v3 = *(v1 - 240);
  result[8] = *(v1 - 296);
  result[9] = v3;
  return result;
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_0()
{

  JUMPOUT(0x26D628010);
}

BOOL OUTLINED_FUNCTION_12_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  v2 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v2;
}

void OUTLINED_FUNCTION_33_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t UsoIdentifierBuilder.init(semantic:homeAutomationEntityType:encodedSpanInfo:interpretationGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 44) = BYTE4(a6) & 1;
  return result;
}

void UsoIdentifierBuilder.build()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF50, &qword_268C172D0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_13_1();
  v3 = sub_268C155DC();
  OUTLINED_FUNCTION_3_0();
  v24 = v4;
  MEMORY[0x28223BE20](v5);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v22 = &v22 - v8;
  v10 = v0[1];
  v26 = *v0;
  v9 = v26;
  v27 = v10;
  OUTLINED_FUNCTION_19_1();
  sub_268BBA140();
  v25 = v11;
  v26 = v9;
  v27 = v10;
  OUTLINED_FUNCTION_19_1();
  v12 = v3;
  sub_268BBAADC(v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    sub_268BBAE88(v1);
  }

  else
  {
    v13 = v24;
    v14 = *(v24 + 32);
    v15 = v22;
    v14(v22, v1, v12);
    v16 = v23;
    (*(v13 + 16))(v23, v15, v12);
    v17 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268BB31EC(0, *(v17 + 16) + 1, 1, v17);
      v17 = v20;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_268BB31EC(v18 > 1, v19 + 1, 1, v17);
      v17 = v21;
    }

    (*(v13 + 8))(v15, v12);
    *(v17 + 16) = v19 + 1;
    v14((v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19), v16, v12);
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBA140()
{
  v1 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v135 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  MEMORY[0x28223BE20](v7 - 8);
  v134 = &v121[-v8];
  sub_268C1570C();
  OUTLINED_FUNCTION_3_0();
  v131 = v10;
  v132 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  sub_268C156EC();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_1();
  sub_268C1561C();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_0();
  v19 = v18 - v17;
  sub_268C155DC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v24 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 0:
      v135 = &v121[-v22];
      v25 = OUTLINED_FUNCTION_7_1();
      v26(v25);

      sub_268C156DC();
      v27 = OUTLINED_FUNCTION_11_1();
      v28(v27);
      v29 = "homeAutomationPlaceHint";
      v30 = sub_268C1553C();
      OUTLINED_FUNCTION_14_1(v30);
      v145 = v12 + 8;
      v144 = v15;
      OUTLINED_FUNCTION_6_1();
      goto LABEL_7;
    case 2:
      v130 = *(v0 + 40);
      v135 = &v121[-v22];
      v127 = v24;
      v128 = v23;
      v66 = OUTLINED_FUNCTION_10_1();
      v67(v66);
      v68 = sub_268C1560C();
      v70 = OUTLINED_FUNCTION_17_1(v68, v69);
      v71(v70);
      v123 = *(v12 + 104);
      v72 = OUTLINED_FUNCTION_12_1();
      v73(v72);
      v74 = sub_268C156DC();
      v76 = OUTLINED_FUNCTION_9_1(v74, v75);
      v77(v76);
      v78 = OUTLINED_FUNCTION_8_1();
      v79(v78);
      v80 = sub_268C156FC();
      v82 = OUTLINED_FUNCTION_5_0(v80, v81);
      v83(v82);
      v122 = sub_268C1553C();
      v84 = OUTLINED_FUNCTION_3_1();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
      v143 = 1;
      OUTLINED_FUNCTION_16_1();
      v142 = v88;
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_4_1();
      v89 = OUTLINED_FUNCTION_12_1();
      v123(v89);

      v90 = sub_268C156DC();
      v124 = v91;
      v125 = v90;
      v92 = OUTLINED_FUNCTION_11_1();
      v126(v92);
      v93 = OUTLINED_FUNCTION_18_1();
      v94(v93);
      sub_268C156FC();
      v95 = OUTLINED_FUNCTION_15_1();
      v96(v95);
      v97 = OUTLINED_FUNCTION_3_1();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v122);
      v141 = 1;
      OUTLINED_FUNCTION_16_1();
      v140 = v100;
      goto LABEL_5;
    case 3:
      v130 = *(v0 + 40);
      v135 = &v121[-v22];
      v127 = v24;
      v128 = v23;
      v31 = OUTLINED_FUNCTION_10_1();
      v32(v31);
      v33 = sub_268C1560C();
      v35 = OUTLINED_FUNCTION_17_1(v33, v34);
      v36(v35);
      v123 = *(v12 + 104);
      v37 = OUTLINED_FUNCTION_12_1();
      v38(v37);
      v39 = sub_268C156DC();
      v41 = OUTLINED_FUNCTION_9_1(v39, v40);
      v42(v41);
      v43 = OUTLINED_FUNCTION_8_1();
      v44(v43);
      v45 = sub_268C156FC();
      v47 = OUTLINED_FUNCTION_5_0(v45, v46);
      v48(v47);
      v122 = sub_268C1553C();
      v49 = OUTLINED_FUNCTION_3_1();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
      v139 = 1;
      OUTLINED_FUNCTION_16_1();
      v138 = v53;
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_4_1();
      v54 = OUTLINED_FUNCTION_12_1();
      v123(v54);

      v55 = sub_268C156DC();
      v124 = v56;
      v125 = v55;
      v57 = OUTLINED_FUNCTION_11_1();
      v126(v57);
      v58 = OUTLINED_FUNCTION_18_1();
      v59(v58);
      sub_268C156FC();
      v60 = OUTLINED_FUNCTION_15_1();
      v61(v60);
      v62 = OUTLINED_FUNCTION_3_1();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v122);
      v137 = 1;
      OUTLINED_FUNCTION_16_1();
      v136 = v65;
LABEL_5:
      OUTLINED_FUNCTION_1_1();
      v101 = v128;
      sub_268C1559C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDC0, &qword_268C17160);
      v102 = v129;
      v103 = *(v129 + 72);
      v104 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_268C172C0;
      v106 = v105 + v104;
      v107 = v135;
      v108 = v133;
      (*(v102 + 16))(v106, v135, v133);
      (*(v102 + 32))(v106 + v103, v101, v108);
      (*(v102 + 8))(v107, v108);
      break;
    case 7:
      v135 = &v121[-v22];
      v109 = OUTLINED_FUNCTION_7_1();
      v110(v109);

      sub_268C156DC();
      v111 = OUTLINED_FUNCTION_11_1();
      v112(v111);
      v29 = "v16@?0@NSError8";
      v113 = sub_268C1553C();
      OUTLINED_FUNCTION_14_1(v113);
      v147 = v12 + 8;
      v146 = v15;
      OUTLINED_FUNCTION_6_1();
LABEL_7:
      sub_268C1559C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDDC0, &qword_268C17160);
      v114 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_268C172B0;
      (*(v19 + 32))(v115 + v114, v29, v133);
      break;
    default:
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v116 = __swift_project_value_buffer(v1, qword_2802D2F10);
      v117 = v135;
      (*(v135 + 2))(v6, v116, v1);
      v118 = sub_268C159FC();
      v119 = sub_268C15DEC();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_268BAD000, v118, v119, "Unexpected parameter while generating usoIdentifiers", v120, 2u);
        MEMORY[0x26D628010](v120, -1, -1);
      }

      v117[1](v6, v1);
      break;
  }

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBAADC(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_268C1570C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13_1();
  v10 = sub_268C156EC();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  v16 = v15 - v14;
  if (*(v3 + 32))
  {
    (*(v12 + 104))(v16, *MEMORY[0x277D5E6A8], v10);

    sub_268C156DC();
    (*(v12 + 8))(v16, v10);
    (*(v8 + 104))(v2, *MEMORY[0x277D5E6C0], v6);
    sub_268C156FC();
    (*(v8 + 8))(v2, v6);
    sub_268C1553C();
    v17 = OUTLINED_FUNCTION_3_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    sub_268C1559C();
    v21 = sub_268C155DC();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v21);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    sub_268C155DC();
    OUTLINED_FUNCTION_32_0();

    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }
}

uint64_t sub_268BBADEC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_268BBAE88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF50, &qword_268C172D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BBAF08(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_268BBAF50(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_268C15D2C();
  }

  return result;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_268BBAF90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 45))
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

uint64_t sub_268BBAFD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return sub_268C1559C();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2)
{
  *(v4 - 296) = a1;
  *(v4 - 304) = a2;
  *(v4 - 184) = *(v2 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  *(v3 - 168) = v0;
  *(v3 - 160) = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2)
{
  *(v4 - 280) = a1;
  *(v4 - 288) = a2;
  *(v4 - 232) = *(v2 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  *(v5 - 168) = v0;
  *(v5 - 160) = v2;
  result = v4;
  *(v5 - 208) = v3;
  *(v5 - 196) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1)
{
  v4 = *(v1 - 152);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2)
{
  *(v3 - 248) = a2;
  *(v3 - 240) = a1;
  return v2;
}

void OUTLINED_FUNCTION_19_1()
{
  *(v5 - 112) = v4;
  *(v5 - 104) = v1;
  *(v5 - 96) = v2;
  *(v5 - 88) = v3;
  *(v5 - 84) = v0;
}

uint64_t FuzzyMatchType.description.getter()
{
  v1 = *v0;
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000020, 0x8000000268C1BAA0);
  sub_268BBB31C(v1);
  MEMORY[0x26D627230](0x53686374616D202CLL, 0xEE00203A65726F63);
  sub_268C15DAC();
  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_268BBB31C(char a1)
{
  v2 = 0xED0000686374614DLL;
  v3 = 0x746365667265702ELL;
  switch(a1)
  {
    case 1:
      v3 = 0x6C6169747261702ELL;
      break;
    case 2:
      v2 = 0x8000000268C1BAD0;
      v3 = 0xD000000000000011;
      break;
    case 3:
      v2 = 0xEB00000000686374;
      v3 = 0x614D7361696C612ELL;
      break;
    default:
      break;
  }

  MEMORY[0x26D627230](v3, v2);
}

uint64_t sub_268BBB3F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268C158BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268C158CC();
  sub_268C158AC();
  v7 = sub_268C1587C();
  v8 = *(v3 + 8);
  result = v8(v5, v2);
  if (v7 & 1) != 0 || (sub_268C1588C(), v10 = sub_268C1587C(), result = v8(v5, v2), (v10))
  {
    v11 = 1;
  }

  else
  {
    sub_268C1589C();
    v12 = sub_268C1587C();
    result = v8(v5, v2);
    if (v12)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }
  }

  *a1 = v11;
  v13 = *&v6;
  if ((v6 & 0x100000000) != 0)
  {
    v13 = 0.0;
  }

  *(a1 + 4) = v13;
  return result;
}

BOOL static FuzzyMatchType.< infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 == v2)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return 4 - v2 < (4 - v3);
  }
}

BOOL sub_268BBB5EC(unsigned __int8 a1, unsigned __int8 a2, float a3, float a4)
{
  if (a1 == a2)
  {
    return a4 >= a3;
  }

  else
  {
    return 4 - a2 >= 4 - a1;
  }
}

BOOL sub_268BBB62C(unsigned __int8 a1, unsigned __int8 a2, float a3, float a4)
{
  if (a2 == a1)
  {
    return a3 >= a4;
  }

  else
  {
    return 4 - a1 >= 4 - a2;
  }
}

BOOL sub_268BBB66C(unsigned __int8 a1, unsigned __int8 a2, float a3, float a4)
{
  if (a1 == a2)
  {
    return a4 < a3;
  }

  else
  {
    return 4 - a2 < 4 - a1;
  }
}

unint64_t SpanMatchAccuracy.description.getter()
{
  result = 0x746365667265702ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6C6169747261702ELL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x614D7361696C612ELL;
      break;
    default:
      return result;
  }

  return result;
}

SiriPlaybackControlSupport::SpanMatchAccuracy_optional __swiftcall SpanMatchAccuracy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 5)
  {
    v2 = 4;
  }

  else
  {
    v2 = 4 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_268BBB784@<X0>(uint64_t *a1@<X8>)
{
  result = SpanMatchAccuracy.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_268BBB7B0()
{
  result = qword_2802CDF60;
  if (!qword_2802CDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF60);
  }

  return result;
}

unint64_t sub_268BBB808()
{
  result = qword_2802CDF68;
  if (!qword_2802CDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CDF68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FuzzyMatchType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[8])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FuzzyMatchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpanMatchAccuracy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpanMatchAccuracy(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268BBBA58);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268BBBAA4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_21_0(a1);
  MEMORY[0x26D627820](4 - v1);
  return sub_268C1626C();
}

uint64_t sub_268BBBB00(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_21_0(a1);
  MEMORY[0x26D627820](v1 + 1000);
  return sub_268C1626C();
}

uint64_t sub_268BBBB60(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0(a1);
  MEMORY[0x26D627820](a1);
  return sub_268C1626C();
}

uint64_t sub_268BBBCA4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_21_0(a1);
  MEMORY[0x26D627820](v1);
  return sub_268C1626C();
}

uint64_t sub_268BBBD10(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_0(a1);
  sub_268C15C3C();
  return sub_268C1626C();
}

uint64_t sub_268BBBD70(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_21_0(a1);
  a2(v5, a1);
  return sub_268C1626C();
}

uint64_t sub_268BBBDB8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_0(a1);
  OUTLINED_FUNCTION_22_1(v1);
  return sub_268C1626C();
}

uint64_t sub_268BBBDF4(uint64_t a1, char a2)
{
  sub_268C15C3C();
}

uint64_t sub_268BBBF30(uint64_t a1, char a2)
{
  sub_268C15C3C();
}

uint64_t sub_268BBBFD8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 8:
      OUTLINED_FUNCTION_18_2();
      break;
    default:
      break;
  }

  sub_268C15C3C();
}

uint64_t sub_268BBC170(uint64_t a1, char a2)
{
  sub_268C15C3C();
}

uint64_t sub_268BBC22C(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_9_2();
      break;
    case 6:
    case 8:
    case 9:
    case 10:
      break;
    default:
      OUTLINED_FUNCTION_8_2();
      break;
  }

  sub_268C15C3C();
}

uint64_t sub_268BBC3F0(uint64_t a1, char a2)
{
  sub_268C15C3C();
}

uint64_t sub_268BBC458(uint64_t a1, char a2)
{
  sub_268C15C3C();
}

uint64_t sub_268BBC4BC(uint64_t a1, unsigned __int8 a2)
{
  sub_268C15C3C();
}

uint64_t sub_268BBC55C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_2();
  switch(v2)
  {
    case 5:
      break;
    default:
      OUTLINED_FUNCTION_9_2();
      break;
  }

  sub_268C15C3C();
}

uint64_t sub_268BBC670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  sub_268C15C3C();
}

uint64_t sub_268BBC6D4(uint64_t a1, char a2)
{
  sub_268C15C3C();
}

uint64_t sub_268BBC798(uint64_t a1, char a2)
{
  sub_268C15C3C();
}

uint64_t sub_268BBC8AC()
{
  v0 = sub_268C1624C();
  OUTLINED_FUNCTION_22_1(v0);
  return sub_268C1626C();
}

uint64_t sub_268BBC94C(uint64_t a1, char a2)
{
  sub_268C1624C();
  sub_268C15C3C();

  return sub_268C1626C();
}

uint64_t sub_268BBCA00(uint64_t a1, char a2)
{
  sub_268C1624C();
  sub_268C15C3C();

  return sub_268C1626C();
}

uint64_t sub_268BBCA78(uint64_t a1, char a2)
{
  sub_268C1624C();
  sub_268C15C3C();

  return sub_268C1626C();
}

uint64_t sub_268BBCB40(uint64_t a1, uint64_t a2)
{
  sub_268C1624C();
  MEMORY[0x26D627820](a2);
  return sub_268C1626C();
}

uint64_t sub_268BBCB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268C1624C();
  sub_268C15C3C();
  return sub_268C1626C();
}

uint64_t sub_268BBCBE4(uint64_t a1, unsigned __int8 a2)
{
  sub_268C1624C();
  MEMORY[0x26D627820](4 - a2);
  return sub_268C1626C();
}

uint64_t sub_268BBCC5C(uint64_t a1, unsigned __int8 a2)
{
  sub_268C1624C();
  MEMORY[0x26D627820](a2);
  return sub_268C1626C();
}

uint64_t sub_268BBCCA0(uint64_t a1, unsigned __int8 a2)
{
  sub_268C1624C();
  MEMORY[0x26D627820](a2 + 1000);
  return sub_268C1626C();
}

uint64_t sub_268BBCD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_268C1624C();
  a3(v4);
  sub_268C15C3C();

  return sub_268C1626C();
}

uint64_t sub_268BBCD84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_268C1624C();
  a3(v6, a2);
  return sub_268C1626C();
}

void sub_268BBCDD0()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v43 = v3;
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_2();
  v42 = v4;
  OUTLINED_FUNCTION_10_2();
  sub_268C159EC();
  OUTLINED_FUNCTION_3_0();
  v40 = v6;
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v39 = v7;
  OUTLINED_FUNCTION_10_2();
  sub_268C15E4C();
  OUTLINED_FUNCTION_3_0();
  v36 = v9;
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  v35 = v10;
  OUTLINED_FUNCTION_10_2();
  sub_268C15E1C();
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  v12 = sub_268C15AAC();
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_15_0();
  *&v0[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeManagerRefreshTimeout] = 0x4014000000000000;
  v38 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManagerOptions;
  *&v0[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManagerOptions] = 1860;
  v13 = &v0[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeData];
  v14 = MEMORY[0x277D84F90];
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 3) = v14;
  *(v13 + 4) = v14;
  *(v13 + 2) = 0;
  v34 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_readyGroup;
  *&v0[v34] = dispatch_group_create();
  v15 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homekitInitSignpostID;
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  qword_2802D2EB8;
  sub_268C159DC();
  sub_268C159DC();
  v33 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue;
  sub_268BB9B44(0, &qword_2802CE068, 0x277D85C78);
  sub_268C15A8C();
  v46 = v14;
  sub_268BC1148(&qword_2802CE070, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE078, &unk_268C177B0);
  sub_268BC1190(&unk_2802CE080, &qword_2802CE078, &unk_268C177B0);
  sub_268C15FCC();
  (*(v36 + 104))(v35, *MEMORY[0x277D85260], v37);
  v16 = sub_268C15E8C();
  *&v0[v33] = v16;
  v17 = *&v0[v34];
  type metadata accessor for HomeManager.DataSourceTracker();
  OUTLINED_FUNCTION_19_2();
  v18 = swift_allocObject();
  sub_268BBFEB4(v16, v17, 0);
  *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker] = v18;
  v19 = *&v1[v33];
  v20 = *&v1[v34];
  OUTLINED_FUNCTION_19_2();
  v21 = swift_allocObject();
  sub_268BBFEB4(v19, v20, 1);
  *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker] = v21;
  v22 = *&v1[v38];
  if ((v22 & 0x8000) == 0)
  {
    *&v1[v38] = v22 | 0x8000;
  }

  v23 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_268BC11E4(0xD000000000000010, 0x8000000268C1BD90, v23);
  [v23 setMaxConcurrentOperationCount_];
  [v23 setUnderlyingQueue_];
  v24 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:*&v1[v38] cachePolicy:2];
  [v24 setDelegateQueue_];
  sub_268C15EAC();
  (*(v40 + 16))(v39, &v1[v15], v41);
  sub_268C159CC();
  (*(v40 + 8))(v39, v41);
  if (qword_2802CDB68 != -1)
  {
    OUTLINED_FUNCTION_3_2(&qword_2802CDB68);
  }

  __swift_project_value_buffer(v44, qword_2802D2EC0);
  OUTLINED_FUNCTION_11_2();
  v25(v42);
  v26 = sub_268C159FC();
  v27 = sub_268C15DCC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_23_0();
    *v28 = 0;
    _os_log_impl(&dword_268BAD000, v26, v27, "Initializing HomeManager", v28, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v43 + 8))(v42, v44);
  v29 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager] = v29;
  v45.receiver = v1;
  v45.super_class = type metadata accessor for HomeManager(0);
  v30 = objc_msgSendSuper2(&v45, sel_init);
  v31 = *&v30[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager];
  v32 = v30;
  [v31 setDelegate_];
  sub_268BBD464();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBD464()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v80 = v5;
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_2();
  v78 = v6;
  OUTLINED_FUNCTION_10_2();
  v79 = sub_268C15AAC();
  OUTLINED_FUNCTION_3_0();
  v77 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  v76 = v9;
  OUTLINED_FUNCTION_10_2();
  v10 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_2();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - v27;
  if (sub_268BBFBE8())
  {
    if (qword_2802CDB68 != -1)
    {
      OUTLINED_FUNCTION_3_2(&qword_2802CDB68);
    }

    __swift_project_value_buffer(v10, qword_2802D2EC0);
    OUTLINED_FUNCTION_11_2();
    v29(v28);
    v30 = sub_268C159FC();
    v31 = sub_268C15DCC();
    if (os_log_type_enabled(v30, v31))
    {
      *OUTLINED_FUNCTION_23_0() = 0;
      OUTLINED_FUNCTION_23_1(&dword_268BAD000, v32, v31, "HomeManager manager already initialized, skipping warm up");
      OUTLINED_FUNCTION_30();
    }

    v33 = *(v12 + 8);
    v34 = v28;
LABEL_7:
    v35 = v10;
    goto LABEL_16;
  }

  v75 = v16;
  if ((v3 & 1) == 0)
  {
    if (sub_268BBFB68())
    {
      if (qword_2802CDB68 != -1)
      {
        OUTLINED_FUNCTION_3_2(&qword_2802CDB68);
      }

      __swift_project_value_buffer(v10, qword_2802D2EC0);
      OUTLINED_FUNCTION_11_2();
      v56(v25);
      v57 = sub_268C159FC();
      v58 = sub_268C15DCC();
      if (OUTLINED_FUNCTION_13_2(v58))
      {
        *OUTLINED_FUNCTION_23_0() = 0;
        OUTLINED_FUNCTION_27_1(&dword_268BAD000, v59, v60, "HomeManager manager initialization already in progress.");
        OUTLINED_FUNCTION_30();
      }

      v33 = *(v12 + 8);
      v34 = v25;
      goto LABEL_7;
    }

    if ((sub_268BBFB68() & 1) == 0 && (sub_268BBFBE8() & 1) == 0)
    {
      LODWORD(v74) = v3;
      if (qword_2802CDB68 != -1)
      {
        OUTLINED_FUNCTION_3_2(&qword_2802CDB68);
      }

      __swift_project_value_buffer(v10, qword_2802D2EC0);
      OUTLINED_FUNCTION_11_2();
      v61(v22);
      v62 = sub_268C159FC();
      v63 = sub_268C15DCC();
      if (OUTLINED_FUNCTION_13_2(v63))
      {
        *OUTLINED_FUNCTION_23_0() = 0;
        OUTLINED_FUNCTION_23_1(&dword_268BAD000, v64, &unk_2802D2000, "Previous HomeManager initialization failed. Reinitializing...");
        OUTLINED_FUNCTION_30();
      }

      (*(v12 + 8))(v22, v10);
      v65 = OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue;
      v73 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue];
      v66 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_readyGroup];
      type metadata accessor for HomeManager.DataSourceTracker();
      OUTLINED_FUNCTION_19_2();
      v67 = swift_allocObject();
      v68 = v66;
      sub_268BBFEB4(v73, v68, 0);
      *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeKitTracker] = v67;

      v69 = *&v1[v65];
      OUTLINED_FUNCTION_19_2();
      v70 = swift_allocObject();
      sub_268BBFEB4(v69, v68, 1);
      *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_mediaGroupTracker] = v70;

      LOBYTE(v3) = v74;
    }
  }

  if (qword_2802CDB68 != -1)
  {
    OUTLINED_FUNCTION_3_2(&qword_2802CDB68);
  }

  v36 = __swift_project_value_buffer(v10, qword_2802D2EC0);
  v72 = *(v12 + 16);
  v73 = v36;
  v72(v19);
  v37 = sub_268C159FC();
  v38 = sub_268C15DCC();
  if (OUTLINED_FUNCTION_13_2(v38))
  {
    *OUTLINED_FUNCTION_23_0() = 0;
    OUTLINED_FUNCTION_23_1(&dword_268BAD000, v39, &unk_2802D2000, "HomeManager Warming up");
    OUTLINED_FUNCTION_30();
  }

  v74 = *(v12 + 8);
  v74(v19, v10);
  sub_268BBDEC4();
  v40 = *&v1[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue];
  v41 = swift_allocObject();
  *(v41 + 16) = v3 & 1;
  *(v41 + 24) = v1;
  v83[4] = sub_268BC113C;
  v83[5] = v41;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v83[2] = v42;
  v83[3] = &block_descriptor_77;
  v43 = _Block_copy(v83);
  v44 = v40;
  v45 = v1;
  v46 = v76;
  sub_268C15A6C();
  v82 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v47, v48, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_24_1();
  v49 = v78;
  v50 = v81;
  sub_268C15FCC();
  MEMORY[0x26D627440](0, v46, v49, v43);
  _Block_release(v43);

  (*(v80 + 8))(v49, v50);
  (*(v77 + 8))(v46, v79);

  v51 = v75;
  (v72)(v75, v73, v10);
  v52 = sub_268C159FC();
  v53 = sub_268C15DCC();
  if (OUTLINED_FUNCTION_13_2(v53))
  {
    *OUTLINED_FUNCTION_23_0() = 0;
    OUTLINED_FUNCTION_27_1(&dword_268BAD000, v54, v55, "Waiting on HomeKit and Media Group results before querying devices.");
    OUTLINED_FUNCTION_30();
  }

  v34 = v51;
  v35 = v10;
  v33 = v74;
LABEL_16:
  v33(v34, v35);
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BBDBB8(char a1, uint64_t a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  if (qword_2802CDB68 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_2802D2EC0);
  v12 = *(v5 + 16);
  v12(v10, v11, v4);
  v13 = sub_268C159FC();
  v14 = sub_268C15DCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v12;
    v16 = v7;
    v17 = a1;
    v18 = a2;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_268BAD000, v13, v14, "Beginning HomeKit data fetch", v15, 2u);
    v20 = v19;
    a2 = v18;
    a1 = v17;
    v7 = v16;
    v12 = v29;
    MEMORY[0x26D628010](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v10, v4);
  if ((a1 & 1) == 0)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, qword_2802D2F10);
    v12(v7, v22, v4);
    v23 = sub_268C159FC();
    v24 = sub_268C15DFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_268BAD000, v23, v24, "Force refreshing home manager", v25, 2u);
      MEMORY[0x26D628010](v25, -1, -1);
    }

    v21(v7, v4);
    v26 = *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager);
    sub_268BBEF7C();
  }

  sub_268BBFEE4();
}

void sub_268BBDEC4()
{
  OUTLINED_FUNCTION_31_0();
  v37 = v1;
  v39 = sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v42 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v6 = v5 - v4;
  sub_268C15AAC();
  OUTLINED_FUNCTION_3_0();
  v40 = v8;
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  v11 = v10 - v9;
  v12 = sub_268C15A3C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_0();
  v18 = (v17 - v16);
  v19 = sub_268C15ADC();
  v38 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_2();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v36 - v25;
  sub_268C15ABC();
  *v18 = v37;
  (*(v14 + 104))(v18, *MEMORY[0x277D85188], v12);
  MEMORY[0x26D6270F0](v23, v18);
  (*(v14 + 8))(v18, v12);
  v37 = *(v20 + 8);
  v37(v23, v19);
  v27 = *&v0[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue];
  OUTLINED_FUNCTION_26_1();
  v28 = swift_allocObject();
  *(v28 + 16) = v0;
  v44[4] = sub_268BC1040;
  v44[5] = v28;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v44[2] = v29;
  v44[3] = &block_descriptor_65;
  v30 = _Block_copy(v44);
  v31 = v27;
  v32 = v0;
  sub_268C15A6C();
  v43 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v33, v34, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_24_1();
  v35 = v39;
  sub_268C15FCC();
  MEMORY[0x26D6273F0](v26, v11, v6, v30);
  _Block_release(v30);

  (*(v42 + 8))(v6, v35);
  (*(v40 + 8))(v11, v41);
  v37(v26, v38);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BBE2A0(char *a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268BBFB68();
  if (result)
  {

    sub_268BBFEE4();

    sub_268BBFEE4();

    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_2802D2EC0);
    (*(v3 + 16))(v5, v7, v2);
    v8 = a1;
    v9 = sub_268C159FC();
    v10 = sub_268C15DEC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = v8;
      v12 = v11;
      *v11 = 67109376;

      v15 = sub_268BC04A8(v13, v14);

      v12[1] = v15 & 1;
      *(v12 + 4) = 1024;

      v18 = sub_268BC04A8(v16, v17);

      *(v12 + 10) = v18 & 1;

      _os_log_impl(&dword_268BAD000, v9, v10, "HomeManager initialization timed out.  HomeKit success: %{BOOL}d  MediaGroups success: %{BOOL}d", v12, 0xEu);
      MEMORY[0x26D628010](v12, -1, -1);
    }

    else
    {

      v9 = v8;
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_268BBE518()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v47 = v6;
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v45 = v7;
  OUTLINED_FUNCTION_10_2();
  v46 = sub_268C15AAC();
  OUTLINED_FUNCTION_3_0();
  v44 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_2();
  v43 = v10;
  OUTLINED_FUNCTION_10_2();
  v11 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_0();
  v17 = v16 - v15;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v18 = __swift_project_value_buffer(v11, qword_2802D2F10);
  (*(v13 + 16))(v17, v18, v11);
  v19 = v0;
  v20 = sub_268C159FC();
  v21 = sub_268C15DFC();

  if (os_log_type_enabled(v20, v21))
  {
    v41 = v4;
    v22 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v22 = 136315650;

    v42 = v2;
    v23 = sub_268BBFC68();
    v25 = v24;

    v26 = sub_268BB3D28(v23, v25, v49);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;

    v27 = sub_268BBFC68();
    v29 = v28;

    v30 = sub_268BB3D28(v27, v29, v49);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    v31 = sub_268C1628C();
    v33 = sub_268BB3D28(v31, v32, v49);

    *(v22 + 24) = v33;
    v2 = v42;
    _os_log_impl(&dword_268BAD000, v20, v21, "Waiting for HomeManager to be ready in order to read home data. HomeKit init status: %s, media group init status: %s. Object: %s", v22, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    v4 = v41;
    OUTLINED_FUNCTION_30();
  }

  (*(v13 + 8))(v17, v11);
  v34 = *&v19[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_loadQueue];
  v35 = swift_allocObject();
  v35[2] = v19;
  v35[3] = v4;
  v35[4] = v2;
  v49[4] = sub_268BC1088;
  v49[5] = v35;
  OUTLINED_FUNCTION_9_0();
  v49[1] = 1107296256;
  v49[2] = sub_268BC5554;
  v49[3] = &block_descriptor_71_0;
  v36 = _Block_copy(v49);
  v37 = v19;
  v38 = v34;

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v39, v40, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_24_1();
  sub_268C15FCC();
  sub_268C15E0C();
  _Block_release(v36);

  (*(v47 + 8))(v45, v48);
  (*(v44 + 8))(v43, v46);

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBEA08(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_2802D2F10);
  v57 = *(v7 + 16);
  v57(v11, v12, v6);
  v13 = a1;
  v14 = sub_268C159FC();
  v15 = sub_268C15DFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v55 = a3;
    v17 = v16;
    v53 = swift_slowAlloc();
    *&v60 = v53;
    *v17 = 136315650;

    v18 = sub_268BBFC68();
    v54 = v7;
    v19 = v18;
    v56 = a2;
    v21 = v20;

    v22 = sub_268BB3D28(v19, v21, &v60);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;

    v23 = sub_268BBFC68();
    v25 = v24;

    v26 = sub_268BB3D28(v23, v25, &v60);
    a2 = v56;

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    v59 = v13;
    v27 = sub_268C1628C();
    v29 = sub_268BB3D28(v27, v28, &v60);

    *(v17 + 24) = v29;
    _os_log_impl(&dword_268BAD000, v14, v15, "HomeManager is ready. HomeKit init status: %s, media group init status: %s. Object: %s", v17, 0x20u);
    v30 = v53;
    swift_arrayDestroy();
    MEMORY[0x26D628010](v30, -1, -1);
    MEMORY[0x26D628010](v17, -1, -1);

    v31 = v54;
  }

  else
  {

    v31 = v7;
  }

  v32 = *(v31 + 8);
  v32(v11, v6);

  v35 = sub_268BC04A8(v33, v34);

  if ((v35 & 1) == 0)
  {
    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v6, qword_2802D2EC0);
    v57(v58, v36, v6);
    v37 = sub_268C159FC();
    v38 = sub_268C15DEC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_268BAD000, v37, v38, "Returning homeData without media groups.", v39, 2u);
      MEMORY[0x26D628010](v39, -1, -1);
    }

    v32(v58, v6);
  }

  v42 = sub_268BC04A8(v40, v41);

  if (v42)
  {
    v43 = &v13[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homeData];
    swift_beginAccess();
    v44 = *v43;
    v45 = *(v43 + 1);
    v46 = *(v43 + 2);
    v47 = *(v43 + 3);
    v48 = *(v43 + 4);
    *&v60 = v44;
    *(&v60 + 1) = v45;
    *&v61 = v46;
    *(&v61 + 1) = v47;
    v62 = v48;
    v63 = 0;
    v49 = v46;

    v50 = v44;
    v51 = v45;
    a2(&v60);
    sub_268BC1094(v60, *(&v60 + 1), v61, *(&v61 + 1), v62, v63);
  }

  else
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v63 = 1;
    a2(&v60);
  }
}

void sub_268BBEF7C()
{
  OUTLINED_FUNCTION_31_0();
  v37 = v0;
  sub_268C152DC();
  OUTLINED_FUNCTION_3_0();
  v35 = v2;
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_17_2();
  v5 = (v3 - v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v34 = sub_268C159EC();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  v14 = v13 - v12;
  v15 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_0();
  v21 = v20 - v19;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v22 = __swift_project_value_buffer(v15, qword_2802D2F10);
  (*(v17 + 16))(v21, v22, v15);
  v23 = sub_268C159FC();
  v24 = sub_268C15DFC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_23_0();
    *v25 = 0;
    _os_log_impl(&dword_268BAD000, v23, v24, "Refreshing HMManager Data", v25, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v17 + 8))(v21, v15);
  sub_268C15EAC();
  if (qword_2802CDB60 != -1)
  {
    OUTLINED_FUNCTION_12_2(&qword_2802CDB60);
  }

  v26 = v37;
  v27 = v34;
  (*(v10 + 16))(v14, v37 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homekitRefreshSignpostID, v34);
  sub_268C159CC();
  (*(v10 + 8))(v14, v27);
  v28 = *(v26 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager);
  sub_268C152CC();
  sub_268C152BC();
  v29 = v36;
  v30 = *(v35 + 8);
  v30(v5, v36);
  v31 = sub_268C1529C();
  v30(v8, v29);
  OUTLINED_FUNCTION_26_1();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38[4] = sub_268BC1004;
  v38[5] = v32;
  OUTLINED_FUNCTION_9_0();
  v38[1] = 1107296256;
  v38[2] = sub_268BFB7BC;
  v38[3] = &block_descriptor_59;
  v33 = _Block_copy(v38);

  [v28 _refreshBeforeDate_completionHandler_];
  _Block_release(v33);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32_0();
}

void sub_268BBF378(void *a1, uint64_t a2)
{
  v3 = sub_268C15A1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_268C159EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v47 = v9;
    v48 = v6;
    v49 = a1;
    v50 = v4;
    v51 = v3;
    v16 = sub_268C15E9C();
    if (qword_2802CDB60 != -1)
    {
      swift_once();
    }

    v17 = qword_2802D2EB8;
    v18 = *(v11 + 16);
    v18(v13, v15 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homekitInitSignpostID, v10);
    sub_268C159BC(v16, &dword_268BAD000, v17, "homekitInitialization", 21, 2, v13, "enableTelemetry=YES", 19, 2, MEMORY[0x277D84F90]);
    v19 = *(v11 + 8);
    v19(v13, v10);
    v20 = sub_268C15E9C();
    v52 = v15;
    v18(v13, v15 + OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_homekitRefreshSignpostID, v10);
    LOBYTE(v46) = 2;
    sub_268C159BC(v20, &dword_268BAD000, v17, "homekitRefresh", 14, 2, v13, "enableTelemetry=YES", 19, v46, MEMORY[0x277D84F90]);
    v19(v13, v10);
    v21 = v49;
    if (v49)
    {
      v22 = v49;
      v24 = v50;
      v23 = v51;
      if (qword_2802CDB68 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v23, qword_2802D2EC0);
      v26 = v48;
      (*(v24 + 16))(v48, v25, v23);
      v27 = v21;
      v28 = sub_268C159FC();
      v29 = sub_268C15DEC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v53[0] = v31;
        *v30 = 136446210;
        swift_getErrorValue();
        v32 = sub_268C161DC();
        v34 = sub_268BB3D28(v32, v33, v53);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_268BAD000, v28, v29, "HomeKit initialization failed: %{public}s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x26D628010](v31, -1, -1);
        MEMORY[0x26D628010](v30, -1, -1);
      }

      (*(v24 + 8))(v26, v23);
      v35 = v52;

      sub_268BBFEE4();
    }

    else
    {
      v37 = v50;
      v36 = v51;
      if (qword_2802CDB68 != -1)
      {
        swift_once();
      }

      v38 = __swift_project_value_buffer(v36, qword_2802D2EC0);
      v39 = v47;
      (*(v37 + 16))(v47, v38, v36);
      v40 = sub_268C159FC();
      v41 = sub_268C15DCC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_268BAD000, v40, v41, "HomeKit initialization complete.", v42, 2u);
        MEMORY[0x26D628010](v42, -1, -1);
      }

      (*(v37 + 8))(v39, v36);
      v43 = v52;
      v44 = *&v52[OBJC_IVAR____TtC26SiriPlaybackControlSupport11HomeManager_hmHomeManager];
      swift_beginAccess();
      v45 = v44;
      sub_268BBF978();
      swift_endAccess();

      sub_268BBFEE4();
    }
  }
}

void sub_268BBF978()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v3 = [v1 currentAccessory];

  *v0 = v3;
  v4 = [v2 currentAccessory];
  v5 = [v4 room];

  *(v0 + 8) = v5;
  v6 = [v2 currentHome];

  *(v0 + 16) = v6;
  v7 = [v2 homes];
  sub_268BB9B44(0, &qword_2802CE060, 0x277CD1A60);
  v8 = sub_268C15D0C();

  v9 = sub_268BC4EF4(v8);
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v10)
    {

      *(v0 + 24) = v11;
      OUTLINED_FUNCTION_32_0();
      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D627640](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268BB3228(0, *(v11 + 16) + 1, 1, v11);
      v11 = v16;
    }

    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_268BB3228(v14 > 1, v15 + 1, 1, v11);
      v11 = v17;
    }

    *(v11 + 16) = v15 + 1;
    *(v11 + 8 * v15 + 32) = v13;
    ++v10;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_268BBFB68()
{

  v0 = sub_268BC03FC();

  if (v0)
  {
    return 1;
  }

  v2 = sub_268BC03FC();

  return v2 & 1;
}

uint64_t sub_268BBFBE8()
{

  v2 = sub_268BC04A8(v0, v1);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v5 = sub_268BC04A8(v3, v4);

  return v5 & 1;
}

uint64_t sub_268BBFC68()
{
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000026, 0x8000000268C1BC80);
  if (*(v0 + 33))
  {
    v1 = 6779760;
  }

  else
  {
    v1 = 0x74694B656D6F68;
  }

  if (*(v0 + 33))
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  MEMORY[0x26D627230](v1, v2);

  MEMORY[0x26D627230](0xD000000000000014, 0x8000000268C1BCB0);
  v3 = 0x8000000268C1B3A0;
  v4 = 0x64656873696E6966;
  if (*(v0 + 32) == 1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xEE0064656C696146;
  }

  if (*(v0 + 32))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6572676F72506E69;
  }

  if (*(v0 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007373;
  }

  MEMORY[0x26D627230](v5, v6);

  MEMORY[0x26D627230](0x7463656A624F202CLL, 0xEA0000000000203ALL);
  v7 = sub_268C1628C();
  MEMORY[0x26D627230](v7);

  MEMORY[0x26D627230](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_268BBFE18(char a1)
{
  if (a1)
  {
    return 6779760;
  }

  else
  {
    return 0x74694B656D6F68;
  }
}

uint64_t sub_268BBFE48(char a1)
{
  if (!a1)
  {
    return 0x6572676F72506E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x64656873696E6966;
}

uint64_t sub_268BBFEB4(uint64_t a1, dispatch_group_t group, char a3)
{
  *(v3 + 32) = 0;
  *(v3 + 33) = a3 & 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = group;
  dispatch_group_enter(group);
  return v3;
}

void sub_268BBFEE4()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_268C15A5C();
  OUTLINED_FUNCTION_3_0();
  v38 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  v36 = v7;
  OUTLINED_FUNCTION_10_2();
  v37 = sub_268C15AAC();
  OUTLINED_FUNCTION_3_0();
  v35 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_2();
  v34 = v10;
  OUTLINED_FUNCTION_10_2();
  v11 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_0();
  v17 = v16 - v15;
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  v18 = __swift_project_value_buffer(v11, qword_2802D2F10);
  (*(v13 + 16))(v17, v18, v11);

  v19 = sub_268C159FC();
  v20 = sub_268C15DFC();

  if (os_log_type_enabled(v19, v20))
  {
    v33 = v4;
    v21 = swift_slowAlloc();
    v32 = v11;
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 67109378;
    *(v21 + 4) = v3 & 1;
    *(v21 + 8) = 2080;
    v23 = sub_268BBFC68();
    v25 = v3;
    v26 = sub_268BB3D28(v23, v24, v39);

    *(v21 + 10) = v26;
    v3 = v25;
    v1 = v0;
    _os_log_impl(&dword_268BAD000, v19, v20, "DataSourceTracker#complete success: %{BOOL}d current state: %s", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_30();
    v4 = v33;
    OUTLINED_FUNCTION_30();

    (*(v13 + 8))(v17, v32);
  }

  else
  {

    (*(v13 + 8))(v17, v11);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  *(v27 + 24) = v3 & 1;
  v39[4] = sub_268BC0FAC;
  v39[5] = v27;
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(COERCE_DOUBLE(1107296256));
  v39[2] = v28;
  v39[3] = &block_descriptor_0;
  v29 = _Block_copy(v39);

  sub_268C15A6C();
  OUTLINED_FUNCTION_2_1();
  sub_268BC1148(v30, v31, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE050, &qword_268C1A4F0);
  sub_268BC1190(&qword_2802CE058, &qword_2802CE050, &qword_268C1A4F0);
  OUTLINED_FUNCTION_24_1();
  sub_268C15FCC();
  MEMORY[0x26D627440](0, v34, v36, v29);
  _Block_release(v29);
  (*(v38 + 8))(v36, v4);
  (*(v35 + 8))(v34, v37);

  OUTLINED_FUNCTION_32_0();
}

void sub_268BC0310(uint64_t a1, char a2)
{
  if (*(a1 + 32))
  {
    v4 = sub_268C1618C();

    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(a1 + 32) = v5;
  v6 = *(a1 + 24);

  dispatch_group_leave(v6);
}

uint64_t sub_268BC03FC()
{
  if (*(v0 + 32))
  {
    v1 = sub_268C1618C();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_268BC04A8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32) && *(v2 + 32) == 1)
  {
    OUTLINED_FUNCTION_9_2();
    v3 = 1;
  }

  else
  {
    v3 = sub_268C1618C();
  }

  return v3 & 1;
}

unint64_t sub_268BC0558(uint64_t a1, uint64_t a2)
{
  v2 = sub_268C1615C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_268BC05A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_268C1615C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_268BC061C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268BC0558(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268BC064C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268BBFE48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268BC069C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268BC05A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268BC06CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268BBFE18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268BC0720()
{
  sub_268BC06F8();
  OUTLINED_FUNCTION_19_2();

  return MEMORY[0x2821FE8D8](v0);
}

id sub_268BC07B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HomeManager(uint64_t a1)
{
  result = qword_2802CE010;
  if (!qword_2802CE010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268BC0950(uint64_t a1)
{
  result = sub_268C159EC();
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

uint64_t getEnumTagSinglePayload for HomeManager.DataSourceTracker.Caller(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeManager.DataSourceTracker.Caller(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268BC0B98);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeManager.DataSourceTracker.DataLoadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeManager.DataSourceTracker.DataLoadState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268BC0D30);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_268BC0D7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_268BC0DBC(uint64_t result, int a2, int a3)
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

unint64_t sub_268BC0E18()
{
  result = qword_2802CE028;
  if (!qword_2802CE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE028);
  }

  return result;
}

unint64_t sub_268BC0E70()
{
  result = qword_2802CE030;
  if (!qword_2802CE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE030);
  }

  return result;
}

unint64_t sub_268BC0EC8()
{
  result = qword_2802CE038;
  if (!qword_2802CE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE038);
  }

  return result;
}

unint64_t sub_268BC0F20()
{
  result = qword_2802CE040;
  if (!qword_2802CE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE040);
  }

  return result;
}

uint64_t sub_268BC0F74()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268BC0FD0()
{
  MEMORY[0x26D628060](v0 + 16);
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268BC100C()
{
  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268BC1048()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_268BC1094(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

uint64_t sub_268BC1104()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268BC1148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268BC1190(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_268BC11E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268C15BEC();

  [a3 setName_];
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_13_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *OUTLINED_FUNCTION_21_0(uint64_t a1, ...)
{

  return sub_268C1624C();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a2, ...)
{

  return sub_268C15C3C();
}

void OUTLINED_FUNCTION_23_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_27_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_268BC1428()
{
  sub_268BC157C();
  result = sub_268C15EFC();
  qword_2802D2EB8 = result;
  return result;
}

uint64_t sub_268BC1494()
{
  v0 = sub_268C15A1C();
  __swift_allocate_value_buffer(v0, qword_2802D2EC0);
  __swift_project_value_buffer(v0, qword_2802D2EC0);
  return sub_268C15A0C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_268BC157C()
{
  result = qword_2802CE090;
  if (!qword_2802CE090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE090);
  }

  return result;
}

uint64_t sub_268BC15C0()
{
  v0 = sub_268C15A1C();
  __swift_allocate_value_buffer(v0, qword_2802D2ED8);
  __swift_project_value_buffer(v0, qword_2802D2ED8);
  return sub_268C15A0C();
}