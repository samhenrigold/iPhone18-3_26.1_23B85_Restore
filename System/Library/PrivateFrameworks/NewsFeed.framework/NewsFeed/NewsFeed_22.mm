uint64_t sub_1D5D3F1E4(char a1, __int128 *a2, uint64_t a3)
{
  v23 = a1;
  v7 = a2[3];
  v20 = a2[2];
  v21 = v7;
  v22 = *(a2 + 32);
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  sub_1D5D30DC4(0);
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709300;
  v16[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v16);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D3F390();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D5D3F4C8();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D3F390()
{
  result = qword_1EDF12A68;
  if (!qword_1EDF12A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A68);
  }

  return result;
}

void sub_1D5D3F434(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6574737973;
  v5 = 0xE600000000000000;
  v6 = 0x65746F6D6572;
  v7 = 0x676E69646E6962;
  if (v2 != 3)
  {
    v7 = 0x646E756F626E75;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D6F74737563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1D5D3F4C8()
{
  result = qword_1EDF11130;
  if (!qword_1EDF11130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11130);
  }

  return result;
}

uint64_t FormatSystemFont.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v168 = &v154 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v170 = &v154 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v154 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v154 - v20;
  sub_1D5D40A38(0);
  *&v172 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v157 = *(v1 + 8);
  LODWORD(v171) = *(v1 + 16);
  v169 = *(v1 + 18);
  v27 = *(v1 + 32);
  v167 = *(v1 + 24);
  v158 = v27;
  v28 = *(v1 + 48);
  v159 = *(v1 + 40);
  v160 = v28;
  v161 = *(v1 + 56);
  v162 = *(v1 + 64);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5C48AEC(0);
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF25668, sub_1D5C48AEC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSystemFont, v32, v34, v29, &type metadata for FormatSystemFont, v32, &type metadata for FormatVersions.JazzkonC, v30, v25, v33, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v173 = v36;
  v38(v21);
  *&v174 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v163 = v7;
  v165 = v35;
  v164 = v38;
  v166 = v39;
  if (v26 == 16.0)
  {
    v40 = v2;
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    (v38)(v17, v173, v35);
    goto LABEL_5;
  }

  v61 = v172;
  v62 = &v25[*(v172 + 44)];
  v63 = v25;
  v65 = *v62;
  v64 = *(v62 + 1);
  LOBYTE(v176) = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 32) = v176;
  *(v66 + 40) = v65;
  *(v66 + 48) = v64;
  sub_1D5D409FC(0);
  v68 = v67;
  v69 = sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC, MEMORY[0x1E69E6F60]);

  v155 = v68;
  v70 = sub_1D72647CC();
  LOBYTE(v176) = 0;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 16) = v70;
  *(v71 + 40) = v176;
  v72 = &v63[*(v61 + 36)];
  v73 = *(v72 + 3);
  v74 = *(v72 + 4);
  v75 = __swift_project_boxed_opaque_existential_1(v72, v73);
  *&v156 = &v154;
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  *(&v154 - 4) = sub_1D5B4AA6C;
  *(&v154 - 3) = 0;
  v152 = sub_1D66C4720;
  v153 = v66;
  v80 = sub_1D5D2F7A4(v21, sub_1D615B49C, v79, sub_1D615B4A4, (&v154 - 6), v73, v74);
  if (!v2)
  {
    v118 = v80;
    v154 = v69;

    if (v118)
    {
      v176 = 0uLL;
      v177 = 0;
      *&v180 = v26;
      sub_1D5B578C4();
      v25 = v63;
      sub_1D72647EC();
      v40 = 0;
      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v40 = 0;
      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
      v25 = v63;
    }

    v7 = v163;
    v35 = v165;
    v38 = v164;
    (v164)(v17, v173, v165);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    if ((v171 & 0xFF00) == 0xC00)
    {
      sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
      v41 = v40;
      v42 = v172;
    }

    else
    {
      v81 = v172;
      v82 = &v25[*(v172 + 44)];
      v63 = v25;
      v84 = *v82;
      v83 = *(v82 + 1);
      LOBYTE(v176) = 0;
      v85 = swift_allocObject();
      v156 = xmmword_1D728CF30;
      *(v85 + 16) = xmmword_1D728CF30;
      *(v85 + 32) = v176;
      *(v85 + 40) = v84;
      *(v85 + 48) = v83;
      sub_1D5D409FC(0);
      v87 = v86;
      sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC, MEMORY[0x1E69E6F60]);

      v155 = v87;
      v88 = sub_1D72647CC();
      LOBYTE(v176) = 0;
      v89 = swift_allocObject();
      *(v89 + 16) = v88;
      *(v89 + 24) = v156;
      *(v89 + 40) = v176;
      v90 = &v63[*(v81 + 36)];
      v91 = *(v90 + 3);
      v92 = *(v90 + 4);
      v93 = __swift_project_boxed_opaque_existential_1(v90, v91);
      MEMORY[0x1EEE9AC00](v93, v94);
      MEMORY[0x1EEE9AC00](v95, v96);
      *(&v154 - 4) = sub_1D5B4AA6C;
      *(&v154 - 3) = 0;
      v152 = sub_1D6708BD8;
      v153 = v85;
      v98 = sub_1D5D2F7A4(v17, sub_1D615B49C, v97, sub_1D615B4A4, (&v154 - 6), v91, v92);
      v41 = v40;
      if (v40)
      {
        v99 = v17;
LABEL_18:
        sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

        goto LABEL_19;
      }

      v119 = v98;

      if (v119)
      {
        v176 = v156;
        v177 = 0;
        *&v180 = v157;
        WORD4(v180) = v171;
        sub_1D5FC8148();
        v25 = v63;
        sub_1D72647EC();
        v42 = v172;
        sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
        v7 = v163;
      }

      else
      {
        sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
        v25 = v63;
        v7 = v163;
        v42 = v172;
      }

      v35 = v165;
      v38 = v164;
    }

    v43 = v170;
    (v38)(v170, v173, v35);
    swift_storeEnumTagMultiPayload();
    if (v169 == 5)
    {
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
      v44 = v168;
      (v38)(v168, v173, v35);
      goto LABEL_9;
    }

    v100 = &v25[*(v42 + 44)];
    v63 = v25;
    v102 = *v100;
    v101 = *(v100 + 1);
    LOBYTE(v176) = 0;
    v103 = swift_allocObject();
    v171 = xmmword_1D7297410;
    *(v103 + 16) = xmmword_1D7297410;
    *(v103 + 32) = v176;
    *(v103 + 40) = v102;
    *(v103 + 48) = v101;
    sub_1D5D409FC(0);
    v105 = v104;
    sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC, MEMORY[0x1E69E6F60]);

    v157 = v105;
    v106 = sub_1D72647CC();
    LOBYTE(v176) = 0;
    v107 = swift_allocObject();
    *(v107 + 16) = v106;
    *(v107 + 24) = v171;
    *(v107 + 40) = v176;
    v108 = &v63[*(v42 + 36)];
    v109 = *(v108 + 3);
    v110 = *(v108 + 4);
    v111 = __swift_project_boxed_opaque_existential_1(v108, v109);
    MEMORY[0x1EEE9AC00](v111, v112);
    MEMORY[0x1EEE9AC00](v113, v114);
    *(&v154 - 4) = sub_1D5B4AA6C;
    *(&v154 - 3) = 0;
    v152 = sub_1D6708BD8;
    v153 = v103;
    v116 = sub_1D5D2F7A4(v43, sub_1D615B49C, v115, sub_1D615B4A4, (&v154 - 6), v109, v110);
    if (!v41)
    {
      v120 = v116;

      if (v120)
      {
        v176 = v171;
        v177 = 0;
        LOBYTE(v180) = v169;
        sub_1D5D40BEC();
        v25 = v63;
        sub_1D72647EC();
        sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);
        v42 = v172;
        v7 = v163;
      }

      else
      {
        sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);
        v25 = v63;
        v7 = v163;
        v42 = v172;
      }

      v44 = v168;
      v35 = v165;
      v38 = v164;
      (v164)(v168, v173, v165);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      if (*(v167 + 16))
      {
        v45 = &v25[*(v42 + 44)];
        v47 = *v45;
        v46 = *(v45 + 1);
        LOBYTE(v176) = 0;
        v173 = v41;
        v48 = swift_allocObject();
        v172 = xmmword_1D72BAA60;
        *(v48 + 16) = xmmword_1D72BAA60;
        *(v48 + 32) = v176;
        *(v48 + 40) = v47;
        *(v48 + 48) = v46;
        sub_1D5D409FC(0);
        sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC, MEMORY[0x1E69E6F60]);

        v49 = sub_1D72647CC();
        LOBYTE(v176) = 0;
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = v172;
        *(v50 + 40) = v176;
        v51 = *(v42 + 36);
        *&v172 = v25;
        v52 = *&v25[v51 + 24];
        v53 = *&v25[v51 + 32];
        v54 = __swift_project_boxed_opaque_existential_1(&v25[v51], v52);
        MEMORY[0x1EEE9AC00](v54, v55);
        MEMORY[0x1EEE9AC00](v56, v57);
        *(&v154 - 4) = sub_1D5B4AA6C;
        *(&v154 - 3) = 0;
        v152 = sub_1D6708BD8;
        v153 = v48;
        v58 = v173;
        v60 = sub_1D5D2F7A4(v44, sub_1D615B49C, v59, sub_1D615B4A4, (&v154 - 6), v52, v53);
        v41 = v58;
        if (v58)
        {

          v25 = v172;
          sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
LABEL_46:
          v117 = v25;
          return sub_1D5D2CFE8(v117, sub_1D5D40A38);
        }

        v121 = v60;

        v25 = v172;
        if (v121)
        {
          sub_1D5E07E9C(v167, v172, 3, 0, 0);
        }

        v44 = v168;

        v35 = v165;
        v38 = v164;
      }

      sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v122 = __swift_project_value_buffer(v35, qword_1EDFFCD50);
      (v38)(v7, v122, v35);
      swift_storeEnumTagMultiPayload();
      v174 = xmmword_1D72BAA70;
      v180 = xmmword_1D72BAA70;
      v181 = 0;
      v123 = &v25[*(v42 + 44)];
      v124 = v42;
      v125 = *v123;
      v126 = *(v123 + 1);
      LOBYTE(v176) = 0;
      v127 = swift_allocObject();
      v129 = v127;
      *(v127 + 16) = v174;
      *(v127 + 32) = v176;
      *(v127 + 40) = v125;
      *(v127 + 48) = v126;
      if ((v162 & 0xFF00) == 0x500)
      {
      }

      else
      {
        *&v172 = &v154;
        LOBYTE(v176) = v158;
        *(&v176 + 1) = v159;
        v177 = v160 & 1;
        v178 = v161;
        v179 = v162 & 0xFF01;
        MEMORY[0x1EEE9AC00](v127, v128);
        v130 = v25;
        v173 = v41;
        *(&v154 - 4) = sub_1D5B4AA6C;
        *(&v154 - 3) = 0;
        v152 = sub_1D6708BD8;
        v153 = v129;
        v175 = 0;
        v131 = swift_allocObject();
        *(v131 + 16) = v174;
        *(v131 + 32) = v175;
        *(v131 + 40) = v125;
        *(v131 + 48) = v126;
        sub_1D5D409FC(0);
        v133 = v132;
        v134 = sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC, MEMORY[0x1E69E6F60]);
        swift_retain_n();
        *&v171 = v133;
        v135 = v7;
        v136 = sub_1D72647CC();
        v175 = 0;
        v137 = swift_allocObject();
        *(v137 + 16) = v136;
        *(v137 + 24) = v174;
        *(v137 + 40) = v175;
        v138 = *(v124 + 36);
        v139 = v130;
        v140 = &v130[v138];
        v141 = *&v130[v138 + 24];
        v142 = *(v140 + 4);
        v143 = __swift_project_boxed_opaque_existential_1(v140, v141);
        MEMORY[0x1EEE9AC00](v143, v144);
        MEMORY[0x1EEE9AC00](v145, v146);
        *(&v154 - 4) = sub_1D615B4A4;
        *(&v154 - 3) = (&v154 - 6);
        v152 = sub_1D6708BD8;
        v153 = v131;
        v147 = v173;
        v149 = sub_1D5D2F7A4(v135, sub_1D615B49C, v148, sub_1D615B4A4, (&v154 - 6), v141, v142);
        if (v147)
        {
          sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

          v25 = v139;
          goto LABEL_46;
        }

        v150 = v149;
        *&v174 = v134;

        if (v150)
        {
          sub_1D66C479C();
          v25 = v139;
          sub_1D72647EC();
        }

        else
        {
          v25 = v139;
        }

        v7 = v135;
      }

      sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

      goto LABEL_46;
    }

    v99 = v43;
    goto LABEL_18;
  }

  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

LABEL_19:
  v117 = v63;
  return sub_1D5D2CFE8(v117, sub_1D5D40A38);
}

void sub_1D5D40A38(uint64_t a1)
{
  if (!qword_1EDF08E80)
  {
    sub_1D5D409FC(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08E80);
    }
  }
}

void sub_1D5D40ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5D40B60(a4, a5, &unk_1D7321584);
    v8 = sub_1D726446C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5D40B60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5D40BA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatRecipeOverrides(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5D40BEC()
{
  result = qword_1EDF113A8;
  if (!qword_1EDF113A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113A8);
  }

  return result;
}

uint64_t FormatFontWeight.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v54 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v53 = v47 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = v47 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v51 = v47 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v50 = v47 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v49 = v47 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v48 = v47 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v47[1] = v47 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v47[0] = v47 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v47 - v32;
  v55 = *v1;
  v35 = a1[3];
  v34 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
  v38 = *(*(v36 - 8) + 16);
  v38(v33, v37, v36);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v39 = v58;
  sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v35, v34);
  if (v39)
  {
    return sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  v41 = v56;
  v42 = v56[3];
  v58 = v56[4];
  __swift_project_boxed_opaque_existential_1(v56, v42);
  if (v55 <= 3)
  {
    v45 = v37;
    if (v55 > 1)
    {
      v44 = v48;
      v38(v48, v45, v36);
    }

    else
    {
      v44 = v47[0];
      v38(v47[0], v45, v36);
    }
  }

  else if (v55 <= 5)
  {
    v46 = v37;
    if (v55 == 4)
    {
      v44 = v50;
      v38(v50, v46, v36);
    }

    else
    {
      v44 = v51;
      v38(v51, v46, v36);
    }
  }

  else
  {
    v43 = v37;
    if (v55 == 6)
    {
      v44 = v52;
      v38(v52, v43, v36);
    }

    else
    {
      v44 = v53;
      v38(v53, v43, v36);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v44, sub_1D5B4AA6C, 0, v42, v58);
  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v57, v57[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1D5D415DC(char a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18[0] = a2;
  v19 = a3;
  v20 = a4 & 1;
  sub_1D5D30DC4(0);
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D670925C;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D382F0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF309E0, sub_1D5C48F64, &type metadata for FormatSystemColor, type metadata accessor for FormatAlphaColor);
    sub_1D5D417C0();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D417C0()
{
  result = qword_1EDF115E8;
  if (!qword_1EDF115E8)
  {
    sub_1D5C30060(255, &qword_1EDF309E0, sub_1D5C48F64, &type metadata for FormatSystemColor, type metadata accessor for FormatAlphaColor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115E8);
  }

  return result;
}

uint64_t FormatAlphaColor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  v11 = *(a2 + 16);
  v41 = *(a2 + 24);
  v42 = v11;
  v13 = _s10CodingKeysOMa_227(255, v11, v41, v12);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *&v48 = v13;
  *(&v48 + 1) = WitnessTable;
  v49 = v15;
  v50 = v16;
  v17 = type metadata accessor for FormatCodingKeysContainer(255, &v48);
  v18 = swift_getWitnessTable();
  v19 = sub_1D726446C();
  v20 = swift_getWitnessTable();
  v51 = type metadata accessor for VersionedKeyedEncodingContainer(0, v19, v20, v21);
  v43 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v22);
  v24 = &v38 - v23;
  v26 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v39 = a2;
  sub_1D5D2EE70(a2, v17, v27, v26, a2, v17, &type metadata for FormatVersions.JazzkonC, v25, v24, v18, &off_1F51F6C78);
  v48 = 0uLL;
  LOBYTE(v49) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(*(v28 - 8) + 16);
  v30(v10, v29, v28);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v31 = v44;
  sub_1D5D38930(v45, &v48, v10, sub_1D5B4AA6C, 0, v51, v42, *(v41 + 16));
  sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  if (v31)
  {
    return (*(v43 + 8))(v24, v51);
  }

  v33 = v40;
  v34 = (v45 + *(v39 + 36));
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v46 = v35;
  v47 = v34;
  v48 = xmmword_1D728CF30;
  LOBYTE(v49) = 0;
  v30(v40, v29, v28);
  swift_storeEnumTagMultiPayload();
  v36 = sub_1D5B578C4();
  v37 = v51;
  sub_1D5D432A4(&v46, &v48, v33, sub_1D5B4AA6C, 0, v51, MEMORY[0x1E69E7DE0], v36);
  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  return (*(v43 + 8))(v24, v37);
}

uint64_t FormatSystemColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v187 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v186 = &v147 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v185 = &v147 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v184 = &v147 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v183 = &v147 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v182 = &v147 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v181 = &v147 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v180 = &v147 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v179 = &v147 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v178 = &v147 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v177 = &v147 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v176 = &v147 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v175 = &v147 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v174 = &v147 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v173 = &v147 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v172 = &v147 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v171 = &v147 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v170 = &v147 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v169 = &v147 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v168 = &v147 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v167 = &v147 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v166 = &v147 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v165 = &v147 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v163 = &v147 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v162 = &v147 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v160 = &v147 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v164 = &v147 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v158 = &v147 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v161 = &v147 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v157 = &v147 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v159 = &v147 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v156 = &v147 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v155 = &v147 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v154 = &v147 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v153 = &v147 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v152 = &v147 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v151 = &v147 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v150 = &v147 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v149 = &v147 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v148 = &v147 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v147 = &v147 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v129 = &v147 - v128;
  v130 = *v1;
  v188 = a1;
  v189 = v130;
  v131 = a1[3];
  v132 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v131);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v133 = sub_1D725BD1C();
  v134 = __swift_project_value_buffer(v133, qword_1EDFFCD30);
  v135 = *(*(v133 - 8) + 16);
  v135(v129, v134, v133);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v136 = v190;
  sub_1D5D2BEC4(v129, sub_1D5B4AA6C, 0, v131, v132);
  if (v136)
  {
    return sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  }

  v137 = v135;
  sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  v138 = v188;
  v139 = v188[3];
  v190 = v188[4];
  __swift_project_boxed_opaque_existential_1(v188, v139);
  v140 = v134;
  switch(v189)
  {
    case 1:
      v141 = v148;
      v135(v148, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 2:
      v141 = v149;
      v135(v149, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 3:
      v141 = v150;
      v135(v150, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 4:
      v141 = v151;
      v135(v151, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 5:
      v141 = v152;
      v135(v152, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 6:
      v141 = v153;
      v135(v153, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 7:
      v141 = v154;
      v135(v154, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 8:
      v141 = v155;
      v135(v155, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 9:
      v141 = v156;
      v135(v156, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 10:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v133, qword_1EDFFCDE0);
      v142 = v159;
      (v135)();
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
    case 11:
      v141 = v157;
      v135(v157, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 12:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v133, qword_1EDFFCDE0);
      v142 = v161;
      (v135)();
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
    case 13:
      v141 = v158;
      v135(v158, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 14:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v133, qword_1EDFFCDE0);
      v142 = v164;
      (v135)();
      swift_storeEnumTagMultiPayload();
LABEL_44:
      sub_1D5D2BEC4(v142, sub_1D5B4AA6C, 0, v139, v190);
      v144 = v142;
      break;
    case 15:
      v141 = v160;
      v135(v160, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 16:
      v141 = v162;
      v135(v162, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 17:
      v141 = v163;
      v135(v163, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 18:
      v141 = v165;
      v135(v165, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 19:
      v141 = v166;
      v135(v166, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 20:
      v141 = v167;
      v135(v167, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 21:
      v141 = v168;
      v135(v168, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 22:
      v141 = v169;
      v135(v169, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 23:
      v141 = v170;
      v135(v170, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 24:
      v141 = v171;
      v135(v171, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 25:
      v141 = v172;
      v135(v172, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 26:
      v141 = v173;
      v135(v173, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 27:
      v141 = v174;
      v135(v174, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 28:
      v141 = v175;
      v135(v175, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 29:
      v141 = v176;
      v135(v176, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 30:
      v141 = v177;
      v135(v177, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 31:
      v141 = v178;
      v135(v178, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 32:
      v141 = v179;
      v135(v179, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 33:
      v141 = v180;
      v135(v180, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 34:
      v141 = v181;
      v135(v181, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 35:
      v141 = v182;
      v135(v182, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 36:
      v141 = v183;
      v135(v183, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 37:
      v141 = v184;
      v135(v184, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 38:
      v141 = v185;
      v135(v185, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 39:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v145 = __swift_project_value_buffer(v133, qword_1EDFFCD68);
      v144 = v186;
      v137(v186, v145, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_52;
    case 40:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v143 = __swift_project_value_buffer(v133, qword_1EDFFCD68);
      v144 = v187;
      v137(v187, v143, v133);
      swift_storeEnumTagMultiPayload();
LABEL_52:
      sub_1D5D2BEC4(v144, sub_1D5B4AA6C, 0, v139, v190);
      break;
    default:
      v141 = v147;
      v135(v147, v140, v133);
      swift_storeEnumTagMultiPayload();
LABEL_59:
      sub_1D5D2BEC4(v141, sub_1D5B4AA6C, 0, v139, v190);
      v144 = v141;
      break;
  }

  sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v138, v138[3]);
  sub_1D7264B3C();
  v192 = v189;
  FormatSystemColor.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v191, v191[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v191);
}

uint64_t sub_1D5D432A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a8;
  v9 = v8;
  v49 = a4;
  v50 = a5;
  v51 = a3;
  v63 = a2;
  v60 = a1;
  v12 = sub_1D726393C();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = v47 - v14;
  v56 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v48 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 + 16);
  v18 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v26 = v47 - v25;
  v52 = a6;
  v53 = v9;
  v27 = (v9 + *(a6 + 44));
  v28 = *v27;
  v54 = v27[1];
  v55 = v28;
  (*(v21 + 16))(v26, v63, AssociatedTypeWitness, v24);
  v29 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v30 = (v22 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v47[1] = v19;
  v47[2] = v18;
  v31[2] = v19;
  v31[3] = a7;
  v31[4] = v18;
  v33 = v58;
  v32 = v59;
  v31[5] = v62;
  v34 = v31 + v29;
  v35 = v57;
  (*(v21 + 32))(v34, v26, AssociatedTypeWitness);
  v36 = v56;
  v37 = (v31 + v30);
  v38 = a7;
  v39 = v54;
  *v37 = v55;
  v37[1] = v39;
  (*(v33 + 16))(v35, v60, v32);
  if ((*(v36 + 48))(v35, 1, v38) == 1)
  {

    return (*(v33 + 8))(v35, v32);
  }

  else
  {
    v41 = v48;
    v42 = (*(v36 + 32))(v48, v35, v38);
    MEMORY[0x1EEE9AC00](v42, v43);
    v44 = v50;
    v47[-4] = v49;
    v47[-3] = v44;
    v47[-2] = sub_1D71B6920;
    v47[-1] = v31;

    v45 = v61;
    v46 = sub_1D5D45A98(v51, v63, sub_1D71B6A7C, &v47[-6], v52);
    if (!v45 && (v46 & 1) != 0)
    {
      sub_1D72647EC();
    }

    (*(v36 + 8))(v41, v38);
  }
}

unint64_t sub_1D5D436D8()
{
  result = qword_1EDF04D60;
  if (!qword_1EDF04D60)
  {
    sub_1D5C34D84(255, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
    sub_1D5D43774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04D60);
  }

  return result;
}

unint64_t sub_1D5D43774()
{
  result = qword_1EDF0D300;
  if (!qword_1EDF0D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D300);
  }

  return result;
}

uint64_t FormatTextNodeTransform.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatTextNodeTransform, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatTextNodeTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D5D43BC4(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D5D43BC4(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D5D43BC4(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D5D43BC4(char a1, uint64_t a2)
{
  v14 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66F6294;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D43D1C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D43D1C()
{
  result = qword_1EDF0D308;
  if (!qword_1EDF0D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D308);
  }

  return result;
}

void sub_1D5D43DC0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0x7361637265776F6CLL;
  v5 = 0xEA0000000000657ALL;
  if (v3 == 1)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x696C617469706163;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7361637265707075;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1D5D43E80(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = *(a2 + 16);
  sub_1D5D30DC4(0);
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709300;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D3F390();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5D44024();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D44024()
{
  result = qword_1EDF11500;
  if (!qword_1EDF11500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11500);
  }

  return result;
}

uint64_t FormatCustomFont.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v86 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v86 - v11;
  sub_1D5D44C84(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  *&v100 = *(v1 + 8);
  v19 = *(v1 + 16);
  v87 = *(v1 + 24);
  v88 = *(v1 + 32);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5C49698(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF0C5F0, sub_1D5C49698, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatCustomFont, v23, v25, v20, &type metadata for FormatCustomFont, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v91 = v27;
  v94 = v28 + 16;
  v95 = v29;
  (v29)(v12);
  v93 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v105 = v18;
  v106 = v100;
  v103 = 0uLL;
  v104 = 0;
  v30 = &v17[*(v14 + 44)];
  v99 = v12;
  v31 = *v30;
  v32 = *(v30 + 1);
  v102 = 0;
  v33 = swift_allocObject();
  *&v100 = &v86;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v102;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v86 - 4) = sub_1D5B4AA6C;
  *(&v86 - 3) = 0;
  v84 = sub_1D67088F8;
  v85 = v35;
  v102 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v102;
  v90 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D5D44BF0(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF037A8, sub_1D5D44BF0, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v96 = v38;
  v97 = v39;
  v40 = sub_1D72647CC();
  v102 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v102;
  v42 = &v17[*(v14 + 36)];
  v98 = v17;
  v43 = *(v42 + 3);
  v44 = *(v42 + 4);
  v45 = __swift_project_boxed_opaque_existential_1(v42, v43);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v86 - 4) = sub_1D615B4A4;
  *(&v86 - 3) = (&v86 - 6);
  v49 = v99;
  v84 = sub_1D67088F8;
  v85 = v36;
  v50 = v101;
  sub_1D5D2BC70(v99, sub_1D615B49C, v51, sub_1D615B4A4, (&v86 - 6), v43, v44);
  if (v50)
  {
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v52 = v98;
    return sub_1D5D2CFE8(v52, sub_1D5D44C84);
  }

  v86 = v42;
  *&v101 = v32;

  v52 = v98;
  sub_1D72647EC();
  sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

  v53 = v91;
  v54 = v92;
  v55 = v26;
  v95(v92, v91, v26);
  swift_storeEnumTagMultiPayload();
  if (v19 == 16.0)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    v56 = v89;
LABEL_7:
    v57 = v101;
    goto LABEL_8;
  }

  LOBYTE(v103) = 0;
  v60 = swift_allocObject();
  v100 = xmmword_1D728CF30;
  *(v60 + 16) = xmmword_1D728CF30;
  *(v60 + 32) = v103;
  *(v60 + 40) = v90;
  *(v60 + 48) = v101;

  v61 = sub_1D72647CC();
  LOBYTE(v103) = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v100;
  *(v62 + 40) = v103;
  v63 = *(v86 + 3);
  v64 = *(v86 + 4);
  v65 = __swift_project_boxed_opaque_existential_1(v86, v63);
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v86 - 4) = sub_1D5B4AA6C;
  *(&v86 - 3) = 0;
  v84 = sub_1D6666F40;
  v85 = v60;
  v70 = sub_1D5D2F7A4(v54, sub_1D615B49C, v69, sub_1D615B4A4, (&v86 - 6), v63, v64);
  v56 = v89;

  if (v70)
  {
    v103 = v100;
    v104 = 0;
    v105 = v19;
    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
    v53 = v91;
    v55 = v26;
    goto LABEL_7;
  }

  sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
  v55 = v26;
  v57 = v101;
  v53 = v91;
LABEL_8:
  v95(v56, v53, v55);
  swift_storeEnumTagMultiPayload();
  v58 = v90;
  v59 = v86;
  if ((v88 & 0xFF00) != 0xC00)
  {
    LOBYTE(v103) = 0;
    v71 = swift_allocObject();
    v101 = xmmword_1D7297410;
    *(v71 + 16) = xmmword_1D7297410;
    *(v71 + 32) = v103;
    *(v71 + 40) = v58;
    *(v71 + 48) = v57;

    v72 = sub_1D72647CC();
    LOBYTE(v103) = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v101;
    *(v73 + 40) = v103;
    v74 = *(v59 + 3);
    v75 = *(v59 + 4);
    v76 = __swift_project_boxed_opaque_existential_1(v59, v74);
    MEMORY[0x1EEE9AC00](v76, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v86 - 4) = sub_1D5B4AA6C;
    *(&v86 - 3) = 0;
    v84 = sub_1D67088F8;
    v85 = v71;
    v81 = sub_1D5D2F7A4(v56, sub_1D615B49C, v80, sub_1D615B4A4, (&v86 - 6), v74, v75);
    v83 = v81;

    if (v83)
    {
      v103 = v101;
      v104 = 0;
      v105 = v87;
      LOWORD(v106) = v88;
      sub_1D5FC8148();
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v52, sub_1D5D44C84);
}

void sub_1D5D44BF0(uint64_t a1)
{
  if (!qword_1EDF037A0)
  {
    sub_1D5C49698(255);
    sub_1D5B58B84(&qword_1EDF0C5F0, sub_1D5C49698, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF037A0);
    }
  }
}

void sub_1D5D44C84(uint64_t a1)
{
  if (!qword_1EDF08EE0)
  {
    sub_1D5D44BF0(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF037A8, sub_1D5D44BF0, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08EE0);
    }
  }
}

uint64_t sub_1D5D44D6C(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709230;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D35E8C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5D44F04();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D44F04()
{
  result = qword_1EDF127E0;
  if (!qword_1EDF127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127E0);
  }

  return result;
}

uint64_t FormatShine.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v71 - v20;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v73 = v25;
  sub_1D5D2EE70(&type metadata for FormatShine, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatShine, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  v74 = v26;
  v31 = v26 & 7;
  if (v31 <= 1)
  {
    if ((v26 & 7) != 0)
    {
      sub_1D5B58478(0);
      v64 = *(v63 + 48);
      v65 = &v17[*(v63 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD30);
      v68 = *(*(v66 - 8) + 16);
      v68(v17, v67, v66);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v69 = __swift_project_value_buffer(v66, qword_1EDFFCE68);
      v68(&v17[v64], v69, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v65 = 0;
      *(v65 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v39 = v73;
      sub_1D5D457AC(1, v74 & 0xFFFFFFFFFFFFFFF8, v17);
      v40 = v17;
    }

    else
    {
      sub_1D5B58478(0);
      v42 = *(v41 + 48);
      v43 = &v21[*(v41 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
      v46 = *(*(v44 - 8) + 16);
      v46(v21, v45, v44);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v44, qword_1EDFFCE68);
      v46(&v21[v42], v47, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v43 = 0;
      *(v43 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v39 = v73;
      sub_1D5D457AC(0, v74, v21);
      v40 = v21;
    }
  }

  else if (v31 == 2)
  {
    sub_1D5B58478(0);
    v49 = *(v48 + 48);
    v50 = &v13[*(v48 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725BD1C();
    v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
    v53 = *(*(v51 - 8) + 16);
    v53(v13, v52, v51);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v51, qword_1EDFFCE68);
    v53(&v13[v49], v54, v51);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v50 = 0;
    *(v50 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v39 = v73;
    sub_1D5D457AC(2, v74 & 0xFFFFFFFFFFFFFFF8, v13);
    v40 = v13;
  }

  else if (v31 == 3)
  {
    sub_1D5B58478(0);
    v33 = *(v32 + 48);
    v34 = &v9[*(v32 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
    v37 = *(*(v35 - 8) + 16);
    v37(v9, v36, v35);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
    v37(&v9[v33], v38, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v34 = 0;
    *(v34 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v39 = v73;
    sub_1D5D457AC(3, v74 & 0xFFFFFFFFFFFFFFF8, v9);
    v40 = v9;
  }

  else
  {
    sub_1D5B58478(0);
    v56 = *(v55 + 48);
    v57 = v72;
    v58 = &v72[*(v55 + 64)];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v59 = sub_1D725BD1C();
    v60 = __swift_project_value_buffer(v59, qword_1EDFFCD50);
    v61 = *(*(v59 - 8) + 16);
    v61(v57, v60, v59);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v59, qword_1EDFFCE68);
    v61(v57 + v56, v62, v59);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v58 = 0;
    *(v58 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v39 = v73;
    sub_1D5D457AC(4, v74 & 0xFFFFFFFFFFFFFFF8, v57);
    v40 = v57;
  }

  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v39, sub_1D5D30DC4);
}

uint64_t sub_1D5D457AC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F9044;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D45944();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D45944()
{
  result = qword_1EDF127F8;
  if (!qword_1EDF127F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127F8);
  }

  return result;
}

void sub_1D5D459E8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6E69685364726163;
  v5 = 0xD000000000000011;
  v6 = 0x80000001D73B8BC0;
  v7 = 0x80000001D73B8BE0;
  v8 = 0xD000000000000015;
  if (v2 != 3)
  {
    v8 = 0x69685370756F7267;
    v7 = 0xEA0000000000656ELL;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x696853656C746974;
    v3 = 0xEA0000000000656ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D5D45A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v43 = a3;
  v44 = a4;
  v39 = a2;
  v8 = *(a5 + 16);
  v7 = *(a5 + 24);
  v42 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v40 = *(v10 + 64);
  v11 = v40;
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &AssociatedTypeWitness - v14;
  v16 = (v5 + *(a5 + 44));
  v17 = v16[1];
  v34 = *v16;
  v18 = *(v10 + 16);
  v37 = v10 + 16;
  v38 = v18;
  (v18)(v15, a2, v13);
  v19 = *(v10 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = v7;
  v35 = *(v10 + 32);
  v36 = v10 + 32;
  v23 = v22 + v20;
  v24 = v22;
  v41 = v22;
  v25 = AssociatedTypeWitness;
  v35(v23, v15, AssociatedTypeWitness);
  v26 = (v24 + v21);
  *v26 = v34;
  v26[1] = v17;

  v27 = sub_1D72647CC();
  v38(v15, v39, v25);
  v28 = swift_allocObject();
  v28[2] = v8;
  v28[3] = v7;
  v28[4] = v27;
  v35(v28 + ((v19 + 40) & ~v19), v15, v25);
  v29 = (v54 + *(v42 + 36));
  v30 = v29[3];
  v31 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v52 = sub_1D71B6390;
  v53 = v28;
  v47 = v43;
  v48 = v44;
  v49 = sub_1D71B638C;
  v50 = v41;
  LOBYTE(v30) = sub_1D5D2F7A4(v45, sub_1D71B6394, v51, sub_1D71B63BC, v46, v30, v31);

  return v30 & 1;
}

uint64_t sub_1D5D45D90(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091E0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D312F0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatViewNodeStyle();
    sub_1D5B58B84(&qword_1EDF2BA98, type metadata accessor for FormatViewNodeStyle, &protocol conformance descriptor for FormatViewNodeStyle);
    sub_1D72647EC();
  }
}

uint64_t FormatViewNodeStyle.encode(to:)(void *a1)
{
  v3 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  *&v299 = &v279 - v6;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v285 = &v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v284 = &v279 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v286 = &v279 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v287 = &v279 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v288 = &v279 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v289 = &v279 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v290 = &v279 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v300 = &v279 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v279 - v33;
  sub_1D5D48664(0);
  v301 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v279 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1D5C8C1A8(0);
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EDF25438, sub_1D5C8C1A8, &unk_1D7321584);
  v328 = v38;
  v44 = v42;
  v45 = v42;
  v46 = v1;
  sub_1D5D2EE70(v3, v44, v47, v39, v3, v45, &type metadata for FormatVersions.JazzkonC, v40, v38, v43, &off_1F51F6C78);
  swift_beginAccess();
  v49 = v1[2];
  v48 = v1[3];
  v50 = qword_1EDF31EB0;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = sub_1D725BD1C();
  v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v55 = v53 + 16;
  v297 = v52;
  v54(v34);
  v298 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v56 = v299;
  sub_1D725892C();
  v57 = sub_1D725895C();
  v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
  v295 = v54;
  v296 = v46;
  v293 = v55;
  v294 = v51;
  if (v58 != 1)
  {
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v56, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v82 = v328;
    goto LABEL_8;
  }

  v291 = v49;
  sub_1D5D35558(v56, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v59 = v301;
  v60 = v328;
  v61 = &v328[*(v301 + 11)];
  v63 = *v61;
  v62 = *(v61 + 1);
  v64 = v34;
  LOBYTE(v317) = 0;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  *(v65 + 32) = v317;
  *(v65 + 40) = v63;
  *(v65 + 48) = v62;
  sub_1D5D486F8(0);
  v67 = v66;
  sub_1D5B58B84(&qword_1EDF03478, sub_1D5D486F8, MEMORY[0x1E69E6F60]);

  v292 = v67;
  v68 = sub_1D72647CC();
  LOBYTE(v317) = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v317;
  v70 = (v60 + *(v59 + 9));
  v71 = v70[3];
  v72 = v70[4];
  v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
  *&v299 = &v279;
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v279 - 4) = sub_1D5B4AA6C;
  *(&v279 - 3) = 0;
  v277 = sub_1D66D2F10;
  v278 = v65;
  v77 = v302;
  v79 = sub_1D5D2F7A4(v64, sub_1D615B49C, v78, sub_1D615B4A4, (&v279 - 6), v71, v72);
  *&v302 = v77;
  if (!v77)
  {
    v110 = v79;

    if (v110)
    {
      v317 = 0uLL;
      LOBYTE(v318) = 0;
      *&v309 = v291;
      *(&v309 + 1) = v48;
      v82 = v328;
      v111 = v302;
      sub_1D72647EC();

      sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
      *&v302 = v111;
      v54 = v295;
      v46 = v296;
      v51 = v294;
      v83 = v300;
      if (v111)
      {
        v80 = v82;
        return sub_1D5D2CFE8(v80, sub_1D5D48664);
      }

LABEL_9:
      v85 = v46[4];
      v84 = v46[5];
      (v54)(v83, v297, v51);
      swift_storeEnumTagMultiPayload();
      *&v309 = v85;
      *(&v309 + 1) = v84;
      v299 = xmmword_1D728CF30;
      v317 = xmmword_1D728CF30;
      LOBYTE(v318) = 0;
      v86 = (v82 + *(v301 + 11));
      v88 = *v86;
      v87 = v86[1];
      LOBYTE(v303) = 0;
      v89 = swift_allocObject();
      v292 = &v279;
      *(v89 + 16) = v299;
      *(v89 + 32) = v303;
      *(v89 + 40) = v88;
      *(v89 + 48) = v87;
      MEMORY[0x1EEE9AC00](v89, v90);
      v291 = &v279 - 6;
      *(&v279 - 4) = sub_1D5B4AA6C;
      *(&v279 - 3) = 0;
      v277 = sub_1D6708C2C;
      v278 = v91;
      LOBYTE(v303) = 0;
      v92 = swift_allocObject();
      *(v92 + 16) = v299;
      *(v92 + 32) = v303;
      v281 = v88;
      *(v92 + 40) = v88;
      *(v92 + 48) = v87;
      sub_1D5D486F8(0);
      v94 = v93;
      v95 = sub_1D5B58B84(&qword_1EDF03478, sub_1D5D486F8, MEMORY[0x1E69E6F60]);
      v280 = v87;
      swift_retain_n();
      v282 = v95;
      v283 = v94;
      v96 = sub_1D72647CC();
      v97 = v300;
      v98 = v96;
      LOBYTE(v303) = 0;
      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      *(v99 + 24) = v299;
      *(v99 + 40) = v303;
      v100 = (v82 + *(v301 + 9));
      v102 = v100[3];
      v101 = v100[4];
      v103 = __swift_project_boxed_opaque_existential_1(v100, v102);
      MEMORY[0x1EEE9AC00](v103, v104);
      MEMORY[0x1EEE9AC00](v105, v106);
      v107 = v291;
      *(&v279 - 4) = sub_1D615B4A4;
      *(&v279 - 3) = v107;
      v277 = sub_1D6708C2C;
      v278 = v92;
      v108 = v302;
      sub_1D5D2BC70(v97, sub_1D615B49C, v109, sub_1D615B4A4, (&v279 - 6), v102, v101);
      if (v108)
      {
        sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

        v80 = v328;
        return sub_1D5D2CFE8(v80, sub_1D5D48664);
      }

      v301 = v100;

      sub_1D72647EC();
      sub_1D5D2CFE8(v300, type metadata accessor for FormatVersionRequirement);

      v112 = v296;
      swift_beginAccess();
      v113 = v112[6];
      v114 = v290;
      v116 = v294;
      v115 = v295;
      (v295)(v290, v297, v294);
      swift_storeEnumTagMultiPayload();
      if (*(v113 + 16))
      {
        LOBYTE(v317) = 0;
        v117 = swift_allocObject();
        v302 = xmmword_1D7297410;
        *(v117 + 16) = xmmword_1D7297410;
        *(v117 + 32) = v317;
        *(v117 + 40) = v281;
        *(v117 + 48) = v280;

        v118 = v114;
        v119 = sub_1D72647CC();
        LOBYTE(v317) = 0;
        v120 = swift_allocObject();
        *(v120 + 16) = v119;
        *(v120 + 24) = v302;
        *(v120 + 40) = v317;
        v121 = v301[3];
        v122 = v301[4];
        v123 = __swift_project_boxed_opaque_existential_1(v301, v121);
        MEMORY[0x1EEE9AC00](v123, v124);
        MEMORY[0x1EEE9AC00](v125, v126);
        *(&v279 - 4) = sub_1D5B4AA6C;
        *(&v279 - 3) = 0;
        v277 = sub_1D6708C2C;
        v278 = v117;
        v128 = sub_1D5D2F7A4(v118, sub_1D615B49C, v127, sub_1D615B4A4, (&v279 - 6), v121, v122);
        v129 = v128;

        if (v129)
        {
          v317 = v302;
          LOBYTE(v318) = 0;
          *&v309 = v113;
          sub_1D5C34D84(0, &qword_1EDF04EF0, &type metadata for FormatViewNodeStyle.Selector, MEMORY[0x1E69E62F8]);
          sub_1D5D4878C();
          sub_1D72647EC();
          v116 = v294;
          v115 = v295;
          v130 = v289;

          sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
          goto LABEL_24;
        }

        sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);

        v116 = v294;
        v115 = v295;
      }

      else
      {
        sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
      }

      v130 = v289;
LABEL_24:
      v131 = v296[7];
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v132 = __swift_project_value_buffer(v116, qword_1EDFFCD18);
      v115(v130, v132, v116);
      swift_storeEnumTagMultiPayload();
      v302 = xmmword_1D72BAA60;
      v317 = xmmword_1D72BAA60;
      LOBYTE(v318) = 0;
      LOBYTE(v309) = 0;
      v133 = swift_allocObject();
      v135 = v133;
      *(v133 + 16) = v302;
      *(v133 + 32) = v309;
      v136 = v130;
      v137 = v280;
      v138 = v281;
      *(v133 + 40) = v281;
      *(v133 + 48) = v137;
      if (v131)
      {
        *&v300 = &v279;
        *&v309 = v131;
        MEMORY[0x1EEE9AC00](v133, v134);
        *(&v279 - 4) = sub_1D5B4AA6C;
        *(&v279 - 3) = 0;
        v277 = sub_1D6708C2C;
        v278 = v135;
        LOBYTE(v303) = 0;
        v140 = v139;
        v141 = swift_allocObject();
        *(v141 + 16) = v302;
        *(v141 + 32) = v303;
        *(v141 + 40) = v138;
        *(v141 + 48) = v140;
        swift_retain_n();

        v142 = sub_1D72647CC();
        LOBYTE(v303) = 0;
        v143 = swift_allocObject();
        *(v143 + 16) = v142;
        *(v143 + 24) = v302;
        *(v143 + 40) = v303;
        v144 = v301[3];
        v145 = v301[4];
        v146 = __swift_project_boxed_opaque_existential_1(v301, v144);
        MEMORY[0x1EEE9AC00](v146, v147);
        MEMORY[0x1EEE9AC00](v148, v149);
        *(&v279 - 4) = sub_1D615B4A4;
        *(&v279 - 3) = (&v279 - 6);
        v277 = sub_1D6708C2C;
        v278 = v141;
        v150 = v289;
        v152 = sub_1D5D2F7A4(v289, sub_1D615B49C, v151, sub_1D615B4A4, (&v279 - 6), v144, v145);
        v156 = v152;

        if (v156)
        {
          sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
          sub_1D66582DC();
          sub_1D72647EC();
          v115 = v295;
          v155 = v296;
          v116 = v294;
          v157 = v297;

          sub_1D5D2CFE8(v289, type metadata accessor for FormatVersionRequirement);
          v154 = v157;
        }

        else
        {

          sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
          v115 = v295;
          v155 = v296;
          v116 = v294;
          v154 = v297;
        }

        v153 = v280;
      }

      else
      {
        v153 = v137;

        sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);

        v155 = v296;
        v154 = v297;
      }

      v158 = v155[8];
      v115(v288, v154, v116);
      swift_storeEnumTagMultiPayload();
      v302 = xmmword_1D72BAA70;
      v317 = xmmword_1D72BAA70;
      LOBYTE(v318) = 0;
      LOBYTE(v309) = 0;
      v159 = swift_allocObject();
      v161 = v159;
      *(v159 + 16) = v302;
      *(v159 + 32) = v309;
      v162 = v281;
      *(v159 + 40) = v281;
      *(v159 + 48) = v153;
      if ((~v158 & 0xF000000000000007) != 0)
      {
        *&v300 = &v279;
        *&v309 = v158;
        MEMORY[0x1EEE9AC00](v159, v160);
        *(&v279 - 4) = sub_1D5B4AA6C;
        *(&v279 - 3) = 0;
        v277 = sub_1D6708C2C;
        v278 = v161;
        LOBYTE(v303) = 0;
        v183 = swift_allocObject();
        *(v183 + 16) = v302;
        *(v183 + 32) = v303;
        *(v183 + 40) = v162;
        *(v183 + 48) = v153;
        swift_retain_n();
        sub_1D5D04BD4(v158);
        v184 = sub_1D72647CC();
        LOBYTE(v303) = 0;
        v185 = swift_allocObject();
        *(v185 + 16) = v184;
        *(v185 + 24) = v302;
        *(v185 + 40) = v303;
        v186 = v301[3];
        v187 = v301[4];
        v188 = __swift_project_boxed_opaque_existential_1(v301, v186);
        MEMORY[0x1EEE9AC00](v188, v189);
        MEMORY[0x1EEE9AC00](v190, v191);
        *(&v279 - 4) = sub_1D615B4A4;
        *(&v279 - 3) = (&v279 - 6);
        v277 = sub_1D6708C2C;
        v278 = v183;
        v193 = sub_1D5D2F7A4(v288, sub_1D615B49C, v192, sub_1D615B4A4, (&v279 - 6), v186, v187);
        v197 = v193;

        if (v197)
        {
          sub_1D5D4A808();
          sub_1D72647EC();
          v163 = v296;
          v116 = v294;
          v162 = v281;
          *&v302 = 0;

          v153 = v280;
        }

        else
        {
          *&v302 = 0;

          v163 = v296;
          v116 = v294;
          v153 = v280;
          v162 = v281;
        }
      }

      else
      {
        *&v302 = 0;

        v163 = v296;
      }

      sub_1D5D2CFE8(v288, type metadata accessor for FormatVersionRequirement);
      v164 = v163[9];
      v165 = v297;
      (v295)(v287, v297, v116);
      swift_storeEnumTagMultiPayload();
      v300 = xmmword_1D72BAA80;
      v317 = xmmword_1D72BAA80;
      LOBYTE(v318) = 0;
      LOBYTE(v309) = 0;
      v166 = swift_allocObject();
      v168 = v166;
      *(v166 + 16) = v300;
      *(v166 + 32) = v309;
      *(v166 + 40) = v162;
      *(v166 + 48) = v153;
      if (v164)
      {
        v292 = &v279;
        *&v309 = v164;
        MEMORY[0x1EEE9AC00](v166, v167);
        *(&v279 - 4) = sub_1D5B4AA6C;
        *(&v279 - 3) = 0;
        v277 = sub_1D6708C2C;
        v278 = v168;
        LOBYTE(v303) = 0;
        v169 = swift_allocObject();
        *(v169 + 16) = v300;
        *(v169 + 32) = v303;
        *(v169 + 40) = v162;
        *(v169 + 48) = v153;
        swift_retain_n();
        *&v299 = v164;

        v170 = sub_1D72647CC();
        LOBYTE(v303) = 0;
        v171 = swift_allocObject();
        *(v171 + 16) = v170;
        *(v171 + 24) = v300;
        *(v171 + 40) = v303;
        v172 = v301[3];
        v173 = v301[4];
        v174 = __swift_project_boxed_opaque_existential_1(v301, v172);
        MEMORY[0x1EEE9AC00](v174, v175);
        MEMORY[0x1EEE9AC00](v176, v177);
        *(&v279 - 4) = sub_1D615B4A4;
        *(&v279 - 3) = (&v279 - 6);
        v277 = sub_1D6708C2C;
        v278 = v169;
        v178 = v287;
        v179 = v302;
        v181 = sub_1D5D2F7A4(v287, sub_1D615B49C, v180, sub_1D615B4A4, (&v279 - 6), v172, v173);
        if (v179)
        {

          v182 = v328;
          sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
          v80 = v182;
          return sub_1D5D2CFE8(v80, sub_1D5D48664);
        }

        v198 = v181;

        if (v198)
        {
          sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
          sub_1D66612AC();
          sub_1D72647EC();
          v195 = 0;
          v163 = v296;
          v199 = v297;

          sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);
          v196 = v199;
        }

        else
        {

          sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
          v195 = 0;
          v163 = v296;
          v196 = v297;
        }

        v194 = v280;
      }

      else
      {
        v194 = v153;

        sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);

        v195 = v302;
        v196 = v165;
      }

      v200 = v163[10];
      *&v300 = v163[11];
      v201 = *(v163 + 96);
      v202 = v286;
      (v295)(v286, v196, v294);
      swift_storeEnumTagMultiPayload();
      v302 = xmmword_1D72BAA90;
      v326 = xmmword_1D72BAA90;
      v327 = 0;
      LOBYTE(v317) = 0;
      v203 = swift_allocObject();
      v205 = v203;
      *(v203 + 16) = v302;
      *(v203 + 32) = v317;
      v206 = v281;
      *(v203 + 40) = v281;
      *(v203 + 48) = v194;
      if (v201 <= 0xFD)
      {
        *&v299 = &v279;
        v227 = v300;
        v323 = v200;
        v324 = v300;
        v325 = v201;
        MEMORY[0x1EEE9AC00](v203, v204);
        v292 = &v279 - 6;
        *(&v279 - 4) = sub_1D5B4AA6C;
        *(&v279 - 3) = 0;
        v277 = sub_1D6708C2C;
        v278 = v205;
        LOBYTE(v317) = 0;
        v229 = v228;
        v230 = swift_allocObject();
        *(v230 + 16) = v302;
        *(v230 + 32) = v317;
        *(v230 + 40) = v206;
        *(v230 + 48) = v229;
        v231 = v301;
        swift_retain_n();
        sub_1D5ED34B0(v200, v227, v201);
        v232 = sub_1D72647CC();
        LOBYTE(v317) = 0;
        v233 = swift_allocObject();
        *(v233 + 16) = v232;
        *(v233 + 24) = v302;
        *(v233 + 40) = v317;
        v234 = v231[3];
        v235 = v231[4];
        v236 = __swift_project_boxed_opaque_existential_1(v231, v234);
        MEMORY[0x1EEE9AC00](v236, v237);
        MEMORY[0x1EEE9AC00](v238, v239);
        v240 = v292;
        *(&v279 - 4) = sub_1D615B4A4;
        *(&v279 - 3) = v240;
        v241 = v286;
        v277 = sub_1D6708C2C;
        v278 = v230;
        v243 = sub_1D5D2F7A4(v286, sub_1D615B49C, v242, sub_1D615B4A4, (&v279 - 6), v234, v235);
        if (v195)
        {

          v244 = v328;
          sub_1D5ED34A0(v323, v324, v325);
          sub_1D5D2CFE8(v241, type metadata accessor for FormatVersionRequirement);
          v80 = v244;
          return sub_1D5D2CFE8(v80, sub_1D5D48664);
        }

        v273 = v243;

        v208 = v285;
        if (v273)
        {
          sub_1D6661258();
          sub_1D72647EC();
          v163 = v296;
          v274 = v297;
          *&v302 = 0;

          sub_1D5ED34A0(v323, v324, v325);
          sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);
          v209 = v274;
          v207 = v280;
LABEL_50:
          v210 = *(v163 + 19);
          v319 = *(v163 + 17);
          v320 = v210;
          v321 = *(v163 + 21);
          v322 = *(v163 + 184);
          v211 = v163;
          v212 = *(v163 + 15);
          v317 = *(v163 + 13);
          v318 = v212;
          v213 = v284;
          (v295)(v284, v209, v294);
          swift_storeEnumTagMultiPayload();
          v300 = xmmword_1D72BAAA0;
          v315 = xmmword_1D72BAAA0;
          v316 = 0;
          LOBYTE(v309) = 0;
          v214 = swift_allocObject();
          v216 = v214;
          *(v214 + 16) = v300;
          *(v214 + 32) = v309;
          v217 = v281;
          *(v214 + 40) = v281;
          *(v214 + 48) = v207;
          if (v322 == 254)
          {

            v218 = v302;
            v219 = v328;
          }

          else
          {
            *&v299 = &v279;
            v311 = v319;
            v312 = v320;
            v313 = v321;
            v314 = v322;
            v309 = v317;
            v310 = v318;
            MEMORY[0x1EEE9AC00](v214, v215);
            *(&v279 - 4) = sub_1D5B4AA6C;
            *(&v279 - 3) = 0;
            v277 = sub_1D6708C2C;
            v278 = v216;
            LOBYTE(v303) = 0;
            v245 = swift_allocObject();
            *(v245 + 16) = v300;
            *(v245 + 32) = v303;
            *(v245 + 40) = v217;
            *(v245 + 48) = v207;
            swift_retain_n();
            sub_1D5D355B8(&v317, &v303, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
            v246 = v301;
            v247 = v213;
            v248 = sub_1D72647CC();
            LOBYTE(v303) = 0;
            v249 = swift_allocObject();
            *(v249 + 16) = v248;
            *(v249 + 24) = v300;
            *(v249 + 40) = v303;
            v250 = v246[3];
            v251 = v246[4];
            v252 = __swift_project_boxed_opaque_existential_1(v246, v250);
            MEMORY[0x1EEE9AC00](v252, v253);
            MEMORY[0x1EEE9AC00](v254, v255);
            *(&v279 - 4) = sub_1D615B4A4;
            *(&v279 - 3) = (&v279 - 6);
            v277 = sub_1D6708C2C;
            v278 = v245;
            v256 = v302;
            v258 = sub_1D5D2F7A4(v247, sub_1D615B49C, v257, sub_1D615B4A4, (&v279 - 6), v250, v251);
            v218 = v256;
            if (v256)
            {

              v305 = v311;
              v306 = v312;
              v307 = v313;
              v308 = v314;
              v303 = v309;
              v304 = v310;
              sub_1D601144C(&v303);
              v219 = v328;
              sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);
              goto LABEL_63;
            }

            v275 = v258;

            v208 = v285;
            if (v275)
            {
              sub_1D6661204();
              v219 = v328;
              sub_1D72647EC();
              v211 = v296;

              v305 = v311;
              v306 = v312;
              v307 = v313;
              v308 = v314;
              v303 = v309;
              v304 = v310;
              sub_1D601144C(&v303);
              v213 = v284;
            }

            else
            {

              v305 = v311;
              v306 = v312;
              v307 = v313;
              v308 = v314;
              v303 = v309;
              v304 = v310;
              sub_1D601144C(&v303);
              v219 = v328;
              v213 = v284;
              v211 = v296;
            }
          }

          sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);
          v220 = *(v211 + 185);
          if (qword_1EDF31F08 != -1)
          {
            swift_once();
          }

          v221 = v294;
          v222 = __swift_project_value_buffer(v294, qword_1EDFFCDE0);
          (v295)(v208, v222, v221);
          swift_storeEnumTagMultiPayload();
          v302 = xmmword_1D72BAAB0;
          v309 = xmmword_1D72BAAB0;
          LOBYTE(v310) = 0;
          LOBYTE(v303) = 0;
          v224 = swift_allocObject();
          *(v224 + 16) = v302;
          *(v224 + 32) = v303;
          v225 = v281;
          *(v224 + 40) = v281;
          v226 = v280;
          *(v224 + 48) = v280;
          if (v220 == 2)
          {
          }

          else
          {
            v259 = v301;
            *&v300 = &v279;
            LOBYTE(v303) = v220 & 1;
            MEMORY[0x1EEE9AC00](v226, v223);
            *(&v279 - 4) = sub_1D5B4AA6C;
            *(&v279 - 3) = 0;
            v277 = sub_1D6708C2C;
            v278 = v224;
            LOBYTE(v315) = 0;
            v261 = v260;
            v262 = swift_allocObject();
            *(v262 + 16) = v302;
            *(v262 + 32) = v315;
            *(v262 + 40) = v225;
            *(v262 + 48) = v261;
            swift_retain_n();
            v263 = sub_1D72647CC();
            LOBYTE(v315) = 0;
            v264 = swift_allocObject();
            *(v264 + 16) = v263;
            *(v264 + 24) = v302;
            *(v264 + 40) = v315;
            v265 = v259[3];
            v266 = v259[4];
            v267 = __swift_project_boxed_opaque_existential_1(v259, v265);
            MEMORY[0x1EEE9AC00](v267, v268);
            MEMORY[0x1EEE9AC00](v269, v270);
            *(&v279 - 4) = sub_1D615B4A4;
            *(&v279 - 3) = (&v279 - 6);
            v208 = v285;
            v277 = sub_1D6708C2C;
            v278 = v262;
            v272 = sub_1D5D2F7A4(v285, sub_1D615B49C, v271, sub_1D615B4A4, (&v279 - 6), v265, v266);
            if (v218)
            {
              sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);

              v219 = v328;
              goto LABEL_63;
            }

            v276 = v272;

            v219 = v328;
            if (v276)
            {
              sub_1D72647EC();
            }
          }

          sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);

LABEL_63:
          v80 = v219;
          return sub_1D5D2CFE8(v80, sub_1D5D48664);
        }

        *&v302 = 0;

        sub_1D5ED34A0(v323, v324, v325);
        sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);
        v163 = v296;
        v207 = v280;
      }

      else
      {
        *&v302 = v195;
        v207 = v194;

        sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);

        v208 = v285;
      }

      v209 = v297;
      goto LABEL_50;
    }

    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

    v82 = v328;
    v54 = v295;
    v46 = v296;
    v51 = v294;
LABEL_8:
    v83 = v300;
    goto LABEL_9;
  }

  sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

  v80 = v60;
  return sub_1D5D2CFE8(v80, sub_1D5D48664);
}

void sub_1D5D48664(uint64_t a1)
{
  if (!qword_1EDF08D48)
  {
    sub_1D5D486F8(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03478, sub_1D5D486F8, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08D48);
    }
  }
}

void sub_1D5D486F8(uint64_t a1)
{
  if (!qword_1EDF03470)
  {
    sub_1D5C8C1A8(255);
    sub_1D5B58B84(&qword_1EDF25438, sub_1D5C8C1A8, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03470);
    }
  }
}

unint64_t sub_1D5D4878C()
{
  result = qword_1EDF04EE8;
  if (!qword_1EDF04EE8)
  {
    sub_1D5C34D84(255, &qword_1EDF04EF0, &type metadata for FormatViewNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D5C8C154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04EE8);
  }

  return result;
}

uint64_t FormatViewNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v198 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v202 = &v194 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v204 = &v194 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v206 = &v194 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v205 = &v194 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v212 = (&v194 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v194 - v23;
  sub_1D5D4A774(0);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 8);
  *&v220 = *v1;
  v31 = *(v1 + 24);
  v207 = *(v1 + 16);
  v208 = v31;
  v32 = *(v1 + 32);
  v200 = *(v1 + 40);
  v201 = v32;
  v203 = *(v1 + 48);
  v33 = *(v1 + 104);
  v242 = *(v1 + 88);
  v243 = v33;
  v244 = *(v1 + 120);
  v245 = *(v1 + 136);
  v34 = *(v1 + 72);
  v240 = *(v1 + 56);
  v241 = v34;
  v199 = *(v1 + 144);
  v197 = *(v1 + 152);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D5C4A640(0);
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF25428, sub_1D5C4A640, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatViewNodeStyle.Selector, v38, v40, v35, &type metadata for FormatViewNodeStyle.Selector, v38, &type metadata for FormatVersions.JazzkonC, v36, v29, v39, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v214 = v43 + 16;
  v215 = v42;
  v211 = v41;
  v213 = v44;
  (v44)(v24);
  v216 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v221 = v220;
  *(&v221 + 1) = v30;
  v227 = 0uLL;
  LOBYTE(v228) = 0;
  v45 = &v29[*(v26 + 44)];
  v46 = *v45;
  v47 = *(v45 + 1);
  v219 = v24;
  LOBYTE(v238) = 0;
  v48 = swift_allocObject();
  *&v220 = &v194;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v238;
  *(v48 + 40) = v46;
  *(v48 + 48) = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v194 - 4) = sub_1D5B4AA6C;
  *(&v194 - 3) = 0;
  v192 = sub_1D6708C30;
  v193 = v50;
  LOBYTE(v238) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v238;
  v210 = v46;
  *(v51 + 40) = v46;
  *(v51 + 48) = v47;
  sub_1D5D4A6E0(0);
  v53 = v52;
  v54 = sub_1D5B58B84(&qword_1EDF03468, sub_1D5D4A6E0, MEMORY[0x1E69E6F60]);
  v209 = v47;
  swift_retain_n();
  v217 = v53;
  v218 = v54;
  v55 = sub_1D72647CC();
  LOBYTE(v238) = 0;
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  *(v56 + 16) = v55;
  *(v56 + 40) = v238;
  v57 = v29;
  v58 = &v29[*(v26 + 36)];
  v59 = *(v58 + 3);
  v60 = *(v58 + 4);
  v61 = __swift_project_boxed_opaque_existential_1(v58, v59);
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v194 - 4) = sub_1D615B4A4;
  *(&v194 - 3) = (&v194 - 6);
  v192 = sub_1D6708C30;
  v193 = v51;
  v65 = v219;
  v66 = v246;
  sub_1D5D2BC70(v219, sub_1D615B49C, v67, sub_1D615B4A4, (&v194 - 6), v59, v60);
  if (!v66)
  {
    v246 = v58;

    sub_1D5D3E60C();
    sub_1D72647EC();
    v196 = v57;
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

    v69 = v212;
    v70 = v211;
    v71 = v213;
    (v213)(v212, v215);
    swift_storeEnumTagMultiPayload();
    v220 = xmmword_1D728CF30;
    v227 = xmmword_1D728CF30;
    LOBYTE(v228) = 0;
    LOBYTE(v221) = 0;
    v72 = swift_allocObject();
    v74 = v72;
    *(v72 + 16) = v220;
    *(v72 + 32) = v221;
    v75 = v209;
    v76 = v210;
    *(v72 + 40) = v210;
    *(v72 + 48) = v75;
    v77 = v207;
    if ((~v207 & 0xF000000000000007) != 0)
    {
      v219 = &v194;
      *&v221 = v207;
      MEMORY[0x1EEE9AC00](v72, v73);
      v195 = &v194 - 6;
      *(&v194 - 4) = sub_1D5B4AA6C;
      *(&v194 - 3) = 0;
      v192 = sub_1D6708C30;
      v193 = v74;
      LOBYTE(v238) = 0;
      v97 = swift_allocObject();
      *(v97 + 16) = v220;
      *(v97 + 32) = v238;
      *(v97 + 40) = v76;
      *(v97 + 48) = v75;
      swift_retain_n();
      sub_1D5D04BD4(v77);
      v98 = sub_1D72647CC();
      LOBYTE(v238) = 0;
      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      *(v99 + 24) = v220;
      *(v99 + 40) = v238;
      v100 = *(v246 + 3);
      v101 = *(v246 + 4);
      v102 = __swift_project_boxed_opaque_existential_1(v246, v100);
      MEMORY[0x1EEE9AC00](v102, v103);
      MEMORY[0x1EEE9AC00](v104, v105);
      v106 = v195;
      *(&v194 - 4) = sub_1D615B4A4;
      *(&v194 - 3) = v106;
      v192 = sub_1D6708C30;
      v193 = v97;
      v108 = sub_1D5D2F7A4(v69, sub_1D615B49C, v107, sub_1D615B4A4, (&v194 - 6), v100, v101);
      v112 = v108;

      if (v112)
      {
        sub_1D5D4A808();
        sub_1D72647EC();
        v76 = v210;
        v70 = v211;
        v69 = v212;
        v113 = v213;
        v219 = 0;

        v75 = v209;
        v78 = v113;
      }

      else
      {
        v219 = 0;

        v75 = v209;
        v76 = v210;
        v70 = v211;
        v69 = v212;
        v78 = v213;
      }
    }

    else
    {
      v219 = 0;

      v78 = v71;
    }

    sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
    v79 = v205;
    v78(v205, v215, v70);
    swift_storeEnumTagMultiPayload();
    v220 = xmmword_1D7297410;
    v227 = xmmword_1D7297410;
    LOBYTE(v228) = 0;
    LOBYTE(v221) = 0;
    v80 = swift_allocObject();
    v82 = v80;
    *(v80 + 16) = v220;
    *(v80 + 32) = v221;
    *(v80 + 40) = v76;
    *(v80 + 48) = v75;
    if (v208)
    {
      v212 = &v194;
      *&v221 = v208;
      MEMORY[0x1EEE9AC00](v80, v81);
      *(&v194 - 4) = sub_1D5B4AA6C;
      *(&v194 - 3) = 0;
      v192 = sub_1D6708C30;
      v193 = v82;
      LOBYTE(v238) = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = v220;
      *(v83 + 32) = v238;
      *(v83 + 40) = v76;
      *(v83 + 48) = v75;
      swift_retain_n();

      v84 = sub_1D72647CC();
      LOBYTE(v238) = 0;
      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      *(v85 + 24) = v220;
      *(v85 + 40) = v238;
      v86 = *(v246 + 3);
      v87 = *(v246 + 4);
      v88 = __swift_project_boxed_opaque_existential_1(v246, v86);
      MEMORY[0x1EEE9AC00](v88, v89);
      MEMORY[0x1EEE9AC00](v90, v91);
      *(&v194 - 4) = sub_1D615B4A4;
      *(&v194 - 3) = (&v194 - 6);
      v192 = sub_1D6708C30;
      v193 = v83;
      v92 = v219;
      v94 = sub_1D5D2F7A4(v79, sub_1D615B49C, v93, sub_1D615B4A4, (&v194 - 6), v86, v87);
      if (v92)
      {

        v95 = v196;
        sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
        v68 = v95;
        return sub_1D5D2CFE8(v68, sub_1D5D4A774);
      }

      v114 = v94;

      if (v114)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v111 = v196;
        sub_1D72647EC();
        v110 = v211;
        v78 = v213;
        v219 = 0;

        sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);
        v75 = v209;
        v109 = v210;
        v78(v206, v215, v110);
      }

      else
      {
        v219 = 0;

        sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
        v111 = v196;
        v75 = v209;
        v109 = v210;
        v110 = v211;
        v78 = v213;
        v213(v206, v215, v211);
      }
    }

    else
    {

      sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

      v109 = v76;
      v110 = v70;
      v111 = v196;
      v78(v206, v215, v70);
    }

    swift_storeEnumTagMultiPayload();
    v220 = xmmword_1D72BAA60;
    v238 = xmmword_1D72BAA60;
    v239 = 0;
    LOBYTE(v227) = 0;
    v115 = swift_allocObject();
    v117 = v115;
    *(v115 + 16) = v220;
    *(v115 + 32) = v227;
    *(v115 + 40) = v109;
    *(v115 + 48) = v75;
    v118 = v203;
    if (v203 <= 0xFD)
    {
      v212 = &v194;
      v142 = v200;
      v141 = v201;
      v235 = v201;
      v236 = v200;
      v237 = v203;
      MEMORY[0x1EEE9AC00](v115, v116);
      v208 = &v194 - 6;
      *(&v194 - 4) = sub_1D5B4AA6C;
      *(&v194 - 3) = 0;
      v192 = sub_1D6708C30;
      v193 = v117;
      LOBYTE(v227) = 0;
      v143 = swift_allocObject();
      *(v143 + 16) = v220;
      *(v143 + 32) = v227;
      *(v143 + 40) = v109;
      *(v143 + 48) = v75;
      swift_retain_n();
      sub_1D5ED34B0(v141, v142, v118);
      v144 = sub_1D72647CC();
      LOBYTE(v227) = 0;
      v145 = swift_allocObject();
      *(v145 + 16) = v144;
      *(v145 + 24) = v220;
      *(v145 + 40) = v227;
      v146 = *(v246 + 3);
      v147 = *(v246 + 4);
      v148 = __swift_project_boxed_opaque_existential_1(v246, v146);
      MEMORY[0x1EEE9AC00](v148, v149);
      MEMORY[0x1EEE9AC00](v150, v151);
      v152 = v208;
      *(&v194 - 4) = sub_1D615B4A4;
      *(&v194 - 3) = v152;
      v192 = sub_1D6708C30;
      v193 = v143;
      v153 = v206;
      v154 = v219;
      v156 = sub_1D5D2F7A4(v206, sub_1D615B49C, v155, sub_1D615B4A4, (&v194 - 6), v146, v147);
      if (v154)
      {

        v111 = v196;
        sub_1D5ED34A0(v235, v236, v237);
        goto LABEL_30;
      }

      v169 = v156;

      if (v169)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v110 = v211;
        v78 = v213;
        v219 = 0;

        sub_1D5ED34A0(v235, v236, v237);
        sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);
        v119 = v202;
        v75 = v209;
        v109 = v210;
        v111 = v196;
        v78(v204, v215, v110);
      }

      else
      {
        v219 = 0;

        sub_1D5ED34A0(v235, v236, v237);
        sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
        v111 = v196;
        v119 = v202;
        v75 = v209;
        v109 = v210;
        v110 = v211;
        v78 = v213;
        v213(v204, v215, v211);
      }
    }

    else
    {

      sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);

      v119 = v202;
      v78(v204, v215, v110);
    }

    swift_storeEnumTagMultiPayload();
    v220 = xmmword_1D72BAA70;
    v233 = xmmword_1D72BAA70;
    v234 = 0;
    LOBYTE(v227) = 0;
    v120 = swift_allocObject();
    v122 = v120;
    *(v120 + 16) = v220;
    *(v120 + 32) = v227;
    *(v120 + 40) = v109;
    *(v120 + 48) = v75;
    if (v245 == 254)
    {

LABEL_23:
      sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
      v78(v119, v215, v110);
      swift_storeEnumTagMultiPayload();
      v220 = xmmword_1D72BAA80;
      v227 = xmmword_1D72BAA80;
      LOBYTE(v228) = 0;
      LOBYTE(v221) = 0;
      v123 = swift_allocObject();
      v125 = v123;
      *(v123 + 16) = v220;
      *(v123 + 32) = v221;
      *(v123 + 40) = v109;
      *(v123 + 48) = v75;
      if (v199)
      {
        v215 = &v194;
        *&v221 = v199;
        MEMORY[0x1EEE9AC00](v123, v124);
        v212 = &v194 - 6;
        *(&v194 - 4) = sub_1D5B4AA6C;
        *(&v194 - 3) = 0;
        v192 = sub_1D6708C30;
        v193 = v125;
        LOBYTE(v233) = 0;
        v126 = swift_allocObject();
        *(v126 + 16) = v220;
        *(v126 + 32) = v233;
        *(v126 + 40) = v109;
        *(v126 + 48) = v75;
        swift_retain_n();

        v127 = sub_1D72647CC();
        LOBYTE(v233) = 0;
        v128 = swift_allocObject();
        *(v128 + 16) = v127;
        *(v128 + 24) = v220;
        *(v128 + 40) = v233;
        v129 = *(v246 + 3);
        v130 = *(v246 + 4);
        v131 = __swift_project_boxed_opaque_existential_1(v246, v129);
        MEMORY[0x1EEE9AC00](v131, v132);
        MEMORY[0x1EEE9AC00](v133, v134);
        v135 = v212;
        *(&v194 - 4) = sub_1D615B4A4;
        *(&v194 - 3) = v135;
        v192 = sub_1D6708C30;
        v193 = v126;
        v136 = v219;
        v138 = sub_1D5D2F7A4(v119, sub_1D615B49C, v137, sub_1D615B4A4, (&v194 - 6), v129, v130);
        v139 = v136;
        if (v136)
        {

          v140 = v196;

          sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
          v68 = v140;
          return sub_1D5D2CFE8(v68, sub_1D5D4A774);
        }

        v171 = v138;

        if (v171)
        {
          sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
          sub_1D66582DC();
          v172 = v196;
          sub_1D72647EC();
          v110 = v211;

          sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
          v75 = v209;
          v111 = v172;
        }

        else
        {

          sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
          v111 = v196;
          v75 = v209;
          v110 = v211;
        }
      }

      else
      {

        sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

        v139 = v219;
      }

      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v173 = __swift_project_value_buffer(v110, qword_1EDFFCDE0);
      v174 = v198;
      v213(v198, v173, v110);
      swift_storeEnumTagMultiPayload();
      v220 = xmmword_1D72BAA90;
      v227 = xmmword_1D72BAA90;
      LOBYTE(v228) = 0;
      LOBYTE(v221) = 0;
      v175 = swift_allocObject();
      v177 = v175;
      *(v175 + 16) = v220;
      *(v175 + 32) = v221;
      v178 = v210;
      *(v175 + 40) = v210;
      *(v175 + 48) = v75;
      if (v197 == 2)
      {

        v179 = v174;
      }

      else
      {
        v219 = &v194;
        LOBYTE(v221) = v197 & 1;
        MEMORY[0x1EEE9AC00](v175, v176);
        v216 = &v194 - 6;
        *(&v194 - 4) = sub_1D5B4AA6C;
        *(&v194 - 3) = 0;
        v192 = sub_1D6708C30;
        v193 = v177;
        LOBYTE(v233) = 0;
        v180 = swift_allocObject();
        *(v180 + 16) = v220;
        *(v180 + 32) = v233;
        *(v180 + 40) = v178;
        *(v180 + 48) = v75;
        swift_retain_n();
        v181 = sub_1D72647CC();
        LOBYTE(v233) = 0;
        v182 = swift_allocObject();
        *(v182 + 16) = v181;
        *(v182 + 24) = v220;
        *(v182 + 40) = v233;
        v183 = v139;
        v184 = *(v246 + 3);
        v185 = *(v246 + 4);
        v186 = __swift_project_boxed_opaque_existential_1(v246, v184);
        MEMORY[0x1EEE9AC00](v186, v187);
        MEMORY[0x1EEE9AC00](v188, v189);
        v190 = v216;
        *(&v194 - 4) = sub_1D615B4A4;
        *(&v194 - 3) = v190;
        v192 = sub_1D66D2FA0;
        v193 = v180;
        sub_1D5D2F7A4(v174, sub_1D615B49C, v191, sub_1D615B4A4, (&v194 - 6), v184, v185);
        if (v183)
        {
          sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);

          v68 = v196;
          return sub_1D5D2CFE8(v68, sub_1D5D4A774);
        }

        v111 = v196;
        sub_1D72647EC();
        v179 = v198;
      }

      sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);

LABEL_31:
      v68 = v111;
      return sub_1D5D2CFE8(v68, sub_1D5D4A774);
    }

    v212 = &v194;
    v229 = v242;
    v230 = v243;
    v231 = v244;
    v232 = v245;
    v227 = v240;
    v228 = v241;
    MEMORY[0x1EEE9AC00](v120, v121);
    *(&v194 - 4) = sub_1D5B4AA6C;
    *(&v194 - 3) = 0;
    v192 = sub_1D6708C30;
    v193 = v122;
    LOBYTE(v221) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v220;
    *(v157 + 32) = v221;
    *(v157 + 40) = v109;
    *(v157 + 48) = v75;
    swift_retain_n();
    sub_1D5D355B8(&v240, &v221, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v158 = sub_1D72647CC();
    LOBYTE(v221) = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v220;
    *(v159 + 40) = v221;
    v160 = *(v246 + 3);
    v161 = *(v246 + 4);
    v162 = __swift_project_boxed_opaque_existential_1(v246, v160);
    MEMORY[0x1EEE9AC00](v162, v163);
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v194 - 4) = sub_1D615B4A4;
    *(&v194 - 3) = (&v194 - 6);
    v192 = sub_1D6708C30;
    v193 = v157;
    v153 = v204;
    v166 = v219;
    v168 = sub_1D5D2F7A4(v204, sub_1D615B49C, v167, sub_1D615B4A4, (&v194 - 6), v160, v161);
    if (!v166)
    {
      v170 = v168;

      if (v170)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v110 = v211;
        v78 = v213;
        v219 = 0;

        v223 = v229;
        v224 = v230;
        v225 = v231;
        v226 = v232;
        v221 = v227;
        v222 = v228;
        sub_1D601144C(&v221);
        v119 = v202;
        v75 = v209;
        v109 = v210;
        v111 = v196;
      }

      else
      {
        v219 = 0;

        v223 = v229;
        v224 = v230;
        v225 = v231;
        v226 = v232;
        v221 = v227;
        v222 = v228;
        sub_1D601144C(&v221);
        v119 = v202;
        v75 = v209;
        v109 = v210;
        v110 = v211;
        v78 = v213;
      }

      goto LABEL_23;
    }

    v223 = v229;
    v224 = v230;
    v225 = v231;
    v226 = v232;
    v221 = v227;
    v222 = v228;
    sub_1D601144C(&v221);
LABEL_30:
    sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
    goto LABEL_31;
  }

  sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

  v68 = v57;
  return sub_1D5D2CFE8(v68, sub_1D5D4A774);
}

void sub_1D5D4A6E0(uint64_t a1)
{
  if (!qword_1EDF03460)
  {
    sub_1D5C4A640(255);
    sub_1D5B58B84(&qword_1EDF25428, sub_1D5C4A640, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03460);
    }
  }
}

void sub_1D5D4A774(uint64_t a1)
{
  if (!qword_1EDF08D40)
  {
    sub_1D5D4A6E0(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03468, sub_1D5D4A6E0, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08D40);
    }
  }
}

unint64_t sub_1D5D4A808()
{
  result = qword_1EDF11588;
  if (!qword_1EDF11588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11588);
  }

  return result;
}

uint64_t FormatBackground.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v98 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v97 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v94 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v95 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v96 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v94 - v29;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v2;
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = sub_1D5C30408();
  v108 = v34;
  sub_1D5D2EE70(&type metadata for FormatBackground, &type metadata for FormatCodingKeys, v39, v36, &type metadata for FormatBackground, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v37, v34, v38, &off_1F51F6C78);
  v40 = v35 >> 61;
  if ((v35 >> 61) <= 3)
  {
    if (v40 <= 1)
    {
      if (v40)
      {
        v65 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v100[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v100[1] = v65;
        v66 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v100[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v100[3] = v66;
        sub_1D6086694(v100, v99);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v67 = sub_1D725BD1C();
        v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
        (*(*(v67 - 8) + 16))(v26, v68, v67);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v45 = v108;
        sub_1D63B63D4(1, v100, v26);
        sub_1D60866F0(v100);
        v46 = v26;
      }

      else
      {
        v41 = *(v35 + 16);
        v42 = qword_1EDF31EB0;

        if (v42 != -1)
        {
          swift_once();
        }

        v43 = sub_1D725BD1C();
        v44 = __swift_project_value_buffer(v43, qword_1EDFFCD30);
        (*(*(v43 - 8) + 16))(v30, v44, v43);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v45 = v108;
        sub_1D5D4B368(0, v41, v30);

        v46 = v30;
      }

      goto LABEL_32;
    }

    if (v40 == 2)
    {
      v53 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v101[4] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v101[5] = v53;
      v54 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v101[6] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v101[7] = v54;
      v55 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v101[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v101[1] = v55;
      v56 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v101[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v101[3] = v56;
      sub_1D60865E4(v101, v99);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v57 = sub_1D725BD1C();
      v58 = __swift_project_value_buffer(v57, qword_1EDFFCCE8);
      (*(*(v57 - 8) + 16))(v22, v58, v57);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v108;
      sub_1D63B6574(2, v101, v22);
      sub_1D6086640(v101);
    }

    else
    {
      v75 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5B58478(0);
      v77 = *(v76 + 48);
      v78 = v96;
      v79 = &v96[*(v76 + 64)];
      sub_1D6086744(v75);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
      v82 = *(*(v80 - 8) + 16);
      v82(v78, v81, v80);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v83 = __swift_project_value_buffer(v80, qword_1EDFFCE68);
      v82(v78 + v77, v83, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v79 = 0;
      *(v79 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v45 = v108;
      sub_1D63B6724(3, v75, v78);
      sub_1D6086768(v75);
      v22 = v78;
    }

LABEL_31:
    v46 = v22;
LABEL_32:
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
    v84 = v45;
    return sub_1D5D2CFE8(v84, sub_1D5D30DC4);
  }

  if (v40 <= 5)
  {
    if (v40 == 4)
    {
      v47 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v102[7] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v102[8] = v47;
      v103[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      *(v103 + 9) = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
      v48 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v102[3] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v102[4] = v48;
      v49 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v102[5] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v102[6] = v49;
      v50 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v102[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v102[1] = v50;
      v102[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D62B4F54(v102, v99);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCD68);
      v22 = v95;
      (*(*(v51 - 8) + 16))(v95, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v108;
      sub_1D63B68B8(4, v102, v22);
      sub_1D62B4FB0(v102);
    }

    else
    {
      v69 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v71 = qword_1EDF31F10;

      if (v71 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCDF8);
      v74 = v94;
      (*(*(v72 - 8) + 16))(v94, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v108;
      sub_1D63B6A80(5, v69, v70, v74);

      v22 = v74;
    }

    goto LABEL_31;
  }

  if (v40 == 6)
  {
    v59 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
    v104[6] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
    v104[7] = v59;
    v104[8] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
    v105 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
    v60 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v104[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v104[3] = v60;
    v61 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
    v104[4] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
    v104[5] = v61;
    v62 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v104[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v104[1] = v62;
    sub_1D62B4EA4(v104, v99);
    if (qword_1EDF31EF8 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725BD1C();
    v64 = __swift_project_value_buffer(v63, qword_1EDFFCDC8);
    v22 = v97;
    (*(*(v63 - 8) + 16))(v97, v64, v63);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v45 = v108;
    sub_1D63B6C14(6, v104, v22);
    sub_1D62B4F00(v104);
    goto LABEL_31;
  }

  v86 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
  v106[7] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
  v106[8] = v86;
  v106[9] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
  v107 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
  v87 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
  v106[3] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
  v106[4] = v87;
  v88 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
  v106[5] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
  v106[6] = v88;
  v89 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v106[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v106[1] = v89;
  v106[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  sub_1D60864C0(v106, v99);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v90 = sub_1D725BD1C();
  v91 = __swift_project_value_buffer(v90, qword_1EDFFCD98);
  v92 = v98;
  (*(*(v90 - 8) + 16))(v98, v91, v90);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v93 = v108;
  sub_1D63B6DDC(7, v106, v92);
  sub_1D60113F8(v106);
  sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
  v84 = v93;
  return sub_1D5D2CFE8(v84, sub_1D5D30DC4);
}

uint64_t sub_1D5D4B368(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4(0);
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670927C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D4B500();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D4B500()
{
  result = qword_1EDF11590;
  if (!qword_1EDF11590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11590);
  }

  return result;
}

void sub_1D5D4B5A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6C6F63;
  v5 = 0xE400000000000000;
  v6 = 1633905005;
  if (v2 != 6)
  {
    v6 = 0x66456C6175736976;
    v5 = 0xEC00000074636566;
  }

  v7 = 0x74696C7073;
  if (v2 != 4)
  {
    v7 = 0x6567616D69;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  v8 = 0xEE00746E65696461;
  v9 = 0x72476C6169646172;
  if (v2 != 2)
  {
    v9 = 0x656E696873;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x746E656964617267;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1D5D4B704(uint64_t result, uint64_t a2, char a3)
{
  if (*(result + 16))
  {
    sub_1D5D2D628(0, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D2D690(&qword_1EDF02638, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys);
    sub_1D5D4B80C();

    sub_1D72647EC();
  }

  return result;
}

unint64_t sub_1D5D4B80C()
{
  result = qword_1EDF23410;
  if (!qword_1EDF23410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23410);
  }

  return result;
}

uint64_t FormatDecorationCollection.encode(to:)(void *a1)
{
  sub_1D5C8CBC8(0, &qword_1EDF025E0, sub_1D5C4C500, &type metadata for FormatDecorationCollection.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4C500();

  sub_1D7264B5C();
  v11[3] = v9;
  sub_1D5C8CC30(0);
  sub_1D5C4C558(&qword_1EDF05130, qword_1EDF12460, &protocol conformance descriptor for FormatObject<A>, MEMORY[0x1E69E6300]);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t FeedLayoutSolverOptions.PluginOptions.init(layoutOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725E23C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D5D4BAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725E23C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5D4BB4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

NewsFeed::FeedLayoutSolverOptions::CoverOptions __swiftcall FeedLayoutSolverOptions.CoverOptions.init(alwaysShowTitle:alwaysIncludeBottomInset:)(Swift::Bool alwaysShowTitle, Swift::Bool alwaysIncludeBottomInset)
{
  *v2 = alwaysShowTitle;
  v2[1] = alwaysIncludeBottomInset;
  result.alwaysShowTitle = alwaysShowTitle;
  return result;
}

void *sub_1D5D4BBA8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D5D4BBC8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t FeedLayoutSolverOptions.init(blueprintRunOptions:cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:layoutCacheOptions:traits:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = *a3;
  v15 = a3[1];
  v16 = a3[2];
  v17 = *a4;
  v18 = a4[1];
  v24 = a5[1];
  v25 = *a5;
  v23 = *a6;
  v27 = a8[1];
  v28 = *a8;
  v29 = *a10;
  v19 = type metadata accessor for FeedLayoutSolverOptions(0);
  *(a9 + v19[11]) = a1;
  *a9 = v11;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  *(a9 + 17) = v14;
  *(a9 + 18) = v15;
  *(a9 + 19) = v16;
  *(a9 + 20) = v17;
  *(a9 + 21) = v18;
  *(a9 + 22) = v25;
  *(a9 + 23) = v24;
  *(a9 + 24) = v23;
  result = sub_1D5D4BD04(a7, a9 + v19[9]);
  v21 = (a9 + v19[10]);
  *v21 = v28;
  v21[1] = v27;
  *(a9 + v19[13]) = v29;
  v22 = a9 + v19[12];
  *v22 = 0;
  *(v22 + 8) = 1;
  return result;
}

uint64_t sub_1D5D4BD04(uint64_t a1, uint64_t a2)
{
  sub_1D5B7F4C8(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D4BD84(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1D5D4BDE0(a1, a2);
  v5 = *(v3 + 96);
  type metadata accessor for FeedLayoutContext();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  return v6;
}

uint64_t sub_1D5D4BDE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25[1] = a2;
  v4 = sub_1D725A19C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7259C8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v25 - v16;
  sub_1D7259CBC();
  sub_1D7259C7C();
  sub_1D5D4C05C(v18);
  v19 = sub_1D7263B0C();
  v20 = *(v10 + 8);
  v20(v13, v9);
  v20(v17, v9);
  v21 = v3[10];
  v22 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v21);
  LOBYTE(v26[0]) = (v19 & 1) != 0;
  sub_1D7259EDC();
  (*(v22 + 8))(v27, v26, v8, v21, v22);
  (*(v5 + 8))(v8, v4);
  sub_1D5B68374((v3 + 2), v26);
  type metadata accessor for FeedLayoutStylerFactory();
  v23 = swift_allocObject();
  sub_1D5B63F14(v27, v23 + 16);
  sub_1D5B63F14(v26, v23 + 56);
  *(v23 + 96) = 0x3FF0000000000000;
  return v23;
}

unint64_t sub_1D5D4C05C(__n128 a1)
{
  result = qword_1EDF3C0A8;
  if (!qword_1EDF3C0A8)
  {
    sub_1D7259C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C0A8);
  }

  return result;
}

void sub_1D5D4C0B4(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D725A19C();
  v7 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    v13 = &type metadata for DefaultFontBook;
    v14 = &protocol witness table for DefaultFontBook;
    goto LABEL_5;
  }

  if (*a1 == 1)
  {
    v13 = &type metadata for CondensedFontBook;
    v14 = &protocol witness table for CondensedFontBook;
LABEL_5:
    a3[3] = v13;
    a3[4] = v14;
    return;
  }

  v15 = v9;
  (*(v7 + 16))(v12, a2, v9, v10);
  v16 = type metadata accessor for ScalingFontBook(0);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + OBJC_IVAR____TtC8NewsFeed15ScalingFontBook_contentResizeScale, v12, v15);
  a3[3] = v16;
  a3[4] = &protocol witness table for ScalingFontBook;
  *a3 = v17;
}

uint64_t sub_1D5D4C214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D4C27C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5BFCA6C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t FeedGroupBindingOptions.init(formatFeedGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatFeedGroup(0);
  v5 = a1;
  v6 = a1 + v4[12];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = v5 + v4[14];
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v8)
  {
    v12 = v7;
  }

  if (v11)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v12 >= v10)
  {
    goto LABEL_8;
  }

  v7 = 0;
  v10 = 0;
  LOBYTE(v8) = 1;
  v11 = 1;
LABEL_8:
  v13 = v5 + v4[13];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v5 + v4[15];
  v17 = *v16;
  v18 = *(v16 + 8);
  result = sub_1D5D4C448(v5);
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v15)
  {
    v20 = v14;
  }

  if (v18)
  {
    if (v20 < 0)
    {
      goto LABEL_14;
    }
  }

  else if (v20 < v17)
  {
LABEL_14:
    v14 = 0;
    v17 = 0;
    LOBYTE(v15) = 1;
    v18 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  return result;
}

uint64_t sub_1D5D4C448(uint64_t a1)
{
  v2 = type metadata accessor for FormatFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D4C4A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t BlueprintSection<>.mapToRegions(content:additionalGroupItems:additionalGroupOptions:feedDescriptor:feedGroupBindingOptions:feedGroupContextIdentifier:feedGroupRevision:nativeAdContext:pluginModels:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v36 = a8;
  v38 = a7;
  v39 = a6;
  v41 = a4;
  v40 = a2;
  v37 = a1;
  v34 = a10;
  v33 = a9;
  v32 = a12;
  v15 = *(a11 + 24);
  v16 = *(a11 + 40);
  sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v35 = sub_1D725B15C();
  v17 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v18);
  v20 = &v32 - v19;
  v22 = *a3;
  v21 = a3[1];
  v23 = a5[1];
  v43[0] = *a5;
  v43[1] = v23;
  v44[0] = a5[2];
  *(v44 + 10) = *(a5 + 42);
  type metadata accessor for FeedGroupRegionMapper(0, v15, a13, v16);
  v24 = sub_1D725D62C();
  v26 = v25;
  sub_1D725D63C();
  v27 = v32;
  BlueprintSection<>.layoutOrder.getter(a11, v32);
  v47[0] = v47[1];
  BlueprintSection<>.feedGroupDebug.getter(a11, v27);
  v45[0] = v22;
  v45[1] = v21;
  v28 = v33[1];
  v42[0] = *v33;
  v42[1] = v28;
  *(&v31 + 1) = v38;
  *&v31 = v39;
  v29 = sub_1D5D4C808(v37, v24, v26, v20, v47, v46, v41, v40, v45, v43, v31, v36, v42, v34);

  sub_1D5BCA9EC(v46, sub_1D5D6013C);
  (*(v17 + 8))(v20, v35);
  return v29;
}

uint64_t sub_1D5D4C808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, _OWORD *a10, __int128 a11, uint64_t a12, __int128 *a13, uint64_t a14)
{
  v19 = *a5;
  v21 = *a9;
  v20 = a9[1];
  v22 = a10[1];
  v47[0] = *a10;
  v47[1] = v22;
  v48[0] = a10[2];
  *(v48 + 10) = *(a10 + 42);
  v23 = *(a1 + *(type metadata accessor for FormatContent.Resolved(0) + 36));
  v30 = a14;
  v31 = a2;
  v32 = a3;
  v33 = a6;
  v34 = v26;
  v35 = a1;
  v36 = a4;
  v37 = v19;
  v38 = a7;
  v39 = a8;
  v40 = v21;
  v41 = v20;
  v42 = v47;
  v43 = a11;
  v44 = a12;
  v24 = a13[1];
  v45 = *a13;
  v46 = v24;
  return sub_1D5D4C914(sub_1D5D4CDB0, v29, v23);
}

uint64_t sub_1D5D4C914(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      v11 = v9[1];
      v12 = v9[3];
      v27 = v9[2];
      v28 = v12;
      v13 = v9[3];
      v29 = v9[4];
      v14 = v9[1];
      v26[0] = *v9;
      v26[1] = v14;
      v22 = v27;
      v23 = v13;
      v24 = v9[4];
      v20 = v26[0];
      v21 = v11;
      sub_1D5CE9930(v26, &v15);
      a1(&v25, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      v15 = v20;
      v16 = v21;
      sub_1D5CEC67C(&v15);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      if (!i)
      {
        return v30;
      }

      v9 += 5;
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v15 = v20;
    v16 = v21;
    sub_1D5CEC67C(&v15);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5D4CA7C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, char a9, void *a10, void *a11, uint64_t a12, uint64_t a13, __int128 *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21)
{
  v63 = a3;
  v21 = a8;
  v22 = a1[1];
  v60 = *a1;
  v61 = v22;
  v23 = a1[3];
  *v62 = a1[2];
  *&v62[16] = v23;
  *&v62[32] = a1[4];
  v24 = v60;
  v25 = *(&v61 + 1);
  v45 = v61;
  v46 = *&v62[24];
  v47 = *&v62[8];
  v26 = *v62;
  v27 = *&v62[40];
  if ((*v62 & 0x8000000000000000) != 0)
  {
    v26 = *v62 & 0x7FFFFFFFFFFFFFFFLL;
    *&v52[0] = a2;
    v32 = a1[3];
    *v59 = a1[2];
    *&v59[16] = v32;
    *&v59[32] = a1[4];
    v33 = a1[1];
    v57 = *a1;
    v58 = v33;
    *v59 &= ~0x8000000000000000;
    sub_1D5CB7180(&v57, v56);
    sub_1D5D1D9FC(0);
    sub_1D5EF1E4C(&qword_1EDF05320, sub_1D5D1D9FC, MEMORY[0x1E69E6328]);
    sub_1D5EF1E4C(&qword_1EDF17310, MEMORY[0x1E69D7608], MEMORY[0x1E69D7600]);
    v34 = sub_1D72623BC();
    if (*(v34 + 16))
    {

      v35 = sub_1D5B69D90(v24, *(&v24 + 1));
      v37 = v36;

      if (v37)
      {
        v38 = *(*(v34 + 56) + 8 * v35);

        sub_1D5CEB7B8(a5, v56, sub_1D5D6013C);
        type metadata accessor for FeedGroupRegion();
        swift_allocObject();

        v39 = FeedGroupRegion.init(groupIdentifier:pluginModel:feedGroupDebug:)(v63, a4, v38, v56);
        result = sub_1D5CEC67C(&v60);
        *a8 = v39;
        return result;
      }
    }

    v21 = a8;
    v31 = a4;
  }

  else
  {
    v28 = a1[3];
    *v59 = a1[2];
    *&v59[16] = v28;
    *&v59[32] = a1[4];
    v29 = a1[1];
    v57 = *a1;
    v58 = v29;
    *v59 &= ~0x8000000000000000;
    sub_1D5CB7180(&v57, v56);
    v31 = a4;
  }

  v57 = v24;
  *&v58 = v45;
  *(&v58 + 1) = v25;
  *&v59[8] = v47;
  *&v59[24] = v46;
  *v59 = v26;
  *&v59[40] = v27;
  v56[2] = *v59;
  v56[3] = *&v59[16];
  v56[4] = *&v59[32];
  v56[0] = v24;
  v56[1] = v58;
  v55 = a9 & 1;
  v54[0] = a12;
  v54[1] = a13;
  v41 = a14[1];
  v52[0] = *a14;
  v52[1] = v41;
  v53[0] = a14[2];
  *(v53 + 10) = *(a14 + 42);
  v51[0] = a18;
  v51[1] = a19;
  v51[2] = a20;
  v51[3] = a21;
  v42 = sub_1D5D4CE18(a6, v56, v63, v31, a7, &v55, a5, a10, a11, v54, v52, a15, a16, a17, v51);
  result = sub_1D5CB71DC(&v57);
  *v21 = v42;
  return result;
}

uint64_t sub_1D5D4CE18(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, void *a8, void *a9, uint64_t *a10, __int128 *a11, void *a12, uint64_t a13, uint64_t a14, void **a15)
{
  v16 = v15;
  v104 = a8;
  v91 = a7;
  v96 = a1;
  v97 = a5;
  v95 = a4;
  v106 = a3;
  v103 = a9;
  v94 = type metadata accessor for FormatContent.Resolved(0);
  v88 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v19);
  v89 = v20;
  v90 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v87 = &v85[-v23];
  v24 = a2[3];
  v126 = a2[2];
  v127 = v24;
  v25 = a2[4];
  v26 = a2[1];
  v124 = *a2;
  v125 = v26;
  v86 = *a6;
  v27 = *a10;
  v101 = a10[1];
  v102 = v27;
  v28 = *a11;
  v29 = a11[1];
  v128 = v25;
  v129 = v28;
  v30 = a11[2];
  v130 = v29;
  v131[0] = v30;
  *(v131 + 10) = *(a11 + 42);
  v31 = *a15;
  v32 = a15[1];
  v34 = a15[2];
  v33 = a15[3];
  v35 = v16[11];
  v108 = v16[10];
  v109 = v35;
  v105 = v35;
  v110 = v16[12];
  v98 = v110;
  v99 = v108;
  v36 = sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v93 = v36;
  v37 = sub_1D725B15C();
  WitnessTable = swift_getWitnessTable();
  v39 = v97;
  v41 = sub_1D5B874E4(sub_1D5D4DAFC, &v107, v37, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v40);
  v42 = sub_1D5B86020(v41);

  v122[0] = v126;
  v122[1] = v127;
  v123 = v128;
  v120 = v124;
  v121 = v125;
  *v112 = v102;
  *&v112[8] = v101;
  v92 = sub_1D5D4DB4C(v96, &v120, v104, v103, v112, v39);
  v122[0] = v126;
  v122[1] = v127;
  v123 = v128;
  v120 = v124;
  v121 = v125;
  v102 = v32;
  v103 = v31;
  *v112 = v31;
  *&v112[8] = v32;
  v100 = v33;
  v101 = v34;
  *&v112[16] = v34;
  *&v112[24] = v33;
  v104 = sub_1D5D525F4(v106, v95, &v120, v39, v42, v112);
  v43 = *(&v127 + 1);
  v44 = *(*(&v127 + 1) + 16);
  if (v44)
  {
    v119 = MEMORY[0x1E69E7CC0];
    sub_1D5D565AC(0, v44, 0);
    v45 = v95;
    if (!*(v43 + 16))
    {
LABEL_15:
      __break(1u);
      v114 = *v118;
      v115 = *&v118[16];
      v116 = *&v118[32];
      v117 = *&v118[48];
      sub_1D5CB6FB4(&v114);

      __break(1u);
      return result;
    }

    v46 = 0;
    v47 = v119;
    v48 = (v43 + 32);
    v97 = v44 - 1;
    while (1)
    {
      v49 = *v48;
      v50 = v48[1];
      v51 = v48[3];
      v122[0] = v48[2];
      v122[1] = v51;
      v120 = v49;
      v121 = v50;
      v52 = v48[1];
      *v118 = *v48;
      *&v118[16] = v52;
      v53 = v48[3];
      *&v118[32] = v48[2];
      *&v118[48] = v53;
      sub_1D5CB6F58(&v120, &v114);
      sub_1D5D56700(v118, v106, v45, v104, v103, v102, v101, v100, v112, v42, v99, v105, v98);
      v113[0] = *v118;
      v113[1] = *&v118[16];
      v113[2] = *&v118[32];
      v113[3] = *&v118[48];
      sub_1D5CB6FB4(v113);
      v116 = *&v112[32];
      v117 = *&v112[48];
      v114 = *v112;
      v115 = *&v112[16];
      v119 = v47;
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1D5D565AC((v54 > 1), v55 + 1, 1);
        v45 = v95;
        v47 = v119;
      }

      *(v47 + 16) = v55 + 1;
      v56 = (v47 + (v55 << 6));
      v57 = v114;
      v58 = v115;
      v59 = v117;
      v56[4] = v116;
      v56[5] = v59;
      v56[2] = v57;
      v56[3] = v58;
      if (v97 == v46)
      {
        break;
      }

      v48 += 4;
      if (++v46 >= *(v43 + 16))
      {
        goto LABEL_15;
      }
    }
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  v60 = v91;
  v102 = a14;
  v103 = a12;
  v61 = v96;
  v62 = v96[1];
  v64 = *(&v124 + 1);
  v63 = v124;
  *&v120 = *v96;
  *(&v120 + 1) = v62;

  MEMORY[0x1DA6F9910](v63, v64);
  v65 = v120;
  v66 = v87;
  sub_1D5CEB7B8(v61, v87, type metadata accessor for FormatContent.Resolved);
  v122[0] = v126;
  v122[1] = v127;
  v123 = v128;
  v120 = v124;
  v121 = v125;
  sub_1D5CB7180(&v124, v112);
  FormatGroupLayoutFactoryModel.init(content:subgroup:)(v66, &v120, v112);
  *v118 = *v112 | 0x4000000000000000;
  *&v118[8] = *&v112[8];
  *&v118[24] = *&v112[24];
  *&v118[40] = *&v112[40];
  LOBYTE(v113[0]) = v86;
  sub_1D5CEB7B8(v60, &v114, sub_1D5D6013C);
  v67 = v90;
  sub_1D5CEB7B8(v61, v90, type metadata accessor for FormatContent.Resolved);
  v68 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v69 = (v89 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  sub_1D5CED910(v67, v70 + v68, type metadata accessor for FormatContent.Resolved);
  v71 = (v70 + v69);
  v72 = v127;
  v71[2] = v126;
  v71[3] = v72;
  v71[4] = v128;
  v73 = v125;
  *v71 = v124;
  v71[1] = v73;
  v74 = type metadata accessor for FeedGroupDebug();
  v75 = swift_allocObject();
  if (*(&v115 + 1))
  {
    sub_1D5B63F14(&v114, v75 + 16);
    *(v75 + 56) = sub_1D5EF1D08;
    *(v75 + 64) = v70;
    sub_1D5CB7180(&v124, &v120);
    v76 = &protocol witness table for FeedGroupDebug;
  }

  else
  {
    sub_1D5CB7180(&v124, &v120);

    sub_1D5BCA74C(&v114, sub_1D5D6013C);
    swift_deallocPartialClassInstance();
    v75 = 0;
    v74 = 0;
    v76 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  *&v114 = v75;
  *(&v115 + 1) = v74;
  *&v116 = v76;
  type metadata accessor for FeedGroupRegion();
  *(v122 + 10) = *(v131 + 10);
  v120 = v129;
  v121 = v130;
  v122[0] = v131[0];
  v77 = *(v96 + *(v94 + 48));

  v79 = sub_1D5D6021C(v78, v77);
  v111 = v105;

  v80 = v95;

  v81 = v93;
  v82 = swift_getWitnessTable();
  v83 = sub_1D5D60320(v104, v106, v80, v92, v65, *(&v65 + 1), v118, v47, v113, &v114, &v120, v79, v103, a13, v102, v81, v82);

  return v83;
}

uint64_t sub_1D5D4D5D4()
{
  v1 = type metadata accessor for FormatContent.Resolved(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v1[5];
  v5 = sub_1D725891C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v3 + v1[16];
  v7 = type metadata accessor for FormatWebEmbed.Resolved(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = v6 + v7[5];

    v9 = type metadata accessor for FormatWebEmbed(0);
    v10 = *(v9 + 20);
    v11 = sub_1D72585BC();
    v12 = *(v11 - 8);
    v25 = *(v12 + 8);
    v25(v8 + v10, v11);
    v13 = *(v9 + 24);
    if (!(*(v12 + 48))(v8 + v13, 1, v11))
    {
      v25(v8 + v13, v11);
    }

    v14 = v6 + v7[8];
    v15 = type metadata accessor for WebEmbedDataVisualization(0);
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v16 = type metadata accessor for GenericDataVisualization(0);
        v25(v14 + *(v16 + 20), v11);
      }

      else
      {
      }
    }

    v17 = v7[9];
    sub_1D5B5D194(0);
    v19 = v18;
    v20 = *(v18 - 8);
    if (!(*(v20 + 48))(v6 + v17, 1, v18))
    {
      (*(v20 + 8))(v6 + v17, v19);
    }
  }

  v21 = v1[21];
  v22 = sub_1D72608BC();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v3 + v21, v22);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D4DAFC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D725CE8C();
  result = sub_1D725CE5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5D4DB4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v304 = a6;
  v278 = a4;
  v279 = a3;
  v312 = a1;
  v275 = type metadata accessor for FeedRecipe.State(0);
  MEMORY[0x1EEE9AC00](v275, v9);
  v276 = &v251 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v253 = &v251 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v299 = &v251 - v16;
  v17 = *(v6 + 80);
  v305 = v6;
  v18 = *(v6 + 96);
  v302 = v17;
  v303 = v18;
  sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v19 = sub_1D725B15C();
  sub_1D5D5046C(255);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1D7263F7C();
  swift_getWitnessTable();
  v272 = v21;
  v22 = sub_1D72640BC();
  v23 = type metadata accessor for FeedRecipe(255);
  swift_getWitnessTable();
  v271 = v22;
  v298 = v23;
  v273 = sub_1D7263F7C();
  v270 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273, v24);
  v269 = &v251 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v274 = &v251 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v297 = &v251 - v31;
  v258 = type metadata accessor for WebEmbedDataVisualization(0);
  v256 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258, v32);
  v251 = (&v251 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v255, v34);
  v259 = (&v251 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v257 = &v251 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v285 = &v251 - v41;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v286 = &v251 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_1D72585BC();
  v287 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301, v45);
  v300 = &v251 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5AFCC(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v281 = &v251 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v280 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282, v50);
  v283 = (&v251 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for FeedHeadline(0);
  v266 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v53);
  v268 = &v251 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v289 = (&v251 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v277 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v277, v58);
  v267 = &v251 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v252 = &v251 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v290 = (&v251 - v65);
  v294 = sub_1D7263D7C();
  v293 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294, v66);
  v292 = &v251 - v67;
  sub_1D5B69BE0(255);
  v296 = v19;
  v295 = WitnessTable;
  v68 = sub_1D7263F7C();
  swift_getWitnessTable();
  v261 = v68;
  v69 = sub_1D72640BC();
  swift_getWitnessTable();
  v262 = v69;
  v291 = v52;
  v264 = sub_1D7263F7C();
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264, v70);
  v260 = &v251 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v284 = &v251 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75, v76);
  v265 = &v251 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v288 = (&v251 - v80);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v81 - 8, v82);
  v84 = &v251 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D72608BC();
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v87);
  v254 = &v251 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(a2 + 40);
  v91 = *a5;
  v90 = a5[1];
  sub_1D5B49898(0, &unk_1EDF199D0, type metadata accessor for FeedGroupItem, MEMORY[0x1E69E6F90]);
  v93 = v92;
  v313 = type metadata accessor for FeedGroupItem(0);
  v94 = *(*(v313 - 8) + 80);
  v95 = (v94 + 32) & ~v94;
  v308 = *(*(v313 - 8) + 72);
  v309 = v94;
  v307 = v93;
  v96 = swift_allocObject();
  v311 = xmmword_1D7273AE0;
  *(v96 + 16) = xmmword_1D7273AE0;
  v306 = v95;
  v97 = (v96 + v95);
  v310 = type metadata accessor for FormatContent.Resolved(0);
  v98 = *(v312 + *(v310 + 44));
  if (v91)
  {

    v99 = v91;
  }

  else
  {
    v99 = MEMORY[0x1E69E7CC0];
  }

  v318 = v98;

  sub_1D5D505F0(v99);
  v100 = v318;
  if (v91)
  {
  }

  else
  {
    v90 = MEMORY[0x1E69E7CC0];
  }

  v318 = v89;

  sub_1D5D505F0(v90);
  v101 = v318;
  *v97 = v100;
  v97[1] = v101;
  swift_storeEnumTagMultiPayload();
  v102 = v278;

  v103 = sub_1D5D50638(v96, v102);
  swift_setDeallocating();
  sub_1D5BCA74C(v97, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  v318 = v103;
  v104 = v310;
  v105 = v312;
  sub_1D5CEB7B8(v312 + *(v310 + 84), v84, sub_1D5B49800);
  if ((*(v86 + 48))(v84, 1, v85) == 1)
  {
    sub_1D5BCA74C(v84, sub_1D5B49800);
  }

  else
  {
    v106 = v254;
    (*(v86 + 32))(v254, v84, v85);
    v107 = v306;
    v108 = swift_allocObject();
    *(v108 + 16) = v311;
    v109 = (v108 + v107);
    v110 = sub_1D726084C();
    v112 = v111;
    v113 = type metadata accessor for FeedSponsorshipBannerAd(0);
    (*(v86 + 16))(v109 + *(v113 + 20), v106, v85);
    *v109 = v110;
    v109[1] = v112;
    v104 = v310;
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v108);
    swift_setDeallocating();
    sub_1D5BCA74C(v109, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    (*(v86 + 8))(v106, v85);
  }

  v114 = *(v105 + v104[13]);
  v115 = v306;
  if (v114)
  {
    v116 = swift_allocObject();
    *(v116 + 16) = v311;
    v117 = *(v105 + v104[18]);
    v118 = v116 + v115;
    v119 = *(v105 + v104[19]);
    *v118 = v114;
    *(v118 + 8) = v117;
    *(v118 + 16) = v119;
    swift_storeEnumTagMultiPayload();
    v120 = v117;
    swift_unknownObjectRetain();
    sub_1D5D51F5C(v116);
    swift_setDeallocating();
    sub_1D5BCA74C(v116 + v115, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
  }

  v121 = v279;
  if (v279)
  {
    v122 = swift_allocObject();
    *(v122 + 16) = v311;
    *(v122 + v115) = v121;
    swift_storeEnumTagMultiPayload();
    v123 = v121;
    sub_1D5D51F5C(v122);
    swift_setDeallocating();
    sub_1D5BCA74C(v122 + v115, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    v124 = [FCFeedDescriptor.feedTag.getter() asSportsEvent];
    swift_unknownObjectRelease();
    if (v124)
    {
      v125 = swift_allocObject();
      *(v125 + 16) = v311;
      v126 = v125 + v115;
      v127 = [swift_unknownObjectRetain() identifier];
      v128 = sub_1D726207C();
      v130 = v129;

      *v126 = v128;
      *(v126 + 8) = v130;
      v105 = v312;
      *(v126 + 16) = v124;
      *(v126 + 24) = 0;
      *(v126 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D5D51F5C(v125);
      swift_setDeallocating();
      v104 = v310;
      sub_1D5BCA74C(v125 + v115, type metadata accessor for FeedGroupItem);
      swift_deallocClassInstance();
      swift_unknownObjectRelease();
    }
  }

  v131 = *(v105 + v104[14]);
  if (v131)
  {
    v132 = swift_allocObject();
    *(v132 + 16) = v311;
    v133 = v132 + v115;
    v134 = objc_allocWithZone(MEMORY[0x1E69B52B8]);
    v135 = v131;
    v136 = [v134 init];
    sub_1D5EF0964(v135, v302, *(v305 + 88), v303, v317);
    v137 = v317[0];
    v138 = v135;
    v139 = [v138 identifier];
LABEL_18:
    v140 = v139;
    v141 = sub_1D726207C();
    v143 = v142;

    *v133 = v138;
    *(v133 + 8) = v141;
    *(v133 + 16) = v143;
    *(v133 + 24) = 0;
    *(v133 + 32) = 0;
    *(v133 + 40) = 0;
    *(v133 + 48) = 1;
    *(v133 + 56) = v136;
    *(v133 + 64) = 0;
    *(v133 + 72) = xmmword_1D7279980;
    *(v133 + 88) = 0u;
    *(v133 + 104) = 0u;
    *(v133 + 120) = 0;
    *(v133 + 128) = 5;
    *(v133 + 136) = v137;
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v132);
    swift_setDeallocating();
    sub_1D5BCA74C(v133, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();

    v104 = v310;
    v105 = v312;
    goto LABEL_19;
  }

  v160 = *(v105 + v104[15]);
  if (v160)
  {
    if ([v160 respondsToSelector_])
    {
      v161 = [v160 parentIssue];
      if (v161)
      {
        v162 = v161;
        v132 = swift_allocObject();
        *(v132 + 16) = v311;
        v133 = v132 + v115;
        v136 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
        sub_1D5EF0964(v162, v302, *(v305 + 88), v303, v317);
        v137 = v317[0];
        v138 = v162;
        v139 = [v138 identifier];
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v144 = *(v105 + v104[15]);
  if (v144)
  {
    swift_unknownObjectRetain();
    v145 = v292;
    MEMORY[0x1DA6F9AF0](v296, v295);
    v146 = swift_allocObject();
    v147 = *(v305 + 88);
    v146[2] = v302;
    v146[3] = v147;
    v146[4] = v303;
    v146[5] = v144;
    swift_unknownObjectRetain();
    v148 = v294;
    swift_getWitnessTable();
    v149 = v260;
    v150 = v291;
    sub_1D726418C();

    v151 = v148;
    v152 = v150;
    (*(v293 + 8))(v145, v151);
    v316 = swift_getWitnessTable();
    v315 = swift_getWitnessTable();
    v314 = swift_getWitnessTable();
    v153 = v264;
    swift_getWitnessTable();
    v154 = v288;
    sub_1D7262C9C();
    (*(v263 + 8))(v149, v153);
    v155 = v265;
    sub_1D5CEB7B8(v154, v265, sub_1D5B69BE0);
    if ((*(v266 + 48))(v155, 1, v150) == 1)
    {
      sub_1D5BCA74C(v155, sub_1D5B69BE0);
      v156 = v277;
      v157 = v277[6];
      v158 = type metadata accessor for SharedItem(0);
      v159 = v290;
      (*(*(v158 - 8) + 56))(v290 + v157, 1, 1, v158);
      *v159 = 258;
      *(v159 + v156[7]) = 1;
      *(v159 + v156[8]) = 0;
      *(v159 + v156[9]) = 0;
      *(v159 + v156[10]) = 0;
    }

    else
    {
      v163 = v252;
      sub_1D5CEB7B8(v155 + *(v150 + 40), v252, type metadata accessor for FeedHeadline.State);
      sub_1D5BCA74C(v155, type metadata accessor for FeedHeadline);
      v159 = v290;
      sub_1D5CED910(v163, v290, type metadata accessor for FeedHeadline.State);
    }

    v164 = v268;
    v165 = swift_allocObject();
    *(v165 + 16) = v311;
    v166 = sub_1D726045C();
    v167 = v289;
    (*(*(v166 - 8) + 56))(v289, 1, 1, v166);
    v168 = v267;
    sub_1D5CEB7B8(v159, v267, type metadata accessor for FeedHeadline.State);
    *(v164 + *(v152 + 48)) = xmmword_1D727C330;
    swift_getObjectType();
    v169 = [swift_unknownObjectRetain() identifier];
    v170 = sub_1D726207C();
    v172 = v171;

    *v164 = v170;
    *(v164 + 8) = v172;
    v173 = v291;
    *(v164 + 40) = v144;
    *(v164 + 48) = 0;
    sub_1D5CEB7B8(v167, v164 + v173[11], sub_1D5D504A0);
    sub_1D5CEB7B8(v168, v164 + v173[10], type metadata accessor for FeedHeadline.State);
    *(v164 + v173[14]) = 0;
    *(v164 + 56) = 0;
    v174 = [swift_unknownObjectRetain() title];
    if (v174)
    {
      v175 = v174;
      v176 = [v174 ne_isNaturallyRTL];

      v177 = v176;
    }

    else
    {
      v177 = 0;
    }

    v104 = v310;
    *(v164 + 16) = v177;
    *(v164 + 24) = 0;
    sub_1D5BC7BD4(v317);
    swift_unknownObjectRelease();
    v178 = v277;
    v179 = v290;
    v115 = v306;
    if (*(v168 + v277[8]) - 1 <= 1 && (v317[0] & 0x1000) == 0)
    {
      v317[0] |= 0x1000uLL;
    }

    v180 = *(v168 + v277[10]);
    v181 = 0x80000000;
    if (!*(v168 + v277[10]))
    {
      v181 = 0x100000000;
    }

    if ((v317[0] & v181) != 0)
    {
      v181 = 0;
    }

    *(v164 + 32) = v317[0] | v181;
    if (*(v168 + v178[7]))
    {
      if (*(v168 + v178[9]))
      {
        sub_1D5BCA74C(v168, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v289, sub_1D5D504A0);
        v182 = 1;
      }

      else if (v180)
      {
        v244 = [v144 sourceChannel];
        sub_1D5BCA74C(v168, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v289, sub_1D5D504A0);
        v182 = 2;
        if (v244)
        {
          v182 = v244;
        }
      }

      else
      {
        sub_1D5BCA74C(v168, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v289, sub_1D5D504A0);
        v182 = 2;
      }
    }

    else
    {
      sub_1D5BCA74C(v168, type metadata accessor for FeedHeadline.State);
      sub_1D5BCA74C(v289, sub_1D5D504A0);
      v182 = 0;
    }

    *(v164 + v173[13]) = v182;
    sub_1D5CED910(v164, v165 + v115, type metadata accessor for FeedHeadline);
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v165);
    swift_setDeallocating();
    sub_1D5BCA74C(v165 + v115, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    swift_unknownObjectRelease();
    sub_1D5BCA74C(v179, type metadata accessor for FeedHeadline.State);
    sub_1D5BCA74C(v288, sub_1D5B69BE0);
    v105 = v312;
  }

  v183 = v281;
  sub_1D5CEB7B8(v105 + v104[16], v281, sub_1D5B5AFCC);
  v184 = v282;
  if ((*(v280 + 48))(v183, 1, v282) == 1)
  {
    sub_1D5BCA74C(v183, sub_1D5B5AFCC);
    goto LABEL_49;
  }

  v185 = v283;
  sub_1D5CED910(v183, v283, type metadata accessor for FormatWebEmbed.Resolved);
  v291 = swift_allocObject();
  *(v291 + 16) = v311;
  v186 = v185[1];
  v290 = *v185;
  v280 = v186;
  v187 = v185 + v184[5];
  v188 = type metadata accessor for FormatWebEmbed(0);
  v189 = v188[5];
  v289 = *(v287 + 16);
  (v289)(v300, &v187[v189], v301);
  v190 = v188[6];
  v288 = sub_1D5B4D3E0;
  v191 = v286;
  sub_1D5CEB7B8(&v187[v190], v286, sub_1D5B4D3E0);
  v192 = *(v185 + v184[6]);
  v193 = *(v185 + v184[7]);

  v194 = v284;
  sub_1D5EF1350(v185, v284);
  v195 = v285;
  sub_1D5CEB7B8(v185 + v184[8], v285, sub_1D5B4D72C);
  v196 = v188[11];
  LODWORD(v282) = v187[v188[10]];
  v281 = sub_1D5EEC8D4(*&v187[v188[12]], *&v187[v196]);
  v198 = v197;
  v199 = v259;
  *v259 = xmmword_1D727F470;
  *(v199 + 16) = 1;
  *(v199 + 24) = xmmword_1D727F480;
  v200 = v280;
  *(v199 + 5) = v290;
  *(v199 + 6) = v200;
  v201 = v255;
  (v289)(v199 + *(v255 + 32), v300, v301);
  sub_1D5CEB7B8(v191, v199 + v201[9], v288);
  *(v199 + v201[10]) = v192;
  *(v199 + v201[11]) = v193;
  sub_1D5CEB7B8(v194, v199 + v201[12], sub_1D5B69BE0);
  sub_1D5CEB7B8(v195, v199 + v201[13], sub_1D5B4D72C);
  *(v199 + v201[14]) = v282 & 1;
  v202 = (v199 + v201[15]);
  *v202 = v281;
  v202[1] = v198;
  v203 = v257;
  sub_1D5CEB7B8(v195, v257, sub_1D5B4D72C);
  v204 = (*(v256 + 48))(v203, 1, v258);
  v205 = sub_1D5B4D72C;
  if (v204 != 1)
  {
    v206 = v251;
    sub_1D5CEB7B8(v203, v251, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v245 = *v206;
      sub_1D5BCA74C(v203, type metadata accessor for WebEmbedDataVisualization);
      v246 = v245 >> 61;
      if ((v245 >> 61) <= 2)
      {
        if (v246)
        {
          if (v246 == 1)
          {
            sub_1D5BCA74C(v285, sub_1D5B4D72C);
            sub_1D5BCA74C(v284, sub_1D5B69BE0);
            sub_1D5BCA74C(v286, sub_1D5B4D3E0);
            (*(v287 + 8))(v300, v301);
            *v199 = 8390656;
            v247 = 0x2000800800;
          }

          else
          {
            sub_1D5BCA74C(v285, sub_1D5B4D72C);
            sub_1D5BCA74C(v284, sub_1D5B69BE0);
            sub_1D5BCA74C(v286, sub_1D5B4D3E0);
            (*(v287 + 8))(v300, v301);
            *v199 = 536872960;
            v247 = 0x2020000800;
          }
        }

        else
        {
          v247 = 0x2000400800;
          *v199 = 4196352;

          v248 = SportsScoreDataVisualization.isFeatured.getter();

          sub_1D5BCA74C(v285, sub_1D5B4D72C);
          sub_1D5BCA74C(v284, sub_1D5B69BE0);
          sub_1D5BCA74C(v286, sub_1D5B4D3E0);
          (*(v287 + 8))(v300, v301);
          if (v248)
          {
            *v199 = 4196384;
            v247 = 0x2000400820;
          }
        }
      }

      else if (v246 > 4)
      {
        if (v246 == 5)
        {
          sub_1D5BCA74C(v285, sub_1D5B4D72C);
          sub_1D5BCA74C(v284, sub_1D5B69BE0);
          sub_1D5BCA74C(v286, sub_1D5B4D3E0);
          (*(v287 + 8))(v300, v301);
          *v199 = 0x800000800;
          v247 = 0x2800000800;
        }

        else
        {
          sub_1D5BCA74C(v285, sub_1D5B4D72C);
          sub_1D5BCA74C(v284, sub_1D5B69BE0);
          sub_1D5BCA74C(v286, sub_1D5B4D3E0);
          (*(v287 + 8))(v300, v301);
          *v199 = 0x1000000800;
          v247 = 0x3000000800;
        }
      }

      else if (v246 == 3)
      {
        sub_1D5BCA74C(v285, sub_1D5B4D72C);
        sub_1D5BCA74C(v284, sub_1D5B69BE0);
        sub_1D5BCA74C(v286, sub_1D5B4D3E0);
        (*(v287 + 8))(v300, v301);
        *v199 = 0x200000800;
        v247 = 0x2200000800;
      }

      else
      {
        sub_1D5BCA74C(v285, sub_1D5B4D72C);
        sub_1D5BCA74C(v284, sub_1D5B69BE0);
        sub_1D5BCA74C(v286, sub_1D5B4D3E0);
        (*(v287 + 8))(v300, v301);
        *v199 = 0x400000800;
        v247 = 0x2400000800;
      }

      v317[0] = v245;
      SportsDataVisualization.event.getter();
      v250 = v249;

      if (v250)
      {
        swift_unknownObjectRelease();
        *v199 = v247;
      }

      goto LABEL_48;
    }

    sub_1D5BCA74C(v206, type metadata accessor for WebEmbedDataVisualization);
    v205 = type metadata accessor for WebEmbedDataVisualization;
  }

  sub_1D5BCA74C(v203, v205);
  sub_1D5BCA74C(v285, sub_1D5B4D72C);
  sub_1D5BCA74C(v284, sub_1D5B69BE0);
  sub_1D5BCA74C(v286, sub_1D5B4D3E0);
  (*(v287 + 8))(v300, v301);
LABEL_48:
  v207 = v291;
  v208 = v199;
  v115 = v306;
  sub_1D5CED910(v208, v291 + v306, type metadata accessor for FeedWebEmbed);
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v207);
  swift_setDeallocating();
  sub_1D5BCA74C(v207 + v115, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  sub_1D5BCA74C(v283, type metadata accessor for FormatWebEmbed.Resolved);
  v104 = v310;
LABEL_49:
  v209 = *(v312 + v104[17]);
  if (v209)
  {
    v210 = v209;
    v211 = v292;
    MEMORY[0x1DA6F9AF0](v296, v295);
    v212 = swift_allocObject();
    v213 = *(v305 + 88);
    v212[2] = v302;
    v212[3] = v213;
    v212[4] = v303;
    v212[5] = v210;
    v214 = v210;
    v215 = v294;
    swift_getWitnessTable();
    v216 = v269;
    v217 = v298;
    sub_1D726418C();
    v218 = v217;

    (*(v293 + 8))(v211, v215);
    v317[3] = swift_getWitnessTable();
    v317[2] = swift_getWitnessTable();
    v317[1] = swift_getWitnessTable();
    v219 = v273;
    swift_getWitnessTable();
    v220 = v297;
    sub_1D7262C9C();
    (*(v270 + 8))(v216, v219);
    v221 = v220;
    v222 = v274;
    sub_1D5CEB7B8(v221, v274, sub_1D5D5046C);
    if ((*(*(v218 - 1) + 48))(v222, 1, v218) == 1)
    {
      sub_1D5BCA74C(v222, sub_1D5D5046C);
      v223 = v275;
      v224 = *(v275 + 20);
      v225 = type metadata accessor for SharedItem(0);
      v226 = v299;
      (*(*(v225 - 8) + 56))(&v299[v224], 1, 1, v225);
      *v226 = 0;
      v226[*(v223 + 24)] = 0;
    }

    else
    {
      v227 = v253;
      sub_1D5CEB7B8(v222 + v218[9], v253, type metadata accessor for FeedRecipe.State);
      sub_1D5BCA74C(v222, type metadata accessor for FeedRecipe);
      v226 = v299;
      sub_1D5CED910(v227, v299, type metadata accessor for FeedRecipe.State);
      v223 = v275;
    }

    v228 = swift_allocObject();
    v229 = v115;
    v230 = v228;
    *(v228 + 16) = v311;
    v231 = v228 + v229;
    v232 = v276;
    sub_1D5CEB7B8(v226, v276, type metadata accessor for FeedRecipe.State);
    *(v231 + 16) = 0;
    *(v231 + 24) = 1;
    *(v231 + 32) = xmmword_1D727C320;
    v233 = v214;
    v234 = [v233 identifier];
    v235 = sub_1D726207C();
    v237 = v236;

    *v231 = v235;
    *(v231 + 8) = v237;
    *(v231 + 56) = v233;
    sub_1D5CEB7B8(v232, v231 + v218[9], type metadata accessor for FeedRecipe.State);
    v238 = v231 + v218[10];
    *(v238 + 32) = 0;
    *v238 = 0u;
    *(v238 + 16) = 0u;
    *(v231 + v218[11]) = 0;
    if (*(v232 + *(v223 + 24)) == 1)
    {
      v239 = [v233 sourceChannel];
    }

    else
    {
      v239 = 2;
    }

    sub_1D5BCA74C(v232, type metadata accessor for FeedRecipe.State);
    *(v231 + 48) = v239;
    v240 = v298;
    v241 = v231 + *(v298 + 48);
    *(v241 + 32) = 0;
    *v241 = 0u;
    *(v241 + 16) = 0u;
    v242 = v231 + *(v240 + 52);
    *(v242 + 32) = 0;
    *v242 = 0u;
    *(v242 + 16) = 0u;
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v230);
    swift_setDeallocating();
    sub_1D5BCA74C(v231, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();

    sub_1D5BCA74C(v299, type metadata accessor for FeedRecipe.State);
    sub_1D5BCA74C(v297, sub_1D5D5046C);
  }

  return v318;
}

uint64_t sub_1D5D503F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D50430()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D5D504D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5D50538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D5058C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5D50668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v22 - v16;
  v23 = a2;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    do
    {
      sub_1D5D507AC(v19, v12, a4);
      a5(v17, v12);
      sub_1D5D51EFC(v17, a4);
      v19 += v20;
      --v18;
    }

    while (v18);
    return v23;
  }

  return a2;
}

uint64_t sub_1D5D507AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D50814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5087C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  sub_1D5D50E70(0, &qword_1EDF34960, type metadata accessor for FeedGroupItem);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for FeedGroupItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v28 = &v27 - v15;
  v29 = v2;
  v16 = *v2;
  sub_1D7264A0C();
  v33 = a2;
  sub_1D5D50ED0();
  sub_1D72621EC();

  v17 = sub_1D7264A5C();
  v18 = -1 << *(v16 + 32);
  v19 = v17 & ~v18;
  if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_33:
    v22 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v25 = v28;
    sub_1D5BE7354(v33, v28, type metadata accessor for FeedGroupItem);
    v34 = *v22;
    sub_1D5D5131C(v25, v19, isUniquelyReferenced_nonNull_native);
    *v22 = v34;
    sub_1D5BE7424(v24, v30, type metadata accessor for FeedGroupItem);
    return 1;
  }

  v31 = ~v18;
  v20 = *(v9 + 72);
  while (2)
  {
    sub_1D5BE7354(*(v16 + 48) + v20 * v19, v12, type metadata accessor for FeedGroupItem);
    v21 = &v7[*(v32 + 48)];
    sub_1D5BE7424(v12, v7, type metadata accessor for FeedGroupItem);
    sub_1D5BE7354(v33, v21, type metadata accessor for FeedGroupItem);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      case 2u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 3u:
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 4u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 5u:
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 6u:
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 7u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 8u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 9u:
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 0xAu:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 0xBu:
        if (swift_getEnumCaseMultiPayload() != 11)
        {
          goto LABEL_4;
        }

        goto LABEL_34;
      case 0xCu:
        if (swift_getEnumCaseMultiPayload() == 12)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 0xDu:
        if (swift_getEnumCaseMultiPayload() != 13)
        {
LABEL_4:
          sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
LABEL_5:
          sub_1D5BF1AEC(v21, type metadata accessor for FeedGroupItem);
          v19 = (v19 + 1) & v31;
          if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_33;
          }

          continue;
        }

LABEL_34:
        sub_1D5BF1AEC(v21, type metadata accessor for FeedGroupItem);
LABEL_35:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        sub_1D5BF1AEC(v33, type metadata accessor for FeedGroupItem);
        sub_1D5BE7354(*(v16 + 48) + v20 * v19, v30, type metadata accessor for FeedGroupItem);
        return 0;
      default:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_5;
        }

LABEL_32:
        v7 = v21;
        goto LABEL_35;
    }
  }
}

void sub_1D5D50E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D5D50ED0()
{
  v1 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v0, v4, type metadata accessor for FeedGroupItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D5D5113C(v4, type metadata accessor for FeedGroupItem);
  result = 6775156;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 0x6575737369;
      break;
    case 2:
      result = 0x736E6F6974706FLL;
      break;
    case 3:
      result = 0x72656874616577;
      break;
    case 4:
      result = 0x6C6C6177796170;
      break;
    case 5:
      result = 0x656E696C64616568;
      break;
    case 6:
      result = 0x6465626D45626577;
      break;
    case 7:
      result = 1684366694;
      break;
    case 8:
      result = 0x76457374726F7073;
      break;
    case 9:
      result = 0x656C7A7A7570;
      break;
    case 10:
      result = 0x7954656C7A7A7570;
      break;
    case 11:
      result = 0x7453656C7A7A7570;
      break;
    case 12:
      result = 0x65726F736E6F7073;
      break;
    case 13:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5D5113C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D5119C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D511FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D5125C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D512BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D5131C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  sub_1D5D50E70(0, &qword_1EDF34960, type metadata accessor for FeedGroupItem);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for FeedGroupItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v28 = v11;
  v29 = v3;
  if (v16 <= v15 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5D520C8(v15 + 1);
    }

    else
    {
      if (v16 > v15)
      {
        sub_1D6001500(type metadata accessor for FeedGroupItem, sub_1D5D51E1C, type metadata accessor for FeedGroupItem, type metadata accessor for FeedGroupItem);
        goto LABEL_40;
      }

      sub_1D5D51924(v15 + 1);
    }

    v17 = *v3;
    sub_1D7264A0C();
    sub_1D5D50ED0();
    sub_1D72621EC();

    v3 = v32;
    v18 = sub_1D7264A5C();
    v19 = -1 << *(v17 + 32);
    a2 = v18 & ~v19;
    if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v21 = *(v11 + 72);
      while (1)
      {
        sub_1D5BE7354(*(v17 + 48) + v21 * a2, v14, type metadata accessor for FeedGroupItem);
        v3 = &v9[*(v30 + 48)];
        sub_1D5BE7424(v14, v9, type metadata accessor for FeedGroupItem);
        sub_1D5BE7354(v31, v3, type metadata accessor for FeedGroupItem);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 2u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 3u:
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 4u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 5u:
            if (swift_getEnumCaseMultiPayload() == 5)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 6u:
            if (swift_getEnumCaseMultiPayload() == 6)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 7u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 7)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 8u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 9u:
            if (swift_getEnumCaseMultiPayload() == 9)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 0xAu:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 10)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 0xBu:
            if (swift_getEnumCaseMultiPayload() != 11)
            {
              goto LABEL_11;
            }

            goto LABEL_43;
          case 0xCu:
            if (swift_getEnumCaseMultiPayload() == 12)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 0xDu:
            if (swift_getEnumCaseMultiPayload() == 13)
            {
              goto LABEL_43;
            }

LABEL_11:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            goto LABEL_12;
          default:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (!swift_getEnumCaseMultiPayload())
            {
LABEL_39:
              v9 = v3;
              goto LABEL_44;
            }

LABEL_12:
            sub_1D5BF1AEC(v3, type metadata accessor for FeedGroupItem);
            a2 = (a2 + 1) & v20;
            if (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_40;
            }

            break;
        }
      }
    }
  }

LABEL_40:
  v22 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D5BE7424(v31, *(v22 + 48) + *(v28 + 72) * a2, type metadata accessor for FeedGroupItem);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_43:
    sub_1D5BF1AEC(v3, type metadata accessor for FeedGroupItem);
LABEL_44:
    sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
    sub_1D726492C();
    __break(1u);
    JUMPOUT(0x1D5D518ECLL);
  }

  *(v22 + 16) = v26;
  return result;
}

uint64_t sub_1D5D51924(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FeedGroupItem(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v37 - v8;
  v10 = *v1;
  sub_1D5D51E1C(0);
  v11 = sub_1D7263CBC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v1;
    v39 = v10;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v11 + 56;
    v40 = v9;
    while (v17)
    {
      v26 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v29 = *(v10 + 48);
      v30 = *(v42 + 72);
      sub_1D5BE7354(v29 + v30 * (v26 | (v13 << 6)), v9, type metadata accessor for FeedGroupItem);
      sub_1D7264A0C();
      v31 = v9;
      v32 = v41;
      sub_1D5BE7354(v31, v41, type metadata accessor for FeedGroupItem);
      swift_getEnumCaseMultiPayload();
      sub_1D5BF1AEC(v32, type metadata accessor for FeedGroupItem);
      sub_1D72621EC();

      v21 = sub_1D7264A5C();
      v22 = -1 << *(v12 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      v9 = v40;
      if (((-1 << v23) & ~*(v19 + 8 * (v23 >> 6))) != 0)
      {
        v25 = __clz(__rbit64((-1 << v23) & ~*(v19 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = 0;
        v34 = (63 - v22) >> 6;
        do
        {
          if (++v24 == v34 && (v33 & 1) != 0)
          {
            goto LABEL_29;
          }

          v35 = v24 == v34;
          if (v24 == v34)
          {
            v24 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v24);
        }

        while (v36 == -1);
        v25 = __clz(__rbit64(~v36)) + (v24 << 6);
      }

      *(v19 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      sub_1D5BE7424(v9, *(v12 + 48) + v25 * v30, type metadata accessor for FeedGroupItem);
      ++*(v12 + 16);
      v10 = v39;
    }

    v27 = v13;
    while (1)
    {
      v13 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x1D5D51DE4);
      }

      if (v13 >= v18)
      {
        break;
      }

      v28 = *(v14 + 8 * v13);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v17 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    v2 = v38;
  }

  else
  {
  }

  *v2 = v12;
  return result;
}

void sub_1D5D51E1C(uint64_t a1)
{
  if (!qword_1EDF1A5D0)
  {
    type metadata accessor for FeedGroupItem(255);
    sub_1D5D51EB4(qword_1EDF41EF8, 255, type metadata accessor for FeedGroupItem, &protocol conformance descriptor for FeedGroupItem);
    v1 = sub_1D7263CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A5D0);
    }
  }
}

uint64_t sub_1D5D51EB4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5D51EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5D51F9C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v7 = a2(0) - 8;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    do
    {
      sub_1D5BE8DD8(v17, v10, a3);
      a4(v15, v10);
      sub_1D5BEA7D0(v15, a3);
      v17 += v18;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1D5D520C8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FeedGroupItem(0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v37 - v8;
  v10 = *v1;
  sub_1D5D51E1C(0);
  v11 = sub_1D7263CBC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v37 = v1;
    v38 = v10;
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v11 + 56;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_16:
      v28 = *(v10 + 48);
      v29 = *(v40 + 72);
      sub_1D5BE7424(v28 + v29 * (v25 | (v13 << 6)), v9, type metadata accessor for FeedGroupItem);
      sub_1D7264A0C();
      v30 = v39;
      sub_1D5BE7354(v9, v39, type metadata accessor for FeedGroupItem);
      swift_getEnumCaseMultiPayload();
      sub_1D5BF1AEC(v30, type metadata accessor for FeedGroupItem);
      sub_1D72621EC();

      v20 = sub_1D7264A5C();
      v21 = -1 << *(v12 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v19 + 8 * (v22 >> 6))) != 0)
      {
        v24 = __clz(__rbit64((-1 << v22) & ~*(v19 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = 0;
        v32 = (63 - v21) >> 6;
        do
        {
          if (++v23 == v32 && (v31 & 1) != 0)
          {
            goto LABEL_31;
          }

          v33 = v23 == v32;
          if (v23 == v32)
          {
            v23 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v23);
        }

        while (v34 == -1);
        v24 = __clz(__rbit64(~v34)) + (v23 << 6);
      }

      *(v19 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_1D5BE7424(v9, *(v12 + 48) + v24 * v29, type metadata accessor for FeedGroupItem);
      ++*(v12 + 16);
      v10 = v38;
    }

    v26 = v13;
    while (1)
    {
      v13 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x1D5D525BCLL);
      }

      if (v13 >= v18)
      {
        break;
      }

      v27 = v14[v13];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_16;
      }
    }

    v35 = 1 << *(v10 + 32);
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    v2 = v37;
    *(v10 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1D5D525F4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v40 = a4;
  v33 = a1;
  v37 = *(v6 + 80);
  v38 = *(v6 + 96);
  sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v36 = sub_1D725B15C();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v11);
  v34 = &v33 - v12;
  v13 = a3[1];
  v14 = a3[3];
  v48 = a3[2];
  v49 = v14;
  v15 = a3[3];
  v50 = a3[4];
  v16 = *a3;
  v17 = *a3;
  v47 = a3[1];
  v46 = v16;
  v53 = v48;
  v54 = v15;
  v55 = a3[4];
  v18 = *a6;
  v19 = a6[1];
  v21 = a6[2];
  v20 = a6[3];
  v51 = v17;
  v52 = v13;
  FormatContentSubgroup.Resolved.feedItemIdentifiers.getter();
  v23 = v22;
  sub_1D5D55530(v18, v19, v21, v20);

  v24 = v33;
  v25 = sub_1D5D55574(v23, v18, v19, v21, v20, a5, v33, a2);

  sub_1D5D559EC(v18, v19, v21, v20);

  v26 = sub_1D5B86020(v25);

  v27 = FormatContentSubgroup.Resolved.placeholderIdentifiers.getter();

  v28 = sub_1D5D5600C(v27, v24, a2);

  v29 = sub_1D5B86020(v28);

  (*(v35 + 16))(v34, v40, v36);
  v30 = *(v39 + 88);
  v41 = v37;
  v42 = v30;
  v43 = v38;
  v44 = v26;
  v45 = v29;
  swift_getWitnessTable();
  v31 = sub_1D726247C();

  return v31;
}

void FormatContentSubgroup.Resolved.feedItemIdentifiers.getter()
{
  sub_1D5CEBCF0();
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0 + 32;
    while (v4 < *(v1 + 16))
    {
      ++v4;
      v6 = FormatContentSlot.Resolved.feedItemIdentifiers.getter();
      sub_1D5D55274(v6);
      v5 += 64;
      if (v3 == v4)
      {
        v2 = v7;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_1D5B86020(v2);
  }
}

uint64_t FormatContentSlot.Resolved.feedItemIdentifiers.getter()
{
  v1 = v0[1];
  v58 = *v0;
  v59 = v1;
  v2 = v0[3];
  v60 = v0[2];
  v61 = v2;
  v57 = MEMORY[0x1E69E7CD0];
  v53 = FormatContentSlot.Resolved.headlines.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v3 = sub_1D5D52E68();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      sub_1D5B860D0(&v52, v5, v6);

      v5 = sub_1D5D52E68();
      v6 = v7;
    }

    while (v7);
  }

  v53 = FormatContentSlot.Resolved.issues.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v8 = sub_1D5D53154();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      sub_1D5B860D0(&v52, v10, v11);

      v10 = sub_1D5D53154();
      v11 = v12;
    }

    while (v12);
  }

  v53 = FormatContentSlot.Resolved.tags.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v13 = sub_1D5D52E68();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    do
    {
      sub_1D5B860D0(&v52, v15, v16);

      v15 = sub_1D5D52E68();
      v16 = v17;
    }

    while (v17);
  }

  v53 = FormatContentSlot.Resolved.webEmbeds.getter();
  v54 = 0;
  v55 = sub_1D610B568;
  v56 = 0;
  sub_1D5D53838();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    do
    {
      sub_1D5B860D0(&v52, v20, v21);

      sub_1D5D53838();
      v20 = v22;
      v21 = v23;
    }

    while (v23);
  }

  v53 = FormatContentSlot.Resolved.puzzles.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v24 = sub_1D5D52E68();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    do
    {
      sub_1D5B860D0(&v52, v26, v27);

      v26 = sub_1D5D52E68();
      v27 = v28;
    }

    while (v28);
  }

  v53 = FormatContentSlot.Resolved.puzzleTypes.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v29 = sub_1D5D52E68();
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    do
    {
      sub_1D5B860D0(&v52, v31, v32);

      v31 = sub_1D5D52E68();
      v32 = v33;
    }

    while (v33);
  }

  v53 = FormatContentSlot.Resolved.puzzleStatistics.getter();
  v54 = 0;
  v55 = sub_1D6F5AFCC;
  v56 = 0;
  sub_1D5D54458();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    do
    {
      sub_1D5B860D0(&v52, v36, v37);

      sub_1D5D54458();
      v36 = v38;
      v37 = v39;
    }

    while (v39);
  }

  v53 = FormatContentSlot.Resolved.recipes.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v40 = sub_1D5D53154();
  if (v41)
  {
    v42 = v40;
    v43 = v41;
    do
    {
      sub_1D5B860D0(&v52, v42, v43);

      v42 = sub_1D5D53154();
      v43 = v44;
    }

    while (v44);
  }

  v53 = FormatContentSlot.Resolved.customItems.getter();
  v54 = 0;
  v55 = sub_1D610B568;
  v56 = 0;
  sub_1D5D54E50();
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    do
    {
      sub_1D5B860D0(&v52, v47, v48);

      sub_1D5D54E50();
      v47 = v49;
      v48 = v50;
    }

    while (v50);
  }

  return v57;
}

uint64_t sub_1D5D52E68()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA6FB460](v0[1], v1);
    v4 = result;
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v4 = *(v1 + 8 * v3 + 32);
  result = swift_unknownObjectRetain();
  v5 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  v0[1] = v5;
  v6 = v0[2];
  v8 = v4;
  v6(&v7, &v8);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t FormatContentSlot.Resolved.issues.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

id sub_1D5D53154()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA6FB460](v0[1], v1);
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    result = *(v1 + 8 * v3 + 32);
  }

  v4 = result;
  if (__OFADD__(v3, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v0[1] = v3 + 1;
  v5 = v0[2];
  v7 = result;
  v5(&v6, &v7);

  return v6;
}

uint64_t FormatContentSlot.Resolved.tags.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

void *FormatContentSlot.Resolved.webEmbeds.getter()
{
  sub_1D5B5AFCC(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v36 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v34, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v31 - v18;
  v20 = *(v0 + 32);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v33 = *(v17 + 72);
  v23 = (v9 + 56);
  v31 = v9;
  v24 = (v9 + 48);
  v25 = MEMORY[0x1E69E7CC0];
  v32 = v4;
  do
  {
    sub_1D5CEC8D8(v22, v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5CEC8D8(v19, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1D5D53BB8(v14, v4, type metadata accessor for FormatWebEmbed.Resolved);
      v26 = 0;
    }

    else
    {
      sub_1D5CECA00(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v26 = 1;
    }

    v27 = v36;
    (*v23)(v4, v26, 1, v36);
    sub_1D5D53BB8(v4, v8, sub_1D5B5AFCC);
    sub_1D5CECA00(v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if ((*v24)(v8, 1, v27) == 1)
    {
      sub_1D5CECA00(v8, sub_1D5B5AFCC);
    }

    else
    {
      sub_1D5D53BB8(v8, v35, type metadata accessor for FormatWebEmbed.Resolved);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D5CF237C(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1D5CF237C((v28 > 1), v29 + 1, 1, v25);
      }

      v25[2] = v29 + 1;
      sub_1D5D53BB8(v35, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for FormatWebEmbed.Resolved);
      v4 = v32;
    }

    v22 += v33;
    --v21;
  }

  while (v21);
  return v25;
}

void sub_1D5D53838()
{
  v1 = type metadata accessor for FormatWebEmbed.Resolved(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5AFCC(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v12;
  v15 = v0[1];
  v16 = *(*v0 + 16);
  if (v15 == v16)
  {
    (*(v2 + 56))(&v19 - v12, 1, 1, v1, v13);
  }

  else
  {
    if (v15 >= v16)
    {
      __break(1u);
      return;
    }

    sub_1D5CEC8D8(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, &v19 - v12, type metadata accessor for FormatWebEmbed.Resolved);
    v0[1] = v15 + 1;
    (*(v2 + 56))(v14, 0, 1, v1, v17);
  }

  v18 = v0[2];
  sub_1D5D53BB8(v14, v9, sub_1D5B5AFCC);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    sub_1D5D53BB8(v9, v5, type metadata accessor for FormatWebEmbed.Resolved);
    v18(&v19, v5);
    sub_1D5CECA00(v5, type metadata accessor for FormatWebEmbed.Resolved);
  }
}

uint64_t sub_1D5D53A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D53AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D53B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D53BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FormatContentSlot.Resolved.puzzles.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

uint64_t FormatContentSlot.Resolved.puzzleTypes.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

void *FormatContentSlot.Resolved.puzzleStatistics.getter()
{
  sub_1D5D54424(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v36 = type metadata accessor for PuzzleStatistic(0);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v34, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v31 - v18;
  v20 = *(v0 + 32);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v33 = *(v17 + 72);
  v23 = (v9 + 56);
  v31 = v9;
  v24 = (v9 + 48);
  v25 = MEMORY[0x1E69E7CC0];
  v32 = v4;
  do
  {
    sub_1D5CEC8D8(v22, v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5CEC8D8(v19, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1D5D53BB8(v14, v4, type metadata accessor for PuzzleStatistic);
      v26 = 0;
    }

    else
    {
      sub_1D5CECA00(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v26 = 1;
    }

    v27 = v36;
    (*v23)(v4, v26, 1, v36);
    sub_1D5D53BB8(v4, v8, sub_1D5D54424);
    sub_1D5CECA00(v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if ((*v24)(v8, 1, v27) == 1)
    {
      sub_1D5CECA00(v8, sub_1D5D54424);
    }

    else
    {
      sub_1D5D53BB8(v8, v35, type metadata accessor for PuzzleStatistic);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D698C9D8(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1D698C9D8((v28 > 1), v29 + 1, 1, v25);
      }

      v25[2] = v29 + 1;
      sub_1D5D53BB8(v35, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for PuzzleStatistic);
      v4 = v32;
    }

    v22 += v33;
    --v21;
  }

  while (v21);
  return v25;
}

void sub_1D5D54458()
{
  v1 = type metadata accessor for PuzzleStatistic(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D54424(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v12;
  v15 = v0[1];
  v16 = *(*v0 + 16);
  if (v15 == v16)
  {
    (*(v2 + 56))(&v19 - v12, 1, 1, v1, v13);
  }

  else
  {
    if (v15 >= v16)
    {
      __break(1u);
      return;
    }

    sub_1D5CEC8D8(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, &v19 - v12, type metadata accessor for PuzzleStatistic);
    v0[1] = v15 + 1;
    (*(v2 + 56))(v14, 0, 1, v1, v17);
  }

  v18 = v0[2];
  sub_1D5D53BB8(v14, v9, sub_1D5D54424);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    sub_1D5D53BB8(v9, v5, type metadata accessor for PuzzleStatistic);
    v18(&v19, v5);
    sub_1D5CECA00(v5, type metadata accessor for PuzzleStatistic);
  }
}

void *sub_1D5D546B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PuzzleStatisticCategory(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t FormatContentSlot.Resolved.recipes.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

uint64_t sub_1D5D5496C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PuzzleStatisticCategory(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *FormatContentSlot.Resolved.customItems.getter()
{
  sub_1D5D54E1C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v36 = type metadata accessor for FormatCustomItem.Resolved(0);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v34, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v31 - v18;
  v20 = *(v0 + 32);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v33 = *(v17 + 72);
  v23 = (v9 + 56);
  v31 = v9;
  v24 = (v9 + 48);
  v25 = MEMORY[0x1E69E7CC0];
  v32 = v4;
  do
  {
    sub_1D5CEC8D8(v22, v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5CEC8D8(v19, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1D5D53BB8(v14, v4, type metadata accessor for FormatCustomItem.Resolved);
      v26 = 0;
    }

    else
    {
      sub_1D5CECA00(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v26 = 1;
    }

    v27 = v36;
    (*v23)(v4, v26, 1, v36);
    sub_1D5D53BB8(v4, v8, sub_1D5D54E1C);
    sub_1D5CECA00(v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if ((*v24)(v8, 1, v27) == 1)
    {
      sub_1D5CECA00(v8, sub_1D5D54E1C);
    }

    else
    {
      sub_1D5D53BB8(v8, v35, type metadata accessor for FormatCustomItem.Resolved);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D699549C(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1D699549C((v28 > 1), v29 + 1, 1, v25);
      }

      v25[2] = v29 + 1;
      sub_1D5D53BB8(v35, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for FormatCustomItem.Resolved);
      v4 = v32;
    }

    v22 += v33;
    --v21;
  }

  while (v21);
  return v25;
}

void sub_1D5D54E50()
{
  v1 = type metadata accessor for FormatCustomItem.Resolved(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D54E1C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v12;
  v15 = v0[1];
  v16 = *(*v0 + 16);
  if (v15 == v16)
  {
    (*(v2 + 56))(&v19 - v12, 1, 1, v1, v13);
  }

  else
  {
    if (v15 >= v16)
    {
      __break(1u);
      return;
    }

    sub_1D5CEC8D8(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, &v19 - v12, type metadata accessor for FormatCustomItem.Resolved);
    v0[1] = v15 + 1;
    (*(v2 + 56))(v14, 0, 1, v1, v17);
  }

  v18 = v0[2];
  sub_1D5D53BB8(v14, v9, sub_1D5D54E1C);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    sub_1D5D53BB8(v9, v5, type metadata accessor for FormatCustomItem.Resolved);
    v18(&v19, v5);
    sub_1D5CECA00(v5, type metadata accessor for FormatCustomItem.Resolved);
  }
}

uint64_t sub_1D5D550AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B5DF98(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D55194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B5DF98(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5D55274(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1D5B9A6EC(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1D5B858EC((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1D5B87E38(result);
  *v1 = v4;
  return result;
}

void sub_1D5D55530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1D5D55574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return result;
  }

  v58 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v9, 0);
  v53 = v8 + 56;
  v54 = v58;
  result = sub_1D7263B7C();
  v13 = result;
  v14 = 0;
  v55 = a6 + 56;
  v43 = v8 + 64;
  v48 = a3;
  v49 = a6;
  v50 = v8;
  v47 = v9;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v8 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v53 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_44;
    }

    v51 = v14;
    v52 = *(v8 + 36);
    v17 = (*(v8 + 48) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];
    if (!a3 || (v19 == a2 ? (v20 = v18 == a3) : (v20 = 0), !v20 && (sub_1D72646CC() & 1) == 0 || !*(a6 + 16)))
    {

LABEL_25:
      v27 = MEMORY[0x1E69E6158];
      sub_1D5D60AB4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D7270C10;
      *(v28 + 32) = a7;
      *(v28 + 40) = a8;
      *(v28 + 48) = v19;
      *(v28 + 56) = v18;
      sub_1D5D60AB4(0, &qword_1EDF43BA0, v27, MEMORY[0x1E69E62F8]);
      sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v27, MEMORY[0x1E69E6310]);

      v29 = sub_1D7261F3C();
      v31 = v30;

LABEL_26:

      goto LABEL_27;
    }

    sub_1D7264A0C();

    sub_1D72621EC();
    v21 = sub_1D7264A5C();
    v22 = -1 << *(a6 + 32);
    v23 = v21 & ~v22;
    if (((*(v55 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_23:

      goto LABEL_25;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = (*(a6 + 48) + 16 * v23);
      if (*v25 == a4 && v25[1] == a5)
      {
        v31 = a5;
        v29 = a4;
        goto LABEL_26;
      }

      if (sub_1D72646CC())
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v55 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v29 = a4;
    v31 = a5;
LABEL_27:
    v32 = v54;
    v34 = *(v54 + 16);
    v33 = *(v54 + 24);
    if (v34 >= v33 >> 1)
    {
      result = sub_1D5BFC364((v33 > 1), v34 + 1, 1);
      v32 = v54;
    }

    *(v32 + 16) = v34 + 1;
    v35 = v32 + 16 * v34;
    *(v35 + 32) = v29;
    *(v35 + 40) = v31;
    v8 = v50;
    v15 = 1 << *(v50 + 32);
    if (v13 >= v15)
    {
      goto LABEL_45;
    }

    v36 = *(v53 + 8 * v16);
    if ((v36 & (1 << v13)) == 0)
    {
      goto LABEL_46;
    }

    v54 = v32;
    if (v52 != *(v50 + 36))
    {
      goto LABEL_47;
    }

    v37 = v36 & (-2 << (v13 & 0x3F));
    if (v37)
    {
      v15 = __clz(__rbit64(v37)) | v13 & 0x7FFFFFFFFFFFFFC0;
      a3 = v48;
      a6 = v49;
    }

    else
    {
      v38 = v16 << 6;
      v39 = v16 + 1;
      v40 = (v43 + 8 * v16);
      a3 = v48;
      a6 = v49;
      while (v39 < (v15 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_1D5C86234(v13, v52, 0);
          v15 = __clz(__rbit64(v41)) + v38;
          goto LABEL_38;
        }
      }

      result = sub_1D5C86234(v13, v52, 0);
LABEL_38:
      v8 = v50;
    }

    v14 = v51 + 1;
    v13 = v15;
    if (v51 + 1 == v47)
    {
      return v54;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_1D5D559EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t FormatContentSubgroup.Resolved.placeholderIdentifiers.getter()
{
  FormatContentSubgroup.Resolved.placeholders.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v3 = v12;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1D5BFC364((v8 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v9 = v12 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1D5B86020(v3);

  return v10;
}

void FormatContentSubgroup.Resolved.placeholders.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v33 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v33 - v7;
  v9 = v0[3];
  v43 = v0[2];
  v44 = v9;
  v45 = v0[4];
  v10 = v0[1];
  v41 = *v0;
  v42 = v10;
  sub_1D5CEBCF0();
  v36 = *(v11 + 16);
  if (!v36)
  {
LABEL_30:

    return;
  }

  v12 = 0;
  v35 = v11 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  v39 = v1;
  v34 = v11;
  while (v12 < *(v11 + 16))
  {
    v37 = v12;
    v38 = v13;
    v14 = *(v35 + (v12 << 6) + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v17 = *(v33 + 72);
      v18 = MEMORY[0x1E69E7CC0];
      v40 = v17;
      do
      {
        sub_1D5CEC7A0(v16, v8, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CEC7A0(v8, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        if (swift_getEnumCaseMultiPayload() <= 8)
        {
          sub_1D5D1EB58(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5D1EB58(v8, type metadata accessor for FormatContentSlotItemObject.Resolved);
        }

        else
        {
          v20 = *v4;
          v19 = *(v4 + 1);
          v21 = v4[16];
          sub_1D5D1EB58(v8, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1D5D55EC4(0, *(v18 + 2) + 1, 1, v18);
          }

          v23 = *(v18 + 2);
          v22 = *(v18 + 3);
          if (v23 >= v22 >> 1)
          {
            v18 = sub_1D5D55EC4((v22 > 1), v23 + 1, 1, v18);
          }

          *(v18 + 2) = v23 + 1;
          v24 = &v18[24 * v23];
          *(v24 + 4) = v20;
          *(v24 + 5) = v19;
          v24[48] = v21;
          v17 = v40;
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v25 = *(v18 + 2);
    v13 = v38;
    v26 = *(v38 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v27 <= *(v13 + 3) >> 1)
    {
      if (*(v18 + 2))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v26 <= v27)
      {
        v29 = v26 + v25;
      }

      else
      {
        v29 = v26;
      }

      v13 = sub_1D5D55EC4(isUniquelyReferenced_nonNull_native, v29, 1, v13);
      if (*(v18 + 2))
      {
LABEL_26:
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v25)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v25)
        {
          v30 = *(v13 + 2);
          v31 = __OFADD__(v30, v25);
          v32 = v30 + v25;
          if (v31)
          {
            goto LABEL_35;
          }

          *(v13 + 2) = v32;
        }

        goto LABEL_4;
      }
    }

    if (v25)
    {
      goto LABEL_33;
    }

LABEL_4:
    v12 = v37 + 1;
    v11 = v34;
    if (v37 + 1 == v36)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

char *sub_1D5D55ED8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5D5600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v4, 0);
    v38 = v39;
    v6 = v3 + 56;
    result = sub_1D7263B7C();
    v7 = result;
    v8 = 0;
    v30 = v3 + 64;
    v31 = v4;
    v32 = v3 + 56;
    v33 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v36 = v8;
      v37 = *(v3 + 36);
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = MEMORY[0x1E69E6158];
      sub_1D5D60AB4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D7270C10;
      *(v15 + 32) = a2;
      *(v15 + 40) = a3;
      *(v15 + 48) = v12;
      *(v15 + 56) = v13;
      sub_1D5D60AB4(0, &qword_1EDF43BA0, v14, MEMORY[0x1E69E62F8]);
      sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v14, MEMORY[0x1E69E6310]);
      swift_bridgeObjectRetain_n();

      v16 = sub_1D7261F3C();
      v18 = v17;

      v19 = v38;
      v21 = *(v38 + 16);
      v20 = *(v38 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1D5BFC364((v20 > 1), v21 + 1, 1);
        v19 = v38;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v18;
      v3 = v33;
      v9 = 1 << *(v33 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v6 = v32;
      v23 = *(v32 + 8 * v10);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v19;
      if (v37 != *(v33 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v30 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1D5C86234(v7, v37, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1D5C86234(v7, v37, 0);
      }

LABEL_4:
      v8 = v36 + 1;
      v7 = v9;
      if (v36 + 1 == v31)
      {
        return v38;
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
  }

  return result;
}

uint64_t sub_1D5D5633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D725CE8C();
  v30 = a1;
  v31 = a5;
  BlueprintItem<>.feedItem.getter(v29, a5);
  v15 = FeedItem.identifier.getter();
  v17 = v16;
  sub_1D5BCA74C(v14, type metadata accessor for FeedItem);
  LOBYTE(v15) = sub_1D5BE240C(v15, v17, a2);

  if (v15)
  {
    return 1;
  }

  else
  {
    v28[0] = v6;
    v28[1] = a3;
    v19 = a3 + 56;
    v20 = 1 << *(a3 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a3 + 56);
    v23 = (v20 + 63) >> 6;

    v25 = 0;
    while (v22)
    {
LABEL_11:
      v22 &= v22 - 1;

      BlueprintItem<>.feedItem.getter(v29, v31);
      FeedItem.identifier.getter();
      sub_1D5BCA74C(v14, type metadata accessor for FeedItem);
      v27 = sub_1D726230C();

      if (v27)
      {
        v18 = 1;
LABEL_14:

        return v18;
      }
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v18 = 0;
        goto LABEL_14;
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1D5D565AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D5D565DC(a1, a2, a3, *v3, &unk_1EDF19A00, &type metadata for FeedSlot);
  *v3 = result;
  return result;
}

char *sub_1D5D565DC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5D56700@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = v14;
  v101 = a7;
  v102 = a8;
  v99 = a5;
  v100 = a6;
  v97 = a3;
  v98 = a4;
  v96 = a2;
  v89 = a9;
  v17 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v95 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v104 = *a1;
  v105 = v21;
  v22 = a1[3];
  v106 = a1[2];
  v107 = v22;
  v23 = v106;
  v24 = MEMORY[0x1E69E7CC0];
  v94 = *(v106 + 16);
  if (v94)
  {
    v25 = 0;
    v92 = a12;
    v93 = a13;
    v91 = a11;
    v90 = a10;
    while (v25 < *(v23 + 16))
    {
      sub_1D5CEB7B8(v23 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v25, v20, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5D60B04(v20, v96, v97, v98, v99, v100, v101, v102, &v109, v90, &v104, v91, v92, v93);
      v13 = v15;
      if (v15)
      {
        goto LABEL_60;
      }

      sub_1D5BCA74C(v20, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v26 = v109;
      v27 = *(v109 + 16);
      v28 = *(v24 + 2);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v29 > *(v24 + 3) >> 1)
      {
        if (v28 <= v29)
        {
          v31 = v28 + v27;
        }

        else
        {
          v31 = v28;
        }

        v24 = sub_1D5D6149C(isUniquelyReferenced_nonNull_native, v31, 1, v24);
      }

      v15 = 0;
      if (*(v26 + 16))
      {
        if ((*(v24 + 3) >> 1) - *(v24 + 2) < v27)
        {
          goto LABEL_56;
        }

        swift_arrayInitWithCopy();

        if (v27)
        {
          v32 = *(v24 + 2);
          v33 = __OFADD__(v32, v27);
          v34 = v32 + v27;
          if (v33)
          {
            goto LABEL_57;
          }

          *(v24 + 2) = v34;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_55;
        }
      }

      if (v94 == ++v25)
      {
        goto LABEL_19;
      }
    }

LABEL_53:
    __break(1u);
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
    goto LABEL_59;
  }

LABEL_19:
  v109 = v24;
  sub_1D5D56DE0(0, &qword_1EDF1B310, &type metadata for SlotReference, MEMORY[0x1E69E62F8]);
  sub_1D5D56E30(&unk_1EDF1B300, &qword_1EDF1B310, &type metadata for SlotReference, MEMORY[0x1E69E6328]);
  sub_1D5D56EE0();
  v102 = sub_1D72623BC();
  v35 = *(v24 + 2);
  v100 = *(&v104 + 1);
  v101 = v104;
  if (v35)
  {
    v109 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v35, 0);
    v36 = v109;
    v37 = (v24 + 40);
    do
    {
      v39 = *(v37 - 1);
      v38 = *v37;
      v109 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        sub_1D5BFC364((v40 > 1), v41 + 1, 1);
        v36 = v109;
      }

      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
      v37 += 6;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v99 = sub_1D5B86020(v36);

  sub_1D5D56F34(0);
  v43 = v102;
  v44 = sub_1D72640FC();
  v45 = v44;
  v46 = 0;
  v49 = *(v43 + 64);
  v48 = v43 + 64;
  v47 = v49;
  v13 = 1;
  v50 = 1 << *(v48 - 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v47;
  v20 = ((v50 + 63) >> 6);
  v53 = v44 + 64;
  if ((v51 & v47) != 0)
  {
    do
    {
      v54 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
LABEL_35:
      v57 = v54 | (v46 << 6);
      v58 = (*(v102 + 48) + 16 * v57);
      v60 = *v58;
      v59 = v58[1];
      v61 = *(*(v102 + 56) + 48 * v57 + 16);
      *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      v62 = (v45[6] + 16 * v57);
      *v62 = v60;
      v62[1] = v59;
      *(v45[7] + 8 * v57) = v61;
      v63 = v45[2];
      v33 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v33)
      {
        goto LABEL_58;
      }

      v45[2] = v64;
    }

    while (v52);
  }

  v55 = v46;
  while (1)
  {
    v46 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v46 >= v20)
    {
      break;
    }

    v56 = *(v48 + 8 * v46);
    ++v55;
    if (v56)
    {
      v54 = __clz(__rbit64(v56));
      v52 = (v56 - 1) & v56;
      goto LABEL_35;
    }
  }

  sub_1D5D56F9C(0);
  v65 = v102;
  v66 = sub_1D72640FC();
  v67 = v66;
  v68 = 0;
  v69 = 1 << *(v65 + 32);
  v70 = *(v65 + 64);
  v71 = -1;
  if (v69 < 64)
  {
    v71 = ~(-1 << v69);
  }

  v13 = v71 & v70;
  v72 = (v69 + 63) >> 6;
  v20 = (v66 + 64);
  if ((v71 & v70) == 0)
  {
LABEL_42:
    v74 = v68;
    while (1)
    {
      v68 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_52;
      }

      if (v68 >= v72)
      {
        v84 = sub_1D5D57034(v102);

        v85 = v105;
        v108 = *(&v105 + 1);
        v109 = v105;
        v86 = v89;
        *v89 = v101;
        v86[1] = v100;
        v86[2] = v99;
        v86[3] = v45;
        v86[4] = v67;
        v86[5] = v84;
        *(v86 + 3) = v85;
        sub_1D5EF1D94(&v109, v103);
        return sub_1D5CEB7B8(&v108, v103, sub_1D5B81B04);
      }

      v75 = *(v48 + 8 * v68);
      ++v74;
      if (v75)
      {
        v73 = __clz(__rbit64(v75));
        v13 = (v75 - 1) & v75;
        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v73 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_47:
    v76 = v73 | (v68 << 6);
    v77 = (*(v102 + 48) + 16 * v76);
    v79 = *v77;
    v78 = v77[1];
    v80 = *(*(v102 + 56) + 48 * v76 + 24);
    *&v20[(v76 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v76;
    v81 = (v67[6] + 16 * v76);
    *v81 = v79;
    v81[1] = v78;
    *(v67[7] + 8 * v76) = v80;
    v82 = v67[2];
    v33 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v33)
    {
      break;
    }

    v67[2] = v83;

    if (!v13)
    {
      goto LABEL_42;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:

  sub_1D5BCA74C(v20, type metadata accessor for FormatContentSlotItemObject.Resolved);

  __break(1u);
  return result;
}

void sub_1D5D56DE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5D56E30(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D56DE0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5D56E88(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D60AB4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5D56EE0()
{
  result = qword_1EDF32BE0[0];
  if (!qword_1EDF32BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF32BE0);
  }

  return result;
}

void sub_1D5D56F34(uint64_t a1)
{
  if (!qword_1EDF1A3A0)
  {
    sub_1D5B81B04();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A3A0);
    }
  }
}

void sub_1D5D56F9C(uint64_t a1)
{
  if (!qword_1EDF1A3B0)
  {
    sub_1D5B49898(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A3B0);
    }
  }
}

uint64_t sub_1D5D57034(uint64_t a1)
{
  v32 = MEMORY[0x1E69E7CC8];
  v36 = MEMORY[0x1E69E7CC8];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = v9 | (v8 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v12 = v11[1];
      v13 = *(*(a1 + 56) + 48 * v10 + 32);
      v35 = v13;
      if (v13)
      {
        v30 = *v11;
        v16 = *(&v13 + 1);
        v31 = *(&v13 + 1);
        if (*(v32 + 24) <= *(v32 + 16))
        {
          v33 = *(v32 + 16);

          sub_1D5D615EC(v35, v16);
          sub_1D5D615EC(v35, v31);
          sub_1D6D69238(v33 + 1, 1);
          v17 = v36;
        }

        else
        {

          sub_1D5D615EC(v35, v16);
          sub_1D5D615EC(v35, v31);
          v17 = v32;
        }

        v32 = v17;
        sub_1D7264A0C();
        sub_1D72621EC();
        result = sub_1D7264A5C();
        v18 = v32 + 64;
        v19 = -1 << *(v32 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v32 + 64 + 8 * (v20 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v19) >> 6;
          v23 = v35;
          v14 = v31;
          while (++v21 != v25 || (v24 & 1) == 0)
          {
            v26 = v21 == v25;
            if (v21 == v25)
            {
              v21 = 0;
            }

            v24 |= v26;
            v27 = *(v18 + 8 * v21);
            if (v27 != -1)
            {
              v22 = __clz(__rbit64(~v27)) + (v21 << 6);
              goto LABEL_26;
            }
          }

LABEL_29:
          __break(1u);
          return result;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v32 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
        v23 = v35;
        v14 = v31;
LABEL_26:
        *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v28 = 16 * v22;
        v29 = (*(v32 + 48) + v28);
        *v29 = v30;
        v29[1] = v12;
        *(*(v32 + 56) + v28) = v23;
        ++*(v32 + 16);

        v15 = v35;
      }

      else
      {

        v14 = *(&v35 + 1);
        sub_1D5D615EC(0, *(&v35 + 1));

        v15 = 0;
      }

      result = sub_1D5CDE22C(v15, v14);
      v7 = v8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  return v32;
}

uint64_t FormatGroupLayoutFactoryModel.init(content:subgroup:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v37 = *a2;
  v40 = a2[1];
  v5 = a2[4];
  if (qword_1EDF22230 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v39 = type metadata accessor for FormatContent.Resolved(0);
    v41 = a1;
    v6 = *(a1 + *(v39 + 32));
    a1 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
    swift_beginAccess();
    v7 = *(v5 + a1);
    if (v6 >> 62)
    {
      a1 = *(v5 + a1);
      v5 = sub_1D7263BFC();
      v7 = a1;
    }

    else
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = a3;
    v38 = v7;

    if (!v5)
    {
      break;
    }

    v8 = 0;
    v43 = v6 & 0xC000000000000001;
    a3 = v6 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x1E69E7CC0];
    while (v43)
    {
      v10 = v6;
      v11 = MEMORY[0x1DA6FB460](v8, v6);
      a1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_11:
      v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
      swift_beginAccess();
      v13 = *(v11 + v12);

      v14 = *(v13 + 16);
      v15 = v9[2];
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= v9[3] >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v9 = sub_1D5D57998(isUniquelyReferenced_nonNull_native, v18, 1, v9);
        if (!*(v13 + 16))
        {
LABEL_6:

          if (v14)
          {
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }

      v19 = (v9[3] >> 1) - v9[2];
      sub_1D5C2AB28(0);
      if (v19 < v14)
      {
        goto LABEL_42;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v20 = v9[2];
        v21 = __OFADD__(v20, v14);
        v22 = v20 + v14;
        if (v21)
        {
          goto LABEL_43;
        }

        v9[2] = v22;
      }

LABEL_7:
      ++v8;
      v6 = v10;
      if (a1 == v5)
      {
        goto LABEL_28;
      }
    }

    if (v8 < *(a3 + 16))
    {
      v10 = v6;
      v11 = *(v6 + 8 * v8 + 32);

      a1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_27:
  v9 = MEMORY[0x1E69E7CC0];
LABEL_28:
  sub_1D5D579CC(v9);
  sub_1D5D57A14(v38);
  if (v23)
  {

    sub_1D725B86C();

    v24 = v38;
    v26 = v41;
    v25 = v42;
    if (v38)
    {
    }

    else
    {
      v24 = FormatPackageInventory.merging(with:)(v6);

      sub_1D725B87C();
    }
  }

  else
  {
    v24 = FormatPackageInventory.merging(with:)(v6);
    v26 = v41;
    v25 = v42;
  }

  v28 = *v26;
  v27 = v26[1];
  *v25 = v24;
  v25[1] = v28;
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = v27;
  v29 = *(v26 + *(v39 + 40));
  v30 = *(v29 + 16);

  if (v30)
  {
    v31 = sub_1D5B69D90(v37, v40);
    if (v32)
    {
      v33 = (*(v29 + 56) + 16 * v31);
      v34 = *v33;
      v35 = v33[1];
    }

    else
    {
      v34 = MEMORY[0x1E69E7CD0];
      v35 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v34 = MEMORY[0x1E69E7CD0];
    v35 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5D600E0(v26);

  v25[5] = v34;
  v25[6] = v35;
  return result;
}