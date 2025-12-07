uint64_t sub_1D64F743C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669A2B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64F7474(uint64_t a1)
{
  v2 = sub_1D5CBC5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F74B0(uint64_t a1)
{
  v2 = sub_1D5CBC5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemBindingsNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v160 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v164 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v166 = &v160 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v165 = &v160 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v167 = &v160 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v177 = &v160 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v160 - v26;
  sub_1D669B13C(0);
  *&v176 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D5E1B4C8(0);
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF0C4E0, sub_1D5E1B4C8, &unk_1D7321584);
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.Sydro, v33, v31, v36, &off_1F51F6C38);
  swift_beginAccess();
  v38 = v2[2];
  v39 = v2[3];
  v174 = v2;
  v40 = qword_1EDF31F08;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCDE0);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v173 = v41;
  v172 = v43 + 16;
  v44(v27, v42, v41);
  v171 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v45 = sub_1D725895C();
  v46 = (*(*(v45 - 8) + 48))(v8, 1, v45);
  v169 = v42;
  v170 = v44;
  if (v46 == 1)
  {
    v163 = v38;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v47 = v176;
    v48 = &v31[*(v176 + 44)];
    v50 = *v48;
    v49 = *(v48 + 1);
    LOBYTE(v186) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = v186;
    *(v51 + 40) = v50;
    *(v51 + 48) = v49;
    sub_1D5E1B48C(0);
    v53 = v52;
    sub_1D5B58B84(&qword_1EDF03228, sub_1D5E1B48C, MEMORY[0x1E69E6F60]);

    v162 = v53;
    v54 = sub_1D72647CC();
    LOBYTE(v186) = 0;
    v55 = v31;
    v56 = swift_allocObject();
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 16) = v54;
    *(v56 + 40) = v186;
    v57 = &v55[*(v47 + 36)];
    v58 = *(v57 + 3);
    v59 = *(v57 + 4);
    v60 = __swift_project_boxed_opaque_existential_1(v57, v58);
    v168 = &v160;
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    *(&v160 - 4) = sub_1D5B4AA6C;
    *(&v160 - 3) = 0;
    v158 = sub_1D669B1D0;
    v159 = v51;
    v64 = v175;
    v66 = sub_1D5D2F7A4(v27, sub_1D615B49C, v65, sub_1D615B4A4, (&v160 - 6), v58, v59);
    if (v64)
    {
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v67 = v55;
      return sub_1D5D2CFE8(v67, sub_1D669B13C);
    }

    v94 = v66;

    if (v94)
    {
      v186 = 0uLL;
      v187 = 0;
      v184 = v163;
      v185 = v39;
      v31 = v55;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v42 = v169;
      v44 = v170;
      v68 = v177;
      v175 = 0;
    }

    else
    {
      v175 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v31 = v55;
      v42 = v169;
      v44 = v170;
      v68 = v177;
    }
  }

  else
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v68 = v177;
    v47 = v176;
  }

  v69 = v174[4];
  v70 = v174[5];
  v44(v68, v42, v173);
  swift_storeEnumTagMultiPayload();
  v184 = v69;
  v185 = v70;
  v176 = xmmword_1D728CF30;
  v186 = xmmword_1D728CF30;
  v187 = 0;
  v71 = &v31[*(v47 + 44)];
  v72 = v47;
  v73 = *v71;
  v74 = *(v71 + 1);
  LOBYTE(v182) = 0;
  v75 = swift_allocObject();
  v168 = &v160;
  *(v75 + 16) = v176;
  *(v75 + 32) = v182;
  *(v75 + 40) = v73;
  *(v75 + 48) = v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v160 - 4) = sub_1D5B4AA6C;
  *(&v160 - 3) = 0;
  v158 = sub_1D6708AA0;
  v159 = v77;
  LOBYTE(v182) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = v176;
  *(v78 + 32) = v182;
  v161 = v73;
  *(v78 + 40) = v73;
  *(v78 + 48) = v74;
  sub_1D5E1B48C(0);
  v80 = v79;
  v81 = sub_1D5B58B84(&qword_1EDF03228, sub_1D5E1B48C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v163 = v80;
  v162 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v182) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v82;
  *(v83 + 24) = v176;
  *(v83 + 40) = v182;
  v84 = &v31[*(v72 + 36)];
  v85 = *(v84 + 3);
  v86 = *(v84 + 4);
  v87 = __swift_project_boxed_opaque_existential_1(v84, v85);
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v160 - 4) = sub_1D615B4A4;
  *(&v160 - 3) = (&v160 - 6);
  v158 = sub_1D6708AA0;
  v159 = v78;
  v91 = v177;
  v92 = v175;
  sub_1D5D2BC70(v177, sub_1D615B49C, v93, sub_1D615B4A4, (&v160 - 6), v85, v86);
  if (v92)
  {
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v160 = v84;
    *&v176 = v74;

    sub_1D72647EC();
    sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);

    v95 = v174;
    swift_beginAccess();
    v96 = v95[6];
    v97 = v167;
    v98 = v169;
    v170(v167, v169, v173);
    swift_storeEnumTagMultiPayload();
    if (*(v96 + 16))
    {
      LOBYTE(v184) = 0;
      v99 = swift_allocObject();
      v177 = xmmword_1D7297410;
      *(v99 + 16) = xmmword_1D7297410;
      *(v99 + 32) = v184;
      *(v99 + 40) = v161;
      *(v99 + 48) = v176;

      v100 = sub_1D72647CC();
      LOBYTE(v184) = 0;
      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      *(v101 + 24) = v177;
      *(v101 + 40) = v184;
      v102 = *(v160 + 3);
      v103 = *(v160 + 4);
      v104 = __swift_project_boxed_opaque_existential_1(v160, v102);
      MEMORY[0x1EEE9AC00](v104, v105);
      MEMORY[0x1EEE9AC00](v106, v107);
      *(&v160 - 4) = sub_1D5B4AA6C;
      *(&v160 - 3) = 0;
      v158 = sub_1D6708AA0;
      v159 = v99;
      v109 = sub_1D5D2F7A4(v97, sub_1D615B49C, v108, sub_1D615B4A4, (&v160 - 6), v102, v103);
      v112 = v109;

      if (v112)
      {
        sub_1D5E07794(v96, v31, 2, 0, 0);
      }

      v111 = v166;
      v98 = v169;
    }

    else
    {
      v111 = v166;
    }

    v113 = v165;
    sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
    v114 = v174;
    swift_beginAccess();
    v115 = v114[7];
    v170(v113, v98, v173);
    swift_storeEnumTagMultiPayload();
    if (*(v115 + 16))
    {
      LOBYTE(v182) = 0;
      v116 = swift_allocObject();
      v177 = xmmword_1D72BAA60;
      *(v116 + 16) = xmmword_1D72BAA60;
      *(v116 + 32) = v182;
      *(v116 + 40) = v161;
      *(v116 + 48) = v176;

      v117 = sub_1D72647CC();
      LOBYTE(v182) = 0;
      v118 = swift_allocObject();
      *(v118 + 16) = v117;
      *(v118 + 24) = v177;
      *(v118 + 40) = v182;
      v119 = *(v160 + 3);
      v120 = *(v160 + 4);
      v121 = __swift_project_boxed_opaque_existential_1(v160, v119);
      MEMORY[0x1EEE9AC00](v121, v122);
      MEMORY[0x1EEE9AC00](v123, v124);
      *(&v160 - 4) = sub_1D5B4AA6C;
      *(&v160 - 3) = 0;
      v158 = sub_1D6708AA0;
      v159 = v116;
      v126 = sub_1D5D2F7A4(v113, sub_1D615B49C, v125, sub_1D615B4A4, (&v160 - 6), v119, v120);
      v127 = v126;

      if (v127)
      {
        v182 = v177;
        v183 = 0;
        *&v180 = v115;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        sub_1D72647EC();

        sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
      }

      v111 = v166;
      v98 = v169;
    }

    else
    {
      sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
    }

    v128 = v174;
    swift_beginAccess();
    v129 = v128[8];
    v170(v111, v98, v173);
    swift_storeEnumTagMultiPayload();
    v130 = v176;
    v131 = v161;
    if (*(v129 + 16))
    {
      LOBYTE(v180) = 0;
      v132 = swift_allocObject();
      v177 = xmmword_1D72BAA70;
      *(v132 + 16) = xmmword_1D72BAA70;
      *(v132 + 32) = v180;
      *(v132 + 40) = v131;
      *(v132 + 48) = v130;

      v133 = v111;
      v134 = sub_1D72647CC();
      LOBYTE(v180) = 0;
      v135 = swift_allocObject();
      *(v135 + 16) = v134;
      *(v135 + 24) = v177;
      *(v135 + 40) = v180;
      v136 = *(v160 + 3);
      v137 = *(v160 + 4);
      v138 = __swift_project_boxed_opaque_existential_1(v160, v136);
      MEMORY[0x1EEE9AC00](v138, v139);
      MEMORY[0x1EEE9AC00](v140, v141);
      *(&v160 - 4) = sub_1D5B4AA6C;
      *(&v160 - 3) = 0;
      v158 = sub_1D6708AA0;
      v159 = v132;
      v143 = sub_1D5D2F7A4(v133, sub_1D615B49C, v142, sub_1D615B4A4, (&v160 - 6), v136, v137);
      v144 = v143;

      if (v144)
      {
        v180 = v177;
        v181 = 0;
        *&v178 = v129;
        sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
        sub_1D5D2FA60();
        sub_1D72647EC();
        v130 = v176;

        sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
        v98 = v169;
      }

      else
      {
        sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);

        v98 = v169;
        v130 = v176;
      }
    }

    else
    {
      sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
    }

    v145 = v174;
    swift_beginAccess();
    v146 = v145[9];
    v147 = v164;
    v170(v164, v98, v173);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v178) = 0;
    v148 = swift_allocObject();
    v177 = xmmword_1D72BAA80;
    *(v148 + 16) = xmmword_1D72BAA80;
    *(v148 + 32) = v178;
    *(v148 + 40) = v161;
    *(v148 + 48) = v130;

    v149 = sub_1D72647CC();
    LOBYTE(v178) = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = v149;
    *(v150 + 24) = v177;
    *(v150 + 40) = v178;
    v151 = *(v160 + 3);
    v152 = *(v160 + 4);
    v153 = __swift_project_boxed_opaque_existential_1(v160, v151);
    MEMORY[0x1EEE9AC00](v153, v154);
    MEMORY[0x1EEE9AC00](v155, v156);
    *(&v160 - 4) = sub_1D5B4AA6C;
    *(&v160 - 3) = 0;
    v158 = sub_1D6708AA0;
    v159 = v148;
    LOBYTE(v151) = sub_1D5D2F7A4(v147, sub_1D615B49C, v157, sub_1D615B4A4, (&v160 - 6), v151, v152);

    if (v151)
    {
      v178 = v177;
      v179 = 0;
      v188 = v146;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
    }
  }

  v67 = v31;
  return sub_1D5D2CFE8(v67, sub_1D669B13C);
}

uint64_t sub_1D64F8E6C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6572646C696863;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 0x73656C797473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6564496D657469;
  if (v1 != 1)
  {
    v5 = 0x726F7463656C6573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D64F8F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669B24C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64F8F88(uint64_t a1)
{
  v2 = sub_1D5E1B5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F8FC4(uint64_t a1)
{
  v2 = sub_1D5E1B5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNode.encode(to:)(void *a1)
{
  v4 = *v1;
  v370 = v2;
  *&v371 = v4;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v345 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v350 = &v345 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v351 = &v345 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v352 = &v345 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v353 = &v345 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v354 = &v345 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v355 = &v345 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v356 = &v345 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v357 = &v345 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v358 = &v345 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v359 = &v345 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v360 = &v345 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  *&v372 = &v345 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v345 - v47;
  sub_1D669B4A8(0);
  v368 = v49;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v345 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_1D5CD251C(0);
  v56 = v55;
  v57 = sub_1D5B58B84(&qword_1EDF24C38, sub_1D5CD251C, &unk_1D7321584);
  v369 = v52;
  v58 = v53;
  v59 = v1;
  sub_1D5D2EE70(v371, v56, v60, v58, v371, v56, &type metadata for FormatVersions.JazzkonC, v54, v52, v57, &off_1F51F6C78);
  swift_beginAccess();
  v61 = v1[2];
  v62 = v59[3];
  v63 = qword_1EDF31EB0;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
  v66 = *(v64 - 8);
  v67 = *(v66 + 16);
  v68 = v66 + 16;
  v366 = v65;
  v67(v48);
  v367 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v69 = sub_1D725895C();
  v70 = (*(*(v69 - 8) + 48))(v8, 1, v69);
  v361 = v59;
  v362 = v67;
  v363 = v64;
  v365 = v68;
  if (v70 != 1)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_7;
  }

  v364 = v61;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v71 = v368;
  v72 = v369;
  v73 = &v369[*(v368 + 11)];
  v75 = *v73;
  v74 = *(v73 + 1);
  LOBYTE(v373) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  *(v76 + 32) = v373;
  *(v76 + 40) = v75;
  *(v76 + 48) = v74;
  sub_1D5E1B41C(0);
  v78 = v77;
  v79 = sub_1D5B58B84(&qword_1EDF02AF8, sub_1D5E1B41C, MEMORY[0x1E69E6F60]);

  *&v371 = v78;
  v349 = v79;
  v80 = sub_1D72647CC();
  LOBYTE(v373) = 0;
  v81 = swift_allocObject();
  *(v81 + 24) = 0;
  *(v81 + 32) = 0;
  *(v81 + 16) = v80;
  *(v81 + 40) = v373;
  v82 = (v72 + *(v71 + 9));
  v83 = v82[3];
  v84 = v82[4];
  v85 = __swift_project_boxed_opaque_existential_1(v82, v83);
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v345 - 4) = sub_1D5B4AA6C;
  *(&v345 - 3) = 0;
  v343 = sub_1D669B53C;
  v344 = v76;
  v89 = v370;
  v91 = sub_1D5D2F7A4(v48, sub_1D615B49C, v90, sub_1D615B4A4, (&v345 - 6), v83, v84);
  if (!v89)
  {
    v123 = v91;

    if (v123)
    {
      v373 = 0uLL;
      LOBYTE(v374) = 0;
      v386 = v364;
      v387 = v62;
      sub_1D72647EC();

      sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
      v93 = v372;
      v370 = 0;
      v59 = v361;
      v67 = v362;
      v64 = v363;
LABEL_8:
      v94 = v59[4];
      v95 = v59[5];
      (v67)(v93, v366, v64);
      swift_storeEnumTagMultiPayload();
      v386 = v94;
      v387 = v95;
      v371 = xmmword_1D728CF30;
      v373 = xmmword_1D728CF30;
      LOBYTE(v374) = 0;
      v96 = v368;
      v97 = v369;
      v98 = &v369[*(v368 + 11)];
      v99 = *v98;
      v100 = *(v98 + 1);
      LOBYTE(v385) = 0;
      v101 = swift_allocObject();
      v364 = &v345;
      *(v101 + 16) = v371;
      *(v101 + 32) = v385;
      *(v101 + 40) = v99;
      *(v101 + 48) = v100;
      MEMORY[0x1EEE9AC00](v101, v102);
      *(&v345 - 4) = sub_1D5B4AA6C;
      *(&v345 - 3) = 0;
      v343 = sub_1D6708AA4;
      v344 = v103;
      LOBYTE(v385) = 0;
      v104 = swift_allocObject();
      *(v104 + 16) = v371;
      *(v104 + 32) = v385;
      v347 = v99;
      *(v104 + 40) = v99;
      *(v104 + 48) = v100;
      sub_1D5E1B41C(0);
      v106 = v105;
      v107 = sub_1D5B58B84(&qword_1EDF02AF8, sub_1D5E1B41C, MEMORY[0x1E69E6F60]);
      v346 = v100;
      swift_retain_n();
      v348 = v107;
      v349 = v106;
      v108 = sub_1D72647CC();
      LOBYTE(v385) = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = v108;
      *(v109 + 24) = v371;
      *(v109 + 40) = v385;
      v110 = *(v96 + 9);
      v111 = v97;
      v112 = &v97[v110];
      v113 = *(v112 + 3);
      v114 = *(v112 + 4);
      v115 = __swift_project_boxed_opaque_existential_1(v112, v113);
      MEMORY[0x1EEE9AC00](v115, v116);
      MEMORY[0x1EEE9AC00](v117, v118);
      *(&v345 - 4) = sub_1D615B4A4;
      *(&v345 - 3) = (&v345 - 6);
      v343 = sub_1D6708AA4;
      v344 = v104;
      v119 = v372;
      v120 = v370;
      sub_1D5D2BC70(v372, sub_1D615B49C, v121, sub_1D615B4A4, (&v345 - 6), v113, v114);
      if (v120)
      {
        sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

LABEL_11:
        v92 = v111;
        return sub_1D5D2CFE8(v92, sub_1D669B4A8);
      }

      *&v371 = v112;

      sub_1D72647EC();
      sub_1D5D2CFE8(v372, type metadata accessor for FormatVersionRequirement);

      v124 = v360;
      v125 = v361[6];
      (v362)(v360, v366, v363);
      swift_storeEnumTagMultiPayload();
      v386 = v125;
      v372 = xmmword_1D7297410;
      v373 = xmmword_1D7297410;
      LOBYTE(v374) = 0;
      LOBYTE(v385) = 0;
      v126 = swift_allocObject();
      v368 = &v345;
      *(v126 + 16) = v372;
      *(v126 + 32) = v385;
      v127 = v346;
      v128 = v347;
      *(v126 + 40) = v347;
      *(v126 + 48) = v127;
      MEMORY[0x1EEE9AC00](v126, v129);
      v370 = 0;
      v364 = &v345 - 6;
      *(&v345 - 4) = sub_1D5B4AA6C;
      *(&v345 - 3) = 0;
      v343 = sub_1D6708AA4;
      v344 = v130;
      LOBYTE(v385) = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = v372;
      *(v131 + 32) = v385;
      *(v131 + 40) = v128;
      *(v131 + 48) = v127;
      swift_retain_n();
      v132 = sub_1D72647CC();
      LOBYTE(v385) = 0;
      v133 = swift_allocObject();
      *(v133 + 16) = v132;
      *(v133 + 24) = v372;
      *(v133 + 40) = v385;
      v134 = *(v371 + 24);
      v135 = *(v371 + 32);
      v136 = __swift_project_boxed_opaque_existential_1(v371, v134);
      MEMORY[0x1EEE9AC00](v136, v137);
      MEMORY[0x1EEE9AC00](v138, v139);
      v140 = v364;
      *(&v345 - 4) = sub_1D615B4A4;
      *(&v345 - 3) = v140;
      v343 = sub_1D6708AA4;
      v344 = v131;
      v141 = v370;
      sub_1D5D2BC70(v124, sub_1D615B49C, v142, sub_1D615B4A4, (&v345 - 6), v134, v135);
      if (v141)
      {
        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

        v72 = v369;
LABEL_19:
        v92 = v72;
        return sub_1D5D2CFE8(v92, sub_1D669B4A8);
      }

      sub_1D5CA1E90();
      sub_1D72647EC();
      v370 = 0;
      sub_1D5D2CFE8(v360, type metadata accessor for FormatVersionRequirement);

      v143 = v361;
      v144 = v361[7];
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v145 = v363;
      v146 = __swift_project_value_buffer(v363, qword_1EDFFCD68);
      v147 = v359;
      v364 = v146;
      v148 = v362;
      v362(v359);
      swift_storeEnumTagMultiPayload();
      v372 = xmmword_1D72BAA60;
      v373 = xmmword_1D72BAA60;
      LOBYTE(v374) = 0;
      LOBYTE(v386) = 0;
      v150 = swift_allocObject();
      *(v150 + 16) = v372;
      *(v150 + 32) = v386;
      v151 = v347;
      *(v150 + 40) = v347;
      v152 = v346;
      *(v150 + 48) = v346;
      if (v144)
      {
        v368 = &v345;
        v386 = v144;
        MEMORY[0x1EEE9AC00](v152, v149);
        *(&v345 - 4) = sub_1D5B4AA6C;
        *(&v345 - 3) = 0;
        v343 = sub_1D6708AA4;
        v344 = v150;
        LOBYTE(v385) = 0;
        v154 = v153;
        v155 = swift_allocObject();
        *(v155 + 16) = v372;
        *(v155 + 32) = v385;
        *(v155 + 40) = v151;
        *(v155 + 48) = v154;
        swift_retain_n();

        v156 = sub_1D72647CC();
        LOBYTE(v385) = 0;
        v157 = swift_allocObject();
        *(v157 + 16) = v156;
        *(v157 + 24) = v372;
        *(v157 + 40) = v385;
        v158 = *(v371 + 24);
        v159 = *(v371 + 32);
        v160 = __swift_project_boxed_opaque_existential_1(v371, v158);
        MEMORY[0x1EEE9AC00](v160, v161);
        MEMORY[0x1EEE9AC00](v162, v163);
        *(&v345 - 4) = sub_1D615B4A4;
        *(&v345 - 3) = (&v345 - 6);
        v343 = sub_1D6708AA4;
        v344 = v155;
        v164 = v370;
        v166 = sub_1D5D2F7A4(v147, sub_1D615B49C, v165, sub_1D615B4A4, (&v345 - 6), v158, v159);
        if (v164)
        {

          v167 = v369;
          v168 = v359;

          sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);
          v92 = v167;
          return sub_1D5D2CFE8(v92, sub_1D669B4A8);
        }

        v171 = v166;

        if (v171)
        {
          sub_1D6659D24();
          v172 = v369;
          sub_1D72647EC();
          v169 = v172;
          v370 = 0;
        }

        else
        {
          v370 = 0;

          v169 = v369;
        }

        v143 = v361;
        v148 = v362;
        v145 = v363;
        v170 = v359;
      }

      else
      {

        v169 = v369;
        v170 = v147;
      }

      sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);
      swift_beginAccess();
      v173 = v143[8];
      v48 = v358;
      v174 = v366;
      v148(v358, v366, v145);
      swift_storeEnumTagMultiPayload();
      if (v173[2])
      {
        LOBYTE(v373) = 0;
        v175 = swift_allocObject();
        v372 = xmmword_1D72BAA70;
        *(v175 + 16) = xmmword_1D72BAA70;
        *(v175 + 32) = v373;
        *(v175 + 40) = v347;
        *(v175 + 48) = v346;

        v368 = v173;
        v72 = v169;
        v176 = sub_1D72647CC();
        LOBYTE(v373) = 0;
        v177 = swift_allocObject();
        *(v177 + 16) = v176;
        *(v177 + 24) = v372;
        *(v177 + 40) = v373;
        v178 = v371;
        v179 = *(v371 + 24);
        v180 = *(v371 + 32);
        v181 = __swift_project_boxed_opaque_existential_1(v371, v179);
        MEMORY[0x1EEE9AC00](v181, v182);
        MEMORY[0x1EEE9AC00](v183, v184);
        *(&v345 - 4) = sub_1D5B4AA6C;
        *(&v345 - 3) = 0;
        v343 = sub_1D6708AA4;
        v344 = v175;
        v185 = v370;
        v187 = sub_1D5D2F7A4(v48, sub_1D615B49C, v186, sub_1D615B4A4, (&v345 - 6), v179, v180);
        v370 = v185;
        if (v185)
        {
          goto LABEL_5;
        }

        v188 = v187;
        v189 = v368;

        if (v188)
        {
          v373 = v372;
          LOBYTE(v374) = 0;
          v385 = v189;
          sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
          sub_1D6659C88();
          v190 = v370;
          sub_1D72647EC();
          v191 = v358;
          if (v190)
          {

            sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
            goto LABEL_19;
          }

          v370 = 0;

          sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);
        }

        v143 = v361;
        v148 = v362;
        v145 = v363;
        v174 = v366;
      }

      else
      {
        sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
        v178 = v371;
      }

      swift_beginAccess();
      v192 = v143[9];
      v193 = v357;
      v148(v357, v174, v145);
      swift_storeEnumTagMultiPayload();
      if (*(v192 + 16))
      {
        LOBYTE(v373) = 0;
        v194 = swift_allocObject();
        v372 = xmmword_1D72BAA80;
        *(v194 + 16) = xmmword_1D72BAA80;
        *(v194 + 32) = v373;
        *(v194 + 40) = v347;
        *(v194 + 48) = v346;

        v111 = v369;
        v195 = sub_1D72647CC();
        LOBYTE(v373) = 0;
        v196 = swift_allocObject();
        *(v196 + 16) = v195;
        *(v196 + 24) = v372;
        *(v196 + 40) = v373;
        v197 = v178[3];
        v198 = v178[4];
        v199 = __swift_project_boxed_opaque_existential_1(v178, v197);
        MEMORY[0x1EEE9AC00](v199, v200);
        MEMORY[0x1EEE9AC00](v201, v202);
        *(&v345 - 4) = sub_1D5B4AA6C;
        *(&v345 - 3) = 0;
        v343 = sub_1D6708AA4;
        v344 = v194;
        v203 = v370;
        v205 = sub_1D5D2F7A4(v193, sub_1D615B49C, v204, sub_1D615B4A4, (&v345 - 6), v197, v198);
        if (v203)
        {
          sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);

          goto LABEL_11;
        }

        v207 = v205;

        if (v207)
        {
          v373 = v372;
          LOBYTE(v374) = 0;
          v384 = v192;
          sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
          sub_1D5D2FA60();
          sub_1D72647EC();
          v206 = 0;

          sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);

          v206 = 0;
        }
      }

      else
      {
        sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
        v206 = v370;
      }

      v208 = v361;
      swift_beginAccess();
      v209 = v208[10];
      v210 = v356;
      (v362)(v356, v366, v363);
      swift_storeEnumTagMultiPayload();
      v72 = v369;
      if (*(v209 + 16))
      {
        LOBYTE(v373) = 0;
        v211 = swift_allocObject();
        v372 = xmmword_1D72BAA90;
        *(v211 + 16) = xmmword_1D72BAA90;
        *(v211 + 32) = v373;
        *(v211 + 40) = v347;
        *(v211 + 48) = v346;

        v212 = sub_1D72647CC();
        LOBYTE(v373) = 0;
        v213 = swift_allocObject();
        *(v213 + 16) = v212;
        *(v213 + 24) = v372;
        *(v213 + 40) = v373;
        v214 = *(v371 + 24);
        v215 = *(v371 + 32);
        v216 = __swift_project_boxed_opaque_existential_1(v371, v214);
        MEMORY[0x1EEE9AC00](v216, v217);
        MEMORY[0x1EEE9AC00](v218, v219);
        *(&v345 - 4) = sub_1D5B4AA6C;
        *(&v345 - 3) = 0;
        v343 = sub_1D6708AA4;
        v344 = v211;
        v221 = sub_1D5D2F7A4(v210, sub_1D615B49C, v220, sub_1D615B4A4, (&v345 - 6), v214, v215);
        if (v206)
        {

          sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);
          goto LABEL_19;
        }

        v222 = v221;

        if (v222)
        {
          sub_1D5E08E2C(v209, v72, 6, 0, 0);
        }

        v206 = 0;

        v210 = v356;
      }

      sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);
      v223 = v361;
      swift_beginAccess();
      v224 = v223[11];
      v225 = v355;
      (v362)(v355, v366, v363);
      swift_storeEnumTagMultiPayload();
      if (*(v224 + 16))
      {
        LOBYTE(v373) = 0;
        v226 = swift_allocObject();
        v372 = xmmword_1D72BAAA0;
        *(v226 + 16) = xmmword_1D72BAAA0;
        *(v226 + 32) = v373;
        *(v226 + 40) = v347;
        *(v226 + 48) = v346;

        v227 = sub_1D72647CC();
        LOBYTE(v373) = 0;
        v228 = swift_allocObject();
        *(v228 + 16) = v227;
        *(v228 + 24) = v372;
        *(v228 + 40) = v373;
        v229 = *(v371 + 24);
        v230 = *(v371 + 32);
        v231 = __swift_project_boxed_opaque_existential_1(v371, v229);
        MEMORY[0x1EEE9AC00](v231, v232);
        MEMORY[0x1EEE9AC00](v233, v234);
        *(&v345 - 4) = sub_1D5B4AA6C;
        *(&v345 - 3) = 0;
        v343 = sub_1D6708AA4;
        v344 = v226;
        v236 = sub_1D5D2F7A4(v225, sub_1D615B49C, v235, sub_1D615B4A4, (&v345 - 6), v229, v230);
        if (v206)
        {
LABEL_64:
          sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);

          goto LABEL_19;
        }

        v237 = v236;

        if ((v237 & 1) == 0)
        {
          sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);

          v206 = 0;
          goto LABEL_59;
        }

        v373 = v372;
        LOBYTE(v374) = 0;
        v383 = v224;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        sub_1D72647EC();
        v206 = 0;
      }

      sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);
LABEL_59:
      v238 = v361;
      swift_beginAccess();
      v239 = v238[12];
      v240 = qword_1EDF31ED0;

      if (v240 != -1)
      {
        swift_once();
      }

      v241 = v363;
      v242 = __swift_project_value_buffer(v363, qword_1EDFFCD50);
      v225 = v354;
      (v362)(v354, v242, v241);
      swift_storeEnumTagMultiPayload();
      if (v239 >> 62)
      {
        if (sub_1D7263BFC())
        {
          goto LABEL_63;
        }
      }

      else if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_63:
        LOBYTE(v373) = 0;
        v243 = swift_allocObject();
        v372 = xmmword_1D72BAAB0;
        *(v243 + 16) = xmmword_1D72BAAB0;
        *(v243 + 32) = v373;
        *(v243 + 40) = v347;
        *(v243 + 48) = v346;

        v244 = sub_1D72647CC();
        LOBYTE(v373) = 0;
        v245 = swift_allocObject();
        *(v245 + 16) = v244;
        *(v245 + 24) = v372;
        *(v245 + 40) = v373;
        v246 = *(v371 + 24);
        v247 = *(v371 + 32);
        v248 = __swift_project_boxed_opaque_existential_1(v371, v246);
        MEMORY[0x1EEE9AC00](v248, v249);
        MEMORY[0x1EEE9AC00](v250, v251);
        *(&v345 - 4) = sub_1D5B4AA6C;
        *(&v345 - 3) = 0;
        v343 = sub_1D6708AA4;
        v344 = v243;
        v253 = sub_1D5D2F7A4(v225, sub_1D615B49C, v252, sub_1D615B4A4, (&v345 - 6), v246, v247);
        v254 = v206;
        if (v206)
        {
          goto LABEL_64;
        }

        v255 = v253;

        if (v255)
        {
          v373 = v372;
          LOBYTE(v374) = 0;
          v382 = v239;
          sub_1D5B5BF78(0, &qword_1EDF1B428, type metadata accessor for FormatBlock, MEMORY[0x1E69E62F8]);
          sub_1D666E5D0();
          sub_1D72647EC();

          sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
        }

LABEL_70:
        v370 = v254;
        v256 = v361;
        swift_beginAccess();
        v257 = v256[13];
        v258 = v353;
        v259 = v363;
        v260 = v362;
        (v362)(v353, v364, v363);
        swift_storeEnumTagMultiPayload();
        v261 = v347;
        if (v257)
        {
          LOBYTE(v373) = 0;
          v262 = swift_allocObject();
          v372 = xmmword_1D72BAAC0;
          *(v262 + 16) = xmmword_1D72BAAC0;
          *(v262 + 32) = v373;
          *(v262 + 40) = v261;
          *(v262 + 48) = v346;

          v263 = v369;
          v264 = sub_1D72647CC();
          LOBYTE(v373) = 0;
          v265 = swift_allocObject();
          *(v265 + 16) = v264;
          *(v265 + 24) = v372;
          *(v265 + 40) = v373;
          v266 = *(v371 + 24);
          v267 = *(v371 + 32);
          v268 = __swift_project_boxed_opaque_existential_1(v371, v266);
          MEMORY[0x1EEE9AC00](v268, v269);
          MEMORY[0x1EEE9AC00](v270, v271);
          *(&v345 - 4) = sub_1D5B4AA6C;
          *(&v345 - 3) = 0;
          v343 = sub_1D6708AA4;
          v344 = v262;
          v272 = v370;
          v274 = sub_1D5D2F7A4(v258, sub_1D615B49C, v273, sub_1D615B4A4, (&v345 - 6), v266, v267);
          v370 = v272;
          if (v272)
          {
            sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);

            v92 = v263;
            return sub_1D5D2CFE8(v92, sub_1D669B4A8);
          }

          v275 = v274;

          if (v275)
          {
            v373 = v372;
            LOBYTE(v374) = 0;
            v381 = v257;
            v276 = v370;
            sub_1D72647EC();
            v370 = v276;
            if (v276)
            {
              v277 = v353;
LABEL_109:
              sub_1D5D2CFE8(v277, type metadata accessor for FormatVersionRequirement);
              goto LABEL_110;
            }
          }

          sub_1D5D2CFE8(v353, type metadata accessor for FormatVersionRequirement);
          v256 = v361;
          v260 = v362;
          v259 = v363;
        }

        else
        {
          sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
        }

        v278 = v352;
        swift_beginAccess();
        v279 = v256[14];
        v260(v278, v364, v259);
        swift_storeEnumTagMultiPayload();
        if (v279 == 0x8000000000000000)
        {
          sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          LOBYTE(v373) = 0;
          v280 = swift_allocObject();
          v372 = xmmword_1D72BAAD0;
          *(v280 + 16) = xmmword_1D72BAAD0;
          *(v280 + 32) = v373;
          *(v280 + 40) = v347;
          *(v280 + 48) = v346;

          sub_1D5EB1500(v279);
          v281 = sub_1D72647CC();
          LOBYTE(v373) = 0;
          v282 = swift_allocObject();
          *(v282 + 16) = v281;
          *(v282 + 24) = v372;
          *(v282 + 40) = v373;
          v283 = *(v371 + 24);
          v284 = *(v371 + 32);
          v285 = __swift_project_boxed_opaque_existential_1(v371, v283);
          MEMORY[0x1EEE9AC00](v285, v286);
          MEMORY[0x1EEE9AC00](v287, v288);
          *(&v345 - 4) = sub_1D5B4AA6C;
          *(&v345 - 3) = 0;
          v343 = sub_1D6708AA4;
          v344 = v280;
          v289 = v370;
          v291 = sub_1D5D2F7A4(v278, sub_1D615B49C, v290, sub_1D615B4A4, (&v345 - 6), v283, v284);
          v370 = v289;
          if (v289)
          {

            sub_1D5EB15C4(v279);
            v277 = v278;
            goto LABEL_109;
          }

          v292 = v291;

          if (v292)
          {
            v373 = v372;
            LOBYTE(v374) = 0;
            v380 = v279;
            sub_1D5DF6A60();
            v293 = v370;
            sub_1D72647EC();
            v370 = v293;
            if (v293)
            {
              sub_1D5EB15C4(v380);
              v277 = v352;
              goto LABEL_109;
            }

            v294 = v380;
          }

          else
          {
            v294 = v279;
          }

          sub_1D5EB15C4(v294);
          sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);
          v256 = v361;
        }

        swift_beginAccess();
        v295 = v256[15];
        v296 = qword_1EDF31F48;

        if (v296 != -1)
        {
          swift_once();
        }

        v297 = v363;
        v298 = __swift_project_value_buffer(v363, qword_1EDFFCE68);
        v299 = v351;
        (v362)(v351, v298, v297);
        swift_storeEnumTagMultiPayload();
        if (*(v295 + 16))
        {
          LOBYTE(v373) = 0;
          v300 = swift_allocObject();
          v372 = xmmword_1D72BAAE0;
          *(v300 + 16) = xmmword_1D72BAAE0;
          *(v300 + 32) = v373;
          *(v300 + 40) = v347;
          *(v300 + 48) = v346;

          v301 = sub_1D72647CC();
          LOBYTE(v373) = 0;
          v302 = swift_allocObject();
          *(v302 + 16) = v301;
          *(v302 + 24) = v372;
          *(v302 + 40) = v373;
          v303 = *(v371 + 24);
          v304 = *(v371 + 32);
          v305 = __swift_project_boxed_opaque_existential_1(v371, v303);
          MEMORY[0x1EEE9AC00](v305, v306);
          MEMORY[0x1EEE9AC00](v307, v308);
          *(&v345 - 4) = sub_1D5B4AA6C;
          *(&v345 - 3) = 0;
          v343 = sub_1D6708AA4;
          v344 = v300;
          v309 = v370;
          v311 = sub_1D5D2F7A4(v299, sub_1D615B49C, v310, sub_1D615B4A4, (&v345 - 6), v303, v304);
          v370 = v309;
          if (v309)
          {
            sub_1D5D2CFE8(v351, type metadata accessor for FormatVersionRequirement);

            goto LABEL_110;
          }

          v313 = v311;

          if (v313)
          {
            v373 = v372;
            LOBYTE(v374) = 0;
            *&v378 = v295;
            sub_1D5C34D84(0, &qword_1EDF04FC8, &type metadata for FormatSourceItem, MEMORY[0x1E69E62F8]);
            sub_1D6659A78();
            v314 = v370;
            sub_1D72647EC();
            v370 = v314;
            if (v314)
            {

              v277 = v351;
              goto LABEL_109;
            }

            sub_1D5D2CFE8(v351, type metadata accessor for FormatVersionRequirement);
            goto LABEL_99;
          }

          v312 = v351;
        }

        else
        {
          v312 = v299;
        }

        sub_1D5D2CFE8(v312, type metadata accessor for FormatVersionRequirement);

LABEL_99:
        v315 = v361[16];
        v316 = v361[17];
        v317 = v361[18];
        v318 = v361[19];
        v320 = v361[20];
        v319 = v361[21];
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v321 = v363;
        v322 = __swift_project_value_buffer(v363, qword_1EDFFCE38);
        (v362)(v350, v322, v321);
        swift_storeEnumTagMultiPayload();
        v372 = xmmword_1D72BAAF0;
        v378 = xmmword_1D72BAAF0;
        v379 = 0;
        LOBYTE(v373) = 0;
        v323 = swift_allocObject();
        v325 = v323;
        *(v323 + 16) = v372;
        *(v323 + 32) = v373;
        v326 = v346;
        *(v323 + 40) = v347;
        *(v323 + 48) = v326;
        if (v315)
        {
          v368 = &v345;
          *&v373 = v315;
          *(&v373 + 1) = v316;
          v374 = v317;
          v375 = v318;
          v376 = v320;
          v377 = v319;
          MEMORY[0x1EEE9AC00](v323, v324);
          v367 = &v345 - 6;
          *(&v345 - 4) = sub_1D5B4AA6C;
          *(&v345 - 3) = 0;
          v343 = sub_1D6708AA4;
          v344 = v325;
          v388 = 0;
          v327 = swift_allocObject();
          *(v327 + 16) = v372;
          *(v327 + 32) = v388;
          *(v327 + 40) = v347;
          *(v327 + 48) = v346;
          swift_retain_n();
          sub_1D5EB1D80(v315, v316, v317, v318, v320, v319);
          v328 = sub_1D72647CC();
          v388 = 0;
          v329 = swift_allocObject();
          *(v329 + 16) = v328;
          *(v329 + 24) = v372;
          *(v329 + 40) = v388;
          v330 = *(v371 + 24);
          v331 = *(v371 + 32);
          v332 = __swift_project_boxed_opaque_existential_1(v371, v330);
          MEMORY[0x1EEE9AC00](v332, v333);
          MEMORY[0x1EEE9AC00](v334, v335);
          v336 = v367;
          *(&v345 - 4) = sub_1D615B4A4;
          *(&v345 - 3) = v336;
          v343 = sub_1D6708AA4;
          v344 = v327;
          v337 = v370;
          v339 = sub_1D5D2F7A4(v350, sub_1D615B49C, v338, sub_1D615B4A4, (&v345 - 6), v330, v331);
          v370 = v337;
          if (v337)
          {
          }

          else
          {
            v340 = v339;

            if (v340)
            {
              sub_1D6659A24();
              v341 = v370;
              sub_1D72647EC();
              v370 = v341;
            }
          }

          v342 = v376;

          sub_1D5CBF568(v342);

          v277 = v350;
          goto LABEL_109;
        }

        sub_1D5D2CFE8(v350, type metadata accessor for FormatVersionRequirement);

LABEL_110:
        v92 = v369;
        return sub_1D5D2CFE8(v92, sub_1D669B4A8);
      }

      sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);

      v254 = v206;
      goto LABEL_70;
    }

    v370 = 0;
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v59 = v361;
    v67 = v362;
    v64 = v363;
LABEL_7:
    v93 = v372;
    goto LABEL_8;
  }

LABEL_5:
  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  v92 = v72;
  return sub_1D5D2CFE8(v92, sub_1D669B4A8);
}

uint64_t sub_1D64FBF74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669B620(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D64FBFAC(uint64_t a1)
{
  v2 = sub_1D5CD25F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64FBFE8(uint64_t a1)
{
  v2 = sub_1D5CD25F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNodeAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v35, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FormatItemNodeAction(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v14 = v39;
  sub_1D7264B0C();
  v15 = v14;
  if (!v14)
  {
    v31 = v5;
    v39 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_1D7264AFC();
    v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

    v19 = v33;
    v18 = v34;
    v20 = v9;
    if (v17)
    {
      v21 = sub_1D726433C();
      v22 = (v21 + 40);
      v23 = *(v21 + 16) + 1;
      while (--v23)
      {
        v24 = v22 + 2;
        v25 = *v22;
        v22 += 2;
        if (v25 >= 4)
        {
          v26 = *(v24 - 3);

          sub_1D5E2D970();
          v15 = swift_allocError();
          *v27 = v26;
          *(v27 + 8) = v25;
          *(v27 + 16) = &unk_1F5115D28;
          *(v27 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v19 + 8))(v9, v18);
          goto LABEL_9;
        }
      }
    }

    sub_1D669B5CC();
    v38[0] = 0uLL;
    sub_1D726431C();
    if (v36[0] > 3u)
    {
      v29 = v32;
      (*(v19 + 8))(v20, v18);
    }

    else
    {
      if (v36[0] > 1u)
      {
        v38[0] = xmmword_1D7279980;
        if (v36[0] == 2)
        {
          sub_1D5B58B84(&qword_1EDF2B450, type metadata accessor for FormatCommandOpenURL, &protocol conformance descriptor for FormatCommandOpenURL);
          v30 = v31;
          sub_1D726431C();
          (*(v19 + 8))(v9, v18);
          sub_1D5C8F76C(v30, v13, type metadata accessor for FormatCommandOpenURL);
        }

        else
        {
          sub_1D5CD4024();
          sub_1D726431C();
          (*(v19 + 8))(v9, v18);
          *v13 = v36[0];
        }

        goto LABEL_20;
      }

      if (!v36[0])
      {
        (*(v19 + 8))(v9, v18);
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v29 = v32;
LABEL_22:
        sub_1D5C8F76C(v13, v29, type metadata accessor for FormatItemNodeAction);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v37 = xmmword_1D7279980;
      sub_1D6151CD0();
      sub_1D726431C();
      v29 = v32;
      (*(v19 + 8))(v20, v18);
      sub_1D62B5F18(v38, v36);
      sub_1D62B5F18(v36, v13);
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_22;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v15);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatItemNodeAction.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v79 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v77 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v76 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v74 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v75 = &v73 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v73 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v73 - v30;
  v32 = type metadata accessor for FormatItemNodeAction(0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v42 = sub_1D5C30408();
  v82 = v39;
  sub_1D5D2EE70(v32, &type metadata for FormatCodingKeys, v43, v40, v32, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v41, v39, v42, &off_1F51F6CB8);
  sub_1D6706BB4(v80, v35, type metadata accessor for FormatItemNodeAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v59 = sub_1D725BD1C();
        v60 = __swift_project_value_buffer(v59, qword_1EDFFCDE0);
        v17 = v77;
        (*(*(v59 - 8) + 16))(v77, v60, v59);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v51 = 6;
      }

      else
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v70 = sub_1D725BD1C();
        v71 = __swift_project_value_buffer(v70, qword_1EDFFCCA8);
        v17 = v78;
        (*(*(v70 - 8) + 16))(v78, v71, v70);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v51 = 7;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCCE8);
      (*(*(v49 - 8) + 16))(v17, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 4;
    }

    else
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCCE8);
      v17 = v76;
      (*(*(v66 - 8) + 16))(v76, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 5;
    }

    v57 = v82;
    sub_1D6420314(v51, v17);
    v64 = type metadata accessor for FormatVersionRequirement;
    v65 = v17;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCCE8);
      (*(*(v68 - 8) + 16))(v31, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v82;
      sub_1D6420314(0, v31);
      v64 = type metadata accessor for FormatVersionRequirement;
      v65 = v31;
      goto LABEL_34;
    }

    v52 = *v35;
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCCE8);
    v55 = v74;
    (*(*(v53 - 8) + 16))(v74, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v56 = v52;
    v57 = v82;
    sub_1D63A2FF4(3, v56, v55);
    v58 = type metadata accessor for FormatVersionRequirement;
LABEL_23:
    v64 = v58;
    v65 = v55;
LABEL_34:
    sub_1D5D2CFE8(v65, v64);
    v48 = v57;
    return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
  }

  if (EnumCaseMultiPayload)
  {
    v55 = v79;
    sub_1D5C8F76C(v35, v79, type metadata accessor for FormatCommandOpenURL);
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v61 = sub_1D725BD1C();
    v62 = __swift_project_value_buffer(v61, qword_1EDFFCCE8);
    v63 = v75;
    (*(*(v61 - 8) + 16))(v75, v62, v61);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = v82;
    sub_1D63A2E20(2, v55, v63);
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
    v58 = type metadata accessor for FormatCommandOpenURL;
    goto LABEL_23;
  }

  sub_1D62B5F18(v35, v81);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCCE8);
  (*(*(v45 - 8) + 16))(v27, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v82;
  sub_1D63A2C80(1, v81, v27);
  sub_1D62B5F74(v81);
  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v48 = v47;
  return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
}

unint64_t sub_1D64FD00C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6663DE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D64FD03C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65746167656C6564;
  v5 = 0xE800000000000000;
  v6 = 0x64656C6261736964;
  if (v2 != 6)
  {
    v6 = 0x726574756F72;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEF79616C50726579;
  v8 = 0x616C506F65646976;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001D73BA8E0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x4C52556E65706FLL;
  if (v2 != 2)
  {
    v10 = 0x6574756F72;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x676E69646E6962;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t FormatItemNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v380 = &v368 - v8;
  v382 = type metadata accessor for FormatItemNodeAction(0);
  v379 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382, v9);
  v378 = &v368 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], v5);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  *&v397 = &v368 - v13;
  v14 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v370 = &v368 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v371 = &v368 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v372 = &v368 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v374 = &v368 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v376 = &v368 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v377 = &v368 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v381 = &v368 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v383 = &v368 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v384 = &v368 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v385 = &v368 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  *&v396 = &v368 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v368 - v49;
  sub_1D669BA8C(0);
  *&v394 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v368 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_1D5CC65A0(0);
  v58 = v57;
  v59 = sub_1D5B58B84(&qword_1EDF254D8, sub_1D5CC65A0, &unk_1D7321584);
  v430 = v54;
  sub_1D5D2EE70(v4, v58, v60, v55, v4, v58, &type metadata for FormatVersions.JazzkonC, v56, v54, v59, &off_1F51F6C78);
  swift_beginAccess();
  v62 = v2[2];
  v61 = v2[3];
  v393 = v2;
  v63 = qword_1EDF31EB0;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
  v66 = *(v64 - 8);
  v67 = *(v66 + 16);
  v68 = v66 + 16;
  v392 = v64;
  v67(v50, v65, v64);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v397;
  v387 = v62;
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
  v73 = v50;
  v389 = v67;
  v390 = v69;
  v391 = v68;
  *&v388 = v65;
  if (v72 == 1)
  {
    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v74 = v394;
    v75 = v430;
    v76 = &v430[*(v394 + 44)];
    v78 = *v76;
    v77 = *(v76 + 1);
    LOBYTE(v421) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    *(v79 + 32) = v421;
    *(v79 + 40) = v78;
    *(v79 + 48) = v77;
    sub_1D669BB20(0);
    v81 = v80;
    v82 = sub_1D5B58B84(&qword_1EDF03518, sub_1D669BB20, MEMORY[0x1E69E6F60]);

    *&v397 = v81;
    v386 = v82;
    v83 = sub_1D72647CC();
    LOBYTE(v421) = 0;
    v84 = swift_allocObject();
    *(v84 + 24) = 0;
    *(v84 + 32) = 0;
    *(v84 + 16) = v83;
    *(v84 + 40) = v421;
    v85 = (v75 + *(v74 + 36));
    v86 = v85[3];
    v87 = v85[4];
    v88 = __swift_project_boxed_opaque_existential_1(v85, v86);
    MEMORY[0x1EEE9AC00](v88, v89);
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v368 - 4) = sub_1D5B4AA6C;
    *(&v368 - 3) = 0;
    v366 = sub_1D669BBB4;
    v367 = v79;
    v92 = v395;
    v94 = sub_1D5D2F7A4(v73, sub_1D615B49C, v93, sub_1D615B4A4, (&v368 - 6), v86, v87);
    if (v92)
    {
      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v75, sub_1D669BA8C);
    }

    v125 = v94;

    if (v125)
    {
      v421 = 0uLL;
      LOBYTE(v422) = 0;
      *&v414 = v387;
      *(&v414 + 1) = v61;
      sub_1D72647EC();

      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
      v67 = v389;
      v395 = 0;
    }

    else
    {
      v395 = 0;
      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

      v67 = v389;
    }

    v65 = v388;
  }

  else
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v96 = v393[4];
  v97 = v393[5];
  v67(v396, v65, v392);
  swift_storeEnumTagMultiPayload();
  v428 = v96;
  v429 = v97;
  v397 = xmmword_1D728CF30;
  v426 = xmmword_1D728CF30;
  v427 = 0;
  v98 = v394;
  v99 = v430;
  v100 = &v430[*(v394 + 44)];
  v101 = *v100;
  v102 = *(v100 + 1);
  LOBYTE(v421) = 0;
  v103 = swift_allocObject();
  v387 = &v368;
  *(v103 + 16) = v397;
  *(v103 + 32) = v421;
  *(v103 + 40) = v101;
  *(v103 + 48) = v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v386 = &v368 - 6;
  *(&v368 - 4) = sub_1D5B4AA6C;
  *(&v368 - 3) = 0;
  v366 = sub_1D6708AA8;
  v367 = v105;
  LOBYTE(v421) = 0;
  v106 = swift_allocObject();
  *(v106 + 16) = v397;
  *(v106 + 32) = v421;
  v369 = v101;
  *(v106 + 40) = v101;
  *(v106 + 48) = v102;
  sub_1D669BB20(0);
  v108 = v107;
  v109 = sub_1D5B58B84(&qword_1EDF03518, sub_1D669BB20, MEMORY[0x1E69E6F60]);
  v368 = v102;
  swift_retain_n();
  v375 = v108;
  v373 = v109;
  v110 = sub_1D72647CC();
  LOBYTE(v421) = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  *(v111 + 24) = v397;
  *(v111 + 40) = v421;
  v112 = v99;
  v113 = &v99[*(v98 + 36)];
  v114 = *(v113 + 3);
  v115 = *(v113 + 4);
  v116 = __swift_project_boxed_opaque_existential_1(v113, v114);
  MEMORY[0x1EEE9AC00](v116, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  v120 = v386;
  *(&v368 - 4) = sub_1D615B4A4;
  *(&v368 - 3) = v120;
  v366 = sub_1D6708AA8;
  v367 = v106;
  v121 = v395;
  v122 = v396;
  sub_1D5D2BC70(v396, sub_1D615B49C, v123, sub_1D615B4A4, (&v368 - 6), v114, v115);
  if (v121)
  {
    sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

    v124 = v112;
    return sub_1D5D2CFE8(v124, sub_1D669BA8C);
  }

  *&v397 = v113;

  sub_1D72647EC();
  sub_1D5D2CFE8(v396, type metadata accessor for FormatVersionRequirement);

  v126 = *(v393 + 6);
  v423 = *(v393 + 5);
  v424 = v126;
  v425 = *(v393 + 112);
  v127 = *(v393 + 4);
  v421 = *(v393 + 3);
  v422 = v127;
  v128 = v392;
  v129 = v389;
  (v389)(v385, v388);
  swift_storeEnumTagMultiPayload();
  v396 = xmmword_1D7297410;
  v419 = xmmword_1D7297410;
  v420 = 0;
  LOBYTE(v414) = 0;
  v130 = swift_allocObject();
  v132 = v130;
  *(v130 + 16) = v396;
  *(v130 + 32) = v414;
  v133 = v368;
  v134 = v369;
  *(v130 + 40) = v369;
  *(v130 + 48) = v133;
  if ((v425 & 0xFE) == 0x7E)
  {

    v135 = v388;
    v136 = v128;
LABEL_17:
    v137 = v393;
    goto LABEL_18;
  }

  v395 = &v368;
  v416 = v423;
  v417 = v424;
  v418 = v425;
  v414 = v421;
  v415 = v422;
  MEMORY[0x1EEE9AC00](v130, v131);
  *(&v368 - 4) = sub_1D5B4AA6C;
  *(&v368 - 3) = 0;
  v366 = sub_1D6708AA8;
  v367 = v132;
  LOBYTE(v398) = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = v396;
  *(v154 + 32) = v398;
  *(v154 + 40) = v134;
  *(v154 + 48) = v133;
  swift_retain_n();
  sub_1D5D355B8(&v421, &v398, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v155 = sub_1D72647CC();
  LOBYTE(v398) = 0;
  v156 = swift_allocObject();
  *(v156 + 16) = v155;
  *(v156 + 24) = v396;
  *(v156 + 40) = v398;
  v157 = *(v397 + 24);
  v158 = *(v397 + 32);
  v159 = __swift_project_boxed_opaque_existential_1(v397, v157);
  MEMORY[0x1EEE9AC00](v159, v160);
  MEMORY[0x1EEE9AC00](v161, v162);
  *(&v368 - 4) = sub_1D615B4A4;
  *(&v368 - 3) = (&v368 - 6);
  v366 = sub_1D6708AA8;
  v367 = v154;
  v168 = sub_1D5D2F7A4(v385, sub_1D615B49C, v163, sub_1D615B4A4, (&v368 - 6), v157, v158);

  if (v168)
  {
    sub_1D669BE6C();
    sub_1D72647EC();
    v169 = v392;
    v170 = v389;
    v135 = v388;

    v400[0] = v416;
    v400[1] = v417;
    v401 = v418;
    v398 = v414;
    v399 = v415;
    sub_1D669BE18(&v398);
    v133 = v368;
    v136 = v169;
    v129 = v170;
    goto LABEL_17;
  }

  v400[0] = v416;
  v400[1] = v417;
  v401 = v418;
  v398 = v414;
  v399 = v415;
  sub_1D669BE18(&v398);
  v136 = v392;
  v137 = v393;
  v129 = v389;
  v133 = v368;
  v135 = v388;
LABEL_18:
  sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);
  v138 = *(v137 + 17);
  v398 = *(v137 + 15);
  v399 = v138;
  v400[0] = *(v137 + 19);
  *(v400 + 9) = *(v137 + 161);
  v129(v384, v135, v136);
  swift_storeEnumTagMultiPayload();
  v396 = xmmword_1D72BAA60;
  v409 = xmmword_1D72BAA60;
  v410 = 0;
  LOBYTE(v411) = 0;
  v139 = swift_allocObject();
  v141 = v136;
  v142 = v139;
  *(v139 + 16) = v396;
  *(v139 + 32) = v411;
  v143 = v369;
  *(v139 + 40) = v369;
  *(v139 + 48) = v133;
  if (BYTE8(v400[1]) == 255)
  {

    v165 = v383;
    v164 = v384;
    v166 = v141;
    v167 = v393;
  }

  else
  {
    v411 = v398;
    v412 = v399;
    v413[0] = v400[0];
    *(v413 + 9) = *(v400 + 9);
    MEMORY[0x1EEE9AC00](v139, v140);
    *(&v368 - 4) = sub_1D5B4AA6C;
    *(&v368 - 3) = 0;
    v366 = sub_1D6708AA8;
    v367 = v142;
    LOBYTE(v402) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v396;
    *(v144 + 32) = v402;
    *(v144 + 40) = v143;
    *(v144 + 48) = v133;
    swift_retain_n();
    sub_1D5D355B8(&v398, &v402, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v145 = sub_1D72647CC();
    LOBYTE(v402) = 0;
    v146 = swift_allocObject();
    *(v146 + 16) = v145;
    *(v146 + 24) = v396;
    *(v146 + 40) = v402;
    v147 = *(v397 + 24);
    v148 = *(v397 + 32);
    v149 = __swift_project_boxed_opaque_existential_1(v397, v147);
    MEMORY[0x1EEE9AC00](v149, v150);
    MEMORY[0x1EEE9AC00](v151, v152);
    *(&v368 - 4) = sub_1D615B4A4;
    *(&v368 - 3) = (&v368 - 6);
    v366 = sub_1D6708AA8;
    v367 = v144;
    v171 = sub_1D5D2F7A4(v384, sub_1D615B49C, v153, sub_1D615B4A4, (&v368 - 6), v147, v148);

    v165 = v383;
    if (v171)
    {
      sub_1D669BDC4();
      sub_1D72647EC();
      v172 = v392;
      v167 = v393;

      v402 = v411;
      v403 = v412;
      v404[0] = v413[0];
      *(v404 + 9) = *(v413 + 9);
      sub_1D62B5EC4(&v402);
      v164 = v384;
      v166 = v172;
    }

    else
    {

      v402 = v411;
      v403 = v412;
      v404[0] = v413[0];
      *(v404 + 9) = *(v413 + 9);
      sub_1D62B5EC4(&v402);
      v166 = v392;
      v167 = v393;
      v164 = v384;
    }
  }

  v395 = 0;
  sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
  v173 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction;
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v174 = __swift_project_value_buffer(v166, qword_1EDFFCCE8);
  v175 = v166;
  v389(v165, v174, v166);
  swift_storeEnumTagMultiPayload();
  v396 = xmmword_1D72BAA70;
  v411 = xmmword_1D72BAA70;
  LOBYTE(v412) = 0;
  LOBYTE(v402) = 0;
  v176 = swift_allocObject();
  *(v176 + 16) = v396;
  *(v176 + 32) = v402;
  v178 = v368;
  v177 = v369;
  *(v176 + 40) = v369;
  *(v176 + 48) = v178;
  v179 = v167 + v173;
  v180 = v380;
  sub_1D5CDE2EC(v179, v380, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v379 + 48))(v180, 1, v382) == 1)
  {

    sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v180, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v181 = v175;
LABEL_32:
    v182 = v389;
    goto LABEL_33;
  }

  v230 = sub_1D5C8F76C(v180, v378, type metadata accessor for FormatItemNodeAction);
  *&v394 = &v368;
  MEMORY[0x1EEE9AC00](v230, v231);
  *(&v368 - 4) = sub_1D5B4AA6C;
  *(&v368 - 3) = 0;
  v366 = sub_1D6708AA8;
  v367 = v176;
  LOBYTE(v402) = 0;
  v232 = swift_allocObject();
  *(v232 + 16) = v396;
  *(v232 + 32) = v402;
  *(v232 + 40) = v177;
  *(v232 + 48) = v178;
  swift_retain_n();
  v233 = sub_1D72647CC();
  LOBYTE(v402) = 0;
  v234 = swift_allocObject();
  *(v234 + 16) = v233;
  *(v234 + 24) = v396;
  *(v234 + 40) = v402;
  v235 = *(v397 + 24);
  v236 = *(v397 + 32);
  v237 = __swift_project_boxed_opaque_existential_1(v397, v235);
  MEMORY[0x1EEE9AC00](v237, v238);
  MEMORY[0x1EEE9AC00](v239, v240);
  *(&v368 - 4) = sub_1D615B4A4;
  *(&v368 - 3) = (&v368 - 6);
  v366 = sub_1D6708AA8;
  v367 = v232;
  v241 = v395;
  v243 = sub_1D5D2F7A4(v165, sub_1D615B49C, v242, sub_1D615B4A4, (&v368 - 6), v235, v236);
  if (v241)
  {

    v213 = v430;
    v244 = v383;
    sub_1D5D2CFE8(v378, type metadata accessor for FormatItemNodeAction);
    sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);
    goto LABEL_52;
  }

  v270 = v243;

  if ((v270 & 1) == 0)
  {
    v395 = 0;

    sub_1D5D2CFE8(v378, type metadata accessor for FormatItemNodeAction);
    sub_1D5D2CFE8(v383, type metadata accessor for FormatVersionRequirement);
    v181 = v392;
    v167 = v393;
    goto LABEL_32;
  }

  sub_1D5B58B84(&qword_1EDF0EE78, type metadata accessor for FormatItemNodeAction, &protocol conformance descriptor for FormatItemNodeAction);
  v271 = v378;
  sub_1D72647EC();
  v272 = v392;
  v273 = v389;
  v274 = v383;
  v395 = 0;
  v296 = v393;

  sub_1D5D2CFE8(v271, type metadata accessor for FormatItemNodeAction);
  sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
  v181 = v272;
  v182 = v273;
  v167 = v296;
LABEL_33:
  v183 = *(v167 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v184 = __swift_project_value_buffer(v181, qword_1EDFFCD18);
  v185 = v381;
  v182(v381, v184, v181);
  swift_storeEnumTagMultiPayload();
  v396 = xmmword_1D72BAA80;
  v411 = xmmword_1D72BAA80;
  LOBYTE(v412) = 0;
  LOBYTE(v402) = 0;
  v186 = swift_allocObject();
  v188 = v186;
  *(v186 + 16) = v396;
  *(v186 + 32) = v402;
  v190 = v368;
  v189 = v369;
  *(v186 + 40) = v369;
  *(v186 + 48) = v190;
  if (v183 == 2)
  {
  }

  else
  {
    *&v394 = &v368;
    LOBYTE(v402) = v183 & 1;
    MEMORY[0x1EEE9AC00](v186, v187);
    *(&v368 - 4) = sub_1D5B4AA6C;
    *(&v368 - 3) = 0;
    v366 = sub_1D6708AA8;
    v367 = v188;
    LOBYTE(v409) = 0;
    v245 = swift_allocObject();
    *(v245 + 16) = v396;
    *(v245 + 32) = v409;
    *(v245 + 40) = v189;
    *(v245 + 48) = v190;
    swift_retain_n();
    v246 = sub_1D72647CC();
    LOBYTE(v409) = 0;
    v247 = swift_allocObject();
    *(v247 + 16) = v246;
    *(v247 + 24) = v396;
    *(v247 + 40) = v409;
    v248 = *(v397 + 24);
    v249 = *(v397 + 32);
    v250 = __swift_project_boxed_opaque_existential_1(v397, v248);
    MEMORY[0x1EEE9AC00](v250, v251);
    MEMORY[0x1EEE9AC00](v252, v253);
    *(&v368 - 4) = sub_1D615B4A4;
    *(&v368 - 3) = (&v368 - 6);
    v366 = sub_1D6708AA8;
    v367 = v245;
    v254 = v395;
    v256 = sub_1D5D2F7A4(v185, sub_1D615B49C, v255, sub_1D615B4A4, (&v368 - 6), v248, v249);
    if (v254)
    {
      sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);

      v213 = v430;
      goto LABEL_52;
    }

    v289 = v256;

    if (v289)
    {
      sub_1D72647EC();
      v167 = v393;
      v395 = 0;
    }

    else
    {
      v395 = 0;
      v167 = v393;
    }

    v182 = v389;
  }

  sub_1D5D2CFE8(v381, type metadata accessor for FormatVersionRequirement);

  v191 = *(v167 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v192 = v392;
  v193 = __swift_project_value_buffer(v392, qword_1EDFFCDE0);
  v194 = v377;
  v182(v377, v193, v192);
  swift_storeEnumTagMultiPayload();
  v396 = xmmword_1D72BAA90;
  v411 = xmmword_1D72BAA90;
  LOBYTE(v412) = 0;
  LOBYTE(v402) = 0;
  v195 = swift_allocObject();
  v197 = v195;
  *(v195 + 16) = v396;
  *(v195 + 32) = v402;
  v199 = v368;
  v198 = v369;
  *(v195 + 40) = v369;
  *(v195 + 48) = v199;
  if (v191 == 2)
  {

    v200 = v199;
    v201 = v395;
  }

  else
  {
    *&v394 = &v368;
    LOBYTE(v402) = v191 & 1;
    MEMORY[0x1EEE9AC00](v195, v196);
    *(&v368 - 4) = sub_1D5B4AA6C;
    *(&v368 - 3) = 0;
    v366 = sub_1D6708AA8;
    v367 = v197;
    LOBYTE(v409) = 0;
    v257 = swift_allocObject();
    *(v257 + 16) = v396;
    *(v257 + 32) = v409;
    *(v257 + 40) = v198;
    *(v257 + 48) = v199;
    swift_retain_n();
    v258 = sub_1D72647CC();
    LOBYTE(v409) = 0;
    v259 = swift_allocObject();
    *(v259 + 16) = v258;
    *(v259 + 24) = v396;
    *(v259 + 40) = v409;
    v260 = *(v397 + 24);
    v261 = *(v397 + 32);
    v262 = __swift_project_boxed_opaque_existential_1(v397, v260);
    MEMORY[0x1EEE9AC00](v262, v263);
    MEMORY[0x1EEE9AC00](v264, v265);
    *(&v368 - 4) = sub_1D615B4A4;
    *(&v368 - 3) = (&v368 - 6);
    v366 = sub_1D6708AA8;
    v367 = v257;
    v266 = v395;
    v268 = sub_1D5D2F7A4(v194, sub_1D615B49C, v267, sub_1D615B4A4, (&v368 - 6), v260, v261);
    v201 = v266;
    if (v266)
    {
      goto LABEL_54;
    }

    v290 = v268;

    if (v290)
    {
      sub_1D72647EC();
    }

    v167 = v393;
    v200 = v368;
  }

  v202 = v201;
  sub_1D5D2CFE8(v377, type metadata accessor for FormatVersionRequirement);

  v203 = *(v167 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  v204 = *(v167 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v205 = v392;
  v206 = __swift_project_value_buffer(v392, qword_1EDFFCE98);
  v207 = v376;
  v389(v376, v206, v205);
  swift_storeEnumTagMultiPayload();
  v396 = xmmword_1D72BAAA0;
  v411 = xmmword_1D72BAAA0;
  LOBYTE(v412) = 0;
  LOBYTE(v402) = 0;
  v208 = swift_allocObject();
  v210 = v208;
  *(v208 + 16) = v396;
  *(v208 + 32) = v402;
  v211 = v369;
  *(v208 + 40) = v369;
  *(v208 + 48) = v200;
  if (v203 == 3)
  {

    sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);

    v212 = v389;
    v213 = v430;
LABEL_45:
    v214 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
    swift_beginAccess();
    v215 = *(v167 + v214);
    v216 = v374;
    v217 = v392;
    v212(v374, v388, v392);
    swift_storeEnumTagMultiPayload();
    if (*(v215 + 16))
    {
      LOBYTE(v411) = 0;
      v218 = swift_allocObject();
      v396 = xmmword_1D72BAAB0;
      *(v218 + 16) = xmmword_1D72BAAB0;
      *(v218 + 32) = v411;
      *(v218 + 40) = v369;
      *(v218 + 48) = v368;

      v219 = sub_1D72647CC();
      LOBYTE(v411) = 0;
      v220 = swift_allocObject();
      *(v220 + 16) = v219;
      *(v220 + 24) = v396;
      *(v220 + 40) = v411;
      v221 = *(v397 + 24);
      v222 = *(v397 + 32);
      v223 = __swift_project_boxed_opaque_existential_1(v397, v221);
      v395 = &v368;
      MEMORY[0x1EEE9AC00](v223, v224);
      MEMORY[0x1EEE9AC00](v225, v226);
      *(&v368 - 4) = sub_1D5B4AA6C;
      *(&v368 - 3) = 0;
      v366 = sub_1D6708AA8;
      v367 = v218;
      v228 = sub_1D5D2F7A4(v216, sub_1D615B49C, v227, sub_1D615B4A4, (&v368 - 6), v221, v222);
      v229 = v202;
      if (v202)
      {
        sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);

LABEL_52:
        v124 = v213;
        return sub_1D5D2CFE8(v124, sub_1D669BA8C);
      }

      v294 = v228;

      if (v294)
      {
        v411 = v396;
        LOBYTE(v412) = 0;
        *&v409 = v215;
        sub_1D5B5BF78(0, &qword_1EDF04F40, type metadata accessor for FormatItemNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D669BC98();
        sub_1D72647EC();
        v295 = v392;
        v167 = v393;
        v291 = v372;

        sub_1D5D2CFE8(v374, type metadata accessor for FormatVersionRequirement);
        v292 = v295;
      }

      else
      {
        sub_1D5D2CFE8(v374, type metadata accessor for FormatVersionRequirement);

        v292 = v392;
        v167 = v393;
        v291 = v372;
      }
    }

    else
    {
      sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
      v291 = v372;
      v292 = v217;
      v229 = v202;
    }

    v395 = v229;
    v297 = *(v167 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 16);
    v394 = *(v167 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
    v388 = v297;
    v298 = *(v167 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
    v299 = v371;
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v300 = __swift_project_value_buffer(v292, qword_1EDFFCE68);
    v301 = v292;
    v389(v291, v300, v292);
    swift_storeEnumTagMultiPayload();
    v396 = xmmword_1D72BAAC0;
    v409 = xmmword_1D72BAAC0;
    v410 = 0;
    LOBYTE(v411) = 0;
    v302 = swift_allocObject();
    v304 = v302;
    *(v302 + 16) = v396;
    *(v302 + 32) = v411;
    v306 = v368;
    v305 = v369;
    *(v302 + 40) = v369;
    *(v302 + 48) = v306;
    if ((v298 & 0xFF00) == 0x400)
    {

      v307 = v395;
LABEL_80:
      sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);

      v308 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
      swift_beginAccess();
      v309 = *(v167 + v308);
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v310 = v301;
      v311 = __swift_project_value_buffer(v301, qword_1EDFFCE38);
      v389(v299, v311, v310);
      swift_storeEnumTagMultiPayload();
      v396 = xmmword_1D72BAAD0;
      v409 = xmmword_1D72BAAD0;
      v410 = 0;
      LOBYTE(v407) = 0;
      v312 = swift_allocObject();
      v314 = v312;
      *(v312 + 16) = v396;
      *(v312 + 32) = v407;
      v315 = v368;
      v316 = v369;
      *(v312 + 40) = v369;
      *(v312 + 48) = v315;
      if (v309 == 2)
      {

        v317 = v299;
LABEL_95:
        sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);

        v346 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
        swift_beginAccess();
        v347 = *(v167 + v346);
        v348 = v370;
        v389(v370, v311, v392);
        swift_storeEnumTagMultiPayload();
        v396 = xmmword_1D72BAAE0;
        v407 = xmmword_1D72BAAE0;
        v408 = 0;
        v406[0] = 0;
        v349 = swift_allocObject();
        v351 = v349;
        *(v349 + 16) = v396;
        *(v349 + 32) = v406[0];
        v352 = v369;
        *(v349 + 40) = v369;
        *(v349 + 48) = v315;
        if (v347 == 2)
        {

          v269 = v430;
        }

        else
        {
          *&v394 = &v368;
          v406[0] = v347 & 1;
          MEMORY[0x1EEE9AC00](v349, v350);
          v395 = v307;
          *(&v368 - 4) = sub_1D5B4AA6C;
          *(&v368 - 3) = 0;
          v366 = sub_1D6708AA8;
          v367 = v351;
          v405 = 0;
          v353 = swift_allocObject();
          *(v353 + 16) = v396;
          *(v353 + 32) = v405;
          *(v353 + 40) = v352;
          *(v353 + 48) = v315;
          swift_retain_n();
          v354 = sub_1D72647CC();
          v405 = 0;
          v355 = swift_allocObject();
          *(v355 + 16) = v354;
          *(v355 + 24) = v396;
          *(v355 + 40) = v405;
          v356 = *(v397 + 24);
          v357 = *(v397 + 32);
          v358 = __swift_project_boxed_opaque_existential_1(v397, v356);
          MEMORY[0x1EEE9AC00](v358, v359);
          MEMORY[0x1EEE9AC00](v360, v361);
          *(&v368 - 4) = sub_1D615B4A4;
          *(&v368 - 3) = (&v368 - 6);
          v366 = sub_1D6708AA8;
          v367 = v353;
          v362 = v395;
          v364 = sub_1D5D2F7A4(v348, sub_1D615B49C, v363, sub_1D615B4A4, (&v368 - 6), v356, v357);
          if (v362)
          {
            sub_1D5D2CFE8(v348, type metadata accessor for FormatVersionRequirement);

            v124 = v430;
            return sub_1D5D2CFE8(v124, sub_1D669BA8C);
          }

          v365 = v364;

          if (v365)
          {
            v269 = v430;
            sub_1D72647EC();
          }

          else
          {
            v269 = v430;
          }

          v348 = v370;
        }

        sub_1D5D2CFE8(v348, type metadata accessor for FormatVersionRequirement);

        goto LABEL_55;
      }

      *&v388 = v311;
      *&v394 = &v368;
      LOBYTE(v407) = v309 & 1;
      MEMORY[0x1EEE9AC00](v312, v313);
      v395 = v307;
      *(&v368 - 4) = sub_1D5B4AA6C;
      *(&v368 - 3) = 0;
      v366 = sub_1D6708AA8;
      v367 = v314;
      v406[0] = 0;
      v332 = swift_allocObject();
      *(v332 + 16) = v396;
      *(v332 + 32) = v406[0];
      *(v332 + 40) = v316;
      *(v332 + 48) = v315;
      swift_retain_n();
      v333 = sub_1D72647CC();
      v406[0] = 0;
      v334 = swift_allocObject();
      *(v334 + 16) = v333;
      *(v334 + 24) = v396;
      *(v334 + 40) = v406[0];
      v335 = *(v397 + 24);
      v336 = *(v397 + 32);
      v337 = __swift_project_boxed_opaque_existential_1(v397, v335);
      MEMORY[0x1EEE9AC00](v337, v338);
      MEMORY[0x1EEE9AC00](v339, v340);
      *(&v368 - 4) = sub_1D615B4A4;
      *(&v368 - 3) = (&v368 - 6);
      v366 = sub_1D6708AA8;
      v367 = v332;
      v341 = v395;
      v343 = sub_1D5D2F7A4(v299, sub_1D615B49C, v342, sub_1D615B4A4, (&v368 - 6), v335, v336);
      v307 = v341;
      if (!v341)
      {
        v345 = v343;

        v167 = v393;
        if (v345)
        {
          sub_1D72647EC();
          v317 = v371;
          v307 = 0;
        }

        else
        {
          v317 = v371;
        }

        v315 = v368;
        v311 = v388;
        goto LABEL_95;
      }

      sub_1D5D2CFE8(v299, type metadata accessor for FormatVersionRequirement);

      v269 = v430;
LABEL_55:
      v124 = v269;
      return sub_1D5D2CFE8(v124, sub_1D669BA8C);
    }

    v387 = &v368;
    v411 = v394;
    v412 = v388;
    LOWORD(v413[0]) = v298 & 0xFF01;
    MEMORY[0x1EEE9AC00](v302, v303);
    *(&v368 - 4) = sub_1D5B4AA6C;
    *(&v368 - 3) = 0;
    v366 = sub_1D6708AA8;
    v367 = v304;
    LOBYTE(v407) = 0;
    v318 = swift_allocObject();
    v319 = v291;
    v320 = v318;
    *(v318 + 16) = v396;
    *(v318 + 32) = v407;
    *(v318 + 40) = v305;
    *(v318 + 48) = v306;
    v194 = v319;
    swift_retain_n();
    v321 = sub_1D72647CC();
    LOBYTE(v407) = 0;
    v322 = swift_allocObject();
    *(v322 + 16) = v321;
    *(v322 + 24) = v396;
    *(v322 + 40) = v407;
    v323 = *(v397 + 24);
    v324 = *(v397 + 32);
    v325 = __swift_project_boxed_opaque_existential_1(v397, v323);
    MEMORY[0x1EEE9AC00](v325, v326);
    MEMORY[0x1EEE9AC00](v327, v328);
    *(&v368 - 4) = sub_1D615B4A4;
    *(&v368 - 3) = (&v368 - 6);
    v366 = sub_1D6708AA8;
    v367 = v320;
    v329 = v395;
    v331 = sub_1D5D2F7A4(v194, sub_1D615B49C, v330, sub_1D615B4A4, (&v368 - 6), v323, v324);
    if (!v329)
    {
      v344 = v331;

      v299 = v371;
      if (v344)
      {
        sub_1D669BC44();
        sub_1D72647EC();
        v291 = v372;
        v307 = 0;
        v301 = v392;
        v167 = v393;
      }

      else
      {
        v307 = 0;
        v301 = v392;
        v167 = v393;
        v291 = v372;
      }

      goto LABEL_80;
    }

LABEL_54:
    sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);

    v269 = v430;
    goto LABEL_55;
  }

  *&v394 = &v368;
  *&v402 = v203;
  *(&v402 + 1) = v204;
  MEMORY[0x1EEE9AC00](v208, v209);
  v395 = v202;
  v387 = &v368 - 6;
  *(&v368 - 4) = sub_1D5B4AA6C;
  *(&v368 - 3) = 0;
  v366 = sub_1D6708AA8;
  v367 = v210;
  LOBYTE(v409) = 0;
  v275 = swift_allocObject();
  *(v275 + 16) = v396;
  *(v275 + 32) = v409;
  *(v275 + 40) = v211;
  *(v275 + 48) = v200;
  swift_retain_n();
  sub_1D62B7E1C(v203);
  v276 = sub_1D72647CC();
  LOBYTE(v409) = 0;
  v277 = swift_allocObject();
  *(v277 + 16) = v276;
  *(v277 + 24) = v396;
  *(v277 + 40) = v409;
  v278 = *(v397 + 24);
  v279 = *(v397 + 32);
  v280 = __swift_project_boxed_opaque_existential_1(v397, v278);
  MEMORY[0x1EEE9AC00](v280, v281);
  MEMORY[0x1EEE9AC00](v282, v283);
  v284 = v387;
  *(&v368 - 4) = sub_1D615B4A4;
  *(&v368 - 3) = v284;
  v366 = sub_1D6708AA8;
  v367 = v275;
  v285 = v395;
  v287 = sub_1D5D2F7A4(v207, sub_1D615B49C, v286, sub_1D615B4A4, (&v368 - 6), v278, v279);
  v202 = v285;
  if (!v285)
  {
    v293 = v287;

    if (v293)
    {
      sub_1D669BD70();
      v213 = v430;
      sub_1D72647EC();
      v167 = v393;
      v212 = v389;

      sub_1D62B5E24(v402);
      sub_1D5D2CFE8(v376, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D62B5E24(v402);
      sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
      v213 = v430;
      v167 = v393;
      v212 = v389;
    }

    goto LABEL_45;
  }

  v288 = v430;
  sub_1D62B5E24(v402);
  sub_1D5D2CFE8(v376, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v288, sub_1D669BA8C);
}

uint64_t sub_1D65007E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669C2E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D650081C(uint64_t a1)
{
  v2 = sub_1D5CC6678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6500858(uint64_t a1)
{
  v2 = sub_1D5CC6678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_1D5B5BF78(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v46 - v5;
  sub_1D669BEC0(0);
  v8 = v7;
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D669BF54(0);
  sub_1D5B58B84(&qword_1EDF254C8, sub_1D669BF54, &unk_1D7321584);
  v12 = v81;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
    v14 = a1;
  }

  else
  {
    v81 = 0;
    v54 = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v17 = v56;
    v18 = v11;
    v14 = a1;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = (v19 + 48);
        while (*v21 != 1)
        {
          v21 += 24;
          if (!--v20)
          {
            goto LABEL_8;
          }
        }

        v25 = *(v21 - 2);
        v24 = *(v21 - 1);

        v26 = sub_1D661E0EC();
        sub_1D5E2D970();
        v27 = swift_allocError();
        *v28 = v25;
        *(v28 + 8) = v24;
        *(v28 + 16) = v26;
        v13 = v27;
        *(v28 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v17 + 8))(v11, v8);
        goto LABEL_13;
      }

LABEL_8:
    }

    sub_1D5C36978();
    v76 = 0uLL;
    LOBYTE(v77) = 0;
    v22 = v81;
    sub_1D726431C();
    v13 = v22;
    if (!v22)
    {
      v23 = v69;
      v74 = xmmword_1D728CF30;
      v75 = 0;
      sub_1D5CC69A8();
      sub_1D726427C();
      v71 = v78;
      v72 = v79;
      v73 = v80;
      v69 = v76;
      v70 = v77;
      v64[2] = xmmword_1D7297410;
      v65 = 0;
      sub_1D5CC6A60();
      sub_1D726427C();
      v62 = v66;
      v63 = v67;
      v64[0] = v68[0];
      *(v64 + 9) = *(v68 + 9);
      type metadata accessor for FormatItemNodeAction(0);
      v59 = xmmword_1D72BAA60;
      LOBYTE(v60) = 0;
      sub_1D5B58B84(&qword_1EDF2AFC0, type metadata accessor for FormatItemNodeAction, &protocol conformance descriptor for FormatItemNodeAction);
      sub_1D726427C();
      v59 = xmmword_1D72BAA70;
      LOBYTE(v60) = 0;
      v29 = sub_1D726423C();
      v59 = xmmword_1D72BAA80;
      LOBYTE(v60) = 0;
      LODWORD(v81) = sub_1D726423C();
      v59 = xmmword_1D72BAA90;
      LOBYTE(v60) = 0;
      sub_1D5CC6B08();
      sub_1D726427C();
      v52 = v29;
      v30 = *(&v57 + 1);
      v53 = v57;
      v57 = xmmword_1D72BAAA0;
      v58 = 0;
      sub_1D5CC6BAC();
      sub_1D726427C();
      v31 = v53;
      v51 = v30;
      v50 = v60;
      v48 = v59;
      v49 = v61;
      v59 = xmmword_1D72BAAB0;
      LOBYTE(v60) = 0;
      v47 = sub_1D726423C();
      v59 = xmmword_1D72BAAC0;
      LOBYTE(v60) = 0;
      v32 = v8;
      v33 = v18;
      v34 = sub_1D726423C();
      v46 = 0;
      v35 = v34;
      (*(v56 + 8))(v33, v32);
      v36 = type metadata accessor for FormatItemNodeStyle.Selector(0);
      v37 = v55;
      sub_1D5C4E944(v54, v55 + v36[7], qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
      v38 = v72;
      *(v37 + 48) = v71;
      *(v37 + 64) = v38;
      v39 = v70;
      *(v37 + 16) = v69;
      *(v37 + 32) = v39;
      v40 = v63;
      *(v37 + 88) = v62;
      *(v37 + 129) = *(v64 + 9);
      *(v37 + 120) = v64[0];
      *v37 = v23;
      *(v37 + 80) = v73;
      *(v37 + 104) = v40;
      *(v37 + v36[8]) = v52;
      *(v37 + v36[9]) = v81;
      v41 = (v37 + v36[10]);
      v42 = v51;
      *v41 = v31;
      v41[1] = v42;
      v43 = v37 + v36[11];
      v44 = v50;
      *v43 = v48;
      *(v43 + 16) = v44;
      *(v43 + 32) = v49;
      *(v37 + v36[12]) = v47;
      *(v37 + v36[13]) = v35;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v17 + 8))(v11, v8);
  }

LABEL_13:
  sub_1D61E4FBC(v14, v13);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t FormatItemNodeStyle.Selector.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v292 = v284 - v6;
  v295 = type metadata accessor for FormatItemNodeAction(0);
  v291 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295, v7);
  v293 = v284 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v286 = v284 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v287 = v284 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v288 = (v284 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v289 = (v284 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v290 = v284 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v294 = (v284 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v296 = v284 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v299 = (v284 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v298 = v284 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  *&v311 = v284 - v38;
  sub_1D669C0D4(0);
  v40 = v39;
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = v284 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D669BF54(0);
  v48 = v47;
  v49 = sub_1D5B58B84(&qword_1EDF254C8, sub_1D669BF54, &unk_1D7321584);
  v297 = v46;
  sub_1D5D2EE70(v46, v48, v50, v44, v46, v48, &type metadata for FormatVersions.JazzkonC, v45, v43, v49, &off_1F51F6C78);
  v51 = *v2;
  v52 = v2[1];
  v306 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  *&v301 = v54;
  v302 = v53;
  v303 = v55 + 16;
  v304 = v56;
  v56(v311);
  v305 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v339 = v51;
  v340 = v52;
  v336 = 0;
  v337 = 0;
  v338 = 0;
  v57 = &v43[*(v40 + 44)];
  v58 = *v57;
  v59 = *(v57 + 1);
  LOBYTE(v331) = 0;
  v60 = swift_allocObject();
  *&v309 = v284;
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = v331;
  *(v60 + 40) = v58;
  *(v60 + 48) = v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v284[-4] = sub_1D5B4AA6C;
  v284[-3] = 0;
  v282 = sub_1D6708AAC;
  v283 = v62;
  LOBYTE(v331) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  *(v63 + 32) = v331;
  v300 = v58;
  *(v63 + 40) = v58;
  *(v63 + 48) = v59;
  sub_1D669C168(0);
  v65 = v64;
  v66 = sub_1D5B58B84(&qword_1EDF03508, sub_1D669C168, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v307 = v65;
  v308 = v66;
  v67 = sub_1D72647CC();
  LOBYTE(v331) = 0;
  v68 = swift_allocObject();
  *(v68 + 24) = 0;
  *(v68 + 32) = 0;
  *(v68 + 16) = v67;
  *(v68 + 40) = v331;
  v69 = *(v40 + 36);
  v341 = v43;
  v70 = &v43[v69];
  v71 = *(v70 + 3);
  v72 = *(v70 + 4);
  v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v284[-4] = sub_1D615B4A4;
  v284[-3] = &v284[-6];
  v282 = sub_1D6708AAC;
  v283 = v63;
  v77 = v310;
  sub_1D5D2BC70(v311, sub_1D615B49C, v78, sub_1D615B4A4, &v284[-6], v71, v72);
  if (v77)
  {
    v79 = v311;
LABEL_5:
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    v80 = v341;
    return sub_1D5D2CFE8(v80, sub_1D669C0D4);
  }

  v81 = v311;
  v285 = v70;
  v310 = v59;

  sub_1D5D3E60C();
  sub_1D72647EC();
  *&v309 = 0;
  sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

  v83 = *(v306 + 4);
  v333 = *(v306 + 3);
  v334 = v83;
  v335 = *(v306 + 80);
  v84 = *(v306 + 2);
  v331 = *(v306 + 1);
  v332 = v84;
  v85 = v298;
  v86 = v302;
  v87 = v304;
  v304(v298, v301, v302);
  swift_storeEnumTagMultiPayload();
  v311 = xmmword_1D728CF30;
  v329 = xmmword_1D728CF30;
  v330 = 0;
  LOBYTE(v324) = 0;
  v88 = swift_allocObject();
  v90 = v88;
  *(v88 + 16) = v311;
  *(v88 + 32) = v324;
  v91 = v300;
  v92 = v310;
  *(v88 + 40) = v300;
  *(v88 + 48) = v92;
  if ((v335 & 0xFE) == 0x7E)
  {

    goto LABEL_11;
  }

  v284[1] = v284;
  v326 = v333;
  v327 = v334;
  v328 = v335;
  v324 = v331;
  v325 = v332;
  MEMORY[0x1EEE9AC00](v88, v89);
  v284[-4] = sub_1D5B4AA6C;
  v284[-3] = 0;
  v282 = sub_1D6708AAC;
  v283 = v90;
  LOBYTE(v312) = 0;
  v113 = swift_allocObject();
  *(v113 + 16) = v311;
  *(v113 + 32) = v312;
  *(v113 + 40) = v91;
  *(v113 + 48) = v92;
  swift_retain_n();
  sub_1D5D355B8(&v331, &v312, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v114 = sub_1D72647CC();
  LOBYTE(v312) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v311;
  *(v115 + 40) = v312;
  v116 = *(v285 + 3);
  v117 = *(v285 + 4);
  v118 = __swift_project_boxed_opaque_existential_1(v285, v116);
  MEMORY[0x1EEE9AC00](v118, v119);
  MEMORY[0x1EEE9AC00](v120, v121);
  v284[-4] = sub_1D615B4A4;
  v284[-3] = &v284[-6];
  v282 = sub_1D6708AAC;
  v283 = v113;
  v122 = v309;
  v124 = sub_1D5D2F7A4(v85, sub_1D615B49C, v123, sub_1D615B4A4, &v284[-6], v116, v117);
  *&v309 = v122;
  if (!v122)
  {
    v125 = v124;

    if (v125)
    {
      sub_1D669BE6C();
      v126 = v309;
      sub_1D72647EC();
      *&v309 = v126;
      v92 = v310;
      v91 = v300;
      v87 = v304;
      if (v126)
      {

        v314[0] = v326;
        v314[1] = v327;
        v315 = v328;
        v312 = v324;
        v313 = v325;
        sub_1D669BE18(&v312);
        goto LABEL_16;
      }

      v314[0] = v326;
      v314[1] = v327;
      v315 = v328;
      v312 = v324;
      v313 = v325;
      sub_1D669BE18(&v312);
      v86 = v302;
    }

    else
    {

      v314[0] = v326;
      v314[1] = v327;
      v315 = v328;
      v312 = v324;
      v313 = v325;
      sub_1D669BE18(&v312);
      v92 = v310;
      v91 = v300;
      v86 = v302;
      v87 = v304;
    }

LABEL_11:
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);
    v93 = *(v306 + 13);
    v312 = *(v306 + 11);
    v313 = v93;
    v314[0] = *(v306 + 15);
    *(v314 + 9) = *(v306 + 129);
    v94 = v299;
    v87(v299, v301, v86);
    swift_storeEnumTagMultiPayload();
    v311 = xmmword_1D7297410;
    v322 = xmmword_1D7297410;
    v323 = 0;
    LOBYTE(v319) = 0;
    v95 = swift_allocObject();
    v97 = v95;
    *(v95 + 16) = v311;
    *(v95 + 32) = v319;
    *(v95 + 40) = v91;
    *(v95 + 48) = v92;
    if (BYTE8(v314[1]) == 255)
    {

      v110 = v309;
    }

    else
    {
      *&v301 = v284;
      v319 = v312;
      v320 = v313;
      v321[0] = v314[0];
      *(v321 + 9) = *(v314 + 9);
      MEMORY[0x1EEE9AC00](v95, v96);
      v284[-4] = sub_1D5B4AA6C;
      v284[-3] = 0;
      v282 = sub_1D6708AAC;
      v283 = v97;
      LOBYTE(v316) = 0;
      v98 = swift_allocObject();
      *(v98 + 16) = v311;
      *(v98 + 32) = v316;
      *(v98 + 40) = v91;
      *(v98 + 48) = v92;
      swift_retain_n();
      sub_1D5D355B8(&v312, &v316, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v99 = sub_1D72647CC();
      LOBYTE(v316) = 0;
      v100 = swift_allocObject();
      *(v100 + 16) = v99;
      *(v100 + 24) = v311;
      *(v100 + 40) = v316;
      v101 = *(v285 + 3);
      v102 = *(v285 + 4);
      v103 = __swift_project_boxed_opaque_existential_1(v285, v101);
      MEMORY[0x1EEE9AC00](v103, v104);
      MEMORY[0x1EEE9AC00](v105, v106);
      v284[-4] = sub_1D615B4A4;
      v284[-3] = &v284[-6];
      v282 = sub_1D6708AAC;
      v283 = v98;
      v107 = v309;
      v109 = sub_1D5D2F7A4(v94, sub_1D615B49C, v108, sub_1D615B4A4, &v284[-6], v101, v102);
      v110 = v107;
      if (v107)
      {

        v316 = v319;
        v317 = v320;
        v318[0] = v321[0];
        *(v318 + 9) = *(v321 + 9);
        sub_1D62B5EC4(&v316);
        v111 = v341;
        v112 = v94;
LABEL_55:
        sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);
        goto LABEL_56;
      }

      v127 = v109;

      if (v127)
      {
        sub_1D669BDC4();
        sub_1D72647EC();
        v92 = v310;
        v128 = v296;

        v316 = v319;
        v317 = v320;
        v318[0] = v321[0];
        *(v318 + 9) = *(v321 + 9);
        sub_1D62B5EC4(&v316);
        v91 = v300;
        goto LABEL_26;
      }

      v316 = v319;
      v317 = v320;
      v318[0] = v321[0];
      *(v318 + 9) = *(v321 + 9);
      sub_1D62B5EC4(&v316);
      v92 = v310;
      v91 = v300;
    }

    v128 = v296;
LABEL_26:
    sub_1D5D2CFE8(v299, type metadata accessor for FormatVersionRequirement);
    v129 = v297[7];
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v130 = v302;
    v131 = __swift_project_value_buffer(v302, qword_1EDFFCCE8);
    v304(v128, v131, v130);
    swift_storeEnumTagMultiPayload();
    v311 = xmmword_1D72BAA60;
    v319 = xmmword_1D72BAA60;
    LOBYTE(v320) = 0;
    LOBYTE(v316) = 0;
    v132 = swift_allocObject();
    *(v132 + 16) = v311;
    *(v132 + 32) = v316;
    *(v132 + 40) = v91;
    *(v132 + 48) = v92;
    v133 = v306 + v129;
    v134 = v292;
    sub_1D5CDE2EC(v133, v292, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    if ((*(v291 + 48))(v134, 1, v295) == 1)
    {

      sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);

      sub_1D5D35558(v134, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5B5BF78);
    }

    else
    {
      v182 = sub_1D5C8F76C(v134, v293, type metadata accessor for FormatItemNodeAction);
      *&v309 = v284;
      MEMORY[0x1EEE9AC00](v182, v183);
      v284[-4] = sub_1D5B4AA6C;
      v284[-3] = 0;
      v282 = sub_1D6708AAC;
      v283 = v132;
      LOBYTE(v316) = 0;
      v184 = swift_allocObject();
      *(v184 + 16) = v311;
      *(v184 + 32) = v316;
      *(v184 + 40) = v91;
      *(v184 + 48) = v92;
      swift_retain_n();
      v185 = sub_1D72647CC();
      LOBYTE(v316) = 0;
      v186 = swift_allocObject();
      *(v186 + 16) = v185;
      *(v186 + 24) = v311;
      *(v186 + 40) = v316;
      v187 = v110;
      v188 = *(v285 + 3);
      v189 = *(v285 + 4);
      v190 = __swift_project_boxed_opaque_existential_1(v285, v188);
      MEMORY[0x1EEE9AC00](v190, v191);
      MEMORY[0x1EEE9AC00](v192, v193);
      v284[-4] = sub_1D615B4A4;
      v284[-3] = &v284[-6];
      v282 = sub_1D6708AAC;
      v283 = v184;
      v195 = sub_1D5D2F7A4(v296, sub_1D615B49C, v194, sub_1D615B4A4, &v284[-6], v188, v189);
      v110 = v187;
      if (v187)
      {

        v111 = v341;
        v196 = v296;
        sub_1D5D2CFE8(v293, type metadata accessor for FormatItemNodeAction);
        v112 = v196;
        goto LABEL_55;
      }

      v221 = v195;

      if (v221)
      {
        sub_1D5B58B84(&qword_1EDF0EE78, type metadata accessor for FormatItemNodeAction, &protocol conformance descriptor for FormatItemNodeAction);
        v222 = v293;
        sub_1D72647EC();
        v92 = v310;
        v91 = v300;

        sub_1D5D2CFE8(v222, type metadata accessor for FormatItemNodeAction);
        sub_1D5D2CFE8(v296, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v293, type metadata accessor for FormatItemNodeAction);
        sub_1D5D2CFE8(v296, type metadata accessor for FormatVersionRequirement);
        v92 = v310;
        v91 = v300;
      }
    }

    v135 = *(v306 + v297[8]);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v136 = v302;
    v137 = __swift_project_value_buffer(v302, qword_1EDFFCD18);
    v138 = v294;
    v304(v294, v137, v136);
    swift_storeEnumTagMultiPayload();
    v311 = xmmword_1D72BAA70;
    v319 = xmmword_1D72BAA70;
    LOBYTE(v320) = 0;
    LOBYTE(v316) = 0;
    v139 = swift_allocObject();
    v141 = v139;
    *(v139 + 16) = v311;
    *(v139 + 32) = v316;
    *(v139 + 40) = v91;
    *(v139 + 48) = v92;
    if (v135 == 2)
    {
    }

    else
    {
      *&v309 = v284;
      LOBYTE(v316) = v135 & 1;
      MEMORY[0x1EEE9AC00](v139, v140);
      v284[-4] = sub_1D5B4AA6C;
      v284[-3] = 0;
      v282 = sub_1D6708AAC;
      v283 = v141;
      LOBYTE(v322) = 0;
      v197 = swift_allocObject();
      *(v197 + 16) = v311;
      *(v197 + 32) = v322;
      *(v197 + 40) = v91;
      *(v197 + 48) = v92;
      swift_retain_n();
      v198 = sub_1D72647CC();
      LOBYTE(v322) = 0;
      v199 = swift_allocObject();
      *(v199 + 16) = v198;
      *(v199 + 24) = v311;
      *(v199 + 40) = v322;
      v200 = v110;
      v201 = *(v285 + 3);
      v202 = *(v285 + 4);
      v203 = __swift_project_boxed_opaque_existential_1(v285, v201);
      MEMORY[0x1EEE9AC00](v203, v204);
      MEMORY[0x1EEE9AC00](v205, v206);
      v284[-4] = sub_1D615B4A4;
      v284[-3] = &v284[-6];
      v282 = sub_1D6708AAC;
      v283 = v197;
      v208 = sub_1D5D2F7A4(v138, sub_1D615B49C, v207, sub_1D615B4A4, &v284[-6], v201, v202);
      v110 = v200;
      if (v200)
      {
        v79 = v138;
        goto LABEL_5;
      }

      v236 = v208;

      if (v236)
      {
        sub_1D72647EC();
      }

      v92 = v310;
      v91 = v300;
    }

    sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);

    v142 = *(v306 + v297[9]);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    *&v309 = v110;
    v143 = v302;
    v144 = __swift_project_value_buffer(v302, qword_1EDFFCDE0);
    v145 = v290;
    v304(v290, v144, v143);
    swift_storeEnumTagMultiPayload();
    v311 = xmmword_1D72BAA80;
    v319 = xmmword_1D72BAA80;
    LOBYTE(v320) = 0;
    LOBYTE(v316) = 0;
    v146 = swift_allocObject();
    v148 = v146;
    *(v146 + 16) = v311;
    *(v146 + 32) = v316;
    *(v146 + 40) = v91;
    *(v146 + 48) = v92;
    if (v142 == 2)
    {
    }

    else
    {
      *&v301 = v284;
      LOBYTE(v316) = v142 & 1;
      MEMORY[0x1EEE9AC00](v146, v147);
      v284[-4] = sub_1D5B4AA6C;
      v284[-3] = 0;
      v282 = sub_1D6708AAC;
      v283 = v148;
      LOBYTE(v322) = 0;
      v209 = swift_allocObject();
      *(v209 + 16) = v311;
      *(v209 + 32) = v322;
      *(v209 + 40) = v91;
      *(v209 + 48) = v92;
      swift_retain_n();
      v210 = sub_1D72647CC();
      LOBYTE(v322) = 0;
      v211 = swift_allocObject();
      *(v211 + 16) = v210;
      *(v211 + 24) = v311;
      *(v211 + 40) = v322;
      v212 = *(v285 + 3);
      v213 = *(v285 + 4);
      v214 = __swift_project_boxed_opaque_existential_1(v285, v212);
      MEMORY[0x1EEE9AC00](v214, v215);
      MEMORY[0x1EEE9AC00](v216, v217);
      v284[-4] = sub_1D615B4A4;
      v284[-3] = &v284[-6];
      v282 = sub_1D6708AAC;
      v283 = v209;
      v218 = v309;
      v220 = sub_1D5D2F7A4(v145, sub_1D615B49C, v219, sub_1D615B4A4, &v284[-6], v212, v213);
      if (v218)
      {
        goto LABEL_60;
      }

      v250 = v220;

      if (v250)
      {
        sub_1D72647EC();
        v91 = v300;
        *&v309 = 0;
        v92 = v310;
      }

      else
      {
        *&v309 = 0;
        v92 = v310;
        v91 = v300;
      }

      v145 = v290;
    }

    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);

    v149 = (v306 + v297[10]);
    v151 = *v149;
    v150 = v149[1];
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v152 = v302;
    v153 = __swift_project_value_buffer(v302, qword_1EDFFCE98);
    v154 = v289;
    v304(v289, v153, v152);
    swift_storeEnumTagMultiPayload();
    v311 = xmmword_1D72BAA90;
    v319 = xmmword_1D72BAA90;
    LOBYTE(v320) = 0;
    LOBYTE(v316) = 0;
    v155 = swift_allocObject();
    v157 = v155;
    *(v155 + 16) = v311;
    *(v155 + 32) = v316;
    *(v155 + 40) = v91;
    *(v155 + 48) = v92;
    if (v151 == 3)
    {

      sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);

      v158 = v309;
    }

    else
    {
      *&v301 = v284;
      *&v316 = v151;
      *(&v316 + 1) = v150;
      MEMORY[0x1EEE9AC00](v155, v156);
      v284[-4] = sub_1D5B4AA6C;
      v284[-3] = 0;
      v282 = sub_1D6708AAC;
      v283 = v157;
      LOBYTE(v322) = 0;
      v223 = swift_allocObject();
      *(v223 + 16) = v311;
      *(v223 + 32) = v322;
      *(v223 + 40) = v91;
      *(v223 + 48) = v92;
      swift_retain_n();
      sub_1D62B7E1C(v151);
      v224 = sub_1D72647CC();
      LOBYTE(v322) = 0;
      v225 = swift_allocObject();
      *(v225 + 16) = v224;
      *(v225 + 24) = v311;
      *(v225 + 40) = v322;
      v226 = *(v285 + 3);
      v227 = *(v285 + 4);
      v228 = __swift_project_boxed_opaque_existential_1(v285, v226);
      MEMORY[0x1EEE9AC00](v228, v229);
      MEMORY[0x1EEE9AC00](v230, v231);
      v284[-4] = sub_1D615B4A4;
      v284[-3] = &v284[-6];
      v282 = sub_1D6708AAC;
      v283 = v223;
      v232 = v289;
      v233 = v309;
      v235 = sub_1D5D2F7A4(v289, sub_1D615B49C, v234, sub_1D615B4A4, &v284[-6], v226, v227);
      v158 = v233;
      if (v233)
      {

        v111 = v341;
        sub_1D62B5E24(v316);
        v112 = v232;
        goto LABEL_55;
      }

      v263 = v235;

      if (v263)
      {
        sub_1D669BD70();
        sub_1D72647EC();
        v91 = v300;

        sub_1D62B5E24(v316);
        sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D62B5E24(v316);
        sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
        v91 = v300;
      }
    }

    v159 = v306 + v297[11];
    v160 = *(v159 + 1);
    v309 = *v159;
    v301 = v160;
    v161 = *(v159 + 16);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v162 = v302;
    v163 = __swift_project_value_buffer(v302, qword_1EDFFCE68);
    v164 = v288;
    v304(v288, v163, v162);
    swift_storeEnumTagMultiPayload();
    v311 = xmmword_1D72BAAA0;
    v316 = xmmword_1D72BAAA0;
    LOBYTE(v317) = 0;
    LOBYTE(v319) = 0;
    v165 = swift_allocObject();
    v167 = v165;
    *(v165 + 16) = v311;
    *(v165 + 32) = v319;
    v168 = v310;
    *(v165 + 40) = v91;
    *(v165 + 48) = v168;
    if ((v161 & 0xFF00) == 0x400)
    {

      v111 = v341;
      v169 = v287;
    }

    else
    {
      v299 = v284;
      v319 = v309;
      v320 = v301;
      LOWORD(v321[0]) = v161 & 0xFF01;
      MEMORY[0x1EEE9AC00](v165, v166);
      *&v309 = &v284[-6];
      v284[-4] = sub_1D5B4AA6C;
      v284[-3] = 0;
      v282 = sub_1D6708AAC;
      v283 = v167;
      LOBYTE(v322) = 0;
      v237 = swift_allocObject();
      *(v237 + 16) = v311;
      *(v237 + 32) = v322;
      *(v237 + 40) = v91;
      *(v237 + 48) = v168;
      swift_retain_n();
      v238 = sub_1D72647CC();
      LOBYTE(v322) = 0;
      v239 = swift_allocObject();
      *(v239 + 16) = v238;
      *(v239 + 24) = v311;
      *(v239 + 40) = v322;
      v240 = v158;
      v241 = *(v285 + 3);
      v242 = *(v285 + 4);
      v243 = __swift_project_boxed_opaque_existential_1(v285, v241);
      MEMORY[0x1EEE9AC00](v243, v244);
      MEMORY[0x1EEE9AC00](v245, v246);
      v247 = v309;
      v284[-4] = sub_1D615B4A4;
      v284[-3] = v247;
      v282 = sub_1D6708AAC;
      v283 = v237;
      v249 = sub_1D5D2F7A4(v164, sub_1D615B49C, v248, sub_1D615B4A4, &v284[-6], v241, v242);
      v158 = v240;
      if (v240)
      {
        sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);

        goto LABEL_6;
      }

      v276 = v249;

      v169 = v287;
      if (v276)
      {
        sub_1D669BC44();
        v277 = v341;
        sub_1D72647EC();
        v91 = v300;
        v111 = v277;
      }

      else
      {
        v111 = v341;
        v91 = v300;
      }
    }

    sub_1D5D2CFE8(v288, type metadata accessor for FormatVersionRequirement);

    v170 = *(v306 + v297[12]);
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v171 = v302;
    v172 = __swift_project_value_buffer(v302, qword_1EDFFCE38);
    v304(v169, v172, v171);
    swift_storeEnumTagMultiPayload();
    v311 = xmmword_1D72BAAB0;
    v319 = xmmword_1D72BAAB0;
    LOBYTE(v320) = 0;
    LOBYTE(v316) = 0;
    v173 = swift_allocObject();
    v175 = v173;
    *(v173 + 16) = v311;
    *(v173 + 32) = v316;
    v176 = v310;
    *(v173 + 40) = v91;
    *(v173 + 48) = v176;
    if (v170 == 2)
    {
    }

    else
    {
      *&v309 = v284;
      LOBYTE(v316) = v170 & 1;
      MEMORY[0x1EEE9AC00](v173, v174);
      v284[-4] = sub_1D5B4AA6C;
      v284[-3] = 0;
      v282 = sub_1D6708AAC;
      v283 = v175;
      LOBYTE(v322) = 0;
      v251 = swift_allocObject();
      *(v251 + 16) = v311;
      *(v251 + 32) = v322;
      *(v251 + 40) = v91;
      *(v251 + 48) = v176;
      swift_retain_n();
      v252 = sub_1D72647CC();
      LOBYTE(v322) = 0;
      v253 = v158;
      v254 = swift_allocObject();
      *(v254 + 16) = v252;
      *(v254 + 24) = v311;
      *(v254 + 40) = v322;
      v255 = *(v285 + 3);
      v256 = *(v285 + 4);
      v257 = __swift_project_boxed_opaque_existential_1(v285, v255);
      MEMORY[0x1EEE9AC00](v257, v258);
      MEMORY[0x1EEE9AC00](v259, v260);
      v284[-4] = sub_1D615B4A4;
      v284[-3] = &v284[-6];
      v169 = v287;
      v282 = sub_1D6708AAC;
      v283 = v251;
      v262 = sub_1D5D2F7A4(v287, sub_1D615B49C, v261, sub_1D615B4A4, &v284[-6], v255, v256);
      if (v253)
      {
        sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);

        v80 = v341;
        return sub_1D5D2CFE8(v80, sub_1D669C0D4);
      }

      v278 = v262;

      if (v278)
      {
        v279 = v341;
        sub_1D72647EC();
        v158 = 0;
        v91 = v300;
        v176 = v310;
        v111 = v279;
      }

      else
      {
        v111 = v341;
        v158 = 0;
        v176 = v310;
        v91 = v300;
      }
    }

    sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);

    v177 = *(v306 + v297[13]);
    v178 = v286;
    v304(v286, v172, v302);
    swift_storeEnumTagMultiPayload();
    v311 = xmmword_1D72BAAC0;
    v319 = xmmword_1D72BAAC0;
    LOBYTE(v320) = 0;
    LOBYTE(v316) = 0;
    v179 = swift_allocObject();
    v181 = v179;
    *(v179 + 16) = v311;
    *(v179 + 32) = v316;
    *(v179 + 40) = v91;
    *(v179 + 48) = v176;
    if (v177 == 2)
    {

LABEL_52:
      sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);

LABEL_56:
      v80 = v111;
      return sub_1D5D2CFE8(v80, sub_1D669C0D4);
    }

    v310 = v284;
    LOBYTE(v316) = v177 & 1;
    MEMORY[0x1EEE9AC00](v179, v180);
    v284[-4] = sub_1D5B4AA6C;
    v284[-3] = 0;
    v282 = sub_1D6708AAC;
    v283 = v181;
    LOBYTE(v322) = 0;
    v264 = swift_allocObject();
    *(v264 + 16) = v311;
    *(v264 + 32) = v322;
    *(v264 + 40) = v91;
    *(v264 + 48) = v176;
    swift_retain_n();
    v265 = sub_1D72647CC();
    LOBYTE(v322) = 0;
    v145 = v178;
    v266 = swift_allocObject();
    *(v266 + 16) = v265;
    *(v266 + 24) = v311;
    *(v266 + 40) = v322;
    v267 = v158;
    v268 = *(v285 + 3);
    v269 = *(v285 + 4);
    v270 = __swift_project_boxed_opaque_existential_1(v285, v268);
    MEMORY[0x1EEE9AC00](v270, v271);
    MEMORY[0x1EEE9AC00](v272, v273);
    v284[-4] = sub_1D615B4A4;
    v284[-3] = &v284[-6];
    v282 = sub_1D669C1FC;
    v283 = v264;
    v275 = sub_1D5D2F7A4(v145, sub_1D615B49C, v274, sub_1D615B4A4, &v284[-6], v268, v269);
    if (!v267)
    {
      v280 = v275;

      if (v280)
      {
        v281 = v341;
        sub_1D72647EC();
        v178 = v286;
        v111 = v281;
      }

      else
      {
        v111 = v341;
        v178 = v286;
      }

      goto LABEL_52;
    }

LABEL_60:
    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);

    goto LABEL_6;
  }

  v314[0] = v326;
  v314[1] = v327;
  v315 = v328;
  v312 = v324;
  v313 = v325;
  sub_1D669BE18(&v312);
LABEL_16:
  sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v341, sub_1D669C0D4);
}

uint64_t sub_1D6503ED0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x726F7463656C6573;
    v7 = 0x656C65536C6C6563;
    v8 = 0x697463416C6C6563;
    if (a1 != 3)
    {
      v8 = 0x426F547370696C63;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    v2 = 1885433183;
    if (a1 == 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0x7261507375636F66;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D650406C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669C71C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D65040A4(uint64_t a1)
{
  v2 = sub_1D669C02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65040E0(uint64_t a1)
{
  v2 = sub_1D669C02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNodeSwipeActionStyle.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5115D78;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D669C28C();
    v26 = 0uLL;
    sub_1D726431C();
    if (v25 > 1u)
    {
      if (v25 == 2)
      {
        (*(v11 + 8))(v15, v5);
        v24 = xmmword_1D7297410;
      }

      else
      {
        v25 = xmmword_1D7279980;
        sub_1D630BCE0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = v26;
      }
    }

    else if (v25)
    {
      (*(v11 + 8))(v15, v5);
      v24 = xmmword_1D728CF30;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0uLL;
    }

    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatItemNodeSwipeActionStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v39 = v1[1];
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatItemNodeSwipeActionStyle, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatItemNodeSwipeActionStyle, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v25, v22, v26, &off_1F51F6B98);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE98);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6419EE4(1, v14);
      v30 = v14;
    }

    else if (v23 == 2)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCE98);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6419EE4(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE98);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638AEA0(3, v23, v39, v6);
      v30 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE98);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419EE4(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65049A0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6504A74(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6504B34(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6504C04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D66646D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6504C34(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64656C6261736964;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  if (*v1 != 2)
  {
    v5 = 0x6F69736E656D6964;
    v4 = 0xE90000000000006ELL;
  }

  if (*v1)
  {
    v3 = 0x65736E65646E6F63;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D6504D74()
{
  v1 = 0x57616572416E696DLL;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69536E6F74747562;
  }
}

uint64_t sub_1D6504DD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669CABC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6504E0C(uint64_t a1)
{
  v2 = sub_1D666ED04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6504E48(uint64_t a1)
{
  v2 = sub_1D666ED04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemTrait.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v290 = &v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v289 = &v240 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v288 = &v240 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v287 = &v240 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v286 = &v240 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v285 = &v240 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v284 = &v240 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v283 = &v240 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v282 = &v240 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v281 = &v240 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v280 = &v240 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v279 = &v240 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v278 = &v240 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v277 = &v240 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v276 = &v240 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v275 = &v240 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v274 = &v240 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v273 = &v240 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v272 = &v240 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v271 = &v240 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v270 = &v240 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v269 = &v240 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v268 = &v240 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v267 = &v240 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v266 = &v240 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v265 = &v240 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v264 = &v240 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v263 = &v240 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v262 = &v240 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v261 = &v240 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v260 = &v240 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v259 = &v240 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v258 = &v240 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v256 = &v240 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v254 = &v240 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v253 = &v240 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v257 = &v240 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v255 = &v240 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v252 = &v240 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v251 = &v240 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v250 = &v240 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v249 = &v240 - v128;
  MEMORY[0x1EEE9AC00](v129, v130);
  v248 = &v240 - v131;
  MEMORY[0x1EEE9AC00](v132, v133);
  v247 = &v240 - v134;
  MEMORY[0x1EEE9AC00](v135, v136);
  v246 = &v240 - v137;
  MEMORY[0x1EEE9AC00](v138, v139);
  v245 = &v240 - v140;
  MEMORY[0x1EEE9AC00](v141, v142);
  v244 = &v240 - v143;
  MEMORY[0x1EEE9AC00](v144, v145);
  v243 = &v240 - v146;
  MEMORY[0x1EEE9AC00](v147, v148);
  v242 = &v240 - v149;
  MEMORY[0x1EEE9AC00](v150, v151);
  v241 = &v240 - v152;
  MEMORY[0x1EEE9AC00](v153, v154);
  v156 = &v240 - v155;
  v291 = *v1;
  v292 = a1;
  v157 = a1[3];
  v158 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v157);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v159 = sub_1D725BD1C();
  v160 = __swift_project_value_buffer(v159, qword_1EDFFCD30);
  v161 = *(*(v159 - 8) + 16);
  v161(v156, v160, v159);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v162 = v293;
  sub_1D5D2BEC4(v156, sub_1D5B4AA6C, 0, v157, v158);
  if (v162)
  {
    return sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
  v164 = v292[3];
  v165 = v292[4];
  __swift_project_boxed_opaque_existential_1(v292, v164);
  v166 = v159;
  switch(v291)
  {
    case 1:
      v167 = v242;
      v161(v242, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 2:
      v167 = v243;
      v161(v243, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 3:
      v167 = v244;
      v161(v244, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 4:
      v167 = v245;
      v161(v245, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 5:
      v167 = v246;
      v161(v246, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 6:
      v167 = v247;
      v161(v247, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 7:
      v167 = v248;
      v161(v248, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 8:
      v167 = v249;
      v161(v249, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 9:
      v167 = v250;
      v161(v250, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 10:
      v167 = v251;
      v161(v251, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 11:
      v167 = v252;
      v161(v252, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 12:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v193 = v166;
      v194 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v255;
      v161(v255, v194, v193);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 13:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v209 = v166;
      v210 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v257;
      v161(v257, v210, v209);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 14:
      v167 = v253;
      v161(v253, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 15:
      v167 = v254;
      v161(v254, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 16:
      v167 = v256;
      v161(v256, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 17:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v201 = v166;
      v202 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v258;
      v161(v258, v202, v201);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 18:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v211 = v166;
      v212 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v259;
      v161(v259, v212, v211);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 19:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v223 = v166;
      v224 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v260;
      v161(v260, v224, v223);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 20:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v205 = v166;
      v206 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v261;
      v161(v261, v206, v205);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 21:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v207 = v166;
      v208 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v262;
      v161(v262, v208, v207);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 22:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v219 = v166;
      v220 = __swift_project_value_buffer(v166, qword_1EDFFCD00);
      v167 = v263;
      v161(v263, v220, v219);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 23:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v227 = v166;
      v228 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v264;
      v161(v264, v228, v227);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 24:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v197 = v166;
      v198 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v265;
      v161(v265, v198, v197);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 25:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v195 = v166;
      v196 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v266;
      v161(v266, v196, v195);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 26:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v235 = v166;
      v236 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v267;
      v161(v267, v236, v235);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 27:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v178 = v166;
      v179 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v268;
      v161(v268, v179, v178);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 28:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v229 = v166;
      v230 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v269;
      v161(v269, v230, v229);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 29:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v231 = v166;
      v232 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v270;
      v161(v270, v232, v231);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 30:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v213 = v166;
      v214 = __swift_project_value_buffer(v166, qword_1EDFFCD80);
      v167 = v271;
      v161(v271, v214, v213);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 31:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v199 = v166;
      v200 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v272;
      v161(v272, v200, v199);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 32:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v215 = v166;
      v216 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v273;
      v161(v273, v216, v215);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 33:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v184 = v166;
      v185 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v274;
      v161(v274, v185, v184);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 34:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v180 = v166;
      v181 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v275;
      v161(v275, v181, v180);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 35:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v174 = v166;
      v175 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v276;
      v161(v276, v175, v174);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 36:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v176 = v166;
      v177 = __swift_project_value_buffer(v166, qword_1EDFFCD80);
      v167 = v277;
      v161(v277, v177, v176);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 37:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v170 = v166;
      v171 = __swift_project_value_buffer(v166, qword_1EDFFCD80);
      v167 = v278;
      v161(v278, v171, v170);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 38:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v233 = v166;
      v234 = __swift_project_value_buffer(v166, qword_1EDFFCD80);
      v167 = v279;
      v161(v279, v234, v233);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 39:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v221 = v166;
      v222 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v280;
      v161(v280, v222, v221);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 40:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v191 = v166;
      v192 = __swift_project_value_buffer(v166, qword_1EDFFCCA8);
      v167 = v281;
      v161(v281, v192, v191);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 41:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v203 = v166;
      v204 = __swift_project_value_buffer(v166, qword_1EDFFCCA8);
      v167 = v282;
      v161(v282, v204, v203);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 42:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v225 = v166;
      v226 = __swift_project_value_buffer(v166, qword_1EDFFCCA8);
      v167 = v283;
      v161(v283, v226, v225);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 43:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v168 = v166;
      v169 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v284;
      v161(v284, v169, v168);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 44:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v182 = v166;
      v183 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v285;
      v161(v285, v183, v182);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 45:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v217 = v166;
      v218 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v286;
      v161(v286, v218, v217);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 46:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v237 = v166;
      v238 = __swift_project_value_buffer(v166, qword_1EDFFCCA8);
      v167 = v287;
      v161(v287, v238, v237);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 47:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v172 = v166;
      v173 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v288;
      v161(v288, v173, v172);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 48:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v186 = v166;
      v187 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v289;
      v161(v289, v187, v186);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 49:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v188 = v166;
      v189 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v190 = v290;
      v161(v290, v189, v188);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v190, sub_1D5B4AA6C, 0, v164, v165);
      v239 = v190;
      goto LABEL_127;
    default:
      v167 = v241;
      v161(v241, v160, v166);
      swift_storeEnumTagMultiPayload();
LABEL_126:
      sub_1D5D2BEC4(v167, sub_1D5B4AA6C, 0, v164, v165);
      v239 = v167;
LABEL_127:
      sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v292, v292[3]);
      sub_1D7264B3C();
      v295 = v291;
      FormatItemTrait.rawValue.getter();
      __swift_mutable_project_boxed_opaque_existential_1(v294, v294[3]);
      sub_1D726473C();

      result = __swift_destroy_boxed_opaque_existential_1(v294);
      break;
  }

  return result;
}

uint64_t FormatJsonConfig.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D669CFF8(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5E1B248(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF256B8, sub_1D5E1B248, &unk_1D7321584);
  sub_1D5D2EE70(v4, v17, v19, v14, v4, v17, &type metadata for FormatVersions.SydroF, v15, v13, v18, &off_1F51F6C58);
  swift_beginAccess();
  v20 = v2[2];
  v21 = qword_1EDF31ED8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD68);
  (*(*(v22 - 8) + 16))(v8, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v20 + 16))
  {
    goto LABEL_9;
  }

  v24 = &v13[*(v10 + 44)];
  v26 = *v24;
  v25 = *(v24 + 1);
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v26;
  *(v27 + 48) = v25;
  sub_1D5E1B20C(0);
  sub_1D5B58B84(&qword_1EDF03768, sub_1D5E1B20C, MEMORY[0x1E69E6F60]);

  v28 = sub_1D72647CC();
  v45 = 0;
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = v28;
  *(v29 + 40) = v45;
  v30 = &v13[*(v10 + 36)];
  v31 = *(v30 + 3);
  v32 = *(v30 + 4);
  v33 = __swift_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  *(&v44 - 4) = sub_1D5B4AA6C;
  *(&v44 - 3) = 0;
  v42 = sub_1D669D08C;
  v43 = v27;
  v37 = v44;
  v39 = sub_1D5D2F7A4(v8, sub_1D615B49C, v38, sub_1D615B4A4, (&v44 - 6), v31, v32);
  if (!v37)
  {
    v40 = v39;

    if (v40)
    {
      sub_1D5E08360(v20, v13, 0, 0, 0);
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_10:
  sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v13, sub_1D669CFF8);
}

uint64_t sub_1D65074BC()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 1937335659;
  }
}

void sub_1D65074E0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1937335659 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D65075CC(uint64_t a1)
{
  v2 = sub_1D5E1B320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6507608(uint64_t a1)
{
  v2 = sub_1D5E1B320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatJsonConfigKey.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD68);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v27;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v27);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t FormatLayeredMediaFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v27;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5115DC8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D669D108();
    v25 = 0uLL;
    sub_1D726431C();
    v24 = xmmword_1D7279980;
    sub_1D669D15C();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v26;
    *v14 = v25;
    *(v14 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaFilter.Monochrome.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D669D1B0(0);
  v7 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D669D244(0);
  sub_1D5B58B84(&qword_1EDF25108, sub_1D669D244, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v31;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = v7;
      v19 = v13;
      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D661E3A4();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v10, v18);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v32 = 0uLL;
  v33 = 0;
  sub_1D726427C();
  v17 = v34;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  sub_1D5C35218();
  sub_1D726427C();
  v24 = v7;
  v25 = v13;
  v26 = v34;
  v32 = xmmword_1D7297410;
  v33 = 0;
  sub_1D726427C();
  (*(v25 + 8))(v10, v24);
  v28 = v34;
  v29 = v30;
  *v30 = v17;
  v29[1] = v26;
  v29[2] = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaFilter.Monochrome.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v115 = v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v114 = v105 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v105 - v12;
  sub_1D669D3C4(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v113 = v1[1];
  v111 = v1[2];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D669D244(0);
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF25108, sub_1D669D244, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaFilter.Monochrome, v23, v25, v20, &type metadata for FormatLayeredMediaFilter.Monochrome, v23, &type metadata for FormatVersions.StarSkyC, v21, v18, v24, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD00);
  v28 = *(v26 - 8);
  v118 = *(v28 + 16);
  v119 = v27;
  v117 = v28 + 16;
  v118(v13);
  v116 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v123 = 0uLL;
  v124 = 0;
  v29 = &v18[*(v15 + 44)];
  v31 = *v29;
  v30 = *(v29 + 1);
  LOBYTE(v125) = 0;
  v32 = swift_allocObject();
  v34 = v32;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v125;
  *(v32 + 40) = v31;
  *(v32 + 48) = v30;
  v121 = v18;
  *&v120 = v2;
  v112 = v15;
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v110 = v26;
    v107 = v105;
    v125 = v19;
    MEMORY[0x1EEE9AC00](v32, v33);
    v106 = &v105[-6];
    v105[-4] = sub_1D5B4AA6C;
    v105[-3] = 0;
    v103 = sub_1D6708AB0;
    v104 = v34;
    v122 = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v122;
    *(v48 + 40) = v31;
    *(v48 + 48) = v30;
    swift_retain_n();
    sub_1D5CFCFAC(v19);
    sub_1D669D458(0);
    v50 = v49;
    v51 = sub_1D5B58B84(&qword_1EDF03098, sub_1D669D458, MEMORY[0x1E69E6F60]);
    v108 = v30;
    v105[1] = v50;
    v52 = sub_1D72647CC();
    v122 = 0;
    v53 = swift_allocObject();
    v109 = v31;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0;
    *(v53 + 16) = v52;
    *(v53 + 40) = v122;
    v54 = &v18[*(v15 + 36)];
    v55 = *(v54 + 3);
    v56 = *(v54 + 4);
    v57 = __swift_project_boxed_opaque_existential_1(v54, v55);
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    v61 = v106;
    v105[-4] = sub_1D615B4A4;
    v105[-3] = v61;
    v103 = sub_1D6708AB0;
    v104 = v48;
    v62 = v120;
    v64 = sub_1D5D2F7A4(v13, sub_1D615B49C, v63, sub_1D615B4A4, &v105[-6], v55, v56);
    if (v62)
    {

      v65 = v13;
      goto LABEL_14;
    }

    v98 = v64;
    *&v120 = v51;
    v99 = v109;

    if (v98)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v36 = v114;
      v26 = v110;
      v31 = v99;
      *&v120 = 0;

      v30 = v108;
    }

    else
    {
      *&v120 = 0;

      v36 = v114;
      v30 = v108;
      v31 = v99;
      v26 = v110;
    }

    v35 = v115;
  }

  else
  {

    v35 = v115;
    v36 = v114;
  }

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  (v118)(v36, v119, v26);
  swift_storeEnumTagMultiPayload();
  v114 = xmmword_1D728CF30;
  v123 = xmmword_1D728CF30;
  v124 = 0;
  LOBYTE(v125) = 0;
  v37 = swift_allocObject();
  v39 = v37;
  *(v37 + 16) = v114;
  *(v37 + 32) = v125;
  *(v37 + 40) = v31;
  *(v37 + 48) = v30;
  v40 = v113;
  if ((~v113 & 0xF000000000000007) == 0)
  {
    v41 = v31;

    v42 = v120;
    v43 = v111;
    goto LABEL_7;
  }

  v110 = v26;
  v107 = v105;
  v125 = v113;
  MEMORY[0x1EEE9AC00](v37, v38);
  v105[-4] = sub_1D5B4AA6C;
  v105[-3] = 0;
  v103 = sub_1D6708AB0;
  v104 = v39;
  v122 = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v114;
  *(v66 + 32) = v122;
  *(v66 + 40) = v31;
  *(v66 + 48) = v30;
  swift_retain_n();
  sub_1D5D04BD4(v40);
  sub_1D669D458(0);
  v68 = v67;
  sub_1D5B58B84(&qword_1EDF03098, sub_1D669D458, MEMORY[0x1E69E6F60]);
  v108 = v30;
  v69 = v121;
  v113 = v68;
  v70 = sub_1D72647CC();
  v122 = 0;
  v71 = swift_allocObject();
  v109 = v31;
  *(v71 + 16) = v70;
  *(v71 + 24) = v114;
  *(v71 + 40) = v122;
  v72 = &v69[*(v112 + 36)];
  v73 = *(v72 + 3);
  v74 = *(v72 + 4);
  v75 = __swift_project_boxed_opaque_existential_1(v72, v73);
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v105[-4] = sub_1D615B4A4;
  v105[-3] = &v105[-6];
  v103 = sub_1D6708AB0;
  v104 = v66;
  v79 = v120;
  v81 = sub_1D5D2F7A4(v36, sub_1D615B49C, v80, sub_1D615B4A4, &v105[-6], v73, v74);
  v42 = v79;
  if (!v79)
  {
    v100 = v81;
    v41 = v109;

    v43 = v111;
    if (v100)
    {
      sub_1D5C3526C();
      sub_1D72647EC();
      v26 = v110;

      v30 = v108;
    }

    else
    {

      v30 = v108;
      v26 = v110;
    }

    v35 = v115;
LABEL_7:
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
    (v118)(v35, v119, v26);
    swift_storeEnumTagMultiPayload();
    v120 = xmmword_1D7297410;
    v123 = xmmword_1D7297410;
    v124 = 0;
    LOBYTE(v125) = 0;
    v44 = swift_allocObject();
    v46 = v44;
    *(v44 + 16) = v120;
    *(v44 + 32) = v125;
    *(v44 + 40) = v41;
    *(v44 + 48) = v30;
    if ((~v43 & 0xF000000000000007) == 0)
    {

LABEL_9:

      v47 = v121;
LABEL_27:
      sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
      v82 = v47;
      return sub_1D5D2CFE8(v82, sub_1D669D3C4);
    }

    v119 = v105;
    v125 = v43;
    MEMORY[0x1EEE9AC00](v44, v45);
    v105[-4] = sub_1D5B4AA6C;
    v105[-3] = 0;
    v103 = sub_1D6708AB0;
    v104 = v46;
    v122 = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v120;
    *(v83 + 32) = v122;
    *(v83 + 40) = v41;
    *(v83 + 48) = v30;
    swift_retain_n();
    sub_1D5D04BD4(v43);
    sub_1D669D458(0);
    v85 = v84;
    sub_1D5B58B84(&qword_1EDF03098, sub_1D669D458, MEMORY[0x1E69E6F60]);
    v86 = v121;
    v118 = v85;
    v87 = sub_1D72647CC();
    v122 = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v120;
    *(v88 + 40) = v122;
    v89 = &v86[*(v112 + 36)];
    v90 = *(v89 + 3);
    v91 = *(v89 + 4);
    v92 = __swift_project_boxed_opaque_existential_1(v89, v90);
    MEMORY[0x1EEE9AC00](v92, v93);
    MEMORY[0x1EEE9AC00](v94, v95);
    v105[-4] = sub_1D615B4A4;
    v105[-3] = &v105[-6];
    v35 = v115;
    v103 = sub_1D669D4EC;
    v104 = v83;
    v97 = sub_1D5D2F7A4(v115, sub_1D615B49C, v96, sub_1D615B4A4, &v105[-6], v90, v91);
    if (v42)
    {

      v47 = v121;
    }

    else
    {
      v101 = v97;

      if ((v101 & 1) == 0)
      {

        goto LABEL_9;
      }

      sub_1D5C3526C();
      v47 = v121;
      sub_1D72647EC();
    }

    goto LABEL_27;
  }

  v65 = v36;
LABEL_14:
  sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
  v82 = v121;
  return sub_1D5D2CFE8(v82, sub_1D669D3C4);
}

unint64_t sub_1D6508FD4()
{
  v1 = 0x726F6C6F63;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x746E756F6D61;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6509044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669D568(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D650907C(uint64_t a1)
{
  v2 = sub_1D669D31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65090B8(uint64_t a1)
{
  v2 = sub_1D669D31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v324 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v328 = &v324 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v329 = &v324 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v331 = &v324 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v330 = &v324 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v332 = &v324 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v333 = &v324 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v334 = &v324 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v335 = &v324 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v337 = &v324 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v338 = &v324 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v339 = &v324 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  *&v349 = &v324 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v324 - v47;
  sub_1D669E6CC(0);
  *&v348 = v49;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v324 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_1D5E1B058(0);
  v56 = v55;
  v57 = sub_1D5B58B84(&qword_1EDF25258, sub_1D5E1B058, &unk_1D7321584);
  sub_1D5D2EE70(v4, v56, v58, v53, v4, v56, &type metadata for FormatVersions.AzdenC, v54, v52, v57, &off_1F51F6BB8);
  swift_beginAccess();
  v60 = v2[2];
  v59 = v2[3];
  v347 = v2;
  v61 = qword_1EDF31EF0;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = sub_1D725BD1C();
  v63 = __swift_project_value_buffer(v62, qword_1EDFFCDB0);
  v64 = *(v62 - 8);
  v65 = *(v64 + 16);
  v66 = v64 + 16;
  v346 = v63;
  v65(v48);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v68 = sub_1D725895C();
  v69 = (*(*(v68 - 8) + 48))(v8, 1, v68);
  v343 = v65;
  v342 = v66;
  v344 = v67;
  if (v69 != 1)
  {
    v345 = v62;
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_9:
    v92 = v349;
    v93 = v348;
    goto LABEL_10;
  }

  v340 = v60;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v70 = v348;
  v71 = &v52[*(v348 + 44)];
  v73 = *v71;
  v72 = *(v71 + 1);
  LOBYTE(v351) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = v351;
  *(v74 + 40) = v73;
  *(v74 + 48) = v72;
  sub_1D5E1B01C(0);
  v76 = v75;
  v77 = sub_1D5B58B84(&qword_1EDF03218, sub_1D5E1B01C, MEMORY[0x1E69E6F60]);

  v341 = v76;
  v336 = v77;
  v78 = sub_1D72647CC();
  LOBYTE(v351) = 0;
  v79 = swift_allocObject();
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 16) = v78;
  *(v79 + 40) = v351;
  v80 = &v52[*(v70 + 36)];
  v81 = *(v80 + 3);
  v82 = *(v80 + 4);
  v83 = __swift_project_boxed_opaque_existential_1(v80, v81);
  MEMORY[0x1EEE9AC00](v83, v84);
  MEMORY[0x1EEE9AC00](v85, v86);
  *(&v324 - 4) = sub_1D5B4AA6C;
  *(&v324 - 3) = 0;
  v322 = sub_1D669E760;
  v323 = v74;
  v87 = v350;
  v89 = sub_1D5D2F7A4(v48, sub_1D615B49C, v88, sub_1D615B4A4, (&v324 - 6), v81, v82);
  *&v350 = v87;
  if (v87)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    v90 = v52;
    return sub_1D5D2CFE8(v90, sub_1D669E6CC);
  }

  v119 = v89;
  v345 = v62;

  if ((v119 & 1) == 0)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v65 = v343;
    goto LABEL_9;
  }

  v351 = 0uLL;
  LOBYTE(v352) = 0;
  v363 = v340;
  v364 = v59;
  v120 = v350;
  sub_1D72647EC();

  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  *&v350 = v120;
  v65 = v343;
  v92 = v349;
  v93 = v348;
  if (v120)
  {
    goto LABEL_6;
  }

LABEL_10:
  v94 = v347[4];
  (v65)(v92, v346, v345);
  swift_storeEnumTagMultiPayload();
  v363 = v94;
  v348 = xmmword_1D728CF30;
  v351 = xmmword_1D728CF30;
  LOBYTE(v352) = 0;
  v95 = &v52[*(v93 + 44)];
  v96 = *v95;
  v97 = *(v95 + 1);
  LOBYTE(v362) = 0;
  v98 = swift_allocObject();
  v341 = &v324;
  *(v98 + 16) = v348;
  *(v98 + 32) = v362;
  *(v98 + 40) = v96;
  *(v98 + 48) = v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v340 = &v324 - 6;
  *(&v324 - 4) = sub_1D5B4AA6C;
  *(&v324 - 3) = 0;
  v322 = sub_1D6708AB4;
  v323 = v100;
  LOBYTE(v362) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = v348;
  *(v101 + 32) = v362;
  v326 = v96;
  *(v101 + 40) = v96;
  *(v101 + 48) = v97;
  sub_1D5E1B01C(0);
  v103 = v102;
  v104 = sub_1D5B58B84(&qword_1EDF03218, sub_1D5E1B01C, MEMORY[0x1E69E6F60]);
  v325 = v97;
  swift_retain_n();
  v336 = v103;
  v327 = v104;
  v105 = sub_1D72647CC();
  LOBYTE(v362) = 0;
  v106 = swift_allocObject();
  *(v106 + 16) = v105;
  *(v106 + 24) = v348;
  *(v106 + 40) = v362;
  v107 = v52;
  v108 = &v52[*(v93 + 36)];
  v109 = *(v108 + 3);
  v110 = *(v108 + 4);
  v111 = __swift_project_boxed_opaque_existential_1(v108, v109);
  MEMORY[0x1EEE9AC00](v111, v112);
  MEMORY[0x1EEE9AC00](v113, v114);
  v115 = v340;
  *(&v324 - 4) = sub_1D615B4A4;
  *(&v324 - 3) = v115;
  v322 = sub_1D6708AB4;
  v323 = v101;
  v116 = v349;
  v117 = v350;
  sub_1D5D2BC70(v349, sub_1D615B49C, v118, sub_1D615B4A4, (&v324 - 6), v109, v110);
  if (!v117)
  {
    *&v348 = v108;

    sub_1D669E7F0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v349, type metadata accessor for FormatVersionRequirement);

    v121 = v347;
    v122 = v347[5];
    v123 = v339;
    v124 = v343;
    (v343)(v339, v346, v345);
    swift_storeEnumTagMultiPayload();
    v350 = xmmword_1D7297410;
    v351 = xmmword_1D7297410;
    LOBYTE(v352) = 0;
    LOBYTE(v363) = 0;
    v125 = swift_allocObject();
    v127 = v125;
    *(v125 + 16) = v350;
    *(v125 + 32) = v363;
    v128 = v326;
    v129 = v325;
    *(v125 + 40) = v326;
    *(v125 + 48) = v129;
    v324 = v107;
    if (v122)
    {
      *&v349 = &v324;
      v363 = v122;
      MEMORY[0x1EEE9AC00](v125, v126);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v127;
      LOBYTE(v362) = 0;
      v130 = swift_allocObject();
      *(v130 + 16) = v350;
      *(v130 + 32) = v362;
      *(v130 + 40) = v128;
      *(v130 + 48) = v129;
      swift_retain_n();

      v131 = sub_1D72647CC();
      LOBYTE(v362) = 0;
      v132 = swift_allocObject();
      *(v132 + 16) = v131;
      *(v132 + 24) = v350;
      *(v132 + 40) = v362;
      v133 = *(v348 + 24);
      v134 = *(v348 + 32);
      v135 = __swift_project_boxed_opaque_existential_1(v348, v133);
      MEMORY[0x1EEE9AC00](v135, v136);
      MEMORY[0x1EEE9AC00](v137, v138);
      *(&v324 - 4) = sub_1D615B4A4;
      *(&v324 - 3) = (&v324 - 6);
      v322 = sub_1D6708AB4;
      v323 = v130;
      v140 = sub_1D5D2F7A4(v123, sub_1D615B49C, v139, sub_1D615B4A4, (&v324 - 6), v133, v134);

      if (v140)
      {
        type metadata accessor for FormatLayeredMediaNodeStyle();
        sub_1D5B58B84(&qword_1EDF0AFD8, type metadata accessor for FormatLayeredMediaNodeStyle, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
        sub_1D72647EC();
        v121 = v347;
        v124 = v343;
        v129 = v325;
        v128 = v326;
      }

      else
      {

        v121 = v347;
        v124 = v343;
        v129 = v325;
        v128 = v326;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v339, type metadata accessor for FormatVersionRequirement);
    v141 = v121[6];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v142 = __swift_project_value_buffer(v345, qword_1EDFFCD50);
    v143 = v338;
    v341 = v142;
    v124(v338);
    swift_storeEnumTagMultiPayload();
    v350 = xmmword_1D72BAA60;
    v351 = xmmword_1D72BAA60;
    LOBYTE(v352) = 0;
    LOBYTE(v363) = 0;
    v144 = swift_allocObject();
    v146 = v144;
    *(v144 + 16) = v350;
    *(v144 + 32) = v363;
    *(v144 + 40) = v128;
    *(v144 + 48) = v129;
    if (v141)
    {
      *&v349 = &v324;
      v363 = v141;
      MEMORY[0x1EEE9AC00](v144, v145);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v146;
      LOBYTE(v362) = 0;
      v147 = swift_allocObject();
      *(v147 + 16) = v350;
      *(v147 + 32) = v362;
      *(v147 + 40) = v128;
      *(v147 + 48) = v129;
      swift_retain_n();

      v148 = sub_1D72647CC();
      LOBYTE(v362) = 0;
      v149 = swift_allocObject();
      *(v149 + 16) = v148;
      *(v149 + 24) = v350;
      *(v149 + 40) = v362;
      v150 = *(v348 + 24);
      v151 = *(v348 + 32);
      v152 = __swift_project_boxed_opaque_existential_1(v348, v150);
      MEMORY[0x1EEE9AC00](v152, v153);
      MEMORY[0x1EEE9AC00](v154, v155);
      *(&v324 - 4) = sub_1D615B4A4;
      *(&v324 - 3) = (&v324 - 6);
      v322 = sub_1D6708AB4;
      v323 = v147;
      v157 = sub_1D5D2F7A4(v143, sub_1D615B49C, v156, sub_1D615B4A4, (&v324 - 6), v150, v151);
      v160 = v157;

      if (v160)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
        sub_1D72647EC();
        v121 = v347;
        v124 = v343;
        v159 = v346;
        v128 = v326;

        v158 = v325;
      }

      else
      {

        v121 = v347;
        v124 = v343;
        v159 = v346;
        v158 = v325;
        v128 = v326;
      }
    }

    else
    {

      v158 = v129;
      v159 = v346;
    }

    sub_1D5D2CFE8(v338, type metadata accessor for FormatVersionRequirement);
    v161 = v121[7];
    v162 = v337;
    (v124)(v337, v159, v345);
    swift_storeEnumTagMultiPayload();
    v363 = v161;
    v350 = xmmword_1D72BAA70;
    v351 = xmmword_1D72BAA70;
    LOBYTE(v352) = 0;
    LOBYTE(v362) = 0;
    v163 = swift_allocObject();
    *&v349 = &v324;
    *(v163 + 16) = v350;
    *(v163 + 32) = v362;
    *(v163 + 40) = v128;
    *(v163 + 48) = v158;
    MEMORY[0x1EEE9AC00](v163, v164);
    *(&v324 - 4) = sub_1D5B4AA6C;
    *(&v324 - 3) = 0;
    v322 = sub_1D6708AB4;
    v323 = v165;
    LOBYTE(v362) = 0;
    v166 = swift_allocObject();
    *(v166 + 16) = v350;
    *(v166 + 32) = v362;
    *(v166 + 40) = v128;
    *(v166 + 48) = v158;
    swift_retain_n();
    v167 = sub_1D72647CC();
    LOBYTE(v362) = 0;
    v168 = swift_allocObject();
    *(v168 + 16) = v167;
    *(v168 + 24) = v350;
    *(v168 + 40) = v362;
    v169 = *(v348 + 24);
    v170 = *(v348 + 32);
    v171 = __swift_project_boxed_opaque_existential_1(v348, v169);
    MEMORY[0x1EEE9AC00](v171, v172);
    MEMORY[0x1EEE9AC00](v173, v174);
    *(&v324 - 4) = sub_1D615B4A4;
    *(&v324 - 3) = (&v324 - 6);
    v322 = sub_1D6708AB4;
    v323 = v166;
    sub_1D5D2BC70(v162, sub_1D615B49C, v175, sub_1D615B4A4, (&v324 - 6), v169, v170);

    sub_1D5CA1E90();
    sub_1D72647EC();
    sub_1D5D2CFE8(v337, type metadata accessor for FormatVersionRequirement);

    v176 = v347;
    v177 = v347[8];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v178 = v345;
    v179 = __swift_project_value_buffer(v345, qword_1EDFFCD68);
    v180 = v335;
    v181 = v343;
    (v343)(v335, v179, v178);
    swift_storeEnumTagMultiPayload();
    v350 = xmmword_1D72BAA80;
    v351 = xmmword_1D72BAA80;
    LOBYTE(v352) = 0;
    LOBYTE(v363) = 0;
    v183 = swift_allocObject();
    *(v183 + 16) = v350;
    *(v183 + 32) = v363;
    v184 = v326;
    *(v183 + 40) = v326;
    v185 = v325;
    *(v183 + 48) = v325;
    if (v177)
    {
      v186 = v185;
      *&v349 = &v324;
      v363 = v177;
      MEMORY[0x1EEE9AC00](v185, v182);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v183;
      LOBYTE(v362) = 0;
      v187 = swift_allocObject();
      *(v187 + 16) = v350;
      *(v187 + 32) = v362;
      *(v187 + 40) = v184;
      *(v187 + 48) = v186;
      swift_retain_n();

      v188 = sub_1D72647CC();
      LOBYTE(v362) = 0;
      v189 = swift_allocObject();
      *(v189 + 16) = v188;
      *(v189 + 24) = v350;
      *(v189 + 40) = v362;
      v190 = v348;
      v191 = *(v348 + 24);
      v192 = *(v348 + 32);
      v193 = __swift_project_boxed_opaque_existential_1(v348, v191);
      MEMORY[0x1EEE9AC00](v193, v194);
      MEMORY[0x1EEE9AC00](v195, v196);
      *(&v324 - 4) = sub_1D615B4A4;
      *(&v324 - 3) = (&v324 - 6);
      v322 = sub_1D6708AB4;
      v323 = v187;
      v198 = sub_1D5D2F7A4(v180, sub_1D615B49C, v197, sub_1D615B4A4, (&v324 - 6), v191, v192);
      v199 = v198;

      if (v199)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v176 = v347;
        v181 = v343;
      }

      else
      {

        v176 = v347;
        v181 = v343;
      }
    }

    else
    {

      v190 = v348;
    }

    sub_1D5D2CFE8(v335, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v200 = v176[9];
    v201 = v334;
    v181(v334, v346, v345);
    swift_storeEnumTagMultiPayload();
    if (*(v200 + 16))
    {
      LOBYTE(v351) = 0;
      v202 = swift_allocObject();
      v350 = xmmword_1D72BAA90;
      *(v202 + 16) = xmmword_1D72BAA90;
      *(v202 + 32) = v351;
      *(v202 + 40) = v326;
      *(v202 + 48) = v325;

      v203 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v204 = swift_allocObject();
      *(v204 + 16) = v203;
      *(v204 + 24) = v350;
      *(v204 + 40) = v351;
      v206 = v190[3];
      v205 = v190[4];
      v207 = __swift_project_boxed_opaque_existential_1(v190, v206);
      *&v349 = &v324;
      MEMORY[0x1EEE9AC00](v207, v208);
      MEMORY[0x1EEE9AC00](v209, v210);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v202;
      v212 = sub_1D5D2F7A4(v201, sub_1D615B49C, v211, sub_1D615B4A4, (&v324 - 6), v206, v205);
      v213 = v212;

      if (v213)
      {
        v351 = v350;
        LOBYTE(v352) = 0;
        v362 = v200;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v214 = v334;

        sub_1D5D2CFE8(v214, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v334, type metadata accessor for FormatVersionRequirement);
      }

      v176 = v347;
    }

    else
    {
      sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v215 = v176[10];
    v216 = v333;
    (v343)(v333, v346, v345);
    swift_storeEnumTagMultiPayload();
    if (v215)
    {
      LOBYTE(v351) = 0;
      v217 = v216;
      v218 = swift_allocObject();
      v350 = xmmword_1D72BAAA0;
      *(v218 + 16) = xmmword_1D72BAAA0;
      *(v218 + 32) = v351;
      *(v218 + 40) = v326;
      *(v218 + 48) = v325;

      v219 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v220 = swift_allocObject();
      *(v220 + 16) = v219;
      *(v220 + 24) = v350;
      *(v220 + 40) = v351;
      v222 = v190[3];
      v221 = v190[4];
      v223 = __swift_project_boxed_opaque_existential_1(v190, v222);
      *&v349 = &v324;
      MEMORY[0x1EEE9AC00](v223, v224);
      MEMORY[0x1EEE9AC00](v225, v226);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v218;
      v228 = sub_1D5D2F7A4(v217, sub_1D615B49C, v227, sub_1D615B4A4, (&v324 - 6), v222, v221);
      v230 = v228;

      if (v230)
      {
        v351 = v350;
        LOBYTE(v352) = 0;
        v361 = v215;
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v333, type metadata accessor for FormatVersionRequirement);
      v176 = v347;
      v229 = v343;
    }

    else
    {
      sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
      v229 = v343;
    }

    swift_beginAccess();
    v231 = v176[11];
    v232 = v332;
    v229(v332, v341, v345);
    swift_storeEnumTagMultiPayload();
    if (v231 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v351) = 0;
      v233 = swift_allocObject();
      v350 = xmmword_1D72BAAB0;
      *(v233 + 16) = xmmword_1D72BAAB0;
      *(v233 + 32) = v351;
      *(v233 + 40) = v326;
      *(v233 + 48) = v325;

      sub_1D5EB1500(v231);
      v234 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v235 = swift_allocObject();
      *(v235 + 16) = v234;
      *(v235 + 24) = v350;
      *(v235 + 40) = v351;
      v236 = v190[3];
      v237 = v190[4];
      v238 = __swift_project_boxed_opaque_existential_1(v190, v236);
      MEMORY[0x1EEE9AC00](v238, v239);
      MEMORY[0x1EEE9AC00](v240, v241);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v233;
      v243 = sub_1D5D2F7A4(v232, sub_1D615B49C, v242, sub_1D615B4A4, (&v324 - 6), v236, v237);

      if (v243)
      {
        v351 = v350;
        LOBYTE(v352) = 0;
        v360 = v231;
        sub_1D5DF6A60();
        sub_1D72647EC();
        sub_1D5EB15C4(v360);
        sub_1D5D2CFE8(v332, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5EB15C4(v231);
        sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
      }

      v176 = v347;
      v229 = v343;
    }

    swift_beginAccess();
    v244 = *(v176 + 96);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v245 = v345;
    v246 = __swift_project_value_buffer(v345, qword_1EDFFCD00);
    v247 = v330;
    v229(v330, v246, v245);
    swift_storeEnumTagMultiPayload();
    if (v244)
    {
      sub_1D5D2CFE8(v247, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v351) = 0;
      v248 = swift_allocObject();
      v350 = xmmword_1D72BAAC0;
      *(v248 + 16) = xmmword_1D72BAAC0;
      *(v248 + 32) = v351;
      *(v248 + 40) = v326;
      *(v248 + 48) = v325;

      v249 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v250 = swift_allocObject();
      *(v250 + 16) = v249;
      *(v250 + 24) = v350;
      *(v250 + 40) = v351;
      v252 = *(v348 + 24);
      v251 = *(v348 + 32);
      v253 = __swift_project_boxed_opaque_existential_1(v348, v252);
      MEMORY[0x1EEE9AC00](v253, v254);
      MEMORY[0x1EEE9AC00](v255, v256);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v248;
      sub_1D5D2F7A4(v247, sub_1D615B49C, v257, sub_1D615B4A4, (&v324 - 6), v252, v251);

      v351 = v350;
      LOBYTE(v352) = 0;
      LOBYTE(v358) = 0;
      sub_1D72647EC();
      sub_1D5D2CFE8(v330, type metadata accessor for FormatVersionRequirement);
      v176 = v347;
      v229 = v343;
    }

    v258 = v176[13];
    v259 = *(v176 + 112);
    v229(v331, v346, v345);
    swift_storeEnumTagMultiPayload();
    v350 = xmmword_1D72BAAD0;
    v351 = xmmword_1D72BAAD0;
    LOBYTE(v352) = 0;
    LOBYTE(v358) = 0;
    v261 = swift_allocObject();
    *(v261 + 16) = v350;
    *(v261 + 32) = v358;
    *(v261 + 40) = v326;
    v262 = v325;
    *(v261 + 48) = v325;
    if (v259 <= 0xFD)
    {
      v263 = v262;
      v358 = v258;
      v359 = v259;
      MEMORY[0x1EEE9AC00](v262, v260);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v261;
      LOBYTE(v356) = 0;
      v264 = swift_allocObject();
      *(v264 + 16) = v350;
      *(v264 + 32) = v356;
      *(v264 + 40) = v326;
      *(v264 + 48) = v263;
      swift_retain_n();
      v265 = sub_1D72647CC();
      LOBYTE(v356) = 0;
      v266 = swift_allocObject();
      *(v266 + 16) = v265;
      *(v266 + 24) = v350;
      *(v266 + 40) = v356;
      v267 = *(v348 + 24);
      v268 = *(v348 + 32);
      v269 = __swift_project_boxed_opaque_existential_1(v348, v267);
      MEMORY[0x1EEE9AC00](v269, v270);
      MEMORY[0x1EEE9AC00](v271, v272);
      *(&v324 - 4) = sub_1D615B4A4;
      *(&v324 - 3) = (&v324 - 6);
      v322 = sub_1D6708AB4;
      v323 = v264;
      v274 = sub_1D5D2F7A4(v331, sub_1D615B49C, v273, sub_1D615B4A4, (&v324 - 6), v267, v268);
      *&v350 = 0;
      LOBYTE(v267) = v274;

      if (v267)
      {
        sub_1D5F8F434();
        v275 = v350;
        sub_1D72647EC();
        *&v350 = v275;
        if (v275)
        {
          v276 = &v358;
          goto LABEL_83;
        }
      }

      v176 = v347;
      v229 = v343;
    }

    else
    {
      *&v350 = 0;
    }

    sub_1D5D2CFE8(v331, type metadata accessor for FormatVersionRequirement);

    swift_beginAccess();
    v277 = v176[15];
    v278 = v329;
    v229(v329, v346, v345);
    swift_storeEnumTagMultiPayload();
    if (*(v277 + 16))
    {
      LOBYTE(v351) = 0;
      v279 = swift_allocObject();
      v349 = xmmword_1D72BAAE0;
      *(v279 + 16) = xmmword_1D72BAAE0;
      *(v279 + 32) = v351;
      *(v279 + 40) = v326;
      *(v279 + 48) = v325;

      v280 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v281 = swift_allocObject();
      *(v281 + 16) = v280;
      *(v281 + 24) = v349;
      *(v281 + 40) = v351;
      v282 = *(v348 + 24);
      v283 = *(v348 + 32);
      v284 = __swift_project_boxed_opaque_existential_1(v348, v282);
      MEMORY[0x1EEE9AC00](v284, v285);
      MEMORY[0x1EEE9AC00](v286, v287);
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v279;
      v288 = v350;
      v290 = sub_1D5D2F7A4(v278, sub_1D615B49C, v289, sub_1D615B4A4, (&v324 - 6), v282, v283);
      *&v350 = v288;
      if (v288)
      {

LABEL_72:
        v291 = (&v356 + 8);
LABEL_88:
        sub_1D5D2CFE8(*(v291 - 32), type metadata accessor for FormatVersionRequirement);
        goto LABEL_89;
      }

      v292 = v290;

      if (v292)
      {
        v293 = v350;
        sub_1D5E07754(v277, v324, 0xB, 0, 0);
        *&v350 = v293;
        if (v293)
        {

          goto LABEL_72;
        }
      }

      v176 = v347;
      v278 = v329;
    }

    sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);
    v294 = v176[16];
    v295 = v176[17];
    v296 = v176[18];
    v297 = v176[19];
    v298 = v176[20];
    v299 = v176[21];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v300 = v345;
    v301 = __swift_project_value_buffer(v345, qword_1EDFFCE38);
    (v343)(v328, v301, v300);
    swift_storeEnumTagMultiPayload();
    v349 = xmmword_1D72BAAF0;
    v356 = xmmword_1D72BAAF0;
    v357 = 0;
    LOBYTE(v351) = 0;
    v302 = swift_allocObject();
    v304 = v302;
    *(v302 + 16) = v349;
    *(v302 + 32) = v351;
    v305 = v325;
    *(v302 + 40) = v326;
    *(v302 + 48) = v305;
    if (v294)
    {
      v347 = &v324;
      *&v351 = v294;
      *(&v351 + 1) = v295;
      v352 = v296;
      v353 = v297;
      v354 = v298;
      v355 = v299;
      MEMORY[0x1EEE9AC00](v302, v303);
      v346 = &v324 - 6;
      *(&v324 - 4) = sub_1D5B4AA6C;
      *(&v324 - 3) = 0;
      v322 = sub_1D6708AB4;
      v323 = v304;
      v365 = 0;
      v306 = swift_allocObject();
      *(v306 + 16) = v349;
      *(v306 + 32) = v365;
      *(v306 + 40) = v326;
      *(v306 + 48) = v305;
      swift_retain_n();
      sub_1D5EB1D80(v294, v295, v296, v297, v298, v299);
      v307 = sub_1D72647CC();
      v365 = 0;
      v308 = swift_allocObject();
      *(v308 + 16) = v307;
      *(v308 + 24) = v349;
      *(v308 + 40) = v365;
      v309 = *(v348 + 24);
      v310 = *(v348 + 32);
      v311 = __swift_project_boxed_opaque_existential_1(v348, v309);
      MEMORY[0x1EEE9AC00](v311, v312);
      MEMORY[0x1EEE9AC00](v313, v314);
      v315 = v346;
      *(&v324 - 4) = sub_1D615B4A4;
      *(&v324 - 3) = v315;
      v322 = sub_1D6708AB4;
      v323 = v306;
      v316 = v350;
      v318 = sub_1D5D2F7A4(v328, sub_1D615B49C, v317, sub_1D615B4A4, (&v324 - 6), v309, v310);
      *&v350 = v316;
      if (v316)
      {
      }

      else
      {
        v319 = v318;

        if (v319)
        {
          sub_1D6659A24();
          v320 = v350;
          sub_1D72647EC();
          *&v350 = v320;
        }
      }

      v321 = v354;

      sub_1D5CBF568(v321);

      v291 = &v356;
      goto LABEL_88;
    }

    v276 = &v356;
LABEL_83:
    sub_1D5D2CFE8(*(v276 - 32), type metadata accessor for FormatVersionRequirement);

LABEL_89:
    v90 = v324;
    return sub_1D5D2CFE8(v90, sub_1D669E6CC);
  }

  sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v52, sub_1D669E6CC);
}

unint64_t sub_1D650C7E4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
      result = 0x656C797473;
      break;
    case 3:
      result = 0x6F6974616D696E61;
      break;
    case 4:
      result = 1702521203;
      break;
    case 5:
      result = 0x657A69736572;
      break;
    case 6:
      result = 0x656D7473756A6461;
      break;
    case 7:
      result = 0x7865646E497ALL;
      break;
    case 8:
      result = 0x696C696269736976;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x726F7463656C6573;
      break;
    case 12:
      result = 2019912806;
      break;
    case 13:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D650C960@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D669E97C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D650C998(uint64_t a1)
{
  v2 = sub_1D5E1B130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D650C9D4(uint64_t a1)
{
  v2 = sub_1D5E1B130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaNodeContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5115E18;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D669E844();
    v28 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      sub_1D5C30060(0, &qword_1EC886D80, sub_1D669E898, &type metadata for FormatLayeredMediaNodeContent, type metadata accessor for FormatSelectorValue);
      v27 = xmmword_1D7279980;
      sub_1D669E8EC();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v23 = v28;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v24 | 0x8000000000000000;
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D5F2BD8C();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v26 = v27;
      v25 = swift_allocObject();
      *(v25 + 16) = v26;
    }

    *v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaNodeContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaNodeContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatLayeredMediaNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v17, v14, v18, &off_1F51F6BB8);
  if (v15 < 0)
  {
    v24 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v26 = qword_1EDF31ED0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD50);
    (*(*(v27 - 8) + 16))(v6, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B1CC(1, v24, v25, v6);

    v23 = v6;
  }

  else
  {
    v20 = *(v15 + 16);
    if (qword_1EDF31EF0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCDB0);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B034(0, v20, v10);
    v23 = v10;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatLayeredMediaNodeStyle.encode(to:)(void *a1)
{
  *&v402 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v378 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v380 = &v378 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v381 = &v378 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v382 = &v378 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v383 = &v378 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v384 = &v378 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v387 = &v378 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v389 = &v378 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v388 = &v378 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v391 = &v378 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v390 = &v378 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  *&v403 = &v378 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v378 - v42;
  sub_1D669EDE4(0);
  v400 = v44;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v378 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1D5CDBB34(0);
  v51 = v50;
  v52 = sub_1D5B58B84(&qword_1EDF24F58, sub_1D5CDBB34, &unk_1D7321584);
  v401 = v47;
  v53 = v48;
  v54 = v1;
  sub_1D5D2EE70(v402, v51, v55, v53, v402, v51, &type metadata for FormatVersions.AzdenC, v49, v47, v52, &off_1F51F6BB8);
  swift_beginAccess();
  v56 = v1[2];
  v57 = v54[3];
  v58 = qword_1EDF31EF0;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = sub_1D725BD1C();
  v60 = __swift_project_value_buffer(v59, qword_1EDFFCDB0);
  v61 = *(v59 - 8);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v399 = v60;
  v62(v43);
  v398 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v64 = sub_1D725895C();
  v65 = (*(*(v64 - 8) + 48))(v6, 1, v64);
  v394 = v59;
  v395 = v54;
  v396 = v62;
  v397 = v63;
  if (v65 != 1)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v88 = v403;
    goto LABEL_9;
  }

  v392 = v56;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v66 = v400;
  v67 = v401;
  v68 = &v401[*(v400 + 11)];
  v70 = *v68;
  v69 = *(v68 + 1);
  LOBYTE(v418) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  *(v71 + 24) = 0;
  *(v71 + 32) = v418;
  *(v71 + 40) = v70;
  *(v71 + 48) = v69;
  sub_1D669EE78(0);
  v73 = v72;
  sub_1D5B58B84(&qword_1EDF02ED8, sub_1D669EE78, MEMORY[0x1E69E6F60]);

  v393 = v73;
  v74 = sub_1D72647CC();
  LOBYTE(v418) = 0;
  v75 = swift_allocObject();
  *(v75 + 24) = 0;
  *(v75 + 32) = 0;
  *(v75 + 16) = v74;
  *(v75 + 40) = v418;
  v76 = (v67 + *(v66 + 9));
  v77 = v76[3];
  v78 = v76[4];
  v79 = __swift_project_boxed_opaque_existential_1(v76, v77);
  *&v402 = &v378;
  MEMORY[0x1EEE9AC00](v79, v80);
  MEMORY[0x1EEE9AC00](v81, v82);
  *(&v378 - 4) = sub_1D5B4AA6C;
  *(&v378 - 3) = 0;
  v376 = sub_1D669EF0C;
  v377 = v71;
  v83 = v429;
  v85 = sub_1D5D2F7A4(v43, sub_1D615B49C, v84, sub_1D615B4A4, (&v378 - 6), v77, v78);
  v429 = v83;
  if (v83)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v86 = v67;
    return sub_1D5D2CFE8(v86, sub_1D669EDE4);
  }

  v118 = v85;

  if ((v118 & 1) == 0)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v59 = v394;
    v54 = v395;
    v62 = v396;
    goto LABEL_8;
  }

  v418 = 0uLL;
  LOBYTE(v419) = 0;
  *&v410 = v392;
  *(&v410 + 1) = v57;
  v119 = v401;
  v120 = v429;
  sub_1D72647EC();

  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  v59 = v394;
  v54 = v395;
  v62 = v396;
  v88 = v403;
  if (!v120)
  {
    v429 = 0;
LABEL_9:
    v89 = v54[4];
    v90 = v54[5];
    (v62)(v88, v399, v59);
    swift_storeEnumTagMultiPayload();
    *&v410 = v89;
    *(&v410 + 1) = v90;
    v402 = xmmword_1D728CF30;
    v418 = xmmword_1D728CF30;
    LOBYTE(v419) = 0;
    v92 = v400;
    v91 = v401;
    v93 = &v401[*(v400 + 11)];
    v94 = *v93;
    v95 = *(v93 + 1);
    LOBYTE(v404) = 0;
    v96 = swift_allocObject();
    v393 = &v378;
    *(v96 + 16) = v402;
    *(v96 + 32) = v404;
    *(v96 + 40) = v94;
    *(v96 + 48) = v95;
    MEMORY[0x1EEE9AC00](v96, v97);
    v392 = &v378 - 6;
    *(&v378 - 4) = sub_1D5B4AA6C;
    *(&v378 - 3) = 0;
    v376 = sub_1D6708AB8;
    v377 = v98;
    LOBYTE(v404) = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = v402;
    *(v99 + 32) = v404;
    v379 = v94;
    *(v99 + 40) = v94;
    *(v99 + 48) = v95;
    sub_1D669EE78(0);
    v101 = v100;
    v102 = sub_1D5B58B84(&qword_1EDF02ED8, sub_1D669EE78, MEMORY[0x1E69E6F60]);
    v378 = v95;
    swift_retain_n();
    v385 = v102;
    v386 = v101;
    v103 = sub_1D72647CC();
    LOBYTE(v404) = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = v402;
    *(v104 + 40) = v404;
    v105 = *(v92 + 9);
    v106 = v91;
    v107 = &v91[v105];
    v108 = *(v107 + 3);
    v109 = *(v107 + 4);
    v110 = __swift_project_boxed_opaque_existential_1(v107, v108);
    MEMORY[0x1EEE9AC00](v110, v111);
    MEMORY[0x1EEE9AC00](v112, v113);
    v114 = v392;
    *(&v378 - 4) = sub_1D615B4A4;
    *(&v378 - 3) = v114;
    v376 = sub_1D6708AB8;
    v377 = v99;
    v115 = v403;
    v116 = v429;
    sub_1D5D2BC70(v403, sub_1D615B49C, v117, sub_1D615B4A4, (&v378 - 6), v108, v109);
    if (v116)
    {
      sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

      v86 = v106;
      return sub_1D5D2CFE8(v86, sub_1D669EDE4);
    }

    *&v402 = v107;

    sub_1D72647EC();
    v429 = 0;
    sub_1D5D2CFE8(v403, type metadata accessor for FormatVersionRequirement);

    v121 = v395;
    swift_beginAccess();
    v122 = v121[6];
    v123 = v390;
    v124 = v399;
    v125 = v394;
    v126 = v396;
    (v396)(v390, v399, v394);
    swift_storeEnumTagMultiPayload();
    if (*(v122 + 16))
    {
      LOBYTE(v418) = 0;
      v127 = swift_allocObject();
      v403 = xmmword_1D7297410;
      *(v127 + 16) = xmmword_1D7297410;
      *(v127 + 32) = v418;
      *(v127 + 40) = v379;
      *(v127 + 48) = v378;

      v128 = v401;
      v129 = sub_1D72647CC();
      LOBYTE(v418) = 0;
      v130 = swift_allocObject();
      *(v130 + 16) = v129;
      *(v130 + 24) = v403;
      *(v130 + 40) = v418;
      v131 = *(v402 + 24);
      v132 = *(v402 + 32);
      v133 = __swift_project_boxed_opaque_existential_1(v402, v131);
      MEMORY[0x1EEE9AC00](v133, v134);
      MEMORY[0x1EEE9AC00](v135, v136);
      *(&v378 - 4) = sub_1D5B4AA6C;
      *(&v378 - 3) = 0;
      v376 = sub_1D6708AB8;
      v377 = v127;
      v137 = v429;
      v139 = sub_1D5D2F7A4(v123, sub_1D615B49C, v138, sub_1D615B4A4, (&v378 - 6), v131, v132);
      if (v137)
      {
        sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);

        v86 = v128;
        return sub_1D5D2CFE8(v86, sub_1D669EDE4);
      }

      v141 = v139;

      if (v141)
      {
        v418 = v403;
        LOBYTE(v419) = 0;
        *&v410 = v122;
        sub_1D5C34D84(0, &qword_1EDF04C30, &type metadata for FormatLayeredMediaNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D669F08C();
        sub_1D72647EC();
        v125 = v394;
        v121 = v395;
        v124 = v399;
        v140 = v378;
        v429 = 0;
        v126 = v396;

        sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v429 = 0;
        sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);

        v125 = v394;
        v121 = v395;
        v124 = v399;
        v140 = v378;
        v126 = v396;
      }
    }

    else
    {
      sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
      v140 = v378;
    }

    v142 = v121[7];
    v126(v391, v124, v125);
    swift_storeEnumTagMultiPayload();
    v403 = xmmword_1D72BAA60;
    v418 = xmmword_1D72BAA60;
    LOBYTE(v419) = 0;
    LOBYTE(v410) = 0;
    v143 = swift_allocObject();
    v145 = v143;
    *(v143 + 16) = v403;
    *(v143 + 32) = v410;
    v146 = v379;
    *(v143 + 40) = v379;
    *(v143 + 48) = v140;
    if (v142)
    {
      v400 = &v378;
      *&v410 = v142;
      MEMORY[0x1EEE9AC00](v143, v144);
      *(&v378 - 4) = sub_1D5B4AA6C;
      *(&v378 - 3) = 0;
      v376 = sub_1D6708AB8;
      v377 = v145;
      LOBYTE(v404) = 0;
      v147 = swift_allocObject();
      *(v147 + 16) = v403;
      *(v147 + 32) = v404;
      *(v147 + 40) = v146;
      *(v147 + 48) = v140;
      swift_retain_n();

      v148 = sub_1D72647CC();
      LOBYTE(v404) = 0;
      v149 = swift_allocObject();
      *(v149 + 16) = v148;
      *(v149 + 24) = v403;
      *(v149 + 40) = v404;
      v150 = *(v402 + 24);
      v151 = *(v402 + 32);
      v152 = __swift_project_boxed_opaque_existential_1(v402, v150);
      MEMORY[0x1EEE9AC00](v152, v153);
      MEMORY[0x1EEE9AC00](v154, v155);
      *(&v378 - 4) = sub_1D615B4A4;
      *(&v378 - 3) = (&v378 - 6);
      v376 = sub_1D6708AB8;
      v377 = v147;
      v156 = v391;
      v157 = v429;
      v159 = sub_1D5D2F7A4(v391, sub_1D615B49C, v158, sub_1D615B4A4, (&v378 - 6), v150, v151);
      if (v157)
      {

        v160 = v401;

        v161 = v156;
LABEL_61:
        sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);
        v86 = v160;
        return sub_1D5D2CFE8(v86, sub_1D669EDE4);
      }

      v163 = v159;

      if (v163)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v125 = v394;
        v121 = v395;
        v126 = v396;
        v162 = v378;
        v429 = 0;
        v213 = v399;

        sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
        v214 = v213;
        goto LABEL_32;
      }

      v429 = 0;

      sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
      v125 = v394;
      v121 = v395;
      v126 = v396;
      v162 = v378;
    }

    else
    {
      v162 = v140;

      sub_1D5D2CFE8(v391, type metadata accessor for FormatVersionRequirement);
    }

    v214 = v399;
LABEL_32:
    v164 = v121[8];
    v165 = v388;
    v166 = v214;
    (v126)(v388);
    v167 = v165;
    swift_storeEnumTagMultiPayload();
    v403 = xmmword_1D72BAA70;
    v418 = xmmword_1D72BAA70;
    LOBYTE(v419) = 0;
    LOBYTE(v410) = 0;
    v168 = swift_allocObject();
    v170 = v168;
    *(v168 + 16) = v403;
    *(v168 + 32) = v410;
    v171 = v379;
    *(v168 + 40) = v379;
    *(v168 + 48) = v162;
    if ((~v164 & 0xF000000000000007) != 0)
    {
      v400 = &v378;
      *&v410 = v164;
      MEMORY[0x1EEE9AC00](v168, v169);
      v393 = &v378 - 6;
      *(&v378 - 4) = sub_1D5B4AA6C;
      *(&v378 - 3) = 0;
      v376 = sub_1D6708AB8;
      v377 = v170;
      LOBYTE(v404) = 0;
      v193 = swift_allocObject();
      *(v193 + 16) = v403;
      *(v193 + 32) = v404;
      *(v193 + 40) = v171;
      *(v193 + 48) = v162;
      swift_retain_n();
      sub_1D5D04BD4(v164);
      v194 = sub_1D72647CC();
      LOBYTE(v404) = 0;
      v195 = swift_allocObject();
      *(v195 + 16) = v194;
      *(v195 + 24) = v403;
      *(v195 + 40) = v404;
      v196 = *(v402 + 24);
      v197 = *(v402 + 32);
      v198 = __swift_project_boxed_opaque_existential_1(v402, v196);
      MEMORY[0x1EEE9AC00](v198, v199);
      MEMORY[0x1EEE9AC00](v200, v201);
      v202 = v393;
      *(&v378 - 4) = sub_1D615B4A4;
      *(&v378 - 3) = v202;
      v376 = sub_1D6708AB8;
      v377 = v193;
      v203 = v429;
      v205 = sub_1D5D2F7A4(v167, sub_1D615B49C, v204, sub_1D615B4A4, (&v378 - 6), v196, v197);
      if (v203)
      {

        v160 = v401;

LABEL_40:
        v161 = v167;
        goto LABEL_61;
      }

      v209 = v205;

      if (v209)
      {
        sub_1D5D4A808();
        sub_1D72647EC();
        v125 = v394;
        v166 = v399;
        v429 = 0;
      }

      else
      {
        v429 = 0;

        v125 = v394;
        v166 = v399;
      }

      v172 = v378;
    }

    else
    {

      v172 = v162;
    }

    sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
    v173 = v395;
    v174 = v389;
    v175 = v166;
    v176 = v395[9];
    (v396)(v389, v175, v125);
    swift_storeEnumTagMultiPayload();
    v403 = xmmword_1D72BAA80;
    v418 = xmmword_1D72BAA80;
    LOBYTE(v419) = 0;
    LOBYTE(v410) = 0;
    v177 = swift_allocObject();
    v179 = v177;
    *(v177 + 16) = v403;
    *(v177 + 32) = v410;
    v180 = v379;
    *(v177 + 40) = v379;
    *(v177 + 48) = v172;
    if (v176)
    {
      v400 = &v378;
      *&v410 = v176;
      MEMORY[0x1EEE9AC00](v177, v178);
      *(&v378 - 4) = sub_1D5B4AA6C;
      *(&v378 - 3) = 0;
      v376 = sub_1D6708AB8;
      v377 = v179;
      LOBYTE(v404) = 0;
      v181 = swift_allocObject();
      *(v181 + 16) = v403;
      *(v181 + 32) = v404;
      *(v181 + 40) = v180;
      *(v181 + 48) = v172;
      swift_retain_n();

      v182 = sub_1D72647CC();
      LOBYTE(v404) = 0;
      v183 = swift_allocObject();
      *(v183 + 16) = v182;
      *(v183 + 24) = v403;
      *(v183 + 40) = v404;
      v184 = *(v402 + 24);
      v185 = *(v402 + 32);
      v186 = __swift_project_boxed_opaque_existential_1(v402, v184);
      MEMORY[0x1EEE9AC00](v186, v187);
      MEMORY[0x1EEE9AC00](v188, v189);
      *(&v378 - 4) = sub_1D615B4A4;
      *(&v378 - 3) = (&v378 - 6);
      v376 = sub_1D6708AB8;
      v377 = v181;
      v190 = v429;
      v192 = sub_1D5D2F7A4(v174, sub_1D615B49C, v191, sub_1D615B4A4, (&v378 - 6), v184, v185);
      v429 = v190;
      if (v190)
      {

        v160 = v401;
LABEL_37:
        v161 = v389;
        goto LABEL_61;
      }

      v210 = v192;

      if (v210)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v160 = v401;
        v211 = v429;
        sub_1D72647EC();
        v212 = v395;
        if (v211)
        {

          goto LABEL_37;
        }

        v429 = 0;
        v215 = v399;
        v216 = v396;

        sub_1D5D2CFE8(v389, type metadata accessor for FormatVersionRequirement);
        v206 = v216;
        v208 = v215;
        v207 = v378;
        v173 = v212;
      }

      else
      {

        sub_1D5D2CFE8(v389, type metadata accessor for FormatVersionRequirement);
        v173 = v395;
        v206 = v396;
        v207 = v378;
        v208 = v399;
      }
    }

    else
    {

      sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);

      v206 = v396;
      v207 = v172;
      v208 = v175;
    }

    v217 = v173[10];
    v218 = v173[11];
    v219 = *(v173 + 96);
    v220 = v387;
    v221 = v206;
    v206(v387, v208, v394);
    swift_storeEnumTagMultiPayload();
    v403 = xmmword_1D72BAA90;
    v427 = xmmword_1D72BAA90;
    v428 = 0;
    LOBYTE(v418) = 0;
    v222 = swift_allocObject();
    v224 = v222;
    *(v222 + 16) = v403;
    *(v222 + 32) = v418;
    v225 = v379;
    *(v222 + 40) = v379;
    *(v222 + 48) = v207;
    if (v219 <= 0xFD)
    {
      v400 = &v378;
      v424 = v217;
      v425 = v218;
      v426 = v219;
      MEMORY[0x1EEE9AC00](v222, v223);
      *(&v378 - 4) = sub_1D5B4AA6C;
      *(&v378 - 3) = 0;
      v376 = sub_1D6708AB8;
      v377 = v224;
      LOBYTE(v418) = 0;
      v263 = swift_allocObject();
      v264 = v207;
      v265 = v263;
      *(v263 + 16) = v403;
      *(v263 + 32) = v418;
      *(v263 + 40) = v225;
      *(v263 + 48) = v264;
      swift_retain_n();
      sub_1D5ED34B0(v217, v218, v219);
      v266 = sub_1D72647CC();
      LOBYTE(v418) = 0;
      v267 = swift_allocObject();
      *(v267 + 16) = v266;
      *(v267 + 24) = v403;
      *(v267 + 40) = v418;
      v268 = v402;
      v269 = *(v402 + 24);
      v270 = *(v402 + 32);
      v271 = __swift_project_boxed_opaque_existential_1(v402, v269);
      MEMORY[0x1EEE9AC00](v271, v272);
      MEMORY[0x1EEE9AC00](v273, v274);
      *(&v378 - 4) = sub_1D615B4A4;
      *(&v378 - 3) = (&v378 - 6);
      v376 = sub_1D6708AB8;
      v377 = v265;
      v275 = v429;
      v277 = sub_1D5D2F7A4(v220, sub_1D615B49C, v276, sub_1D615B4A4, (&v378 - 6), v269, v270);
      if (v275)
      {

        v160 = v401;
        sub_1D5ED34A0(v424, v425, v426);
        v161 = v220;
        goto LABEL_61;
      }

      v290 = v277;

      if (v290)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v225 = v379;
        v429 = 0;
        v331 = v394;
        v332 = v399;
        v221 = v396;

        sub_1D5ED34A0(v424, v425, v426);
        sub_1D5D2CFE8(v387, type metadata accessor for FormatVersionRequirement);
        v228 = v332;
        v226 = v331;
        v227 = v378;
      }

      else
      {
        v429 = 0;

        sub_1D5ED34A0(v424, v425, v426);
        sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);
        v226 = v394;
        v221 = v396;
        v228 = v399;
        v227 = v378;
        v225 = v379;
      }

      v229 = v268;
    }

    else
    {

      sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);

      v226 = v394;
      v227 = v207;
      v228 = v399;
      v229 = v402;
    }

    v230 = *(v395 + 19);
    v420 = *(v395 + 17);
    v421 = v230;
    v422 = *(v395 + 21);
    v423 = *(v395 + 184);
    v231 = *(v395 + 15);
    v418 = *(v395 + 13);
    v419 = v231;
    v232 = v384;
    v233 = v221;
    v221(v384, v228, v226);
    swift_storeEnumTagMultiPayload();
    v403 = xmmword_1D72BAAA0;
    v416 = xmmword_1D72BAAA0;
    v417 = 0;
    LOBYTE(v410) = 0;
    v234 = swift_allocObject();
    v236 = v234;
    *(v234 + 16) = v403;
    *(v234 + 32) = v410;
    *(v234 + 40) = v225;
    *(v234 + 48) = v227;
    v237 = v227;
    if (v423 == 254)
    {

      v238 = v383;
      v239 = v395;
    }

    else
    {
      v400 = &v378;
      v412 = v420;
      v413 = v421;
      v414 = v422;
      v415 = v423;
      v410 = v418;
      v411 = v419;
      MEMORY[0x1EEE9AC00](v234, v235);
      *(&v378 - 4) = sub_1D5B4AA6C;
      *(&v378 - 3) = 0;
      v376 = sub_1D6708AB8;
      v377 = v236;
      LOBYTE(v404) = 0;
      v278 = swift_allocObject();
      *(v278 + 16) = v403;
      *(v278 + 32) = v404;
      *(v278 + 40) = v225;
      *(v278 + 48) = v227;
      swift_retain_n();
      sub_1D5D355B8(&v418, &v404, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v279 = sub_1D72647CC();
      LOBYTE(v404) = 0;
      v280 = swift_allocObject();
      *(v280 + 16) = v279;
      *(v280 + 24) = v403;
      *(v280 + 40) = v404;
      v281 = v229[3];
      v282 = v229[4];
      v283 = __swift_project_boxed_opaque_existential_1(v229, v281);
      MEMORY[0x1EEE9AC00](v283, v284);
      MEMORY[0x1EEE9AC00](v285, v286);
      *(&v378 - 4) = sub_1D615B4A4;
      *(&v378 - 3) = (&v378 - 6);
      v376 = sub_1D6708AB8;
      v377 = v278;
      v287 = v429;
      v289 = sub_1D5D2F7A4(v232, sub_1D615B49C, v288, sub_1D615B4A4, (&v378 - 6), v281, v282);
      v429 = v287;
      if (v287)
      {

        v406 = v412;
        v407 = v413;
        v408 = v414;
        v409 = v415;
        v404 = v410;
        v405 = v411;
        sub_1D601144C(&v404);
        v262 = v401;
        goto LABEL_64;
      }

      v291 = v289;

      v238 = v383;
      if (v291)
      {
        sub_1D6661204();
        v262 = v401;
        v292 = v429;
        sub_1D72647EC();
        v239 = v395;
        v233 = v396;
        v237 = v378;
        v429 = v292;
        if (v292)
        {

          v406 = v412;
          v407 = v413;
          v408 = v414;
          v409 = v415;
          v404 = v410;
          v405 = v411;
          sub_1D601144C(&v404);
          goto LABEL_64;
        }

        v406 = v412;
        v407 = v413;
        v408 = v414;
        v409 = v415;
        v404 = v410;
        v405 = v411;
        sub_1D601144C(&v404);
      }

      else
      {

        v406 = v412;
        v407 = v413;
        v408 = v414;
        v409 = v415;
        v404 = v410;
        v405 = v411;
        sub_1D601144C(&v404);
        v239 = v395;
        v233 = v396;
        v237 = v378;
      }
    }

    sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
    v240 = v239[24];
    v241 = v239[25];
    v242 = *(v239 + 208);
    v233(v238, v399, v394);
    swift_storeEnumTagMultiPayload();
    v403 = xmmword_1D72BAAB0;
    v410 = xmmword_1D72BAAB0;
    LOBYTE(v411) = 0;
    LOBYTE(v404) = 0;
    v243 = swift_allocObject();
    v245 = v243;
    *(v243 + 16) = v403;
    *(v243 + 32) = v404;
    v246 = v238;
    v247 = v379;
    *(v243 + 40) = v379;
    *(v243 + 48) = v237;
    if (v242 == 255)
    {

      sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);

      v167 = v382;
    }

    else
    {
      v400 = &v378;
      *&v404 = v240;
      *(&v404 + 1) = v241;
      LOBYTE(v405) = v242 & 1;
      MEMORY[0x1EEE9AC00](v243, v244);
      *(&v378 - 4) = sub_1D5B4AA6C;
      *(&v378 - 3) = 0;
      v376 = sub_1D6708AB8;
      v377 = v245;
      LOBYTE(v416) = 0;
      v248 = swift_allocObject();
      v249 = v237;
      v250 = v248;
      *(v248 + 16) = v403;
      *(v248 + 32) = v416;
      *(v248 + 40) = v247;
      *(v248 + 48) = v249;
      swift_retain_n();
      sub_1D6189668(v240, v241, v242);
      v251 = sub_1D72647CC();
      LOBYTE(v416) = 0;
      v252 = swift_allocObject();
      *(v252 + 16) = v251;
      *(v252 + 24) = v403;
      *(v252 + 40) = v416;
      v253 = *(v402 + 24);
      v254 = *(v402 + 32);
      v255 = __swift_project_boxed_opaque_existential_1(v402, v253);
      MEMORY[0x1EEE9AC00](v255, v256);
      MEMORY[0x1EEE9AC00](v257, v258);
      *(&v378 - 4) = sub_1D615B4A4;
      *(&v378 - 3) = (&v378 - 6);
      v376 = sub_1D6708AB8;
      v377 = v250;
      v259 = v429;
      v261 = sub_1D5D2F7A4(v246, sub_1D615B49C, v260, sub_1D615B4A4, (&v378 - 6), v253, v254);
      v232 = v246;
      v429 = v259;
      if (v259)
      {

        v262 = v401;
LABEL_58:
        sub_1D5D2F2C8(v404, *(&v404 + 1), v405);
LABEL_64:
        sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
        v86 = v262;
        return sub_1D5D2CFE8(v86, sub_1D669EDE4);
      }

      v293 = v261;

      v167 = v382;
      if (v293)
      {
        sub_1D60ED320();
        v262 = v401;
        v294 = v429;
        sub_1D72647EC();
        v239 = v395;
        v295 = v399;
        v429 = v294;
        if (v294)
        {

          goto LABEL_58;
        }

        sub_1D5D2F2C8(v404, *(&v404 + 1), v405);
        sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
LABEL_79:
        v296 = v239[28];
        v400 = v239[27];
        v393 = v296;
        v297 = *(v239 + 232);
        sub_1D5B58478(0);
        v299 = *(v298 + 48);
        v300 = (v167 + *(v298 + 64));
        v301 = v295;
        v302 = v394;
        v303 = v396;
        (v396)(v167, v301, v394);
        if (qword_1EDF31F48 != -1)
        {
          swift_once();
        }

        v304 = __swift_project_value_buffer(v302, qword_1EDFFCE68);
        v303(v167 + v299, v304, v302);
        *v300 = 0;
        v300[1] = 0;
        swift_storeEnumTagMultiPayload();
        v403 = xmmword_1D72BAAC0;
        v410 = xmmword_1D72BAAC0;
        LOBYTE(v411) = 0;
        LOBYTE(v404) = 0;
        v305 = swift_allocObject();
        v307 = v305;
        *(v305 + 16) = v403;
        *(v305 + 32) = v404;
        v308 = v378;
        v309 = v379;
        *(v305 + 40) = v379;
        *(v305 + 48) = v308;
        if (v297 == 255)
        {
          v325 = v302;

          sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);

          v326 = v381;
          v327 = v396;
          v328 = v395;
        }

        else
        {
          v399 = &v378;
          v310 = v400;
          v311 = v393;
          *&v404 = v400;
          *(&v404 + 1) = v393;
          LOBYTE(v405) = v297 & 1;
          MEMORY[0x1EEE9AC00](v305, v306);
          v392 = &v378 - 6;
          *(&v378 - 4) = sub_1D5B4AA6C;
          *(&v378 - 3) = 0;
          v376 = sub_1D6708AB8;
          v377 = v307;
          LOBYTE(v416) = 0;
          v312 = swift_allocObject();
          *(v312 + 16) = v403;
          *(v312 + 32) = v416;
          *(v312 + 40) = v309;
          *(v312 + 48) = v308;
          swift_retain_n();
          sub_1D6189668(v310, v311, v297);
          v313 = sub_1D72647CC();
          LOBYTE(v416) = 0;
          v314 = swift_allocObject();
          *(v314 + 16) = v313;
          *(v314 + 24) = v403;
          *(v314 + 40) = v416;
          v315 = *(v402 + 24);
          v316 = *(v402 + 32);
          v317 = __swift_project_boxed_opaque_existential_1(v402, v315);
          MEMORY[0x1EEE9AC00](v317, v318);
          MEMORY[0x1EEE9AC00](v319, v320);
          v321 = v392;
          *(&v378 - 4) = sub_1D615B4A4;
          *(&v378 - 3) = v321;
          v376 = sub_1D6708AB8;
          v377 = v312;
          v322 = v429;
          v324 = sub_1D5D2F7A4(v167, sub_1D615B49C, v323, sub_1D615B4A4, (&v378 - 6), v315, v316);
          v429 = v322;
          if (v322)
          {

            v160 = v401;
LABEL_84:
            sub_1D5D2F2C8(v404, *(&v404 + 1), v405);
            goto LABEL_40;
          }

          v329 = v324;

          if (v329)
          {
            sub_1D60ED320();
            v160 = v401;
            v330 = v429;
            sub_1D72647EC();
            if (v330)
            {

              goto LABEL_84;
            }

            v429 = 0;
          }

          sub_1D5D2F2C8(v404, *(&v404 + 1), v405);
          sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
          v325 = v394;
          v328 = v395;
          v326 = v381;
          v327 = v396;
        }

        v333 = *(v328 + 233);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v334 = __swift_project_value_buffer(v325, qword_1EDFFCDE0);
        v327(v326, v334, v325);
        swift_storeEnumTagMultiPayload();
        v403 = xmmword_1D72BAAD0;
        v410 = xmmword_1D72BAAD0;
        LOBYTE(v411) = 0;
        LOBYTE(v404) = 0;
        v335 = swift_allocObject();
        v337 = v335;
        *(v335 + 16) = v403;
        *(v335 + 32) = v404;
        v338 = v378;
        v339 = v379;
        *(v335 + 40) = v379;
        *(v335 + 48) = v338;
        if (v333 == 2)
        {

          v340 = v380;
        }

        else
        {
          v400 = &v378;
          LOBYTE(v404) = v333 & 1;
          MEMORY[0x1EEE9AC00](v335, v336);
          *(&v378 - 4) = sub_1D5B4AA6C;
          *(&v378 - 3) = 0;
          v376 = sub_1D6708AB8;
          v377 = v337;
          LOBYTE(v416) = 0;
          v341 = v326;
          v342 = swift_allocObject();
          *(v342 + 16) = v403;
          *(v342 + 32) = v416;
          *(v342 + 40) = v339;
          *(v342 + 48) = v338;
          swift_retain_n();
          v343 = sub_1D72647CC();
          LOBYTE(v416) = 0;
          v344 = swift_allocObject();
          *(v344 + 16) = v343;
          *(v344 + 24) = v403;
          *(v344 + 40) = v416;
          v345 = *(v402 + 24);
          v346 = *(v402 + 32);
          v347 = __swift_project_boxed_opaque_existential_1(v402, v345);
          MEMORY[0x1EEE9AC00](v347, v348);
          MEMORY[0x1EEE9AC00](v349, v350);
          *(&v378 - 4) = sub_1D615B4A4;
          *(&v378 - 3) = (&v378 - 6);
          v376 = sub_1D6708AB8;
          v377 = v342;
          v351 = v429;
          v353 = sub_1D5D2F7A4(v341, sub_1D615B49C, v352, sub_1D615B4A4, (&v378 - 6), v345, v346);
          if (v351)
          {
            sub_1D5D2CFE8(v341, type metadata accessor for FormatVersionRequirement);

            v86 = v401;
            return sub_1D5D2CFE8(v86, sub_1D669EDE4);
          }

          v354 = v353;

          if (v354)
          {
            sub_1D72647EC();
          }

          v429 = 0;
          v340 = v380;
          v326 = v381;
          v325 = v394;
          v327 = v396;
        }

        sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);

        v355 = v395[30];
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v356 = __swift_project_value_buffer(v325, qword_1EDFFCD00);
        v327(v340, v356, v325);
        swift_storeEnumTagMultiPayload();
        v403 = xmmword_1D72BAAE0;
        v410 = xmmword_1D72BAAE0;
        LOBYTE(v411) = 0;
        LOBYTE(v404) = 0;
        v357 = swift_allocObject();
        v359 = v357;
        *(v357 + 16) = v403;
        *(v357 + 32) = v404;
        v360 = v378;
        v361 = v379;
        *(v357 + 40) = v379;
        *(v357 + 48) = v360;
        if (v355)
        {
          v400 = &v378;
          *&v404 = v355;
          MEMORY[0x1EEE9AC00](v357, v358);
          *(&v378 - 4) = sub_1D5B4AA6C;
          *(&v378 - 3) = 0;
          v376 = sub_1D6708AB8;
          v377 = v359;
          LOBYTE(v416) = 0;
          v362 = swift_allocObject();
          *(v362 + 16) = v403;
          *(v362 + 32) = v416;
          *(v362 + 40) = v361;
          *(v362 + 48) = v360;
          swift_retain_n();

          v363 = sub_1D72647CC();
          LOBYTE(v416) = 0;
          v364 = swift_allocObject();
          *(v364 + 16) = v363;
          *(v364 + 24) = v403;
          *(v364 + 40) = v416;
          v365 = *(v402 + 24);
          v366 = *(v402 + 32);
          v367 = __swift_project_boxed_opaque_existential_1(v402, v365);
          MEMORY[0x1EEE9AC00](v367, v368);
          MEMORY[0x1EEE9AC00](v369, v370);
          *(&v378 - 4) = sub_1D615B4A4;
          *(&v378 - 3) = (&v378 - 6);
          v376 = sub_1D6708AB8;
          v377 = v362;
          v371 = v429;
          v373 = sub_1D5D2F7A4(v340, sub_1D615B49C, v372, sub_1D615B4A4, (&v378 - 6), v365, v366);
          v429 = v371;
          if (v371)
          {
          }

          else
          {
            v374 = v373;

            if (v374)
            {
              sub_1D5C34D84(0, &unk_1EDF1B040, &type metadata for FormatLayeredMediaFilter, MEMORY[0x1E69E62F8]);
              sub_1D669EF9C();
              v375 = v429;
              sub_1D72647EC();
              v429 = v375;
            }
          }

          sub_1D5D2CFE8(v380, type metadata accessor for FormatVersionRequirement);
        }

        else
        {

          sub_1D5D2CFE8(v340, type metadata accessor for FormatVersionRequirement);
        }

        v86 = v401;
        return sub_1D5D2CFE8(v86, sub_1D669EDE4);
      }

      sub_1D5D2F2C8(v404, *(&v404 + 1), v405);
      sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
      v239 = v395;
    }

    v295 = v399;
    goto LABEL_79;
  }

  return sub_1D5D2CFE8(v119, sub_1D669EDE4);
}

uint64_t sub_1D6510424@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A0B64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D651045C(uint64_t a1)
{
  v2 = sub_1D5CDBC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6510498(uint64_t a1)
{
  v2 = sub_1D5CDBC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v295 = &v289 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v294 = &v289 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v299 = &v289 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v303 = &v289 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v305 = (&v289 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v306 = &v289 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v309 = (&v289 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v311 = (&v289 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v315 = (&v289 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v289 - v32;
  sub_1D669F128(0);
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v289 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v1 + 8);
  *&v323 = *v1;
  v40 = *(v1 + 24);
  v310 = *(v1 + 16);
  v41 = *(v1 + 32);
  v42 = *(v1 + 40);
  v307 = v40;
  v308 = v41;
  v301 = *(v1 + 48);
  v302 = v42;
  v304 = *(v1 + 56);
  v43 = *(v1 + 112);
  v346 = *(v1 + 96);
  v347 = v43;
  v348 = *(v1 + 128);
  v349 = *(v1 + 144);
  v44 = *(v1 + 80);
  v344 = *(v1 + 64);
  v345 = v44;
  v45 = *(v1 + 152);
  v297 = *(v1 + 160);
  v298 = v45;
  v300 = *(v1 + 168);
  v46 = *(v1 + 176);
  v292 = *(v1 + 184);
  v293 = v46;
  v296 = *(v1 + 192);
  v291 = *(v1 + 193);
  v290 = *(v1 + 200);
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1D5CDCA60(0);
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF24F48, sub_1D5CDCA60, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaNodeStyle.Selector, v50, v52, v47, &type metadata for FormatLayeredMediaNodeStyle.Selector, v50, &type metadata for FormatVersions.AzdenC, v48, v38, v51, &off_1F51F6BB8);
  if (qword_1EDF31EF0 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCDB0);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v319 = v54;
  v313 = v53;
  v316 = v56;
  v317 = v55 + 16;
  v56(v33);
  v318 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v325 = v323;
  *(&v325 + 1) = v39;
  v331 = 0uLL;
  LOBYTE(v332) = 0;
  v57 = &v38[*(v35 + 44)];
  v59 = *v57;
  v58 = *(v57 + 1);
  LOBYTE(v342) = 0;
  v60 = swift_allocObject();
  *&v323 = &v289;
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = v342;
  *(v60 + 40) = v59;
  *(v60 + 48) = v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  v322 = &v289 - 6;
  *(&v289 - 4) = sub_1D5B4AA6C;
  *(&v289 - 3) = 0;
  v287 = sub_1D6708ABC;
  v288 = v62;
  LOBYTE(v342) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  *(v63 + 32) = v342;
  v312 = v59;
  *(v63 + 40) = v59;
  *(v63 + 48) = v58;
  sub_1D669F1BC(0);
  v65 = v64;
  v66 = sub_1D5B58B84(&qword_1EDF02EC8, sub_1D669F1BC, MEMORY[0x1E69E6F60]);
  v314 = v58;
  swift_retain_n();
  v320 = v65;
  v321 = v66;
  v67 = sub_1D72647CC();
  LOBYTE(v342) = 0;
  v68 = swift_allocObject();
  *(v68 + 24) = 0;
  *(v68 + 32) = 0;
  *(v68 + 16) = v67;
  *(v68 + 40) = v342;
  v69 = *(v35 + 36);
  v70 = v33;
  v350 = v38;
  v71 = &v38[v69];
  v72 = *&v38[v69 + 24];
  v73 = *&v38[v69 + 32];
  v74 = __swift_project_boxed_opaque_existential_1(&v38[v69], v72);
  MEMORY[0x1EEE9AC00](v74, v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  v78 = v322;
  *(&v289 - 4) = sub_1D615B4A4;
  *(&v289 - 3) = v78;
  v287 = sub_1D6708ABC;
  v288 = v63;
  v79 = v324;
  sub_1D5D2BC70(v70, sub_1D615B49C, v80, sub_1D615B4A4, (&v289 - 6), v72, v73);
  if (v79)
  {
    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

    v81 = v350;
    return sub_1D5D2CFE8(v81, sub_1D669F128);
  }

  v324 = v71;

  sub_1D5D3E60C();
  sub_1D72647EC();
  sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

  v84 = v315;
  v83 = v316;
  v85 = v313;
  v316(v315, v319, v313);
  swift_storeEnumTagMultiPayload();
  v323 = xmmword_1D728CF30;
  v331 = xmmword_1D728CF30;
  LOBYTE(v332) = 0;
  LOBYTE(v325) = 0;
  v86 = swift_allocObject();
  v88 = v86;
  *(v86 + 16) = v323;
  *(v86 + 32) = v325;
  v89 = v312;
  v90 = v314;
  *(v86 + 40) = v312;
  *(v86 + 48) = v90;
  v322 = 0;
  if (!v310)
  {

    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

    goto LABEL_14;
  }

  v289 = &v289;
  *&v325 = v310;
  MEMORY[0x1EEE9AC00](v86, v87);
  *(&v289 - 4) = sub_1D5B4AA6C;
  *(&v289 - 3) = 0;
  v287 = sub_1D6708ABC;
  v288 = v88;
  LOBYTE(v342) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v323;
  *(v91 + 32) = v342;
  *(v91 + 40) = v89;
  *(v91 + 48) = v90;
  swift_retain_n();

  v92 = sub_1D72647CC();
  LOBYTE(v342) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = v323;
  *(v93 + 40) = v342;
  v94 = *(v324 + 3);
  v95 = *(v324 + 4);
  v96 = __swift_project_boxed_opaque_existential_1(v324, v94);
  MEMORY[0x1EEE9AC00](v96, v97);
  MEMORY[0x1EEE9AC00](v98, v99);
  *(&v289 - 4) = sub_1D615B4A4;
  *(&v289 - 3) = (&v289 - 6);
  v287 = sub_1D6708ABC;
  v288 = v91;
  v100 = v322;
  v102 = sub_1D5D2F7A4(v84, sub_1D615B49C, v101, sub_1D615B4A4, (&v289 - 6), v94, v95);
  if (!v100)
  {
    v105 = v102;

    if (v105)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      sub_1D72647EC();
      v90 = v314;
      v83 = v316;
      v322 = 0;

      sub_1D5D2CFE8(v315, type metadata accessor for FormatVersionRequirement);
      v89 = v312;
      v85 = v313;
    }

    else
    {
      v322 = 0;

      sub_1D5D2CFE8(v315, type metadata accessor for FormatVersionRequirement);
      v85 = v313;
      v90 = v314;
      v89 = v312;
      v83 = v316;
    }

LABEL_14:
    v106 = v311;
    v83(v311, v319, v85);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D7297410;
    v331 = xmmword_1D7297410;
    LOBYTE(v332) = 0;
    LOBYTE(v325) = 0;
    v107 = swift_allocObject();
    v109 = v107;
    *(v107 + 16) = v323;
    *(v107 + 32) = v325;
    *(v107 + 40) = v89;
    *(v107 + 48) = v90;
    if ((~v307 & 0xF000000000000007) != 0)
    {
      v315 = &v289;
      *&v325 = v307;
      MEMORY[0x1EEE9AC00](v107, v108);
      v310 = &v289 - 6;
      *(&v289 - 4) = sub_1D5B4AA6C;
      *(&v289 - 3) = 0;
      v287 = sub_1D6708ABC;
      v288 = v109;
      LOBYTE(v342) = 0;
      v130 = v129;
      v131 = swift_allocObject();
      *(v131 + 16) = v323;
      *(v131 + 32) = v342;
      *(v131 + 40) = v89;
      *(v131 + 48) = v90;
      swift_retain_n();
      sub_1D5D04BD4(v130);
      v132 = v350;
      v133 = sub_1D72647CC();
      LOBYTE(v342) = 0;
      v134 = swift_allocObject();
      *(v134 + 16) = v133;
      *(v134 + 24) = v323;
      *(v134 + 40) = v342;
      v135 = *(v324 + 3);
      v136 = *(v324 + 4);
      v137 = __swift_project_boxed_opaque_existential_1(v324, v135);
      MEMORY[0x1EEE9AC00](v137, v138);
      MEMORY[0x1EEE9AC00](v139, v140);
      v141 = v310;
      *(&v289 - 4) = sub_1D615B4A4;
      *(&v289 - 3) = v141;
      v287 = sub_1D6708ABC;
      v288 = v131;
      v142 = v322;
      v144 = sub_1D5D2F7A4(v106, sub_1D615B49C, v143, sub_1D615B4A4, (&v289 - 6), v135, v136);
      if (v142)
      {

        v127 = v132;

        v128 = v311;
        goto LABEL_21;
      }

      v145 = v144;

      if (v145)
      {
        sub_1D5D4A808();
        sub_1D72647EC();
        v90 = v314;
        v83 = v316;
        v322 = 0;

        v89 = v312;
        v85 = v313;
      }

      else
      {
        v322 = 0;

        v85 = v313;
        v90 = v314;
        v89 = v312;
        v83 = v316;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v311, type metadata accessor for FormatVersionRequirement);
    v110 = v309;
    v83(v309, v319, v85);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAA60;
    v331 = xmmword_1D72BAA60;
    LOBYTE(v332) = 0;
    LOBYTE(v325) = 0;
    v111 = swift_allocObject();
    v113 = v111;
    *(v111 + 16) = v323;
    *(v111 + 32) = v325;
    *(v111 + 40) = v89;
    *(v111 + 48) = v90;
    if (v308)
    {
      v315 = &v289;
      *&v325 = v308;
      MEMORY[0x1EEE9AC00](v111, v112);
      *(&v289 - 4) = sub_1D5B4AA6C;
      *(&v289 - 3) = 0;
      v287 = sub_1D6708ABC;
      v288 = v113;
      LOBYTE(v342) = 0;
      v114 = swift_allocObject();
      *(v114 + 16) = v323;
      *(v114 + 32) = v342;
      *(v114 + 40) = v89;
      *(v114 + 48) = v90;
      swift_retain_n();

      v115 = sub_1D72647CC();
      LOBYTE(v342) = 0;
      v116 = swift_allocObject();
      *(v116 + 16) = v115;
      *(v116 + 24) = v323;
      *(v116 + 40) = v342;
      v117 = v110;
      v118 = *(v324 + 3);
      v119 = *(v324 + 4);
      v120 = __swift_project_boxed_opaque_existential_1(v324, v118);
      MEMORY[0x1EEE9AC00](v120, v121);
      MEMORY[0x1EEE9AC00](v122, v123);
      *(&v289 - 4) = sub_1D615B4A4;
      *(&v289 - 3) = (&v289 - 6);
      v287 = sub_1D6708ABC;
      v288 = v114;
      v124 = v322;
      v126 = sub_1D5D2F7A4(v117, sub_1D615B49C, v125, sub_1D615B4A4, (&v289 - 6), v118, v119);
      if (v124)
      {

        v127 = v350;
        v128 = v309;
LABEL_21:
        sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
        v81 = v127;
        return sub_1D5D2CFE8(v81, sub_1D669F128);
      }

      v146 = v126;

      if (v146)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v90 = v314;
        v322 = 0;

        sub_1D5D2CFE8(v309, type metadata accessor for FormatVersionRequirement);
        v89 = v312;
        v85 = v313;
      }

      else
      {
        v322 = 0;

        sub_1D5D2CFE8(v309, type metadata accessor for FormatVersionRequirement);
        v85 = v313;
        v90 = v314;
        v89 = v312;
      }
    }

    else
    {

      sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
    }

    v147 = v306;
    v148 = v316;
    v316(v306, v319, v85);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAA70;
    v342 = xmmword_1D72BAA70;
    v343 = 0;
    LOBYTE(v331) = 0;
    v149 = swift_allocObject();
    v151 = v149;
    *(v149 + 16) = v323;
    *(v149 + 32) = v331;
    *(v149 + 40) = v89;
    *(v149 + 48) = v90;
    if (v304 <= 0xFD)
    {
      v315 = &v289;
      v178 = v301;
      v179 = v302;
      v339 = v302;
      v340 = v301;
      v341 = v304;
      MEMORY[0x1EEE9AC00](v149, v150);
      v311 = &v289 - 6;
      *(&v289 - 4) = sub_1D5B4AA6C;
      *(&v289 - 3) = 0;
      v287 = sub_1D6708ABC;
      v288 = v151;
      LOBYTE(v331) = 0;
      v181 = v180;
      v182 = swift_allocObject();
      *(v182 + 16) = v323;
      *(v182 + 32) = v331;
      *(v182 + 40) = v89;
      *(v182 + 48) = v90;
      swift_retain_n();
      sub_1D5ED34B0(v179, v178, v181);
      v183 = sub_1D72647CC();
      LOBYTE(v331) = 0;
      v184 = swift_allocObject();
      *(v184 + 16) = v183;
      *(v184 + 24) = v323;
      *(v184 + 40) = v331;
      v185 = *(v324 + 3);
      v186 = *(v324 + 4);
      v187 = __swift_project_boxed_opaque_existential_1(v324, v185);
      MEMORY[0x1EEE9AC00](v187, v188);
      MEMORY[0x1EEE9AC00](v189, v190);
      v191 = v311;
      *(&v289 - 4) = sub_1D615B4A4;
      *(&v289 - 3) = v191;
      v287 = sub_1D6708ABC;
      v288 = v182;
      v192 = v322;
      v194 = sub_1D5D2F7A4(v147, sub_1D615B49C, v193, sub_1D615B4A4, (&v289 - 6), v185, v186);
      if (v192)
      {

        v176 = v350;
        v177 = v306;
        sub_1D5ED34A0(v339, v340, v341);
        goto LABEL_39;
      }

      v208 = v194;

      if (v208)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v90 = v314;
        v148 = v316;
        v322 = 0;

        sub_1D5ED34A0(v339, v340, v341);
        sub_1D5D2CFE8(v306, type metadata accessor for FormatVersionRequirement);
        v89 = v312;
        v85 = v313;
      }

      else
      {
        v322 = 0;

        sub_1D5ED34A0(v339, v340, v341);
        sub_1D5D2CFE8(v306, type metadata accessor for FormatVersionRequirement);
        v85 = v313;
        v90 = v314;
        v89 = v312;
        v148 = v316;
      }
    }

    else
    {

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
    }

    v152 = v305;
    v148(v305, v319, v85);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAA80;
    v337 = xmmword_1D72BAA80;
    v338 = 0;
    LOBYTE(v331) = 0;
    v153 = swift_allocObject();
    v155 = v153;
    *(v153 + 16) = v323;
    *(v153 + 32) = v331;
    *(v153 + 40) = v89;
    *(v153 + 48) = v90;
    if (v349 == 254)
    {
    }

    else
    {
      v315 = &v289;
      v333 = v346;
      v334 = v347;
      v335 = v348;
      v336 = v349;
      v331 = v344;
      v332 = v345;
      MEMORY[0x1EEE9AC00](v153, v154);
      *(&v289 - 4) = sub_1D5B4AA6C;
      *(&v289 - 3) = 0;
      v287 = sub_1D6708ABC;
      v288 = v155;
      LOBYTE(v325) = 0;
      v196 = swift_allocObject();
      *(v196 + 16) = v323;
      *(v196 + 32) = v325;
      *(v196 + 40) = v89;
      *(v196 + 48) = v90;
      swift_retain_n();
      sub_1D5D355B8(&v344, &v325, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v197 = sub_1D72647CC();
      LOBYTE(v325) = 0;
      v198 = swift_allocObject();
      *(v198 + 16) = v197;
      *(v198 + 24) = v323;
      *(v198 + 40) = v325;
      v199 = *(v324 + 3);
      v200 = *(v324 + 4);
      v201 = __swift_project_boxed_opaque_existential_1(v324, v199);
      MEMORY[0x1EEE9AC00](v201, v202);
      MEMORY[0x1EEE9AC00](v203, v204);
      *(&v289 - 4) = sub_1D615B4A4;
      *(&v289 - 3) = (&v289 - 6);
      v287 = sub_1D6708ABC;
      v288 = v196;
      v205 = v322;
      v207 = sub_1D5D2F7A4(v152, sub_1D615B49C, v206, sub_1D615B4A4, (&v289 - 6), v199, v200);
      if (v205)
      {

        v327 = v333;
        v328 = v334;
        v329 = v335;
        v330 = v336;
        v325 = v331;
        v326 = v332;
        sub_1D601144C(&v325);
        v127 = v350;
        v128 = v305;
        goto LABEL_21;
      }

      v210 = v207;

      if (v210)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v90 = v314;
        v322 = 0;

        v327 = v333;
        v328 = v334;
        v329 = v335;
        v330 = v336;
        v325 = v331;
        v326 = v332;
        sub_1D601144C(&v325);
        v89 = v312;
        v85 = v313;
      }

      else
      {
        v322 = 0;

        v327 = v333;
        v328 = v334;
        v329 = v335;
        v330 = v336;
        v325 = v331;
        v326 = v332;
        sub_1D601144C(&v325);
        v85 = v313;
        v90 = v314;
        v89 = v312;
      }
    }

    sub_1D5D2CFE8(v305, type metadata accessor for FormatVersionRequirement);
    v156 = v303;
    v316(v303, v319, v85);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAA90;
    v331 = xmmword_1D72BAA90;
    LOBYTE(v332) = 0;
    LOBYTE(v325) = 0;
    v157 = swift_allocObject();
    v159 = v157;
    *(v157 + 16) = v323;
    *(v157 + 32) = v325;
    *(v157 + 40) = v89;
    *(v157 + 48) = v90;
    v160 = v300;
    if (v300 == 255)
    {

      sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);

      v209 = v319;
      v176 = v350;
    }

    else
    {
      v315 = &v289;
      v162 = v297;
      v161 = v298;
      *&v325 = v298;
      *(&v325 + 1) = v297;
      LOBYTE(v326) = v300 & 1;
      MEMORY[0x1EEE9AC00](v157, v158);
      *(&v289 - 4) = sub_1D5B4AA6C;
      *(&v289 - 3) = 0;
      v287 = sub_1D6708ABC;
      v288 = v159;
      LOBYTE(v337) = 0;
      v163 = swift_allocObject();
      *(v163 + 16) = v323;
      *(v163 + 32) = v337;
      *(v163 + 40) = v89;
      *(v163 + 48) = v90;
      swift_retain_n();
      sub_1D6189668(v161, v162, v160);
      v164 = v350;
      v165 = sub_1D72647CC();
      LOBYTE(v337) = 0;
      v166 = swift_allocObject();
      *(v166 + 16) = v165;
      *(v166 + 24) = v323;
      *(v166 + 40) = v337;
      v167 = *(v324 + 3);
      v168 = *(v324 + 4);
      v169 = __swift_project_boxed_opaque_existential_1(v324, v167);
      MEMORY[0x1EEE9AC00](v169, v170);
      MEMORY[0x1EEE9AC00](v171, v172);
      *(&v289 - 4) = sub_1D615B4A4;
      *(&v289 - 3) = (&v289 - 6);
      v287 = sub_1D6708ABC;
      v288 = v163;
      v173 = v322;
      v175 = sub_1D5D2F7A4(v303, sub_1D615B49C, v174, sub_1D615B4A4, (&v289 - 6), v167, v168);
      if (v173)
      {

        v176 = v164;
        v177 = v303;
LABEL_36:
        sub_1D5D2F2C8(v325, *(&v325 + 1), v326);
LABEL_39:
        v195 = v177;
LABEL_40:
        sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);
LABEL_41:
        v81 = v176;
        return sub_1D5D2CFE8(v81, sub_1D669F128);
      }

      v322 = 0;
      v211 = v175;

      if (v211)
      {
        sub_1D60ED320();
        v176 = v164;
        v212 = v322;
        sub_1D72647EC();
        v90 = v314;
        v177 = v303;
        v209 = v319;
        v322 = v212;
        if (v212)
        {

          goto LABEL_36;
        }

        sub_1D5D2F2C8(v325, *(&v325 + 1), v326);
        sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2F2C8(v325, *(&v325 + 1), v326);
        sub_1D5D2CFE8(v303, type metadata accessor for FormatVersionRequirement);
        v176 = v164;
        v90 = v314;
        v209 = v319;
      }
    }

    sub_1D5B58478(0);
    v214 = *(v213 + 48);
    v215 = v299;
    v216 = (v299 + *(v213 + 64));
    v217 = v209;
    v218 = v313;
    v219 = v316;
    v316(v299, v217, v313);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v220 = __swift_project_value_buffer(v218, qword_1EDFFCE68);
    v219(v215 + v214, v220, v218);
    *v216 = 0;
    v216[1] = 0;
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAAA0;
    v331 = xmmword_1D72BAAA0;
    LOBYTE(v332) = 0;
    LOBYTE(v325) = 0;
    v221 = swift_allocObject();
    *(v221 + 16) = v323;
    *(v221 + 32) = v325;
    v223 = v312;
    *(v221 + 40) = v312;
    *(v221 + 48) = v90;
    if (v296 == 255)
    {
      v243 = v219;

      sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

      v244 = v223;
    }

    else
    {
      v319 = &v289;
      v224 = v293;
      v225 = v292;
      *&v325 = v293;
      *(&v325 + 1) = v292;
      LOBYTE(v326) = v296 & 1;
      MEMORY[0x1EEE9AC00](v221, v222);
      v226 = v90;
      *(&v289 - 4) = sub_1D5B4AA6C;
      *(&v289 - 3) = 0;
      v287 = sub_1D6708ABC;
      v288 = v227;
      LOBYTE(v337) = 0;
      v315 = v227;
      v229 = v228;
      v230 = swift_allocObject();
      *(v230 + 16) = v323;
      *(v230 + 32) = v337;
      *(v230 + 40) = v223;
      *(v230 + 48) = v226;
      swift_retain_n();
      sub_1D6189668(v224, v225, v229);
      v231 = sub_1D72647CC();
      LOBYTE(v337) = 0;
      v232 = swift_allocObject();
      *(v232 + 16) = v231;
      *(v232 + 24) = v323;
      *(v232 + 40) = v337;
      v233 = *(v324 + 3);
      v234 = *(v324 + 4);
      v235 = __swift_project_boxed_opaque_existential_1(v324, v233);
      MEMORY[0x1EEE9AC00](v235, v236);
      MEMORY[0x1EEE9AC00](v237, v238);
      *(&v289 - 4) = sub_1D615B4A4;
      *(&v289 - 3) = (&v289 - 6);
      v287 = sub_1D6708ABC;
      v288 = v230;
      v239 = v299;
      v240 = v322;
      v242 = sub_1D5D2F7A4(v299, sub_1D615B49C, v241, sub_1D615B4A4, (&v289 - 6), v233, v234);
      if (v240)
      {

        v176 = v350;
LABEL_61:
        sub_1D5D2F2C8(v325, *(&v325 + 1), v326);
        v195 = v239;
        goto LABEL_40;
      }

      v322 = 0;
      v245 = v242;

      if (v245)
      {
        sub_1D60ED320();
        v176 = v350;
        v246 = v322;
        sub_1D72647EC();
        v90 = v314;
        v244 = v312;
        v243 = v316;
        v322 = v246;
        if (v246)
        {

          goto LABEL_61;
        }

        sub_1D5D2F2C8(v325, *(&v325 + 1), v326);
        sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2F2C8(v325, *(&v325 + 1), v326);
        sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
        v176 = v350;
        v90 = v314;
        v244 = v312;
        v243 = v316;
      }
    }

    v247 = v294;
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v248 = v313;
    v249 = __swift_project_value_buffer(v313, qword_1EDFFCDE0);
    v243(v247, v249, v248);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAAB0;
    v331 = xmmword_1D72BAAB0;
    LOBYTE(v332) = 0;
    LOBYTE(v325) = 0;
    v250 = swift_allocObject();
    v252 = v250;
    *(v250 + 16) = v323;
    *(v250 + 32) = v325;
    *(v250 + 40) = v244;
    *(v250 + 48) = v90;
    if (v291 == 2)
    {
    }

    else
    {
      v319 = &v289;
      LOBYTE(v325) = v291 & 1;
      MEMORY[0x1EEE9AC00](v250, v251);
      *(&v289 - 4) = sub_1D5B4AA6C;
      *(&v289 - 3) = 0;
      v287 = sub_1D6708ABC;
      v288 = v252;
      LOBYTE(v337) = 0;
      v253 = swift_allocObject();
      *(v253 + 16) = v323;
      *(v253 + 32) = v337;
      *(v253 + 40) = v244;
      *(v253 + 48) = v90;
      swift_retain_n();
      v254 = v247;
      v255 = sub_1D72647CC();
      LOBYTE(v337) = 0;
      v256 = swift_allocObject();
      *(v256 + 16) = v255;
      *(v256 + 24) = v323;
      *(v256 + 40) = v337;
      v257 = *(v324 + 3);
      v258 = *(v324 + 4);
      v259 = __swift_project_boxed_opaque_existential_1(v324, v257);
      MEMORY[0x1EEE9AC00](v259, v260);
      MEMORY[0x1EEE9AC00](v261, v262);
      *(&v289 - 4) = sub_1D615B4A4;
      *(&v289 - 3) = (&v289 - 6);
      v287 = sub_1D6708ABC;
      v288 = v253;
      v263 = v322;
      v265 = sub_1D5D2F7A4(v254, sub_1D615B49C, v264, sub_1D615B4A4, (&v289 - 6), v257, v258);
      if (v263)
      {
        sub_1D5D2CFE8(v254, type metadata accessor for FormatVersionRequirement);

        v176 = v350;
        goto LABEL_41;
      }

      v266 = v265;
      v322 = 0;

      if (v266)
      {
        v176 = v350;
        v267 = v322;
        sub_1D72647EC();
        v322 = v267;
        if (v267)
        {
          sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
          goto LABEL_85;
        }
      }

      else
      {
        v176 = v350;
      }

      v247 = v294;
      v90 = v314;
      v244 = v312;
      v243 = v316;
    }

    sub_1D5D2CFE8(v247, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v268 = v313;
    v269 = __swift_project_value_buffer(v313, qword_1EDFFCD00);
    v270 = v295;
    v243(v295, v269, v268);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAAC0;
    v331 = xmmword_1D72BAAC0;
    LOBYTE(v332) = 0;
    LOBYTE(v325) = 0;
    v271 = swift_allocObject();
    v273 = v271;
    *(v271 + 16) = v323;
    *(v271 + 32) = v325;
    *(v271 + 40) = v244;
    *(v271 + 48) = v90;
    if (v290)
    {
      v319 = &v289;
      *&v325 = v290;
      MEMORY[0x1EEE9AC00](v271, v272);
      *(&v289 - 4) = sub_1D5B4AA6C;
      *(&v289 - 3) = 0;
      v287 = sub_1D6708ABC;
      v288 = v273;
      LOBYTE(v337) = 0;
      v274 = swift_allocObject();
      *(v274 + 16) = v323;
      *(v274 + 32) = v337;
      *(v274 + 40) = v244;
      *(v274 + 48) = v90;
      swift_retain_n();

      v275 = sub_1D72647CC();
      LOBYTE(v337) = 0;
      v276 = swift_allocObject();
      *(v276 + 16) = v275;
      *(v276 + 24) = v323;
      *(v276 + 40) = v337;
      v277 = *(v324 + 3);
      v278 = *(v324 + 4);
      v279 = __swift_project_boxed_opaque_existential_1(v324, v277);
      MEMORY[0x1EEE9AC00](v279, v280);
      MEMORY[0x1EEE9AC00](v281, v282);
      *(&v289 - 4) = sub_1D615B4A4;
      *(&v289 - 3) = (&v289 - 6);
      v287 = sub_1D669F250;
      v288 = v274;
      v283 = v322;
      v285 = sub_1D5D2F7A4(v295, sub_1D615B49C, v284, sub_1D615B4A4, (&v289 - 6), v277, v278);
      if (v283)
      {

        v176 = v350;
        v195 = v295;
        goto LABEL_40;
      }

      v286 = v285;

      if ((v286 & 1) == 0)
      {

        sub_1D5D2CFE8(v295, type metadata accessor for FormatVersionRequirement);
        v176 = v350;
        goto LABEL_41;
      }

      sub_1D5C34D84(0, &unk_1EDF1B040, &type metadata for FormatLayeredMediaFilter, MEMORY[0x1E69E62F8]);
      sub_1D669EF9C();
      v176 = v350;
      sub_1D72647EC();
      v177 = v295;

      goto LABEL_39;
    }

    sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
LABEL_85:

    goto LABEL_41;
  }

  v103 = v350;
  v104 = v315;

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v103, sub_1D669F128);
}

uint64_t sub_1D6512EBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D66A0F84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6512EF4(uint64_t a1)
{
  v2 = sub_1D5CDCBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6512F30(uint64_t a1)
{
  v2 = sub_1D5CDCBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaRatio.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D669F2E0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D669F374(0);
  sub_1D5B58B84(&qword_1EDF251C8, sub_1D669F374, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x676E69646E6962, 0xE700000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D669F4F4();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaRatio.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D669F548(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D669F374(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF251C8, sub_1D669F374, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaRatio, v16, v18, v13, &type metadata for FormatLayeredMediaRatio, v16, &type metadata for FormatVersions.AzdenC, v14, v11, v17, &off_1F51F6BB8);
  if (qword_1EDF31EF0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCDB0);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v12;
  v44[3] = 0;
  v44[4] = 0;
  v45 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v46 = 0;
  v24 = swift_allocObject();
  v44[1] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v46;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D6708AC0;
  v43 = v26;
  v46 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v46;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D669F5DC(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF03188, sub_1D669F5DC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[0] = v29;
  v30 = sub_1D72647CC();
  v46 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v46;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D669F670;
  v43 = v27;
  v39 = v44[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D669F6EC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D669F548);
}