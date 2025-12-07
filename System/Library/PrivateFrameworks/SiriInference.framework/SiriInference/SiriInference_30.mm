uint64_t *sub_1DD5B8114(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_8:
    sub_1DD586A30();
    v3 = v8;
  }

  result = (v3 + 32);
  v4 = -v4;
  v6 = -1;
  while (v4 + v6 != -1)
  {
    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = result + 1;
    sub_1DD5B8F18(result);
    result = v7;
    if (v1)
    {
      break;
    }
  }

  *a1 = v3;
  return result;
}

void sub_1DD5B81B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v142 = a5;
  v118 = a4;
  v121 = a3;
  v123 = a2;
  v136 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD68, &unk_1DD65F510);
  MEMORY[0x1EEE9AC00](v5);
  v140 = (&v109 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD70, &qword_1DD654CC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v109 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v127 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v109 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v109 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v109 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v120 = &v109 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v109 - v28;
  v30 = sub_1DD63F148();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v129 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v128 = &v109 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v110 = &v109 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v119 = &v109 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v122 = &v109 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v132 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v109 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v125 = &v109 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v124 = (&v109 - v47);
  v48 = *v136;
  v144 = 0;
  v145 = 0;
  v143 = v48;
  v130 = v43;
  v114 = (v43 + 34);
  v134 = (v31 + 16);
  v135 = (v31 + 32);
  v111 = v31;
  v133 = (v31 + 8);
  v139 = v48;

  v117 = v19;
  v49 = v24;
  v113 = v24;
  v112 = v29;
  v137 = v30;
  v131 = v41;
LABEL_2:
  v50 = v125;
  sub_1DD583860(v125);
  v51 = v50;
  v52 = v124;
  sub_1DD4DDCBC(v51, v124, &qword_1ECCDC240, &qword_1DD645AA0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {

    return;
  }

  v138 = *v52;
  v54 = v52 + *(v53 + 48);
  v55 = v130;
  sub_1DD4DDCBC(v54, v130, &qword_1ECCDBBE8, &qword_1DD644470);
  v56 = v55[1];
  v141 = *v55;
  sub_1DD59B6D8(v141, v56, v123);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_1DD390754(v29, &qword_1ECCDCB80, &qword_1DD64A0E0);
  }

  else
  {
    v57 = v122;
    (*v135)(v122, v29, v30);
    v58 = v120;
    (*v134)(v120, v57, v30);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A18();
      v139 = v106;
    }

    (*v133)(v122, v30);
    if ((v138 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v59 = v49;
    v60 = v139;
    if (v138 >= *(v139 + 16))
    {
      goto LABEL_53;
    }

    v61 = v139 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v138;
    v62 = v131;
    v63 = *(v131 + 36);
    v64 = type metadata accessor for ContactResolver.SignalSet(0);
    sub_1DD439B00(v120, v61 + v63 + *(v64 + 120));
    *v136 = v60;
    v49 = v59;
    v41 = v62;
  }

  sub_1DD59B6D8(v141, v56, v121);
  if (__swift_getEnumTagSinglePayload(v49, 1, v30) == 1)
  {
    sub_1DD390754(v49, &qword_1ECCDCB80, &qword_1DD64A0E0);
    v65 = v139;
  }

  else
  {
    v66 = v119;
    (*v135)(v119, v49, v30);
    v67 = v116;
    (*v134)(v116, v66, v30);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v30);
    v65 = v139;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A18();
      v65 = v107;
    }

    (*v133)(v119, v30);
    if ((v138 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v138 >= *(v65 + 16))
    {
      goto LABEL_55;
    }

    v68 = v65 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v138;
    v69 = *(v41 + 36);
    v70 = type metadata accessor for ContactResolver.SignalSet(0);
    sub_1DD439B00(v116, v68 + v69 + *(v70 + 124));
    *v136 = v65;
  }

  v71 = v117;
  sub_1DD59B6D8(v141, v56, v118);
  if (__swift_getEnumTagSinglePayload(v71, 1, v30) == 1)
  {
    sub_1DD390754(v71, &qword_1ECCDCB80, &qword_1DD64A0E0);
  }

  else
  {
    v72 = v110;
    (*v135)(v110, v71, v30);
    v73 = v115;
    (*v134)(v115, v72, v30);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v30);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A18();
      v65 = v108;
    }

    (*v133)(v72, v30);
    if ((v138 & 0x8000000000000000) != 0)
    {
      goto LABEL_54;
    }

    if (v138 >= *(v65 + 16))
    {
      goto LABEL_56;
    }

    v74 = v65 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v138;
    v75 = *(v41 + 36);
    v76 = type metadata accessor for ContactResolver.SignalSet(0);
    sub_1DD439B00(v115, v74 + v75 + *(v76 + 128));
    *v136 = v65;
  }

  v139 = v65;
  v77 = *(*&v114[*(v41 + 36)] + 16);
  v141 = *&v114[*(v41 + 36)];

  v78 = 0;
  while (1)
  {
    if (v78 == v77)
    {
      v79 = 1;
      v78 = v77;
      goto LABEL_30;
    }

    if ((v78 & 0x8000000000000000) != 0)
    {
      break;
    }

    v80 = v141;
    if (v78 >= *(v141 + 16))
    {
      goto LABEL_46;
    }

    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90) - 8);
    v82 = v80 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v78;
    v83 = *(v5 + 48);
    v84 = v140;
    *v140 = v78;
    sub_1DD4DDC08(v82, v84 + v83, &qword_1ECCDBBD8, &unk_1DD645A90);
    sub_1DD4DDCBC(v84, v9, &qword_1ECCDDD68, &unk_1DD65F510);
    v79 = 0;
    ++v78;
LABEL_30:
    __swift_storeEnumTagSinglePayload(v9, v79, 1, v5);
    sub_1DD4DDCBC(v9, v12, &qword_1ECCDDD70, &qword_1DD654CC0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
    {
      sub_1DD390754(v130, &qword_1ECCDBBE8, &qword_1DD644470);

      v49 = v113;
      v29 = v112;
      v30 = v137;
      v41 = v131;
      goto LABEL_2;
    }

    v85 = *v12;
    v86 = v12 + *(v5 + 48);

    sub_1DD390754(v86, &qword_1ECCDBBD8, &unk_1DD645A90);
    if (*(v142 + 16))
    {
      v87 = sub_1DD3978DC();
      v89 = v88;

      if (v89)
      {
        v90 = v111;
        v91 = *(v142 + 56) + *(v111 + 72) * v87;
        v126 = *(v111 + 16);
        v92 = v137;
        v126(v129, v91, v137);
        v93 = v128;
        (*(v90 + 32))(v128, v129, v92);
        v94 = v127;
        v126(v127, v93, v92);
        __swift_storeEnumTagSinglePayload(v94, 0, 1, v92);
        v95 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD586A18();
          v95 = v104;
        }

        if ((v138 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v138 >= *(v95 + 16))
        {
          goto LABEL_48;
        }

        v96 = v95 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v138 + *(v131 + 36);
        v97 = *(v96 + 272);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v96 + 272) = v97;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD586A48();
          *(v96 + 272) = v105;
        }

        (*v133)(v128, v137);
        if ((v85 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v99 = *(v96 + 272);
        if (v85 >= *(v99 + 16))
        {
          goto LABEL_50;
        }

        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
        v101 = v99 + ((*(*(v100 - 8) + 80) + 32) & ~*(*(v100 - 8) + 80)) + *(*(v100 - 8) + 72) * v85;
        v102 = *(v100 + 36);
        v103 = type metadata accessor for ContactResolver.HandleSignalSet(0);
        sub_1DD439B00(v127, v101 + v102 + *(v103 + 36));
        v139 = v95;
        *v136 = v95;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1DD5B8F18(uint64_t *a1)
{
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF458, &qword_1DD65F4F0);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = (&v148 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v173 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v148 - v4;
  v168 = sub_1DD63F2B8();
  v162 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v149 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v150 = &v148 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v156 = &v148 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v148 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v148 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v163 = &v148 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v148 - v18;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF460, &unk_1DD65F4F8);
  v160 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v159 = (&v148 - v19);
  v20 = sub_1DD63F028();
  v170 = *(v20 - 8);
  v171 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v167 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v158 = &v148 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v165 = &v148 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v172 = &v148 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v39 = *a1;
  v40 = *(*a1 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  v154 = a1;
  if (!v40)
  {
    v57 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v180 = v33;
  v177 = &v148 - v38;
  v184 = MEMORY[0x1E69E7CC0];
  sub_1DD42A2D4(0, v40, 0, v34, v35, v36, v37);
  v42 = v184;
  v43 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v178 = v39;
  v181 = *(v29 + 72);
  *&v176 = v39 + v43;
  v44 = v39 + v43;
  do
  {
    sub_1DD4DDC08(v44, v31, &qword_1ECCDBBE8, &qword_1DD644470);
    v46 = *v31;
    v45 = v31[1];

    sub_1DD390754(v31, &qword_1ECCDBBE8, &qword_1DD644470);
    v184 = v42;
    v52 = *(v42 + 16);
    v51 = *(v42 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_1DD42A2D4(v51 > 1, v52 + 1, 1, v47, v48, v49, v50);
      v42 = v184;
    }

    *(v42 + 16) = v52 + 1;
    v53 = v42 + 16 * v52;
    *(v53 + 32) = v46;
    *(v53 + 40) = v45;
    v44 += v181;
    --v40;
  }

  while (v40);
  v54 = v178;
  v175 = *(v178 + 16);
  if (!v175)
  {
    v57 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v41 = v42;
LABEL_21:
    v68 = v158;
    sub_1DD63F018();
    v69 = v165;
    sub_1DD63F008();
    v70 = v170 + 8;
    v181 = *(v170 + 8);
    v181(v68, v171);
    v71 = v159;
    *v159 = v41;
    LODWORD(v180) = *MEMORY[0x1E69D29C0];
    v72 = v160;
    v179 = *(v160 + 104);
    v73 = v166;
    v179(v71);
    sub_1DD63EFF8();
    v178 = *(v72 + 8);
    (v178)(v71, v73);
    v74 = v69;
    v75 = v171;
    v76 = v181;
    v181(v74, v171);
    sub_1DD63F018();
    sub_1DD63F008();
    v77 = v68;
    v78 = v75;
    v76(v77, v75);
    *v71 = v57;
    v79 = v166;
    (v179)(v71, v180, v166);
    v80 = v165;
    sub_1DD63EFF8();
    (v178)(v71, v79);
    v170 = v70;
    v76(v80, v78);
    v81 = v163;
    sub_1DD63F2A8();
    sub_1DD63F238();
    v179 = *(v162 + 8);
    (v179)(v81, v168);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF468, &qword_1DD65F508);
    v83 = sub_1DD63F1C8();
    v84 = *(v83 - 8);
    v85 = *(v84 + 80);
    v177 = *(v84 + 72);
    v178 = v82;
    v86 = swift_allocObject();
    v176 = xmmword_1DD643F90;
    *(v86 + 16) = xmmword_1DD643F90;
    v87 = *MEMORY[0x1E69D2A38];
    v90 = *(v84 + 104);
    v89 = (v84 + 104);
    v88 = v90;
    (v90)(v86 + ((v85 + 32) & ~v85), *MEMORY[0x1E69D2A38], v83);
    v91 = v161;
    v92 = sub_1DD63F208();
    v180 = v91;
    if (v91)
    {
      v93 = v168;
      v94 = v169;
LABEL_23:
      v95 = v181;
LABEL_24:

      (v179)(v94, v93);
      v96 = v171;
      v95(v167, v171);
      v95(v172, v96);
      return;
    }

    v97 = v92;
    v166 = v85;
    LODWORD(v173) = v87;
    v174 = v88;
    v161 = (v85 + 32) & ~v85;
    v165 = v89;
    v160 = v83;
    v93 = v168;
    (v179)(v169, v168);

    v98 = *(v97 + 16);
    v175 = v97;
    if (v98)
    {
      v99 = type metadata accessor for SiriRemembersContactSignalProvider(0);
      v100 = v164;
      v101 = *(v164 + *(v99 + 24) + 8);
      v169 = v99;
      if (v101)
      {
        v102 = v99;
        v103 = v157;
        sub_1DD63F2A8();
        v104 = v168;
        v105 = v163;
        sub_1DD63F268();
        v106 = v179;
        (v179)(v103, v104);
        v107 = v155;
        sub_1DD63F238();
        v108 = v106(v105, v104);
        v182 = *(v100 + *(v102 + 20));
        v111 = sub_1DD450A6C(v108, v109, v110);
        v112 = v161;
        if (v111)
        {
          v113 = v157;
          sub_1DD63F278();
          v114 = v151;
          *v151 = 5;
          v115 = v152;
          v116 = v153;
          (*(v152 + 104))(v114, *MEMORY[0x1E69D29B8], v153);
          sub_1DD63F248();
          (*(v115 + 8))(v114, v116);
          v105 = v163;
          v107 = v155;
          v117 = v113;
          v118 = v168;
          v119 = v179;
          (v179)(v117, v168);
          v119(v107, v118);
          (*(v162 + 32))(v107, v105, v118);
        }

        v120 = swift_allocObject();
        *(v120 + 16) = v176;
        v121 = v160;
        (v174)(v120 + v112, v173, v160);
        v122 = v180;
        v123 = sub_1DD63F208();
        v94 = v156;
        v180 = v122;
        if (v122)
        {

          v94 = v107;
          v95 = v181;
          v93 = v168;
          goto LABEL_24;
        }

        v162 = v123;
        v131 = v107;
        v93 = v168;
        v132 = v179;
        (v179)(v131, v168);
        v130 = v132;

        v129 = v157;
      }

      else
      {

        v162 = v97;
        v129 = v157;
        v94 = v156;
        v130 = v179;
        v121 = v160;
        v112 = v161;
        v105 = v163;
      }

      v133 = v129;
      sub_1DD63F2A8();
      sub_1DD63F228();
      v130(v133, v93);
      sub_1DD63F238();
      v130(v105, v93);
      v134 = swift_allocObject();
      *(v134 + 16) = v176;
      (v174)(v134 + v112, v173, v121);
      v135 = v180;
      v136 = sub_1DD63F208();
      v180 = v135;
      if (v135)
      {

        goto LABEL_23;
      }

      v161 = v136;
      v137 = v94;
      v138 = v179;
      (v179)(v137, v93);

      v183 = *(v164 + *(v169 + 5));
      if (sub_1DD450A6C(v139, v140, v141))
      {
        v142 = v157;
        sub_1DD63F2A8();
        sub_1DD63F238();
        v138(v142, v93);
        v143 = v150;
        sub_1DD63F278();
      }

      else
      {
        sub_1DD63F2A8();
        v143 = v149;
        sub_1DD63F238();
      }

      v138(v105, v93);
      v144 = swift_allocObject();
      *(v144 + 16) = v176;
      (v174)(v144 + v112, v173, v160);
      v145 = v180;
      v146 = sub_1DD63F208();
      v147 = v138;
      v125 = v161;
      if (v145)
      {
        v180 = v145;

        v94 = v143;
        v95 = v181;
        goto LABEL_24;
      }

      v126 = v146;
      v147(v143, v93);

      v124 = v162;
    }

    else
    {
      sub_1DD63F148();
      v124 = sub_1DD63FC88();
      v125 = sub_1DD63FC88();
      v126 = sub_1DD63FC88();
    }

    sub_1DD5B81B8(v154, v175, v124, v125, v126);

    v127 = v171;
    v128 = v181;
    v181(v167, v171);
    v128(v172, v127);
    return;
  }

  v55 = 0;
  v56 = v177;
  v174 = (v177 + *(v180 + 36));
  v57 = MEMORY[0x1E69E7CC0];
  while (v55 < *(v54 + 16))
  {
    v179 = v55;
    v180 = v42;
    sub_1DD4DDC08(v176 + v181 * v55, v56, &qword_1ECCDBBE8, &qword_1DD644470);
    v58 = v174[34];
    v59 = *(v58 + 16);
    if (v59)
    {
      v60 = v58 + ((*(v173 + 80) + 32) & ~*(v173 + 80));
      v61 = *(v173 + 72);
      do
      {
        sub_1DD4DDC08(v60, v5, &qword_1ECCDBBD8, &unk_1DD645A90);
        v63 = *(v5 + 7);
        v62 = *(v5 + 8);

        sub_1DD390754(v5, &qword_1ECCDBBD8, &unk_1DD645A90);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3BE2A4();
          v57 = v66;
        }

        v64 = *(v57 + 16);
        if (v64 >= *(v57 + 24) >> 1)
        {
          sub_1DD3BE2A4();
          v57 = v67;
        }

        *(v57 + 16) = v64 + 1;
        v65 = v57 + 16 * v64;
        *(v65 + 32) = v63;
        *(v65 + 40) = v62;
        v60 += v61;
        --v59;
      }

      while (v59);
    }

    v55 = v179 + 1;
    v56 = v177;
    sub_1DD390754(v177, &qword_1ECCDBBE8, &qword_1DD644470);
    v42 = v180;
    v54 = v178;
    if (v55 == v175)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void OUTLINED_FUNCTION_19_35()
{

  sub_1DD3BF964();
}

uint64_t OUTLINED_FUNCTION_22_30()
{
}

uint64_t sub_1DD5BA058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496B736174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365636375537369 && a2 == 0xE900000000000073)
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

uint64_t sub_1DD5BA124(char a1)
{
  if (a1)
  {
    return 0x7365636375537369;
  }

  else
  {
    return 0x64496B736174;
  }
}

uint64_t sub_1DD5BA15C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF478, &qword_1DD65F5B0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5BA578();
  sub_1DD640EF8();
  v16 = 0;
  sub_1DD640C18();
  if (!v4)
  {
    v15 = 1;
    sub_1DD640C28();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1DD5BA2C8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF470, &qword_1DD65F5A8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5BA578();
  sub_1DD640ED8();
  if (!v1)
  {
    v4 = sub_1DD640B28();
    sub_1DD640B38();
    v6 = OUTLINED_FUNCTION_67();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1DD5BA484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5BA058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5BA4AC(uint64_t a1)
{
  v2 = sub_1DD5BA578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5BA4E8(uint64_t a1)
{
  v2 = sub_1DD5BA578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5BA524@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD5BA2C8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1DD5BA578()
{
  result = qword_1EE163498[0];
  if (!qword_1EE163498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE163498);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriTasksEvaluationData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5BA6AC()
{
  result = qword_1ECCDF480;
  if (!qword_1ECCDF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF480);
  }

  return result;
}

unint64_t sub_1DD5BA704()
{
  result = qword_1EE163488;
  if (!qword_1EE163488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163488);
  }

  return result;
}

unint64_t sub_1DD5BA75C()
{
  result = qword_1EE163490;
  if (!qword_1EE163490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163490);
  }

  return result;
}

uint64_t sub_1DD5BA7C0(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF490, &qword_1DD65F738);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1DD63CBC8();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1DD3ADFD0(v40, &qword_1ECCDF498, qword_1DD65F740);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1DD640948();
  }

  sub_1DD5BB900(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x1E12AF1F0](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v11 = sub_1DD5BBA1C(sub_1DD5BC05C, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1DD63CED8();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_1DD625824(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1DD63FF98();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DD63FFD8();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DD640948();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_1DD625824(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_1DD63FFA8();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1DD63CEF8();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1DD63CEF8();
    sub_1DD3AD77C(v35, v36);
    goto LABEL_58;
  }

  sub_1DD3AD77C(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_1DD3D01B4(*&v40[0], *(&v40[0] + 1));

  sub_1DD3AD790(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1DD5BACE4()
{
  v14 = v0;
  sub_1DD63FC88();
  sub_1DD39638C(0, &qword_1EE160160, 0x1E69AD970);
  sub_1DD4FC0F0();
  v2 = v1;

  v3 = sub_1DD5BB21C(v2);
  v0[19] = v3;
  sub_1DD5919A8(0, &v13);
  v0[20] = 0;
  v0[21] = v13;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F0C8);
  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DD38D000, v5, v6, "Start an on-demand Siri task evaluation", v7, 2u);
    MEMORY[0x1E12B3DA0](v7, -1, -1);
  }

  v8 = objc_opt_self();
  v9 = v3;
  v10 = sub_1DD63FDA8();
  v0[22] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD5BAFC8;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF488, &qword_1DD65F730);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DD5BB2A4;
  v0[13] = &block_descriptor_20;
  v0[14] = v11;
  [v8 performTask:v9 forPluginID:v10 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD5BAFC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1DD5BB18C;
  }

  else
  {
    v2 = sub_1DD5BB0D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD5BB0D8()
{
  v7 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);

  v6 = v1;
  sub_1DD5BB3EC(&v6, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD5BB18C(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[19];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

id sub_1DD5BB21C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1DD63FC48();

  v3 = [v1 initWithParametersDict_];

  return v3;
}

uint64_t *sub_1DD5BB2A4(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1DD5BB360(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1DD5BB3CC(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5BB360(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1DD5BB3EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!sub_1DD5BBFB8(a2))
  {
    v7 = 0u;
    v8 = 0u;
    return sub_1DD3ADFD0(&v7, &qword_1ECCDB980, &unk_1DD643DC0);
  }

  sub_1DD59B994();

  if (!*(&v8 + 1))
  {
    return sub_1DD3ADFD0(&v7, &qword_1ECCDB980, &unk_1DD643DC0);
  }

  sub_1DD400AE4(&v7, v9);
  sub_1DD395720(v9, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  if (swift_dynamicCast() && v10)
  {
    v3 = sub_1DD5BB5F4(v10);

    *&v7 = v2;
    sub_1DD58F4D4(v3);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v5 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD00000000000007BLL, 0x80000001DD6743F0, 0xD000000000000038, 0x80000001DD674470, 31, MEMORY[0x1E69E7CC0], 2);
    *(v5 + 24) = 0;
    *(v5 + 32) = 0xE000000000000000;

    sub_1DD426968();
    swift_allocError();
    *v6 = v5;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }
}

uint64_t sub_1DD5BB5F4(uint64_t a1)
{
  v28 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = MEMORY[0x1E69E7CC0];
  v2 = (a1 + 40);
  do
  {
    v3 = *(v2 - 1);
    v4 = *v2;
    v5 = HIBYTE(*v2) & 0xF;
    if ((*v2 & 0x2000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      swift_bridgeObjectRetain_n();
      sub_1DD5BA7C0(v3, v4);
      sub_1DD39638C(0, &qword_1EE1601A0, 0x1E69D3350);
      v6 = OUTLINED_FUNCTION_19();
      sub_1DD3D01B4(v6, v7);
      v8 = OUTLINED_FUNCTION_19();
      v10 = sub_1DD5BB888(v8, v9);
      if (v10)
      {
        v11 = v10;
        MEMORY[0x1E12B23F0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        v26 = v11;
        sub_1DD640168();
        v25 = v28;
        if (qword_1EE166510 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v12 = sub_1DD63F9F8();
        __swift_project_value_buffer(v12, qword_1EE16F0C8);

        v13 = sub_1DD63F9D8();
        v14 = sub_1DD640368();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v27 = v16;
          *v15 = 136315138;
          v17 = sub_1DD39565C(v3, v4, &v27);

          *(v15 + 4) = v17;
          _os_log_impl(&dword_1DD38D000, v13, v14, "Append the SiriTasksEvaluation Result: %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x1E12B3DA0](v16, -1, -1);
          MEMORY[0x1E12B3DA0](v15, -1, -1);
          v18 = OUTLINED_FUNCTION_19();
          sub_1DD3AD790(v18, v19);
        }

        else
        {
          v22 = OUTLINED_FUNCTION_19();
          sub_1DD3AD790(v22, v23);
        }
      }

      else
      {
        v20 = OUTLINED_FUNCTION_19();
        sub_1DD3AD790(v20, v21);
      }
    }

    v2 += 2;
    --v1;
  }

  while (v1);
  return v25;
}

id sub_1DD5BB888(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DD63CF08();
  v6 = [v4 initWithJSONData_];

  sub_1DD3AD790(a1, a2);
  return v6;
}

uint64_t sub_1DD5BB900@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1DD63CE78();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1DD63C958();
      swift_allocObject();
      v8 = sub_1DD63C918();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1DD63CEC8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1DD5BB9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1DD5BBEA0(sub_1DD5BC0B8, v5, a1, a2);
}

uint64_t sub_1DD5BBA1C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1DD3AD790(v7, v6);
      *v5 = xmmword_1DD65F6D0;
      sub_1DD3AD790(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1DD63C928() && __OFSUB__(v7, sub_1DD63C948()))
      {
        goto LABEL_24;
      }

      sub_1DD63C958();
      swift_allocObject();
      v14 = sub_1DD63C908();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1DD5BBF04(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1DD3AD790(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1DD65F6D0;
      sub_1DD3AD790(0, 0xC000000000000000);
      sub_1DD63CE88();
      v7 = v17;
      v10 = sub_1DD5BBF04(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1DD3AD790(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1DD5BBDE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1DD63CE78();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1E12AF1A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1E12AF1B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1DD5BBE58(uint64_t result)
{
  if (result)
  {
    result = sub_1DD6408E8();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DD5BBEA0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1DD5BBF04(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DD63C928();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DD63C948();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DD63C938();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DD5BBFB8(void *a1)
{
  v1 = [a1 JSONResult];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

void *sub_1DD5BC024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1DD5BB9C8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1DD5BC078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD5BBE58(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t SlotResolutionTask.eraseToAnySlotResolutionTask()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return sub_1DD5BC1A0(v6, a1, a2);
}

uint64_t sub_1DD5BC1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  *a3 = sub_1DD63FE38();
  a3[1] = v6;
  a3[5] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  return (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
}

SiriInference::SlotType_optional __swiftcall SlotType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DD5BC2B8()
{
  result = qword_1ECCDF4A0;
  if (!qword_1ECCDF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4A0);
  }

  return result;
}

uint64_t sub_1DD5BC314@<X0>(uint64_t *a1@<X8>)
{
  result = SlotType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SlotType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5BC4C8()
{
  result = qword_1ECCDF4A8;
  if (!qword_1ECCDF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4A8);
  }

  return result;
}

uint64_t type metadata accessor for SolsticeAndEquinox(uint64_t a1)
{
  result = qword_1ECCDF4B0;
  if (!qword_1ECCDF4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5BC590(uint64_t a1)
{
  result = sub_1DD63D2D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AstronomicalType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5BC6E4()
{
  result = qword_1ECCDF4C0;
  if (!qword_1ECCDF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4C0);
  }

  return result;
}

double sub_1DD5BC738(uint64_t a1, long double a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v2 = *(a1 + 32);
    if (v3 != 1)
    {
      v5 = (a1 + 40);
      v6 = 1;
      do
      {
        v7 = v6 + 1;
        v8 = *v5++;
        v2 = v2 + v8 * pow(a2, v6);
        v6 = v7;
      }

      while (v3 != v7);
    }
  }

  else
  {
    sub_1DD5BD7F8();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 2;
    swift_willThrow();
  }

  return v2;
}

void sub_1DD5BC82C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  sub_1DD63D2B8();
  OUTLINED_FUNCTION_0_134();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD6504B0;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E6969AB8], v0);
  v8(v7 + v4, *MEMORY[0x1E6969AC0], v0);
  v8(v7 + 2 * v4, *MEMORY[0x1E6969A68], v0);
  v8(v7 + 3 * v4, *MEMORY[0x1E6969A78], v0);
  v8(v7 + 4 * v4, *MEMORY[0x1E6969A48], v0);
  v8(v7 + 5 * v4, *MEMORY[0x1E6969A58], v0);
  v8(v7 + 6 * v4, *MEMORY[0x1E6969A88], v0);

  sub_1DD56BDEC();
}

void sub_1DD5BC9E8(unint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1DD63D078();
  OUTLINED_FUNCTION_0_134();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD5BCAEC(a1, v11);
  if (!v4)
  {
    sub_1DD5BC82C();
    sub_1DD3D856C(v12, a3);

    (*(v8 + 8))(v11, v3);
  }
}

void sub_1DD5BCAEC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1DD63CBB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD5BCD54(a1);
  if (!v2)
  {
    v17 = a2;
    sub_1DD5BCEF8(v12);
    sub_1DD63CA68();
    v13 = sub_1DD63D078();
    if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
    {
      sub_1DD4AF0C8(v7);
      sub_1DD5BD7F8();
      swift_allocError();
      *v14 = a1;
      *(v14 + 8) = 1;
      swift_willThrow();
    }

    else
    {
      v16 = *(v13 - 8);
      (*(v16 + 32))(v17, v7, v13);
      sub_1DD5BD48C(a1);
      sub_1DD63D038();
    }

    (*(v9 + 8))(v11, v8);
  }
}

void sub_1DD5BCD54(uint64_t a1)
{
  v2 = sub_1DD5BD6F8(a1);
  if (!v1)
  {
    v10 = (v2 + -2451545.0) / 36525.0;
    v3 = v10 * 35999.373 + -2.47;
    cos(v3 * 3.14159265 / 180.0);
    cos((v3 + v3) * 3.14159265 / 180.0);
    v4 = 0.0;
    v5 = 0x20u;
    v8 = vdupq_n_s64(0x4066800000000000uLL);
    v9 = vdupq_n_s64(0x400921FB54442D18uLL);
    do
    {
      v13 = vcvtq_f64_s64(*(&unk_1F58AD470 + v5));
      __x = vdivq_f64(vmulq_f64(vaddq_f64(*(&unk_1F58AD550 + v5), vmulq_n_f64(*(&unk_1F58AD630 + v5), v10)), v9), v8);
      v12 = cos(__x.f64[1]);
      v6.f64[0] = cos(__x.f64[0]);
      v6.f64[1] = v12;
      v7 = vmulq_f64(v6, v13);
      v4 = v4 + v7.f64[0] + v7.f64[1];
      v5 += 16;
    }

    while (v5 != 224);
  }
}

void sub_1DD5BCEF8(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = a1 + 0.5;
  if (COERCE__INT64(fabs(a1 + 0.5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = v9;
  v11 = v10;
  if (v9 >= 2299161)
  {
    v12 = (v10 + -1867216.25) / 36524.25;
    if (v12 <= -9.22337204e18)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v12 >= 9.22337204e18)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v13 = vcvtd_n_f64_s64(v12, 2uLL);
    if (COERCE__INT64(fabs((v10 + -1867216.25) / 36524.25)) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_67;
    }

    if (v13 <= -9.22337204e18)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v13 >= 9.22337204e18)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v11 = v12 + 1.0 - v13 + v10;
  }

  v14 = v11 + 1524.0;
  v15 = (v11 + 1524.0 + -122.1) / 365.25;
  if (v15 <= -9.22337204e18)
  {
    goto LABEL_47;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v16 = v15 * 365.25;
  if (v16 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v17 = v14 - v16;
  v18 = v17 / 30.6001;
  if (v17 / 30.6001 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v19 = COERCE_UNSIGNED_INT64(fabs(v17 / 30.6001)) > 0x7FEFFFFFFFFFFFFFLL;
  v20 = COERCE_UNSIGNED_INT64(fabs(v15 * 365.25)) > 0x7FEFFFFFFFFFFFFFLL;
  v21 = v18 * 30.6001;
  v22 = COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v20 || v19 || v22)
  {
    goto LABEL_53;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v23 = v18;
  v24 = v18 - 13;
  if (v18 <= 13)
  {
    v24 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      goto LABEL_70;
    }
  }

  v25 = v15;
  if (v24 >= 3)
  {
    v26 = v25 - 4716;
    if (!__OFADD__(v25, -4716))
    {
LABEL_31:
      v27 = v9 - v10 + v17 - v21;
      if (v27 > -9.22337204e18)
      {
        if (v27 < 9.22337204e18)
        {
          v28 = (v27 - v27) * 24.0;
          if (v28 > -9.22337204e18)
          {
            if (v28 < 9.22337204e18)
            {
              v29 = (v28 - v28) * 60.0;
              if (v29 > -9.22337204e18)
              {
                if (v29 < 9.22337204e18)
                {
                  v30 = COERCE_UNSIGNED_INT64(fabs((v28 - v28) * 60.0)) > 0x7FEFFFFFFFFFFFFFLL;
                  v31 = COERCE_UNSIGNED_INT64(fabs((v27 - v27) * 24.0)) > 0x7FEFFFFFFFFFFFFFLL;
                  v32 = (v29 - v29) * 60.0;
                  v33 = COERCE__INT64(fabs(v32)) > 0x7FEFFFFFFFFFFFFFLL;
                  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v31 && !v30 && !v33)
                  {
                    if (v32 > -9.22337204e18)
                    {
                      if (v32 < 9.22337204e18)
                      {
                        v34 = v27;
                        v35 = v28;
                        v38 = v24;
                        v36 = sub_1DD63D2D8();
                        (*(*(v36 - 8) + 16))(v8, v1, v36);
                        __swift_storeEnumTagSinglePayload(v8, 0, 1, v36);
                        sub_1DD63D2E8();
                        sub_1DD63CB68(v8, v5, 0, 1, v26, 0, v38, 0, v34, 0, v35);
                        return;
                      }

                      goto LABEL_64;
                    }

LABEL_63:
                    __break(1u);
LABEL_64:
                    __break(1u);
                    goto LABEL_65;
                  }

LABEL_62:
                  __break(1u);
                  goto LABEL_63;
                }

LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    __break(1u);
  }

  v26 = v25 - 4715;
  if (!__OFADD__(v25, -4715))
  {
    goto LABEL_31;
  }

LABEL_71:
  __break(1u);
}

void sub_1DD5BD48C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    sub_1DD5BD7F8();
    swift_allocError();
    *v4 = a1;
    *(v4 + 8) = 0;
    swift_willThrow();
    return;
  }

  if (a1 <= 0x1F3)
  {
    v2 = a1 / 100.0;
    v3 = &unk_1F58AD710;
LABEL_27:
    sub_1DD5BC738(v3, v2);
    return;
  }

  if (a1 <= 0x63F)
  {
    v2 = (a1 + -1000.0) / 100.0;
    v3 = &unk_1F58AD768;
    goto LABEL_27;
  }

  if (a1 <= 0x6A3)
  {
    v2 = (a1 - 1600);
    v3 = &unk_1F58AD7C0;
    goto LABEL_27;
  }

  if (a1 <= 0x707)
  {
    v2 = (a1 - 1700);
    v3 = &unk_1F58AD800;
    goto LABEL_27;
  }

  if (a1 <= 0x743)
  {
    v2 = (a1 - 1800);
    v3 = &unk_1F58AD848;
    goto LABEL_27;
  }

  if (a1 <= 0x76B)
  {
    v2 = (a1 - 1860);
    v3 = &unk_1F58AD8A8;
    goto LABEL_27;
  }

  if (a1 <= 0x77F)
  {
    v2 = (a1 - 1900);
    v3 = &unk_1F58AD8F8;
    goto LABEL_27;
  }

  if (a1 <= 0x794)
  {
    v2 = (a1 - 1920);
    v3 = &unk_1F58AD940;
    goto LABEL_27;
  }

  if (a1 <= 0x7A8)
  {
    v2 = (a1 - 1950);
    v3 = &unk_1F58AD980;
    goto LABEL_27;
  }

  if (a1 <= 0x7C1)
  {
    v2 = (a1 - 1975);
    v3 = &unk_1F58AD9C0;
    goto LABEL_27;
  }

  if (a1 <= 0x7D4)
  {
    v2 = (a1 - 2000);
    v3 = &unk_1F58ADA00;
    goto LABEL_27;
  }

  if (a1 <= 0x801)
  {
    v2 = (a1 - 2000);
    v3 = &unk_1F58ADA50;
    goto LABEL_27;
  }

  if (a1 <= 0x865)
  {
    sub_1DD5BC738(&unk_1F58ADA88, (a1 - 1820) / 100.0);
  }
}

double sub_1DD5BD6F8(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for SolsticeAndEquinox(0) + 20));
  if (a1 > 999)
  {
    v4 = (&off_1E8655868 + v3);
    v5 = a1 + -2000.0;
  }

  else
  {
    v4 = (&off_1E8655848 + v3);
    v5 = a1;
  }

  v6 = sub_1DD5BC738(*v4, v5 / 1000.0);

  return v6;
}

unint64_t sub_1DD5BD7F8()
{
  result = qword_1ECCDF4C8;
  if (!qword_1ECCDF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4C8);
  }

  return result;
}

uint64_t sub_1DD5BD85C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC768();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD5BD958(v6);
  *a1 = v2;
  return result;
}

void sub_1DD5BD8C8(uint64_t a1)
{
  v1 = a1;

  sub_1DD5BD85C(&v1);
}

uint64_t sub_1DD5BD958(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD5BDBB0(v7, v8, a1, v4);
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
    return sub_1DD5BDA5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD5BDA5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for DateTime();
    v7 = (v6 + 80 * v4);
    v8 = v5 - v4 + 1;
    while (2)
    {
      v17 = v4;
      v9 = v8;
      for (i = v7; ; i -= 80)
      {
        memcpy(__dst, i, 0x49uLL);
        memcpy(v16, i - 80, 0x49uLL);
        v11 = __dst[0];
        v12 = v16[0];
        sub_1DD474708(__dst, __src);
        sub_1DD474708(v16, __src);
        LOBYTE(v11) = static DateTime.< infix(_:_:)(v11, v12);
        sub_1DD474778(v16);
        result = sub_1DD474778(__dst);
        if ((v11 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, i, 0x49uLL);
        memcpy(i, i - 80, 0x50uLL);
        result = memcpy(i - 80, __src, 0x49uLL);
        if (!v9)
        {
          break;
        }

        ++v9;
      }

      v4 = v17 + 1;
      v7 += 80;
      --v8;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD5BDBB0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v82 = v6 + 16;
      v83 = *(v6 + 2);
      while (v83 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v84 = v6;
        v85 = &v6[16 * v83];
        v86 = *v85;
        v87 = &v82[2 * v83];
        v88 = *(v87 + 1);
        v89 = v105;
        sub_1DD5BE2CC((*a3 + 80 * *v85), (*a3 + 80 * *v87), (*a3 + 80 * v88), v98);
        v105 = v89;
        if (v89)
        {
          break;
        }

        if (v88 < v86)
        {
          goto LABEL_117;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_118;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        v90 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_119;
        }

        v83 = *v82 - 1;
        sub_1DD4EC4E4(v87 + 16, v90, v87);
        *v82 = v83;
        v6 = v84;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v6 = sub_1DD4EC2B8();
    goto LABEL_93;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    if ((v5 + 1) >= v4)
    {
      goto LABEL_22;
    }

    v92 = v6;
    v9 = *a3;
    v98 = v4;
    memcpy(__dst, (*a3 + 80 * v8), 0x49uLL);
    v10 = 80 * v7;
    memcpy(v104, (v9 + 80 * v7), 0x49uLL);
    v11 = __dst[0];
    v12 = v104[0];
    type metadata accessor for DateTime();
    sub_1DD474708(__dst, __src);
    sub_1DD474708(v104, __src);
    v13 = static DateTime.< infix(_:_:)(v11, v12);
    sub_1DD474778(v104);
    sub_1DD474778(__dst);
    v14 = v98;
    v15 = (v9 + 80 * v7 + 160);
    v94 = v7;
    v16 = v7 + 2;
    do
    {
      v17 = v8;
      v18 = v16;
      v19 = (v8 + 1);
      if (v8 + 1 >= v14)
      {
        v8 = v14;
        if (v13)
        {
          goto LABEL_8;
        }

LABEL_12:
        v6 = v92;
        goto LABEL_21;
      }

      memcpy(v101, v15, 0x49uLL);
      memcpy(__src, v15 - 80, 0x49uLL);
      v20 = v101[0];
      v21 = __src[0];
      sub_1DD474708(v101, v100);
      sub_1DD474708(__src, v100);
      LODWORD(v21) = static DateTime.< infix(_:_:)(v20, v21);
      sub_1DD474778(__src);
      sub_1DD474778(v101);
      v15 += 80;
      v16 = (v18 + 1);
      v22 = v13 == v21;
      v14 = v98;
      v8 = v19;
    }

    while (v22);
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_8:
    v7 = v94;
    if (v8 < v94)
    {
      goto LABEL_123;
    }

    if (v94 > v17)
    {
      v6 = v92;
      goto LABEL_22;
    }

    v23 = v14 >= v18 ? v18 : v14;
    v24 = 80 * v23 - 80;
    v25 = v8;
    v6 = v92;
    do
    {
      if (v7 != --v25)
      {
        v26 = *a3;
        if (!*a3)
        {
          goto LABEL_130;
        }

        memcpy(__src, (v26 + v10), 0x49uLL);
        memmove((v26 + v10), (v26 + v24), 0x50uLL);
        memcpy((v26 + v24), __src, 0x49uLL);
      }

      ++v7;
      v24 -= 80;
      v10 += 80;
    }

    while (v7 < v25);
LABEL_21:
    v7 = v94;
LABEL_22:
    v27 = a3[1];
    if (v8 < v27)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_122;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v8 < v7)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v6 = v80;
    }

    v37 = *(v6 + 2);
    v38 = v37 + 1;
    v98 = v8;
    if (v37 >= *(v6 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v6 = v81;
    }

    *(v6 + 2) = v38;
    v39 = v6 + 32;
    v40 = &v6[16 * v37 + 32];
    *v40 = v7;
    *(v40 + 1) = v98;
    v97 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        v42 = &v39[16 * v38 - 16];
        v43 = &v6[16 * v38];
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v44 = *(v6 + 4);
          v45 = *(v6 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_59:
          if (v47)
          {
            goto LABEL_108;
          }

          v59 = *v43;
          v58 = *(v43 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_111;
          }

          v63 = *(v42 + 1);
          v64 = v63 - *v42;
          if (__OFSUB__(v63, *v42))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v61, v64))
          {
            goto LABEL_116;
          }

          if (v61 + v64 >= v46)
          {
            if (v46 < v64)
            {
              v41 = v38 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v38 < 2)
        {
          goto LABEL_110;
        }

        v66 = *v43;
        v65 = *(v43 + 1);
        v54 = __OFSUB__(v65, v66);
        v61 = v65 - v66;
        v62 = v54;
LABEL_74:
        if (v62)
        {
          goto LABEL_113;
        }

        v68 = *v42;
        v67 = *(v42 + 1);
        v54 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v54)
        {
          goto LABEL_115;
        }

        if (v69 < v61)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v41 - 1 >= v38)
        {
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

        v73 = v6;
        v74 = &v39[16 * v41 - 16];
        v75 = *v74;
        v76 = &v39[16 * v41];
        v77 = *(v76 + 1);
        v78 = v105;
        sub_1DD5BE2CC((*a3 + 80 * *v74), (*a3 + 80 * *v76), (*a3 + 80 * v77), v97);
        v105 = v78;
        if (v78)
        {
          goto LABEL_101;
        }

        if (v77 < v75)
        {
          goto LABEL_103;
        }

        v79 = *(v73 + 2);
        if (v41 > v79)
        {
          goto LABEL_104;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        if (v41 >= v79)
        {
          goto LABEL_105;
        }

        v38 = v79 - 1;
        sub_1DD4EC4E4(v76 + 16, v79 - 1 - v41, &v39[16 * v41]);
        v6 = v73;
        *(v73 + 2) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_88;
        }
      }

      v48 = &v39[16 * v38];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = *(v43 + 1);
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = *(v42 + 1);
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v5 = v98;
    v4 = a3[1];
    if (v98 >= v4)
    {
      goto LABEL_91;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_124;
  }

  if (v7 + a4 >= v27)
  {
    v28 = a3[1];
  }

  else
  {
    v28 = v7 + a4;
  }

  if (v28 < v7)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v8 == v28)
  {
    goto LABEL_39;
  }

  v93 = v6;
  v29 = v7;
  v30 = *a3;
  type metadata accessor for DateTime();
  v31 = (v30 + 80 * v8);
  v95 = v29;
  v32 = v29 - v8 + 1;
LABEL_32:
  v98 = v8;
  v33 = v32;
  for (i = v31; ; i -= 80)
  {
    memcpy(__dst, i, 0x49uLL);
    memcpy(v104, i - 80, 0x49uLL);
    v35 = __dst[0];
    v36 = v104[0];
    sub_1DD474708(__dst, __src);
    sub_1DD474708(v104, __src);
    LOBYTE(v35) = static DateTime.< infix(_:_:)(v35, v36);
    sub_1DD474778(v104);
    sub_1DD474778(__dst);
    if ((v35 & 1) == 0)
    {
LABEL_37:
      v8 = (v98 + 1);
      v31 += 80;
      --v32;
      if (v98 + 1 == v28)
      {
        v8 = v28;
        v6 = v93;
        v7 = v95;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v30)
    {
      break;
    }

    memcpy(__src, i, 0x49uLL);
    memcpy(i, i - 80, 0x50uLL);
    memcpy(i - 80, __src, 0x49uLL);
    if (!v33)
    {
      goto LABEL_37;
    }

    ++v33;
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
}

uint64_t sub_1DD5BE2CC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 80;
  v9 = (a3 - a2) / 80;
  if (v8 < v9)
  {
    sub_1DD3C2524(a1, (a2 - a1) / 80, a4);
    v10 = &v4[80 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }

      memcpy(__dst, v6, 0x49uLL);
      memcpy(v28, v4, 0x49uLL);
      v12 = __dst[0];
      v13 = v28[0];
      type metadata accessor for DateTime();
      sub_1DD474708(__dst, v26);
      sub_1DD474708(v28, v26);
      LOBYTE(v12) = static DateTime.< infix(_:_:)(v12, v13);
      sub_1DD474778(v28);
      sub_1DD474778(__dst);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 80;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 80;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 80;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v14, 0x50uLL);
    goto LABEL_13;
  }

  sub_1DD3C2524(a2, (a3 - a2) / 80, a4);
  v10 = &v4[80 * v9];
LABEL_15:
  v29 = v6 - 80;
  for (v5 -= 80; v10 > v4 && v6 > v7; v5 -= 80)
  {
    v17 = v7;
    memcpy(__dst, v10 - 80, 0x49uLL);
    memcpy(v28, v29, 0x49uLL);
    v18 = __dst[0];
    v19 = v28[0];
    type metadata accessor for DateTime();
    sub_1DD474708(__dst, v26);
    sub_1DD474708(v28, v26);
    LOBYTE(v18) = static DateTime.< infix(_:_:)(v18, v19);
    sub_1DD474778(v28);
    sub_1DD474778(__dst);
    v20 = v5 + 80;
    if (v18)
    {
      if (v20 < v6 || v5 >= v6)
      {
        v6 = v29;
        memmove(v5, v29, 0x50uLL);
        v7 = v17;
      }

      else
      {
        v7 = v17;
        if (v20 == v6)
        {
          v6 = v29;
        }

        else
        {
          v6 = v29;
          memmove(v5, v29, 0x50uLL);
        }
      }

      goto LABEL_15;
    }

    if (v20 < v10 || v5 >= v10)
    {
      memmove(v5, v10 - 80, 0x50uLL);
      v7 = v17;
    }

    else
    {
      v7 = v17;
      if (v10 != v20)
      {
        memmove(v5, v10 - 80, 0x50uLL);
      }
    }

    v10 -= 80;
  }

LABEL_41:
  v23 = 80 * ((v10 - v4) / 80);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

unint64_t sub_1DD5BE5A4(char *a1, char *a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v111 = a4;
  v133 = *MEMORY[0x1E69E9840];
  v122 = sub_1DD63D168();
  v9 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v116 = (&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v105 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v105 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105 - v16;
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v18 = sub_1DD63F9F8();
    v19 = __swift_project_value_buffer(v18, qword_1EE16F068);
    v20 = *(v9 + 16);
    v115 = a3;
    v118 = (v9 + 16);
    v119 = v20;
    v20(v17, a3, v122);
    v120 = v19;
    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();
    v23 = os_log_type_enabled(v21, v22);
    v113 = v5;
    *&v112 = a1;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = OUTLINED_FUNCTION_62();
      aBlock = v25;
      *v24 = 136315138;
      v26 = sub_1DD63D118();
      v27 = a2;
      v29 = v28;
      v30 = OUTLINED_FUNCTION_0_135();
      v31(v30);
      v32 = sub_1DD39565C(v26, v29, &aBlock);
      a2 = v27;

      *(v24 + 4) = v32;
      _os_log_impl(&dword_1DD38D000, v21, v22, "[UCG] locale identifier: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v33 = OUTLINED_FUNCTION_0_135();
      v34(v33);
    }

    v35 = v9;
    v36 = v117;
    (v119)(v117, v115, v122);
    aBlock = sub_1DD63D118();
    v126 = v37;
    v131 = 45;
    v132 = 0xE100000000000000;
    sub_1DD3B7F10();
    v38 = MEMORY[0x1E69E6158];
    v39 = sub_1DD6406D8();

    if (v39)
    {
      aBlock = sub_1DD63D118();
      v126 = v40;
      v131 = 45;
      v132 = 0xE100000000000000;
      v124[1] = 95;
      v124[2] = 0xE100000000000000;
      sub_1DD640678();

      v41 = v114;
      sub_1DD63D108();
      v35[5](v36, v41, v122);
      v38 = sub_1DD63F9D8();
      v42 = sub_1DD640368();
      if (os_log_type_enabled(v38, v42))
      {
        v43 = swift_slowAlloc();
        v44 = OUTLINED_FUNCTION_62();
        aBlock = v44;
        *v43 = 136315138;
        swift_beginAccess();
        v45 = sub_1DD63D118();
        v47 = sub_1DD39565C(v45, v46, &aBlock);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_1DD38D000, v38, v42, "[UCG] corrected locale identifier: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }
    }

    swift_beginAccess();
    v48 = OUTLINED_FUNCTION_4_87(&v135);
    v49 = v119;
    (v119)(v48);
    v50 = objc_allocWithZone(MEMORY[0x1E69CE418]);
    v51 = v121;
    v52 = sub_1DD5C0174(v38);
    if (v51)
    {

LABEL_11:
      v53 = sub_1DD63F9D8();
      v54 = sub_1DD640378();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = OUTLINED_FUNCTION_62();
        aBlock = v56;
        *v55 = 136315138;
        v57 = sub_1DD63D118();
        v59 = sub_1DD39565C(v57, v58, &aBlock);

        *(v55 + 4) = v59;
        _os_log_impl(&dword_1DD38D000, v53, v54, "[UCG] failed to create SEMTokenizer: morphun asset path for locale %s not available. Returning empty candidate list", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_2_103();
      v60();
      return MEMORY[0x1E69E7CC0];
    }

    a1 = v52;
    if (!v52)
    {
      goto LABEL_11;
    }

    v121 = 0;
    v62 = OUTLINED_FUNCTION_4_87(&v134);
    v49(v62);
    v63 = objc_allocWithZone(MEMORY[0x1E69CE400]);
    v64 = v111;
    v65 = v111;

    v66 = sub_1DD5C02C0(v38, v112, a2, v64);
    a3 = v36;
    v67 = sub_1DD63FDA8();
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    v129 = sub_1DD5C0388;
    v130 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v126 = 1107296256;
    v127 = sub_1DD5BF410;
    v128 = &block_descriptor_21;
    v69 = _Block_copy(&aBlock);
    v9 = v66;

    [a1 enumerateTokensOfText:v67 usingBlock:v69];
    _Block_release(v69);

    v5 = [v9 build];
    aBlock = 0;
    v70 = [v113 matchSpans:v5 error:&aBlock];
    v71 = aBlock;
    if (!v70)
    {
      break;
    }

    v72 = v70;
    v114 = v5;
    v115 = v9;
    v105 = a1;
    v116 = v35;
    sub_1DD5C03D8();
    v17 = sub_1DD640118();
    v73 = v71;

    a2 = sub_1DD3CC020();
    v74 = 0;
    v113 = (v17 & 0xC000000000000001);
    *&v112 = v17 & 0xFFFFFFFFFFFFFF8;
    v106 = v17;
    v111 = (v17 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v107 = a2;
    while (1)
    {
      v75 = v121;
      if (v74 == a2)
      {

        a1 = sub_1DD3CC020();
        v17 = 0;
        a2 = (v9 & 0xC000000000000001);
        v119 = v9 & 0xFFFFFFFFFFFFFF8;
        *&v95 = 134218242;
        v112 = v95;
        OUTLINED_FUNCTION_1_118();
        v118 = v96;
        v113 = (v9 & 0xC000000000000001);
        while (a1 != v17)
        {
          if (a2)
          {
            MEMORY[0x1E12B2C10](v17, v9);
          }

          else
          {
            if (v17 >= *(v119 + 16))
            {
              goto LABEL_73;
            }
          }

          if (__OFADD__(v17, 1))
          {
            goto LABEL_72;
          }

          v75 = v120;
          a3 = sub_1DD63F9D8();
          v5 = sub_1DD640368();

          if (os_log_type_enabled(a3, v5))
          {
            v97 = swift_slowAlloc();
            v98 = v9;
            v99 = OUTLINED_FUNCTION_62();
            aBlock = v99;
            *v97 = v112;
            *(v97 + 4) = v17;
            *(v97 + 12) = 2080;
            v100 = sub_1DD63EEC8();
            v75 = v101;
            v102 = sub_1DD39565C(v100, v101, &aBlock);

            *(v97 + 14) = v102;
            _os_log_impl(&dword_1DD38D000, a3, v5, "[Siri Entity Matcher] Span match [%ld]: %s", v97, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v99);
            v9 = v98;
            a2 = v113;
            OUTLINED_FUNCTION_0_1();
            a1 = v118;
            OUTLINED_FUNCTION_0_1();
          }

          else
          {
          }

          ++v17;
          OUTLINED_FUNCTION_1_118();
        }

        OUTLINED_FUNCTION_2_103();
        v103();
        return v9;
      }

      if (v113)
      {
        v76 = MEMORY[0x1E12B2C10](v74, v106);
      }

      else
      {
        if (v74 >= *(v112 + 16))
        {
          goto LABEL_71;
        }

        v76 = *(v111 + v74);
      }

      v77 = v76;
      v78 = __OFADD__(v74++, 1);
      if (v78)
      {
        break;
      }

      v124[0] = v76;
      sub_1DD5BF51C(v124, &v123);
      if (v75)
      {

        goto LABEL_69;
      }

      a3 = v123;
      v121 = 0;
      if (v123 >> 62)
      {
        v5 = sub_1DD6407B8();
      }

      else
      {
        v5 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v9 >> 62;
      if (v9 >> 62)
      {
        v79 = sub_1DD6407B8();
      }

      else
      {
        v79 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v80 = &v5[v79];
      if (__OFADD__(v79, v5))
      {
        goto LABEL_74;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v119 = v5;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v17)
        {
          v17 = v9 & 0xFFFFFFFFFFFFFF8;
          if (v80 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_34:
        sub_1DD6407B8();
        goto LABEL_35;
      }

      if (v17)
      {
        goto LABEL_34;
      }

LABEL_35:
      v9 = sub_1DD640918();
      v17 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
      v118 = v9;
      v82 = *(v17 + 16);
      a1 = ((*(v17 + 24) >> 1) - v82);
      v83 = v17 + 8 * v82;
      if (a3 >> 62)
      {
        v84 = sub_1DD6407B8();
        if (!v84)
        {
LABEL_50:

          if (v119 > 0)
          {
            goto LABEL_75;
          }

          goto LABEL_51;
        }

        v85 = v84;
        v86 = sub_1DD6407B8();
        if (a1 < v86)
        {
          goto LABEL_78;
        }

        if (v85 < 1)
        {
          goto LABEL_80;
        }

        v108 = v86;
        v109 = v17;
        v110 = v74;
        v87 = v83 + 32;
        a1 = sub_1DD5C041C();
        v88 = 0;
        v9 = &qword_1DD65FB10;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF4D8, &qword_1DD65FB10);
          v89 = sub_1DD5B60D4(&aBlock, v88, a3);
          v91 = *v90;

          v89(&aBlock, 0);
          *(v87 + 8 * v88++) = v91;
        }

        while (v85 != v88);
        a2 = v107;
        v74 = v110;
        v17 = v109;
        v5 = v108;
      }

      else
      {
        v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_50;
        }

        if (a1 < v5)
        {
          goto LABEL_79;
        }

        sub_1DD63EEE8();
        swift_arrayInitWithCopy();
      }

      if (v5 < v119)
      {
        goto LABEL_75;
      }

      if (v5 > 0)
      {
        v92 = *(v17 + 16);
        v78 = __OFADD__(v92, v5);
        v93 = &v5[v92];
        if (v78)
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
        }

        *(v17 + 16) = v93;
      }

LABEL_51:
      v9 = v118;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v94 = aBlock;
  sub_1DD63CD98();

  swift_willThrow();
LABEL_69:
  OUTLINED_FUNCTION_2_103();
  v104();
  return v9;
}

void sub_1DD5BF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, void *a11)
{
  v13 = sub_1DD63FDA8();
  if (a5)
  {
    a5 = sub_1DD63FDA8();
  }

  if (a6)
  {
    v14 = sub_1DD6400F8();
  }

  else
  {
    v14 = 0;
  }

  LOBYTE(v15) = a10 & 1;
  v16 = v14;
  [a11 addTokenWithValue:v13 cleanValue:a5 normalizedValues:v15 beginIndex:? endIndex:? isSignificant:? isWhitespace:?];
}

uint64_t sub_1DD5BF410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, char a8, char a9)
{
  v13 = *(a1 + 32);
  v14 = sub_1DD63FDD8();
  v16 = v15;
  if (a4)
  {
    v17 = sub_1DD63FDD8();
    a4 = v18;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (a5)
  {
LABEL_3:
    a5 = sub_1DD640118();
  }

LABEL_4:

  HIBYTE(v20) = a9;
  LOBYTE(v20) = a8;
  v13(a2, v14, v16, v17, a4, a5, a6, a7, v20);
}

void sub_1DD5BF51C(void **a1@<X0>, void *a2@<X8>)
{
  v93 = a2;
  v123 = *MEMORY[0x1E69E9840];
  v97 = sub_1DD63EDE8();
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v90 - v6;
  v116 = sub_1DD63F7E8();
  v7 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v99 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v90 - v10;
  v11 = sub_1DD63DBD8();
  v112 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v90 - v16;
  v17 = sub_1DD63F808();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1DD63DBA8();
  v92 = *(v18 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  *&v121[0] = 0;
  v23 = [v22 toOntologyGraphData_];
  v24 = *&v121[0];
  if (!v23)
  {
    v69 = v24;
    v70 = sub_1DD63CD98();

    swift_willThrow();
    if (qword_1EE165FB0 != -1)
    {
LABEL_49:
      swift_once();
    }

    v71 = sub_1DD63F9F8();
    __swift_project_value_buffer(v71, qword_1EE16F068);
    v72 = sub_1DD63F9D8();
    v73 = sub_1DD640368();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1DD38D000, v72, v73, "[UCG] Will ignore span with no ontology mapping", v74, 2u);
      MEMORY[0x1E12B3DA0](v74, -1, -1);
    }

    v75 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v25 = v7;
  v26 = sub_1DD63CF28();
  v28 = v27;

  v122 = 0;
  memset(v121, 0, sizeof(v121));
  sub_1DD3D01B4(v26, v28);
  sub_1DD63F7F8();
  sub_1DD5C0480(v29);
  sub_1DD63F818();
  if (!v2)
  {
    v91 = 0;
    v30 = sub_1DD63DB88();
    v31 = 0;
    v110 = *(v30 + 16);
    v117 = v112 + 16;
    v113 = (v25 + 8);
    v101 = (v112 + 8);
    v103 = (v112 + 32);
    *&v32 = 136315138;
    v94 = v32;
    v104 = MEMORY[0x1E69E7CC0];
    v107 = v18;
    v90 = v21;
    v106 = v28;
    v109 = v26;
    v114 = v11;
    v108 = v30;
    while (1)
    {
      v33 = v31;
LABEL_5:
      if (v33 == v110)
      {
        break;
      }

      if (v33 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v34 = ((*(v112 + 80) + 32) & ~*(v112 + 80));
      v35 = *(v112 + 72);
      v118 = v33 + 1;
      v115 = v34;
      v36 = *(v112 + 16);
      v36(v119, v34 + v30 + v35 * v33, v11);
      if (sub_1DD63DBC8())
      {
        if (qword_1ECCDB150 != -1)
        {
          swift_once();
        }

        v37 = qword_1ECD0DE40;
        v38 = v111;
        sub_1DD63DBB8();
        v39 = sub_1DD63F7D8();
        v41 = v40;
        v42 = *v113;
        (*v113)(v38, v116);
        if (*(v37 + 16))
        {
          sub_1DD640E28();
          sub_1DD63FD28();
          v43 = sub_1DD640E78();
          v44 = ~(-1 << *(v37 + 32));
          while (1)
          {
            v45 = v43 & v44;
            if (((*(v37 + 56 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v43 & v44)) & 1) == 0)
            {
              break;
            }

            v46 = (*(v37 + 48) + 16 * v45);
            if (*v46 != v39 || v46[1] != v41)
            {
              v48 = sub_1DD640CD8();
              v43 = v45 + 1;
              if ((v48 & 1) == 0)
              {
                continue;
              }
            }

            if (qword_1EE165FB0 != -1)
            {
              swift_once();
            }

            v49 = sub_1DD63F9F8();
            __swift_project_value_buffer(v49, qword_1EE16F068);
            v50 = v102;
            v11 = v114;
            v36(v102, v119, v114);
            v51 = sub_1DD63F9D8();
            v52 = sub_1DD640368();
            v53 = os_log_type_enabled(v51, v52);
            v54 = v101;
            if (v53)
            {
              v55 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              *&v121[0] = v115;
              *v55 = v94;
              v56 = v99;
              v100 = v52;
              sub_1DD63DBB8();
              v57 = sub_1DD63F7D8();
              v59 = v58;
              v60 = v56;
              v11 = v114;
              v42(v60, v116);
              v61 = *v54;
              (*v54)(v50, v11);
              v62 = sub_1DD39565C(v57, v59, v121);

              *(v55 + 4) = v62;
              _os_log_impl(&dword_1DD38D000, v51, v100, "[UCG] Will ignore span with disallowed bundle ID: %s", v55, 0xCu);
              v63 = v115;
              __swift_destroy_boxed_opaque_existential_1(v115);
              MEMORY[0x1E12B3DA0](v63, -1, -1);
              MEMORY[0x1E12B3DA0](v55, -1, -1);
            }

            else
            {

              v61 = *v54;
              (*v54)(v50, v11);
            }

            v26 = v109;
            v61(v119, v11);
            v33 = v118;
            v18 = v107;
            v28 = v106;
            v30 = v108;
            goto LABEL_5;
          }
        }

        v18 = v107;
        v28 = v106;
        v11 = v114;
      }

      v64 = *v103;
      (*v103)(v105, v119, v11);
      v65 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42C03C(0, *(v65 + 16) + 1, 1);
        v65 = v120;
      }

      v68 = *(v65 + 16);
      v67 = *(v65 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1DD42C03C(v67 > 1, v68 + 1, 1);
        v65 = v120;
      }

      *(v65 + 16) = v68 + 1;
      v104 = v65;
      v64(v115 + v65 + v68 * v35, v105, v11);
      v26 = v109;
      v30 = v108;
      v31 = v118;
    }

    v76 = v90;
    sub_1DD63DB98();
    v77 = v91;
    v78 = sub_1DD63DBE8();
    if (v77)
    {
      (*(v92 + 8))(v76, v18);
      goto LABEL_37;
    }

    v79 = v78;
    v91 = 0;
    v80 = sub_1DD63EDF8();
    *&v121[0] = MEMORY[0x1E69E7CC0];
    v81 = *(v80 + 16);
    if (v81)
    {
      v118 = v79;
      v82 = *(v98 + 16);
      v83 = *(v98 + 80);
      v117 = v80;
      v84 = v80 + ((v83 + 32) & ~v83);
      v119 = *(v98 + 72);
      v98 += 16;
      v85 = (v98 - 8);
      v75 = MEMORY[0x1E69E7CC0];
      v86 = v95;
      do
      {
        v87 = v97;
        v82(v86, v84, v97);
        v82(v96, v86, v87);
        sub_1DD63EE28();
        swift_allocObject();
        sub_1DD63EE18();
        v88 = sub_1DD63EE08();

        v89 = (*v85)(v86, v87);
        if (v88)
        {
          MEMORY[0x1E12B23F0](v89);
          if (*((*&v121[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v121[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DD640138();
          }

          sub_1DD640168();
          v75 = *&v121[0];
        }

        v84 += v119;
        --v81;
      }

      while (v81);

      v18 = v107;
      v76 = v90;
      v28 = v106;
    }

    else
    {

      v75 = MEMORY[0x1E69E7CC0];
    }

    sub_1DD3AD790(v109, v28);
    (*(v92 + 8))(v76, v18);
LABEL_34:
    *v93 = v75;
    return;
  }

LABEL_37:
  sub_1DD3AD790(v26, v28);
}

id sub_1DD5C0174(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DD63D138();
  v13[0] = 0;
  v5 = [v2 initWithTokenizerLocale:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1DD63D168();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1DD63CD98();

    swift_willThrow();
    v11 = sub_1DD63D168();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_1DD5C02C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = sub_1DD63D138();
  v9 = sub_1DD63FDA8();

  v10 = [v5 initWithLocale:v8 originalText:v9 asrHypothesis:a4];

  v11 = sub_1DD63D168();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

double block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1DD5C03D8()
{
  result = qword_1ECCDF4D0;
  if (!qword_1ECCDF4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDF4D0);
  }

  return result;
}

unint64_t sub_1DD5C041C()
{
  result = qword_1ECCDF4E0;
  if (!qword_1ECCDF4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF4D8, &qword_1DD65FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4E0);
  }

  return result;
}

unint64_t sub_1DD5C0480(__n128 a1)
{
  result = qword_1ECCDF4E8;
  if (!qword_1ECCDF4E8)
  {
    sub_1DD63DBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4E8);
  }

  return result;
}

unint64_t sub_1DD5C04D8(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD5C0524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, void)@<X8>)
{
  LODWORD(v99) = a3;
  v90 = a2;
  v101 = a7;
  v91 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v89 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v88 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_2_1();
  v94 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v92 = v80 - v19;
  v93 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v98 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v81 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v97 = v80 - v24;
  sub_1DD63D188();
  OUTLINED_FUNCTION_0();
  v86 = v26;
  v87 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v85 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v80 - v30;
  v100 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v96 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  v95 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = v80 - v37;
  v39 = sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2();
  v45 = (v44 - v43);
  v82 = a5;
  v83 = v7;
  v84 = a6;
  sub_1DD5C0D9C(a1, a4, a5, a6, v38);
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
  {
    v80[1] = a4;
    v48 = v101;
    v49 = *(v41 + 32);
    v49(v45, v38, v39);
    if (v99)
    {
      v49(v48, v45, v39);
      v47 = v48;
LABEL_5:
      v46 = 0;
      return __swift_storeEnumTagSinglePayload(v47, v46, 1, v39);
    }

    v80[0] = v41;
    v99 = v45;
    sub_1DD63CB78();
    v50 = OUTLINED_FUNCTION_3_86();
    v51 = v100;
    if (__swift_getEnumTagSinglePayload(v50, v52, v100) == 1)
    {
      v54 = v85;
      v53 = v86;
      v55 = v87;
      (*(v86 + 104))(v85, *MEMORY[0x1E6969868], v87);
      v56 = v95;
      sub_1DD63D198();
      v57 = v54;
      v58 = v56;
      (*(v53 + 8))(v57, v55);
      v59 = OUTLINED_FUNCTION_3_86();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, v60, v51);
      v47 = v48;
      v62 = v93;
      v63 = v94;
      v64 = v97;
      v65 = v98;
      if (EnumTagSinglePayload != 1)
      {
        sub_1DD3ADFD0(v31, &qword_1ECCDC148, &qword_1DD645290);
      }
    }

    else
    {
      v58 = v95;
      (*(v96 + 32))(v95, v31, v51);
      v47 = v48;
      v62 = v93;
      v63 = v94;
      v64 = v97;
      v65 = v98;
    }

    v66 = v92;
    v67 = v99;
    sub_1DD63D248();
    if (__swift_getEnumTagSinglePayload(v66, 1, v62) == 1)
    {
      (*(v96 + 8))(v58, v100);
      OUTLINED_FUNCTION_2_104();
      v68(v67, v39);
      v69 = v66;
    }

    else
    {
      v101 = *(v65 + 32);
      v101(v64, v66, v62);
      v70 = v89;
      v71 = v88;
      v72 = v91;
      (*(v89 + 104))(v88, *MEMORY[0x1E6969A48], v91);
      sub_1DD63D268();
      (*(v70 + 8))(v71, v72);
      if (__swift_getEnumTagSinglePayload(v63, 1, v62) != 1)
      {
        v75 = v81;
        v101(v81, v63, v62);
        v76 = (*(v84 + 32))(v82);
        v77 = v95;
        sub_1DD3D856C(v76, v47);

        v78 = *(v98 + 8);
        v78(v75, v62);
        v78(v97, v62);
        (*(v96 + 8))(v77, v100);
        OUTLINED_FUNCTION_2_104();
        v79(v99, v39);
        goto LABEL_5;
      }

      (*(v98 + 8))(v97, v62);
      (*(v96 + 8))(v95, v100);
      OUTLINED_FUNCTION_2_104();
      v73(v99, v39);
      v69 = v63;
    }

    sub_1DD3ADFD0(v69, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v46 = 1;
    return __swift_storeEnumTagSinglePayload(v47, v46, 1, v39);
  }

  sub_1DD3ADFD0(v38, &qword_1ECCDC4F8, &unk_1DD646910);
  v46 = 1;
  v47 = v101;
  return __swift_storeEnumTagSinglePayload(v47, v46, 1, v39);
}

unint64_t sub_1DD5C0CB4(char a1)
{
  result = 0x726574736165;
  switch(a1)
  {
    case 1:
      result = 0x7664617473726966;
      break;
    case 2:
      result = 0x6967736B6E616874;
      break;
    case 3:
      result = 0x757165686372616DLL;
      break;
    case 4:
      result = 0x736C6F73656E756ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5C0D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_2();
  if ((*(v10 + 16))())
  {
    (*(a4 + 24))(a1, a2, a3, a4);
    v11 = sub_1DD63CBB8();
    v12 = a5;
    v13 = 0;
  }

  else
  {
    sub_1DD63CBB8();
    v12 = OUTLINED_FUNCTION_3_86();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v11);
}

uint64_t sub_1DD5C1158(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[48])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t sub_1DD5C11A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1DD5C1204(uint64_t a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v2 = *(v27 - 8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF508, &qword_1DD65FC48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = swift_getKeyPath();
  v24 = inited + 32;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v23 = inited;
  *(inited + 88) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v29 = *(v2 + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DD643F90;
  v28 = v8;
  sub_1DD4BF298(a1, v9 + v8);
  for (i = 0; ; ++i)
  {
    if (i == 4)
    {
      swift_setDeallocating();
      sub_1DD46CB8C();
      return;
    }

    v11 = (v24 + 16 * i);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(v9 + 16);
    if (v14)
    {
      break;
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_18:
  }

  v25 = i;
  v26 = v9;
  v15 = v9 + v28;

  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD4BF298(v15, v5);
    v16 = sub_1DD5C15F4(v5, v13, v12);
    sub_1DD5C224C(v5);
    v17 = *(v16 + 16);
    v18 = *(v9 + 16);
    if (__OFADD__(v18, v17))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > *(v9 + 24) >> 1)
    {
      sub_1DD3BF7FC();
      v9 = v19;
    }

    if (*(v16 + 16))
    {
      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v17)
      {
        goto LABEL_22;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v20 = *(v9 + 16);
        v21 = __OFADD__(v20, v17);
        v22 = v20 + v17;
        if (v21)
        {
          goto LABEL_23;
        }

        *(v9 + 16) = v22;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_21;
      }
    }

    v15 += v29;
    if (!--v14)
    {

      i = v25;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1DD5C15F4(const void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  memcpy(v43, a1, sizeof(v43));
  memcpy(v42, a1, sizeof(v42));
  sub_1DD3C9478(v43, v44);
  v33 = a2;
  swift_getAtKeyPath();
  memcpy(v44, v42, 0x108uLL);
  sub_1DD3C9580(v44);
  v10 = v40[0];
  v11 = v40[1];
  v42[0] = v40[0];
  v42[1] = v40[1];
  v40[0] = 31868;
  v40[1] = 0xE200000000000000;
  sub_1DD3B7F10();
  OUTLINED_FUNCTION_3_87();
  if ((sub_1DD6406D8() & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
    v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DD643F90;
    sub_1DD4BF298(a1, v16 + v27);
    return v16;
  }

  v42[0] = v10;
  v42[1] = v11;
  v40[0] = 31868;
  v40[1] = 0xE200000000000000;
  OUTLINED_FUNCTION_3_87();
  v12 = sub_1DD640638();

  v13 = *(v12 + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v30 = a1;
  v41 = MEMORY[0x1E69E7CC0];
  result = sub_1DD42BA08(0, v13, 0);
  v15 = 0;
  v16 = v41;
  v31 = *(v12 + 16);
  v17 = (v12 + 40);
  v29 = v13 - 1;
  while (v31 != v15)
  {
    if (v15 >= *(v12 + 16))
    {
      goto LABEL_15;
    }

    v18 = *(v17 - 1);
    v19 = *v17;
    sub_1DD4BF298(v30, v9);
    v35[0] = v18;
    v35[1] = v19;
    swift_bridgeObjectRetain_n();
    swift_setAtWritableKeyPath();
    v20 = &v9[*(v32 + 36)];
    v21 = *(v20 + 40);
    v36[0] = v20[280];
    v22 = *(v20 + 19);
    v37 = *(v20 + 18);
    v38 = v22;
    v39 = v21;
    v35[0] = v15;
    swift_setAtWritableKeyPath();
    v23 = v39;
    v20[280] = v36[0];
    v24 = v38;
    *(v20 + 18) = v37;
    *(v20 + 19) = v24;
    *(v20 + 40) = v23;
    memcpy(v40, v9, sizeof(v40));
    memcpy(v42, v20 + 8, sizeof(v42));
    sub_1DD3C9478(v40, v35);
    sub_1DD3C9580(v42);

    memcpy(v20 + 8, v40, 0x108uLL);
    v41 = v16;
    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1DD42BA08((v25 > 1), v26 + 1, 1);
      v16 = v41;
    }

    *(v16 + 16) = v26 + 1;
    result = sub_1DD5C22B4(v9, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26);
    if (v29 == v15)
    {

      return v16;
    }

    v17 += 2;
    ++v15;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1DD5C1998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272457369 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E6E65766967 && a2 == 0xED00006B6E615265;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614E656C6464696DLL && a2 == 0xEE006B6E6152656DLL;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x614E796C696D6166 && a2 == 0xEE006B6E6152656DLL;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656D614E6C6C7566 && a2 == 0xEC0000006B6E6152)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD640CD8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD5C1B9C(char a1)
{
  result = 0x726F7272457369;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x6D614E6E65766967;
      break;
    case 3:
      v3 = 0x656C6464696DLL;
      goto LABEL_6;
    case 4:
      v3 = 0x796C696D6166;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 5:
      result = 0x656D614E6C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5C1C64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF4F8, &qword_1DD65FC30);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C21F8();
  sub_1DD640EF8();
  v10[15] = 0;
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_10();
    sub_1DD640C58();
    v10[13] = 2;
    OUTLINED_FUNCTION_10();
    sub_1DD640C48();
    v10[12] = 3;
    OUTLINED_FUNCTION_10();
    sub_1DD640C48();
    v10[11] = 4;
    OUTLINED_FUNCTION_10();
    sub_1DD640C48();
    v10[10] = 5;
    OUTLINED_FUNCTION_10();
    sub_1DD640C48();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1DD5C1E28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF500, &unk_1DD65FC38);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C21F8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  OUTLINED_FUNCTION_1_115();
  v11 = sub_1DD640B38();
  v26 = 1;
  OUTLINED_FUNCTION_1_115();
  v12 = sub_1DD640B68();
  v25 = 2;
  OUTLINED_FUNCTION_1_115();
  v21 = sub_1DD640B58();
  v24 = 3;
  OUTLINED_FUNCTION_1_115();
  v20 = sub_1DD640B58();
  v23 = 4;
  OUTLINED_FUNCTION_1_115();
  v19 = sub_1DD640B58();
  v22 = 5;
  OUTLINED_FUNCTION_1_115();
  v13 = sub_1DD640B58();
  (*(v7 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11 & 1;
  v16 = v20;
  v15 = v21;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  v17 = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v13;
  return result;
}

uint64_t sub_1DD5C2054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5C1998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5C207C(uint64_t a1)
{
  v2 = sub_1DD5C21F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C20B8(uint64_t a1)
{
  v2 = sub_1DD5C21F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD5C20F4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DD5C1E28(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1DD5C216C()
{
  result = qword_1ECCDF4F0;
  if (!qword_1ECCDF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4F0);
  }

  return result;
}

unint64_t sub_1DD5C21C0(void *a1)
{
  a1[2] = sub_1DD439AAC();
  a1[3] = sub_1DD4338A8();
  result = sub_1DD5C216C();
  a1[4] = result;
  return result;
}

unint64_t sub_1DD5C21F8()
{
  result = qword_1EE163D00;
  if (!qword_1EE163D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163D00);
  }

  return result;
}

uint64_t sub_1DD5C224C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD5C22B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SpeechAlternativeQueryExpander.SpeechAlternativeRanks.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5C2404()
{
  result = qword_1ECCDF510;
  if (!qword_1ECCDF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF510);
  }

  return result;
}

unint64_t sub_1DD5C245C()
{
  result = qword_1EE163CF0;
  if (!qword_1EE163CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CF0);
  }

  return result;
}

unint64_t sub_1DD5C24B4()
{
  result = qword_1EE163CF8;
  if (!qword_1EE163CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CF8);
  }

  return result;
}

uint64_t sub_1DD5C2520()
{
  xmmword_1ECCDF578 = 0u;
  unk_1ECCDF588 = 0u;
  xmmword_1ECCDF558 = 0u;
  unk_1ECCDF568 = 0u;
  xmmword_1ECCDF518 = xmmword_1DD65FE70;
  unk_1ECCDF528 = xmmword_1DD65FE70;
  xmmword_1ECCDF538 = xmmword_1DD65FE70;
  unk_1ECCDF548 = 0u;

  unk_1ECCDF548 = xmmword_1DD65FE70;

  xmmword_1ECCDF558 = xmmword_1DD65FE70;

  unk_1ECCDF568 = xmmword_1DD65FE70;

  xmmword_1ECCDF578 = xmmword_1DD65FE70;

  unk_1ECCDF588 = xmmword_1DD65FE70;
}

__int128 *sub_1DD5C25D0()
{
  if (qword_1ECCDB138 != -1)
  {
    OUTLINED_FUNCTION_1_119(&qword_1ECCDB138);
  }

  return &xmmword_1ECCDF518;
}

uint64_t static SportsConstants.EmptySportsItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  if (qword_1ECCDB138 != -1)
  {
    a1 = OUTLINED_FUNCTION_1_119(&qword_1ECCDB138);
  }

  OUTLINED_FUNCTION_8_65(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v13);
  OUTLINED_FUNCTION_4_88(v14);
  OUTLINED_FUNCTION_4_88(a9);
  return sub_1DD400BFC(v14, v12);
}

uint64_t static SportsConstants.EmptySportsItem.setter(uint64_t a1)
{
  if (qword_1ECCDB138 != -1)
  {
    a1 = OUTLINED_FUNCTION_1_119(&qword_1ECCDB138);
  }

  OUTLINED_FUNCTION_7_61(a1);
  OUTLINED_FUNCTION_4_88(v4);
  v1 = OUTLINED_FUNCTION_1_8();
  memcpy(v1, v2, 0x80uLL);
  return sub_1DD400C58(v4);
}

uint64_t (*static SportsConstants.EmptySportsItem.modify())(uint64_t a1)
{
  if (qword_1ECCDB138 != -1)
  {
    OUTLINED_FUNCTION_1_119(&qword_1ECCDB138);
  }

  OUTLINED_FUNCTION_1_8();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DD5C276C@<X0>(void *a1@<X8>)
{
  sub_1DD5C25D0();
  swift_beginAccess();
  memcpy(__dst, &xmmword_1ECCDF518, sizeof(__dst));
  memcpy(a1, &xmmword_1ECCDF518, 0x80uLL);
  return sub_1DD400BFC(__dst, v3);
}

uint64_t sub_1DD5C27E8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD400BFC(__dst, v3);
  sub_1DD5C25D0();
  swift_beginAccess();
  memcpy(v3, &xmmword_1ECCDF518, sizeof(v3));
  memcpy(&xmmword_1ECCDF518, __dst, 0x80uLL);
  return sub_1DD400C58(v3);
}

uint64_t sub_1DD5C2870()
{
  xmmword_1ECCDF5F8 = 0u;
  *&qword_1ECCDF608 = 0u;
  xmmword_1ECCDF5D8 = 0u;
  *&qword_1ECCDF5E8 = 0u;
  xmmword_1ECCDF5B8 = 0u;
  *&qword_1ECCDF5C8 = 0u;
  xmmword_1ECCDF598 = 0u;
  unk_1ECCDF5A8 = 0u;

  qword_1ECCDF5C8 = 0;
  qword_1ECCDF5D0 = 0;

  xmmword_1ECCDF5D8 = 0uLL;

  qword_1ECCDF5E8 = 0;
  qword_1ECCDF5F0 = 0;

  xmmword_1ECCDF5F8 = 0uLL;

  qword_1ECCDF608 = 0;
  qword_1ECCDF610 = 0;
}

__int128 *sub_1DD5C28F8()
{
  if (qword_1ECCDB140 != -1)
  {
    OUTLINED_FUNCTION_0_136(&qword_1ECCDB140);
  }

  return &xmmword_1ECCDF598;
}

uint64_t static SportsConstants.SportsItemNils.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  if (qword_1ECCDB140 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_136(&qword_1ECCDB140);
  }

  OUTLINED_FUNCTION_8_65(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v13);
  OUTLINED_FUNCTION_4_88(v14);
  OUTLINED_FUNCTION_4_88(a9);
  return sub_1DD400BFC(v14, v12);
}

uint64_t static SportsConstants.SportsItemNils.setter(uint64_t a1)
{
  if (qword_1ECCDB140 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_136(&qword_1ECCDB140);
  }

  OUTLINED_FUNCTION_7_61(a1);
  OUTLINED_FUNCTION_4_88(v4);
  v1 = OUTLINED_FUNCTION_1_8();
  memcpy(v1, v2, 0x80uLL);
  return sub_1DD400C58(v4);
}

uint64_t (*static SportsConstants.SportsItemNils.modify())(uint64_t)
{
  if (qword_1ECCDB140 != -1)
  {
    OUTLINED_FUNCTION_0_136(&qword_1ECCDB140);
  }

  OUTLINED_FUNCTION_1_8();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DD5C2A94@<X0>(void *a1@<X8>)
{
  sub_1DD5C28F8();
  swift_beginAccess();
  memcpy(__dst, &xmmword_1ECCDF598, sizeof(__dst));
  memcpy(a1, &xmmword_1ECCDF598, 0x80uLL);
  return sub_1DD400BFC(__dst, v3);
}

uint64_t sub_1DD5C2B10(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD400BFC(__dst, v3);
  sub_1DD5C28F8();
  swift_beginAccess();
  memcpy(v3, &xmmword_1ECCDF598, sizeof(v3));
  memcpy(&xmmword_1ECCDF598, __dst, 0x80uLL);
  return sub_1DD400C58(v3);
}

_BYTE *storeEnumTagSinglePayload for SportsConstants(_BYTE *result, int a2, int a3)
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

void __swiftcall SportsItem.init(sport:league:team:athlete:sportQId:leagueQId:teamQId:athleteQId:)(SiriInference::SportsItem *__return_ptr retstr, Swift::String_optional sport, Swift::String_optional league, Swift::String_optional team, Swift::String_optional athlete, Swift::String_optional sportQId, Swift::String_optional leagueQId, Swift::String_optional teamQId, Swift::String_optional athleteQId)
{
  retstr->sport = sport;
  retstr->league = league;
  retstr->team = team;
  retstr->athlete = athlete;
  retstr->sportQId = sportQId;
  retstr->leagueQId = leagueQId;
  retstr->teamQId = teamQId;
  retstr->athleteQId = athleteQId;
}

uint64_t SportsItem.sport.setter()
{
  OUTLINED_FUNCTION_14_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SportsItem.league.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SportsItem.team.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SportsItem.athlete.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SportsItem.sportQId.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t SportsItem.leagueQId.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t SportsItem.teamQId.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t SportsItem.athleteQId.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t static SportsItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v77 = a1[6];
  v75 = a1[7];
  v74 = a1[8];
  v72 = a1[9];
  v71 = a1[10];
  v69 = a1[11];
  v68 = a1[12];
  v66 = a1[13];
  v65 = a1[14];
  v63 = a1[15];
  v5 = a2[1];
  v6 = a2[3];
  v7 = a2[5];
  v76 = a2[7];
  v73 = a2[9];
  v70 = a2[11];
  v67 = a2[13];
  v64 = a2[15];
  if (a1[1])
  {
    sub_1DD63FE58();
    v9 = v8;
    if (!v5)
    {
      if (v8)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    v9 = 0;
  }

  sub_1DD63FE58();
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_5_82();
    v12 = v12 && v9 == v11;
    if (v12)
    {

      if (v3)
      {
        goto LABEL_18;
      }

LABEL_21:
      if (!v6)
      {
        goto LABEL_34;
      }

      v16 = 0;
      goto LABEL_23;
    }

    v13 = sub_1DD640CD8();

    if ((v13 & 1) == 0)
    {
      goto LABEL_119;
    }
  }

  else if (v10)
  {
    goto LABEL_140;
  }

LABEL_17:
  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_18:
  v14 = sub_1DD63FE58();
  v16 = v15;
  if (!v6)
  {
    if (!v15)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v2 = v14;
LABEL_23:
  v17 = sub_1DD63FE58();
  if (!v16)
  {
    if (v18)
    {
      goto LABEL_140;
    }

LABEL_34:
    if (v4)
    {
      goto LABEL_35;
    }

LABEL_38:
    if (!v7)
    {
      goto LABEL_53;
    }

    v23 = 0;
    goto LABEL_40;
  }

  if (!v18)
  {
LABEL_32:
    v21 = 0;
LABEL_141:

    return v21 & 1;
  }

  if (v2 != v17 || v16 != v18)
  {
    v20 = sub_1DD640CD8();

    if ((v20 & 1) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_34;
  }

  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_35:
  sub_1DD63FE58();
  v23 = v22;
  if (!v7)
  {
    if (!v22)
    {
      goto LABEL_53;
    }

LABEL_49:
    v21 = 0;
    goto LABEL_141;
  }

LABEL_40:
  sub_1DD63FE58();
  v25 = v24;
  if (v23)
  {
    if (v24)
    {
      OUTLINED_FUNCTION_5_82();
      if (v12 && v23 == v25)
      {
      }

      else
      {
        v27 = sub_1DD640CD8();

        if ((v27 & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if (v24)
  {
    goto LABEL_140;
  }

LABEL_53:
  if (v75)
  {
    v28 = sub_1DD63FE58();
    v30 = v29;
    if (!v76)
    {
      if (v29)
      {
        goto LABEL_138;
      }

      goto LABEL_71;
    }

    v31 = v28;
  }

  else
  {
    v31 = v77;
    if (!v76)
    {
      goto LABEL_71;
    }

    v30 = 0;
  }

  sub_1DD63FE58();
  v33 = v32;
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_5_82();
    if (v12 && v30 == v33)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_10_53();

      if ((v31 & 1) == 0)
      {
        goto LABEL_119;
      }
    }
  }

  else if (v32)
  {
    goto LABEL_140;
  }

LABEL_71:
  if (v72)
  {
    v35 = sub_1DD63FE58();
    v37 = v36;
    if (!v73)
    {
      if (v36)
      {
        goto LABEL_138;
      }

      goto LABEL_89;
    }

    v38 = v35;
  }

  else
  {
    v38 = v74;
    if (!v73)
    {
      goto LABEL_89;
    }

    v37 = 0;
  }

  sub_1DD63FE58();
  v40 = v39;
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_5_82();
    if (v12 && v37 == v40)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_10_53();

      if ((v38 & 1) == 0)
      {
        goto LABEL_119;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_140;
  }

LABEL_89:
  if (v69)
  {
    v42 = sub_1DD63FE58();
    v44 = v43;
    if (!v70)
    {
      if (v43)
      {
        goto LABEL_138;
      }

      goto LABEL_107;
    }

    v45 = v42;
  }

  else
  {
    v45 = v71;
    if (!v70)
    {
      goto LABEL_107;
    }

    v44 = 0;
  }

  sub_1DD63FE58();
  v47 = v46;
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_5_82();
    if (v12 && v44 == v47)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_10_53();

      if ((v45 & 1) == 0)
      {
        goto LABEL_119;
      }
    }
  }

  else if (v46)
  {
    goto LABEL_140;
  }

LABEL_107:
  if (v66)
  {
    v49 = sub_1DD63FE58();
    v51 = v50;
    if (!v67)
    {
      if (v50)
      {
        goto LABEL_138;
      }

      goto LABEL_125;
    }

    v52 = v49;
  }

  else
  {
    v52 = v68;
    if (!v67)
    {
      goto LABEL_125;
    }

    v51 = 0;
  }

  sub_1DD63FE58();
  v54 = v53;
  if (!v51)
  {
    if (v53)
    {
      goto LABEL_140;
    }

    goto LABEL_125;
  }

  if (!v53)
  {
    goto LABEL_138;
  }

  OUTLINED_FUNCTION_5_82();
  if (v12 && v51 == v54)
  {

    goto LABEL_125;
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_10_53();

  if (v52)
  {
LABEL_125:
    if (!v63)
    {
      v21 = v65;
      if (!v64)
      {
        goto LABEL_143;
      }

      v58 = 0;
LABEL_130:
      sub_1DD63FE58();
      v60 = v59;
      if (v58)
      {
        if (v59)
        {
          OUTLINED_FUNCTION_5_82();
          if (v12 && v58 == v60)
          {

            v21 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_10_53();
          }

          goto LABEL_141;
        }

        goto LABEL_138;
      }

      if (v59)
      {
LABEL_140:
        v21 = 0;
        goto LABEL_141;
      }

LABEL_143:
      v21 = 1;
      return v21 & 1;
    }

    v56 = sub_1DD63FE58();
    v58 = v57;
    if (v64)
    {
      v21 = v56;
      goto LABEL_130;
    }

    if (!v57)
    {
      goto LABEL_143;
    }

LABEL_138:
    v21 = 0;
    goto LABEL_141;
  }

LABEL_119:
  v21 = 0;
  return v21 & 1;
}

uint64_t static SportsItem.partiallyEqual(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v56 = *(a1 + 32);
  v54 = *(a1 + 40);
  v52 = *(a1 + 48);
  v50 = *(a1 + 56);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v61 = *a2;
  v62 = *a1;
  v63 = *(a2 + 8);
  v57 = *(a2 + 16);
  v58 = *(a1 + 24);
  v59 = *(a2 + 24);
  v60 = *(a1 + 16);
  v53 = *(a2 + 32);
  v55 = *(a2 + 40);
  v49 = *(a2 + 48);
  v51 = *(a2 + 56);
  if (v6)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = *(a1 + 104);
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = *(a2 + 96);
  v10 = *(a2 + 104);

  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = v7;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12;
  }

  if (!v14)
  {
LABEL_20:
    if (v4)
    {
      sub_1DD63FE58();
      v19 = v18;
      if (!v63)
      {
        if (v18)
        {
          goto LABEL_89;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (!v63)
      {
        goto LABEL_38;
      }

      v19 = 0;
    }

    sub_1DD63FE58();
    v21 = v20;
    if (v19)
    {
      if (!v20)
      {
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_5_82();
      v22 = v22 && v19 == v21;
      if (v22)
      {
      }

      else
      {
        v23 = sub_1DD640CD8();

        if ((v23 & 1) == 0)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v20)
    {
      goto LABEL_89;
    }

LABEL_38:
    if (v58)
    {
      v24 = sub_1DD63FE58();
      v26 = v25;
      if (!v59)
      {
        if (v25)
        {
          goto LABEL_89;
        }

        goto LABEL_56;
      }

      v27 = v24;
    }

    else
    {
      v27 = v60;
      if (!v59)
      {
        goto LABEL_56;
      }

      v26 = 0;
    }

    v28 = sub_1DD63FE58();
    if (v26)
    {
      if (!v29)
      {
        goto LABEL_89;
      }

      if (v27 == v28 && v26 == v29)
      {
      }

      else
      {
        v31 = OUTLINED_FUNCTION_7_62(v28, v29, v28);

        if ((v31 & 1) == 0)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v29)
    {
      goto LABEL_89;
    }

LABEL_56:
    if (v54)
    {
      v32 = sub_1DD63FE58();
      v34 = v33;
      if (!v55)
      {
        if (v33)
        {
          goto LABEL_89;
        }

        goto LABEL_74;
      }

      v35 = v32;
    }

    else
    {
      v35 = v56;
      if (!v55)
      {
        goto LABEL_74;
      }

      v34 = 0;
    }

    v36 = sub_1DD63FE58();
    if (v34)
    {
      if (!v37)
      {
        goto LABEL_89;
      }

      if (v35 == v36 && v34 == v37)
      {
      }

      else
      {
        v39 = OUTLINED_FUNCTION_7_62(v36, v37, v36);

        if ((v39 & 1) == 0)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v37)
    {
      goto LABEL_89;
    }

LABEL_74:
    if (v50)
    {
      v40 = sub_1DD63FE58();
      v42 = v41;
      if (!v51)
      {
        if (v41)
        {
          goto LABEL_89;
        }

        goto LABEL_93;
      }

      v43 = v40;
    }

    else
    {
      v43 = v52;
      if (!v51)
      {
        goto LABEL_93;
      }

      v42 = 0;
    }

    v44 = sub_1DD63FE58();
    if (v42)
    {
      if (v45)
      {
        if (v43 != v44 || v42 != v45)
        {
          v47 = OUTLINED_FUNCTION_7_62(v44, v45, v44);

          return v47 & 1;
        }

        goto LABEL_93;
      }

LABEL_89:

LABEL_90:
      v17 = 0;
      return v17 & 1;
    }

    if (v45)
    {
      goto LABEL_89;
    }

LABEL_93:
    v17 = 1;
    return v17 & 1;
  }

  v70[0] = v62;
  v70[1] = v4;
  v70[2] = v60;
  v70[3] = v58;
  v70[4] = v56;
  v70[5] = v54;
  v70[6] = v52;
  v70[7] = v50;
  v15 = *(a1 + 80);
  v71 = *(a1 + 64);
  v72 = v15;
  v73 = v5;
  v74 = v6;
  v75 = *(a1 + 112);
  v64[0] = v61;
  v64[1] = v63;
  v64[2] = v57;
  v64[3] = v59;
  v64[4] = v53;
  v64[5] = v55;
  v64[6] = v49;
  v64[7] = v51;
  v16 = *(a2 + 80);
  v65 = *(a2 + 64);
  v66 = v16;
  v67 = v9;
  v68 = v10;
  v69 = *(a2 + 112);
  v17 = static SportsItem.== infix(_:_:)(v70, v64);
  return v17 & 1;
}

uint64_t sub_1DD5C3BD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F7073 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756761656CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1835099508 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656C687461 && a2 == 0xE700000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64495174726F7073 && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x495165756761656CLL && a2 == 0xE900000000000064;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6449516D616574 && a2 == 0xE700000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x516574656C687461 && a2 == 0xEA00000000006449)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD640CD8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD5C3E54(char a1)
{
  result = 0x74726F7073;
  switch(a1)
  {
    case 1:
      result = 0x65756761656CLL;
      break;
    case 2:
      result = 1835099508;
      break;
    case 3:
      result = 0x6574656C687461;
      break;
    case 4:
      result = 0x64495174726F7073;
      break;
    case 5:
      result = 0x495165756761656CLL;
      break;
    case 6:
      result = 0x6449516D616574;
      break;
    case 7:
      result = 0x516574656C687461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5C3F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5C3BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5C3F60(uint64_t a1)
{
  v2 = sub_1DD5C4228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C3F9C(uint64_t a1)
{
  v2 = sub_1DD5C4228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF618, &qword_1DD65FE98);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = v1[2];
  v37 = v1[3];
  v38 = v9;
  v10 = v1[4];
  v35 = v1[5];
  v36 = v10;
  v11 = v1[6];
  v33 = v1[7];
  v34 = v11;
  v12 = v1[8];
  v31 = v1[9];
  v32 = v12;
  v13 = v1[11];
  v29 = v1[10];
  v30 = v13;
  v14 = v1[13];
  v27 = v1[12];
  v28 = v14;
  v15 = v1[15];
  v25 = v1[14];
  v26 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C4228();
  sub_1DD640EF8();
  v46[1] = 0;
  v16 = v8;
  v17 = v39;
  sub_1DD640BC8();
  if (!v17)
  {
    v18 = v35;
    v19 = v36;
    v21 = v33;
    v20 = v34;
    v22 = v32;
    v46[0] = 1;
    OUTLINED_FUNCTION_9_55(v38, v37, v46);
    v45 = 2;
    OUTLINED_FUNCTION_9_55(v19, v18, &v45);
    v44 = 3;
    OUTLINED_FUNCTION_9_55(v20, v21, &v44);
    v43 = 4;
    OUTLINED_FUNCTION_9_55(v22, v31, &v43);
    v42 = 5;
    OUTLINED_FUNCTION_9_55(v29, v30, &v42);
    v41 = 6;
    OUTLINED_FUNCTION_9_55(v27, v28, &v41);
    v40 = 7;
    OUTLINED_FUNCTION_9_55(v25, v26, &v40);
  }

  return (*(v5 + 8))(v16, v3);
}

unint64_t sub_1DD5C4228()
{
  result = qword_1ECCDF620;
  if (!qword_1ECCDF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF620);
  }

  return result;
}

uint64_t SportsItem.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  v6 = v1[11];
  v7 = v1[13];
  v9 = v1[15];
  if (v1[1])
  {
    sub_1DD640E48();
    sub_1DD63FD28();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1DD640E48();
    if (v2)
    {
LABEL_3:
      sub_1DD640E48();
      sub_1DD63FD28();
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1DD640E48();
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1DD640E48();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1DD640E48();
  sub_1DD63FD28();
  if (v4)
  {
LABEL_5:
    sub_1DD640E48();
    sub_1DD63FD28();
    goto LABEL_10;
  }

LABEL_9:
  sub_1DD640E48();
LABEL_10:
  if (v5)
  {
    sub_1DD640E48();
    sub_1DD63FD28();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1DD640E48();
    if (v6)
    {
LABEL_12:
      sub_1DD640E48();
      sub_1DD63FD28();
      if (v7)
      {
        goto LABEL_13;
      }

LABEL_19:
      sub_1DD640E48();
      if (v9)
      {
        goto LABEL_14;
      }

      return sub_1DD640E48();
    }
  }

  sub_1DD640E48();
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_13:
  sub_1DD640E48();
  sub_1DD63FD28();
  if (!v9)
  {
    return sub_1DD640E48();
  }

LABEL_14:
  sub_1DD640E48();

  return sub_1DD63FD28();
}

uint64_t SportsItem.hashValue.getter()
{
  sub_1DD640E28();
  SportsItem.hash(into:)(v1);
  return sub_1DD640E78();
}

uint64_t SportsItem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF628, &qword_1DD65FEA0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DD5C4228();
  sub_1DD640ED8();
  if (v2)
  {
    v47 = v2;
    OUTLINED_FUNCTION_1_120();
    OUTLINED_FUNCTION_12_44();
    __swift_destroy_boxed_opaque_existential_1(v48);
    v54 = 0;
    v55 = 0;
    v56 = v7;
    v57 = v5;
    v58 = v12;
    v59 = v11;
    v60 = a2;
    v61 = v2;
    v62 = v45;
    v63 = v46;
    OUTLINED_FUNCTION_8_66();
    v64 = 0;
    v65 = 0;
  }

  else
  {
    LOBYTE(v54) = 0;
    v43 = sub_1DD640AD8();
    v44 = v14;
    v41 = OUTLINED_FUNCTION_2_106(1);
    v42 = v15;
    v16 = OUTLINED_FUNCTION_2_106(2);
    v17 = a2;
    v40 = v18;
    v19 = OUTLINED_FUNCTION_2_106(3);
    v39 = v20;
    v21 = OUTLINED_FUNCTION_2_106(4);
    v46 = v22;
    v23 = OUTLINED_FUNCTION_2_106(5);
    v45 = v21;
    v49 = v23;
    v52 = v24;
    v50 = OUTLINED_FUNCTION_2_106(6);
    v51 = v25;
    v66 = 7;
    v26 = sub_1DD640AD8();
    v47 = 0;
    v27 = v26;
    v28 = v10;
    v30 = v29;
    (*(v7 + 8))(v28, v5);
    v32 = v43;
    v31 = v44;
    v53[0] = v43;
    v53[1] = v44;
    v53[2] = v41;
    v53[3] = v42;
    v53[4] = v16;
    v37 = v19;
    v38 = v16;
    v33 = v40;
    v53[5] = v40;
    v53[6] = v19;
    v34 = v39;
    v53[7] = v39;
    v53[8] = v21;
    v35 = v46;
    v53[9] = v46;
    v53[10] = v49;
    v53[11] = v52;
    v53[12] = v50;
    v53[13] = v51;
    v53[14] = v27;
    v53[15] = v30;
    memcpy(v17, v53, 0x80uLL);
    sub_1DD400BFC(v53, &v54);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v54 = v32;
    v55 = v31;
    v56 = v41;
    v57 = v42;
    v58 = v38;
    v59 = v33;
    v60 = v37;
    v61 = v34;
    v62 = v45;
    v63 = v35;
    OUTLINED_FUNCTION_8_66();
    v64 = v27;
    v65 = v30;
  }

  return sub_1DD400C58(&v54);
}

uint64_t sub_1DD5C48A8(uint64_t a1)
{
  sub_1DD640E28();
  SportsItem.hash(into:)(v2);
  return sub_1DD640E78();
}

unint64_t sub_1DD5C48E8()
{
  result = qword_1ECCDF630;
  if (!qword_1ECCDF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF630);
  }

  return result;
}

uint64_t sub_1DD5C493C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_1DD5C4990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5C4AF4()
{
  result = qword_1ECCDF638;
  if (!qword_1ECCDF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF638);
  }

  return result;
}

unint64_t sub_1DD5C4B4C()
{
  result = qword_1ECCDF640;
  if (!qword_1ECCDF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF640);
  }

  return result;
}

unint64_t sub_1DD5C4BA4()
{
  result = qword_1ECCDF648;
  if (!qword_1ECCDF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF648);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_89()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_10_53()
{
}

uint64_t SportsRecommendationQuery.sportsPersonalizationEntities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1DD5C4CAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001DD674540 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD640CD8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD5C4D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5C4CAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD5C4D78(uint64_t a1)
{
  v2 = sub_1DD5C4F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C4DB4(uint64_t a1)
{
  v2 = sub_1DD5C4F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SportsRecommendationQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF650, &qword_1DD660110);
  OUTLINED_FUNCTION_0();
  v27 = v26;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1DD5C4F74();

  sub_1DD640EF8();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF660, &qword_1DD660118);
  sub_1DD5C51AC(&qword_1ECCDF668, sub_1DD5C4FC8, MEMORY[0x1E69E6300]);
  sub_1DD640C68();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD5C4F74()
{
  result = qword_1ECCDF658;
  if (!qword_1ECCDF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF658);
  }

  return result;
}

unint64_t sub_1DD5C4FC8()
{
  result = qword_1ECCDF670;
  if (!qword_1ECCDF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF670);
  }

  return result;
}

void SportsRecommendationQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF678, &unk_1DD660120);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1DD5C4F74();
  sub_1DD640ED8();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF660, &qword_1DD660118);
    sub_1DD5C51AC(&qword_1ECCDF680, sub_1DD5C5224, MEMORY[0x1E69E6330]);
    sub_1DD640B78();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD5C51AC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF660, &qword_1DD660118);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD5C5224()
{
  result = qword_1ECCDF688;
  if (!qword_1ECCDF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF688);
  }

  return result;
}

uint64_t SportsPersonalizationEntity.sportsItem.getter()
{
  OUTLINED_FUNCTION_5_83();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_5_83();
  memcpy(v3, v4, v5);
  return sub_1DD5C52F8(v8, v7);
}

uint64_t sub_1DD5C52F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF690, &qword_1DD660BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *SportsPersonalizationEntity.sportsItem.setter(const void *a1)
{
  OUTLINED_FUNCTION_5_83();
  memcpy(v3, v4, v5);
  sub_1DD3ADFD0(&v7, &qword_1ECCDF690, &qword_1DD660BF0);
  return memcpy(v1, a1, 0x80uLL);
}

void *SportsPersonalizationEntity.init(sportsItem:personalizationLevel:)@<X0>(const void *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a2;
  sub_1DD5C5498(v7);
  memcpy(__dst, v7, sizeof(__dst));
  sub_1DD3ADFD0(__dst, &qword_1ECCDF690, &qword_1DD660BF0);
  result = memcpy(a3, a1, 0x80uLL);
  a3[128] = v5;
  return result;
}

double sub_1DD5C5498(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1DD642F70;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  return result;
}

BOOL static SportsPersonalizationEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_121(v15);
  v4 = *(a1 + 128);
  OUTLINED_FUNCTION_3_90(v16);
  v5 = *(a2 + 128);
  OUTLINED_FUNCTION_1_121(__src);
  OUTLINED_FUNCTION_3_90(&__src[128]);
  OUTLINED_FUNCTION_1_121(v17);
  if (OUTLINED_FUNCTION_0_99(v17) == 1)
  {
    OUTLINED_FUNCTION_3_90(__dst);
    if (OUTLINED_FUNCTION_0_99(__dst) == 1)
    {
      OUTLINED_FUNCTION_1_121(v13);
      sub_1DD5C52F8(v15, v11);
      sub_1DD5C52F8(v16, v11);
      sub_1DD3ADFD0(v13, &qword_1ECCDF690, &qword_1DD660BF0);
      goto LABEL_10;
    }

    sub_1DD5C52F8(v15, v13);
    sub_1DD5C52F8(v16, v13);
LABEL_7:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD3ADFD0(__dst, &qword_1ECCDF698, &qword_1DD660130);
    return 0;
  }

  OUTLINED_FUNCTION_1_121(v13);
  OUTLINED_FUNCTION_1_121(v11);
  OUTLINED_FUNCTION_3_90(__dst);
  if (OUTLINED_FUNCTION_0_99(__dst) == 1)
  {
    OUTLINED_FUNCTION_1_121(v10);
    sub_1DD5C52F8(v15, v9);
    sub_1DD5C52F8(v16, v9);
    sub_1DD5C52F8(v13, v9);
    sub_1DD400C58(v10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_90(v10);
  sub_1DD5C52F8(v15, v9);
  sub_1DD5C52F8(v16, v9);
  sub_1DD5C52F8(v13, v9);
  v7 = static SportsItem.== infix(_:_:)(v11, v10);
  memcpy(v8, v10, sizeof(v8));
  sub_1DD400C58(v8);
  memcpy(v9, v11, sizeof(v9));
  sub_1DD400C58(v9);
  OUTLINED_FUNCTION_1_121(v10);
  sub_1DD3ADFD0(v10, &qword_1ECCDF690, &qword_1DD660BF0);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v4 != 5)
  {
    return v5 != 5 && (sub_1DD3AF3B8(v4, v5) & 1) != 0;
  }

  return v5 == 5;
}

uint64_t sub_1DD5C56F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74497374726F7073 && a2 == 0xEA00000000006D65;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DD674560 == a2)
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

uint64_t sub_1DD5C57CC(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x74497374726F7073;
  }
}

uint64_t sub_1DD5C5814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5C56F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5C583C(uint64_t a1)
{
  v2 = sub_1DD5C5E1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C5878(uint64_t a1)
{
  v2 = sub_1DD5C5E1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SportsPersonalizationEntity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_93();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF6A0, &qword_1DD660138);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v38[-v32 - 8];
  OUTLINED_FUNCTION_5_83();
  memcpy(v34, v35, v36);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DD5C52F8(v40, v39);
  sub_1DD5C5E1C();
  sub_1DD640EF8();
  memcpy(v39, v40, sizeof(v39));
  sub_1DD5C5E70();
  sub_1DD640C08();
  memcpy(v38, v39, sizeof(v38));
  sub_1DD3ADFD0(v38, &qword_1ECCDF690, &qword_1DD660BF0);
  if (!v25)
  {
    sub_1DD5C5EC4();
    sub_1DD640C08();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_86();
}

void SportsPersonalizationEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_93();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v38 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF6C0, &qword_1DD660140);
  OUTLINED_FUNCTION_0();
  v32 = v31;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v39[-v34 - 8];
  sub_1DD5C5498(v46);
  memcpy(v45, v46, sizeof(v45));
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1DD5C5E1C();
  sub_1DD640ED8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    memcpy(v43, v45, sizeof(v43));
    v44 = 5;
  }

  else
  {
    v36 = v38;
    a14 = 0;
    sub_1DD5C5F18();
    OUTLINED_FUNCTION_8_67(&type metadata for SportsItem, &a14);
    memcpy(v40, v42, sizeof(v40));
    memcpy(v41, v45, sizeof(v41));
    sub_1DD3ADFD0(v41, &qword_1ECCDF690, &qword_1DD660BF0);
    memcpy(v45, v40, sizeof(v45));
    a12 = 1;
    sub_1DD5C5F6C();
    OUTLINED_FUNCTION_8_67(&type metadata for PersonalizationLevel, &a12);
    (*(v32 + 8))(v35, v30);
    v37 = a13;
    memcpy(v39, v40, 0x80uLL);
    v39[128] = a13;
    memcpy(v36, v39, 0x81uLL);
    sub_1DD3C4DAC(v39, v43);
    __swift_destroy_boxed_opaque_existential_1(v28);
    memcpy(v43, v40, sizeof(v43));
    v44 = v37;
  }

  sub_1DD3C4E08(v43);
  OUTLINED_FUNCTION_86();
}

SiriInference::PersonalizationLevel_optional __swiftcall PersonalizationLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationLevel.rawValue.getter()
{
  result = 0x74726F7073;
  switch(*v0)
  {
    case 1:
      result = 0x65756761656CLL;
      break;
    case 2:
      result = 1835099508;
      break;
    case 3:
      result = 0x6574656C687461;
      break;
    case 4:
      result = 7105633;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD5C5E1C()
{
  result = qword_1ECCDF6A8;
  if (!qword_1ECCDF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6A8);
  }

  return result;
}

unint64_t sub_1DD5C5E70()
{
  result = qword_1ECCDF6B0;
  if (!qword_1ECCDF6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6B0);
  }

  return result;
}

unint64_t sub_1DD5C5EC4()
{
  result = qword_1ECCDF6B8;
  if (!qword_1ECCDF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6B8);
  }

  return result;
}

unint64_t sub_1DD5C5F18()
{
  result = qword_1ECCDF6C8;
  if (!qword_1ECCDF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6C8);
  }

  return result;
}

unint64_t sub_1DD5C5F6C()
{
  result = qword_1ECCDF6D0;
  if (!qword_1ECCDF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6D0);
  }

  return result;
}

uint64_t sub_1DD5C5FE4@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalizationLevel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DD5C60C0()
{
  result = qword_1ECCDF6D8;
  if (!qword_1ECCDF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference10SportsItemVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5C614C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 129))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5C61AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalizationLevel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsPersonalizationEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SportsRecommendationQuery.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD5C6490()
{
  result = qword_1ECCDF6E0;
  if (!qword_1ECCDF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6E0);
  }

  return result;
}

unint64_t sub_1DD5C64E8()
{
  result = qword_1ECCDF6E8;
  if (!qword_1ECCDF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6E8);
  }

  return result;
}

unint64_t sub_1DD5C6540()
{
  result = qword_1ECCDF6F0;
  if (!qword_1ECCDF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6F0);
  }

  return result;
}

unint64_t sub_1DD5C6598()
{
  result = qword_1ECCDF6F8;
  if (!qword_1ECCDF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF6F8);
  }

  return result;
}

unint64_t sub_1DD5C65F0()
{
  result = qword_1ECCDF700;
  if (!qword_1ECCDF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF700);
  }

  return result;
}

unint64_t sub_1DD5C6648()
{
  result = qword_1ECCDF708;
  if (!qword_1ECCDF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF708);
  }

  return result;
}

unint64_t sub_1DD5C669C()
{
  result = qword_1ECCDF710;
  if (!qword_1ECCDF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF710);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_90(void *a1)
{

  return memcpy(a1, v1, 0x80uLL);
}

uint64_t sub_1DD5C670C(uint64_t a1)
{
  v2 = sub_1DD5C6898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C6748(uint64_t a1)
{
  v2 = sub_1DD5C6898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsResolutionContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF718, &qword_1DD660670);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C6898();
  sub_1DD640EF8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DD5C6898()
{
  result = qword_1ECCDF720;
  if (!qword_1ECCDF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF720);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsResolutionContext(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD5C6A04()
{
  result = qword_1ECCDF728;
  if (!qword_1ECCDF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF728);
  }

  return result;
}

unint64_t sub_1DD5C6A5C()
{
  result = qword_1ECCDF730;
  if (!qword_1ECCDF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF730);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsResolutionInfo(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD5C6B60(uint64_t a1)
{
  v2 = sub_1DD5C6CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C6B9C(uint64_t a1)
{
  v2 = sub_1DD5C6CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsResolutionSpec.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF738, &qword_1DD6607C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C6CEC();
  sub_1DD640EF8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DD5C6CEC()
{
  result = qword_1ECCDF740;
  if (!qword_1ECCDF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF740);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsResolutionSpec(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD5C6E58()
{
  result = qword_1ECCDF748;
  if (!qword_1ECCDF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF748);
  }

  return result;
}

unint64_t sub_1DD5C6EB0()
{
  result = qword_1ECCDF750;
  if (!qword_1ECCDF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF750);
  }

  return result;
}

uint64_t sub_1DD5C6F04(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC7E0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD5CC868(v6, &qword_1ECCDCA60, &qword_1DD649F18, sub_1DD5CCBA0, sub_1DD5CC984);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD5C6FA8(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC7F8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD5CC868(v6, &qword_1ECCDCA58, &qword_1DD649F08, sub_1DD5CD1CC, sub_1DD5CCA7C);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD5C704C(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v15 = a4;
    v9 = a2(v6, 0);
    v10 = a3(&v16, v9 + 32, v6, a1);
    v11 = v16;

    result = sub_1DD3AA5A4(v11);
    if (v10 != v6)
    {
      __break(1u);
      return result;
    }

    a4 = v15;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v17 = v9;
  v13 = v5;
  a4(&v17);
  v14 = v17;
  if (v13)
  {
  }

  return v14;
}

uint64_t SportsResolver.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD63F0C8();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16 - v12;
  (*(v5 + 104))(v9, *MEMORY[0x1E69D29C8], v3, v11);
  sub_1DD63F2C8();
  (*(v5 + 8))(v9, v3);
  v14 = sub_1DD63F308();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  return sub_1DD4DDCBC(v13, a1, &qword_1ECCDCCE8, &unk_1DD64AF90);
}

uint64_t SportsResolver.makeRecommendation(query:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD640478();
  OUTLINED_FUNCTION_0();
  v24 = v4;
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  sub_1DD640438();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v9 = sub_1DD63FBD8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_2();
  v10 = type metadata accessor for SELFLoggingService(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v23 = *a1;
  sub_1DD63F178();
  v22 = sub_1DD406E2C();
  sub_1DD63FB98();
  v29[5] = MEMORY[0x1E69E7CC0];
  sub_1DD3FAC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FC2BC();
  sub_1DD640718();
  (*(v24 + 104))(v7, *MEMORY[0x1E69E8090], v25);
  *(v14 + *(v11 + 28)) = sub_1DD6404A8();
  sub_1DD504CCC(3, sub_1DD5C780C, v29, v15, v16, v17, v18, v19, v21, v22, SWORD1(v22), SWORD2(v22), SBYTE6(v22), SHIBYTE(v22), v23, v24, v25, v26, a2, v28, v29[0], v29[1], v26, v23);
  return sub_1DD4A562C(v14);
}

void *sub_1DD5C75AC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v20 = a1;
  result = sub_1DD5C7960(&v20, __src);
  if (!v2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v15[0] = a1;
    v6 = sub_1DD5C7E44(v15);
    memcpy(v15, __dst, sizeof(v15));
    sub_1DD5C8470(v15, v6, v16);

    sub_1DD390754(__dst, &qword_1ECCDEB48, &unk_1DD65B2C0);
    memcpy(v19, v16, 0x81uLL);
    if (qword_1ECCDB0D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD63F9F8();
    __swift_project_value_buffer(v7, qword_1ECD0DDD8);
    sub_1DD4DDC08(v19, v15, &qword_1ECCDF758, &qword_1DD660918);
    v8 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    sub_1DD390754(v19, &qword_1ECCDF758, &qword_1DD660918);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15[0] = v11;
      *v10 = 136315138;
      v12 = sub_1DD4A8508();
      v14 = sub_1DD39565C(v12, v13, v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DD38D000, v8, v9, "makeRecommendation(). SportsItem recommendation: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12B3DA0](v11, -1, -1);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
    }

    return memcpy(a2, v19, 0x81uLL);
  }

  return result;
}

uint64_t type metadata accessor for SportsResolver(uint64_t a1)
{
  result = qword_1EE165980;
  if (!qword_1EE165980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5C789C(uint64_t a1)
{
  sub_1DD5C7908(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD5C7908(uint64_t a1)
{
  if (!qword_1EE163988)
  {
    sub_1DD63F308();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE163988);
    }
  }
}

void *sub_1DD5C7960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (memmove(&__dst, (v4 + 32), 0x80uLL), OUTLINED_FUNCTION_0_99(&__dst) != 1))
  {
    v10 = *(v4 + 160);
    __src[20] = v2;
    switch(v10)
    {
      case 1:
        v34 = 0;
        v35 = 0;
        v29 = 0;
        v30 = 0;
        v36 = v41;
        v37 = 0;
        v31 = 0xE000000000000000;
        v32 = v49;
        v33 = 0;
        v12 = v42;
        v13 = 0xE000000000000000;
        v14 = 0xE000000000000000;
        v15 = 0xE000000000000000;
        v19 = v50;
        goto LABEL_16;
      case 2:
        v36 = 0;
        v37 = 0;
        v33 = 0;
        v34 = 0;
        v35 = v43;
        v31 = 0xE000000000000000;
        v32 = 0;
        v29 = 0;
        v30 = v51;
        v12 = 0xE000000000000000;
        v13 = v44;
        v14 = 0xE000000000000000;
        v15 = 0xE000000000000000;
        v19 = 0xE000000000000000;
        v20 = v52;
        goto LABEL_17;
      case 3:
        v36 = 0;
        v37 = 0;
        v32 = 0;
        v33 = 0;
        v34 = v45;
        v35 = 0;
        v30 = 0;
        v31 = 0xE000000000000000;
        v29 = v53;
        v12 = 0xE000000000000000;
        v13 = 0xE000000000000000;
        v14 = v46;
        v15 = 0xE000000000000000;
        v19 = 0xE000000000000000;
        v20 = 0xE000000000000000;
        v18 = v54;
        goto LABEL_18;
      case 4:
      case 5:
        v11 = v40;
        v12 = v42;
        v36 = v41;
        v37 = __dst;
        v13 = v44;
        v14 = v46;
        v34 = v45;
        v35 = v43;
        v15 = v48;
        v16 = v50;
        v32 = v49;
        v33 = v47;
        v17 = v52;
        v18 = v54;
        v29 = v53;
        v30 = v51;

        v31 = v11;

        v19 = v16;
        v20 = v17;
        goto LABEL_18;
      default:
        v35 = 0;
        v36 = 0;
        v29 = 0;
        v30 = 0;
        v37 = __dst;
        v12 = 0xE000000000000000;
        v33 = v47;
        v34 = 0;
        v31 = v40;
        v32 = 0;
        v13 = 0xE000000000000000;
        v14 = 0xE000000000000000;
        v15 = v48;
        v19 = 0xE000000000000000;
LABEL_16:
        v20 = 0xE000000000000000;
LABEL_17:
        v18 = 0xE000000000000000;
LABEL_18:

        __src[0] = v37;
        __src[1] = v31;
        __src[2] = v36;
        __src[3] = v12;
        __src[4] = v35;
        __src[5] = v13;
        __src[6] = v34;
        __src[7] = v14;
        __src[8] = v33;
        __src[9] = v15;
        __src[10] = v32;
        __src[11] = v19;
        __src[12] = v30;
        __src[13] = v20;
        __src[14] = v29;
        __src[15] = v18;
        LOBYTE(__src[16]) = 0;
        __src[17] = 1;
        if (qword_1ECCDB0D0 != -1)
        {
          swift_once();
        }

        v21 = sub_1DD63F9F8();
        __swift_project_value_buffer(v21, qword_1ECD0DDD8);
        sub_1DD4DDC08(__src, v38, &qword_1ECCDEB48, &unk_1DD65B2C0);
        v22 = sub_1DD63F9D8();
        v23 = sub_1DD640368();
        sub_1DD390754(__src, &qword_1ECCDEB48, &unk_1DD65B2C0);
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v38[0] = v25;
          *v24 = 136315138;
          v26 = sub_1DD5593B0();
          v28 = sub_1DD39565C(v26, v27, v38);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_1DD38D000, v22, v23, "resolveSportsPersonalizationLevel(). sportsItemWithSignal: %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x1E12B3DA0](v25, -1, -1);
          MEMORY[0x1E12B3DA0](v24, -1, -1);
        }

        result = memcpy(a2, __src, 0x90uLL);
        break;
    }
  }

  else
  {
    if (qword_1ECCDB0D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    __swift_project_value_buffer(v5, qword_1ECD0DDD8);
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DD38D000, v6, v7, "resolveSportsPersonalizationLevel().\nInput sportsPersonalizationEntities[0].sportsItem in sportsRecommendationQuery is nil.", v8, 2u);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }

    if (qword_1ECCDB138 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(__src, &xmmword_1ECCDF518, 0x80uLL);
    memcpy(a2, &xmmword_1ECCDF518, 0x80uLL);
    *(a2 + 128) = 0;
    *(a2 + 136) = 1;
    return sub_1DD400BFC(__src, v38);
  }

  return result;
}

uint64_t sub_1DD5C7E44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    if (qword_1ECCDB0D0 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = 0x1ECCDB000uLL;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v6 = (v4 + 136 * v3);
  while (v2 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    memcpy(__dst, v6, 0x81uLL);
    memcpy(v39, v6, 0x80uLL);
    if (OUTLINED_FUNCTION_0_99(v39) == 1)
    {
      goto LABEL_14;
    }

    memcpy(v34, __dst, sizeof(v34));
    sub_1DD400BFC(v34, v33);
    sub_1DD400BFC(v34, v33);
    if (*(v5 + 312) != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(v35, &xmmword_1ECCDF518, sizeof(v35));
    memcpy(__src, &xmmword_1ECCDF518, sizeof(__src));
    nullsub_1();
    memcpy(v33, __dst, 0x80uLL);
    memcpy(&v33[128], __src, 0x80uLL);
    memcpy(v37, __dst, sizeof(v37));
    if (OUTLINED_FUNCTION_0_99(v37) != 1)
    {
      memcpy(v32, v33, sizeof(v32));
      memcpy(v30, v33, sizeof(v30));
      memcpy(v31, &v33[128], 0x80uLL);
      if (OUTLINED_FUNCTION_0_99(v31) == 1)
      {
        memcpy(v29, v33, sizeof(v29));
        sub_1DD400BFC(v35, v28);
        sub_1DD4DDC08(v32, v28, &qword_1ECCDF690, &qword_1DD660BF0);
        sub_1DD400C58(v29);
LABEL_18:
        memcpy(v31, v33, sizeof(v31));
        sub_1DD390754(v31, &qword_1ECCDF698, &qword_1DD660130);
LABEL_19:
        v8 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v24;
        v10 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD42BECC(0, *(v24 + 16) + 1, 1);
          v8 = v40;
        }

        v4 = v1 + 32;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1DD42BECC(v11 > 1, v12 + 1, 1);
          v4 = v1 + 32;
          v8 = v40;
        }

        ++v3;
        *(v8 + 16) = v12 + 1;
        v24 = v8;
        memcpy((v8 + 136 * v12 + 32), __dst, 0x81uLL);
        v5 = v10;
        goto LABEL_3;
      }

      memcpy(v26, &v33[128], sizeof(v26));
      sub_1DD400BFC(v35, v25);
      sub_1DD4DDC08(v32, v25, &qword_1ECCDF690, &qword_1DD660BF0);
      v7 = static SportsItem.== infix(_:_:)(v30, v26);
      memcpy(v27, v26, sizeof(v27));
      sub_1DD400C58(v27);
      memcpy(v28, v30, sizeof(v28));
      sub_1DD400C58(v28);
      memcpy(v29, v33, sizeof(v29));
      sub_1DD390754(v29, &qword_1ECCDF690, &qword_1DD660BF0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_14:
      sub_1DD3C4E08(__dst);
      goto LABEL_15;
    }

    memcpy(v31, &v33[128], 0x80uLL);
    if (OUTLINED_FUNCTION_0_99(v31) != 1)
    {
      sub_1DD400BFC(v35, v32);
      goto LABEL_18;
    }

    sub_1DD400BFC(v35, v32);
    sub_1DD3C4E08(__dst);
    memcpy(v32, v33, sizeof(v32));
    sub_1DD390754(v32, &qword_1ECCDF690, &qword_1DD660BF0);
LABEL_15:
    v6 += 136;
    ++v3;
  }

  v13 = *(v24 + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v37[0] = MEMORY[0x1E69E7CC0];
  sub_1DD42BEAC(0, v13, 0);
  v14 = 0;
  v15 = v37[0];
  v16 = 32;
  while (v14 < *(v24 + 16))
  {
    memcpy(v31, (v24 + v16), 0x80uLL);
    memmove(v33, (v24 + v16), 0x80uLL);
    result = OUTLINED_FUNCTION_0_99(v33);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    memcpy(__dst, v31, 0x80uLL);
    sub_1DD400BFC(__dst, v39);
    v37[0] = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1DD42BEAC(v18 > 1, v19 + 1, 1);
      v15 = v37[0];
    }

    *(v15 + 16) = v19 + 1;
    memcpy((v15 + (v19 << 7) + 32), v33, 0x80uLL);
    if (v13 - 1 == v14)
    {

      return v15;
    }

    v16 += 136;
    ++v14;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_34:
  v20 = sub_1DD63F9F8();
  __swift_project_value_buffer(v20, qword_1ECD0DDD8);
  v21 = sub_1DD63F9D8();
  v22 = sub_1DD640368();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DD38D000, v21, v22, "resolveSportsItemCandidates().\nInput sportsPersonalizationEntities in sportsRecommendationQuery is nil.", v23, 2u);
    MEMORY[0x1E12B3DA0](v23, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1DD5C8470@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v474 = a2;
  v479 = sub_1DD63F148();
  v484 = *(v479 - 8);
  MEMORY[0x1EEE9AC00](v479);
  v483 = &v468 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE588, &qword_1DD657E40);
  MEMORY[0x1EEE9AC00](v491);
  *&v490 = &v468 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v489 = &v468 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v488 = &v468 - v12;
  v493 = sub_1DD63F2B8();
  v13 = *(v493 - 8);
  MEMORY[0x1EEE9AC00](v493);
  v482 = &v468 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v485 = &v468 - v16;
  v17 = sub_1DD63F028();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v476 = &v468 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v481 = &v468 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v498 = &v468 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v468 - v25;
  v497 = sub_1DD63F308();
  v492 = *(v497 - 1);
  MEMORY[0x1EEE9AC00](v497);
  v487 = &v468 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_1DD63F428();
  v499 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v471 = (&v468 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v486 = &v468 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v496 = (&v468 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v495 = &v468 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v494 = &v468 - v37;
  memcpy(v510, a1, sizeof(v510));
  memcpy(v504, a1, 0x80uLL);
  sub_1DD400BFC(v510, v503);
  if (qword_1ECCDB138 != -1)
  {
    goto LABEL_284;
  }

  while (1)
  {
    swift_beginAccess();
    memcpy(v511, &xmmword_1ECCDF518, sizeof(v511));
    memcpy(v503, &xmmword_1ECCDF518, 0x80uLL);
    sub_1DD400BFC(v511, v505);
    v38 = static SportsItem.== infix(_:_:)(v504, v503);
    memcpy(v512, v503, sizeof(v512));
    sub_1DD400C58(v512);
    memcpy(__dst, v504, 0x80uLL);
    sub_1DD400C58(__dst);
    if (v38)
    {
      if (qword_1ECCDB0D0 != -1)
      {
LABEL_286:
        swift_once();
      }

      v39 = sub_1DD63F9F8();
      __swift_project_value_buffer(v39, qword_1ECD0DDD8);
      v40 = sub_1DD63F9D8();
      v41 = sub_1DD640368();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1DD38D000, v40, v41, "makeRecommendationInternal(). sportsItemWithSignal.value is EmptySportsItem.\nReturning .none #1.", v42, 2u);
        MEMORY[0x1E12B3DA0](v42, -1, -1);
      }

      sub_1DD472D70(v504);
      v43 = v504;
      v44 = a3;
      return memcpy(v44, v43, 0x81uLL);
    }

    v468 = v13;
    v473 = v4;
    if (qword_1ECCDB0D0 != -1)
    {
      swift_once();
    }

    v46 = sub_1DD63F9F8();
    v47 = __swift_project_value_buffer(v46, qword_1ECD0DDD8);
    sub_1DD400BFC(v510, v504);
    v475 = v47;
    v48 = sub_1DD63F9D8();
    v49 = sub_1DD640368();
    sub_1DD400C58(v510);
    v50 = os_log_type_enabled(v48, v49);
    v469 = a3;
    v500 = isUniquelyReferenced_nonNull_native;
    v472 = v18;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v505[0] = v52;
      *v51 = 136315138;
      memcpy(v504, v510, 0x80uLL);
      sub_1DD400BFC(v510, v503);
      v53 = sub_1DD63FE38();
      v55 = sub_1DD39565C(v53, v54, v505);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_1DD38D000, v48, v49, "makeRecommendationInternal(). sportsItemWithSignal.value = %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1E12B3DA0](v52, -1, -1);
      MEMORY[0x1E12B3DA0](v51, -1, -1);
    }

    v56 = v474;
    v57 = v499;
    v58 = v26;
    v480 = *(v474 + 16);
    if (v480)
    {

      v59 = sub_1DD63F9D8();
      v60 = sub_1DD640368();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v504[0] = v62;
        *v61 = 136315138;
        v63 = MEMORY[0x1E12B2430](v56, &type metadata for SportsItem);
        v470 = v17;
        v65 = sub_1DD39565C(v63, v64, v504);
        v17 = v470;

        *(v61 + 4) = v65;
        _os_log_impl(&dword_1DD38D000, v59, v60, "makeRecommendationInternal(). Received a list of SportsItems,\nsportsItemsFromPirene = %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        MEMORY[0x1E12B3DA0](v62, -1, -1);
        MEMORY[0x1E12B3DA0](v61, -1, -1);
      }

      a3 = v484;
      v57 = v499;
      v66 = v500;
      v58 = v26;
    }

    else
    {
      v67 = sub_1DD63F9D8();
      v68 = sub_1DD640368();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1DD38D000, v67, v68, "makeRecommendationInternal(). Received an Empty list of SportsItems from Pegasus.", v69, 2u);
        MEMORY[0x1E12B3DA0](v69, -1, -1);
      }

      a3 = v484;
      v66 = v500;
    }

    v70 = v486;
    v71 = v510[1];
    v72 = MEMORY[0x1E69D2AB0];
    if (v510[1])
    {
      v73 = v510[0];
      v74 = v494;
      *v494 = 0x6D614E74726F7073;
      v74[1] = 0xE900000000000065;
      v74[2] = v73;
      v74[3] = v71;
      (*(v57 + 104))();

      sub_1DD3C0E4C();
      v76 = v75;
      v77 = *(v75 + 16);
      if (v77 >= *(v75 + 24) >> 1)
      {
        sub_1DD3C0E4C();
        v76 = v461;
      }

      *(v76 + 16) = v77 + 1;
      v78 = *(v57 + 32);
      v79 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v478 = v76;
      v80 = v76 + v79 + *(v57 + 72) * v77;
      v66 = v500;
      v78(v80, v494, v500);
    }

    else
    {
      v478 = MEMORY[0x1E69E7CC0];
    }

    v81 = v510[3];
    if (v510[3])
    {
      v82 = v510[2];
      v83 = v495;
      *v495 = 0x614E65756761656CLL;
      *(v83 + 1) = 0xEA0000000000656DLL;
      *(v83 + 2) = v82;
      *(v83 + 3) = v81;
      (*(v57 + 104))();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v84 = v478;
      }

      else
      {
        sub_1DD3C0E4C();
        v84 = v462;
      }

      v85 = *(v84 + 16);
      if (v85 >= *(v84 + 24) >> 1)
      {
        sub_1DD3C0E4C();
        v84 = v463;
      }

      *(v84 + 16) = v85 + 1;
      v86 = *(v57 + 32);
      v87 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v478 = v84;
      v88 = v84 + v87 + *(v57 + 72) * v85;
      v66 = v500;
      v86(v88, v495, v500);
    }

    v89 = v510[5];
    if (v510[5])
    {
      v90 = v510[4];
      v91 = v496;
      *v496 = 0x656D614E6D616574;
      v91[1] = 0xE800000000000000;
      v91[2] = v90;
      v91[3] = v89;
      (*(v57 + 104))();

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v92 = v478;
      }

      else
      {
        sub_1DD3C0E4C();
        v92 = v464;
      }

      v93 = *(v92 + 16);
      if (v93 >= *(v92 + 24) >> 1)
      {
        sub_1DD3C0E4C();
        v92 = v465;
      }

      *(v92 + 16) = v93 + 1;
      v94 = *(v57 + 32);
      v95 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v478 = v92;
      v96 = v92 + v95 + *(v57 + 72) * v93;
      v66 = v500;
      v94(v96, v496, v500);
    }

    v97 = v510[7];
    if (v510[7])
    {
      v98 = v510[6];
      *v70 = 0x4E6574656C687461;
      v70[1] = 0xEB00000000656D61;
      v70[2] = v98;
      v70[3] = v97;
      (*(v57 + 104))(v70, *v72, v66);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v99 = v478;
      }

      else
      {
        sub_1DD3C0E4C();
        v99 = v466;
      }

      v100 = *(v99 + 16);
      if (v100 >= *(v99 + 24) >> 1)
      {
        sub_1DD3C0E4C();
        v99 = v467;
      }

      *(v99 + 16) = v100 + 1;
      v101 = *(v57 + 32);
      v102 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v478 = v99;
      v101(v99 + v102 + *(v57 + 72) * v100, v70, v66);
    }

    sub_1DD4DDC08(v477, v58, &qword_1ECCDCCE8, &unk_1DD64AF90);
    v103 = v497;
    if (__swift_getEnumTagSinglePayload(v58, 1, v497) == 1)
    {
      sub_1DD390754(v58, &qword_1ECCDCCE8, &unk_1DD64AF90);
      v104 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      (*(v492 + 32))(v487, v58, v103);
      v105 = v476;
      sub_1DD63F018();
      v106 = v481;
      sub_1DD63F008();
      v107 = v17;
      v470 = v17;
      v108 = *(v472 + 8);
      v472 += 8;
      v108(v105, v107);
      v109 = v471;
      *v471 = v478;
      (*(v57 + 104))(v109, *MEMORY[0x1E69D2AA8], v66);

      sub_1DD63EFD8();
      (*(v57 + 8))(v109, v66);
      v500 = v108;
      v108(v106, v470);
      v110 = v482;
      sub_1DD63F2A8();
      v111 = v485;
      sub_1DD63F238();
      v112 = v492;
      v499 = v468[1];
      (v499)(v110, v493);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF468, &qword_1DD65F508);
      v113 = sub_1DD63F1C8();
      v114 = *(v113 - 8);
      v115 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_1DD643F90;
      (*(v114 + 104))(v116 + v115, *MEMORY[0x1E69D2A38], v113);
      v117 = v487;
      v118 = v473;
      v119 = sub_1DD63F208();
      v473 = v118;
      if (v118)
      {

        (v499)(v111, v493);
        (v500)(v498, v470);
        (*(v112 + 8))(v117, v497);
      }

      v120 = v119;

      (v499)(v111, v493);
      (v500)(v498, v470);
      (*(v112 + 8))(v117, v497);
      v104 = v120;
      a3 = v484;
    }

    v26 = *(v104 + 2);
    v121 = MEMORY[0x1E69E7CC0];
    v498 = v104;
    if (!v26)
    {
      v497 = MEMORY[0x1E69E7CC0];
      goto LABEL_81;
    }

    v504[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42C094(0, v26, 0);
    v496 = v504[0];
    v123 = sub_1DD5FAA4C();
    v124 = 0;
    v4 = (v104 + 64);
    v486 = v104 + 64;
    v487 = (a3 + 16);
    v125 = v104[32];
    v476 = v104 + 72;
    v126 = v104;
    v127 = v479;
    v500 = (a3 + 32);
    v481 = v26;
    v482 = v122;
    do
    {
      if (v123 < 0 || v123 >= 1 << v125)
      {
        goto LABEL_263;
      }

      if ((*(v4 + 8 * (v123 >> 6)) & (1 << v123)) == 0)
      {
        goto LABEL_264;
      }

      if (*(v126 + 9) != v122)
      {
        goto LABEL_265;
      }

      v493 = 1 << v123;
      v494 = v123 >> 6;
      v492 = v124;
      v128 = v491;
      v129 = *(v491 + 48);
      v130 = *(v126 + 7);
      v131 = *(v126 + 6) + 16 * v123;
      v132 = *(v131 + 8);
      v495 = *v131;
      v497 = v132;
      v499 = *(a3 + 72);
      v133 = v488;
      v134 = v127;
      v485 = *(a3 + 16);
      (v485)(&v488[v129], v130 + v499 * v123, v127);
      v135 = v489;
      *v489 = v495;
      *(v135 + 8) = v132;
      v136 = *(a3 + 32);
      v136(v135 + *(v128 + 48), &v133[v129], v134);
      v137 = v135;
      v138 = v136;
      v139 = v490;
      sub_1DD4DDCBC(v137, v490, &qword_1ECCDE588, &qword_1DD657E40);

      v140 = v483;
      v136(v483, (v139 + *(v128 + 48)), v134);
      v141 = v496;
      v504[0] = v496;
      v142 = v134;
      v144 = v496[2];
      v143 = v496[3];
      if (v144 >= v143 >> 1)
      {
        sub_1DD42C094(v143 > 1, v144 + 1, 1);
        v141 = v504[0];
      }

      *(v141 + 16) = v144 + 1;
      v145 = v484;
      v146 = *(v484 + 80);
      v496 = v141;
      v147 = v499;
      v138(v141 + ((v146 + 32) & ~v146) + v144 * v499, v140, v142);
      v126 = v498;
      v125 = v498[32];
      v152 = 1 << v125;
      if (v123 >= 1 << v125)
      {
        goto LABEL_266;
      }

      v495 = v138;
      v4 = v486;
      v153 = *&v486[8 * v494];
      if ((v153 & v493) == 0)
      {
        goto LABEL_267;
      }

      LODWORD(v122) = v482;
      if (*(v498 + 9) != v482)
      {
        goto LABEL_268;
      }

      v127 = v142;
      a3 = v145;
      v18 = v147;
      v154 = v153 & (-2 << (v123 & 0x3F));
      if (v154)
      {
        v152 = __clz(__rbit64(v154)) | v123 & 0x7FFFFFFFFFFFFFC0;
        v26 = v481;
      }

      else
      {
        v155 = v494 << 6;
        v156 = v494 + 1;
        v157 = &v476[8 * v494];
        v26 = v481;
        while (v156 < (v152 + 63) >> 6)
        {
          v159 = *v157++;
          v158 = v159;
          v155 += 64;
          ++v156;
          if (v159)
          {
            v152 = __clz(__rbit64(v158)) + v155;
            break;
          }
        }
      }

      v123 = v152;
      v124 = v492 + 1;
    }

    while (v492 + 1 != v26);
    v17 = *(v498 + 2);
    if (!v17)
    {
      break;
    }

    v13 = v498;
    v504[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4(0, v17, 0, v148, v149, v150, v151);
    v497 = v504[0];
    isUniquelyReferenced_nonNull_native = sub_1DD5FAA4C();
    v483 = (a3 + 8);
    v161 = v17 - 1;
    v162 = v13;
    if (isUniquelyReferenced_nonNull_native < 0)
    {
      goto LABEL_276;
    }

    while (1)
    {
      if (isUniquelyReferenced_nonNull_native >= 1 << *(v162 + 32))
      {
        goto LABEL_276;
      }

      if ((*(v4 + 8 * (isUniquelyReferenced_nonNull_native >> 6)) & (1 << isUniquelyReferenced_nonNull_native)) == 0)
      {
        goto LABEL_277;
      }

      if (v160 != *(v162 + 9))
      {
        break;
      }

      v493 = 1 << isUniquelyReferenced_nonNull_native;
      v494 = isUniquelyReferenced_nonNull_native >> 6;
      v492 = v160;
      v484 = v161;
      v163 = v491;
      v164 = *(v491 + 48);
      v165 = (v162[6] + 16 * isUniquelyReferenced_nonNull_native);
      v167 = *v165;
      v166 = v165[1];
      v168 = v162[7] + v18 * isUniquelyReferenced_nonNull_native;
      v169 = v488;
      v170 = v479;
      (v485)(&v488[v164], v168, v479);
      v171 = v489;
      *v489 = v167;
      *(v171 + 8) = v166;
      (v495)(v171 + *(v163 + 48), &v169[v164], v170);
      v13 = v490;
      sub_1DD4DDCBC(v171, v490, &qword_1ECCDE588, &qword_1DD657E40);
      v18 = *v13;
      v4 = v13[1];
      v172 = *(v163 + 48);
      a3 = v483;
      v173 = *v483;

      v173(v13 + v172, v170);
      v178 = v497;
      v504[0] = v497;
      v26 = v497[2];
      v179 = v497[3];
      v17 = v26 + 1;
      if (v26 >= v179 >> 1)
      {
        sub_1DD42A2D4(v179 > 1, v26 + 1, 1, v174, v175, v176, v177);
        v178 = v504[0];
      }

      *(v178 + 16) = v17;
      v180 = v178 + 16 * v26;
      *(v180 + 32) = v18;
      *(v180 + 40) = v4;
      if (isUniquelyReferenced_nonNull_native >= -(-1 << v498[32]))
      {
        goto LABEL_279;
      }

      v4 = v486;
      if ((*&v486[8 * v494] & v493) == 0)
      {
        goto LABEL_280;
      }

      if (v492 != *(v498 + 9))
      {
        goto LABEL_281;
      }

      v497 = v178;
      v181 = sub_1DD640748();
      if (!v484)
      {
        goto LABEL_80;
      }

      isUniquelyReferenced_nonNull_native = v181;
      v162 = v498;
      v18 = v499;
      v160 = *(v498 + 9);
      v161 = v484 - 1;
      if (v181 < 0)
      {
        goto LABEL_276;
      }
    }

LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    swift_once();
  }

  v497 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v121 = v496;
LABEL_81:
  sub_1DD63F338();
  v496 = v121;
  v182 = sub_1DD63F0F8();
  v183 = *(v182 + 16);
  v499 = v182;
  v495 = v183;
  if (v183)
  {
    a3 = 0;
    v494 = v182 + 32;
    v4 = MEMORY[0x1E69E7CC8];
    v184 = v497;
    v185 = v497 + 5;
    while (a3 < *(v182 + 16))
    {
      if (a3 >= *(v184 + 16))
      {
        goto LABEL_270;
      }

      v186 = *(v494 + 8 * a3);
      v17 = *(v185 - 1);
      v26 = *v185;
      v500 = v185;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v504[0] = v4;
      v187 = sub_1DD3978DC();
      v189 = *(v4 + 16);
      v190 = (v188 & 1) == 0;
      v13 = (v189 + v190);
      if (__OFADD__(v189, v190))
      {
        goto LABEL_271;
      }

      v18 = v187;
      v191 = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
      if (sub_1DD640A08())
      {
        v192 = sub_1DD3978DC();
        if ((v191 & 1) != (v193 & 1))
        {
          goto LABEL_295;
        }

        v18 = v192;
      }

      if (v191)
      {

        v4 = v504[0];
        *(*(v504[0] + 56) + 8 * v18) = v186;
      }

      else
      {
        v4 = v504[0];
        *(v504[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
        v194 = (*(v4 + 48) + 16 * v18);
        *v194 = v17;
        v194[1] = v26;
        *(*(v4 + 56) + 8 * v18) = v186;
        v195 = *(v4 + 16);
        v196 = __OFADD__(v195, 1);
        v197 = v195 + 1;
        if (v196)
        {
          goto LABEL_282;
        }

        *(v4 + 16) = v197;
      }

      ++a3;
      v182 = v499;
      v185 = (v500 + 16);
      v184 = v497;
      if (v495 == a3)
      {
        goto LABEL_96;
      }
    }

LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  v4 = MEMORY[0x1E69E7CC8];
LABEL_96:
  swift_bridgeObjectRetain_n();
  v198 = sub_1DD63F9D8();
  v199 = sub_1DD640368();

  v200 = os_log_type_enabled(v198, v199);
  v495 = v4;
  if (v200)
  {
    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v504[0] = v202;
    *v201 = 136315138;
    v203 = sub_1DD63FC68();
    v26 = v204;
    v205 = sub_1DD39565C(v203, v204, v504);

    *(v201 + 4) = v205;
    _os_log_impl(&dword_1DD38D000, v198, v199, "makeRecommendationInternal(). uuidScores = %s", v201, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v202);
    v206 = v202;
    v4 = v495;
    MEMORY[0x1E12B3DA0](v206, -1, -1);
    MEMORY[0x1E12B3DA0](v201, -1, -1);
  }

  v13 = 0;
  v208 = v4 + 64;
  v209 = 1 << *(v4 + 32);
  v210 = -1;
  if (v209 < 64)
  {
    v210 = ~(-1 << v209);
  }

  a3 = v210 & *(v4 + 64);
  v211 = MEMORY[0x1E69E7CC8];
  v212 = (v209 + 63) >> 6;
  *&v207 = 136315138;
  v491 = v207;
  v492 = MEMORY[0x1E69E7CC8];
  v493 = v212;
  v494 = v4 + 64;
  while (a3)
  {
LABEL_106:
    v214 = __clz(__rbit64(a3));
    a3 &= a3 - 1;
    v215 = v214 | (v13 << 6);
    v216 = (*(v4 + 48) + 16 * v215);
    v217 = *v216;
    v218 = v216[1];
    v219 = *(*(v4 + 56) + 8 * v215);

    sub_1DD5CC110(v217, v218, v504);

    memcpy(v506, v504, sizeof(v506));
    isUniquelyReferenced_nonNull_native = v506[13];
    if (!v506[13] || (v220 = v506[12]) == 0 && v506[13] == 0xE000000000000000 || (sub_1DD640CD8() & 1) != 0)
    {
      v500 = v211;
      v228 = v492;
      swift_isUniquelyReferenced_nonNull_native();
      v503[0] = v228;
      v229 = sub_1DD3FED1C();
      v231 = *(v228 + 16);
      v232 = (v230 & 1) == 0;
      v26 = v231 + v232;
      if (__OFADD__(v231, v232))
      {
LABEL_291:
        __break(1u);
        goto LABEL_292;
      }

      v233 = v229;
      v234 = v230;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF760, &qword_1DD660920);
      if (sub_1DD640A08())
      {
        v235 = sub_1DD3FED1C();
        if ((v234 & 1) != (v236 & 1))
        {
          goto LABEL_295;
        }

        v233 = v235;
      }

      v492 = v503[0];
      if (v234)
      {
        *(*(v503[0] + 56) + 8 * v233) = v219;
      }

      else
      {
        sub_1DD400964(v233, v219, v506, v503[0]);
        sub_1DD400BFC(v506, v504);
      }

      sub_1DD400BFC(v506, v504);
      v237 = sub_1DD63F9D8();
      v238 = sub_1DD640368();
      sub_1DD400C58(v506);
      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        v503[0] = v240;
        *v239 = v491;
        memcpy(v504, v506, 0x80uLL);
        v241 = sub_1DD63FE38();
        v26 = v242;
        v243 = sub_1DD39565C(v241, v242, v503);

        *(v239 + 4) = v243;
        _os_log_impl(&dword_1DD38D000, v237, v238, "sportsItemfromUuid.teamQId == nil.\nsportsItemfromUuid = %s", v239, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v240);
        MEMORY[0x1E12B3DA0](v240, -1, -1);
        MEMORY[0x1E12B3DA0](v239, -1, -1);
      }

      else
      {

        sub_1DD400C58(v506);
      }

      v211 = v500;
      v208 = v494;
      v4 = v495;
      v212 = v493;
    }

    else
    {

      sub_1DD400C58(v506);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v504[0] = v211;
      v500 = v220;
      v221 = sub_1DD3978DC();
      v223 = *(v211 + 16);
      v224 = (v222 & 1) == 0;
      v17 = v223 + v224;
      if (__OFADD__(v223, v224))
      {
        goto LABEL_283;
      }

      v26 = v221;
      v225 = v222;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
      if (sub_1DD640A08())
      {
        v226 = sub_1DD3978DC();
        if ((v225 & 1) != (v227 & 1))
        {
          goto LABEL_295;
        }

        v26 = v226;
      }

      v208 = v494;
      v211 = v504[0];
      if (v225)
      {
        *(*(v504[0] + 56) + 8 * v26) = v219;
      }

      else
      {
        sub_1DD4005CC(v26, v500, isUniquelyReferenced_nonNull_native, v504[0]);
      }

      v4 = v495;
      v212 = v493;
    }
  }

  while (1)
  {
    v213 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    if (v213 >= v212)
    {
      break;
    }

    a3 = *(v208 + 8 * v213);
    v13 = (v13 + 1);
    if (a3)
    {
      v13 = v213;
      goto LABEL_106;
    }
  }

  v244 = sub_1DD63F9D8();
  v245 = sub_1DD640368();
  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    v500 = swift_slowAlloc();
    v504[0] = v500;
    *v246 = 136315394;

    v247 = v211;
    v248 = sub_1DD63FC68();
    v250 = v249;

    v251 = sub_1DD39565C(v248, v250, v504);

    *(v246 + 4) = v251;
    *(v246 + 12) = 2080;
    sub_1DD5CDDCC();

    v252 = sub_1DD63FC68();
    v254 = v253;

    v255 = sub_1DD39565C(v252, v254, v504);
    v211 = v247;

    *(v246 + 14) = v255;
    _os_log_impl(&dword_1DD38D000, v244, v245, "makeRecommendationInternal(). sRQIdScoreDict = %s,\nsRUuidNoQIdScoreDict = %s", v246, 0x16u);
    v256 = v500;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v256, -1, -1);
    MEMORY[0x1E12B3DA0](v246, -1, -1);
  }

  v257 = v469;
  v258 = v480;
  v259 = *(v211 + 16);
  v500 = v211;
  if (!v259)
  {
    v298 = sub_1DD63F9D8();
    v299 = sub_1DD640368();
    if (os_log_type_enabled(v298, v299))
    {
      v300 = swift_slowAlloc();
      *v300 = 0;
      _os_log_impl(&dword_1DD38D000, v298, v299, "makeRecommendationInternal(). sRQIdScoreDict is Empty, no QIds found in/donated to SiriRemembers.\nLooking for SportsItem without QId in SiriRemembers only.", v300, 2u);
      v301 = v300;
      v258 = v480;
      MEMORY[0x1E12B3DA0](v301, -1, -1);
    }

    v302 = v473;
    if (!*(v492 + 16))
    {
      v371 = sub_1DD63F9D8();
      v372 = sub_1DD640368();
      if (os_log_type_enabled(v371, v372))
      {
        v373 = swift_slowAlloc();
        *v373 = 0;
        _os_log_impl(&dword_1DD38D000, v371, v372, "makeRecommendationInternal(). sRUuidNoQIdScoreDict is Empty.", v373, 2u);
        v374 = v373;
        v258 = v480;
        MEMORY[0x1E12B3DA0](v374, -1, -1);
      }

      goto LABEL_132;
    }

    v304 = v302;
    v305 = sub_1DD5C704C(v303, sub_1DD3C1940, sub_1DD5D5664, sub_1DD5C6FA8);

    if (*(v305 + 16))
    {
      sub_1DD408C00();
      memcpy(v504, (v305 + 32), sizeof(v504));
      sub_1DD4DDC08(v504, v503, &qword_1ECCDCA58, &qword_1DD649F08);

      memcpy(v508, v504, sizeof(v508));
      v306 = (v474 + 32);
      v473 = v304;
      if (v258)
      {
        while (1)
        {
          memcpy(v509, v306, sizeof(v509));
          memcpy(v505, v306, 0x80uLL);
          memcpy(v503, v306, 0x80uLL);
          memcpy(v502, v508, sizeof(v502));
          sub_1DD400BFC(v509, v501);
          if (static SportsItem.partiallyEqual(lhs:rhs:)(v503, v502))
          {
            break;
          }

          sub_1DD400C58(v509);
          v306 += 128;
          v258 = (v258 - 1);
          if (!v258)
          {
            goto LABEL_176;
          }
        }

        v392 = swift_allocObject();
        memcpy((v392 + 16), v509, 0x80uLL);
        v393 = swift_allocObject();
        memcpy((v393 + 16), v508, 0x80uLL);
        sub_1DD4DDC08(v504, v503, &qword_1ECCDCA58, &qword_1DD649F08);
        sub_1DD400BFC(v509, v503);
        v498 = sub_1DD63F9D8();
        LODWORD(v499) = sub_1DD640368();
        v394 = swift_allocObject();
        *(v394 + 16) = 32;
        v395 = swift_allocObject();
        *(v395 + 16) = 8;
        v396 = swift_allocObject();
        *(v396 + 16) = sub_1DD5CDE20;
        *(v396 + 24) = v392;
        v397 = swift_allocObject();
        *(v397 + 16) = sub_1DD3FAEA4;
        *(v397 + 24) = v396;
        v398 = swift_allocObject();
        *(v398 + 16) = 32;
        v399 = swift_allocObject();
        *(v399 + 16) = 8;
        v400 = v498;
        v401 = swift_allocObject();
        *(v401 + 16) = sub_1DD5CDE20;
        *(v401 + 24) = v393;
        v402 = swift_allocObject();
        *(v402 + 16) = sub_1DD3FAEA4;
        *(v402 + 24) = v401;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
        v403 = swift_allocObject();
        *(v403 + 16) = xmmword_1DD644F40;
        *(v403 + 32) = sub_1DD3FAEC8;
        *(v403 + 40) = v394;
        *(v403 + 48) = sub_1DD3FAEC8;
        *(v403 + 56) = v395;
        *(v403 + 64) = sub_1DD3FAE9C;
        *(v403 + 72) = v397;
        *(v403 + 80) = sub_1DD3FAEC8;
        *(v403 + 88) = v398;
        *(v403 + 96) = sub_1DD3FAEC8;
        *(v403 + 104) = v399;
        *(v403 + 112) = sub_1DD3FAE9C;
        *(v403 + 120) = v402;
        swift_setDeallocating();
        v404 = v499;
        sub_1DD46CBF0();
        if (os_log_type_enabled(v400, v404))
        {
          v405 = swift_slowAlloc();
          v406 = swift_slowAlloc();
          v501[0] = v406;
          *v405 = 136315394;
          memcpy(v503, v509, 0x80uLL);
          sub_1DD400BFC(v509, v502);
          v407 = sub_1DD63FE38();
          v409 = sub_1DD39565C(v407, v408, v501);

          *(v405 + 4) = v409;
          *(v405 + 12) = 2080;
          memcpy(v503, v508, 0x80uLL);
          v410 = sub_1DD63FE38();
          v412 = sub_1DD39565C(v410, v411, v501);

          *(v405 + 14) = v412;
          _os_log_impl(&dword_1DD38D000, v400, v404, "makeRecommendationInternal().\nrecommendedSportsItemNoQId = %s,\nmaxScoreSportsItemNoQId = %s", v405, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12B3DA0](v406, -1, -1);
          MEMORY[0x1E12B3DA0](v405, -1, -1);
        }

        else
        {

          sub_1DD390754(v504, &qword_1ECCDCA58, &qword_1DD649F08);
        }

        v444 = v469;
        memcpy(v503, v505, 0x80uLL);
        sub_1DD472DA8(v503);
        v43 = v503;
        v44 = v444;
        return memcpy(v44, v43, 0x81uLL);
      }

LABEL_176:

      v307 = swift_allocObject();
      memcpy((v307 + 16), v508, 0x80uLL);
      sub_1DD4DDC08(v504, v503, &qword_1ECCDCA58, &qword_1DD649F08);
      v308 = sub_1DD63F9D8();
      v309 = sub_1DD640368();
      v310 = swift_allocObject();
      *(v310 + 16) = 32;
      v311 = swift_allocObject();
      *(v311 + 16) = 8;
      v312 = swift_allocObject();
      *(v312 + 16) = sub_1DD5CDE20;
      *(v312 + 24) = v307;
      v313 = swift_allocObject();
      *(v313 + 16) = sub_1DD3FAEA4;
      *(v313 + 24) = v312;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
      v314 = swift_allocObject();
      *(v314 + 16) = xmmword_1DD6444F0;
      *(v314 + 32) = sub_1DD3FAEC8;
      *(v314 + 40) = v310;
      *(v314 + 48) = sub_1DD3FAEC8;
      *(v314 + 56) = v311;
      *(v314 + 64) = sub_1DD3FAE9C;
      *(v314 + 72) = v313;
      swift_setDeallocating();
      sub_1DD46CBF0();
      if (os_log_type_enabled(v308, v309))
      {
        v315 = swift_slowAlloc();
        v316 = swift_slowAlloc();
        v505[0] = v316;
        *v315 = v491;
        memcpy(v503, v508, 0x80uLL);
        v317 = sub_1DD63FE38();
        v319 = sub_1DD39565C(v317, v318, v505);

        *(v315 + 4) = v319;
        _os_log_impl(&dword_1DD38D000, v308, v309, "makeRecommendationInternal(). recommendedSportsItemNoQId is Empty.\nmaxScoreSportsItemNoQId = %s.\nReturning .none #3.", v315, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v316);
        MEMORY[0x1E12B3DA0](v316, -1, -1);
        MEMORY[0x1E12B3DA0](v315, -1, -1);
      }

      else
      {

        sub_1DD390754(v504, &qword_1ECCDCA58, &qword_1DD649F08);
      }

      sub_1DD472D70(v503);
      v43 = v503;
    }

    else
    {

      v389 = sub_1DD63F9D8();
      v390 = sub_1DD640368();
      if (os_log_type_enabled(v389, v390))
      {
        v391 = swift_slowAlloc();
        *v391 = 0;
        _os_log_impl(&dword_1DD38D000, v389, v390, "makeRecommendationInternal(). No maxScoreSportsItemNoQId in sRUuidNoQIdScoreDict.\nReturning .none #2.", v391, 2u);
        MEMORY[0x1E12B3DA0](v391, -1, -1);
      }

      sub_1DD472D70(v504);
      v43 = v504;
    }

    v44 = v257;
    return memcpy(v44, v43, 0x81uLL);
  }

LABEL_132:
  v260 = 0;
  v18 = MEMORY[0x1E69E7CC8];
  v261 = v474 + 32;
  v494 = v474 + 32;
LABEL_133:
  v262 = (v261 + (v260 << 7));
  while (v258 != v260)
  {
    if (v260 >= v258)
    {
      goto LABEL_261;
    }

    memcpy(v504, v262, 0x80uLL);
    v263 = v260 + 1;
    if (__OFADD__(v260, 1))
    {
      goto LABEL_262;
    }

    v264 = v504[13];
    if (v504[13])
    {
      v265 = v504[12];
      v266 = HIBYTE(v504[13]) & 0xF;
      if ((v504[13] & 0x2000000000000000) == 0)
      {
        v266 = v504[12] & 0xFFFFFFFFFFFFLL;
      }

      if (v266)
      {
        sub_1DD400BFC(v504, v503);
        sub_1DD400BFC(v504, v503);

        swift_isUniquelyReferenced_nonNull_native();
        v505[0] = v18;
        v267 = sub_1DD3FE8AC();
        if (__OFADD__(*(v18 + 16), (v268 & 1) == 0))
        {
          __break(1u);
          goto LABEL_291;
        }

        v269 = v267;
        v270 = v268;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF768, &qword_1DD660928);
        if (sub_1DD640A08())
        {
          v271 = sub_1DD3FE8AC();
          if ((v270 & 1) != (v272 & 1))
          {
            goto LABEL_296;
          }

          v269 = v271;
          if ((v270 & 1) == 0)
          {
LABEL_147:
            v18 = v505[0];
            *(v505[0] + 8 * (v269 >> 6) + 64) |= 1 << v269;
            v273 = (*(v18 + 48) + 16 * v269);
            *v273 = v265;
            v273[1] = v264;
            memcpy((*(v18 + 56) + (v269 << 7)), v504, 0x80uLL);
            sub_1DD400C58(v504);
            v274 = *(v18 + 16);
            v196 = __OFADD__(v274, 1);
            v275 = v274 + 1;
            if (!v196)
            {
              *(v18 + 16) = v275;
              goto LABEL_151;
            }

LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
            goto LABEL_295;
          }
        }

        else if ((v270 & 1) == 0)
        {
          goto LABEL_147;
        }

        v18 = v505[0];
        v276 = (*(v505[0] + 56) + (v269 << 7));
        memcpy(v503, v276, 0x80uLL);
        memcpy(v276, v504, 0x80uLL);
        sub_1DD400C58(v503);
        sub_1DD400C58(v504);
LABEL_151:
        v258 = v480;
        v261 = v494;
        v260 = v263;
        goto LABEL_133;
      }

      v258 = v480;
    }

    ++v260;
    v262 += 128;
  }

  v277 = swift_allocObject();
  *(v277 + 16) = v18;

  v278 = sub_1DD63F9D8();
  isUniquelyReferenced_nonNull_native = sub_1DD640368();
  v279 = swift_allocObject();
  *(v279 + 16) = 32;
  v280 = swift_allocObject();
  *(v280 + 16) = 8;
  v281 = swift_allocObject();
  *(v281 + 16) = sub_1DD5CDD28;
  *(v281 + 24) = v277;
  v282 = swift_allocObject();
  *(v282 + 16) = sub_1DD3FA514;
  *(v282 + 24) = v281;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
  v17 = swift_allocObject();
  v490 = xmmword_1DD6444F0;
  *(v17 + 16) = xmmword_1DD6444F0;
  *(v17 + 32) = sub_1DD3FA50C;
  *(v17 + 40) = v279;
  *(v17 + 48) = sub_1DD3FAEC8;
  *(v17 + 56) = v280;
  *(v17 + 64) = sub_1DD3FA51C;
  *(v17 + 72) = v282;
  swift_setDeallocating();
  sub_1DD46CBF0();
  if (os_log_type_enabled(v278, isUniquelyReferenced_nonNull_native))
  {
    v283 = swift_slowAlloc();
    v284 = swift_slowAlloc();
    v504[0] = v284;
    *v283 = v491;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
    sub_1DD51D290();
    v285 = sub_1DD63FC68();
    v17 = sub_1DD39565C(v285, v286, v504);

    *(v283 + 4) = v17;
    _os_log_impl(&dword_1DD38D000, v278, isUniquelyReferenced_nonNull_native, "pireneQIdSportsItemDict = %s", v283, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v284);
    MEMORY[0x1E12B3DA0](v284, -1, -1);
    MEMORY[0x1E12B3DA0](v283, -1, -1);
  }

  v4 = v473;
  v26 = v500;
  v287 = v480;
  a3 = v492;
  if (!*(v18 + 16))
  {

    v320 = sub_1DD63F9D8();
    v321 = sub_1DD640368();
    if (!os_log_type_enabled(v320, v321))
    {
      goto LABEL_181;
    }

    v322 = swift_slowAlloc();
    *v322 = 0;
    v323 = "makeRecommendationInternal(). pireneQIdSportsItemDict is Empty.\nReturning .none #4.";
    goto LABEL_180;
  }

  v13 = 0;
  v288 = MEMORY[0x1E69E7CC0];
LABEL_156:
  v289 = (v474 + (v13 << 7));
  v290 = v13;
  while (v287 != v290)
  {
    if (v290 >= v287)
    {
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
      goto LABEL_278;
    }

    v13 = (v290 + 1);
    if (__OFADD__(v290, 1))
    {
      goto LABEL_275;
    }

    isUniquelyReferenced_nonNull_native = v289[17];
    v289 += 16;
    v290 = (v290 + 1);
    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = v4;
      v291 = *v289;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE2A4();
        v288 = v294;
      }

      v292 = *(v288 + 16);
      if (v292 >= *(v288 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v288 = v295;
      }

      *(v288 + 16) = v292 + 1;
      v293 = v288 + 16 * v292;
      *(v293 + 32) = v291;
      *(v293 + 40) = isUniquelyReferenced_nonNull_native;
      v4 = v17;
      v287 = v480;
      a3 = v492;
      v26 = v500;
      goto LABEL_156;
    }
  }

  v296 = sub_1DD41859C(v288);
  v297 = sub_1DD55C538(v296);
  if (v4)
  {
  }

  v324 = v297;
  v473 = 0;

  v325 = swift_allocObject();
  *(v325 + 16) = v324;

  v326 = sub_1DD63F9D8();
  v327 = sub_1DD640368();
  v328 = swift_allocObject();
  *(v328 + 16) = 32;
  v329 = swift_allocObject();
  *(v329 + 16) = 8;
  v330 = swift_allocObject();
  *(v330 + 16) = sub_1DD5CDD30;
  *(v330 + 24) = v325;
  v331 = swift_allocObject();
  *(v331 + 16) = sub_1DD3FAEA4;
  *(v331 + 24) = v330;
  v332 = swift_allocObject();
  *(v332 + 16) = v490;
  *(v332 + 32) = sub_1DD3FAEC8;
  *(v332 + 40) = v328;
  *(v332 + 48) = sub_1DD3FAEC8;
  *(v332 + 56) = v329;
  *(v332 + 64) = sub_1DD3FAE9C;
  *(v332 + 72) = v331;
  swift_setDeallocating();
  sub_1DD46CBF0();
  if (os_log_type_enabled(v326, v327))
  {
    v333 = swift_slowAlloc();
    v334 = swift_slowAlloc();
    v504[0] = v334;
    *v333 = v491;
    v335 = sub_1DD63FC68();
    v337 = sub_1DD39565C(v335, v336, v504);

    *(v333 + 4) = v337;
    _os_log_impl(&dword_1DD38D000, v326, v327, "makeRecommendationInternal(). portraitQIdScoresDict = %s", v333, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v334);
    MEMORY[0x1E12B3DA0](v334, -1, -1);
    MEMORY[0x1E12B3DA0](v333, -1, -1);
  }

  v338 = v473;
  if (!*(v500 + 2) && !*(v324 + 2) && !*(v492 + 16))
  {
LABEL_272:

    v320 = sub_1DD63F9D8();
    v321 = sub_1DD640368();
    if (!os_log_type_enabled(v320, v321))
    {
      goto LABEL_181;
    }

    v322 = swift_slowAlloc();
    *v322 = 0;
    v323 = "makeRecommendationInternal(). Both SiriRemembers and Portrait Recommendations are empty.\nReturning .none #5.";
LABEL_180:
    _os_log_impl(&dword_1DD38D000, v320, v321, v323, v322, 2u);
    MEMORY[0x1E12B3DA0](v322, -1, -1);
LABEL_181:

    sub_1DD472D70(v504);
    v43 = v504;
    v44 = v469;
    return memcpy(v44, v43, 0x81uLL);
  }

  if (*(v18 + 16))
  {
    v488 = v324;
    v339 = 1 << *(v18 + 32);
    v340 = -1;
    if (v339 < 64)
    {
      v340 = ~(-1 << v339);
    }

    v341 = v340 & *(v18 + 64);
    v342 = (v339 + 63) >> 6;

    a3 = 0;
    v489 = MEMORY[0x1E69E7CC8];
LABEL_191:
    if (v341)
    {
      goto LABEL_196;
    }

    while (1)
    {
      v343 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        __break(1u);
        goto LABEL_286;
      }

      if (v343 >= v342)
      {
        break;
      }

      v341 = *(v18 + 64 + 8 * v343);
      ++a3;
      if (v341)
      {
        a3 = v343;
LABEL_196:
        v344 = __clz(__rbit64(v341));
        v341 &= v341 - 1;
        v345 = (*(v18 + 48) + ((a3 << 10) | (16 * v344)));
        v346 = v345[1];
        if (v346)
        {
          v347 = *v345;
          v348 = v488;
          v349 = *(v488 + 2);

          v350 = 0.0;
          v351 = 0.0;
          if (v349)
          {
            v352 = sub_1DD3978DC();
            if ((v353 & 1) == 0 || (v351 = 1.0, *(*(v348 + 7) + 8 * v352) * 3.4 <= 1.0))
            {
              v351 = 0.0;
              if (*(v348 + 2))
              {
                v354 = sub_1DD3978DC();
                if (v355)
                {
                  v351 = *(*(v348 + 7) + 8 * v354) * 3.4;
                }
              }
            }
          }

          if (*(v500 + 2))
          {
            v356 = sub_1DD3978DC();
            if (v357)
            {
              v350 = *(*(v500 + 7) + 8 * v356);
            }
          }

          v358 = v489;
          LODWORD(v486) = swift_isUniquelyReferenced_nonNull_native();
          v504[0] = v358;
          v487 = v347;
          v485 = sub_1DD3978DC();
          v359 = *(v358 + 16);
          LODWORD(v489) = v360;
          if (__OFADD__(v359, (v360 & 1) == 0))
          {
            goto LABEL_293;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
          if (sub_1DD640A08())
          {
            v361 = v487;
            v362 = sub_1DD3978DC();
            v364 = v489;
            if ((v489 & 1) == (v363 & 1))
            {
              v365 = v362;
              goto LABEL_211;
            }

            while (1)
            {
LABEL_295:
              sub_1DD640D58();
              __break(1u);
LABEL_296:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
            }
          }

          v361 = v487;
          v365 = v485;
          v364 = v489;
LABEL_211:
          v366 = v351 + v350;
          if (v364)
          {

            v489 = v504[0];
            *(*(v504[0] + 56) + 8 * v365) = v366;
          }

          else
          {
            v367 = v504[0];
            *(v504[0] + 8 * (v365 >> 6) + 64) |= 1 << v365;
            v368 = (v367[6] + 16 * v365);
            *v368 = v361;
            v368[1] = v346;
            *(v367[7] + 8 * v365) = v366;
            v369 = v367[2];
            v196 = __OFADD__(v369, 1);
            v370 = v369 + 1;
            if (v196)
            {
              goto LABEL_294;
            }

            v489 = v367;
            v367[2] = v370;
          }
        }

        goto LABEL_191;
      }
    }

    v375 = swift_allocObject();
    v376 = v489;
    *(v375 + 16) = v489;

    v377 = sub_1DD63F9D8();
    v378 = sub_1DD640368();
    v379 = swift_allocObject();
    *(v379 + 16) = 32;
    v380 = swift_allocObject();
    *(v380 + 16) = 8;
    v381 = swift_allocObject();
    *(v381 + 16) = sub_1DD5CDE24;
    *(v381 + 24) = v375;
    v382 = swift_allocObject();
    *(v382 + 16) = sub_1DD3FAEA4;
    *(v382 + 24) = v381;
    v383 = swift_allocObject();
    *(v383 + 16) = v490;
    *(v383 + 32) = sub_1DD3FAEC8;
    *(v383 + 40) = v379;
    *(v383 + 48) = sub_1DD3FAEC8;
    *(v383 + 56) = v380;
    *(v383 + 64) = sub_1DD3FAE9C;
    *(v383 + 72) = v382;
    swift_setDeallocating();
    sub_1DD46CBF0();
    if (os_log_type_enabled(v377, v378))
    {
      v384 = swift_slowAlloc();
      v385 = swift_slowAlloc();
      v504[0] = v385;
      *v384 = v491;
      v386 = sub_1DD63FC68();
      v388 = sub_1DD39565C(v386, v387, v504);

      *(v384 + 4) = v388;
      _os_log_impl(&dword_1DD38D000, v377, v378, "makeRecommendationInternal(). qIdScoresDict = %s", v384, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v385);
      MEMORY[0x1E12B3DA0](v385, -1, -1);
      MEMORY[0x1E12B3DA0](v384, -1, -1);
    }

    v338 = v473;
  }

  else
  {

    v413 = sub_1DD63F9D8();
    v414 = sub_1DD640368();
    if (os_log_type_enabled(v413, v414))
    {
      v415 = swift_slowAlloc();
      *v415 = 0;
      _os_log_impl(&dword_1DD38D000, v413, v414, "makeRecommendationInternal(). Didn't get any QId(s) and SportsItem(s) from Pegasus. ", v415, 2u);
      MEMORY[0x1E12B3DA0](v415, -1, -1);
    }

    v376 = MEMORY[0x1E69E7CC8];
  }

  v489 = v376;
  v416 = sub_1DD5C704C(v376, sub_1DD3C18D8, sub_1DD5D5588, sub_1DD5C6F04);
  v473 = v338;

  v417 = swift_allocObject();
  *(v417 + 16) = v416;

  v418 = sub_1DD63F9D8();
  v419 = sub_1DD640368();
  v420 = swift_allocObject();
  *(v420 + 16) = 32;
  v421 = swift_allocObject();
  *(v421 + 16) = 8;
  v422 = swift_allocObject();
  *(v422 + 16) = sub_1DD5CDD38;
  *(v422 + 24) = v417;
  v423 = swift_allocObject();
  *(v423 + 16) = sub_1DD3FAEA4;
  *(v423 + 24) = v422;
  v424 = swift_allocObject();
  *(v424 + 16) = v490;
  *(v424 + 32) = sub_1DD3FAEC8;
  *(v424 + 40) = v420;
  *(v424 + 48) = sub_1DD3FAEC8;
  *(v424 + 56) = v421;
  *(v424 + 64) = sub_1DD3FAE9C;
  *(v424 + 72) = v423;
  swift_setDeallocating();
  sub_1DD46CBF0();
  if (os_log_type_enabled(v418, v419))
  {
    v425 = swift_slowAlloc();
    v426 = swift_slowAlloc();
    v504[0] = v426;
    *v425 = v491;
    v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA60, &qword_1DD649F18);
    v428 = MEMORY[0x1E12B2430](v416, v427);
    v430 = sub_1DD39565C(v428, v429, v504);

    *(v425 + 4) = v430;
    _os_log_impl(&dword_1DD38D000, v418, v419, "Sorted by Score dict = %s", v425, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v426);
    MEMORY[0x1E12B3DA0](v426, -1, -1);
    MEMORY[0x1E12B3DA0](v425, -1, -1);
  }

  v431 = v469;
  v432 = sub_1DD559054(v416);
  if (!v433 || (v434 = v432, v435 = v433, sub_1DD559054(v416), v437 = v436, v439 = v438, , !v437))
  {

    v440 = sub_1DD63F9D8();
    v441 = sub_1DD640368();
    if (!os_log_type_enabled(v440, v441))
    {
      goto LABEL_243;
    }

    v442 = swift_slowAlloc();
    *v442 = 0;
    v443 = "No max scored QId returned from either SiriRemembers or Portrait.\nsortedByScoreDict.first?.key is nil. sortedByScoreDict.first?.value is nil.\nReturning .none #6.";
    goto LABEL_242;
  }

  if (COERCE_DOUBLE(v439 & 0x7FFFFFFFFFFFFFFFLL) >= 2.22044605e-16)
  {
    v445 = v480;
    v446 = v494;
    if (v480)
    {
      while (1)
      {
        memcpy(v507, v446, sizeof(v507));
        memcpy(v503, v446, 0x80uLL);
        if (v507[13])
        {
          v447 = v507[12] == v434 && v507[13] == v435;
          if (v447 || (sub_1DD640CD8() & 1) != 0)
          {
            break;
          }
        }

        v446 += 128;
        v445 = (v445 - 1);
        if (!v445)
        {
          goto LABEL_255;
        }
      }

      sub_1DD400BFC(v507, v504);

      v448 = swift_allocObject();
      memcpy((v448 + 16), v507, 0x80uLL);
      sub_1DD400BFC(v507, v504);
      v449 = sub_1DD63F9D8();
      v450 = sub_1DD640368();
      v451 = swift_allocObject();
      *(v451 + 16) = 32;
      v452 = swift_allocObject();
      *(v452 + 16) = 8;
      v453 = swift_allocObject();
      *(v453 + 16) = sub_1DD5CDD40;
      *(v453 + 24) = v448;
      v454 = swift_allocObject();
      *(v454 + 16) = sub_1DD3FAEA4;
      *(v454 + 24) = v453;
      v455 = swift_allocObject();
      *(v455 + 16) = v490;
      *(v455 + 32) = sub_1DD3FAEC8;
      *(v455 + 40) = v451;
      *(v455 + 48) = sub_1DD3FAEC8;
      *(v455 + 56) = v452;
      *(v455 + 64) = sub_1DD3FAE9C;
      *(v455 + 72) = v454;
      swift_setDeallocating();
      sub_1DD46CBF0();
      if (os_log_type_enabled(v449, v450))
      {
        v456 = swift_slowAlloc();
        v457 = swift_slowAlloc();
        v502[0] = v457;
        *v456 = v491;
        memcpy(v504, v507, 0x80uLL);
        sub_1DD400BFC(v507, v505);
        v458 = sub_1DD63FE38();
        v460 = sub_1DD39565C(v458, v459, v502);

        *(v456 + 4) = v460;
        _os_log_impl(&dword_1DD38D000, v449, v450, "makeRecommendationInternal(). Recommended SportsItem = %s", v456, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v457);
        MEMORY[0x1E12B3DA0](v457, -1, -1);
        MEMORY[0x1E12B3DA0](v456, -1, -1);
      }

      memcpy(v504, v503, 0x80uLL);
      sub_1DD472DA8(v504);
      goto LABEL_244;
    }

LABEL_255:

    v440 = sub_1DD63F9D8();
    v441 = sub_1DD640368();
    if (!os_log_type_enabled(v440, v441))
    {
      goto LABEL_243;
    }

    v442 = swift_slowAlloc();
    *v442 = 0;
    v443 = "makeRecommendationInternal(). Rcommended SportsItem is nil. Returning .none #8.";
LABEL_242:
    _os_log_impl(&dword_1DD38D000, v440, v441, v443, v442, 2u);
    MEMORY[0x1E12B3DA0](v442, -1, -1);
    goto LABEL_243;
  }

  v440 = sub_1DD63F9D8();
  v441 = sub_1DD640368();
  if (os_log_type_enabled(v440, v441))
  {
    v442 = swift_slowAlloc();
    *v442 = 0;
    v443 = "maxScoredQId is 0.0. Returning .none #7.";
    goto LABEL_242;
  }

LABEL_243:

  sub_1DD472D70(v504);
LABEL_244:
  v43 = v504;
  v44 = v431;
  return memcpy(v44, v43, 0x81uLL);
}