uint64_t sub_1E60AEE90()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_1E60AFBB8;
  }

  else
  {
    v2 = sub_1E60AEFB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60AEFB8()
{
  v1 = v0[23];
  v2 = v0[3];

  v20 = BookmarkService.filterPlaylists.getter();
  v21 = v3;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1E601C17C(0, v1, 0);
  v4 = 0;
  v5 = *(v22 + 16);
  v6 = 24 * v5 + 48;
  v7 = (v2 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = v5 + 1;
    v11 = *(v22 + 24);

    if (v5 >= v11 >> 1)
    {
      sub_1E601C17C((v11 > 1), v10, 1);
    }

    v12 = v0[23];
    ++v4;
    *(v22 + 16) = v10;
    v13 = (v22 + v6);
    *(v13 - 2) = v8;
    *(v13 - 1) = v9;
    *v13 = 1;
    v6 += 24;
    v7 += 2;
    ++v5;
  }

  while (v4 != v12);
  v14 = v0[24];
  v0[29] = v21;
  v15 = sub_1E60A219C(v14);

  sub_1E5FA9FC8(v15);
  sub_1E600AAA0(v22);

  sub_1E65D86B8();
  v19 = (v20 + *v20);
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_1E60AF208;
  v17 = v0[13];

  return v19(v17);
}

uint64_t sub_1E60AF208(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  (*(v3[12] + 8))(v3[13], v3[11]);

  if (v1)
  {
    v5 = sub_1E60AFC78;
  }

  else
  {
    v5 = sub_1E60AF394;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60AF394()
{
  v1 = v0[31];
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[31] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v41 = v0[9];
  v42 = (v41 + 8);
  v39 = v0[6];
  v43 = v0[31];

  v10 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    (*(v41 + 16))(v0[10], *(v43 + 48) + *(v41 + 72) * (v12 | (v10 << 6)), v0[8]);
    v0[2] = sub_1E65DAE88();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074550, &qword_1E65F0D90);
    sub_1E5FED46C(&qword_1ED074558, &qword_1ED074550, &qword_1E65F0D90, MEMORY[0x1E69E6508]);
    v13 = sub_1E65E5E78();

    v14 = v13;
    v15 = v0[10];
    v16 = v0[8];
    if (*(v13 + 16))
    {
      v17 = v0[7];
      v18 = v0[5];
      (*(v39 + 16))(v17, v14 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v18);

      v37 = sub_1E65D7F38();
      v38 = v19;
      (*v42)(v15, v16);
      (*(v39 + 8))(v17, v18);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E64F6718(0, *(v40 + 16) + 1, 1, v40);
        v40 = result;
      }

      v21 = *(v40 + 16);
      v20 = *(v40 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1E64F6718((v20 > 1), v21 + 1, 1, v40);
        v40 = result;
      }

      *(v40 + 16) = v21 + 1;
      v22 = v40 + 16 * v21;
      *(v22 + 32) = v37;
      *(v22 + 40) = v38;
    }

    else
    {

      result = (*v42)(v15, v16);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (*(v40 + 16))
  {
    v23 = CatalogService.fetchRemoteCatalogWorkouts.getter();
    v0[33] = v24;
    v25 = sub_1E600AA08(v40);
    v0[34] = v25;

    v44 = (v23 + *v23);
    v26 = swift_task_alloc();
    v0[35] = v26;
    *v26 = v0;
    v26[1] = sub_1E60AF8DC;

    return v44(v25);
  }

  else
  {

    v27 = v0[31];
    v29 = v0[15];
    v28 = v0[16];
    v30 = v0[14];
    v31 = v0[4];
    v32 = swift_task_alloc();
    v33 = MEMORY[0x1E69E7CD0];
    v32[2] = v28;
    v32[3] = v33;
    v32[4] = v31;
    v34 = sub_1E640486C(sub_1E60C3294, v32, v27);

    v35 = sub_1E600BEE0(v34);

    (*(v29 + 8))(v28, v30);

    v36 = v0[1];

    return v36(v35);
  }
}

uint64_t sub_1E60AF8DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {

    v5 = sub_1E60AFD50;
  }

  else
  {

    *(v4 + 296) = a1;
    v5 = sub_1E60AFA5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60AFA5C()
{
  v1 = v0[37];
  v2 = v0[31];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v7[2] = v3;
  v7[3] = v1;
  v7[4] = v6;
  v8 = sub_1E640486C(sub_1E60C3294, v7, v2);

  v9 = sub_1E600BEE0(v8);

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1E60AFBB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60AFC78()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E60AFD50()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E60AFE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v186 = a4;
  v185 = a3;
  v219 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v166 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v199 = &v166 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v198 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v207 = &v166 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v206 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v217 = &v166 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v208 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v218 = &v166 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v166 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v180 = &v166 - v28;
  v179 = sub_1E65DAC98();
  v177 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v174 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v181);
  v175 = &v166 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1E65DA0B8();
  v176 = *(v178 - 8);
  v31 = MEMORY[0x1EEE9AC00](v178);
  v173 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v191 = &v166 - v33;
  v172 = sub_1E65D9D58();
  v171 = *(v172 - 8);
  v34 = MEMORY[0x1EEE9AC00](v172);
  v170 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v169 = &v166 - v36;
  v187 = sub_1E65D8BB8();
  v37 = MEMORY[0x1EEE9AC00](v187);
  v188 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v200 = &v166 - v39;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v40 = MEMORY[0x1EEE9AC00](v190);
  v189 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v216 = (&v166 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v202 = &v166 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v210 = (&v166 - v47);
  MEMORY[0x1EEE9AC00](v46);
  v215 = &v166 - v48;
  v223 = sub_1E65D72D8();
  v214 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v222 = &v166 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v52 = &v166 - v51;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v182 = *(v183 - 1);
  MEMORY[0x1EEE9AC00](v183);
  v54 = &v166 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v57 = &v166 - v56;
  v205 = sub_1E65D9AC8();
  v221 = *(v205 - 8);
  v58 = MEMORY[0x1EEE9AC00](v205);
  v184 = &v166 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v209 = &v166 - v60;
  v197 = sub_1E65D7848();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v224 = &v166 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for ItemContext(0);
  v62 = MEMORY[0x1EEE9AC00](v193);
  v192 = &v166 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v213 = &v166 - v64;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v212 = &v166 - v65;
  v66 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v66 - 8);
  v211 = &v166 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v203 = *(v204 - 8);
  v68 = MEMORY[0x1EEE9AC00](v204);
  v70 = &v166 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v201 = &v166 - v71;
  v220 = a1;
  v72 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v168 = v9;
  v74 = sub_1E6215038(v72, v73);
  v76 = v75;

  if ((v76 & 1) == 0)
  {
LABEL_7:
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v85 - 8) + 56))(v219, 1, 1, v85);
  }

  v166 = v26;
  v77 = v203;
  v78 = v204;
  (*(v203 + 16))(v70, *(a2 + 56) + *(v203 + 72) * v74, v204);
  (*(v77 + 32))(v201, v70, v78);
  sub_1E65E04F8();
  v79 = v185;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  v80 = &v79[*(type metadata accessor for AppComposer(0) + 20)];
  v228 = v80[8];
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v81 = v183;
  sub_1E65E4C98();
  sub_1E60EEE88(v57);
  sub_1E5DFE50C(v52, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v182 + 8))(v54, v81);
  v82 = v221;
  v83 = *(v221 + 48);
  v84 = v205;
  if (v83(v57, 1, v205) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v83(v57, 1, v84) != 1)
    {
      sub_1E5DFE50C(v57, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v82 + 32))(v209, v57, v84);
  }

  v87 = *(type metadata accessor for AppEnvironment(0) + 136);
  v88 = sub_1E5F9B6D0(v186);
  v89 = sub_1E65D8248();
  v186 = v87;
  sub_1E63C4134(v224, &v80[v87], v89, v222);

  v90 = sub_1E65D80A8();
  v91 = sub_1E65D9AA8();
  v93 = v92;
  v94 = v184;
  MEMORY[0x1E6941490]();
  v95 = sub_1E65D9AA8();
  v97 = v96;
  v98 = *(v221 + 8);
  v221 += 8;
  v185 = v98;
  (v98)(v94, v84);
  if (v91 == v95 && v93 == v97)
  {
  }

  else
  {
    v99 = sub_1E65E6C18();

    if ((v99 & 1) == 0)
    {
      v101 = sub_1E65D8198();
      v102 = sub_1E65D9AA8();
      v104 = sub_1E637CA94(v102, v103, v101);

      v100 = v224;
      if (v104)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v105 = *(sub_1E65DADF8() - 8);
        v106 = *(v105 + 72);
        v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1E65EB9E0;
        v109 = (v108 + v107);
        *v109 = sub_1E65D9AA8();
        v109[1] = v110;
        swift_storeEnumTagMultiPayload();
        *(v109 + v106) = 1;
        swift_storeEnumTagMultiPayload();
        v111 = sub_1E65D80A8();
        v225 = v108;
        sub_1E5FA9E2C(v111);
        v90 = v225;
      }

      goto LABEL_16;
    }
  }

  v100 = v224;
LABEL_16:
  v112 = *(sub_1E65D8068() + 16);

  v113 = v215;
  if (v112)
  {
    v114 = sub_1E65D8068();
    sub_1E63C4134(v100, &v80[v186], v114, v113);

    v115 = 0;
  }

  else
  {
    v115 = 1;
  }

  v184 = v90;
  v116 = v214 + 56;
  v182 = *(v214 + 56);
  (v182)(v113, v115, 1, v223);
  v183 = sub_1E63B0704(v88);

  v117 = v200;
  sub_1E65D8128();
  v118 = v117;
  v119 = v188;
  sub_1E5E1D41C(v118, v188, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v167 = v80;
  if (EnumCaseMultiPayload == 1)
  {
    v121 = v176;
    v122 = v191;
    v123 = v178;
    (*(v176 + 32))(v191, v119, v178);
    v124 = v173;
    (*(v121 + 16))(v173, v122, v123);
    v188 = v116;
    v125 = v174;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v177 + 8))(v125, v179);
    sub_1E65DA0A8();
    sub_1E60C330C(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    v126 = v189;
    sub_1E65DC438();
    v127 = *(v121 + 8);
    v127(v124, v123);
    v127(v191, v123);
    v100 = v224;
  }

  else
  {
    v128 = v171;
    v129 = v169;
    v130 = v119;
    v131 = v172;
    (*(v171 + 32))(v169, v130, v172);
    v132 = v170;
    (*(v128 + 16))(v170, v129, v131);
    v126 = v189;
    sub_1E6134678(v132, v189);
    (*(v128 + 8))(v129, v131);
  }

  sub_1E60C3430(v200, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v126, v216, &qword_1ED074530, &qword_1E65F0CA8);
  v133 = sub_1E65D81E8();
  v136 = v184;
  if (v135 == -1)
  {
    v140 = 4;
  }

  else
  {
    v225 = v133;
    v226 = v134;
    v227 = v135 & 1;
    v137 = v133;
    v138 = v134;
    v139 = v135;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v137, v138, v139);
    v140 = v229;
  }

  LODWORD(v191) = v140;
  v141 = v182;
  v142 = v210;
  v143 = v223;
  (*(v214 + 16))(v210, v222, v223);
  v144 = 1;
  v141(v142, 0, 1, v143);
  sub_1E65D8158();
  v145 = v202;
  if (*(v136 + 16))
  {
    sub_1E63C4134(v100, &v167[v186], v136, v202);
    v144 = 0;
  }

  v141(v145, v144, 1, v223);
  sub_1E65D8178();
  v146 = type metadata accessor for ActionButtonDescriptor(0);
  v200 = v146;
  v147 = *(*(v146 - 8) + 56);
  v148 = v207;
  v147();
  v149 = v198;
  (v147)(v198, 1, 1, v146);
  v150 = sub_1E65D8088();
  v152 = v151;
  v190 = v151;
  v153 = sub_1E65D80C8();
  v155 = v154;
  v157 = v156;
  v158 = sub_1E65D81B8();
  v157 &= 1u;
  v165 = v150;
  v164 = v148;
  v159 = v202;
  v160 = v206;
  sub_1E63A0574(v212, v216, v183, v191, v210, v217, v202, v206, v218, v215, v228, v164, v149, v165, v152, v153, v155, v157, v158, v161, 7u);

  sub_1E5F87058(v153, v155, v157);

  sub_1E5DFE50C(v149, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v207, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v160, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v159, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v217, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v210, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1D41C(v213, v192, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v218, v208, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v199);
  sub_1E622BB88(v222, v168);
  v220 = type metadata accessor for ArtworkDescriptor(0);
  v217 = type metadata accessor for ContextMenu(0);
  v210 = type metadata accessor for ItemMetrics(0);
  v207 = type metadata accessor for ViewDescriptor(0);
  v206 = sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E60C330C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E60C330C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E60C330C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v162 = v219;
  sub_1E65E0488();
  sub_1E5DFE50C(v218, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v216, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v215, &qword_1ED072D90, &qword_1E66040F0);
  (*(v214 + 8))(v222, v223);
  (v185)(v209, v205);
  (*(v196 + 8))(v224, v197);
  sub_1E60C3430(v213, type metadata accessor for ItemContext);
  (*(v194 + 8))(v212, v195);
  sub_1E60C3430(v211, MEMORY[0x1E699D780]);
  (*(v203 + 8))(v201, v204);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
}

uint64_t sub_1E60B19A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState(0) + 172);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E60B19F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v111 = a6;
  v98 = a5;
  LODWORD(v109) = a4;
  LODWORD(v115) = a3;
  v107 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v106 = &v93 - v10;
  v11 = sub_1E65E0438();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for SectionMetrics(0);
  v102 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v113 = (&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v96 = &v93 - v17;
  v18 = sub_1E65D7848();
  v94 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65E5C28();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65D72D8();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v95 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v27 = MEMORY[0x1EEE9AC00](v99);
  v29 = (&v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v27);
  v112 = &v93 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v117 = (&v93 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v110 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v116 = &v93 - v36;
  v37 = *(type metadata accessor for AppComposer(0) + 20);
  v108 = a2;
  v38 = *(a2 + v37 + 8);
  v103 = a1;
  if (sub_1E65DF4D8() == 0x796C746E65636572 && v39 == 0xED00006465646441)
  {
  }

  else
  {
    v40 = sub_1E65E6C18();

    if ((v40 & 1) == 0)
    {
LABEL_10:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v47 - 8) + 56))(v116, 1, 1, v47);
      goto LABEL_11;
    }
  }

  v41 = sub_1E65DAE38();
  if (v41 == sub_1E65DAE38() || (v115 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1E65E5BA8();
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DF228();
  (*(v94 + 8))(v20, v18);
  (*(v22 + 8))(v24, v21);
  if (qword_1EE2D7270 != -1)
  {
    swift_once();
  }

  v42 = sub_1E65D7348();
  __swift_project_value_buffer(v42, qword_1EE2EA268);
  sub_1E65E5D38();

  v43 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  (*(*(v43 - 8) + 56))(v96, 1, 1, v43);
  v44 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v44 - 8) + 56))(v97, 1, 1, v44);
  sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E60C330C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v45 = v116;
  sub_1E65E0458();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
LABEL_11:
  v48 = v117;
  if (v38 < 2)
  {
    v49 = sub_1E65DF628();
    v50 = 1;
    if (v49 < 7u)
    {
      v50 = 2;
    }

    v51 = 2;
    if (v49 < 7u)
    {
      v51 = 3;
    }

    v52 = 20.0;
    if (v115)
    {
      v52 = 10.0;
    }

    else
    {
      v50 = v51;
    }

    *v29 = v50;
    v29[1] = v52;
    v53 = *MEMORY[0x1E699D840];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
    (*(*(v54 - 8) + 104))(v29, v53, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v55 = sub_1E65DF568();
    v57 = v56;
    if (v55 == sub_1E65DF568() && v57 == v58)
    {

LABEL_25:
      sub_1E5FAB460(v29, v48, &qword_1ED072650, &qword_1E65EB968);
LABEL_29:
      v62 = v109;
      v63 = sub_1E65DF568();
      v65 = v64;
      v66 = sub_1E65DF548();
      v68 = v67;
      v69 = v105;
      v70 = *(v105 + 24);
      v71 = *MEMORY[0x1E69CBCB0];
      v72 = sub_1E65D8F28();
      v73 = v113;
      (*(*(v72 - 8) + 104))(v113 + v70, v71, v72);
      v74 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
      *v73 = v63;
      v73[1] = v65;
      v73[2] = v66;
      v73[3] = v68;
      *(v73 + *(v69 + 32)) = v74;
      v75 = v103;
      v76 = sub_1E65DF4D8();
      v98 = v77;
      v99 = v76;
      sub_1E5DFD1CC(v117, v112, &qword_1ED072650, &qword_1E65EB968);
      sub_1E5DFD1CC(v116, v110, &qword_1ED072648, &qword_1E65EB960);
      (*(v100 + 104))(v114, *MEMORY[0x1E699D7D8], v101);
      v78 = sub_1E65DF4E8();
      MEMORY[0x1EEE9AC00](v78);
      v88 = v75;
      v89 = v111;
      v90 = v108;
      v91 = v62;
      v92 = v115 & 1;
      v79 = v104;
      v111 = sub_1E5F9F768(sub_1E60C32E0, v87, v78);
      v115 = v79;

      v80 = v106;
      sub_1E5E1D41C(v73, v106, type metadata accessor for SectionMetrics);
      (*(v102 + 56))(v80, 0, 1, v69);
      v109 = type metadata accessor for ActionButtonDescriptor(0);
      v108 = type metadata accessor for ArtworkDescriptor(0);
      v104 = type metadata accessor for ContextMenu(0);
      v103 = type metadata accessor for ItemContext(0);
      v102 = type metadata accessor for ItemMetrics(0);
      v101 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      v100 = type metadata accessor for ViewDescriptor(0);
      v97 = sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      v96 = sub_1E60C330C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      v95 = sub_1E60C330C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
      sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      v81 = sub_1E60C330C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      v82 = sub_1E60C330C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
      v83 = sub_1E5DF11E0();
      v84 = sub_1E60C330C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
      v85 = sub_1E60C330C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      v89 = v84;
      v90 = v85;
      v87[1] = v82;
      v88 = v83;
      v87[0] = v81;
      sub_1E65E0418();
      sub_1E60C3430(v113, type metadata accessor for SectionMetrics);
      sub_1E5DFE50C(v117, &qword_1ED072650, &qword_1E65EB968);
      return sub_1E5DFE50C(v116, &qword_1ED072648, &qword_1E65EB960);
    }

    v59 = sub_1E65E6C18();

    if ((v59 & 1) != 0 || (v115 & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_1E5DFE50C(v29, &qword_1ED072650, &qword_1E65EB968);
    *v48 = 2;
LABEL_28:
    swift_storeEnumTagMultiPayload();
    goto LABEL_29;
  }

  if (v38 == 3)
  {
    *v117 = 3;
    v48[1] = 0x4044000000000000;
    v60 = *MEMORY[0x1E699D840];
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
    (*(*(v61 - 8) + 104))(v48, v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
    swift_storeEnumTagMultiPayload();
    goto LABEL_28;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60B29A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, unsigned int a3@<W4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v31 = a4;
  v33 = a3;
  v35 = a5;
  v34 = sub_1E65E03F8();
  v7 = MEMORY[0x1EEE9AC00](v34);
  v32 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for ItemContext(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30[-v13];
  v36 = sub_1E65DF4D8();
  v37 = v15;
  MEMORY[0x1E694D7C0](45, 0xE100000000000000);
  v16 = sub_1E65DF378();
  MEMORY[0x1E694D7C0](v16);

  MEMORY[0x1E694D7C0](45, 0xE100000000000000);
  v17 = sub_1E65DF398();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  MEMORY[0x1E694D7C0](v17, v19);

  MEMORY[0x1E694D7C0](45, 0xE100000000000000);
  sub_1E65D7848();
  sub_1E60C330C(&qword_1EE2D7180, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
  v20 = sub_1E65E6BC8();
  MEMORY[0x1E694D7C0](v20);

  v21 = *(a2 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v21 < 2)
  {
    v22 = sub_1E65DF568();
    v24 = v23;
    if (v22 == sub_1E65DF568() && v24 == v25)
    {
    }

    else
    {
      v26 = sub_1E65E6C18();

      if ((v26 & 1) == 0)
      {
        v29 = sub_1E65DF3B8();
        (*(*(v29 - 8) + 16))(v12, a1, v29);
        type metadata accessor for LibraryItemContext(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        if (v31)
        {
          sub_1E65E0AC8();
        }

        else
        {
          sub_1E65E0A68();
        }

        swift_storeEnumTagMultiPayload();
        sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E65E04D8();
        goto LABEL_12;
      }
    }

LABEL_11:
    v27 = sub_1E65DF3B8();
    (*(*(v27 - 8) + 16))(v14, a1, v27);
    type metadata accessor for LibraryItemContext(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1E65E0A68();
    swift_storeEnumTagMultiPayload();
    sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E65E04D8();
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
    return swift_storeEnumTagMultiPayload();
  }

  if (v21 == 3)
  {
    goto LABEL_11;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60B3068()
{
  v1[3] = v0;
  v2 = sub_1E65DF3B8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E0, &qword_1E65F0AE8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_1E65D76A8();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B32A0, 0, 0);
}

uint64_t sub_1E60B32A0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E5FAB460(v4, v5, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *v0[17];
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = v0[17];
      v8 = v0[12];
      v9 = v0[13];
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070);
      v11 = *v7;
      (*(v9 + 8))(&v7[*(v10 + 48)], v8);
      goto LABEL_8;
    }

    sub_1E5DFE50C(v0[17], &qword_1ED072910, &qword_1E65EC030);
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_8:
  v0[22] = v11;
  v12 = v0[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E8, &qword_1E65F0AF0);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_1E60B34BC;

  return MEMORY[0x1EEE6DD58](v0 + 2, v13, v13, 0, 0, &unk_1E65F0B00, v14, v13);
}

uint64_t sub_1E60B34BC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1E60B3DAC;
  }

  else
  {

    v2 = sub_1E60B35E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1E60B35E0()
{
  v86 = v0;
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[13];
    v64 = v0[8];
    v5 = v0[5];
    v85[0] = MEMORY[0x1E69E7CC0];
    sub_1E601C578(0, v2, 0);
    v3 = v85[0];
    v6 = v1 + 64;
    result = sub_1E65E6748();
    v8 = result;
    v9 = 0;
    v63 = v5;
    v62 = v4;
    v59 = v1 + 72;
    v60 = v2;
    v65 = v1;
    v67 = v0;
    v61 = v1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v1 + 32))
    {
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_51;
      }

      v72 = 1 << v8;
      v74 = v8 >> 6;
      v69 = v9;
      v70 = *(v1 + 36);
      v76 = *(v64 + 48);
      v11 = v1;
      v12 = v0[11];
      v13 = v0[12];
      v82 = v3;
      v15 = v0[9];
      v14 = v0[10];
      v16 = v0[4];
      v78 = v0[15];
      v79 = *(v4 + 72);
      (*(v4 + 16))(v12, *(v11 + 48) + v79 * v8, v13);
      v81 = v8;
      (*(v63 + 16))(v12 + v76, *(v11 + 56) + *(v63 + 72) * v8, v16);
      v17 = *(v4 + 32);
      v17(v14, v12, v13);
      (*(v63 + 32))(v14 + *(v64 + 48), v12 + v76, v16);
      sub_1E5FAB460(v14, v15, &qword_1ED0743E0, &qword_1E65F0AE8);
      v18 = *(v64 + 48);
      v19 = v13;
      v20 = v17;
      v17(v78, v15, v19);
      v21 = v15 + v18;
      v3 = v82;
      (*(v63 + 8))(v21, v16);
      v85[0] = v82;
      v23 = *(v82 + 16);
      v22 = *(v82 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1E601C578((v22 > 1), v23 + 1, 1);
        v3 = v85[0];
      }

      v0 = v67;
      v24 = v67[15];
      v25 = v67[12];
      *(v3 + 16) = v23 + 1;
      v4 = v62;
      v20(v3 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + v23 * v79, v24, v25);
      v1 = v65;
      v10 = 1 << *(v65 + 32);
      result = v81;
      if (v81 >= v10)
      {
        goto LABEL_52;
      }

      v6 = v61;
      v26 = *(v61 + 8 * v74);
      if ((v26 & v72) == 0)
      {
        goto LABEL_53;
      }

      if (v70 != *(v65 + 36))
      {
        goto LABEL_54;
      }

      v27 = v26 & (-2 << (v81 & 0x3F));
      if (v27)
      {
        v10 = __clz(__rbit64(v27)) | v81 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v74 << 6;
        v29 = (v59 + 8 * v74);
        v30 = v74 + 1;
        while (v30 < (v10 + 63) >> 6)
        {
          v32 = *v29++;
          v31 = v32;
          v28 += 64;
          ++v30;
          if (v32)
          {
            result = sub_1E5F87098(v81, v70, 0);
            v10 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v81, v70, 0);
      }

LABEL_4:
      v9 = v69 + 1;
      v8 = v10;
      if (v69 + 1 == v60)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_19:
  v33 = v0[25];
  v85[0] = v3;

  sub_1E60BAF60(v85);
  if (v33)
  {
  }

  v34 = v85[0];
  v35 = *(v85[0] + 16);
  if (v35 >= 0xC)
  {
    v36 = v35 - 12;
  }

  else
  {
    v36 = 0;
  }

  if (v35 != v36)
  {
    v38 = v0[13];
    v83 = v85[0] + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v39 = (v38 + 8);
    v80 = v0[5];
    if (v35 >= 0xC)
    {
      v40 = 12;
    }

    else
    {
      v40 = *(v85[0] + 16);
    }

    v37 = MEMORY[0x1E69E7CC0];
    v66 = v1;
    v68 = v0;
    v73 = v36;
    v75 = v85[0];
    v71 = v0[13];
    while (v36 < v35)
    {
      if (v35-- < 1)
      {
        goto LABEL_56;
      }

      if (v35 >= *(v34 + 16))
      {
        goto LABEL_57;
      }

      (*(v38 + 16))(v0[14], v83 + *(v38 + 72) * v35, v0[12]);
      if (*(v1 + 16) && (v42 = sub_1E64173CC(v0[14]), (v43 & 1) != 0))
      {
        v44 = v0[14];
        v45 = v1;
        v46 = v0[12];
        v47 = v37;
        v49 = v0[6];
        v48 = v0[7];
        v50 = v0[4];
        v77 = *(v80 + 72);
        (*(v80 + 16))(v49, *(v45 + 56) + v77 * v42, v50);
        (*v39)(v44, v46);
        v51 = *(v80 + 32);
        v52 = v49;
        v37 = v47;
        v51(v48, v52, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1E64F6690(0, v47[2] + 1, 1, v47);
        }

        v54 = v37[2];
        v53 = v37[3];
        v0 = v68;
        v34 = v75;
        v38 = v71;
        if (v54 >= v53 >> 1)
        {
          v37 = sub_1E64F6690((v53 > 1), v54 + 1, 1, v37);
        }

        v55 = v68[7];
        v56 = v68[4];
        v37[2] = v54 + 1;
        result = (v51)(v37 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + v54 * v77, v55, v56);
        v1 = v66;
        v36 = v73;
        if (!--v40)
        {
LABEL_43:

          goto LABEL_44;
        }
      }

      else
      {
        result = (*v39)(v0[14], v0[12]);
        if (!--v40)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_44:

  if (v37[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
    sub_1E65DF4F8();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1E65EA670;
    v84 = v57;
    sub_1E65DF4C8();
  }

  else
  {

    v84 = MEMORY[0x1E69E7CC0];
  }

  v58 = v0[1];

  return v58(v84);
}

uint64_t sub_1E60B3DAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60B3EA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65D7F58();
  *a1 = result;
  return result;
}

uint64_t sub_1E60B3ED0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v7 = sub_1E65D7848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E6140BB8(a2, a3, v10, x8_0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E60B3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074548, &qword_1E65F0D38);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v4[12] = v6;
  v4[13] = *(v6 + 64);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B4160, 0, 0);
}

uint64_t sub_1E60B4160()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v13 = v4;
  v6 = sub_1E65E60A8();
  v14 = *(*(v6 - 8) + 56);
  v14(v1, 1, 1, v6);
  sub_1E5E1D41C(v4, v2, type metadata accessor for AppComposer);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  sub_1E5E1E0B0(v2, v8 + v7, type metadata accessor for AppComposer);

  sub_1E62301E8(v1, &unk_1E65F0D48, v8);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  v14(v1, 1, 1, v6);
  sub_1E5E1D41C(v13, v2, type metadata accessor for AppComposer);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  sub_1E5E1E0B0(v2, v9 + v7, type metadata accessor for AppComposer);

  sub_1E62301E8(v1, &unk_1E65F0D58, v9);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  v0[2] = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074540, &qword_1E65F0D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6168();
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1E60B4444;
  v11 = v0[9];

  return MEMORY[0x1EEE6DAD8](v0 + 3, 0, 0, v11, v0 + 4);
}

uint64_t sub_1E60B4444()
{

  if (v0)
  {

    v1 = sub_1E60B46A0;
  }

  else
  {
    v1 = sub_1E60B455C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E60B455C()
{
  v1 = v0[3];
  if (v1)
  {
    sub_1E60B5C00(v1);
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_1E60B4444;
    v3 = v0[9];

    return MEMORY[0x1EEE6DAD8](v0 + 3, 0, 0, v3, v0 + 4);
  }

  else
  {
    v4 = v0[5];
    (*(v0[10] + 8))(v0[11], v0[9]);
    *v4 = v0[2];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1E60B46A0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E60B473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65DF3B8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for ItemContext(0);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for LibraryItemContext(0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_1E65D9CC8();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B493C, 0, 0);
}

uint64_t sub_1E60B493C()
{
  v1 = *(v0 + 24);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 24) + 32);
  v7 = *(v0 + 48);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v8 = v5 & v2;
  v9 = (63 - v6) >> 6;
  v48 = *(v0 + 144);
  v45 = (v7 + 32);
  v46 = (v48 + 8);
  v42 = *(v0 + 112);
  v43 = (v42 + 32);
  v44 = (v7 + 8);
  v47 = *(v0 + 24);

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v11;
    *(v0 + 160) = v12;
    if (!v8)
    {
      break;
    }

LABEL_9:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v48 + 16))(*(v0 + 152), *(v47 + 48) + *(v48 + 72) * (v15 | (v11 << 6)), *(v0 + 136));
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      sub_1E5E1E0B0(*(v0 + 72), v16, type metadata accessor for LibraryItemContext);
      sub_1E5E1D41C(v16, v17, type metadata accessor for LibraryItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v45)(*(v0 + 56), *(v0 + 88), *(v0 + 40));
        v18 = sub_1E65DF388();
        if (sub_1E62DFD64(v18, &unk_1F5FA8490))
        {
          sub_1E65DF378();
          sub_1E65DF388();
          v38 = *(v0 + 136);
          v39 = *(v0 + 152);
          v25 = *(v0 + 120);
          v40 = *(v0 + 104);
          v41 = *(v0 + 128);
          v37 = *(v0 + 96);
          v26 = *(v0 + 56);
          v27 = *(v0 + 40);
          sub_1E65D9C88();
          (*v44)(v26, v27);
          sub_1E60C3430(v37, type metadata accessor for LibraryItemContext);
          (*v46)(v39, v38);
          v28 = *v43;
          (*v43)(v41, v25, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1E64F610C(0, v12[2] + 1, 1, v12);
          }

          v30 = v12[2];
          v29 = v12[3];
          if (v30 >= v29 >> 1)
          {
            v12 = sub_1E64F610C((v29 > 1), v30 + 1, 1, v12);
          }

          v31 = *(v0 + 128);
          v32 = *(v0 + 104);
          v12[2] = v30 + 1;
          result = v28(v12 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v30, v31, v32);
        }

        else
        {
          v19 = *(v0 + 152);
          v20 = *(v0 + 136);
          v21 = *(v0 + 96);
          (*v44)(*(v0 + 56), *(v0 + 40));
          sub_1E60C3430(v21, type metadata accessor for LibraryItemContext);
          result = (*v46)(v19, v20);
        }
      }

      else
      {
        v22 = *(v0 + 152);
        v23 = *(v0 + 136);
        v24 = *(v0 + 88);
        sub_1E60C3430(*(v0 + 96), type metadata accessor for LibraryItemContext);
        (*v46)(v22, v23);
        result = sub_1E60C3430(v24, type metadata accessor for LibraryItemContext);
      }
    }

    else
    {
      v13 = *(v0 + 72);
      (*v46)(*(v0 + 152), *(v0 + 136));
      result = sub_1E60C3430(v13, type metadata accessor for ItemContext);
    }
  }

  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v3 + 8 * v11);
    ++v14;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (v12[2])
  {
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v33 = CatalogService.fetchRemoteCatalogLockups.getter();
    *(v0 + 168) = v34;
    v49 = (v33 + *v33);
    v35 = swift_task_alloc();
    *(v0 + 176) = v35;
    *v35 = v0;
    v35[1] = sub_1E60B4F40;

    return (v49)(20, v12);
  }

  else
  {

    **(v0 + 16) = MEMORY[0x1E69E7CD0];

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1E60B4F40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1E60B5154;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_1E60B5078;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60B5078()
{
  v1 = sub_1E600BEE0(*(v0 + 192));

  **(v0 + 16) = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E60B5154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60B5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65DF3B8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for ItemContext(0);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for LibraryItemContext(0);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B53D4, 0, 0);
}

uint64_t sub_1E60B53D4()
{
  v1 = v0[16];
  v54 = v0[12];
  v2 = v0[3];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[3] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = 63 - v7;
  v10 = v0[6];
  v11 = v9 >> 6;
  v58 = (v1 + 8);
  v55 = (v10 + 8);
  v56 = (v10 + 32);
  v59 = v0[3];

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v57 = v14;
  v0[18] = v14;
  while (1)
  {
    v16 = v13;
    if (!v8)
    {
      break;
    }

LABEL_10:
    v17 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v1 + 16))(v0[17], *(v59 + 48) + *(v1 + 72) * (v17 | (v13 << 6)), v0[15]);
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v19 = v0[13];
      v18 = v0[14];
      sub_1E5E1E0B0(v0[10], v18, type metadata accessor for LibraryItemContext);
      sub_1E5E1D41C(v18, v19, type metadata accessor for LibraryItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *v56;
        (*v56)(v0[8], v0[13], v0[5]);
        sub_1E65DF388();
        v21 = sub_1E65DF528();
        v23 = v22;
        if (v21 == sub_1E65DF528() && v23 == v24)
        {

LABEL_18:
          sub_1E5E1D41C(v0[14], v0[12], type metadata accessor for LibraryItemContext);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v33 = v0[17];
          v35 = v0[14];
          v34 = v0[15];
          if (EnumCaseMultiPayload == 1)
          {
            v52 = v0[15];
            v53 = v0[17];
            v36 = v0[7];
            v37 = v0[5];
            v51 = v0[8];
            v20(v36, v0[12], v37);
            v38 = sub_1E65DF378();
            v49 = v39;
            v50 = v38;
            v40 = *v55;
            (*v55)(v36, v37);
            v41 = v37;
            v42 = v50;
            v40(v51, v41);
            v43 = v49;
            sub_1E60C3430(v35, type metadata accessor for LibraryItemContext);
            (*v58)(v53, v52);
          }

          else
          {
            v44 = v0[12];
            (*v55)(v0[8], v0[5]);
            sub_1E60C3430(v35, type metadata accessor for LibraryItemContext);
            (*v58)(v33, v34);
            v42 = *v44;
            v43 = *(v54 + 8);
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1E64F6718(0, *(v57 + 16) + 1, 1, v57);
            v57 = result;
          }

          v46 = *(v57 + 16);
          v45 = *(v57 + 24);
          if (v46 >= v45 >> 1)
          {
            result = sub_1E64F6718((v45 > 1), v46 + 1, 1, v57);
            v57 = result;
          }

          *(v57 + 16) = v46 + 1;
          v47 = v57 + 16 * v46;
          *(v47 + 32) = v42;
          *(v47 + 40) = v43;
          v14 = v57;
          goto LABEL_4;
        }

        v25 = sub_1E65E6C18();

        if (v25)
        {
          goto LABEL_18;
        }

        v26 = v0[17];
        v28 = v0[14];
        v27 = v0[15];
        (*v55)(v0[8], v0[5]);
        sub_1E60C3430(v28, type metadata accessor for LibraryItemContext);
        result = (*v58)(v26, v27);
      }

      else
      {
        v29 = v0[17];
        v30 = v0[15];
        v31 = v0[13];
        sub_1E60C3430(v0[14], type metadata accessor for LibraryItemContext);
        (*v58)(v29, v30);
        result = sub_1E60C3430(v31, type metadata accessor for LibraryItemContext);
      }
    }

    else
    {
      v15 = v0[10];
      (*v58)(v0[17], v0[15]);
      result = sub_1E60C3430(v15, type metadata accessor for ItemContext);
    }
  }

  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v11)
    {
      break;
    }

    v8 = *(v4 + 8 * v13);
    ++v16;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v48 = swift_task_alloc();
  v0[19] = v48;
  *v48 = v0;
  v48[1] = sub_1E60B594C;

  return sub_1E60AE8FC(v57);
}

uint64_t sub_1E60B594C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1E60B5B3C;
  }

  else
  {

    *(v4 + 168) = a1;
    v5 = sub_1E60B5A7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60B5A7C()
{
  **(v0 + 16) = *(v0 + 168);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60B5B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60B5C00(uint64_t a1)
{
  v2 = sub_1E65D8258();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_1E60F4CC8(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E60B5E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v188 = a3;
  v220 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v167 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v201 = &v167 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v199 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v209 = &v167 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v208 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v218 = &v167 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v200 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v219 = &v167 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v183 = &v167 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v181 = &v167 - v26;
  v180 = sub_1E65DAC98();
  v178 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v175 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v182);
  v176 = &v167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1E65DA0B8();
  v177 = *(v179 - 8);
  v29 = MEMORY[0x1EEE9AC00](v179);
  v174 = &v167 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v193 = &v167 - v31;
  v173 = sub_1E65D9D58();
  v172 = *(v173 - 8);
  v32 = MEMORY[0x1EEE9AC00](v173);
  v171 = &v167 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v167 - v34;
  v189 = sub_1E65D8BB8();
  v35 = MEMORY[0x1EEE9AC00](v189);
  v190 = &v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v202 = &v167 - v37;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v38 = MEMORY[0x1EEE9AC00](v192);
  v191 = &v167 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v217 = (&v167 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v204 = &v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v211 = (&v167 - v45);
  MEMORY[0x1EEE9AC00](v44);
  v216 = &v167 - v46;
  v225 = sub_1E65D72D8();
  v215 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v224 = &v167 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v186 = &v167 - v49;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v184 = *(v185 - 1);
  MEMORY[0x1EEE9AC00](v185);
  v51 = &v167 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = &v167 - v53;
  v207 = sub_1E65D9AC8();
  v223 = *(v207 - 8);
  v55 = MEMORY[0x1EEE9AC00](v207);
  v187 = &v167 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v210 = &v167 - v57;
  v198 = sub_1E65D7848();
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v221 = &v167 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for ItemContext(0);
  v59 = MEMORY[0x1EEE9AC00](v194);
  v205 = &v167 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v214 = &v167 - v61;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v213 = &v167 - v62;
  v63 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v63);
  v212 = &v167 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v65 = *(v206 - 8);
  v66 = MEMORY[0x1EEE9AC00](v206);
  v68 = &v167 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v203 = &v167 - v69;
  v222 = a1;
  v70 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v72 = a2;
  v169 = v8;
  v73 = sub_1E6215038(v70, v71);
  v75 = v74;

  if ((v75 & 1) == 0)
  {
LABEL_7:
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v87 - 8) + 56))(v220, 1, 1, v87);
  }

  v76 = *(v72 + 56) + *(v65 + 72) * v73;
  v77 = *(v65 + 16);
  v78 = v65;
  v79 = v206;
  v77(v68, v76, v206);
  v168 = v78;
  (*(v78 + 32))(v203, v68, v79);
  sub_1E65E0A68();
  swift_storeEnumTagMultiPayload();
  v80 = v188;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  v188 = v80 + *(type metadata accessor for AppComposer(0) + 20);
  v229 = *(v188 + 8);
  swift_getKeyPath();
  v81 = v221;
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v82 = v186;
  v83 = v185;
  sub_1E65E4C98();
  sub_1E60EEE88(v54);
  sub_1E5DFE50C(v82, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v184 + 8))(v51, v83);
  v84 = v223;
  v85 = *(v223 + 48);
  v86 = v207;
  if (v85(v54, 1, v207) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v85(v54, 1, v86) != 1)
    {
      sub_1E5DFE50C(v54, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v84 + 32))(v210, v54, v86);
  }

  v89 = *(type metadata accessor for AppEnvironment(0) + 136);
  v90 = sub_1E5F9B6D0(&unk_1F5FA84B8);
  v91 = sub_1E65D8248();
  sub_1E63C4134(v81, (v188 + v89), v91, v224);

  v92 = sub_1E65D80A8();
  v93 = sub_1E65D9AA8();
  v95 = v94;
  v96 = v187;
  MEMORY[0x1E6941490]();
  v97 = sub_1E65D9AA8();
  v99 = v98;
  v100 = *(v223 + 8);
  v223 += 8;
  v187 = v100;
  (v100)(v96, v86);
  if (v93 == v97 && v95 == v99)
  {
  }

  else
  {
    v101 = sub_1E65E6C18();

    if ((v101 & 1) == 0)
    {
      v102 = sub_1E65D8198();
      v103 = sub_1E65D9AA8();
      v105 = sub_1E637CA94(v103, v104, v102);

      if (v105)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v106 = *(sub_1E65DADF8() - 8);
        v107 = *(v106 + 72);
        v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_1E65EB9E0;
        v110 = (v109 + v108);
        *v110 = sub_1E65D9AA8();
        v110[1] = v111;
        swift_storeEnumTagMultiPayload();
        *(v110 + v107) = 1;
        swift_storeEnumTagMultiPayload();
        v112 = sub_1E65D80A8();
        v226 = v109;
        sub_1E5FA9E2C(v112);
        v92 = v226;
      }
    }
  }

  v113 = *(sub_1E65D8068() + 16);

  v114 = v216;
  if (v113)
  {
    v115 = sub_1E65D8068();
    sub_1E63C4134(v221, (v188 + v89), v115, v114);

    v116 = 0;
  }

  else
  {
    v116 = 1;
  }

  v186 = v92;
  v117 = v215 + 56;
  v184 = *(v215 + 56);
  (v184)(v114, v116, 1, v225);
  v185 = sub_1E63B0704(v90);

  v118 = v202;
  sub_1E65D8128();
  v119 = v118;
  v120 = v190;
  sub_1E5E1D41C(v119, v190, MEMORY[0x1E69CB950]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v121 = v177;
    v122 = *(v177 + 32);
    v123 = v193;
    v189 = v117;
    v124 = v179;
    v122(v193, v120, v179);
    v125 = v174;
    (*(v121 + 16))(v174, v123, v124);
    v126 = v175;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    v190 = v89;
    sub_1E65DB248();
    (*(v178 + 8))(v126, v180);
    sub_1E65DA0A8();
    sub_1E60C330C(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    v127 = v191;
    v89 = v190;
    sub_1E65DC438();
    v128 = *(v121 + 8);
    v128(v125, v124);
    v128(v193, v124);
  }

  else
  {
    v129 = v172;
    v130 = v170;
    v131 = v120;
    v132 = v173;
    (*(v172 + 32))(v170, v131, v173);
    v133 = v171;
    (*(v129 + 16))(v171, v130, v132);
    v127 = v191;
    sub_1E6134678(v133, v191);
    (*(v129 + 8))(v130, v132);
  }

  sub_1E60C3430(v202, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v127, v217, &qword_1ED074530, &qword_1E65F0CA8);
  v134 = sub_1E65D81E8();
  v137 = v186;
  if (v136 == -1)
  {
    v141 = 4;
  }

  else
  {
    v226 = v134;
    v227 = v135;
    v228 = v136 & 1;
    v138 = v134;
    v139 = v135;
    v140 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v138, v139, v140);
    v141 = v230;
  }

  LODWORD(v193) = v141;
  v142 = v184;
  v143 = v211;
  v144 = v225;
  (*(v215 + 16))(v211, v224, v225);
  v145 = 1;
  v142(v143, 0, 1, v144);
  sub_1E65D8158();
  v146 = v204;
  if (*(v137 + 16))
  {
    sub_1E63C4134(v221, (v188 + v89), v137, v204);
    v145 = 0;
  }

  v142(v146, v145, 1, v225);
  sub_1E65D8178();
  v147 = type metadata accessor for ActionButtonDescriptor(0);
  v202 = v147;
  v148 = *(*(v147 - 8) + 56);
  v149 = v209;
  v148(v209, 1, 1, v147);
  v150 = v199;
  v148(v199, 1, 1, v147);
  v151 = sub_1E65D8088();
  v153 = v152;
  v192 = v152;
  v154 = sub_1E65D80C8();
  v156 = v155;
  v158 = v157;
  v159 = sub_1E65D81B8();
  v158 &= 1u;
  v166 = v153;
  v165 = v149;
  v160 = v204;
  v161 = v208;
  sub_1E63A0574(v213, v217, v185, v193, v211, v218, v204, v208, v219, v216, v229, v165, v150, v151, v166, v154, v156, v158, v159, v162, 7u);

  sub_1E5F87058(v154, v156, v158);

  sub_1E5DFE50C(v150, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v209, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v161, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v160, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v218, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v211, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1D41C(v214, v205, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v219, v200, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v201);
  sub_1E622BB88(v224, v169);
  v222 = type metadata accessor for ArtworkDescriptor(0);
  v218 = type metadata accessor for ContextMenu(0);
  v211 = type metadata accessor for ItemMetrics(0);
  v209 = type metadata accessor for ViewDescriptor(0);
  v208 = sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E60C330C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E60C330C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E60C330C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v163 = v220;
  sub_1E65E0488();
  sub_1E5DFE50C(v219, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v217, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v216, &qword_1ED072D90, &qword_1E66040F0);
  (*(v215 + 8))(v224, v225);
  (v187)(v210, v207);
  (*(v197 + 8))(v221, v198);
  sub_1E60C3430(v214, type metadata accessor for ItemContext);
  (*(v195 + 8))(v213, v196);
  sub_1E60C3430(v212, MEMORY[0x1E699D780]);
  (*(v168 + 8))(v203, v206);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v164 - 8) + 56))(v163, 0, 1, v164);
}

uint64_t sub_1E60B79AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743F0, &qword_1E65F0B08);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v4[11] = v6;
  v4[12] = *(v6 + 64);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B7B14, 0, 0);
}

uint64_t sub_1E60B7B14()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[6];
  v5 = v0[7];
  v7 = sub_1E65E60A8();
  v8 = *(*(v7 - 8) + 56);
  v9 = v7;
  v8(v1, 1, 1);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v19 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1E5E1E0B0(v2, v11 + v19, type metadata accessor for AppComposer);
  *(v11 + v10) = v5;

  sub_1E62301FC(v1, &unk_1E65F0B18, v11);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  (v8)(v1, 1, 1, v9);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_1E5E1E0B0(v2, v12 + v19, type metadata accessor for AppComposer);
  *(v12 + v10) = v5;

  sub_1E62301FC(v1, &unk_1E65F0B28, v12);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  (v8)(v1, 1, 1, v9);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1E5E1E0B0(v2, v13 + v19, type metadata accessor for AppComposer);
  sub_1E62301FC(v1, &unk_1E65F0B38, v13);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  (v8)(v1, 1, 1, v9);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1E5E1E0B0(v2, v14 + v19, type metadata accessor for AppComposer);
  sub_1E62301FC(v1, &unk_1E65F0B48, v14);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  (v8)(v1, 1, 1, v9);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1E5E1E0B0(v2, v15 + v19, type metadata accessor for AppComposer);
  *(v15 + v10) = v5;

  sub_1E62301FC(v1, &unk_1E65F0B58, v15);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E8, &qword_1E65F0AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6168();
  v0[15] = MEMORY[0x1E69E7CC8];
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_1E60B8020;
  v17 = v0[8];

  return MEMORY[0x1EEE6DAD8](v0 + 2, 0, 0, v17, v0 + 3);
}

uint64_t sub_1E60B8020()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_1E60B82D0;
  }

  else
  {
    v2 = sub_1E60B813C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60B813C()
{
  v11 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[15];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2;
    sub_1E60C0120(v1, sub_1E60BAE80, 0, isUniquelyReferenced_nonNull_native, &v10);

    v0[15] = v10;
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_1E60B8020;
    v5 = v0[8];

    return MEMORY[0x1EEE6DAD8](v0 + 2, 0, 0, v5, v0 + 3);
  }

  else
  {
    v6 = v0[15];
    v7 = v0[4];
    (*(v0[9] + 8))(v0[10], v0[8]);
    *v7 = v6;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E60B82D0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E60B836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65DF3B8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_1E65D76A8();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_1E65DADD8();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_1E65D8438();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B8550, 0, 0);
}

uint64_t sub_1E60B8550()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer(0) + 20);
  type metadata accessor for AppEnvironment(0);
  v3 = BookmarkService.filterBookmarks.getter();
  v0[18] = v4;
  v5 = &unk_1F5FA7FD0;
  if (*(v2 + 8) > 1u)
  {
    if (*(v2 + 8) == 2)
    {
      return sub_1E65E69D8();
    }
  }

  else if (!*(v2 + 8))
  {
    v5 = &unk_1F5FA7FA8;
  }

  v7 = v0[4];
  v8 = sub_1E5F9B388(v5);
  v9 = sub_1E60A23CC(v8, sub_1E601C638, 1);

  v10 = sub_1E60A23CC(v7, sub_1E601C638, 0);
  sub_1E5FA9FA8(v10);
  sub_1E600BD90(v9);

  sub_1E65D8428();
  v13 = (v3 + *v3);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_1E60B87B0;
  v12 = v0[17];

  return v13(v12);
}

uint64_t sub_1E60B87B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 120);
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_1E60C3494;
  }

  else
  {
    v7 = sub_1E60C3498;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60B8948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65DF3B8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = sub_1E65D76A8();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_1E65DADD8();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_1E65D8438();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B8B2C, 0, 0);
}

uint64_t sub_1E60B8B2C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.filterBookmarks.getter();
  v0[18] = v2;
  if (qword_1ED071890 != -1)
  {
    swift_once();
  }

  v3 = v0[4];

  v5 = sub_1E60A23CC(v4, sub_1E601C638, 1);

  v6 = sub_1E60A23CC(v3, sub_1E601C638, 0);
  sub_1E5FA9FA8(v6);
  sub_1E600BD90(v5);

  sub_1E65D8428();
  v10 = (v1 + *v1);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_1E60B8D30;
  v8 = v0[17];

  return v10(v8);
}

uint64_t sub_1E60B8D30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 120);
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_1E60B9314;
  }

  else
  {
    v7 = sub_1E60B8EC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

unint64_t sub_1E60B8EC8()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[6];
  v5 = sub_1E6427FF0(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v48 = (v4 + 32);
  v39 = v3;
  v45 = v2;
  v46 = v1;
  v42 = (v2 + 8);
  v43 = (v3 + 8);
  v44 = v4;

  v12 = 0;
  v40 = v10;
  v41 = v1 + 56;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v14 = v0[11];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[5];
    (*(v45 + 16))(v0[14], *(v46 + 48) + *(v45 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v0[12]);
    sub_1E65DAD88();
    sub_1E65DADA8();
    sub_1E65DF368();
    v18 = *v48;
    (*v48)(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v5;
    result = sub_1E64173CC(v14);
    v21 = v5[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v25 = v20;
    v47 = v18;
    if (v5[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = result;
        sub_1E6424BA8();
        result = v36;
        v5 = v50;
      }
    }

    else
    {
      v26 = v0[11];
      sub_1E641BEB0(v24, isUniquelyReferenced_nonNull_native);
      result = sub_1E64173CC(v26);
      if ((v25 & 1) != (v27 & 1))
      {

        return sub_1E65E6C68();
      }
    }

    v9 &= v9 - 1;
    v28 = v0[14];
    v29 = v0[11];
    v49 = v0[12];
    v30 = v0[9];
    v31 = v0[7];
    v32 = v0[5];
    if (v25)
    {
      (*(v44 + 40))(v5[7] + *(v44 + 72) * result, v0[7], v0[5]);
      (*v43)(v29, v30);
      result = (*v42)(v28, v49);
    }

    else
    {
      v5[(result >> 6) + 8] |= 1 << result;
      v33 = result;
      (*(v39 + 16))(v5[6] + *(v39 + 72) * result, v29, v30);
      v47(v5[7] + *(v44 + 72) * v33, v31, v32);
      (*(v39 + 8))(v29, v30);
      result = (*v42)(v28, v49);
      v34 = v5[2];
      v23 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v5[2] = v35;
    }

    v12 = v13;
    v10 = v40;
    v6 = v41;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[2];

  *v37 = v5;

  v38 = v0[1];

  return v38();
}

uint64_t sub_1E60B9314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60B93AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_1E65DF3B8();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = sub_1E65D76A8();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_1E65DADD8();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B9530, 0, 0);
}

uint64_t sub_1E60B9530()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.queryBookmarksByReferenceTypes.getter();
  v0[14] = v2;
  v3 = sub_1E5F9B84C(&unk_1F5FA84E0);
  v0[15] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E60B966C;

  return v6(v3);
}

uint64_t sub_1E60B966C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_1E60B9BD0;
  }

  else
  {

    v4 = sub_1E60B9790;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1E60B9790()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[5];
  v5 = sub_1E6427FF0(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v48 = (v4 + 32);
  v39 = v3;
  v45 = v2;
  v46 = v1;
  v42 = (v2 + 8);
  v43 = (v3 + 8);
  v44 = v4;

  v12 = 0;
  v40 = v10;
  v41 = v1 + 56;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v14 = v0[10];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[4];
    (*(v45 + 16))(v0[13], *(v46 + 48) + *(v45 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v0[11]);
    sub_1E65DAD88();
    sub_1E65DADA8();
    sub_1E65DF368();
    v18 = *v48;
    (*v48)(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v5;
    result = sub_1E64173CC(v14);
    v21 = v5[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v25 = v20;
    v47 = v18;
    if (v5[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = result;
        sub_1E6424BA8();
        result = v36;
        v5 = v50;
      }
    }

    else
    {
      v26 = v0[10];
      sub_1E641BEB0(v24, isUniquelyReferenced_nonNull_native);
      result = sub_1E64173CC(v26);
      if ((v25 & 1) != (v27 & 1))
      {

        return sub_1E65E6C68();
      }
    }

    v9 &= v9 - 1;
    v28 = v0[13];
    v29 = v0[10];
    v49 = v0[11];
    v30 = v0[8];
    v31 = v0[6];
    v32 = v0[4];
    if (v25)
    {
      (*(v44 + 40))(v5[7] + *(v44 + 72) * result, v0[6], v0[4]);
      (*v43)(v29, v30);
      result = (*v42)(v28, v49);
    }

    else
    {
      v5[(result >> 6) + 8] |= 1 << result;
      v33 = result;
      (*(v39 + 16))(v5[6] + *(v39 + 72) * result, v29, v30);
      v47(v5[7] + *(v44 + 72) * v33, v31, v32);
      (*(v39 + 8))(v29, v30);
      result = (*v42)(v28, v49);
      v34 = v5[2];
      v23 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v5[2] = v35;
    }

    v12 = v13;
    v10 = v40;
    v6 = v41;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[2];

  *v37 = v5;

  v38 = v0[1];

  return v38();
}

uint64_t sub_1E60B9BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60B9C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_1E65DF3B8();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = sub_1E65D76A8();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_1E65DADD8();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B9DFC, 0, 0);
}

uint64_t sub_1E60B9DFC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = BookmarkService.queryBookmarksByReferenceTypes.getter();
  v0[14] = v2;
  v3 = sub_1E5F9B84C(&unk_1F5FA8508);
  v0[15] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E60B9F38;

  return v6(v3);
}

uint64_t sub_1E60B9F38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_1E60C3490;
  }

  else
  {

    v4 = sub_1E60BA05C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1E60BA05C()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[5];
  v5 = sub_1E6427FF0(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v48 = (v4 + 32);
  v39 = v3;
  v45 = v2;
  v46 = v1;
  v42 = (v2 + 8);
  v43 = (v3 + 8);
  v44 = v4;

  v12 = 0;
  v40 = v10;
  v41 = v1 + 56;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v14 = v0[10];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[4];
    (*(v45 + 16))(v0[13], *(v46 + 48) + *(v45 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v0[11]);
    sub_1E65DAD88();
    sub_1E65DADA8();
    sub_1E65DF368();
    v18 = *v48;
    (*v48)(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v5;
    result = sub_1E64173CC(v14);
    v21 = v5[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v25 = v20;
    v47 = v18;
    if (v5[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = result;
        sub_1E6424BA8();
        result = v36;
        v5 = v50;
      }
    }

    else
    {
      v26 = v0[10];
      sub_1E641BEB0(v24, isUniquelyReferenced_nonNull_native);
      result = sub_1E64173CC(v26);
      if ((v25 & 1) != (v27 & 1))
      {

        return sub_1E65E6C68();
      }
    }

    v9 &= v9 - 1;
    v28 = v0[13];
    v29 = v0[10];
    v49 = v0[11];
    v30 = v0[8];
    v31 = v0[6];
    v32 = v0[4];
    if (v25)
    {
      (*(v44 + 40))(v5[7] + *(v44 + 72) * result, v0[6], v0[4]);
      (*v43)(v29, v30);
      result = (*v42)(v28, v49);
    }

    else
    {
      v5[(result >> 6) + 8] |= 1 << result;
      v33 = result;
      (*(v39 + 16))(v5[6] + *(v39 + 72) * result, v29, v30);
      v47(v5[7] + *(v44 + 72) * v33, v31, v32);
      (*(v39 + 8))(v29, v30);
      result = (*v42)(v28, v49);
      v34 = v5[2];
      v23 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v5[2] = v35;
    }

    v12 = v13;
    v10 = v40;
    v6 = v41;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[2];

  *v37 = v5;

  v38 = v0[1];

  return v38();
}

uint64_t sub_1E60BA49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = sub_1E65DF3B8();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = sub_1E65D76A8();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_1E65DAEB8();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = sub_1E65D86C8();
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60BA680, 0, 0);
}

uint64_t sub_1E60BA680()
{
  v1 = v0[5];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = BookmarkService.filterPlaylists.getter();
  v0[19] = v3;
  v4 = sub_1E60A219C(v1);
  sub_1E600AAA0(v4);

  sub_1E65D86B8();
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1E60BA7E8;
  v6 = v0[18];

  return v8(v6);
}

uint64_t sub_1E60BA7E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 128);
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {
    v7 = sub_1E60BADE8;
  }

  else
  {
    v7 = sub_1E60BA980;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

unint64_t sub_1E60BA980()
{
  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[7];
  v5 = sub_1E6427FF0(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v45 = v4;
  v47 = v1;
  v48 = (v4 + 32);
  v42 = (v3 + 8);
  v46 = v2;
  v40 = v3;
  v41 = (v2 + 8);

  v12 = 0;
  v43 = v1 + 56;
  v44 = v10;
  while (v9)
  {
LABEL_11:
    v16 = v0[12];
    v17 = v0[9];
    v49 = v0[8];
    v50 = v0[6];
    (*(v46 + 16))(v0[15], *(v47 + 48) + *(v46 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v0[13]);
    sub_1E65DAE58();
    sub_1E65DAE48();
    sub_1E65DAE78();
    MEMORY[0x1E694D7C0](45, 0xE100000000000000);
    v18 = *(sub_1E65DAE88() + 16);

    v0[2] = v18;
    v19 = sub_1E65E6BC8();
    MEMORY[0x1E694D7C0](v19);

    sub_1E65DF368();
    v20 = *v48;
    (*v48)(v49, v17, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1E64173CC(v16);
    v23 = v5[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v27 = v22;
    if (v5[3] < v26)
    {
      v28 = v0[12];
      sub_1E641BEB0(v26, isUniquelyReferenced_nonNull_native);
      result = sub_1E64173CC(v28);
      if ((v27 & 1) != (v29 & 1))
      {

        return sub_1E65E6C68();
      }

LABEL_16:
      v10 = v44;
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v37 = result;
    sub_1E6424BA8();
    result = v37;
    v10 = v44;
    if (v27)
    {
LABEL_4:
      (*(v45 + 40))(v5[7] + *(v45 + 72) * result, v0[8], v0[6]);
      goto LABEL_5;
    }

LABEL_17:
    v30 = v0[12];
    v31 = v0[10];
    v32 = v0[8];
    v33 = v0[6];
    v5[(result >> 6) + 8] |= 1 << result;
    v34 = result;
    (*(v40 + 16))(v5[6] + *(v40 + 72) * result, v30, v31);
    result = v20(v5[7] + *(v45 + 72) * v34, v32, v33);
    v35 = v5[2];
    v25 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v25)
    {
      goto LABEL_29;
    }

    v5[2] = v36;
LABEL_5:
    v9 &= v9 - 1;
    v13 = v0[15];
    v14 = v0[13];
    (*v42)(v0[12], v0[10]);
    result = (*v41)(v13, v14);
    v6 = v43;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_11;
    }
  }

  v38 = v0[3];

  *v38 = v5;

  v39 = v0[1];

  return v39();
}

uint64_t sub_1E60BADE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60BAE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E0, &qword_1E65F0AE8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074400, &qword_1E65F0B68) + 48);
  v6 = sub_1E65D76A8();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = sub_1E65DF3B8();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v5, a1 + v4, v7);
}

uint64_t sub_1E60BAF60(uint64_t *a1)
{
  v2 = *(sub_1E65D76A8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B230(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E60BB1F8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E60BB008(uint64_t *a1)
{
  v2 = *(sub_1E65D7B58() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B244(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E60BB324(v6, MEMORY[0x1E69CB020], MEMORY[0x1E69CB020], MEMORY[0x1E69CAFF8], sub_1E636AC88);
  *a1 = v3;
  return result;
}

uint64_t sub_1E60BB100(uint64_t *a1)
{
  v2 = *(sub_1E65DADD8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B258(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E60BB324(v6, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2B0], sub_1E636ACA0);
  *a1 = v3;
  return result;
}

uint64_t sub_1E60BB1F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E65D76A8();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E65D76A8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E60BBB20(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E60BB49C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E60BB324(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void (*a5)(unint64_t *, unint64_t *, unint64_t *))
{
  v10 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v14 = sub_1E65E5F98();
        *(v14 + 16) = v13;
      }

      v15 = *(a2(0) - 8);
      v16[0] = v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v16[1] = v13;
      sub_1E60BC548(v16, v17, a1, v12, a3, a4, a3, a4, a5);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return sub_1E60BB760(0, v10, 1, a1, a3, a4);
  }

  return result;
}

uint64_t sub_1E60BB49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65D76A8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v26 = sub_1E65E5B78();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E60BB760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v67 = a6;
  v66 = sub_1E65D76A8();
  v11 = *(v66 - 8);
  v12 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v47[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v47[-v14];
  v15 = a5(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v57 = &v47[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v47[-v19];
  result = MEMORY[0x1EEE9AC00](v18);
  v62 = &v47[-v22];
  v49 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v25 = *(v21 + 16);
    v24 = v21 + 16;
    v26 = *(v24 + 56);
    v59 = (v11 + 8);
    v60 = v25;
    v58 = (v24 - 8);
    v61 = v24;
    v27 = v23 + v26 * (a3 - 1);
    v54 = -v26;
    v55 = (v24 + 16);
    v28 = a1 - a3;
    v56 = v23;
    v48 = v26;
    v29 = v23 + v26 * a3;
    v30 = v62;
LABEL_5:
    v52 = v27;
    v53 = a3;
    v50 = v29;
    v51 = v28;
    v68 = v28;
    while (1)
    {
      v31 = v60;
      v60(v30, v29, v15);
      v32 = v15;
      v33 = v63;
      v34 = v31(v63, v27, v32);
      v35 = v64;
      v36 = v67;
      v37 = (v67)(v34);
      v38 = v65;
      v36(v37);
      v69 = sub_1E65D7658();
      v39 = *v59;
      v40 = v38;
      v41 = v66;
      (*v59)(v40, v66);
      v39(v35, v41);
      v42 = *v58;
      v43 = v33;
      v15 = v32;
      (*v58)(v43, v32);
      result = v42(v30, v32);
      if ((v69 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v27 = v52 + v48;
        v28 = v51 - 1;
        v29 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v29, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v44(v27, v45, v32);
      v27 += v54;
      v29 += v54;
      if (__CFADD__(v68++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E60BBB20(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1E65D76A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E636AC44(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1E60BD18C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1E636AC44(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_1E636ABB8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      LODWORD(v133) = sub_1E65E5B78();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1E65E5B78() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1E636ADD0((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1E60BD18C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1E636AC44(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_1E636ABB8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v109 = sub_1E65E5B78();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E60BC548(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(void), void (*a8)(uint64_t), void (*a9)(unint64_t *, unint64_t *, unint64_t *))
{
  v150 = a8;
  v146 = a7;
  v167 = a6;
  v138 = a1;
  v149 = a9;
  v166 = sub_1E65D76A8();
  v12 = *(v166 - 8);
  v13 = MEMORY[0x1EEE9AC00](v166);
  v165 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v164 = &v137 - v15;
  v16 = (a5)(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v142 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v156 = &v137 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v163 = &v137 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v168 = &v137 - v25;
  v26 = a3[1];
  v151 = v24;
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_96:
    a5 = *v138;
    if (!*v138)
    {
      goto LABEL_136;
    }

    v12 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v12;
    }

    else
    {
LABEL_130:
      result = sub_1E636AC44(v12);
    }

    v170 = result;
    v12 = *(result + 16);
    if (v12 >= 2)
    {
      v131 = v146;
      while (*a3)
      {
        v132 = *(result + 16 * v12);
        v133 = result;
        v134 = *(result + 16 * (v12 - 1) + 40);
        v135 = v153;
        sub_1E60BD780(*a3 + *(v151 + 72) * v132, *a3 + *(v151 + 72) * *(result + 16 * (v12 - 1) + 32), *a3 + *(v151 + 72) * v134, a5, v131, v150, v149);
        v153 = v135;
        if (v135)
        {
        }

        if (v134 < v132)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_1E636AC44(v133);
        }

        if (v12 - 2 >= *(v133 + 2))
        {
          goto LABEL_124;
        }

        v136 = &v133[16 * v12];
        *v136 = v132;
        *(v136 + 1) = v134;
        v170 = v133;
        sub_1E636ABB8(v12 - 1);
        result = v170;
        v12 = *(v170 + 16);
        if (v12 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v27 = 0;
  v160 = (v12 + 8);
  v161 = v24 + 16;
  v158 = (v24 + 32);
  v159 = (v24 + 8);
  v28 = MEMORY[0x1E69E7CC0];
  v140 = a3;
  v137 = a4;
  v162 = v16;
  while (1)
  {
    v29 = v27;
    v143 = v28;
    if (v27 + 1 >= v26)
    {
      v46 = v27 + 1;
    }

    else
    {
      v152 = v26;
      v30 = *a3;
      v31 = *(v24 + 72);
      v157 = v31;
      v32 = *(v24 + 16);
      v33 = v30 + v31 * (v27 + 1);
      v32();
      v34 = v30 + v31 * v29;
      v35 = v163;
      v154 = v32;
      v36 = (v32)(v163, v34, v16);
      v139 = v29;
      v37 = v164;
      v38 = v167;
      v39 = (v167)(v36);
      v40 = v165;
      v38(v39);
      LODWORD(v155) = sub_1E65D7658();
      v41 = *v160;
      v12 = v166;
      (*v160)(v40, v166);
      v148 = v41;
      (v41)(v37, v12);
      v42 = *(v151 + 8);
      v43 = v35;
      a5 = v159;
      v42(v43, v16);
      v147 = v42;
      result = (v42)(v168, v16);
      v44 = v139 + 2;
      v45 = v30 + v157 * (v139 + 2);
      while (1)
      {
        v46 = v152;
        if (v152 == v44)
        {
          break;
        }

        v47 = v162;
        v48 = v154;
        v169 = v44;
        v154();
        v49 = v163;
        v50 = v48(v163, v33, v47);
        v51 = v164;
        v52 = v167;
        v53 = (v167)(v50);
        v54 = v165;
        v52(v53);
        v12 = sub_1E65D7658() & 1;
        v55 = v166;
        v56 = v148;
        (v148)(v54, v166);
        v56(v51, v55);
        a5 = v159;
        v57 = v147;
        v147(v49, v47);
        result = v57(v168, v47);
        v44 = v169 + 1;
        v45 += v157;
        v33 += v157;
        if ((v155 & 1) != v12)
        {
          v46 = v169;
          break;
        }
      }

      a3 = v140;
      v24 = v151;
      v28 = v143;
      a4 = v137;
      v16 = v162;
      v29 = v139;
      if (v155)
      {
        if (v46 < v139)
        {
          goto LABEL_127;
        }

        if (v139 < v46)
        {
          a5 = v157 * (v46 - 1);
          v58 = v46 * v157;
          v152 = v46;
          v59 = v46;
          v60 = v139 * v157;
          do
          {
            if (v29 != --v59)
            {
              v61 = *a3;
              if (!v61)
              {
                goto LABEL_133;
              }

              v12 = v61 + v60;
              v62 = *v158;
              (*v158)(v142, v61 + v60, v16, v28);
              if (v60 < a5 || v12 >= v61 + v58)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v60 != a5)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = v62(v61 + a5, v142, v16);
              a3 = v140;
              v28 = v143;
            }

            ++v29;
            a5 -= v157;
            v58 -= v157;
            v60 += v157;
          }

          while (v29 < v59);
          v24 = v151;
          v46 = v152;
          a4 = v137;
          v29 = v139;
        }
      }
    }

    v63 = a3[1];
    if (v46 < v63)
    {
      if (__OFSUB__(v46, v29))
      {
        goto LABEL_126;
      }

      if (v46 - v29 < a4)
      {
        if (__OFADD__(v29, a4))
        {
          goto LABEL_128;
        }

        if (v29 + a4 >= v63)
        {
          v64 = a3[1];
        }

        else
        {
          v64 = v29 + a4;
        }

        if (v64 < v29)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v46 != v64)
        {
          break;
        }
      }
    }

    v65 = v46;
    if (v46 < v29)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v28 = v143;
    }

    else
    {
      result = sub_1E636ADD0(0, *(v143 + 2) + 1, 1, v143);
      v28 = result;
    }

    a5 = *(v28 + 2);
    v66 = *(v28 + 3);
    v12 = a5 + 1;
    if (a5 >= v66 >> 1)
    {
      result = sub_1E636ADD0((v66 > 1), a5 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 2) = v12;
    v67 = &v28[16 * a5];
    *(v67 + 4) = v29;
    *(v67 + 5) = v65;
    v68 = *v138;
    if (!*v138)
    {
      goto LABEL_135;
    }

    v144 = v65;
    if (a5)
    {
      v69 = v68;
      while (1)
      {
        v70 = v12 - 1;
        if (v12 >= 4)
        {
          break;
        }

        if (v12 == 3)
        {
          v71 = *(v28 + 4);
          v72 = *(v28 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_53:
          if (v74)
          {
            goto LABEL_114;
          }

          v87 = &v28[16 * v12];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_117;
          }

          v93 = &v28[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_121;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v12 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v97 = &v28[16 * v12];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_67:
        if (v92)
        {
          goto LABEL_116;
        }

        v100 = &v28[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_119;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_74:
        a5 = v70 - 1;
        if (v70 - 1 >= v12)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v108 = v28;
        v12 = *&v28[16 * a5 + 32];
        v109 = *&v28[16 * v70 + 40];
        v110 = v153;
        sub_1E60BD780(*a3 + *(v151 + 72) * v12, *a3 + *(v151 + 72) * *&v28[16 * v70 + 32], *a3 + *(v151 + 72) * v109, v69, v146, v150, v149);
        v153 = v110;
        if (v110)
        {
        }

        if (v109 < v12)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1E636AC44(v108);
        }

        if (a5 >= *(v108 + 2))
        {
          goto LABEL_111;
        }

        v111 = &v108[16 * a5];
        *(v111 + 4) = v12;
        *(v111 + 5) = v109;
        v170 = v108;
        result = sub_1E636ABB8(v70);
        v28 = v170;
        v12 = *(v170 + 16);
        if (v12 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v28[16 * v12 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_112;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_113;
      }

      v82 = &v28[16 * v12];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_115;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_118;
      }

      if (v86 >= v78)
      {
        v104 = &v28[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_122;
        }

        if (v73 < v107)
        {
          v70 = v12 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v144;
    v24 = v151;
    a4 = v137;
    if (v144 >= v26)
    {
      goto LABEL_96;
    }
  }

  v112 = *a3;
  v113 = *(v24 + 72);
  v157 = *(v24 + 16);
  v114 = (v112 + v113 * (v46 - 1));
  v154 = -v113;
  v139 = v29;
  a5 = v29 - v46;
  v141 = v113;
  v155 = v112;
  v115 = v112 + v46 * v113;
  v144 = v64;
LABEL_86:
  v152 = v46;
  v145 = v115;
  v147 = a5;
  v148 = v114;
  while (1)
  {
    v116 = v168;
    v117 = v157;
    (v157)(v168, v115, v16, v28);
    v118 = v163;
    v119 = v117(v163, v114, v16);
    v120 = v164;
    v121 = v167;
    v122 = (v167)(v119);
    v123 = v165;
    v121(v122);
    LODWORD(v169) = sub_1E65D7658();
    v124 = *v160;
    v125 = v123;
    v126 = v166;
    (*v160)(v125, v166);
    v127 = v120;
    v16 = v162;
    v124(v127, v126);
    v12 = v159;
    v128 = *v159;
    (*v159)(v118, v16);
    result = v128(v116, v16);
    if ((v169 & 1) == 0)
    {
LABEL_85:
      v46 = v152 + 1;
      v114 = &v148[v141];
      a5 = v147 - 1;
      v115 = v145 + v141;
      v65 = v144;
      if (v152 + 1 != v144)
      {
        goto LABEL_86;
      }

      a3 = v140;
      v29 = v139;
      if (v144 < v139)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v155)
    {
      break;
    }

    v12 = *v158;
    v129 = v156;
    (*v158)(v156, v115, v16);
    swift_arrayInitWithTakeFrontToBack();
    (v12)(v114, v129, v16);
    v114 = v154 + v114;
    v115 += v154;
    if (__CFADD__(a5++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1E60BD18C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_1E65D76A8();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          LOBYTE(v35) = sub_1E65E5B78();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v22) = sub_1E65E5B78();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_1E636AC70(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1E60BD780(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t), void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v86 = a6;
  v90 = a3;
  v85 = sub_1E65D76A8();
  v12 = *(v85 - 8);
  v13 = MEMORY[0x1EEE9AC00](v85);
  v84 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v69 - v15;
  v89 = a5(0);
  v16 = *(v89 - 8);
  v17 = MEMORY[0x1EEE9AC00](v89);
  v82 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v81 = &v69 - v20;
  v80 = *(v21 + 72);
  if (!v80)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v88 = a1;
  v22 = v80;
  if (a2 - a1 == 0x8000000000000000 && v80 == -1)
  {
    goto LABEL_60;
  }

  v23 = v90 - a2;
  if (v90 - a2 != 0x8000000000000000 || v80 != -1)
  {
    v24 = (a2 - a1) / v80;
    v25 = v88;
    v93 = v88;
    v92 = a4;
    v71 = a7;
    if (v24 < v23 / v80)
    {
      v26 = v24 * v80;
      if (a4 < v88 || v88 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != v88)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v79 = a4 + v26;
      v91 = a4 + v26;
      if (v26 >= 1 && a2 < v90)
      {
        v29 = *(v16 + 16);
        v76 = (v12 + 8);
        v77 = v29;
        v78 = v16 + 16;
        v75 = (v16 + 8);
        do
        {
          v88 = v25;
          v30 = v81;
          v31 = a2;
          v32 = v89;
          v33 = v77;
          (v77)(v81, a2, v89);
          v34 = v82;
          v35 = v33(v82, a4, v32);
          v36 = v83;
          v37 = v86;
          v38 = (v86)(v35);
          v39 = v84;
          v37(v38);
          LODWORD(v87) = sub_1E65D7658();
          v40 = *v76;
          v41 = v39;
          v42 = a4;
          v43 = v85;
          (*v76)(v41, v85);
          v40(v36, v43);
          v44 = *v75;
          (*v75)(v34, v32);
          v44(v30, v32);
          if (v87)
          {
            v45 = v80;
            a2 = v31 + v80;
            v46 = v88;
            a4 = v42;
            if (v88 < v31 || v88 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v88 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            a2 = v31;
            v45 = v80;
            a4 = v42 + v80;
            v46 = v88;
            if (v88 < v42 || v88 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v88 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v92 = a4;
          }

          v25 = v46 + v45;
          v93 = v25;
        }

        while (a4 < v79 && a2 < v90);
      }

LABEL_58:
      v71(&v93, &v92, &v91);
      return 1;
    }

    v27 = v23 / v80 * v80;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_38:
        v47 = a4 + v27;
        if (v27 >= 1)
        {
          v48 = -v22;
          v75 = (v12 + 8);
          v76 = (v16 + 16);
          v73 = (v16 + 8);
          v74 = a4;
          v49 = v47;
          v50 = v88;
          v77 = -v22;
          v51 = v83;
          while (2)
          {
            while (1)
            {
              v70 = v47;
              v52 = a2 + v48;
              v78 = a2;
              v79 = a2 + v48;
              while (1)
              {
                v53 = v90;
                if (a2 <= v50)
                {
                  v93 = a2;
                  v91 = v70;
                  goto LABEL_58;
                }

                v72 = v47;
                v90 += v48;
                v54 = (v49 + v48);
                v55 = *v76;
                v56 = v81;
                v57 = v89;
                v87 = v53;
                (v55)(v81, v54, v89);
                v58 = v82;
                v59 = (v55)(v82, v52, v57);
                v60 = v86;
                v61 = (v86)(v59);
                v62 = v84;
                v60(v61);
                LODWORD(v80) = sub_1E65D7658();
                v63 = *v75;
                v64 = v62;
                v65 = v85;
                (*v75)(v64, v85);
                v63(v51, v65);
                v66 = *v73;
                (*v73)(v58, v57);
                v66(v56, v57);
                if (v80)
                {
                  break;
                }

                v47 = v54;
                v67 = v74;
                if (v87 < v49 || v90 >= v49)
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v50 = v88;
                }

                else
                {
                  v50 = v88;
                  if (v87 != v49)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v49 = v54;
                a2 = v78;
                v52 = v79;
                v48 = v77;
                if (v54 <= v67)
                {
                  goto LABEL_56;
                }
              }

              v68 = v74;
              if (v87 < v78 || v90 >= v78)
              {
                break;
              }

              a2 = v79;
              v50 = v88;
              v47 = v72;
              v48 = v77;
              if (v87 != v78)
              {
                swift_arrayInitWithTakeBackToFront();
                a2 = v79;
              }

              if (v49 <= v68)
              {
                goto LABEL_56;
              }
            }

            a2 = v79;
            swift_arrayInitWithTakeFrontToBack();
            v50 = v88;
            v47 = v72;
            v48 = v77;
            if (v49 > v68)
            {
              continue;
            }

            break;
          }
        }

LABEL_56:
        v93 = a2;
        v91 = v47;
        goto LABEL_58;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v80;
    goto LABEL_38;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1E60BDEBC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E60A5E2C(v0 + v2, v3);
}

unint64_t sub_1E60BDF64()
{
  result = qword_1ED074390;
  if (!qword_1ED074390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074388, &qword_1E65F0978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074368, &qword_1E65F08F8);
    sub_1E60BE02C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074390);
  }

  return result;
}

unint64_t sub_1E60BE02C()
{
  result = qword_1ED074398;
  if (!qword_1ED074398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074368, &qword_1E65F08F8);
    sub_1E60BE0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074398);
  }

  return result;
}

unint64_t sub_1E60BE0B8()
{
  result = qword_1ED0743A0;
  if (!qword_1ED0743A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0743A8, &qword_1E65F0980);
    sub_1E5FEAB1C();
    sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0743A0);
  }

  return result;
}

uint64_t sub_1E60BE170(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60B79AC(a1, a2, v7, v6);
}

uint64_t sub_1E60BE224(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60B836C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60BE344(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60B8948(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60BE464(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60B93AC(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_105Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E60BF224(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60B9C78(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_97Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  swift_unknownObjectRelease();
  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E60C0000(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60BA49C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60C0120(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v67 = a5;
  v9 = sub_1E65DF3B8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v54 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v49 - v13;
  v58 = sub_1E65D76A8();
  v14 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743F8, &qword_1E65F0B60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v49 - v18;
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v60 = a1;
  v61 = a1 + 64;
  v62 = v21;
  v63 = 0;
  v56 = (v10 + 32);
  v57 = (v14 + 32);
  v64 = v24 & v22;
  v65 = a2;
  v66 = a3;
  v51 = v10 + 8;
  v52 = v10 + 16;
  v53 = v14;
  v55 = v10;
  v49[3] = v10 + 40;
  v50 = (v14 + 8);

  v49[1] = a3;

  while (1)
  {
    sub_1E6121170(v19);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074400, &qword_1E65F0B68);
    if ((*(*(v28 - 8) + 48))(v19, 1, v28) == 1)
    {
      sub_1E5E24EE4(v60);
    }

    v29 = a4;
    v30 = *(v28 + 48);
    v31 = *v57;
    (*v57)(v16, v19, v58);
    v32 = *v56;
    v33 = v9;
    (*v56)(v59, &v19[v30], v9);
    v34 = *v67;
    v36 = sub_1E64173CC(v16);
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if ((v29 & 1) == 0)
      {
        sub_1E6424BA8();
      }
    }

    else
    {
      sub_1E641BEB0(v39, v29 & 1);
      v41 = sub_1E64173CC(v16);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_19;
      }

      v36 = v41;
    }

    v43 = *v67;
    if (v40)
    {
      v26 = v54;
      v25 = v55;
      v27 = *(v55 + 72) * v36;
      v9 = v33;
      (*(v55 + 16))(v54, v43[7] + v27, v33);
      (*(v25 + 8))(v59, v33);
      (*v50)(v16, v58);
      (*(v25 + 40))(v43[7] + v27, v26, v33);
      a4 = 1;
    }

    else
    {
      v43[(v36 >> 6) + 8] |= 1 << v36;
      v31((v43[6] + *(v53 + 72) * v36), v16, v58);
      v44 = v43[7] + *(v55 + 72) * v36;
      v9 = v33;
      v32(v44, v59, v33);
      v45 = v43[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_18;
      }

      v43[2] = v47;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E60C0620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_1E65D76F8() - 8);
  v15 = *(v4 + v13);
  v16 = v4 + ((*(v14 + 80) + v13 + 8) & ~*(v14 + 80));

  return sub_1E6123D00(a1, a2, a3, v4 + v10, v4 + v11, (v4 + v12), v15, v16, a4);
}

uint64_t sub_1E60C074C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v12 = (*(v11 + 64) + ((*(v11 + 80) + 16) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v5 + ((v13 + 87) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6124CA8(a1, a2, a3 & 1, a4, v5 + v12, (v5 + v13), v14, a5);
}

uint64_t sub_1E60C0848(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1E60C08DC()
{
  result = qword_1EE2D4C70;
  if (!qword_1EE2D4C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074418, &qword_1E65F0B80);
    sub_1E60C0968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C70);
  }

  return result;
}

unint64_t sub_1E60C0968()
{
  result = qword_1EE2D4CE8;
  if (!qword_1EE2D4CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074438, &qword_1E65F0BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074440, &qword_1E65F0BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074448, &qword_1E65F0BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074450, &qword_1E65F0BB8);
    sub_1E60C0A9C();
    sub_1E60C0DB8();
    sub_1E60C0E70();
    swift_getOpaqueTypeConformance2();
    sub_1E60C0F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CE8);
  }

  return result;
}

unint64_t sub_1E60C0A9C()
{
  result = qword_1EE2D4E20;
  if (!qword_1EE2D4E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074440, &qword_1E65F0BA8);
    sub_1E60C0B54();
    sub_1E5FED46C(&qword_1EE2D4C08, &qword_1ED074470, &qword_1E65F0BD8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E20);
  }

  return result;
}

unint64_t sub_1E60C0B54()
{
  result = qword_1EE2D4EA0;
  if (!qword_1EE2D4EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074458, &qword_1E65F0BC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074460, &qword_1E65F0BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E60C0CA8();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EA0);
  }

  return result;
}

unint64_t sub_1E60C0CA8()
{
  result = qword_1EE2D4E48;
  if (!qword_1EE2D4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074460, &qword_1E65F0BC8);
    sub_1E60C0D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E48);
  }

  return result;
}

unint64_t sub_1E60C0D34()
{
  result = qword_1EE2D4EC8;
  if (!qword_1EE2D4EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074468, &qword_1E65F0BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EC8);
  }

  return result;
}

unint64_t sub_1E60C0DB8()
{
  result = qword_1EE2D4DF8;
  if (!qword_1EE2D4DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074448, &qword_1E65F0BB0);
    sub_1E60C0A9C();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DF8);
  }

  return result;
}

unint64_t sub_1E60C0E70()
{
  result = qword_1EE2D4E00;
  if (!qword_1EE2D4E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074450, &qword_1E65F0BB8);
    sub_1E60C0A9C();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E00);
  }

  return result;
}

unint64_t sub_1E60C0F28()
{
  result = qword_1EE2D4E90;
  if (!qword_1EE2D4E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074480, &qword_1E65F0BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074488, &qword_1E65F0BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074490, &qword_1E65F0BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074498, &qword_1E65F0BF8);
    sub_1E60C108C();
    sub_1E60C1450();
    sub_1E60C1508();
    swift_getOpaqueTypeConformance2();
    sub_1E60C330C(&qword_1EE2D4BC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E90);
  }

  return result;
}

unint64_t sub_1E60C108C()
{
  result = qword_1EE2D4DD8;
  if (!qword_1EE2D4DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074488, &qword_1E65F0BE8);
    sub_1E60C1144();
    sub_1E5FED46C(&qword_1EE2D4C08, &qword_1ED074470, &qword_1E65F0BD8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DD8);
  }

  return result;
}

unint64_t sub_1E60C1144()
{
  result = qword_1EE2D4DE8;
  if (!qword_1EE2D4DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744A0, &qword_1E65F0C00);
    sub_1E60C11FC();
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DE8);
  }

  return result;
}

unint64_t sub_1E60C11FC()
{
  result = qword_1EE2D4E10;
  if (!qword_1EE2D4E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744A8, &qword_1E65F0C08);
    sub_1E60C1288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E10);
  }

  return result;
}

unint64_t sub_1E60C1288()
{
  result = qword_1EE2D4E38;
  if (!qword_1EE2D4E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744B0, &qword_1E65F0C10);
    sub_1E60C1314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E38);
  }

  return result;
}

unint64_t sub_1E60C1314()
{
  result = qword_1EE2D4EB8;
  if (!qword_1EE2D4EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744B8, &qword_1E65F0C18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EB8);
  }

  return result;
}

unint64_t sub_1E60C1450()
{
  result = qword_1EE2D4DB8;
  if (!qword_1EE2D4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074490, &qword_1E65F0BF0);
    sub_1E60C108C();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DB8);
  }

  return result;
}

unint64_t sub_1E60C1508()
{
  result = qword_1EE2D4DC0;
  if (!qword_1EE2D4DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074498, &qword_1E65F0BF8);
    sub_1E60C108C();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DC0);
  }

  return result;
}

unint64_t sub_1E60C15C0()
{
  result = qword_1EE2D4C88;
  if (!qword_1EE2D4C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074420, &qword_1E65F0B88);
    sub_1E60C164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C88);
  }

  return result;
}

unint64_t sub_1E60C164C()
{
  result = qword_1EE2D4D30;
  if (!qword_1EE2D4D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744C0, &qword_1E65F0C20);
    sub_1E60C16D8();
    sub_1E60C1E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D30);
  }

  return result;
}

unint64_t sub_1E60C16D8()
{
  result = qword_1EE2D4E88;
  if (!qword_1EE2D4E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744C8, &qword_1E65F0C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744D0, &qword_1E65F0C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744D8, &qword_1E65F0C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744E0, &qword_1E65F0C40);
    sub_1E60C183C();
    sub_1E60C1CFC();
    sub_1E60C1DB4();
    swift_getOpaqueTypeConformance2();
    sub_1E60C330C(&qword_1EE2D4BC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E88);
  }

  return result;
}

unint64_t sub_1E60C183C()
{
  result = qword_1EE2D4DE0;
  if (!qword_1EE2D4DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744D0, &qword_1E65F0C30);
    sub_1E60C18F4();
    sub_1E5FED46C(&qword_1EE2D4C08, &qword_1ED074470, &qword_1E65F0BD8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DE0);
  }

  return result;
}

unint64_t sub_1E60C18F4()
{
  result = qword_1EE2D4DF0;
  if (!qword_1EE2D4DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744E8, &qword_1E65F0C48);
    sub_1E60C19AC();
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DF0);
  }

  return result;
}

unint64_t sub_1E60C19AC()
{
  result = qword_1EE2D4E18;
  if (!qword_1EE2D4E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744F0, &qword_1E65F0C50);
    sub_1E60C1A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E18);
  }

  return result;
}

unint64_t sub_1E60C1A38()
{
  result = qword_1EE2D4E98;
  if (!qword_1EE2D4E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744F8, &qword_1E65F0C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074500, &qword_1E65F0C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E60C1B8C();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E98);
  }

  return result;
}

unint64_t sub_1E60C1B8C()
{
  result = qword_1EE2D4E40;
  if (!qword_1EE2D4E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074500, &qword_1E65F0C60);
    sub_1E60C1C44();
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E40);
  }

  return result;
}

unint64_t sub_1E60C1C44()
{
  result = qword_1EE2D4EC0;
  if (!qword_1EE2D4EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074508, &qword_1E65F0C68);
    sub_1E5FED46C(&unk_1EE2D4BD0, &qword_1ED073840, &qword_1E65EDBA0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EC0);
  }

  return result;
}

unint64_t sub_1E60C1CFC()
{
  result = qword_1EE2D4DC8;
  if (!qword_1EE2D4DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744D8, &qword_1E65F0C38);
    sub_1E60C183C();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DC8);
  }

  return result;
}

unint64_t sub_1E60C1DB4()
{
  result = qword_1EE2D4DD0;
  if (!qword_1EE2D4DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744E0, &qword_1E65F0C40);
    sub_1E60C183C();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DD0);
  }

  return result;
}

unint64_t sub_1E60C1E6C()
{
  result = qword_1EE2D4E08;
  if (!qword_1EE2D4E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074510, &qword_1E65F0C70);
    sub_1E60C1F28();
    sub_1E60C330C(&qword_1EE2D4BC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E08);
  }

  return result;
}

unint64_t sub_1E60C1F28()
{
  result = qword_1EE2D4E30;
  if (!qword_1EE2D4E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074518, &qword_1E65F0C78);
    sub_1E60C1FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E30);
  }

  return result;
}

unint64_t sub_1E60C1FB4()
{
  result = qword_1EE2D4EB0;
  if (!qword_1EE2D4EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074520, &qword_1E65F0C80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&unk_1EE2D4BD0, &qword_1ED073840, &qword_1E65EDBA0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EB0);
  }

  return result;
}

unint64_t sub_1E60C20F0()
{
  result = qword_1EE2D4CB0;
  if (!qword_1EE2D4CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DA0, &unk_1E65FA8A0);
    sub_1E6071CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CB0);
  }

  return result;
}

unint64_t sub_1E60C217C()
{
  result = qword_1EE2D4C60;
  if (!qword_1EE2D4C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074430, &qword_1E65F0B98);
    sub_1E60123A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C60);
  }

  return result;
}

uint64_t sub_1E60C2208(char *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E60A5184(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E60C22FC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60B3FF8(a1, a2, v7, v6);
}

uint64_t sub_1E60C23CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60B473C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_185Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  swift_unknownObjectRelease();

  v89 = v0 + ((v92 + 40) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E60C319C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60B5224(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E60C330C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E60C3354(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E60C3430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E60C34A8(uint64_t a1, uint64_t a2)
{
  v417 = a2;
  v416 = a1;
  v423 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v358 = &v344 - v4;
  v5 = sub_1E65DCE18();
  v375 = *(v5 - 8);
  v376 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v374 = &v344 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E5158();
  v354 = *(v7 - 8);
  v355 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v353 = &v344 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DCBA8();
  v377 = *(v9 - 8);
  v378 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v382 = &v344 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65DCAE8();
  v371 = *(v11 - 8);
  v372 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v370 = &v344 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D86A8();
  v360 = *(v13 - 8);
  v361 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v359 = &v344 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = sub_1E65DCAB8();
  v364 = *(v380 - 8);
  MEMORY[0x1EEE9AC00](v380);
  v411 = &v344 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = sub_1E65D97D8();
  v396 = *(v399 - 8);
  v16 = MEMORY[0x1EEE9AC00](v399);
  v384 = (&v344 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v373 = &v344 - v18;
  v19 = sub_1E65DCA18();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v349 = &v344 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v357 = &v344 - v22;
  v366 = sub_1E65DCBE8();
  v23 = MEMORY[0x1EEE9AC00](v366);
  v367 = &v344 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v356 = &v344 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v391 = &v344 - v27;
  v28 = sub_1E65D8F28();
  v387 = *(v28 - 8);
  v388 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v390 = &v344 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v389 = &v344 - v31;
  v32 = sub_1E65D76A8();
  v33 = *(v32 - 8);
  v393 = v32;
  v394 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v392 = &v344 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v368 = &v344 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v400 = &v344 - v38;
  v39 = sub_1E65D8C68();
  v385 = *(v39 - 8);
  v386 = v39;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v363 = &v344 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v352 = &v344 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v398 = &v344 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v362 = &v344 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v397 = &v344 - v48;
  v401 = sub_1E65D7D78();
  v395 = *(v401 - 8);
  v49 = MEMORY[0x1EEE9AC00](v401);
  v369 = &v344 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v383 = &v344 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v365 = &v344 - v53;
  v381 = sub_1E65DD228();
  v379 = *(v381 - 8);
  v54 = MEMORY[0x1EEE9AC00](v381);
  v351 = &v344 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v409 = &v344 - v56;
  v408 = sub_1E65DD0D8();
  v57 = MEMORY[0x1EEE9AC00](v408);
  *&v410 = &v344 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v418 = &v344 - v59;
  v60 = sub_1E65E3B68();
  v406 = *(v60 - 8);
  v407 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v344 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E65DD0A8();
  v64 = *(v63 - 8);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v350 = &v344 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v69 = (&v344 - v68);
  v70 = MEMORY[0x1EEE9AC00](v67);
  v72 = &v344 - v71;
  v348 = v73;
  MEMORY[0x1EEE9AC00](v70);
  v75 = &v344 - v74;
  v76 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState;
  swift_beginAccess();
  v415 = v64;
  v77 = *(v64 + 16);
  v413 = v2;
  v414 = v76;
  v77(v75, v2 + v76, v63);
  sub_1E65DD1C8();
  v403 = v72;
  v77(v72, v75, v63);
  v404 = v69;
  v78 = v69;
  v79 = v416;
  v346 = v77;
  v347 = v64 + 16;
  v77(v78, v417, v63);
  sub_1E60C95C4(v79, v418);
  v405 = v62;
  v80 = sub_1E65E3B48();
  v81 = sub_1E65E6338();
  v82 = os_log_type_enabled(v80, v81);
  v412 = v63;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v345 = swift_slowAlloc();
    v420 = v345;
    *v83 = 141559299;
    *(v83 + 4) = 1752392040;
    *(v83 + 12) = 2081;
    sub_1E60C988C(&qword_1ED074580, MEMORY[0x1E699EF28], MEMORY[0x1E699EF48]);
    v402 = v75;
    v344 = v80;
    v84 = v403;
    v85 = sub_1E65E6BC8();
    v86 = v63;
    v88 = v87;
    v89 = *(v415 + 8);
    v89(v84, v86);
    v90 = sub_1E5DFD4B0(v85, v88, &v420);

    *(v83 + 14) = v90;
    *(v83 + 22) = 2160;
    *(v83 + 24) = 1752392040;
    *(v83 + 32) = 2081;
    v91 = v404;
    v92 = v402;
    v93 = sub_1E65E6BC8();
    LODWORD(v403) = v81;
    v95 = v94;
    v404 = v89;
    v89(v91, v86);
    v96 = v413;
    v97 = v93;
    v98 = v92;
    v99 = sub_1E5DFD4B0(v97, v95, &v420);

    *(v83 + 34) = v99;
    *(v83 + 42) = 2160;
    v100 = v415;
    v101 = v414;
    *(v83 + 44) = 1752392040;
    *(v83 + 52) = 2081;
    v102 = v418;
    v103 = sub_1E65DD0B8();
    v105 = v104;
    sub_1E60C98D4(v102, MEMORY[0x1E699EF50]);
    v106 = sub_1E5DFD4B0(v103, v105, &v420);

    *(v83 + 54) = v106;
    v107 = v344;
    _os_log_impl(&dword_1E5DE9000, v344, v403, "[Metrics] State: %{private,mask.hash}s -> %{private,mask.hash}s: [%{private,mask.hash}s]", v83, 0x3Eu);
    v108 = v345;
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v108, -1, -1);
    v109 = v83;
    v110 = v416;
    MEMORY[0x1E694F1C0](v109, -1, -1);

    (*(v406 + 8))(v405, v407);
  }

  else
  {

    sub_1E60C98D4(v418, MEMORY[0x1E699EF50]);
    v111 = v75;
    v112 = v79;
    v113 = v415;
    v114 = *(v415 + 8);
    v114(v404, v63);
    v404 = v114;
    v114(v403, v63);
    v100 = v113;
    v110 = v112;
    v98 = v111;
    (*(v406 + 8))(v405, v407);
    v96 = v413;
    v101 = v414;
  }

  v115 = v410;
  sub_1E60C95C4(v110, v410);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v117 = v411;
  v118 = v409;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 10:
      v404(v98, v412);
      return sub_1E60C98D4(v115, MEMORY[0x1E699EF50]);
    case 2:
      sub_1E60C98D4(v115, MEMORY[0x1E699EF50]);
      goto LABEL_5;
    case 3:
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074578, &qword_1E65F0EA8);
      v171 = v115;
      v172 = *(v170 + 64);
      v173 = v364;
      (*(v364 + 32))(v117, v171 + *(v170 + 48), v380);
      v174 = v379;
      v175 = v171 + v172;
      v176 = v351;
      (*(v379 + 32))(v351, v175, v381);
      v177 = v417;
      sub_1E60C6C78(v98, v417, v176);
      swift_beginAccess();
      (*(v100 + 24))(v96 + v101, v177, v412);
      swift_endAccess();
      sub_1E65DD088();
      if (sub_1E65DD238())
      {
        v178 = v411;
        v179 = sub_1E65DCAA8();
        sub_1E60C71F0(v179);

        (*(v174 + 8))(v176, v381);
        (*(v173 + 8))(v178, v380);
      }

      else
      {
        (*(v174 + 8))(v176, v381);
        (*(v173 + 8))(v411, v380);
      }

      v404(v98, v412);
      v303 = sub_1E65DD128();
      return (*(*(v303 - 8) + 8))(v410, v303);
    case 4:
      v180 = v115[1];
      v418 = *v115;
      v181 = sub_1E65DCB08();
      v183 = v182;
      if (v181 == sub_1E65DCB08() && v183 == v184)
      {

LABEL_41:
        _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
        (*(v387 + 104))(v390, *MEMORY[0x1E69CBCC8], v388);
        sub_1E6427498(MEMORY[0x1E69E7CC0]);
        v279 = v359;
        sub_1E65D8678();
        v280 = sub_1E65D9D78();
        (*(*(v280 - 8) + 56))(v397, 1, 1, v280);
        (*(v385 + 104))(v398, *MEMORY[0x1E69CBA78], v386);
        v281 = sub_1E65D74E8();
        (*(*(v281 - 8) + 56))(v400, 1, 1, v281);
        v282 = *(v96 + 24);
        ObjectType = swift_getObjectType();
        v411 = v180;
        v284 = v392;
        sub_1E65D7698();
        ImpressionsTracker.snapshotOnScreenImpressions(on:)(v284, ObjectType, v282);
        (*(v394 + 8))(v284, v393);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
        v285 = v360;
        v286 = (*(v360 + 80) + 32) & ~*(v360 + 80);
        v287 = swift_allocObject();
        v410 = xmmword_1E65EA670;
        *(v287 + 16) = xmmword_1E65EA670;
        (*(v285 + 16))(v287 + v286, v279, v361);
        sub_1E65D8688();
        v402 = v98;
        v288 = sub_1E65D9908();
        (*(*(v288 - 8) + 56))(v389, 1, 1, v288);
        sub_1E65D8698();
        v289 = sub_1E65DA208();
        (*(*(v289 - 8) + 56))(v391, 1, 1, v289);
        v290 = v383;
        sub_1E65D7D68();
        v291 = v395;
        v292 = v384;
        (*(v395 + 16))(v384, v290, v401);
        v293 = v396;
        v294 = v399;
        (*(v396 + 104))(v292, *MEMORY[0x1E69CC330], v399);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
        inited = swift_initStackObject();
        *(inited + 16) = v410;
        *(inited + 32) = 6;
        v420 = v418;
        v421 = v411;
        sub_1E65E6848();
        v296 = sub_1E6427784(inited);
        swift_setDeallocating();
        sub_1E60C9748(inited + 32);
        v297 = v402;
        sub_1E60C8828(v292, v402, v296);

        (*(v293 + 8))(v292, v294);
        v298 = v417;
        sub_1E60C66A4(v297, v417, v416);
        (*(v291 + 8))(v290, v401);
        (*(v360 + 8))(v359, v361);
        v299 = v415;
        v300 = v297;
        v301 = v412;
        (*(v415 + 8))(v300, v412);
        v302 = v414;
        swift_beginAccess();
        (*(v299 + 24))(v96 + v302, v298, v301);
        return swift_endAccess();
      }

      v278 = sub_1E65E6C18();

      if (v278)
      {
        goto LABEL_41;
      }

      v110 = v416;
      v101 = v414;
LABEL_5:
      v119 = v417;
      sub_1E60C66A4(v98, v417, v110);
      v120 = v412;
      v404(v98, v412);
      swift_beginAccess();
      (*(v100 + 24))(v96 + v101, v119, v120);
      return swift_endAccess();
    case 5:
      (*(v371 + 32))(v370, v115, v372);
      v147 = sub_1E65D9D78();
      (*(*(v147 - 8) + 56))(v397, 1, 1, v147);
      (*(v385 + 104))(v398, *MEMORY[0x1E69CB9E0], v386);
      v148 = sub_1E65D74E8();
      (*(*(v148 - 8) + 56))(v400, 1, 1, v148);
      v149 = *(v96 + 24);
      v150 = swift_getObjectType();
      v151 = v392;
      sub_1E65D7698();
      v418 = ImpressionsTracker.snapshotOnScreenImpressions(on:)(v151, v150, v149);
      (*(v394 + 8))(v151, v393);
      sub_1E65DCAD8();
      v152 = *MEMORY[0x1E69CC440];
      v153 = sub_1E65D9908();
      v402 = v98;
      v154 = v153;
      v155 = *(v153 - 8);
      v156 = v389;
      (*(v155 + 104))(v389, v152, v153);
      (*(v155 + 56))(v156, 0, 1, v154);
      (*(v387 + 104))(v390, *MEMORY[0x1E69CBCC8], v388);
      v157 = sub_1E65DA208();
      (*(*(v157 - 8) + 56))(v391, 1, 1, v157);
      v158 = MEMORY[0x1E69E7CC0];
      v159 = v383;
      sub_1E65D7D68();
      v160 = v96;
      v161 = v395;
      v162 = v384;
      (*(v395 + 16))(v384, v159, v401);
      v163 = v396;
      v164 = v399;
      (*(v396 + 104))(v162, *MEMORY[0x1E69CC330], v399);
      v165 = sub_1E6427784(v158);
      v166 = v402;
      sub_1E60C8828(v162, v402, v165);

      (*(v163 + 8))(v162, v164);
      v167 = v417;
      sub_1E60C66A4(v166, v417, v416);
      (*(v161 + 8))(v159, v401);
      (*(v371 + 8))(v370, v372);
      v168 = v412;
      (*(v100 + 8))(v166, v412);
      v169 = v414;
      swift_beginAccess();
      (*(v100 + 24))(v160 + v169, v167, v168);
      return swift_endAccess();
    case 6:
      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074570, &qword_1E65F0EA0);
      v123 = v379;
      v124 = v381;
      (*(v379 + 32))(v118, v115 + *(v210 + 48), v381);
      v211 = sub_1E65DD128();
      (*(*(v211 - 8) + 8))(v115, v211);
      goto LABEL_26;
    case 7:
      v402 = v98;
      (*(v377 + 32))(v382, v115, v378);
      v126 = v353;
      v125 = v354;
      v127 = v355;
      (*(v354 + 104))(v353, *MEMORY[0x1E69AB3E0], v355);
      v128 = v392;
      sub_1E65D7688();
      swift_getObjectType();
      v129 = sub_1E65E50B8();
      (*(v394 + 8))(v128, v393);
      (*(v125 + 8))(v126, v127);
      v130 = sub_1E65D9D78();
      (*(*(v130 - 8) + 56))(v362, 1, 1, v130);
      (*(v385 + 104))(v363, *MEMORY[0x1E69CBAA0], v386);
      v131 = sub_1E65D74E8();
      (*(*(v131 - 8) + 56))(v368, 1, 1, v131);
      v132 = *(v129 + 16);
      v418 = v129;
      if (v132)
      {
        v133 = objc_opt_self();
        v134 = v129 + 32;
        v135 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1E5DFA11C(v134, &v420);
          __swift_project_boxed_opaque_existential_1(&v420, v422);
          v138 = sub_1E65E6BF8();
          v419[0] = 0;
          v139 = [v133 dataWithJSONObject:v138 options:0 error:v419];
          swift_unknownObjectRelease();
          v140 = v419[0];
          if (v139)
          {
            v141 = sub_1E65D7518();
            v143 = v142;

            __swift_destroy_boxed_opaque_existential_1(&v420);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v135 = sub_1E64F695C(0, *(v135 + 2) + 1, 1, v135);
            }

            v145 = *(v135 + 2);
            v144 = *(v135 + 3);
            if (v145 >= v144 >> 1)
            {
              v135 = sub_1E64F695C((v144 > 1), v145 + 1, 1, v135);
            }

            *(v135 + 2) = v145 + 1;
            v146 = &v135[16 * v145];
            *(v146 + 4) = v141;
            *(v146 + 5) = v143;
          }

          else
          {
            v136 = v140;
            v137 = sub_1E65D73B8();

            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1(&v420);
          }

          v134 += 32;
          --v132;
        }

        while (v132);
      }

      sub_1E60139B4();
      sub_1E65DCB28();
      v327 = sub_1E65D9908();
      (*(*(v327 - 8) + 56))(v389, 1, 1, v327);
      (*(v387 + 104))(v390, *MEMORY[0x1E69CBCD0], v388);
      v328 = sub_1E65DA208();
      (*(*(v328 - 8) + 56))(v391, 1, 1, v328);
      v329 = v369;
      sub_1E65D7D68();
      v330 = v395;
      v331 = v384;
      (*(v395 + 16))(v384, v329, v401);
      v332 = v396;
      (*(v396 + 104))(v331, *MEMORY[0x1E69CC330], v399);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v333 = swift_initStackObject();
      *(v333 + 16) = xmmword_1E65EB9E0;
      *(v333 + 32) = 5;
      v420 = sub_1E65DCB48();
      v421 = v334;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E5FEE0FC();
      sub_1E65E6848();
      *(v333 + 80) = 6;
      v335 = v417;
      v420 = sub_1E65DD008();
      v421 = v336;
      sub_1E65E6848();
      v337 = sub_1E6427784(v333);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v338 = v402;
      v339 = v413;
      sub_1E60C8828(v331, v402, v337);

      (*(v332 + 8))(v331, v399);
      sub_1E60C66A4(v338, v335, v416);
      v340 = v414;
      swift_beginAccess();
      v341 = v415;
      v342 = v339 + v340;
      v343 = v412;
      (*(v415 + 24))(v342, v335, v412);
      swift_endAccess();
      sub_1E60C757C(v335, v418);

      (*(v330 + 8))(v369, v401);
      (*(v377 + 8))(v382, v378);
      return (*(v341 + 8))(v338, v343);
    case 8:
      (*(v375 + 32))(v374, v115, v376);
      v185 = sub_1E65D9D78();
      (*(*(v185 - 8) + 56))(v397, 1, 1, v185);
      (*(v385 + 104))(v398, *MEMORY[0x1E69CBA10], v386);
      v186 = sub_1E65D74E8();
      (*(*(v186 - 8) + 56))(v400, 1, 1, v186);
      v187 = *(v96 + 24);
      v188 = swift_getObjectType();
      v189 = v392;
      sub_1E65D7698();
      ImpressionsTracker.snapshotOnScreenImpressions(on:)(v189, v188, v187);
      (*(v394 + 8))(v189, v393);
      v190 = sub_1E65DD088();
      sub_1E6013678(v190);
      sub_1E65DCDA8();
      v402 = v98;
      v191 = *MEMORY[0x1E69CC440];
      v192 = sub_1E65D9908();
      v193 = *(v192 - 8);
      v194 = v389;
      (*(v193 + 104))(v389, v191, v192);
      (*(v193 + 56))(v194, 0, 1, v192);
      (*(v387 + 104))(v390, *MEMORY[0x1E69CBC88], v388);
      v195 = sub_1E65DA208();
      (*(*(v195 - 8) + 56))(v391, 1, 1, v195);
      v196 = v383;
      sub_1E65D7D68();
      v197 = v395;
      v198 = v384;
      (*(v395 + 16))(v384, v196, v401);
      v199 = v396;
      (*(v396 + 104))(v198, *MEMORY[0x1E69CC330], v399);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v200 = swift_initStackObject();
      *(v200 + 16) = xmmword_1E65EB9E0;
      *(v200 + 32) = 6;
      v420 = sub_1E65DCFD8();
      v421 = v201;
      sub_1E65E6848();
      *(v200 + 80) = 5;
      v202 = v374;
      v420 = sub_1E65DCDC8();
      v421 = v203;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E5FEE0FC();
      sub_1E65E6848();
      v204 = sub_1E6427784(v200);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v205 = v417;
      sub_1E60C8828(v198, v417, v204);

      (*(v199 + 8))(v198, v399);
      v206 = v402;
      sub_1E60C66A4(v402, v205, v416);
      (*(v197 + 8))(v383, v401);
      (*(v375 + 8))(v202, v376);
      v207 = v415;
      v208 = v412;
      (*(v415 + 8))(v206, v412);
      v209 = v414;
      swift_beginAccess();
      (*(v207 + 24))(v96 + v209, v205, v208);
      return swift_endAccess();
    case 9:
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074568, &qword_1E65F0E98);
      v123 = v379;
      v124 = v381;
      (*(v379 + 32))(v118, v115 + *(v122 + 48), v381);
      (*(v364 + 8))(v115, v380);
LABEL_26:
      v212 = v417;
      sub_1E60C6C78(v98, v417, v118);
      (*(v123 + 8))(v118, v124);
      v213 = v412;
      v404(v98, v412);
      swift_beginAccess();
      (*(v100 + 24))(v96 + v101, v212, v213);
      return swift_endAccess();
    case 11:
      v234 = sub_1E65D9D78();
      (*(*(v234 - 8) + 56))(v397, 1, 1, v234);
      (*(v385 + 104))(v398, *MEMORY[0x1E69CBA90], v386);
      v235 = sub_1E65D74E8();
      (*(*(v235 - 8) + 56))(v400, 1, 1, v235);
      v236 = *(v96 + 24);
      v237 = swift_getObjectType();
      v238 = v392;
      sub_1E65D7698();
      ImpressionsTracker.snapshotOnScreenImpressions(on:)(v238, v237, v236);
      (*(v394 + 8))(v238, v393);
      v239 = sub_1E65D9908();
      (*(*(v239 - 8) + 56))(v389, 1, 1, v239);
      (*(v387 + 104))(v390, *MEMORY[0x1E69CBCC8], v388);
      v240 = sub_1E65DA208();
      (*(*(v240 - 8) + 56))(v391, 1, 1, v240);
      sub_1E65D7D68();
      v241 = v356;
      sub_1E65DD078();
      v242 = v367;
      swift_storeEnumTagMultiPayload();
      v243 = MEMORY[0x1E69445D0](v241, v242);
      v244 = MEMORY[0x1E699EEA0];
      sub_1E60C98D4(v242, MEMORY[0x1E699EEA0]);
      sub_1E60C98D4(v241, v244);
      if (v243)
      {
        v245 = v357;
        sub_1E65DD018();
        v246 = sub_1E65DC9E8();
        v248 = v247;
        v249 = MEMORY[0x1E699EE58];
        v250 = v245;
      }

      else
      {
        sub_1E65DD078();
        v246 = sub_1E65DCBB8();
        v248 = v304;
        v249 = MEMORY[0x1E699EEA0];
        v250 = v241;
      }

      sub_1E60C98D4(v250, v249);
      v305 = v100;
      sub_1E65DD078();
      v306 = v367;
      swift_storeEnumTagMultiPayload();
      v307 = MEMORY[0x1E69445D0](v241, v306);
      v308 = MEMORY[0x1E699EEA0];
      sub_1E60C98D4(v306, MEMORY[0x1E699EEA0]);
      sub_1E60C98D4(v241, v308);
      if (v307)
      {
        v309 = v357;
        v310 = v98;
        sub_1E65DD018();
        v311 = sub_1E65DC9F8();
        v313 = v312;
        v314 = MEMORY[0x1E699EE58];
        v315 = v309;
      }

      else
      {
        v310 = v98;
        sub_1E65DD078();
        v311 = sub_1E65DCBD8();
        v313 = v316;
        v314 = MEMORY[0x1E699EEA0];
        v315 = v241;
      }

      sub_1E60C98D4(v315, v314);
      v317 = v365;
      v318 = v373;
      (*(v395 + 16))(v373, v365, v401);
      (*(v396 + 104))(v318, *MEMORY[0x1E69CC330], v399);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v319 = swift_initStackObject();
      *(v319 + 16) = xmmword_1E65EB9E0;
      *(v319 + 32) = 6;
      if (!v313)
      {
        v311 = sub_1E65DCFD8();
        v313 = v320;
      }

      v420 = v311;
      v421 = v313;
      sub_1E65E6848();
      *(v319 + 80) = 5;
      v420 = v246;
      v421 = v248;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E5FEE0FC();
      sub_1E65E6848();
      v321 = sub_1E6427784(v319);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v322 = v373;
      v323 = v413;
      sub_1E60C8828(v373, v310, v321);

      (*(v396 + 8))(v322, v399);
      v324 = v417;
      sub_1E60C66A4(v310, v417, v416);
      (*(v395 + 8))(v317, v401);
      v325 = v412;
      v404(v310, v412);
      v326 = v414;
      swift_beginAccess();
      (*(v305 + 24))(v323 + v326, v324, v325);
      return swift_endAccess();
    case 13:
      return (v404)(v98, v412);
    case 15:
      v251 = sub_1E65D9D78();
      (*(*(v251 - 8) + 56))(v397, 1, 1, v251);
      v252 = *MEMORY[0x1E69CBA70];
      v253 = v385;
      v402 = v98;
      v254 = *(v385 + 104);
      v255 = v386;
      v254(v398, v252, v386);
      v256 = sub_1E65D74E8();
      (*(*(v256 - 8) + 56))(v400, 1, 1, v256);
      v257 = *(v96 + 24);
      v258 = swift_getObjectType();
      v259 = v392;
      sub_1E65D7698();
      ImpressionsTracker.snapshotOnScreenImpressions(on:)(v259, v258, v257);
      (*(v394 + 8))(v259, v393);
      v260 = v352;
      v254(v352, *MEMORY[0x1E69CBA38], v255);
      sub_1E65D8C58();
      (*(v253 + 8))(v260, v255);
      v261 = sub_1E65D9908();
      (*(*(v261 - 8) + 56))(v389, 1, 1, v261);
      (*(v387 + 104))(v390, *MEMORY[0x1E69CBCC8], v388);
      v262 = sub_1E65DA208();
      (*(*(v262 - 8) + 56))(v391, 1, 1, v262);
      v263 = MEMORY[0x1E69E7CC0];
      v264 = v383;
      sub_1E65D7D68();
      v265 = v395;
      v266 = v384;
      v267 = v401;
      (*(v395 + 16))(v384, v264, v401);
      v268 = v396;
      v269 = v399;
      (*(v396 + 104))(v266, *MEMORY[0x1E69CC330], v399);
      v270 = sub_1E6427784(v263);
      v271 = v402;
      v272 = v413;
      sub_1E60C8828(v266, v402, v270);

      (*(v268 + 8))(v266, v269);
      v273 = v417;
      v274 = v272;
      sub_1E60C66A4(v271, v417, v416);
      (*(v265 + 8))(v264, v267);
      v275 = v415;
      v276 = v412;
      (*(v415 + 8))(v271, v412);
      v277 = v414;
      swift_beginAccess();
      (*(v275 + 24))(v274 + v277, v273, v276);
      return swift_endAccess();
    case 17:
      if ((sub_1E65DCFC8() & 1) == 0)
      {
        v214 = sub_1E65E60A8();
        (*(*(v214 - 8) + 56))(v358, 1, 1, v214);
        v215 = v412;
        v346(v350, v417, v412);
        sub_1E65E6058();

        v216 = sub_1E65E6048();
        v217 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v218 = (v348 + v217 + 7) & 0xFFFFFFFFFFFFFFF8;
        v219 = v101;
        v220 = swift_allocObject();
        v221 = MEMORY[0x1E69E85E0];
        *(v220 + 16) = v216;
        *(v220 + 24) = v221;
        (*(v100 + 32))(v220 + v217, v350, v215);
        *(v220 + v218) = v96;
        v222 = v220;
        v101 = v219;
        sub_1E64B80F8(0, 0, v358, &unk_1E65F0E70, v222);
      }

      swift_beginAccess();
      (*(v100 + 24))(v96 + v101, v417, v412);
      swift_endAccess();
      sub_1E65DD088();
      if (sub_1E65DD238())
      {
        v223 = v349;
        sub_1E65DD018();
        v224 = sub_1E65DCA08();
        sub_1E60C98D4(v223, MEMORY[0x1E699EE58]);
        if (v224)
        {
          sub_1E60C71F0(v224);
        }
      }

      return (v404)(v98, v412);
    case 18:
      if ((sub_1E65DCFC8() & 1) == 0)
      {
        v225 = *(v96 + 24);
        v226 = swift_getObjectType();
        v227 = v392;
        sub_1E65D7698();
        v228 = ImpressionsTracker.consumeImpressions(on:)(v227, v226, v225);
        (*(v394 + 8))(v227, v393);
        v229 = v384;
        *v384 = v228;
        v230 = v396;
        v231 = v399;
        (*(v396 + 104))(v229, *MEMORY[0x1E69CC318], v399);
        v232 = sub_1E6014274();
        sub_1E60C8828(v229, v98, v232);
        v101 = v414;

        (*(v230 + 8))(v229, v231);
      }

      v233 = v412;
      v404(v98, v412);
      swift_beginAccess();
      (*(v100 + 24))(v96 + v101, v417, v233);
      return swift_endAccess();
    default:
      goto LABEL_5;
  }
}

uint64_t sub_1E60C66A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a1;
  v58 = a2;
  v4 = sub_1E65DD0A8();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v47 - v7;
  v8 = sub_1E65D76A8();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D97D8();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1E65DD288();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  v20 = sub_1E65DD0D8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v23 = MEMORY[0x1E6944AD0](a3, v22);
  result = sub_1E60C98D4(v22, MEMORY[0x1E699EF50]);
  if ((v23 & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v25 = MEMORY[0x1E6944AD0](a3, v22);
    result = sub_1E60C98D4(v22, MEMORY[0x1E699EF50]);
    if ((v25 & 1) == 0)
    {
      sub_1E65DCFB8();
      sub_1E65DCFB8();
      v26 = MEMORY[0x1E6944C80](v19, v17);
      v27 = MEMORY[0x1E699EF78];
      sub_1E60C98D4(v17, MEMORY[0x1E699EF78]);
      result = sub_1E60C98D4(v19, v27);
      if ((v26 & 1) == 0)
      {
        v28 = v57;
        sub_1E65DCFB8();
        swift_storeEnumTagMultiPayload();
        v29 = MEMORY[0x1E6944C80](v19, v17);
        v30 = MEMORY[0x1E699EF78];
        sub_1E60C98D4(v17, MEMORY[0x1E699EF78]);
        sub_1E60C98D4(v19, v30);
        if ((v29 & 1) == 0 && (sub_1E65DCFC8() & 1) == 0)
        {
          v31 = *(v56 + 24);
          ObjectType = swift_getObjectType();
          sub_1E65D7698();
          v33 = ImpressionsTracker.consumeImpressions(on:)(v10, ObjectType, v31);
          (*(v48 + 8))(v10, v49);
          *v13 = v33;
          v35 = v50;
          v34 = v51;
          (*(v50 + 104))(v13, *MEMORY[0x1E69CC318], v51);
          v36 = sub_1E6014274();
          sub_1E60C8828(v13, v28, v36);

          (*(v35 + 8))(v13, v34);
        }

        result = sub_1E65DCFC8();
        if ((result & 1) == 0)
        {
          v37 = sub_1E65E60A8();
          v38 = v52;
          (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
          v40 = v53;
          v39 = v54;
          v41 = v55;
          (*(v54 + 16))(v53, v58, v55);
          sub_1E65E6058();
          v42 = v56;

          v43 = sub_1E65E6048();
          v44 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v45 = swift_allocObject();
          v46 = MEMORY[0x1E69E85E0];
          *(v45 + 16) = v43;
          *(v45 + 24) = v46;
          (*(v39 + 32))(v45 + v44, v40, v41);
          *(v45 + ((v5 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;
          sub_1E64B80F8(0, 0, v38, &unk_1E65F0EF8, v45);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E60C6C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v60 = a2;
  v6 = sub_1E65DD0A8();
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v48 - v10;
  v11 = sub_1E65D8C68();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v48 - v14;
  v15 = sub_1E65D76A8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65D97D8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v48 - v24);
  v61 = a1;
  if ((sub_1E65DCFC8() & 1) == 0)
  {
    v49 = v15;
    v26 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    sub_1E65D7698();
    v28 = ImpressionsTracker.consumeImpressions(on:)(v18, ObjectType, v26);
    (*(v16 + 8))(v18, v49);
    *v25 = v28;
    (*(v20 + 104))(v25, *MEMORY[0x1E69CC318], v19);
    v29 = v61;
    v30 = sub_1E6014274();
    sub_1E60C8828(v25, v29, v30);

    (*(v20 + 8))(v25, v19);
  }

  v31 = sub_1E65DD218();
  v32 = v56;
  v33 = v57;
  v34 = v58;
  (*(v57 + 104))(v56, **(&unk_1E8797408 + v31), v58);
  (*(v33 + 32))(v55, v32, v34);
  sub_1E65D7F28();
  (*(v20 + 104))(v23, *MEMORY[0x1E69CC348], v19);
  v35 = sub_1E6013C48();
  sub_1E60C8828(v23, v61, v35);

  (*(v20 + 8))(v23, v19);
  v36 = v60;
  result = sub_1E65DCFC8();
  if ((result & 1) == 0)
  {
    v38 = sub_1E65E60A8();
    v39 = v52;
    (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
    v40 = v53;
    v41 = v54;
    v42 = v50;
    (*(v54 + 16))(v50, v36, v53);
    sub_1E65E6058();

    v43 = sub_1E65E6048();
    v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v45 = (v51 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = MEMORY[0x1E69E85E0];
    *(v46 + 16) = v43;
    *(v46 + 24) = v47;
    (*(v41 + 32))(v46 + v44, v42, v40);
    *(v46 + v45) = v4;
    sub_1E64B80F8(0, 0, v39, &unk_1E65F0EB0, v46);
  }

  return result;
}

uint64_t sub_1E60C71F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65D76A8();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E5078();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E50A8();
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v27 = result;
    v28 = v8;
    v26 = v13;
    swift_beginAccess();
    sub_1E65DD088();
    swift_endAccess();
    v17 = sub_1E65DD238();
    v29 = v15;
    sub_1E65E5098();
    if (v17)
    {
      sub_1E65DCDD8();
      sub_1E65D7688();
      swift_getObjectType();
      sub_1E65E50C8();
      (*(v30 + 8))(v6, v4);
      (*(v28 + 8))(v10, v7);
    }

    v18 = *(v2 + 16);
    v33 = *(v2 + 24);
    v34 = v18;
    v35 = v4;
    ObjectType = swift_getObjectType();
    v32 = v7;
    v19 = *(sub_1E65DCE18() - 8);
    v20 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = *(v19 + 72);
    v22 = v29;
    v23 = (v30 + 8);
    v24 = (v28 + 8);
    do
    {
      sub_1E65DCDB8();
      sub_1E65D7688();
      sub_1E65E50C8();
      (*v23)(v6, v35);
      (*v24)(v10, v32);
      v20 += v21;
      --v16;
    }

    while (v16);
    return (*(v26 + 8))(v22, v27);
  }

  return result;
}

uint64_t sub_1E60C757C(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v3 = sub_1E65D76A8();
  v80 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1E65E5078();
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DCBA8();
  v92 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v94 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v70 - v12;
  v13 = sub_1E65E50A8();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DCBE8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DD128();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DD078();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1E60C98D4(v17, MEMORY[0x1E699EEA0]);
  }

  (*(v19 + 32))(v21, v17, v18);
  v81 = sub_1E60C8054(v91);
  if (!v81)
  {
    return (*(v19 + 8))(v21, v18);
  }

  v73 = v19;
  v74 = v18;
  v70 = v5;
  v71 = v3;
  v72 = v2;
  sub_1E65E5098();
  v75 = v21;
  v22 = sub_1E65DD118();
  v23 = v22;
  v90 = *(v22 + 16);
  v91 = v7;
  if (!v90)
  {
    v25 = MEMORY[0x1E69E7CC8];
LABEL_22:

    v46 = *(v81 + 16);
    v47 = v75;
    if (!v46)
    {
LABEL_50:

      (*(v82 + 8))(v84, v83);
      return (*(v73 + 8))(v47, v74);
    }

    v48 = v81 + 32;
    v89 = v92 + 16;
    v93 = (v80 + 8);
    v90 = (v79 + 8);
    v88 = v92 + 8;
    while (1)
    {
      v49 = *v48;
      if (!*(*v48 + 16))
      {
        goto LABEL_25;
      }

      v50 = sub_1E6215038(0x6973736572706D69, 0xEE00657079546E6FLL);
      if ((v51 & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_1E5DFA11C(*(v49 + 56) + 32 * v50, v97);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v52 = v96;
      if (!*(v49 + 16))
      {
        break;
      }

      v53 = v95;
      v54 = sub_1E6215038(25705, 0xE200000000000000);
      if ((v55 & 1) == 0)
      {
        break;
      }

      sub_1E5DFA11C(*(v49 + 56) + 32 * v54, v97);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v56 = v96;
      v94 = v95;
      if (v53 == 0x7265746C6966 && v52 == 0xE600000000000000 || (sub_1E65E6C18()) && v25[2] && (v57 = sub_1E6215038(v94, v56), (v58))
      {
        v59 = v57;

        v60 = v76;
        (*(v92 + 16))(v76, v25[7] + *(v92 + 72) * v59, v91);
        v61 = v77;
        sub_1E65DCB38();
        v62 = v70;
        sub_1E65D7688();
        v94 = *(v72 + 24);
        swift_getObjectType();
        sub_1E65E50C8();
        (*v93)(v62, v71);
        v63 = v61;
        v47 = v75;
        (*v90)(v63, v78);
        (*(v92 + 8))(v60, v91);
      }

      else
      {
        if (v53 == 0x666C656873 && v52 == 0xE500000000000000)
        {
        }

        else
        {
          v64 = sub_1E65E6C18();

          if ((v64 & 1) == 0)
          {

            v47 = v75;
            goto LABEL_25;
          }
        }

        if (v94 == sub_1E65DD248() && v56 == v65)
        {

LABEL_48:
          v67 = v77;
          sub_1E65DCB58();
          v68 = v70;
          sub_1E65D7688();
          swift_getObjectType();
          sub_1E65E50C8();
          (*v93)(v68, v71);
          v69 = v67;
          v47 = v75;
          (*v90)(v69, v78);
          goto LABEL_25;
        }

        v66 = sub_1E65E6C18();

        v47 = v75;
        if (v66)
        {
          goto LABEL_48;
        }
      }

LABEL_25:
      v48 += 8;
      if (!--v46)
      {
        goto LABEL_50;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v24 = 0;
  v89 = v22 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v87 = (v92 + 8);
  v88 = v92 + 16;
  v85 = (v92 + 40);
  v86 = (v92 + 32);
  v25 = MEMORY[0x1E69E7CC8];
  while (v24 < *(v23 + 16))
  {
    v26 = v93;
    v27 = *(v92 + 72);
    v28 = *(v92 + 16);
    v28(v93, v89 + v27 * v24, v7);
    v29 = sub_1E65DCB28();
    v31 = v30;
    v28(v94, v26, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = v25;
    v34 = sub_1E6215038(v29, v31);
    v35 = v25[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_53;
    }

    v38 = v33;
    if (v25[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v33)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1E6424EFC();
        if (v38)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1E641C358(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_1E6215038(v29, v31);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_55;
      }

      v34 = v39;
      if (v38)
      {
LABEL_5:

        v25 = v97[0];
        v7 = v91;
        (*v85)(*(v97[0] + 56) + v34 * v27, v94, v91);
        (*v87)(v93, v7);
        goto LABEL_6;
      }
    }

    v25 = v97[0];
    *(v97[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
    v41 = (v25[6] + 16 * v34);
    *v41 = v29;
    v41[1] = v31;
    v7 = v91;
    (*v86)(v25[7] + v34 * v27, v94, v91);
    (*v87)(v93, v7);
    v42 = v25[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_54;
    }

    v25[2] = v44;
LABEL_6:
    if (v90 == ++v24)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E60C8054(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E601C6B0(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1E5DFA11C(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730D8, &qword_1E65ECF30);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E601C6B0((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1E60C817C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65D97D8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_1E65D9F68();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_1E65D7A38();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  sub_1E65E6058();
  v5[13] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60C8328, v10, v9);
}

uint64_t sub_1E60C8328()
{
  v1 = v0[12];
  v12 = v0[11];
  v13 = v0[10];
  v7 = v0[9];
  v8 = v0[8];
  v2 = v0[6];
  v3 = v0[5];
  v11 = v0[4];
  v9 = v0[7];
  v10 = v0[2];

  sub_1E6013E58(v1);
  swift_getObjectType();
  sub_1E65DB6A8();
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  sub_1E65DB668();

  (*(v8 + 16))(v2, v7, v9);
  (*(v3 + 104))(v2, *MEMORY[0x1E69CC328], v11);
  v4 = sub_1E6014274();
  sub_1E60C8828(v2, v10, v4);

  (*(v3 + 8))(v2, v11);
  (*(v8 + 8))(v7, v9);
  (*(v12 + 8))(v1, v13);

  v5 = v0[1];

  return v5();
}

unint64_t sub_1E60C85A4(uint64_t a1)
{
  v1 = sub_1E65DD0A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1E6427784(MEMORY[0x1E69E7CC0]);
  }

  v6 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState;
  v7 = Strong;
  swift_beginAccess();
  (*(v2 + 16))(v4, v7 + v6, v1);

  v8 = sub_1E6014274();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_1E60C86F0(uint64_t a1)
{
  v1 = sub_1E65D76A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(Strong + 24);
  ObjectType = swift_getObjectType();
  sub_1E65D7698();
  v8 = ImpressionsTracker.consumeImpressions(on:)(v4, ObjectType, v6);
  (*(v2 + 8))(v4, v1);

  return v8;
}

uint64_t sub_1E60C8828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v62 = a1;
  v74 = sub_1E65E4F38();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1E65E4F68();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetricService();
  Description = v5[-1].Description;
  v67 = v5;
  v68 = Description[8];
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D8A08();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v54 - v18;
  v20 = sub_1E65D97D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E65D8C88();
  v24 = *(v58 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v58);
  v56 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v77 = &v54 - v27;
  v28 = sub_1E65D7A38();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v31;
  sub_1E6013E58(v31);
  (*(v21 + 16))(v23, v62, v20);
  v59 = v29;
  v32 = *(v29 + 16);
  v61 = v28;
  v32(v19, v31, v28);
  (*(v29 + 56))(v19, 0, 1, v28);
  v33 = sub_1E65D9208();
  (*(*(v33 - 8) + 56))(v54, 1, 1, v33);
  v34 = sub_1E65D9218();
  (*(*(v34 - 8) + 56))(v55, 1, 1, v34);
  v35 = v57;
  sub_1E65D8CA8();
  v36 = sub_1E65D8CB8();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v37 - 8) + 56))(v60, 1, 1, v37);
  v38 = sub_1E65D9928();
  (*(*(v38 - 8) + 56))(v64, 1, 1, v38);

  v39 = v77;
  sub_1E65D8C78();
  v69 = *(v70 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue);
  v40 = v65;
  v41 = Description;
  v42 = v67;
  (Description[2])(v65, v70 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService, v67);
  v43 = v56;
  v44 = v58;
  (*(v24 + 16))(v56, v39, v58);
  v45 = v41;
  v46 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v47 = (v68 + *(v24 + 80) + v46) & ~*(v24 + 80);
  v48 = swift_allocObject();
  (v45[4])(v48 + v46, v40, v42);
  (*(v24 + 32))(v48 + v47, v43, v44);
  aBlock[4] = sub_1E60C97C0;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_1;
  v49 = _Block_copy(aBlock);
  v50 = v71;
  sub_1E65E4F48();
  v78 = MEMORY[0x1E69E7CC0];
  sub_1E60C988C(&qword_1EE2D4A00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v51 = v72;
  v52 = v74;
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v50, v51, v49);
  _Block_release(v49);
  (*(v76 + 8))(v51, v52);
  (*(v73 + 8))(v50, v75);
  (*(v24 + 8))(v77, v44);
  (*(v59 + 8))(v63, v61);
}

id sub_1E60C9230(uint64_t a1, uint64_t a2)
{
  v3 = MetricService.record.getter();
  v3(a2);

  v4 = objc_opt_self();

  return [v4 sleepForTimeInterval_];
}

uint64_t SearchMetricsMonitor.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState;
  v2 = sub_1E65DD0A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService;
  v4 = type metadata accessor for MetricService();
  (*(v4[-1].Description + 1))(v0 + v3, v4);
  return v0;
}

uint64_t SearchMetricsMonitor.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState;
  v2 = sub_1E65DD0A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService;
  v4 = type metadata accessor for MetricService();
  (*(v4[-1].Description + 1))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchMetricsMonitor(uint64_t a1)
{
  result = qword_1EE2D9320;
  if (!qword_1EE2D9320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

ValueMetadata *sub_1E60C94C4(uint64_t a1)
{
  result = sub_1E65DD0A8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MetricService();
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

uint64_t sub_1E60C95C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DD0D8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60C9628(uint64_t a1)
{
  v4 = *(sub_1E65DD0A8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60C817C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60C9748(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E60C97C0()
{
  Description = type metadata accessor for MetricService()[-1].Description;
  v2 = (*(Description + 80) + 16) & ~*(Description + 80);
  v3 = Description[8];
  v4 = *(sub_1E65D8C88() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E60C9230(v0 + v2, v5);
}

uint64_t sub_1E60C988C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E60C98D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E60C9934(uint64_t a1)
{
  v4 = *(sub_1E65DD0A8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E60C817C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60C9A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A8, &qword_1E65F0F00);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v5;
  v6 = type metadata accessor for AppComposer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = sub_1E65E2618();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v33 = sub_1E65E25F8();
  v36 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v3;
  sub_1E5E1DEAC(v3, v15);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1E5E1E118(v15, v19 + v18, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v3, v13);
  v20 = swift_allocObject();
  sub_1E5E1E118(v13, v20 + v18, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v3, v10);
  v21 = swift_allocObject();
  sub_1E5E1E118(v10, v21 + v18, type metadata accessor for AppComposer);
  v22 = (v21 + ((v18 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v35;
  *v22 = v34;
  v22[1] = v23;

  sub_1E65E2608();
  v24 = v31;
  sub_1E65E25E8();
  type metadata accessor for AppFeature(0);
  sub_1E60CBB50(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E60CBB50(&qword_1EE2D6228, MEMORY[0x1E699F360], MEMORY[0x1E699F358]);
  v25 = v37;
  v26 = v33;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v27 = v26;
  v28 = sub_1E65E4F08();
  (*(v38 + 8))(v25, v39);
  (*(v36 + 8))(v24, v27);
  return v28;
}

uint64_t sub_1E60C9F04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B8, &qword_1E65F0F70);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60C9FA4, 0, 0);
}

uint64_t sub_1E60C9FA4()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SessionService.makeSessionSummaryDismissedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E60CA0C0;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E60CA0C0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E60CA1F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60CA1F0()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745C0, &qword_1E65F0F80);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4488, &qword_1ED0745C0, &qword_1E65F0F80, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4760, &qword_1ED0745B8, &qword_1E65F0F70, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E60CA32C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E60C9F04(a1, v1 + v5);
}

uint64_t sub_1E60CA408(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4654(a1, v1 + v5);
}

uint64_t sub_1E60CA4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v3[29] = type metadata accessor for RouteResource(0);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for RouteDestination(0);
  v3[32] = swift_task_alloc();
  v4 = sub_1E65D9048();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60CA608, 0, 0);
}

uint64_t sub_1E60CA608()
{
  *(v0 + 188) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 392) = *(type metadata accessor for AppEnvironment(0) + 144);
  active = WorkoutPlanService.evaluateActiveWorkoutPlanCompletion.getter();
  *(v0 + 288) = v2;
  v5 = (active + *active);
  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  *v3 = v0;
  v3[1] = sub_1E60CA724;

  return v5();
}

uint64_t sub_1E60CA724()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1E60CB2CC;
  }

  else
  {
    v2 = sub_1E60CA838;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60CA838()
{

  v1 = WorkoutPlanService.queryPendingWorkoutPlanSummary.getter();
  v0[39] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_1E60CA94C;
  v4 = v0[35];

  return v6(v4);
}

uint64_t sub_1E60CA94C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1E60CB548;
  }

  else
  {
    v2 = sub_1E60CAA60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60CAA60()
{
  v1 = *(v0 + 188);
  v2 = *(v0 + 208);

  *(v0 + 186) = *(v2 + v1 + 8);
  v3 = sub_1E65DAE38();
  *(v0 + 336) = v3;
  v4 = sub_1E65DAE38();
  *(v0 + 344) = v4;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v5 = *(v0 + 152);
  *(v0 + 352) = v5;
  if (v5 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v6 = sub_1E65E3B68();
    __swift_project_value_buffer(v6, qword_1EE2EA2A0);
    v7 = sub_1E65E3B48();
    v8 = sub_1E65E6328();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = *(v0 + 264);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1E5DE9000, v7, v8, "[PlanCompletionComposer] Failed to get the currently selected root item", v13, 2u);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    if (v3 == v4)
    {
      v14 = -64;
    }

    else
    {
      v14 = 0;
    }

    sub_1E5F94E00(1, v14);

    (*(v11 + 8))(v10, v12);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 144);
    *(v0 + 360) = v17;
    *(v0 + 160) = v17;
    *(v0 + 168) = v5;
    sub_1E65E6058();
    *(v0 + 368) = sub_1E65E6048();
    v19 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E60CACCC, v19, v18);
  }
}

uint64_t sub_1E60CACCC()
{
  v1 = v0[45];
  v2 = v0[44];
  v3 = v0[27];

  v3(v0 + 20);
  sub_1E5E07DA0(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E60CAD60, 0, 0);
}

uint64_t sub_1E60CAD60()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 272);
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    if (*(v0 + 336) == *(v0 + 344))
    {
      v7 = -64;
    }

    else
    {
      v7 = 0;
    }

    v29 = v7;
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v8 = *(v0 + 40);
    v28 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    (*(v1 + 16))(v6, v2, v4);
    v9 = sub_1E65DAE38();
    v10 = v9 != sub_1E65DAE38();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
    *(v6 + *(v11 + 48)) = v10;
    v12 = sub_1E65DAE38();
    *(v6 + *(v11 + 64)) = v12 != sub_1E65DAE38();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E118(v6, v3, type metadata accessor for RouteResource);
    *(v3 + *(v5 + 24)) = MEMORY[0x1E69E7CD0];
    *(v0 + 176) = 1;
    *(v0 + 184) = v29;
    sub_1E600F5B0((v0 + 185));
    v13 = swift_task_alloc();
    *(v0 + 376) = v13;
    *v13 = v0;
    v13[1] = sub_1E60CB0D8;
    v14 = *(v0 + 256);

    return RoutingContext.presentDestination(_:style:priority:)(v14, (v0 + 176), (v0 + 185), v8, v28);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v16 = sub_1E65E3B68();
    __swift_project_value_buffer(v16, qword_1EE2EA2A0);
    v17 = sub_1E65E3B48();
    v18 = sub_1E65E6328();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 336);
    v20 = *(v0 + 344);
    v23 = *(v0 + 272);
    v22 = *(v0 + 280);
    v24 = *(v0 + 264);
    if (v19)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1E5DE9000, v17, v18, "[PlanCompletionComposer] Failed to get routing context", v25, 2u);
      MEMORY[0x1E694F1C0](v25, -1, -1);
    }

    if (v21 == v20)
    {
      v26 = -64;
    }

    else
    {
      v26 = 0;
    }

    sub_1E5F94E00(1, v26);

    (*(v23 + 8))(v22, v24);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1E60CB0D8()
{
  v2 = *(*v1 + 256);
  *(*v1 + 384) = v0;

  sub_1E60111F8(v2);
  if (v0)
  {
    v3 = sub_1E60CB730;
  }

  else
  {
    v3 = sub_1E60CB208;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E60CB208()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  if (v0[42] == v0[43])
  {
    v4 = -64;
  }

  else
  {
    v4 = 0;
  }

  sub_1E5F94E00(1, v4);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E60CB2CC()
{
  v20 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[38];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1E65E6C78();
    v12 = sub_1E5DFD4B0(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[PlanCompletionComposer] Evaluating active workout plan completion failed with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v13 = WorkoutPlanService.queryPendingWorkoutPlanSummary.getter();
  v0[39] = v14;
  v18 = (v13 + *v13);
  v15 = swift_task_alloc();
  v0[40] = v15;
  *v15 = v0;
  v15[1] = sub_1E60CA94C;
  v16 = v0[35];

  return v18(v16);
}

uint64_t sub_1E60CB548()
{
  v14 = v0;

  v1 = *(v0 + 328);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1E65E6C78();
    v10 = sub_1E5DFD4B0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[PlanCompletionComposer] Querying pending workout plan summary failed with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E60CB730()
{
  v17 = v0;
  v1 = v0[42];
  v2 = v0[43];
  (*(v0[34] + 8))(v0[35], v0[33]);
  if (v1 == v2)
  {
    v3 = -64;
  }

  else
  {
    v3 = 0;
  }

  sub_1E5F94E00(1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[48];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = v4;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6328();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1E65E6C78();
    v13 = sub_1E5DFD4B0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "[PlanCompletionComposer] Querying pending workout plan summary failed with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E60CB948()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60CA4E4(v0 + v3, v5, v6);
}

uint64_t sub_1E60CBA54(uint64_t a1)
{
  v2 = sub_1E65E2628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E25C8();
  v6 = a1 + *(type metadata accessor for AppState(0) + 228);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  return (*(v3 + 40))(v6 + *(v7 + 28), v5, v2);
}

uint64_t sub_1E60CBB50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E60CBB98()
{
  v1 = v0 + *(type metadata accessor for AppState(0) + 136);
  v2 = *(v1 + 32);
  sub_1E5FED384(v2, *(v1 + 40), *(v1 + 48), *(v1 + 56));
  return v2;
}

uint64_t sub_1E60CBBFC()
{
  type metadata accessor for AppState(0);
}

uint64_t sub_1E60CBC34()
{
  type metadata accessor for AppState(0);
}

uint64_t sub_1E60CBC6C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppState(0) + 220);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E60CBD10@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppState(0) + 276);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v5 = sub_1E65DD0A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E60CBDA8()
{
  type metadata accessor for AppState(0);
}

uint64_t sub_1E60CBDE0()
{
  type metadata accessor for AppState(0);
}

uint64_t sub_1E60CBE18()
{
  type metadata accessor for AppState(0);
}

uint64_t sub_1E60CBE50@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppState(0) + 216);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v5 = sub_1E65E1B08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E60CBEE8()
{
  v1 = type metadata accessor for AppState(0);
  v2 = v0 + v1[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  sub_1E60E0610(v2, v2 + *(v3 + 28));
  *(v0 + v1[9] + 1) = *(v0 + v1[9]);
  v4 = (v0 + v1[11]);
  v5 = *v4;

  v4[1] = v5;
  v6 = (v0 + v1[14]);
  v7 = *v6;

  v6[1] = v7;
  v8 = (v0 + v1[15]);
  v9 = *v8;

  v8[1] = v9;
  v10 = (v0 + v1[16]);
  v11 = *v10;

  v10[1] = v11;
  v12 = (v0 + v1[17]);
  v13 = *v12;

  v12[1] = v13;
  v14 = v0;
  v15 = v0 + v1[18];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  sub_1E60E0674(v15, v15 + *(v16 + 28));
  v17 = v1;
  v18 = v14 + v1[19];
  v19 = v14;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48) + 28);
  v21 = sub_1E65DBD48();
  (*(*(v21 - 8) + 24))(v18 + v20, v18, v21);
  v22 = (v19 + v17[24]);
  v23 = *v22;

  v22[1] = v23;
  v24 = (v19 + v17[25]);
  v25 = *v24;

  v24[1] = v25;
  v26 = v19 + v17[26];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038) + 28);
  v28 = sub_1E65E02A8();
  (*(*(v28 - 8) + 24))(v26 + v27, v26, v28);
  v29 = v19 + v17[27];
  v84 = v19;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  v31 = sub_1E65E23A8();
  (*(*(v31 - 8) + 24))(v29 + v30, v29, v31);
  v32 = (v19 + v17[33]);
  v33 = *v32;

  v32[1] = v33;
  v34 = v19 + v17[34];
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  v38 = *(v34 + 32);
  v39 = *(v34 + 40);
  v40 = *(v34 + 48);
  v41 = *(v34 + 24);
  v42 = *(v34 + 56);
  sub_1E5FED384(*v34, v36, v37, v41);
  sub_1E5FED324(v38, v39, v40, v42);
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  *(v34 + 48) = v37;
  *(v34 + 56) = v41;
  v43 = v84 + v17[36];
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8) + 28);
  v45 = sub_1E65DC638();
  (*(*(v45 - 8) + 24))(v43 + v44, v43, v45);
  v46 = (v84 + v17[43]);
  v47 = *v46;

  v46[1] = v47;
  v48 = (v84 + v17[44]);
  v49 = *v48;

  v48[1] = v49;
  v50 = v84 + v17[45];
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  v52 = sub_1E65DF608();
  (*(*(v52 - 8) + 24))(v50 + v51, v50, v52);
  v53 = (v84 + v17[48]);
  v54 = v53[1];
  v55 = v53[2];
  v56 = v53[3];
  v57 = v53[4];
  v58 = v53[5];
  v59 = v53[6];
  v85 = *v53;

  v53[7] = v85;
  v53[8] = v54;
  v53[9] = v55;
  v53[10] = v56;
  v53[11] = v57;
  v53[12] = v58;
  v53[13] = v59;
  v60 = v84 + v17[49];
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0) + 28);
  v62 = sub_1E65DB1C8();
  (*(*(v62 - 8) + 24))(v60 + v61, v60, v62);
  v63 = v84 + v17[55];
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  (*(*(v65 - 8) + 24))(v63 + v64, v63, v65);
  v66 = v84 + v17[54];
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v68 = sub_1E65E1B08();
  (*(*(v68 - 8) + 24))(v66 + v67, v66, v68);
  v69 = v84 + v17[57];
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38) + 28);
  v71 = sub_1E65E2628();
  (*(*(v71 - 8) + 24))(v69 + v70, v69, v71);
  v72 = (v84 + v17[58]);
  v73 = *v72;

  v72[1] = v73;
  v74 = (v84 + v17[67]);
  v75 = *v74;

  v74[1] = v75;
  v76 = (v84 + v17[68]);
  v77 = *v76;

  v76[1] = v77;
  v78 = v84 + v17[69];
  v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v80 = sub_1E65DD0A8();
  (*(*(v80 - 8) + 24))(v78 + v79, v78, v80);
  v81 = (v84 + v17[79]);
  v82 = *v81;

  v81[1] = v82;
  return result;
}