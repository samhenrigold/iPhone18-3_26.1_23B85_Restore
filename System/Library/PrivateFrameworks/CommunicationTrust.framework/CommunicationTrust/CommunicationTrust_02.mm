unint64_t sub_1B98804BC()
{
  v2 = qword_1EBBD5740;
  if (!qword_1EBBD5740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5730, &qword_1B98FB010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9880568(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = sub_1B98F5DF8() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = sub_1B98F5E48();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x1EEE9AC00](v22);
    v15 = v28;
    v16 = v10;
    sub_1B98807A4(v9, sub_1B9880D70, &v14, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v12, MEMORY[0x1E69E7CA8]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t sub_1B98807A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1B98F5E48();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1B9880A00@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B9880A48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9880ABC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1B9880568(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B9880ABC()
{
  v2 = qword_1EBBD5748;
  if (!qword_1EBBD5748)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5748);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9880BBC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5750, qword_1B98FB018);
  v1 = sub_1B9880C24();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B9880C24()
{
  v2 = qword_1EBBD5758;
  if (!qword_1EBBD5758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5750, qword_1B98FB018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9880CD4()
{
  v2 = qword_1EBBD5760;
  if (!qword_1EBBD5760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5750, qword_1B98FB018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5760);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9880DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

void sub_1B9880E2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v5 = a1;
  sub_1B9880DC0(a1, v4);
  sub_1B9880EAC(v4, __b);
  sub_1B9880EE8(__b, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1B9880F54(__b);
}

uint64_t sub_1B9880EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

void sub_1B9880F7C(uint64_t a1)
{
  v200 = a1;
  v175 = 0;
  v201 = sub_1B9882D8C;
  v203 = sub_1B9882D28;
  v204 = sub_1B9889EE8;
  v208 = sub_1B9889E70;
  v212 = sub_1B9889F10;
  v214 = sub_1B9889ED8;
  v216 = sub_1B9889EE0;
  v218 = sub_1B9889EF4;
  v220 = sub_1B9889F00;
  v222 = sub_1B9889F08;
  v225 = sub_1B9889F1C;
  v165 = sub_1B9882D94;
  v166 = sub_1B9889F9C;
  v167 = sub_1B9889F28;
  v168 = sub_1B9889FC4;
  v169 = sub_1B9889F8C;
  v170 = sub_1B9889F94;
  v171 = sub_1B9889FA8;
  v172 = sub_1B9889FB4;
  v173 = sub_1B9889FBC;
  v174 = sub_1B9889FD0;
  v248 = 0;
  v247 = 0;
  v246 = 0;
  memset(__b, 0, sizeof(__b));
  v176 = 0;
  v239 = 0;
  v186 = 0;
  v177 = type metadata accessor for BlockedHandle(0);
  v179 = *(v177 - 8);
  v178 = v177 - 8;
  v180 = v179;
  v181 = *(v179 + 64);
  v182 = (v181 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v177);
  v183 = &v55 - v182;
  v184 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v55 - v182);
  v185 = &v55 - v184;
  v248 = &v55 - v184;
  v187 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v186);
  v188 = &v55 - v187;
  v197 = sub_1B98F5138();
  v195 = *(v197 - 8);
  v196 = v197 - 8;
  v191 = v195[8];
  v190 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v200);
  v192 = &v55 - v190;
  v193 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v4 = &v55 - v193;
  v194 = &v55 - v193;
  v247 = v3;
  v246 = v5;
  v6 = sub_1B98F1E6C();
  v198 = v195[2];
  v199 = v195 + 2;
  v198(v4, v6, v197);
  sub_1B98F54D8();
  v210 = 7;
  v202 = swift_allocObject();
  *(v202 + 16) = v200;

  v209 = 32;
  v7 = swift_allocObject();
  v8 = v202;
  v211 = v7;
  *(v7 + 16) = v201;
  *(v7 + 24) = v8;

  v229 = sub_1B98F5118();
  v230 = sub_1B98F5BD8();
  v206 = 17;
  v215 = swift_allocObject();
  *(v215 + 16) = 34;
  v217 = swift_allocObject();
  v207 = 8;
  *(v217 + 16) = 8;
  v9 = swift_allocObject();
  v205 = v9;
  *(v9 + 16) = v203;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v11 = v205;
  v219 = v10;
  *(v10 + 16) = v204;
  *(v10 + 24) = v11;
  v221 = swift_allocObject();
  *(v221 + 16) = 32;
  v223 = swift_allocObject();
  *(v223 + 16) = v207;
  v12 = swift_allocObject();
  v13 = v211;
  v213 = v12;
  *(v12 + 16) = v208;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v213;
  v226 = v14;
  *(v14 + 16) = v212;
  *(v14 + 24) = v15;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v224 = sub_1B98F5F98();
  v227 = v16;

  v17 = v215;
  v18 = v227;
  *v227 = v214;
  v18[1] = v17;

  v19 = v217;
  v20 = v227;
  v227[2] = v216;
  v20[3] = v19;

  v21 = v219;
  v22 = v227;
  v227[4] = v218;
  v22[5] = v21;

  v23 = v221;
  v24 = v227;
  v227[6] = v220;
  v24[7] = v23;

  v25 = v223;
  v26 = v227;
  v227[8] = v222;
  v26[9] = v25;

  v27 = v226;
  v28 = v227;
  v227[10] = v225;
  v28[11] = v27;
  sub_1B9851B38();

  if (os_log_type_enabled(v229, v230))
  {
    v29 = v176;
    v157 = sub_1B98F5C28();
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v158 = sub_1B985263C(0, v156, v156);
    v159 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v161 = &v235;
    v235 = v157;
    v162 = &v234;
    v234 = v158;
    v163 = &v233;
    v233 = v159;
    v160 = 2;
    sub_1B9852690(2, &v235);
    sub_1B9852690(v160, v161);
    v231 = v214;
    v232 = v215;
    sub_1B98526A4(&v231, v161, v162, v163);
    v164 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v231 = v216;
      v232 = v217;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v154 = 0;
      v231 = v218;
      v232 = v219;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v153 = 0;
      v231 = v220;
      v232 = v221;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v152 = 0;
      v231 = v222;
      v232 = v223;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v151 = 0;
      v231 = v225;
      v232 = v226;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v150 = 0;
      _os_log_impl(&dword_1B982F000, v229, v230, "%{public}s handles: %s", v157, 0x16u);
      sub_1B985281C(v158, 0, v156);
      sub_1B985281C(v159, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v155 = v150;
    }
  }

  else
  {
    v30 = v176;

    v155 = v30;
  }

  v148 = v155;
  MEMORY[0x1E69E5920](v229);
  v145 = v195[1];
  v146 = v195 + 1;
  v145(v194, v197);
  sub_1B98F54D8();
  sub_1B9853574();
  v147 = &v249;
  sub_1B98F5A58();
  memcpy(__b, v147, sizeof(__b));
  for (i = v148; ; i = v141)
  {
    v144 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v179 + 48))(v188, 1, v177) == 1)
    {
      break;
    }

    sub_1B9832680(v188, v185);
    v143 = sub_1B9882EBC(v185);
    if (v143)
    {
      v142 = v143;
      v140 = v143;
      v239 = v143;
      v139 = v236;
      sub_1B9880DC0(v189, v236);
      v137 = v237;
      v138 = v238;
      __swift_project_boxed_opaque_existential_1(v139, v237);
      (*(v138 + 8))(v140, v137);
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x1E69E5920](v140);
      sub_1B983A3AC(v185);
      v141 = v144;
    }

    else
    {
      v31 = v192;
      v32 = sub_1B98F1E6C();
      v198(v31, v32, v197);
      sub_1B9833334(v185, v183);
      v119 = (*(v180 + 80) + 16) & ~*(v180 + 80);
      v124 = 7;
      v125 = swift_allocObject();
      sub_1B9832680(v183, v125 + v119);
      v135 = sub_1B98F5118();
      v136 = sub_1B98F5BB8();
      v121 = 17;
      v127 = swift_allocObject();
      *(v127 + 16) = 34;
      v128 = swift_allocObject();
      v122 = 8;
      *(v128 + 16) = 8;
      v123 = 32;
      v33 = swift_allocObject();
      v120 = v33;
      *(v33 + 16) = v165;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v120;
      v129 = v34;
      *(v34 + 16) = v166;
      *(v34 + 24) = v35;
      v130 = swift_allocObject();
      *(v130 + 16) = 32;
      v131 = swift_allocObject();
      *(v131 + 16) = v122;
      v36 = swift_allocObject();
      v37 = v125;
      v126 = v36;
      *(v36 + 16) = v167;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v126;
      v133 = v38;
      *(v38 + 16) = v168;
      *(v38 + 24) = v39;
      v132 = sub_1B98F5F98();
      v134 = v40;

      v41 = v127;
      v42 = v134;
      *v134 = v169;
      v42[1] = v41;

      v43 = v128;
      v44 = v134;
      v134[2] = v170;
      v44[3] = v43;

      v45 = v129;
      v46 = v134;
      v134[4] = v171;
      v46[5] = v45;

      v47 = v130;
      v48 = v134;
      v134[6] = v172;
      v48[7] = v47;

      v49 = v131;
      v50 = v134;
      v134[8] = v173;
      v50[9] = v49;

      v51 = v133;
      v52 = v134;
      v134[10] = v174;
      v52[11] = v51;
      sub_1B9851B38();

      if (os_log_type_enabled(v135, v136))
      {
        v53 = v144;
        v105 = sub_1B98F5C28();
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v106 = sub_1B985263C(0, v104, v104);
        v107 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v109 = &v244;
        v244 = v105;
        v110 = &v243;
        v243 = v106;
        v111 = &v242;
        v242 = v107;
        v108 = 2;
        sub_1B9852690(2, &v244);
        sub_1B9852690(v108, v109);
        v240 = v169;
        v241 = v127;
        sub_1B98526A4(&v240, v109, v110, v111);
        v112 = v53;
        v113 = v127;
        v114 = v128;
        v115 = v129;
        v116 = v130;
        v117 = v131;
        v118 = v133;
        if (v53)
        {
          v97 = v113;
          v98 = v114;
          v99 = v115;
          v100 = v116;
          v101 = v117;
          v102 = v118;
          v61 = v118;
          v60 = v117;
          v59 = v116;
          v58 = v115;
          v57 = v114;

          __break(1u);
        }

        else
        {
          v240 = v170;
          v241 = v128;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v90 = 0;
          v91 = v127;
          v92 = v128;
          v93 = v129;
          v94 = v130;
          v95 = v131;
          v96 = v133;
          v240 = v171;
          v241 = v129;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v83 = 0;
          v84 = v127;
          v85 = v128;
          v86 = v129;
          v87 = v130;
          v88 = v131;
          v89 = v133;
          v240 = v172;
          v241 = v130;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v76 = 0;
          v77 = v127;
          v78 = v128;
          v79 = v129;
          v80 = v130;
          v81 = v131;
          v82 = v133;
          v240 = v173;
          v241 = v131;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v69 = 0;
          v70 = v127;
          v71 = v128;
          v72 = v129;
          v73 = v130;
          v74 = v131;
          v75 = v133;
          v240 = v174;
          v241 = v133;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v62 = 0;
          v63 = v127;
          v64 = v128;
          v65 = v129;
          v66 = v130;
          v67 = v131;
          v68 = v133;
          _os_log_impl(&dword_1B982F000, v135, v136, "%{public}s Error creating CommunicationFilterItem from handle: %s. Not adding to blocklist", v105, 0x16u);
          sub_1B985281C(v106, 0, v104);
          sub_1B985281C(v107, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B98F5C08();

          v103 = v62;
        }
      }

      else
      {
        v54 = v144;

        v103 = v54;
      }

      v56 = v103;
      MEMORY[0x1E69E5920](v135);
      v145(v192, v197);
      sub_1B983A3AC(v185);
      v141 = v56;
    }
  }

  sub_1B9871430();
}

uint64_t sub_1B9882D58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B9882DC4(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

uint64_t sub_1B9882EBC(uint64_t a1)
{
  v74 = a1;
  v86 = 0;
  v83 = 0uLL;
  v82 = 0;
  v81 = 0;
  v79 = sub_1B98F5018();
  v76 = *(v79 - 8);
  v77 = v79 - 8;
  v75 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v8 - v75;
  v86 = a1;
  BlockedHandle.type.getter(&v8 - v75);
  v80 = (*(v76 + 88))(v78, v79);
  if (v80 == *MEMORY[0x1E696EDA0])
  {
LABEL_48:
    BlockedHandle.value.getter();
    v18 = v6;
    v17 = sub_1B98F5648();
    CMFItemFromString = CreateCMFItemFromString();
    MEMORY[0x1E69E5920](v17);

    if (CMFItemFromString)
    {
      v16 = CMFItemFromString;
      v14 = CMFItemFromString;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v13 = v15;
    if (!v15)
    {
      return 0;
    }

    v12 = v13;
    v10 = v13;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      return v11;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (v80 != *MEMORY[0x1E696ED80])
  {
    if (v80 == *MEMORY[0x1E696ED90])
    {
      BlockedHandle.value.getter();
      v72 = v2;
      v71 = sub_1B98F5648();
      v73 = CMFItemCreateWithEmailAddress();
      MEMORY[0x1E69E5920](v71);

      if (v73)
      {
        v70 = v73;
        v68 = v73;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v69 = v68;
      }

      else
      {
        v69 = 0;
      }

      v67 = v69;
      if (!v69)
      {
        return 0;
      }

      v66 = v67;
      v64 = v67;
      objc_opt_self();
      v65 = swift_dynamicCastObjCClass();
      if (v65)
      {
        return v65;
      }

      swift_unknownObjectRelease();
      return 0;
    }

    (*(v76 + 8))(v78, v79);
    goto LABEL_48;
  }

  v60 = *(v74 + *(type metadata accessor for BlockedHandle(0) + 32));
  sub_1B98F54D8();
  v84 = v60;
  if (*(&v60 + 1))
  {
    v85 = v84;
  }

  else
  {
    *&v85 = sub_1B98F2F58();
    *(&v85 + 1) = v3;
    if (*(&v84 + 1))
    {
      sub_1B985EE4C(&v84);
    }
  }

  v59 = *(&v85 + 1);
  v56 = v85;
  v83 = v85;
  BlockedHandle.value.getter();
  v57 = v4;
  v58 = sub_1B98F5648();
  sub_1B98F54D8();
  if (v59)
  {
    v54 = v56;
    v55 = v59;
    v51 = v59;
    v52 = sub_1B98F5648();

    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v50 = v53;
  if (v53)
  {
    v49 = v50;
    v48 = v50;
  }

  else
  {
    v48 = 0;
  }

  v46 = v48;
  v47 = CFPhoneNumberCreate();
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v58);

  v82 = v47;
  MEMORY[0x1E69E5928](v47);
  if (v47)
  {
    v45 = v47;
    v43 = v47;
    v81 = v47;
    MEMORY[0x1E69E5928](v47);
    v44 = CMFItemCreateWithPhoneNumber();
    MEMORY[0x1E69E5920](v43);
    if (v44)
    {
      v42 = v44;
      v40 = v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v39 = v41;
    if (v41)
    {
      v38 = v39;
      v36 = v39;
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v35 = v37;
      }

      else
      {
        swift_unknownObjectRelease();
        v35 = 0;
      }

      v34 = v35;
    }

    else
    {
      v34 = 0;
    }

    v33 = v34;
    MEMORY[0x1E69E5920](v43);
    MEMORY[0x1E69E5920](v47);

    return v33;
  }

  else
  {
    BlockedHandle.value.getter();
    v31 = v5;
    v30 = sub_1B98F5648();
    v32 = CreateCMFItemFromString();
    MEMORY[0x1E69E5920](v30);

    if (v32)
    {
      v29 = v32;
      v27 = v32;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v26 = v28;
    if (v28)
    {
      v25 = v26;
      v23 = v26;
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v22 = v24;
      }

      else
      {
        swift_unknownObjectRelease();
        v22 = 0;
      }

      v21 = v22;
    }

    else
    {
      v21 = 0;
    }

    v20 = v21;
    MEMORY[0x1E69E5920](v47);

    return v20;
  }
}

uint64_t sub_1B98838D4()
{
  v46 = sub_1B9884068;
  v49 = sub_1B9889FEC;
  v51 = sub_1B9889FDC;
  v53 = sub_1B9889FE4;
  v56 = sub_1B9889FF8;
  v37 = sub_1B9884098;
  v72 = 0;
  v68 = 0;
  v38 = 0;
  v44 = sub_1B98F5138();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v40 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v0 = v17 - v40;
  v41 = v17 - v40;
  v72 = v1;
  v2 = sub_1B98F1E6C();
  (*(v42 + 16))(v0, v2, v44);
  v60 = sub_1B98F5118();
  v61 = sub_1B98F5BD8();
  v45 = 17;
  v48 = 7;
  v52 = swift_allocObject();
  *(v52 + 16) = 34;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v47 = 32;
  v3 = swift_allocObject();
  v50 = v3;
  *(v3 + 16) = v46;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v50;
  v57 = v4;
  *(v4 + 16) = v49;
  *(v4 + 24) = v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v55 = sub_1B98F5F98();
  v58 = v6;

  v7 = v52;
  v8 = v58;
  *v58 = v51;
  v8[1] = v7;

  v9 = v54;
  v10 = v58;
  v58[2] = v53;
  v10[3] = v9;

  v11 = v57;
  v12 = v58;
  v58[4] = v56;
  v12[5] = v11;
  sub_1B9851B38();

  if (os_log_type_enabled(v60, v61))
  {
    v13 = v38;
    v30 = sub_1B98F5C28();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v31 = sub_1B985263C(0, v29, v29);
    v32 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v33 = &v66;
    v66 = v30;
    v34 = &v65;
    v65 = v31;
    v35 = &v64;
    v64 = v32;
    sub_1B9852690(2, &v66);
    sub_1B9852690(1, v33);
    v62 = v51;
    v63 = v52;
    sub_1B98526A4(&v62, v33, v34, v35);
    v36 = v13;
    if (v13)
    {

      __break(1u);
    }

    else
    {
      v62 = v53;
      v63 = v54;
      sub_1B98526A4(&v62, &v66, &v65, &v64);
      v27 = 0;
      v62 = v56;
      v63 = v57;
      sub_1B98526A4(&v62, &v66, &v65, &v64);
      v26 = 0;
      _os_log_impl(&dword_1B982F000, v60, v61, "%{public}s", v30, 0xCu);
      sub_1B985281C(v31, 0, v29);
      sub_1B985281C(v32, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v28 = v26;
    }
  }

  else
  {
    v14 = v38;

    v28 = v14;
  }

  v15 = v28;
  MEMORY[0x1E69E5920](v60);
  (*(v42 + 8))(v41, v44);
  v21 = v69;
  sub_1B9880DC0(v39, v69);
  v20 = v70;
  v19 = v71;
  __swift_project_boxed_opaque_existential_1(v21, v70);
  v22 = (*(v19 + 24))(v20);
  v68 = v22;
  __swift_destroy_boxed_opaque_existential_1(v21);
  v67[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5730, &qword_1B98FB010);
  v24 = type metadata accessor for BlockedHandle(0);
  sub_1B988A004();
  result = sub_1B98F5788();
  v25 = result;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17[2] = v67;
    v67[0] = v25;
    v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    v17[1] = sub_1B9853574();
    sub_1B9871820();
    v18 = sub_1B98F5AE8();

    return v18;
  }

  return result;
}

uint64_t sub_1B9884098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  return sub_1B983ABEC(v4, a2);
}

void sub_1B98840E8(uint64_t a1)
{
  v200 = a1;
  v175 = 0;
  v201 = sub_1B988A08C;
  v203 = sub_1B9885E94;
  v204 = sub_1B988A10C;
  v208 = sub_1B988A094;
  v212 = sub_1B988A134;
  v214 = sub_1B988A0FC;
  v216 = sub_1B988A104;
  v218 = sub_1B988A118;
  v220 = sub_1B988A124;
  v222 = sub_1B988A12C;
  v225 = sub_1B988A140;
  v165 = sub_1B9885EF8;
  v166 = sub_1B988A1C0;
  v167 = sub_1B988A14C;
  v168 = sub_1B988A1E8;
  v169 = sub_1B988A1B0;
  v170 = sub_1B988A1B8;
  v171 = sub_1B988A1CC;
  v172 = sub_1B988A1D8;
  v173 = sub_1B988A1E0;
  v174 = sub_1B988A1F4;
  v248 = 0;
  v247 = 0;
  v246 = 0;
  memset(__b, 0, sizeof(__b));
  v176 = 0;
  v239 = 0;
  v186 = 0;
  v177 = type metadata accessor for BlockedHandle(0);
  v179 = *(v177 - 8);
  v178 = v177 - 8;
  v180 = v179;
  v181 = *(v179 + 64);
  v182 = (v181 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v177);
  v183 = &v55 - v182;
  v184 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v55 - v182);
  v185 = &v55 - v184;
  v248 = &v55 - v184;
  v187 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v186);
  v188 = &v55 - v187;
  v197 = sub_1B98F5138();
  v195 = *(v197 - 8);
  v196 = v197 - 8;
  v191 = v195[8];
  v190 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v200);
  v192 = &v55 - v190;
  v193 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v4 = &v55 - v193;
  v194 = &v55 - v193;
  v247 = v3;
  v246 = v5;
  v6 = sub_1B98F1E6C();
  v198 = v195[2];
  v199 = v195 + 2;
  v198(v4, v6, v197);
  sub_1B98F54D8();
  v210 = 7;
  v202 = swift_allocObject();
  *(v202 + 16) = v200;

  v209 = 32;
  v7 = swift_allocObject();
  v8 = v202;
  v211 = v7;
  *(v7 + 16) = v201;
  *(v7 + 24) = v8;

  v229 = sub_1B98F5118();
  v230 = sub_1B98F5BD8();
  v206 = 17;
  v215 = swift_allocObject();
  *(v215 + 16) = 34;
  v217 = swift_allocObject();
  v207 = 8;
  *(v217 + 16) = 8;
  v9 = swift_allocObject();
  v205 = v9;
  *(v9 + 16) = v203;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v11 = v205;
  v219 = v10;
  *(v10 + 16) = v204;
  *(v10 + 24) = v11;
  v221 = swift_allocObject();
  *(v221 + 16) = 32;
  v223 = swift_allocObject();
  *(v223 + 16) = v207;
  v12 = swift_allocObject();
  v13 = v211;
  v213 = v12;
  *(v12 + 16) = v208;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v213;
  v226 = v14;
  *(v14 + 16) = v212;
  *(v14 + 24) = v15;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v224 = sub_1B98F5F98();
  v227 = v16;

  v17 = v215;
  v18 = v227;
  *v227 = v214;
  v18[1] = v17;

  v19 = v217;
  v20 = v227;
  v227[2] = v216;
  v20[3] = v19;

  v21 = v219;
  v22 = v227;
  v227[4] = v218;
  v22[5] = v21;

  v23 = v221;
  v24 = v227;
  v227[6] = v220;
  v24[7] = v23;

  v25 = v223;
  v26 = v227;
  v227[8] = v222;
  v26[9] = v25;

  v27 = v226;
  v28 = v227;
  v227[10] = v225;
  v28[11] = v27;
  sub_1B9851B38();

  if (os_log_type_enabled(v229, v230))
  {
    v29 = v176;
    v157 = sub_1B98F5C28();
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v158 = sub_1B985263C(0, v156, v156);
    v159 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v161 = &v235;
    v235 = v157;
    v162 = &v234;
    v234 = v158;
    v163 = &v233;
    v233 = v159;
    v160 = 2;
    sub_1B9852690(2, &v235);
    sub_1B9852690(v160, v161);
    v231 = v214;
    v232 = v215;
    sub_1B98526A4(&v231, v161, v162, v163);
    v164 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v231 = v216;
      v232 = v217;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v154 = 0;
      v231 = v218;
      v232 = v219;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v153 = 0;
      v231 = v220;
      v232 = v221;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v152 = 0;
      v231 = v222;
      v232 = v223;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v151 = 0;
      v231 = v225;
      v232 = v226;
      sub_1B98526A4(&v231, &v235, &v234, &v233);
      v150 = 0;
      _os_log_impl(&dword_1B982F000, v229, v230, "%{public}s handles: %s", v157, 0x16u);
      sub_1B985281C(v158, 0, v156);
      sub_1B985281C(v159, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v155 = v150;
    }
  }

  else
  {
    v30 = v176;

    v155 = v30;
  }

  v148 = v155;
  MEMORY[0x1E69E5920](v229);
  v145 = v195[1];
  v146 = v195 + 1;
  v145(v194, v197);
  sub_1B98F54D8();
  sub_1B9853574();
  v147 = &v249;
  sub_1B98F5A58();
  memcpy(__b, v147, sizeof(__b));
  for (i = v148; ; i = v141)
  {
    v144 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v179 + 48))(v188, 1, v177) == 1)
    {
      break;
    }

    sub_1B9832680(v188, v185);
    v143 = sub_1B9882EBC(v185);
    if (v143)
    {
      v142 = v143;
      v140 = v143;
      v239 = v143;
      v139 = v236;
      sub_1B9880DC0(v189, v236);
      v137 = v237;
      v138 = v238;
      __swift_project_boxed_opaque_existential_1(v139, v237);
      (*(v138 + 16))(v140, v137);
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x1E69E5920](v140);
      sub_1B983A3AC(v185);
      v141 = v144;
    }

    else
    {
      v31 = v192;
      v32 = sub_1B98F1E6C();
      v198(v31, v32, v197);
      sub_1B9833334(v185, v183);
      v119 = (*(v180 + 80) + 16) & ~*(v180 + 80);
      v124 = 7;
      v125 = swift_allocObject();
      sub_1B9832680(v183, v125 + v119);
      v135 = sub_1B98F5118();
      v136 = sub_1B98F5BB8();
      v121 = 17;
      v127 = swift_allocObject();
      *(v127 + 16) = 34;
      v128 = swift_allocObject();
      v122 = 8;
      *(v128 + 16) = 8;
      v123 = 32;
      v33 = swift_allocObject();
      v120 = v33;
      *(v33 + 16) = v165;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v120;
      v129 = v34;
      *(v34 + 16) = v166;
      *(v34 + 24) = v35;
      v130 = swift_allocObject();
      *(v130 + 16) = 32;
      v131 = swift_allocObject();
      *(v131 + 16) = v122;
      v36 = swift_allocObject();
      v37 = v125;
      v126 = v36;
      *(v36 + 16) = v167;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v126;
      v133 = v38;
      *(v38 + 16) = v168;
      *(v38 + 24) = v39;
      v132 = sub_1B98F5F98();
      v134 = v40;

      v41 = v127;
      v42 = v134;
      *v134 = v169;
      v42[1] = v41;

      v43 = v128;
      v44 = v134;
      v134[2] = v170;
      v44[3] = v43;

      v45 = v129;
      v46 = v134;
      v134[4] = v171;
      v46[5] = v45;

      v47 = v130;
      v48 = v134;
      v134[6] = v172;
      v48[7] = v47;

      v49 = v131;
      v50 = v134;
      v134[8] = v173;
      v50[9] = v49;

      v51 = v133;
      v52 = v134;
      v134[10] = v174;
      v52[11] = v51;
      sub_1B9851B38();

      if (os_log_type_enabled(v135, v136))
      {
        v53 = v144;
        v105 = sub_1B98F5C28();
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v106 = sub_1B985263C(0, v104, v104);
        v107 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v109 = &v244;
        v244 = v105;
        v110 = &v243;
        v243 = v106;
        v111 = &v242;
        v242 = v107;
        v108 = 2;
        sub_1B9852690(2, &v244);
        sub_1B9852690(v108, v109);
        v240 = v169;
        v241 = v127;
        sub_1B98526A4(&v240, v109, v110, v111);
        v112 = v53;
        v113 = v127;
        v114 = v128;
        v115 = v129;
        v116 = v130;
        v117 = v131;
        v118 = v133;
        if (v53)
        {
          v97 = v113;
          v98 = v114;
          v99 = v115;
          v100 = v116;
          v101 = v117;
          v102 = v118;
          v61 = v118;
          v60 = v117;
          v59 = v116;
          v58 = v115;
          v57 = v114;

          __break(1u);
        }

        else
        {
          v240 = v170;
          v241 = v128;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v90 = 0;
          v91 = v127;
          v92 = v128;
          v93 = v129;
          v94 = v130;
          v95 = v131;
          v96 = v133;
          v240 = v171;
          v241 = v129;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v83 = 0;
          v84 = v127;
          v85 = v128;
          v86 = v129;
          v87 = v130;
          v88 = v131;
          v89 = v133;
          v240 = v172;
          v241 = v130;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v76 = 0;
          v77 = v127;
          v78 = v128;
          v79 = v129;
          v80 = v130;
          v81 = v131;
          v82 = v133;
          v240 = v173;
          v241 = v131;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v69 = 0;
          v70 = v127;
          v71 = v128;
          v72 = v129;
          v73 = v130;
          v74 = v131;
          v75 = v133;
          v240 = v174;
          v241 = v133;
          sub_1B98526A4(&v240, &v244, &v243, &v242);
          v62 = 0;
          v63 = v127;
          v64 = v128;
          v65 = v129;
          v66 = v130;
          v67 = v131;
          v68 = v133;
          _os_log_impl(&dword_1B982F000, v135, v136, "%{public}s Error creating CommunicationFilterItem from handle: %s. Not removing from blocklist", v105, 0x16u);
          sub_1B985281C(v106, 0, v104);
          sub_1B985281C(v107, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B98F5C08();

          v103 = v62;
        }
      }

      else
      {
        v54 = v144;

        v103 = v54;
      }

      v56 = v103;
      MEMORY[0x1E69E5920](v135);
      v145(v192, v197);
      sub_1B983A3AC(v185);
      v141 = v56;
    }
  }

  sub_1B9871430();
}

uint64_t sub_1B9885EC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B9885F28(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

uint64_t sub_1B9886020(uint64_t a1)
{
  v131 = a1;
  v137 = sub_1B98875C8;
  v138 = sub_1B988A274;
  v142 = sub_1B988A200;
  v146 = sub_1B988A29C;
  v148 = sub_1B988A264;
  v150 = sub_1B988A26C;
  v152 = sub_1B988A280;
  v154 = sub_1B988A28C;
  v156 = sub_1B988A294;
  v159 = sub_1B988A2A8;
  v106 = sub_1B98876F0;
  v107 = sub_1B988A328;
  v108 = sub_1B988A2B4;
  v109 = sub_1B988A350;
  v110 = sub_1B988A318;
  v111 = sub_1B988A320;
  v112 = sub_1B988A334;
  v113 = sub_1B988A340;
  v114 = sub_1B988A348;
  v115 = sub_1B988A35C;
  v180 = 0;
  v179 = 0;
  v116 = 0;
  v173 = 0;
  v117 = 0;
  v118 = *(type metadata accessor for BlockedHandle(0) - 8);
  v132 = v118;
  v133 = *(v118 + 64);
  v119 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v136 = v52 - v119;
  v128 = sub_1B98F5138();
  v126 = *(v128 - 8);
  v127 = v128 - 8;
  v122 = v126[8];
  v121 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v131);
  v123 = v52 - v121;
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = v52 - v124;
  v125 = v52 - v124;
  v180 = v2;
  v179 = v4;
  v5 = sub_1B98F1E6C();
  v129 = v126[2];
  v130 = v126 + 2;
  v129(v3, v5, v128);
  sub_1B9833334(v131, v136);
  v134 = *(v132 + 80);
  v135 = (v134 + 16) & ~v134;
  v144 = 7;
  v145 = swift_allocObject();
  sub_1B9832680(v136, v145 + v135);
  v163 = sub_1B98F5118();
  v164 = sub_1B98F5BD8();
  v140 = 17;
  v149 = swift_allocObject();
  *(v149 + 16) = 34;
  v151 = swift_allocObject();
  v141 = 8;
  *(v151 + 16) = 8;
  v143 = 32;
  v6 = swift_allocObject();
  v139 = v6;
  *(v6 + 16) = v137;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v139;
  v153 = v7;
  *(v7 + 16) = v138;
  *(v7 + 24) = v8;
  v155 = swift_allocObject();
  *(v155 + 16) = 32;
  v157 = swift_allocObject();
  *(v157 + 16) = v141;
  v9 = swift_allocObject();
  v10 = v145;
  v147 = v9;
  *(v9 + 16) = v142;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v147;
  v160 = v11;
  *(v11 + 16) = v146;
  *(v11 + 24) = v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v158 = sub_1B98F5F98();
  v161 = v13;

  v14 = v149;
  v15 = v161;
  *v161 = v148;
  v15[1] = v14;

  v16 = v151;
  v17 = v161;
  v161[2] = v150;
  v17[3] = v16;

  v18 = v153;
  v19 = v161;
  v161[4] = v152;
  v19[5] = v18;

  v20 = v155;
  v21 = v161;
  v161[6] = v154;
  v21[7] = v20;

  v22 = v157;
  v23 = v161;
  v161[8] = v156;
  v23[9] = v22;

  v24 = v160;
  v25 = v161;
  v161[10] = v159;
  v25[11] = v24;
  sub_1B9851B38();

  if (os_log_type_enabled(v163, v164))
  {
    v26 = v116;
    v98 = sub_1B98F5C28();
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v99 = sub_1B985263C(0, v97, v97);
    v100 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v102 = &v169;
    v169 = v98;
    v103 = &v168;
    v168 = v99;
    v104 = &v167;
    v167 = v100;
    v101 = 2;
    sub_1B9852690(2, &v169);
    sub_1B9852690(v101, v102);
    v165 = v148;
    v166 = v149;
    sub_1B98526A4(&v165, v102, v103, v104);
    v105 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v165 = v150;
      v166 = v151;
      sub_1B98526A4(&v165, &v169, &v168, &v167);
      v95 = 0;
      v165 = v152;
      v166 = v153;
      sub_1B98526A4(&v165, &v169, &v168, &v167);
      v94 = 0;
      v165 = v154;
      v166 = v155;
      sub_1B98526A4(&v165, &v169, &v168, &v167);
      v93 = 0;
      v165 = v156;
      v166 = v157;
      sub_1B98526A4(&v165, &v169, &v168, &v167);
      v92 = 0;
      v165 = v159;
      v166 = v160;
      sub_1B98526A4(&v165, &v169, &v168, &v167);
      v91 = 0;
      _os_log_impl(&dword_1B982F000, v163, v164, "%{public}s handle: %s", v98, 0x16u);
      sub_1B985281C(v99, 0, v97);
      sub_1B985281C(v100, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v96 = v91;
    }
  }

  else
  {
    v27 = v116;

    v96 = v27;
  }

  v87 = v96;
  MEMORY[0x1E69E5920](v163);
  v88 = v126[1];
  v89 = v126 + 1;
  v88(v125, v128);
  v90 = sub_1B9882EBC(v131);
  if (v90)
  {
    v86 = v90;
    v83 = v90;
    v173 = v90;
    v82 = v170;
    sub_1B9880DC0(v120, v170);
    v80 = v171;
    v81 = v172;
    __swift_project_boxed_opaque_existential_1(v82, v171);
    v84 = (*(v81 + 32))(v83, v80);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x1E69E5920](v83);
    v85 = v84;
  }

  else
  {
    v28 = v123;
    v29 = sub_1B98F1E6C();
    v129(v28, v29, v128);
    sub_1B9833334(v131, v136);
    v62 = (v134 + 16) & ~v134;
    v67 = 7;
    v68 = swift_allocObject();
    sub_1B9832680(v136, v68 + v62);
    v78 = sub_1B98F5118();
    v79 = sub_1B98F5BB8();
    v64 = 17;
    v70 = swift_allocObject();
    *(v70 + 16) = 34;
    v71 = swift_allocObject();
    v65 = 8;
    *(v71 + 16) = 8;
    v66 = 32;
    v30 = swift_allocObject();
    v63 = v30;
    *(v30 + 16) = v106;
    *(v30 + 24) = 0;
    v31 = swift_allocObject();
    v32 = v63;
    v72 = v31;
    *(v31 + 16) = v107;
    *(v31 + 24) = v32;
    v73 = swift_allocObject();
    *(v73 + 16) = 32;
    v74 = swift_allocObject();
    *(v74 + 16) = v65;
    v33 = swift_allocObject();
    v34 = v68;
    v69 = v33;
    *(v33 + 16) = v108;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v69;
    v76 = v35;
    *(v35 + 16) = v109;
    *(v35 + 24) = v36;
    v75 = sub_1B98F5F98();
    v77 = v37;

    v38 = v70;
    v39 = v77;
    *v77 = v110;
    v39[1] = v38;

    v40 = v71;
    v41 = v77;
    v77[2] = v111;
    v41[3] = v40;

    v42 = v72;
    v43 = v77;
    v77[4] = v112;
    v43[5] = v42;

    v44 = v73;
    v45 = v77;
    v77[6] = v113;
    v45[7] = v44;

    v46 = v74;
    v47 = v77;
    v77[8] = v114;
    v47[9] = v46;

    v48 = v76;
    v49 = v77;
    v77[10] = v115;
    v49[11] = v48;
    sub_1B9851B38();

    if (os_log_type_enabled(v78, v79))
    {
      v50 = v87;
      v54 = sub_1B98F5C28();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v55 = sub_1B985263C(0, v53, v53);
      v56 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v58 = &v178;
      v178 = v54;
      v59 = &v177;
      v177 = v55;
      v60 = &v176;
      v176 = v56;
      v57 = 2;
      sub_1B9852690(2, &v178);
      sub_1B9852690(v57, v58);
      v174 = v110;
      v175 = v70;
      sub_1B98526A4(&v174, v58, v59, v60);
      v61 = v50;
      if (v50)
      {

        __break(1u);
      }

      else
      {
        v174 = v111;
        v175 = v71;
        sub_1B98526A4(&v174, &v178, &v177, &v176);
        v52[3] = 0;
        v174 = v112;
        v175 = v72;
        sub_1B98526A4(&v174, &v178, &v177, &v176);
        v52[2] = 0;
        v174 = v113;
        v175 = v73;
        sub_1B98526A4(&v174, &v178, &v177, &v176);
        v52[1] = 0;
        v174 = v114;
        v175 = v74;
        sub_1B98526A4(&v174, &v178, &v177, &v176);
        v52[0] = 0;
        v174 = v115;
        v175 = v76;
        sub_1B98526A4(&v174, &v178, &v177, &v176);
        _os_log_impl(&dword_1B982F000, v78, v79, "%{public}s Error creating CommunicationFilterItem from handle: %s. Returning false", v54, 0x16u);
        sub_1B985281C(v55, 0, v53);
        sub_1B985281C(v56, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v78);
    v88(v123, v128);
    v85 = 0;
  }

  return v85 & 1;
}

uint64_t sub_1B98875F8(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

uint64_t sub_1B9887720(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

uint64_t sub_1B9887818(uint8_t *a1)
{
  v86 = a1;
  v91 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v120 = 0;
  v77 = 0;
  v85 = sub_1B98F5138();
  v79 = v85;
  v80 = *(v85 - 8);
  v84 = v80;
  v81 = v80;
  v82 = *(v80 + 64);
  v1 = &v30 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v1;
  v128 = MEMORY[0x1EEE9AC00](v86);
  v127 = v2;
  v3 = sub_1B98F1E6C();
  (*(v84 + 16))(v1, v3, v85);
  sub_1B98F54D8();
  v100 = 7;
  v101 = swift_allocObject();
  *(v101 + 16) = v86;
  v114 = sub_1B98F5118();
  v87 = v114;
  v113 = sub_1B98F5BD8();
  v88 = v113;
  v95 = 17;
  v104 = swift_allocObject();
  v89 = v104;
  *(v104 + 16) = 34;
  v105 = swift_allocObject();
  v90 = v105;
  v97 = 8;
  *(v105 + 16) = 8;
  v94 = 32;
  v99 = 32;
  v4 = swift_allocObject();
  v5 = v91;
  v92 = v4;
  *(v4 + 16) = sub_1B9888740;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v92;
  v106 = v6;
  v93 = v6;
  *(v6 + 16) = sub_1B988A380;
  *(v6 + 24) = v7;
  v107 = swift_allocObject();
  v96 = v107;
  *(v107 + 16) = v94;
  v108 = swift_allocObject();
  v98 = v108;
  *(v108 + 16) = v97;
  v8 = swift_allocObject();
  v9 = v101;
  v102 = v8;
  *(v8 + 16) = sub_1B988A368;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v102;
  v111 = v10;
  v103 = v10;
  *(v10 + 16) = sub_1B988A3A8;
  *(v10 + 24) = v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v109 = sub_1B98F5F98();
  v110 = v12;

  v13 = v104;
  v14 = v110;
  *v110 = sub_1B988A370;
  v14[1] = v13;

  v15 = v105;
  v16 = v110;
  v110[2] = sub_1B988A378;
  v16[3] = v15;

  v17 = v106;
  v18 = v110;
  v110[4] = sub_1B988A38C;
  v18[5] = v17;

  v19 = v107;
  v20 = v110;
  v110[6] = sub_1B988A398;
  v20[7] = v19;

  v21 = v108;
  v22 = v110;
  v110[8] = sub_1B988A3A0;
  v22[9] = v21;

  v23 = v110;
  v24 = v111;
  v110[10] = sub_1B988A3B4;
  v23[11] = v24;
  sub_1B9851B38();

  if (os_log_type_enabled(v114, v113))
  {
    v25 = v77;
    v70 = sub_1B98F5C28();
    v67 = v70;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v71 = sub_1B985263C(0, v68, v68);
    v69 = v71;
    v73 = 2;
    v72 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v119[0] = v70;
    v118 = v71;
    v117 = v72;
    v74 = v119;
    sub_1B9852690(v73, v119);
    sub_1B9852690(v73, v74);
    v115 = sub_1B988A370;
    v116 = v89;
    sub_1B98526A4(&v115, v74, &v118, &v117);
    v75 = v25;
    v76 = v25;
    if (v25)
    {
      v65 = 0;

      __break(1u);
    }

    else
    {
      v115 = sub_1B988A378;
      v116 = v90;
      sub_1B98526A4(&v115, v119, &v118, &v117);
      v63 = 0;
      v64 = 0;
      v115 = sub_1B988A38C;
      v116 = v93;
      sub_1B98526A4(&v115, v119, &v118, &v117);
      v61 = 0;
      v62 = 0;
      v115 = sub_1B988A398;
      v116 = v96;
      sub_1B98526A4(&v115, v119, &v118, &v117);
      v59 = 0;
      v60 = 0;
      v115 = sub_1B988A3A0;
      v116 = v98;
      sub_1B98526A4(&v115, v119, &v118, &v117);
      v57 = 0;
      v58 = 0;
      v115 = sub_1B988A3B4;
      v116 = v103;
      sub_1B98526A4(&v115, v119, &v118, &v117);
      v55 = 0;
      v56 = 0;
      _os_log_impl(&dword_1B982F000, v87, v88, "%{public}s handles: %s", v67, 0x16u);
      sub_1B985281C(v69, 0, v68);
      sub_1B985281C(v72, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v66 = v55;
    }
  }

  else
  {
    v26 = v77;

    v66 = v26;
  }

  v51 = v66;

  (*(v81 + 8))(v83, v79);
  v53 = type metadata accessor for BlockedHandle(0);
  v52 = v53;
  v54 = sub_1B9853574();
  if (sub_1B98F5AA8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5770, &qword_1B98FB058);
    sub_1B98F5F98();
    v31 = sub_1B98F54A8();
    v32 = v51;
    return v31;
  }

  v43 = sub_1B98887E0(v86);
  v41 = v43;
  v126 = v43;
  v42 = v122;
  sub_1B9880DC0(v78, v122);
  v47 = v123;
  v48 = v124;
  __swift_project_boxed_opaque_existential_1(v42, v123);
  v45 = sub_1B987EA80();
  v44 = v45;
  v121[1] = sub_1B98F5538();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5778, &qword_1B98FB060);
  sub_1B988A3C0();
  v49 = sub_1B98F5938();
  v50 = (*(v48 + 40))(v49, v47);

  v121[0] = v50;
  if (v50)
  {
    v125 = v121[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5788, &qword_1B98FB068);
    v40 = sub_1B98F5F98();
    sub_1B988A448();
    v125 = sub_1B98F54A8();
    if (v121[0])
    {
      sub_1B988A4C8(v121);
    }
  }

  v27 = v51;
  __swift_destroy_boxed_opaque_existential_1(v122);
  v34 = v125;
  v33 = v125;
  v120 = v125;
  v119[3] = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5770, &qword_1B98FB058);
  sub_1B98F5F98();
  v119[2] = sub_1B98F54A8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  v35 = &v30;
  MEMORY[0x1EEE9AC00](&v30);
  v36 = &v30 - 4;
  *(&v30 - 2) = v41;
  *(&v30 - 1) = v28;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
  sub_1B988A520();
  sub_1B98F57B8();
  v39 = v27;
  if (!v27)
  {

    v30 = v119[4];

    v31 = v30;
    v32 = v39;
    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9888770(uint64_t a1)
{
  sub_1B98F54D8();
  v5 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v4 = sub_1B98F1B88(&v5, v1);
  sub_1B9855ACC(&v5);
  return v4;
}

uint64_t sub_1B98887E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57A0, &qword_1B98FB078);
  sub_1B98F5F98();
  type metadata accessor for BlockedHandle(0);
  sub_1B987EA80();
  sub_1B9853574();
  sub_1B98F54A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57A8, &qword_1B98FB080);
  sub_1B988A520();
  sub_1B98F57B8();
  return v2;
}

uint64_t sub_1B988890C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v89 = a3;
  v79 = a2;
  v77 = a1;
  v87 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v97 = 0;
  v73 = sub_1B98F5138();
  v74 = *(v73 - 8);
  v75 = v74;
  v4 = MEMORY[0x1EEE9AC00](0);
  v76 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for BlockedHandle(v4);
  v80 = *(v90 - 8);
  v81 = v80;
  v83 = *(v80 + 64);
  v82 = v83;
  v6 = MEMORY[0x1EEE9AC00](v79);
  v85 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  v84 = &v29 - v85;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v92 = &v29 - v85;
  v86 = &v29 - v85;
  v108 = v8;
  v107 = v7;
  v106 = v9;
  v105 = v10;
  sub_1B9833334(v7, &v29 - v85);
  v91 = sub_1B987EA80();
  v88 = v91;
  sub_1B9853574();
  sub_1B98F55B8();
  v93 = v104;
  if (v104)
  {
    v71 = v93;
    v49 = v93;
    v97 = v93;
    sub_1B983A3AC(v86);
    sub_1B9833334(v79, v84);
    v26 = v49;
    v95 = v49;
    v48 = &v29;
    MEMORY[0x1EEE9AC00](&v29);
    v47 = &v29 - 4;
    *(&v29 - 2) = sub_1B988937C;
    *(&v29 - 1) = 0;
    sub_1B988A448();
    sub_1B98F55A8();

    v94 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
    sub_1B98F55C8();

    result = v72;
    v50 = v72;
  }

  else
  {
    v11 = v76;
    sub_1B983A3AC(v86);
    v12 = sub_1B98F1E6C();
    (*(v75 + 16))(v11, v12, v73);
    sub_1B9833334(v79, v84);
    v51 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v60 = swift_allocObject();
    sub_1B9832680(v84, v60 + v51);
    v70 = sub_1B98F5118();
    v52 = v70;
    v69 = sub_1B98F5BB8();
    v53 = v69;
    v54 = 17;
    v59 = 7;
    v63 = swift_allocObject();
    v55 = v63;
    v56 = 32;
    *(v63 + 16) = 32;
    v13 = swift_allocObject();
    v14 = v56;
    v64 = v13;
    v57 = v13;
    *(v13 + 16) = 8;
    v58 = v14;
    v15 = swift_allocObject();
    v16 = v60;
    v61 = v15;
    *(v15 + 16) = sub_1B988A964;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v61;
    v67 = v17;
    v62 = v17;
    *(v17 + 16) = sub_1B988A9D8;
    *(v17 + 24) = v18;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v65 = sub_1B98F5F98();
    v66 = v19;

    v20 = v63;
    v21 = v66;
    *v66 = sub_1B988A9C8;
    v21[1] = v20;

    v22 = v64;
    v23 = v66;
    v66[2] = sub_1B988A9D0;
    v23[3] = v22;

    v24 = v66;
    v25 = v67;
    v66[4] = sub_1B988A9E4;
    v24[5] = v25;
    sub_1B9851B38();

    if (os_log_type_enabled(v70, v69))
    {
      v44 = v72;
      v39 = sub_1B98F5C28();
      v36 = v39;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v40 = sub_1B985263C(0, v37, v37);
      v38 = v40;
      v42 = 1;
      v41 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v102 = v39;
      v101 = v40;
      v100 = v41;
      v43 = &v102;
      sub_1B9852690(2, &v102);
      sub_1B9852690(v42, v43);
      v28 = v44;
      v98 = sub_1B988A9C8;
      v99 = v55;
      sub_1B98526A4(&v98, v43, &v101, &v100);
      v45 = v28;
      v46 = v28;
      if (v28)
      {
        v34 = 0;

        __break(1u);
      }

      else
      {
        v98 = sub_1B988A9D0;
        v99 = v57;
        sub_1B98526A4(&v98, &v102, &v101, &v100);
        v32 = 0;
        v33 = 0;
        v98 = sub_1B988A9E4;
        v99 = v62;
        sub_1B98526A4(&v98, &v102, &v101, &v100);
        v30 = 0;
        v31 = 0;
        _os_log_impl(&dword_1B982F000, v52, v53, "No item found for %s", v36, 0xCu);
        sub_1B985281C(v38, 0, v37);
        sub_1B985281C(v41, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v35 = v30;
      }
    }

    else
    {

      v35 = v72;
    }

    v29 = v35;

    (*(v75 + 8))(v76, v73);
    sub_1B9833334(v79, v84);
    v103 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5458, &qword_1B98FB070);
    sub_1B98F55C8();
    return v29;
  }

  return result;
}

uint64_t sub_1B9889388@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B98893C8(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

uint64_t sub_1B988953C(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v50 = sub_1B988A8D8;
  v51 = sub_1B988A94C;
  v52 = sub_1B988A93C;
  v53 = sub_1B988A944;
  v54 = sub_1B988A958;
  v77 = 0;
  v76 = 0;
  v70 = 0;
  v55 = 0;
  v56 = *(type metadata accessor for BlockedHandle(0) - 8);
  v57 = v56;
  v58 = *(v56 + 64);
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v60 = &v19 - v59;
  v63 = sub_1B98F5138();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v19 - v66;
  v77 = v3;
  v76 = v2;
  v68 = sub_1B9882EBC(v2);
  if (v68)
  {
    v48 = v68;
    v32 = v68;
    v70 = v68;
    sub_1B9833334(v62, v60);
    MEMORY[0x1E69E5928](v32);
    v31 = &v69;
    v69 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57A8, &qword_1B98FB080);
    sub_1B98F55C8();
    MEMORY[0x1E69E5920](v32);
    result = v49;
    v33 = v49;
  }

  else
  {
    v4 = v67;
    v5 = sub_1B98F1E6C();
    (*(v64 + 16))(v4, v5, v63);
    sub_1B9833334(v62, v60);
    v34 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v37 = 7;
    v38 = swift_allocObject();
    sub_1B9832680(v60, v38 + v34);
    v46 = sub_1B98F5118();
    v47 = sub_1B98F5BB8();
    v35 = 17;
    v40 = swift_allocObject();
    *(v40 + 16) = 32;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v36 = 32;
    v6 = swift_allocObject();
    v7 = v38;
    v39 = v6;
    *(v6 + 16) = v50;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v39;
    v43 = v8;
    *(v8 + 16) = v51;
    *(v8 + 24) = v9;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v42 = sub_1B98F5F98();
    v44 = v10;

    v11 = v40;
    v12 = v44;
    *v44 = v52;
    v12[1] = v11;

    v13 = v41;
    v14 = v44;
    v44[2] = v53;
    v14[3] = v13;

    v15 = v43;
    v16 = v44;
    v44[4] = v54;
    v16[5] = v15;
    sub_1B9851B38();

    if (os_log_type_enabled(v46, v47))
    {
      v24 = sub_1B98F5C28();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v25 = sub_1B985263C(0, v23, v23);
      v26 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v27 = &v75;
      v75 = v24;
      v28 = &v74;
      v74 = v25;
      v29 = &v73;
      v73 = v26;
      sub_1B9852690(2, &v75);
      sub_1B9852690(1, v27);
      v18 = v49;
      v71 = v52;
      v72 = v40;
      sub_1B98526A4(&v71, v27, v28, v29);
      v30 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v71 = v53;
        v72 = v41;
        sub_1B98526A4(&v71, &v75, &v74, &v73);
        v21 = 0;
        v71 = v54;
        v72 = v43;
        sub_1B98526A4(&v71, &v75, &v74, &v73);
        v20 = 0;
        sub_1B985281C(v25, 0, v23);
        sub_1B985281C(v26, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v22 = v20;
      }
    }

    else
    {

      v22 = v49;
    }

    v19 = v22;
    MEMORY[0x1E69E5920](v46);
    (*(v64 + 8))(v67, v63);
    return v19;
  }

  return result;
}

uint64_t sub_1B9889D78(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

uint64_t sub_1B9889E70()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B9889F28()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9882DC4(v2);
}

unint64_t sub_1B988A004()
{
  v2 = qword_1EBBD5768;
  if (!qword_1EBBD5768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5730, &qword_1B98FB010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5768);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988A094()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B988A14C()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9885F28(v2);
}

uint64_t sub_1B988A200()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98875F8(v2);
}

uint64_t sub_1B988A2B4()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9887720(v2);
}

unint64_t sub_1B988A3C0()
{
  v2 = qword_1EBBD5780;
  if (!qword_1EBBD5780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5778, &qword_1B98FB060);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988A448()
{
  v2 = qword_1EBBD5790;
  if (!qword_1EBBD5790)
  {
    sub_1B987EA80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988A520()
{
  v2 = qword_1EBBD5798;
  if (!qword_1EBBD5798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5090, &qword_1B98FA940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5798);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988A5D8(uint64_t a1, int a2)
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

uint64_t sub_1B988A6F0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B988A8D8()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B9889D78(v2);
}

uint64_t sub_1B988A964()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98893C8(v2);
}

unint64_t sub_1B988AB94()
{
  v2 = qword_1EBBD57F0;
  if (!qword_1EBBD57F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD57E8, &qword_1B98FB190);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD57F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988AC1C(uint64_t a1)
{
  v9 = a1;
  v8 = v1;
  v7 = sub_1B98F5468();
  BlockedHandle.value.getter();
  if ((sub_1B98F5708() & 1) == 0)
  {
    sub_1B98F54D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5838, &qword_1B98FB1B0);
    sub_1B98F5A88();
  }

  v5 = *(a1 + *(type metadata accessor for BlockedHandle(0) + 20) + 8);
  sub_1B98F54D8();
  if (v5)
  {
    v2 = sub_1B98F5708();
    if ((v2 & 1) == 0)
    {
      sub_1B98F54D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5838, &qword_1B98FB1B0);
      sub_1B98F5A88();
    }
  }

  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5838, &qword_1B98FB1B0);
  sub_1B988B0C0();
  v4 = sub_1B98F5938();

  sub_1B988B148(&v7);
  return v4;
}

unint64_t sub_1B988AF2C()
{
  v2 = qword_1EBBD5800;
  if (!qword_1EBBD5800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5800);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988AFE0()
{
  v2 = qword_1EBBD5820;
  if (!qword_1EBBD5820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988B0C0()
{
  v2 = qword_1EBBD5840;
  if (!qword_1EBBD5840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5838, &qword_1B98FB1B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988B174()
{
  v2 = qword_1EBBD5850;
  if (!qword_1EBBD5850)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5850);
    return ObjCClassMetadata;
  }

  return v2;
}

BOOL sub_1B988B2B0(uint64_t *a1, void *a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  v7 = a2;
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  v3 = sub_1B98F54D8();

  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58A8, &unk_1B98FB1F8);
  sub_1B988BD30();
  v5 = sub_1B98F5818();
  sub_1B988BDB8(&v6);
  return (v5 & 1) == 0;
}

uint64_t sub_1B988B3D8(id *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v26 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v22 = *a1;
  v39 = v22;
  v37 = a2;
  v38 = a3;
  v24 = [v22 phoneNumbers];
  v23 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5D00, &qword_1B98FB1F0);
  v36 = sub_1B98F58B8();
  sub_1B98F54D8();
  v33 = v26;
  v34 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5890, &qword_1B98FC1A0);
  v28 = v29;
  sub_1B988BB98();
  v31 = v30;
  v32 = sub_1B98F57E8();
  if (v30)
  {

    __break(1u);
  }

  else
  {
    v21 = v32;

    sub_1B988BC20(&v36);

    v3 = v22;
    sub_1B98F54D8();
    if (v32)
    {
      v19 = 1;
      v20 = v31;
    }

    else
    {
      v16 = v31;
      v13 = [v22 emailAddresses];
      v35 = sub_1B98F58B8();
      sub_1B98F54D8();
      v14 = v9;
      MEMORY[0x1EEE9AC00](v9);
      v15 = v8;
      v8[2] = v26;
      v8[3] = v4;
      sub_1B988BC7C();
      v5 = v16;
      v6 = sub_1B98F57E8();
      v17 = v5;
      v18 = v6;
      if (v5)
      {

        __break(1u);
      }

      else
      {
        v12 = v18;

        sub_1B988BD04(&v35);

        v19 = v12;
        v20 = v17;
      }
    }

    v11 = v20;
    v10 = v19;

    return v10 & 1;
  }

  return result;
}

uint64_t sub_1B988B69C(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 value];
  v10 = [v5 stringValue];
  v6 = sub_1B98F5658();
  v9 = v3;
  MEMORY[0x1E69E5920](v5);
  v11 = MEMORY[0x1BFADD650](v6, v9, a2, a3);

  MEMORY[0x1E69E5920](v10);
  return v11 & 1;
}

uint64_t sub_1B988B770(id *a1)
{
  v3 = [*a1 value];
  v1 = sub_1B98F5658();
  v4 = MEMORY[0x1BFADD650](v1);

  MEMORY[0x1E69E5920](v3);
  return v4 & 1;
}

id sub_1B988B80C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v3 = sub_1B98F58A8();
  v4 = [v2 initWithKeysToFetch_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

unint64_t sub_1B988B944()
{
  v2 = qword_1EBBD5860;
  if (!qword_1EBBD5860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5268, &qword_1B98FAC20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988BA28()
{
  v2 = qword_1EBBD5870;
  if (!qword_1EBBD5870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5920, &qword_1B98FB180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5870);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988BAE0()
{
  v2 = qword_1EBBD5878;
  if (!qword_1EBBD5878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5920, &qword_1B98FB180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988BB98()
{
  v2 = qword_1EBBD5898;
  if (!qword_1EBBD5898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5890, &qword_1B98FC1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5898);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988BC7C()
{
  v2 = qword_1EBBD58A0;
  if (!qword_1EBBD58A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5890, &qword_1B98FC1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD58A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988BD30()
{
  v2 = qword_1EBBD58B0;
  if (!qword_1EBBD58B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD58A8, &unk_1B98FB1F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD58B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988BE04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B988BEBC(void *a1)
{
  v11 = 0;
  v8 = 0;
  v12 = a1;
  sub_1B988C034(a1, v9);
  if (v9[3])
  {
    sub_1B988C23C(v9, __dst);
    sub_1B988BE04(__dst, v6);
    sub_1B988C23C(v6, (v5 + 16));
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    sub_1B988C0C8(v9);
    sub_1B988C104();
    v3 = sub_1B988C168();
    v8 = v3;
    [v3 setIncludeLocalContacts_];
    [v3 setIncludeAcceptedIntroductions_];
    v2 = sub_1B988C198();
    MEMORY[0x1E69E5928](v3);
    v7[3] = v2;
    v7[4] = &off_1F3796988;
    v7[0] = sub_1B988C1FC(v3);
    sub_1B988C23C(v7, (v5 + 16));
    MEMORY[0x1E69E5920](v3);
  }

  sub_1B988C0C8(a1);
  return v5;
}

void *sub_1B988C034(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t sub_1B988C0C8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

unint64_t sub_1B988C104()
{
  v2 = qword_1EBBD58C0;
  if (!qword_1EBBD58C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD58C0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B988C198()
{
  v2 = qword_1EDBDAC18;
  if (!qword_1EDBDAC18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EDBDAC18);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B988C278(uint64_t a1)
{
  v104 = a1;
  v87 = 0;
  v82 = sub_1B988D1A0;
  v83 = sub_1B988D5BC;
  v84 = sub_1B988D5AC;
  v85 = sub_1B988D5B4;
  v86 = sub_1B988D5C8;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v108 = __b;
  v110 = 40;
  memset(__b, 0, sizeof(__b));
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v111 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  v88 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v27 - v88;
  v90 = 0;
  v91 = sub_1B98F5138();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v90);
  v95 = &v27 - v94;
  v105 = type metadata accessor for BlockedHandle(v3);
  v96 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105);
  v97 = &v27 - v96;
  v127 = &v27 - v96;
  v98 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v104);
  v99 = &v27 - v98;
  v100 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v101 = &v27 - v100;
  v126 = v6;
  v125 = v1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v107 = sub_1B9853574();
  v7 = sub_1B98F54D8();
  v103 = &v123;
  v123 = v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58E0, &qword_1B98FB208);
  sub_1B988D0B8();
  v124 = sub_1B98F5AE8();
  sub_1B98F54D8();
  v109 = &v128;
  sub_1B98F5498();
  memcpy(v108, v109, v110);
  for (i = v111; ; i = v35)
  {
    v79 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
    sub_1B98F5558();
    sub_1B98732E4(v99, v101);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
    if ((*(*(v80 - 8) + 48))(v101, 1) == 1)
    {
      break;
    }

    v8 = &v101[*(v80 + 48)];
    v77 = *v8;
    v78 = v8[8];
    sub_1B9832680(v101, v97);
    v120 = v77;
    v121 = v78 & 1;
    if (v78)
    {
      v75 = v79;
    }

    else
    {
      v76 = v77;
      v119 = v77;
      v118[1] = v77;
      v9 = *sub_1B98E7034();
      v74 = v118;
      v118[0] = v9;
      sub_1B9873520();
      v10 = sub_1B98F60E8();
      if (v10)
      {
        v11 = v95;
        v12 = sub_1B98F1E6C();
        (*(v92 + 16))(v11, v12, v91);

        v72 = sub_1B98F5118();
        v73 = sub_1B98F5BD8();
        v62 = 17;
        v64 = 7;
        v66 = swift_allocObject();
        *(v66 + 16) = 32;
        v67 = swift_allocObject();
        *(v67 + 16) = 8;
        v63 = 32;
        v13 = swift_allocObject();
        v14 = v81;
        v65 = v13;
        *(v13 + 16) = v82;
        *(v13 + 24) = v14;
        v15 = swift_allocObject();
        v16 = v65;
        v69 = v15;
        *(v15 + 16) = v83;
        *(v15 + 24) = v16;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
        v68 = sub_1B98F5F98();
        v70 = v17;

        v18 = v66;
        v19 = v70;
        *v70 = v84;
        v19[1] = v18;

        v20 = v67;
        v21 = v70;
        v70[2] = v85;
        v21[3] = v20;

        v22 = v69;
        v23 = v70;
        v70[4] = v86;
        v23[5] = v22;
        sub_1B9851B38();

        if (os_log_type_enabled(v72, v73))
        {
          v24 = v79;
          v52 = sub_1B98F5C28();
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
          v53 = sub_1B985263C(0, v51, v51);
          v54 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v55 = &v117;
          v117 = v52;
          v56 = &v116;
          v116 = v53;
          v57 = &v115;
          v115 = v54;
          sub_1B9852690(2, &v117);
          sub_1B9852690(1, v55);
          v113 = v84;
          v114 = v66;
          sub_1B98526A4(&v113, v55, v56, v57);
          v58 = v24;
          v59 = v66;
          v60 = v67;
          v61 = v69;
          if (v24)
          {
            v47 = v59;
            v48 = v60;
            v49 = v61;
            v38 = v61;
            v37 = v60;

            __break(1u);
          }

          else
          {
            v113 = v85;
            v114 = v67;
            sub_1B98526A4(&v113, &v117, &v116, &v115);
            v43 = 0;
            v44 = v66;
            v45 = v67;
            v46 = v69;
            v113 = v86;
            v114 = v69;
            sub_1B98526A4(&v113, &v117, &v116, &v115);
            v39 = 0;
            v40 = v66;
            v41 = v67;
            v42 = v69;
            _os_log_impl(&dword_1B982F000, v72, v73, "%s: Removing handle from set", v52, 0xCu);
            sub_1B985281C(v53, 0, v51);
            sub_1B985281C(v54, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B98F5C08();

            v50 = v39;
          }
        }

        else
        {
          v25 = v79;

          v50 = v25;
        }

        v36 = v50;
        MEMORY[0x1E69E5920](v72);
        (*(v92 + 8))(v95, v91);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A98();
        sub_1B983AAEC(v89);
        v75 = v36;
      }

      else
      {
        v75 = v79;
      }
    }

    v35 = v75;
    sub_1B983A3AC(v97);
  }

  sub_1B987349C(__b);
  v33 = v124;
  sub_1B98F54D8();
  v34 = sub_1B98F5AA8();

  if (v34)
  {
    sub_1B98F5F98();
    v28 = sub_1B98F5A38();
    sub_1B9868D78(&v124);
    return v28;
  }

  else
  {
    v30 = &v124;
    v29 = v124;
    sub_1B98F54D8();
    v31 = sub_1B9834ABC(v29);

    sub_1B9868D78(v30);
    return v31;
  }
}

unint64_t sub_1B988D0B8()
{
  v2 = qword_1EBBD58E8;
  if (!qword_1EBBD58E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD58E0, &qword_1B98FB208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD58E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988D208@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B988D23C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  sub_1B988BA28();
  return (sub_1B98F5B58() ^ 1) & 1;
}

uint64_t sub_1B988D2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v3 = a1;
  v9 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5958, qword_1B98FB288);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v3 - v4;
  v9 = MEMORY[0x1EEE9AC00](v3);
  sub_1B988D88C(v9, &v3 - v4);
  v8 = *(v7 + *(v5 + 48));
  sub_1B9832680(v7, v6);
}

uint64_t sub_1B988D3B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v5 = a1;
  v10 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5958, qword_1B98FB288);
  v6 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v6;
  v10 = MEMORY[0x1EEE9AC00](v5);
  sub_1B988D88C(v10, &v4 - v6);
  v2 = v9;
  *v8 = *&v9[*(v7 + 48)];
  return sub_1B983A3AC(v2);
}

id sub_1B988D55C(uint64_t a1)
{
  v4 = [v1 initWithConfiguration_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1B988D5E4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B988D6CC()
{
  v2 = qword_1EBBD5930;
  if (!qword_1EBBD5930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5810, &unk_1B98FB220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988D754()
{
  v2 = qword_1EBBD5948;
  if (!qword_1EBBD5948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5810, &unk_1B98FB220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B988D7DC()
{
  v2 = qword_1EBBD5950;
  if (!qword_1EBBD5950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5920, &qword_1B98FB180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B988D88C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v12 = type metadata accessor for BlockedHandle(0);
  v3 = (a1 + v12[5]);
  v6 = (a2 + v12[5]);
  *v6 = *v3;
  v7 = v3[1];
  sub_1B98F54D8();
  v6[1] = v7;
  v8 = v12[6];
  v9 = *(a1 + v8);
  sub_1B98F54D8();
  *(a2 + v8) = v9;
  v10 = v12[7];
  v11 = *(a1 + v10);
  sub_1B98F54D8();
  *(a2 + v10) = v11;
  v4 = v12[8];
  v13 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v14 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  *(v13 + 8) = v14;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5958, qword_1B98FB288) + 48);
  v18 = *(a1 + v17);
  sub_1B98F54D8();
  result = a2;
  *(a2 + v17) = v18;
  return result;
}

uint64_t sub_1B988DAEC()
{
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B988DB20(uint64_t a1)
{
  v166 = a1;
  v146 = 0;
  v136 = sub_1B988F1A0;
  v137 = sub_1B988F458;
  v138 = sub_1B988F2A0;
  v139 = sub_1B988F480;
  v140 = sub_1B988F448;
  v141 = sub_1B988F450;
  v142 = sub_1B988F464;
  v143 = sub_1B988F470;
  v144 = sub_1B988F478;
  v145 = sub_1B988F48C;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v169 = __b;
  v171 = 40;
  memset(__b, 0, sizeof(__b));
  v182 = 0;
  v179 = 0;
  v172 = 0;
  v162 = 0;
  v147 = sub_1B98F5138();
  v148 = *(v147 - 8);
  v149 = v147 - 8;
  v150 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v151 = &v35 - v150;
  v167 = type metadata accessor for BlockedHandle(v2);
  v153 = *(v167 - 8);
  v152 = v167 - 8;
  v154 = v153;
  v155 = *(v153 + 64);
  v156 = (v155 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v167);
  v157 = &v35 - v156;
  v158 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v156);
  v159 = &v35 - v158;
  v160 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v158);
  v161 = &v35 - v160;
  v187 = &v35 - v160;
  v163 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v35 - v163;
  v186 = v5;
  v185 = v1;
  v165 = sub_1B98F5F98();
  v168 = sub_1B9853574();
  v184 = sub_1B98F5A38();
  sub_1B98F54D8();
  v170 = &v188;
  sub_1B98F5A58();
  memcpy(v169, v170, v171);
  for (i = v172; ; i = v37)
  {
    v134 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v153 + 48))(v164, 1, v167) == 1)
    {
      break;
    }

    sub_1B9832680(v164, v161);
    v126 = *(v135 + 16);
    MEMORY[0x1E69E5928](v126);
    BlockedHandle.value.getter();
    v124 = v6;
    v125 = sub_1B98F5648();

    v127 = [v126 interactionFeaturesForHandle_];
    MEMORY[0x1E69E5920](v125);
    MEMORY[0x1E69E5920](v126);
    v129 = sub_1B988F0DC();
    v128 = MEMORY[0x1E69E6158];
    v130 = MEMORY[0x1E69E6168];
    v131 = sub_1B98F5478();
    v182 = v131;
    MEMORY[0x1E69E5920](v127);
    v7 = sub_1B98F55E8("numberOfOutgoingInteractions", 28, 1);
    v132 = v180;
    v180[0] = v7;
    v180[1] = v8;
    sub_1B98F55B8();
    sub_1B9868BFC(v132);
    v133 = v181;
    if (v181)
    {
      v123 = v133;
      v121 = v133;
      v179 = v133;
      if ([v133 integerValue] <= 0)
      {
        MEMORY[0x1E69E5920](v121);
        v122 = v134;
      }

      else
      {
        v9 = v151;
        v10 = sub_1B98F1E6C();
        (*(v148 + 16))(v9, v10, v147);

        sub_1B9833334(v161, v159);
        v101 = (*(v154 + 80) + 16) & ~*(v154 + 80);
        v107 = 7;
        v108 = swift_allocObject();
        sub_1B9832680(v159, v108 + v101);
        v119 = sub_1B98F5118();
        v120 = sub_1B98F5BD8();
        v104 = 17;
        v110 = swift_allocObject();
        v103 = 32;
        *(v110 + 16) = 32;
        v111 = swift_allocObject();
        v105 = 8;
        *(v111 + 16) = 8;
        v106 = 32;
        v11 = swift_allocObject();
        v12 = v135;
        v102 = v11;
        *(v11 + 16) = v136;
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v102;
        v112 = v13;
        *(v13 + 16) = v137;
        *(v13 + 24) = v14;
        v113 = swift_allocObject();
        *(v113 + 16) = v103;
        v114 = swift_allocObject();
        *(v114 + 16) = v105;
        v15 = swift_allocObject();
        v16 = v108;
        v109 = v15;
        *(v15 + 16) = v138;
        *(v15 + 24) = v16;
        v17 = swift_allocObject();
        v18 = v109;
        v116 = v17;
        *(v17 + 16) = v139;
        *(v17 + 24) = v18;
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
        v115 = sub_1B98F5F98();
        v117 = v19;

        v20 = v110;
        v21 = v117;
        *v117 = v140;
        v21[1] = v20;

        v22 = v111;
        v23 = v117;
        v117[2] = v141;
        v23[3] = v22;

        v24 = v112;
        v25 = v117;
        v117[4] = v142;
        v25[5] = v24;

        v26 = v113;
        v27 = v117;
        v117[6] = v143;
        v27[7] = v26;

        v28 = v114;
        v29 = v117;
        v117[8] = v144;
        v29[9] = v28;

        v30 = v116;
        v31 = v117;
        v117[10] = v145;
        v31[11] = v30;
        sub_1B9851B38();

        if (os_log_type_enabled(v119, v120))
        {
          v32 = v134;
          v87 = sub_1B98F5C28();
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
          v88 = sub_1B985263C(0, v86, v86);
          v89 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v91 = &v178;
          v178 = v87;
          v92 = &v177;
          v177 = v88;
          v93 = &v176;
          v176 = v89;
          v90 = 2;
          sub_1B9852690(2, &v178);
          sub_1B9852690(v90, v91);
          v174 = v140;
          v175 = v110;
          sub_1B98526A4(&v174, v91, v92, v93);
          v94 = v32;
          v95 = v110;
          v96 = v111;
          v97 = v112;
          v98 = v113;
          v99 = v114;
          v100 = v116;
          if (v32)
          {
            v79 = v95;
            v80 = v96;
            v81 = v97;
            v82 = v98;
            v83 = v99;
            v84 = v100;
            v43 = v100;
            v42 = v99;
            v41 = v98;
            v40 = v97;
            v39 = v96;

            __break(1u);
          }

          else
          {
            v174 = v141;
            v175 = v111;
            sub_1B98526A4(&v174, &v178, &v177, &v176);
            v72 = 0;
            v73 = v110;
            v74 = v111;
            v75 = v112;
            v76 = v113;
            v77 = v114;
            v78 = v116;
            v174 = v142;
            v175 = v112;
            sub_1B98526A4(&v174, &v178, &v177, &v176);
            v65 = 0;
            v66 = v110;
            v67 = v111;
            v68 = v112;
            v69 = v113;
            v70 = v114;
            v71 = v116;
            v174 = v143;
            v175 = v113;
            sub_1B98526A4(&v174, &v178, &v177, &v176);
            v58 = 0;
            v59 = v110;
            v60 = v111;
            v61 = v112;
            v62 = v113;
            v63 = v114;
            v64 = v116;
            v174 = v144;
            v175 = v114;
            sub_1B98526A4(&v174, &v178, &v177, &v176);
            v51 = 0;
            v52 = v110;
            v53 = v111;
            v54 = v112;
            v55 = v113;
            v56 = v114;
            v57 = v116;
            v174 = v145;
            v175 = v116;
            sub_1B98526A4(&v174, &v178, &v177, &v176);
            v44 = 0;
            v45 = v110;
            v46 = v111;
            v47 = v112;
            v48 = v113;
            v49 = v114;
            v50 = v116;
            _os_log_impl(&dword_1B982F000, v119, v120, "%s: Outgoing interactions found with %s", v87, 0x16u);
            sub_1B985281C(v88, 0, v86);
            sub_1B985281C(v89, 2, MEMORY[0x1E69E7CA0] + 8);
            sub_1B98F5C08();

            v85 = v44;
          }
        }

        else
        {
          v33 = v134;

          v85 = v33;
        }

        v38 = v85;
        MEMORY[0x1E69E5920](v119);
        (*(v148 + 8))(v151, v147);
        sub_1B9833334(v161, v157);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v159);
        MEMORY[0x1E69E5920](v121);
        v122 = v38;
      }
    }

    else
    {
      v122 = v134;
    }

    v37 = v122;

    sub_1B983A3AC(v161);
  }

  sub_1B9871430();
  v35 = &v184;
  v36 = v184;
  sub_1B98F54D8();
  sub_1B9868D78(v35);
  return v36;
}

unint64_t sub_1B988F0DC()
{
  v2 = qword_1EBBD5960;
  if (!qword_1EBBD5960)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5960);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B988F1A8(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

uint64_t sub_1B988F2A0()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B988F1A8(v2);
}

uint64_t sub_1B988F3C0()
{
  sub_1B988F4C0();
  v0 = sub_1B988DABC();
  result = v2;
  *(v2 + 16) = v0;
  return result;
}

unint64_t sub_1B988F4C0()
{
  v2 = qword_1EBBD5968;
  if (!qword_1EBBD5968)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBD5968);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B988F54C()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B988F5B4()
{
  v10 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5598, &qword_1B98FB3C0);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v8 = &v4 - v6;
  v10 = v0;
  v7 = 0;
  sub_1B98F50E8();
  v2 = sub_1B98F4F88();
  (*(*(v2 - 8) + 56))(v8, 1);
  v9 = sub_1B98F50D8();
  result = v5;
  *(v5 + 16) = v9;
  return result;
}

uint64_t sub_1B988F7B0()
{
  sub_1B98F5F98();
  v5 = v0;
  *v0 = sub_1B98F55E8("com.apple.private.alloy.facetime.audio");
  v5[1] = v1;
  v5[2] = sub_1B98F55E8("com.apple.private.alloy.facetime.video", 38, 1);
  v5[3] = v2;
  v5[4] = sub_1B98F55E8("com.apple.private.alloy.facetime.multi", 38, 1);
  v5[5] = v3;
  sub_1B9851B38();
  result = sub_1B98F5A38();
  qword_1EBBDA928 = result;
  return result;
}

uint64_t *sub_1B988F898()
{
  if (qword_1EBBD4E58 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA928;
}

uint64_t sub_1B988F8F8()
{
  sub_1B98F5F98();
  v3 = v0;
  *v0 = sub_1B98F55E8("com.apple.madrid", 16, 1);
  v3[1] = v1;
  sub_1B9851B38();
  result = sub_1B98F5A38();
  qword_1EBBDA930 = result;
  return result;
}

uint64_t *sub_1B988F988()
{
  if (qword_1EBBD4E60 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA930;
}

uint64_t sub_1B988F9E8()
{
  result = sub_1B98F55E8("siu-cts-cache-lifecycle", 23, 1);
  qword_1EBBDA938 = result;
  qword_1EBBDA940 = v1;
  return result;
}

uint64_t *sub_1B988FA2C()
{
  if (qword_1EBBD4E68 != -1)
  {
    swift_once();
  }

  return &qword_1EBBDA938;
}

uint64_t sub_1B988FA8C@<X0>(char *a3@<X8>)
{
  sub_1B988F898();
  sub_1B98F54D8();
  v6 = sub_1B98F5AC8();

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    sub_1B988F988();
    sub_1B98F54D8();
    v4 = sub_1B98F5AC8();

    if ((v4 & 1) == 0)
    {

      *a3 = 2;
      return result;
    }

    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_1B988FBB8()
{
  if (*v0)
  {
    return sub_1B98F55E8("siu-cts-enabled-for-ft-service", 30, 1);
  }

  else
  {
    return sub_1B98F55E8("siu-cts-enabled-for-msg-service", 31, 1);
  }
}

uint64_t sub_1B988FC48()
{
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v14 = 0;
  v1 = *v0;
  v21 = *v0 & 1;
  v20 = v1;
  v11 = sub_1B988FBB8();
  if (!v2)
  {
    goto LABEL_16;
  }

  v18 = v11;
  v19 = v2;
  v9 = [objc_opt_self() sharedInstanceForBagType_];
  sub_1B98F54D8();
  v8 = sub_1B98F5648();

  v10 = [v9 objectForKey_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  if (v10)
  {
    sub_1B98F5C68();
    sub_1B98334F8(v12, &v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    sub_1B988F0DC();
    if (swift_dynamicCast())
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
  }

  else
  {
    sub_1B985DAC0(v17);
    v6 = 0;
  }

  if (!v6)
  {

LABEL_16:
    v5 = 1;
    return v5 & 1;
  }

  v14 = v6;
  v4 = [v6 BOOLValue];
  MEMORY[0x1E69E5920](v6);

  v5 = v4;
  return v5 & 1;
}

uint64_t sub_1B988FED0()
{
  v2 = *v0;
  sub_1B98F54D8();
  return v2;
}

void sub_1B988FF18(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v5 = *a3;
  sub_1B98F54D8();
  v8 = a1;
  v9 = a2;
  v10 = v5;
  sub_1B988FFC0(&v8, a4);

  sub_1B9890010(&v8);
}

uint64_t sub_1B988FFC0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  sub_1B98F54D8();
  result = a2;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

uint64_t sub_1B989003C(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1;
  sub_1B98F54D8();
  v5[0] = v3;
  v5[1] = v4;
  sub_1B98F6058();
  sub_1B9868BFC(v5);
  sub_1B98900FC();
  return sub_1B98F6058();
}

unint64_t sub_1B98900FC()
{
  v2 = qword_1EBBD5970;
  if (!qword_1EBBD5970)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98902A4()
{
  v2 = qword_1EBBD5978;
  if (!qword_1EBBD5978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5978);
    return WitnessTable;
  }

  return v2;
}

double sub_1B9890384()
{
  v15 = 0;
  v11 = 0;
  v7 = [objc_opt_self() sharedInstanceForBagType_];
  sub_1B988FA2C();
  sub_1B98F54D8();
  v6 = sub_1B98F5648();

  v8 = [v7 objectForKey_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    sub_1B98F5C68();
    sub_1B98334F8(v9, &v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0uLL;
    v13 = 0uLL;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    sub_1B988F0DC();
    if (swift_dynamicCast())
    {
      v5 = v10;
    }

    else
    {
      v5 = 0;
    }

    v4 = v5;
  }

  else
  {
    sub_1B985DAC0(v14);
    v4 = 0;
  }

  if (!v4)
  {
    return 3600.0;
  }

  v11 = v4;
  sub_1B98F5A18();
  v2 = v0;
  MEMORY[0x1E69E5920](v4);
  return v2;
}

uint64_t sub_1B989059C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v201 = a1;
  v202 = a2;
  v205 = a3;
  v206 = a4;
  v160 = sub_1B989249C;
  v161 = sub_1B9897338;
  v162 = sub_1B989731C;
  v163 = sub_1B9897360;
  v164 = sub_1B9897328;
  v165 = sub_1B9897330;
  v166 = sub_1B9897344;
  v167 = sub_1B9897350;
  v168 = sub_1B9897358;
  v169 = sub_1B989736C;
  v170 = &unk_1B98FB428;
  v171 = sub_1B9892298;
  v172 = sub_1B98972B4;
  v173 = sub_1B98923C0;
  v174 = sub_1B98972DC;
  v175 = sub_1B9892490;
  v176 = sub_1B9897304;
  v177 = sub_1B98972A4;
  v178 = sub_1B98972AC;
  v179 = sub_1B98972C0;
  v180 = sub_1B98972CC;
  v181 = sub_1B98972D4;
  v182 = sub_1B98972E8;
  v183 = sub_1B98972F4;
  v184 = sub_1B98972FC;
  v185 = sub_1B9897310;
  v186 = *v4;
  v232 = 0;
  v231 = 0;
  v229 = 0;
  v230 = 0;
  v228 = 0;
  v187 = 0;
  v221 = 0;
  v208 = 0;
  v209 = 0;
  v210 = 0;
  v188 = 0;
  v189 = *(type metadata accessor for BlockedHandle(0) - 8);
  v190 = v189;
  v191 = *(v189 + 64);
  v192 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v193 = v80 - v192;
  v194 = sub_1B98F5138();
  v195 = *(v194 - 8);
  v196 = v194 - 8;
  v197 = (*(v195 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v194);
  v198 = v80 - v197;
  v199 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v80 - v197);
  v200 = v80 - v199;
  v203 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v206);
  v204 = v80 - v203;
  v232 = v7;
  v231 = v8 & 1;
  v229 = v9;
  v230 = v6;
  v228 = v4;
  sub_1B98F54D8();
  sub_1B988FA8C(&v227);
  v207 = v227;
  if (v227 == 2)
  {
    v45 = v198;
    v46 = sub_1B98F1E6C();
    (*(v195 + 16))(v45, v46, v194);
    sub_1B9833334(v201, v193);
    v89 = (*(v190 + 80) + 16) & ~*(v190 + 80);
    v97 = 7;
    v91 = swift_allocObject();
    sub_1B9832680(v193, v91 + v89);
    sub_1B98F54D8();
    v96 = 32;
    v47 = swift_allocObject();
    v48 = v206;
    v98 = v47;
    *(v47 + 16) = v205;
    *(v47 + 24) = v48;
    v112 = sub_1B98F5118();
    v113 = sub_1B98F5BB8();
    v94 = 17;
    v100 = swift_allocObject();
    *(v100 + 16) = 34;
    v101 = swift_allocObject();
    v95 = 8;
    *(v101 + 16) = 8;
    v49 = swift_allocObject();
    v90 = v49;
    *(v49 + 16) = v171;
    *(v49 + 24) = 0;
    v50 = swift_allocObject();
    v51 = v90;
    v102 = v50;
    *(v50 + 16) = v172;
    *(v50 + 24) = v51;
    v103 = swift_allocObject();
    v93 = 32;
    *(v103 + 16) = 32;
    v104 = swift_allocObject();
    *(v104 + 16) = v95;
    v52 = swift_allocObject();
    v53 = v91;
    v92 = v52;
    *(v52 + 16) = v173;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v92;
    v105 = v54;
    *(v54 + 16) = v174;
    *(v54 + 24) = v55;
    v106 = swift_allocObject();
    *(v106 + 16) = v93;
    v107 = swift_allocObject();
    *(v107 + 16) = v95;
    v56 = swift_allocObject();
    v57 = v98;
    v99 = v56;
    *(v56 + 16) = v175;
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v99;
    v109 = v58;
    *(v58 + 16) = v176;
    *(v58 + 24) = v59;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v108 = sub_1B98F5F98();
    v110 = v60;

    v61 = v100;
    v62 = v110;
    *v110 = v177;
    v62[1] = v61;

    v63 = v101;
    v64 = v110;
    v110[2] = v178;
    v64[3] = v63;

    v65 = v102;
    v66 = v110;
    v110[4] = v179;
    v66[5] = v65;

    v67 = v103;
    v68 = v110;
    v110[6] = v180;
    v68[7] = v67;

    v69 = v104;
    v70 = v110;
    v110[8] = v181;
    v70[9] = v69;

    v71 = v105;
    v72 = v110;
    v110[10] = v182;
    v72[11] = v71;

    v73 = v106;
    v74 = v110;
    v110[12] = v183;
    v74[13] = v73;

    v75 = v107;
    v76 = v110;
    v110[14] = v184;
    v76[15] = v75;

    v77 = v109;
    v78 = v110;
    v110[16] = v185;
    v78[17] = v77;
    sub_1B9851B38();

    if (os_log_type_enabled(v112, v113))
    {
      v79 = v187;
      v82 = sub_1B98F5C28();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v83 = sub_1B985263C(0, v81, v81);
      v84 = sub_1B985263C(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v85 = &v226;
      v226 = v82;
      v86 = &v225;
      v225 = v83;
      v87 = &v224;
      v224 = v84;
      sub_1B9852690(2, &v226);
      sub_1B9852690(3, v85);
      v222 = v177;
      v223 = v100;
      sub_1B98526A4(&v222, v85, v86, v87);
      v88 = v79;
      if (v79)
      {

        __break(1u);
      }

      else
      {
        v222 = v178;
        v223 = v101;
        sub_1B98526A4(&v222, &v226, &v225, &v224);
        v80[6] = 0;
        v222 = v179;
        v223 = v102;
        sub_1B98526A4(&v222, &v226, &v225, &v224);
        v80[5] = 0;
        v222 = v180;
        v223 = v103;
        sub_1B98526A4(&v222, &v226, &v225, &v224);
        v80[4] = 0;
        v222 = v181;
        v223 = v104;
        sub_1B98526A4(&v222, &v226, &v225, &v224);
        v80[3] = 0;
        v222 = v182;
        v223 = v105;
        sub_1B98526A4(&v222, &v226, &v225, &v224);
        v80[2] = 0;
        v222 = v183;
        v223 = v106;
        sub_1B98526A4(&v222, &v226, &v225, &v224);
        v80[1] = 0;
        v222 = v184;
        v223 = v107;
        sub_1B98526A4(&v222, &v226, &v225, &v224);
        v80[0] = 0;
        v222 = v185;
        v223 = v109;
        sub_1B98526A4(&v222, &v226, &v225, &v224);
        _os_log_impl(&dword_1B982F000, v112, v113, "%{public}s Unable to add handle %s, invalid service: %s", v82, 0x20u);
        sub_1B985281C(v83, 0, v81);
        sub_1B985281C(v84, 3, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v112);
    return (*(v195 + 8))(v198, v194);
  }

  else
  {
    v158 = v207;
    v157 = v207;
    v221 = v207 & 1;
    v220 = v207 & 1;
    if (sub_1B988FC48())
    {
      v10 = v187;
      v11 = BlockedHandle.value.getter();
      v211 = v157 & 1;
      sub_1B988FF18(v11, v12, &v211, &v212);
      v154 = v212;
      v155 = v213;
      v156 = v214;
      v208 = v212;
      v209 = v213;
      v210 = v214;
      sub_1B98F54D8();
      v153 = v159 + 4;
      os_unfair_lock_lock(v159 + 4);
      sub_1B9892500(&v159[6], v202 & 1, v154, v155, v156 & 1);
      if (!v10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
        v151 = MEMORY[0x1E69E7CA8] + 8;
        sub_1B9870E78(v153);

        v149 = 0;
        v13 = sub_1B98F5988();
        (*(*(v13 - 8) + 56))(v204, 1);
        v147 = 7;
        v148 = swift_allocObject();
        v145 = v148 + 16;

        v146 = v159;
        swift_weakInit();

        sub_1B98F54D8();
        v14 = swift_allocObject();
        v15 = v154;
        v16 = v156;
        v17 = v186;
        v18 = v155;
        v19 = v14;
        v20 = v148;
        v150 = v19;
        *(v19 + 16) = 0;
        *(v19 + 24) = 0;
        *(v19 + 32) = v20;
        *(v19 + 40) = v15;
        *(v19 + 48) = v18;
        *(v19 + 56) = v16;
        *(v19 + 64) = v17;

        v152 = sub_1B98944E8(v149, v149, v204, v170, v150, v151);
        sub_1B98975AC(v204);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
      sub_1B9870E78(v153);

      __break(1u);
    }

    v22 = v200;
    v23 = sub_1B98F1E6C();
    (*(v195 + 16))(v22, v23, v194);
    v128 = 17;
    v131 = 7;
    v132 = swift_allocObject();
    *(v132 + 16) = v157 & 1;
    v143 = sub_1B98F5118();
    v144 = sub_1B98F5BD8();
    v134 = swift_allocObject();
    *(v134 + 16) = 34;
    v135 = swift_allocObject();
    v129 = 8;
    *(v135 + 16) = 8;
    v130 = 32;
    v24 = swift_allocObject();
    v127 = v24;
    *(v24 + 16) = v160;
    *(v24 + 24) = 0;
    v25 = swift_allocObject();
    v26 = v127;
    v136 = v25;
    *(v25 + 16) = v161;
    *(v25 + 24) = v26;
    v137 = swift_allocObject();
    *(v137 + 16) = 32;
    v138 = swift_allocObject();
    *(v138 + 16) = v129;
    v27 = swift_allocObject();
    v28 = v132;
    v133 = v27;
    *(v27 + 16) = v162;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v133;
    v140 = v29;
    *(v29 + 16) = v163;
    *(v29 + 24) = v30;
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v139 = sub_1B98F5F98();
    v141 = v31;

    v32 = v134;
    v33 = v141;
    *v141 = v164;
    v33[1] = v32;

    v34 = v135;
    v35 = v141;
    v141[2] = v165;
    v35[3] = v34;

    v36 = v136;
    v37 = v141;
    v141[4] = v166;
    v37[5] = v36;

    v38 = v137;
    v39 = v141;
    v141[6] = v167;
    v39[7] = v38;

    v40 = v138;
    v41 = v141;
    v141[8] = v168;
    v41[9] = v40;

    v42 = v140;
    v43 = v141;
    v141[10] = v169;
    v43[11] = v42;
    sub_1B9851B38();

    if (os_log_type_enabled(v143, v144))
    {
      v44 = v187;
      v119 = sub_1B98F5C28();
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v120 = sub_1B985263C(0, v118, v118);
      v121 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v123 = &v219;
      v219 = v119;
      v124 = &v218;
      v218 = v120;
      v125 = &v217;
      v217 = v121;
      v122 = 2;
      sub_1B9852690(2, &v219);
      sub_1B9852690(v122, v123);
      v215 = v164;
      v216 = v134;
      sub_1B98526A4(&v215, v123, v124, v125);
      v126 = v44;
      if (v44)
      {

        __break(1u);
      }

      else
      {
        v215 = v165;
        v216 = v135;
        sub_1B98526A4(&v215, &v219, &v218, &v217);
        v117 = 0;
        v215 = v166;
        v216 = v136;
        sub_1B98526A4(&v215, &v219, &v218, &v217);
        v116 = 0;
        v215 = v167;
        v216 = v137;
        sub_1B98526A4(&v215, &v219, &v218, &v217);
        v115 = 0;
        v215 = v168;
        v216 = v138;
        sub_1B98526A4(&v215, &v219, &v218, &v217);
        v114 = 0;
        v215 = v169;
        v216 = v140;
        sub_1B98526A4(&v215, &v219, &v218, &v217);
        _os_log_impl(&dword_1B982F000, v143, v144, "%{public}s Service: %s is disabled by server bag, ignoring request to add trust score to cache", v119, 0x16u);
        sub_1B985281C(v120, 0, v118);
        sub_1B985281C(v121, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v143);
    return (*(v195 + 8))(v200, v194);
  }
}

uint64_t sub_1B98922C8(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v4 - v5;
  sub_1B9833334(v1, &v4 - v5);
  v6 = type metadata accessor for BlockedHandle(0);
  (*(*(v6 - 8) + 56))(v7, 0, 1);
  v9 = sub_1B98F1B88(v7, v6);
  v8 = v2;
  sub_1B983AAEC(v7);
  return v9;
}

uint64_t sub_1B98923C0()
{
  v1 = *(type metadata accessor for BlockedHandle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B98922C8(v2);
}

uint64_t sub_1B9892424(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v6[0] = a1;
  v6[1] = a2;
  v5 = sub_1B98F1B88(v6, MEMORY[0x1E69E6158]);
  sub_1B985EE4C(v6);
  return v5;
}

uint64_t sub_1B9892500(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v87 = a1;
  v86 = a2;
  v83 = a3;
  v84 = a4;
  v85 = a5;
  v73 = sub_1B9892FE8;
  v74 = sub_1B9897E30;
  v75 = sub_1B9897E0C;
  v76 = sub_1B9897E58;
  v77 = sub_1B9897E20;
  v78 = sub_1B9897E28;
  v79 = sub_1B9897E3C;
  v80 = sub_1B9897E48;
  v81 = sub_1B9897E50;
  v82 = sub_1B9897E64;
  v104 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v88 = sub_1B98F5138();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v36 - v91;
  v104 = MEMORY[0x1EEE9AC00](v87);
  v103 = v5 & 1;
  v100 = v6;
  v101 = v7;
  v102 = v8 & 1;
  if (v5)
  {
    return v72;
  }

  v9 = v92;
  v10 = sub_1B98F1E6C();
  (*(v89 + 16))(v9, v10, v88);
  sub_1B98F54D8();
  v58 = 7;
  v11 = swift_allocObject();
  v12 = v84;
  v13 = v85;
  v59 = v11;
  *(v11 + 16) = v83;
  *(v11 + 24) = v12;
  *(v11 + 32) = v13 & 1;
  v70 = sub_1B98F5118();
  v71 = sub_1B98F5BD8();
  v55 = 17;
  v61 = swift_allocObject();
  *(v61 + 16) = 34;
  v62 = swift_allocObject();
  v56 = 8;
  *(v62 + 16) = 8;
  v57 = 32;
  v14 = swift_allocObject();
  v54 = v14;
  *(v14 + 16) = v73;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v54;
  v63 = v15;
  *(v15 + 16) = v74;
  *(v15 + 24) = v16;
  v64 = swift_allocObject();
  *(v64 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = v56;
  v17 = swift_allocObject();
  v18 = v59;
  v60 = v17;
  *(v17 + 16) = v75;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v60;
  v67 = v19;
  *(v19 + 16) = v76;
  *(v19 + 24) = v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v66 = sub_1B98F5F98();
  v68 = v21;

  v22 = v61;
  v23 = v68;
  *v68 = v77;
  v23[1] = v22;

  v24 = v62;
  v25 = v68;
  v68[2] = v78;
  v25[3] = v24;

  v26 = v63;
  v27 = v68;
  v68[4] = v79;
  v27[5] = v26;

  v28 = v64;
  v29 = v68;
  v68[6] = v80;
  v29[7] = v28;

  v30 = v65;
  v31 = v68;
  v68[8] = v81;
  v31[9] = v30;

  v32 = v67;
  v33 = v68;
  v68[10] = v82;
  v33[11] = v32;
  sub_1B9851B38();

  if (os_log_type_enabled(v70, v71))
  {
    v46 = sub_1B98F5C28();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v47 = sub_1B985263C(0, v45, v45);
    v48 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v50 = &v97;
    v97 = v46;
    v51 = &v96;
    v96 = v47;
    v52 = &v95;
    v95 = v48;
    v49 = 2;
    sub_1B9852690(2, &v97);
    sub_1B9852690(v49, v50);
    v34 = v72;
    v93 = v77;
    v94 = v61;
    sub_1B98526A4(&v93, v50, v51, v52);
    v53 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v93 = v78;
      v94 = v62;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v43 = 0;
      v93 = v79;
      v94 = v63;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v42 = 0;
      v93 = v80;
      v94 = v64;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v41 = 0;
      v93 = v81;
      v94 = v65;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v40 = 0;
      v93 = v82;
      v94 = v67;
      sub_1B98526A4(&v93, &v97, &v96, &v95);
      v39 = 0;
      _os_log_impl(&dword_1B982F000, v70, v71, "%{public}s Adding trust score %s to untrustedCache", v46, 0x16u);
      sub_1B985281C(v47, 0, v45);
      sub_1B985281C(v48, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v44 = v39;
    }
  }

  else
  {

    v44 = v72;
  }

  v37 = v44;
  MEMORY[0x1E69E5920](v70);
  (*(v89 + 8))(v92, v88);
  sub_1B98F54D8();
  v36[1] = v98;
  v98[0] = v83;
  v98[1] = v84;
  v99 = v85 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
  sub_1B98F5A88();

  result = v37;
  v38 = v37;
  return result;
}

uint64_t sub_1B9893018(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B98F54D8();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  v7 = sub_1B98F1B88(v8, &unk_1F3797548);
  sub_1B9897BA8(v8);
  return v7;
}

uint64_t sub_1B9893098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = a8;
  *(v8 + 57) = a7;
  *(v8 + 144) = a6;
  *(v8 + 136) = a5;
  *(v8 + 128) = a4;
  *(v8 + 104) = v8;
  *(v8 + 112) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  v9 = sub_1B98F5138();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_1B98F5DC8();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 112) = a4 + 16;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1B9893250, 0);
}

uint64_t sub_1B9893250()
{
  *(v0 + 104) = v0;
  sub_1B9890384();
  *(v0 + 88) = sub_1B98F6088();
  *(v0 + 96) = v1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v7 = sub_1B9897CFC();
  sub_1B98940FC();
  v2 = swift_task_alloc();
  v6[26] = v2;
  *v2 = v6[13];
  v2[1] = sub_1B98933A0;
  v3 = v6[25];
  v4 = v6[23];

  return sub_1B9894120(v0 + 88, v0 + 64, v3, v4, v7);
}

uint64_t sub_1B98933A0()
{
  v4 = *v1;
  v4[13] = *v1;
  v4[27] = v0;

  if (v0)
  {
    v2 = sub_1B9894028;
  }

  else
  {
    (*(v4[24] + 8))(v4[25], v4[23]);
    v2 = sub_1B9893538;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9893538()
{
  v43 = v0;
  *(v0 + 104) = v0;
  swift_beginAccess();
  *(v0 + 120) = swift_weakLoadStrong();
  if (*(v0 + 120))
  {
    v1 = *(v37 + 216);
    v35 = *(v37 + 57);
    v34 = *(v37 + 144);
    v33 = *(v37 + 136);
    v32 = *(v37 + 120);

    sub_1B9897D7C();
    swift_endAccess();
    sub_1B98F54D8();
    v31 = v32 + 4;
    os_unfair_lock_lock(v32 + 4);
    sub_1B9894398(&v32[6], v33, v34, v35 & 1);
    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B0, &qword_1B98FB560);
      sub_1B9870E78(v31);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B0, &qword_1B98FB560);
    sub_1B9870E78(v31);

    v36 = 0;
  }

  else
  {
    sub_1B9897D7C();
    swift_endAccess();
    v36 = *(v37 + 216);
  }

  v3 = *(v37 + 176);
  v15 = *(v37 + 160);
  v18 = *(v37 + 57);
  v17 = *(v37 + 144);
  v16 = *(v37 + 136);
  v14 = *(v37 + 168);

  v4 = sub_1B98F1E6C();
  (*(v14 + 16))(v3, v4, v15);
  sub_1B98F54D8();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v17;
  *(v20 + 32) = v18 & 1;
  oslog = sub_1B98F5118();
  v30 = sub_1B98F5BD8();
  v22 = swift_allocObject();
  *(v22 + 16) = 34;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B9894438;
  *(v19 + 24) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1B9897DCC;
  *(v24 + 24) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B9897DA8;
  *(v21 + 24) = v20;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B9897DF4;
  *(v27 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v28 = v5;

  *v28 = sub_1B9897DBC;
  v28[1] = v22;

  v28[2] = sub_1B9897DC4;
  v28[3] = v23;

  v28[4] = sub_1B9897DD8;
  v28[5] = v24;

  v28[6] = sub_1B9897DE4;
  v28[7] = v25;

  v28[8] = sub_1B9897DEC;
  v28[9] = v26;

  v28[10] = sub_1B9897E00;
  v28[11] = v27;
  sub_1B9851B38();

  if (os_log_type_enabled(oslog, v30))
  {
    buf = sub_1B98F5C28();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v12 = sub_1B985263C(0, v10, v10);
    v13 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v38 = buf;
    v39 = v12;
    v40 = v13;
    sub_1B9852690(2, &v38);
    sub_1B9852690(2, &v38);
    v41 = sub_1B9897DBC;
    v42 = v22;
    sub_1B98526A4(&v41, &v38, &v39, &v40);
    if (v36)
    {
    }

    v41 = sub_1B9897DC4;
    v42 = v23;
    sub_1B98526A4(&v41, &v38, &v39, &v40);
    v41 = sub_1B9897DD8;
    v42 = v24;
    sub_1B98526A4(&v41, &v38, &v39, &v40);
    v41 = sub_1B9897DE4;
    v42 = v25;
    sub_1B98526A4(&v41, &v38, &v39, &v40);
    v41 = sub_1B9897DEC;
    v42 = v26;
    sub_1B98526A4(&v41, &v38, &v39, &v40);
    v41 = sub_1B9897E00;
    v42 = v27;
    sub_1B98526A4(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_1B982F000, oslog, v30, "%{public}s Removing trust score %s from untrustedCache", buf, 0x16u);
    sub_1B985281C(v12, 0, v10);
    sub_1B985281C(v13, 2, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v9 = *(v37 + 176);
  v8 = *(v37 + 160);
  v7 = *(v37 + 168);
  MEMORY[0x1E69E5920](oslog);
  (*(v7 + 8))(v9, v8);

  v6 = *(*(v37 + 104) + 8);

  return v6();
}

uint64_t sub_1B9894028()
{
  v1 = *(v0 + 192);
  *(v0 + 104) = v0;
  (*(v1 + 8))();

  v2 = *(*(v0 + 104) + 8);

  return v2();
}

uint64_t sub_1B9894120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1B989420C;

  return sub_1B9896D98(a1, a2, a4, a5);
}

uint64_t sub_1B989420C()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B9894468(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B98F54D8();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  v7 = sub_1B98F1B88(v8, &unk_1F3797548);
  sub_1B9897BA8(v8);
  return v7;
}

uint64_t sub_1B98944E8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a1;
  v39 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v40 = a6;
  v41 = "Fatal error";
  v42 = "Unexpectedly found nil while unwrapping an Optional value";
  v43 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v44 = 0;
  v57 = a6;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v10 - v45;

  v55 = v47;
  v56 = v48;
  sub_1B9897BD4(v46, v49);
  v50 = sub_1B98F5988();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  if ((*(v51 + 48))(v49, 1) == 1)
  {
    sub_1B98975AC(v49);
    v37 = 0;
  }

  else
  {
    v36 = sub_1B98F5978();
    (*(v51 + 8))(v49, v50);
    v37 = v36;
  }

  v33 = v37 | 0x1000;
  v35 = *(v48 + 16);
  v34 = *(v48 + 24);
  swift_unknownObjectRetain();

  if (v35)
  {
    v31 = v35;
    v32 = v34;
    v25 = v34;
    v26 = v35;
    swift_getObjectType();
    v27 = sub_1B98F5958();
    v28 = v6;
    swift_unknownObjectRelease();
    v29 = v27;
    v30 = v28;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v23 = v30;
  v24 = v29;
  if (v39)
  {
    v21 = v38;
    v22 = v39;
    v7 = v44;
    v19 = sub_1B98F5698();
    sub_1B9896C28(v19 + 32, &v53);
    if (v7)
    {
      __break(1u);
    }

    v18 = v53;

    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v17 = v20;
  if (v20)
  {
    v12 = v17;
    v13 = v17;
  }

  else
  {

    v14 = v55;
    v15 = v56;

    v16 = 0;
    if (v24 != 0 || v23 != 0)
    {
      v54[0] = 0;
      v54[1] = 0;
      v54[2] = v24;
      v54[3] = v23;
      v16 = v54;
    }

    v13 = swift_task_create();
  }

  v10 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52A8, &qword_1B98F9020);
  sub_1B98D0BE0();
  v11 = v8;

  return v11;
}

uint64_t sub_1B9894A34(uint64_t a1, uint64_t a2)
{
  v173 = a1;
  v172 = a2;
  v146 = sub_1B9896368;
  v147 = sub_1B9897670;
  v148 = sub_1B9897654;
  v149 = sub_1B9897698;
  v150 = sub_1B9897660;
  v151 = sub_1B9897668;
  v152 = sub_1B989767C;
  v153 = sub_1B9897688;
  v154 = sub_1B9897690;
  v155 = sub_1B98976A4;
  v156 = sub_1B98964A4;
  v157 = sub_1B98976E0;
  v158 = sub_1B98976B0;
  v159 = sub_1B9897708;
  v160 = sub_1B98976C4;
  v161 = sub_1B9897730;
  v162 = sub_1B98976D0;
  v163 = sub_1B98976D8;
  v164 = sub_1B98976EC;
  v165 = sub_1B98976F8;
  v166 = sub_1B9897700;
  v167 = sub_1B9897714;
  v168 = sub_1B9897720;
  v169 = sub_1B9897728;
  v170 = sub_1B989773C;
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v171 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v187 = 0;
  v174 = sub_1B98F5138();
  v175 = *(v174 - 8);
  v176 = v174 - 8;
  v177 = (*(v175 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v173);
  v178 = v70 - v177;
  v179 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v180 = v70 - v179;
  v204 = v5;
  v181 = *v6;
  v203 = v181 & 1;
  v202 = v2;
  v201 = v181;
  if (sub_1B988FC48())
  {
    v7 = v171;
    v8 = BlockedHandle.value.getter();
    v192 = v181;
    sub_1B988FF18(v8, v9, &v192, &v193);
    v141 = v193;
    v142 = v194;
    v143 = v195;
    v189 = v193;
    v190 = v194;
    v191 = v195;
    sub_1B98F54D8();
    v140 = v145 + 4;
    os_unfair_lock_lock(v145 + 4);
    sub_1B98963CC(&v188);
    v144 = v7;
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
      sub_1B9870E78(v140);

      __break(1u);
    }

    v10 = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
    sub_1B9870E78(v140);

    v115 = v188;
    v187 = v188 & 1;
    v11 = sub_1B98F1E6C();
    (*(v175 + 16))(v10, v11, v174);
    sub_1B98F54D8();
    v123 = 7;
    v12 = swift_allocObject();
    v13 = v142;
    v14 = v143;
    v117 = v12;
    *(v12 + 16) = v141;
    *(v12 + 24) = v13;
    *(v12 + 32) = v14;
    v120 = 17;
    v124 = swift_allocObject();
    *(v124 + 16) = v115;
    v138 = sub_1B98F5118();
    v139 = sub_1B98F5BD8();
    v126 = swift_allocObject();
    *(v126 + 16) = 34;
    v127 = swift_allocObject();
    v121 = 8;
    *(v127 + 16) = 8;
    v122 = 32;
    v15 = swift_allocObject();
    v116 = v15;
    *(v15 + 16) = v156;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    v17 = v116;
    v128 = v16;
    *(v16 + 16) = v157;
    *(v16 + 24) = v17;
    v129 = swift_allocObject();
    v119 = 32;
    *(v129 + 16) = 32;
    v130 = swift_allocObject();
    *(v130 + 16) = v121;
    v18 = swift_allocObject();
    v19 = v117;
    v118 = v18;
    *(v18 + 16) = v158;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v118;
    v131 = v20;
    *(v20 + 16) = v159;
    *(v20 + 24) = v21;
    v132 = swift_allocObject();
    *(v132 + 16) = v119;
    v133 = swift_allocObject();
    *(v133 + 16) = v121;
    v22 = swift_allocObject();
    v23 = v124;
    v125 = v22;
    *(v22 + 16) = v160;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v125;
    v135 = v24;
    *(v24 + 16) = v161;
    *(v24 + 24) = v25;
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v134 = sub_1B98F5F98();
    v136 = v26;

    v27 = v126;
    v28 = v136;
    *v136 = v162;
    v28[1] = v27;

    v29 = v127;
    v30 = v136;
    v136[2] = v163;
    v30[3] = v29;

    v31 = v128;
    v32 = v136;
    v136[4] = v164;
    v32[5] = v31;

    v33 = v129;
    v34 = v136;
    v136[6] = v165;
    v34[7] = v33;

    v35 = v130;
    v36 = v136;
    v136[8] = v166;
    v36[9] = v35;

    v37 = v131;
    v38 = v136;
    v136[10] = v167;
    v38[11] = v37;

    v39 = v132;
    v40 = v136;
    v136[12] = v168;
    v40[13] = v39;

    v41 = v133;
    v42 = v136;
    v136[14] = v169;
    v42[15] = v41;

    v43 = v135;
    v44 = v136;
    v136[16] = v170;
    v44[17] = v43;
    sub_1B9851B38();

    if (os_log_type_enabled(v138, v139))
    {
      v45 = v144;
      v108 = sub_1B98F5C28();
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v109 = sub_1B985263C(0, v107, v107);
      v110 = sub_1B985263C(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v111 = &v186;
      v186 = v108;
      v112 = &v185;
      v185 = v109;
      v113 = &v184;
      v184 = v110;
      sub_1B9852690(2, &v186);
      sub_1B9852690(3, v111);
      v182 = v162;
      v183 = v126;
      sub_1B98526A4(&v182, v111, v112, v113);
      v114 = v45;
      if (v45)
      {

        __break(1u);
      }

      else
      {
        v182 = v163;
        v183 = v127;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v106 = 0;
        v182 = v164;
        v183 = v128;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v105 = 0;
        v182 = v165;
        v183 = v129;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v104 = 0;
        v182 = v166;
        v183 = v130;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v103 = 0;
        v182 = v167;
        v183 = v131;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v102 = 0;
        v182 = v168;
        v183 = v132;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v101 = 0;
        v182 = v169;
        v183 = v133;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        v100 = 0;
        v182 = v170;
        v183 = v135;
        sub_1B98526A4(&v182, &v186, &v185, &v184);
        _os_log_impl(&dword_1B982F000, v138, v139, "%{public}s Is %s located in cache? %s", v108, 0x20u);
        sub_1B985281C(v109, 0, v107);
        sub_1B985281C(v110, 3, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v138);
    (*(v175 + 8))(v180, v174);
    v98 = v115 ^ 1;

    v99 = v98;
  }

  else
  {
    v46 = v178;
    v47 = sub_1B98F1E6C();
    (*(v175 + 16))(v46, v47, v174);
    v81 = 17;
    v84 = 7;
    v85 = swift_allocObject();
    *(v85 + 16) = v181;
    v96 = sub_1B98F5118();
    v97 = sub_1B98F5BD8();
    v87 = swift_allocObject();
    *(v87 + 16) = 34;
    v88 = swift_allocObject();
    v82 = 8;
    *(v88 + 16) = 8;
    v83 = 32;
    v48 = swift_allocObject();
    v80 = v48;
    *(v48 + 16) = v146;
    *(v48 + 24) = 0;
    v49 = swift_allocObject();
    v50 = v80;
    v89 = v49;
    *(v49 + 16) = v147;
    *(v49 + 24) = v50;
    v90 = swift_allocObject();
    *(v90 + 16) = 32;
    v91 = swift_allocObject();
    *(v91 + 16) = v82;
    v51 = swift_allocObject();
    v52 = v85;
    v86 = v51;
    *(v51 + 16) = v148;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v86;
    v93 = v53;
    *(v53 + 16) = v149;
    *(v53 + 24) = v54;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v92 = sub_1B98F5F98();
    v94 = v55;

    v56 = v87;
    v57 = v94;
    *v94 = v150;
    v57[1] = v56;

    v58 = v88;
    v59 = v94;
    v94[2] = v151;
    v59[3] = v58;

    v60 = v89;
    v61 = v94;
    v94[4] = v152;
    v61[5] = v60;

    v62 = v90;
    v63 = v94;
    v94[6] = v153;
    v63[7] = v62;

    v64 = v91;
    v65 = v94;
    v94[8] = v154;
    v65[9] = v64;

    v66 = v93;
    v67 = v94;
    v94[10] = v155;
    v67[11] = v66;
    sub_1B9851B38();

    if (os_log_type_enabled(v96, v97))
    {
      v68 = v171;
      v72 = sub_1B98F5C28();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v73 = sub_1B985263C(0, v71, v71);
      v74 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v76 = &v200;
      v200 = v72;
      v77 = &v199;
      v199 = v73;
      v78 = &v198;
      v198 = v74;
      v75 = 2;
      sub_1B9852690(2, &v200);
      sub_1B9852690(v75, v76);
      v196 = v150;
      v197 = v87;
      sub_1B98526A4(&v196, v76, v77, v78);
      v79 = v68;
      if (v68)
      {

        __break(1u);
      }

      else
      {
        v196 = v151;
        v197 = v88;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        v70[3] = 0;
        v196 = v152;
        v197 = v89;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        v70[2] = 0;
        v196 = v153;
        v197 = v90;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        v70[1] = 0;
        v196 = v154;
        v197 = v91;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        v70[0] = 0;
        v196 = v155;
        v197 = v93;
        sub_1B98526A4(&v196, &v200, &v199, &v198);
        _os_log_impl(&dword_1B982F000, v96, v97, "%{public}s Service: %s is disabled by server bag, considering handle has trusted", v72, 0x16u);
        sub_1B985281C(v73, 0, v71);
        sub_1B985281C(v74, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v96);
    (*(v175 + 8))(v178, v174);
    v99 = 1;
  }

  return v99 & 1;
}

uint64_t sub_1B98963CC@<X0>(_BYTE *a5@<X8>)
{
  sub_1B98F54D8();
  sub_1B98902A4();
  v6 = sub_1B98F5AC8();

  result = v6;
  *a5 = v6 & 1;
  return result;
}

uint64_t sub_1B98964D4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B98F54D8();
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3 & 1;
  v7 = sub_1B98F1B88(v8, &unk_1F3797548);
  sub_1B9897BA8(v8);
  return v7;
}

uint64_t sub_1B9896588(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v24 = a2;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v36 = __b;
  v38 = 40;
  memset(__b, 0, sizeof(__b));
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v25 = 0;
  v33 = type metadata accessor for BlockedHandle(0);
  v18 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v19 = &v11 - v18;
  v20 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v18);
  v21 = &v11 - v20;
  v22 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v20);
  v23 = &v11 - v22;
  v49 = &v11 - v22;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v11 - v26;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v11 - v29;
  v48 = v35;
  v31 = *v6;
  v47 = v31 & 1;
  v46 = v2;
  v32 = sub_1B98F5F98();
  v34 = sub_1B9853574();
  v45 = sub_1B98F5A38();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v37 = &v50;
  sub_1B98F5498();
  memcpy(v36, v37, v38);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
    sub_1B98F5558();
    sub_1B98732E4(v28, v30);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
    if ((*(*(v17 - 8) + 48))(v30, 1) == 1)
    {
      break;
    }

    v7 = &v30[*(v17 + 48)];
    v15 = *v7;
    v16 = v7[8];
    sub_1B9832680(v30, v23);
    v42 = v15;
    v43 = v16 & 1;
    if ((v16 & 1) != 0 || (v14 = v15, v40 = v15, v39[1] = v15, v8 = *sub_1B98E7094(), v13 = v39, v39[0] = v8, sub_1B9873520(), v9 = sub_1B98F60E8(), (v9 & 1) == 0))
    {
      v41 = v31;
      if ((sub_1B9894A34(v23, &v41) & 1) == 0)
      {
        sub_1B9833334(v23, v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v21);
      }
    }

    sub_1B983A3AC(v23);
  }

  sub_1B987349C(__b);
  v11 = &v45;
  v12 = v45;
  sub_1B98F54D8();
  sub_1B9868D78(v11);
  return v12;
}

uint64_t sub_1B9896B38()
{
  v5 = v0;
  sub_1B98F5F98();
  sub_1B98902A4();
  v4 = sub_1B98F5A38();
  *(v0 + 16) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5988, &qword_1B98FB418);
  sub_1B985253C(&v4, v0 + 24, v1);
  return v3;
}

uint64_t sub_1B9896C28@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_1B98F5E08();
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_1B9896D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B9896EC4, 0);
}

uint64_t sub_1B9896EC4()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_1B98F5FE8();
  swift_getAssociatedConformanceWitness();
  sub_1B98F5DD8();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_1B989702C;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return MEMORY[0x1EEE6DE58](v3, v6, v5, v4);
}

uint64_t sub_1B989702C()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return MEMORY[0x1EEE6DFA0](sub_1B98971FC, 0);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_1B98971FC()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1B9897378(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9897484;

  return sub_1B9893098(a1, v6, v7, v8, v9, v10, v11 & 1, v12);
}

uint64_t sub_1B9897484()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98975AC(uint64_t a1)
{
  v3 = sub_1B98F5988();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_1B989775C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_1B9897874(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B9897A7C()
{
  v2 = qword_1EBBD5998;
  if (!qword_1EBBD5998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5998);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9897AF8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5600, &qword_1B98FB540);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59A0, &unk_1B98FB548);
  (*(*(v2 - 8) + 8))(a1 + 8);
  return a1;
}

void *sub_1B9897BD4(const void *a1, void *a2)
{
  v6 = sub_1B98F5988();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1B9897CFC()
{
  v2 = qword_1EBBD59A8;
  if (!qword_1EBBD59A8)
  {
    sub_1B98F5DC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD59A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9897F7C(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_1B989FF34(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v4 + 32))(a1, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v6 & 1;
}

uint64_t sub_1B9898018(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_1B989FF34(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v4 + 40))(a1, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v6;
}

uint64_t sub_1B98980B0(uint64_t a1, uint64_t a2)
{
  v358 = a1;
  v344 = a2;
  v359 = sub_1B98AE7B4;
  v362 = sub_1B98AE778;
  v363 = sub_1B98B1474;
  v368 = sub_1B98B1374;
  v372 = sub_1B98B149C;
  v374 = sub_1B98B1464;
  v376 = sub_1B98B146C;
  v378 = sub_1B98B1480;
  v380 = sub_1B98B148C;
  v382 = sub_1B98B1494;
  v385 = sub_1B98B14A8;
  v297 = sub_1B98B14B4;
  v298 = sub_1B98B14E0;
  v299 = sub_1B98B150C;
  v300 = sub_1B98B1538;
  v301 = sub_1B98B1564;
  v302 = sub_1B98B1590;
  v303 = sub_1B98B15BC;
  v304 = sub_1B98B15E8;
  v305 = sub_1B98B19D4;
  v306 = sub_1B98B19CC;
  v307 = sub_1B98B1ADC;
  v308 = sub_1B98B19DC;
  v309 = sub_1B98B1B04;
  v310 = sub_1B98B1ACC;
  v311 = sub_1B98B1AD4;
  v312 = sub_1B98B1AE8;
  v313 = sub_1B98B1AF4;
  v314 = sub_1B98B1AFC;
  v315 = sub_1B98B1B10;
  v316 = sub_1B98B16D0;
  v317 = sub_1B98B16C8;
  v318 = sub_1B98B1750;
  v319 = sub_1B98B16D8;
  v320 = sub_1B98B1778;
  v321 = sub_1B98B1740;
  v322 = sub_1B98B1748;
  v323 = sub_1B98B175C;
  v324 = sub_1B98B1768;
  v325 = sub_1B98B1770;
  v326 = sub_1B98B1784;
  v327 = sub_1B98B1B1C;
  v445 = 0;
  v444 = 0;
  v443 = 0;
  v442 = 0;
  v441 = 0;
  v425 = 0;
  v424 = 0;
  v423 = 0;
  v422[0] = 0;
  v422[1] = 0;
  __len = 40;
  __c = 0;
  memset(v418, 0, sizeof(v418));
  v416 = 0;
  v407 = 0;
  v408 = 0;
  memset(v405, 0, sizeof(v405));
  v398 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90);
  v330 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v331 = v133 - v330;
  v332 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v133 - v330);
  v333 = v133 - v332;
  v339 = 0;
  v334 = type metadata accessor for BlockedHandle(0);
  v335 = (*(*(v334 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v334);
  v336 = v133 - v335;
  v337 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v133 - v335);
  v338 = v133 - v337;
  v445 = v133 - v337;
  v340 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B8, &qword_1B98FB5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v339);
  v341 = v133 - v340;
  v342 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v343 = v133 - v342;
  v355 = sub_1B98F5138();
  v353 = *(v355 - 8);
  v354 = v355 - 8;
  v348 = v353[8];
  v345 = (v348 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v358);
  v346 = v133 - v345;
  v347 = (v348 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v349 = v133 - v347;
  v350 = (v348 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = v133 - v350;
  v351 = v133 - v350;
  v444 = v9;
  v352 = *v11;
  v443 = v352;
  v442 = v12;
  v13 = sub_1B98F1E6C();
  v356 = v353[2];
  v357 = v353 + 2;
  v356(v10, v13, v355);

  sub_1B98F54D8();
  v370 = 7;
  v360 = swift_allocObject();
  *(v360 + 16) = v358;

  v369 = 32;
  v14 = swift_allocObject();
  v15 = v360;
  v371 = v14;
  *(v14 + 16) = v359;
  *(v14 + 24) = v15;

  v16 = sub_1B98F5118();
  v17 = v361;
  v389 = v16;
  v390 = sub_1B98F5BD8();
  v366 = 17;
  v375 = swift_allocObject();
  v365 = 32;
  *(v375 + 16) = 32;
  v377 = swift_allocObject();
  v367 = 8;
  *(v377 + 16) = 8;
  v18 = swift_allocObject();
  v364 = v18;
  *(v18 + 16) = v362;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  v20 = v364;
  v379 = v19;
  *(v19 + 16) = v363;
  *(v19 + 24) = v20;
  v381 = swift_allocObject();
  *(v381 + 16) = v365;
  v383 = swift_allocObject();
  *(v383 + 16) = v367;
  v21 = swift_allocObject();
  v22 = v371;
  v373 = v21;
  *(v21 + 16) = v368;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v373;
  v386 = v23;
  *(v23 + 16) = v372;
  *(v23 + 24) = v24;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v384 = sub_1B98F5F98();
  v387 = v25;

  v26 = v375;
  v27 = v387;
  *v387 = v374;
  v27[1] = v26;

  v28 = v377;
  v29 = v387;
  v387[2] = v376;
  v29[3] = v28;

  v30 = v379;
  v31 = v387;
  v387[4] = v378;
  v31[5] = v30;

  v32 = v381;
  v33 = v387;
  v387[6] = v380;
  v33[7] = v32;

  v34 = v383;
  v35 = v387;
  v387[8] = v382;
  v35[9] = v34;

  v36 = v386;
  v37 = v387;
  v387[10] = v385;
  v37[11] = v36;
  sub_1B9851B38();

  if (os_log_type_enabled(v389, v390))
  {
    v288 = sub_1B98F5C28();
    v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v289 = sub_1B985263C(0, v287, v287);
    v290 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v292 = &v395;
    v395 = v288;
    v293 = &v394;
    v394 = v289;
    v294 = &v393;
    v393 = v290;
    v291 = 2;
    sub_1B9852690(2, &v395);
    sub_1B9852690(v291, v292);
    v38 = v296;
    v391 = v374;
    v392 = v375;
    sub_1B98526A4(&v391, v292, v293, v294);
    v295 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v391 = v376;
      v392 = v377;
      sub_1B98526A4(&v391, &v395, &v394, &v393);
      v284 = 0;
      v391 = v378;
      v392 = v379;
      sub_1B98526A4(&v391, &v395, &v394, &v393);
      v283 = 0;
      v391 = v380;
      v392 = v381;
      sub_1B98526A4(&v391, &v395, &v394, &v393);
      v282 = 0;
      v391 = v382;
      v392 = v383;
      sub_1B98526A4(&v391, &v395, &v394, &v393);
      v281 = 0;
      v391 = v385;
      v392 = v386;
      sub_1B98526A4(&v391, &v395, &v394, &v393);
      v280 = 0;
      _os_log_impl(&dword_1B982F000, v389, v390, "%s: Calculating trust scores for handles: %s synchronously", v288, 0x16u);
      sub_1B985281C(v289, 0, v287);
      sub_1B985281C(v290, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v285 = v280;
    }
  }

  else
  {

    v285 = v296;
  }

  v278 = v285;
  MEMORY[0x1E69E5920](v389);
  v247 = v353[1];
  v248 = v353 + 1;
  v247(v351, v355);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59C8, &qword_1B98FB5D0);
  v39 = sub_1B98F5458();
  v264 = &v441;
  v441 = v39;
  v249 = sub_1B98A01C0();
  v250 = v40;
  v265 = 32;
  v271 = 7;
  v41 = swift_allocObject();
  v42 = v250;
  v43 = v297;
  *(v41 + 16) = v249;
  *(v41 + 24) = v42;
  v251 = v440;
  v440[0] = v43;
  v440[1] = v41;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D0, &qword_1B98FB5D8);
  sub_1B98F5908();
  v253 = sub_1B98A0D84();
  v252 = v44;
  v45 = swift_allocObject();
  v46 = v252;
  v47 = v298;
  *(v45 + 16) = v253;
  *(v45 + 24) = v46;
  v438 = v47;
  v439 = v45;
  sub_1B98F5908();
  v255 = sub_1B98A2B00();
  v254 = v48;
  v49 = swift_allocObject();
  v50 = v254;
  v51 = v299;
  *(v49 + 16) = v255;
  *(v49 + 24) = v50;
  v436 = v51;
  v437 = v49;
  sub_1B98F5908();
  v257 = sub_1B98A497C();
  v256 = v52;
  v53 = swift_allocObject();
  v54 = v256;
  v55 = v300;
  *(v53 + 16) = v257;
  *(v53 + 24) = v54;
  v434 = v55;
  v435 = v53;
  sub_1B98F5908();
  v259 = sub_1B98A9B14();
  v258 = v56;
  v57 = swift_allocObject();
  v58 = v258;
  v59 = v301;
  *(v57 + 16) = v259;
  *(v57 + 24) = v58;
  v432 = v59;
  v433 = v57;
  sub_1B98F5908();
  v261 = sub_1B98AB990();
  v260 = v60;
  v61 = swift_allocObject();
  v62 = v260;
  v63 = v302;
  *(v61 + 16) = v261;
  *(v61 + 24) = v62;
  v430 = v63;
  v431 = v61;
  sub_1B98F5908();
  v263 = sub_1B98A67F8();
  v262 = v64;
  v65 = swift_allocObject();
  v66 = v262;
  v67 = v303;
  *(v65 + 16) = v263;
  *(v65 + 24) = v66;
  v428 = v67;
  v429 = v65;
  sub_1B98F5908();
  v267 = sub_1B98A9164();
  v266 = v68;
  v69 = swift_allocObject();
  v70 = v266;
  v71 = v304;
  *(v69 + 16) = v267;
  *(v69 + 24) = v70;
  v426 = v71;
  v427 = v69;
  sub_1B98F5908();
  v270 = 24;
  v269 = swift_allocObject();
  v268 = v269 + 16;
  v425 = v269 + 16;
  sub_1B98F54D8();
  *(v269 + 16) = v358;
  v274 = sub_1B9853574();
  v273 = &type metadata for CommunicationTrustScore;
  v424 = sub_1B98F5448();
  v275 = swift_allocObject();
  v272 = v275 + 16;
  v423 = v275 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
  sub_1B98F5F98();
  *(v275 + 16) = sub_1B98F54A8();
  v276 = v441;
  sub_1B98F54D8();
  v421 = v276;
  sub_1B98B1614();
  sub_1B98F5B88();
  for (i = v278; ; i = v219)
  {
    v244 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59E8, &qword_1B98FB5E8);
    sub_1B98F5DE8();
    v245 = v419;
    v246 = v420;
    if (v419)
    {
      v242 = v245;
      v243 = v246;
      v239 = v246;
      v238 = v245;
      v72 = swift_allocObject();
      v73 = v239;
      v74 = v327;
      *(v72 + 16) = v238;
      *(v72 + 24) = v73;
      v240 = v74;
      v241 = v72;
    }

    else
    {
      v240 = 0;
      v241 = 0;
    }

    v236 = v241;
    v237 = v240;
    if (!v240)
    {
      v105 = v346;
      sub_1B98B169C(v422);
      v106 = sub_1B98F1E6C();
      v356(v105, v106, v355);

      v161 = 32;
      v162 = 7;
      v107 = swift_allocObject();
      v108 = v269;
      v163 = v107;
      *(v107 + 16) = v316;
      *(v107 + 24) = v108;

      v173 = sub_1B98F5118();
      v174 = sub_1B98F5BD8();
      v159 = 17;
      v165 = swift_allocObject();
      v158 = 32;
      *(v165 + 16) = 32;
      v166 = swift_allocObject();
      v160 = 8;
      *(v166 + 16) = 8;
      v109 = swift_allocObject();
      v110 = v361;
      v157 = v109;
      *(v109 + 16) = v317;
      *(v109 + 24) = v110;
      v111 = swift_allocObject();
      v112 = v157;
      v167 = v111;
      *(v111 + 16) = v318;
      *(v111 + 24) = v112;
      v168 = swift_allocObject();
      *(v168 + 16) = v158;
      v169 = swift_allocObject();
      *(v169 + 16) = v160;
      v113 = swift_allocObject();
      v114 = v163;
      v164 = v113;
      *(v113 + 16) = v319;
      *(v113 + 24) = v114;
      v115 = swift_allocObject();
      v116 = v164;
      v171 = v115;
      *(v115 + 16) = v320;
      *(v115 + 24) = v116;
      v170 = sub_1B98F5F98();
      v172 = v117;

      v118 = v165;
      v119 = v172;
      *v172 = v321;
      v119[1] = v118;

      v120 = v166;
      v121 = v172;
      v172[2] = v322;
      v121[3] = v120;

      v122 = v167;
      v123 = v172;
      v172[4] = v323;
      v123[5] = v122;

      v124 = v168;
      v125 = v172;
      v172[6] = v324;
      v125[7] = v124;

      v126 = v169;
      v127 = v172;
      v172[8] = v325;
      v127[9] = v126;

      v128 = v171;
      v129 = v172;
      v172[10] = v326;
      v129[11] = v128;
      sub_1B9851B38();

      if (os_log_type_enabled(v173, v174))
      {
        v149 = sub_1B98F5C28();
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v150 = sub_1B985263C(0, v148, v148);
        v151 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v153 = &v413;
        v413 = v149;
        v154 = &v412;
        v412 = v150;
        v155 = &v411;
        v411 = v151;
        v152 = 2;
        sub_1B9852690(2, &v413);
        sub_1B9852690(v152, v153);
        v130 = v244;
        v409 = v321;
        v410 = v165;
        sub_1B98526A4(&v409, v153, v154, v155);
        v156 = v130;
        if (v130)
        {

          __break(1u);
        }

        else
        {
          v409 = v322;
          v410 = v166;
          sub_1B98526A4(&v409, &v413, &v412, &v411);
          v146 = 0;
          v409 = v323;
          v410 = v167;
          sub_1B98526A4(&v409, &v413, &v412, &v411);
          v145 = 0;
          v409 = v324;
          v410 = v168;
          sub_1B98526A4(&v409, &v413, &v412, &v411);
          v144 = 0;
          v409 = v325;
          v410 = v169;
          sub_1B98526A4(&v409, &v413, &v412, &v411);
          v143 = 0;
          v409 = v326;
          v410 = v171;
          sub_1B98526A4(&v409, &v413, &v412, &v411);
          v142 = 0;
          _os_log_impl(&dword_1B982F000, v173, v174, "%s: Marking remaining handles as unknown %s", v149, 0x16u);
          sub_1B985281C(v150, 0, v148);
          sub_1B985281C(v151, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B98F5C08();

          v147 = v142;
        }
      }

      else
      {

        v147 = v244;
      }

      v140 = v147;
      MEMORY[0x1E69E5920](v173);
      v247(v346, v355);
      v137 = &v417;
      swift_beginAccess();
      v138 = *(v269 + 16);
      sub_1B98F54D8();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
      v139 = &v447;
      sub_1B98F5498();
      memcpy(v418, v139, sizeof(v418));
      for (j = v140; ; j = v136)
      {
        v136 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
        sub_1B98F5558();
        sub_1B98732E4(v331, v333);
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
        if ((*(*(v131 - 8) + 48))(v333, 1) == 1)
        {
          break;
        }

        v416 = v338;
        sub_1B9832680(v333, v338);
        sub_1B9833334(v338, v336);
        v135 = &v414;
        v414 = 4;
        v415 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
        sub_1B983A3AC(v338);
      }

      sub_1B987349C(v418);
      v134 = *(v275 + 16);
      sub_1B98F54D8();

      sub_1B98B1790(&v424);

      sub_1B98B17BC(&v441);
      v178 = v134;
      v179 = v136;
      return v178;
    }

    v234 = v237;
    v235 = v236;
    v75 = v244;
    v226 = v236;
    v225 = v237;
    v407 = v237;
    v408 = v236;

    v227 = *(v269 + 16);
    sub_1B98F54D8();
    v406 = v352;
    v76 = v225(v227, &v406);
    v228 = v75;
    v229 = v76;
    v230 = v77;
    v231 = v226;
    v232 = v227;
    v233 = v75;
    if (v75)
    {
      break;
    }

    v221 = v230;
    v222 = v229;

    sub_1B98F54D8();
    v424 = v222;

    *(v269 + 16) = v221;

    v223 = &v446;
    sub_1B98F5498();
    memcpy(v405, v223, sizeof(v405));
    for (k = v228; ; k = v219)
    {
      v219 = k;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F0, &qword_1B98FB5F8);
      sub_1B98F5558();
      sub_1B98B17E8(v341, v343);
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F8, &qword_1B98FB600);
      if ((*(*(v220 - 8) + 48))(v343, 1) == 1)
      {
        break;
      }

      v217 = *&v343[*(v220 + 48)];
      sub_1B9832680(v343, v338);
      v398 = v217;
      sub_1B9833334(v338, v336);
      v218 = &v396;
      v396 = v217;
      v397 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
      sub_1B983A3AC(v338);
    }

    sub_1B98B198C();
    v214 = *(v269 + 16);
    sub_1B98F54D8();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v215 = MEMORY[0x1BFADD4D0](v214, v334, v78, v274);

    v216 = v226;
    if (v215)
    {
      v79 = v349;
      v195 = v216;
      v80 = sub_1B98F1E6C();
      v356(v79, v80, v355);

      v200 = 32;
      v201 = 7;
      v81 = swift_allocObject();
      v82 = v275;
      v202 = v81;
      *(v81 + 16) = v305;
      *(v81 + 24) = v82;

      v212 = sub_1B98F5118();
      v213 = sub_1B98F5BD8();
      v198 = 17;
      v204 = swift_allocObject();
      v197 = 32;
      *(v204 + 16) = 32;
      v205 = swift_allocObject();
      v199 = 8;
      *(v205 + 16) = 8;
      v83 = swift_allocObject();
      v84 = v361;
      v196 = v83;
      *(v83 + 16) = v306;
      *(v83 + 24) = v84;
      v85 = swift_allocObject();
      v86 = v196;
      v206 = v85;
      *(v85 + 16) = v307;
      *(v85 + 24) = v86;
      v207 = swift_allocObject();
      *(v207 + 16) = v197;
      v208 = swift_allocObject();
      *(v208 + 16) = v199;
      v87 = swift_allocObject();
      v88 = v202;
      v203 = v87;
      *(v87 + 16) = v308;
      *(v87 + 24) = v88;
      v89 = swift_allocObject();
      v90 = v203;
      v210 = v89;
      *(v89 + 16) = v309;
      *(v89 + 24) = v90;
      v209 = sub_1B98F5F98();
      v211 = v91;

      v92 = v204;
      v93 = v211;
      *v211 = v310;
      v93[1] = v92;

      v94 = v205;
      v95 = v211;
      v211[2] = v311;
      v95[3] = v94;

      v96 = v206;
      v97 = v211;
      v211[4] = v312;
      v97[5] = v96;

      v98 = v207;
      v99 = v211;
      v211[6] = v313;
      v99[7] = v98;

      v100 = v208;
      v101 = v211;
      v211[8] = v314;
      v101[9] = v100;

      v102 = v210;
      v103 = v211;
      v211[10] = v315;
      v103[11] = v102;
      sub_1B9851B38();

      if (os_log_type_enabled(v212, v213))
      {
        v187 = sub_1B98F5C28();
        v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v188 = sub_1B985263C(0, v186, v186);
        v189 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v191 = &v403;
        v403 = v187;
        v192 = &v402;
        v402 = v188;
        v193 = &v401;
        v401 = v189;
        v190 = 2;
        sub_1B9852690(2, &v403);
        sub_1B9852690(v190, v191);
        v104 = v219;
        v399 = v310;
        v400 = v204;
        sub_1B98526A4(&v399, v191, v192, v193);
        v194 = v104;
        if (v104)
        {

          __break(1u);
        }

        else
        {
          v399 = v311;
          v400 = v205;
          sub_1B98526A4(&v399, &v403, &v402, &v401);
          v184 = 0;
          v399 = v312;
          v400 = v206;
          sub_1B98526A4(&v399, &v403, &v402, &v401);
          v183 = 0;
          v399 = v313;
          v400 = v207;
          sub_1B98526A4(&v399, &v403, &v402, &v401);
          v182 = 0;
          v399 = v314;
          v400 = v208;
          sub_1B98526A4(&v399, &v403, &v402, &v401);
          v181 = 0;
          v399 = v315;
          v400 = v210;
          sub_1B98526A4(&v399, &v403, &v402, &v401);
          v180 = 0;
          _os_log_impl(&dword_1B982F000, v212, v213, "%s: No remaining handles, returning trustScores %s", v187, 0x16u);
          sub_1B985281C(v188, 0, v186);
          sub_1B985281C(v189, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B98F5C08();

          v185 = v180;
        }
      }

      else
      {

        v185 = v219;
      }

      v177 = v185;
      MEMORY[0x1E69E5920](v212);
      v247(v349, v355);
      v175 = &v404;
      swift_beginAccess();
      v176 = *(v275 + 16);
      sub_1B98F54D8();
      swift_endAccess();

      sub_1B98B169C(v422);

      sub_1B98B1790(&v424);

      sub_1B98B17BC(&v441);
      v178 = v176;
      v179 = v177;
      return v178;
    }
  }

  v133[1] = v233;
  v133[0] = v231;

  sub_1B98B169C(v422);

  sub_1B98B1790(&v424);

  sub_1B98B17BC(&v441);
  return v286;
}

uint64_t sub_1B989A4E4(uint64_t a1, char *a2)
{
  *(v3 + 520) = v2;
  *(v3 + 512) = a1;
  *(v3 + 432) = v3;
  *(v3 + 440) = 0;
  *(v3 + 752) = 0;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  *(v3 + 464) = 0;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0;
  *(v3 + 352) = 0;
  *(v3 + 360) = 0;
  memset((v3 + 96), 0, 0x28uLL);
  *(v3 + 496) = 0;
  *(v3 + 384) = 0;
  *(v3 + 392) = 0;
  memset((v3 + 136), 0, 0x28uLL);
  *(v3 + 504) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90);
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = type metadata accessor for BlockedHandle(0);
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B8, &qword_1B98FB5B8);
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 576) = swift_task_alloc();
  v4 = sub_1B98F5138();
  *(v3 + 584) = v4;
  *(v3 + 592) = *(v4 - 8);
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  *(v3 + 440) = a1;
  v5 = *a2;
  *(v3 + 410) = *a2;
  *(v3 + 752) = v5;
  *(v3 + 448) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B989A7CC, 0);
}

uint64_t sub_1B989A7CC(uint64_t a1)
{
  v188 = v1;
  v2 = v1[79];
  v150 = v1[74];
  v151 = v1[73];
  v155 = v1[65];
  v153 = v1[64];
  v1[54] = v1;
  v3 = sub_1B98F1E6C();
  v152 = *(v150 + 16);
  v1[80] = v152;
  v1[81] = (v150 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v152(v2, v3, v151);

  sub_1B98F54D8();
  v154 = swift_allocObject();
  *(v154 + 16) = v153;

  v157 = swift_allocObject();
  *(v157 + 16) = sub_1B98B1B50;
  *(v157 + 24) = v154;

  v166 = sub_1B98F5118();
  v167 = sub_1B98F5BD8();
  v159 = swift_allocObject();
  *(v159 + 16) = 32;
  v160 = swift_allocObject();
  *(v160 + 16) = 8;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_1B98B1B48;
  *(v156 + 24) = v155;
  v161 = swift_allocObject();
  *(v161 + 16) = sub_1B98B1BD0;
  *(v161 + 24) = v156;
  v162 = swift_allocObject();
  *(v162 + 16) = 32;
  v163 = swift_allocObject();
  *(v163 + 16) = 8;
  v158 = swift_allocObject();
  *(v158 + 16) = sub_1B98B1B58;
  *(v158 + 24) = v157;
  v164 = swift_allocObject();
  *(v164 + 16) = sub_1B98B1BF8;
  *(v164 + 24) = v158;
  v1[82] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v165 = v4;

  *v165 = sub_1B98B1BC0;
  v165[1] = v159;

  v165[2] = sub_1B98B1BC8;
  v165[3] = v160;

  v165[4] = sub_1B98B1BDC;
  v165[5] = v161;

  v165[6] = sub_1B98B1BE8;
  v165[7] = v162;

  v165[8] = sub_1B98B1BF0;
  v165[9] = v163;

  v165[10] = sub_1B98B1C04;
  v165[11] = v164;
  sub_1B9851B38();

  if (os_log_type_enabled(v166, v167))
  {
    buf = sub_1B98F5C28();
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v147 = sub_1B985263C(0, v145, v145);
    v148 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v183 = buf;
    v184 = v147;
    v185 = v148;
    sub_1B9852690(2, &v183);
    sub_1B9852690(2, &v183);
    v186 = sub_1B98B1BC0;
    v187 = v159;
    sub_1B98526A4(&v186, &v183, &v184, &v185);
    v186 = sub_1B98B1BC8;
    v187 = v160;
    sub_1B98526A4(&v186, &v183, &v184, &v185);
    v186 = sub_1B98B1BDC;
    v187 = v161;
    sub_1B98526A4(&v186, &v183, &v184, &v185);
    v186 = sub_1B98B1BE8;
    v187 = v162;
    sub_1B98526A4(&v186, &v183, &v184, &v185);
    v186 = sub_1B98B1BF0;
    v187 = v163;
    sub_1B98526A4(&v186, &v183, &v184, &v185);
    v186 = sub_1B98B1C04;
    v187 = v164;
    sub_1B98526A4(&v186, &v183, &v184, &v185);
    _os_log_impl(&dword_1B982F000, v166, v167, "%s: Calculating trust scores for handles: %s", buf, 0x16u);
    sub_1B985281C(v147, 0, v145);
    sub_1B985281C(v148, 2, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v127 = *(v149 + 632);
  v5 = *(v149 + 624);
  v129 = *(v149 + 584);
  v132 = *(v149 + 520);
  v130 = *(v149 + 512);
  v126 = *(v149 + 592);
  MEMORY[0x1E69E5920](v166);
  v128 = *(v126 + 8);
  *(v149 + 664) = v128;
  *(v149 + 672) = (v126 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v128(v127, v129);
  v6 = sub_1B98F1E6C();
  v152(v5, v6, v129);

  sub_1B98F54D8();
  v131 = swift_allocObject();
  *(v131 + 16) = v130;

  v134 = swift_allocObject();
  *(v134 + 16) = sub_1B98B1C18;
  *(v134 + 24) = v131;

  oslog = sub_1B98F5118();
  v144 = sub_1B98F5BD8();
  v136 = swift_allocObject();
  *(v136 + 16) = 32;
  v137 = swift_allocObject();
  *(v137 + 16) = 8;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_1B98B1C10;
  *(v133 + 24) = v132;
  v138 = swift_allocObject();
  *(v138 + 16) = sub_1B98B1C98;
  *(v138 + 24) = v133;
  v139 = swift_allocObject();
  *(v139 + 16) = 32;
  v140 = swift_allocObject();
  *(v140 + 16) = 8;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_1B98B1C20;
  *(v135 + 24) = v134;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_1B98B1CC0;
  *(v141 + 24) = v135;
  sub_1B98F5F98();
  v142 = v7;

  *v142 = sub_1B98B1C88;
  v142[1] = v136;

  v142[2] = sub_1B98B1C90;
  v142[3] = v137;

  v142[4] = sub_1B98B1CA4;
  v142[5] = v138;

  v142[6] = sub_1B98B1CB0;
  v142[7] = v139;

  v142[8] = sub_1B98B1CB8;
  v142[9] = v140;

  v142[10] = sub_1B98B1CCC;
  v142[11] = v141;
  sub_1B9851B38();

  if (os_log_type_enabled(oslog, v144))
  {
    v123 = sub_1B98F5C28();
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v124 = sub_1B985263C(0, v122, v122);
    v125 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v178 = v123;
    v179 = v124;
    v180 = v125;
    sub_1B9852690(2, &v178);
    sub_1B9852690(2, &v178);
    v181 = sub_1B98B1C88;
    v182 = v136;
    sub_1B98526A4(&v181, &v178, &v179, &v180);
    v181 = sub_1B98B1C90;
    v182 = v137;
    sub_1B98526A4(&v181, &v178, &v179, &v180);
    v181 = sub_1B98B1CA4;
    v182 = v138;
    sub_1B98526A4(&v181, &v178, &v179, &v180);
    v181 = sub_1B98B1CB0;
    v182 = v139;
    sub_1B98526A4(&v181, &v178, &v179, &v180);
    v181 = sub_1B98B1CB8;
    v182 = v140;
    sub_1B98526A4(&v181, &v178, &v179, &v180);
    v181 = sub_1B98B1CCC;
    v182 = v141;
    sub_1B98526A4(&v181, &v178, &v179, &v180);
    _os_log_impl(&dword_1B982F000, oslog, v144, "sync %s: Calculating trust scores for handles: %s synchronously", v123, 0x16u);
    sub_1B985281C(v124, 0, v122);
    sub_1B985281C(v125, 2, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v105 = *(v149 + 624);
  v8 = *(v149 + 616);
  v106 = *(v149 + 584);
  v109 = *(v149 + 520);
  v107 = *(v149 + 512);
  MEMORY[0x1E69E5920](oslog);
  v128(v105, v106);
  v9 = sub_1B98F1E6C();
  v152(v8, v9, v106);

  sub_1B98F54D8();
  v108 = swift_allocObject();
  *(v108 + 16) = v107;

  v111 = swift_allocObject();
  *(v111 + 16) = sub_1B98B1CE0;
  *(v111 + 24) = v108;

  log = sub_1B98F5118();
  v121 = sub_1B98F5BD8();
  v113 = swift_allocObject();
  *(v113 + 16) = 32;
  v114 = swift_allocObject();
  *(v114 + 16) = 8;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_1B98B1CD8;
  *(v110 + 24) = v109;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_1B98B1D60;
  *(v115 + 24) = v110;
  v116 = swift_allocObject();
  *(v116 + 16) = 32;
  v117 = swift_allocObject();
  *(v117 + 16) = 8;
  v112 = swift_allocObject();
  *(v112 + 16) = sub_1B98B1CE8;
  *(v112 + 24) = v111;
  v118 = swift_allocObject();
  *(v118 + 16) = sub_1B98B1D88;
  *(v118 + 24) = v112;
  sub_1B98F5F98();
  v119 = v10;

  *v119 = sub_1B98B1D50;
  v119[1] = v113;

  v119[2] = sub_1B98B1D58;
  v119[3] = v114;

  v119[4] = sub_1B98B1D6C;
  v119[5] = v115;

  v119[6] = sub_1B98B1D78;
  v119[7] = v116;

  v119[8] = sub_1B98B1D80;
  v119[9] = v117;

  v119[10] = sub_1B98B1D94;
  v119[11] = v118;
  sub_1B9851B38();

  if (os_log_type_enabled(log, v121))
  {
    v102 = sub_1B98F5C28();
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v103 = sub_1B985263C(0, v101, v101);
    v104 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v173 = v102;
    v174 = v103;
    v175 = v104;
    sub_1B9852690(2, &v173);
    sub_1B9852690(2, &v173);
    v176 = sub_1B98B1D50;
    v177 = v113;
    sub_1B98526A4(&v176, &v173, &v174, &v175);
    v176 = sub_1B98B1D58;
    v177 = v114;
    sub_1B98526A4(&v176, &v173, &v174, &v175);
    v176 = sub_1B98B1D6C;
    v177 = v115;
    sub_1B98526A4(&v176, &v173, &v174, &v175);
    v176 = sub_1B98B1D78;
    v177 = v116;
    sub_1B98526A4(&v176, &v173, &v174, &v175);
    v176 = sub_1B98B1D80;
    v177 = v117;
    sub_1B98526A4(&v176, &v173, &v174, &v175);
    v176 = sub_1B98B1D94;
    v177 = v118;
    sub_1B98526A4(&v176, &v173, &v174, &v175);
    _os_log_impl(&dword_1B982F000, log, v121, "%s: Calculating trust scores for handles: %s", v102, 0x16u);
    sub_1B985281C(v103, 0, v101);
    sub_1B985281C(v104, 2, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v70 = *(v149 + 616);
  v71 = *(v149 + 584);
  v96 = *(v149 + 512);
  MEMORY[0x1E69E5920](log);
  v128(v70, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A08, &qword_1B98FB610);
  *(v149 + 456) = sub_1B98F5458();
  v72 = sub_1B98A01C0();
  v73 = v11;
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v74 + 24) = v73;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1B98FB620;
  *(v12 + 24) = v74;
  *(v149 + 224) = &unk_1B98FB630;
  *(v149 + 232) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A10, &qword_1B98FB638);
  sub_1B98F5908();
  v75 = sub_1B98A0D84();
  v76 = v13;
  v77 = swift_allocObject();
  *(v77 + 16) = v75;
  *(v77 + 24) = v76;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1B98FB640;
  *(v14 + 24) = v77;
  *(v149 + 240) = &unk_1B98FB648;
  *(v149 + 248) = v14;
  sub_1B98F5908();
  v78 = sub_1B98A2B00();
  v79 = v15;
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  *(v80 + 24) = v79;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1B98FB650;
  *(v16 + 24) = v80;
  *(v149 + 256) = &unk_1B98FB658;
  *(v149 + 264) = v16;
  sub_1B98F5908();
  v81 = sub_1B98A497C();
  v82 = v17;
  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  *(v83 + 24) = v82;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1B98FB660;
  *(v18 + 24) = v83;
  *(v149 + 272) = &unk_1B98FB668;
  *(v149 + 280) = v18;
  sub_1B98F5908();
  v84 = sub_1B98A9B14();
  v85 = v19;
  v86 = swift_allocObject();
  *(v86 + 16) = v84;
  *(v86 + 24) = v85;
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_1B98FB670;
  *(v20 + 24) = v86;
  *(v149 + 288) = &unk_1B98FB678;
  *(v149 + 296) = v20;
  sub_1B98F5908();
  v88 = sub_1B98AD70C();
  v87 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v88;
  *(v22 + 24) = v87;
  *(v149 + 304) = &unk_1B98FB680;
  *(v149 + 312) = v22;
  sub_1B98F5908();
  v89 = sub_1B98A67F8();
  v90 = v23;
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  *(v91 + 24) = v90;
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1B98FB688;
  *(v24 + 24) = v91;
  *(v149 + 320) = &unk_1B98FB690;
  *(v149 + 328) = v24;
  sub_1B98F5908();
  v92 = sub_1B98A9164();
  v93 = v25;
  v94 = swift_allocObject();
  *(v94 + 16) = v92;
  *(v94 + 24) = v93;
  v26 = swift_allocObject();
  *(v26 + 16) = &unk_1B98FB698;
  *(v26 + 24) = v94;
  *(v149 + 336) = &unk_1B98FB6A0;
  *(v149 + 344) = v26;
  sub_1B98F5908();
  v95 = swift_allocObject();
  *(v149 + 680) = v95;
  *(v149 + 464) = v95 + 16;
  sub_1B98F54D8();
  *(v95 + 16) = v96;
  *(v149 + 688) = sub_1B9853574();
  *(v149 + 472) = sub_1B98F5448();
  v97 = swift_allocObject();
  *(v149 + 696) = v97;
  *(v149 + 480) = v97 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
  sub_1B98F5F98();
  *(v97 + 16) = sub_1B98F54A8();
  v98 = *(v149 + 456);
  sub_1B98F54D8();
  *(v149 + 488) = v98;
  sub_1B98B3DB8();
  sub_1B98F5B88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A20, &qword_1B98FB6A8);
  sub_1B98F5DE8();
  v99 = *(v149 + 368);
  v100 = *(v149 + 376);
  if (v99)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v99;
    *(v27 + 24) = v100;
    v68 = &unk_1B98FB6B8;
    v69 = v27;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  *(v149 + 704) = v69;
  if (v68)
  {
    v64 = *(v149 + 680);
    v65 = *(v149 + 410);
    *(v149 + 384) = v68;
    *(v149 + 392) = v69;

    v67 = *(v64 + 16);
    *(v149 + 712) = v67;
    sub_1B98F54D8();
    *(v149 + 409) = v65;
    v66 = (v68 + *v68);
    v28 = swift_task_alloc();
    *(v149 + 720) = v28;
    *v28 = *(v149 + 432);
    v28[1] = sub_1B989D87C;

    return v66(v67, v149 + 409);
  }

  else
  {
    v50 = *(v149 + 680);
    v49 = *(v149 + 640);
    v30 = *(v149 + 600);
    v48 = *(v149 + 584);
    v51 = *(v149 + 520);
    sub_1B98B3E40((v149 + 352));
    v31 = sub_1B98F1E6C();
    v49(v30, v31, v48);

    v53 = swift_allocObject();
    *(v53 + 16) = sub_1B98B3E74;
    *(v53 + 24) = v50;

    v62 = sub_1B98F5118();
    v63 = sub_1B98F5BD8();
    v55 = swift_allocObject();
    *(v55 + 16) = 32;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1B98B3E6C;
    *(v52 + 24) = v51;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1B98B3EF4;
    *(v57 + 24) = v52;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1B98B3E7C;
    *(v54 + 24) = v53;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1B98B3F1C;
    *(v60 + 24) = v54;
    sub_1B98F5F98();
    v61 = v32;

    *v61 = sub_1B98B3EE4;
    v61[1] = v55;

    v61[2] = sub_1B98B3EEC;
    v61[3] = v56;

    v61[4] = sub_1B98B3F00;
    v61[5] = v57;

    v61[6] = sub_1B98B3F0C;
    v61[7] = v58;

    v61[8] = sub_1B98B3F14;
    v61[9] = v59;

    v61[10] = sub_1B98B3F28;
    v61[11] = v60;
    sub_1B9851B38();

    if (os_log_type_enabled(v62, v63))
    {
      v45 = sub_1B98F5C28();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v46 = sub_1B985263C(0, v44, v44);
      v47 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v168 = v45;
      v169 = v46;
      v170 = v47;
      sub_1B9852690(2, &v168);
      sub_1B9852690(2, &v168);
      v171 = sub_1B98B3EE4;
      v172 = v55;
      sub_1B98526A4(&v171, &v168, &v169, &v170);
      v171 = sub_1B98B3EEC;
      v172 = v56;
      sub_1B98526A4(&v171, &v168, &v169, &v170);
      v171 = sub_1B98B3F00;
      v172 = v57;
      sub_1B98526A4(&v171, &v168, &v169, &v170);
      v171 = sub_1B98B3F0C;
      v172 = v58;
      sub_1B98526A4(&v171, &v168, &v169, &v170);
      v171 = sub_1B98B3F14;
      v172 = v59;
      sub_1B98526A4(&v171, &v168, &v169, &v170);
      v171 = sub_1B98B3F28;
      v172 = v60;
      sub_1B98526A4(&v171, &v168, &v169, &v170);
      _os_log_impl(&dword_1B982F000, v62, v63, "%s: Marking remaining handles as unknown %s", v45, 0x16u);
      sub_1B985281C(v46, 0, v44);
      sub_1B985281C(v47, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }

    else
    {
    }

    v43 = *(v149 + 664);
    v41 = *(v149 + 600);
    v42 = *(v149 + 584);
    MEMORY[0x1E69E5920](v62);
    v43(v41, v42);
    swift_beginAccess();
    sub_1B98F54D8();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B98F5498();
    memcpy((v149 + 96), (v149 + 16), 0x28uLL);
    while (1)
    {
      v40 = *(v149 + 536);
      v39 = *(v149 + 528);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
      sub_1B98F5558();
      sub_1B98732E4(v39, v40);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
      if ((*(*(v33 - 8) + 48))(v40, 1) == 1)
      {
        break;
      }

      *(v149 + 496) = *(v149 + 560);
      v38 = *(v149 + 560);
      v37 = *(v149 + 552);
      sub_1B9832680(*(v149 + 536), v38);
      sub_1B9833334(v38, v37);
      *(v149 + 400) = 4;
      *(v149 + 408) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
      sub_1B983A3AC(v38);
    }

    v35 = *(v149 + 696);
    sub_1B987349C((v149 + 96));
    v36 = *(v35 + 16);
    sub_1B98F54D8();

    sub_1B98B1790((v149 + 472));

    sub_1B98B3F34((v149 + 456));

    v34 = *(*(v149 + 432) + 8);

    return v34(v36);
  }
}

uint64_t sub_1B989D87C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[54] = *v3;
  v6[91] = v2;
  v6[92] = a1;
  v6[93] = a2;

  if (v2)
  {
    v4 = sub_1B989F694;
  }

  else
  {

    v4 = sub_1B989DA0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0);
}

uint64_t sub_1B989DA0C()
{
  v104 = v0;
  v92 = v0[93];
  v93 = v0[92];
  v91 = v0[85];
  v0[54] = v0;
  sub_1B98F54D8();
  v0[59] = v93;

  *(v91 + 16) = v92;

  sub_1B98F5498();
  memcpy(v0 + 17, v0 + 7, 0x28uLL);
  while (1)
  {
    v80 = *(v90 + 576);
    v79 = *(v90 + 568);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F0, &qword_1B98FB5F8);
    sub_1B98F5558();
    sub_1B98B17E8(v79, v80);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F8, &qword_1B98FB600);
    if ((*(*(v81 - 8) + 48))(v80, 1) == 1)
    {
      break;
    }

    v4 = *(v90 + 576);
    v78 = *(v90 + 560);
    v77 = *(v90 + 552);
    v76 = *(v4 + *(v81 + 48));
    sub_1B9832680(v4, v78);
    *(v90 + 504) = v76;
    sub_1B9833334(v78, v77);
    *(v90 + 416) = v76;
    *(v90 + 424) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
    sub_1B98F55C8();
    sub_1B983A3AC(v78);
  }

  v73 = *(v90 + 688);
  v71 = *(v90 + 680);
  v72 = *(v90 + 544);
  sub_1B98B198C();
  v74 = *(v71 + 16);
  sub_1B98F54D8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v75 = MEMORY[0x1BFADD4D0](v74, v72, v5, v73);

  if (v75)
  {
    v56 = *(v90 + 696);
    v55 = *(v90 + 640);
    v6 = *(v90 + 608);
    v54 = *(v90 + 584);
    v57 = *(v90 + 520);
    v7 = sub_1B98F1E6C();
    v55(v6, v7, v54);

    v59 = swift_allocObject();
    *(v59 + 16) = sub_1B98B3F68;
    *(v59 + 24) = v56;

    oslog = sub_1B98F5118();
    v69 = sub_1B98F5BD8();
    v61 = swift_allocObject();
    *(v61 + 16) = 32;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1B98B3F60;
    *(v58 + 24) = v57;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1B98B3FE8;
    *(v63 + 24) = v58;
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    *(v65 + 16) = 8;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1B98B3F70;
    *(v60 + 24) = v59;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_1B98B4010;
    *(v66 + 24) = v60;
    sub_1B98F5F98();
    v67 = v8;

    *v67 = sub_1B98B3FD8;
    v67[1] = v61;

    v67[2] = sub_1B98B3FE0;
    v67[3] = v62;

    v67[4] = sub_1B98B3FF4;
    v67[5] = v63;

    v67[6] = sub_1B98B4000;
    v67[7] = v64;

    v67[8] = sub_1B98B4008;
    v67[9] = v65;

    v67[10] = sub_1B98B401C;
    v67[11] = v66;
    sub_1B9851B38();

    if (os_log_type_enabled(oslog, v69))
    {
      v9 = *(v90 + 728);
      buf = sub_1B98F5C28();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v52 = sub_1B985263C(0, v50, v50);
      v53 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v99 = buf;
      v100 = v52;
      v101 = v53;
      sub_1B9852690(2, &v99);
      sub_1B9852690(2, &v99);
      v102 = sub_1B98B3FD8;
      v103 = v61;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      if (v9)
      {
      }

      v102 = sub_1B98B3FE0;
      v103 = v62;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      v102 = sub_1B98B3FF4;
      v103 = v63;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      v102 = sub_1B98B4000;
      v103 = v64;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      v102 = sub_1B98B4008;
      v103 = v65;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      v102 = sub_1B98B401C;
      v103 = v66;
      sub_1B98526A4(&v102, &v99, &v100, &v101);
      _os_log_impl(&dword_1B982F000, oslog, v69, "%s: No remaining handles, returning trustScores %s", buf, 0x16u);
      sub_1B985281C(v52, 0, v50);
      sub_1B985281C(v53, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }

    else
    {
    }

    v46 = *(v90 + 664);
    v44 = *(v90 + 608);
    v45 = *(v90 + 584);
    v47 = (*(v90 + 696) + 16);
    MEMORY[0x1E69E5920](oslog);
    v46(v44, v45);
    swift_beginAccess();
    v48 = *v47;
    sub_1B98F54D8();
    swift_endAccess();

    sub_1B98B3E40((v90 + 352));

    sub_1B98B1790((v90 + 472));

    sub_1B98B3F34((v90 + 456));
    v49 = v48;
  }

  else
  {

    v70 = *(v90 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A20, &qword_1B98FB6A8);
    sub_1B98F5DE8();
    v86 = *(v90 + 368);
    v87 = *(v90 + 376);
    if (v86)
    {
      v1 = swift_allocObject();
      *(v1 + 16) = v86;
      *(v1 + 24) = v87;
      v88 = &unk_1B98FB6B8;
      v89 = v1;
    }

    else
    {
      v88 = 0;
      v89 = 0;
    }

    *(v90 + 704) = v89;
    if (v88)
    {
      v82 = *(v90 + 680);
      v83 = *(v90 + 410);
      *(v90 + 384) = v88;
      *(v90 + 392) = v89;

      v85 = *(v82 + 16);
      *(v90 + 712) = v85;
      sub_1B98F54D8();
      *(v90 + 409) = v83;
      v84 = (v88 + *v88);
      v2 = swift_task_alloc();
      *(v90 + 720) = v2;
      *v2 = *(v90 + 432);
      v2[1] = sub_1B989D87C;

      return v84(v85, v90 + 409);
    }

    v30 = *(v90 + 680);
    v29 = *(v90 + 640);
    v10 = *(v90 + 600);
    v28 = *(v90 + 584);
    v31 = *(v90 + 520);
    sub_1B98B3E40((v90 + 352));
    v11 = sub_1B98F1E6C();
    v29(v10, v11, v28);

    v33 = swift_allocObject();
    *(v33 + 16) = sub_1B98B3E74;
    *(v33 + 24) = v30;

    log = sub_1B98F5118();
    v43 = sub_1B98F5BD8();
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1B98B3E6C;
    *(v32 + 24) = v31;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1B98B3EF4;
    *(v37 + 24) = v32;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1B98B3E7C;
    *(v34 + 24) = v33;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1B98B3F1C;
    *(v40 + 24) = v34;
    sub_1B98F5F98();
    v41 = v12;

    *v41 = sub_1B98B3EE4;
    v41[1] = v35;

    v41[2] = sub_1B98B3EEC;
    v41[3] = v36;

    v41[4] = sub_1B98B3F00;
    v41[5] = v37;

    v41[6] = sub_1B98B3F0C;
    v41[7] = v38;

    v41[8] = sub_1B98B3F14;
    v41[9] = v39;

    v41[10] = sub_1B98B3F28;
    v41[11] = v40;
    sub_1B9851B38();

    if (os_log_type_enabled(log, v43))
    {
      v25 = sub_1B98F5C28();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v26 = sub_1B985263C(0, v24, v24);
      v27 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v94 = v25;
      v95 = v26;
      v96 = v27;
      sub_1B9852690(2, &v94);
      sub_1B9852690(2, &v94);
      v97 = sub_1B98B3EE4;
      v98 = v35;
      sub_1B98526A4(&v97, &v94, &v95, &v96);
      if (v70)
      {
      }

      v97 = sub_1B98B3EEC;
      v98 = v36;
      sub_1B98526A4(&v97, &v94, &v95, &v96);
      v97 = sub_1B98B3F00;
      v98 = v37;
      sub_1B98526A4(&v97, &v94, &v95, &v96);
      v97 = sub_1B98B3F0C;
      v98 = v38;
      sub_1B98526A4(&v97, &v94, &v95, &v96);
      v97 = sub_1B98B3F14;
      v98 = v39;
      sub_1B98526A4(&v97, &v94, &v95, &v96);
      v97 = sub_1B98B3F28;
      v98 = v40;
      sub_1B98526A4(&v97, &v94, &v95, &v96);
      _os_log_impl(&dword_1B982F000, log, v43, "%s: Marking remaining handles as unknown %s", v25, 0x16u);
      sub_1B985281C(v26, 0, v24);
      sub_1B985281C(v27, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }

    else
    {
    }

    v23 = *(v90 + 664);
    v21 = *(v90 + 600);
    v22 = *(v90 + 584);
    MEMORY[0x1E69E5920](log);
    v23(v21, v22);
    swift_beginAccess();
    sub_1B98F54D8();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B98F5498();
    memcpy((v90 + 96), (v90 + 16), 0x28uLL);
    while (1)
    {
      v20 = *(v90 + 536);
      v19 = *(v90 + 528);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
      sub_1B98F5558();
      sub_1B98732E4(v19, v20);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
      if ((*(*(v13 - 8) + 48))(v20, 1) == 1)
      {
        break;
      }

      *(v90 + 496) = *(v90 + 560);
      v18 = *(v90 + 560);
      v17 = *(v90 + 552);
      sub_1B9832680(*(v90 + 536), v18);
      sub_1B9833334(v18, v17);
      *(v90 + 400) = 4;
      *(v90 + 408) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
      sub_1B983A3AC(v18);
    }

    v15 = *(v90 + 696);
    sub_1B987349C((v90 + 96));
    v16 = *(v15 + 16);
    sub_1B98F54D8();

    sub_1B98B1790((v90 + 472));

    sub_1B98B3F34((v90 + 456));
    v49 = v16;
  }

  v14 = *(*(v90 + 432) + 8);

  return v14(v49);
}

uint64_t sub_1B989F694()
{
  v0[54] = v0;

  sub_1B98B3E40(v0 + 44);

  sub_1B98B1790(v0 + 59);

  sub_1B98B3F34(v0 + 57);

  v1 = *(*(v3 + 432) + 8);

  return v1();
}

uint64_t sub_1B989F84C()
{
  v12 = v0;
  sub_1B989FF34(v0 + 16, v9);
  v4 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v3 + 16))(v4);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v6 = *(v5 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v7 = (*(v6 + 24))(v8, ObjectType);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_1B989F940(uint64_t a1)
{
  v9 = 0;
  v10 = a1;
  sub_1B989FF34(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(a1, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1B989F9CC(uint64_t a1)
{
  v9 = 0;
  v10 = a1;
  sub_1B989FF34(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 24))(a1, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1B989FA58(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v19 = a1;
  v18 = a2 & 1;
  v16 = a3;
  v17 = a4;
  sub_1B98B4250(v4 + 128, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 8))(a1, a2 & 1, a3, a4, v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1B989FB20()
{
  v8 = 0;
  sub_1B989FF34(v0 + 16, v5);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v2 + 16))(v3);
  type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v4 = sub_1B98F5AA8();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v4 & 1;
}

uint64_t sub_1B989FBF8()
{
  v2 = *(v0 + 56);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B989FC30()
{
  v2 = *(v0 + 72);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B989FC68()
{
  v2 = *(v0 + 88);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B989FCA0()
{
  v2 = *(v0 + 104);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B989FCD8()
{
  v2 = *(v0 + 120);

  return v2;
}

void *sub_1B989FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a1;
  v35 = a2;
  v36 = a3;
  v33 = a4;
  v34 = a5;
  v31 = a6;
  v32 = a7;
  v29 = a8;
  v30 = a9;
  v28 = a10;
  v27 = a11;
  v26 = v11;
  sub_1B989FF34(a1, v25);
  sub_1B98B42BC(v25, (v11 + 16));

  v23 = a10;
  if (a10)
  {
    v24 = v23;
  }

  else
  {
    type metadata accessor for SensitiveContentDataSource();
    v24 = sub_1B988F578();
  }

  v21[15] = v24;
  swift_unknownObjectRetain();
  v21[7] = a2;
  v21[8] = a3;
  swift_unknownObjectRetain();
  v21[9] = a4;
  v21[10] = a5;
  swift_unknownObjectRetain();
  v21[11] = a6;
  v21[12] = a7;
  swift_unknownObjectRetain();
  v21[13] = a8;
  v21[14] = a9;
  sub_1B98B4250(a11, v22);
  sub_1B98B4324(v22, v21 + 16);
  __swift_destroy_boxed_opaque_existential_1(a11);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v21;
}

uint64_t sub_1B989FF34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B989FFA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  return v2;
}

uint64_t (*sub_1B98A01C0())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B43DC;
}

uint64_t sub_1B98A025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v39 = a2;
  v42 = a1;
  v41 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0u;
  v52 = 0u;
  v51 = 0;
  v32 = type metadata accessor for BlockedHandle(0);
  v33 = *(v32 - 8);
  v34 = v33;
  v35 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v10 - v37;
  MEMORY[0x1EEE9AC00](&v10 - v37);
  v38 = &v10 - v37;
  v62 = &v10 - v37;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v10 - v43;
  v61 = v3;
  v60 = *v4;
  v45 = v5 + 16;
  v59 = v5 + 16;
  v46 = &v58;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v47 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v30 = v47;
    v21 = v47;
    v57 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v22 = sub_1B98F5F98();
    v26 = sub_1B9853574();
    v23 = v26;
    v56 = sub_1B98F54A8();
    v25 = sub_1B98A084C(v42);
    v24 = v25;
    v55 = v25;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v54 = v65;
    v53 = v64;
    v52 = v63;
    for (i = v31; ; i = v14)
    {
      v20 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v34 + 48))(v44, 1, v32) == 1)
      {
        break;
      }

      v14 = v20;
      sub_1B9832680(v44, v38);
      sub_1B9833334(v38, v36);
      v49 = 0;
      v50 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
      sub_1B983A3AC(v38);
    }

    v17 = v20;
    sub_1B9871430();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v15 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v16 = &v10 - 4;
    *(&v10 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v8 = v17;
    v9 = sub_1B98F5528();
    v18 = v8;
    v19 = v9;
    if (v8)
    {

      __break(1u);
    }

    else
    {
      v12 = v19;
      v13 = 0;

      v51 = v12;
      v11 = v56;
      sub_1B98F54D8();

      sub_1B98B1790(&v56);

      return v11;
    }
  }

  else
  {
    sub_1B98B568C();
    v28 = 0;
    v29 = swift_allocError();
    swift_willThrow();
    return v28;
  }

  return result;
}

uint64_t sub_1B98A084C(uint64_t a1)
{
  v27 = a1;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v31 = __b;
  v33 = 40;
  memset(__b, 0, sizeof(__b));
  v23 = 0;
  v28 = type metadata accessor for BlockedHandle(0);
  v15 = *(v28 - 8);
  v16 = v28 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v7 - v17;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v17);
  v20 = &v7 - v19;
  v21 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v19);
  v22 = &v7 - v21;
  v41 = &v7 - v21;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v7 - v24;
  v40 = v4;
  v39 = v1;
  v26 = sub_1B98F5F98();
  v30 = sub_1B9853574();
  v38 = sub_1B98F5A38();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v5 = sub_1B98F54D8();
  v32 = &v42;
  MEMORY[0x1BFADD440](v5, v28, v29, v30);
  memcpy(v31, v32, v33);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A30, &qword_1B98FB6C8);
    sub_1B98F54C8();
    if ((*(v15 + 48))(v25, 1, v28) == 1)
    {
      break;
    }

    sub_1B9832680(v25, v22);
    v12 = v34;
    sub_1B989FF34(v14 + 16, v34);
    v10 = v35;
    v11 = v36;
    __swift_project_boxed_opaque_existential_1(v12, v35);
    v13 = (*(v11 + 32))(v22, v10);
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v13)
    {
      sub_1B9833334(v22, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
      sub_1B98F5A88();
      sub_1B983A3AC(v20);
    }

    sub_1B983A3AC(v22);
  }

  sub_1B98B4400();
  v8 = &v38;
  v9 = v38;
  sub_1B98F54D8();
  sub_1B9868D78(v8);
  return v9;
}

uint64_t sub_1B98A0C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v15 = a3;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v9 - v11;
  v21 = &v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, &v9 - v11);
  v5 = v13;
  v6 = v15;
  v7 = v18 + *(v14 + 48);
  *v7 = v12;
  v17 = 1;
  *(v7 + 8) = v5 & 1;
  v20 = v6;
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8() ^ v17;
  sub_1B98B5734(v18);
  return v19 & 1;
}

uint64_t (*sub_1B98A0D84())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B4440;
}

uint64_t sub_1B98A0E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v45 = a1;
  v44 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0;
  v34 = type metadata accessor for BlockedHandle(0);
  v35 = *(v34 - 8);
  v36 = v35;
  v38 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v39 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v41 = &v10 - v40;
  v69 = &v10 - v40;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v45);
  v47 = &v10 - v46;
  v68 = v3;
  v67 = *v4;
  v48 = v5 + 16;
  v66 = v5 + 16;
  v49 = &v65;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v50 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v32 = v50;
    v23 = v50;
    v64 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v24 = sub_1B98F5F98();
    v28 = sub_1B9853574();
    v25 = v28;
    v63 = sub_1B98F54A8();
    v27 = sub_1B98A1528(v45);
    v26 = v27;
    v62 = v27;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v61 = v72;
    v60 = v71;
    v59 = v70;
    for (i = v33; ; i = v14)
    {
      v22 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v36 + 48))(v47, 1, v34) == 1)
      {
        break;
      }

      sub_1B9832680(v47, v41);
      sub_1B9833334(v41, v39);
      sub_1B98F55B8();
      v54 = v56;
      v55 = v57;
      v16 = (v57 & 1) != 0;
      v15 = v16;
      sub_1B983A3AC(v39);
      if (v15)
      {
        sub_1B9833334(v41, v37);
        v52 = 8;
        v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v14 = v22;
      sub_1B983A3AC(v41);
    }

    v19 = v22;
    sub_1B9871430();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v17 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v18 = &v10 - 4;
    *(&v10 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v8 = v19;
    v9 = sub_1B98F5528();
    v20 = v8;
    v21 = v9;
    if (v8)
    {

      __break(1u);
    }

    else
    {
      v12 = v21;
      v13 = 0;

      v58 = v12;
      v11 = v63;
      sub_1B98F54D8();

      sub_1B98B1790(&v63);

      return v11;
    }
  }

  else
  {
    sub_1B98B568C();
    v30 = 0;
    v31 = swift_allocError();
    swift_willThrow();
    return v30;
  }

  return result;
}

uint64_t sub_1B98A1528(uint64_t a1)
{
  v133 = a1;
  v134 = sub_1B98B446C;
  v137 = sub_1B98B4464;
  v138 = sub_1B98B44EC;
  v143 = sub_1B98B4474;
  v147 = sub_1B98B4514;
  v149 = sub_1B98B44DC;
  v151 = sub_1B98B44E4;
  v153 = sub_1B98B44F8;
  v155 = sub_1B98B4504;
  v157 = sub_1B98B450C;
  v160 = sub_1B98B4520;
  v111 = sub_1B98B4534;
  v112 = sub_1B98B452C;
  v113 = sub_1B98B45B4;
  v114 = sub_1B98B453C;
  v115 = sub_1B98B45DC;
  v116 = sub_1B98B45A4;
  v117 = sub_1B98B45AC;
  v118 = sub_1B98B45C0;
  v119 = sub_1B98B45CC;
  v120 = sub_1B98B45D4;
  v121 = sub_1B98B45E8;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v122 = 0;
  v130 = sub_1B98F5138();
  v128 = *(v130 - 8);
  v129 = v130 - 8;
  v124 = v128[8];
  v123 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v133);
  v125 = v61 - v123;
  v126 = v123;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = v61 - v126;
  v127 = v61 - v126;
  v178 = v2;
  v177 = v4;
  v5 = sub_1B98F1E6C();
  v131 = v128[2];
  v132 = v128 + 2;
  v131(v3, v5, v130);

  sub_1B98F54D8();
  v145 = 7;
  v135 = swift_allocObject();
  *(v135 + 16) = v133;

  v144 = 32;
  v6 = swift_allocObject();
  v7 = v135;
  v146 = v6;
  *(v6 + 16) = v134;
  *(v6 + 24) = v7;

  v8 = sub_1B98F5118();
  v9 = v136;
  v164 = v8;
  v165 = sub_1B98F5BD8();
  v141 = 17;
  v150 = swift_allocObject();
  v140 = 32;
  *(v150 + 16) = 32;
  v152 = swift_allocObject();
  v142 = 8;
  *(v152 + 16) = 8;
  v10 = swift_allocObject();
  v139 = v10;
  *(v10 + 16) = v137;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v12 = v139;
  v154 = v11;
  *(v11 + 16) = v138;
  *(v11 + 24) = v12;
  v156 = swift_allocObject();
  *(v156 + 16) = v140;
  v158 = swift_allocObject();
  *(v158 + 16) = v142;
  v13 = swift_allocObject();
  v14 = v146;
  v148 = v13;
  *(v13 + 16) = v143;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v148;
  v161 = v15;
  *(v15 + 16) = v147;
  *(v15 + 24) = v16;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v159 = sub_1B98F5F98();
  v162 = v17;

  v18 = v150;
  v19 = v162;
  *v162 = v149;
  v19[1] = v18;

  v20 = v152;
  v21 = v162;
  v162[2] = v151;
  v21[3] = v20;

  v22 = v154;
  v23 = v162;
  v162[4] = v153;
  v23[5] = v22;

  v24 = v156;
  v25 = v162;
  v162[6] = v155;
  v25[7] = v24;

  v26 = v158;
  v27 = v162;
  v162[8] = v157;
  v27[9] = v26;

  v28 = v161;
  v29 = v162;
  v162[10] = v160;
  v29[11] = v28;
  sub_1B9851B38();

  if (os_log_type_enabled(v164, v165))
  {
    v30 = v122;
    v103 = sub_1B98F5C28();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v104 = sub_1B985263C(0, v102, v102);
    v105 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v107 = &v170;
    v170 = v103;
    v108 = &v169;
    v169 = v104;
    v109 = &v168;
    v168 = v105;
    v106 = 2;
    sub_1B9852690(2, &v170);
    sub_1B9852690(v106, v107);
    v166 = v149;
    v167 = v150;
    sub_1B98526A4(&v166, v107, v108, v109);
    v110 = v30;
    if (v30)
    {

      __break(1u);
    }

    else
    {
      v166 = v151;
      v167 = v152;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v100 = 0;
      v166 = v153;
      v167 = v154;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v99 = 0;
      v166 = v155;
      v167 = v156;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v98 = 0;
      v166 = v157;
      v167 = v158;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v97 = 0;
      v166 = v160;
      v167 = v161;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v96 = 0;
      _os_log_impl(&dword_1B982F000, v164, v165, "%s: Looking up contacts for handles %s", v103, 0x16u);
      sub_1B985281C(v104, 0, v102);
      sub_1B985281C(v105, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v101 = v96;
    }
  }

  else
  {
    v31 = v122;

    v101 = v31;
  }

  v71 = v101;
  MEMORY[0x1E69E5920](v164);
  v72 = v128[1];
  v73 = v128 + 1;
  v72(v127, v130);
  v75 = *(v136 + 56);
  v74 = *(v136 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v33 = (*(v74 + 16))(v133, ObjectType);
  v34 = v125;
  v76 = v33;
  v176 = v33;
  swift_unknownObjectRelease();
  v35 = sub_1B98F1E6C();
  v131(v34, v35, v130);

  sub_1B98F54D8();
  v83 = 7;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v82 = 32;
  v36 = swift_allocObject();
  v37 = v77;
  v84 = v36;
  *(v36 + 16) = v111;
  *(v36 + 24) = v37;

  v94 = sub_1B98F5118();
  v95 = sub_1B98F5BD8();
  v80 = 17;
  v86 = swift_allocObject();
  v79 = 32;
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  v81 = 8;
  *(v87 + 16) = 8;
  v38 = swift_allocObject();
  v39 = v136;
  v78 = v38;
  *(v38 + 16) = v112;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v78;
  v88 = v40;
  *(v40 + 16) = v113;
  *(v40 + 24) = v41;
  v89 = swift_allocObject();
  *(v89 + 16) = v79;
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  v42 = swift_allocObject();
  v43 = v84;
  v85 = v42;
  *(v42 + 16) = v114;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v85;
  v92 = v44;
  *(v44 + 16) = v115;
  *(v44 + 24) = v45;
  v91 = sub_1B98F5F98();
  v93 = v46;

  v47 = v86;
  v48 = v93;
  *v93 = v116;
  v48[1] = v47;

  v49 = v87;
  v50 = v93;
  v93[2] = v117;
  v50[3] = v49;

  v51 = v88;
  v52 = v93;
  v93[4] = v118;
  v52[5] = v51;

  v53 = v89;
  v54 = v93;
  v93[6] = v119;
  v54[7] = v53;

  v55 = v90;
  v56 = v93;
  v93[8] = v120;
  v56[9] = v55;

  v57 = v92;
  v58 = v93;
  v93[10] = v121;
  v58[11] = v57;
  sub_1B9851B38();

  if (os_log_type_enabled(v94, v95))
  {
    v59 = v71;
    v63 = sub_1B98F5C28();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v64 = sub_1B985263C(0, v62, v62);
    v65 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v67 = &v175;
    v175 = v63;
    v68 = &v174;
    v174 = v64;
    v69 = &v173;
    v173 = v65;
    v66 = 2;
    sub_1B9852690(2, &v175);
    sub_1B9852690(v66, v67);
    v171 = v116;
    v172 = v86;
    sub_1B98526A4(&v171, v67, v68, v69);
    v70 = v59;
    if (v59)
    {

      __break(1u);
    }

    else
    {
      v171 = v117;
      v172 = v87;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v61[3] = 0;
      v171 = v118;
      v172 = v88;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v61[2] = 0;
      v171 = v119;
      v172 = v89;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v61[1] = 0;
      v171 = v120;
      v172 = v90;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v61[0] = 0;
      v171 = v121;
      v172 = v92;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      _os_log_impl(&dword_1B982F000, v94, v95, "%s: Contacts found %s", v63, 0x16u);
      sub_1B985281C(v64, 0, v62);
      sub_1B985281C(v65, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v94);
  v72(v125, v130);
  return v76;
}

uint64_t sub_1B98A29C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v15 = a3;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v9 - v11;
  v21 = &v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, &v9 - v11);
  v5 = v13;
  v6 = v15;
  v7 = v18 + *(v14 + 48);
  *v7 = v12;
  v17 = 1;
  *(v7 + 8) = v5 & 1;
  v20 = v6;
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8() ^ v17;
  sub_1B98B5734(v18);
  return v19 & 1;
}

uint64_t (*sub_1B98A2B00())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B45F4;
}

uint64_t sub_1B98A2B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v45 = a1;
  v44 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0;
  v34 = type metadata accessor for BlockedHandle(0);
  v35 = *(v34 - 8);
  v36 = v35;
  v38 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v39 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v41 = &v10 - v40;
  v69 = &v10 - v40;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v45);
  v47 = &v10 - v46;
  v68 = v3;
  v67 = *v4;
  v48 = v5 + 16;
  v66 = v5 + 16;
  v49 = &v65;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v50 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v32 = v50;
    v23 = v50;
    v64 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v24 = sub_1B98F5F98();
    v28 = sub_1B9853574();
    v25 = v28;
    v63 = sub_1B98F54A8();
    v27 = sub_1B98A32A4(v45);
    v26 = v27;
    v62 = v27;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v61 = v72;
    v60 = v71;
    v59 = v70;
    for (i = v33; ; i = v14)
    {
      v22 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v36 + 48))(v47, 1, v34) == 1)
      {
        break;
      }

      sub_1B9832680(v47, v41);
      sub_1B9833334(v41, v39);
      sub_1B98F55B8();
      v54 = v56;
      v55 = v57;
      v16 = (v57 & 1) != 0;
      v15 = v16;
      sub_1B983A3AC(v39);
      if (v15)
      {
        sub_1B9833334(v41, v37);
        v52 = 5;
        v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v14 = v22;
      sub_1B983A3AC(v41);
    }

    v19 = v22;
    sub_1B9871430();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v17 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v18 = &v10 - 4;
    *(&v10 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v8 = v19;
    v9 = sub_1B98F5528();
    v20 = v8;
    v21 = v9;
    if (v8)
    {

      __break(1u);
    }

    else
    {
      v12 = v21;
      v13 = 0;

      v58 = v12;
      v11 = v63;
      sub_1B98F54D8();

      sub_1B98B1790(&v63);

      return v11;
    }
  }

  else
  {
    sub_1B98B568C();
    v30 = 0;
    v31 = swift_allocError();
    swift_willThrow();
    return v30;
  }

  return result;
}

uint64_t sub_1B98A32A4(uint64_t a1)
{
  v131 = a1;
  v142 = sub_1B98B4620;
  v145 = sub_1B98B4618;
  v146 = sub_1B98B46A0;
  v151 = sub_1B98B4628;
  v155 = sub_1B98B46C8;
  v157 = sub_1B98B4690;
  v159 = sub_1B98B4698;
  v161 = sub_1B98B46AC;
  v163 = sub_1B98B46B8;
  v165 = sub_1B98B46C0;
  v168 = sub_1B98B46D4;
  v112 = sub_1B98B46E8;
  v113 = sub_1B98B46E0;
  v114 = sub_1B98B4768;
  v115 = sub_1B98B46F0;
  v116 = sub_1B98B4790;
  v117 = sub_1B98B4758;
  v118 = sub_1B98B4760;
  v119 = sub_1B98B4774;
  v120 = sub_1B98B4780;
  v121 = sub_1B98B4788;
  v122 = sub_1B98B479C;
  v188 = 0;
  v187 = 0;
  v185 = 0;
  v184 = 0;
  v123 = 0;
  v124 = 0;
  v138 = sub_1B98F5138();
  v136 = *(v138 - 8);
  v137 = v138 - 8;
  v126 = v136[8];
  v125 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v127 = v62 - v125;
  v128 = v125;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = v62 - v128;
  v129 = v62 - v128;
  v188 = v131;
  v187 = v4;
  v132 = type metadata accessor for BlockedHandle(v2);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v134 = sub_1B9853574();
  v5 = sub_1B98F54D8();
  v135 = &v186;
  v186 = v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58E0, &qword_1B98FB208);
  sub_1B988D0B8();
  v141 = sub_1B98F5AE8();
  v185 = v141;
  v6 = sub_1B98F1E6C();
  v139 = v136[2];
  v140 = v136 + 2;
  v139(v3, v6, v138);

  sub_1B98F54D8();
  v153 = 7;
  v143 = swift_allocObject();
  *(v143 + 16) = v141;

  v152 = 32;
  v7 = swift_allocObject();
  v8 = v143;
  v154 = v7;
  *(v7 + 16) = v142;
  *(v7 + 24) = v8;

  v9 = sub_1B98F5118();
  v10 = v144;
  v172 = v9;
  v173 = sub_1B98F5BD8();
  v149 = 17;
  v158 = swift_allocObject();
  v148 = 32;
  *(v158 + 16) = 32;
  v160 = swift_allocObject();
  v150 = 8;
  *(v160 + 16) = 8;
  v11 = swift_allocObject();
  v147 = v11;
  *(v11 + 16) = v145;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v13 = v147;
  v162 = v12;
  *(v12 + 16) = v146;
  *(v12 + 24) = v13;
  v164 = swift_allocObject();
  *(v164 + 16) = v148;
  v166 = swift_allocObject();
  *(v166 + 16) = v150;
  v14 = swift_allocObject();
  v15 = v154;
  v156 = v14;
  *(v14 + 16) = v151;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v156;
  v169 = v16;
  *(v16 + 16) = v155;
  *(v16 + 24) = v17;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v167 = sub_1B98F5F98();
  v170 = v18;

  v19 = v158;
  v20 = v170;
  *v170 = v157;
  v20[1] = v19;

  v21 = v160;
  v22 = v170;
  v170[2] = v159;
  v22[3] = v21;

  v23 = v162;
  v24 = v170;
  v170[4] = v161;
  v24[5] = v23;

  v25 = v164;
  v26 = v170;
  v170[6] = v163;
  v26[7] = v25;

  v27 = v166;
  v28 = v170;
  v170[8] = v165;
  v28[9] = v27;

  v29 = v169;
  v30 = v170;
  v170[10] = v168;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v172, v173))
  {
    v31 = v123;
    v104 = sub_1B98F5C28();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v105 = sub_1B985263C(0, v103, v103);
    v106 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v108 = &v178;
    v178 = v104;
    v109 = &v177;
    v177 = v105;
    v110 = &v176;
    v176 = v106;
    v107 = 2;
    sub_1B9852690(2, &v178);
    sub_1B9852690(v107, v108);
    v174 = v157;
    v175 = v158;
    sub_1B98526A4(&v174, v108, v109, v110);
    v111 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v174 = v159;
      v175 = v160;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v101 = 0;
      v174 = v161;
      v175 = v162;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v100 = 0;
      v174 = v163;
      v175 = v164;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v99 = 0;
      v174 = v165;
      v175 = v166;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v98 = 0;
      v174 = v168;
      v175 = v169;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v97 = 0;
      _os_log_impl(&dword_1B982F000, v172, v173, "%s: Looking up call history for handles %s", v104, 0x16u);
      sub_1B985281C(v105, 0, v103);
      sub_1B985281C(v106, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v102 = v97;
    }
  }

  else
  {
    v32 = v123;

    v102 = v32;
  }

  v72 = v102;
  MEMORY[0x1E69E5920](v172);
  v73 = v136[1];
  v74 = v136 + 1;
  v73(v129, v138);
  v76 = *(v144 + 72);
  v75 = *(v144 + 80);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v34 = (*(v75 + 8))(v141, ObjectType);
  v35 = v127;
  v77 = v34;
  v184 = v34;
  swift_unknownObjectRelease();
  v36 = sub_1B98F1E6C();
  v139(v35, v36, v138);

  sub_1B98F54D8();
  v84 = 7;
  v78 = swift_allocObject();
  *(v78 + 16) = v77;

  v83 = 32;
  v37 = swift_allocObject();
  v38 = v78;
  v85 = v37;
  *(v37 + 16) = v112;
  *(v37 + 24) = v38;

  v95 = sub_1B98F5118();
  v96 = sub_1B98F5BD8();
  v81 = 17;
  v87 = swift_allocObject();
  v80 = 32;
  *(v87 + 16) = 32;
  v88 = swift_allocObject();
  v82 = 8;
  *(v88 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v144;
  v79 = v39;
  *(v39 + 16) = v113;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v79;
  v89 = v41;
  *(v41 + 16) = v114;
  *(v41 + 24) = v42;
  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  v91 = swift_allocObject();
  *(v91 + 16) = v82;
  v43 = swift_allocObject();
  v44 = v85;
  v86 = v43;
  *(v43 + 16) = v115;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v86;
  v93 = v45;
  *(v45 + 16) = v116;
  *(v45 + 24) = v46;
  v92 = sub_1B98F5F98();
  v94 = v47;

  v48 = v87;
  v49 = v94;
  *v94 = v117;
  v49[1] = v48;

  v50 = v88;
  v51 = v94;
  v94[2] = v118;
  v51[3] = v50;

  v52 = v89;
  v53 = v94;
  v94[4] = v119;
  v53[5] = v52;

  v54 = v90;
  v55 = v94;
  v94[6] = v120;
  v55[7] = v54;

  v56 = v91;
  v57 = v94;
  v94[8] = v121;
  v57[9] = v56;

  v58 = v93;
  v59 = v94;
  v94[10] = v122;
  v59[11] = v58;
  sub_1B9851B38();

  if (os_log_type_enabled(v95, v96))
  {
    v60 = v72;
    v64 = sub_1B98F5C28();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v65 = sub_1B985263C(0, v63, v63);
    v66 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v68 = &v183;
    v183 = v64;
    v69 = &v182;
    v182 = v65;
    v70 = &v181;
    v181 = v66;
    v67 = 2;
    sub_1B9852690(2, &v183);
    sub_1B9852690(v67, v68);
    v179 = v117;
    v180 = v87;
    sub_1B98526A4(&v179, v68, v69, v70);
    v71 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v179 = v118;
      v180 = v88;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[4] = 0;
      v179 = v119;
      v180 = v89;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[3] = 0;
      v179 = v120;
      v180 = v90;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[2] = 0;
      v179 = v121;
      v180 = v91;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[1] = 0;
      v179 = v122;
      v180 = v93;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      _os_log_impl(&dword_1B982F000, v95, v96, "%s: Call history found %s", v64, 0x16u);
      sub_1B985281C(v65, 0, v63);
      sub_1B985281C(v66, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v95);
  v73(v127, v138);

  return v77;
}

uint64_t sub_1B98A4840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v15 = a3;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v9 - v11;
  v21 = &v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, &v9 - v11);
  v5 = v13;
  v6 = v15;
  v7 = v18 + *(v14 + 48);
  *v7 = v12;
  v17 = 1;
  *(v7 + 8) = v5 & 1;
  v20 = v6;
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8() ^ v17;
  sub_1B98B5734(v18);
  return v19 & 1;
}

uint64_t (*sub_1B98A497C())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B47A8;
}

uint64_t sub_1B98A4A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v45 = a1;
  v44 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0;
  v34 = type metadata accessor for BlockedHandle(0);
  v35 = *(v34 - 8);
  v36 = v35;
  v38 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v39 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v41 = &v10 - v40;
  v69 = &v10 - v40;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v45);
  v47 = &v10 - v46;
  v68 = v3;
  v67 = *v4;
  v48 = v5 + 16;
  v66 = v5 + 16;
  v49 = &v65;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v50 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v32 = v50;
    v23 = v50;
    v64 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v24 = sub_1B98F5F98();
    v28 = sub_1B9853574();
    v25 = v28;
    v63 = sub_1B98F54A8();
    v27 = sub_1B98A5120(v45);
    v26 = v27;
    v62 = v27;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v61 = v72;
    v60 = v71;
    v59 = v70;
    for (i = v33; ; i = v14)
    {
      v22 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v36 + 48))(v47, 1, v34) == 1)
      {
        break;
      }

      sub_1B9832680(v47, v41);
      sub_1B9833334(v41, v39);
      sub_1B98F55B8();
      v54 = v56;
      v55 = v57;
      v16 = (v57 & 1) != 0;
      v15 = v16;
      sub_1B983A3AC(v39);
      if (v15)
      {
        sub_1B9833334(v41, v37);
        v52 = 5;
        v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v14 = v22;
      sub_1B983A3AC(v41);
    }

    v19 = v22;
    sub_1B9871430();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v17 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v18 = &v10 - 4;
    *(&v10 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v8 = v19;
    v9 = sub_1B98F5528();
    v20 = v8;
    v21 = v9;
    if (v8)
    {

      __break(1u);
    }

    else
    {
      v12 = v21;
      v13 = 0;

      v58 = v12;
      v11 = v63;
      sub_1B98F54D8();

      sub_1B98B1790(&v63);

      return v11;
    }
  }

  else
  {
    sub_1B98B568C();
    v30 = 0;
    v31 = swift_allocError();
    swift_willThrow();
    return v30;
  }

  return result;
}

uint64_t sub_1B98A5120(uint64_t a1)
{
  v131 = a1;
  v142 = sub_1B98B47D4;
  v145 = sub_1B98B47CC;
  v146 = sub_1B98B4854;
  v151 = sub_1B98B47DC;
  v155 = sub_1B98B487C;
  v157 = sub_1B98B4844;
  v159 = sub_1B98B484C;
  v161 = sub_1B98B4860;
  v163 = sub_1B98B486C;
  v165 = sub_1B98B4874;
  v168 = sub_1B98B4888;
  v112 = sub_1B98B489C;
  v113 = sub_1B98B4894;
  v114 = sub_1B98B491C;
  v115 = sub_1B98B48A4;
  v116 = sub_1B98B4944;
  v117 = sub_1B98B490C;
  v118 = sub_1B98B4914;
  v119 = sub_1B98B4928;
  v120 = sub_1B98B4934;
  v121 = sub_1B98B493C;
  v122 = sub_1B98B4950;
  v188 = 0;
  v187 = 0;
  v185 = 0;
  v184 = 0;
  v123 = 0;
  v124 = 0;
  v138 = sub_1B98F5138();
  v136 = *(v138 - 8);
  v137 = v138 - 8;
  v126 = v136[8];
  v125 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v127 = v62 - v125;
  v128 = v125;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = v62 - v128;
  v129 = v62 - v128;
  v188 = v131;
  v187 = v4;
  v132 = type metadata accessor for BlockedHandle(v2);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v134 = sub_1B9853574();
  v5 = sub_1B98F54D8();
  v135 = &v186;
  v186 = v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58E0, &qword_1B98FB208);
  sub_1B988D0B8();
  v141 = sub_1B98F5AE8();
  v185 = v141;
  v6 = sub_1B98F1E6C();
  v139 = v136[2];
  v140 = v136 + 2;
  v139(v3, v6, v138);

  sub_1B98F54D8();
  v153 = 7;
  v143 = swift_allocObject();
  *(v143 + 16) = v141;

  v152 = 32;
  v7 = swift_allocObject();
  v8 = v143;
  v154 = v7;
  *(v7 + 16) = v142;
  *(v7 + 24) = v8;

  v9 = sub_1B98F5118();
  v10 = v144;
  v172 = v9;
  v173 = sub_1B98F5BD8();
  v149 = 17;
  v158 = swift_allocObject();
  v148 = 32;
  *(v158 + 16) = 32;
  v160 = swift_allocObject();
  v150 = 8;
  *(v160 + 16) = 8;
  v11 = swift_allocObject();
  v147 = v11;
  *(v11 + 16) = v145;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v13 = v147;
  v162 = v12;
  *(v12 + 16) = v146;
  *(v12 + 24) = v13;
  v164 = swift_allocObject();
  *(v164 + 16) = v148;
  v166 = swift_allocObject();
  *(v166 + 16) = v150;
  v14 = swift_allocObject();
  v15 = v154;
  v156 = v14;
  *(v14 + 16) = v151;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v156;
  v169 = v16;
  *(v16 + 16) = v155;
  *(v16 + 24) = v17;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v167 = sub_1B98F5F98();
  v170 = v18;

  v19 = v158;
  v20 = v170;
  *v170 = v157;
  v20[1] = v19;

  v21 = v160;
  v22 = v170;
  v170[2] = v159;
  v22[3] = v21;

  v23 = v162;
  v24 = v170;
  v170[4] = v161;
  v24[5] = v23;

  v25 = v164;
  v26 = v170;
  v170[6] = v163;
  v26[7] = v25;

  v27 = v166;
  v28 = v170;
  v170[8] = v165;
  v28[9] = v27;

  v29 = v169;
  v30 = v170;
  v170[10] = v168;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v172, v173))
  {
    v31 = v123;
    v104 = sub_1B98F5C28();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v105 = sub_1B985263C(0, v103, v103);
    v106 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v108 = &v178;
    v178 = v104;
    v109 = &v177;
    v177 = v105;
    v110 = &v176;
    v176 = v106;
    v107 = 2;
    sub_1B9852690(2, &v178);
    sub_1B9852690(v107, v108);
    v174 = v157;
    v175 = v158;
    sub_1B98526A4(&v174, v108, v109, v110);
    v111 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v174 = v159;
      v175 = v160;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v101 = 0;
      v174 = v161;
      v175 = v162;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v100 = 0;
      v174 = v163;
      v175 = v164;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v99 = 0;
      v174 = v165;
      v175 = v166;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v98 = 0;
      v174 = v168;
      v175 = v169;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v97 = 0;
      _os_log_impl(&dword_1B982F000, v172, v173, "%s: Looking up people suggester for handles %s", v104, 0x16u);
      sub_1B985281C(v105, 0, v103);
      sub_1B985281C(v106, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v102 = v97;
    }
  }

  else
  {
    v32 = v123;

    v102 = v32;
  }

  v72 = v102;
  MEMORY[0x1E69E5920](v172);
  v73 = v136[1];
  v74 = v136 + 1;
  v73(v129, v138);
  v76 = *(v144 + 88);
  v75 = *(v144 + 96);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v34 = (*(v75 + 8))(v141, ObjectType);
  v35 = v127;
  v77 = v34;
  v184 = v34;
  swift_unknownObjectRelease();
  v36 = sub_1B98F1E6C();
  v139(v35, v36, v138);

  sub_1B98F54D8();
  v84 = 7;
  v78 = swift_allocObject();
  *(v78 + 16) = v77;

  v83 = 32;
  v37 = swift_allocObject();
  v38 = v78;
  v85 = v37;
  *(v37 + 16) = v112;
  *(v37 + 24) = v38;

  v95 = sub_1B98F5118();
  v96 = sub_1B98F5BD8();
  v81 = 17;
  v87 = swift_allocObject();
  v80 = 32;
  *(v87 + 16) = 32;
  v88 = swift_allocObject();
  v82 = 8;
  *(v88 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v144;
  v79 = v39;
  *(v39 + 16) = v113;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v79;
  v89 = v41;
  *(v41 + 16) = v114;
  *(v41 + 24) = v42;
  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  v91 = swift_allocObject();
  *(v91 + 16) = v82;
  v43 = swift_allocObject();
  v44 = v85;
  v86 = v43;
  *(v43 + 16) = v115;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v86;
  v93 = v45;
  *(v45 + 16) = v116;
  *(v45 + 24) = v46;
  v92 = sub_1B98F5F98();
  v94 = v47;

  v48 = v87;
  v49 = v94;
  *v94 = v117;
  v49[1] = v48;

  v50 = v88;
  v51 = v94;
  v94[2] = v118;
  v51[3] = v50;

  v52 = v89;
  v53 = v94;
  v94[4] = v119;
  v53[5] = v52;

  v54 = v90;
  v55 = v94;
  v94[6] = v120;
  v55[7] = v54;

  v56 = v91;
  v57 = v94;
  v94[8] = v121;
  v57[9] = v56;

  v58 = v93;
  v59 = v94;
  v94[10] = v122;
  v59[11] = v58;
  sub_1B9851B38();

  if (os_log_type_enabled(v95, v96))
  {
    v60 = v72;
    v64 = sub_1B98F5C28();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v65 = sub_1B985263C(0, v63, v63);
    v66 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v68 = &v183;
    v183 = v64;
    v69 = &v182;
    v182 = v65;
    v70 = &v181;
    v181 = v66;
    v67 = 2;
    sub_1B9852690(2, &v183);
    sub_1B9852690(v67, v68);
    v179 = v117;
    v180 = v87;
    sub_1B98526A4(&v179, v68, v69, v70);
    v71 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v179 = v118;
      v180 = v88;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[4] = 0;
      v179 = v119;
      v180 = v89;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[3] = 0;
      v179 = v120;
      v180 = v90;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[2] = 0;
      v179 = v121;
      v180 = v91;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[1] = 0;
      v179 = v122;
      v180 = v93;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      _os_log_impl(&dword_1B982F000, v95, v96, "%s: Interactions found %s", v64, 0x16u);
      sub_1B985281C(v65, 0, v63);
      sub_1B985281C(v66, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v95);
  v73(v127, v138);

  return v77;
}