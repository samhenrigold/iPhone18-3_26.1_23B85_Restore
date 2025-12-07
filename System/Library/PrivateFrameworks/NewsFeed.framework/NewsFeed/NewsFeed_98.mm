uint64_t FormatWebEmbedNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D666BFD0(0);
  v7 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666C064(0);
  sub_1D5B58B84(&qword_1EDF25148, sub_1D666C064, &unk_1D7321584);
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

  v13 = v42;
  v14 = v10;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D66174B0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v40 = 0uLL;
  v41 = 0;
  sub_1D726431C();
  v18 = v38;
  v38 = xmmword_1D728CF30;
  v39 = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v36 = v18;
  v24 = v40;
  v37 = v41;
  v38 = xmmword_1D7297410;
  v39 = 0;
  sub_1D726427C();
  v25 = *(&v40 + 1);
  v34 = v24;
  v35 = v24;
  v26 = v41;
  v40 = xmmword_1D72BAA60;
  v41 = 0;
  v31 = sub_1D726423C();
  v32 = v26;
  v33 = v25;
  v40 = xmmword_1D72BAA70;
  v41 = 0;
  v27 = sub_1D726423C();
  (*(v13 + 8))(v14, v7);
  v28 = *(&v36 + 1);
  *a2 = v36;
  *(a2 + 8) = v28;
  v29 = *(&v35 + 1);
  *(a2 + 16) = v34;
  *(a2 + 24) = v29;
  LODWORD(v29) = v38;
  *(a2 + 32) = v37;
  *(a2 + 33) = v29;
  *(a2 + 36) = *(&v38 + 3);
  v30 = v33;
  *(a2 + 40) = v35;
  *(a2 + 48) = v30;
  LOBYTE(v30) = v31;
  *(a2 + 56) = v32;
  *(a2 + 57) = v30;
  *(a2 + 58) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWebEmbedNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v157 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v165 = &v154 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v163 = &v154 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v168 = (&v154 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v154 - v17;
  sub_1D666C1E4(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = *(v1 + 8);
  v26 = *(v1 + 24);
  v162 = *(v1 + 16);
  v161 = v26;
  LODWORD(v164) = *(v1 + 32);
  v27 = *(v1 + 48);
  v159 = *(v1 + 40);
  v158 = v27;
  v184 = *(v1 + 56);
  v160 = *(v1 + 57);
  v156 = *(v1 + 58);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1D666C064(0);
  v31 = v30;
  v32 = sub_1D5B58B84(&qword_1EDF25148, sub_1D666C064, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatWebEmbedNodeStyle.Selector, v31, v33, v28, &type metadata for FormatWebEmbedNodeStyle.Selector, v31, &type metadata for FormatVersions.JazzkonC, v29, v23, v32, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v34 = sub_1D725BD1C();
  v35 = __swift_project_value_buffer(v34, qword_1EDFFCD30);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v171 = v36 + 16;
  v172 = v35;
  v166 = v34;
  v169 = v37;
  (v37)(v18);
  v170 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v178 = v24;
  v179 = v25;
  v181 = 0uLL;
  v182 = 0;
  v38 = &v23[*(v20 + 44)];
  v39 = *v38;
  v40 = *(v38 + 1);
  v183 = 0;
  v41 = swift_allocObject();
  *&v176 = &v154;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v183;
  *(v41 + 40) = v39;
  *(v41 + 48) = v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v175 = &v154 - 6;
  *(&v154 - 4) = sub_1D5B4AA6C;
  *(&v154 - 3) = 0;
  v152 = sub_1D6708934;
  v153 = v43;
  v183 = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v183;
  v167 = v39;
  *(v44 + 40) = v39;
  *(v44 + 48) = v40;
  sub_1D666C278(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EDF03108, sub_1D666C278, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v173 = v46;
  v174 = v47;
  v48 = sub_1D72647CC();
  v183 = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v183;
  v50 = v23;
  v51 = v18;
  v52 = (v50 + *(v20 + 36));
  v53 = v52[3];
  v54 = v52[4];
  v55 = __swift_project_boxed_opaque_existential_1(v52, v53);
  MEMORY[0x1EEE9AC00](v55, v56);
  MEMORY[0x1EEE9AC00](v57, v58);
  v59 = v175;
  *(&v154 - 4) = sub_1D615B4A4;
  *(&v154 - 3) = v59;
  v152 = sub_1D6708934;
  v153 = v44;
  v60 = v177;
  sub_1D5D2BC70(v51, sub_1D615B49C, v61, sub_1D615B4A4, (&v154 - 6), v53, v54);
  if (v60)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v62 = v50;
    return sub_1D5D2CFE8(v62, sub_1D666C1E4);
  }

  v63 = v172;
  v175 = v52;
  *&v177 = v40;

  sub_1D5D3E60C();
  sub_1D72647EC();
  v62 = v50;
  v155 = 0;
  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

  v65 = v168;
  v64 = v169;
  v66 = v166;
  v169(v168, v63, v166);
  swift_storeEnumTagMultiPayload();
  v176 = xmmword_1D728CF30;
  v181 = xmmword_1D728CF30;
  v182 = 0;
  LOBYTE(v178) = 0;
  v67 = swift_allocObject();
  v69 = v67;
  *(v67 + 16) = v176;
  *(v67 + 32) = v178;
  v70 = v167;
  v71 = v177;
  *(v67 + 40) = v167;
  *(v67 + 48) = v71;
  v72 = v164;
  if (v164 <= 0xFD)
  {
    v172 = &v154;
    v96 = v162;
    v97 = v161;
    v178 = v162;
    v179 = v161;
    v180 = v164;
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v154 - 4) = sub_1D5B4AA6C;
    *(&v154 - 3) = 0;
    v152 = sub_1D6708934;
    v153 = v69;
    v183 = 0;
    v98 = swift_allocObject();
    *(v98 + 16) = v176;
    *(v98 + 32) = v183;
    *(v98 + 40) = v70;
    *(v98 + 48) = v71;
    swift_retain_n();
    sub_1D5ED34B0(v96, v97, v72);
    v99 = sub_1D72647CC();
    v183 = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = v99;
    *(v100 + 24) = v176;
    *(v100 + 40) = v183;
    v101 = v175[3];
    v102 = v175[4];
    v103 = __swift_project_boxed_opaque_existential_1(v175, v101);
    MEMORY[0x1EEE9AC00](v103, v104);
    MEMORY[0x1EEE9AC00](v105, v106);
    *(&v154 - 4) = sub_1D615B4A4;
    *(&v154 - 3) = (&v154 - 6);
    v77 = v168;
    v152 = sub_1D6708934;
    v153 = v98;
    v107 = v155;
    v109 = sub_1D5D2F7A4(v168, sub_1D615B49C, v108, sub_1D615B4A4, (&v154 - 6), v101, v102);
    if (v107)
    {
LABEL_23:

LABEL_24:
      sub_1D5ED34A0(v178, v179, v180);
      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v62, sub_1D666C1E4);
    }

    v136 = v109;
    v155 = 0;

    v137 = v165;
    if (v136)
    {
      sub_1D6661258();
      v138 = v155;
      sub_1D72647EC();
      v66 = v166;
      v74 = v167;
      v64 = v169;
      v155 = v138;
      if (v138)
      {

        goto LABEL_24;
      }

      sub_1D5ED34A0(v178, v179, v180);
      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
      v71 = v177;
      v73 = v137;
    }

    else
    {

      sub_1D5ED34A0(v178, v179, v180);
      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
      v71 = v177;
      v66 = v166;
      v74 = v167;
      v64 = v169;
      v73 = v137;
    }
  }

  else
  {

    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

    v73 = v165;
    v74 = v70;
  }

  v75 = v73;
  v172 = v50;
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v66, qword_1EDFFCE80);
  v77 = v163;
  v64(v163, v76, v66);
  swift_storeEnumTagMultiPayload();
  v176 = xmmword_1D7297410;
  v181 = xmmword_1D7297410;
  v182 = 0;
  LOBYTE(v178) = 0;
  v78 = swift_allocObject();
  v80 = v78;
  *(v78 + 16) = v176;
  *(v78 + 32) = v178;
  *(v78 + 40) = v74;
  *(v78 + 48) = v71;
  v81 = v74;
  v82 = v184;
  if (v184 <= 0xFD)
  {
    v168 = &v154;
    v110 = v159;
    v111 = v158;
    v178 = v159;
    v179 = v158;
    v180 = v184;
    MEMORY[0x1EEE9AC00](v78, v79);
    v164 = &v154 - 6;
    *(&v154 - 4) = sub_1D5B4AA6C;
    *(&v154 - 3) = 0;
    v152 = sub_1D6708934;
    v153 = v80;
    v183 = 0;
    v112 = swift_allocObject();
    *(v112 + 16) = v176;
    *(v112 + 32) = v183;
    *(v112 + 40) = v81;
    *(v112 + 48) = v71;
    swift_retain_n();
    sub_1D5ED34B0(v110, v111, v82);
    v62 = v172;
    v113 = sub_1D72647CC();
    v183 = 0;
    v114 = swift_allocObject();
    *(v114 + 16) = v113;
    *(v114 + 24) = v176;
    *(v114 + 40) = v183;
    v115 = v175[3];
    v116 = v175[4];
    v117 = __swift_project_boxed_opaque_existential_1(v175, v115);
    MEMORY[0x1EEE9AC00](v117, v118);
    MEMORY[0x1EEE9AC00](v119, v120);
    v121 = v164;
    *(&v154 - 4) = sub_1D615B4A4;
    *(&v154 - 3) = v121;
    v152 = sub_1D6708934;
    v153 = v112;
    v122 = v155;
    v124 = sub_1D5D2F7A4(v77, sub_1D615B49C, v123, sub_1D615B4A4, (&v154 - 6), v115, v116);
    v85 = v122;
    if (!v122)
    {
      v150 = v124;

      v84 = v165;
      if (v150)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v66 = v166;
        v83 = v167;
        v64 = v169;
        v85 = 0;

        sub_1D5ED34A0(v178, v179, v180);
        sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);
        v71 = v177;
      }

      else
      {

        sub_1D5ED34A0(v178, v179, v180);
        sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);
        v71 = v177;
        v66 = v166;
        v83 = v167;
        v64 = v169;
      }

      goto LABEL_11;
    }

    goto LABEL_23;
  }

  sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

  v83 = v81;
  v62 = v172;
  v84 = v75;
  v85 = v155;
LABEL_11:
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v86 = __swift_project_value_buffer(v66, qword_1EDFFCDE0);
  v64(v84, v86, v66);
  swift_storeEnumTagMultiPayload();
  v176 = xmmword_1D72BAA60;
  v181 = xmmword_1D72BAA60;
  v182 = 0;
  LOBYTE(v178) = 0;
  v87 = swift_allocObject();
  v89 = v87;
  *(v87 + 16) = v176;
  *(v87 + 32) = v178;
  *(v87 + 40) = v83;
  *(v87 + 48) = v71;
  if (v160 == 2)
  {
  }

  else
  {
    v172 = &v154;
    LOBYTE(v178) = v160 & 1;
    MEMORY[0x1EEE9AC00](v87, v88);
    *(&v154 - 4) = sub_1D5B4AA6C;
    *(&v154 - 3) = 0;
    v152 = sub_1D6708934;
    v153 = v89;
    v183 = 0;
    v125 = swift_allocObject();
    *(v125 + 16) = v176;
    *(v125 + 32) = v183;
    *(v125 + 40) = v83;
    *(v125 + 48) = v71;
    swift_retain_n();
    v126 = sub_1D72647CC();
    v183 = 0;
    v127 = swift_allocObject();
    *(v127 + 16) = v126;
    *(v127 + 24) = v176;
    *(v127 + 40) = v183;
    v128 = v175[3];
    v129 = v175[4];
    v130 = __swift_project_boxed_opaque_existential_1(v175, v128);
    MEMORY[0x1EEE9AC00](v130, v131);
    MEMORY[0x1EEE9AC00](v132, v133);
    *(&v154 - 4) = sub_1D615B4A4;
    *(&v154 - 3) = (&v154 - 6);
    v84 = v165;
    v152 = sub_1D6708934;
    v153 = v125;
    v135 = sub_1D5D2F7A4(v165, sub_1D615B49C, v134, sub_1D615B4A4, (&v154 - 6), v128, v129);
    if (v85)
    {
      sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v62, sub_1D666C1E4);
    }

    v151 = v135;

    if (v151)
    {
      sub_1D72647EC();
      v66 = v166;
      v83 = v167;
      v85 = 0;
      v71 = v177;
    }

    else
    {
      v71 = v177;
      v66 = v166;
      v83 = v167;
    }
  }

  sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v90 = __swift_project_value_buffer(v66, qword_1EDFFCE98);
  v91 = v157;
  v169(v157, v90, v66);
  swift_storeEnumTagMultiPayload();
  v177 = xmmword_1D72BAA70;
  v181 = xmmword_1D72BAA70;
  v182 = 0;
  LOBYTE(v178) = 0;
  v92 = swift_allocObject();
  v94 = v92;
  *(v92 + 16) = v177;
  *(v92 + 32) = v178;
  *(v92 + 40) = v83;
  *(v92 + 48) = v71;
  if (v156 == 2)
  {

    v95 = v91;
  }

  else
  {
    *&v176 = &v154;
    LOBYTE(v178) = v156 & 1;
    MEMORY[0x1EEE9AC00](v92, v93);
    *(&v154 - 4) = sub_1D5B4AA6C;
    *(&v154 - 3) = 0;
    v152 = sub_1D6708934;
    v153 = v94;
    v183 = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = v177;
    *(v139 + 32) = v183;
    *(v139 + 40) = v83;
    *(v139 + 48) = v71;
    swift_retain_n();
    v140 = sub_1D72647CC();
    v183 = 0;
    v141 = swift_allocObject();
    *(v141 + 16) = v140;
    *(v141 + 24) = v177;
    *(v141 + 40) = v183;
    v142 = v175[3];
    v143 = v175[4];
    v144 = __swift_project_boxed_opaque_existential_1(v175, v142);
    MEMORY[0x1EEE9AC00](v144, v145);
    MEMORY[0x1EEE9AC00](v146, v147);
    *(&v154 - 4) = sub_1D615B4A4;
    *(&v154 - 3) = (&v154 - 6);
    v152 = sub_1D666C30C;
    v153 = v139;
    sub_1D5D2F7A4(v91, sub_1D615B49C, v148, sub_1D615B4A4, (&v154 - 6), v142, v143);
    if (v85)
    {
      sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v62, sub_1D666C1E4);
    }

    sub_1D72647EC();
    v95 = v157;
  }

  sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v62, sub_1D666C1E4);
}

uint64_t FormatGroupBinding.URL.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
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
          *(v20 + 16) = &unk_1F51120A8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D666C388();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v22 = v25;
      v26 = xmmword_1D7279980;
      if (v27 == 1)
      {
        sub_1D5CCBB44();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = v27 | 0x40;
      }

      else
      {
        sub_1D60F3AFC();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = 0x80;
      }
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66663E4();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.URL.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.URL, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatGroupBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v21, v18, v22, &off_1F51F6B18);
  if (v19 >> 6)
  {
    if (v19 >> 6 == 1)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD68);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AC99C(1, v19 & 1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE38);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ACB34(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD00);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AC808(0, v19, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatGroupNodeMaskPath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_15:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v32;
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
          *(v22 + 16) = &unk_1F51120F8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_15;
        }
      }
    }

    sub_1D666C3DC();
    v39 = 0;
    v40 = 0;
    sub_1D726431C();
    if (v41 > 1u)
    {
      if (v41 == 2)
      {
        (*(v11 + 8))(v15, v5);
        v23 = 0;
        v29 = 0;
        v27 = 0;
        v28 = 0uLL;
        v26 = 3;
        v24 = 0uLL;
        v25 = 0uLL;
      }

      else
      {
        v33 = xmmword_1D7279980;
        sub_1D5C4C9E8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v28 = v34;
        v29 = v35;
        v24 = v36;
        v25 = v37;
        v23 = v38;
        v27 = v35 & 0xFFFFFFFFFFFFFF00;
        v26 = 2;
      }
    }

    else if (v41)
    {
      v34 = xmmword_1D7279980;
      sub_1D666C430();
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v27 = 0;
      *&v28 = v33;
      v26 = 1;
    }

    else
    {
      v33 = xmmword_1D7279980;
      sub_1D5C8C780();
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v26 = 0;
      v27 = 0;
      v28 = v34;
      v29 = v35;
    }

    *v12 = v28;
    *(v12 + 16) = v27 | v29;
    *(v12 + 24) = v24;
    *(v12 + 40) = v25;
    *(v12 + 56) = v23;
    *(v12 + 64) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupNodeMaskPath.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v41 - v17;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 8);
  v45 = *v2;
  v43 = v23;
  v44 = *(v2 + 16);
  v24 = *(v2 + 64);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = sub_1D5C30408();
  v50 = v22;
  sub_1D5D2EE70(&type metadata for FormatGroupNodeMaskPath, &type metadata for FormatCodingKeys, v28, v25, &type metadata for FormatGroupNodeMaskPath, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v26, v22, v27, &off_1F51F6CD8);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *&v46 = v45;
      *(&v46 + 1) = v43;
      v47 = v44;
      v48 = *(v2 + 17);
      *v49 = *(v2 + 33);
      *&v49[15] = *(v2 + 48);
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCDE0);
      v35 = v42;
      (*(*(v33 - 8) + 16))(v42, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v50;
      sub_1D6394850(3, &v46, v35);
      v32 = v35;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCD50);
      (*(*(v38 - 8) + 16))(v10, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v50;
      sub_1D641C924(2, v10);
      v32 = v10;
    }
  }

  else if (v24)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725BD1C();
    v37 = __swift_project_value_buffer(v36, qword_1EDFFCD50);
    (*(*(v36 - 8) + 16))(v14, v37, v36);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v31 = v50;
    sub_1D63946BC(1, v45, v14);
    v32 = v14;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD50);
    (*(*(v29 - 8) + 16))(v18, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v31 = v50;
    sub_1D6394524(0, v45, v43, v44, v18);
    v32 = v18;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
}

uint64_t FormatPuzzleStatisticBinding.Bool.encode(to:)(void *a1)
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
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleStatisticBinding.Bool, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatPuzzleStatisticBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v25, v22, v26, &off_1F51F6BD8);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE80);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641A588(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE80);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641A588(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE80);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A588(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE80);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A588(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatNumberFormat.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  sub_1D666C4D8(0);
  v7 = v6;
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666C56C(0);
  sub_1D5B58B84(&qword_1EDF0C360, sub_1D666C56C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = a2;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v66;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v32 = *(v17 - 2);
      v31 = *(v17 - 1);

      v33 = sub_1D6617678();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v31;
      *(v34 + 16) = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v10, v7);
      a1 = v11;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D666C6EC();
  v73 = 0uLL;
  v74 = 0;
  sub_1D726427C();
  v18 = v72;
  v73 = xmmword_1D728CF30;
  v74 = 0;
  sub_1D666C740();
  sub_1D726427C();
  v19 = v72;
  v73 = xmmword_1D7297410;
  v74 = 0;
  v20 = sub_1D726425C();
  v63 = v21;
  v64 = v20;
  v73 = xmmword_1D72BAA60;
  v74 = 0;
  v22 = sub_1D726425C();
  v61 = v23;
  v62 = v22;
  v73 = xmmword_1D72BAA70;
  v74 = 0;
  v24 = sub_1D726425C();
  v59 = v25;
  v60 = v24;
  v73 = xmmword_1D72BAA80;
  v74 = 0;
  v26 = sub_1D726425C();
  v57 = v27;
  v58 = v26;
  v73 = xmmword_1D72BAA90;
  v74 = 0;
  v28 = sub_1D726425C();
  v55 = v29;
  v56 = v28;
  v73 = xmmword_1D72BAAA0;
  v74 = 0;
  v30 = sub_1D726425C();
  v52 = v36;
  v53 = v30;
  v73 = xmmword_1D72BAAB0;
  v74 = 0;
  v54 = sub_1D726424C();
  v38 = v37;
  (*(v14 + 8))(v10, v7);
  v39 = v63 & 1;
  LOBYTE(v72) = v63 & 1;
  LOBYTE(v71[0]) = v61 & 1;
  LOBYTE(v70[0]) = v59 & 1;
  LOBYTE(v69[0]) = v57 & 1;
  LOBYTE(v68[0]) = v55 & 1;
  LOBYTE(v67[0]) = v52 & 1;
  LOBYTE(v75) = v38 & 1;
  v40 = v61 & 1;
  v41 = v59 & 1;
  v42 = v57 & 1;
  v43 = v55 & 1;
  v44 = v52 & 1;
  v45 = v65;
  *v65 = v18;
  v45[1] = v19;
  *(v45 + 2) = v75;
  *(v45 + 3) = v76;
  *(v45 + 1) = v64;
  v45[16] = v39;
  *(v45 + 17) = v72;
  *(v45 + 5) = *(&v72 + 3);
  *(v45 + 3) = v62;
  v45[32] = v40;
  v46 = v71[0];
  *(v45 + 9) = *(v71 + 3);
  *(v45 + 33) = v46;
  *(v45 + 5) = v60;
  v45[48] = v41;
  v47 = v70[0];
  *(v45 + 13) = *(v70 + 3);
  *(v45 + 49) = v47;
  *(v45 + 7) = v58;
  v45[64] = v42;
  v48 = v69[0];
  *(v45 + 17) = *(v69 + 3);
  *(v45 + 65) = v48;
  *(v45 + 9) = v56;
  v45[80] = v43;
  v49 = v68[0];
  *(v45 + 21) = *(v68 + 3);
  *(v45 + 81) = v49;
  *(v45 + 11) = v53;
  v45[96] = v44;
  v50 = v67[0];
  *(v45 + 25) = *(v67 + 3);
  *(v45 + 97) = v50;
  *(v45 + 13) = v54;
  v45[112] = v38 & 1;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatNumberFormat.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v268 = &v264 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v271 = &v264 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v274 = &v264 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v277 = &v264 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v280 = &v264 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v283 = &v264 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v290 = &v264 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v291 = (&v264 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v264 - v30;
  sub_1D666C794(0);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v264 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v1;
  LODWORD(v289) = v1[1];
  v281 = *(v1 + 1);
  v285 = v1[16];
  v278 = *(v1 + 3);
  v282 = v1[32];
  v275 = *(v1 + 5);
  v279 = v1[48];
  v272 = *(v1 + 7);
  v276 = v1[64];
  v269 = *(v1 + 9);
  v273 = v1[80];
  v266 = *(v1 + 11);
  v270 = v1[96];
  v38 = *(v1 + 13);
  v267 = v1[112];
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1D666C56C(0);
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EDF0C360, sub_1D666C56C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatNumberFormat, v42, v44, v39, &type metadata for FormatNumberFormat, v42, &type metadata for FormatVersions.JazzkonG, v40, v36, v43, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD18);
  v47 = *(v45 - 8);
  v296 = *(v47 + 16);
  *&v297 = v46;
  v295 = v47 + 16;
  (v296)(v31);
  v294 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v301 = 0uLL;
  v302 = 0;
  v48 = &v36[*(v33 + 44)];
  v50 = *v48;
  v49 = *(v48 + 1);
  LOBYTE(v300) = 0;
  v51 = swift_allocObject();
  v53 = v51;
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v300;
  *(v51 + 40) = v50;
  *(v51 + 48) = v49;
  v298 = v36;
  v288 = v45;
  v284 = v50;
  v286 = v33;
  v287 = v49;
  if (v37 == 9)
  {
    v293 = v2;

    goto LABEL_11;
  }

  v293 = &v264;
  LOBYTE(v300) = v37;
  MEMORY[0x1EEE9AC00](v51, v52);
  *&v292 = &v264 - 6;
  *(&v264 - 4) = sub_1D5B4AA6C;
  *(&v264 - 3) = 0;
  v262 = sub_1D6708938;
  v263 = v53;
  v299 = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 32) = v299;
  *(v54 + 40) = v50;
  *(v54 + 48) = v49;
  sub_1D666C828(0);
  v55 = v2;
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v265 = v57;
  v264 = v58;
  v59 = sub_1D72647CC();
  v299 = 0;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v59;
  *(v60 + 40) = v299;
  v61 = &v36[*(v33 + 36)];
  v62 = *(v61 + 3);
  v63 = *(v61 + 4);
  v64 = __swift_project_boxed_opaque_existential_1(v61, v62);
  MEMORY[0x1EEE9AC00](v64, v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  v68 = v292;
  *(&v264 - 4) = sub_1D615B4A4;
  *(&v264 - 3) = v68;
  v262 = sub_1D6708938;
  v263 = v54;
  v70 = sub_1D5D2F7A4(v31, sub_1D615B49C, v69, sub_1D615B4A4, (&v264 - 6), v62, v63);
  if (!v55)
  {
    v72 = v70;
    v33 = v286;

    if (v72)
    {
      sub_1D666C9A0();
      v36 = v298;
      sub_1D72647EC();
      v45 = v288;
      v293 = 0;
      v49 = v287;
    }

    else
    {
      v293 = 0;
      v36 = v298;
      v49 = v287;
      v45 = v288;
    }

    v50 = v284;
LABEL_11:
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

    v73 = v291;
    (v296)(v291, v297, v45);
    swift_storeEnumTagMultiPayload();
    v292 = xmmword_1D728CF30;
    v301 = xmmword_1D728CF30;
    v302 = 0;
    LOBYTE(v300) = 0;
    v74 = swift_allocObject();
    v76 = v74;
    *(v74 + 16) = v292;
    *(v74 + 32) = v300;
    *(v74 + 40) = v50;
    *(v74 + 48) = v49;
    if (v289 == 7)
    {

      v77 = v290;
    }

    else
    {
      v265 = &v264;
      LOBYTE(v300) = v289;
      MEMORY[0x1EEE9AC00](v74, v75);
      *(&v264 - 4) = sub_1D5B4AA6C;
      *(&v264 - 3) = 0;
      v262 = sub_1D6708938;
      v263 = v76;
      v299 = 0;
      v81 = swift_allocObject();
      *(v81 + 16) = v292;
      *(v81 + 32) = v299;
      *(v81 + 40) = v50;
      *(v81 + 48) = v49;
      sub_1D666C828(0);
      v83 = v82;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v289 = v83;
      v84 = sub_1D72647CC();
      v299 = 0;
      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      *(v85 + 24) = v292;
      *(v85 + 40) = v299;
      v86 = &v36[*(v33 + 36)];
      v87 = *(v86 + 3);
      v88 = *(v86 + 4);
      v89 = __swift_project_boxed_opaque_existential_1(v86, v87);
      MEMORY[0x1EEE9AC00](v89, v90);
      MEMORY[0x1EEE9AC00](v91, v92);
      *(&v264 - 4) = sub_1D615B4A4;
      *(&v264 - 3) = (&v264 - 6);
      v262 = sub_1D6708938;
      v263 = v81;
      v93 = v293;
      v95 = sub_1D5D2F7A4(v73, sub_1D615B49C, v94, sub_1D615B4A4, (&v264 - 6), v87, v88);
      v293 = v93;
      if (v93)
      {
        goto LABEL_59;
      }

      v113 = v95;
      v33 = v286;
      v114 = v287;

      if (v113)
      {
        sub_1D666C94C();
        v115 = v298;
        v116 = v293;
        sub_1D72647EC();
        v45 = v288;
        v77 = v290;
        if (v116)
        {
          v117 = v291;
LABEL_75:
          sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);

          goto LABEL_61;
        }

        v293 = 0;
        v49 = v114;
        v50 = v284;
        v73 = v291;
      }

      else
      {
        v49 = v114;
        v50 = v284;
        v45 = v288;
        v77 = v290;
        v73 = v291;
      }
    }

    sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

    (v296)(v77, v297, v45);
    swift_storeEnumTagMultiPayload();
    v292 = xmmword_1D7297410;
    v301 = xmmword_1D7297410;
    v302 = 0;
    LOBYTE(v300) = 0;
    v78 = swift_allocObject();
    v80 = v78;
    *(v78 + 16) = v292;
    *(v78 + 32) = v300;
    *(v78 + 40) = v50;
    *(v78 + 48) = v49;
    if (v285)
    {

      v73 = v283;
    }

    else
    {
      v291 = &v264;
      v300 = v281;
      MEMORY[0x1EEE9AC00](v78, v79);
      *(&v264 - 4) = sub_1D5B4AA6C;
      *(&v264 - 3) = 0;
      v262 = sub_1D6708938;
      v263 = v80;
      v299 = 0;
      v96 = v33;
      v97 = swift_allocObject();
      *(v97 + 16) = v292;
      *(v97 + 32) = v299;
      *(v97 + 40) = v50;
      *(v97 + 48) = v49;
      sub_1D666C828(0);
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v98 = v298;
      v99 = sub_1D72647CC();
      v299 = 0;
      v100 = swift_allocObject();
      *(v100 + 16) = v99;
      *(v100 + 24) = v292;
      *(v100 + 40) = v299;
      v101 = (v98 + *(v96 + 36));
      v102 = v101[3];
      v103 = v101[4];
      v104 = __swift_project_boxed_opaque_existential_1(v101, v102);
      MEMORY[0x1EEE9AC00](v104, v105);
      MEMORY[0x1EEE9AC00](v106, v107);
      *(&v264 - 4) = sub_1D615B4A4;
      *(&v264 - 3) = (&v264 - 6);
      v108 = v290;
      v262 = sub_1D6708938;
      v263 = v97;
      v109 = v293;
      v111 = sub_1D5D2F7A4(v290, sub_1D615B49C, v110, sub_1D615B4A4, (&v264 - 6), v102, v103);
      if (v109)
      {
        sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v298, sub_1D666C794);
      }

      v118 = v111;
      v119 = v287;

      if (v118)
      {
        sub_1D72647EC();
        v45 = v288;
        v33 = v96;
        v293 = 0;
        v49 = v119;
        v50 = v284;
      }

      else
      {
        v293 = 0;
        v33 = v96;
        v49 = v119;
        v50 = v284;
        v45 = v288;
      }

      v73 = v283;
      v77 = v290;
    }

    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

    (v296)(v73, v297, v45);
    swift_storeEnumTagMultiPayload();
    v292 = xmmword_1D72BAA60;
    v301 = xmmword_1D72BAA60;
    v302 = 0;
    LOBYTE(v300) = 0;
    v120 = swift_allocObject();
    v122 = v120;
    *(v120 + 16) = v292;
    *(v120 + 32) = v300;
    *(v120 + 40) = v50;
    *(v120 + 48) = v49;
    if (v282)
    {
    }

    else
    {
      v291 = &v264;
      v300 = v278;
      MEMORY[0x1EEE9AC00](v120, v121);
      *(&v264 - 4) = sub_1D5B4AA6C;
      *(&v264 - 3) = 0;
      v262 = sub_1D6708938;
      v263 = v122;
      v299 = 0;
      v123 = v33;
      v124 = swift_allocObject();
      *(v124 + 16) = v292;
      *(v124 + 32) = v299;
      *(v124 + 40) = v50;
      *(v124 + 48) = v49;
      sub_1D666C828(0);
      v126 = v125;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v127 = v298;
      v290 = v126;
      v128 = sub_1D72647CC();
      v299 = 0;
      v129 = swift_allocObject();
      *(v129 + 16) = v128;
      *(v129 + 24) = v292;
      *(v129 + 40) = v299;
      v130 = (v127 + *(v123 + 36));
      v131 = v130[3];
      v132 = v130[4];
      v133 = __swift_project_boxed_opaque_existential_1(v130, v131);
      MEMORY[0x1EEE9AC00](v133, v134);
      MEMORY[0x1EEE9AC00](v135, v136);
      *(&v264 - 4) = sub_1D615B4A4;
      *(&v264 - 3) = (&v264 - 6);
      v262 = sub_1D6708938;
      v263 = v124;
      v137 = v293;
      v139 = sub_1D5D2F7A4(v73, sub_1D615B49C, v138, sub_1D615B4A4, (&v264 - 6), v131, v132);
      if (v137)
      {
        goto LABEL_59;
      }

      v140 = v139;
      v141 = v286;
      v142 = v287;

      if (v140)
      {
        sub_1D72647EC();
        v45 = v288;
        v33 = v141;
        v293 = 0;
        v49 = v142;
        v50 = v284;
      }

      else
      {
        v293 = 0;
        v33 = v141;
        v49 = v142;
        v50 = v284;
        v45 = v288;
      }

      v73 = v283;
    }

    sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

    v73 = v280;
    (v296)(v280, v297, v45);
    swift_storeEnumTagMultiPayload();
    v292 = xmmword_1D72BAA70;
    v301 = xmmword_1D72BAA70;
    v302 = 0;
    LOBYTE(v300) = 0;
    v143 = swift_allocObject();
    v145 = v143;
    *(v143 + 16) = v292;
    *(v143 + 32) = v300;
    *(v143 + 40) = v50;
    *(v143 + 48) = v49;
    if (v279)
    {

      v146 = v73;
    }

    else
    {
      v291 = &v264;
      v300 = v275;
      MEMORY[0x1EEE9AC00](v143, v144);
      *(&v264 - 4) = sub_1D5B4AA6C;
      *(&v264 - 3) = 0;
      v262 = sub_1D6708938;
      v263 = v145;
      v299 = 0;
      v147 = v33;
      v148 = swift_allocObject();
      *(v148 + 16) = v292;
      *(v148 + 32) = v299;
      *(v148 + 40) = v50;
      *(v148 + 48) = v49;
      sub_1D666C828(0);
      v150 = v149;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v151 = v298;
      v290 = v150;
      v152 = sub_1D72647CC();
      v299 = 0;
      v153 = swift_allocObject();
      *(v153 + 16) = v152;
      *(v153 + 24) = v292;
      *(v153 + 40) = v299;
      v154 = (v151 + *(v147 + 36));
      v155 = v154[3];
      v156 = v154[4];
      v157 = __swift_project_boxed_opaque_existential_1(v154, v155);
      MEMORY[0x1EEE9AC00](v157, v158);
      MEMORY[0x1EEE9AC00](v159, v160);
      *(&v264 - 4) = sub_1D615B4A4;
      *(&v264 - 3) = (&v264 - 6);
      v262 = sub_1D6708938;
      v263 = v148;
      v161 = v293;
      v163 = sub_1D5D2F7A4(v73, sub_1D615B49C, v162, sub_1D615B4A4, (&v264 - 6), v155, v156);
      if (v161)
      {
        goto LABEL_59;
      }

      v164 = v163;
      v165 = v286;
      v166 = v287;

      if (v164)
      {
        sub_1D72647EC();
        v45 = v288;
        v33 = v165;
        v293 = 0;
        v49 = v166;
        v50 = v284;
      }

      else
      {
        v293 = 0;
        v33 = v165;
        v49 = v166;
        v50 = v284;
        v45 = v288;
      }

      v146 = v280;
    }

    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);

    v73 = v277;
    (v296)(v277, v297, v45);
    swift_storeEnumTagMultiPayload();
    v292 = xmmword_1D72BAA80;
    v301 = xmmword_1D72BAA80;
    v302 = 0;
    LOBYTE(v300) = 0;
    v167 = swift_allocObject();
    v169 = v167;
    *(v167 + 16) = v292;
    *(v167 + 32) = v300;
    *(v167 + 40) = v50;
    *(v167 + 48) = v49;
    if (v276)
    {

      v170 = v73;
    }

    else
    {
      v291 = &v264;
      v300 = v272;
      MEMORY[0x1EEE9AC00](v167, v168);
      *(&v264 - 4) = sub_1D5B4AA6C;
      *(&v264 - 3) = 0;
      v262 = sub_1D6708938;
      v263 = v169;
      v299 = 0;
      v171 = v33;
      v172 = swift_allocObject();
      *(v172 + 16) = v292;
      *(v172 + 32) = v299;
      *(v172 + 40) = v50;
      *(v172 + 48) = v49;
      sub_1D666C828(0);
      v174 = v173;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v175 = v298;
      v290 = v174;
      v176 = sub_1D72647CC();
      v299 = 0;
      v177 = swift_allocObject();
      *(v177 + 16) = v176;
      *(v177 + 24) = v292;
      *(v177 + 40) = v299;
      v178 = (v175 + *(v171 + 36));
      v179 = v178[3];
      v180 = v178[4];
      v181 = __swift_project_boxed_opaque_existential_1(v178, v179);
      MEMORY[0x1EEE9AC00](v181, v182);
      MEMORY[0x1EEE9AC00](v183, v184);
      *(&v264 - 4) = sub_1D615B4A4;
      *(&v264 - 3) = (&v264 - 6);
      v262 = sub_1D6708938;
      v263 = v172;
      v185 = v293;
      v187 = sub_1D5D2F7A4(v73, sub_1D615B49C, v186, sub_1D615B4A4, (&v264 - 6), v179, v180);
      if (v185)
      {
        goto LABEL_59;
      }

      v188 = v187;
      v189 = v286;
      v190 = v287;

      if (v188)
      {
        sub_1D72647EC();
        v45 = v288;
        v33 = v189;
        v293 = 0;
        v49 = v190;
        v50 = v284;
      }

      else
      {
        v293 = 0;
        v33 = v189;
        v49 = v190;
        v50 = v284;
        v45 = v288;
      }

      v170 = v277;
    }

    sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);

    v73 = v274;
    (v296)(v274, v297, v45);
    swift_storeEnumTagMultiPayload();
    v292 = xmmword_1D72BAA90;
    v301 = xmmword_1D72BAA90;
    v302 = 0;
    LOBYTE(v300) = 0;
    v191 = swift_allocObject();
    v193 = v191;
    *(v191 + 16) = v292;
    *(v191 + 32) = v300;
    *(v191 + 40) = v50;
    *(v191 + 48) = v49;
    if (v273)
    {

      v194 = v73;
    }

    else
    {
      v291 = &v264;
      v300 = v269;
      MEMORY[0x1EEE9AC00](v191, v192);
      *(&v264 - 4) = sub_1D5B4AA6C;
      *(&v264 - 3) = 0;
      v262 = sub_1D6708938;
      v263 = v193;
      v299 = 0;
      v195 = v33;
      v196 = swift_allocObject();
      *(v196 + 16) = v292;
      *(v196 + 32) = v299;
      *(v196 + 40) = v50;
      *(v196 + 48) = v49;
      sub_1D666C828(0);
      v198 = v197;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v199 = v298;
      v290 = v198;
      v200 = sub_1D72647CC();
      v299 = 0;
      v201 = swift_allocObject();
      *(v201 + 16) = v200;
      *(v201 + 24) = v292;
      *(v201 + 40) = v299;
      v202 = (v199 + *(v195 + 36));
      v203 = v202[3];
      v204 = v202[4];
      v205 = __swift_project_boxed_opaque_existential_1(v202, v203);
      MEMORY[0x1EEE9AC00](v205, v206);
      MEMORY[0x1EEE9AC00](v207, v208);
      *(&v264 - 4) = sub_1D615B4A4;
      *(&v264 - 3) = (&v264 - 6);
      v262 = sub_1D6708938;
      v263 = v196;
      v209 = v293;
      v211 = sub_1D5D2F7A4(v73, sub_1D615B49C, v210, sub_1D615B4A4, (&v264 - 6), v203, v204);
      if (v209)
      {
        goto LABEL_59;
      }

      v212 = v211;
      v213 = v286;
      v214 = v287;

      if (v212)
      {
        sub_1D72647EC();
        v45 = v288;
        v33 = v213;
        v293 = 0;
        v49 = v214;
        v50 = v284;
      }

      else
      {
        v293 = 0;
        v33 = v213;
        v49 = v214;
        v50 = v284;
        v45 = v288;
      }

      v194 = v274;
    }

    sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);

    v73 = v271;
    (v296)(v271, v297, v45);
    swift_storeEnumTagMultiPayload();
    v292 = xmmword_1D72BAAA0;
    v301 = xmmword_1D72BAAA0;
    v302 = 0;
    LOBYTE(v300) = 0;
    v215 = swift_allocObject();
    v217 = v215;
    *(v215 + 16) = v292;
    *(v215 + 32) = v300;
    *(v215 + 40) = v50;
    *(v215 + 48) = v49;
    if (v270)
    {

      v218 = v293;
      v219 = v49;
      v115 = v298;
      v220 = v73;
LABEL_67:
      sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);

      v241 = v268;
      (v296)(v268, v297, v288);
      swift_storeEnumTagMultiPayload();
      v297 = xmmword_1D72BAAB0;
      v301 = xmmword_1D72BAAB0;
      v302 = 0;
      LOBYTE(v300) = 0;
      v242 = swift_allocObject();
      v244 = v242;
      *(v242 + 16) = v297;
      *(v242 + 32) = v300;
      *(v242 + 40) = v50;
      *(v242 + 48) = v219;
      if (v267)
      {

        v117 = v241;
        goto LABEL_75;
      }

      v296 = &v264;
      v300 = v38;
      MEMORY[0x1EEE9AC00](v242, v243);
      v293 = v218;
      *(&v264 - 4) = sub_1D5B4AA6C;
      *(&v264 - 3) = 0;
      v262 = sub_1D6708938;
      v263 = v244;
      v299 = 0;
      v245 = v33;
      v246 = swift_allocObject();
      *(v246 + 16) = v297;
      *(v246 + 32) = v299;
      *(v246 + 40) = v50;
      *(v246 + 48) = v219;
      sub_1D666C828(0);
      v248 = v247;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
      swift_retain_n();
      v295 = v248;
      v249 = sub_1D72647CC();
      v299 = 0;
      v250 = swift_allocObject();
      *(v250 + 16) = v249;
      *(v250 + 24) = v297;
      *(v250 + 40) = v299;
      v251 = (v115 + *(v245 + 36));
      v252 = v251[3];
      v253 = v251[4];
      v254 = __swift_project_boxed_opaque_existential_1(v251, v252);
      MEMORY[0x1EEE9AC00](v254, v255);
      MEMORY[0x1EEE9AC00](v256, v257);
      *(&v264 - 4) = sub_1D615B4A4;
      *(&v264 - 3) = (&v264 - 6);
      v262 = sub_1D666C8BC;
      v263 = v246;
      v258 = v293;
      v260 = sub_1D5D2F7A4(v241, sub_1D615B49C, v259, sub_1D615B4A4, (&v264 - 6), v252, v253);
      if (!v258)
      {
        v261 = v260;

        if (v261)
        {
          v115 = v298;
          sub_1D72647EC();
        }

        else
        {
          v115 = v298;
        }

        v117 = v268;
        goto LABEL_75;
      }

      sub_1D5D2CFE8(v241, type metadata accessor for FormatVersionRequirement);

LABEL_60:
      v115 = v298;
LABEL_61:
      v71 = v115;
      return sub_1D5D2CFE8(v71, sub_1D666C794);
    }

    v291 = &v264;
    v300 = v266;
    MEMORY[0x1EEE9AC00](v215, v216);
    *(&v264 - 4) = sub_1D5B4AA6C;
    *(&v264 - 3) = 0;
    v262 = sub_1D6708938;
    v263 = v217;
    v299 = 0;
    v221 = v33;
    v222 = swift_allocObject();
    *(v222 + 16) = v292;
    *(v222 + 32) = v299;
    *(v222 + 40) = v50;
    *(v222 + 48) = v49;
    sub_1D666C828(0);
    v224 = v223;
    sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828, MEMORY[0x1E69E6F60]);
    swift_retain_n();
    v225 = v298;
    v290 = v224;
    v226 = sub_1D72647CC();
    v299 = 0;
    v227 = swift_allocObject();
    *(v227 + 16) = v226;
    *(v227 + 24) = v292;
    *(v227 + 40) = v299;
    v228 = (v225 + *(v221 + 36));
    v229 = v228[3];
    v230 = v228[4];
    v231 = __swift_project_boxed_opaque_existential_1(v228, v229);
    MEMORY[0x1EEE9AC00](v231, v232);
    MEMORY[0x1EEE9AC00](v233, v234);
    *(&v264 - 4) = sub_1D615B4A4;
    *(&v264 - 3) = (&v264 - 6);
    v262 = sub_1D6708938;
    v263 = v222;
    v235 = v293;
    v237 = sub_1D5D2F7A4(v73, sub_1D615B49C, v236, sub_1D615B4A4, (&v264 - 6), v229, v230);
    v218 = v235;
    if (!v235)
    {
      v239 = v286;
      v238 = v287;
      v240 = v237;

      if (v240)
      {
        v115 = v298;
        sub_1D72647EC();
      }

      else
      {
        v115 = v298;
      }

      v33 = v239;
      v220 = v271;
      v219 = v238;
      v50 = v284;
      goto LABEL_67;
    }

LABEL_59:
    sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

    goto LABEL_60;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

  v71 = v298;
  return sub_1D5D2CFE8(v71, sub_1D666C794);
}

uint64_t FormatSizeEquation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D666C9F4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666CA88(0);
  sub_1D5B58B84(&qword_1EC8864C8, sub_1D666CA88, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v26;
    if (v16)
    {
      v18 = (v15 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D6627E68(0x6874646977, 0xE500000000000000, 0x746867696568, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D726431C();
  (*(v26 + 8))(v10, v6);
  v25 = v30;
  *v11 = v19;
  v11[1] = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSizeEquation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v73 - v8;
  sub_1D666CC08(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v81 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D666CA88(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8864C8, sub_1D666CA88, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSizeEquation, v19, v21, v16, &type metadata for FormatSizeEquation, v19, &type metadata for FormatVersions.JazzkonG, v17, v14, v20, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD18);
  v24 = *(v22 - 8);
  v78 = *(v24 + 16);
  v79 = v23;
  v77 = v24 + 16;
  v78(v9);
  v76 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v92 = v15;
  v90 = 0uLL;
  v91 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v89 = 0;
  v28 = swift_allocObject();
  v85 = v73;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v89;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v87 = v9;
  v73[-4] = sub_1D5B4AA6C;
  v73[-3] = 0;
  v71 = sub_1D670893C;
  v72 = v30;
  v89 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v89;
  v80 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D666CC9C(0);
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EC8864E0, sub_1D666CC9C, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v83 = v34;
  v84 = v33;
  v35 = sub_1D72647CC();
  v89 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v89;
  v37 = *(v11 + 36);
  v86 = v14;
  v38 = &v14[v37];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v73[-4] = sub_1D615B4A4;
  v73[-3] = &v73[-6];
  v46 = v87;
  v45 = v88;
  v71 = sub_1D666CD30;
  v72 = v31;
  sub_1D5D2BC70(v87, sub_1D615B49C, v47, sub_1D615B4A4, &v73[-6], v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v53 = v86;
  }

  else
  {
    v74 = v38;
    v75 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v49 = v48;
    v50 = sub_1D66582DC();
    v51 = v86;
    sub_1D72647EC();
    v52 = v51;
    v73[1] = v50;
    v85 = v49;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v55 = v82;
    (v78)(v82, v79, v22);
    swift_storeEnumTagMultiPayload();
    v92 = v81;
    v88 = xmmword_1D728CF30;
    v90 = xmmword_1D728CF30;
    v91 = 0;
    v89 = 0;
    v56 = swift_allocObject();
    v87 = v73;
    *(v56 + 16) = v88;
    *(v56 + 32) = v89;
    v57 = v80;
    v58 = v75;
    *(v56 + 40) = v80;
    *(v56 + 48) = v58;
    MEMORY[0x1EEE9AC00](v56, v59);
    v73[-4] = sub_1D5B4AA6C;
    v73[-3] = 0;
    v71 = sub_1D670893C;
    v72 = v60;
    v89 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v88;
    *(v61 + 32) = v89;
    *(v61 + 40) = v57;
    *(v61 + 48) = v58;
    swift_retain_n();
    v62 = sub_1D72647CC();
    v89 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v88;
    *(v63 + 40) = v89;
    v64 = *(v74 + 3);
    v65 = *(v74 + 4);
    v66 = __swift_project_boxed_opaque_existential_1(v74, v64);
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    v73[-4] = sub_1D615B4A4;
    v73[-3] = &v73[-6];
    v71 = sub_1D670893C;
    v72 = v61;
    sub_1D5D2BC70(v55, sub_1D615B49C, v70, sub_1D615B4A4, &v73[-6], v64, v65);

    sub_1D72647EC();
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v53 = v52;
  }

  return sub_1D5D2CFE8(v53, sub_1D666CC08);
}

uint64_t FormatSupplementary.Kind.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD30);
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

uint64_t FormatSupplementary.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v233 = &v231 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v235 = &v231 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v236 = &v231 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v237 = &v231 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v240 = &v231 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v244 = &v231 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v242 = &v231 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v248 = &v231 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v245 = &v231 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v231 - v32;
  sub_1D666CE3C(0);
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v231 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *v1;
  v40 = *(v1 + 8);
  v41 = *(v1 + 56);
  v247 = *(v1 + 48);
  v243 = v41;
  v42 = *(v1 + 72);
  v241 = *(v1 + 64);
  v239 = v42;
  v264 = *(v1 + 80);
  v43 = *(v1 + 96);
  v238 = *(v1 + 88);
  v234 = v43;
  v232 = *(v1 + 104);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5CA580C(0);
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF25468, sub_1D5CA580C, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatSupplementary, v47, v49, v44, &type metadata for FormatSupplementary, v47, &type metadata for FormatVersions.JazzkonC, v45, v38, v48, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v50 = sub_1D725BD1C();
  v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
  v52 = *(v50 - 8);
  v53 = *(v52 + 16);
  v246 = v51;
  v251 = v50;
  v252 = v52 + 16;
  v249 = v53;
  v53(v33);
  v253 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v261 = v39;
  v262 = v40;
  v259 = 0uLL;
  v260 = 0;
  v54 = &v38[*(v35 + 44)];
  v55 = *v54;
  v56 = *(v54 + 1);
  v263 = 0;
  v57 = swift_allocObject();
  *&v257 = &v231;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = v263;
  *(v57 + 40) = v55;
  *(v57 + 48) = v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v256 = &v231 - 6;
  *(&v231 - 4) = sub_1D5B4AA6C;
  *(&v231 - 3) = 0;
  v229 = sub_1D6708940;
  v230 = v59;
  v263 = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = v263;
  v250 = v55;
  *(v60 + 40) = v55;
  *(v60 + 48) = v56;
  sub_1D5E1C2D8(0);
  v62 = v61;
  v63 = sub_1D5B58B84(&qword_1EDF034A8, sub_1D5E1C2D8, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v254 = v62;
  v255 = v63;
  v64 = sub_1D72647CC();
  v263 = 0;
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  *(v65 + 32) = 0;
  *(v65 + 16) = v64;
  *(v65 + 40) = v263;
  v66 = v38;
  v67 = v33;
  v68 = &v66[*(v35 + 36)];
  v69 = *(v68 + 3);
  v70 = *(v68 + 4);
  v71 = __swift_project_boxed_opaque_existential_1(v68, v69);
  MEMORY[0x1EEE9AC00](v71, v72);
  MEMORY[0x1EEE9AC00](v73, v74);
  v75 = v256;
  *(&v231 - 4) = sub_1D615B4A4;
  *(&v231 - 3) = v75;
  v229 = sub_1D6708940;
  v230 = v60;
  v76 = v258;
  sub_1D5D2BC70(v67, sub_1D615B49C, v77, sub_1D615B4A4, (&v231 - 6), v69, v70);
  if (!v76)
  {
    v258 = v67;
    v231 = v68;
    v256 = v56;

    sub_1D72647EC();
    v80 = v66;
    sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);

    v82 = v245;
    v81 = v246;
    v83 = v251;
    v84 = v249;
    v249(v245, v246, v251);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
    v84(v82, v81, v83);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
    v85 = v248;
    v84(v248, v81, v83);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v259) = 0;
    v86 = swift_allocObject();
    v257 = xmmword_1D72BAA60;
    *(v86 + 16) = xmmword_1D72BAA60;
    *(v86 + 32) = v259;
    *(v86 + 40) = v250;
    *(v86 + 48) = v256;

    v258 = v80;
    v87 = sub_1D72647CC();
    LOBYTE(v259) = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v257;
    *(v88 + 40) = v259;
    v89 = v231;
    v90 = *(v231 + 3);
    v91 = *(v231 + 4);
    v92 = __swift_project_boxed_opaque_existential_1(v231, v90);
    MEMORY[0x1EEE9AC00](v92, v93);
    MEMORY[0x1EEE9AC00](v94, v95);
    *(&v231 - 4) = sub_1D5B4AA6C;
    *(&v231 - 3) = 0;
    v229 = sub_1D666CED0;
    v230 = v86;
    v97 = sub_1D5D2F7A4(v85, sub_1D615B49C, v96, sub_1D615B4A4, (&v231 - 6), v90, v91);
    v98 = v97;
    v99 = v89;

    if (v98)
    {
      v259 = v257;
      v260 = 0;
      v261 = v247;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
    }

    v100 = v251;
    v101 = v244;
    v102 = v256;
    v103 = v249;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v248 = 0;
    v104 = __swift_project_value_buffer(v100, qword_1EDFFCD18);
    v105 = v242;
    v103(v242, v104, v100);
    swift_storeEnumTagMultiPayload();
    v257 = xmmword_1D72BAA70;
    v259 = xmmword_1D72BAA70;
    v260 = 0;
    LOBYTE(v261) = 0;
    v106 = swift_allocObject();
    v108 = v106;
    *(v106 + 16) = v257;
    *(v106 + 32) = v261;
    v109 = v250;
    *(v106 + 40) = v250;
    *(v106 + 48) = v102;
    if (v243)
    {
      v247 = &v231;
      v261 = v243;
      MEMORY[0x1EEE9AC00](v106, v107);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708940;
      v230 = v108;
      v263 = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v257;
      *(v110 + 32) = v263;
      *(v110 + 40) = v109;
      *(v110 + 48) = v102;
      swift_retain_n();

      v111 = sub_1D72647CC();
      v263 = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      *(v112 + 24) = v257;
      *(v112 + 40) = v263;
      v113 = *(v99 + 3);
      v114 = *(v99 + 4);
      v115 = __swift_project_boxed_opaque_existential_1(v99, v113);
      MEMORY[0x1EEE9AC00](v115, v116);
      MEMORY[0x1EEE9AC00](v117, v118);
      *(&v231 - 4) = sub_1D615B4A4;
      *(&v231 - 3) = (&v231 - 6);
      v229 = sub_1D6708940;
      v230 = v110;
      v119 = v248;
      v121 = sub_1D5D2F7A4(v105, sub_1D615B49C, v120, sub_1D615B4A4, (&v231 - 6), v113, v114);
      if (v119)
      {

        v122 = v258;
        sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
LABEL_15:
        v78 = v122;
        return sub_1D5D2CFE8(v78, sub_1D666CE3C);
      }

      v123 = v121;

      if (v123)
      {
        type metadata accessor for FormatSupplementaryNodeStyle();
        sub_1D5B58B84(&qword_1EDF0A840, type metadata accessor for FormatSupplementaryNodeStyle, &protocol conformance descriptor for FormatSupplementaryNodeStyle);
        sub_1D72647EC();
        v100 = v251;
        v248 = 0;

        v102 = v256;
        v103 = v249;
        v109 = v250;
      }

      else
      {
        v248 = 0;

        v102 = v256;
        v109 = v250;
        v100 = v251;
        v103 = v249;
      }

      v99 = v231;
      v101 = v244;
    }

    else
    {
    }

    sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);
    v124 = v246;
    v103(v101, v246, v100);
    swift_storeEnumTagMultiPayload();
    if (*(v241 + 16))
    {
      LOBYTE(v259) = 0;
      v125 = swift_allocObject();
      v257 = xmmword_1D72BAA80;
      *(v125 + 16) = xmmword_1D72BAA80;
      *(v125 + 32) = v259;
      *(v125 + 40) = v109;
      *(v125 + 48) = v102;

      v126 = v258;
      v127 = sub_1D72647CC();
      LOBYTE(v259) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v127;
      *(v128 + 24) = v257;
      *(v128 + 40) = v259;
      v129 = *(v99 + 3);
      v130 = *(v99 + 4);
      v131 = __swift_project_boxed_opaque_existential_1(v99, v129);
      MEMORY[0x1EEE9AC00](v131, v132);
      MEMORY[0x1EEE9AC00](v133, v134);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708940;
      v230 = v125;
      v135 = v248;
      v137 = sub_1D5D2F7A4(v101, sub_1D615B49C, v136, sub_1D615B4A4, (&v231 - 6), v129, v130);
      v138 = v135;
      if (v135)
      {
        sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);

        v78 = v126;
        return sub_1D5D2CFE8(v78, sub_1D666CE3C);
      }

      v139 = v137;

      if (v139)
      {
        v259 = v257;
        v260 = 0;
        v261 = v241;
        sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
        sub_1D5D2FA60();
        sub_1D72647EC();
        v124 = v246;
        v140 = v244;
        v100 = v251;

        sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
        v102 = v256;
        v103 = v249;
      }

      else
      {
        sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);

        v102 = v256;
        v124 = v246;
        v103 = v249;
        v100 = v251;
      }
    }

    else
    {
      sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);
      v138 = v248;
    }

    v141 = v240;
    v103(v240, v124, v100);
    swift_storeEnumTagMultiPayload();
    if (*(v239 + 16))
    {
      LOBYTE(v259) = 0;
      v142 = swift_allocObject();
      v257 = xmmword_1D72BAA90;
      *(v142 + 16) = xmmword_1D72BAA90;
      *(v142 + 32) = v259;
      *(v142 + 40) = v250;
      *(v142 + 48) = v102;

      v143 = sub_1D72647CC();
      LOBYTE(v259) = 0;
      v144 = swift_allocObject();
      *(v144 + 16) = v143;
      *(v144 + 24) = v257;
      *(v144 + 40) = v259;
      v145 = v138;
      v146 = *(v99 + 3);
      v147 = *(v99 + 4);
      v148 = __swift_project_boxed_opaque_existential_1(v99, v146);
      MEMORY[0x1EEE9AC00](v148, v149);
      MEMORY[0x1EEE9AC00](v150, v151);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708940;
      v230 = v142;
      v153 = sub_1D5D2F7A4(v141, sub_1D615B49C, v152, sub_1D615B4A4, (&v231 - 6), v146, v147);
      v138 = v145;
      if (v145)
      {

        v154 = v258;
        sub_1D5D2CFE8(v240, type metadata accessor for FormatVersionRequirement);
        v78 = v154;
        return sub_1D5D2CFE8(v78, sub_1D666CE3C);
      }

      v156 = v153;

      if (v156)
      {
        sub_1D5E07AF8(v239, v258, 6, 0, 0);
      }

      v124 = v246;

      v103 = v249;
      v155 = v240;
    }

    else
    {
      v155 = v141;
    }

    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
    v157 = v237;
    v103(v237, v124, v100);
    swift_storeEnumTagMultiPayload();
    v248 = v138;
    if (v264)
    {
      v158 = sub_1D72646CC();

      v159 = v238;
      if ((v158 & 1) == 0)
      {
        LOBYTE(v259) = 0;
        v160 = swift_allocObject();
        v257 = xmmword_1D72BAAA0;
        *(v160 + 16) = xmmword_1D72BAAA0;
        *(v160 + 32) = v259;
        *(v160 + 40) = v250;
        *(v160 + 48) = v256;

        v161 = sub_1D72647CC();
        LOBYTE(v259) = 0;
        v162 = swift_allocObject();
        *(v162 + 16) = v161;
        *(v162 + 24) = v257;
        *(v162 + 40) = v259;
        v163 = *(v99 + 3);
        v164 = *(v99 + 4);
        v165 = __swift_project_boxed_opaque_existential_1(v99, v163);
        v247 = &v231;
        MEMORY[0x1EEE9AC00](v165, v166);
        MEMORY[0x1EEE9AC00](v167, v168);
        *(&v231 - 4) = sub_1D5B4AA6C;
        *(&v231 - 3) = 0;
        v229 = sub_1D6708940;
        v230 = v160;
        v169 = v248;
        v171 = sub_1D5D2F7A4(v157, sub_1D615B49C, v170, sub_1D615B4A4, (&v231 - 6), v163, v164);
        if (v169)
        {
          sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

          v78 = v258;
          return sub_1D5D2CFE8(v78, sub_1D666CE3C);
        }

        v190 = v171;

        if (v190)
        {
          v259 = v257;
          v260 = 0;
          LOBYTE(v261) = 1;
          sub_1D619D760();
          sub_1D72647EC();
          sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);
          v248 = 0;
        }

        else
        {
          v248 = 0;
          sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);
        }

        v172 = v256;
        v173 = v250;
        v124 = v246;
LABEL_41:
        v174 = v236;
        v249(v236, v124, v100);
        swift_storeEnumTagMultiPayload();
        if (v159[2])
        {
          LOBYTE(v259) = 0;
          v175 = swift_allocObject();
          v257 = xmmword_1D72BAAB0;
          *(v175 + 16) = xmmword_1D72BAAB0;
          *(v175 + 32) = v259;
          *(v175 + 40) = v173;
          *(v175 + 48) = v172;

          v176 = v258;
          v177 = sub_1D72647CC();
          LOBYTE(v259) = 0;
          v178 = swift_allocObject();
          *(v178 + 16) = v177;
          *(v178 + 24) = v257;
          *(v178 + 40) = v259;
          v179 = v174;
          v180 = *(v99 + 3);
          v181 = *(v99 + 4);
          v182 = __swift_project_boxed_opaque_existential_1(v99, v180);
          MEMORY[0x1EEE9AC00](v182, v183);
          MEMORY[0x1EEE9AC00](v184, v185);
          *(&v231 - 4) = sub_1D5B4AA6C;
          *(&v231 - 3) = 0;
          v229 = sub_1D6708940;
          v230 = v175;
          v186 = v248;
          v188 = sub_1D5D2F7A4(v179, sub_1D615B49C, v187, sub_1D615B4A4, (&v231 - 6), v180, v181);
          if (v186)
          {
            sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);

            v78 = v176;
            return sub_1D5D2CFE8(v78, sub_1D666CE3C);
          }

          v189 = v188;

          if (v189)
          {
            v259 = v257;
            v260 = 0;
            v261 = v238;
            sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
            sub_1D60AD304();
            sub_1D72647EC();
            v124 = v246;
            v248 = 0;

            sub_1D5D2CFE8(v236, type metadata accessor for FormatVersionRequirement);
            v172 = v256;
          }

          else
          {
            v248 = 0;
            sub_1D5D2CFE8(v236, type metadata accessor for FormatVersionRequirement);

            v172 = v256;
            v124 = v246;
          }
        }

        else
        {
          sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);
        }

        v191 = v235;
        v192 = v249;
        v249(v235, v124, v100);
        swift_storeEnumTagMultiPayload();
        if (*(v234 + 16))
        {
          LOBYTE(v259) = 0;
          v193 = swift_allocObject();
          v257 = xmmword_1D72BAAC0;
          *(v193 + 16) = xmmword_1D72BAAC0;
          *(v193 + 32) = v259;
          *(v193 + 40) = v250;
          *(v193 + 48) = v172;

          v194 = v258;
          v195 = sub_1D72647CC();
          LOBYTE(v259) = 0;
          v196 = swift_allocObject();
          *(v196 + 16) = v195;
          *(v196 + 24) = v257;
          *(v196 + 40) = v259;
          v197 = *(v99 + 3);
          v198 = v99;
          v199 = v191;
          v200 = *(v198 + 4);
          v201 = __swift_project_boxed_opaque_existential_1(v198, v197);
          MEMORY[0x1EEE9AC00](v201, v202);
          MEMORY[0x1EEE9AC00](v203, v204);
          *(&v231 - 4) = sub_1D5B4AA6C;
          *(&v231 - 3) = 0;
          v229 = sub_1D6708940;
          v230 = v193;
          v205 = v248;
          v207 = sub_1D5D2F7A4(v199, sub_1D615B49C, v206, sub_1D615B4A4, (&v231 - 6), v197, v200);
          v208 = v205;
          if (v205)
          {
            sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);

            v78 = v194;
            return sub_1D5D2CFE8(v78, sub_1D666CE3C);
          }

          v211 = v207;

          if (v211)
          {
            v259 = v257;
            v260 = 0;
            v261 = v234;
            sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
            sub_1D6659404();
            sub_1D72647EC();

            sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);
          }

          else
          {
            sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);
          }

          v209 = v233;
          v172 = v256;
          v210 = v251;
          v124 = v246;
          v192 = v249;
          v99 = v231;
        }

        else
        {
          sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
          v208 = v248;
          v209 = v233;
          v210 = v251;
        }

        v192(v209, v124, v210);
        swift_storeEnumTagMultiPayload();
        v257 = xmmword_1D72BAAD0;
        v259 = xmmword_1D72BAAD0;
        v260 = 0;
        LOBYTE(v261) = 0;
        v212 = swift_allocObject();
        v214 = v212;
        *(v212 + 16) = v257;
        *(v212 + 32) = v261;
        v215 = v250;
        *(v212 + 40) = v250;
        *(v212 + 48) = v172;
        if (v232 == 7)
        {
        }

        else
        {
          v256 = &v231;
          LOBYTE(v261) = v232;
          MEMORY[0x1EEE9AC00](v212, v213);
          *(&v231 - 4) = sub_1D5B4AA6C;
          *(&v231 - 3) = 0;
          v229 = sub_1D6708940;
          v230 = v214;
          v263 = 0;
          v216 = swift_allocObject();
          *(v216 + 16) = v257;
          *(v216 + 32) = v263;
          *(v216 + 40) = v215;
          *(v216 + 48) = v172;
          swift_retain_n();
          v217 = sub_1D72647CC();
          v263 = 0;
          v218 = swift_allocObject();
          *(v218 + 16) = v217;
          *(v218 + 24) = v257;
          *(v218 + 40) = v263;
          v219 = v208;
          v220 = *(v99 + 3);
          v221 = *(v99 + 4);
          v222 = __swift_project_boxed_opaque_existential_1(v99, v220);
          MEMORY[0x1EEE9AC00](v222, v223);
          MEMORY[0x1EEE9AC00](v224, v225);
          *(&v231 - 4) = sub_1D615B4A4;
          *(&v231 - 3) = (&v231 - 6);
          v209 = v233;
          v229 = sub_1D6708940;
          v230 = v216;
          v227 = sub_1D5D2F7A4(v233, sub_1D615B49C, v226, sub_1D615B4A4, (&v231 - 6), v220, v221);
          if (v219)
          {
            sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);

            v122 = v258;
            goto LABEL_15;
          }

          v228 = v227;

          if (v228)
          {
            sub_1D6327494();
            v122 = v258;
            sub_1D72647EC();
            goto LABEL_63;
          }
        }

        v122 = v258;
LABEL_63:
        sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);

        goto LABEL_15;
      }
    }

    else
    {

      v159 = v238;
    }

    sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
    v172 = v256;
    v173 = v250;
    goto LABEL_41;
  }

  sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);

  v78 = v66;
  return sub_1D5D2CFE8(v78, sub_1D666CE3C);
}

uint64_t FormatBundleImage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v107 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = (&v103 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v103 - v11;
  sub_1D666CF60(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 24);
  v106 = *(v1 + 16);
  v110 = v20;
  v21 = *(v1 + 40);
  v105 = *(v1 + 32);
  v104 = v21;
  v128 = *(v1 + 48);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D5CCFACC(0);
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF25648, sub_1D5CCFACC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatBundleImage, v25, v27, v22, &type metadata for FormatBundleImage, v25, &type metadata for FormatVersions.JazzkonC, v23, v17, v26, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v108 = v29;
  v113 = v31;
  v114 = v28;
  v112 = v30 + 16;
  (v31)(v12);
  v111 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v122 = v18;
  v123 = v19;
  v125 = 0uLL;
  v126 = 0;
  v32 = &v17[*(v14 + 44)];
  v33 = *v32;
  v34 = *(v32 + 1);
  v127 = 0;
  v35 = swift_allocObject();
  *&v119 = &v103;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v127;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v118 = (&v103 - 6);
  *(&v103 - 4) = sub_1D5B4AA6C;
  *(&v103 - 3) = 0;
  v101 = sub_1D6708944;
  v102 = v37;
  v127 = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v127;
  v109 = v33;
  *(v38 + 40) = v33;
  *(v38 + 48) = v34;
  sub_1D666CFF4(0);
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EDF036C8, sub_1D666CFF4, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v116 = v41;
  v117 = v40;
  v42 = sub_1D72647CC();
  v127 = 0;
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v127;
  v44 = *(v14 + 36);
  v45 = v12;
  v121 = v17;
  v46 = &v17[v44];
  v47 = *&v17[v44 + 24];
  v48 = *&v17[v44 + 32];
  v49 = __swift_project_boxed_opaque_existential_1(&v17[v44], v47);
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  v53 = v118;
  *(&v103 - 4) = sub_1D615B4A4;
  *(&v103 - 3) = v53;
  v101 = sub_1D6708944;
  v102 = v38;
  v54 = v120;
  sub_1D5D2BC70(v45, sub_1D615B49C, v55, sub_1D615B4A4, (&v103 - 6), v47, v48);
  if (v54)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v56 = v121;
  }

  else
  {
    v118 = v46;
    *&v120 = v34;

    v56 = v121;
    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v57 = v115;
    v113(v115, v108, v114);
    swift_storeEnumTagMultiPayload();
    v119 = xmmword_1D728CF30;
    v125 = xmmword_1D728CF30;
    v126 = 0;
    LOBYTE(v122) = 0;
    v58 = swift_allocObject();
    v60 = v58;
    *(v58 + 16) = v119;
    *(v58 + 32) = v122;
    v61 = v109;
    v62 = v110;
    v63 = v120;
    *(v58 + 40) = v109;
    *(v58 + 48) = v63;
    if (v62)
    {
      v108 = &v103;
      v122 = v106;
      v123 = v62;
      MEMORY[0x1EEE9AC00](v58, v59);
      *(&v103 - 4) = sub_1D5B4AA6C;
      *(&v103 - 3) = 0;
      v101 = sub_1D6708944;
      v102 = v60;
      v127 = 0;
      v64 = swift_allocObject();
      *(v64 + 16) = v119;
      *(v64 + 32) = v127;
      *(v64 + 40) = v61;
      *(v64 + 48) = v63;
      swift_retain_n();

      v65 = sub_1D72647CC();
      v127 = 0;
      v66 = swift_allocObject();
      *(v66 + 16) = v65;
      *(v66 + 24) = v119;
      *(v66 + 40) = v127;
      v67 = *(v118 + 3);
      v68 = *(v118 + 4);
      v69 = __swift_project_boxed_opaque_existential_1(v118, v67);
      MEMORY[0x1EEE9AC00](v69, v70);
      MEMORY[0x1EEE9AC00](v71, v72);
      *(&v103 - 4) = sub_1D615B4A4;
      *(&v103 - 3) = (&v103 - 6);
      v73 = v115;
      v101 = sub_1D6708944;
      v102 = v64;
      v75 = sub_1D5D2F7A4(v115, sub_1D615B49C, v74, sub_1D615B4A4, (&v103 - 6), v67, v68);
      v77 = v75;

      v76 = v107;
      if (v77)
      {
        v56 = v121;
        sub_1D72647EC();
        v63 = v120;

        sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
        v56 = v121;
        v63 = v120;
      }

      v61 = v109;
    }

    else
    {

      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

      v76 = v107;
    }

    v78 = v128;
    v79 = v114;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v80 = __swift_project_value_buffer(v79, qword_1EDFFCD18);
    v113(v76, v80, v79);
    swift_storeEnumTagMultiPayload();
    v120 = xmmword_1D7297410;
    v125 = xmmword_1D7297410;
    v126 = 0;
    LOBYTE(v122) = 0;
    v81 = swift_allocObject();
    v83 = v81;
    *(v81 + 16) = v120;
    *(v81 + 32) = v122;
    *(v81 + 40) = v61;
    *(v81 + 48) = v63;
    if (v78 == 255)
    {

      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v119 = &v103;
      v84 = v105;
      v85 = v104;
      v122 = v105;
      v123 = v104;
      v124 = v78;
      MEMORY[0x1EEE9AC00](v81, v82);
      v115 = &v103 - 6;
      *(&v103 - 4) = sub_1D5B4AA6C;
      *(&v103 - 3) = 0;
      v101 = sub_1D6708944;
      v102 = v83;
      v127 = 0;
      v86 = swift_allocObject();
      *(v86 + 16) = v120;
      *(v86 + 32) = v127;
      *(v86 + 40) = v61;
      *(v86 + 48) = v63;
      swift_retain_n();
      sub_1D5E433CC(v84, v85, v78);
      v87 = sub_1D72647CC();
      v127 = 0;
      v88 = swift_allocObject();
      *(v88 + 16) = v87;
      *(v88 + 24) = v120;
      *(v88 + 40) = v127;
      v89 = *(v118 + 3);
      v90 = *(v118 + 4);
      v91 = __swift_project_boxed_opaque_existential_1(v118, v89);
      MEMORY[0x1EEE9AC00](v91, v92);
      MEMORY[0x1EEE9AC00](v93, v94);
      v95 = v115;
      *(&v103 - 4) = sub_1D615B4A4;
      *(&v103 - 3) = v95;
      v96 = v107;
      v101 = sub_1D666D088;
      v102 = v86;
      v98 = sub_1D5D2F7A4(v107, sub_1D615B49C, v97, sub_1D615B4A4, (&v103 - 6), v89, v90);
      v99 = v98;

      if (v99)
      {
        sub_1D62EC7A8();
        v56 = v121;
        sub_1D72647EC();

        sub_1D5E43440(v122, v123, v124);
        sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5E43440(v122, v123, v124);
        sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
        v56 = v121;
      }
    }
  }

  return sub_1D5D2CFE8(v56, sub_1D666CF60);
}

void sub_1D6418464(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670918C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6E9C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64185B8(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6705F68;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705F90();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641870C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6700E2C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700E54();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6418860(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6702F3C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702F64();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64189B4(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091A4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F795C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6418B08(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67027DC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702804();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6418C5C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709110;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705FE4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6418DB0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67090A8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F88BC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6418F04(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092A8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702BB0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419058(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D67023E4;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702408();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641919C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FAC14;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC3C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64192F0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FAB98;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FABC0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419444(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F13AC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F13D4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419598(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670622C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706254();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64196EC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709270;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700ED0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419840(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709304;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705CD0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419994(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091FC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC70C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419AE8(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092C4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419C3C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6700DB0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700DD8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419D90(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FA458;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA480();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6419EE4(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091F0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBCC4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641A038(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F66CC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F66F4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641A18C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F9D68;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9D90();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641A2E0(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F9DE4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9E0C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641A434(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F9CEC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9D14();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641A588(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6703154;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670317C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641A6DC(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F9FC0;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9FE4();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641A820(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6702368;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702390();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641A974(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670915C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4F30();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641AAC8(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709100;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67033D4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641AC1C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709298;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67024D8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641AD70(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709308;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705EEC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641AEC4(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6707B04;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6707B2C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641B018(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6705928;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705950();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641B16C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092B0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641B2C0(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D6701E60;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701E84();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641B404(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091B8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8F60();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641B558(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091D0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA3DC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641B6AC(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FAEA8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAED0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641B800(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709278;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641B954(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F7678;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F769C();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641BA98(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091A0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7850();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641BBEC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F7F7C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7FA4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641BD40(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091B0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8910();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641BE94(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709320;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706C98();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641BFE8(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091F8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC600();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641C13C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F14A4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F14CC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641C290(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092A4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6666858();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641C3E4(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67090AC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F89E0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641C538(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F9BF8;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9C1C();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641C67C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091C8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9C70();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641C7D0(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091C4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9B50();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641C924(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092B4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67031F8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641CA78(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670920C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FDA98();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641CBCC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F1220;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D66F1248, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F1250();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641CD20(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670923C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641CE74(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FF328;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF350();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641CFC8(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D6704244;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6704268();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641D10C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6701598;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67015C0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641D260(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709280;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67014C8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641D3B4(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709284;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641D508(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670929C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670257C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641D65C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092F4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670581C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641D7B0(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F86A0;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F86C4();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641D8F4(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6705E70;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705E98();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641DA48(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670312C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D61A707C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641DB9C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709080;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F23B8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641DCF0(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709268;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641DE44(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F5484;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F54A8();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641DF88(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709088;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F52E8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641E0DC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F5408;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5430();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641E230(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670657C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67065A4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641E384(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F5390;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F53B4();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641E4C8(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FD230;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD258();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641E61C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FD3A0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD3C8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641E770(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FD0BC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD0E4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641E8C4(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FD1B4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD1DC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641EA18(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6703F74;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703F9C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641EB6C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709204;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCE2C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641ECC0(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FD2AC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD2D4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641EE14(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FCD88;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCDB0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641EF68(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FD328;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD34C();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641F0AC(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FCF50;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCF78();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641F200(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FCED4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCEFC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641F354(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FD044;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD068();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641F498(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FCFCC;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCFF0();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641F5DC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F1428;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F1450();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641F730(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66F55F4;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5618();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641F874(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709164;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5524();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641F9C8(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6702FB8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702FE0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641FB1C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67090F4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702D78();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641FC70(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F9138;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9160();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641FDC4(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092C8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703E78();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D641FF18(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FA8C8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA8F0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D642006C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FA944;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA96C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64201C0(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709324;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67081C0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6420314(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091F4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBD40();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6420468(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092EC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67054EC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64205BC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670930C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706060();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6420710(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091AC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F83F0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6420864(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F9938;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9960();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64209B8(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F99B4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F99DC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6420B0C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F98BC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F98E4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6420C60(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6706908;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706930();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6420DB4(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091C0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9840();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6420F08(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F9A30;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9A58();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D642105C(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FA26C;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA290();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64211A0(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FA2E4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA30C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64212F4(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D67028D4;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67028F8();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6421438(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FA1F0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA218();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D642158C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091CC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA148();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64216E0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FA360;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA388();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6421834(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FE5A4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FE5CC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6421988(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709260;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67005EC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6421ADC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709168;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5694();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6421C30(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67090A4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F87BC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6421D84(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091D4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA68C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6421ED8(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709150;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F42F8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D642202C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FC418;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC440();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422180(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6702CD4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702CFC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64222D4(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FC588;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC5AC();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422418(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FC2D0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC2F8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D642256C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670245C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702484();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64226C0(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FC164;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC18C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422814(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FC494;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC4BC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422968(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FC510;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC534();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422AAC(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FC1E0;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC204();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422BF0(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FC258;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC27C();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422D34(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FDC70;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FDC94();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422E78(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F5FD0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5FF8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6422FCC(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67090D8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FE4D4();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423120(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FF064;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF08C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423274(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092C0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703C50();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64233C8(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6703FF0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6704018();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D642351C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709184;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6910();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423670(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709180;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6840();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64237C4(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67057A0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67057C8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423918(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F6748;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6770();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423A6C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F6A88;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6AB0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423BC0(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D67041CC;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67041F0();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423D04(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F67C4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F67EC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423E58(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67059A4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67059CC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6423FAC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092BC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670347C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6424100(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709158;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4634();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6424254(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67092E8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705324();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64243A8(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091BC;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9328();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64244FC(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67030B0;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67030D8();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6424650(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D67091B4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8AE0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64247A4(uint64_t a1)
{
  sub_1D5D30DC4(0);
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v10[2] = sub_1D66FCC94;
  v10[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v10);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCCB8();
    v10[4] = 0;
    v10[5] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64248E8(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FCD0C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCD34();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6424A3C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D670922C;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FE744();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6424B90(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F91B4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F91DC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6424CE4(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66F41A4;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F41CC();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6424E38(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v13 = a1 & 1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D66FEDB8;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEDE0();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D6424F8C(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6709244;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF258();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

void sub_1D64250E0(char a1, uint64_t a2)
{
  v13 = a1;
  sub_1D5D30DC4(0);
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v12[2] = sub_1D6706D14;
  v12[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v12);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706D3C();
    v12[5] = 0;
    v12[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t FormatSymbolWeight.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v58 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v56 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v55 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v54 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v53 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v52 = &v50 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v51 = &v50 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v50 - v35;
  v61 = *v1;
  v37 = a1[3];
  v38 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCD30);
  v41 = *(*(v39 - 8) + 16);
  v41(v36, v40, v39);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = v64;
  sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v37, v38);
  if (v42)
  {
    return sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  v44 = v62;
  v45 = v62[3];
  v64 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v45);
  if (v61 > 4)
  {
    v48 = v40;
    if (v61 <= 6)
    {
      if (v61 == 5)
      {
        v47 = v56;
        v41(v56, v48, v39);
      }

      else
      {
        v47 = v57;
        v41(v57, v48, v39);
      }
    }

    else if (v61 == 7)
    {
      v47 = v58;
      v41(v58, v48, v39);
    }

    else
    {
      v47 = v59;
      v41(v59, v48, v39);
    }

    goto LABEL_15;
  }

  v46 = v40;
  if (v61 > 1)
  {
    if (v61 == 2)
    {
      v47 = v53;
      v41(v53, v46, v39);
    }

    else
    {
      v47 = v54;
      v41(v54, v46, v39);
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v47, sub_1D5B4AA6C, 0, v45, v64);
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
    goto LABEL_19;
  }

  v49 = v51;
  v41(v51, v40, v39);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v49, sub_1D5B4AA6C, 0, v45, v64);
  sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t FormatVideoPlayerOverlayContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D666D104(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666D198(0);
  sub_1D5B58B84(&qword_1EDF24E58, sub_1D666D198, &unk_1D7321584);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  v15 = v10;
  if (v14)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D6617CFC();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v15, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B57A54();
  v34 = 0uLL;
  v35 = 0;
  sub_1D726431C();
  v19 = v32;
  v34 = xmmword_1D728CF30;
  v35 = 0;
  sub_1D5CBFAE4();
  sub_1D726431C();
  v25 = v32;
  type metadata accessor for FormatImageNodeStyle(0);
  v34 = xmmword_1D7297410;
  v35 = 0;
  sub_1D5B58B84(&unk_1EDF2B0D8, type metadata accessor for FormatImageNodeStyle, &protocol conformance descriptor for FormatImageNodeStyle);
  sub_1D726427C();
  v26 = v32;
  v34 = xmmword_1D72BAA60;
  v35 = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v30 = v32;
  v31 = v26;
  v32 = xmmword_1D72BAA70;
  v33 = 0;
  sub_1D5CDCE98();
  sub_1D726431C();
  (*(v11 + 8))(v15, v6);
  v27 = v35;
  v28 = v34;
  *v12 = v19;
  *(v12 + 8) = v25;
  v29 = v30;
  *(v12 + 16) = v31;
  *(v12 + 24) = v29;
  *(v12 + 32) = v28;
  *(v12 + 48) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatVideoPlayerOverlayContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v139 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v138 = &v131 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v141 = &v131 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v148 = &v131 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v131 - v17;
  sub_1D666D318(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v142 = v1[1];
  v25 = v1[3];
  v140 = v1[2];
  v137 = v25;
  v26 = v1[5];
  v136 = v1[4];
  v135 = v26;
  v160 = *(v1 + 48);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D666D198(0);
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF24E58, sub_1D666D198, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatVideoPlayerOverlayContent, v30, v32, v27, &type metadata for FormatVideoPlayerOverlayContent, v30, &type metadata for FormatVersions.Sydro, v28, v23, v31, &off_1F51F6C38);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCDE0);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v144 = v34;
  v146 = v35 + 16;
  v147 = v36;
  (v36)(v18);
  v145 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v155 = v24;
  v157 = 0uLL;
  v158 = 0;
  v37 = &v23[*(v20 + 44)];
  v39 = *v37;
  v38 = *(v37 + 1);
  v159 = 0;
  v40 = swift_allocObject();
  v152 = &v131;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v159;
  *(v40 + 40) = v39;
  *(v40 + 48) = v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v151 = v18;
  *(&v131 - 4) = sub_1D5B4AA6C;
  *(&v131 - 3) = 0;
  v129 = sub_1D6708948;
  v130 = v42;
  v159 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v159;
  v143 = v39;
  *(v43 + 40) = v39;
  *(v43 + 48) = v38;
  sub_1D666D3AC(0);
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EDF02D98, sub_1D666D3AC, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v149 = v45;
  v150 = v46;
  v47 = sub_1D72647CC();
  v159 = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v159;
  v49 = &v23[*(v20 + 36)];
  v154 = v23;
  v50 = *(v49 + 3);
  v51 = *(v49 + 4);
  v52 = __swift_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  *(&v131 - 4) = sub_1D615B4A4;
  *(&v131 - 3) = (&v131 - 6);
  v56 = v151;
  v129 = sub_1D6708948;
  v130 = v43;
  v57 = v153;
  sub_1D5D2BC70(v151, sub_1D615B49C, v58, sub_1D615B4A4, (&v131 - 6), v50, v51);
  if (v57)
  {
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    v59 = v154;
  }

  else
  {
    v132 = v49;
    v134 = v33;
    v133 = v38;

    sub_1D5B55E48();
    sub_1D72647EC();
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    v147(v148, v144, v134);
    swift_storeEnumTagMultiPayload();
    *&v155 = v142;
    v153 = xmmword_1D728CF30;
    v157 = xmmword_1D728CF30;
    v158 = 0;
    v159 = 0;
    v61 = swift_allocObject();
    v152 = &v131;
    *(v61 + 16) = v153;
    *(v61 + 32) = v159;
    v62 = v143;
    v63 = v133;
    *(v61 + 40) = v143;
    *(v61 + 48) = v63;
    MEMORY[0x1EEE9AC00](v61, v64);
    *(&v131 - 4) = sub_1D5B4AA6C;
    *(&v131 - 3) = 0;
    v129 = sub_1D6708948;
    v130 = v65;
    v159 = 0;
    v66 = swift_allocObject();
    *(v66 + 16) = v153;
    *(v66 + 32) = v159;
    *(v66 + 40) = v62;
    *(v66 + 48) = v63;
    swift_retain_n();
    v67 = sub_1D72647CC();
    v159 = 0;
    v68 = swift_allocObject();
    *(v68 + 16) = v67;
    *(v68 + 24) = v153;
    *(v68 + 40) = v159;
    v69 = *(v132 + 3);
    v70 = *(v132 + 4);
    v71 = __swift_project_boxed_opaque_existential_1(v132, v69);
    MEMORY[0x1EEE9AC00](v71, v72);
    MEMORY[0x1EEE9AC00](v73, v74);
    *(&v131 - 4) = sub_1D615B4A4;
    *(&v131 - 3) = (&v131 - 6);
    v75 = v148;
    v129 = sub_1D6708948;
    v130 = v66;
    sub_1D5D2BC70(v148, sub_1D615B49C, v76, sub_1D615B4A4, (&v131 - 6), v69, v70);

    sub_1D666D440();
    sub_1D72647EC();
    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);

    v77 = v141;
    v78 = v144;
    v79 = v134;
    v147(v141, v144, v134);
    swift_storeEnumTagMultiPayload();
    v153 = xmmword_1D7297410;
    v157 = xmmword_1D7297410;
    v158 = 0;
    LOBYTE(v155) = 0;
    v80 = swift_allocObject();
    v82 = v80;
    *(v80 + 16) = v153;
    *(v80 + 32) = v155;
    v83 = v143;
    v84 = v133;
    *(v80 + 40) = v143;
    *(v80 + 48) = v84;
    if (v140)
    {
      v152 = &v131;
      *&v155 = v140;
      MEMORY[0x1EEE9AC00](v80, v81);
      *(&v131 - 4) = sub_1D5B4AA6C;
      *(&v131 - 3) = 0;
      v129 = sub_1D6708948;
      v130 = v82;
      v159 = 0;
      v85 = swift_allocObject();
      *(v85 + 16) = v153;
      *(v85 + 32) = v159;
      *(v85 + 40) = v83;
      *(v85 + 48) = v84;
      swift_retain_n();

      v86 = sub_1D72647CC();
      v159 = 0;
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v153;
      *(v87 + 40) = v159;
      v88 = *(v132 + 3);
      v89 = *(v132 + 4);
      v90 = __swift_project_boxed_opaque_existential_1(v132, v88);
      MEMORY[0x1EEE9AC00](v90, v91);
      MEMORY[0x1EEE9AC00](v92, v93);
      *(&v131 - 4) = sub_1D615B4A4;
      *(&v131 - 3) = (&v131 - 6);
      v129 = sub_1D6708948;
      v130 = v85;
      v95 = sub_1D5D2F7A4(v77, sub_1D615B49C, v94, sub_1D615B4A4, (&v131 - 6), v88, v89);
      v96 = v138;
      v98 = v95;

      v97 = v139;
      if (v98)
      {
        type metadata accessor for FormatImageNodeStyle(0);
        sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle, &protocol conformance descriptor for FormatImageNodeStyle);
        sub_1D72647EC();
        v83 = v143;
        v78 = v144;
        v79 = v134;

        v84 = v133;
      }

      else
      {

        v84 = v133;
        v83 = v143;
        v78 = v144;
        v79 = v134;
      }
    }

    else
    {

      v97 = v139;
      v96 = v138;
    }

    sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v99 = __swift_project_value_buffer(v79, qword_1EDFFCD68);
    v147(v96, v99, v79);
    swift_storeEnumTagMultiPayload();
    v153 = xmmword_1D72BAA60;
    v157 = xmmword_1D72BAA60;
    v158 = 0;
    LOBYTE(v155) = 0;
    v100 = swift_allocObject();
    v102 = v100;
    *(v100 + 16) = v153;
    *(v100 + 32) = v155;
    *(v100 + 40) = v83;
    *(v100 + 48) = v84;
    if (v137)
    {
      v152 = &v131;
      *&v155 = v137;
      MEMORY[0x1EEE9AC00](v100, v101);
      *(&v131 - 4) = sub_1D5B4AA6C;
      *(&v131 - 3) = 0;
      v129 = sub_1D6708948;
      v130 = v102;
      v159 = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v153;
      *(v103 + 32) = v159;
      *(v103 + 40) = v83;
      *(v103 + 48) = v84;
      swift_retain_n();

      v104 = sub_1D72647CC();
      v159 = 0;
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      *(v105 + 24) = v153;
      *(v105 + 40) = v159;
      v106 = *(v132 + 3);
      v107 = *(v132 + 4);
      v108 = __swift_project_boxed_opaque_existential_1(v132, v106);
      MEMORY[0x1EEE9AC00](v108, v109);
      MEMORY[0x1EEE9AC00](v110, v111);
      *(&v131 - 4) = sub_1D615B4A4;
      *(&v131 - 3) = (&v131 - 6);
      v129 = sub_1D666D494;
      v130 = v103;
      v113 = sub_1D5D2F7A4(v96, sub_1D615B49C, v112, sub_1D615B4A4, (&v131 - 6), v106, v107);

      v97 = v139;
      v78 = v144;
      if (v113)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v83 = v143;
        v79 = v134;

        v84 = v133;
      }

      else
      {

        v84 = v133;
        v83 = v143;
        v79 = v134;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
    v147(v97, v78, v79);
    swift_storeEnumTagMultiPayload();
    *&v157 = v136;
    *(&v157 + 1) = v135;
    v158 = v160;
    v153 = xmmword_1D72BAA70;
    v155 = xmmword_1D72BAA70;
    v156 = 0;
    v159 = 0;
    v114 = swift_allocObject();
    v152 = &v131;
    *(v114 + 16) = v153;
    *(v114 + 32) = v159;
    *(v114 + 40) = v83;
    *(v114 + 48) = v84;
    MEMORY[0x1EEE9AC00](v114, v115);
    *(&v131 - 4) = sub_1D5B4AA6C;
    *(&v131 - 3) = 0;
    v129 = sub_1D6708948;
    v130 = v116;
    v159 = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v153;
    *(v117 + 32) = v159;
    *(v117 + 40) = v83;
    *(v117 + 48) = v84;
    swift_retain_n();
    v118 = v154;
    v119 = sub_1D72647CC();
    v159 = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = v119;
    *(v120 + 24) = v153;
    *(v120 + 40) = v159;
    v121 = *(v132 + 3);
    v122 = *(v132 + 4);
    v123 = __swift_project_boxed_opaque_existential_1(v132, v121);
    MEMORY[0x1EEE9AC00](v123, v124);
    MEMORY[0x1EEE9AC00](v125, v126);
    *(&v131 - 4) = sub_1D615B4A4;
    *(&v131 - 3) = (&v131 - 6);
    v127 = v139;
    v129 = sub_1D6708948;
    v130 = v117;
    sub_1D5D2BC70(v139, sub_1D615B49C, v128, sub_1D615B4A4, (&v131 - 6), v121, v122);

    sub_1D60ED320();
    sub_1D72647EC();
    sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

    v59 = v118;
  }

  return sub_1D5D2CFE8(v59, sub_1D666D318);
}

uint64_t FormatSizeConstraint.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v28 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD50);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v31;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v31 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v31);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t FormatSwitchNodeDefault.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D666D510(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5C5D130(0);
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25168, sub_1D5C5D130, &unk_1D7321584);
  sub_1D5D2EE70(v4, v17, v19, v14, v4, v17, &type metadata for FormatVersions.JazzkonC, v15, v13, v18, &off_1F51F6C78);
  swift_beginAccess();
  v20 = qword_1EDF31EB0;
  v43[0] = v2[2];

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
  (*(*(v21 - 8) + 16))(v8, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v23 = &v13[*(v10 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  LOBYTE(v44) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v44;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  sub_1D666D5A4(0);
  sub_1D5B58B84(&qword_1EDF03128, sub_1D666D5A4, MEMORY[0x1E69E6F60]);

  v27 = sub_1D72647CC();
  LOBYTE(v44) = 0;
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = v27;
  *(v28 + 40) = v44;
  v29 = &v13[*(v10 + 36)];
  v30 = *(v29 + 3);
  v31 = *(v29 + 4);
  v32 = __swift_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v43[-4] = sub_1D5B4AA6C;
  v43[-3] = 0;
  v41 = sub_1D666D638;
  v42 = v26;
  v36 = v43[1];
  v38 = sub_1D5D2F7A4(v8, sub_1D615B49C, v37, sub_1D615B4A4, &v43[-6], v30, v31);
  if (v36)
  {
    sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v39 = v38;

    if (v39)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = v43[0];
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v13, sub_1D666D510);
}

uint64_t FormatTextAdjustmentBaseline.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D666D6B4(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5CA1AFC(0);
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF24EA8, sub_1D5CA1AFC, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextAdjustmentBaseline, v16, v18, v13, &type metadata for FormatTextAdjustmentBaseline, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = v12;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v45 = 0;
  v24 = swift_allocObject();
  v44[2] = v44;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v45;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44[-4] = sub_1D5B4AA6C;
  v44[-3] = 0;
  v42 = sub_1D670894C;
  v43 = v26;
  v45 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v45;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D666D748(0);
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF02E08, sub_1D666D748, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v44[1] = v29;
  v30 = sub_1D72647CC();
  v45 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v45;
  v32 = &v11[*(v8 + 36)];
  v33 = *(v32 + 3);
  v34 = *(v32 + 4);
  v35 = __swift_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v44[-4] = sub_1D615B4A4;
  v44[-3] = &v44[-6];
  v42 = sub_1D666D7DC;
  v43 = v27;
  v39 = v44[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v40, sub_1D615B4A4, &v44[-6], v33, v34);
  if (v39)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    type metadata accessor for FormatTextNodeStyle();
    sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D666D6B4);
}

uint64_t FormatRoute.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatRoute, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatRoute, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD98);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D64244FC(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD00);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D64244FC(2, v6);
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
    sub_1D64244FC(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatWeatherBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatWeatherBinding.Bool, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatWeatherBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v14, v18, &off_1F51F6BF8);
  if (v15)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F9C8(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD18);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F9C8(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatBindingLayeredMediaExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingLayeredMediaExpressionLogic, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatBindingLayeredMediaExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v17, v14, v18, &off_1F51F6BB8);
  if (v15)
  {
    if (qword_1EDF31EF0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCDB0);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418860(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EF0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCDB0);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6418860(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatQueryValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatQueryValue, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatQueryValue, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v13, v10, v14, &off_1F51F6BF8);
  v16 = *(v11 + 16);
  v17 = *(v11 + 24);
  v18 = qword_1EDF31EA8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD18);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63B4BB0(v16, v17, v6);

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatDimensionSizingValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v90 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v89 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v88 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v87 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v86 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v85 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v84 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v84 - v36;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *v2;
  v44 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v45 = sub_1D5C30408();
  v91 = v41;
  sub_1D5D2EE70(&type metadata for FormatDimensionSizingValue, &type metadata for FormatCodingKeys, v46, v44, &type metadata for FormatDimensionSizingValue, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v43, v41, v45, &off_1F51F6C78);
  v47 = v42 >> 61;
  if ((v42 >> 61) <= 3)
  {
    if (v47 > 1)
    {
      if (v47 == 2)
      {
        v58 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v59 = sub_1D725BD1C();
        v60 = __swift_project_value_buffer(v59, qword_1EDFFCD30);
        (*(*(v59 - 8) + 16))(v29, v60, v59);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v52 = v91;
        sub_1D638D93C(2, v58, v29);
        v33 = v29;
      }

      else
      {
        v73 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D5D0A048(v73);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v74 = sub_1D725BD1C();
        v75 = __swift_project_value_buffer(v74, qword_1EDFFCD30);
        v33 = v87;
        (*(*(v74 - 8) + 16))(v87, v75, v74);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v52 = v91;
        sub_1D638DB04(6, v73, v33);
        sub_1D5D09FB0(v73);
      }

      goto LABEL_28;
    }

    if (!v47)
    {
      v48 = *(v42 + 16);
      v49 = qword_1EDF31EB0;

      if (v49 != -1)
      {
        swift_once();
      }

      v50 = sub_1D725BD1C();
      v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
      (*(*(v50 - 8) + 16))(v37, v51, v50);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v52 = v91;
      sub_1D638D770(0, v48, v37);

LABEL_44:
      v72 = v37;
      goto LABEL_45;
    }

    v61 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v66 = qword_1EDF31EB0;

    if (v66 != -1)
    {
      swift_once();
    }

    v67 = sub_1D725BD1C();
    v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
    (*(*(v67 - 8) + 16))(v33, v68, v67);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v65 = 1;
    goto LABEL_26;
  }

  if (v47 <= 5)
  {
    if (v47 == 4)
    {
      v53 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v54 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v55 = qword_1EDF31ED0;

      if (v55 != -1)
      {
        swift_once();
      }

      v56 = sub_1D725BD1C();
      v57 = __swift_project_value_buffer(v56, qword_1EDFFCD50);
      v33 = v88;
      (*(*(v56 - 8) + 16))(v88, v57, v56);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v52 = v91;
      sub_1D638DC98(7, v53, v54, v33);
      goto LABEL_27;
    }

    v61 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v69 = qword_1EDF31F08;

    if (v69 != -1)
    {
      swift_once();
    }

    v70 = sub_1D725BD1C();
    v71 = __swift_project_value_buffer(v70, qword_1EDFFCDE0);
    v33 = v89;
    (*(*(v70 - 8) + 16))(v89, v71, v70);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v65 = 8;
LABEL_26:
    v52 = v91;
    sub_1D638D770(v65, v61, v33);
LABEL_27:

LABEL_28:
    v72 = v33;
    goto LABEL_45;
  }

  if (v47 == 6)
  {
    v61 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v62 = qword_1EDF31F38;

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725BD1C();
    v64 = __swift_project_value_buffer(v63, qword_1EDFFCE38);
    v33 = v90;
    (*(*(v63 - 8) + 16))(v90, v64, v63);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v65 = 9;
    goto LABEL_26;
  }

  if (v42 != 0xE000000000000000)
  {
    if (v42 == 0xE000000000000008)
    {
      v52 = v91;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
      v37 = v85;
      (*(*(v76 - 8) + 16))(v85, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v78 = 4;
    }

    else
    {
      v52 = v91;
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCE80);
      v37 = v86;
      (*(*(v81 - 8) + 16))(v86, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v78 = 5;
    }

    sub_1D641B16C(v78, v37);
    goto LABEL_44;
  }

  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v79 = sub_1D725BD1C();
  v80 = __swift_project_value_buffer(v79, qword_1EDFFCD30);
  (*(*(v79 - 8) + 16))(v25, v80, v79);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v52 = v91;
  sub_1D641B16C(3, v25);
  v72 = v25;
LABEL_45:
  sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v52, sub_1D5D30DC4);
}

uint64_t FormatRadialGradientCircleRadius.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27[-v9 - 16];
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

    v13 = v29;
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
          *(v20 + 16) = &unk_1F51125A0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D666D954();
    *v27 = 0;
    *&v27[8] = 0;
    sub_1D726431C();
    v22 = v26;
    if (v26)
    {
      v26 = xmmword_1D7279980;
      sub_1D5C4CD8C();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = *v27;
      v24 = *&v27[8];
      v25 = v28;
    }

    else
    {
      sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
      *v27 = xmmword_1D7279980;
      sub_1D665B74C();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v25 = 0;
      v23 = v26;
      v24 = 0uLL;
    }

    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 24) = v25;
    *(v13 + 32) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRadialGradientCircleRadius.encode(to:)(void *a1)
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
  v16 = *(v1 + 8);
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatRadialGradientCircleRadius, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatRadialGradientCircleRadius, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v21, v14, v22, &off_1F51F6BF8);
  if (v19)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
    (*(*(v24 - 8) + 16))(v6, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6388214(1, v6, v15, v16, v18, v17);
    v26 = v6;
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD18);
    (*(*(v27 - 8) + 16))(v10, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6388040(0, v10, v15);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatSlotItemFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - v8;
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
    v12 = v30;
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
          *(v22 + 16) = &unk_1F51125F0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D666D9A8();
    v28 = 0;
    v29 = 0;
    sub_1D726431C();
    if (v27)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
    }

    else
    {
      sub_1D5C30060(0, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
      v27 = xmmword_1D7279980;
      sub_1D666DA50();
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v25 = v28;
      v26 = v29;
      v24 = swift_allocObject();
      *(v24 + 16) = v25;
      *(v24 + 24) = v26;
    }

    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemFilter.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSlotItemFilter, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatSlotItemFilter, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v17, v14, v18, &off_1F51F6AF8);
  if (v15)
  {
    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
    v22 = qword_1EDF31F40;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A204C(0, v20, v21, v10);

    v25 = v10;
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725BD1C();
    v27 = __swift_project_value_buffer(v26, qword_1EDFFCC90);
    (*(*(v26 - 8) + 16))(v6, v27, v26);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641FB1C(1, v6);
    v25 = v6;
  }

  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatTextNodeFormat.Token.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v115 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v118 = &v113 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v126 = &v113 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v113 - v14);
  sub_1D666DAE0(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[3];
  v119 = v1[2];
  v117 = v23;
  v116 = v1[4];
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D5C78414(0);
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF24B28, sub_1D5C78414, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeFormat.Token, v27, v29, v24, &type metadata for FormatTextNodeFormat.Token, v27, &type metadata for FormatVersions.JazzkonC, v25, v20, v28, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v120 = v31;
  v121 = v30;
  v123 = v32 + 16;
  v124 = v33;
  (v33)(v15);
  v125 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v134 = v21;
  v135 = v22;
  v132 = 0uLL;
  v133 = 0;
  v34 = &v20[*(v17 + 44)];
  v129 = v15;
  v35 = *v34;
  v36 = *(v34 + 1);
  v136 = 0;
  v37 = swift_allocObject();
  v130 = &v113;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v136;
  *(v37 + 40) = v35;
  *(v37 + 48) = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v113 - 4) = sub_1D5B4AA6C;
  *(&v113 - 3) = 0;
  v111 = sub_1D6708950;
  v112 = v39;
  v136 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v136;
  v122 = v35;
  *(v40 + 40) = v35;
  *(v40 + 48) = v36;
  sub_1D5E1C214(0);
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EDF02998, sub_1D5E1C214, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v127 = v42;
  v128 = v43;
  v44 = sub_1D72647CC();
  v136 = 0;
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = v136;
  v46 = &v20[*(v17 + 36)];
  v47 = *(v46 + 3);
  v48 = *(v46 + 4);
  v49 = __swift_project_boxed_opaque_existential_1(v46, v47);
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  *(&v113 - 4) = sub_1D615B4A4;
  *(&v113 - 3) = (&v113 - 6);
  v111 = sub_1D6708950;
  v112 = v40;
  v53 = v129;
  v54 = v131;
  sub_1D5D2BC70(v129, sub_1D615B49C, v55, sub_1D615B4A4, (&v113 - 6), v47, v48);
  if (v54)
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    v56 = v20;
  }

  else
  {
    v113 = v46;
    v114 = v36;

    sub_1D72647EC();
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    v124(v126, v120, v121);
    swift_storeEnumTagMultiPayload();
    v134 = v119;
    v131 = xmmword_1D728CF30;
    v132 = xmmword_1D728CF30;
    v133 = 0;
    v136 = 0;
    v58 = swift_allocObject();
    v130 = &v113;
    *(v58 + 16) = v131;
    *(v58 + 32) = v136;
    v59 = v122;
    v60 = v114;
    *(v58 + 40) = v122;
    *(v58 + 48) = v60;
    MEMORY[0x1EEE9AC00](v58, v61);
    *(&v113 - 4) = sub_1D5B4AA6C;
    *(&v113 - 3) = 0;
    v111 = sub_1D6708950;
    v112 = v62;
    v136 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v131;
    *(v63 + 32) = v136;
    *(v63 + 40) = v59;
    *(v63 + 48) = v60;
    swift_retain_n();
    v64 = sub_1D72647CC();
    v136 = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = v131;
    *(v65 + 40) = v136;
    v66 = *(v113 + 3);
    v67 = *(v113 + 4);
    v68 = __swift_project_boxed_opaque_existential_1(v113, v66);
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v113 - 4) = sub_1D615B4A4;
    *(&v113 - 3) = (&v113 - 6);
    v72 = v126;
    v111 = sub_1D6708950;
    v112 = v63;
    sub_1D5D2BC70(v126, sub_1D615B49C, v73, sub_1D615B4A4, (&v113 - 6), v66, v67);

    sub_1D5C76E3C();
    sub_1D72647EC();
    v74 = v20;
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);

    v75 = v118;
    v76 = v121;
    v124(v118, v120, v121);
    swift_storeEnumTagMultiPayload();
    v131 = xmmword_1D7297410;
    v132 = xmmword_1D7297410;
    v133 = 0;
    LOBYTE(v134) = 0;
    v77 = swift_allocObject();
    v79 = v77;
    *(v77 + 16) = v131;
    *(v77 + 32) = v134;
    v80 = v122;
    v81 = v114;
    *(v77 + 40) = v122;
    *(v77 + 48) = v81;
    if (v117)
    {
      v129 = &v113;
      v134 = v117;
      MEMORY[0x1EEE9AC00](v77, v78);
      *(&v113 - 4) = sub_1D5B4AA6C;
      *(&v113 - 3) = 0;
      v111 = sub_1D6708950;
      v112 = v79;
      v136 = 0;
      v82 = swift_allocObject();
      v83 = v80;
      v84 = v82;
      *(v82 + 16) = v131;
      *(v82 + 32) = v136;
      *(v82 + 40) = v83;
      *(v82 + 48) = v81;
      swift_retain_n();

      v130 = v74;
      v85 = sub_1D72647CC();
      v136 = 0;
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v131;
      *(v86 + 40) = v136;
      v87 = *(v113 + 3);
      v88 = *(v113 + 4);
      v89 = __swift_project_boxed_opaque_existential_1(v113, v87);
      MEMORY[0x1EEE9AC00](v89, v90);
      MEMORY[0x1EEE9AC00](v91, v92);
      *(&v113 - 4) = sub_1D615B4A4;
      *(&v113 - 3) = (&v113 - 6);
      v75 = v118;
      v111 = sub_1D6708950;
      v112 = v84;
      v94 = sub_1D5D2F7A4(v118, sub_1D615B49C, v93, sub_1D615B4A4, (&v113 - 6), v87, v88);
      v95 = v94;

      if (v95)
      {
        type metadata accessor for FormatTextNodeStyle();
        sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle, &protocol conformance descriptor for FormatTextNodeStyle);
        v74 = v130;
        sub_1D72647EC();
        v80 = v122;

        v76 = v121;
      }

      else
      {

        v74 = v130;
        v76 = v121;
        v80 = v122;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
    v96 = qword_1EDF31ED0;
    v97 = v116;

    v98 = v115;
    v99 = v124;
    if (v96 != -1)
    {
      swift_once();
    }

    v100 = __swift_project_value_buffer(v76, qword_1EDFFCD50);
    v99(v98, v100, v76);
    swift_storeEnumTagMultiPayload();
    if (*(v97 + 16))
    {
      LOBYTE(v132) = 0;
      v101 = swift_allocObject();
      v131 = xmmword_1D72BAA60;
      *(v101 + 16) = xmmword_1D72BAA60;
      *(v101 + 32) = v132;
      *(v101 + 40) = v80;
      *(v101 + 48) = v114;

      v102 = sub_1D72647CC();
      LOBYTE(v132) = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v102;
      *(v103 + 24) = v131;
      *(v103 + 40) = v132;
      v104 = *(v113 + 3);
      v105 = *(v113 + 4);
      v106 = __swift_project_boxed_opaque_existential_1(v113, v104);
      MEMORY[0x1EEE9AC00](v106, v107);
      MEMORY[0x1EEE9AC00](v108, v109);
      *(&v113 - 4) = sub_1D5B4AA6C;
      *(&v113 - 3) = 0;
      v111 = sub_1D666DB74;
      v112 = v101;
      LOBYTE(v104) = sub_1D5D2F7A4(v98, sub_1D615B49C, v110, sub_1D615B4A4, (&v113 - 6), v104, v105);

      if (v104)
      {
        sub_1D5E095D4(v116, v74, 3, 0, 0);
      }
    }

    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);
    v56 = v74;
  }

  return sub_1D5D2CFE8(v56, sub_1D666DAE0);
}

uint64_t FormatTextNodeFormat.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - v8;
  sub_1D666DBF0(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C85C70(0);
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24B38, sub_1D5C85C70, &unk_1D7321584);
  sub_1D5D2EE70(&type metadata for FormatTextNodeFormat, v19, v21, v16, &type metadata for FormatTextNodeFormat, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v79 = v23;
  v80 = v22;
  v74 = v24 + 16;
  v75 = v25;
  (v25)(v9);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v89 = v15;
  v87 = 0uLL;
  v88 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v86 = 0;
  v29 = swift_allocObject();
  v83 = &v71;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v86;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v85 = v9;
  *(&v71 - 4) = sub_1D5B4AA6C;
  *(&v71 - 3) = 0;
  v69 = sub_1D6708954;
  v70 = v31;
  v86 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v86;
  v76 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D666DC84(0);
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF029A8, sub_1D666DC84, MEMORY[0x1E69E6F60]);
  swift_retain_n();
  v81 = v35;
  v82 = v34;
  v36 = sub_1D72647CC();
  v86 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v86;
  v38 = &v14[*(v11 + 36)];
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v71 - 4) = sub_1D615B4A4;
  *(&v71 - 3) = (&v71 - 6);
  v45 = v84;
  v46 = v85;
  v69 = sub_1D666DD18;
  v70 = v32;
  sub_1D5D2BC70(v85, sub_1D615B49C, v47, sub_1D615B4A4, (&v71 - 6), v39, v40);
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v50 = v14;
  }

  else
  {
    v72 = v38;
    v49 = v79;
    v48 = v80;
    v84 = v28;

    sub_1D5C76E3C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

    v52 = v78;
    v75(v78, v49, v48);
    swift_storeEnumTagMultiPayload();
    v89 = v77;
    v85 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    v88 = 0;
    v86 = 0;
    v53 = swift_allocObject();
    v83 = &v71;
    *(v53 + 16) = v85;
    *(v53 + 32) = v86;
    v54 = v76;
    v55 = v84;
    *(v53 + 40) = v76;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v71 - 4) = sub_1D5B4AA6C;
    *(&v71 - 3) = 0;
    v69 = sub_1D6708954;
    v70 = v57;
    v86 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v85;
    *(v58 + 32) = v86;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v84 = v14;
    v59 = sub_1D72647CC();
    v86 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v85;
    *(v60 + 40) = v86;
    v61 = *(v72 + 3);
    v62 = *(v72 + 4);
    v63 = __swift_project_boxed_opaque_existential_1(v72, v61);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v71 - 4) = sub_1D615B4A4;
    *(&v71 - 3) = (&v71 - 6);
    v69 = sub_1D6708954;
    v70 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v71 - 6), v61, v62);

    sub_1D5C34D84(0, &qword_1EDF1B558, &type metadata for FormatTextNodeFormat.Token, MEMORY[0x1E69E62F8]);
    sub_1D666DD94();
    v68 = v84;
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v50 = v68;
  }

  return sub_1D5D2CFE8(v50, sub_1D666DBF0);
}

uint64_t FormatIssueBinding.Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v82 = &v78 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v81 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v79 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v78 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v84 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v78 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v78 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v78 - v39;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v78 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v2;
  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  v48 = sub_1D5C30408();
  v85 = v44;
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Command, &type metadata for FormatCodingKeys, v49, v46, &type metadata for FormatIssueBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v47, v44, v48, &off_1F51F6CD8);
  if (v45 > 4)
  {
    if (v45 > 7)
    {
      if (v45 == 8)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v67 = sub_1D725BD1C();
        v68 = __swift_project_value_buffer(v67, qword_1EDFFCD50);
        v52 = v81;
        (*(*(v67 - 8) + 16))(v81, v68, v67);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 8;
      }

      else if (v45 == 9)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v59 = sub_1D725BD1C();
        v60 = __swift_project_value_buffer(v59, qword_1EDFFCD50);
        v52 = v82;
        (*(*(v59 - 8) + 16))(v82, v60, v59);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 9;
      }

      else
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v75 = sub_1D725BD1C();
        v76 = __swift_project_value_buffer(v75, qword_1EDFFCD50);
        v52 = v83;
        (*(*(v75 - 8) + 16))(v83, v76, v75);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = 10;
      }
    }

    else if (v45 == 5)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCD50);
      v52 = v78;
      (*(*(v65 - 8) + 16))(v78, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 5;
    }

    else if (v45 == 6)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v50 = sub_1D725BD1C();
      v51 = __swift_project_value_buffer(v50, qword_1EDFFCD50);
      v52 = v79;
      (*(*(v50 - 8) + 16))(v79, v51, v50);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 6;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCD50);
      v52 = v80;
      (*(*(v73 - 8) + 16))(v80, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 7;
    }

LABEL_44:
    v57 = v85;
    sub_1D6422180(v53, v52);
    v58 = v52;
    goto LABEL_45;
  }

  v54 = v40;
  v52 = v84;
  if (v45 <= 1)
  {
    if (v45)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCD50);
      (*(*(v71 - 8) + 16))(v36, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v85;
      sub_1D6422180(1, v36);
      v58 = v36;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCD50);
      (*(*(v61 - 8) + 16))(v54, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v85;
      sub_1D6422180(0, v54);
      v58 = v54;
    }
  }

  else if (v45 == 2)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725BD1C();
    v64 = __swift_project_value_buffer(v63, qword_1EDFFCD50);
    (*(*(v63 - 8) + 16))(v32, v64, v63);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = v85;
    sub_1D6422180(2, v32);
    v58 = v32;
  }

  else
  {
    if (v45 != 3)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCD50);
      (*(*(v69 - 8) + 16))(v52, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = 4;
      goto LABEL_44;
    }

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCD50);
    (*(*(v55 - 8) + 16))(v28, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = v85;
    sub_1D6422180(3, v28);
    v58 = v28;
  }

LABEL_45:
  sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v57, sub_1D5D30DC4);
}