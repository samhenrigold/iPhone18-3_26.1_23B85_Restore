uint64_t sub_1DD3F336C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Expander = type metadata accessor for StripDiacriticsQueryExpander(0);
  MEMORY[0x1EEE9AC00](Expander - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD63F9F8();
  __swift_project_value_buffer(v7, qword_1EE16F068);
  v8 = sub_1DD63F9D8();
  v9 = sub_1DD640368();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DD38D000, v8, v9, "running initial expanders", v10, 2u);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
  }

  v11 = *(type metadata accessor for ContactResolverConfig(0) + 32);
  v12 = sub_1DD63D168();
  (*(*(v12 - 8) + 16))(v6, a1 + v11, v12);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v15);
  *(&v20 - 10) = v6;
  *(&v20 - 9) = sub_1DD5E9D00;
  *(&v20 - 8) = 0;
  *(&v20 - 7) = KeyPath;
  *(&v20 - 6) = sub_1DD5E9CFC;
  *(&v20 - 5) = 0;
  *(&v20 - 4) = v14;
  *(&v20 - 3) = sub_1DD5E9D04;
  *(&v20 - 2) = 0;
  *(&v20 - 1) = v16;
  sub_1DD604BFC();
  v18 = v17;

  *a2 = v18;
  return sub_1DD3FA798(v6, type metadata accessor for StripDiacriticsQueryExpander);
}

void sub_1DD3F35F4(int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t (*a10)(void), uint64_t a11, uint64_t a12)
{
  v168 = a8;
  v169 = a7;
  v159 = a6;
  v171 = a5;
  v172 = a4;
  v161 = a3;
  v144 = a2;
  v178 = a1;
  v141 = a9;
  v166 = a12;
  v167 = a11;
  v156 = a10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC200, &qword_1DD645998);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v155 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v158 = &v138 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v149 = &v138 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v138 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v138 - v21;
  Expander = type metadata accessor for StripDiacriticsQueryExpander(0);
  MEMORY[0x1EEE9AC00](Expander - 8);
  v173 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &unk_1DD6459A0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v30 = *(v29 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v145 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v138 = &v138 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v146 = &v138 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v139 = &v138 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v154 = &v138 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v147 = &v138 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v140 = &v138 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v157 = &v138 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v148 = &v138 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v142 = &v138 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v160 = &v138 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v150 = &v138 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v143 = &v138 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v162 = &v138 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = (&v138 - v59);
  MEMORY[0x1EEE9AC00](v61);
  v63 = (&v138 - v62);
  memcpy(v176, v178, sizeof(v176));
  sub_1DD43038C(v27);
  memcpy(v177, v27 + 8, 0x108uLL);
  sub_1DD3C9478(v176, v175);
  sub_1DD3C9580(v177);
  memcpy(v27 + 8, v176, 0x108uLL);
  v178 = v29;
  sub_1DD3FA93C(v27, v63 + v29[9]);
  memcpy(v63, v176, 0x108uLL);
  sub_1DD3C9478(v176, v175);
  sub_1DD3FA798(v27, type metadata accessor for ContactResolver.SignalSet);
  sub_1DD5C1204(v63);
  v65 = v64;
  sub_1DD390754(v63, &qword_1ECCDBC18, &unk_1DD6459A0);
  v175[0] = v65;
  v170 = *(v65 + 16);
  v153 = v63 + 41;

  v66 = 0;
  v152 = MEMORY[0x1E69E7CC0];
  v165 = v65;
  while (v170 != v66)
  {
    if (v66 >= *(v65 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v164 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v67 = v65 + v164;
    v68 = v30;
    v163 = *(v30 + 72);
    sub_1DD3EB3D0(v67 + v163 * v66, v60, &qword_1ECCDBC18, v28);
    v69 = v60[6];
    v70 = v60[5] & 0xFFFFFFFFFFFFLL;
    if ((v69 & 0x2000000000000000) != 0)
    {
      v70 = HIBYTE(v69) & 0xF;
    }

    if (v70)
    {
      goto LABEL_10;
    }

    v71 = v60[16];
    v72 = v60[15] & 0xFFFFFFFFFFFFLL;
    if ((v71 & 0x2000000000000000) != 0)
    {
      v72 = HIBYTE(v71) & 0xF;
    }

    if (v72)
    {
LABEL_10:
      sub_1DD3EB3D0(v60, v63, &qword_1ECCDBC18, v28);

      v63[5] = 0;
      v63[6] = 0xE000000000000000;

      v63[15] = 0;
      v63[16] = 0xE000000000000000;
      v73 = v22;
      v74 = v178;
      *(v153 + v178[9]) = 1;
      sub_1DD3EB3D0(v63, v73, &qword_1ECCDBC18, v28);
      __swift_storeEnumTagSinglePayload(v73, 0, 1, v74);
      sub_1DD390754(v63, &qword_1ECCDBC18, v28);
    }

    else
    {
      v76 = v22;
      v73 = v22;
      v74 = v178;
      __swift_storeEnumTagSinglePayload(v76, 1, 1, v178);
    }

    v75 = v28;
    sub_1DD390754(v60, &qword_1ECCDBC18, v28);
    if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
    {
      sub_1DD390754(v73, &qword_1ECCDC200, &qword_1DD645998);
      ++v66;
      v22 = v73;
      v30 = v68;
      v65 = v165;
    }

    else
    {
      v77 = v143;
      sub_1DD3EB4B8(v73, v143, &qword_1ECCDBC18, v75);
      sub_1DD3EB4B8(v77, v150, &qword_1ECCDBC18, v75);
      v22 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BF7FC();
        v152 = v81;
      }

      v78 = *(v152 + 16);
      v79 = v78 + 1;
      v28 = v75;
      if (v78 >= *(v152 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v79 = v78 + 1;
        v152 = v82;
      }

      v30 = v68;
      ++v66;
      v80 = v152;
      *(v152 + 16) = v79;
      sub_1DD3EB4B8(v150, v80 + v164 + v78 * v163, &qword_1ECCDBC18, v28);
      v65 = v165;
    }
  }

  sub_1DD607914(v152);
  v83 = v175[0];
  sub_1DD3FA93C(v144, v173);
  v84 = 0;
  v164 = MEMORY[0x1E69E7CC0];
  v165 = v83;
  v170 = *(v83 + 16);
  v85 = v151;
  v174 = v30;
  while (v170 != v84)
  {
    if (v84 >= *(v83 + 16))
    {
      goto LABEL_61;
    }

    v86 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v87 = *(v30 + 72);
    v88 = v162;
    sub_1DD3EB3D0(v83 + v86 + v87 * v84, v162, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD5E9D08(v88, v85);
    sub_1DD390754(v88, &qword_1ECCDBC18, &unk_1DD6459A0);
    if (__swift_getEnumTagSinglePayload(v85, 1, v178) == 1)
    {
      sub_1DD390754(v85, &qword_1ECCDC200, &qword_1DD645998);
      ++v84;
      v83 = v165;
      v30 = v174;
    }

    else
    {
      v89 = v142;
      sub_1DD3EB4B8(v85, v142, &qword_1ECCDBC18, &unk_1DD6459A0);
      sub_1DD3EB4B8(v89, v148, &qword_1ECCDBC18, &unk_1DD6459A0);
      v90 = v164;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BF7FC();
        v90 = v93;
      }

      v83 = v165;
      v91 = v87;
      v30 = v174;
      v92 = *(v90 + 16);
      if (v92 >= *(v90 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v90 = v94;
      }

      ++v84;
      *(v90 + 16) = v92 + 1;
      v164 = v90;
      sub_1DD3EB4B8(v148, v90 + v86 + v92 * v91, &qword_1ECCDBC18, &unk_1DD6459A0);
      v85 = v151;
    }
  }

  sub_1DD3FA798(v173, type metadata accessor for StripDiacriticsQueryExpander);
  sub_1DD607914(v164);
  v95 = v175[0];
  v173 = *(v175[0] + 16);

  v96 = 0;
  v165 = MEMORY[0x1E69E7CC0];
  v97 = v149;
  v170 = v95;
  while (v173 != v96)
  {
    if (v96 >= *(v95 + 16))
    {
      goto LABEL_62;
    }

    v98 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v99 = *(v30 + 72);
    v100 = v160;
    sub_1DD3EB3D0(v95 + v98 + v99 * v96, v160, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD5E9970(v100, v161, v171, v97);
    sub_1DD390754(v100, &qword_1ECCDBC18, &unk_1DD6459A0);
    if (__swift_getEnumTagSinglePayload(v97, 1, v178) == 1)
    {
      sub_1DD390754(v97, &qword_1ECCDC200, &qword_1DD645998);
      ++v96;
      v95 = v170;
    }

    else
    {
      v101 = v97;
      v102 = v140;
      sub_1DD3EB4B8(v101, v140, &qword_1ECCDBC18, &unk_1DD6459A0);
      sub_1DD3EB4B8(v102, v147, &qword_1ECCDBC18, &unk_1DD6459A0);
      v103 = v165;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BF7FC();
        v103 = v105;
      }

      v104 = *(v103 + 16);
      if (v104 >= *(v103 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v103 = v106;
      }

      ++v96;
      *(v103 + 16) = v104 + 1;
      v165 = v103;
      sub_1DD3EB4B8(v147, v103 + v98 + v104 * v99, &qword_1ECCDBC18, &unk_1DD6459A0);
      v97 = v149;
      v95 = v170;
    }
  }

  sub_1DD607914(v165);
  v107 = v175[0];
  v173 = *(v175[0] + 16);

  v108 = 0;
  v172 = MEMORY[0x1E69E7CC0];
  while (v173 != v108)
  {
    if (v108 >= *(v107 + 16))
    {
      goto LABEL_63;
    }

    v109 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v110 = v30;
    v111 = v107;
    v112 = *(v110 + 72);
    v113 = v107 + v109 + v112 * v108;
    v114 = v157;
    sub_1DD3EB3D0(v113, v157, &qword_1ECCDBC18, &unk_1DD6459A0);
    v115 = v158;
    sub_1DD5E9970(v114, v159, v168, v158);
    sub_1DD390754(v114, &qword_1ECCDBC18, &unk_1DD6459A0);
    if (__swift_getEnumTagSinglePayload(v115, 1, v178) == 1)
    {
      sub_1DD390754(v115, &qword_1ECCDC200, &qword_1DD645998);
      ++v108;
      v107 = v111;
      v30 = v174;
    }

    else
    {
      v171 = v112;
      v116 = v115;
      v117 = v139;
      sub_1DD3EB4B8(v116, v139, &qword_1ECCDBC18, &unk_1DD6459A0);
      sub_1DD3EB4B8(v117, v146, &qword_1ECCDBC18, &unk_1DD6459A0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BF7FC();
        v172 = v121;
      }

      v107 = v111;
      v118 = v171;
      v119 = *(v172 + 16);
      v30 = v174;
      if (v119 >= *(v172 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v172 = v122;
      }

      ++v108;
      v120 = v172;
      *(v172 + 16) = v119 + 1;
      sub_1DD3EB4B8(v146, v120 + v109 + v119 * v118, &qword_1ECCDBC18, &unk_1DD6459A0);
    }
  }

  sub_1DD607914(v172);
  v123 = v175[0];
  v173 = *(v175[0] + 16);

  v124 = 0;
  v172 = MEMORY[0x1E69E7CC0];
  while (v173 != v124)
  {
    if (v124 >= *(v123 + 16))
    {
      goto LABEL_64;
    }

    v125 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v126 = v123;
    v127 = *(v30 + 72);
    v128 = v123 + v125 + v127 * v124;
    v129 = v154;
    sub_1DD3EB3D0(v128, v154, &qword_1ECCDBC18, &unk_1DD6459A0);
    v130 = v155;
    sub_1DD5E9970(v129, v156, v166, v155);
    sub_1DD390754(v129, &qword_1ECCDBC18, &unk_1DD6459A0);
    if (__swift_getEnumTagSinglePayload(v130, 1, v178) == 1)
    {
      sub_1DD390754(v130, &qword_1ECCDC200, &qword_1DD645998);
      ++v124;
      v123 = v126;
      v30 = v174;
    }

    else
    {
      v171 = v127;
      v131 = v130;
      v132 = v138;
      sub_1DD3EB4B8(v131, v138, &qword_1ECCDBC18, &unk_1DD6459A0);
      sub_1DD3EB4B8(v132, v145, &qword_1ECCDBC18, &unk_1DD6459A0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BF7FC();
        v172 = v136;
      }

      v123 = v126;
      v133 = v171;
      v134 = *(v172 + 16);
      if (v134 >= *(v172 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v172 = v137;
      }

      ++v124;
      v135 = v172;
      *(v172 + 16) = v134 + 1;
      sub_1DD3EB4B8(v145, v135 + v125 + v134 * v133, &qword_1ECCDBC18, &unk_1DD6459A0);
      v30 = v174;
    }
  }

  sub_1DD607914(v172);
  *v141 = v175[0];
}

uint64_t sub_1DD3F45A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *a1;
  if (*(v8 + 16))
  {
    sub_1DD3EB3D0(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), &v11 - v6, &qword_1ECCDBC18, &unk_1DD6459A0);
    v9 = sub_1DD4BE138(v7);
    v12 = v8;

    sub_1DD607914(v9);
    result = sub_1DD390754(v7, &qword_1ECCDBC18, &unk_1DD6459A0);
    v8 = v12;
  }

  else
  {
  }

  *a2 = v8;
  return result;
}

uint64_t sub_1DD3F46E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v24[2] = a2;
  v25 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC200, &qword_1DD645998);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  v19 = *a1;
  if (!*(v19 + 16))
  {
    goto LABEL_4;
  }

  v24[0] = a5;
  v24[1] = v5;
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  sub_1DD3EB3D0(v19 + v20, v24 - v17, &qword_1ECCDBC18, &unk_1DD6459A0);
  v21 = type metadata accessor for CandidateContactGenerator(0);
  sub_1DD554874(v18, *(a3 + *(v21 + 80)), v25, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1DD390754(v18, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD390754(v11, &qword_1ECCDC200, &qword_1DD645998);
    a5 = v24[0];
LABEL_4:
    *a5 = v19;
  }

  sub_1DD3EB4B8(v11, v15, &qword_1ECCDBC18, &unk_1DD6459A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD643F90;
  sub_1DD3EB3D0(v15, v23 + v20, &qword_1ECCDBC18, &unk_1DD6459A0);
  v26 = v19;

  sub_1DD607914(v23);
  sub_1DD390754(v15, &qword_1ECCDBC18, &unk_1DD6459A0);
  result = sub_1DD390754(v18, &qword_1ECCDBC18, &unk_1DD6459A0);
  *v24[0] = v26;
  return result;
}

void sub_1DD3F499C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v23 - v5;
  v6 = type metadata accessor for RelationshipAliasGenerator(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1DD3FA93C(a2, v8);
  v10 = 0;
  v27 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v27 == v10)
    {
      sub_1DD3FA798(v8, type metadata accessor for RelationshipAliasGenerator);
      *v23 = v11;
      return;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v12 = v25;
    v13 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v14 = v9;
    v15 = *(v26 + 72);
    v28 = v10;
    sub_1DD3EB3D0(v9 + v13 + v15 * v10, v25, &qword_1ECCDBC18, &unk_1DD6459A0);
    v16 = sub_1DD57FAAC(v12);
    sub_1DD390754(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
    v17 = *(v16 + 16);
    v18 = *(v11 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_17;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > *(v11 + 24) >> 1)
    {
      sub_1DD3BF7FC();
      v11 = v19;
    }

    if (*(v16 + 16))
    {
      if ((*(v11 + 24) >> 1) - *(v11 + 16) < v17)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      v9 = v14;
      if (v17)
      {
        v20 = *(v11 + 16);
        v21 = __OFADD__(v20, v17);
        v22 = v20 + v17;
        if (v21)
        {
          goto LABEL_20;
        }

        *(v11 + 16) = v22;
      }
    }

    else
    {

      v9 = v14;
      if (v17)
      {
        goto LABEL_18;
      }
    }

    v10 = v28 + 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1DD3F4C68(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  sub_1DD582FA8(sub_1DD3FA994, v6, v4);
  *a3 = v5;
}

uint64_t sub_1DD3F4CB8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  return sub_1DD63FE38();
}

void sub_1DD3F4CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16F068);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DD38D000, v9, v10, "running FirstContactQuery", v11, 2u);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
  }

  swift_beginAccess();
  v12 = *a4;

  v13 = sub_1DD3F5088(a3, v12);

  if (!v4)
  {
    swift_beginAccess();
    *(a1 + 16) = v13;

    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v16 = 136315138;
      swift_beginAccess();
      v17 = *(a1 + 16);
      swift_getKeyPath();
      v18 = *(v17 + 16);
      if (v18)
      {
        v27 = v15;
        v28 = v14;
        v31 = MEMORY[0x1E69E7CC0];

        sub_1DD42B97C(0, v18, 0);
        v19 = 32;
        v20 = v31;
        do
        {

          swift_getAtKeyPath();

          v22 = *(v31 + 16);
          v21 = *(v31 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1DD42B97C(v21 > 1, v22 + 1, 1);
          }

          *(v31 + 16) = v22 + 1;
          *(v31 + 8 * v22 + 32) = v30;
          v19 += 8;
          --v18;
        }

        while (v18);

        v14 = v28;
        v15 = v27;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      v23 = MEMORY[0x1E12B2430](v20, MEMORY[0x1E69E6530]);
      v25 = v24;

      v26 = sub_1DD39565C(v23, v25, &v32);

      *(v16 + 4) = v26;
      _os_log_impl(&dword_1DD38D000, v14, v15, "matches after FirstContactQuery: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
      MEMORY[0x1E12B3DA0](v16, -1, -1);
    }
  }
}

uint64_t sub_1DD3F5088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16F068);
  v7 = sub_1DD63F9D8();
  sub_1DD640368();
  v8 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_28();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_53_2();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_11_11();
    MEMORY[0x1E12B3DA0](v16);
  }

  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31_0();
  *(v18 - 16) = a1;
  *(v18 - 8) = v3;
  return sub_1DD6051E4(sub_1DD3FAA34, v19, a2);
}

void sub_1DD3F5198(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *a1;
  v9 = *(*a1 + 16);

  swift_beginAccess();
  v10 = -v9;
  v11 = 4;
  v44 = a2;
  v46 = -v9;
  while (v10 + v11 != 4)
  {
    v12 = v11 - 4;
    if ((v11 - 4) >= *(v8 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = *(a2 + 16);
    if (v12 >= *(v13 + 16))
    {
      goto LABEL_29;
    }

    if (!*(*(v13 + 8 * v11) + 16))
    {
      v14 = *(v8 + 8 * v11);
      v15 = qword_1EE165FB0;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_1DD63F9F8();
      __swift_project_value_buffer(v16, qword_1EE16F068);
      v17 = sub_1DD63F9D8();
      v18 = sub_1DD640368();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = v8;
        v20 = a3;
        v21 = v4;
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v12;
        _os_log_impl(&dword_1DD38D000, v17, v18, "running SRRSearchProvider for query %ld", v22, 0xCu);
        v23 = v22;
        v4 = v21;
        a3 = v20;
        v8 = v19;
        a2 = v44;
        MEMORY[0x1E12B3DA0](v23, -1, -1);
      }

      v24 = sub_1DD5CFA98(v14);

      if (v4)
      {

        return;
      }

      swift_beginAccess();
      v25 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A30();
        v25 = v27;
        *(a2 + 16) = v27;
      }

      if (v12 >= *(v25 + 16))
      {
        goto LABEL_30;
      }

      *(v25 + 8 * v11) = v24;
      *(a2 + 16) = v25;
      swift_endAccess();

      v10 = v46;
    }

    ++v11;
  }

  if (qword_1EE165FB0 == -1)
  {
    goto LABEL_17;
  }

LABEL_31:
  swift_once();
LABEL_17:
  v28 = sub_1DD63F9F8();
  __swift_project_value_buffer(v28, qword_1EE16F068);

  v29 = sub_1DD63F9D8();
  v30 = sub_1DD640368();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136315138;
    swift_beginAccess();
    v33 = *(a2 + 16);
    swift_getKeyPath();
    v34 = *(v33 + 16);
    if (v34)
    {
      v43 = v32;
      v45 = v30;
      v48 = MEMORY[0x1E69E7CC0];

      sub_1DD42B97C(0, v34, 0);
      v35 = 32;
      v36 = v48;
      do
      {

        swift_getAtKeyPath();

        v38 = *(v48 + 16);
        v37 = *(v48 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1DD42B97C(v37 > 1, v38 + 1, 1);
        }

        *(v48 + 16) = v38 + 1;
        *(v48 + 8 * v38 + 32) = v47;
        v35 += 8;
        --v34;
      }

      while (v34);

      v30 = v45;
      v32 = v43;
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v39 = MEMORY[0x1E12B2430](v36, MEMORY[0x1E69E6530]);
    v41 = v40;

    v42 = sub_1DD39565C(v39, v41, &v49);

    *(v31 + 4) = v42;
    _os_log_impl(&dword_1DD38D000, v29, v30, "matches after SRRSearchProvider: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E12B3DA0](v32, -1, -1);
    MEMORY[0x1E12B3DA0](v31, -1, -1);
  }

  else
  {
  }
}

void sub_1DD3F5664()
{
  OUTLINED_FUNCTION_93();
  v20 = v1;
  v21 = v2;
  v3 = OUTLINED_FUNCTION_14();
  v4 = type metadata accessor for Signpost(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  v10 = v8 + *(v4 + 20);
  *v10 = "ContactResolver.SearchByPartialName";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v11 = v9;
  sub_1DD63F9B8();
  *(v8 + *(v4 + 24)) = v11;
  v11;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD643F90;
  v13 = sub_1DD6408F8();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1DD392BD8();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_55_2();
  sub_1DD63F998();

  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_0();
  *(v17 - 16) = v0;
  *(v17 - 8) = v0;
  sub_1DD3ECE74(sub_1DD3FA9D0, v18, v20, v21);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_55_2();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_0_27();
  sub_1DD3FA798(v8, v19);
  OUTLINED_FUNCTION_86();
}

void sub_1DD3F5874()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v32 = v4;
  v5 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E0, &qword_1DD645930);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for HypocorismGenerator(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  sub_1DD3EB3D0(v1, v13, &qword_1ECCDC1E0, &qword_1DD645930);
  OUTLINED_FUNCTION_8(v13, 1, v14);
  if (v19)
  {
    sub_1DD390754(v13, &qword_1ECCDC1E0, &qword_1DD645930);
    type metadata accessor for InferenceError();
    swift_initStackObject();
    sub_1DD4DE96C(9, 0, 0xE000000000000000, 0xD000000000000094, 0x80000001DD66AB10, 0xD00000000000002BLL, 0x80000001DD66ABB0, 423, MEMORY[0x1E69E7CC0], 1);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F0C8);
    sub_1DD4DEB78();
  }

  else
  {
    sub_1DD3FAE44(v13, v18);
    if (qword_1EE166460 != -1)
    {
      OUTLINED_FUNCTION_2_2();
      swift_once();
    }

    v21 = qword_1EE16F0C0;
    v22 = v9 + *(v5 + 20);
    *v22 = "ContactResolver.SearchByHypocorism";
    *(v22 + 8) = 34;
    *(v22 + 16) = 2;
    v23 = v21;
    sub_1DD63F9B8();
    *(v9 + *(v5 + 24)) = v23;
    v23;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DD643F90;
    v25 = sub_1DD6408F8();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1DD392BD8();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    OUTLINED_FUNCTION_97();
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_62_1();
    sub_1DD63F998();
    v28 = OUTLINED_FUNCTION_104_0();
    MEMORY[0x1EEE9AC00](v28);
    *(&v31 - 4) = v18;
    *(&v31 - 3) = v1;
    v30 = v32;
    sub_1DD3ECE74(sub_1DD3FAB54, (&v31 - 6), v33, v34);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_62_1();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v9, v29);
    OUTLINED_FUNCTION_44_1();
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD3F5CA0()
{
  OUTLINED_FUNCTION_93();
  v16 = v0;
  v17 = v1;
  v2 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  v8 = v6 + *(v2 + 20);
  *v8 = "ContactResolver.SearchByFoundInApps";
  *(v8 + 8) = 35;
  *(v8 + 16) = 2;
  v9 = v7;
  sub_1DD63F9B8();
  *(v6 + *(v2 + 24)) = v9;
  v9;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_55_2();
  sub_1DD63F998();

  MEMORY[0x1EEE9AC00](v14);
  sub_1DD3ECBDC(v16, v17, sub_1DD3FAB78);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_55_2();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_0_27();
  sub_1DD3FA798(v6, v15);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD3F5EAC@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_getKeyPath();
  v6 = *(v5 + 16);
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];

    sub_1DD42B97C(0, v6, 0);
    v7 = 32;
    v8 = v15;
    do
    {

      swift_getAtKeyPath();

      v9 = *(v15 + 16);
      if (v9 >= *(v15 + 24) >> 1)
      {
        OUTLINED_FUNCTION_90();
        sub_1DD42B97C(v10, v11, v12);
      }

      *(v15 + 16) = v9 + 1;
      *(v15 + 8 * v9 + 32) = v14;
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DD3F5FF4(_BYTE *a1, uint64_t a2)
{
  v143 = a2;
  v145 = a1;
  v139 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v138 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v4);
  v131 = sub_1DD640478();
  OUTLINED_FUNCTION_0();
  v130 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v7);
  v128 = sub_1DD640438();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v9);
  v10 = sub_1DD63FBD8();
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v13 = OUTLINED_FUNCTION_14_2(v12);
  IsRecentSignalProvider = type metadata accessor for IsRecentSignalProvider(v13);
  v15 = OUTLINED_FUNCTION_3(IsRecentSignalProvider);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v16);
  v144 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v146 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v133 = v19;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_3();
  v22 = OUTLINED_FUNCTION_14_2(v21);
  v23 = type metadata accessor for Signpost(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  v135 = v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v127 - v27;
  if (qword_1EE166460 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v29 = qword_1EE16F0C0;
  v30 = v28 + v23[5];
  *v30 = "ContactResolver.AddSignalsToContacts";
  *(v30 + 8) = 36;
  *(v30 + 16) = 2;
  v31 = v29;
  sub_1DD63F9B8();
  v134 = v23;
  *(v28 + v23[6]) = v31;
  v32 = v31;
  v33 = sub_1DD6404D8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v35 = swift_allocObject();
  v148 = xmmword_1DD643F90;
  *(v35 + 16) = xmmword_1DD643F90;
  v36 = sub_1DD6408F8();
  v38 = v37;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  v147 = sub_1DD392BD8();
  *(v35 + 64) = v147;
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_121();
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v136 = v28;
  v39 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v39, qword_1EE16F068);
  v40 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_115();
  if (os_log_type_enabled(v40, v41))
  {
    OUTLINED_FUNCTION_28();
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1DD38D000, v40, v33, "Attempting to add signals to contact candidates", v42, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v160 = v143;
  v141 = type metadata accessor for ContactResolverConfig(0);
  LOWORD(v154[0]) = *&v145[v141[15]];

  sub_1DD3F92D8();
  v43 = v32;
  v44 = v142;
  sub_1DD63F9B8();
  v45 = sub_1DD6404D8();
  v143 = v34;
  OUTLINED_FUNCTION_23_5();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_109(v46);
  v28 = 2;
  sub_1DD6408F8();
  OUTLINED_FUNCTION_110();
  v46[3].n128_u64[1] = v48;
  v46[4].n128_u64[0] = v47;
  v46[2].n128_u64[0] = v49;
  v46[2].n128_u64[1] = v50;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_75_0();
  sub_1DD63F998();

  sub_1DD583BB8(&v160);
  sub_1DD6404C8();
  OUTLINED_FUNCTION_75_0();
  sub_1DD63F9A8();
  v51 = *(v146 + 8);
  v146 += 8;
  v51(v44, v144);
  v52 = v160;
  v53 = *(v160 + 16);

  v54 = 0;
  v23 = 0;
  v55 = v52;
LABEL_7:
  v56 = v54;
  while (v53 != v56)
  {
    if (v56 >= *(v52 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v54 = v56 + 1;
    v57 = *(*(v52 + 32 + 8 * v56++) + 16);
    if (v57 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A30();
        v55 = v64;
      }

      if (v54 - 1 >= *(v55 + 16))
      {
        __break(1u);
      }

      else
      {
        v140 = v23;
        v23 = v43;
        v58 = v51;
        v28 = v55 + 8 * v54;
        v45 = *(v28 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v28 + 24) = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD586A18();
          v45 = v65;
          *(v28 + 24) = v65;
        }

        if (*(v45 + 16))
        {
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
          v61 = OUTLINED_FUNCTION_3(v60);
          v63 = v45 + *(v61 + 44) + ((*(v62 + 80) + 32) & ~*(v62 + 80));
          *(v63 + *(type metadata accessor for ContactResolver.SignalSet(0) + 224)) = 1;
          *(v28 + 24) = v45;
          v51 = v58;
          v43 = v23;
          v23 = v140;
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  v160 = v55;
  v140 = type metadata accessor for ContactSignalProviders(0);
  v66 = (v149 + v140[5]);
  v67 = v66[1];
  v68 = v133;
  if (v67)
  {
    sub_1DD4E8388(&v160, *v66, v67);
  }

  v69 = v43;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v70 = swift_allocObject();
  OUTLINED_FUNCTION_109(v70);
  sub_1DD6408F8();
  OUTLINED_FUNCTION_110();
  v70[3].n128_u64[1] = v72;
  v70[4].n128_u64[0] = v71;
  v70[2].n128_u64[0] = v73;
  v70[2].n128_u64[1] = v74;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_75_0();
  sub_1DD63F998();

  sub_1DD3F991C(v149, &v160);
  v45 = v68;
  if (v23)
  {
LABEL_32:

    v126 = sub_1DD6404C8();
    OUTLINED_FUNCTION_123(v126);
    result = (v51)(v45, v144);
    __break(1u);
    return result;
  }

  v75 = sub_1DD6404C8();
  OUTLINED_FUNCTION_123(v75);
  v76 = v144;
  v77 = v51;
  v51(v68, v144);
  v78 = v132;
  sub_1DD63D068();
  sub_1DD4E8AC0(&v160);
  v79 = sub_1DD3FA798(v78, type metadata accessor for IsRecentSignalProvider);
  v82 = v145;
  if (v145[v141[12]])
  {
    v83 = v69;
    v84 = v142;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v85 = v76;
    v86 = swift_allocObject();
    OUTLINED_FUNCTION_109(v86);
    sub_1DD6408F8();
    OUTLINED_FUNCTION_110();
    v86[3].n128_u64[1] = v88;
    v86[4].n128_u64[0] = v87;
    v86[2].n128_u64[0] = v89;
    v86[2].n128_u64[1] = v90;
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_98();
    sub_1DD63F998();

    sub_1DD4E781C(&v160, *(v149 + v140[7]));
    sub_1DD6404C8();
    v82 = v145;
    OUTLINED_FUNCTION_98();
    sub_1DD63F9A8();
    v79 = v77(v84, v85);
  }

  LOBYTE(v154[0]) = *v82;
  if (sub_1DD450A6C(v79, v80, v81))
  {
    v91 = v82[v141[21]];
    v92 = [objc_allocWithZone(MEMORY[0x1E69A4878]) init];
    v152 = sub_1DD39638C(0, &qword_1EE1601B8, 0x1E69A4878);
    v153 = &off_1F58B9698;
    v151[0] = v92;
    sub_1DD3C2388(v151, v154);
    sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
    sub_1DD63FBB8();
    v150 = MEMORY[0x1E69E7CC0];
    sub_1DD3FAC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
    sub_1DD3FAC5C(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0, MEMORY[0x1E69E6328]);
    sub_1DD640718();
    (*(v130 + 104))(v129, *MEMORY[0x1E69E8090], v131);
    v155 = sub_1DD6404A8();
    __swift_destroy_boxed_opaque_existential_1(v151);
    v156 = v91;
    sub_1DD4E220C(&v160);
    sub_1DD3FACA4(v154);
  }

  v93 = (v149 + v140[8]);
  LODWORD(v149) = *v93;
  v94 = v93[1];
  LODWORD(v146) = v93[2];
  v95 = *(v93 + 1);
  v96 = v134;
  if (qword_1EE162EF8 != -1)
  {
    swift_once();
  }

  v97 = qword_1EE16EFD8;
  v152 = type metadata accessor for MegadomeClient();
  v153 = &off_1F58BB3C8;
  v151[0] = v97;
  v154[3] = &type metadata for ContactFeatures;
  v154[4] = sub_1DD3E6184();
  LOBYTE(v154[0]) = 7;

  v98 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(v154);
  v99 = v137;
  sub_1DD63D068();
  v100 = v135;
  v101 = v135 + v96[5];
  *v101 = "ContactResolver.MegadomeSignalProvider.init";
  *(v101 + 8) = 43;
  *(v101 + 16) = 2;
  v102 = v69;
  sub_1DD63F9B8();
  *(v100 + v96[6]) = v102;
  v103 = v102;
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v104 = swift_allocObject();
  OUTLINED_FUNCTION_109(v104);
  sub_1DD6408F8();
  OUTLINED_FUNCTION_110();
  v104[3].n128_u64[1] = v106;
  v104[4].n128_u64[0] = v105;
  v104[2].n128_u64[0] = v107;
  v104[2].n128_u64[1] = v108;
  OUTLINED_FUNCTION_22();
  sub_1DD63F998();

  sub_1DD3C2388(v151, v154);
  LOBYTE(v155) = v98 & 1;
  v156 = v149;
  v157 = v94;
  v158 = v146;
  v159 = v95;
  sub_1DD5186BC(v100, v99, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v127, *&v128);
  sub_1DD3FA798(v100, type metadata accessor for Signpost);
  (*(v138 + 8))(v99, v139);
  __swift_destroy_boxed_opaque_existential_1(v151);
  sub_1DD517A44(&v160);
  sub_1DD3FABB0(v154);
  v123 = v160;
  sub_1DD6404C8();
  v124 = v136;
  sub_1DD63F9A8();
  sub_1DD3FA798(v124, type metadata accessor for Signpost);
  return v123;
}

void sub_1DD3F6E14()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v47 = v3;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_0();
  v53 = v5;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_3();
  v54 = v7;
  if (qword_1EE165FB0 != -1)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v8, qword_1EE16F068);
  v9 = sub_1DD63F9D8();
  sub_1DD640368();
  v10 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_28();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_53_2();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_11_11();
    MEMORY[0x1E12B3DA0](v18);
  }

  v19 = *(v1 + 16);
  if (v19)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1DD42B404(0, v19, 0);
    v20 = 0;
    v21 = v57;
    v48 = v19;
    v49 = v1 + 32;
    while (2)
    {
      v1 = *(v49 + 8 * v20);
      v51 = v20 + 1;
      v52 = v21;
      v56 = *(v1 + 16);

      v22 = 0;
      do
      {
        if (v56 == v22)
        {
          v41 = v1;
          v21 = v52;
          goto LABEL_23;
        }

        if (v22 >= *(v1 + 16))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_107();
        v25 = v24 & ~v23;
        v27 = *(v26 + 72);
        sub_1DD3EB3D0(v1 + v25 + v27 * v22++, v54, &qword_1ECCDBBE8, &qword_1DD644470);
        v28 = v54 + *(v55 + 36);
        v29 = type metadata accessor for ContactResolver.SignalSet(0);
        LOBYTE(v28) = *(v28 + *(v29 + 132) + 14);
        sub_1DD390754(v54, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      while ((v28 & 1) != 0);
      v30 = 0;
      v50 = MEMORY[0x1E69E7CC0];
LABEL_11:
      v31 = v1 + v25 + v27 * v30;
      while (v56 != v30)
      {
        if (v30 >= *(v1 + 16))
        {
          goto LABEL_28;
        }

        sub_1DD3EB3D0(v31, v53, &qword_1ECCDBBE8, &qword_1DD644470);
        if ((*(v53 + *(v55 + 36) + *(v29 + 132) + 14) & 1) == 0)
        {
          sub_1DD3EB4B8(v53, v47, &qword_1ECCDBBE8, &qword_1DD644470);
          v32 = v50;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_2();
            v33 = OUTLINED_FUNCTION_26_2();
            sub_1DD42B4F8(v33, v34, v35);
            v32 = v50;
          }

          v37 = *(v32 + 16);
          v36 = *(v32 + 24);
          if (v37 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v36);
            OUTLINED_FUNCTION_57_2();
            sub_1DD42B4F8(v38, v39, v40);
            v32 = v50;
          }

          ++v30;
          *(v32 + 16) = v37 + 1;
          v50 = v32;
          sub_1DD3EB4B8(v47, v32 + v25 + v37 * v27, &qword_1ECCDBBE8, &qword_1DD644470);
          goto LABEL_11;
        }

        sub_1DD390754(v53, &qword_1ECCDBBE8, &qword_1DD644470);
        v31 += v27;
        ++v30;
      }

      v21 = v52;
      v41 = v50;
LABEL_23:
      v58 = v21;
      v42 = *(v21 + 16);
      ++v20;
      if (v42 >= *(v21 + 24) >> 1)
      {
        v43 = v41;
        OUTLINED_FUNCTION_106();
        sub_1DD42B404(v44, v45, v46);
        v41 = v43;
        v21 = v58;
      }

      *(v21 + 16) = v42 + 1;
      *(v21 + 8 * v42 + 32) = v41;
      if (v51 != v48)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD3F7210()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_14();
  v5 = type metadata accessor for Signpost(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  if (*(v0 + *(type metadata accessor for ContactResolverConfig(0) + 56)) == 2)
  {
    if (qword_1EE166460 != -1)
    {
      OUTLINED_FUNCTION_2_2();
      swift_once();
    }

    v10 = qword_1EE16F0C0;
    v11 = v9 + *(v5 + 20);
    *v11 = "ContactResolver.SuggestedContactsFilter";
    *(v11 + 8) = 39;
    *(v11 + 16) = 2;
    v12 = v10;
    sub_1DD63F9B8();
    *(v9 + *(v5 + 24)) = v12;
    v12;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DD643F90;
    v14 = sub_1DD6408F8();
    v16 = v15;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1DD392BD8();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_121();
    sub_1DD63F998();
    OUTLINED_FUNCTION_73_0();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v17 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v17, qword_1EE16F068);
    v18 = sub_1DD63F9D8();
    sub_1DD640368();
    v19 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_28();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_84_0(v21);
      OUTLINED_FUNCTION_33_3();
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v28);
    }

    MEMORY[0x1EEE9AC00](v29);
    OUTLINED_FUNCTION_31_0();
    *(v30 - 16) = v1;
    sub_1DD6047F4(sub_1DD3FAB94, v31, v3);
    sub_1DD6404C8();
    OUTLINED_FUNCTION_121();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v9, v32);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3F74C0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v78 = a4;
  v79 = a3;
  v80 = a2;
  v8 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  Expander = type metadata accessor for PartialNameQueryExpander(0);
  MEMORY[0x1EEE9AC00](Expander - 8);
  v20 = a1[1];
  if (*(v20 + 16))
  {
    *a5 = v20;
  }

  else
  {
    v87 = v5;
    v88 = v17;
    v85 = v12;
    v75 = v14;
    v77 = a5;
    v22 = *a1;
    v23 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = &v80[*(type metadata accessor for CandidateContactGenerator(0) + 48)];
    v82 = v23;
    sub_1DD3FA93C(v24, v23);
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    v86 = *(v22 + 16);
    v27 = v10;
    v83 = v10;
    v84 = v22;
    v81 = v11;
    while (1)
    {
      v28 = v88;
      if (v86 == v25)
      {
        break;
      }

      if (v25 >= *(v22 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v29 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v99 = *(v85 + 72);
      sub_1DD3EB3D0(v22 + v29 + v99 * v25, v88, &qword_1ECCDBC18, &unk_1DD6459A0);
      v30 = v28 + *(v11 + 36);
      if (*(v30 + 336))
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DD3FA93C(v30, v27);
        *(v27 + 335) = 1;
        memcpy(v97, v28, sizeof(v97));
        v98[3] = type metadata accessor for StringTokenizer(0);
        v98[4] = &off_1F58C2FE8;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
        sub_1DD3FA93C(v82, boxed_opaque_existential_1);
        v33 = v27;
        sub_1DD41E258();
        MEMORY[0x1EEE9AC00](v34);
        *(&v75 - 2) = v98;
        *(&v75 - 4) = 1;
        v35 = v87;
        sub_1DD582E38();
        v37 = v36;

        v38 = sub_1DD41859C(v37);
        __swift_destroy_boxed_opaque_existential_1(v98);
        v31 = sub_1DD3EC51C(v38, v27);
        v87 = v35;
        v28 = v88;

        v39 = v33;
        v11 = v81;
        sub_1DD3FA798(v39, type metadata accessor for ContactResolver.SignalSet);
      }

      sub_1DD390754(v28, &qword_1ECCDBC18, &unk_1DD6459A0);
      v40 = *(v31 + 16);
      v41 = *(v26 + 16);
      if (__OFADD__(v41, v40))
      {
        goto LABEL_34;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v41 + v40 > *(v26 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v26 = v42;
      }

      v22 = v84;
      if (*(v31 + 16))
      {
        if ((*(v26 + 24) >> 1) - *(v26 + 16) < v40)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        v27 = v83;
        if (v40)
        {
          v43 = *(v26 + 16);
          v44 = __OFADD__(v43, v40);
          v45 = v43 + v40;
          if (v44)
          {
            goto LABEL_37;
          }

          *(v26 + 16) = v45;
        }
      }

      else
      {

        v27 = v83;
        if (v40)
        {
          goto LABEL_35;
        }
      }

      ++v25;
    }

    sub_1DD3FA798(v82, type metadata accessor for PartialNameQueryExpander);
    if (qword_1EE165FB0 == -1)
    {
      goto LABEL_21;
    }

LABEL_38:
    swift_once();
LABEL_21:
    v46 = sub_1DD63F9F8();
    __swift_project_value_buffer(v46, qword_1EE16F068);

    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640368();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v26;
    v51 = v87;
    v52 = v77;
    v53 = v80;
    if (v49)
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = *(v50 + 16);

      _os_log_impl(&dword_1DD38D000, v47, v48, "queries after PartialNameQueryExpander: %ld", v54, 0xCu);
      MEMORY[0x1E12B3DA0](v54, -1, -1);
    }

    else
    {
    }

    v55 = MEMORY[0x1E69E7CD0];
    v98[0] = MEMORY[0x1E69E7CD0];
    v56 = *(v50 + 16);
    v76 = v50;
    if (v56)
    {
      v57 = v50 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v58 = *(v85 + 72);
      v59 = v75;
      do
      {
        sub_1DD3EB3D0(v57, v59, &qword_1ECCDBC18, &unk_1DD6459A0);
        v60 = *(v59 + 56);
        v61 = *(v59 + 64);

        sub_1DD56CE00(v97, v60, v61, v62, v63, v64, v65, v66, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);

        sub_1DD390754(v59, &qword_1ECCDBC18, &unk_1DD6459A0);
        v57 += v58;
        --v56;
      }

      while (v56);
      v55 = v98[0];
      v51 = v87;
      v52 = v77;
      v53 = v80;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC08, &unk_1DD645A80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD643F90;
    *(inited + 32) = v76;

    v68 = sub_1DD3F5088(v79, inited);
    if (v51)
    {

      swift_setDeallocating();
      result = sub_1DD46CBA0();
      *v78 = v51;
    }

    else
    {
      v69 = v68;
      swift_setDeallocating();
      sub_1DD46CBA0();
      if (*(v69 + 16))
      {
      }

      MEMORY[0x1EEE9AC00](v70);
      *(&v75 - 2) = v53;
      *(&v75 - 1) = v55;
      sub_1DD3EBC30();
      v72 = v71;

      *v52 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
      v73 = swift_initStackObject();
      *(v73 + 16) = xmmword_1DD643F80;
      *(v73 + 32) = 0xD00000000000001DLL;
      *(v73 + 40) = 0x80000001DD66AAD0;

      *(v73 + 48) = sub_1DD6402C8();
      *(v73 + 56) = 0xD00000000000001CLL;
      *(v73 + 64) = 0x80000001DD66AAF0;

      *(v73 + 72) = sub_1DD6402C8();
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
      v74 = sub_1DD63FC88();
      sub_1DD399F2C(0xD000000000000032, 0x80000001DD66AA90, v74);
    }
  }

  return result;
}

uint64_t sub_1DD3F7D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Expander = type metadata accessor for PartialNameQueryExpander(0);
  MEMORY[0x1EEE9AC00](Expander - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CandidateContactGenerator(0);
  sub_1DD3FA93C(a2 + *(v8 + 48), v7);
  v17[3] = type metadata accessor for StringTokenizer(0);
  v17[4] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1DD3FAE44(v7, boxed_opaque_existential_1);
  sub_1DD40FC64();
  v15 = v17;
  v16 = 1;
  sub_1DD582E38();
  v11 = v10;

  v12 = sub_1DD41859C(v11);
  __swift_destroy_boxed_opaque_existential_1(v17);
  LOBYTE(a3) = sub_1DD5839F8(a3, v12);

  return a3 & 1;
}

uint64_t sub_1DD3F7EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v62 = a4;
  v63 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v55 - v12;
  v14 = type metadata accessor for HypocorismGenerator(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DD63F9C8();
  MEMORY[0x1EEE9AC00](v17);
  v21 = a1[1];
  if (*(v21 + 16))
  {
    if (qword_1EE165FB0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v22 = sub_1DD63F9F8();
    __swift_project_value_buffer(v22, qword_1EE16F068);
    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640368();
    v25 = a6;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DD38D000, v23, v24, "Skipping hypocorism expander since matches are already present", v26, 2u);
      MEMORY[0x1E12B3DA0](v26, -1, -1);
    }

    *v25 = v21;
  }

  else
  {
    v65 = a2;
    v60 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = v20;
    v67 = v13;
    v57 = v18;
    v68 = v11;
    v64 = v10;
    v55[0] = a6;
    v59 = v6;
    v66 = *a1;
    if (qword_1EE166460 != -1)
    {
      swift_once();
    }

    v28 = qword_1EE16F0C0;
    sub_1DD63F9B8();
    v21 = sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    a6 = swift_allocObject();
    v58 = xmmword_1DD643F90;
    *(a6 + 16) = xmmword_1DD643F90;
    v29 = sub_1DD6408F8();
    v31 = v30;
    *(a6 + 56) = MEMORY[0x1E69E6158];
    *(a6 + 64) = sub_1DD392BD8();
    *(a6 + 32) = v29;
    *(a6 + 40) = v31;
    v55[1] = v28;
    sub_1DD63F998();

    sub_1DD3FA93C(v65, v16);
    v32 = 0;
    v33 = v66;
    v65 = *(v66 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v35 = v67;
      if (v65 == v32)
      {
        break;
      }

      if (v32 >= *(v33 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v21 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      sub_1DD3EB3D0(v33 + v21 + *(v68 + 72) * v32, v67, &qword_1ECCDBC18, &unk_1DD6459A0);
      v36 = sub_1DD4DC398(v35);
      sub_1DD390754(v35, &qword_1ECCDBC18, &unk_1DD6459A0);
      a6 = *(v36 + 16);
      v37 = *(v34 + 16);
      if (__OFADD__(v37, a6))
      {
        goto LABEL_34;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v37 + a6 > *(v34 + 24) >> 1)
      {
        sub_1DD3BF7FC();
        v34 = v38;
      }

      if (*(v36 + 16))
      {
        if ((*(v34 + 24) >> 1) - *(v34 + 16) < a6)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (a6)
        {
          v39 = *(v34 + 16);
          v40 = __OFADD__(v39, a6);
          v41 = v39 + a6;
          if (v40)
          {
            goto LABEL_37;
          }

          *(v34 + 16) = v41;
        }
      }

      else
      {

        if (a6)
        {
          goto LABEL_35;
        }
      }

      ++v32;
      v33 = v66;
    }

    sub_1DD3FA798(v16, type metadata accessor for HypocorismGenerator);
    sub_1DD6404C8();
    v42 = v60;
    sub_1DD63F9A8();
    (*(v56 + 8))(v42, v57);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v43 = sub_1DD63F9F8();
    __swift_project_value_buffer(v43, qword_1EE16F068);

    v44 = sub_1DD63F9D8();
    v45 = sub_1DD640368();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v59;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = *(v34 + 16);

      _os_log_impl(&dword_1DD38D000, v44, v45, "queries after HypocorismNameExpander: %ld", v48, 0xCu);
      MEMORY[0x1E12B3DA0](v48, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC08, &unk_1DD645A80);
    inited = swift_initStackObject();
    *(inited + 16) = v58;
    *(inited + 32) = v34;

    v50 = sub_1DD3F5088(v62, inited);
    if (v47)
    {

      swift_setDeallocating();
      result = sub_1DD46CBA0();
      *v61 = v47;
    }

    else
    {
      v51 = v50;
      swift_setDeallocating();
      sub_1DD46CBA0();
      if (*(v51 + 16))
      {
        v52 = *(v51 + 32);
      }

      else
      {
        v52 = MEMORY[0x1E69E7CC0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_1DD643F80;
      *(v53 + 32) = 0xD00000000000001CLL;
      *(v53 + 40) = 0x80000001DD66AC70;

      *(v53 + 48) = sub_1DD6402C8();
      *(v53 + 56) = 0xD00000000000001BLL;
      *(v53 + 64) = 0x80000001DD66AC90;
      *(v53 + 72) = sub_1DD6402C8();
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
      v54 = sub_1DD63FC88();
      sub_1DD399F2C(0xD00000000000002DLL, 0x80000001DD66AC40, v54);

      *v55[0] = v52;
    }
  }

  return result;
}

uint64_t sub_1DD3F86FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v4 = a2;
  }

  else
  {
    v4 = a3 + *(type metadata accessor for CandidateContactGenerator(0) + 52);
    v6 = sub_1DD46D650(a1);
    if (!v3)
    {
      v4 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD643F90;
      *(inited + 32) = 0xD000000000000016;
      *(inited + 40) = 0x80000001DD66AD20;
      *(inited + 48) = sub_1DD6402C8();
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
      v8 = sub_1DD63FC88();
      sub_1DD399F2C(0xD000000000000033, 0x80000001DD66ACE0, v8);
    }
  }

  return v4;
}

void *sub_1DD3F8838@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for CandidateContactGenerator(0);
  result = sub_1DD5EB3F8(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1DD3F889C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = type metadata accessor for ContactsFrameworkMatcher(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *a1;
  v63 = MEMORY[0x1E69E7CC0];
  v14 = type metadata accessor for ContactResolverConfig(0);
  if (*(a2 + v14[12]) == 1)
  {
    v15 = type metadata accessor for CandidateContactGenerator(0);
    sub_1DD3FA93C(a3 + *(v15 + 36), v13);
    if (!*(a2 + v14[14]))
    {
      sub_1DD3FA798(v13, type metadata accessor for ContactsFrameworkMatcher);
      sub_1DD3FA93C(a3 + *(v15 + 52), v13);
    }

    v16 = sub_1DD46D650(v56);
    if (v5)
    {
      result = sub_1DD3FA798(v13, type metadata accessor for ContactsFrameworkMatcher);
      *a4 = v5;
      return result;
    }

    v18 = v16;
    v63 = v16;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v52 = a3;
    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16F068);
    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640368();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = *(v18 + 16);
      _os_log_impl(&dword_1DD38D000, v20, v21, "found %ld 1p candidates", v22, 0xCu);
      MEMORY[0x1E12B3DA0](v22, -1, -1);
    }

    v54 = a5;
    v55 = 0;

    sub_1DD3FA798(v13, type metadata accessor for ContactsFrameworkMatcher);
  }

  else
  {
    v52 = a3;
    v54 = a5;
    v55 = v5;
  }

  v23 = 0;
  v24 = *(a2 + v14[11]);
  v25 = *(v24 + 16);
  v26 = v24 + 40;
  v57 = MEMORY[0x1E69E7CC0];
  v53 = v24 + 40;
LABEL_13:
  v27 = (v26 + 16 * v23);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_26;
    }

    v28 = *(v27 - 1);
    v29 = *v27;
    v58 = v28;
    v59 = v29;
    v60 = 0x6C7070612E6D6F63;
    v61 = 0xEA00000000002E65;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    if ((sub_1DD63FD48() & 1) == 0)
    {
      v30 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42A2D4(0, *(v30 + 16) + 1, 1, v32, v33, v34, v35);
        v30 = v62;
      }

      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1DD42A2D4(v36 > 1, v37 + 1, 1, v32, v33, v34, v35);
        v30 = v62;
      }

      ++v23;
      *(v30 + 16) = v37 + 1;
      v57 = v30;
      v38 = v30 + 16 * v37;
      *(v38 + 32) = v28;
      *(v38 + 40) = v29;
      v26 = v53;
      goto LABEL_13;
    }

    v27 += 2;
    ++v23;
  }

  if (*(v24 + 16) && !*(v57 + 16))
  {

    goto LABEL_32;
  }

  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_34;
  }

LABEL_26:
  v39 = sub_1DD63F9F8();
  __swift_project_value_buffer(v39, qword_1EE16F068);
  v40 = sub_1DD63F9D8();
  v41 = sub_1DD640368();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v56;
  if (v42)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1DD38D000, v40, v41, "Attempting search for 3p contacts", v44, 2u);
    MEMORY[0x1E12B3DA0](v44, -1, -1);
  }

  type metadata accessor for CandidateContactGenerator(0);
  v45 = sub_1DD41859C(v57);
  v46 = sub_1DD5F779C(v43, v45);

  v47 = sub_1DD63F9D8();
  v48 = sub_1DD640368();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    *(v49 + 4) = *(v46 + 16);

    _os_log_impl(&dword_1DD38D000, v47, v48, "found %ld 3p candidates", v49, 0xCu);
    MEMORY[0x1E12B3DA0](v49, -1, -1);
  }

  else
  {
  }

LABEL_32:
  swift_beginAccess();
  sub_1DD60782C();
  swift_endAccess();

  sub_1DD3F8E68();
  v51 = v50;
  result = swift_bridgeObjectRelease_n();
  *v54 = v51;
  return result;
}

void sub_1DD3F8E68()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v46 - v7;
  v9 = *(v1 + 16);
  if (!v9 || (v10 = (*(v5 + 80) + 32) & ~*(v5 + 80), v11 = (v1 + *(v4 + 36) + v10), (v12 = v11[27]) == 0))
  {
LABEL_23:

    goto LABEL_25;
  }

  v54 = v11[27];
  v55 = v6;
  v13 = v11[25];
  v15 = v11[28];
  v14 = v11[29];
  v16 = v11[30];
  v52 = v11[26];
  v53 = v13;
  v57 = v13;
  v58 = v52;
  v59 = v12;
  v60 = v15;
  v61 = v14;
  v50 = v14;
  v62 = v16;
  v17 = *(v5 + 72);

  v51 = v15;

  v49 = v16;

  v18 = 0;
  v48 = v10;
  v19 = v1 + v10;
  v20 = MEMORY[0x1E69E7CC0];
  v47 = v1 + v10;
LABEL_4:
  v21 = v19 + v17 * v18;
  while (v9 != v18)
  {
    sub_1DD3EB3D0(v21, v8, &qword_1ECCDBBE8, &qword_1DD644470);
    if (sub_1DD3FA068(v8, &v57))
    {
      v22 = v55;
      sub_1DD3EB4B8(v8, v55, &qword_1ECCDBBE8, &qword_1DD644470);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v20;
      v46 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = OUTLINED_FUNCTION_26_2();
        sub_1DD42B4F8(v24, v25, v26);
        v22 = v55;
        v20 = v56;
      }

      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v30 = OUTLINED_FUNCTION_1_0(v27);
        v32 = v31;
        sub_1DD42B4F8(v30, v31, 1);
        v29 = v32;
        v22 = v55;
        v20 = v56;
      }

      ++v18;
      *(v20 + 16) = v29;
      sub_1DD3EB4B8(v22, v20 + v48 + v28 * v17, &qword_1ECCDBBE8, &qword_1DD644470);
      v1 = v46;
      v19 = v47;
      goto LABEL_4;
    }

    sub_1DD390754(v8, &qword_1ECCDBBE8, &qword_1DD644470);
    v21 += v17;
    ++v18;
  }

  sub_1DD3FAA54(v53, v52, v54);
  if (!*(v20 + 16))
  {

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v40 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v40, qword_1EE16F068);
    v41 = sub_1DD63F9D8();
    v42 = sub_1DD640368();
    v43 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_28();
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DD38D000, v41, v42, "Filtered the candidate contacts down to none based on handles. Returning the original results.", v45, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    goto LABEL_23;
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v33 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v33, qword_1EE16F068);

  v34 = sub_1DD63F9D8();
  v35 = sub_1DD640368();
  v36 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134218240;
    *(v38 + 4) = v9;

    *(v38 + 12) = 2048;
    *(v38 + 14) = *(v20 + 16);

    _os_log_impl(&dword_1DD38D000, v34, v35, "Filtered the contacts from %ld candidates to %ld candidates by handles.", v38, 0x16u);
    v39 = OUTLINED_FUNCTION_15_10();
    MEMORY[0x1E12B3DA0](v39);
  }

  else
  {
  }

LABEL_25:
  OUTLINED_FUNCTION_17();
}

void sub_1DD3F92D8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_51(v4);
  v78 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v63 - v7);
  v73 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v72 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_3();
  v68 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v15 = OUTLINED_FUNCTION_3(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v63 - v19);
  v77 = *v1;
  v80 = v3;
  v21 = *v3;
  v22 = *(*v3 + 16);
  v64 = *v3 + 32;
  v65 = v22;
  v66 = v21;

  v26 = 0;
  v69 = v17;
  v70 = v11;
  v71 = v20;
LABEL_2:
  if (v26 == v65)
  {
LABEL_31:

    OUTLINED_FUNCTION_17();
    return;
  }

  if (v26 < *(v66 + 16))
  {
    v27 = *(v64 + 8 * v26);
    v81 = v26;
    v67 = v26 + 1;
    v75 = *(v27 + 16);

    v28 = 0;
    v74 = v27;
    while (1)
    {
      if (v28 == v75)
      {
        v29 = 1;
        v30 = v75;
      }

      else
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v28 >= *(v27 + 16))
        {
          goto LABEL_36;
        }

        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
        OUTLINED_FUNCTION_51(v31);
        v32 = v28;
        v30 = v28 + 1;
        v35 = v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v34 + 72) * v32;
        v36 = *(v11 + 48);
        v37 = v68;
        *v68 = v32;
        sub_1DD3EB3D0(v35, v37 + v36, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD3EB4B8(v37, v17, &qword_1ECCDC238, &unk_1DD654E40);
        v29 = 0;
      }

      __swift_storeEnumTagSinglePayload(v17, v29, 1, v11);
      sub_1DD3EB4B8(v17, v20, &qword_1ECCDC240, &qword_1DD645AA0);
      if (__swift_getEnumTagSinglePayload(v20, 1, v11) == 1)
      {

        v26 = v67;
        goto LABEL_2;
      }

      v76 = v30;
      v38 = *v20;
      v39 = *(v11 + 48);
      v40 = v72;
      sub_1DD3FA93C(v20 + v39, v72);
      sub_1DD390754(v20 + v39, &qword_1ECCDBBE8, &qword_1DD644470);
      v41 = *(v40 + *(v73 + 80));

      OUTLINED_FUNCTION_37_5();
      sub_1DD3FA798(v40, v42);
      v43 = *(v41 + 16);
      if (v43)
      {
        break;
      }

      v45 = MEMORY[0x1E69E7CC0];
LABEL_20:
      v57 = *v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A30();
        v57 = isUniquelyReferenced_nonNull_native;
      }

      if (v81 >= *(v57 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v58 = *(v57 + 32 + 8 * v81);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v57 + 32 + 8 * v81) = v58;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1DD586A18();
        v58 = isUniquelyReferenced_nonNull_native;
        *(v57 + 32 + 8 * v81) = isUniquelyReferenced_nonNull_native;
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }
      }

      if (v38 >= *(v58 + 16))
      {
        goto LABEL_34;
      }

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      v60 = OUTLINED_FUNCTION_51(v59);
      *(v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v62 + 72) * v38 + *(v60 + 44) + 272) = v45;

      *v80 = v57;
      v27 = v74;
      v28 = v76;
      v20 = v71;
    }

    v79 = v38;
    v85 = MEMORY[0x1E69E7CC0];
    sub_1DD42B5CC(0, v43, 0);
    v44 = 0;
    v45 = v85;
    v46 = 32;
    while (v44 < *(v41 + 16))
    {
      memcpy(v84, (v41 + v46), 0x4AuLL);
      memcpy(v83, (v41 + v46), 0x4AuLL);
      sub_1DD3C6A40(v84, v82);
      v47 = v8;
      sub_1DD3F9B98(v83, v77, v80, v81, v79, v8);
      memcpy(v82, v83, 0x4AuLL);
      sub_1DD3C6A9C(v82);
      v85 = v45;
      v49 = *(v45 + 16);
      v48 = *(v45 + 24);
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v48);
        OUTLINED_FUNCTION_106();
        sub_1DD42B5CC(v54, v55, v56);
        v45 = v85;
      }

      *(v45 + 16) = v49 + 1;
      OUTLINED_FUNCTION_107();
      v53 = v45 + (v51 & ~v50) + *(v52 + 72) * v49;
      v8 = v47;
      sub_1DD3EB4B8(v47, v53, &qword_1ECCDBBD8, &unk_1DD645A90);
      if (v43 - 1 == v44)
      {

        v17 = v69;
        v11 = v70;
        v38 = v79;
        goto LABEL_20;
      }

      v46 += 80;
      ++v44;
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
  memcpy(isUniquelyReferenced_nonNull_native, v24, v25);
  sub_1DD3C6A9C(v82);

  __break(1u);
}

void sub_1DD3F991C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ContactSignalProviders(0);
  sub_1DD5B652C(a2);
  if (v2)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16F068);
    v5 = v2;
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640378();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v11 = sub_1DD63FE38();
      v13 = sub_1DD39565C(v11, v12, &v14);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1DD38D000, v6, v7, "SiriRemembersContactSignalProvider failed: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }

    type metadata accessor for InferenceError();
    swift_initStackObject();
    sub_1DD4DE96C(26, 0, 0xE000000000000000, 0xD000000000000094, 0x80000001DD66AB10, 0xD000000000000029, 0x80000001DD66AE80, 587, MEMORY[0x1E69E7CC0], 1);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_1EE16F0C8);
    sub_1DD4DEB78();
  }
}

void sub_1DD3F9B98(const void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x4AuLL);
  *(v14 + 1) = 0;
  v15 = v12[9];
  v16 = sub_1DD63F148();
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v16);
  v14[v12[10]] = 0;
  v17 = v12[12];
  v14[v17] = 0;
  v14[v12[13]] = 0;
  v14[v12[14]] = 0;
  *v14 = __dst[72];
  v18 = BYTE1(a2);
  if (a2 == 2)
  {
    v19 = 3;
  }

  else
  {
    v19 = BYTE1(a2);
  }

  v20 = __dst[16];
  if (__dst[16] != 3)
  {
    if (__dst[16] != v19)
    {
      goto LABEL_6;
    }

LABEL_16:
    v49 = v19;
    v14[v17] = 1;
    v26 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v26;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1DD586A30();
      v26 = v38;
      *a3 = v38;
      if ((a4 & 0x8000000000000000) == 0)
      {
LABEL_18:
        if (*(v26 + 16) > a4)
        {
          v47 = v20;
          v48 = a6;
          v20 = v26 + 32;
          v28 = *(v26 + 32 + 8 * a4);
          v29 = swift_isUniquelyReferenced_nonNull_native();
          *(v26 + 32 + 8 * a4) = v28;
          if (v29)
          {
            if ((a5 & 0x8000000000000000) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_31;
          }

LABEL_30:
          sub_1DD586A18();
          v28 = v39;
          *(v20 + 8 * a4) = v39;
          if ((a5 & 0x8000000000000000) == 0)
          {
LABEL_21:
            if (*(v28 + 16) > a5)
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
              v46 = a3;
              a2 = v30;
              v31 = *(v30 - 8);
              v44 = (*(v31 + 80) + 32) & ~*(v31 + 80);
              v32 = *(v31 + 72);
              v45 = a5;
              a3 = v32 * a5;
              v33 = v28 + v44 + *(v30 + 36) + v32 * a5;
              v34 = type metadata accessor for ContactResolver.SignalSet(0);
              *(v33 + *(v34 + 188)) = 1;
              *(v20 + 8 * a4) = v28;
              v35 = *v46;
              if (*(*v46 + 16) > a4)
              {
                v26 = v34;
                v20 = v35 + 32;
                a5 = *(v35 + 32 + 8 * a4);
                v36 = swift_isUniquelyReferenced_nonNull_native();
                *(v20 + 8 * a4) = a5;
                if (v36)
                {
LABEL_24:
                  a6 = v48;
                  if (*(a5 + 16) > v45)
                  {
                    *(a5 + v44 + *(a2 + 36) + a3 + *(v26 + 192)) = 1;
                    *(v20 + 8 * a4) = a5;
                    v18 = v49;
                    LODWORD(v20) = v47;
                    goto LABEL_26;
                  }

                  __break(1u);
                  goto LABEL_36;
                }

LABEL_34:
                sub_1DD586A18();
                a5 = v40;
                *(v20 + 8 * a4) = v40;
                goto LABEL_24;
              }

LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v19 == 3)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (a2 != 2 && (a2 & 1) != 0)
  {
    goto LABEL_26;
  }

  v49 = v19;
  v14[v17] = 1;
  v21 = *a3;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v21;
  if (v22)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_36:
  sub_1DD586A30();
  v21 = v41;
  *a3 = v41;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_10:
  if (*(v21 + 16) <= a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LODWORD(a2) = v20;
  v20 = a5;
  v21 += 32;
  v23 = *(v21 + 8 * a4);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 8 * a4) = v23;
  if (v24)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_39:
  sub_1DD586A18();
  v23 = v42;
  *(v21 + 8 * a4) = v42;
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

LABEL_13:
  if (*(v23 + 16) > v20)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
    v20 = v23 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)) + *(*(v25 - 8) + 72) * v20 + *(v25 + 36);
    *(v20 + *(type metadata accessor for ContactResolver.SignalSet(0) + 192)) = 1;
    *(v21 + 8 * a4) = v23;
    v18 = v49;
    LODWORD(v20) = a2;
LABEL_26:
    v14[v12[11]] = v18 == v20;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
    sub_1DD3FAE44(v14, a6 + *(v37 + 36));
    memcpy(a6, __dst, 0x4AuLL);
    sub_1DD3C6A40(__dst, v50);
    return;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_1DD3FA068(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + *(type metadata accessor for Contact(0) + 80));
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *MEMORY[0x1E69964B0];
  v45 = *MEMORY[0x1E69964B0] + 16;
  v7 = 32;
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    memcpy(__dst, (v3 + v7), 0x4AuLL);
    v8 = *a2;
    if (*a2 && v8 != LOBYTE(__dst[1]))
    {
      goto LABEL_32;
    }

    v9 = *(a2 + 5);
    if (*a2)
    {
      if (v8 != 1)
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
        sub_1DD3C6A40(__dst, v41);
LABEL_15:

        v16 = sub_1DD40B8E0();
        v17 = sub_1DD415480(v16);
        if (v18)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }

        if (v18)
        {
          v15 = v18;
        }

        else
        {
          v15 = 0xE000000000000000;
        }

        goto LABEL_21;
      }

      sub_1DD3C6A40(__dst, v41);
      v10 = sub_1DD63FDA8();
      v11 = (*(v6 + 16))(v6, v10);
    }

    else
    {
      *&v40[0] = *(a2 + 4);
      *(&v40[0] + 1) = v9;
      v42 = 64;
      v43 = 0xE100000000000000;
      sub_1DD3C6A40(__dst, v41);
      sub_1DD3B7F10();
      if ((sub_1DD6406D8() & 1) == 0)
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
        goto LABEL_15;
      }

      v10 = sub_1DD63FDA8();
      v11 = (*(v6 + 16))(v6, v10);
    }

    v12 = v11;

    v13 = sub_1DD63FDD8();
    v15 = v14;

LABEL_21:
    v19 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v19 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 || (v13 == *(&__dst[3] + 1) ? (v20 = v15 == *&__dst[4]) : (v20 = 0), v20))
    {
    }

    else
    {
      v21 = sub_1DD640CD8();

      if ((v21 & 1) == 0)
      {
        sub_1DD3C6A9C(__dst);
        goto LABEL_32;
      }
    }

    memcpy(v41, __dst, 0x4AuLL);
    v22 = *(a2 + 1);
    v40[0] = *a2;
    v40[1] = v22;
    v40[2] = *(a2 + 2);
    sub_1DD412278();
    v24 = v23;
    sub_1DD3C6A9C(__dst);
    if (v24)
    {
      return 1;
    }

LABEL_32:
    v7 += 80;
    ++v5;
  }

  if (qword_1EE165FB0 == -1)
  {
    goto LABEL_34;
  }

LABEL_41:
  swift_once();
LABEL_34:
  v25 = sub_1DD63F9F8();
  __swift_project_value_buffer(v25, qword_1EE16F068);

  sub_1DD3FAAA4(a2, __dst);
  v26 = sub_1DD63F9D8();
  v27 = sub_1DD640368();
  sub_1DD3FAB00(a2);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v40[0] = v29;
    *v28 = 136315394;
    v30 = MEMORY[0x1E12B2430](v3, &type metadata for ContactHandle);
    v32 = v31;

    v33 = sub_1DD39565C(v30, v32, v40);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = *(a2 + 1);
    __dst[0] = *a2;
    __dst[1] = v34;
    __dst[2] = *(a2 + 2);
    sub_1DD3FAAA4(a2, v41);
    v35 = ContactHandleQuery.description.getter();
    v37 = v36;

    v38 = sub_1DD39565C(v35, v37, v40);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_1DD38D000, v26, v27, "Nominating contact with %s for removal because it doesn't match the query for %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v29, -1, -1);
    MEMORY[0x1E12B3DA0](v28, -1, -1);
  }

  else
  {
  }

  return 0;
}

double sub_1DD3FA59C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{
  v1 = (type metadata accessor for MeCardContactGenerator(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_1DD63D168();
  OUTLINED_FUNCTION_7();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DD3FA718(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for MeCardContactGenerator(0);
  OUTLINED_FUNCTION_3(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_1DD3FA798(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD3FA93C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v4(v3);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

uint64_t sub_1DD3FA994@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DD5149D0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1DD3FAA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DD3FAC04()
{
  result = qword_1EE166488;
  if (!qword_1EE166488)
  {
    sub_1DD640438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166488);
  }

  return result;
}

uint64_t sub_1DD3FAC5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1DD3FADD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC250, &qword_1DD645B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3FAE44(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v4(v3);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t result, uint64_t a2)
{
  v5 = *(v3 + 464);
  v4[3] = v2;
  v4[4] = v5;
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_41_2(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_1DD3FA798(v0, type metadata accessor for ContactResolverCache);
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_1DD3FA798(v0, type metadata accessor for HypocorismGenerator);
}

uint64_t OUTLINED_FUNCTION_61_1()
{
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1DD640998();
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_1DD6409A8();
}

uint64_t OUTLINED_FUNCTION_68_0()
{
  *(v1 - 72) = v0;
}

uint64_t OUTLINED_FUNCTION_74_0(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  *(*(v0 + 336) + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_99@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

double OUTLINED_FUNCTION_100(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_101@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 256) = *(v1 + 8 * a1 + 32);
}

uint64_t OUTLINED_FUNCTION_104_0()
{
}

uint64_t OUTLINED_FUNCTION_105_0()
{
}

__n128 OUTLINED_FUNCTION_109(__n128 *a1)
{
  result = *(v1 - 256);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_117(uint64_t result, uint64_t a2)
{
  *(v2 - 256) = result;
  *(v2 - 248) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1)
{

  return sub_1DD63F9A8();
}

uint64_t OUTLINED_FUNCTION_126@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 16) = v1;
}

uint64_t OUTLINED_FUNCTION_127()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_128(uint64_t a1)
{

  sub_1DD42B97C(a1, v1, 1);
}

uint64_t sub_1DD3FB504(_BYTE *a1, uint64_t a2)
{
  v137 = a2;
  v130 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v133 = v5 - v4;
  v134 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v132 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_14_2(v9 - v8);
  IsRecentSignalProvider = type metadata accessor for IsRecentSignalProvider(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_2(v13 - v12);
  v124 = sub_1DD63F308();
  OUTLINED_FUNCTION_0();
  v120 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_14_2(v17 - v16);
  v126 = type metadata accessor for SiriRemembersContactSignalProvider(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_2(&v117 - v22);
  v23 = sub_1DD640478();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  sub_1DD640438();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2();
  v31 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v31 - 8);
  OUTLINED_FUNCTION_2();
  LOBYTE(v142) = *a1;
  v35 = sub_1DD450A6C(v32, v33, v34);
  v36 = MEMORY[0x1E69E7CC0];
  v136 = a1;
  if (v35)
  {
    LODWORD(v125) = a1[*(type metadata accessor for ContactResolverConfig(0) + 84)];
    v37 = [objc_allocWithZone(MEMORY[0x1E69A4878]) init];
    v140 = sub_1DD39638C(0, &qword_1EE1601B8, 0x1E69A4878);
    v141 = &off_1F58B9698;
    v139[0] = v37;
    sub_1DD3C2388(v139, &v142);
    v123 = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
    sub_1DD63FBB8();
    v138 = v36;
    sub_1DD3FAC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
    sub_1DD3FC2BC();
    sub_1DD640718();
    (*(v25 + 104))(v29, *MEMORY[0x1E69E8090], v23);
    v145 = sub_1DD6404A8();
    __swift_destroy_boxed_opaque_existential_1(v139);
    v146 = v125;
    sub_1DD3BFA3C(0, 1, 1, v36);
    v36 = v38;
    v39 = *(v38 + 24);
    if (*(v38 + 16) >= v39 >> 1)
    {
      OUTLINED_FUNCTION_2_14(v39);
      v36 = v115;
    }

    v140 = &type metadata for IsFaceTimeableSignalProvider;
    v141 = &off_1F58B9870;
    v40 = swift_allocObject();
    v41 = OUTLINED_FUNCTION_6_13(v40);
    sub_1DD3FC320(v41, v42);
    v43 = OUTLINED_FUNCTION_7_10();
    sub_1DD3FACA4(v43);
    a1 = v136;
  }

  v125 = v36;
  v44 = type metadata accessor for ContactResolverCache(0);
  v45 = v120;
  v46 = a1;
  v47 = *(v120 + 16);
  v48 = v137;
  v49 = v121;
  v50 = v124;
  v47(v121, v137 + *(v44 + 24), v124);
  v51 = *v46;
  v122 = type metadata accessor for ContactResolverConfig(0);
  v118 = *&v46[*(v122 + 52)];
  v123 = v44;
  sub_1DD3FC02C(v48 + *(v44 + 120), &v142);
  v52 = *(v46 + 1);
  v53 = *(v46 + 2);
  v119 = v52;
  v54 = v126;
  v55 = v135;
  v56 = &v135[*(v126 + 28)];
  *(v56 + 32) = 0;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  v47(v55, v49, v50);
  v55[v54[5]] = v51;
  v57 = *(v45 + 8);

  v57(v49, v50);
  v58 = &v55[v54[6]];
  if (*&v118 == 4)
  {
    v59 = xmmword_1DD6458E0;
    goto LABEL_9;
  }

  if (*&v118 == 1)
  {
    v59 = xmmword_1DD6458F0;
LABEL_9:
    *v58 = v59;
    goto LABEL_11;
  }

  *v58 = 0;
  *(v58 + 1) = 0;
LABEL_11:
  v60 = v135;
  v61 = v136;
  v62 = v131;
  v63 = v125;
  v64 = v123;
  v65 = v122;
  v66 = &v135[v54[8]];
  sub_1DD3FADD4(&v142, v56);
  *v66 = v119;
  *(v66 + 1) = v53;
  v67 = v127;
  sub_1DD3FC09C(v60, v127);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD3BFA3C(0, *(v63 + 16) + 1, 1, v63);
    v63 = v111;
  }

  v68 = v129;
  v69 = *(v63 + 24);
  if (*(v63 + 16) >= v69 >> 1)
  {
    OUTLINED_FUNCTION_2_14(v69);
    v63 = v112;
  }

  v143 = v54;
  v144 = &off_1F58C0430;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v142);
  sub_1DD3FC1A8(v67, boxed_opaque_existential_1, type metadata accessor for SiriRemembersContactSignalProvider);
  OUTLINED_FUNCTION_5_15();
  sub_1DD3FC208(v67, type metadata accessor for SiriRemembersContactSignalProvider);
  sub_1DD63D068();
  v71 = *(v63 + 24);
  if (*(v63 + 16) >= v71 >> 1)
  {
    OUTLINED_FUNCTION_2_14(v71);
    v63 = v113;
  }

  v143 = IsRecentSignalProvider;
  v144 = &off_1F58B9A50;
  v72 = __swift_allocate_boxed_opaque_existential_1(&v142);
  sub_1DD3FC1A8(v68, v72, type metadata accessor for IsRecentSignalProvider);
  OUTLINED_FUNCTION_5_15();
  sub_1DD3FC208(v68, type metadata accessor for IsRecentSignalProvider);
  if (v61[*(v65 + 48)])
  {
    v73 = *(v137 + *(v64 + 52));
    v74 = *(v63 + 16);
    v75 = *(v63 + 24);

    if (v74 >= v75 >> 1)
    {
      sub_1DD3BFA3C(v75 > 1, v74 + 1, 1, v63);
      v63 = v116;
    }

    v143 = &type metadata for IsFavoriteSignalGenerator;
    v144 = &off_1F58B9928;
    *&v142 = v73;
    *(v63 + 16) = v74 + 1;
    sub_1DD3AA4A8(&v142, v63 + 40 * v74 + 32);
  }

  v76 = (v137 + *(v64 + 112));
  LODWORD(v135) = *v76;
  LODWORD(v131) = v76[1];
  LODWORD(v129) = v76[2];
  v77 = *(v76 + 1);
  if (qword_1EE162EF8 != -1)
  {
    swift_once();
  }

  v78 = qword_1EE16EFD8;
  v140 = type metadata accessor for MegadomeClient();
  v141 = &off_1F58BB3C8;
  v139[0] = v78;
  v143 = &type metadata for ContactFeatures;
  v144 = sub_1DD3E6184();
  LOBYTE(v142) = 7;

  LODWORD(IsRecentSignalProvider) = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(&v142);
  sub_1DD63D068();
  v79 = v62;
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v80 = qword_1EE16F0C0;
  v81 = v130;
  v82 = v133;
  v83 = v133 + *(v130 + 20);
  *v83 = "ContactResolver.MegadomeSignalProvider.init";
  *(v83 + 8) = 43;
  *(v83 + 16) = 2;
  v84 = v80;
  sub_1DD63F9B8();
  *(v82 + *(v81 + 24)) = v84;
  v85 = v84;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1DD643F90;
  v87 = sub_1DD6408F8();
  v89 = v88;
  *(v86 + 56) = MEMORY[0x1E69E6158];
  *(v86 + 64) = sub_1DD392BD8();
  *(v86 + 32) = v87;
  *(v86 + 40) = v89;
  sub_1DD63F998();

  sub_1DD3C2388(v139, &v142);
  LOBYTE(v145) = IsRecentSignalProvider & 1;
  v146 = v135;
  v147 = v131;
  v148 = v129;
  v149 = v77;
  sub_1DD5186BC(v82, v79, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v117, v118);
  sub_1DD3FC208(v82, type metadata accessor for Signpost);
  (*(v132 + 8))(v79, v134);
  __swift_destroy_boxed_opaque_existential_1(v139);
  v104 = *(v63 + 24);
  if (*(v63 + 16) >= v104 >> 1)
  {
    OUTLINED_FUNCTION_2_14(v104);
    v63 = v114;
  }

  v105 = v136;
  sub_1DD3FC208(v137, type metadata accessor for ContactResolverCache);
  sub_1DD3FC208(v105, type metadata accessor for ContactResolverConfig);
  v140 = &type metadata for MegadomeSignalProvider;
  v141 = &off_1F58BB460;
  v106 = swift_allocObject();
  v107 = OUTLINED_FUNCTION_6_13(v106);
  sub_1DD3FC260(v107, v108);
  v109 = OUTLINED_FUNCTION_7_10();
  sub_1DD3FABB0(v109);
  return v63;
}

uint64_t sub_1DD3FC02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC250, &qword_1DD645B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3FC09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersContactSignalProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3FC100(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v2 = *(a2 + 16);
  if (!v2)
  {
  }

  v3 = a2 + 32;

  do
  {
    sub_1DD3C2388(v3, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(&v10, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v3 += 40;
    --v2;
  }

  while (v2);
  return v10;
}

uint64_t sub_1DD3FC1A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD3FC208(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DD3FC2BC()
{
  result = qword_1EE166490;
  if (!qword_1EE166490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDF220, &unk_1DD656EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166490);
  }

  return result;
}

SiriInference::Centroid __swiftcall Centroid.init(latitude:longitude:)(Swift::String latitude, Swift::String longitude)
{
  *v2 = latitude;
  v2[1] = longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

uint64_t Centroid.latitude.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Centroid.longitude.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Centroid.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DD640CD8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DD640CD8();
    }
  }

  return result;
}

uint64_t sub_1DD3FC48C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD3FC55C(char a1)
{
  if (a1)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1DD3FC5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD3FC48C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3FC5C8(uint64_t a1)
{
  v2 = sub_1DD3FC7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3FC604(uint64_t a1)
{
  v2 = sub_1DD3FC7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Centroid.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC270, &qword_1DD645B98);
  OUTLINED_FUNCTION_0();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3FC7B0();
  sub_1DD640EF8();
  v14 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v13 = 1;
    sub_1DD640C18();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_1DD3FC7B0()
{
  result = qword_1ECCDC278;
  if (!qword_1ECCDC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC278);
  }

  return result;
}

uint64_t Centroid.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC280, &qword_1DD645BA0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3FC7B0();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_1DD640B28();
  v13 = v12;
  v21 = 1;
  v14 = sub_1DD640B28();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v10, v5);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v20;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for Centroid.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1DD3FCB1C()
{
  result = qword_1ECCDC288;
  if (!qword_1ECCDC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC288);
  }

  return result;
}

unint64_t sub_1DD3FCB74()
{
  result = qword_1ECCDC290;
  if (!qword_1ECCDC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC290);
  }

  return result;
}

unint64_t sub_1DD3FCBCC()
{
  result = qword_1ECCDC298;
  if (!qword_1ECCDC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC298);
  }

  return result;
}

SiriInference::City __swiftcall City.init(name:prefix:suffix:)(SiriInference::City name, SiriInference::City::Prefix_optional prefix, SiriInference::City::Suffix_optional suffix)
{
  v4 = *prefix.value;
  v5 = *suffix.value;
  *(v3 + 8) = *&name.prefix.value;
  *v3 = v4;
  *(v3 + 1) = v5;
  LOBYTE(name.name._object) = prefix;
  return name;
}

SiriInference::City::Prefix_optional __swiftcall City.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t City.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2037672291;
  }
}

SiriInference::City::Suffix_optional __swiftcall City.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t City.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static City.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 3 || (sub_1DD3B2D90() & 1) == 0)
  {
    return 0;
  }

  result = v5 == 3 && v3 == 3;
  if (v3 != 3 && v5 != 3)
  {

    return sub_1DD3B2D90();
  }

  return result;
}

uint64_t sub_1DD3FCFEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786966667573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD3FD0FC(char a1)
{
  if (!a1)
  {
    return 0x786966657270;
  }

  if (a1 == 1)
  {
    return 0x786966667573;
  }

  return 1701667182;
}

uint64_t sub_1DD3FD14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD3FCFEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3FD174(uint64_t a1)
{
  v2 = sub_1DD3FD5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3FD1B0(uint64_t a1)
{
  v2 = sub_1DD3FD5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t City.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC2A0, &qword_1DD645D78);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = *(v1 + 1);
  v13[1] = *(v1 + 2);
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3FD5D0();
  sub_1DD640EF8();
  v19 = v10;
  v18 = 0;
  sub_1DD3FD624();
  sub_1DD640C08();
  if (!v2)
  {
    v17 = v14;
    v16 = 1;
    sub_1DD3FD678();
    sub_1DD640C08();
    v15 = 2;
    sub_1DD640C18();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t City.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC2C0, &qword_1DD645D80);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3FD5D0();
  sub_1DD640ED8();
  if (!v2)
  {
    v20[0] = 0;
    sub_1DD3FD6CC();
    OUTLINED_FUNCTION_2_15(&type metadata for City.Prefix, v20);
    v11 = v20[1];
    v19[0] = 1;
    sub_1DD3FD720();
    OUTLINED_FUNCTION_2_15(&type metadata for City.Suffix, v19);
    v17 = v19[1];
    v18 = 2;
    v13 = sub_1DD640B28();
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 1) = v17;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD3FD5D0()
{
  result = qword_1ECCDC2A8;
  if (!qword_1ECCDC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2A8);
  }

  return result;
}

unint64_t sub_1DD3FD624()
{
  result = qword_1ECCDC2B0;
  if (!qword_1ECCDC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2B0);
  }

  return result;
}

unint64_t sub_1DD3FD678()
{
  result = qword_1ECCDC2B8;
  if (!qword_1ECCDC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2B8);
  }

  return result;
}

unint64_t sub_1DD3FD6CC()
{
  result = qword_1ECCDC2C8;
  if (!qword_1ECCDC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2C8);
  }

  return result;
}

unint64_t sub_1DD3FD720()
{
  result = qword_1ECCDC2D0;
  if (!qword_1ECCDC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2D0);
  }

  return result;
}

unint64_t sub_1DD3FD778()
{
  result = qword_1ECCDC2D8;
  if (!qword_1ECCDC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2D8);
  }

  return result;
}

unint64_t sub_1DD3FD7D0()
{
  result = qword_1ECCDC2E0;
  if (!qword_1ECCDC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2E0);
  }

  return result;
}

uint64_t sub_1DD3FD824(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1DD3FD864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1DD3FD8C8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1DD3FD9A8()
{
  result = qword_1ECCDC2E8;
  if (!qword_1ECCDC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2E8);
  }

  return result;
}

unint64_t sub_1DD3FDA00()
{
  result = qword_1ECCDC2F0;
  if (!qword_1ECCDC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2F0);
  }

  return result;
}

unint64_t sub_1DD3FDA58()
{
  result = qword_1ECCDC2F8;
  if (!qword_1ECCDC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC2F8);
  }

  return result;
}

unint64_t sub_1DD3FDAAC()
{
  result = qword_1ECCDC300;
  if (!qword_1ECCDC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC300);
  }

  return result;
}

unint64_t sub_1DD3FDB00()
{
  result = qword_1ECCDC308;
  if (!qword_1ECCDC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC308);
  }

  return result;
}

CLPlacemark __swiftcall CLPlacemark.withOverriddenName(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_16_7();
  v5 = sub_1DD400A78(v2);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E69E6158];
    sub_1DD640848();
    v22 = v7;
    *&v21 = v4;
    *(&v21 + 1) = v3;
    sub_1DD400AE4(&v21, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    sub_1DD3FFDC8(v20, v23, isUniquelyReferenced_nonNull_native);
    v9 = v6;
    sub_1DD400AF4(v23);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v1 location];

  v11 = [v1 region];
  v12 = sub_1DD400B48(v1);
  if (v12)
  {
    v13 = sub_1DD3FDCD4(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(MEMORY[0x1E695FC20]);
  sub_1DD3FE5F0(v10, v9, v11, v13);
  if (v15)
  {
    v17 = v15;

    v15 = v17;
  }

  else
  {
    __break(1u);
  }

  result._internal = v16;
  result.super.isa = v15;
  return result;
}

uint64_t sub_1DD3FDCD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_6_14();
    sub_1DD42B8DC(v4, v5, v6);
    v2 = v12;
    v7 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v12 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD42B8DC(v8 > 1, v9 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v9 + 1;
      sub_1DD400AE4(&v11, (v2 + 32 * v9 + 32));
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD3FDDCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_6_14();
    sub_1DD42BC4C(v4, v5, v6);
    v2 = v14;
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCDC3D0, &unk_1DD6461A0);
      swift_dynamicCast();
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD42BC4C(v8 > 1, v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 16 * v9;
      *(v10 + 32) = v12;
      *(v10 + 40) = v13;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD3FDEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_6_14();
    sub_1DD42BE00(v4, v5, v6);
    v2 = v13;
    v7 = a1 + 32;
    do
    {
      sub_1DD3C2388(v7, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDC370, &qword_1DD6440B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE30, &qword_1DD649EE0);
      swift_dynamicCast();
      v13 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD42BE00(v8 > 1, v9 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v9 + 1;
      sub_1DD3AA4A8(&v12, v2 + 40 * v9 + 32);
      v7 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD3FE00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_6_14();
    sub_1DD42BE00(v4, v5, v6);
    v2 = v15;
    v7 = (a1 + 32);
    do
    {
      memcpy(__dst, v7, sizeof(__dst));
      sub_1DD3D23E0(__dst, &v11);
      v15 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DD42BE00(v8 > 1, v9 + 1, 1);
        v2 = v15;
      }

      v12 = &unk_1F58B0918;
      v13 = sub_1DD3D0448();
      *&v11 = swift_allocObject();
      memcpy((v11 + 16), __dst, 0x58uLL);
      *(v2 + 16) = v9 + 1;
      sub_1DD3AA4A8(&v11, v2 + 40 * v9 + 32);
      v7 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD3FE188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DD42BE00(0, v4, 0);
    v5 = v24;
    v7 = (a1 + 80);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v10 = *(v7 - 3);
      v11 = *(v7 - 1);
      v19 = *(v7 - 2);
      v20 = *(v7 - 6);
      v12 = *v7;
      v24 = v5;
      v13 = *(v5 + 16);
      v14 = *(v5 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_1DD42BE00(v14 > 1, v13 + 1, 1);
        v5 = v24;
      }

      v7 += 7;
      v22 = a2;
      v23 = a3();
      v15 = swift_allocObject();
      *&v21 = v15;
      v15[2] = v20;
      v15[3] = v8;
      v15[4] = v9;
      v15[5] = v10;
      v15[6] = v19;
      v15[7] = v11;
      v15[8] = v12;
      *(v5 + 16) = v13 + 1;
      sub_1DD3AA4A8(&v21, v5 + 40 * v13 + 32);
      --v4;
    }

    while (v4);
  }

  return v5;
}

void sub_1DD3FE2E8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = sub_1DD63D868();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (v8)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1DD42BE00(0, v8, 0);
    v9 = v22;
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = v1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v18 = *(v10 + 56);
    do
    {
      v11(v7, v13, v2);
      v22 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DD42BE00(v14 > 1, v15 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x1E69D2C00];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v11(boxed_opaque_existential_1, v7, v2);
      v9 = v22;
      *(v22 + 16) = v15 + 1;
      sub_1DD3AA4A8(&v19, v9 + 40 * v15 + 32);
      (*(v10 - 8))(v7, v2);
      v13 += v18;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3FE498(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DD6407B8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    result = sub_1DD640988();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12B2C10](v4, a1);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        ++v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC380, &qword_1DD646178);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC388, &qword_1DD646180);
        swift_dynamicCast();
        sub_1DD640958();
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
      }

      while (v2 != v4);
      return v5;
    }
  }

  return result;
}

void sub_1DD3FE5F0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_1DD63FC48();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1DD6400F8();

LABEL_6:
  [v5 initWithLocation:a1 addressDictionary:v9 region:a3 areasOfInterest:v10];

  OUTLINED_FUNCTION_25_1();
}

unint64_t sub_1DD3FE6CC(uint64_t a1)
{
  OUTLINED_FUNCTION_17_9();
  sub_1DD525218(a1);
  sub_1DD63FD28();

  v2 = sub_1DD640E78();

  return sub_1DD3FEEA8(a1, v2);
}

void sub_1DD3FE74C()
{
  OUTLINED_FUNCTION_4_14();
  sub_1DD63C758();
  v0 = sub_1DD400F74(&unk_1ECCDC3C0, MEMORY[0x1E695A238], MEMORY[0x1E695A240]);
  OUTLINED_FUNCTION_11_12(v0);
  OUTLINED_FUNCTION_12_12();
}

void sub_1DD3FE7FC()
{
  OUTLINED_FUNCTION_4_14();
  sub_1DD63D2B8();
  v0 = sub_1DD400F74(&qword_1EE1637E0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  OUTLINED_FUNCTION_11_12(v0);
  OUTLINED_FUNCTION_12_12();
}

unint64_t sub_1DD3FE8AC()
{
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_17_9();
  sub_1DD640E48();
  if (v0)
  {
    OUTLINED_FUNCTION_18_10();
    sub_1DD63FD28();
  }

  sub_1DD640E78();
  v1 = OUTLINED_FUNCTION_5_9();

  return sub_1DD3FF11C(v1, v2, v3);
}

unint64_t sub_1DD3FE928(uint64_t a1)
{
  v2 = sub_1DD640828();

  return sub_1DD3FF1E8(a1, v2);
}

void sub_1DD3FE96C()
{
  OUTLINED_FUNCTION_23_6();
  sub_1DD63FDD8();
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD640E78();

  sub_1DD3FF2AC();
}

unint64_t sub_1DD3FE9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_9();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1E12B3140](1);
      v6 = a1 & 1;
    }

    else
    {
      v6 = 2;
    }

    MEMORY[0x1E12B3140](v6);
  }

  else
  {
    MEMORY[0x1E12B3140](0);
    sub_1DD63FD28();
  }

  v7 = sub_1DD640E78();

  return sub_1DD3FF394(a1, a2, a3, v7);
}

unint64_t sub_1DD3FEAB4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x1E12B3140](v1);
  v2 = sub_1DD640E78();
  return sub_1DD3FF5E8(v1, v2);
}

unint64_t sub_1DD3FEB14()
{
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_17_9();
  sub_1DD48E664(v3);
  v1 = sub_1DD640E78();

  return sub_1DD3FF648(v0, v1);
}

unint64_t sub_1DD3FEB74(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1E12B3110](*(v1 + 40), a1, 4);

  return sub_1DD3FF70C(v2, v3);
}

void sub_1DD3FEBBC()
{
  OUTLINED_FUNCTION_4_14();
  sub_1DD63D818();
  v0 = sub_1DD400F74(&qword_1ECCDC330, MEMORY[0x1E69D2BE8], MEMORY[0x1E69D2BF0]);
  OUTLINED_FUNCTION_11_12(v0);
  OUTLINED_FUNCTION_12_12();
}

void sub_1DD3FEC6C()
{
  OUTLINED_FUNCTION_4_14();
  sub_1DD63D0F8();
  v0 = sub_1DD400F74(&qword_1EE163810, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_11_12(v0);
  OUTLINED_FUNCTION_12_12();
}

unint64_t sub_1DD3FED1C()
{
  OUTLINED_FUNCTION_23_6();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1DD640E28();
  SportsItem.hash(into:)(v3);
  v1 = sub_1DD640E78();

  return sub_1DD3FF76C(v0, v1);
}

unint64_t sub_1DD3FED98()
{
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_17_9();
  sub_1DD421DEC(v3);
  v1 = sub_1DD640E78();

  return sub_1DD3FF868(v0, v1);
}

unint64_t sub_1DD3FEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_9();
  sub_1DD63FD28();
  if (a4)
  {
    MEMORY[0x1E12B3140](1);
    OUTLINED_FUNCTION_18_10();
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  v8 = sub_1DD640E78();

  return sub_1DD3FF97C(a1, a2, a3, a4, v8);
}

unint64_t sub_1DD3FEEA8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_1DD525218(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_1DD525218(v3) && v8 == v9)
    {

      return i;
    }

    v11 = sub_1DD640CD8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void sub_1DD3FEFA0()
{
  OUTLINED_FUNCTION_18_4();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v18 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v23 = v0 + 64;
  v19 = v0;
  v15 = ~(-1 << *(v0 + 32));
  for (i = v5 & v15; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v14, *(v19 + 48) + *(v10 + 72) * i, v8, v12);
    sub_1DD400F74(v20, v21, v22);
    v17 = sub_1DD63FD98();
    (*(v10 + 8))(v14, v8);
    if (v17)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_17();
}

unint64_t sub_1DD3FF11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1DD640CD8() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1DD3FF1E8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1DD400EF0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1E12B2B40](v8, a1);
    sub_1DD400AF4(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_1DD3FF2AC()
{
  OUTLINED_FUNCTION_18_4();
  v1 = ~(-1 << *(v0 + 32));
  for (i = v2 & v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v1)
  {
    v4 = sub_1DD63FDD8();
    v6 = v5;
    if (v4 == sub_1DD63FDD8() && v6 == v7)
    {

      break;
    }

    v9 = sub_1DD640CD8();

    if (v9)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_17();
}

unint64_t sub_1DD3FF394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = a3;
  v10 = ~v5;
  v12 = a3 == 2 && (a2 | a1) == 0;
  v26 = v12;
  while (1)
  {
    v13 = *(v4 + 48) + 24 * v6;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (*(v13 + 16))
    {
      if (v16 == 1)
      {
        if (v7 == 1)
        {
          sub_1DD400F60(v14, v15, 1);
          sub_1DD400F60(a1, a2, 1);
          if (((v14 ^ a1) & 1) == 0)
          {
            return v6;
          }

          goto LABEL_19;
        }
      }

      else if (v26)
      {
        sub_1DD400F60(v14, v15, 2);
        v22 = 0;
        v23 = 0;
        v24 = 2;
        goto LABEL_30;
      }

      v17 = a1;
      v18 = a2;
      v19 = v7;
      goto LABEL_18;
    }

    if (v7)
    {
      sub_1DD400F4C(a1, a2, v7);
      v17 = v14;
      v18 = v15;
      v19 = 0;
LABEL_18:
      sub_1DD400F4C(v17, v18, v19);
      sub_1DD400F60(v14, v15, v16);
      sub_1DD400F60(a1, a2, v7);
      goto LABEL_19;
    }

    if (v14 == a1 && v15 == a2)
    {
      break;
    }

    v21 = sub_1DD640CD8();
    sub_1DD400F4C(a1, a2, 0);
    sub_1DD400F4C(v14, v15, 0);
    sub_1DD400F60(v14, v15, 0);
    sub_1DD400F60(a1, a2, 0);
    if (v21)
    {
      return v6;
    }

LABEL_19:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  sub_1DD400F4C(a1, a2, 0);
  sub_1DD400F4C(a1, a2, 0);
  sub_1DD400F60(a1, a2, 0);
  v22 = a1;
  v23 = a2;
  v24 = 0;
LABEL_30:
  sub_1DD400F60(v22, v23, v24);
  return v6;
}

unint64_t sub_1DD3FF5E8(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1DD3FF648(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for DateTimeConstraint();

    v8 = sub_1DD48E554(v7, a1);

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DD3FF70C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1DD3FF76C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = (*(v2 + 48) + (i << 7));
    memcpy(v10, v6, sizeof(v10));
    memcpy(__srca, v6, sizeof(__srca));
    sub_1DD400BFC(v10, &v8);
    LOBYTE(v6) = static SportsItem.== infix(_:_:)(__srca, __dst);
    memcpy(v11, __srca, sizeof(v11));
    sub_1DD400C58(v11);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DD3FF868(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v5);
      if (v8 == *v10)
      {
        v11 = *(v10 + 3);
        v12 = *(v10 + 4);
        v13 = *(v10 + 5);
        v14 = *(v10 + 1) == *(a1 + 1) && *(v10 + 2) == *(a1 + 2);
        if (v14 || (sub_1DD640CD8() & 1) != 0)
        {
          v15 = v11 == *(a1 + 3) && v12 == *(a1 + 4);
          if (v15 || (sub_1DD640CD8()) && v13 == *(a1 + 5))
          {
            break;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DD3FF97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v12 = ~v6;
    while (1)
    {
      v13 = (*(v5 + 48) + 32 * v7);
      v15 = v13[2];
      v14 = v13[3];
      v16 = *v13 == a1 && v13[1] == a2;
      if (!v16 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_18;
      }

      if (!v14)
      {
        break;
      }

      if (!a4)
      {
        goto LABEL_17;
      }

      v17 = v15 == a3 && v14 == a4;
      if (v17 || (sub_1DD640CD8() & 1) != 0)
      {
        return v7;
      }

LABEL_18:
      v7 = (v7 + 1) & v12;
      if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return v7;
      }
    }

    if (!a4)
    {
      swift_bridgeObjectRelease_n();
      return v7;
    }

LABEL_17:

    goto LABEL_18;
  }

  return v7;
}

uint64_t sub_1DD3FFA9C()
{
  OUTLINED_FUNCTION_21_3();
  v2 = v1;
  OUTLINED_FUNCTION_2_16(v1, v3);
  sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDC360, &unk_1DD652300);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    OUTLINED_FUNCTION_5_9();
    sub_1DD3978DC();
    OUTLINED_FUNCTION_15_11();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  if (v8)
  {
    v11 = *(*v0 + 56) + 40 * v7;
    *(v11 + 32) = *(v2 + 32);
    v12 = *(v2 + 16);
    *v11 = *v2;
    *(v11 + 16) = v12;

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_18_10();
    sub_1DD40058C(v15, v16, v17, v2, v18);
    OUTLINED_FUNCTION_25_1();
  }
}

uint64_t sub_1DD3FFBC0()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC328, &qword_1DD6521F0);
  if (sub_1DD640A08())
  {
    sub_1DD3978DC();
    OUTLINED_FUNCTION_15_11();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_17();
  }

  else
  {
    sub_1DD400614(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD3FFCE8()
{
  OUTLINED_FUNCTION_21_3();
  v2 = v1;
  OUTLINED_FUNCTION_2_16(v1, v3);
  sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1DD640D58();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_14_12();
    if (!v10)
    {
      goto LABEL_12;
    }

    v7 = v9;
  }

  if (v8)
  {
    *(*(*v0 + 56) + 8 * v7) = v2;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_11();
    sub_1DD400660(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_25_1();
  }
}

_OWORD *sub_1DD3FFDC8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DD3FE928(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3B8, &qword_1DD646198);
  if ((sub_1DD640A08() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1DD3FE928(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = (v14[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1(v15);

    return sub_1DD400AE4(a1, v15);
  }

  else
  {
    sub_1DD400EF0(a2, v17);
    return sub_1DD40068C(v10, v17, a1, v14);
  }
}

uint64_t sub_1DD3FFF08(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_16(a1, a2);
  sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF230, &unk_1DD65E210);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    OUTLINED_FUNCTION_5_9();
    sub_1DD3978DC();
    OUTLINED_FUNCTION_15_11();
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    sub_1DD63F438();
    OUTLINED_FUNCTION_25_1();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_18_10();
  sub_1DD400708(v9, v10, v11, a1, v12);
  OUTLINED_FUNCTION_25_1();
}

void sub_1DD40005C(uint64_t a1, float a2)
{
  sub_1DD63D818();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_14();
  sub_1DD3FEBBC();
  OUTLINED_FUNCTION_0_28();
  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDC340, &qword_1DD646170);
  OUTLINED_FUNCTION_1_19();
  if ((sub_1DD640A08() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1DD3FEBBC();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_9:
    sub_1DD640D58();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v2;
  if (v11)
  {
    v15 = v14[7] + 16 * v10;
    *v15 = a1;
    *(v15 + 8) = a2;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_24_3();
    v17(v16);
    sub_1DD4007B8(v10, v3, a1, v14, a2);
  }
}

uint64_t sub_1DD4001D4()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21_3();
  v6 = v5;
  OUTLINED_FUNCTION_2_16(v5, v7);
  sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_14_12();
    if (!v14)
    {
      goto LABEL_14;
    }

    v11 = v13;
  }

  if (v12)
  {
    *(*(*v0 + 56) + 8 * v11) = v6;
    OUTLINED_FUNCTION_17();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_7_11();
    sub_1DD400660(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD4002C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18_4();
  v15 = v14;
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_14();
  sub_1DD3FEC6C();
  OUTLINED_FUNCTION_0_28();
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC390, &qword_1DD646188);
  OUTLINED_FUNCTION_1_19();
  if ((sub_1DD640A08() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1DD3FEC6C();
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_11:
    sub_1DD640D58();
    __break(1u);
    return;
  }

  v20 = v22;
LABEL_5:
  v24 = *v12;
  if (v21)
  {
    type metadata accessor for AppRankEvent(0);
    OUTLINED_FUNCTION_17();

    sub_1DD400CAC(v25, v26);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_24_3();
    v29(v28);
    sub_1DD400888(v20, v13, v15, v24);
    OUTLINED_FUNCTION_17();
  }
}

uint64_t sub_1DD400444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18_4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = OUTLINED_FUNCTION_2_16(v21, v19);
  sub_1DD3FEDF8(v23, v24, v25, v26);
  OUTLINED_FUNCTION_0_28();
  if (v29)
  {
    __break(1u);
    goto LABEL_13;
  }

  v30 = v27;
  v31 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC320, &qword_1DD646168);
  if ((sub_1DD640A08() & 1) == 0)
  {
    goto LABEL_5;
  }

  v32 = sub_1DD3FEDF8(v20, v18, v16, v14);
  if ((v31 & 1) != (v33 & 1))
  {
LABEL_13:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

  v30 = v32;
LABEL_5:
  if (v31)
  {
    OUTLINED_FUNCTION_17();

    return sub_1DD400BA0(v34, v35);
  }

  else
  {
    sub_1DD4009CC(v30, v20, v18, v16, v14, v22, *v12);

    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD40058C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_16(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20_4(v6, v13);
  }
}

uint64_t sub_1DD4005CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_9_9(a1, a4 + 8 * (a1 >> 6));
  v6 = (v5[6] + 16 * result);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * result) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v12;
  }

  return result;
}

uint64_t sub_1DD400614(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_9_9(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_1DD400660(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_16(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_20_4(v6, v11);
  }
}

_OWORD *sub_1DD40068C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1DD400AE4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1DD400708(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1DD63F438();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1DD4007B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, float a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1DD63D818();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a4[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a5;
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

uint64_t sub_1DD400888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DD63D0F8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for AppRankEvent(0);
  result = sub_1DD400D10(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

void *sub_1DD400964(unint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_9_9(a1, a4 + 8 * (a1 >> 6));
  result = memcpy((*(v8 + 48) + (v7 << 7)), v9, 0x80uLL);
  *(*(a4 + 56) + 8 * a1) = a2;
  v11 = *(a4 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }

  return result;
}

unint64_t sub_1DD4009CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v8 = a7[7] + 40 * result;
  v9 = *(a6 + 16);
  *v8 = *a6;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a6 + 32);
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

uint64_t sub_1DD400A2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_9_9(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 32 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

uint64_t sub_1DD400A78(void *a1)
{
  v1 = [a1 addressDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

_OWORD *sub_1DD400AE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DD400B48(void *a1)
{
  v1 = [a1 areasOfInterest];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD640118();

  return v3;
}

uint64_t sub_1DD400CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRankEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD400D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRankEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD400D74()
{
  result = qword_1ECCDC398;
  if (!qword_1ECCDC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC398);
  }

  return result;
}

unint64_t sub_1DD400DC8()
{
  result = qword_1ECCDC3A0;
  if (!qword_1ECCDC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC3A0);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DD400E6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD63FDD8();
  v4 = v3;
  if (v2 == sub_1DD63FDD8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DD640CD8();
  }

  return v7 & 1;
}

uint64_t sub_1DD400F4C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1DD400F60(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1DD400F74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{

  return sub_1DD63FCE8();
}

void OUTLINED_FUNCTION_12_12()
{

  sub_1DD3FEFA0();
}

unint64_t OUTLINED_FUNCTION_19_9()
{

  return sub_1DD3978DC();
}

id sub_1DD40105C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v0 setUseInProcessMapperExclusively_];
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  return v1;
}

id sub_1DD4010CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v0 setIncludeDonatedContacts_];
  [v0 setIncludeSuggestedContacts_];
  [v0 setIncludeLocalContacts_];
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  return v1;
}

id sub_1DD401164(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v2 = sub_1DD6400F8();
  v7[0] = 0;
  v3 = [v1 _ios_meContactWithKeysToFetch_error_];

  v4 = v7[0];
  if (!v3)
  {
    v5 = v4;
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v3;
}

id sub_1DD401240(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD63FDA8();
  if (qword_1EE1660F0 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_1EE1660F0);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v4 = OUTLINED_FUNCTION_2_17(v3);
  v5 = OUTLINED_FUNCTION_1_20();
  v7 = [v5 v6];

  v8 = 0;
  if (!v7)
  {
    v9 = v8;
    v10 = sub_1DD63CD98();

    swift_willThrow();
  }

  return v7;
}

void *sub_1DD401350(uint64_t a1)
{
  if (!sub_1DD3CC020() && qword_1EE1660F0 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_1EE1660F0);
  }

  v1 = objc_opt_self();
  v2 = sub_1DD6400F8();
  v3 = [v1 predicateForContactsWithIdentifiers_];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v5 = OUTLINED_FUNCTION_2_17(v4);

  v6 = OUTLINED_FUNCTION_1_20();
  v8 = [v6 v7];

  if (v8)
  {
    sub_1DD39638C(0, &qword_1EE163870, 0x1E695CD58);
    v5 = sub_1DD640118();
    v9 = 0;
  }

  else
  {
    v10 = 0;
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v5;
}

void *sub_1DD4014FC(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

  v3 = sub_1DD40B8E0();
  v4 = [v2 predicateForContactsMatchingPhoneNumber_];

  if (qword_1EE1660F0 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_1EE1660F0);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v6 = OUTLINED_FUNCTION_2_17(v5);
  v7 = OUTLINED_FUNCTION_1_20();
  v9 = [v7 v8];

  if (v9)
  {
    sub_1DD39638C(0, &qword_1EE163870, 0x1E695CD58);
    v6 = sub_1DD640118();
    v10 = 0;
  }

  else
  {
    v11 = 0;
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v6;
}

void *sub_1DD4016AC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_self();
  v6 = sub_1DD63FDA8();
  v7 = [v5 *a3];

  if (qword_1EE1660F0 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_1EE1660F0);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3E8, &qword_1DD6461E8);
  v9 = OUTLINED_FUNCTION_2_17(v8);
  v15[0] = 0;
  v10 = [v3 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:v15];

  v11 = v15[0];
  if (v10)
  {
    sub_1DD39638C(0, &qword_1EE163870, 0x1E695CD58);
    v9 = sub_1DD640118();
    v12 = v11;
  }

  else
  {
    v13 = v15[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1DD401838()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];
  v2 = [v1 entries];

  sub_1DD39638C(0, &qword_1EE1638B0, 0x1E695CE98);
  v3 = sub_1DD640118();

  v4 = sub_1DD4E7C30(v3);

  return v4;
}

uint64_t sub_1DD4018D4()
{
  result = sub_1DD4018F4();
  qword_1EE16F080 = result;
  return result;
}

uint64_t sub_1DD4018F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD6461B0;
  v1 = *MEMORY[0x1E695C258];
  v2 = *MEMORY[0x1E695C300];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C240];
  v4 = *MEMORY[0x1E695C2F0];
  *(v0 + 48) = *MEMORY[0x1E695C240];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C230];
  v6 = *MEMORY[0x1E695C390];
  *(v0 + 64) = *MEMORY[0x1E695C230];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C308];
  v37 = *MEMORY[0x1E695C310];
  v8 = *MEMORY[0x1E695C310];
  *(v0 + 80) = *MEMORY[0x1E695C308];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C328];
  v10 = *MEMORY[0x1E695C348];
  *(v0 + 96) = *MEMORY[0x1E695C328];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x1E695C350];
  v38 = *MEMORY[0x1E695C340];
  v12 = *MEMORY[0x1E695C340];
  *(v0 + 112) = *MEMORY[0x1E695C350];
  *(v0 + 120) = v12;
  v36 = *MEMORY[0x1E695C1D0];
  v40 = *MEMORY[0x1E695C330];
  v13 = *MEMORY[0x1E695C330];
  *(v0 + 128) = *MEMORY[0x1E695C1D0];
  *(v0 + 136) = v13;
  v14 = *MEMORY[0x1E695C208];
  v39 = *MEMORY[0x1E695C3A8];
  v15 = *MEMORY[0x1E695C3A8];
  *(v0 + 144) = *MEMORY[0x1E695C208];
  *(v0 + 152) = v15;
  v41 = *MEMORY[0x1E695C338];
  *(v0 + 160) = *MEMORY[0x1E695C338];
  v43 = v0;
  v42 = *MEMORY[0x1E695C3A0];
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v37;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v38;
  v28 = v36;
  v29 = v40;
  v30 = v14;
  v31 = v39;
  v32 = v41;
  v33 = v42;
  MEMORY[0x1E12B23F0]();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD640138();
  }

  sub_1DD640168();
  v34 = *MEMORY[0x1E695C398];
  MEMORY[0x1E12B23F0]();
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD640138();
  }

  sub_1DD640168();
  return v43;
}

id sub_1DD401C9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v25 - v3;
  result = [v0 label];
  if (result)
  {
    v6 = result;
    v7 = sub_1DD63FDD8();
    v9 = v8;

    v29 = v7;
    v30 = v9;
    v27 = v7;
    v28 = v9;
    v25 = 1008804959;
    v26 = 0xE400000000000000;
    sub_1DD63D168();
    OUTLINED_FUNCTION_1_21();
    sub_1DD3B7F10();

    OUTLINED_FUNCTION_0_30(v10, v11, v12, v13, v14, v15, MEMORY[0x1E69E6158]);
    LOBYTE(v6) = v16;
    sub_1DD401EB8(v4);

    if ((v6 & 1) == 0)
    {
      sub_1DD63FE98();
    }

    v27 = v29;
    v28 = v30;
    v25 = 1596203326;
    v26 = 0xE400000000000000;
    OUTLINED_FUNCTION_1_21();

    OUTLINED_FUNCTION_0_30(v17, v18, v19, v20, v21, v22, MEMORY[0x1E69E6158]);
    v24 = v23;
    sub_1DD401EB8(v4);

    if ((v24 & 1) == 0)
    {
      sub_1DD63FE98();
    }

    return v29;
  }

  return result;
}

id sub_1DD401E40(void *a1)
{
  v1 = a1;
  sub_1DD401C9C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1DD63FDA8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1DD401EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DD401F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3CC020();
  v5 = 0;
  v6 = a2 & 0xC000000000000001;
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  v19 = a2;
  v8 = a2 + 32;
  v9 = a1 + 40;
  v24 = v4;
  v25 = a1;
  v22 = v7;
  v23 = v6;
  v20 = a1 + 40;
  v21 = v8;
  while (v5 != v4)
  {
    if (v6)
    {
      v10 = MEMORY[0x1E12B2C10](v5, v19);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      v10 = *(v8 + 8 * v5);
    }

    v11 = v10;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }

    v13 = [v10 sanitizedLabel];
    if (v13)
    {
      v14 = v13;
      sub_1DD63FDD8();

      v15 = *(a1 + 16) + 1;
      v16 = v9;
      while (--v15)
      {
        v17 = v16 + 16;
        sub_1DD63FE58();
        sub_1DD63FE58();
        v18 = sub_1DD640008();

        v16 = v17;
        if (v18)
        {

          [v11 value];

          return;
        }
      }

      v4 = v24;
      a1 = v25;
      v7 = v22;
      v6 = v23;
      v9 = v20;
      v8 = v21;
    }

    else
    {
    }
  }
}

uint64_t sub_1DD4020D4()
{
  v1 = [objc_opt_self() stringFromPostalAddress:v0 style:0];
  v2 = sub_1DD63FDD8();

  return v2;
}

uint64_t CommsAppFeature.isFirstParty.getter()
{
  sub_1DD3B52B8();
  sub_1DD3B530C();
  return sub_1DD63FD48() & 1;
}

uint64_t sub_1DD4021D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = sub_1DD63F438();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_1DD390754(a1, &qword_1ECCDC448, &qword_1DD655800);
    sub_1DD598EF0(v10);

    return sub_1DD390754(v10, &qword_1ECCDC448, &qword_1DD655800);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_1DD3FFF08(v17, a2);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_1DD402388(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF180, &qword_1DD6464B0);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_10();
  type metadata accessor for AppRankEvent(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_1DD390754(a1, &unk_1ECCDF180, &qword_1DD6464B0);
    sub_1DD598FFC(v3);
    sub_1DD63D0F8();
    OUTLINED_FUNCTION_7();
    (*(v15 + 8))(a2);
    return sub_1DD390754(v3, &unk_1ECCDF180, &qword_1DD6464B0);
  }

  else
  {
    sub_1DD400D10(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DD4002C4(v13, a2, isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v24, *v4, v26, v27);
    *v4 = v25;
    sub_1DD63D0F8();
    OUTLINED_FUNCTION_7();
    return (*(v23 + 8))(a2);
  }
}

void CommsAppResolutionFeature.isPhone.getter()
{
  OUTLINED_FUNCTION_18_4();
  sub_1DD63D8A8();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_17_10();
  type metadata accessor for CommsAppResolutionFeature(v3);
  v4 = *(v1 + 104);
  v5 = OUTLINED_FUNCTION_14_13();
  v4(v5);
  OUTLINED_FUNCTION_7_12();
  v8 = sub_1DD40472C(v6, v7, MEMORY[0x1E69D2C48]);
  OUTLINED_FUNCTION_20_5(v8);
  OUTLINED_FUNCTION_5_17();
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_15();
  v9(v10);
  OUTLINED_FUNCTION_13_10();
  if (!v11)
  {
    v12 = OUTLINED_FUNCTION_14_13();
    v4(v12);
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_5_17();
    v13 = OUTLINED_FUNCTION_15();
    v9(v13);
    OUTLINED_FUNCTION_13_10();
    if (!v11)
    {
      v14 = OUTLINED_FUNCTION_14_13();
      v4(v14);
      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_5_17();
      v15 = OUTLINED_FUNCTION_15();
      v9(v15);
      OUTLINED_FUNCTION_13_10();
      if (!v11)
      {
        v16 = OUTLINED_FUNCTION_14_13();
        v4(v16);
        OUTLINED_FUNCTION_8_7();
        OUTLINED_FUNCTION_5_17();
        v17 = OUTLINED_FUNCTION_15();
        v9(v17);
        OUTLINED_FUNCTION_13_10();
      }
    }
  }

  OUTLINED_FUNCTION_17();
}

void CommsAppResolutionFeature.isMessage.getter()
{
  OUTLINED_FUNCTION_18_4();
  sub_1DD63D8A8();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_17_10();
  type metadata accessor for CommsAppResolutionFeature(v3);
  v4 = *(v1 + 104);
  v5 = OUTLINED_FUNCTION_14_13();
  v4(v5);
  OUTLINED_FUNCTION_7_12();
  v8 = sub_1DD40472C(v6, v7, MEMORY[0x1E69D2C48]);
  OUTLINED_FUNCTION_20_5(v8);
  OUTLINED_FUNCTION_5_17();
  v9 = *(v1 + 8);
  v10 = OUTLINED_FUNCTION_15();
  v9(v10);
  OUTLINED_FUNCTION_13_10();
  if (!v11)
  {
    v12 = OUTLINED_FUNCTION_14_13();
    v4(v12);
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_5_17();
    v13 = OUTLINED_FUNCTION_15();
    v9(v13);
    OUTLINED_FUNCTION_13_10();
  }

  OUTLINED_FUNCTION_17();
}

id CommsAppResolutionFeature.intent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CommsAppResolutionFeature.communicationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CommsAppResolutionFeature(0) + 28);
  sub_1DD63D8A8();
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CommsAppResolutionFeature.siriLocale.getter()
{
  type metadata accessor for CommsAppResolutionFeature(0);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t CommsAppResolutionFeature.interactionTypes.getter()
{
  type metadata accessor for CommsAppResolutionFeature(0);
}

uint64_t CommsAppResolutionFeature.contacts.getter()
{
  type metadata accessor for CommsAppResolutionFeature(0);
}

uint64_t CommsAppResolutionFeature.init(intent:nlContactCount:appFeatures:communicationType:siriLocale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for CommsAppResolutionFeature(0);
  v15 = (a7 + v14[8]);
  *v15 = a5;
  v15[1] = a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = 0;
  *(a7 + 24) = a3;
  v16 = v14[7];
  sub_1DD63D8A8();
  OUTLINED_FUNCTION_7();
  result = (*(v17 + 32))(a7 + v16, a4);
  *(a7 + v14[9]) = MEMORY[0x1E69E7CC0];
  *(a7 + v14[11]) = 2;
  *(a7 + v14[10]) = 2;
  *(a7 + v14[12]) = 2;
  *(a7 + v14[13]) = 0;
  return result;
}

uint64_t CommsAppResolutionFeature.init(intent:nlContactCount:appFeatures:communicationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = a3;
  v7 = type metadata accessor for CommsAppResolutionFeature(0);
  v8 = v7[7];
  v9 = sub_1DD63D8A8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a5 + v8, a4, v9);
  v11 = (a5 + v7[8]);
  *v11 = 0;
  v11[1] = 0;
  result = (*(v10 + 8))(a4, v9);
  *(a5 + v7[9]) = MEMORY[0x1E69E7CC0];
  *(a5 + v7[11]) = 2;
  *(a5 + v7[10]) = 2;
  *(a5 + v7[12]) = 2;
  *(a5 + v7[13]) = 0;
  return result;
}

uint64_t CommsAppResolutionFeature.Builder.__allocating_init(communicationType:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CommsAppResolutionFeature.Builder.init(communicationType:)(a1);
  return v2;
}

uint64_t CommsAppResolutionFeature.Builder.init(communicationType:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 1;
  *(v1 + 40) = v3;
  v4 = (v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_interactionTypes) = v3;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestByHandle) = 2;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestBylabel) = 2;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestByPhoneNumber) = 2;
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_contacts) = 0;
  v5 = OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_communicationType;
  sub_1DD63D8A8();
  OUTLINED_FUNCTION_7();
  (*(v6 + 32))(v1 + v5, a1);
  return v1;
}

double sub_1DD402D14(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;

  return result;
}

uint64_t sub_1DD402D54(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  return OUTLINED_FUNCTION_1_22();
}

double sub_1DD402D60(uint64_t a1)
{
  *(v1 + 40) = a1;

  return result;
}

double sub_1DD402DA4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

double sub_1DD402DF8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_interactionTypes) = a1;

  return result;
}

double sub_1DD402E74(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_contacts) = a1;

  return result;
}

uint64_t sub_1DD402EC0()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_communicationType;
  v8 = type metadata accessor for CommsAppResolutionFeature(0);
  v9 = v8[7];
  sub_1DD63D8A8();
  OUTLINED_FUNCTION_7();
  (*(v10 + 16))(v2 + v9, v0 + v7);
  v11 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_interactionTypes);
  v12 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestByHandle);
  v13 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestBylabel);
  v14 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_isRequestByPhoneNumber);
  v15 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_contacts);
  v16 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale);
  v17 = *(v0 + OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_siriLocale + 8);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v18 = (v2 + v8[8]);
  *v18 = v16;
  v18[1] = v17;
  *(v2 + v8[9]) = v11;
  *(v2 + v8[10]) = v12;
  *(v2 + v8[11]) = v13;
  *(v2 + v8[12]) = v14;
  *(v2 + v8[13]) = v15;

  v19 = v3;

  OUTLINED_FUNCTION_17();
}

uint64_t CommsAppResolutionFeature.Builder.deinit()
{

  v1 = OBJC_IVAR____TtCV13SiriInference25CommsAppResolutionFeature7Builder_communicationType;
  sub_1DD63D8A8();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t CommsAppResolutionFeature.Builder.__deallocating_deinit()
{
  CommsAppResolutionFeature.Builder.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall CommsAppResolutionFeature.isRequestByHandleType()()
{
  if (!*v0)
  {
    return *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 40)) & 1;
  }

  v1 = *v0;
  v2 = sub_1DD640538();

  return v2 & 1;
}

Swift::Bool __swiftcall CommsAppResolutionFeature.isRequestByContactlabel()()
{
  if (!*v0)
  {
    return *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 44)) & 1;
  }

  v1 = *v0;
  v2 = sub_1DD640558();

  return v2 & 1;
}

Swift::Bool __swiftcall CommsAppResolutionFeature.isRequestByPhoneHandle()()
{
  if (!*v0)
  {
    return *(v0 + *(type metadata accessor for CommsAppResolutionFeature(0) + 48)) & 1;
  }

  v1 = *v0;
  v2 = sub_1DD640548();

  return v2 & 1;
}

uint64_t CommsAppResolutionFeature.getInteractionTypes()()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = sub_1DD63F398();

    return v2;
  }

  else
  {
    type metadata accessor for CommsAppResolutionFeature(0);
  }
}

uint64_t CommsAppResolutionFeature.getBundleContactStats(appMatcher:bundleIds:groupBySiriDonation:)(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v4 = v3;
  v70 = a3;
  v71 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC438, &qword_1DD646210);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v69 = v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC440, &qword_1DD646218);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v67 - v11;
  v13 = sub_1DD63F028();
  OUTLINED_FUNCTION_0();
  v68 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  OUTLINED_FUNCTION_3(v19);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v67 - v21;
  v23 = sub_1DD63EFC8();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  sub_1DD4038F4(a1, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1DD390754(v22, &qword_1ECCDBBC8, &qword_1DD643FC0);
    return 0;
  }

  (*(v25 + 32))(v29, v22, v23);
  v31 = *v4;
  if (!*v4)
  {
    v41 = *(v4 + 16);
    v67[1] = v25;
    v70 = (v41 & 1) == 0 && *(v4 + 8) > 1;
    if (sub_1DD403964())
    {
      sub_1DD63EF68();

      if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
      {
        v49 = v68;
        (*(v68 + 32))(v18, v12, v13);
        if (qword_1EE162D98 != -1)
        {
          OUTLINED_FUNCTION_0_31();
          swift_once();
        }

        v50 = sub_1DD63F9F8();
        __swift_project_value_buffer(v50, qword_1EE16EFB8);
        v51 = sub_1DD63F9D8();
        v52 = sub_1DD640368();
        if (os_log_type_enabled(v51, v52))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_25_2(&dword_1DD38D000, v53, v54, "CommsAppResolutionFeature#getBundleContactStats: Getting stats by parsing contacts");
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        type metadata accessor for CommsAppResolutionFeature(0);
        v55 = *MEMORY[0x1E69D2A68];
        v56 = sub_1DD63F328();
        OUTLINED_FUNCTION_7();
        v58 = v69;
        (*(v57 + 104))(v69, v55, v56);
        OUTLINED_FUNCTION_10_15();
        __swift_storeEnumTagSinglePayload(v59, v60, v61, v56);
        v30 = v29;
        v62 = v72;
        v63 = sub_1DD63EF78();
        if (!v62)
        {
          v30 = v63;
        }

        sub_1DD390754(v58, &qword_1ECCDC438, &qword_1DD646210);
        (*(v49 + 8))(v18, v13);
        goto LABEL_30;
      }

      sub_1DD390754(v12, &qword_1ECCDC440, &qword_1DD646218);
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_31();
      swift_once();
    }

    v42 = sub_1DD63F9F8();
    __swift_project_value_buffer(v42, qword_1EE16EFB8);
    v43 = sub_1DD63F9D8();
    v44 = sub_1DD640368();
    if (os_log_type_enabled(v43, v44))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_2(&dword_1DD38D000, v45, v46, "CommsAppResolutionFeature#getBundleContactStats: unable to get stats from intent or contacts, falling back to non-contact stats");
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    type metadata accessor for CommsAppResolutionFeature(0);
    v30 = v29;
    v47 = v72;
    v48 = sub_1DD63EF98();
    if (!v47)
    {
      v30 = v48;
    }

LABEL_30:
    v64 = OUTLINED_FUNCTION_23_7();
    v65(v64);
    return v30;
  }

  v32 = v25;
  v33 = qword_1EE162D98;
  v34 = v31;
  if (v33 != -1)
  {
    OUTLINED_FUNCTION_0_31();
    swift_once();
  }

  v35 = sub_1DD63F9F8();
  __swift_project_value_buffer(v35, qword_1EE16EFB8);
  v36 = sub_1DD63F9D8();
  v37 = sub_1DD640368();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1DD38D000, v36, v37, "CommsAppResolutionFeature#getBundleContactStats: Getting stats by parsing intent", v38, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v30 = v29;
  v39 = v72;
  v40 = sub_1DD63EF88();
  if (!v39)
  {
    v30 = v40;
  }

  (*(v32 + 8))(v29, v23);

  return v30;
}

uint64_t sub_1DD4038F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD403964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4A0, &qword_1DD6464B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_1DD63F3D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CommsAppResolutionFeature(0);
  v8 = *(v0 + *(result + 52));
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = *(v8 + 16);
  v19 = v5;
  v20 = (v5 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = v8 + 32;
  v18 = v8 + 32;
LABEL_3:
  v13 = (v12 + 72 * v9);
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    memcpy(__dst, v13, sizeof(__dst));
    CommsAppContact.toEntity()();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      v17 = *v20;
      v17(v21, v3, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE740();
        v11 = v15;
      }

      v14 = *(v11 + 16);
      if (v14 >= *(v11 + 24) >> 1)
      {
        sub_1DD3BE740();
        v11 = v16;
      }

      ++v9;
      *(v11 + 16) = v14 + 1;
      result = (v17)(v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v14, v21, v4);
      v12 = v18;
      goto LABEL_3;
    }

    result = sub_1DD390754(v3, &qword_1ECCDC4A0, &qword_1DD6464B8);
    v13 += 72;
    ++v9;
  }

  return v11;
}

void CommsAppContact.toEntity()()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  v4 = OUTLINED_FUNCTION_3(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v83 - v8;
  v85 = sub_1DD63F3D8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v83 - v15;
  if (*(v0 + 40))
  {
    v83 = v2;
    v84 = v14;
    v17 = *(v0 + 56);
    v18 = *(v0 + 64);
    sub_1DD63F3C8();
    sub_1DD63F3A8();
    sub_1DD63FE78();
    v19 = sub_1DD63F438();
    v20 = OUTLINED_FUNCTION_9_10();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = sub_1DD63F3B8();
    OUTLINED_FUNCTION_21_4();
    v24 = OUTLINED_FUNCTION_19_10();
    v23(v24);
    if (v17)
    {
      sub_1DD63FE78();
      v25 = OUTLINED_FUNCTION_9_10();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v19);
      v28 = sub_1DD63F3B8();
      sub_1DD4021D8(v9, 0x6C6562616CLL, 0xE500000000000000);
      v29 = OUTLINED_FUNCTION_19_10();
      v28(v29);
    }

    v30 = v85;
    if (v18 != 2)
    {
      sub_1DD63FE78();

      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v19);
      v34 = sub_1DD63F3B8();
      sub_1DD4021D8(v6, 1701869940, 0xE400000000000000);
      v35 = OUTLINED_FUNCTION_19_10();
      v34(v35);
    }

    v36 = v83;
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_31();
      swift_once();
    }

    v37 = sub_1DD63F9F8();
    __swift_project_value_buffer(v37, qword_1EE16EFB8);
    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640368();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v87[0] = v41;
      *v40 = 136315138;
      OUTLINED_FUNCTION_26_0(v16, v86);
      OUTLINED_FUNCTION_6_15();
      sub_1DD40472C(v42, v43, MEMORY[0x1E69D2AA0]);
      v44 = sub_1DD63FCC8();
      v46 = sub_1DD39565C(v44, v45, v87);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_1DD38D000, v38, v39, "CommsAppContact#toEntity: Retruning person handle entity %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    OUTLINED_FUNCTION_26_0(v16, v87);
    v47 = v84;
    (*(v84 + 16))(v36, v16, v30);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v30);
    (*(v47 + 8))(v16, v30);
LABEL_19:
    OUTLINED_FUNCTION_17();
    return;
  }

  if (*(v0 + 8))
  {
    v84 = v14;
    v51 = *(v0 + 24);
    sub_1DD63F3C8();
    sub_1DD63F3A8();
    sub_1DD63FE78();
    v52 = sub_1DD63F438();
    v53 = OUTLINED_FUNCTION_9_10();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
    v56 = sub_1DD63F3B8();
    OUTLINED_FUNCTION_21_4();
    v57 = OUTLINED_FUNCTION_19_10();
    v56(v57);
    v58 = v85;
    if (v51)
    {
      sub_1DD63FE78();
      v59 = OUTLINED_FUNCTION_9_10();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v52);
      v62 = sub_1DD63F3B8();
      sub_1DD4021D8(v9, 0x6E6F6974616C6572, 0xEC00000070696873);
      v63 = OUTLINED_FUNCTION_19_10();
      v62(v63);
    }

    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_31();
      swift_once();
    }

    v64 = sub_1DD63F9F8();
    __swift_project_value_buffer(v64, qword_1EE16EFB8);
    v65 = sub_1DD63F9D8();
    v66 = sub_1DD640368();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v87[0] = v68;
      *v67 = 136315138;
      OUTLINED_FUNCTION_26_0(v12, v86);
      OUTLINED_FUNCTION_6_15();
      sub_1DD40472C(v69, v70, MEMORY[0x1E69D2AA0]);
      v71 = sub_1DD63FCC8();
      v73 = sub_1DD39565C(v71, v72, v87);

      *(v67 + 4) = v73;
      _os_log_impl(&dword_1DD38D000, v65, v66, "CommsAppContact#toEntity: Retruning person entity %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    OUTLINED_FUNCTION_26_0(v12, v87);
    v74 = v84;
    (*(v84 + 16))(v2, v12, v58);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v58);
    (*(v74 + 8))(v12, v58);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_17();

  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
}

SiriInference::CommsAppFeature __swiftcall CommsAppFeature.init(bundleID:isContactInApp:)(SiriInference::CommsAppFeature bundleID, Swift::Bool isContactInApp)
{
  *v2 = bundleID.bundleID;
  *(v2 + 16) = isContactInApp;
  bundleID.isContactInApp = isContactInApp;
  return bundleID;
}

double CommsAppContact.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 2;
  return result;
}

double CommsAppContact.Builder.init()()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = 2;
  return result;
}

double sub_1DD404420(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double sub_1DD404468(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

double sub_1DD4044B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

double sub_1DD4044F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

uint64_t sub_1DD40454C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = *(v1 + 40);
  *(a1 + 40) = *(v1 + 56);
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
}

uint64_t CommsAppContact.Builder.deinit()
{

  return v0;
}

uint64_t CommsAppContact.Builder.__deallocating_deinit()
{
  CommsAppContact.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t HandleType.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E6F6870;
  }

  else
  {
    return 0x6C69616D65;
  }
}

SiriInference::HandleType_optional __swiftcall HandleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DD404700@<X0>(uint64_t *a1@<X8>)
{
  result = HandleType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1DD40472C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD404778()
{
  result = qword_1ECCDC458;
  if (!qword_1ECCDC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC458);
  }

  return result;
}

void sub_1DD4047F4(uint64_t a1)
{
  sub_1DD4049C4(319);
  if (v1 <= 0x3F)
  {
    sub_1DD404A60(319, &qword_1ECCDBB70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DD404A60(319, &qword_1ECCDC478, &type metadata for CommsAppFeature, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1DD63D8A8();
        if (v4 <= 0x3F)
        {
          sub_1DD404A60(319, &qword_1EE163958, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1DD404A60(319, &qword_1EE1638D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1DD404A60(319, &qword_1EE1638C8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1DD404AB0(319);
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

void sub_1DD4049C4(uint64_t a1)
{
  if (!qword_1ECCDC470)
  {
    sub_1DD404A1C();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCDC470);
    }
  }
}

unint64_t sub_1DD404A1C()
{
  result = qword_1EE166228;
  if (!qword_1EE166228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE166228);
  }

  return result;
}

void sub_1DD404A60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD404AB0(uint64_t a1)
{
  if (!qword_1ECCDC480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC488, &qword_1DD646350);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCDC480);
    }
  }
}

uint64_t sub_1DD404B3C(uint64_t a1)
{
  result = sub_1DD63D8A8();
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

uint64_t sub_1DD404DF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DD404E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD404E90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1DD404EE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandleType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1DD40521C()
{
  result = qword_1ECCDC4A8;
  if (!qword_1ECCDC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC4A8);
  }

  return result;
}

unint64_t sub_1DD405274()
{
  result = qword_1ECCDC4B0;
  if (!qword_1ECCDC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC4B0);
  }

  return result;
}

unint64_t sub_1DD405380()
{
  result = qword_1ECCDC4B8;
  if (!qword_1ECCDC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC4B8);
  }

  return result;
}

unint64_t sub_1DD4053F0()
{
  result = qword_1ECCDC4C0;
  if (!qword_1ECCDC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC4C0);
  }

  return result;
}

uint64_t sub_1DD4054DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DateTime.UserDefinedProperties.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DD40551C@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.UserDefinedProperties.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolverDomain(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContactResolverDomain(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1DD4055B0()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD4055EC(uint64_t a1, unint64_t a2, char a3)
{
  v18 = sub_1DD640478();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2();
  sub_1DD640438();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  *(v3 + 16) = 0u;
  v10 = (v3 + 16);
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  v11 = MEMORY[0x1E69E7CC8];
  *(v3 + 64) = 0;
  *(v3 + 72) = v11;
  *(v3 + 80) = v11;
  sub_1DD406E2C();
  sub_1DD3FAC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FC2BC();
  sub_1DD640718();
  sub_1DD63FBA8();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v18);
  *(v3 + 88) = sub_1DD6404A8();
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
  OUTLINED_FUNCTION_4_15();
  if (a3)
  {
    v12 = 65537;
  }

  else
  {
    v12 = 65542;
  }

  v13 = sub_1DD63FE68();

  swift_beginAccess();
  v14 = sqlite3_open_v2((v13 + 32), v10, v12, 0);
  swift_endAccess();

  sub_1DD40597C(v14, 0);
  if (v21)
  {
  }

  else
  {
    v15 = qword_1EE165C08;
    v16 = *(v19 + 88);
    if (v15 != -1)
    {
      OUTLINED_FUNCTION_0_33(&qword_1EE165C08);
    }

    sub_1DD405A20();
    sub_1DD640468();

    sqlite3_extended_result_codes(*(v19 + 16), 1);
  }

  return v19;
}

uint64_t sub_1DD405934()
{
  OUTLINED_FUNCTION_4_15();
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_1DD406DFC(v0, v1);
  return v4;
}

uint64_t sub_1DD40597C(uint64_t a1, uint64_t a2)
{

  sub_1DD47EB70(a1, a2, v9);
  v4 = v11;
  if (v11)
  {
    sub_1DD406E70();
    swift_allocError();
    v5 = v10;
    v6 = v9[1];
    *v7 = v9[0];
    *(v7 + 16) = v6;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DD405A20()
{
  result = v0;
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = v0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t sub_1DD405A44()
{
  v1 = v0;
  v2 = sub_1DD4055B0();
  v3 = sqlite3_close(v2);
  if (v3)
  {
    v4 = v3;

    sub_1DD47EB70(v4, 0, v17);
    v5 = v18;
    if (v18)
    {
      if (qword_1EE160538 != -1)
      {
        swift_once();
      }

      v6 = sub_1DD63F9F8();
      __swift_project_value_buffer(v6, qword_1EE16EEE8);
      v19 = *&v17[8];
      v20 = *&v17[24];
      v21 = v5;
      sub_1DD3DD9B4(&v19, v16, &unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD3DD9B4(&v20, v16, &unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD3DD9B4(&v21, v16, &unk_1ECCDFD20, &qword_1DD648290);
      v7 = sub_1DD63F9D8();
      v8 = sub_1DD640378();
      sub_1DD390754(&v19, &unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD390754(&v20, &unk_1ECCDFDF0, &unk_1DD644950);
      sub_1DD390754(&v21, &unk_1ECCDFD20, &qword_1DD648290);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        sub_1DD406E70();
        swift_allocError();
        v11 = *&v17[32];
        v12 = *&v17[16];
        *v13 = *v17;
        *(v13 + 16) = v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v5;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v14;
        *v10 = v14;
        _os_log_impl(&dword_1DD38D000, v7, v8, "Error closing connection: %@", v9, 0xCu);
        sub_1DD390754(v10, &qword_1ECCDBF90, &qword_1DD6445B0);
        MEMORY[0x1E12B3DA0](v10, -1, -1);
        MEMORY[0x1E12B3DA0](v9, -1, -1);
      }

      else
      {

        sub_1DD390754(&v19, &unk_1ECCDFDF0, &unk_1DD644950);
        sub_1DD390754(&v20, &unk_1ECCDFDF0, &unk_1DD644950);
        sub_1DD390754(&v21, &unk_1ECCDFD20, &qword_1DD648290);
      }
    }
  }

  _Block_release(*(v1 + 32));
  _Block_release(*(v1 + 40));
  _Block_release(*(v1 + 48));
  _Block_release(*(v1 + 56));
  _Block_release(*(v1 + 64));

  return v1;
}

uint64_t sub_1DD405D14()
{
  sub_1DD405A44();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD405D6C@<X0>(_DWORD *a3@<X8>)
{
  v5 = sub_1DD4055B0();
  v6 = sub_1DD63FE68();
  v7 = sqlite3_exec(v5, (v6 + 32), 0, 0, 0);

  result = sub_1DD40597C(v7, 0);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

BOOL sub_1DD405E00(uint64_t a1, uint64_t a2)
{
  sub_1DD406E2C();
  if (qword_1EE165C08 != -1)
  {
    OUTLINED_FUNCTION_0_33(&qword_1EE165C08);
  }

  sub_1DD640458();
  v5 = sub_1DD405A20();
  if ((v12 & 1) != 0 || v11 != v5)
  {
    v9 = *(a1 + 88);
    sub_1DD640488();

    if (!v2)
    {
      return v13;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = sqlite3_step(*(a2 + 16));
    v7 = v6;
    sub_1DD40597C(v6, 0);

    if (!v2)
    {
      return v7 == 100;
    }
  }

  return v8;
}

uint64_t sub_1DD405F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD406E2C();
  if (qword_1EE165C08 != -1)
  {
    OUTLINED_FUNCTION_0_33(&qword_1EE165C08);
  }

  sub_1DD640458();
  v6 = sub_1DD405A20();
  if ((v12 & 1) != 0 || v11 != v6)
  {
    v9 = *(a1 + 88);
    sub_1DD640488();
    if (v4)
    {

      return v9;
    }

    v9 = v13;
LABEL_11:

    return v9;
  }

  v7 = sub_1DD4055B0();
  v8 = sub_1DD63FE68();
  v9 = sqlite3_exec(v7, (v8 + 32), 0, 0, 0);

  sub_1DD40597C(v9, 0);
  if (!v4)
  {

    goto LABEL_11;
  }

  return v9;
}

uint64_t sub_1DD4060EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    result = sub_1DD4060EC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (!v3)
    {
      sub_1DD5D2AFC(a3);
      v9 = v8;

      return v9;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    return sub_1DD5D2F2C(v10, a1, a2);
  }

  return result;
}

uint64_t sub_1DD4061B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD4060EC(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    sub_1DD5D2AFC(a3);
    v3 = sub_1DD5D3890(MEMORY[0x1E69E7CC0]);
  }

  return v3;
}

uint64_t sub_1DD406240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1DD4060EC(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    sub_1DD5D2AFC(a3);
    sub_1DD5D3A54(MEMORY[0x1E69E7CC0], a4);
  }

  return result;
}

uint64_t sub_1DD4062C8(char a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v21 = *a3;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1DD406EC4(&v21, v18);

  sub_1DD6408D8();

  OUTLINED_FUNCTION_6_16();
  v19 = v10;
  v20 = v11;
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = 0x54414944454D4D49;
    }

    else
    {
      v12 = 0x564953554C435845;
    }

    v13 = 0xE900000000000045;
  }

  else
  {
    v13 = 0xE800000000000000;
    v12 = OUTLINED_FUNCTION_5_18();
  }

  MEMORY[0x1E12B2260](v12, v13);

  v14 = OUTLINED_FUNCTION_1_23();
  MEMORY[0x1E12B2260](v14);
  v15 = v19;
  v16 = v20;
  sub_1DD406EC4(&v21, &v19);

  sub_1DD4065E8(v15, v16, 0xD000000000000012, 0x80000001DD66B0B0, 0xD000000000000014, 0x80000001DD66B0D0, a2, a3, a4, a5);

  sub_1DD406F20(&v21);

  sub_1DD406F20(&v21);
}

uint64_t sub_1DD4064AC(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  sub_1DD6408D8();

  OUTLINED_FUNCTION_6_16();
  v12 = v6;
  v13 = v7;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x54414944454D4D49;
    }

    else
    {
      v8 = 0x564953554C435845;
    }

    v9 = 0xE900000000000045;
  }

  else
  {
    v9 = 0xE800000000000000;
    v8 = OUTLINED_FUNCTION_5_18();
  }

  MEMORY[0x1E12B2260](v8, v9);

  v10 = OUTLINED_FUNCTION_1_23();
  MEMORY[0x1E12B2260](v10);
  sub_1DD406988(v12, v13, a2, a3, 0xD000000000000012, 0x80000001DD66B0B0, 0xD000000000000014, 0x80000001DD66B0D0);
}

uint64_t sub_1DD4065E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v13 = a8[1];
  v19 = *a8;
  v20 = a8[3];
  sub_1DD406E2C();
  v14 = qword_1EE165C08;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1DD640458();
  v15 = sub_1DD405A20();
  if ((v24 & 1) != 0 || v23 != v15)
  {
    v16 = *(a7 + 88);
    sub_1DD640488();
  }

  else
  {

    sub_1DD4061B8(a1, a2, MEMORY[0x1E69E7CC0]);

    if (v22)
    {
    }

    else
    {
      v20(a9);
      sub_1DD5205E0(v19, v13);
      sub_1DD4061B8(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1DD406988(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DD406E2C();
  v13 = qword_1EE165C08;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_1DD640458();
  v14 = sub_1DD405A20();
  if ((v21 & 1) != 0 || v20 != v14)
  {
    v16 = *(v8 + 88);
    sub_1DD640488();
  }

  else
  {
    sub_1DD4061B8(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v19)
    {
    }

    else
    {

      a3(v15);
      sub_1DD4061B8(a5, a6, MEMORY[0x1E69E7CC0]);
    }
  }
}

uint64_t sub_1DD406BD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1DD4061B8(a2, a3, MEMORY[0x1E69E7CC0]);
  if (!v7)
  {

    a4(v12);
    sub_1DD4061B8(a6, a7, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

sqlite3 *sub_1DD406CD0()
{
  result = sub_1DD4055B0();
  v2 = *(v0 + 24) * 1000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 2147483650.0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sqlite3_busy_timeout(result, v2);
}

uint64_t sub_1DD406D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFF0, &qword_1DD644568);
  swift_allocObject();
  result = sub_1DD63FB48();
  qword_1EE165C10 = result;
  return result;
}

const char *sub_1DD406D98()
{
  v0 = sub_1DD4055B0();
  result = sqlite3_db_filename(v0, 0);
  if (result)
  {

    return sub_1DD63FF68();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD406DFC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1DD406E2C()
{
  result = qword_1EE166480;
  if (!qword_1EE166480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE166480);
  }

  return result;
}

unint64_t sub_1DD406E70()
{
  result = qword_1EE1630B0;
  if (!qword_1EE1630B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1630B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference10ConnectionC8LocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD40701C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD407070(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1DD4070CC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Constants(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t Contact.toINPersonExpansion()@<X0>(uint64_t a1@<X8>)
{
  v2 = Contact.makeINPersons(explode:)(1);
  result = sub_1DD3CBDE8(v2);
  v4 = result;
  if (result > 1)
  {
    goto LABEL_6;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E12B2C10](0, v2);
    goto LABEL_5;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 32);
LABEL_5:
    v6 = v5;

    v2 = v6;
LABEL_6:
    *a1 = v2;
    *(a1 + 8) = v4 > 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Contact.makeINPersons(explode:)(int a1)
{
  v2 = v1;
  LODWORD(v60) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  sub_1DD40792C(&v58 - v7);
  v9 = sub_1DD63CD18();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + 144);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(v1 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v61 = *(v1 + 136);
  }

  else
  {
LABEL_6:
    v61 = 0;
    v10 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696E948]);
  v13 = sub_1DD4086E0(0, 0, 0);
  v59 = v8;
  sub_1DD408964(v8, v5);
  v14 = type metadata accessor for Contact(0);
  v58 = (v2 + *(v14 + 88));
  v15 = v58[1];
  swift_bridgeObjectRelease_n();
  v16 = sub_1DD5E77D4(*v2, *(v2 + 8));
  v18 = v16;
  v19 = v17;
  if (v15)
  {
    v20 = v16;
    v21 = v17;
    v19 = 0;
    v18 = 0;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v20 = 0;
    v21 = 0;
  }

  v22 = objc_allocWithZone(MEMORY[0x1E696E940]);
  v23 = sub_1DD40874C(v13, v5, v61, v10, 0, v18, v19, v20, v21);
  [v23 setIsMe_];
  v24 = sub_1DD63FDA8();
  [v23 setPhonemeData_];

  if (v15)
  {
    v25 = *v58;
    v26 = v15;
  }

  else
  {
    v26 = 0x80000001DD66B290;
    v25 = 0xD00000000000001BLL;
  }

  sub_1DD408A18(v25, v26, v23);
  v27 = sub_1DD407C40();
  [v23 setRelationship_];

  [v23 setSearchProvider_];
  v28 = *(v2 + *(v14 + 80));
  v29 = *(v28 + 16);
  if (v29 >= 2 && (v60 & 1) != 0)
  {
    v63[0] = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    v30 = (v28 + 32);
    v61 = v29 - 1;
    while (1)
    {
      v60 = v30;
      memcpy(__dst, v30, 0x4AuLL);
      v31 = BYTE1(__dst[9]);
      sub_1DD3C6A40(__dst, v64);
      v32 = v23;
      [v23 mutableCopy];
      sub_1DD6406F8();
      swift_unknownObjectRelease();
      sub_1DD408AE4();
      swift_dynamicCast();
      v33 = v62;
      v34 = 1;
      if ((v31 & 1) == 0)
      {
        v34 = 2;
      }

      v35 = v31 == 2 ? 0 : v34;
      v36 = LOBYTE(__dst[2]);
      v37 = __dst[9];
      v38 = __dst[5];
      v39 = __dst[6];
      v41 = __dst[3];
      v40 = __dst[4];
      memcpy(v64, __dst, 0x4AuLL);

      v42 = sub_1DD4080B4(v41, v40);
      v43 = objc_allocWithZone(MEMORY[0x1E696E948]);
      v44 = sub_1DD4088D0(v38, v39, v36, v42, 0, v35, v37);
      [v33 setPersonHandle_];

      sub_1DD3C6A9C(__dst);
      sub_1DD640958();
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (!v61)
      {
        break;
      }

      --v61;
      v30 = v60 + 80;
      v23 = v32;
    }

    v56 = v63[0];
  }

  else
  {
    if (v29 == 1)
    {
      memcpy(__dst, (v28 + 32), 0x4AuLL);
      v45 = 1;
      if ((__dst[9] & 0x100) == 0)
      {
        v45 = 2;
      }

      if (BYTE1(__dst[9]) == 2)
      {
        v46 = 0;
      }

      else
      {
        v46 = v45;
      }

      v47 = LOBYTE(__dst[2]);
      v48 = __dst[9];
      v49 = __dst[5];
      v50 = __dst[6];
      v51 = __dst[3];
      v52 = __dst[4];
      memcpy(v64, (v28 + 32), 0x4AuLL);
      sub_1DD3C6A40(__dst, v63);

      v53 = sub_1DD4080B4(v51, v52);
      v54 = objc_allocWithZone(MEMORY[0x1E696E948]);
      v55 = sub_1DD4088D0(v49, v50, v47, v53, 0, v46, v48);
      sub_1DD3C6A9C(__dst);
      [v23 setPersonHandle_];
    }

    else
    {
      [v23 setPersonHandle_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1DD643B80;
    *(v56 + 32) = v23;
  }

  sub_1DD408A7C(v59);
  return v56;
}

uint64_t sub_1DD4078E4()
{
  v1 = type metadata accessor for Contact(0);
  if (*(v0 + *(v1 + 92)) == 1)
  {
    return 1;
  }

  if (*(v0 + *(v1 + 84)))
  {
    return 3;
  }

  return 0;
}

uint64_t sub_1DD40792C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1DD63CD18();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v13 = v2[5];
  v12 = v2[6];
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    OUTLINED_FUNCTION_0_35();
    if (!v15)
    {
      OUTLINED_FUNCTION_0_35();
      if (!v16)
      {
        OUTLINED_FUNCTION_0_35();
        if (!v17)
        {
          OUTLINED_FUNCTION_0_35();
        }
      }
    }
  }

  v18 = v2[19];
  v19 = v2[20];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v5;
  if (v20 || (OUTLINED_FUNCTION_1_24(), v21))
  {
    v22 = 0;
LABEL_13:
    sub_1DD63CD08();
    sub_1DD5E77D4(v2[3], v2[4]);
    sub_1DD63CC78();
    sub_1DD407F1C(v13, v12);
    sub_1DD63CC18();
    sub_1DD407F1C(v2[7], v2[8]);
    sub_1DD63CC58();
    sub_1DD407F1C(v2[9], v2[10]);
    sub_1DD63CC38();
    sub_1DD5E77D4(v2[13], v2[14]);
    sub_1DD63CC98();
    sub_1DD5E77D4(v2[15], v2[16]);
    sub_1DD63CCE8();
    v23 = v32;
    if ((v22 & 1) == 0)
    {
      sub_1DD63CD08();
      sub_1DD5E77D4(v18, v19);
      sub_1DD63CC18();
      sub_1DD5E77D4(v2[21], v2[22]);
      sub_1DD63CC58();
      sub_1DD5E77D4(v2[23], v2[24]);
      sub_1DD63CC38();
      (*(v23 + 16))(v31, v8, v6);
      OUTLINED_FUNCTION_2_18();
      sub_1DD63CCB8();
      (*(v23 + 8))(v8, v6);
    }

    (*(v23 + 32))(v33, v11, v6);
    return OUTLINED_FUNCTION_2_18();
  }

  OUTLINED_FUNCTION_1_24();
  v27 = v26 == 0;
  v28 = v25 | ~(v26 == 0);
  if (v27)
  {
    v22 = v25;
  }

  else
  {
    v22 = 0;
  }

  if (v28)
  {
    goto LABEL_13;
  }

  v29 = v33;

  return __swift_storeEnumTagSinglePayload(v29, 1, 1, v6);
}

id sub_1DD407C40()
{
  v1 = *(v0 + 216);
  if (!v1[2])
  {
    return 0;
  }

  v3 = v1[6];
  v2 = v1[7];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  swift_bridgeObjectRetain_n();
  switch(sub_1DD532D04(v3))
  {
    case 0u:
      v5 = MEMORY[0x1E696E650];
      goto LABEL_19;
    case 1u:
      v5 = MEMORY[0x1E696E620];
      goto LABEL_19;
    case 2u:
      v5 = MEMORY[0x1E696E680];
      goto LABEL_19;
    case 4u:
      v5 = MEMORY[0x1E696E668];
      goto LABEL_19;
    case 8u:
      v5 = MEMORY[0x1E696E658];
      goto LABEL_19;
    case 9u:
      v5 = MEMORY[0x1E696E648];
      goto LABEL_19;
    case 0xDu:
      v5 = MEMORY[0x1E696E640];
      goto LABEL_19;
    case 0xEu:
      v5 = MEMORY[0x1E696E670];
      goto LABEL_19;
    case 0x11u:
      v5 = MEMORY[0x1E696E630];
      goto LABEL_19;
    case 0x13u:
      v5 = MEMORY[0x1E696E678];
      goto LABEL_19;
    case 0x14u:
      v5 = MEMORY[0x1E696E638];
      goto LABEL_19;
    case 0x1Bu:
      v5 = MEMORY[0x1E696E628];
LABEL_19:
      v7 = *v5;
      break;
    default:
      v7 = sub_1DD63FDA8();
      break;
  }

  v6 = v7;

  return v6;
}

INPersonHandle __swiftcall ContactHandle.toINPersonHandle()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 73);
  v7 = 1;
  if ((v6 & 1) == 0)
  {
    v7 = 2;
  }

  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v0 + 72);

  v10 = sub_1DD4080B4(v2, v3);
  v11 = objc_allocWithZone(MEMORY[0x1E696E948]);
  return sub_1DD4088D0(v4, v5, v1, v10, 0, v8, v9 & 1);
}